Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/lance-rs/original/lance_encoding-f49257211e88e97f.lance_encoding.e0f3aaa6a0ae8e07-cgu.0?download=true
inline.NumInlined: 29360
inline.NumDeleted: 11629
loop-unroll.NumCompletelyUnrolled: 27
loop-unroll.NumRuntimeUnrolled: 124
loop-unroll.NumUnrolled: 155
begin_hunk_0_@_RINvMNtCsjjpCCFGI3ul_14lance_encoding6bufferNtB3_11LanceBuffer21borrow_to_typed_sliceyEB5_:bb.a
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvMNtCsjjpCCFGI3ul_14lance_encoding6repdefNtB3_24NormalizedStructuralPlan38serialize_with_miniblock_repdef_budgetNvNtNtNtNtB5_9encodings7logical9primitive9miniblock27max_repdef_levels_per_chunkEB5_(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(88) %0, ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(32) %1, i64 noundef %2, i64 noundef %3) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 7 uses
  %i.b = alloca [24 x i8], align 8                ; 7 uses
  %i.c = alloca [32 x i8], align 8                ; 7 uses
  %i.d = alloca [24 x i8], align 8                ; 7 uses
  %i.e = alloca [56 x i8], align 8                ; 6 uses
  %i.f = alloca [56 x i8], align 8                ; 6 uses
  %i.g = alloca [112 x i8], align 8               ; 20 uses
  %i.h = alloca [1 x i8], align 1                 ; 6 uses
  %i.i = alloca [8 x i8], align 8                 ; 6 uses
  %i.j = alloca [8 x i8], align 8                 ; 7 uses
  %i.k = alloca [8 x i8], align 8                 ; 7 uses
  %i.l = alloca [8 x i8], align 8                 ; 7 uses
  %i.m = alloca [8 x i8], align 8                 ; 7 uses
  %i.n = alloca [8 x i8], align 8                 ; 7 uses
  %i.o = alloca [8 x i8], align 8                 ; 7 uses
  %i.p = alloca [16 x i8], align 8                ; 8 uses
  %i.q = alloca [1 x i8], align 1                 ; 7 uses
  %i.r = alloca [8 x i8], align 8                 ; 8 uses
  %i.s = alloca [8 x i8], align 8                 ; 8 uses
  %i.t = alloca [24 x i8], align 8                ; 13 uses
  %i.u = alloca [8 x i8], align 8                 ; 5 uses
  %i.v = alloca [32 x i8], align 8                ; 7 uses
  %i.w = alloca [8 x i8], align 8                 ; 4 uses
  %i.x = alloca [8 x i8], align 8                 ; 4 uses
  %i.y = alloca [8 x i8], align 8                 ; 7 uses
  %i.z = alloca [8 x i8], align 8                 ; 7 uses
  %i.aa = alloca [24 x i8], align 8               ; 5 uses
  %i.ab = alloca [24 x i8], align 8               ; 8 uses
  %i.ac = alloca [64 x i8], align 8               ; 4 uses
  %i.ad = alloca [24 x i8], align 8               ; 7 uses
  %i.ae = alloca [24 x i8], align 8               ; 7 uses
  %i.af = alloca [56 x i8], align 8               ; 33 uses
  %i.ag = alloca [32 x i8], align 8               ; 7 uses
  %i.ah = alloca [64 x i8], align 8               ; 4 uses
  %i.ai = alloca [160 x i8], align 8              ; 20 uses
  call fastcc void @_RNvMNtCsjjpCCFGI3ul_14lance_encoding6repdefNtB2_24NormalizedStructuralPlan13to_serializer(ptr noalias noundef align 8 captures(none) dereferenceable(160) %i.ai, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) %1)
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 144
  %i.ak = load i64, ptr %i.aj, align 8, !range !82, !noundef !75
  %i.al = getelementptr inbounds nuw i8, ptr %i.ai, i64 152
  %i.am = load i64, ptr %i.al, align 8            ; 2 uses
  %.sroa.0.0.copyload = load i64, ptr %i.ai, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ai, i64 8
  %.sroa.5.0.copyload = load ptr, ptr %.sroa.5.0..sroa_idx, align 8 ; 4 uses
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ai, i64 16
  %.sroa.7.0.copyload = load i64, ptr %.sroa.7.0..sroa_idx, align 8 ; 2 uses
  %.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ai, i64 24
  %.sroa.9.0.copyload = load i64, ptr %.sroa.9.0..sroa_idx, align 8 ; 7 uses
  %.sroa.13.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ai, i64 32
  %.sroa.13.0.copyload = load ptr, ptr %.sroa.13.0..sroa_idx, align 8 ; 10 uses
  %.sroa.17.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ai, i64 40
  %.sroa.17.0.copyload = load i64, ptr %.sroa.17.0..sroa_idx, align 8 ; 7 uses
  %.sroa.19.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ai, i64 48
  %.sroa.19.0.copyload = load i64, ptr %.sroa.19.0..sroa_idx, align 8 ; 6 uses
  %.sroa.22.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ai, i64 56
  %.sroa.22.0.copyload = load ptr, ptr %.sroa.22.0..sroa_idx, align 8 ; 6 uses
  %.sroa.25438.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ai, i64 72
  %.sroa.25438.0.copyload = load i64, ptr %.sroa.25438.0..sroa_idx, align 8 ; 7 uses
  %.sroa.29.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ai, i64 80
  %.sroa.29.0.copyload = load ptr, ptr %.sroa.29.0..sroa_idx, align 8 ; 127 uses
  %.sroa.37.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ai, i64 88
  %.sroa.37.0.copyload = load i64, ptr %.sroa.37.0..sroa_idx, align 8 ; 12 uses
  %.sroa.38.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ai, i64 96
  %.sroa.38.0.copyload = load i64, ptr %.sroa.38.0..sroa_idx, align 8 ; 5 uses
  %.sroa.41.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ai, i64 104
  %.sroa.41.0.copyload = load ptr, ptr %.sroa.41.0..sroa_idx, align 8 ; 4 uses
  %.sroa.43439.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ai, i64 120
  %.sroa.43439.0.copyload = load i64, ptr %.sroa.43439.0..sroa_idx, align 8
  %.sroa.44440.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ai, i64 140
  %.sroa.44440.0.copyload = load i8, ptr %.sroa.44440.0..sroa_idx, align 4 ; 3 uses
  %i.an = trunc nuw i64 %i.ak to i1               ; 2 uses
  br i1 %i.an, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.ao = icmp eq i64 %i.am, 0
  br i1 %i.ao, label %bb.c, label %_RNvYNvNtNtNtNtCsjjpCCFGI3ul_14lance_encoding9encodings7logical9primitive9miniblock27max_repdef_levels_per_chunkINtNtNtCscI6d9CVNmLh_4core3ops8function6FnOnceTyEE9call_onceBc_.exit

bb.c:                                             ; preds = %bb.b
  invoke void @_RNvNtNtCscI6d9CVNmLh_4core9panicking11panic_const23panic_const_div_by_zero(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @2563) #66
          to label %.noexc unwind label %bb.cf

.noexc:                                           ; preds = %bb.c
  unreachable

_RNvYNvNtNtNtNtCsjjpCCFGI3ul_14lance_encoding9encodings7logical9primitive9miniblock27max_repdef_levels_per_chunkINtNtNtCscI6d9CVNmLh_4core3ops8function6FnOnceTyEE9call_onceBc_.exit: ; preds = %bb.b
  %i.ap = udiv i64 131072, %i.am
  %.sroa.0.0.i.i.i = tail call noundef range(i64 0, 65536) i64 @llvm.umin.i64(i64 %i.ap, i64 65535)
  br label %bb.d

bb.d:                                             ; preds = %_RNvYNvNtNtNtNtCsjjpCCFGI3ul_14lance_encoding9encodings7logical9primitive9miniblock27max_repdef_levels_per_chunkINtNtNtCscI6d9CVNmLh_4core3ops8function6FnOnceTyEE9call_onceBc_.exit, %bb.a
  %.sroa.5.0 = phi i64 [ undef, %bb.a ], [ %.sroa.0.0.i.i.i, %_RNvYNvNtNtNtNtCsjjpCCFGI3ul_14lance_encoding9encodings7logical9primitive9miniblock27max_repdef_levels_per_chunkINtNtNtCscI6d9CVNmLh_4core3ops8function6FnOnceTyEE9call_onceBc_.exit ]
  tail call void @llvm.experimental.noalias.scope.decl(metadata !492)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aa)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ab)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ad)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ae)
  %.not182.i = icmp eq i64 %.sroa.43439.0.copyload, 0
  br i1 %.not182.i, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ah), !noalias !493
  store i64 -1, ptr %i.aa, align 8, !noalias !493
  %i.aq = trunc nuw i8 %.sroa.44440.0.copyload to i1
  invoke fastcc void @_RNvMs0_NtCsjjpCCFGI3ul_14lance_encoding6repdefNtB5_17SerializedRepDefs31new_with_fixed_size_list_levels(ptr noalias noundef align 8 captures(none) dereferenceable(64) %i.ah, ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.aa, ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.aa, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(144) %i.ai, i1 noundef zeroext %i.aq)
          to label %bb.g unwind label %.thread174.i

bb.f:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ag), !noalias !493
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.5.0.copyload) ]
  %i.ar = icmp sgt i64 %.sroa.7.0.copyload, -1
  tail call void @llvm.assume(i1 %i.ar)
  %i.as = getelementptr inbounds nuw i8, ptr %.sroa.5.0.copyload, i64 %.sroa.7.0.copyload
  store ptr %.sroa.5.0.copyload, ptr %i.ag, align 8, !noalias !493
  %.sroa.44.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ag, i64 8
  store ptr %.sroa.5.0.copyload, ptr %.sroa.44.0..sroa_idx.i, align 8, !noalias !493
  %.sroa.55.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ag, i64 16
  store i64 %.sroa.0.0.copyload, ptr %.sroa.55.0..sroa_idx.i, align 8, !noalias !493
  %.sroa.6.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ag, i64 24
  store ptr %i.as, ptr %.sroa.6.0..sroa_idx.i, align 8, !noalias !493
  invoke fastcc void @_RNvXs_NtNtCs40k4W9msRzi_5alloc3vec21spec_from_iter_nestedINtB6_3VecNtNtCsjjpCCFGI3ul_14lance_encoding6repdef24DefinitionInterpretationEINtB4_18SpecFromIterNestedB13_INtNtNtNtCscI6d9CVNmLh_4core4iter8adapters3rev3RevINtNtB6_9into_iter8IntoIterB13_EEE9from_iterB17_(ptr noalias noundef align 8 captures(none) dereferenceable(24) %i.ab, ptr noalias noundef align 8 captures(address) dereferenceable(32) %i.ag)
          to label %bb.i unwind label %.thread157.i, !noalias !493

.thread157.i:                                     ; preds = %bb.f
  %i.at = landingpad { ptr, i32 }
          cleanup
  br label %.thread230.i

.thread174.i:                                     ; preds = %bb.e
  %i.au = landingpad { ptr, i32 }
          cleanup
  br label %.thread230.i

bb.g:                                             ; preds = %bb.e
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(88) %0, ptr noundef nonnull align 8 dereferenceable(64) %i.ah, i64 64, i1 false), !noalias !494
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ah), !noalias !493
  %.sroa.42.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 64
  store i64 -9223372036854775808, ptr %.sroa.42.0..sroa_idx.i, align 8, !alias.scope !492, !noalias !494
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VecNtNtCsjjpCCFGI3ul_14lance_encoding6repdef24DefinitionInterpretationEEB1c_.exit113.i

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VecNtNtCsjjpCCFGI3ul_14lance_encoding6repdef24DefinitionInterpretationEEB1c_.exit113.i: ; preds = %bb.bj, %bb.bi, %bb.g
  %i.av = icmp eq i64 %.sroa.9.0.copyload, 0
  br i1 %i.av, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VectEECsjjpCCFGI3ul_14lance_encoding.exit.i, label %bb.h

bb.h:                                             ; preds = %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VecNtNtCsjjpCCFGI3ul_14lance_encoding6repdef24DefinitionInterpretationEEB1c_.exit113.i
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.13.0.copyload) ]
  %i.aw = shl nuw i64 %.sroa.9.0.copyload, 1
  call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.13.0.copyload, i64 noundef %i.aw, i64 noundef range(i64 1, -9223372036854775807) 2) #63, !noalias !493
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VectEECsjjpCCFGI3ul_14lance_encoding.exit.i

bb.i:                                             ; preds = %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ag), !noalias !493
  call void @llvm.lifetime.start.p0(ptr nonnull %i.af), !noalias !493
  %i.ax = getelementptr inbounds nuw i8, ptr %i.ab, i64 8
  %i.ay = load ptr, ptr %i.ax, align 8, !noalias !493, !nonnull !75, !noundef !75 ; 12 uses
  %i.az = getelementptr inbounds nuw i8, ptr %i.ab, i64 16
  %i.ba = load i64, ptr %i.az, align 8, !noalias !493, !noundef !75 ; 8 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !495)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !496)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !493
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !493
  call void @llvm.lifetime.start.p0(ptr nonnull %i.y), !noalias !493
  call void @llvm.lifetime.start.p0(ptr nonnull %i.z), !noalias !493
  store i64 %2, ptr %i.z, align 8, !noalias !497
  store i64 %3, ptr %i.y, align 8, !noalias !497
  %i.bb = icmp ult i64 %.sroa.37.0.copyload, 4611686018427387904
  tail call void @llvm.assume(i1 %i.bb)
  %i.bc = icmp eq i64 %.sroa.37.0.copyload, 0     ; 2 uses
  br i1 %i.bc, label %.thread170.i, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.bd = icmp ult i64 %.sroa.17.0.copyload, 4611686018427387904
  tail call void @llvm.assume(i1 %i.bd)
  %i.be = icmp eq i64 %.sroa.17.0.copyload, 0
  br i1 %i.be, label %iter.check384, label %bb.m

iter.check384:                                    ; preds = %bb.j
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.29.0.copyload) ]
  %.idx.i.i.i = shl nuw nsw i64 %.sroa.37.0.copyload, 1 ; 2 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %.sroa.29.0.copyload, i64 %.idx.i.i.i
  %i.bg = add nsw i64 %.idx.i.i.i, -2             ; 3 uses
  %i.bh = lshr exact i64 %i.bg, 1
  %i.bi = add nuw i64 %i.bh, 1                    ; 5 uses
  %min.iters.check323 = icmp ult i64 %i.bg, 14
  br i1 %min.iters.check323, label %.lr.ph.i.i.i.preheader, label %vector.main.loop.iter.check324

vector.main.loop.iter.check324:                   ; preds = %iter.check384
  %min.iters.check325 = icmp ult i64 %i.bg, 30
  br i1 %min.iters.check325, label %vec.epilog.ph388, label %vector.ph326

vector.ph326:                                     ; preds = %vector.main.loop.iter.check324
  %i.bj = and i64 %i.bi, 8
  %n.vec327 = and i64 %i.bi, -16                  ; 4 uses
  %i.bk = shl i64 %n.vec327, 1
  %i.bl = getelementptr i8, ptr %.sroa.29.0.copyload, i64 %i.bk
  br label %vector.body328

vector.body328:                                   ; preds = %vector.ph326, %pred.store.continue379
  %index329 = phi i64 [ 0, %vector.ph326 ], [ %index.next380, %pred.store.continue379 ] ; 2 uses
  %i.bm = shl i64 %index329, 1                    ; 16 uses
  %next.gep330 = getelementptr i8, ptr %.sroa.29.0.copyload, i64 %i.bm ; 3 uses
  %i.bn = getelementptr i8, ptr %.sroa.29.0.copyload, i64 %i.bm
  %next.gep331 = getelementptr i8, ptr %i.bn, i64 2
  %i.bo = getelementptr i8, ptr %.sroa.29.0.copyload, i64 %i.bm
  %next.gep332 = getelementptr i8, ptr %i.bo, i64 4
  %i.bp = getelementptr i8, ptr %.sroa.29.0.copyload, i64 %i.bm
  %next.gep333 = getelementptr i8, ptr %i.bp, i64 6
  %i.bq = getelementptr i8, ptr %.sroa.29.0.copyload, i64 %i.bm
  %next.gep334 = getelementptr i8, ptr %i.bq, i64 8
  %i.br = getelementptr i8, ptr %.sroa.29.0.copyload, i64 %i.bm
  %next.gep335 = getelementptr i8, ptr %i.br, i64 10
  %i.bs = getelementptr i8, ptr %.sroa.29.0.copyload, i64 %i.bm
  %next.gep336 = getelementptr i8, ptr %i.bs, i64 12
  %i.bt = getelementptr i8, ptr %.sroa.29.0.copyload, i64 %i.bm
  %next.gep337 = getelementptr i8, ptr %i.bt, i64 14
  %i.bu = getelementptr i8, ptr %.sroa.29.0.copyload, i64 %i.bm
  %next.gep338 = getelementptr i8, ptr %i.bu, i64 16
  %i.bv = getelementptr i8, ptr %.sroa.29.0.copyload, i64 %i.bm
  %next.gep339 = getelementptr i8, ptr %i.bv, i64 18
  %i.bw = getelementptr i8, ptr %.sroa.29.0.copyload, i64 %i.bm
  %next.gep340 = getelementptr i8, ptr %i.bw, i64 20
  %i.bx = getelementptr i8, ptr %.sroa.29.0.copyload, i64 %i.bm
  %next.gep341 = getelementptr i8, ptr %i.bx, i64 22
  %i.by = getelementptr i8, ptr %.sroa.29.0.copyload, i64 %i.bm
  %next.gep342 = getelementptr i8, ptr %i.by, i64 24
  %i.bz = getelementptr i8, ptr %.sroa.29.0.copyload, i64 %i.bm
  %next.gep343 = getelementptr i8, ptr %i.bz, i64 26
  %i.ca = getelementptr i8, ptr %.sroa.29.0.copyload, i64 %i.bm
  %next.gep344 = getelementptr i8, ptr %i.ca, i64 28
  %i.cb = getelementptr i8, ptr %.sroa.29.0.copyload, i64 %i.bm
  %next.gep345 = getelementptr i8, ptr %i.cb, i64 30
  %i.cc = getelementptr i8, ptr %next.gep330, i64 16
  %wide.load346 = load <8 x i16>, ptr %next.gep330, align 2, !noalias !497 ; 9 uses
  %wide.load347 = load <8 x i16>, ptr %i.cc, align 2, !noalias !497 ; 9 uses
  %i.cd = icmp slt <8 x i16> %wide.load346, zeroinitializer ; 8 uses
  %i.ce = icmp slt <8 x i16> %wide.load347, zeroinitializer ; 8 uses
  %i.cf = extractelement <8 x i1> %i.cd, i64 0
  br i1 %i.cf, label %pred.store.if348, label %pred.store.continue349

pred.store.if348:                                 ; preds = %vector.body328
  %i.cg = extractelement <8 x i16> %wide.load346, i64 0
  %i.ch = add i16 %i.cg, -32767
  store i16 %i.ch, ptr %next.gep330, align 2, !noalias !497
  br label %pred.store.continue349

pred.store.continue349:                           ; preds = %pred.store.if348, %vector.body328
  %i.ci = extractelement <8 x i1> %i.cd, i64 1
  br i1 %i.ci, label %pred.store.if350, label %pred.store.continue351

pred.store.if350:                                 ; preds = %pred.store.continue349
  %i.cj = extractelement <8 x i16> %wide.load346, i64 1
  %i.ck = add i16 %i.cj, -32767
  store i16 %i.ck, ptr %next.gep331, align 2, !noalias !497
  br label %pred.store.continue351

pred.store.continue351:                           ; preds = %pred.store.if350, %pred.store.continue349
  %i.cl = extractelement <8 x i1> %i.cd, i64 2
  br i1 %i.cl, label %pred.store.if352, label %pred.store.continue353

pred.store.if352:                                 ; preds = %pred.store.continue351
  %i.cm = extractelement <8 x i16> %wide.load346, i64 2
  %i.cn = add i16 %i.cm, -32767
  store i16 %i.cn, ptr %next.gep332, align 2, !noalias !497
  br label %pred.store.continue353

pred.store.continue353:                           ; preds = %pred.store.if352, %pred.store.continue351
  %i.co = extractelement <8 x i1> %i.cd, i64 3
  br i1 %i.co, label %pred.store.if354, label %pred.store.continue355

pred.store.if354:                                 ; preds = %pred.store.continue353
  %i.cp = extractelement <8 x i16> %wide.load346, i64 3
  %i.cq = add i16 %i.cp, -32767
  store i16 %i.cq, ptr %next.gep333, align 2, !noalias !497
  br label %pred.store.continue355

pred.store.continue355:                           ; preds = %pred.store.if354, %pred.store.continue353
  %i.cr = extractelement <8 x i1> %i.cd, i64 4
  br i1 %i.cr, label %pred.store.if356, label %pred.store.continue357

pred.store.if356:                                 ; preds = %pred.store.continue355
  %i.cs = extractelement <8 x i16> %wide.load346, i64 4
  %i.ct = add i16 %i.cs, -32767
  store i16 %i.ct, ptr %next.gep334, align 2, !noalias !497
  br label %pred.store.continue357

pred.store.continue357:                           ; preds = %pred.store.if356, %pred.store.continue355
  %i.cu = extractelement <8 x i1> %i.cd, i64 5
  br i1 %i.cu, label %pred.store.if358, label %pred.store.continue359

pred.store.if358:                                 ; preds = %pred.store.continue357
  %i.cv = extractelement <8 x i16> %wide.load346, i64 5
  %i.cw = add i16 %i.cv, -32767
  store i16 %i.cw, ptr %next.gep335, align 2, !noalias !497
  br label %pred.store.continue359

pred.store.continue359:                           ; preds = %pred.store.if358, %pred.store.continue357
  %i.cx = extractelement <8 x i1> %i.cd, i64 6
  br i1 %i.cx, label %pred.store.if360, label %pred.store.continue361

pred.store.if360:                                 ; preds = %pred.store.continue359
  %i.cy = extractelement <8 x i16> %wide.load346, i64 6
  %i.cz = add i16 %i.cy, -32767
  store i16 %i.cz, ptr %next.gep336, align 2, !noalias !497
  br label %pred.store.continue361

pred.store.continue361:                           ; preds = %pred.store.if360, %pred.store.continue359
  %i.da = extractelement <8 x i1> %i.cd, i64 7
  br i1 %i.da, label %pred.store.if362, label %pred.store.continue363

pred.store.if362:                                 ; preds = %pred.store.continue361
  %i.db = extractelement <8 x i16> %wide.load346, i64 7
  %i.dc = add i16 %i.db, -32767
  store i16 %i.dc, ptr %next.gep337, align 2, !noalias !497
  br label %pred.store.continue363

pred.store.continue363:                           ; preds = %pred.store.if362, %pred.store.continue361
  %i.dd = extractelement <8 x i1> %i.ce, i64 0
  br i1 %i.dd, label %pred.store.if364, label %pred.store.continue365

pred.store.if364:                                 ; preds = %pred.store.continue363
  %i.de = extractelement <8 x i16> %wide.load347, i64 0
  %i.df = add i16 %i.de, -32767
  store i16 %i.df, ptr %next.gep338, align 2, !noalias !497
  br label %pred.store.continue365

pred.store.continue365:                           ; preds = %pred.store.if364, %pred.store.continue363
  %i.dg = extractelement <8 x i1> %i.ce, i64 1
  br i1 %i.dg, label %pred.store.if366, label %pred.store.continue367

pred.store.if366:                                 ; preds = %pred.store.continue365
  %i.dh = extractelement <8 x i16> %wide.load347, i64 1
  %i.di = add i16 %i.dh, -32767
  store i16 %i.di, ptr %next.gep339, align 2, !noalias !497
  br label %pred.store.continue367

pred.store.continue367:                           ; preds = %pred.store.if366, %pred.store.continue365
  %i.dj = extractelement <8 x i1> %i.ce, i64 2
  br i1 %i.dj, label %pred.store.if368, label %pred.store.continue369

pred.store.if368:                                 ; preds = %pred.store.continue367
  %i.dk = extractelement <8 x i16> %wide.load347, i64 2
  %i.dl = add i16 %i.dk, -32767
  store i16 %i.dl, ptr %next.gep340, align 2, !noalias !497
  br label %pred.store.continue369

pred.store.continue369:                           ; preds = %pred.store.if368, %pred.store.continue367
  %i.dm = extractelement <8 x i1> %i.ce, i64 3
  br i1 %i.dm, label %pred.store.if370, label %pred.store.continue371

pred.store.if370:                                 ; preds = %pred.store.continue369
  %i.dn = extractelement <8 x i16> %wide.load347, i64 3
  %i.do = add i16 %i.dn, -32767
  store i16 %i.do, ptr %next.gep341, align 2, !noalias !497
  br label %pred.store.continue371

pred.store.continue371:                           ; preds = %pred.store.if370, %pred.store.continue369
  %i.dp = extractelement <8 x i1> %i.ce, i64 4
  br i1 %i.dp, label %pred.store.if372, label %pred.store.continue373

pred.store.if372:                                 ; preds = %pred.store.continue371
  %i.dq = extractelement <8 x i16> %wide.load347, i64 4
  %i.dr = add i16 %i.dq, -32767
  store i16 %i.dr, ptr %next.gep342, align 2, !noalias !497
  br label %pred.store.continue373

pred.store.continue373:                           ; preds = %pred.store.if372, %pred.store.continue371
  %i.ds = extractelement <8 x i1> %i.ce, i64 5
  br i1 %i.ds, label %pred.store.if374, label %pred.store.continue375

pred.store.if374:                                 ; preds = %pred.store.continue373
  %i.dt = extractelement <8 x i16> %wide.load347, i64 5
  %i.du = add i16 %i.dt, -32767
  store i16 %i.du, ptr %next.gep343, align 2, !noalias !497
  br label %pred.store.continue375

pred.store.continue375:                           ; preds = %pred.store.if374, %pred.store.continue373
  %i.dv = extractelement <8 x i1> %i.ce, i64 6
  br i1 %i.dv, label %pred.store.if376, label %pred.store.continue377

pred.store.if376:                                 ; preds = %pred.store.continue375
  %i.dw = extractelement <8 x i16> %wide.load347, i64 6
  %i.dx = add i16 %i.dw, -32767
  store i16 %i.dx, ptr %next.gep344, align 2, !noalias !497
  br label %pred.store.continue377

pred.store.continue377:                           ; preds = %pred.store.if376, %pred.store.continue375
  %i.dy = extractelement <8 x i1> %i.ce, i64 7
  br i1 %i.dy, label %pred.store.if378, label %pred.store.continue379

pred.store.if378:                                 ; preds = %pred.store.continue377
  %i.dz = extractelement <8 x i16> %wide.load347, i64 7
  %i.ea = add i16 %i.dz, -32767
  store i16 %i.ea, ptr %next.gep345, align 2, !noalias !497
  br label %pred.store.continue379

pred.store.continue379:                           ; preds = %pred.store.if378, %pred.store.continue377
  %index.next380 = add nuw i64 %index329, 16      ; 2 uses
  %i.eb = icmp eq i64 %index.next380, %n.vec327
end_hunk_0
begin_hunk_1_@_RINvMNtCsjjpCCFGI3ul_14lance_encoding6repdefNtB3_24NormalizedStructuralPlan38serialize_with_miniblock_repdef_budgetNvNtNtNtNtB5_9encodings7logical9primitive9miniblock27max_repdef_levels_per_chunkEB5_:bb.a
vec.epilog.iter.check386:                         ; preds = %middle.block381
  %min.epilog.iters.check387.not.not = icmp eq i64 %i.bj, 0
  br i1 %min.epilog.iters.check387.not.not, label %.lr.ph.i.i.i.preheader, label %vec.epilog.ph388, !prof !85

vec.epilog.ph388:                                 ; preds = %vector.main.loop.iter.check324, %vec.epilog.iter.check386
  %vec.epilog.resume.val383 = phi i64 [ %n.vec327, %vec.epilog.iter.check386 ], [ 0, %vector.main.loop.iter.check324 ]
  %n.vec389 = and i64 %i.bi, -8                   ; 3 uses
  %i.ec = shl i64 %n.vec389, 1
  %i.ed = getelementptr i8, ptr %.sroa.29.0.copyload, i64 %i.ec
  br label %vec.epilog.vector.body390

vec.epilog.vector.body390:                        ; preds = %pred.store.continue416, %vec.epilog.ph388
  %index391 = phi i64 [ %vec.epilog.resume.val383, %vec.epilog.ph388 ], [ %index.next417, %pred.store.continue416 ] ; 2 uses
  %i.ee = shl i64 %index391, 1                    ; 8 uses
  %next.gep392 = getelementptr i8, ptr %.sroa.29.0.copyload, i64 %i.ee ; 2 uses
  %i.ef = getelementptr i8, ptr %.sroa.29.0.copyload, i64 %i.ee
  %next.gep393 = getelementptr i8, ptr %i.ef, i64 2
  %i.eg = getelementptr i8, ptr %.sroa.29.0.copyload, i64 %i.ee
  %next.gep394 = getelementptr i8, ptr %i.eg, i64 4
  %i.eh = getelementptr i8, ptr %.sroa.29.0.copyload, i64 %i.ee
  %next.gep395 = getelementptr i8, ptr %i.eh, i64 6
  %i.ei = getelementptr i8, ptr %.sroa.29.0.copyload, i64 %i.ee
  %next.gep396 = getelementptr i8, ptr %i.ei, i64 8
  %i.ej = getelementptr i8, ptr %.sroa.29.0.copyload, i64 %i.ee
  %next.gep397 = getelementptr i8, ptr %i.ej, i64 10
  %i.ek = getelementptr i8, ptr %.sroa.29.0.copyload, i64 %i.ee
  %next.gep398 = getelementptr i8, ptr %i.ek, i64 12
  %i.el = getelementptr i8, ptr %.sroa.29.0.copyload, i64 %i.ee
  %next.gep399 = getelementptr i8, ptr %i.el, i64 14
  %wide.load400 = load <8 x i16>, ptr %next.gep392, align 2, !noalias !497 ; 9 uses
  %i.em = icmp slt <8 x i16> %wide.load400, zeroinitializer ; 8 uses
  %i.en = extractelement <8 x i1> %i.em, i64 0
  br i1 %i.en, label %pred.store.if401, label %pred.store.continue402

pred.store.if401:                                 ; preds = %vec.epilog.vector.body390
  %i.eo = extractelement <8 x i16> %wide.load400, i64 0
  %i.ep = add i16 %i.eo, -32767
  store i16 %i.ep, ptr %next.gep392, align 2, !noalias !497
  br label %pred.store.continue402

pred.store.continue402:                           ; preds = %pred.store.if401, %vec.epilog.vector.body390
  %i.eq = extractelement <8 x i1> %i.em, i64 1
  br i1 %i.eq, label %pred.store.if403, label %pred.store.continue404

pred.store.if403:                                 ; preds = %pred.store.continue402
  %i.er = extractelement <8 x i16> %wide.load400, i64 1
  %i.es = add i16 %i.er, -32767
  store i16 %i.es, ptr %next.gep393, align 2, !noalias !497
  br label %pred.store.continue404

pred.store.continue404:                           ; preds = %pred.store.if403, %pred.store.continue402
  %i.et = extractelement <8 x i1> %i.em, i64 2
  br i1 %i.et, label %pred.store.if405, label %pred.store.continue406

pred.store.if405:                                 ; preds = %pred.store.continue404
  %i.eu = extractelement <8 x i16> %wide.load400, i64 2
  %i.ev = add i16 %i.eu, -32767
  store i16 %i.ev, ptr %next.gep394, align 2, !noalias !497
  br label %pred.store.continue406

pred.store.continue406:                           ; preds = %pred.store.if405, %pred.store.continue404
  %i.ew = extractelement <8 x i1> %i.em, i64 3
  br i1 %i.ew, label %pred.store.if407, label %pred.store.continue408

pred.store.if407:                                 ; preds = %pred.store.continue406
  %i.ex = extractelement <8 x i16> %wide.load400, i64 3
  %i.ey = add i16 %i.ex, -32767
  store i16 %i.ey, ptr %next.gep395, align 2, !noalias !497
  br label %pred.store.continue408

pred.store.continue408:                           ; preds = %pred.store.if407, %pred.store.continue406
  %i.ez = extractelement <8 x i1> %i.em, i64 4
  br i1 %i.ez, label %pred.store.if409, label %pred.store.continue410

pred.store.if409:                                 ; preds = %pred.store.continue408
  %i.fa = extractelement <8 x i16> %wide.load400, i64 4
  %i.fb = add i16 %i.fa, -32767
  store i16 %i.fb, ptr %next.gep396, align 2, !noalias !497
  br label %pred.store.continue410

pred.store.continue410:                           ; preds = %pred.store.if409, %pred.store.continue408
  %i.fc = extractelement <8 x i1> %i.em, i64 5
  br i1 %i.fc, label %pred.store.if411, label %pred.store.continue412

pred.store.if411:                                 ; preds = %pred.store.continue410
  %i.fd = extractelement <8 x i16> %wide.load400, i64 5
  %i.fe = add i16 %i.fd, -32767
  store i16 %i.fe, ptr %next.gep397, align 2, !noalias !497
  br label %pred.store.continue412

pred.store.continue412:                           ; preds = %pred.store.if411, %pred.store.continue410
  %i.ff = extractelement <8 x i1> %i.em, i64 6
  br i1 %i.ff, label %pred.store.if413, label %pred.store.continue414

pred.store.if413:                                 ; preds = %pred.store.continue412
  %i.fg = extractelement <8 x i16> %wide.load400, i64 6
  %i.fh = add i16 %i.fg, -32767
  store i16 %i.fh, ptr %next.gep398, align 2, !noalias !497
  br label %pred.store.continue414

pred.store.continue414:                           ; preds = %pred.store.if413, %pred.store.continue412
  %i.fi = extractelement <8 x i1> %i.em, i64 7
  br i1 %i.fi, label %pred.store.if415, label %pred.store.continue416

pred.store.if415:                                 ; preds = %pred.store.continue414
  %i.fj = extractelement <8 x i16> %wide.load400, i64 7
  %i.fk = add i16 %i.fj, -32767
  store i16 %i.fk, ptr %next.gep399, align 2, !noalias !497
  br label %pred.store.continue416

pred.store.continue416:                           ; preds = %pred.store.if415, %pred.store.continue414
  %index.next417 = add nuw i64 %index391, 8       ; 2 uses
  %i.fl = icmp eq i64 %index.next417, %n.vec389
  br i1 %i.fl, label %vec.epilog.middle.block418, label %vec.epilog.vector.body390, !llvm.loop !459

vec.epilog.middle.block418:                       ; preds = %pred.store.continue416
  %cmp.n419 = icmp eq i64 %i.bi, %n.vec389
  br i1 %cmp.n419, label %.thread170.i, label %.lr.ph.i.i.i.preheader

.lr.ph.i.i.i.preheader:                           ; preds = %iter.check384, %vec.epilog.iter.check386, %vec.epilog.middle.block418
  %.sroa.0.01.i.i.i.ph = phi ptr [ %.sroa.29.0.copyload, %iter.check384 ], [ %i.bl, %vec.epilog.iter.check386 ], [ %i.ed, %vec.epilog.middle.block418 ]
  br label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.lr.ph.i.i.i.preheader, %bb.l
  %.sroa.0.01.i.i.i = phi ptr [ %i.fm, %bb.l ], [ %.sroa.0.01.i.i.i.ph, %.lr.ph.i.i.i.preheader ] ; 3 uses
  %i.fm = getelementptr inbounds nuw i8, ptr %.sroa.0.01.i.i.i, i64 2 ; 2 uses
  %i.fn = load i16, ptr %.sroa.0.01.i.i.i, align 2, !noalias !497, !noundef !75 ; 2 uses
  %i.fo = icmp slt i16 %i.fn, 0
  br i1 %i.fo, label %bb.k, label %bb.l

bb.k:                                             ; preds = %.lr.ph.i.i.i
  %i.fp = add i16 %i.fn, -32767
  store i16 %i.fp, ptr %.sroa.0.01.i.i.i, align 2, !noalias !497
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %.lr.ph.i.i.i
  %i.fq = icmp eq ptr %i.fm, %i.bf
  br i1 %i.fq, label %.thread170.i, label %.lr.ph.i.i.i, !llvm.loop !460

bb.m:                                             ; preds = %bb.j
  %.not134.i.i = icmp eq i64 %.sroa.17.0.copyload, %.sroa.37.0.copyload
  br i1 %.not134.i.i, label %bb.n, label %.split.i.i

bb.n:                                             ; preds = %bb.m
  br i1 %i.an, label %bb.o, label %iter.check

.split.i.i:                                       ; preds = %bb.m
  call void @llvm.lifetime.start.p0(ptr nonnull %i.x), !noalias !497
  store i64 %.sroa.17.0.copyload, ptr %i.x, align 8, !noalias !497
  call void @llvm.lifetime.start.p0(ptr nonnull %i.w), !noalias !497
  store i64 %.sroa.37.0.copyload, ptr %i.w, align 8, !noalias !497
  call void @llvm.lifetime.start.p0(ptr nonnull %i.v), !noalias !497
  store ptr %i.x, ptr %i.v, align 8, !noalias !497
  %.sroa.474.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.v, i64 8
  store ptr @_RNvXsi_NtNtNtCscI6d9CVNmLh_4core3fmt3num3impjNtB9_7Display3fmt, ptr %.sroa.474.0..sroa_idx.i.i, align 8, !noalias !497
  %i.fr = getelementptr inbounds nuw i8, ptr %i.v, i64 16
  store ptr %i.w, ptr %i.fr, align 8, !noalias !497
  %.sroa.478.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.v, i64 24
  store ptr @_RNvXsi_NtNtNtCscI6d9CVNmLh_4core3fmt3num3impjNtB9_7Display3fmt, ptr %.sroa.478.0..sroa_idx.i.i, align 8, !noalias !497
  %.sroa.5.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.af, i64 16
  invoke void @_RNvNvNtCs40k4W9msRzi_5alloc3fmt6format12format_inner(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %.sroa.5.0..sroa_idx.i.i, ptr noundef nonnull @1631, ptr noundef nonnull %i.v)
          to label %.thread172.i unwind label %bb.bg, !noalias !493

.thread172.i:                                     ; preds = %.split.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.v), !noalias !497
  call void @llvm.lifetime.end.p0(ptr nonnull %i.w), !noalias !497
  call void @llvm.lifetime.end.p0(ptr nonnull %i.x), !noalias !497
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !493
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !493
  call void @llvm.lifetime.end.p0(ptr nonnull %i.y), !noalias !493
  call void @llvm.lifetime.end.p0(ptr nonnull %i.z), !noalias !493
  br label %bb.bi

bb.o:                                             ; preds = %bb.n
  call void @llvm.lifetime.start.p0(ptr nonnull %i.u), !noalias !497
  store i64 %.sroa.5.0, ptr %i.u, align 8, !noalias !497
  %i.fs = icmp eq i64 %3, 0
  br i1 %i.fs, label %iter.check286, label %bb.t

iter.check:                                       ; preds = %bb.n
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.29.0.copyload) ]
  %.idx.i165.i.i = shl nuw nsw i64 %.sroa.37.0.copyload, 1 ; 2 uses
  %i.ft = getelementptr inbounds nuw i8, ptr %.sroa.29.0.copyload, i64 %.idx.i165.i.i
  %i.fu = add nsw i64 %.idx.i165.i.i, -2          ; 3 uses
  %i.fv = lshr exact i64 %i.fu, 1
  %i.fw = add nuw i64 %i.fv, 1                    ; 5 uses
  %min.iters.check = icmp ult i64 %i.fu, 14
  br i1 %min.iters.check, label %.lr.ph.i166.i.i.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check50 = icmp ult i64 %i.fu, 30
  br i1 %min.iters.check50, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.fx = and i64 %i.fw, 8
  %n.vec = and i64 %i.fw, -16                     ; 4 uses
  %i.fy = shl i64 %n.vec, 1
  %i.fz = getelementptr i8, ptr %.sroa.29.0.copyload, i64 %i.fy
  br label %vector.body

vector.body:                                      ; preds = %vector.ph, %pred.store.continue96
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %pred.store.continue96 ] ; 2 uses
  %i.ga = shl i64 %index, 1                       ; 16 uses
  %next.gep = getelementptr i8, ptr %.sroa.29.0.copyload, i64 %i.ga ; 3 uses
  %i.gb = getelementptr i8, ptr %.sroa.29.0.copyload, i64 %i.ga
  %next.gep51 = getelementptr i8, ptr %i.gb, i64 2
  %i.gc = getelementptr i8, ptr %.sroa.29.0.copyload, i64 %i.ga
  %next.gep52 = getelementptr i8, ptr %i.gc, i64 4
  %i.gd = getelementptr i8, ptr %.sroa.29.0.copyload, i64 %i.ga
  %next.gep53 = getelementptr i8, ptr %i.gd, i64 6
  %i.ge = getelementptr i8, ptr %.sroa.29.0.copyload, i64 %i.ga
  %next.gep54 = getelementptr i8, ptr %i.ge, i64 8
  %i.gf = getelementptr i8, ptr %.sroa.29.0.copyload, i64 %i.ga
  %next.gep55 = getelementptr i8, ptr %i.gf, i64 10
  %i.gg = getelementptr i8, ptr %.sroa.29.0.copyload, i64 %i.ga
  %next.gep56 = getelementptr i8, ptr %i.gg, i64 12
  %i.gh = getelementptr i8, ptr %.sroa.29.0.copyload, i64 %i.ga
  %next.gep57 = getelementptr i8, ptr %i.gh, i64 14
  %i.gi = getelementptr i8, ptr %.sroa.29.0.copyload, i64 %i.ga
  %next.gep58 = getelementptr i8, ptr %i.gi, i64 16
  %i.gj = getelementptr i8, ptr %.sroa.29.0.copyload, i64 %i.ga
  %next.gep59 = getelementptr i8, ptr %i.gj, i64 18
  %i.gk = getelementptr i8, ptr %.sroa.29.0.copyload, i64 %i.ga
  %next.gep60 = getelementptr i8, ptr %i.gk, i64 20
  %i.gl = getelementptr i8, ptr %.sroa.29.0.copyload, i64 %i.ga
  %next.gep61 = getelementptr i8, ptr %i.gl, i64 22
  %i.gm = getelementptr i8, ptr %.sroa.29.0.copyload, i64 %i.ga
  %next.gep62 = getelementptr i8, ptr %i.gm, i64 24
  %i.gn = getelementptr i8, ptr %.sroa.29.0.copyload, i64 %i.ga
  %next.gep63 = getelementptr i8, ptr %i.gn, i64 26
  %i.go = getelementptr i8, ptr %.sroa.29.0.copyload, i64 %i.ga
  %next.gep64 = getelementptr i8, ptr %i.go, i64 28
  %i.gp = getelementptr i8, ptr %.sroa.29.0.copyload, i64 %i.ga
  %next.gep65 = getelementptr i8, ptr %i.gp, i64 30
  %i.gq = getelementptr i8, ptr %next.gep, i64 16
  %wide.load = load <8 x i16>, ptr %next.gep, align 2, !noalias !497 ; 9 uses
  %wide.load66 = load <8 x i16>, ptr %i.gq, align 2, !noalias !497 ; 9 uses
  %i.gr = icmp slt <8 x i16> %wide.load, zeroinitializer ; 8 uses
  %i.gs = icmp slt <8 x i16> %wide.load66, zeroinitializer ; 8 uses
  %i.gt = extractelement <8 x i1> %i.gr, i64 0
  br i1 %i.gt, label %pred.store.if, label %pred.store.continue

pred.store.if:                                    ; preds = %vector.body
  %i.gu = extractelement <8 x i16> %wide.load, i64 0
  %i.gv = add i16 %i.gu, -32767
  store i16 %i.gv, ptr %next.gep, align 2, !noalias !497
  br label %pred.store.continue

pred.store.continue:                              ; preds = %pred.store.if, %vector.body
  %i.gw = extractelement <8 x i1> %i.gr, i64 1
  br i1 %i.gw, label %pred.store.if67, label %pred.store.continue68

pred.store.if67:                                  ; preds = %pred.store.continue
  %i.gx = extractelement <8 x i16> %wide.load, i64 1
  %i.gy = add i16 %i.gx, -32767
  store i16 %i.gy, ptr %next.gep51, align 2, !noalias !497
  br label %pred.store.continue68

pred.store.continue68:                            ; preds = %pred.store.if67, %pred.store.continue
  %i.gz = extractelement <8 x i1> %i.gr, i64 2
  br i1 %i.gz, label %pred.store.if69, label %pred.store.continue70

pred.store.if69:                                  ; preds = %pred.store.continue68
  %i.ha = extractelement <8 x i16> %wide.load, i64 2
  %i.hb = add i16 %i.ha, -32767
  store i16 %i.hb, ptr %next.gep52, align 2, !noalias !497
  br label %pred.store.continue70

pred.store.continue70:                            ; preds = %pred.store.if69, %pred.store.continue68
  %i.hc = extractelement <8 x i1> %i.gr, i64 3
  br i1 %i.hc, label %pred.store.if71, label %pred.store.continue72

pred.store.if71:                                  ; preds = %pred.store.continue70
  %i.hd = extractelement <8 x i16> %wide.load, i64 3
  %i.he = add i16 %i.hd, -32767
  store i16 %i.he, ptr %next.gep53, align 2, !noalias !497
  br label %pred.store.continue72

pred.store.continue72:                            ; preds = %pred.store.if71, %pred.store.continue70
  %i.hf = extractelement <8 x i1> %i.gr, i64 4
  br i1 %i.hf, label %pred.store.if73, label %pred.store.continue74

pred.store.if73:                                  ; preds = %pred.store.continue72
  %i.hg = extractelement <8 x i16> %wide.load, i64 4
  %i.hh = add i16 %i.hg, -32767
  store i16 %i.hh, ptr %next.gep54, align 2, !noalias !497
  br label %pred.store.continue74

pred.store.continue74:                            ; preds = %pred.store.if73, %pred.store.continue72
  %i.hi = extractelement <8 x i1> %i.gr, i64 5
  br i1 %i.hi, label %pred.store.if75, label %pred.store.continue76

pred.store.if75:                                  ; preds = %pred.store.continue74
  %i.hj = extractelement <8 x i16> %wide.load, i64 5
  %i.hk = add i16 %i.hj, -32767
  store i16 %i.hk, ptr %next.gep55, align 2, !noalias !497
  br label %pred.store.continue76

pred.store.continue76:                            ; preds = %pred.store.if75, %pred.store.continue74
  %i.hl = extractelement <8 x i1> %i.gr, i64 6
  br i1 %i.hl, label %pred.store.if77, label %pred.store.continue78

pred.store.if77:                                  ; preds = %pred.store.continue76
  %i.hm = extractelement <8 x i16> %wide.load, i64 6
  %i.hn = add i16 %i.hm, -32767
  store i16 %i.hn, ptr %next.gep56, align 2, !noalias !497
  br label %pred.store.continue78

pred.store.continue78:                            ; preds = %pred.store.if77, %pred.store.continue76
  %i.ho = extractelement <8 x i1> %i.gr, i64 7
  br i1 %i.ho, label %pred.store.if79, label %pred.store.continue80

pred.store.if79:                                  ; preds = %pred.store.continue78
  %i.hp = extractelement <8 x i16> %wide.load, i64 7
  %i.hq = add i16 %i.hp, -32767
  store i16 %i.hq, ptr %next.gep57, align 2, !noalias !497
  br label %pred.store.continue80

pred.store.continue80:                            ; preds = %pred.store.if79, %pred.store.continue78
  %i.hr = extractelement <8 x i1> %i.gs, i64 0
  br i1 %i.hr, label %pred.store.if81, label %pred.store.continue82

pred.store.if81:                                  ; preds = %pred.store.continue80
  %i.hs = extractelement <8 x i16> %wide.load66, i64 0
  %i.ht = add i16 %i.hs, -32767
  store i16 %i.ht, ptr %next.gep58, align 2, !noalias !497
  br label %pred.store.continue82

pred.store.continue82:                            ; preds = %pred.store.if81, %pred.store.continue80
  %i.hu = extractelement <8 x i1> %i.gs, i64 1
  br i1 %i.hu, label %pred.store.if83, label %pred.store.continue84

pred.store.if83:                                  ; preds = %pred.store.continue82
  %i.hv = extractelement <8 x i16> %wide.load66, i64 1
  %i.hw = add i16 %i.hv, -32767
  store i16 %i.hw, ptr %next.gep59, align 2, !noalias !497
  br label %pred.store.continue84

pred.store.continue84:                            ; preds = %pred.store.if83, %pred.store.continue82
  %i.hx = extractelement <8 x i1> %i.gs, i64 2
  br i1 %i.hx, label %pred.store.if85, label %pred.store.continue86

pred.store.if85:                                  ; preds = %pred.store.continue84
  %i.hy = extractelement <8 x i16> %wide.load66, i64 2
  %i.hz = add i16 %i.hy, -32767
  store i16 %i.hz, ptr %next.gep60, align 2, !noalias !497
  br label %pred.store.continue86

pred.store.continue86:                            ; preds = %pred.store.if85, %pred.store.continue84
  %i.ia = extractelement <8 x i1> %i.gs, i64 3
  br i1 %i.ia, label %pred.store.if87, label %pred.store.continue88

pred.store.if87:                                  ; preds = %pred.store.continue86
  %i.ib = extractelement <8 x i16> %wide.load66, i64 3
  %i.ic = add i16 %i.ib, -32767
  store i16 %i.ic, ptr %next.gep61, align 2, !noalias !497
  br label %pred.store.continue88

pred.store.continue88:                            ; preds = %pred.store.if87, %pred.store.continue86
  %i.id = extractelement <8 x i1> %i.gs, i64 4
  br i1 %i.id, label %pred.store.if89, label %pred.store.continue90

pred.store.if89:                                  ; preds = %pred.store.continue88
  %i.ie = extractelement <8 x i16> %wide.load66, i64 4
  %i.if = add i16 %i.ie, -32767
  store i16 %i.if, ptr %next.gep62, align 2, !noalias !497
  br label %pred.store.continue90

pred.store.continue90:                            ; preds = %pred.store.if89, %pred.store.continue88
  %i.ig = extractelement <8 x i1> %i.gs, i64 5
  br i1 %i.ig, label %pred.store.if91, label %pred.store.continue92

pred.store.if91:                                  ; preds = %pred.store.continue90
  %i.ih = extractelement <8 x i16> %wide.load66, i64 5
  %i.ii = add i16 %i.ih, -32767
  store i16 %i.ii, ptr %next.gep63, align 2, !noalias !497
  br label %pred.store.continue92

pred.store.continue92:                            ; preds = %pred.store.if91, %pred.store.continue90
  %i.ij = extractelement <8 x i1> %i.gs, i64 6
  br i1 %i.ij, label %pred.store.if93, label %pred.store.continue94

pred.store.if93:                                  ; preds = %pred.store.continue92
  %i.ik = extractelement <8 x i16> %wide.load66, i64 6
  %i.il = add i16 %i.ik, -32767
  store i16 %i.il, ptr %next.gep64, align 2, !noalias !497
  br label %pred.store.continue94

pred.store.continue94:                            ; preds = %pred.store.if93, %pred.store.continue92
  %i.im = extractelement <8 x i1> %i.gs, i64 7
  br i1 %i.im, label %pred.store.if95, label %pred.store.continue96

pred.store.if95:                                  ; preds = %pred.store.continue94
  %i.in = extractelement <8 x i16> %wide.load66, i64 7
  %i.io = add i16 %i.in, -32767
  store i16 %i.io, ptr %next.gep65, align 2, !noalias !497
  br label %pred.store.continue96

pred.store.continue96:                            ; preds = %pred.store.if95, %pred.store.continue94
  %index.next = add nuw i64 %index, 16            ; 2 uses
  %i.ip = icmp eq i64 %index.next, %n.vec
  br i1 %i.ip, label %middle.block, label %vector.body, !llvm.loop !461

middle.block:                                     ; preds = %pred.store.continue96
  %cmp.n = icmp eq i64 %i.fw, %n.vec
  br i1 %cmp.n, label %.thread170.i, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check.not.not = icmp eq i64 %i.fx, 0
  br i1 %min.epilog.iters.check.not.not, label %.lr.ph.i166.i.i.preheader, label %vec.epilog.ph, !prof !85

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec97 = and i64 %i.fw, -8                    ; 3 uses
  %i.iq = shl i64 %n.vec97, 1
  %i.ir = getelementptr i8, ptr %.sroa.29.0.copyload, i64 %i.iq
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %pred.store.continue123, %vec.epilog.ph
  %index98 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next124, %pred.store.continue123 ] ; 2 uses
  %i.is = shl i64 %index98, 1                     ; 8 uses
  %next.gep99 = getelementptr i8, ptr %.sroa.29.0.copyload, i64 %i.is ; 2 uses
  %i.it = getelementptr i8, ptr %.sroa.29.0.copyload, i64 %i.is
  %next.gep100 = getelementptr i8, ptr %i.it, i64 2
  %i.iu = getelementptr i8, ptr %.sroa.29.0.copyload, i64 %i.is
  %next.gep101 = getelementptr i8, ptr %i.iu, i64 4
  %i.iv = getelementptr i8, ptr %.sroa.29.0.copyload, i64 %i.is
  %next.gep102 = getelementptr i8, ptr %i.iv, i64 6
  %i.iw = getelementptr i8, ptr %.sroa.29.0.copyload, i64 %i.is
  %next.gep103 = getelementptr i8, ptr %i.iw, i64 8
  %i.ix = getelementptr i8, ptr %.sroa.29.0.copyload, i64 %i.is
  %next.gep104 = getelementptr i8, ptr %i.ix, i64 10
  %i.iy = getelementptr i8, ptr %.sroa.29.0.copyload, i64 %i.is
  %next.gep105 = getelementptr i8, ptr %i.iy, i64 12
  %i.iz = getelementptr i8, ptr %.sroa.29.0.copyload, i64 %i.is
  %next.gep106 = getelementptr i8, ptr %i.iz, i64 14
  %wide.load107 = load <8 x i16>, ptr %next.gep99, align 2, !noalias !497 ; 9 uses
  %i.ja = icmp slt <8 x i16> %wide.load107, zeroinitializer ; 8 uses
  %i.jb = extractelement <8 x i1> %i.ja, i64 0
  br i1 %i.jb, label %pred.store.if108, label %pred.store.continue109

pred.store.if108:                                 ; preds = %vec.epilog.vector.body
  %i.jc = extractelement <8 x i16> %wide.load107, i64 0
  %i.jd = add i16 %i.jc, -32767
  store i16 %i.jd, ptr %next.gep99, align 2, !noalias !497
  br label %pred.store.continue109

pred.store.continue109:                           ; preds = %pred.store.if108, %vec.epilog.vector.body
  %i.je = extractelement <8 x i1> %i.ja, i64 1
  br i1 %i.je, label %pred.store.if110, label %pred.store.continue111

pred.store.if110:                                 ; preds = %pred.store.continue109
  %i.jf = extractelement <8 x i16> %wide.load107, i64 1
  %i.jg = add i16 %i.jf, -32767
  store i16 %i.jg, ptr %next.gep100, align 2, !noalias !497
  br label %pred.store.continue111

pred.store.continue111:                           ; preds = %pred.store.if110, %pred.store.continue109
  %i.jh = extractelement <8 x i1> %i.ja, i64 2
  br i1 %i.jh, label %pred.store.if112, label %pred.store.continue113

pred.store.if112:                                 ; preds = %pred.store.continue111
  %i.ji = extractelement <8 x i16> %wide.load107, i64 2
  %i.jj = add i16 %i.ji, -32767
  store i16 %i.jj, ptr %next.gep101, align 2, !noalias !497
  br label %pred.store.continue113

pred.store.continue113:                           ; preds = %pred.store.if112, %pred.store.continue111
  %i.jk = extractelement <8 x i1> %i.ja, i64 3
  br i1 %i.jk, label %pred.store.if114, label %pred.store.continue115

pred.store.if114:                                 ; preds = %pred.store.continue113
  %i.jl = extractelement <8 x i16> %wide.load107, i64 3
  %i.jm = add i16 %i.jl, -32767
  store i16 %i.jm, ptr %next.gep102, align 2, !noalias !497
  br label %pred.store.continue115

pred.store.continue115:                           ; preds = %pred.store.if114, %pred.store.continue113
  %i.jn = extractelement <8 x i1> %i.ja, i64 4
  br i1 %i.jn, label %pred.store.if116, label %pred.store.continue117

pred.store.if116:                                 ; preds = %pred.store.continue115
  %i.jo = extractelement <8 x i16> %wide.load107, i64 4
  %i.jp = add i16 %i.jo, -32767
  store i16 %i.jp, ptr %next.gep103, align 2, !noalias !497
  br label %pred.store.continue117

pred.store.continue117:                           ; preds = %pred.store.if116, %pred.store.continue115
  %i.jq = extractelement <8 x i1> %i.ja, i64 5
  br i1 %i.jq, label %pred.store.if118, label %pred.store.continue119

pred.store.if118:                                 ; preds = %pred.store.continue117
  %i.jr = extractelement <8 x i16> %wide.load107, i64 5
  %i.js = add i16 %i.jr, -32767
  store i16 %i.js, ptr %next.gep104, align 2, !noalias !497
  br label %pred.store.continue119

pred.store.continue119:                           ; preds = %pred.store.if118, %pred.store.continue117
  %i.jt = extractelement <8 x i1> %i.ja, i64 6
  br i1 %i.jt, label %pred.store.if120, label %pred.store.continue121

pred.store.if120:                                 ; preds = %pred.store.continue119
  %i.ju = extractelement <8 x i16> %wide.load107, i64 6
  %i.jv = add i16 %i.ju, -32767
  store i16 %i.jv, ptr %next.gep105, align 2, !noalias !497
  br label %pred.store.continue121

pred.store.continue121:                           ; preds = %pred.store.if120, %pred.store.continue119
  %i.jw = extractelement <8 x i1> %i.ja, i64 7
  br i1 %i.jw, label %pred.store.if122, label %pred.store.continue123

pred.store.if122:                                 ; preds = %pred.store.continue121
  %i.jx = extractelement <8 x i16> %wide.load107, i64 7
  %i.jy = add i16 %i.jx, -32767
  store i16 %i.jy, ptr %next.gep106, align 2, !noalias !497
  br label %pred.store.continue123

pred.store.continue123:                           ; preds = %pred.store.if122, %pred.store.continue121
  %index.next124 = add nuw i64 %index98, 8        ; 2 uses
  %i.jz = icmp eq i64 %index.next124, %n.vec97
  br i1 %i.jz, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !462

vec.epilog.middle.block:                          ; preds = %pred.store.continue123
  %cmp.n125 = icmp eq i64 %i.fw, %n.vec97
  br i1 %cmp.n125, label %.thread170.i, label %.lr.ph.i166.i.i.preheader

.lr.ph.i166.i.i.preheader:                        ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.sroa.0.01.i167.i.i.ph = phi ptr [ %.sroa.29.0.copyload, %iter.check ], [ %i.fz, %vec.epilog.iter.check ], [ %i.ir, %vec.epilog.middle.block ]
  br label %.lr.ph.i166.i.i

.lr.ph.i166.i.i:                                  ; preds = %.lr.ph.i166.i.i.preheader, %bb.q
  %.sroa.0.01.i167.i.i = phi ptr [ %i.ka, %bb.q ], [ %.sroa.0.01.i167.i.i.ph, %.lr.ph.i166.i.i.preheader ] ; 3 uses
  %i.ka = getelementptr inbounds nuw i8, ptr %.sroa.0.01.i167.i.i, i64 2 ; 2 uses
  %i.kb = load i16, ptr %.sroa.0.01.i167.i.i, align 2, !noalias !497, !noundef !75 ; 2 uses
  %i.kc = icmp slt i16 %i.kb, 0
  br i1 %i.kc, label %bb.p, label %bb.q

bb.p:                                             ; preds = %.lr.ph.i166.i.i
  %i.kd = add i16 %i.kb, -32767
  store i16 %i.kd, ptr %.sroa.0.01.i167.i.i, align 2, !noalias !497
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %.lr.ph.i166.i.i
  %i.ke = icmp eq ptr %i.ka, %i.ft
  br i1 %i.ke, label %.thread170.i, label %.lr.ph.i166.i.i, !llvm.loop !463

iter.check286:                                    ; preds = %bb.o
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.29.0.copyload) ]
  %.idx.i169.i.i = shl nuw nsw i64 %.sroa.37.0.copyload, 1 ; 2 uses
  %i.kf = getelementptr inbounds nuw i8, ptr %.sroa.29.0.copyload, i64 %.idx.i169.i.i
  %i.kg = add nsw i64 %.idx.i169.i.i, -2          ; 3 uses
  %i.kh = lshr exact i64 %i.kg, 1
  %i.ki = add nuw i64 %i.kh, 1                    ; 5 uses
  %min.iters.check225 = icmp ult i64 %i.kg, 14
  br i1 %min.iters.check225, label %.lr.ph.i170.i.i.preheader, label %vector.main.loop.iter.check226

vector.main.loop.iter.check226:                   ; preds = %iter.check286
  %min.iters.check227 = icmp ult i64 %i.kg, 30
  br i1 %min.iters.check227, label %vec.epilog.ph290, label %vector.ph228

vector.ph228:                                     ; preds = %vector.main.loop.iter.check226
  %i.kj = and i64 %i.ki, 8
  %n.vec229 = and i64 %i.ki, -16                  ; 4 uses
  %i.kk = shl i64 %n.vec229, 1
  %i.kl = getelementptr i8, ptr %.sroa.29.0.copyload, i64 %i.kk
  br label %vector.body230

vector.body230:                                   ; preds = %vector.ph228, %pred.store.continue281
  %index231 = phi i64 [ 0, %vector.ph228 ], [ %index.next282, %pred.store.continue281 ] ; 2 uses
  %i.km = shl i64 %index231, 1                    ; 16 uses
  %next.gep232 = getelementptr i8, ptr %.sroa.29.0.copyload, i64 %i.km ; 3 uses
  %i.kn = getelementptr i8, ptr %.sroa.29.0.copyload, i64 %i.km
  %next.gep233 = getelementptr i8, ptr %i.kn, i64 2
  %i.ko = getelementptr i8, ptr %.sroa.29.0.copyload, i64 %i.km
  %next.gep234 = getelementptr i8, ptr %i.ko, i64 4
  %i.kp = getelementptr i8, ptr %.sroa.29.0.copyload, i64 %i.km
  %next.gep235 = getelementptr i8, ptr %i.kp, i64 6
  %i.kq = getelementptr i8, ptr %.sroa.29.0.copyload, i64 %i.km
  %next.gep236 = getelementptr i8, ptr %i.kq, i64 8
  %i.kr = getelementptr i8, ptr %.sroa.29.0.copyload, i64 %i.km
  %next.gep237 = getelementptr i8, ptr %i.kr, i64 10
  %i.ks = getelementptr i8, ptr %.sroa.29.0.copyload, i64 %i.km
  %next.gep238 = getelementptr i8, ptr %i.ks, i64 12
  %i.kt = getelementptr i8, ptr %.sroa.29.0.copyload, i64 %i.km
  %next.gep239 = getelementptr i8, ptr %i.kt, i64 14
  %i.ku = getelementptr i8, ptr %.sroa.29.0.copyload, i64 %i.km
  %next.gep240 = getelementptr i8, ptr %i.ku, i64 16
  %i.kv = getelementptr i8, ptr %.sroa.29.0.copyload, i64 %i.km
  %next.gep241 = getelementptr i8, ptr %i.kv, i64 18
  %i.kw = getelementptr i8, ptr %.sroa.29.0.copyload, i64 %i.km
  %next.gep242 = getelementptr i8, ptr %i.kw, i64 20
  %i.kx = getelementptr i8, ptr %.sroa.29.0.copyload, i64 %i.km
  %next.gep243 = getelementptr i8, ptr %i.kx, i64 22
  %i.ky = getelementptr i8, ptr %.sroa.29.0.copyload, i64 %i.km
  %next.gep244 = getelementptr i8, ptr %i.ky, i64 24
  %i.kz = getelementptr i8, ptr %.sroa.29.0.copyload, i64 %i.km
  %next.gep245 = getelementptr i8, ptr %i.kz, i64 26
  %i.la = getelementptr i8, ptr %.sroa.29.0.copyload, i64 %i.km
  %next.gep246 = getelementptr i8, ptr %i.la, i64 28
  %i.lb = getelementptr i8, ptr %.sroa.29.0.copyload, i64 %i.km
  %next.gep247 = getelementptr i8, ptr %i.lb, i64 30
  %i.lc = getelementptr i8, ptr %next.gep232, i64 16
  %wide.load248 = load <8 x i16>, ptr %next.gep232, align 2, !noalias !497 ; 9 uses
  %wide.load249 = load <8 x i16>, ptr %i.lc, align 2, !noalias !497 ; 9 uses
  %i.ld = icmp slt <8 x i16> %wide.load248, zeroinitializer ; 8 uses
  %i.le = icmp slt <8 x i16> %wide.load249, zeroinitializer ; 8 uses
  %i.lf = extractelement <8 x i1> %i.ld, i64 0
  br i1 %i.lf, label %pred.store.if250, label %pred.store.continue251

pred.store.if250:                                 ; preds = %vector.body230
  %i.lg = extractelement <8 x i16> %wide.load248, i64 0
  %i.lh = add i16 %i.lg, -32767
  store i16 %i.lh, ptr %next.gep232, align 2, !noalias !497
  br label %pred.store.continue251

pred.store.continue251:                           ; preds = %pred.store.if250, %vector.body230
  %i.li = extractelement <8 x i1> %i.ld, i64 1
  br i1 %i.li, label %pred.store.if252, label %pred.store.continue253

pred.store.if252:                                 ; preds = %pred.store.continue251
  %i.lj = extractelement <8 x i16> %wide.load248, i64 1
  %i.lk = add i16 %i.lj, -32767
  store i16 %i.lk, ptr %next.gep233, align 2, !noalias !497
  br label %pred.store.continue253

pred.store.continue253:                           ; preds = %pred.store.if252, %pred.store.continue251
  %i.ll = extractelement <8 x i1> %i.ld, i64 2
  br i1 %i.ll, label %pred.store.if254, label %pred.store.continue255

pred.store.if254:                                 ; preds = %pred.store.continue253
  %i.lm = extractelement <8 x i16> %wide.load248, i64 2
  %i.ln = add i16 %i.lm, -32767
  store i16 %i.ln, ptr %next.gep234, align 2, !noalias !497
  br label %pred.store.continue255

pred.store.continue255:                           ; preds = %pred.store.if254, %pred.store.continue253
  %i.lo = extractelement <8 x i1> %i.ld, i64 3
  br i1 %i.lo, label %pred.store.if256, label %pred.store.continue257

pred.store.if256:                                 ; preds = %pred.store.continue255
  %i.lp = extractelement <8 x i16> %wide.load248, i64 3
  %i.lq = add i16 %i.lp, -32767
  store i16 %i.lq, ptr %next.gep235, align 2, !noalias !497
  br label %pred.store.continue257

pred.store.continue257:                           ; preds = %pred.store.if256, %pred.store.continue255
  %i.lr = extractelement <8 x i1> %i.ld, i64 4
  br i1 %i.lr, label %pred.store.if258, label %pred.store.continue259

pred.store.if258:                                 ; preds = %pred.store.continue257
  %i.ls = extractelement <8 x i16> %wide.load248, i64 4
  %i.lt = add i16 %i.ls, -32767
  store i16 %i.lt, ptr %next.gep236, align 2, !noalias !497
  br label %pred.store.continue259

pred.store.continue259:                           ; preds = %pred.store.if258, %pred.store.continue257
  %i.lu = extractelement <8 x i1> %i.ld, i64 5
  br i1 %i.lu, label %pred.store.if260, label %pred.store.continue261

pred.store.if260:                                 ; preds = %pred.store.continue259
  %i.lv = extractelement <8 x i16> %wide.load248, i64 5
  %i.lw = add i16 %i.lv, -32767
  store i16 %i.lw, ptr %next.gep237, align 2, !noalias !497
  br label %pred.store.continue261

pred.store.continue261:                           ; preds = %pred.store.if260, %pred.store.continue259
  %i.lx = extractelement <8 x i1> %i.ld, i64 6
  br i1 %i.lx, label %pred.store.if262, label %pred.store.continue263

pred.store.if262:                                 ; preds = %pred.store.continue261
  %i.ly = extractelement <8 x i16> %wide.load248, i64 6
  %i.lz = add i16 %i.ly, -32767
  store i16 %i.lz, ptr %next.gep238, align 2, !noalias !497
  br label %pred.store.continue263

pred.store.continue263:                           ; preds = %pred.store.if262, %pred.store.continue261
  %i.ma = extractelement <8 x i1> %i.ld, i64 7
  br i1 %i.ma, label %pred.store.if264, label %pred.store.continue265

pred.store.if264:                                 ; preds = %pred.store.continue263
  %i.mb = extractelement <8 x i16> %wide.load248, i64 7
  %i.mc = add i16 %i.mb, -32767
  store i16 %i.mc, ptr %next.gep239, align 2, !noalias !497
  br label %pred.store.continue265

pred.store.continue265:                           ; preds = %pred.store.if264, %pred.store.continue263
  %i.md = extractelement <8 x i1> %i.le, i64 0
  br i1 %i.md, label %pred.store.if266, label %pred.store.continue267

pred.store.if266:                                 ; preds = %pred.store.continue265
  %i.me = extractelement <8 x i16> %wide.load249, i64 0
  %i.mf = add i16 %i.me, -32767
  store i16 %i.mf, ptr %next.gep240, align 2, !noalias !497
  br label %pred.store.continue267

pred.store.continue267:                           ; preds = %pred.store.if266, %pred.store.continue265
  %i.mg = extractelement <8 x i1> %i.le, i64 1
  br i1 %i.mg, label %pred.store.if268, label %pred.store.continue269

pred.store.if268:                                 ; preds = %pred.store.continue267
  %i.mh = extractelement <8 x i16> %wide.load249, i64 1
  %i.mi = add i16 %i.mh, -32767
  store i16 %i.mi, ptr %next.gep241, align 2, !noalias !497
  br label %pred.store.continue269

pred.store.continue269:                           ; preds = %pred.store.if268, %pred.store.continue267
  %i.mj = extractelement <8 x i1> %i.le, i64 2
  br i1 %i.mj, label %pred.store.if270, label %pred.store.continue271

pred.store.if270:                                 ; preds = %pred.store.continue269
  %i.mk = extractelement <8 x i16> %wide.load249, i64 2
  %i.ml = add i16 %i.mk, -32767
  store i16 %i.ml, ptr %next.gep242, align 2, !noalias !497
  br label %pred.store.continue271

pred.store.continue271:                           ; preds = %pred.store.if270, %pred.store.continue269
  %i.mm = extractelement <8 x i1> %i.le, i64 3
  br i1 %i.mm, label %pred.store.if272, label %pred.store.continue273

pred.store.if272:                                 ; preds = %pred.store.continue271
  %i.mn = extractelement <8 x i16> %wide.load249, i64 3
  %i.mo = add i16 %i.mn, -32767
  store i16 %i.mo, ptr %next.gep243, align 2, !noalias !497
  br label %pred.store.continue273

pred.store.continue273:                           ; preds = %pred.store.if272, %pred.store.continue271
  %i.mp = extractelement <8 x i1> %i.le, i64 4
  br i1 %i.mp, label %pred.store.if274, label %pred.store.continue275

pred.store.if274:                                 ; preds = %pred.store.continue273
  %i.mq = extractelement <8 x i16> %wide.load249, i64 4
  %i.mr = add i16 %i.mq, -32767
  store i16 %i.mr, ptr %next.gep244, align 2, !noalias !497
  br label %pred.store.continue275

pred.store.continue275:                           ; preds = %pred.store.if274, %pred.store.continue273
  %i.ms = extractelement <8 x i1> %i.le, i64 5
  br i1 %i.ms, label %pred.store.if276, label %pred.store.continue277

pred.store.if276:                                 ; preds = %pred.store.continue275
  %i.mt = extractelement <8 x i16> %wide.load249, i64 5
  %i.mu = add i16 %i.mt, -32767
  store i16 %i.mu, ptr %next.gep245, align 2, !noalias !497
  br label %pred.store.continue277

pred.store.continue277:                           ; preds = %pred.store.if276, %pred.store.continue275
  %i.mv = extractelement <8 x i1> %i.le, i64 6
  br i1 %i.mv, label %pred.store.if278, label %pred.store.continue279

pred.store.if278:                                 ; preds = %pred.store.continue277
  %i.mw = extractelement <8 x i16> %wide.load249, i64 6
  %i.mx = add i16 %i.mw, -32767
  store i16 %i.mx, ptr %next.gep246, align 2, !noalias !497
  br label %pred.store.continue279

pred.store.continue279:                           ; preds = %pred.store.if278, %pred.store.continue277
  %i.my = extractelement <8 x i1> %i.le, i64 7
  br i1 %i.my, label %pred.store.if280, label %pred.store.continue281

pred.store.if280:                                 ; preds = %pred.store.continue279
  %i.mz = extractelement <8 x i16> %wide.load249, i64 7
  %i.na = add i16 %i.mz, -32767
  store i16 %i.na, ptr %next.gep247, align 2, !noalias !497
  br label %pred.store.continue281

pred.store.continue281:                           ; preds = %pred.store.if280, %pred.store.continue279
  %index.next282 = add nuw i64 %index231, 16      ; 2 uses
  %i.nb = icmp eq i64 %index.next282, %n.vec229
end_hunk_1
begin_hunk_2_@_RINvMNtCsjjpCCFGI3ul_14lance_encoding6repdefNtB3_24NormalizedStructuralPlan38serialize_with_miniblock_repdef_budgetNvNtNtNtNtB5_9encodings7logical9primitive9miniblock27max_repdef_levels_per_chunkEB5_:bb.a
  %niter = phi i64 [ 0, %.preheader.i.i.i.preheader.new ], [ %niter.next.1, %_RNCINvNtNtNtCscI6d9CVNmLh_4core4iter8adapters3map8map_foldRNtNtCsjjpCCFGI3ul_14lance_encoding6repdef24DefinitionInterpretationjjNCINvNvXs1_NtB6_6filterINtB2d_6FilterppENtNtNtB8_6traits8iterator8Iterator5count8to_usizeBU_NCNvMs3_BX_NtBX_17SerializerContext34normalize_specials_and_plan_splits0E0NCINvXsK_NtB2K_5accumjNtB4R_3Sum3sumINtB4_3MapINtNtNtBa_5slice4iter4IterBV_EB22_EE0E0BZ_.exit.i.i.i.i.1 ]
  %i.ou = getelementptr inbounds nuw i8, ptr %i.ay, i64 %.sroa.04.0.i.i.i.i
  %.val.i.i.i.i = load i8, ptr %i.ou, align 1, !range !86, !alias.scope !498, !noalias !499, !noundef !75
  %switch.tableidx = add nsw i8 %.val.i.i.i.i, -1 ; 2 uses
  %i.ov = icmp ult i8 %switch.tableidx, 5
  br i1 %i.ov, label %switch.lookup, label %_RNCINvNtNtNtCscI6d9CVNmLh_4core4iter8adapters3map8map_foldRNtNtCsjjpCCFGI3ul_14lance_encoding6repdef24DefinitionInterpretationjjNCINvNvXs1_NtB6_6filterINtB2d_6FilterppENtNtNtB8_6traits8iterator8Iterator5count8to_usizeBU_NCNvMs3_BX_NtBX_17SerializerContext34normalize_specials_and_plan_splits0E0NCINvXsK_NtB2K_5accumjNtB4R_3Sum3sumINtB4_3MapINtNtNtBa_5slice4iter4IterBV_EB22_EE0E0BZ_.exit.i.i.i.i

switch.lookup:                                    ; preds = %.preheader.i.i.i
  %i.ow = zext nneg i8 %switch.tableidx to i64
  %switch.gep = getelementptr inbounds nuw i8, ptr @switch.table._RNvXs_NtNtNtCsjjpCCFGI3ul_14lance_encoding9encodings7logical9primitiveNtB4_19DecodeMiniBlockTaskNtNtBa_7decoder14DecodePageTask6decode, i64 %i.ow
  %switch.load = load i8, ptr %switch.gep, align 1
  %switch.ext = zext i8 %switch.load to i64
  br label %_RNCINvNtNtNtCscI6d9CVNmLh_4core4iter8adapters3map8map_foldRNtNtCsjjpCCFGI3ul_14lance_encoding6repdef24DefinitionInterpretationjjNCINvNvXs1_NtB6_6filterINtB2d_6FilterppENtNtNtB8_6traits8iterator8Iterator5count8to_usizeBU_NCNvMs3_BX_NtBX_17SerializerContext34normalize_specials_and_plan_splits0E0NCINvXsK_NtB2K_5accumjNtB4R_3Sum3sumINtB4_3MapINtNtNtBa_5slice4iter4IterBV_EB22_EE0E0BZ_.exit.i.i.i.i

_RNCINvNtNtNtCscI6d9CVNmLh_4core4iter8adapters3map8map_foldRNtNtCsjjpCCFGI3ul_14lance_encoding6repdef24DefinitionInterpretationjjNCINvNvXs1_NtB6_6filterINtB2d_6FilterppENtNtNtB8_6traits8iterator8Iterator5count8to_usizeBU_NCNvMs3_BX_NtBX_17SerializerContext34normalize_specials_and_plan_splits0E0NCINvXsK_NtB2K_5accumjNtB4R_3Sum3sumINtB4_3MapINtNtNtBa_5slice4iter4IterBV_EB22_EE0E0BZ_.exit.i.i.i.i: ; preds = %switch.lookup, %.preheader.i.i.i
  %.sroa.0.0.i.i.i.i.i.i.i = phi i64 [ %switch.ext, %switch.lookup ], [ 0, %.preheader.i.i.i ]
  %i.ox = add i64 %.sroa.0.0.i.i.i.i.i.i.i, %.sroa.02.0.i.i.i.i
  %i.oy = getelementptr inbounds nuw i8, ptr %i.ay, i64 %.sroa.04.0.i.i.i.i
  %i.oz = getelementptr inbounds nuw i8, ptr %i.oy, i64 1
  %.val.i.i.i.i.1 = load i8, ptr %i.oz, align 1, !range !86, !alias.scope !498, !noalias !499, !noundef !75
  %switch.tableidx.1 = add nsw i8 %.val.i.i.i.i.1, -1 ; 2 uses
  %i.pa = icmp ult i8 %switch.tableidx.1, 5
  br i1 %i.pa, label %switch.lookup.1, label %_RNCINvNtNtNtCscI6d9CVNmLh_4core4iter8adapters3map8map_foldRNtNtCsjjpCCFGI3ul_14lance_encoding6repdef24DefinitionInterpretationjjNCINvNvXs1_NtB6_6filterINtB2d_6FilterppENtNtNtB8_6traits8iterator8Iterator5count8to_usizeBU_NCNvMs3_BX_NtBX_17SerializerContext34normalize_specials_and_plan_splits0E0NCINvXsK_NtB2K_5accumjNtB4R_3Sum3sumINtB4_3MapINtNtNtBa_5slice4iter4IterBV_EB22_EE0E0BZ_.exit.i.i.i.i.1

switch.lookup.1:                                  ; preds = %_RNCINvNtNtNtCscI6d9CVNmLh_4core4iter8adapters3map8map_foldRNtNtCsjjpCCFGI3ul_14lance_encoding6repdef24DefinitionInterpretationjjNCINvNvXs1_NtB6_6filterINtB2d_6FilterppENtNtNtB8_6traits8iterator8Iterator5count8to_usizeBU_NCNvMs3_BX_NtBX_17SerializerContext34normalize_specials_and_plan_splits0E0NCINvXsK_NtB2K_5accumjNtB4R_3Sum3sumINtB4_3MapINtNtNtBa_5slice4iter4IterBV_EB22_EE0E0BZ_.exit.i.i.i.i
  %i.pb = zext nneg i8 %switch.tableidx.1 to i64
  %switch.gep.1 = getelementptr inbounds nuw i8, ptr @switch.table._RNvXs_NtNtNtCsjjpCCFGI3ul_14lance_encoding9encodings7logical9primitiveNtB4_19DecodeMiniBlockTaskNtNtBa_7decoder14DecodePageTask6decode, i64 %i.pb
  %switch.load.1 = load i8, ptr %switch.gep.1, align 1
  %switch.ext.1 = zext i8 %switch.load.1 to i64
  br label %_RNCINvNtNtNtCscI6d9CVNmLh_4core4iter8adapters3map8map_foldRNtNtCsjjpCCFGI3ul_14lance_encoding6repdef24DefinitionInterpretationjjNCINvNvXs1_NtB6_6filterINtB2d_6FilterppENtNtNtB8_6traits8iterator8Iterator5count8to_usizeBU_NCNvMs3_BX_NtBX_17SerializerContext34normalize_specials_and_plan_splits0E0NCINvXsK_NtB2K_5accumjNtB4R_3Sum3sumINtB4_3MapINtNtNtBa_5slice4iter4IterBV_EB22_EE0E0BZ_.exit.i.i.i.i.1

_RNCINvNtNtNtCscI6d9CVNmLh_4core4iter8adapters3map8map_foldRNtNtCsjjpCCFGI3ul_14lance_encoding6repdef24DefinitionInterpretationjjNCINvNvXs1_NtB6_6filterINtB2d_6FilterppENtNtNtB8_6traits8iterator8Iterator5count8to_usizeBU_NCNvMs3_BX_NtBX_17SerializerContext34normalize_specials_and_plan_splits0E0NCINvXsK_NtB2K_5accumjNtB4R_3Sum3sumINtB4_3MapINtNtNtBa_5slice4iter4IterBV_EB22_EE0E0BZ_.exit.i.i.i.i.1: ; preds = %switch.lookup.1, %_RNCINvNtNtNtCscI6d9CVNmLh_4core4iter8adapters3map8map_foldRNtNtCsjjpCCFGI3ul_14lance_encoding6repdef24DefinitionInterpretationjjNCINvNvXs1_NtB6_6filterINtB2d_6FilterppENtNtNtB8_6traits8iterator8Iterator5count8to_usizeBU_NCNvMs3_BX_NtBX_17SerializerContext34normalize_specials_and_plan_splits0E0NCINvXsK_NtB2K_5accumjNtB4R_3Sum3sumINtB4_3MapINtNtNtBa_5slice4iter4IterBV_EB22_EE0E0BZ_.exit.i.i.i.i
  %.sroa.0.0.i.i.i.i.i.i.i.1 = phi i64 [ %switch.ext.1, %switch.lookup.1 ], [ 0, %_RNCINvNtNtNtCscI6d9CVNmLh_4core4iter8adapters3map8map_foldRNtNtCsjjpCCFGI3ul_14lance_encoding6repdef24DefinitionInterpretationjjNCINvNvXs1_NtB6_6filterINtB2d_6FilterppENtNtNtB8_6traits8iterator8Iterator5count8to_usizeBU_NCNvMs3_BX_NtBX_17SerializerContext34normalize_specials_and_plan_splits0E0NCINvXsK_NtB2K_5accumjNtB4R_3Sum3sumINtB4_3MapINtNtNtBa_5slice4iter4IterBV_EB22_EE0E0BZ_.exit.i.i.i.i ]
  %i.pc = add i64 %.sroa.0.0.i.i.i.i.i.i.i.1, %i.ox ; 3 uses
  %i.pd = add nuw nsw i64 %.sroa.04.0.i.i.i.i, 2  ; 2 uses
  %niter.next.1 = add nuw i64 %niter, 2           ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %.lr.ph.i.i.preheader.i.i.unr-lcssa, label %.preheader.i.i.i

.lr.ph.i.i.preheader.i.i.unr-lcssa:               ; preds = %_RNCINvNtNtNtCscI6d9CVNmLh_4core4iter8adapters3map8map_foldRNtNtCsjjpCCFGI3ul_14lance_encoding6repdef24DefinitionInterpretationjjNCINvNvXs1_NtB6_6filterINtB2d_6FilterppENtNtNtB8_6traits8iterator8Iterator5count8to_usizeBU_NCNvMs3_BX_NtBX_17SerializerContext34normalize_specials_and_plan_splits0E0NCINvXsK_NtB2K_5accumjNtB4R_3Sum3sumINtB4_3MapINtNtNtBa_5slice4iter4IterBV_EB22_EE0E0BZ_.exit.i.i.i.i.1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i.preheader.i.i, label %.preheader.i.i.i.epil.preheader

.preheader.i.i.i.epil.preheader:                  ; preds = %.lr.ph.i.i.preheader.i.i.unr-lcssa, %.preheader.i.i.i.preheader
  %.sroa.04.0.i.i.i.i.epil.init = phi i64 [ 0, %.preheader.i.i.i.preheader ], [ %i.pd, %.lr.ph.i.i.preheader.i.i.unr-lcssa ]
  %.sroa.02.0.i.i.i.i.epil.init = phi i64 [ 0, %.preheader.i.i.i.preheader ], [ %i.pc, %.lr.ph.i.i.preheader.i.i.unr-lcssa ]
  %lcmp.mod430 = trunc i64 %i.ba to i1
  tail call void @llvm.assume(i1 %lcmp.mod430)
  %i.pe = getelementptr inbounds nuw i8, ptr %i.ay, i64 %.sroa.04.0.i.i.i.i.epil.init
  %.val.i.i.i.i.epil = load i8, ptr %i.pe, align 1, !range !86, !alias.scope !498, !noalias !499, !noundef !75
  %switch.tableidx.epil = add nsw i8 %.val.i.i.i.i.epil, -1 ; 2 uses
  %i.pf = icmp ult i8 %switch.tableidx.epil, 5
  br i1 %i.pf, label %switch.lookup.epil, label %_RNCINvNtNtNtCscI6d9CVNmLh_4core4iter8adapters3map8map_foldRNtNtCsjjpCCFGI3ul_14lance_encoding6repdef24DefinitionInterpretationjjNCINvNvXs1_NtB6_6filterINtB2d_6FilterppENtNtNtB8_6traits8iterator8Iterator5count8to_usizeBU_NCNvMs3_BX_NtBX_17SerializerContext34normalize_specials_and_plan_splits0E0NCINvXsK_NtB2K_5accumjNtB4R_3Sum3sumINtB4_3MapINtNtNtBa_5slice4iter4IterBV_EB22_EE0E0BZ_.exit.i.i.i.i.epil

switch.lookup.epil:                               ; preds = %.preheader.i.i.i.epil.preheader
  %i.pg = zext nneg i8 %switch.tableidx.epil to i64
  %switch.gep.epil = getelementptr inbounds nuw i8, ptr @switch.table._RNvXs_NtNtNtCsjjpCCFGI3ul_14lance_encoding9encodings7logical9primitiveNtB4_19DecodeMiniBlockTaskNtNtBa_7decoder14DecodePageTask6decode, i64 %i.pg
  %switch.load.epil = load i8, ptr %switch.gep.epil, align 1
  %switch.ext.epil = zext i8 %switch.load.epil to i64
  br label %_RNCINvNtNtNtCscI6d9CVNmLh_4core4iter8adapters3map8map_foldRNtNtCsjjpCCFGI3ul_14lance_encoding6repdef24DefinitionInterpretationjjNCINvNvXs1_NtB6_6filterINtB2d_6FilterppENtNtNtB8_6traits8iterator8Iterator5count8to_usizeBU_NCNvMs3_BX_NtBX_17SerializerContext34normalize_specials_and_plan_splits0E0NCINvXsK_NtB2K_5accumjNtB4R_3Sum3sumINtB4_3MapINtNtNtBa_5slice4iter4IterBV_EB22_EE0E0BZ_.exit.i.i.i.i.epil

_RNCINvNtNtNtCscI6d9CVNmLh_4core4iter8adapters3map8map_foldRNtNtCsjjpCCFGI3ul_14lance_encoding6repdef24DefinitionInterpretationjjNCINvNvXs1_NtB6_6filterINtB2d_6FilterppENtNtNtB8_6traits8iterator8Iterator5count8to_usizeBU_NCNvMs3_BX_NtBX_17SerializerContext34normalize_specials_and_plan_splits0E0NCINvXsK_NtB2K_5accumjNtB4R_3Sum3sumINtB4_3MapINtNtNtBa_5slice4iter4IterBV_EB22_EE0E0BZ_.exit.i.i.i.i.epil: ; preds = %switch.lookup.epil, %.preheader.i.i.i.epil.preheader
  %.sroa.0.0.i.i.i.i.i.i.i.epil = phi i64 [ %switch.ext.epil, %switch.lookup.epil ], [ 0, %.preheader.i.i.i.epil.preheader ]
  %i.ph = add i64 %.sroa.0.0.i.i.i.i.i.i.i.epil, %.sroa.02.0.i.i.i.i.epil.init
  br label %.lr.ph.i.i.preheader.i.i

.lr.ph.i.i.preheader.i.i:                         ; preds = %.lr.ph.i.i.preheader.i.i.unr-lcssa, %_RNCINvNtNtNtCscI6d9CVNmLh_4core4iter8adapters3map8map_foldRNtNtCsjjpCCFGI3ul_14lance_encoding6repdef24DefinitionInterpretationjjNCINvNvXs1_NtB6_6filterINtB2d_6FilterppENtNtNtB8_6traits8iterator8Iterator5count8to_usizeBU_NCNvMs3_BX_NtBX_17SerializerContext34normalize_specials_and_plan_splits0E0NCINvXsK_NtB2K_5accumjNtB4R_3Sum3sumINtB4_3MapINtNtNtBa_5slice4iter4IterBV_EB22_EE0E0BZ_.exit.i.i.i.i.epil
  %.lcssa427 = phi i64 [ %i.pc, %.lr.ph.i.i.preheader.i.i.unr-lcssa ], [ %i.ph, %_RNCINvNtNtNtCscI6d9CVNmLh_4core4iter8adapters3map8map_foldRNtNtCsjjpCCFGI3ul_14lance_encoding6repdef24DefinitionInterpretationjjNCINvNvXs1_NtB6_6filterINtB2d_6FilterppENtNtNtB8_6traits8iterator8Iterator5count8to_usizeBU_NCNvMs3_BX_NtBX_17SerializerContext34normalize_specials_and_plan_splits0E0NCINvXsK_NtB2K_5accumjNtB4R_3Sum3sumINtB4_3MapINtNtNtBa_5slice4iter4IterBV_EB22_EE0E0BZ_.exit.i.i.i.i.epil ] ; 2 uses
  %i.pi = icmp ule i64 %.lcssa427, %i.ba
  tail call void @llvm.assume(i1 %i.pi)
  %i.pj = trunc i64 %.lcssa427 to i16             ; 3 uses
  br label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %_RNCNvMs0_NtCsjjpCCFGI3ul_14lance_encoding6repdefNtB7_17SerializedRepDefs17max_visible_level0B9_.exit.i.i.i.i, %.lr.ph.i.i.preheader.i.i
  %.sroa.02.09.i.i.i.i = phi i64 [ %i.pm, %_RNCNvMs0_NtCsjjpCCFGI3ul_14lance_encoding6repdefNtB7_17SerializedRepDefs17max_visible_level0B9_.exit.i.i.i.i ], [ 0, %.lr.ph.i.i.preheader.i.i ] ; 6 uses
  %i.pk = phi ptr [ %i.pl, %_RNCNvMs0_NtCsjjpCCFGI3ul_14lance_encoding6repdefNtB7_17SerializedRepDefs17max_visible_level0B9_.exit.i.i.i.i ], [ %i.ay, %.lr.ph.i.i.preheader.i.i ] ; 2 uses
  %.val.i.i173.i.i = load i8, ptr %i.pk, align 1, !range !86, !alias.scope !500, !noalias !501, !noundef !75
  switch i8 %.val.i.i173.i.i, label %_RNCNvMs0_NtCsjjpCCFGI3ul_14lance_encoding6repdefNtB7_17SerializedRepDefs17max_visible_level0B9_.exit.i.i.i.i [
    i8 1, label %bb.u
    i8 3, label %bb.u
    i8 4, label %bb.u
    i8 5, label %bb.u
  ]

_RNCNvMs0_NtCsjjpCCFGI3ul_14lance_encoding6repdefNtB7_17SerializedRepDefs17max_visible_level0B9_.exit.i.i.i.i: ; preds = %.lr.ph.i.i.i.i
  %i.pl = getelementptr inbounds nuw i8, ptr %i.pk, i64 1 ; 2 uses
  %i.pm = add nuw nsw i64 %.sroa.02.09.i.i.i.i, 1
  %i.pn = icmp eq ptr %i.pl, %i.or
  br i1 %i.pn, label %iter.check188, label %.lr.ph.i.i.i.i

bb.u:                                             ; preds = %.lr.ph.i.i.i.i, %.lr.ph.i.i.i.i, %.lr.ph.i.i.i.i, %.lr.ph.i.i.i.i
  %i.po = icmp samesign ult i64 %.sroa.02.09.i.i.i.i, %i.ba
  tail call void @llvm.assume(i1 %i.po)
  %.not.i.i.i.i = icmp eq i64 %.sroa.02.09.i.i.i.i, 0
  br i1 %.not.i.i.i.i, label %_RNvMs0_NtCsjjpCCFGI3ul_14lance_encoding6repdefNtB5_17SerializedRepDefs17max_visible_level.exit.i.i, label %.lr.ph.i4.i.i.i.preheader

.lr.ph.i4.i.i.i.preheader:                        ; preds = %bb.u
  %xtraiter431 = and i64 %.sroa.02.09.i.i.i.i, 3  ; 3 uses
  %i.pp = icmp samesign ult i64 %.sroa.02.09.i.i.i.i, 4
  br i1 %i.pp, label %.lr.ph.i4.i.i.i.epil.preheader, label %.lr.ph.i4.i.i.i.preheader.new

.lr.ph.i4.i.i.i.preheader.new:                    ; preds = %.lr.ph.i4.i.i.i.preheader
  %unroll_iter435 = and i64 %.sroa.02.09.i.i.i.i, 9223372036854775804
  br label %.lr.ph.i4.i.i.i

.lr.ph.i4.i.i.i:                                  ; preds = %.lr.ph.i4.i.i.i, %.lr.ph.i4.i.i.i.preheader.new
  %.sroa.0.013.i.i.i.i = phi i16 [ 0, %.lr.ph.i4.i.i.i.preheader.new ], [ %i.qf, %.lr.ph.i4.i.i.i ]
  %.sroa.02.012.i.i.i.i = phi i64 [ 0, %.lr.ph.i4.i.i.i.preheader.new ], [ %i.qb, %.lr.ph.i4.i.i.i ] ; 5 uses
  %niter436 = phi i64 [ 0, %.lr.ph.i4.i.i.i.preheader.new ], [ %niter436.next.3, %.lr.ph.i4.i.i.i ]
  %i.pq = getelementptr inbounds nuw i8, ptr %i.ay, i64 %.sroa.02.012.i.i.i.i
  %.val1.i.i.i.i.i = load i8, ptr %i.pq, align 1, !range !86, !alias.scope !500, !noalias !502, !noundef !75
  %i.pr = zext nneg i8 %.val1.i.i.i.i.i to i64
  %switch.gep422 = getelementptr inbounds nuw i8, ptr @switch.table._RNvMsE_NtNtNtCsjjpCCFGI3ul_14lance_encoding9encodings7logical9primitiveNtB5_33StructuralPrimitiveFieldScheduler24page_layout_to_scheduler.4820, i64 %i.pr
  %switch.load423 = load i8, ptr %switch.gep422, align 1
  %switch.ext424 = zext i8 %switch.load423 to i16
  %i.ps = add i16 %.sroa.0.013.i.i.i.i, %switch.ext424
  %i.pt = getelementptr inbounds nuw i8, ptr %i.ay, i64 %.sroa.02.012.i.i.i.i
  %i.pu = getelementptr inbounds nuw i8, ptr %i.pt, i64 1
  %.val1.i.i.i.i.i.1 = load i8, ptr %i.pu, align 1, !range !86, !alias.scope !500, !noalias !502, !noundef !75
  %i.pv = zext nneg i8 %.val1.i.i.i.i.i.1 to i64
  %switch.gep422.1 = getelementptr inbounds nuw i8, ptr @switch.table._RNvMsE_NtNtNtCsjjpCCFGI3ul_14lance_encoding9encodings7logical9primitiveNtB5_33StructuralPrimitiveFieldScheduler24page_layout_to_scheduler.4820, i64 %i.pv
  %switch.load423.1 = load i8, ptr %switch.gep422.1, align 1
  %switch.ext424.1 = zext i8 %switch.load423.1 to i16
  %i.pw = add i16 %i.ps, %switch.ext424.1
  %i.px = getelementptr inbounds nuw i8, ptr %i.ay, i64 %.sroa.02.012.i.i.i.i
  %i.py = getelementptr inbounds nuw i8, ptr %i.px, i64 2
  %.val1.i.i.i.i.i.2 = load i8, ptr %i.py, align 1, !range !86, !alias.scope !500, !noalias !502, !noundef !75
  %i.pz = zext nneg i8 %.val1.i.i.i.i.i.2 to i64
  %switch.gep422.2 = getelementptr inbounds nuw i8, ptr @switch.table._RNvMsE_NtNtNtCsjjpCCFGI3ul_14lance_encoding9encodings7logical9primitiveNtB5_33StructuralPrimitiveFieldScheduler24page_layout_to_scheduler.4820, i64 %i.pz
  %switch.load423.2 = load i8, ptr %switch.gep422.2, align 1
  %switch.ext424.2 = zext i8 %switch.load423.2 to i16
  %i.qa = add i16 %i.pw, %switch.ext424.2
  %i.qb = add nuw nsw i64 %.sroa.02.012.i.i.i.i, 4 ; 2 uses
  %i.qc = getelementptr inbounds nuw i8, ptr %i.ay, i64 %.sroa.02.012.i.i.i.i
  %i.qd = getelementptr inbounds nuw i8, ptr %i.qc, i64 3
  %.val1.i.i.i.i.i.3 = load i8, ptr %i.qd, align 1, !range !86, !alias.scope !500, !noalias !502, !noundef !75
  %i.qe = zext nneg i8 %.val1.i.i.i.i.i.3 to i64
  %switch.gep422.3 = getelementptr inbounds nuw i8, ptr @switch.table._RNvMsE_NtNtNtCsjjpCCFGI3ul_14lance_encoding9encodings7logical9primitiveNtB5_33StructuralPrimitiveFieldScheduler24page_layout_to_scheduler.4820, i64 %i.qe
  %switch.load423.3 = load i8, ptr %switch.gep422.3, align 1
  %switch.ext424.3 = zext i8 %switch.load423.3 to i16
  %i.qf = add i16 %i.qa, %switch.ext424.3         ; 3 uses
  %niter436.next.3 = add i64 %niter436, 4         ; 2 uses
  %niter436.ncmp.3 = icmp eq i64 %niter436.next.3, %unroll_iter435
  br i1 %niter436.ncmp.3, label %_RNvMs0_NtCsjjpCCFGI3ul_14lance_encoding6repdefNtB5_17SerializedRepDefs17max_visible_level.exit.i.i.loopexit.unr-lcssa, label %.lr.ph.i4.i.i.i

_RNvMs0_NtCsjjpCCFGI3ul_14lance_encoding6repdefNtB5_17SerializedRepDefs17max_visible_level.exit.i.i.loopexit.unr-lcssa: ; preds = %.lr.ph.i4.i.i.i
  %lcmp.mod432.not = icmp eq i64 %xtraiter431, 0
  br i1 %lcmp.mod432.not, label %_RNvMs0_NtCsjjpCCFGI3ul_14lance_encoding6repdefNtB5_17SerializedRepDefs17max_visible_level.exit.i.i, label %.lr.ph.i4.i.i.i.epil.preheader

.lr.ph.i4.i.i.i.epil.preheader:                   ; preds = %_RNvMs0_NtCsjjpCCFGI3ul_14lance_encoding6repdefNtB5_17SerializedRepDefs17max_visible_level.exit.i.i.loopexit.unr-lcssa, %.lr.ph.i4.i.i.i.preheader
  %.sroa.0.013.i.i.i.i.epil.init = phi i16 [ 0, %.lr.ph.i4.i.i.i.preheader ], [ %i.qf, %_RNvMs0_NtCsjjpCCFGI3ul_14lance_encoding6repdefNtB5_17SerializedRepDefs17max_visible_level.exit.i.i.loopexit.unr-lcssa ]
  %.sroa.02.012.i.i.i.i.epil.init = phi i64 [ 0, %.lr.ph.i4.i.i.i.preheader ], [ %i.qb, %_RNvMs0_NtCsjjpCCFGI3ul_14lance_encoding6repdefNtB5_17SerializedRepDefs17max_visible_level.exit.i.i.loopexit.unr-lcssa ]
  %lcmp.mod434 = icmp ne i64 %xtraiter431, 0
  tail call void @llvm.assume(i1 %lcmp.mod434)
  br label %.lr.ph.i4.i.i.i.epil

.lr.ph.i4.i.i.i.epil:                             ; preds = %.lr.ph.i4.i.i.i.epil, %.lr.ph.i4.i.i.i.epil.preheader
  %.sroa.0.013.i.i.i.i.epil = phi i16 [ %i.qj, %.lr.ph.i4.i.i.i.epil ], [ %.sroa.0.013.i.i.i.i.epil.init, %.lr.ph.i4.i.i.i.epil.preheader ]
  %.sroa.02.012.i.i.i.i.epil = phi i64 [ %i.qg, %.lr.ph.i4.i.i.i.epil ], [ %.sroa.02.012.i.i.i.i.epil.init, %.lr.ph.i4.i.i.i.epil.preheader ] ; 2 uses
  %epil.iter = phi i64 [ %epil.iter.next, %.lr.ph.i4.i.i.i.epil ], [ 0, %.lr.ph.i4.i.i.i.epil.preheader ]
  %i.qg = add nuw nsw i64 %.sroa.02.012.i.i.i.i.epil, 1
  %i.qh = getelementptr inbounds nuw i8, ptr %i.ay, i64 %.sroa.02.012.i.i.i.i.epil
  %.val1.i.i.i.i.i.epil = load i8, ptr %i.qh, align 1, !range !86, !alias.scope !500, !noalias !502, !noundef !75
  %i.qi = zext nneg i8 %.val1.i.i.i.i.i.epil to i64
  %switch.gep422.epil = getelementptr inbounds nuw i8, ptr @switch.table._RNvMsE_NtNtNtCsjjpCCFGI3ul_14lance_encoding9encodings7logical9primitiveNtB5_33StructuralPrimitiveFieldScheduler24page_layout_to_scheduler.4820, i64 %i.qi
  %switch.load423.epil = load i8, ptr %switch.gep422.epil, align 1
  %switch.ext424.epil = zext i8 %switch.load423.epil to i16
  %i.qj = add i16 %.sroa.0.013.i.i.i.i.epil, %switch.ext424.epil ; 2 uses
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter431
  br i1 %epil.iter.cmp.not, label %_RNvMs0_NtCsjjpCCFGI3ul_14lance_encoding6repdefNtB5_17SerializedRepDefs17max_visible_level.exit.i.i, label %.lr.ph.i4.i.i.i.epil, !llvm.loop !475

_RNvMs0_NtCsjjpCCFGI3ul_14lance_encoding6repdefNtB5_17SerializedRepDefs17max_visible_level.exit.i.i: ; preds = %_RNvMs0_NtCsjjpCCFGI3ul_14lance_encoding6repdefNtB5_17SerializedRepDefs17max_visible_level.exit.i.i.loopexit.unr-lcssa, %.lr.ph.i4.i.i.i.epil, %bb.u
  %.sroa.3.0.i.i.i = phi i16 [ 0, %bb.u ], [ %i.qf, %_RNvMs0_NtCsjjpCCFGI3ul_14lance_encoding6repdefNtB5_17SerializedRepDefs17max_visible_level.exit.i.i.loopexit.unr-lcssa ], [ %i.qj, %.lr.ph.i4.i.i.i.epil ] ; 2 uses
  %i.qk = trunc nuw i8 %.sroa.44440.0.copyload to i1
  %i.ql = icmp eq i16 %i.pj, 0
  %or.cond.not.i.i = or i1 %i.ql, %i.qk
  br i1 %or.cond.not.i.i, label %iter.check188, label %.peel.begin.i

iter.check188:                                    ; preds = %_RNCNvMs0_NtCsjjpCCFGI3ul_14lance_encoding6repdefNtB7_17SerializedRepDefs17max_visible_level0B9_.exit.i.i.i.i, %_RNvMs0_NtCsjjpCCFGI3ul_14lance_encoding6repdefNtB5_17SerializedRepDefs17max_visible_level.exit.i.i, %bb.t
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.29.0.copyload) ]
  %.idx.i174.i.i = shl nuw nsw i64 %.sroa.37.0.copyload, 1 ; 2 uses
  %i.qm = getelementptr inbounds nuw i8, ptr %.sroa.29.0.copyload, i64 %.idx.i174.i.i
  %i.qn = add nsw i64 %.idx.i174.i.i, -2          ; 3 uses
  %i.qo = lshr exact i64 %i.qn, 1
  %i.qp = add nuw i64 %i.qo, 1                    ; 5 uses
  %min.iters.check127 = icmp ult i64 %i.qn, 14
  br i1 %min.iters.check127, label %.lr.ph.i175.i.i.preheader, label %vector.main.loop.iter.check128

vector.main.loop.iter.check128:                   ; preds = %iter.check188
  %min.iters.check129 = icmp ult i64 %i.qn, 30
  br i1 %min.iters.check129, label %vec.epilog.ph192, label %vector.ph130

vector.ph130:                                     ; preds = %vector.main.loop.iter.check128
  %i.qq = and i64 %i.qp, 8
  %n.vec131 = and i64 %i.qp, -16                  ; 4 uses
  %i.qr = shl i64 %n.vec131, 1
  %i.qs = getelementptr i8, ptr %.sroa.29.0.copyload, i64 %i.qr
  br label %vector.body132

vector.body132:                                   ; preds = %vector.ph130, %pred.store.continue183
  %index133 = phi i64 [ 0, %vector.ph130 ], [ %index.next184, %pred.store.continue183 ] ; 2 uses
  %i.qt = shl i64 %index133, 1                    ; 16 uses
  %next.gep134 = getelementptr i8, ptr %.sroa.29.0.copyload, i64 %i.qt ; 3 uses
  %i.qu = getelementptr i8, ptr %.sroa.29.0.copyload, i64 %i.qt
  %next.gep135 = getelementptr i8, ptr %i.qu, i64 2
  %i.qv = getelementptr i8, ptr %.sroa.29.0.copyload, i64 %i.qt
  %next.gep136 = getelementptr i8, ptr %i.qv, i64 4
  %i.qw = getelementptr i8, ptr %.sroa.29.0.copyload, i64 %i.qt
  %next.gep137 = getelementptr i8, ptr %i.qw, i64 6
  %i.qx = getelementptr i8, ptr %.sroa.29.0.copyload, i64 %i.qt
  %next.gep138 = getelementptr i8, ptr %i.qx, i64 8
  %i.qy = getelementptr i8, ptr %.sroa.29.0.copyload, i64 %i.qt
  %next.gep139 = getelementptr i8, ptr %i.qy, i64 10
  %i.qz = getelementptr i8, ptr %.sroa.29.0.copyload, i64 %i.qt
  %next.gep140 = getelementptr i8, ptr %i.qz, i64 12
  %i.ra = getelementptr i8, ptr %.sroa.29.0.copyload, i64 %i.qt
  %next.gep141 = getelementptr i8, ptr %i.ra, i64 14
  %i.rb = getelementptr i8, ptr %.sroa.29.0.copyload, i64 %i.qt
  %next.gep142 = getelementptr i8, ptr %i.rb, i64 16
  %i.rc = getelementptr i8, ptr %.sroa.29.0.copyload, i64 %i.qt
  %next.gep143 = getelementptr i8, ptr %i.rc, i64 18
  %i.rd = getelementptr i8, ptr %.sroa.29.0.copyload, i64 %i.qt
  %next.gep144 = getelementptr i8, ptr %i.rd, i64 20
  %i.re = getelementptr i8, ptr %.sroa.29.0.copyload, i64 %i.qt
  %next.gep145 = getelementptr i8, ptr %i.re, i64 22
  %i.rf = getelementptr i8, ptr %.sroa.29.0.copyload, i64 %i.qt
  %next.gep146 = getelementptr i8, ptr %i.rf, i64 24
  %i.rg = getelementptr i8, ptr %.sroa.29.0.copyload, i64 %i.qt
  %next.gep147 = getelementptr i8, ptr %i.rg, i64 26
  %i.rh = getelementptr i8, ptr %.sroa.29.0.copyload, i64 %i.qt
  %next.gep148 = getelementptr i8, ptr %i.rh, i64 28
  %i.ri = getelementptr i8, ptr %.sroa.29.0.copyload, i64 %i.qt
  %next.gep149 = getelementptr i8, ptr %i.ri, i64 30
  %i.rj = getelementptr i8, ptr %next.gep134, i64 16
  %wide.load150 = load <8 x i16>, ptr %next.gep134, align 2, !noalias !497 ; 9 uses
  %wide.load151 = load <8 x i16>, ptr %i.rj, align 2, !noalias !497 ; 9 uses
  %i.rk = icmp slt <8 x i16> %wide.load150, zeroinitializer ; 8 uses
  %i.rl = icmp slt <8 x i16> %wide.load151, zeroinitializer ; 8 uses
  %i.rm = extractelement <8 x i1> %i.rk, i64 0
  br i1 %i.rm, label %pred.store.if152, label %pred.store.continue153

pred.store.if152:                                 ; preds = %vector.body132
  %i.rn = extractelement <8 x i16> %wide.load150, i64 0
  %i.ro = add i16 %i.rn, -32767
  store i16 %i.ro, ptr %next.gep134, align 2, !noalias !497
  br label %pred.store.continue153

pred.store.continue153:                           ; preds = %pred.store.if152, %vector.body132
  %i.rp = extractelement <8 x i1> %i.rk, i64 1
  br i1 %i.rp, label %pred.store.if154, label %pred.store.continue155

pred.store.if154:                                 ; preds = %pred.store.continue153
  %i.rq = extractelement <8 x i16> %wide.load150, i64 1
  %i.rr = add i16 %i.rq, -32767
  store i16 %i.rr, ptr %next.gep135, align 2, !noalias !497
  br label %pred.store.continue155

pred.store.continue155:                           ; preds = %pred.store.if154, %pred.store.continue153
  %i.rs = extractelement <8 x i1> %i.rk, i64 2
  br i1 %i.rs, label %pred.store.if156, label %pred.store.continue157

pred.store.if156:                                 ; preds = %pred.store.continue155
  %i.rt = extractelement <8 x i16> %wide.load150, i64 2
  %i.ru = add i16 %i.rt, -32767
  store i16 %i.ru, ptr %next.gep136, align 2, !noalias !497
  br label %pred.store.continue157

pred.store.continue157:                           ; preds = %pred.store.if156, %pred.store.continue155
  %i.rv = extractelement <8 x i1> %i.rk, i64 3
  br i1 %i.rv, label %pred.store.if158, label %pred.store.continue159

pred.store.if158:                                 ; preds = %pred.store.continue157
  %i.rw = extractelement <8 x i16> %wide.load150, i64 3
  %i.rx = add i16 %i.rw, -32767
  store i16 %i.rx, ptr %next.gep137, align 2, !noalias !497
  br label %pred.store.continue159

pred.store.continue159:                           ; preds = %pred.store.if158, %pred.store.continue157
  %i.ry = extractelement <8 x i1> %i.rk, i64 4
  br i1 %i.ry, label %pred.store.if160, label %pred.store.continue161

pred.store.if160:                                 ; preds = %pred.store.continue159
  %i.rz = extractelement <8 x i16> %wide.load150, i64 4
  %i.sa = add i16 %i.rz, -32767
  store i16 %i.sa, ptr %next.gep138, align 2, !noalias !497
  br label %pred.store.continue161

pred.store.continue161:                           ; preds = %pred.store.if160, %pred.store.continue159
  %i.sb = extractelement <8 x i1> %i.rk, i64 5
  br i1 %i.sb, label %pred.store.if162, label %pred.store.continue163

pred.store.if162:                                 ; preds = %pred.store.continue161
  %i.sc = extractelement <8 x i16> %wide.load150, i64 5
  %i.sd = add i16 %i.sc, -32767
  store i16 %i.sd, ptr %next.gep139, align 2, !noalias !497
  br label %pred.store.continue163

pred.store.continue163:                           ; preds = %pred.store.if162, %pred.store.continue161
  %i.se = extractelement <8 x i1> %i.rk, i64 6
  br i1 %i.se, label %pred.store.if164, label %pred.store.continue165

pred.store.if164:                                 ; preds = %pred.store.continue163
  %i.sf = extractelement <8 x i16> %wide.load150, i64 6
  %i.sg = add i16 %i.sf, -32767
  store i16 %i.sg, ptr %next.gep140, align 2, !noalias !497
  br label %pred.store.continue165

pred.store.continue165:                           ; preds = %pred.store.if164, %pred.store.continue163
  %i.sh = extractelement <8 x i1> %i.rk, i64 7
  br i1 %i.sh, label %pred.store.if166, label %pred.store.continue167

pred.store.if166:                                 ; preds = %pred.store.continue165
  %i.si = extractelement <8 x i16> %wide.load150, i64 7
  %i.sj = add i16 %i.si, -32767
  store i16 %i.sj, ptr %next.gep141, align 2, !noalias !497
  br label %pred.store.continue167

pred.store.continue167:                           ; preds = %pred.store.if166, %pred.store.continue165
  %i.sk = extractelement <8 x i1> %i.rl, i64 0
  br i1 %i.sk, label %pred.store.if168, label %pred.store.continue169

pred.store.if168:                                 ; preds = %pred.store.continue167
  %i.sl = extractelement <8 x i16> %wide.load151, i64 0
  %i.sm = add i16 %i.sl, -32767
  store i16 %i.sm, ptr %next.gep142, align 2, !noalias !497
  br label %pred.store.continue169

pred.store.continue169:                           ; preds = %pred.store.if168, %pred.store.continue167
  %i.sn = extractelement <8 x i1> %i.rl, i64 1
  br i1 %i.sn, label %pred.store.if170, label %pred.store.continue171

pred.store.if170:                                 ; preds = %pred.store.continue169
  %i.so = extractelement <8 x i16> %wide.load151, i64 1
  %i.sp = add i16 %i.so, -32767
  store i16 %i.sp, ptr %next.gep143, align 2, !noalias !497
  br label %pred.store.continue171

pred.store.continue171:                           ; preds = %pred.store.if170, %pred.store.continue169
  %i.sq = extractelement <8 x i1> %i.rl, i64 2
  br i1 %i.sq, label %pred.store.if172, label %pred.store.continue173

pred.store.if172:                                 ; preds = %pred.store.continue171
  %i.sr = extractelement <8 x i16> %wide.load151, i64 2
  %i.ss = add i16 %i.sr, -32767
  store i16 %i.ss, ptr %next.gep144, align 2, !noalias !497
  br label %pred.store.continue173

pred.store.continue173:                           ; preds = %pred.store.if172, %pred.store.continue171
  %i.st = extractelement <8 x i1> %i.rl, i64 3
  br i1 %i.st, label %pred.store.if174, label %pred.store.continue175

pred.store.if174:                                 ; preds = %pred.store.continue173
  %i.su = extractelement <8 x i16> %wide.load151, i64 3
  %i.sv = add i16 %i.su, -32767
  store i16 %i.sv, ptr %next.gep145, align 2, !noalias !497
  br label %pred.store.continue175

pred.store.continue175:                           ; preds = %pred.store.if174, %pred.store.continue173
  %i.sw = extractelement <8 x i1> %i.rl, i64 4
  br i1 %i.sw, label %pred.store.if176, label %pred.store.continue177

pred.store.if176:                                 ; preds = %pred.store.continue175
  %i.sx = extractelement <8 x i16> %wide.load151, i64 4
  %i.sy = add i16 %i.sx, -32767
  store i16 %i.sy, ptr %next.gep146, align 2, !noalias !497
  br label %pred.store.continue177

pred.store.continue177:                           ; preds = %pred.store.if176, %pred.store.continue175
  %i.sz = extractelement <8 x i1> %i.rl, i64 5
  br i1 %i.sz, label %pred.store.if178, label %pred.store.continue179

pred.store.if178:                                 ; preds = %pred.store.continue177
  %i.ta = extractelement <8 x i16> %wide.load151, i64 5
  %i.tb = add i16 %i.ta, -32767
  store i16 %i.tb, ptr %next.gep147, align 2, !noalias !497
  br label %pred.store.continue179

pred.store.continue179:                           ; preds = %pred.store.if178, %pred.store.continue177
  %i.tc = extractelement <8 x i1> %i.rl, i64 6
  br i1 %i.tc, label %pred.store.if180, label %pred.store.continue181

pred.store.if180:                                 ; preds = %pred.store.continue179
  %i.td = extractelement <8 x i16> %wide.load151, i64 6
  %i.te = add i16 %i.td, -32767
  store i16 %i.te, ptr %next.gep148, align 2, !noalias !497
  br label %pred.store.continue181

pred.store.continue181:                           ; preds = %pred.store.if180, %pred.store.continue179
  %i.tf = extractelement <8 x i1> %i.rl, i64 7
  br i1 %i.tf, label %pred.store.if182, label %pred.store.continue183

pred.store.if182:                                 ; preds = %pred.store.continue181
  %i.tg = extractelement <8 x i16> %wide.load151, i64 7
  %i.th = add i16 %i.tg, -32767
  store i16 %i.th, ptr %next.gep149, align 2, !noalias !497
  br label %pred.store.continue183

pred.store.continue183:                           ; preds = %pred.store.if182, %pred.store.continue181
  %index.next184 = add nuw i64 %index133, 16      ; 2 uses
  %i.ti = icmp eq i64 %index.next184, %n.vec131
end_hunk_2
begin_hunk_3_@_RINvMNtNtCsgczF5crJ4sT_3std4sync9once_lockINtB3_8OnceLockbE10initializeNCINvB2_11get_or_initNCNvNtNtNtCsjjpCCFGI3ul_14lance_encoding14array_encoding7logical4list31bypass_indirect_io_backpressure0E0zEB1C_:bb.a
  br i1 %i.e, label %_RINvMs0_NtNtCsgczF5crJ4sT_3std4sync4onceNtB6_4Once15call_once_forceNCINvMNtB8_9once_lockINtB19_8OnceLockbE10initializeNCINvB18_11get_or_initNCNvNtNtNtCsjjpCCFGI3ul_14lance_encoding14array_encoding7logical4list31bypass_indirect_io_backpressure0E0zE0EB2o_.exit, label %bb.b, !prof !78

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !820
  store ptr getelementptr inbounds nuw (i8, ptr @_RNvNtNtNtCsjjpCCFGI3ul_14lance_encoding14array_encoding7logical4list31BYPASS_INDIRECT_IO_BACKPRESSURE, i64 4), ptr %i.c, align 8, !noalias !820
  %i.f = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store ptr %i.a, ptr %i.f, align 8, !noalias !820
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !820
  store ptr %i.c, ptr %i.b, align 8, !noalias !820
  call void @_RNvMs0_NtNtNtNtCsgczF5crJ4sT_3std3sys4sync4once5futexNtB5_4Once4call(ptr noundef nonnull align 4 @_RNvNtNtNtCsjjpCCFGI3ul_14lance_encoding14array_encoding7logical4list31BYPASS_INDIRECT_IO_BACKPRESSURE, i1 noundef zeroext true, ptr noundef nonnull %i.b, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(40) @69, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @67)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !820
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !820
  br label %_RINvMs0_NtNtCsgczF5crJ4sT_3std4sync4onceNtB6_4Once15call_once_forceNCINvMNtB8_9once_lockINtB19_8OnceLockbE10initializeNCINvB18_11get_or_initNCNvNtNtNtCsjjpCCFGI3ul_14lance_encoding14array_encoding7logical4list31bypass_indirect_io_backpressure0E0zE0EB2o_.exit

_RINvMs0_NtNtCsgczF5crJ4sT_3std4sync4onceNtB6_4Once15call_once_forceNCINvMNtB8_9once_lockINtB19_8OnceLockbE10initializeNCINvB18_11get_or_initNCNvNtNtNtCsjjpCCFGI3ul_14lance_encoding14array_encoding7logical4list31bypass_indirect_io_backpressure0E0zE0EB2o_.exit: ; preds = %bb.a, %bb.b
  ret void
}

; Function Attrs: cold minsize nonlazybind optsize uwtable
define internal fastcc void @_RINvMNtNtCsgczF5crJ4sT_3std4sync9once_lockINtB3_8OnceLockyE10initializeNCINvB2_11get_or_initNCNvNtCsjjpCCFGI3ul_14lance_encoding7decoder27inline_scheduling_threshold0E0zEB1y_() unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [0 x i8], align 1
  %i.b = alloca [8 x i8], align 8                 ; 4 uses
  %i.c = alloca [16 x i8], align 8                ; 5 uses
  %i.d = load atomic i32, ptr getelementptr inbounds nuw (i8, ptr @_RNvNvNtCsjjpCCFGI3ul_14lance_encoding7decoder27inline_scheduling_threshold9THRESHOLD, i64 8) acquire, align 8, !noalias !823
  %i.e = icmp eq i32 %i.d, 0
  br i1 %i.e, label %_RINvMs0_NtNtCsgczF5crJ4sT_3std4sync4onceNtB6_4Once15call_once_forceNCINvMNtB8_9once_lockINtB19_8OnceLockyE10initializeNCINvB18_11get_or_initNCNvNtCsjjpCCFGI3ul_14lance_encoding7decoder27inline_scheduling_threshold0E0zE0EB2k_.exit, label %bb.b, !prof !78

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !823
  store ptr @_RNvNvNtCsjjpCCFGI3ul_14lance_encoding7decoder27inline_scheduling_threshold9THRESHOLD, ptr %i.c, align 8, !noalias !823
  %i.f = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store ptr %i.a, ptr %i.f, align 8, !noalias !823
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !823
  store ptr %i.c, ptr %i.b, align 8, !noalias !823
  call void @_RNvMs0_NtNtNtNtCsgczF5crJ4sT_3std3sys4sync4once5futexNtB5_4Once4call(ptr noundef nonnull align 4 getelementptr inbounds nuw (i8, ptr @_RNvNvNtCsjjpCCFGI3ul_14lance_encoding7decoder27inline_scheduling_threshold9THRESHOLD, i64 8), i1 noundef zeroext true, ptr noundef nonnull %i.b, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(40) @70, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @67)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !823
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !823
  br label %_RINvMs0_NtNtCsgczF5crJ4sT_3std4sync4onceNtB6_4Once15call_once_forceNCINvMNtB8_9once_lockINtB19_8OnceLockyE10initializeNCINvB18_11get_or_initNCNvNtCsjjpCCFGI3ul_14lance_encoding7decoder27inline_scheduling_threshold0E0zE0EB2k_.exit

_RINvMs0_NtNtCsgczF5crJ4sT_3std4sync4onceNtB6_4Once15call_once_forceNCINvMNtB8_9once_lockINtB19_8OnceLockyE10initializeNCINvB18_11get_or_initNCNvNtCsjjpCCFGI3ul_14lance_encoding7decoder27inline_scheduling_threshold0E0zE0EB2k_.exit: ; preds = %bb.a, %bb.b
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvMNtNtNtCsjjpCCFGI3ul_14lance_encoding9encodings7logical9primitiveNtB3_19DecodeMiniBlockTask13extend_levelsINtNtNtCs4YAKbnGhBJc_12arrow_buffer6buffer6scalar12ScalarBuffertEEB9_(i64 noundef %0, i64 noundef %1, ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(24) %2, ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(24) %3, i64 noundef %4) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 8 uses
  %i.b = load ptr, ptr %3, align 8, !noundef !75
  %.not = icmp eq ptr %i.b, null
  %i.c = load i64, ptr %2, align 8, !range !99, !noundef !75 ; 3 uses
  %.not14 = icmp eq i64 %i.c, -1                  ; 2 uses
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  br i1 %.not14, label %bb.e, label %.thread

bb.c:                                             ; preds = %bb.a
  br i1 %.not14, label %.split, label %bb.p

bb.d:                                             ; preds = %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VectE7reserveCsjjpCCFGI3ul_14lance_encoding.exit.i, %.lr.ph.i.i.i
  %.val5.i.i.i = phi i64 [ %i.v, %.lr.ph.i.i.i ], [ 0, %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VectE7reserveCsjjpCCFGI3ul_14lance_encoding.exit.i ]
  store i64 %.val5.i.i.i, ptr %i.o, align 8, !alias.scope !868, !noalias !869
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull align 8 dereferenceable(24) %i.a, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %.pr = load i64, ptr %2, align 8                ; 2 uses
  %.not19 = icmp eq i64 %.pr, -1
  br i1 %.not19, label %bb.j, label %.thread, !prof !870

bb.e:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.d = sub i64 %1, %0
  %i.e = add i64 %4, %i.d                         ; 4 uses
  %i.f = shl i64 %i.e, 1                          ; 4 uses
  %i.g = icmp slt i64 %i.e, 0
  %.not.i = icmp ugt i64 %i.f, 9223372036854775806
  %or.cond.i = or i1 %i.g, %.not.i
  br i1 %or.cond.i, label %bb.i, label %bb.f, !prof !80

bb.f:                                             ; preds = %bb.e
  %i.h = icmp eq i64 %i.f, 0
  br i1 %i.h, label %_RNvMs4_NtCs40k4W9msRzi_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsjjpCCFGI3ul_14lance_encoding.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  tail call void @_RNvCs9hJ03s5DiqP_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #63, !noalias !871
  %i.i = tail call noundef align 2 ptr @_RNvCs9hJ03s5DiqP_7___rustc12___rust_alloc(i64 noundef %i.f, i64 noundef range(i64 1, -9223372036854775807) 2) #63, !noalias !871 ; 2 uses
  %i.j = icmp eq ptr %i.i, null
  br i1 %i.j, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.k = ptrtoint ptr %i.i to i64
  br label %_RNvMs4_NtCs40k4W9msRzi_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsjjpCCFGI3ul_14lance_encoding.exit

bb.i:                                             ; preds = %bb.e, %bb.g
  %.sroa.4.0.ph = phi i64 [ 2, %bb.g ], [ 0, %bb.e ]
  tail call void @_RNvNtCs40k4W9msRzi_5alloc7raw_vec12handle_error(i64 noundef %.sroa.4.0.ph, i64 %i.f) #66
  unreachable

_RNvMs4_NtCs40k4W9msRzi_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsjjpCCFGI3ul_14lance_encoding.exit: ; preds = %bb.h, %bb.f
  %.sroa.10.0 = phi i64 [ %i.k, %bb.h ], [ 2, %bb.f ]
  %.sroa.4.0 = phi i64 [ %i.e, %bb.h ], [ 0, %bb.f ] ; 3 uses
  %i.l = inttoptr i64 %.sroa.10.0 to ptr          ; 2 uses
  %i.m = icmp samesign ule i64 %i.e, %.sroa.4.0
  tail call void @llvm.assume(i1 %i.m)
  store i64 %.sroa.4.0, ptr %i.a, align 8
  %i.n = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 3 uses
  store ptr %i.l, ptr %i.n, align 8
  %i.o = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 3 uses
  store i64 0, ptr %i.o, align 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !868)
  %i.p = icmp ugt i64 %4, %.sroa.4.0
  br i1 %i.p, label %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VectE7reserveCsjjpCCFGI3ul_14lance_encoding.exit.thread.i, label %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VectE7reserveCsjjpCCFGI3ul_14lance_encoding.exit.i, !prof !81

_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VectE7reserveCsjjpCCFGI3ul_14lance_encoding.exit.thread.i: ; preds = %_RNvMs4_NtCs40k4W9msRzi_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsjjpCCFGI3ul_14lance_encoding.exit
  invoke fastcc void @_RINvNvMs2_NtCs40k4W9msRzi_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECsjjpCCFGI3ul_14lance_encoding(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.a, i64 noundef 0, i64 noundef %4, i64 noundef 2, i64 noundef 2)
          to label %.noexc unwind label %bb.n

.noexc:                                           ; preds = %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VectE7reserveCsjjpCCFGI3ul_14lance_encoding.exit.thread.i
  %i.q = load i64, ptr %i.o, align 8, !alias.scope !868, !noundef !75
  %.pre = load ptr, ptr %i.n, align 8, !alias.scope !868
  br label %.lr.ph.i.i.i

_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VectE7reserveCsjjpCCFGI3ul_14lance_encoding.exit.i: ; preds = %_RNvMs4_NtCs40k4W9msRzi_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsjjpCCFGI3ul_14lance_encoding.exit
  %.not17 = icmp eq i64 %4, 0
  br i1 %.not17, label %bb.d, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VectE7reserveCsjjpCCFGI3ul_14lance_encoding.exit.i, %.noexc
  %i.r = phi ptr [ %.pre, %.noexc ], [ %i.l, %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VectE7reserveCsjjpCCFGI3ul_14lance_encoding.exit.i ]
  %i.s = phi i64 [ %i.q, %.noexc ], [ 0, %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VectE7reserveCsjjpCCFGI3ul_14lance_encoding.exit.i ] ; 2 uses
  %i.t = shl i64 %i.s, 1
  %scevgep.i.i.i = getelementptr nuw i8, ptr %i.r, i64 %i.t
  %i.u = shl nuw i64 %4, 1
  tail call void @llvm.memset.p0.i64(ptr nonnull align 2 %scevgep.i.i.i, i8 0, i64 %i.u, i1 false), !noalias !872
  %i.v = add i64 %i.s, %4
  br label %bb.d

.thread:                                          ; preds = %bb.b, %bb.d
  %i.w = phi i64 [ %.pr, %bb.d ], [ %i.c, %bb.b ]
  %i.x = getelementptr inbounds nuw i8, ptr %3, i64 16
  %.val25 = load i64, ptr %i.x, align 8, !noundef !75
  %i.y = lshr i64 %.val25, 1                      ; 2 uses
  %i.z = icmp ult i64 %1, %0
  %.not20 = icmp ugt i64 %1, %i.y
  %or.cond = or i1 %i.z, %.not20
  br i1 %or.cond, label %bb.m, label %bb.k, !prof !100

bb.j:                                             ; preds = %bb.d
  tail call void @_RNvNtCscI6d9CVNmLh_4core6option13unwrap_failed(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @28) #66
  unreachable

bb.k:                                             ; preds = %.thread
  %i.aa = getelementptr inbounds nuw i8, ptr %3, i64 8
  %.val24 = load ptr, ptr %i.aa, align 8, !nonnull !75, !noundef !75 ; 2 uses
  %.val2462 = ptrtoaddr ptr %.val24 to i64
  %.idx52 = shl i64 %0, 1                         ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %.val24, i64 %.idx52 ; 7 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !873)
  %i.ac = sub nuw nsw i64 %1, %0                  ; 10 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 3 uses
  %i.ae = load i64, ptr %i.ad, align 8, !alias.scope !874, !noundef !75 ; 3 uses
  %i.af = sub i64 %i.w, %i.ae
  %i.ag = icmp ugt i64 %i.ac, %i.af
  br i1 %i.ag, label %bb.l, label %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VectE7reserveCsjjpCCFGI3ul_14lance_encoding.exit.i26, !prof !81

bb.l:                                             ; preds = %bb.k
  tail call fastcc void @_RINvNvMs2_NtCs40k4W9msRzi_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECsjjpCCFGI3ul_14lance_encoding(ptr noalias noundef nonnull align 8 dereferenceable(24) %2, i64 noundef %i.ae, i64 noundef %i.ac, i64 noundef 2, i64 noundef 2)
  %.pre.i = load i64, ptr %i.ad, align 8, !alias.scope !873
  br label %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VectE7reserveCsjjpCCFGI3ul_14lance_encoding.exit.i26

_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VectE7reserveCsjjpCCFGI3ul_14lance_encoding.exit.i26: ; preds = %bb.l, %bb.k
  %i.ah = phi i64 [ %i.ae, %bb.k ], [ %.pre.i, %bb.l ] ; 8 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.aj = load ptr, ptr %i.ai, align 8, !alias.scope !873, !nonnull !75, !noundef !75 ; 8 uses
  %i.ak = ptrtoaddr ptr %i.aj to i64
  %i.al = icmp eq i64 %0, %1
  br i1 %i.al, label %_RINvMsj_NtCs40k4W9msRzi_5alloc3vecINtB6_3VectE14extend_trustedINtNtNtNtCscI6d9CVNmLh_4core4iter8adapters6copied6CopiedINtNtNtB17_5slice4iter4ItertEEECsjjpCCFGI3ul_14lance_encoding.exit, label %iter.check

iter.check:                                       ; preds = %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VectE7reserveCsjjpCCFGI3ul_14lance_encoding.exit.i26
  %min.iters.check = icmp ult i64 %i.ac, 4
  br i1 %min.iters.check, label %.preheader.i.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %iter.check
  %i.am = shl i64 %i.ah, 1
  %i.an = add i64 %i.am, %i.ak
  %i.ao = add i64 %.idx52, %.val2462
  %i.ap = sub i64 %i.ao, %i.an
  %diff.check = icmp ugt i64 %i.ap, -32
  br i1 %diff.check, label %.preheader.i.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %vector.memcheck
  %min.iters.check63 = icmp ult i64 %i.ac, 16
  br i1 %min.iters.check63, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.aq = and i64 %i.ac, 12
  %n.vec = and i64 %i.ac, -16                     ; 5 uses
  %i.ar = add i64 %i.ah, %n.vec                   ; 2 uses
  %i.as = getelementptr [2 x i8], ptr %i.aj, i64 %i.ah
  br label %vector.body

vector.body:                                      ; preds = %vector.ph, %vector.body
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.at = getelementptr inbounds nuw [2 x i8], ptr %i.ab, i64 %index ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 16
  %wide.load = load <8 x i16>, ptr %i.at, align 2, !noalias !875
  %wide.load64 = load <8 x i16>, ptr %i.au, align 2, !noalias !875
  %i.av = getelementptr [2 x i8], ptr %i.as, i64 %index ; 2 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %i.av, i64 16
  store <8 x i16> %wide.load, ptr %i.av, align 2, !noalias !876
  store <8 x i16> %wide.load64, ptr %i.aw, align 2, !noalias !876
  %index.next = add nuw i64 %index, 16            ; 2 uses
  %i.ax = icmp eq i64 %index.next, %n.vec
  br i1 %i.ax, label %middle.block, label %vector.body, !llvm.loop !852

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.ac, %n.vec
  br i1 %cmp.n, label %_RINvMsj_NtCs40k4W9msRzi_5alloc3vecINtB6_3VectE14extend_trustedINtNtNtNtCscI6d9CVNmLh_4core4iter8adapters6copied6CopiedINtNtNtB17_5slice4iter4ItertEEECsjjpCCFGI3ul_14lance_encoding.exit, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.aq, 0
  br i1 %min.epilog.iters.check, label %.preheader.i.preheader, label %vec.epilog.ph, !prof !101

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec65 = and i64 %i.ac, -4                    ; 4 uses
  %i.ay = add i64 %i.ah, %n.vec65                 ; 2 uses
  %i.az = getelementptr [2 x i8], ptr %i.aj, i64 %i.ah
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index66 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next68, %vec.epilog.vector.body ] ; 3 uses
  %i.ba = getelementptr inbounds nuw [2 x i8], ptr %i.ab, i64 %index66
  %wide.load67 = load <4 x i16>, ptr %i.ba, align 2, !noalias !875
  %i.bb = getelementptr [2 x i8], ptr %i.az, i64 %index66
  store <4 x i16> %wide.load67, ptr %i.bb, align 2, !noalias !876
  %index.next68 = add nuw i64 %index66, 4         ; 2 uses
  %i.bc = icmp eq i64 %index.next68, %n.vec65
  br i1 %i.bc, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !853

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n69 = icmp eq i64 %i.ac, %n.vec65
  br i1 %cmp.n69, label %_RINvMsj_NtCs40k4W9msRzi_5alloc3vecINtB6_3VectE14extend_trustedINtNtNtNtCscI6d9CVNmLh_4core4iter8adapters6copied6CopiedINtNtNtB17_5slice4iter4ItertEEECsjjpCCFGI3ul_14lance_encoding.exit, label %.preheader.i.preheader

.preheader.i.preheader:                           ; preds = %iter.check, %vector.memcheck, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.ph = phi i64 [ %i.ah, %iter.check ], [ %i.ah, %vector.memcheck ], [ %i.ar, %vec.epilog.iter.check ], [ %i.ay, %vec.epilog.middle.block ] ; 2 uses
  %.sroa.01.0.i.i.i.i.ph = phi i64 [ 0, %iter.check ], [ 0, %vector.memcheck ], [ %n.vec, %vec.epilog.iter.check ], [ %n.vec65, %vec.epilog.middle.block ] ; 3 uses
  %i.bd = sub i64 %1, %0
  %xtraiter = and i64 %i.bd, 3                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.preheader.i.prol.loopexit, label %.preheader.i.prol

.preheader.i.prol:                                ; preds = %.preheader.i.preheader, %.preheader.i.prol
  %i.be = phi i64 [ %i.bh, %.preheader.i.prol ], [ %.ph, %.preheader.i.preheader ] ; 2 uses
  %.sroa.01.0.i.i.i.i.prol = phi i64 [ %i.bi, %.preheader.i.prol ], [ %.sroa.01.0.i.i.i.i.ph, %.preheader.i.preheader ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.preheader.i.prol ], [ 0, %.preheader.i.preheader ]
  %i.bf = getelementptr inbounds nuw [2 x i8], ptr %i.ab, i64 %.sroa.01.0.i.i.i.i.prol
  %.val16.i.i.i.i.prol = load i16, ptr %i.bf, align 2, !noalias !875, !noundef !75
  %i.bg = getelementptr inbounds nuw [2 x i8], ptr %i.aj, i64 %i.be
  store i16 %.val16.i.i.i.i.prol, ptr %i.bg, align 2, !noalias !876
  %i.bh = add i64 %i.be, 1                        ; 3 uses
  %i.bi = add nuw i64 %.sroa.01.0.i.i.i.i.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.preheader.i.prol.loopexit, label %.preheader.i.prol, !llvm.loop !854

.preheader.i.prol.loopexit:                       ; preds = %.preheader.i.prol, %.preheader.i.preheader
  %.lcssa.unr = phi i64 [ poison, %.preheader.i.preheader ], [ %i.bh, %.preheader.i.prol ]
  %.unr = phi i64 [ %.ph, %.preheader.i.preheader ], [ %i.bh, %.preheader.i.prol ]
  %.sroa.01.0.i.i.i.i.unr = phi i64 [ %.sroa.01.0.i.i.i.i.ph, %.preheader.i.preheader ], [ %i.bi, %.preheader.i.prol ]
  %i.bj = sub i64 %.sroa.01.0.i.i.i.i.ph, %1
  %i.bk = add i64 %i.bj, %0
  %i.bl = icmp ugt i64 %i.bk, -4
  br i1 %i.bl, label %_RINvMsj_NtCs40k4W9msRzi_5alloc3vecINtB6_3VectE14extend_trustedINtNtNtNtCscI6d9CVNmLh_4core4iter8adapters6copied6CopiedINtNtNtB17_5slice4iter4ItertEEECsjjpCCFGI3ul_14lance_encoding.exit, label %.preheader.i

.preheader.i:                                     ; preds = %.preheader.i.prol.loopexit, %.preheader.i
  %i.bm = phi i64 [ %i.cb, %.preheader.i ], [ %.unr, %.preheader.i.prol.loopexit ] ; 5 uses
  %.sroa.01.0.i.i.i.i = phi i64 [ %i.cc, %.preheader.i ], [ %.sroa.01.0.i.i.i.i.unr, %.preheader.i.prol.loopexit ] ; 5 uses
  %i.bn = getelementptr inbounds nuw [2 x i8], ptr %i.ab, i64 %.sroa.01.0.i.i.i.i
  %.val16.i.i.i.i = load i16, ptr %i.bn, align 2, !noalias !875, !noundef !75
  %i.bo = getelementptr inbounds nuw [2 x i8], ptr %i.aj, i64 %i.bm
  store i16 %.val16.i.i.i.i, ptr %i.bo, align 2, !noalias !876
  %i.bp = getelementptr inbounds nuw [2 x i8], ptr %i.ab, i64 %.sroa.01.0.i.i.i.i
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bp, i64 2
  %.val16.i.i.i.i.1 = load i16, ptr %i.bq, align 2, !noalias !875, !noundef !75
  %i.br = getelementptr [2 x i8], ptr %i.aj, i64 %i.bm
  %i.bs = getelementptr i8, ptr %i.br, i64 2
  store i16 %.val16.i.i.i.i.1, ptr %i.bs, align 2, !noalias !876
  %i.bt = getelementptr inbounds nuw [2 x i8], ptr %i.ab, i64 %.sroa.01.0.i.i.i.i
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bt, i64 4
  %.val16.i.i.i.i.2 = load i16, ptr %i.bu, align 2, !noalias !875, !noundef !75
  %i.bv = getelementptr [2 x i8], ptr %i.aj, i64 %i.bm
  %i.bw = getelementptr i8, ptr %i.bv, i64 4
  store i16 %.val16.i.i.i.i.2, ptr %i.bw, align 2, !noalias !876
  %i.bx = getelementptr inbounds nuw [2 x i8], ptr %i.ab, i64 %.sroa.01.0.i.i.i.i
  %i.by = getelementptr inbounds nuw i8, ptr %i.bx, i64 6
  %.val16.i.i.i.i.3 = load i16, ptr %i.by, align 2, !noalias !875, !noundef !75
  %i.bz = getelementptr [2 x i8], ptr %i.aj, i64 %i.bm
  %i.ca = getelementptr i8, ptr %i.bz, i64 6
  store i16 %.val16.i.i.i.i.3, ptr %i.ca, align 2, !noalias !876
  %i.cb = add i64 %i.bm, 4                        ; 2 uses
  %i.cc = add nuw i64 %.sroa.01.0.i.i.i.i, 4      ; 2 uses
  %i.cd = icmp eq i64 %i.cc, %i.ac
  br i1 %i.cd, label %_RINvMsj_NtCs40k4W9msRzi_5alloc3vecINtB6_3VectE14extend_trustedINtNtNtNtCscI6d9CVNmLh_4core4iter8adapters6copied6CopiedINtNtNtB17_5slice4iter4ItertEEECsjjpCCFGI3ul_14lance_encoding.exit, label %.preheader.i, !llvm.loop !855

_RINvMsj_NtCs40k4W9msRzi_5alloc3vecINtB6_3VectE14extend_trustedINtNtNtNtCscI6d9CVNmLh_4core4iter8adapters6copied6CopiedINtNtNtB17_5slice4iter4ItertEEECsjjpCCFGI3ul_14lance_encoding.exit: ; preds = %.preheader.i.prol.loopexit, %.preheader.i, %middle.block, %vec.epilog.middle.block, %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VectE7reserveCsjjpCCFGI3ul_14lance_encoding.exit.i26
  %storemerge.i.i.i = phi i64 [ %i.ah, %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VectE7reserveCsjjpCCFGI3ul_14lance_encoding.exit.i26 ], [ %i.ay, %vec.epilog.middle.block ], [ %i.ar, %middle.block ], [ %.lcssa.unr, %.preheader.i.prol.loopexit ], [ %i.cb, %.preheader.i ]
  store i64 %storemerge.i.i.i, ptr %i.ad, align 8, !alias.scope !873, !noalias !877
  br label %.split

bb.m:                                             ; preds = %.thread
  tail call void @_RNvNtNtCscI6d9CVNmLh_4core5slice5index16slice_index_fail(i64 noundef %0, i64 noundef %1, i64 noundef %i.y, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @29) #66
  unreachable

.split:                                           ; preds = %bb.p, %_RINvMsj_NtCs40k4W9msRzi_5alloc3vecINtB6_3VectE14extend_trustedINtNtNtNtCscI6d9CVNmLh_4core4iter7sources8repeat_n7RepeatNtEECsjjpCCFGI3ul_14lance_encoding.exit33, %_RINvMsj_NtCs40k4W9msRzi_5alloc3vecINtB6_3VectE14extend_trustedINtNtNtNtCscI6d9CVNmLh_4core4iter8adapters6copied6CopiedINtNtNtB17_5slice4iter4ItertEEECsjjpCCFGI3ul_14lance_encoding.exit, %bb.c
  ret void

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VectEECsjjpCCFGI3ul_14lance_encoding.exit: ; preds = %bb.o, %bb.n
  resume { ptr, i32 } %i.ce

bb.n:                                             ; preds = %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VectE7reserveCsjjpCCFGI3ul_14lance_encoding.exit.thread.i
  %i.ce = landingpad { ptr, i32 }
          cleanup
  %.val = load i64, ptr %i.a, align 8             ; 2 uses
  %i.cf = icmp eq i64 %.val, 0
  br i1 %i.cf, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VectEECsjjpCCFGI3ul_14lance_encoding.exit, label %bb.o

bb.o:                                             ; preds = %bb.n
  %.val21 = load ptr, ptr %i.n, align 8, !nonnull !75, !noundef !75
  %i.cg = shl nuw i64 %.val, 1
  tail call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.val21, i64 noundef %i.cg, i64 noundef range(i64 1, -9223372036854775807) 2) #63
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VectEECsjjpCCFGI3ul_14lance_encoding.exit

bb.p:                                             ; preds = %bb.c
  %i.ch = sub i64 %1, %0                          ; 4 uses
  %.not15 = icmp eq i64 %1, %0
  br i1 %.not15, label %.split, label %.split12

.split12:                                         ; preds = %bb.p
  tail call void @llvm.experimental.noalias.scope.decl(metadata !878)
  %i.ci = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 3 uses
  %i.cj = load i64, ptr %i.ci, align 8, !alias.scope !879, !noundef !75 ; 3 uses
  %i.ck = sub i64 %i.c, %i.cj
  %i.cl = icmp ugt i64 %i.ch, %i.ck
  br i1 %i.cl, label %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VectE7reserveCsjjpCCFGI3ul_14lance_encoding.exit.thread.i32, label %_RINvMsj_NtCs40k4W9msRzi_5alloc3vecINtB6_3VectE14extend_trustedINtNtNtNtCscI6d9CVNmLh_4core4iter7sources8repeat_n7RepeatNtEECsjjpCCFGI3ul_14lance_encoding.exit33, !prof !81

_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VectE7reserveCsjjpCCFGI3ul_14lance_encoding.exit.thread.i32: ; preds = %.split12
  tail call fastcc void @_RINvNvMs2_NtCs40k4W9msRzi_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECsjjpCCFGI3ul_14lance_encoding(ptr noalias noundef nonnull align 8 dereferenceable(24) %2, i64 noundef %i.cj, i64 noundef %i.ch, i64 noundef 2, i64 noundef 2)
  %i.cm = load i64, ptr %i.ci, align 8, !alias.scope !878, !noundef !75
  br label %_RINvMsj_NtCs40k4W9msRzi_5alloc3vecINtB6_3VectE14extend_trustedINtNtNtNtCscI6d9CVNmLh_4core4iter7sources8repeat_n7RepeatNtEECsjjpCCFGI3ul_14lance_encoding.exit33

_RINvMsj_NtCs40k4W9msRzi_5alloc3vecINtB6_3VectE14extend_trustedINtNtNtNtCscI6d9CVNmLh_4core4iter7sources8repeat_n7RepeatNtEECsjjpCCFGI3ul_14lance_encoding.exit33: ; preds = %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VectE7reserveCsjjpCCFGI3ul_14lance_encoding.exit.thread.i32, %.split12
  %i.cn = phi i64 [ %i.cm, %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VectE7reserveCsjjpCCFGI3ul_14lance_encoding.exit.thread.i32 ], [ %i.cj, %.split12 ] ; 2 uses
  %.in.i29 = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.co = load ptr, ptr %.in.i29, align 8, !alias.scope !878, !nonnull !75, !noundef !75
  %i.cp = shl i64 %i.cn, 1
  %scevgep.i.i.i30 = getelementptr nuw i8, ptr %i.co, i64 %i.cp
  %i.cq = shl nuw i64 %i.ch, 1
  tail call void @llvm.memset.p0.i64(ptr nonnull align 2 %scevgep.i.i.i30, i8 0, i64 %i.cq, i1 false), !noalias !880
  %i.cr = add i64 %i.cn, %i.ch
  store i64 %i.cr, ptr %i.ci, align 8, !alias.scope !878, !noalias !881
  br label %.split
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvMNtNtNtCsjjpCCFGI3ul_14lance_encoding9encodings8physical10bitpackingNtB3_16InlineBitpacking7unchunkhEB9_(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(80) %0, ptr noalias noundef nonnull align 8 captures(address) dead_on_return dereferenceable(24) %1, i64 noundef range(i64 1, 0) %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [56 x i8], align 8                ; 11 uses
  %i.b = alloca [24 x i8], align 8                ; 7 uses
  %i.c = alloca [48 x i8], align 8                ; 9 uses
  %i.d = alloca [24 x i8], align 8                ; 2 uses
  %i.e = alloca [56 x i8], align 8                ; 4 uses
  %i.f = alloca [8 x i8], align 8                 ; 5 uses
  %i.g = alloca [8 x i8], align 8                 ; 5 uses
  %i.h = alloca [32 x i8], align 8                ; 7 uses
  %i.i = alloca [24 x i8], align 8                ; 2 uses
  %i.j = alloca [56 x i8], align 8                ; 4 uses
  %i.k = alloca [8 x i8], align 8                 ; 6 uses
  %i.l = alloca [32 x i8], align 8                ; 7 uses
  %i.m = alloca [24 x i8], align 8                ; 2 uses
  %i.n = alloca [56 x i8], align 8                ; 4 uses
  %i.o = alloca [32 x i8], align 8                ; 7 uses
  %i.p = alloca [8 x i8], align 8                 ; 4 uses
  %i.q = alloca [24 x i8], align 8                ; 2 uses
  %i.r = alloca [56 x i8], align 8                ; 4 uses
  %i.s = alloca [8 x i8], align 8                 ; 5 uses
  %i.t = alloca [8 x i8], align 8                 ; 5 uses
  %i.u = alloca [8 x i8], align 8                 ; 2 uses
  store i64 %2, ptr %i.u, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.t)
  store i64 8, ptr %i.t, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.s)
  store i64 1, ptr %i.s, align 8
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.w = load i64, ptr %i.v, align 8, !noundef !75 ; 3 uses
  %i.x = icmp eq i64 %i.w, 0
  br i1 %i.x, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p)
  store i64 0, ptr %i.p, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o)
  store ptr %i.s, ptr %i.o, align 8
  %.sroa.440.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  store ptr @_RNvXsi_NtNtNtCscI6d9CVNmLh_4core3fmt3num3impjNtB9_7Display3fmt, ptr %.sroa.440.0..sroa_idx, align 8
  %i.y = getelementptr inbounds nuw i8, ptr %i.o, i64 16
  store ptr %i.p, ptr %i.y, align 8
  %.sroa.444.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.o, i64 24
  store ptr @_RNvXsi_NtNtNtCscI6d9CVNmLh_4core3fmt3num3impjNtB9_7Display3fmt, ptr %.sroa.444.0..sroa_idx, align 8
  invoke void @_RNvNvNtCs40k4W9msRzi_5alloc3fmt6format12format_inner(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.q, ptr noundef nonnull @63, ptr noundef nonnull %i.o)
          to label %_RINvMNtCscI6d9CVNmLh_4core6optionINtB3_6OptionReE11map_or_elseNtNtCs40k4W9msRzi_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECsjjpCCFGI3ul_14lance_encoding.exit unwind label %bb.e

bb.c:                                             ; preds = %bb.a
  %i.z = icmp ugt i64 %2, 1024
  br i1 %i.z, label %bb.j, label %bb.h

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc6borrow3CowShEECsjjpCCFGI3ul_14lance_encoding.exit: ; preds = %bb.y, %bb.x, %bb.u, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VechEECsjjpCCFGI3ul_14lance_encoding.exit, %bb.k, %bb.e
  %.pn113 = phi { ptr, i32 } [ %i.ad, %bb.e ], [ %i.ak, %bb.k ], [ %i.bk, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VechEECsjjpCCFGI3ul_14lance_encoding.exit ], [ %i.ba, %bb.u ], [ %i.bd, %bb.x ], [ %i.bd, %bb.y ]
  call void @llvm.experimental.noalias.scope.decl(metadata !923)
  call void @llvm.experimental.noalias.scope.decl(metadata !924)
  call void @llvm.experimental.noalias.scope.decl(metadata !925)
  call void @llvm.experimental.noalias.scope.decl(metadata !926)
  %i.aa = load ptr, ptr %1, align 8, !alias.scope !927, !nonnull !75, !noundef !75
  %i.ab = atomicrmw sub ptr %i.aa, i64 1 release, align 8, !noalias !927
  %i.ac = icmp eq i64 %i.ab, 1
  br i1 %i.ac, label %bb.d, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCsjjpCCFGI3ul_14lance_encoding6buffer11LanceBufferEBF_.exit

bb.d:                                             ; preds = %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc6borrow3CowShEECsjjpCCFGI3ul_14lance_encoding.exit
  fence acquire
  invoke void @_RNvMsn_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcNtNtCs4YAKbnGhBJc_12arrow_buffer5bytes5BytesE9drop_slowBK_(ptr noalias noundef nonnull align 8 dereferenceable(24) %1)
          to label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCsjjpCCFGI3ul_14lance_encoding6buffer11LanceBufferEBF_.exit unwind label %bb.ab

bb.e:                                             ; preds = %bb.j, %bb.i, %bb.b, %_RINvMNtCscI6d9CVNmLh_4core6optionINtB3_6OptionReE11map_or_elseNtNtCs40k4W9msRzi_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECsjjpCCFGI3ul_14lance_encoding.exit, %_RINvMNtCscI6d9CVNmLh_4core6optionINtB3_6OptionReE11map_or_elseNtNtCs40k4W9msRzi_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECsjjpCCFGI3ul_14lance_encoding.exit133
  %i.ad = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc6borrow3CowShEECsjjpCCFGI3ul_14lance_encoding.exit

bb.f:                                             ; preds = %bb.ag, %bb.af, %bb.ae
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t)
  call void @llvm.experimental.noalias.scope.decl(metadata !928)
  call void @llvm.experimental.noalias.scope.decl(metadata !929)
  call void @llvm.experimental.noalias.scope.decl(metadata !930)
  call void @llvm.experimental.noalias.scope.decl(metadata !931)
end_hunk_3
begin_hunk_4_@_RINvMs5_NtNtNtCsjjpCCFGI3ul_14lance_encoding9encodings8physical3rleNtB6_15RleDecompressor14decode_generictEBc_:switch.lookup

bb.l:                                             ; preds = %.split141
  invoke void @_RNvNtCs40k4W9msRzi_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 24) #66
          to label %.noexc181 unwind label %bb.m

.noexc181:                                        ; preds = %bb.l
  unreachable

bb.m:                                             ; preds = %bb.l
  %i.bp = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.bq = icmp eq i64 %.sroa.044.0.copyload, 0
  br i1 %i.bq, label %common.resume, label %bb.n

bb.n:                                             ; preds = %bb.m
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.546.0.copyload) ]
  call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.546.0.copyload, i64 noundef %.sroa.044.0.copyload, i64 noundef range(i64 1, -9223372036854775807) 1) #63, !noalias !2448
  br label %common.resume

_RNvMNtCs40k4W9msRzi_5alloc5boxedINtB2_3BoxNtNvXsf_NtB2_7convertIBv_DNtNtCscI6d9CVNmLh_4core5error5ErrorNtNtB18_6marker4SyncNtB1F_4SendEL_EINtNtB18_7convert4FromNtNtB4_6string6StringE4from11StringErrorE3newCsjjpCCFGI3ul_14lance_encoding.exit: ; preds = %.split141
  store i64 %.sroa.044.0.copyload, ptr %i.bn, align 8
  %.sroa.546.0..sroa_idx47 = getelementptr inbounds nuw i8, ptr %i.bn, i64 8
  store ptr %.sroa.546.0.copyload, ptr %.sroa.546.0..sroa_idx47, align 8
  %.sroa.649.0..sroa_idx51 = getelementptr inbounds nuw i8, ptr %i.bn, i64 16
  store i64 %.sroa.649.0.copyload, ptr %.sroa.649.0..sroa_idx51, align 8
  store i8 0, ptr %0, align 8
  %.sroa.410.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.bn, ptr %.sroa.410.0..sroa_idx, align 8
  %.sroa.511.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr @83, ptr %.sroa.511.0..sroa_idx, align 8
  %.sroa.612.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr @189, ptr %.sroa.612.0..sroa_idx, align 8
  br label %bb.az

.body.thread80.loopexit:                          ; preds = %_RNvXs3_NtNtNtCscI6d9CVNmLh_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4ItertEINtBZ_11ChunksExacthEEINtB5_7ZipImplBW_B1o_E4nextCsjjpCCFGI3ul_14lance_encoding.exit, %bb.ab
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %.body.thread

.body.thread80.loopexit.split-lp:                 ; preds = %bb.o, %bb.q, %bb.af, %bb.ae, %bb.an, %bb.al, %bb.v
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %.body.thread

.body:                                            ; preds = %bb.ao
  %lpad.thr_comm.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VectEECsjjpCCFGI3ul_14lance_encoding.exit210

bb.o:                                             ; preds = %bb.k
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !2445
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  invoke fastcc void @_RNCINvMs5_NtNtNtCsjjpCCFGI3ul_14lance_encoding9encodings8physical3rleNtB8_15RleDecompressor14decode_generictEs_0Be_(ptr noalias noundef align 8 captures(none) dereferenceable(56) %i.b, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.n)
          to label %bb.aw unwind label %.body.thread80.loopexit.split-lp

bb.p:                                             ; preds = %bb.k
  %i.br = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.bs = load ptr, ptr %i.br, align 8, !noalias !2445, !nonnull !75, !noundef !75 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !2445
  store ptr %i.bs, ptr %i.bi, align 8
  %i.bt = icmp sgt i64 %i.bh, -1
  tail call void @llvm.assume(i1 %i.bt)
  store i64 %i.bh, ptr %i.c, align 8
  %.pre = load i64, ptr %i.aa, align 8            ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.be) ]
  %i.bu = icmp eq i64 %.pre, 0
  br i1 %i.bu, label %bb.q, label %bb.r, !prof !108

bb.q:                                             ; preds = %bb.p
  invoke void @_RNvNtCscI6d9CVNmLh_4core9panicking9panic_fmt(ptr noundef nonnull @6, ptr noundef nonnull inttoptr (i64 55 to ptr), ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @178) #66
          to label %.noexc186 unwind label %.body.thread80.loopexit.split-lp

.noexc186:                                        ; preds = %bb.q
  unreachable

bb.r:                                             ; preds = %.thread, %bb.p
  %i.bv = phi i64 [ %switch.ext, %.thread ], [ %.pre, %bb.p ] ; 3 uses
  %i.bw = phi ptr [ inttoptr (i64 2 to ptr), %.thread ], [ %i.bs, %bb.p ]
  %i.bx = lshr i64 %i.bg, 1
  %i.by = udiv i64 %.16.val, %i.bv
  %.sroa.0.0.i.i.i = tail call noundef i64 @llvm.umin.i64(i64 %i.by, i64 %i.bx) ; 2 uses
  %.not104 = icmp eq i64 %.sroa.0.0.i.i.i, 0
  br i1 %.not104, label %_RNvXs3_NtNtNtCscI6d9CVNmLh_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4ItertEINtBZ_11ChunksExacthEEINtB5_7ZipImplBW_B1o_E4nextCsjjpCCFGI3ul_14lance_encoding.exit.thread, label %_RNvXs3_NtNtNtCscI6d9CVNmLh_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4ItertEINtBZ_11ChunksExacthEEINtB5_7ZipImplBW_B1o_E4nextCsjjpCCFGI3ul_14lance_encoding.exit.lr.ph

_RNvXs3_NtNtNtCscI6d9CVNmLh_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4ItertEINtBZ_11ChunksExacthEEINtB5_7ZipImplBW_B1o_E4nextCsjjpCCFGI3ul_14lance_encoding.exit.lr.ph: ; preds = %bb.r
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.8.val) ]
  br label %_RNvXs3_NtNtNtCscI6d9CVNmLh_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4ItertEINtBZ_11ChunksExacthEEINtB5_7ZipImplBW_B1o_E4nextCsjjpCCFGI3ul_14lance_encoding.exit

_RNvXs3_NtNtNtCscI6d9CVNmLh_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4ItertEINtBZ_11ChunksExacthEEINtB5_7ZipImplBW_B1o_E4nextCsjjpCCFGI3ul_14lance_encoding.exit: ; preds = %_RNvXs3_NtNtNtCscI6d9CVNmLh_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4ItertEINtBZ_11ChunksExacthEEINtB5_7ZipImplBW_B1o_E4nextCsjjpCCFGI3ul_14lance_encoding.exit.lr.ph, %bb.ad
  %i.bz = phi ptr [ %i.bw, %_RNvXs3_NtNtNtCscI6d9CVNmLh_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4ItertEINtBZ_11ChunksExacthEEINtB5_7ZipImplBW_B1o_E4nextCsjjpCCFGI3ul_14lance_encoding.exit.lr.ph ], [ %i.cu, %bb.ad ]
  %i.ca = phi i64 [ 0, %_RNvXs3_NtNtNtCscI6d9CVNmLh_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4ItertEINtBZ_11ChunksExacthEEINtB5_7ZipImplBW_B1o_E4nextCsjjpCCFGI3ul_14lance_encoding.exit.lr.ph ], [ %i.dp, %bb.ad ] ; 6 uses
  %.sroa.13.0103 = phi i64 [ 0, %_RNvXs3_NtNtNtCscI6d9CVNmLh_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4ItertEINtBZ_11ChunksExacthEEINtB5_7ZipImplBW_B1o_E4nextCsjjpCCFGI3ul_14lance_encoding.exit.lr.ph ], [ %i.cb, %bb.ad ] ; 3 uses
  %i.cb = add nuw nsw i64 %.sroa.13.0103, 1       ; 2 uses
  %i.cc = getelementptr inbounds nuw [2 x i8], ptr %i.be, i64 %.sroa.13.0103 ; 2 uses
  %i.cd = mul i64 %.sroa.13.0103, %i.bv
  %i.ce = getelementptr inbounds nuw i8, ptr %.8.val, i64 %i.cd
  %i.cf = invoke fastcc noundef i64 @_RNvMNtNtNtCsjjpCCFGI3ul_14lance_encoding9encodings8physical3rleNtB2_14RunLengthWidth11read_length(i8 noundef %.72.val, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.ce, i64 noundef %i.bv)
          to label %bb.s unwind label %.body.thread80.loopexit ; 11 uses

_RNvXs3_NtNtNtCscI6d9CVNmLh_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4ItertEINtBZ_11ChunksExacthEEINtB5_7ZipImplBW_B1o_E4nextCsjjpCCFGI3ul_14lance_encoding.exit.thread: ; preds = %bb.ad, %._RNvXs3_NtNtNtCscI6d9CVNmLh_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4ItertEINtBZ_11ChunksExacthEEINtB5_7ZipImplBW_B1o_E4nextCsjjpCCFGI3ul_14lance_encoding.exit.thread_crit_edge, %bb.r
  %i.cg = phi i64 [ %.pre115, %._RNvXs3_NtNtNtCscI6d9CVNmLh_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4ItertEINtBZ_11ChunksExacthEEINtB5_7ZipImplBW_B1o_E4nextCsjjpCCFGI3ul_14lance_encoding.exit.thread_crit_edge ], [ 0, %bb.r ], [ %i.dp, %bb.ad ] ; 3 uses
  %i.ch = icmp ult i64 %i.cg, 4611686018427387904
  tail call void @llvm.assume(i1 %i.ch)
  %.not150 = icmp eq i64 %i.cg, %i.bh
  br i1 %.not150, label %bb.am, label %bb.al

bb.s:                                             ; preds = %_RNvXs3_NtNtNtCscI6d9CVNmLh_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4ItertEINtBZ_11ChunksExacthEEINtB5_7ZipImplBW_B1o_E4nextCsjjpCCFGI3ul_14lance_encoding.exit
  %i.ci = icmp eq i64 %i.cf, 0
  br i1 %i.ci, label %bb.t, label %bb.u

bb.t:                                             ; preds = %bb.s
  tail call void @_RNvCs9hJ03s5DiqP_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #63, !noalias !2449
  %i.cj = tail call noundef dereferenceable_or_null(42) ptr @_RNvCs9hJ03s5DiqP_7___rustc12___rust_alloc(i64 noundef 42, i64 noundef range(i64 1, -9223372036854775807) 1) #63, !noalias !2449 ; 4 uses
  %i.ck = icmp eq ptr %i.cj, null
  br i1 %i.ck, label %bb.v, label %bb.w

bb.u:                                             ; preds = %bb.s
  %i.cl = icmp ult i64 %i.ca, 4611686018427387904
  tail call void @llvm.assume(i1 %i.cl)
  %i.cm = sub i64 %i.bh, %i.ca
  %i.cn = icmp ugt i64 %i.cf, %i.cm
  br i1 %i.cn, label %bb.ac, label %bb.aa

bb.v:                                             ; preds = %bb.t
  invoke void @_RNvNtCs40k4W9msRzi_5alloc7raw_vec12handle_error(i64 noundef 1, i64 42) #66
          to label %bb.z unwind label %.body.thread80.loopexit.split-lp

bb.w:                                             ; preds = %bb.t
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(42) %i.cj, ptr noundef nonnull align 1 dereferenceable(42) @179, i64 42, i1 false)
  %i.co = invoke fastcc noundef ptr @_RNvNtCs40k4W9msRzi_5alloc5boxed14box_new_uninit(i64 noundef 8, i64 noundef 24)
          to label %bb.y unwind label %bb.x, !noalias !2450 ; 4 uses

bb.x:                                             ; preds = %bb.w
  %i.cp = landingpad { ptr, i32 }
          cleanup
  tail call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %i.cj, i64 noundef 42, i64 noundef range(i64 1, -9223372036854775807) 1) #63, !noalias !2451
  br label %.body.thread

bb.y:                                             ; preds = %bb.w
  store i64 42, ptr %i.co, align 8
  %.sroa.554.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.co, i64 8
  store ptr %i.cj, ptr %.sroa.554.0..sroa_idx, align 8
  %.sroa.755.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.co, i64 16
  store i64 42, ptr %.sroa.755.0..sroa_idx, align 8
  store i8 0, ptr %0, align 8
  %.sroa.427.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.co, ptr %.sroa.427.0..sroa_idx, align 8
  %.sroa.528.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr @83, ptr %.sroa.528.0..sroa_idx, align 8
  %.sroa.629.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr @180, ptr %.sroa.629.0..sroa_idx, align 8
  br label %bb.aj

bb.z:                                             ; preds = %bb.v
  unreachable

bb.aa:                                            ; preds = %bb.u
  %i.cq = load i16, ptr %i.cc, align 2, !noundef !75 ; 4 uses
  %i.cr = load i64, ptr %i.c, align 8, !range !76, !noundef !75
  %i.cs = sub nsw i64 %i.cr, %i.ca
  %i.ct = icmp ugt i64 %i.cf, %i.cs
  br i1 %i.ct, label %bb.ab, label %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VectE7reserveCsjjpCCFGI3ul_14lance_encoding.exit.i.i, !prof !81

bb.ab:                                            ; preds = %bb.aa
  invoke fastcc void @_RINvNvMs2_NtCs40k4W9msRzi_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECsjjpCCFGI3ul_14lance_encoding(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.c, i64 noundef %i.ca, i64 noundef %i.cf, i64 noundef 2, i64 noundef 2)
          to label %.noexc196 unwind label %.body.thread80.loopexit

.noexc196:                                        ; preds = %bb.ab
  %.pre.i.i = load i64, ptr %i.bj, align 8
  %.pre114 = load ptr, ptr %i.bi, align 8
  br label %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VectE7reserveCsjjpCCFGI3ul_14lance_encoding.exit.i.i

_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VectE7reserveCsjjpCCFGI3ul_14lance_encoding.exit.i.i: ; preds = %.noexc196, %bb.aa
  %i.cu = phi ptr [ %i.bz, %bb.aa ], [ %.pre114, %.noexc196 ] ; 2 uses
  %i.cv = phi i64 [ %i.ca, %bb.aa ], [ %.pre.i.i, %.noexc196 ] ; 4 uses
  %i.cw = icmp ult i64 %i.cv, 4611686018427387904
  tail call void @llvm.assume(i1 %i.cw)
  %i.cx = getelementptr inbounds nuw [2 x i8], ptr %i.cu, i64 %i.cv ; 6 uses
  %.not96 = icmp eq i64 %i.cf, 1
  br i1 %.not96, label %bb.ad, label %iter.check

iter.check:                                       ; preds = %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VectE7reserveCsjjpCCFGI3ul_14lance_encoding.exit.i.i
  %i.cy = add nsw i64 %i.cf, -1                   ; 5 uses
  %min.iters.check = icmp samesign ult i64 %i.cf, 5
  br i1 %min.iters.check, label %.lr.ph.i.i.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check149 = icmp samesign ult i64 %i.cf, 17
  br i1 %min.iters.check149, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.cz = and i64 %i.cy, 12
  %n.vec = and i64 %i.cy, -16                     ; 5 uses
  %i.da = shl nsw i64 %n.vec, 1
  %i.db = getelementptr i8, ptr %i.cx, i64 %i.da  ; 2 uses
  %i.dc = or disjoint i64 %n.vec, 1
  %broadcast.splatinsert = insertelement <8 x i16> poison, i16 %i.cq, i64 0
  %broadcast.splat = shufflevector <8 x i16> %broadcast.splatinsert, <8 x i16> poison, <8 x i32> zeroinitializer ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.ph, %vector.body
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.dd = shl i64 %index, 1
  %next.gep = getelementptr i8, ptr %i.cx, i64 %i.dd ; 2 uses
  %i.de = getelementptr i8, ptr %next.gep, i64 16
  store <8 x i16> %broadcast.splat, ptr %next.gep, align 2, !noalias !2452
  store <8 x i16> %broadcast.splat, ptr %i.de, align 2, !noalias !2452
  %index.next = add nuw i64 %index, 16            ; 2 uses
  %i.df = icmp eq i64 %index.next, %n.vec
  br i1 %i.df, label %middle.block, label %vector.body, !llvm.loop !2396

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.cy, %n.vec
  br i1 %cmp.n, label %._crit_edge.thread.i.i, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.cz, 0
  br i1 %min.epilog.iters.check, label %.lr.ph.i.i.preheader, label %vec.epilog.ph, !prof !101

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec151 = and i64 %i.cy, -4                   ; 4 uses
  %i.dg = shl nsw i64 %n.vec151, 1
  %i.dh = getelementptr i8, ptr %i.cx, i64 %i.dg  ; 2 uses
  %i.di = or disjoint i64 %n.vec151, 1
  %broadcast.splatinsert152 = insertelement <4 x i16> poison, i16 %i.cq, i64 0
  %broadcast.splat153 = shufflevector <4 x i16> %broadcast.splatinsert152, <4 x i16> poison, <4 x i32> zeroinitializer
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index154 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next156, %vec.epilog.vector.body ] ; 2 uses
  %i.dj = shl i64 %index154, 1
  %next.gep155 = getelementptr i8, ptr %i.cx, i64 %i.dj
  store <4 x i16> %broadcast.splat153, ptr %next.gep155, align 2, !noalias !2452
  %index.next156 = add nuw i64 %index154, 4       ; 2 uses
  %i.dk = icmp eq i64 %index.next156, %n.vec151
  br i1 %i.dk, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !2397

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n157 = icmp eq i64 %i.cy, %n.vec151
  br i1 %cmp.n157, label %._crit_edge.thread.i.i, label %.lr.ph.i.i.preheader

.lr.ph.i.i.preheader:                             ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.sroa.0.021.i.i.ph = phi ptr [ %i.cx, %iter.check ], [ %i.db, %vec.epilog.iter.check ], [ %i.dh, %vec.epilog.middle.block ]
  %.sroa.03.020.i.i.ph = phi i64 [ 1, %iter.check ], [ %i.dc, %vec.epilog.iter.check ], [ %i.di, %vec.epilog.middle.block ]
  br label %.lr.ph.i.i

._crit_edge.thread.i.i:                           ; preds = %.lr.ph.i.i, %vec.epilog.middle.block, %middle.block
  %.lcssa = phi ptr [ %i.dh, %vec.epilog.middle.block ], [ %i.db, %middle.block ], [ %i.do, %.lr.ph.i.i ]
  %i.dl = add nsw i64 %i.cf, -1
  %i.dm = add nuw nsw i64 %i.dl, %i.cv
  br label %bb.ad

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.preheader, %.lr.ph.i.i
  %.sroa.0.021.i.i = phi ptr [ %i.do, %.lr.ph.i.i ], [ %.sroa.0.021.i.i.ph, %.lr.ph.i.i.preheader ] ; 2 uses
  %.sroa.03.020.i.i = phi i64 [ %i.dn, %.lr.ph.i.i ], [ %.sroa.03.020.i.i.ph, %.lr.ph.i.i.preheader ]
  %i.dn = add nuw i64 %.sroa.03.020.i.i, 1        ; 2 uses
  store i16 %i.cq, ptr %.sroa.0.021.i.i, align 2, !noalias !2452
  %i.do = getelementptr inbounds nuw i8, ptr %.sroa.0.021.i.i, i64 2 ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %i.dn, %i.cf
  br i1 %exitcond.not.i.i, label %._crit_edge.thread.i.i, label %.lr.ph.i.i, !llvm.loop !2398

bb.ac:                                            ; preds = %bb.u
  br i1 %3, label %bb.af, label %bb.ae

bb.ad:                                            ; preds = %._crit_edge.thread.i.i, %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VectE7reserveCsjjpCCFGI3ul_14lance_encoding.exit.i.i
  %.sroa.0.0.lcssa28.i.i = phi ptr [ %.lcssa, %._crit_edge.thread.i.i ], [ %i.cx, %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VectE7reserveCsjjpCCFGI3ul_14lance_encoding.exit.i.i ]
  %storemerge.lcssa27.i.i = phi i64 [ %i.dm, %._crit_edge.thread.i.i ], [ %i.cv, %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VectE7reserveCsjjpCCFGI3ul_14lance_encoding.exit.i.i ]
  store i16 %i.cq, ptr %.sroa.0.0.lcssa28.i.i, align 2, !noalias !2452
  %i.dp = add nuw nsw i64 %storemerge.lcssa27.i.i, 1 ; 3 uses
  store i64 %i.dp, ptr %i.bj, align 8
  %i.dq = icmp samesign ult i64 %i.cb, %.sroa.0.0.i.i.i
  br i1 %i.dq, label %_RNvXs3_NtNtNtCscI6d9CVNmLh_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4ItertEINtBZ_11ChunksExacthEEINtB5_7ZipImplBW_B1o_E4nextCsjjpCCFGI3ul_14lance_encoding.exit, label %_RNvXs3_NtNtNtCscI6d9CVNmLh_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4ItertEINtBZ_11ChunksExacthEEINtB5_7ZipImplBW_B1o_E4nextCsjjpCCFGI3ul_14lance_encoding.exit.thread

bb.ae:                                            ; preds = %bb.ac
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l)
  %i.dr = add nuw nsw i64 %i.ca, %i.cf
  store i64 %i.dr, ptr %i.l, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k)
  store ptr %i.l, ptr %i.k, align 8
  %.sroa.4100.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  store ptr @_RNvXsi_NtNtNtCscI6d9CVNmLh_4core3fmt3num3impjNtB9_7Display3fmt, ptr %.sroa.4100.0..sroa_idx, align 8
  %i.ds = getelementptr inbounds nuw i8, ptr %i.k, i64 16
  store ptr %i.n, ptr %i.ds, align 8
  %.sroa.4104.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.k, i64 24
  store ptr @_RNvXsi_NtNtNtCscI6d9CVNmLh_4core3fmt3num3impjNtB9_7Display3fmt, ptr %.sroa.4104.0..sroa_idx, align 8
  invoke void @_RNvNvNtCs40k4W9msRzi_5alloc3fmt6format12format_inner(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.m, ptr noundef nonnull @181, ptr noundef nonnull %i.k)
          to label %_RINvMNtCscI6d9CVNmLh_4core6optionINtB3_6OptionReE11map_or_elseNtNtCs40k4W9msRzi_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECsjjpCCFGI3ul_14lance_encoding.exit unwind label %.body.thread80.loopexit.split-lp

bb.af:                                            ; preds = %bb.ac
  %i.dt = load i16, ptr %i.cc, align 2, !noundef !75
  invoke fastcc void @_RNvMs1_NtCs40k4W9msRzi_5alloc3vecINtB5_3VectE6resizeCsjjpCCFGI3ul_14lance_encoding(ptr noalias noundef align 8 dereferenceable(24) %i.c, i64 noundef %i.bh, i16 noundef %i.dt)
          to label %._RNvXs3_NtNtNtCscI6d9CVNmLh_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4ItertEINtBZ_11ChunksExacthEEINtB5_7ZipImplBW_B1o_E4nextCsjjpCCFGI3ul_14lance_encoding.exit.thread_crit_edge unwind label %.body.thread80.loopexit.split-lp

._RNvXs3_NtNtNtCscI6d9CVNmLh_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4ItertEINtBZ_11ChunksExacthEEINtB5_7ZipImplBW_B1o_E4nextCsjjpCCFGI3ul_14lance_encoding.exit.thread_crit_edge: ; preds = %bb.af
  %.pre115 = load i64, ptr %i.bj, align 8
  br label %_RNvXs3_NtNtNtCscI6d9CVNmLh_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4ItertEINtBZ_11ChunksExacthEEINtB5_7ZipImplBW_B1o_E4nextCsjjpCCFGI3ul_14lance_encoding.exit.thread

_RINvMNtCscI6d9CVNmLh_4core6optionINtB3_6OptionReE11map_or_elseNtNtCs40k4W9msRzi_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECsjjpCCFGI3ul_14lance_encoding.exit: ; preds = %bb.ae
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l)
  %.sroa.060.0.copyload = load i64, ptr %i.m, align 8 ; 3 uses
  %.sroa.562.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  %.sroa.562.0.copyload = load ptr, ptr %.sroa.562.0..sroa_idx, align 8 ; 3 uses
  %.sroa.665.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.m, i64 16
  %.sroa.665.0.copyload = load i64, ptr %.sroa.665.0..sroa_idx, align 8
  %i.du = invoke fastcc noundef ptr @_RNvNtCs40k4W9msRzi_5alloc5boxed14box_new_uninit(i64 noundef 8, i64 noundef 24)
          to label %bb.ai unwind label %bb.ag, !noalias !2453 ; 4 uses

bb.ag:                                            ; preds = %_RINvMNtCscI6d9CVNmLh_4core6optionINtB3_6OptionReE11map_or_elseNtNtCs40k4W9msRzi_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECsjjpCCFGI3ul_14lance_encoding.exit
  %i.dv = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.dw = icmp eq i64 %.sroa.060.0.copyload, 0
  br i1 %i.dw, label %.body.thread, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.562.0.copyload) ]
  call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.562.0.copyload, i64 noundef %.sroa.060.0.copyload, i64 noundef range(i64 1, -9223372036854775807) 1) #63, !noalias !2454
  br label %.body.thread

bb.ai:                                            ; preds = %_RINvMNtCscI6d9CVNmLh_4core6optionINtB3_6OptionReE11map_or_elseNtNtCs40k4W9msRzi_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECsjjpCCFGI3ul_14lance_encoding.exit
  store i64 %.sroa.060.0.copyload, ptr %i.du, align 8
  %.sroa.562.0..sroa_idx63 = getelementptr inbounds nuw i8, ptr %i.du, i64 8
  store ptr %.sroa.562.0.copyload, ptr %.sroa.562.0..sroa_idx63, align 8
  %.sroa.665.0..sroa_idx66 = getelementptr inbounds nuw i8, ptr %i.du, i64 16
  store i64 %.sroa.665.0.copyload, ptr %.sroa.665.0..sroa_idx66, align 8
  store i8 0, ptr %0, align 8
  %.sroa.441.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.du, ptr %.sroa.441.0..sroa_idx, align 8
  %.sroa.542.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr @83, ptr %.sroa.542.0..sroa_idx, align 8
  %.sroa.643.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr @182, ptr %.sroa.643.0..sroa_idx, align 8
  br label %bb.aj

bb.aj:                                            ; preds = %bb.y, %bb.ai, %bb.aw, %bb.av
  %.val174 = load i64, ptr %i.c, align 8          ; 2 uses
  %i.dx = icmp eq i64 %.val174, 0
  br i1 %i.dx, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VectEECsjjpCCFGI3ul_14lance_encoding.exit, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  %.val175 = load ptr, ptr %i.bi, align 8, !nonnull !75, !noundef !75
  %i.dy = shl nuw i64 %.val174, 1
  call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.val175, i64 noundef %i.dy, i64 noundef range(i64 1, -9223372036854775807) 2) #63
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VectEECsjjpCCFGI3ul_14lance_encoding.exit

bb.al:                                            ; preds = %_RNvXs3_NtNtNtCscI6d9CVNmLh_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4ItertEINtBZ_11ChunksExacthEEINtB5_7ZipImplBW_B1o_E4nextCsjjpCCFGI3ul_14lance_encoding.exit.thread
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i)
  store i64 %i.cg, ptr %i.i, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  store ptr %i.i, ptr %i.h, align 8
  %.sroa.4110.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  store ptr @_RNvXsi_NtNtNtCscI6d9CVNmLh_4core3fmt3num3impjNtB9_7Display3fmt, ptr %.sroa.4110.0..sroa_idx, align 8
  %i.dz = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  store ptr %i.n, ptr %i.dz, align 8
  %.sroa.4114.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.h, i64 24
  store ptr @_RNvXsi_NtNtNtCscI6d9CVNmLh_4core3fmt3num3impjNtB9_7Display3fmt, ptr %.sroa.4114.0..sroa_idx, align 8
  invoke void @_RNvNvNtCs40k4W9msRzi_5alloc3fmt6format12format_inner(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.j, ptr noundef nonnull @186, ptr noundef nonnull %i.h)
          to label %_RINvMNtCscI6d9CVNmLh_4core6optionINtB3_6OptionReE11map_or_elseNtNtCs40k4W9msRzi_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECsjjpCCFGI3ul_14lance_encoding.exit203 unwind label %.body.thread80.loopexit.split-lp

bb.am:                                            ; preds = %_RNvXs3_NtNtNtCscI6d9CVNmLh_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4ItertEINtBZ_11ChunksExacthEEINtB5_7ZipImplBW_B1o_E4nextCsjjpCCFGI3ul_14lance_encoding.exit.thread
  %i.ea = load atomic i64, ptr @_RNvCs91CWldrXK7B_3log20MAX_LOG_LEVEL_FILTER monotonic, align 8 ; 2 uses
  %i.eb = icmp ult i64 %i.ea, 6
  tail call void @llvm.assume(i1 %i.eb)
  %i.ec = icmp samesign ugt i64 %i.ea, 4
  br i1 %i.ec, label %bb.an, label %bb.ao

bb.an:                                            ; preds = %bb.am
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  store ptr @191, ptr %i.g, align 8
  %i.ed = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  store i64 3, ptr %i.ed, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  store ptr %i.ac, ptr %i.f, align 8
  %.sroa.4120.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  store ptr @_RNvXsd_NtNtNtCscI6d9CVNmLh_4core3fmt3num3impyNtB9_7Display3fmt, ptr %.sroa.4120.0..sroa_idx, align 8
  %i.ee = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  store ptr %i.g, ptr %i.ee, align 8
  %.sroa.4124.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 24
  store ptr @_RNvXs1i_NtCscI6d9CVNmLh_4core3fmtReNtB6_7Display3fmtCsjjpCCFGI3ul_14lance_encoding, ptr %.sroa.4124.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  store ptr @185, ptr %i.e, align 8
  %i.ef = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  store i64 40, ptr %i.ef, align 8
  %i.eg = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  store ptr @185, ptr %i.eg, align 8
  %i.eh = getelementptr inbounds nuw i8, ptr %i.e, i64 24
  store i64 40, ptr %i.eh, align 8
  %i.ei = getelementptr inbounds nuw i8, ptr %i.e, i64 32
  store ptr @184, ptr %i.ei, align 8
  invoke fastcc void @_RINvNtCs91CWldrXK7B_3log13___private_api3loguNtB2_12GlobalLoggerECsjjpCCFGI3ul_14lance_encoding(ptr noundef nonnull @183, ptr noundef nonnull %i.f, i64 noundef 5, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(40) %i.e)
          to label %bb.ap unwind label %.body.thread80.loopexit.split-lp

bb.ao:                                            ; preds = %bb.am, %bb.ap
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  invoke fastcc void @_RINvMNtCsjjpCCFGI3ul_14lance_encoding6bufferNtB3_11LanceBuffer15reinterpret_vectEB5_(ptr noalias noundef align 8 captures(none) dereferenceable(24) %i.d, ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.c)
          to label %bb.aq unwind label %.body

bb.ap:                                            ; preds = %bb.an
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
end_hunk_4
begin_hunk_5_@_RNCNCNvXsb_NtNtNtCsjjpCCFGI3ul_14lance_encoding9encodings7logical9primitiveNtB9_23ComplexAllNullSchedulerNtB9_23StructuralPageScheduler10initialize00Bf_:bb.a
  store i64 %i.aax, ptr %.sroa.53.sroa.5.0..sroa.53.0..sroa_idx.sroa_idx.i.i40.i, align 8, !noalias !23085
  call void @_RNvCs9hJ03s5DiqP_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #63, !noalias !23086
  %i.abb = call noundef align 8 dereferenceable_or_null(56) ptr @_RNvCs9hJ03s5DiqP_7___rustc12___rust_alloc(i64 noundef 56, i64 noundef range(i64 1, -9223372036854775807) 8) #63, !noalias !23086 ; 3 uses
  %i.abc = icmp eq ptr %i.abb, null
  br i1 %i.abc, label %bb.ls, label %bb.lw, !prof !77

bb.ls:                                            ; preds = %._crit_edge.i37.i
  invoke void @_RNvNtCs40k4W9msRzi_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 56) #66
          to label %.noexc.i.i42.i unwind label %bb.lt, !noalias !23085

.noexc.i.i42.i:                                   ; preds = %bb.ls
  unreachable

bb.lt:                                            ; preds = %bb.ls
  %i.abd = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync8ArcInnerNtNtCs4YAKbnGhBJc_12arrow_buffer5bytes5BytesEECsjjpCCFGI3ul_14lance_encoding(ptr noalias noundef nonnull align 8 dereferenceable(56) %i.r) #67
          to label %.body.i29.i unwind label %bb.lu, !noalias !23085

bb.lu:                                            ; preds = %bb.lt
  %i.abe = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #68, !noalias !23085
  unreachable

bb.lv:                                            ; preds = %_RNvMs1_NtCs40k4W9msRzi_5alloc3vecINtB5_3VectE6resizeCsjjpCCFGI3ul_14lance_encoding.exit.i.i, %.lr.ph.i24.i
  %i.abf = phi ptr [ %.sroa.430.0.copyload85.i.i, %.lr.ph.i24.i ], [ %i.ado, %_RNvMs1_NtCs40k4W9msRzi_5alloc3vecINtB5_3VectE6resizeCsjjpCCFGI3ul_14lance_encoding.exit.i.i ] ; 2 uses
  %i.abg = phi i64 [ 0, %.lr.ph.i24.i ], [ %storemerge.i.i.i, %_RNvMs1_NtCs40k4W9msRzi_5alloc3vecINtB5_3VectE6resizeCsjjpCCFGI3ul_14lance_encoding.exit.i.i ] ; 5 uses
  %.sroa.09.059.i.i = phi i64 [ 0, %.lr.ph.i24.i ], [ %i.abh, %_RNvMs1_NtCs40k4W9msRzi_5alloc3vecINtB5_3VectE6resizeCsjjpCCFGI3ul_14lance_encoding.exit.i.i ] ; 9 uses
  %i.abh = add nuw nsw i64 %.sroa.09.059.i.i, 1   ; 2 uses
  %i.abi = getelementptr inbounds nuw [2 x i8], ptr %i.aak, i64 %.sroa.09.059.i.i
  %i.abj = load i16, ptr %i.abi, align 2, !noalias !23078, !noundef !75 ; 4 uses
  switch i64 %.sroa.03.8, label %bb.mf [
    i64 0, label %bb.md
    i64 1, label %bb.me
  ]

bb.lw:                                            ; preds = %._crit_edge.i37.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.abb, ptr noundef nonnull align 8 dereferenceable(56) %i.r, i64 56, i1 false), !noalias !23085
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r), !noalias !23085
  %i.abk = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.abb, ptr %i.abk, align 8, !alias.scope !23087, !noalias !23088
  %.sroa.427.0..sroa_idx.i.i117 = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %.sroa.430.0.copyload.i.i, ptr %.sroa.427.0..sroa_idx.i.i117, align 8, !alias.scope !23087, !noalias !23088
  %.sroa.528.0..sroa_idx.i.i118 = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 %i.aay, ptr %.sroa.528.0..sroa_idx.i.i118, align 8, !alias.scope !23087, !noalias !23088
  store i8 -1, ptr %0, align 8, !alias.scope !23087, !noalias !23088
  call void @llvm.lifetime.end.p0(ptr nonnull %i.w), !noalias !23078
  call void @llvm.experimental.noalias.scope.decl(metadata !23089)
  %i.abl = atomicrmw sub ptr %i.mr, i64 1 release, align 8, !noalias !23090
  %i.abm = icmp eq i64 %i.abl, 1
  br i1 %i.abm, label %bb.lx, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtCs4YAKbnGhBJc_12arrow_buffer6buffer6scalar12ScalarBuffertEECsjjpCCFGI3ul_14lance_encoding.exit.i.i41.i

bb.lx:                                            ; preds = %bb.lw
  fence acquire
  invoke void @_RNvMsn_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcNtNtCs4YAKbnGhBJc_12arrow_buffer5bytes5BytesE9drop_slowBK_(ptr noalias noundef nonnull align 8 dereferenceable(24) %.sroa.10.0..sroa_idx)
          to label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtCs4YAKbnGhBJc_12arrow_buffer6buffer6scalar12ScalarBuffertEECsjjpCCFGI3ul_14lance_encoding.exit.i.i41.i unwind label %bb.ly, !noalias !23091

bb.ly:                                            ; preds = %bb.lx
  %i.abn = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtNtNtCsjjpCCFGI3ul_14lance_encoding9encodings8physical3rle13RleRunLengthsEBJ_(ptr noalias noundef nonnull align 8 dereferenceable(72) %i.av) #67
          to label %.thread unwind label %bb.mc, !noalias !23091

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtCs4YAKbnGhBJc_12arrow_buffer6buffer6scalar12ScalarBuffertEECsjjpCCFGI3ul_14lance_encoding.exit.i.i41.i: ; preds = %bb.lx, %bb.lw
  call void @llvm.experimental.noalias.scope.decl(metadata !23092)
  %i.abo = load i64, ptr %i.av, align 8, !range !134, !alias.scope !23093, !noalias !23091, !noundef !75
  switch i64 %i.abo, label %bb.lz [
    i64 0, label %bb.ma
    i64 1, label %bb.mb
  ]

bb.lz:                                            ; preds = %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtCs4YAKbnGhBJc_12arrow_buffer6buffer6scalar12ScalarBuffertEECsjjpCCFGI3ul_14lance_encoding.exit.i.i41.i
  call void @llvm.experimental.noalias.scope.decl(metadata !23094)
  call void @llvm.experimental.noalias.scope.decl(metadata !23095)
  call void @llvm.experimental.noalias.scope.decl(metadata !23096)
  call void @llvm.experimental.noalias.scope.decl(metadata !23097)
  %i.abp = load ptr, ptr %.sroa.5.0..sroa_idx17, align 8, !alias.scope !23098, !noalias !23091, !nonnull !75, !noundef !75
  %i.abq = atomicrmw sub ptr %i.abp, i64 1 release, align 8, !noalias !23099
  %i.abr = icmp eq i64 %i.abq, 1
  br i1 %i.abr, label %_RNvMs6_NtNtNtCsjjpCCFGI3ul_14lance_encoding9encodings7logical9primitiveNtB5_10LazyLevels11build_dense.exit.sink.split.i, label %_RNvMs6_NtNtNtCsjjpCCFGI3ul_14lance_encoding9encodings7logical9primitiveNtB5_10LazyLevels11build_dense.exit.i

bb.ma:                                            ; preds = %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtCs4YAKbnGhBJc_12arrow_buffer6buffer6scalar12ScalarBuffertEECsjjpCCFGI3ul_14lance_encoding.exit.i.i41.i
  call void @llvm.experimental.noalias.scope.decl(metadata !23100)
  call void @llvm.experimental.noalias.scope.decl(metadata !23101)
  call void @llvm.experimental.noalias.scope.decl(metadata !23102)
  call void @llvm.experimental.noalias.scope.decl(metadata !23103)
  %i.abs = load ptr, ptr %.sroa.5.0..sroa_idx17, align 8, !alias.scope !23104, !noalias !23091, !nonnull !75, !noundef !75
  %i.abt = atomicrmw sub ptr %i.abs, i64 1 release, align 8, !noalias !23105
  %i.abu = icmp eq i64 %i.abt, 1
  br i1 %i.abu, label %_RNvMs6_NtNtNtCsjjpCCFGI3ul_14lance_encoding9encodings7logical9primitiveNtB5_10LazyLevels11build_dense.exit.sink.split.i, label %_RNvMs6_NtNtNtCsjjpCCFGI3ul_14lance_encoding9encodings7logical9primitiveNtB5_10LazyLevels11build_dense.exit.i

bb.mb:                                            ; preds = %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtCs4YAKbnGhBJc_12arrow_buffer6buffer6scalar12ScalarBuffertEECsjjpCCFGI3ul_14lance_encoding.exit.i.i41.i
  call void @llvm.experimental.noalias.scope.decl(metadata !23106)
  call void @llvm.experimental.noalias.scope.decl(metadata !23107)
  call void @llvm.experimental.noalias.scope.decl(metadata !23108)
  call void @llvm.experimental.noalias.scope.decl(metadata !23109)
  %i.abv = load ptr, ptr %.sroa.5.0..sroa_idx17, align 8, !alias.scope !23110, !noalias !23091, !nonnull !75, !noundef !75
  %i.abw = atomicrmw sub ptr %i.abv, i64 1 release, align 8, !noalias !23111
  %i.abx = icmp eq i64 %i.abw, 1
  br i1 %i.abx, label %_RNvMs6_NtNtNtCsjjpCCFGI3ul_14lance_encoding9encodings7logical9primitiveNtB5_10LazyLevels11build_dense.exit.sink.split.i, label %_RNvMs6_NtNtNtCsjjpCCFGI3ul_14lance_encoding9encodings7logical9primitiveNtB5_10LazyLevels11build_dense.exit.i

bb.mc:                                            ; preds = %bb.ly
  %i.aby = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #68, !noalias !23091
  unreachable

bb.md:                                            ; preds = %bb.lv
  %i.abz = icmp ult i64 %.sroa.09.059.i.i, %i.mu
  br i1 %i.abz, label %bb.mg, label %.invoke.i25.i

bb.me:                                            ; preds = %bb.lv
  %i.aca = icmp samesign ult i64 %.sroa.09.059.i.i, %i.aau
  br i1 %i.aca, label %bb.mh, label %.invoke.i25.i

bb.mf:                                            ; preds = %bb.lv
  %i.acb = icmp samesign ult i64 %.sroa.09.059.i.i, %i.aas
  br i1 %i.acb, label %bb.mi, label %.invoke.i25.i

bb.mg:                                            ; preds = %bb.md
  %i.acc = getelementptr inbounds nuw i8, ptr %i.aat, i64 %.sroa.09.059.i.i
  %i.acd = load i8, ptr %i.acc, align 1, !noalias !23112, !noundef !75
  %i.ace = zext i8 %i.acd to i64
  br label %_RNvMs9_NtNtNtCsjjpCCFGI3ul_14lance_encoding9encodings8physical3rleNtB5_7RleRuns6length.exit.i34.i

bb.mh:                                            ; preds = %bb.me
  %i.acf = getelementptr inbounds nuw [2 x i8], ptr %i.aat, i64 %.sroa.09.059.i.i
  %i.acg = load i16, ptr %i.acf, align 2, !noalias !23112, !noundef !75
  %i.ach = zext i16 %i.acg to i64
  br label %_RNvMs9_NtNtNtCsjjpCCFGI3ul_14lance_encoding9encodings8physical3rleNtB5_7RleRuns6length.exit.i34.i

bb.mi:                                            ; preds = %bb.mf
  %i.aci = getelementptr inbounds nuw [4 x i8], ptr %i.aat, i64 %.sroa.09.059.i.i
  %i.acj = load i32, ptr %i.aci, align 4, !noalias !23112, !noundef !75
  %i.ack = zext i32 %i.acj to i64
  br label %_RNvMs9_NtNtNtCsjjpCCFGI3ul_14lance_encoding9encodings8physical3rleNtB5_7RleRuns6length.exit.i34.i

.invoke.i25.i:                                    ; preds = %bb.mf, %bb.me, %bb.md
  %i.acl = phi i64 [ %i.aau, %bb.me ], [ %i.mu, %bb.md ], [ %i.aas, %bb.mf ]
  %i.acm = phi ptr [ @1807, %bb.me ], [ @1806, %bb.md ], [ @1808, %bb.mf ]
  invoke void @_RNvNtCscI6d9CVNmLh_4core9panicking18panic_bounds_check(i64 noundef %.sroa.09.059.i.i, i64 noundef %i.acl, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.acm) #66
          to label %.cont.i33.i unwind label %.loopexit.split-lp.i26.i, !noalias !23078

.cont.i33.i:                                      ; preds = %.invoke.i25.i
  unreachable

_RNvMs9_NtNtNtCsjjpCCFGI3ul_14lance_encoding9encodings8physical3rleNtB5_7RleRuns6length.exit.i34.i: ; preds = %bb.mi, %bb.mh, %bb.mg
  %.sroa.0.0.i.i.i35.i = phi i64 [ %i.ace, %bb.mg ], [ %i.ach, %bb.mh ], [ %i.ack, %bb.mi ] ; 10 uses
  %i.acn = icmp ult i64 %i.abg, 4611686018427387904
  call void @llvm.assume(i1 %i.acn)
  %i.aco = add nuw nsw i64 %.sroa.0.0.i.i.i35.i, %i.abg
  call void @llvm.experimental.noalias.scope.decl(metadata !23113)
  %.not38.i.i = icmp eq i64 %.sroa.0.0.i.i.i35.i, 0
  br i1 %.not38.i.i, label %_RNvMs1_NtCs40k4W9msRzi_5alloc3vecINtB5_3VectE6resizeCsjjpCCFGI3ul_14lance_encoding.exit.i.i, label %bb.mj

bb.mj:                                            ; preds = %_RNvMs9_NtNtNtCsjjpCCFGI3ul_14lance_encoding9encodings8physical3rleNtB5_7RleRuns6length.exit.i34.i
  call void @llvm.experimental.noalias.scope.decl(metadata !23114)
  %i.acp = load i64, ptr %i.w, align 8, !range !76, !alias.scope !23115, !noalias !23078, !noundef !75
  %i.acq = sub nsw i64 %i.acp, %i.abg
  %i.acr = icmp ugt i64 %.sroa.0.0.i.i.i35.i, %i.acq
  br i1 %i.acr, label %bb.mk, label %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VectE7reserveCsjjpCCFGI3ul_14lance_encoding.exit.i.i.i.i, !prof !81

bb.mk:                                            ; preds = %bb.mj
  invoke fastcc void @_RINvNvMs2_NtCs40k4W9msRzi_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECsjjpCCFGI3ul_14lance_encoding(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.w, i64 noundef %i.abg, i64 noundef %.sroa.0.0.i.i.i35.i, i64 noundef 2, i64 noundef 2)
          to label %.noexc21.i.i unwind label %.loopexit.i43.i, !noalias !23078

.noexc21.i.i:                                     ; preds = %bb.mk
  %.pre.i.i.i.i = load i64, ptr %i.aaj, align 8, !alias.scope !23116, !noalias !23078
  %.pre87.i.i = load ptr, ptr %i.aai, align 8, !alias.scope !23116, !noalias !23078
  br label %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VectE7reserveCsjjpCCFGI3ul_14lance_encoding.exit.i.i.i.i

_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VectE7reserveCsjjpCCFGI3ul_14lance_encoding.exit.i.i.i.i: ; preds = %.noexc21.i.i, %bb.mj
  %i.acs = phi ptr [ %i.abf, %bb.mj ], [ %.pre87.i.i, %.noexc21.i.i ] ; 2 uses
  %i.act = phi i64 [ %i.abg, %bb.mj ], [ %.pre.i.i.i.i, %.noexc21.i.i ] ; 4 uses
  %i.acu = icmp ult i64 %i.act, 4611686018427387904
  call void @llvm.assume(i1 %i.acu)
  %i.acv = getelementptr inbounds nuw [2 x i8], ptr %i.acs, i64 %i.act ; 6 uses
  %.not39.i.i = icmp eq i64 %.sroa.0.0.i.i.i35.i, 1
  br i1 %.not39.i.i, label %._crit_edge.i.i.i.i, label %iter.check

iter.check:                                       ; preds = %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VectE7reserveCsjjpCCFGI3ul_14lance_encoding.exit.i.i.i.i
  %i.acw = add nsw i64 %.sroa.0.0.i.i.i35.i, -1   ; 5 uses
  %min.iters.check = icmp samesign ult i64 %.sroa.0.0.i.i.i35.i, 5
  br i1 %min.iters.check, label %.lr.ph.i.i.i.i.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check33 = icmp samesign ult i64 %.sroa.0.0.i.i.i35.i, 17
  br i1 %min.iters.check33, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.acx = and i64 %i.acw, 12
  %n.vec = and i64 %i.acw, -16                    ; 5 uses
  %i.acy = shl nsw i64 %n.vec, 1
  %i.acz = getelementptr i8, ptr %i.acv, i64 %i.acy ; 2 uses
  %i.ada = or disjoint i64 %n.vec, 1
  %broadcast.splatinsert = insertelement <8 x i16> poison, i16 %i.abj, i64 0
  %broadcast.splat = shufflevector <8 x i16> %broadcast.splatinsert, <8 x i16> poison, <8 x i32> zeroinitializer ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.ph, %vector.body
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.adb = shl i64 %index, 1
  %next.gep = getelementptr i8, ptr %i.acv, i64 %i.adb ; 2 uses
  %i.adc = getelementptr i8, ptr %next.gep, i64 16
  store <8 x i16> %broadcast.splat, ptr %next.gep, align 2, !noalias !23117
  store <8 x i16> %broadcast.splat, ptr %i.adc, align 2, !noalias !23117
  %index.next = add nuw i64 %index, 16            ; 2 uses
  %i.add = icmp eq i64 %index.next, %n.vec
  br i1 %i.add, label %middle.block, label %vector.body, !llvm.loop !22563

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.acw, %n.vec
  br i1 %cmp.n, label %._crit_edge.thread.i.i.i.i, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.acx, 0
  br i1 %min.epilog.iters.check, label %.lr.ph.i.i.i.i.preheader, label %vec.epilog.ph, !prof !101

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec35 = and i64 %i.acw, -4                   ; 4 uses
  %i.ade = shl nsw i64 %n.vec35, 1
  %i.adf = getelementptr i8, ptr %i.acv, i64 %i.ade ; 2 uses
  %i.adg = or disjoint i64 %n.vec35, 1
  %broadcast.splatinsert36 = insertelement <4 x i16> poison, i16 %i.abj, i64 0
  %broadcast.splat37 = shufflevector <4 x i16> %broadcast.splatinsert36, <4 x i16> poison, <4 x i32> zeroinitializer
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index38 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next40, %vec.epilog.vector.body ] ; 2 uses
  %i.adh = shl i64 %index38, 1
  %next.gep39 = getelementptr i8, ptr %i.acv, i64 %i.adh
  store <4 x i16> %broadcast.splat37, ptr %next.gep39, align 2, !noalias !23117
  %index.next40 = add nuw i64 %index38, 4         ; 2 uses
  %i.adi = icmp eq i64 %index.next40, %n.vec35
  br i1 %i.adi, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !22564

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n41 = icmp eq i64 %i.acw, %n.vec35
  br i1 %cmp.n41, label %._crit_edge.thread.i.i.i.i, label %.lr.ph.i.i.i.i.preheader

.lr.ph.i.i.i.i.preheader:                         ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.sroa.0.021.i.i.i.i.ph = phi ptr [ %i.acv, %iter.check ], [ %i.acz, %vec.epilog.iter.check ], [ %i.adf, %vec.epilog.middle.block ]
  %.sroa.03.020.i.i.i.i.ph = phi i64 [ 1, %iter.check ], [ %i.ada, %vec.epilog.iter.check ], [ %i.adg, %vec.epilog.middle.block ]
  br label %.lr.ph.i.i.i.i

._crit_edge.thread.i.i.i.i:                       ; preds = %.lr.ph.i.i.i.i, %vec.epilog.middle.block, %middle.block
  %.lcssa = phi ptr [ %i.adf, %vec.epilog.middle.block ], [ %i.acz, %middle.block ], [ %i.adn, %.lr.ph.i.i.i.i ]
  %i.adj = add nsw i64 %.sroa.0.0.i.i.i35.i, -1
  %i.adk = add nuw nsw i64 %i.adj, %i.act
  br label %._crit_edge.i.i.i.i

._crit_edge.i.i.i.i:                              ; preds = %._crit_edge.thread.i.i.i.i, %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VectE7reserveCsjjpCCFGI3ul_14lance_encoding.exit.i.i.i.i
  %.sroa.0.0.lcssa28.i.i.i.i = phi ptr [ %.lcssa, %._crit_edge.thread.i.i.i.i ], [ %i.acv, %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VectE7reserveCsjjpCCFGI3ul_14lance_encoding.exit.i.i.i.i ]
  %storemerge.lcssa27.i.i.i.i = phi i64 [ %i.adk, %._crit_edge.thread.i.i.i.i ], [ %i.act, %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VectE7reserveCsjjpCCFGI3ul_14lance_encoding.exit.i.i.i.i ]
  store i16 %i.abj, ptr %.sroa.0.0.lcssa28.i.i.i.i, align 2, !noalias !23117
  %i.adl = add nuw nsw i64 %storemerge.lcssa27.i.i.i.i, 1
  br label %_RNvMs1_NtCs40k4W9msRzi_5alloc3vecINtB5_3VectE6resizeCsjjpCCFGI3ul_14lance_encoding.exit.i.i

.lr.ph.i.i.i.i:                                   ; preds = %.lr.ph.i.i.i.i.preheader, %.lr.ph.i.i.i.i
  %.sroa.0.021.i.i.i.i = phi ptr [ %i.adn, %.lr.ph.i.i.i.i ], [ %.sroa.0.021.i.i.i.i.ph, %.lr.ph.i.i.i.i.preheader ] ; 2 uses
  %.sroa.03.020.i.i.i.i = phi i64 [ %i.adm, %.lr.ph.i.i.i.i ], [ %.sroa.03.020.i.i.i.i.ph, %.lr.ph.i.i.i.i.preheader ]
  %i.adm = add nuw i64 %.sroa.03.020.i.i.i.i, 1   ; 2 uses
  store i16 %i.abj, ptr %.sroa.0.021.i.i.i.i, align 2, !noalias !23117
  %i.adn = getelementptr inbounds nuw i8, ptr %.sroa.0.021.i.i.i.i, i64 2 ; 2 uses
  %exitcond.not.i.i.i.i = icmp eq i64 %i.adm, %.sroa.0.0.i.i.i35.i
  br i1 %exitcond.not.i.i.i.i, label %._crit_edge.thread.i.i.i.i, label %.lr.ph.i.i.i.i, !llvm.loop !22565

_RNvMs1_NtCs40k4W9msRzi_5alloc3vecINtB5_3VectE6resizeCsjjpCCFGI3ul_14lance_encoding.exit.i.i: ; preds = %._crit_edge.i.i.i.i, %_RNvMs9_NtNtNtCsjjpCCFGI3ul_14lance_encoding9encodings8physical3rleNtB5_7RleRuns6length.exit.i34.i
  %i.ado = phi ptr [ %i.abf, %_RNvMs9_NtNtNtCsjjpCCFGI3ul_14lance_encoding9encodings8physical3rleNtB5_7RleRuns6length.exit.i34.i ], [ %i.acs, %._crit_edge.i.i.i.i ]
  %storemerge.i.i.i = phi i64 [ %i.aco, %_RNvMs9_NtNtNtCsjjpCCFGI3ul_14lance_encoding9encodings8physical3rleNtB5_7RleRuns6length.exit.i34.i ], [ %i.adl, %._crit_edge.i.i.i.i ] ; 3 uses
  store i64 %storemerge.i.i.i, ptr %i.aaj, align 8, !alias.scope !23113, !noalias !23078
  %exitcond.not.i36.i = icmp eq i64 %i.abh, %i.aar
  br i1 %exitcond.not.i36.i, label %._crit_edge.loopexit.i.i, label %bb.lv

.body.i29.i:                                      ; preds = %bb.ms, %bb.mr, %bb.lt
  %.pn.i30.i = phi { ptr, i32 } [ %lpad.phi.i.i, %bb.ms ], [ %i.abd, %bb.lt ], [ %lpad.phi.i.i, %bb.mr ]
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtNtNtCsjjpCCFGI3ul_14lance_encoding9encodings8physical3rle7RleRunsEBJ_(ptr noalias noundef nonnull align 8 dereferenceable(72) %i.av) #67
          to label %.thread unwind label %bb.mt, !noalias !23091

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VectEECsjjpCCFGI3ul_14lance_encoding.exit.i47.i: ; preds = %bb.lq
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s), !noalias !23084
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t), !noalias !23084
  %i.adp = getelementptr inbounds nuw i8, ptr %i.v, i64 8
  store ptr @703, ptr %i.adp, align 8, !alias.scope !23083, !noalias !23078
  store i8 11, ptr %i.v, align 8, !alias.scope !23083, !noalias !23078
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr noundef nonnull align 8 dereferenceable(56) %i.v, i64 56, i1 false), !noalias !23088
  call void @llvm.lifetime.end.p0(ptr nonnull %i.v), !noalias !23078
  call void @llvm.lifetime.end.p0(ptr nonnull %i.w), !noalias !23078
  call void @llvm.experimental.noalias.scope.decl(metadata !23118)
  %i.adq = atomicrmw sub ptr %i.mr, i64 1 release, align 8, !noalias !23119
  %i.adr = icmp eq i64 %i.adq, 1
  br i1 %i.adr, label %bb.ml, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtCs4YAKbnGhBJc_12arrow_buffer6buffer6scalar12ScalarBuffertEECsjjpCCFGI3ul_14lance_encoding.exit.i22.i.i

bb.ml:                                            ; preds = %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VectEECsjjpCCFGI3ul_14lance_encoding.exit.i47.i
  fence acquire
  invoke void @_RNvMsn_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcNtNtCs4YAKbnGhBJc_12arrow_buffer5bytes5BytesE9drop_slowBK_(ptr noalias noundef nonnull align 8 dereferenceable(24) %.sroa.10.0..sroa_idx)
          to label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtCs4YAKbnGhBJc_12arrow_buffer6buffer6scalar12ScalarBuffertEECsjjpCCFGI3ul_14lance_encoding.exit.i22.i.i unwind label %bb.mm, !noalias !23091

bb.mm:                                            ; preds = %bb.ml
  %i.ads = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtNtNtCsjjpCCFGI3ul_14lance_encoding9encodings8physical3rle13RleRunLengthsEBJ_(ptr noalias noundef nonnull align 8 dereferenceable(72) %i.av) #67
          to label %.thread unwind label %bb.mq, !noalias !23091

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtCs4YAKbnGhBJc_12arrow_buffer6buffer6scalar12ScalarBuffertEECsjjpCCFGI3ul_14lance_encoding.exit.i22.i.i: ; preds = %bb.ml, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VectEECsjjpCCFGI3ul_14lance_encoding.exit.i47.i
  call void @llvm.experimental.noalias.scope.decl(metadata !23120)
  %i.adt = load i64, ptr %i.av, align 8, !range !134, !alias.scope !23121, !noalias !23091, !noundef !75
  switch i64 %i.adt, label %bb.mn [
    i64 0, label %bb.mo
    i64 1, label %bb.mp
  ]

bb.mn:                                            ; preds = %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtCs4YAKbnGhBJc_12arrow_buffer6buffer6scalar12ScalarBuffertEECsjjpCCFGI3ul_14lance_encoding.exit.i22.i.i
  call void @llvm.experimental.noalias.scope.decl(metadata !23122)
  call void @llvm.experimental.noalias.scope.decl(metadata !23123)
  call void @llvm.experimental.noalias.scope.decl(metadata !23124)
  call void @llvm.experimental.noalias.scope.decl(metadata !23125)
  %i.adu = load ptr, ptr %.sroa.5.0..sroa_idx17, align 8, !alias.scope !23126, !noalias !23091, !nonnull !75, !noundef !75
  %i.adv = atomicrmw sub ptr %i.adu, i64 1 release, align 8, !noalias !23127
  %i.adw = icmp eq i64 %i.adv, 1
  br i1 %i.adw, label %_RNvMs6_NtNtNtCsjjpCCFGI3ul_14lance_encoding9encodings7logical9primitiveNtB5_10LazyLevels11build_dense.exit.sink.split.i, label %_RNvMs6_NtNtNtCsjjpCCFGI3ul_14lance_encoding9encodings7logical9primitiveNtB5_10LazyLevels11build_dense.exit.i

bb.mo:                                            ; preds = %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtCs4YAKbnGhBJc_12arrow_buffer6buffer6scalar12ScalarBuffertEECsjjpCCFGI3ul_14lance_encoding.exit.i22.i.i
  call void @llvm.experimental.noalias.scope.decl(metadata !23128)
  call void @llvm.experimental.noalias.scope.decl(metadata !23129)
  call void @llvm.experimental.noalias.scope.decl(metadata !23130)
  call void @llvm.experimental.noalias.scope.decl(metadata !23131)
  %i.adx = load ptr, ptr %.sroa.5.0..sroa_idx17, align 8, !alias.scope !23132, !noalias !23091, !nonnull !75, !noundef !75
  %i.ady = atomicrmw sub ptr %i.adx, i64 1 release, align 8, !noalias !23133
  %i.adz = icmp eq i64 %i.ady, 1
  br i1 %i.adz, label %_RNvMs6_NtNtNtCsjjpCCFGI3ul_14lance_encoding9encodings7logical9primitiveNtB5_10LazyLevels11build_dense.exit.sink.split.i, label %_RNvMs6_NtNtNtCsjjpCCFGI3ul_14lance_encoding9encodings7logical9primitiveNtB5_10LazyLevels11build_dense.exit.i

bb.mp:                                            ; preds = %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtCs4YAKbnGhBJc_12arrow_buffer6buffer6scalar12ScalarBuffertEECsjjpCCFGI3ul_14lance_encoding.exit.i22.i.i
  call void @llvm.experimental.noalias.scope.decl(metadata !23134)
  call void @llvm.experimental.noalias.scope.decl(metadata !23135)
  call void @llvm.experimental.noalias.scope.decl(metadata !23136)
  call void @llvm.experimental.noalias.scope.decl(metadata !23137)
  %i.aea = load ptr, ptr %.sroa.5.0..sroa_idx17, align 8, !alias.scope !23138, !noalias !23091, !nonnull !75, !noundef !75
  %i.aeb = atomicrmw sub ptr %i.aea, i64 1 release, align 8, !noalias !23139
  %i.aec = icmp eq i64 %i.aeb, 1
  br i1 %i.aec, label %_RNvMs6_NtNtNtCsjjpCCFGI3ul_14lance_encoding9encodings7logical9primitiveNtB5_10LazyLevels11build_dense.exit.sink.split.i, label %_RNvMs6_NtNtNtCsjjpCCFGI3ul_14lance_encoding9encodings7logical9primitiveNtB5_10LazyLevels11build_dense.exit.i

bb.mq:                                            ; preds = %bb.mm
  %i.aed = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #68, !noalias !23091
  unreachable

.loopexit.i43.i:                                  ; preds = %bb.mk
  %lpad.loopexit.i44.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.mr

.loopexit.split-lp.i26.i:                         ; preds = %.invoke.i25.i, %bb.lq
  %lpad.loopexit.split-lp.i27.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.mr

bb.mr:                                            ; preds = %.loopexit.split-lp.i26.i, %.loopexit.i43.i
  %lpad.phi.i.i = phi { ptr, i32 } [ %lpad.loopexit.i44.i, %.loopexit.i43.i ], [ %lpad.loopexit.split-lp.i27.i, %.loopexit.split-lp.i26.i ] ; 2 uses
  %.val.i28.i = load i64, ptr %i.w, align 8, !noalias !23078 ; 2 uses
  %i.aee = icmp eq i64 %.val.i28.i, 0
  br i1 %i.aee, label %.body.i29.i, label %bb.ms

bb.ms:                                            ; preds = %bb.mr
  %.val14.i.i = load ptr, ptr %i.aai, align 8, !noalias !23078, !nonnull !75, !noundef !75
  %i.aef = shl nuw i64 %.val.i28.i, 1
  call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.val14.i.i, i64 noundef %i.aef, i64 noundef range(i64 1, -9223372036854775807) 2) #63, !noalias !23078
  br label %.body.i29.i

bb.mt:                                            ; preds = %.body.i29.i
  %i.aeg = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #68, !noalias !23091
  unreachable

_RNvMs9_NtNtNtCsjjpCCFGI3ul_14lance_encoding9encodings8physical3rleNtB5_7RleRuns10into_owned.exit.i: ; preds = %bb.gu, %_RNvMs8_NtNtNtCsjjpCCFGI3ul_14lance_encoding9encodings8physical3rleNtB5_13RleRunLengths10into_owned.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ax), !noalias !22857
  call void @llvm.lifetime.start.p0(ptr nonnull %i.au), !noalias !22857
  store i64 1, ptr %i.au, align 8, !noalias !22857
  %i.aeh = getelementptr inbounds nuw i8, ptr %i.au, i64 8
  store i64 1, ptr %i.aeh, align 8, !noalias !22857
  %i.aei = getelementptr inbounds nuw i8, ptr %i.au, i64 16 ; 2 uses
  store i64 %.sroa.03.8, ptr %i.aei, align 8, !noalias !22857
  %.sroa.462.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.au, i64 24
  store ptr %.sroa.6.0.i.i, ptr %.sroa.462.0..sroa_idx.i, align 8, !noalias !22857
  %.sroa.563.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.au, i64 32
  store ptr %.sroa.9.0.i.i, ptr %.sroa.563.0..sroa_idx.i, align 8, !noalias !22857
  %.sroa.664.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.au, i64 40
  store i64 %.sroa.12.0.i.i, ptr %.sroa.664.0..sroa_idx.i, align 8, !noalias !22857
  %.sroa.765.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.au, i64 48
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.765.0..sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.7.i, i64 24, i1 false), !noalias !22857
  %.sroa.866.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.au, i64 72
  store <2 x i64> %i.rm, ptr %.sroa.866.0..sroa_idx.i, align 8, !noalias !22857
  call void @_RNvCs9hJ03s5DiqP_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #63, !noalias !23140
  %i.aej = call noundef align 8 dereferenceable_or_null(88) ptr @_RNvCs9hJ03s5DiqP_7___rustc12___rust_alloc(i64 noundef 88, i64 noundef range(i64 1, -9223372036854775807) 8) #63, !noalias !23140 ; 3 uses
  %i.aek = icmp eq ptr %i.aej, null
  br i1 %i.aek, label %bb.mu, label %bb.mx, !prof !77

end_hunk_5
begin_hunk_6_@_RNvMNtCsjjpCCFGI3ul_14lance_encoding6formatNtB2_13ProtobufUtils6binary:bb.a
  unreachable

bb.h:                                             ; preds = %bb.g
  %i.j = landingpad { ptr, i32 }
          cleanup
  %i.k = load i64, ptr %1, align 8, !range !116, !alias.scope !30938, !noundef !75
  %i.l = icmp eq i64 %i.k, -2
  br i1 %i.l, label %.body, label %bb.i

bb.i:                                             ; preds = %bb.h
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtNtNtCsjjpCCFGI3ul_14lance_encoding6format2pb14array_encoding13ArrayEncodingEBJ_(ptr noalias noundef nonnull readonly align 8 dereferenceable(56) %1)
          to label %.body unwind label %bb.j, !inline_history !8

bb.j:                                             ; preds = %bb.i
  %i.m = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #68
  unreachable

.body:                                            ; preds = %bb.i, %bb.h
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs40k4W9msRzi_5alloc5boxed3BoxNtNtNtCsjjpCCFGI3ul_14lance_encoding6format2pb13ArrayEncodingEEEB1C_(ptr nonnull %i.b) #67
          to label %.thread unwind label %bb.p

bb.k:                                             ; preds = %bb.f
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.h, ptr noundef nonnull align 8 dereferenceable(56) %1, i64 56, i1 false)
  store ptr %i.h, ptr %i.a, align 8
  %i.n = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr %i.b, ptr %i.n, align 8
  %i.o = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store i64 %3, ptr %i.o, align 8
  tail call void @_RNvCs9hJ03s5DiqP_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #63, !noalias !30939
  %i.p = tail call noundef align 8 dereferenceable_or_null(24) ptr @_RNvCs9hJ03s5DiqP_7___rustc12___rust_alloc(i64 noundef 24, i64 noundef range(i64 1, -9223372036854775807) 8) #63, !noalias !30939 ; 3 uses
  %i.q = icmp eq ptr %i.p, null
  br i1 %i.q, label %bb.l, label %bb.o, !prof !77

bb.l:                                             ; preds = %bb.k
  invoke void @_RNvNtCs40k4W9msRzi_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 24) #66
          to label %.noexc17 unwind label %bb.m

.noexc17:                                         ; preds = %bb.l
  unreachable

bb.m:                                             ; preds = %bb.l
  %i.r = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtNtCsjjpCCFGI3ul_14lance_encoding6format2pb6BinaryEBH_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.a) #67
          to label %.thread unwind label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.s = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #68
  unreachable

bb.o:                                             ; preds = %bb.k
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.p, ptr noundef nonnull align 8 dereferenceable(24) %i.a, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  store i64 -9223372036854775804, ptr %0, align 8
  %.sroa.42.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.p, ptr %.sroa.42.0..sroa_idx, align 8
  ret void

bb.p:                                             ; preds = %bb.r, %.body
  %i.t = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #68
  unreachable

.thread:                                          ; preds = %bb.q, %bb.r, %bb.m, %.body
  %.pn23 = phi { ptr, i32 } [ %i.j, %.body ], [ %i.r, %bb.m ], [ %i.d, %bb.q ], [ %i.d, %bb.r ]
  resume { ptr, i32 } %.pn23

bb.q:                                             ; preds = %bb.c, %bb.d
  %i.u = load i64, ptr %1, align 8, !range !116, !alias.scope !30940, !noundef !75
  %i.v = icmp eq i64 %i.u, -2
  br i1 %i.v, label %.thread, label %bb.r

bb.r:                                             ; preds = %bb.q
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtNtNtCsjjpCCFGI3ul_14lance_encoding6format2pb14array_encoding13ArrayEncodingEBJ_(ptr noalias noundef nonnull readonly align 8 dereferenceable(56) %1)
          to label %.thread unwind label %bb.p, !inline_history !8
}

; Function Attrs: nonlazybind uwtable
define void @_RNvMNtCsjjpCCFGI3ul_14lance_encoding6formatNtB2_13ProtobufUtils8constant(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([56 x i8]) align 8 captures(none) dereferenceable(56) %0, ptr noalias noundef align 8 captures(address) dead_on_return dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %.sroa.42.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call void @_RNvXsE_NtCs4XDKJNDGLq7_5bytes5bytesNtB5_5BytesINtNtCscI6d9CVNmLh_4core7convert4FromINtNtCs40k4W9msRzi_5alloc3vec3VechEE4from(ptr noalias noundef nonnull sret([32 x i8]) align 8 captures(address) dereferenceable(32) %.sroa.42.0..sroa_idx, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %1)
  store i64 -9223372036854775797, ptr %0, align 8
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RNvMNtCsjjpCCFGI3ul_14lance_encoding6repdefNtB2_24NormalizedStructuralPlan13to_serializer(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(160) %0, ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(32) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [144 x i8], align 8               ; 43 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.c = load i8, ptr %i.b, align 8, !range !89, !noundef !75
  %i.d = trunc nuw i8 %i.c to i1
  br i1 %i.d, label %bb.ae, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.f = load ptr, ptr %i.e, align 8, !nonnull !75, !noundef !75 ; 27 uses
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.h = load i64, ptr %i.g, align 8, !noundef !75 ; 7 uses
  %.not = icmp eq i64 %i.h, 0                     ; 3 uses
  %.idx = mul i64 %i.h, 80                        ; 6 uses
  %i.i = getelementptr i8, ptr %i.f, i64 %.idx    ; 3 uses
  %i.j = getelementptr i8, ptr %i.i, i64 -80      ; 2 uses
  %.not.i103 = icmp eq ptr %i.j, null
  %.not.i = or i1 %.not, %.not.i103
  br i1 %.not.i, label %_RINvMNtCscI6d9CVNmLh_4core6optionINtB3_6OptionRNtNtCsjjpCCFGI3ul_14lance_encoding6repdef9RawRepDefE6map_orjNvMs_BL_BJ_10num_valuesEBN_.exit, label %switch.lookup

switch.lookup:                                    ; preds = %bb.b
  %i.k = getelementptr i8, ptr %i.i, i64 -8
  %i.l = load i8, ptr %i.k, align 8, !range !131, !alias.scope !31079, !noundef !75 ; 2 uses
  %i.m = icmp samesign ugt i8 %i.l, 1
  %i.n = zext nneg i8 %i.l to i64
  %i.o = add nsw i64 %i.n, -1
  %i.p = select i1 %i.m, i64 %i.o, i64 0
  %switch.gep = getelementptr inbounds i8, ptr @switch.table._RNvMs4_NtCsjjpCCFGI3ul_14lance_encoding6repdefNtB5_13RepDefBuilder9normalize, i64 %i.p
  %switch.load = load i8, ptr %switch.gep, align 1
  %switch.ext = zext i8 %switch.load to i64
  %i.q = getelementptr inbounds nuw i8, ptr %i.j, i64 %switch.ext
  %.sroa.0.0.i.i.i = load i64, ptr %i.q, align 8, !alias.scope !31079, !noundef !75
  br label %_RINvMNtCscI6d9CVNmLh_4core6optionINtB3_6OptionRNtNtCsjjpCCFGI3ul_14lance_encoding6repdef9RawRepDefE6map_orjNvMs_BL_BJ_10num_valuesEBN_.exit

_RINvMNtCscI6d9CVNmLh_4core6optionINtB3_6OptionRNtNtCsjjpCCFGI3ul_14lance_encoding6repdef9RawRepDefE6map_orjNvMs_BL_BJ_10num_valuesEBN_.exit: ; preds = %bb.b, %switch.lookup
  %.sroa.02.0.i = phi i64 [ %.sroa.0.0.i.i.i, %switch.lookup ], [ 0, %bb.b ] ; 2 uses
  %i.r = icmp eq i64 %.idx, 0                     ; 2 uses
  br i1 %i.r, label %_RINvXs2J_NtNtCscI6d9CVNmLh_4core5slice4iterINtB7_4IterNtNtCsjjpCCFGI3ul_14lance_encoding6repdef9RawRepDefENtNtNtNtBb_4iter6traits8iterator8Iterator4foldtNCINvNtNtB1M_8adapters3map8map_foldRBQ_ttNvMs_BS_BQ_7max_defNCINvXsu_NtB1K_5accumtNtB3y_3Sum3sumINtB2w_3MapBF_B36_EE0E0EBU_.exit, label %bb.c

bb.c:                                             ; preds = %_RINvMNtCscI6d9CVNmLh_4core6optionINtB3_6OptionRNtNtCsjjpCCFGI3ul_14lance_encoding6repdef9RawRepDefE6map_orjNvMs_BL_BJ_10num_valuesEBN_.exit
  %i.s = udiv exact i64 %.idx, 80                 ; 10 uses
  %xtraiter = and i64 %i.s, 1
  %i.t = icmp eq i64 %.idx, 80
  br i1 %i.t, label %.epil.preheader, label %.new

.new:                                             ; preds = %bb.c
  %unroll_iter = and i64 %i.s, 288230376151711742
  br label %bb.d

bb.d:                                             ; preds = %bb.d, %.new
  %.sroa.04.0.i = phi i64 [ 0, %.new ], [ %i.ae, %bb.d ] ; 3 uses
  %.sroa.02.0.i30 = phi i64 [ 0, %.new ], [ %i.ad, %bb.d ]
  %niter = phi i64 [ 0, %.new ], [ %niter.next.1, %bb.d ]
  %i.u = getelementptr inbounds nuw [80 x i8], ptr %i.f, i64 %.sroa.04.0.i ; 2 uses
  %i.v = getelementptr i8, ptr %i.u, i64 64
  %.val.i = load i64, ptr %i.v, align 8
  %i.w = getelementptr i8, ptr %i.u, i64 72
  %.val13.i = load i8, ptr %i.w, align 8, !range !131, !noundef !75
  %i.x = icmp samesign ult i8 %.val13.i, 2
  %.sroa.0.0.i.i.i.i = select i1 %i.x, i64 %.val.i, i64 0
  %i.y = add i64 %.sroa.0.0.i.i.i.i, %.sroa.02.0.i30
  %i.z = getelementptr inbounds nuw [80 x i8], ptr %i.f, i64 %.sroa.04.0.i ; 2 uses
  %i.aa = getelementptr i8, ptr %i.z, i64 144
  %.val.i.1 = load i64, ptr %i.aa, align 8
  %i.ab = getelementptr i8, ptr %i.z, i64 152
  %.val13.i.1 = load i8, ptr %i.ab, align 8, !range !131, !noundef !75
  %i.ac = icmp samesign ult i8 %.val13.i.1, 2
  %.sroa.0.0.i.i.i.i.1 = select i1 %i.ac, i64 %.val.i.1, i64 0
  %i.ad = add i64 %.sroa.0.0.i.i.i.i.1, %i.y      ; 3 uses
  %i.ae = add nuw i64 %.sroa.04.0.i, 2            ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %iter.check.unr-lcssa, label %bb.d

iter.check.unr-lcssa:                             ; preds = %bb.d
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %iter.check, label %.epil.preheader

.epil.preheader:                                  ; preds = %iter.check.unr-lcssa, %bb.c
  %.sroa.04.0.i.epil.init = phi i64 [ 0, %bb.c ], [ %i.ae, %iter.check.unr-lcssa ]
  %.sroa.02.0.i30.epil.init = phi i64 [ 0, %bb.c ], [ %i.ad, %iter.check.unr-lcssa ]
  %lcmp.mod650 = trunc i64 %i.s to i1
  tail call void @llvm.assume(i1 %lcmp.mod650)
  %i.af = getelementptr inbounds nuw [80 x i8], ptr %i.f, i64 %.sroa.04.0.i.epil.init ; 2 uses
  %i.ag = getelementptr i8, ptr %i.af, i64 64
  %.val.i.epil = load i64, ptr %i.ag, align 8
  %i.ah = getelementptr i8, ptr %i.af, i64 72
  %.val13.i.epil = load i8, ptr %i.ah, align 8, !range !131, !noundef !75
  %i.ai = icmp samesign ult i8 %.val13.i.epil, 2
  %.sroa.0.0.i.i.i.i.epil = select i1 %i.ai, i64 %.val.i.epil, i64 0
  %i.aj = add i64 %.sroa.0.0.i.i.i.i.epil, %.sroa.02.0.i30.epil.init
  br label %iter.check

iter.check:                                       ; preds = %iter.check.unr-lcssa, %.epil.preheader
  %.lcssa648 = phi i64 [ %i.ad, %iter.check.unr-lcssa ], [ %i.aj, %.epil.preheader ]
  %min.iters.check = icmp ult i64 %.idx, 320
  br i1 %min.iters.check, label %vec.epilog.scalar.ph.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check452 = icmp ult i64 %.idx, 1280
  br i1 %min.iters.check452, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.ak = and i64 %i.s, 12
  %n.vec = and i64 %i.s, 288230376151711728       ; 4 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.ph, %vector.body
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 17 uses
  %vec.phi = phi <8 x i16> [ zeroinitializer, %vector.ph ], [ %i.db, %vector.body ]
  %vec.phi453 = phi <8 x i16> [ zeroinitializer, %vector.ph ], [ %i.dc, %vector.body ]
  %i.al = getelementptr inbounds nuw [80 x i8], ptr %i.f, i64 %index
  %i.am = getelementptr inbounds nuw [80 x i8], ptr %i.f, i64 %index
  %i.an = getelementptr inbounds nuw [80 x i8], ptr %i.f, i64 %index
  %i.ao = getelementptr inbounds nuw [80 x i8], ptr %i.f, i64 %index
  %i.ap = getelementptr inbounds nuw [80 x i8], ptr %i.f, i64 %index
  %i.aq = getelementptr inbounds nuw [80 x i8], ptr %i.f, i64 %index
  %i.ar = getelementptr inbounds nuw [80 x i8], ptr %i.f, i64 %index
  %i.as = getelementptr inbounds nuw [80 x i8], ptr %i.f, i64 %index
  %i.at = getelementptr inbounds nuw [80 x i8], ptr %i.f, i64 %index
  %i.au = getelementptr inbounds nuw [80 x i8], ptr %i.f, i64 %index
  %i.av = getelementptr inbounds nuw [80 x i8], ptr %i.f, i64 %index
  %i.aw = getelementptr inbounds nuw [80 x i8], ptr %i.f, i64 %index
  %i.ax = getelementptr inbounds nuw [80 x i8], ptr %i.f, i64 %index
  %i.ay = getelementptr inbounds nuw [80 x i8], ptr %i.f, i64 %index
  %i.az = getelementptr inbounds nuw [80 x i8], ptr %i.f, i64 %index
  %i.ba = getelementptr inbounds nuw [80 x i8], ptr %i.f, i64 %index
  %i.bb = getelementptr i8, ptr %i.al, i64 72
  %i.bc = getelementptr i8, ptr %i.am, i64 152
  %i.bd = getelementptr i8, ptr %i.an, i64 232
  %i.be = getelementptr i8, ptr %i.ao, i64 312
  %i.bf = getelementptr i8, ptr %i.ap, i64 392
  %i.bg = getelementptr i8, ptr %i.aq, i64 472
  %i.bh = getelementptr i8, ptr %i.ar, i64 552
  %i.bi = getelementptr i8, ptr %i.as, i64 632
  %i.bj = getelementptr i8, ptr %i.at, i64 712
  %i.bk = getelementptr i8, ptr %i.au, i64 792
  %i.bl = getelementptr i8, ptr %i.av, i64 872
  %i.bm = getelementptr i8, ptr %i.aw, i64 952
  %i.bn = getelementptr i8, ptr %i.ax, i64 1032
  %i.bo = getelementptr i8, ptr %i.ay, i64 1112
  %i.bp = getelementptr i8, ptr %i.az, i64 1192
  %i.bq = getelementptr i8, ptr %i.ba, i64 1272
  %i.br = load i8, ptr %i.bb, align 8, !range !131, !noundef !75
  %i.bs = load i8, ptr %i.bc, align 8, !range !131, !noundef !75
  %i.bt = load i8, ptr %i.bd, align 8, !range !131, !noundef !75
  %i.bu = load i8, ptr %i.be, align 8, !range !131, !noundef !75
  %i.bv = load i8, ptr %i.bf, align 8, !range !131, !noundef !75
  %i.bw = load i8, ptr %i.bg, align 8, !range !131, !noundef !75
  %i.bx = load i8, ptr %i.bh, align 8, !range !131, !noundef !75
  %i.by = load i8, ptr %i.bi, align 8, !range !131, !noundef !75
  %i.bz = insertelement <8 x i8> poison, i8 %i.br, i64 0
  %i.ca = insertelement <8 x i8> %i.bz, i8 %i.bs, i64 1
  %i.cb = insertelement <8 x i8> %i.ca, i8 %i.bt, i64 2
  %i.cc = insertelement <8 x i8> %i.cb, i8 %i.bu, i64 3
  %i.cd = insertelement <8 x i8> %i.cc, i8 %i.bv, i64 4
  %i.ce = insertelement <8 x i8> %i.cd, i8 %i.bw, i64 5
  %i.cf = insertelement <8 x i8> %i.ce, i8 %i.bx, i64 6
  %i.cg = insertelement <8 x i8> %i.cf, i8 %i.by, i64 7
  %i.ch = load i8, ptr %i.bj, align 8, !range !131, !noundef !75
  %i.ci = load i8, ptr %i.bk, align 8, !range !131, !noundef !75
  %i.cj = load i8, ptr %i.bl, align 8, !range !131, !noundef !75
  %i.ck = load i8, ptr %i.bm, align 8, !range !131, !noundef !75
  %i.cl = load i8, ptr %i.bn, align 8, !range !131, !noundef !75
  %i.cm = load i8, ptr %i.bo, align 8, !range !131, !noundef !75
  %i.cn = load i8, ptr %i.bp, align 8, !range !131, !noundef !75
  %i.co = load i8, ptr %i.bq, align 8, !range !131, !noundef !75
  %i.cp = insertelement <8 x i8> poison, i8 %i.ch, i64 0
  %i.cq = insertelement <8 x i8> %i.cp, i8 %i.ci, i64 1
  %i.cr = insertelement <8 x i8> %i.cq, i8 %i.cj, i64 2
  %i.cs = insertelement <8 x i8> %i.cr, i8 %i.ck, i64 3
  %i.ct = insertelement <8 x i8> %i.cs, i8 %i.cl, i64 4
  %i.cu = insertelement <8 x i8> %i.ct, i8 %i.cm, i64 5
  %i.cv = insertelement <8 x i8> %i.cu, i8 %i.cn, i64 6
  %i.cw = insertelement <8 x i8> %i.cv, i8 %i.co, i64 7
  %i.cx = icmp ult <8 x i8> %i.cg, splat (i8 2)
  %i.cy = icmp ult <8 x i8> %i.cw, splat (i8 2)
  %i.cz = zext <8 x i1> %i.cx to <8 x i16>
  %i.da = zext <8 x i1> %i.cy to <8 x i16>
  %i.db = add <8 x i16> %vec.phi, %i.cz           ; 2 uses
  %i.dc = add <8 x i16> %vec.phi453, %i.da        ; 2 uses
  %index.next = add nuw i64 %index, 16            ; 2 uses
  %i.dd = icmp eq i64 %index.next, %n.vec
  br i1 %i.dd, label %middle.block, label %vector.body, !llvm.loop !30947

middle.block:                                     ; preds = %vector.body
  %bin.rdx = add <8 x i16> %i.dc, %i.db
  %i.de = tail call i16 @llvm.vector.reduce.add.v8i16(<8 x i16> %bin.rdx) ; 3 uses
  %cmp.n = icmp eq i64 %i.s, %n.vec
  br i1 %cmp.n, label %_RINvXs2J_NtNtCscI6d9CVNmLh_4core5slice4iterINtB7_4IterNtNtCsjjpCCFGI3ul_14lance_encoding6repdef9RawRepDefENtNtNtNtBb_4iter6traits8iterator8Iterator4foldtNCINvNtNtB1M_8adapters3map8map_foldRBQ_ttNvMs_BS_BQ_7max_repNCINvXsu_NtB1K_5accumtNtB3y_3Sum3sumINtB2w_3MapBF_B36_EE0E0EBU_.exit, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.ak, 0
  br i1 %min.epilog.iters.check, label %vec.epilog.scalar.ph.preheader, label %vec.epilog.ph, !prof !101

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %bc.merge.rdx = phi i16 [ %i.de, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec454 = and i64 %i.s, 288230376151711740    ; 3 uses
  %i.df = insertelement <4 x i16> <i16 poison, i16 0, i16 0, i16 0>, i16 %bc.merge.rdx, i64 0
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index455 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next457, %vec.epilog.vector.body ] ; 5 uses
  %vec.phi456 = phi <4 x i16> [ %i.df, %vec.epilog.ph ], [ %i.dy, %vec.epilog.vector.body ]
  %i.dg = getelementptr inbounds nuw [80 x i8], ptr %i.f, i64 %index455
  %i.dh = getelementptr inbounds nuw [80 x i8], ptr %i.f, i64 %index455
  %i.di = getelementptr inbounds nuw [80 x i8], ptr %i.f, i64 %index455
  %i.dj = getelementptr inbounds nuw [80 x i8], ptr %i.f, i64 %index455
  %i.dk = getelementptr i8, ptr %i.dg, i64 72
  %i.dl = getelementptr i8, ptr %i.dh, i64 152
  %i.dm = getelementptr i8, ptr %i.di, i64 232
  %i.dn = getelementptr i8, ptr %i.dj, i64 312
  %i.do = load i8, ptr %i.dk, align 8, !range !131, !noundef !75
  %i.dp = load i8, ptr %i.dl, align 8, !range !131, !noundef !75
  %i.dq = load i8, ptr %i.dm, align 8, !range !131, !noundef !75
  %i.dr = load i8, ptr %i.dn, align 8, !range !131, !noundef !75
  %i.ds = insertelement <4 x i8> poison, i8 %i.do, i64 0
  %i.dt = insertelement <4 x i8> %i.ds, i8 %i.dp, i64 1
  %i.du = insertelement <4 x i8> %i.dt, i8 %i.dq, i64 2
  %i.dv = insertelement <4 x i8> %i.du, i8 %i.dr, i64 3
  %i.dw = icmp samesign ult <4 x i8> %i.dv, splat (i8 2)
  %i.dx = zext <4 x i1> %i.dw to <4 x i16>
  %i.dy = add <4 x i16> %vec.phi456, %i.dx        ; 2 uses
  %index.next457 = add nuw i64 %index455, 4       ; 2 uses
  %i.dz = icmp eq i64 %index.next457, %n.vec454
  br i1 %i.dz, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !30948

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %i.ea = tail call i16 @llvm.vector.reduce.add.v4i16(<4 x i16> %i.dy) ; 2 uses
  %cmp.n458 = icmp eq i64 %i.s, %n.vec454
  br i1 %cmp.n458, label %_RINvXs2J_NtNtCscI6d9CVNmLh_4core5slice4iterINtB7_4IterNtNtCsjjpCCFGI3ul_14lance_encoding6repdef9RawRepDefENtNtNtNtBb_4iter6traits8iterator8Iterator4foldtNCINvNtNtB1M_8adapters3map8map_foldRBQ_ttNvMs_BS_BQ_7max_repNCINvXsu_NtB1K_5accumtNtB3y_3Sum3sumINtB2w_3MapBF_B36_EE0E0EBU_.exit, label %vec.epilog.scalar.ph.preheader

vec.epilog.scalar.ph.preheader:                   ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.sroa.04.0.i31.ph = phi i64 [ 0, %iter.check ], [ %n.vec, %vec.epilog.iter.check ], [ %n.vec454, %vec.epilog.middle.block ]
  %.sroa.02.0.i32.ph = phi i16 [ 0, %iter.check ], [ %i.de, %vec.epilog.iter.check ], [ %i.ea, %vec.epilog.middle.block ]
  br label %vec.epilog.scalar.ph

vec.epilog.scalar.ph:                             ; preds = %vec.epilog.scalar.ph.preheader, %vec.epilog.scalar.ph
  %.sroa.04.0.i31 = phi i64 [ %i.ef, %vec.epilog.scalar.ph ], [ %.sroa.04.0.i31.ph, %vec.epilog.scalar.ph.preheader ] ; 2 uses
  %.sroa.02.0.i32 = phi i16 [ %i.ee, %vec.epilog.scalar.ph ], [ %.sroa.02.0.i32.ph, %vec.epilog.scalar.ph.preheader ]
  %i.eb = getelementptr inbounds nuw [80 x i8], ptr %i.f, i64 %.sroa.04.0.i31
  %i.ec = getelementptr i8, ptr %i.eb, i64 72
  %.val.i33 = load i8, ptr %i.ec, align 8, !range !131, !noundef !75
  %i.ed = icmp samesign ult i8 %.val.i33, 2
  %..i.i.i.i = zext i1 %i.ed to i16
  %i.ee = add i16 %.sroa.02.0.i32, %..i.i.i.i     ; 2 uses
  %i.ef = add nuw i64 %.sroa.04.0.i31, 1          ; 2 uses
  %i.eg = icmp eq i64 %i.ef, %i.s
  br i1 %i.eg, label %_RINvXs2J_NtNtCscI6d9CVNmLh_4core5slice4iterINtB7_4IterNtNtCsjjpCCFGI3ul_14lance_encoding6repdef9RawRepDefENtNtNtNtBb_4iter6traits8iterator8Iterator4foldtNCINvNtNtB1M_8adapters3map8map_foldRBQ_ttNvMs_BS_BQ_7max_repNCINvXsu_NtB1K_5accumtNtB3y_3Sum3sumINtB2w_3MapBF_B36_EE0E0EBU_.exit, label %vec.epilog.scalar.ph, !llvm.loop !30949

_RINvXs2J_NtNtCscI6d9CVNmLh_4core5slice4iterINtB7_4IterNtNtCsjjpCCFGI3ul_14lance_encoding6repdef9RawRepDefENtNtNtNtBb_4iter6traits8iterator8Iterator4foldtNCINvNtNtB1M_8adapters3map8map_foldRBQ_ttNvMs_BS_BQ_7max_repNCINvXsu_NtB1K_5accumtNtB3y_3Sum3sumINtB2w_3MapBF_B36_EE0E0EBU_.exit: ; preds = %vec.epilog.scalar.ph, %vec.epilog.middle.block, %middle.block
  %.lcssa450 = phi i16 [ %i.ea, %vec.epilog.middle.block ], [ %i.de, %middle.block ], [ %i.ee, %vec.epilog.scalar.ph ]
  %i.eh = add i64 %.lcssa648, %.sroa.02.0.i
  br label %bb.e

bb.e:                                             ; preds = %_RNCINvNtNtNtCscI6d9CVNmLh_4core4iter8adapters3map8map_foldRNtNtCsjjpCCFGI3ul_14lance_encoding6repdef9RawRepDefttNvMs_BX_BV_7max_defNCINvXsu_NtNtB8_6traits5accumtNtB2e_3Sum3sumINtB4_3MapINtNtNtBa_5slice4iter4IterBV_EB1M_EE0E0BZ_.exit.i, %_RINvXs2J_NtNtCscI6d9CVNmLh_4core5slice4iterINtB7_4IterNtNtCsjjpCCFGI3ul_14lance_encoding6repdef9RawRepDefENtNtNtNtBb_4iter6traits8iterator8Iterator4foldtNCINvNtNtB1M_8adapters3map8map_foldRBQ_ttNvMs_BS_BQ_7max_repNCINvXsu_NtB1K_5accumtNtB3y_3Sum3sumINtB2w_3MapBF_B36_EE0E0EBU_.exit
  %.sroa.04.0.i35 = phi i64 [ 0, %_RINvXs2J_NtNtCscI6d9CVNmLh_4core5slice4iterINtB7_4IterNtNtCsjjpCCFGI3ul_14lance_encoding6repdef9RawRepDefENtNtNtNtBb_4iter6traits8iterator8Iterator4foldtNCINvNtNtB1M_8adapters3map8map_foldRBQ_ttNvMs_BS_BQ_7max_repNCINvXsu_NtB1K_5accumtNtB3y_3Sum3sumINtB2w_3MapBF_B36_EE0E0EBU_.exit ], [ %i.fa, %_RNCINvNtNtNtCscI6d9CVNmLh_4core4iter8adapters3map8map_foldRNtNtCsjjpCCFGI3ul_14lance_encoding6repdef9RawRepDefttNvMs_BX_BV_7max_defNCINvXsu_NtNtB8_6traits5accumtNtB2e_3Sum3sumINtB4_3MapINtNtNtBa_5slice4iter4IterBV_EB1M_EE0E0BZ_.exit.i ] ; 2 uses
  %.sroa.02.0.i36 = phi i16 [ 0, %_RINvXs2J_NtNtCscI6d9CVNmLh_4core5slice4iterINtB7_4IterNtNtCsjjpCCFGI3ul_14lance_encoding6repdef9RawRepDefENtNtNtNtBb_4iter6traits8iterator8Iterator4foldtNCINvNtNtB1M_8adapters3map8map_foldRBQ_ttNvMs_BS_BQ_7max_repNCINvXsu_NtB1K_5accumtNtB3y_3Sum3sumINtB2w_3MapBF_B36_EE0E0EBU_.exit ], [ %i.ez, %_RNCINvNtNtNtCscI6d9CVNmLh_4core4iter8adapters3map8map_foldRNtNtCsjjpCCFGI3ul_14lance_encoding6repdef9RawRepDefttNvMs_BX_BV_7max_defNCINvXsu_NtNtB8_6traits5accumtNtB2e_3Sum3sumINtB4_3MapINtNtNtBa_5slice4iter4IterBV_EB1M_EE0E0BZ_.exit.i ]
  %i.ei = getelementptr inbounds nuw [80 x i8], ptr %i.f, i64 %.sroa.04.0.i35 ; 4 uses
  %i.ej = getelementptr inbounds nuw i8, ptr %i.ei, i64 72
  %i.ek = load i8, ptr %i.ej, align 8, !range !131, !alias.scope !31080, !noundef !75 ; 3 uses
  %i.el = icmp samesign ugt i8 %i.ek, 1
  %i.em = zext nneg i8 %i.ek to i64
  %i.en = add nsw i64 %i.em, -1
  %i.eo = select i1 %i.el, i64 %i.en, i64 0
  switch i64 %i.eo, label %bb.f [
    i64 0, label %bb.g
    i64 1, label %bb.h
    i64 2, label %bb.i
  ]

bb.f:                                             ; preds = %bb.e
  unreachable

bb.g:                                             ; preds = %bb.e
  %i.ep = and i8 %i.ek, 1
  %spec.select.i.i.i.i = zext nneg i8 %i.ep to i16
  %i.eq = getelementptr inbounds nuw i8, ptr %i.ei, i64 16
  %i.er = load ptr, ptr %i.eq, align 8, !alias.scope !31080, !noundef !75
  %.not.i.i.i.i = icmp ne ptr %i.er, null
  %i.es = zext i1 %.not.i.i.i.i to i16
  %spec.select3.i.i.i.i = add nuw nsw i16 %i.es, %spec.select.i.i.i.i
  br label %_RNCINvNtNtNtCscI6d9CVNmLh_4core4iter8adapters3map8map_foldRNtNtCsjjpCCFGI3ul_14lance_encoding6repdef9RawRepDefttNvMs_BX_BV_7max_defNCINvXsu_NtNtB8_6traits5accumtNtB2e_3Sum3sumINtB4_3MapINtNtNtBa_5slice4iter4IterBV_EB1M_EE0E0BZ_.exit.i

bb.h:                                             ; preds = %bb.e
  %i.et = load ptr, ptr %i.ei, align 8, !alias.scope !31080, !noundef !75
  %i.eu = icmp ne ptr %i.et, null
  %i.ev = zext i1 %i.eu to i16
  br label %_RNCINvNtNtNtCscI6d9CVNmLh_4core4iter8adapters3map8map_foldRNtNtCsjjpCCFGI3ul_14lance_encoding6repdef9RawRepDefttNvMs_BX_BV_7max_defNCINvXsu_NtNtB8_6traits5accumtNtB2e_3Sum3sumINtB4_3MapINtNtNtBa_5slice4iter4IterBV_EB1M_EE0E0BZ_.exit.i

bb.i:                                             ; preds = %bb.e
  %i.ew = load ptr, ptr %i.ei, align 8, !alias.scope !31080, !noundef !75
  %i.ex = icmp ne ptr %i.ew, null
  %i.ey = zext i1 %i.ex to i16
  br label %_RNCINvNtNtNtCscI6d9CVNmLh_4core4iter8adapters3map8map_foldRNtNtCsjjpCCFGI3ul_14lance_encoding6repdef9RawRepDefttNvMs_BX_BV_7max_defNCINvXsu_NtNtB8_6traits5accumtNtB2e_3Sum3sumINtB4_3MapINtNtNtBa_5slice4iter4IterBV_EB1M_EE0E0BZ_.exit.i

_RNCINvNtNtNtCscI6d9CVNmLh_4core4iter8adapters3map8map_foldRNtNtCsjjpCCFGI3ul_14lance_encoding6repdef9RawRepDefttNvMs_BX_BV_7max_defNCINvXsu_NtNtB8_6traits5accumtNtB2e_3Sum3sumINtB4_3MapINtNtNtBa_5slice4iter4IterBV_EB1M_EE0E0BZ_.exit.i: ; preds = %bb.i, %bb.h, %bb.g
  %.sroa.0.1.i.i.i.i = phi i16 [ %i.ey, %bb.i ], [ %spec.select3.i.i.i.i, %bb.g ], [ %i.ev, %bb.h ]
  %i.ez = add i16 %.sroa.0.1.i.i.i.i, %.sroa.02.0.i36 ; 2 uses
  %i.fa = add nuw i64 %.sroa.04.0.i35, 1          ; 2 uses
  %i.fb = icmp eq i64 %i.fa, %i.s
  br i1 %i.fb, label %_RINvXs2J_NtNtCscI6d9CVNmLh_4core5slice4iterINtB7_4IterNtNtCsjjpCCFGI3ul_14lance_encoding6repdef9RawRepDefENtNtNtNtBb_4iter6traits8iterator8Iterator4foldtNCINvNtNtB1M_8adapters3map8map_foldRBQ_ttNvMs_BS_BQ_7max_defNCINvXsu_NtB1K_5accumtNtB3y_3Sum3sumINtB2w_3MapBF_B36_EE0E0EBU_.exit, label %bb.e

_RINvXs2J_NtNtCscI6d9CVNmLh_4core5slice4iterINtB7_4IterNtNtCsjjpCCFGI3ul_14lance_encoding6repdef9RawRepDefENtNtNtNtBb_4iter6traits8iterator8Iterator4foldtNCINvNtNtB1M_8adapters3map8map_foldRBQ_ttNvMs_BS_BQ_7max_defNCINvXsu_NtB1K_5accumtNtB3y_3Sum3sumINtB2w_3MapBF_B36_EE0E0EBU_.exit: ; preds = %_RNCINvNtNtNtCscI6d9CVNmLh_4core4iter8adapters3map8map_foldRNtNtCsjjpCCFGI3ul_14lance_encoding6repdef9RawRepDefttNvMs_BX_BV_7max_defNCINvXsu_NtNtB8_6traits5accumtNtB2e_3Sum3sumINtB4_3MapINtNtNtBa_5slice4iter4IterBV_EB1M_EE0E0BZ_.exit.i, %_RINvMNtCscI6d9CVNmLh_4core6optionINtB3_6OptionRNtNtCsjjpCCFGI3ul_14lance_encoding6repdef9RawRepDefE6map_orjNvMs_BL_BJ_10num_valuesEBN_.exit
  %.sroa.0.0.i34102 = phi i16 [ 0, %_RINvMNtCscI6d9CVNmLh_4core6optionINtB3_6OptionRNtNtCsjjpCCFGI3ul_14lance_encoding6repdef9RawRepDefE6map_orjNvMs_BL_BJ_10num_valuesEBN_.exit ], [ %.lcssa450, %_RNCINvNtNtNtCscI6d9CVNmLh_4core4iter8adapters3map8map_foldRNtNtCsjjpCCFGI3ul_14lance_encoding6repdef9RawRepDefttNvMs_BX_BV_7max_defNCINvXsu_NtNtB8_6traits5accumtNtB2e_3Sum3sumINtB4_3MapINtNtNtBa_5slice4iter4IterBV_EB1M_EE0E0BZ_.exit.i ] ; 3 uses
  %i.fc = phi i64 [ %.sroa.02.0.i, %_RINvMNtCscI6d9CVNmLh_4core6optionINtB3_6OptionRNtNtCsjjpCCFGI3ul_14lance_encoding6repdef9RawRepDefE6map_orjNvMs_BL_BJ_10num_valuesEBN_.exit ], [ %i.eh, %_RNCINvNtNtNtCscI6d9CVNmLh_4core4iter8adapters3map8map_foldRNtNtCsjjpCCFGI3ul_14lance_encoding6repdef9RawRepDefttNvMs_BX_BV_7max_defNCINvXsu_NtNtB8_6traits5accumtNtB2e_3Sum3sumINtB4_3MapINtNtNtBa_5slice4iter4IterBV_EB1M_EE0E0BZ_.exit.i ] ; 12 uses
  %.sroa.0.0.i37 = phi i16 [ 0, %_RINvMNtCscI6d9CVNmLh_4core6optionINtB3_6OptionRNtNtCsjjpCCFGI3ul_14lance_encoding6repdef9RawRepDefE6map_orjNvMs_BL_BJ_10num_valuesEBN_.exit ], [ %i.ez, %_RNCINvNtNtNtCscI6d9CVNmLh_4core4iter8adapters3map8map_foldRNtNtCsjjpCCFGI3ul_14lance_encoding6repdef9RawRepDefttNvMs_BX_BV_7max_defNCINvXsu_NtNtB8_6traits5accumtNtB2e_3Sum3sumINtB4_3MapINtNtNtBa_5slice4iter4IterBV_EB1M_EE0E0BZ_.exit.i ] ; 3 uses
end_hunk_6
begin_hunk_7_@_RNvMs1_NtCs40k4W9msRzi_5alloc3vecINtB5_3VeclE6resizeCsjjpCCFGI3ul_14lance_encoding:bb.a
  %broadcast.splat = shufflevector <4 x i32> %broadcast.splatinsert, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.t = shl i64 %index, 2
  %next.gep = getelementptr i8, ptr %i.m, i64 %i.t ; 2 uses
  %i.u = getelementptr i8, ptr %next.gep, i64 16
  store <4 x i32> %broadcast.splat, ptr %next.gep, align 4, !noalias !35228
  store <4 x i32> %broadcast.splat, ptr %i.u, align 4, !noalias !35228
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.v = icmp eq i64 %index.next, %n.vec
  br i1 %i.v, label %middle.block, label %vector.body, !llvm.loop !35226

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.p, %n.vec
  br i1 %cmp.n, label %._crit_edge.thread.i, label %.lr.ph.i.preheader7

.lr.ph.i.preheader7:                              ; preds = %.lr.ph.i.preheader, %middle.block
  %.sroa.0.021.i.ph = phi ptr [ %i.m, %.lr.ph.i.preheader ], [ %i.r, %middle.block ]
  %.sroa.03.020.i.ph = phi i64 [ 1, %.lr.ph.i.preheader ], [ %i.s, %middle.block ]
  br label %.lr.ph.i

._crit_edge.thread.i:                             ; preds = %.lr.ph.i, %middle.block
  %.lcssa = phi ptr [ %i.r, %middle.block ], [ %i.aa, %.lr.ph.i ]
  %i.w = add i64 %i.e, -1
  %i.x = add i64 %i.w, %i.i
  br label %._crit_edge.i

._crit_edge.i:                                    ; preds = %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VeclE7reserveCsjjpCCFGI3ul_14lance_encoding.exit.i, %._crit_edge.thread.i
  %.sroa.0.0.lcssa28.i = phi ptr [ %.lcssa, %._crit_edge.thread.i ], [ %i.m, %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VeclE7reserveCsjjpCCFGI3ul_14lance_encoding.exit.i ]
  %storemerge.lcssa27.i = phi i64 [ %i.x, %._crit_edge.thread.i ], [ %i.i, %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VeclE7reserveCsjjpCCFGI3ul_14lance_encoding.exit.i ]
  store i32 %2, ptr %.sroa.0.0.lcssa28.i, align 4, !noalias !35228
  %i.y = add i64 %storemerge.lcssa27.i, 1
  br label %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VeclE8truncateCsjjpCCFGI3ul_14lance_encoding.exit

.lr.ph.i:                                         ; preds = %.lr.ph.i.preheader7, %.lr.ph.i
  %.sroa.0.021.i = phi ptr [ %i.aa, %.lr.ph.i ], [ %.sroa.0.021.i.ph, %.lr.ph.i.preheader7 ] ; 2 uses
  %.sroa.03.020.i = phi i64 [ %i.z, %.lr.ph.i ], [ %.sroa.03.020.i.ph, %.lr.ph.i.preheader7 ]
  %i.z = add nuw i64 %.sroa.03.020.i, 1           ; 2 uses
  store i32 %2, ptr %.sroa.0.021.i, align 4, !noalias !35228
  %i.aa = getelementptr inbounds nuw i8, ptr %.sroa.0.021.i, i64 4 ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.z, %i.e
  br i1 %exitcond.not.i, label %._crit_edge.thread.i, label %.lr.ph.i, !llvm.loop !35227

_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VeclE8truncateCsjjpCCFGI3ul_14lance_encoding.exit: ; preds = %._crit_edge.i, %bb.a
  %storemerge = phi i64 [ %1, %bb.a ], [ %i.y, %._crit_edge.i ]
  store i64 %storemerge, ptr %i.a, align 8
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RNvMs1_NtCs40k4W9msRzi_5alloc3vecINtB5_3VecmE6resizeCsjjpCCFGI3ul_14lance_encoding(ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(24) %0, i64 noundef %1, i32 noundef %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.b = load i64, ptr %i.a, align 8, !noundef !75 ; 7 uses
  %i.c = icmp ult i64 %i.b, 2305843009213693952
  tail call void @llvm.assume(i1 %i.c)
  %i.d = icmp ugt i64 %1, %i.b
  br i1 %i.d, label %bb.b, label %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecmE8truncateCsjjpCCFGI3ul_14lance_encoding.exit

bb.b:                                             ; preds = %bb.a
  %i.e = sub nuw i64 %1, %i.b                     ; 5 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !35236)
  %i.f = load i64, ptr %0, align 8, !range !76, !alias.scope !35237, !noundef !75
  %i.g = sub nsw i64 %i.f, %i.b
  %i.h = icmp ugt i64 %i.e, %i.g
  br i1 %i.h, label %bb.c, label %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecmE7reserveCsjjpCCFGI3ul_14lance_encoding.exit.i, !prof !81

bb.c:                                             ; preds = %bb.b
  tail call fastcc void @_RINvNvMs2_NtCs40k4W9msRzi_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECsjjpCCFGI3ul_14lance_encoding(ptr noalias noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %i.b, i64 noundef %i.e, i64 noundef 4, i64 noundef 4)
  %.pre.i = load i64, ptr %i.a, align 8, !alias.scope !35236
  br label %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecmE7reserveCsjjpCCFGI3ul_14lance_encoding.exit.i

_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecmE7reserveCsjjpCCFGI3ul_14lance_encoding.exit.i: ; preds = %bb.c, %bb.b
  %i.i = phi i64 [ %i.b, %bb.b ], [ %.pre.i, %bb.c ] ; 4 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.k = load ptr, ptr %i.j, align 8, !alias.scope !35236, !nonnull !75, !noundef !75
  %i.l = icmp ult i64 %i.i, 2305843009213693952
  tail call void @llvm.assume(i1 %i.l)
  %i.m = getelementptr inbounds nuw [4 x i8], ptr %i.k, i64 %i.i ; 4 uses
  %i.n = icmp ugt i64 %i.e, 1
  br i1 %i.n, label %.lr.ph.i.preheader, label %._crit_edge.i

.lr.ph.i.preheader:                               ; preds = %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecmE7reserveCsjjpCCFGI3ul_14lance_encoding.exit.i
  %i.o = xor i64 %i.b, -1
  %i.p = add i64 %1, %i.o                         ; 3 uses
  %min.iters.check = icmp ult i64 %i.p, 8
  br i1 %min.iters.check, label %.lr.ph.i.preheader7, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.preheader
  %n.vec = and i64 %i.p, -8                       ; 4 uses
  %i.q = shl i64 %n.vec, 2
  %i.r = getelementptr i8, ptr %i.m, i64 %i.q     ; 2 uses
  %i.s = or disjoint i64 %n.vec, 1
  %broadcast.splatinsert = insertelement <4 x i32> poison, i32 %2, i64 0
  %broadcast.splat = shufflevector <4 x i32> %broadcast.splatinsert, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.t = shl i64 %index, 2
  %next.gep = getelementptr i8, ptr %i.m, i64 %i.t ; 2 uses
  %i.u = getelementptr i8, ptr %next.gep, i64 16
  store <4 x i32> %broadcast.splat, ptr %next.gep, align 4, !noalias !35236
  store <4 x i32> %broadcast.splat, ptr %i.u, align 4, !noalias !35236
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.v = icmp eq i64 %index.next, %n.vec
  br i1 %i.v, label %middle.block, label %vector.body, !llvm.loop !35234

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.p, %n.vec
  br i1 %cmp.n, label %._crit_edge.thread.i, label %.lr.ph.i.preheader7

.lr.ph.i.preheader7:                              ; preds = %.lr.ph.i.preheader, %middle.block
  %.sroa.0.021.i.ph = phi ptr [ %i.m, %.lr.ph.i.preheader ], [ %i.r, %middle.block ]
  %.sroa.03.020.i.ph = phi i64 [ 1, %.lr.ph.i.preheader ], [ %i.s, %middle.block ]
  br label %.lr.ph.i

._crit_edge.thread.i:                             ; preds = %.lr.ph.i, %middle.block
  %.lcssa = phi ptr [ %i.r, %middle.block ], [ %i.aa, %.lr.ph.i ]
  %i.w = add i64 %i.e, -1
  %i.x = add i64 %i.w, %i.i
  br label %._crit_edge.i

._crit_edge.i:                                    ; preds = %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecmE7reserveCsjjpCCFGI3ul_14lance_encoding.exit.i, %._crit_edge.thread.i
  %.sroa.0.0.lcssa28.i = phi ptr [ %.lcssa, %._crit_edge.thread.i ], [ %i.m, %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecmE7reserveCsjjpCCFGI3ul_14lance_encoding.exit.i ]
  %storemerge.lcssa27.i = phi i64 [ %i.x, %._crit_edge.thread.i ], [ %i.i, %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecmE7reserveCsjjpCCFGI3ul_14lance_encoding.exit.i ]
  store i32 %2, ptr %.sroa.0.0.lcssa28.i, align 4, !noalias !35236
  %i.y = add i64 %storemerge.lcssa27.i, 1
  br label %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecmE8truncateCsjjpCCFGI3ul_14lance_encoding.exit

.lr.ph.i:                                         ; preds = %.lr.ph.i.preheader7, %.lr.ph.i
  %.sroa.0.021.i = phi ptr [ %i.aa, %.lr.ph.i ], [ %.sroa.0.021.i.ph, %.lr.ph.i.preheader7 ] ; 2 uses
  %.sroa.03.020.i = phi i64 [ %i.z, %.lr.ph.i ], [ %.sroa.03.020.i.ph, %.lr.ph.i.preheader7 ]
  %i.z = add nuw i64 %.sroa.03.020.i, 1           ; 2 uses
  store i32 %2, ptr %.sroa.0.021.i, align 4, !noalias !35236
  %i.aa = getelementptr inbounds nuw i8, ptr %.sroa.0.021.i, i64 4 ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.z, %i.e
  br i1 %exitcond.not.i, label %._crit_edge.thread.i, label %.lr.ph.i, !llvm.loop !35235

_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecmE8truncateCsjjpCCFGI3ul_14lance_encoding.exit: ; preds = %._crit_edge.i, %bb.a
  %storemerge = phi i64 [ %1, %bb.a ], [ %i.y, %._crit_edge.i ]
  store i64 %storemerge, ptr %i.a, align 8
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RNvMs1_NtCs40k4W9msRzi_5alloc3vecINtB5_3VectE6resizeCsjjpCCFGI3ul_14lance_encoding(ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(24) %0, i64 noundef %1, i16 noundef %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.b = load i64, ptr %i.a, align 8, !noundef !75 ; 7 uses
  %i.c = icmp ult i64 %i.b, 4611686018427387904
  tail call void @llvm.assume(i1 %i.c)
  %i.d = icmp ugt i64 %1, %i.b
  br i1 %i.d, label %bb.b, label %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VectE8truncateCsjjpCCFGI3ul_14lance_encoding.exit

bb.b:                                             ; preds = %bb.a
  %i.e = sub nuw i64 %1, %i.b                     ; 5 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !35245)
  %i.f = load i64, ptr %0, align 8, !range !76, !alias.scope !35246, !noundef !75
  %i.g = sub nsw i64 %i.f, %i.b
  %i.h = icmp ugt i64 %i.e, %i.g
  br i1 %i.h, label %bb.c, label %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VectE7reserveCsjjpCCFGI3ul_14lance_encoding.exit.i, !prof !81

bb.c:                                             ; preds = %bb.b
  tail call fastcc void @_RINvNvMs2_NtCs40k4W9msRzi_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECsjjpCCFGI3ul_14lance_encoding(ptr noalias noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %i.b, i64 noundef %i.e, i64 noundef 2, i64 noundef 2)
  %.pre.i = load i64, ptr %i.a, align 8, !alias.scope !35245
  br label %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VectE7reserveCsjjpCCFGI3ul_14lance_encoding.exit.i

_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VectE7reserveCsjjpCCFGI3ul_14lance_encoding.exit.i: ; preds = %bb.c, %bb.b
  %i.i = phi i64 [ %i.b, %bb.b ], [ %.pre.i, %bb.c ] ; 4 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.k = load ptr, ptr %i.j, align 8, !alias.scope !35245, !nonnull !75, !noundef !75
  %i.l = icmp ult i64 %i.i, 4611686018427387904
  tail call void @llvm.assume(i1 %i.l)
  %i.m = getelementptr inbounds nuw [2 x i8], ptr %i.k, i64 %i.i ; 6 uses
  %i.n = icmp ugt i64 %i.e, 1
  br i1 %i.n, label %iter.check, label %._crit_edge.i

iter.check:                                       ; preds = %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VectE7reserveCsjjpCCFGI3ul_14lance_encoding.exit.i
  %i.o = xor i64 %i.b, -1
  %i.p = add i64 %1, %i.o                         ; 7 uses
  %min.iters.check = icmp ult i64 %i.p, 4
  br i1 %min.iters.check, label %.lr.ph.i.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check6 = icmp ult i64 %i.p, 16
  br i1 %min.iters.check6, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.q = and i64 %i.p, 12
  %n.vec = and i64 %i.p, -16                      ; 5 uses
  %i.r = shl i64 %n.vec, 1
  %i.s = getelementptr i8, ptr %i.m, i64 %i.r     ; 2 uses
  %i.t = or disjoint i64 %n.vec, 1
  %broadcast.splatinsert = insertelement <8 x i16> poison, i16 %2, i64 0
  %broadcast.splat = shufflevector <8 x i16> %broadcast.splatinsert, <8 x i16> poison, <8 x i32> zeroinitializer ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.ph, %vector.body
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.u = shl i64 %index, 1
  %next.gep = getelementptr i8, ptr %i.m, i64 %i.u ; 2 uses
  %i.v = getelementptr i8, ptr %next.gep, i64 16
  store <8 x i16> %broadcast.splat, ptr %next.gep, align 2, !noalias !35245
  store <8 x i16> %broadcast.splat, ptr %i.v, align 2, !noalias !35245
  %index.next = add nuw i64 %index, 16            ; 2 uses
  %i.w = icmp eq i64 %index.next, %n.vec
  br i1 %i.w, label %middle.block, label %vector.body, !llvm.loop !35242

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.p, %n.vec
  br i1 %cmp.n, label %._crit_edge.thread.i, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.q, 0
  br i1 %min.epilog.iters.check, label %.lr.ph.i.preheader, label %vec.epilog.ph, !prof !101

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec8 = and i64 %i.p, -4                      ; 4 uses
  %i.x = shl i64 %n.vec8, 1
  %i.y = getelementptr i8, ptr %i.m, i64 %i.x     ; 2 uses
  %i.z = or disjoint i64 %n.vec8, 1
  %broadcast.splatinsert9 = insertelement <4 x i16> poison, i16 %2, i64 0
  %broadcast.splat10 = shufflevector <4 x i16> %broadcast.splatinsert9, <4 x i16> poison, <4 x i32> zeroinitializer
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index11 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next13, %vec.epilog.vector.body ] ; 2 uses
  %i.aa = shl i64 %index11, 1
  %next.gep12 = getelementptr i8, ptr %i.m, i64 %i.aa
  store <4 x i16> %broadcast.splat10, ptr %next.gep12, align 2, !noalias !35245
  %index.next13 = add nuw i64 %index11, 4         ; 2 uses
  %i.ab = icmp eq i64 %index.next13, %n.vec8
  br i1 %i.ab, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !35243

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n14 = icmp eq i64 %i.p, %n.vec8
  br i1 %cmp.n14, label %._crit_edge.thread.i, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.sroa.0.021.i.ph = phi ptr [ %i.m, %iter.check ], [ %i.s, %vec.epilog.iter.check ], [ %i.y, %vec.epilog.middle.block ]
  %.sroa.03.020.i.ph = phi i64 [ 1, %iter.check ], [ %i.t, %vec.epilog.iter.check ], [ %i.z, %vec.epilog.middle.block ]
  br label %.lr.ph.i

._crit_edge.thread.i:                             ; preds = %.lr.ph.i, %vec.epilog.middle.block, %middle.block
  %.lcssa = phi ptr [ %i.y, %vec.epilog.middle.block ], [ %i.s, %middle.block ], [ %i.ag, %.lr.ph.i ]
  %i.ac = add i64 %i.e, -1
  %i.ad = add i64 %i.ac, %i.i
  br label %._crit_edge.i

._crit_edge.i:                                    ; preds = %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VectE7reserveCsjjpCCFGI3ul_14lance_encoding.exit.i, %._crit_edge.thread.i
  %.sroa.0.0.lcssa28.i = phi ptr [ %.lcssa, %._crit_edge.thread.i ], [ %i.m, %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VectE7reserveCsjjpCCFGI3ul_14lance_encoding.exit.i ]
  %storemerge.lcssa27.i = phi i64 [ %i.ad, %._crit_edge.thread.i ], [ %i.i, %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VectE7reserveCsjjpCCFGI3ul_14lance_encoding.exit.i ]
  store i16 %2, ptr %.sroa.0.0.lcssa28.i, align 2, !noalias !35245
  %i.ae = add i64 %storemerge.lcssa27.i, 1
  br label %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VectE8truncateCsjjpCCFGI3ul_14lance_encoding.exit

.lr.ph.i:                                         ; preds = %.lr.ph.i.preheader, %.lr.ph.i
  %.sroa.0.021.i = phi ptr [ %i.ag, %.lr.ph.i ], [ %.sroa.0.021.i.ph, %.lr.ph.i.preheader ] ; 2 uses
  %.sroa.03.020.i = phi i64 [ %i.af, %.lr.ph.i ], [ %.sroa.03.020.i.ph, %.lr.ph.i.preheader ]
  %i.af = add nuw i64 %.sroa.03.020.i, 1          ; 2 uses
  store i16 %2, ptr %.sroa.0.021.i, align 2, !noalias !35245
  %i.ag = getelementptr inbounds nuw i8, ptr %.sroa.0.021.i, i64 2 ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.af, %i.e
  br i1 %exitcond.not.i, label %._crit_edge.thread.i, label %.lr.ph.i, !llvm.loop !35244

_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VectE8truncateCsjjpCCFGI3ul_14lance_encoding.exit: ; preds = %._crit_edge.i, %bb.a
  %storemerge = phi i64 [ %1, %bb.a ], [ %i.ae, %._crit_edge.i ]
  store i64 %storemerge, ptr %i.a, align 8
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RNvMs1_NtCs40k4W9msRzi_5alloc3vecINtB5_3VecxE6resizeCsjjpCCFGI3ul_14lance_encoding(ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(24) %0, i64 noundef %1, i64 noundef %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.b = load i64, ptr %i.a, align 8, !noundef !75 ; 7 uses
  %i.c = icmp ult i64 %i.b, 1152921504606846976
  tail call void @llvm.assume(i1 %i.c)
  %i.d = icmp ugt i64 %1, %i.b
  br i1 %i.d, label %bb.b, label %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecxE8truncateCsjjpCCFGI3ul_14lance_encoding.exit

bb.b:                                             ; preds = %bb.a
  %i.e = sub nuw i64 %1, %i.b                     ; 5 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !35253)
  %i.f = load i64, ptr %0, align 8, !range !76, !alias.scope !35254, !noundef !75
  %i.g = sub nsw i64 %i.f, %i.b
  %i.h = icmp ugt i64 %i.e, %i.g
  br i1 %i.h, label %bb.c, label %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecxE7reserveCsjjpCCFGI3ul_14lance_encoding.exit.i, !prof !81

bb.c:                                             ; preds = %bb.b
  tail call fastcc void @_RINvNvMs2_NtCs40k4W9msRzi_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECsjjpCCFGI3ul_14lance_encoding(ptr noalias noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %i.b, i64 noundef %i.e, i64 noundef 8, i64 noundef 8)
  %.pre.i = load i64, ptr %i.a, align 8, !alias.scope !35253
  br label %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecxE7reserveCsjjpCCFGI3ul_14lance_encoding.exit.i

_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecxE7reserveCsjjpCCFGI3ul_14lance_encoding.exit.i: ; preds = %bb.c, %bb.b
  %i.i = phi i64 [ %i.b, %bb.b ], [ %.pre.i, %bb.c ] ; 4 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.k = load ptr, ptr %i.j, align 8, !alias.scope !35253, !nonnull !75, !noundef !75
  %i.l = icmp ult i64 %i.i, 1152921504606846976
  tail call void @llvm.assume(i1 %i.l)
  %i.m = getelementptr inbounds nuw [8 x i8], ptr %i.k, i64 %i.i ; 4 uses
  %i.n = icmp ugt i64 %i.e, 1
  br i1 %i.n, label %.lr.ph.i.preheader, label %._crit_edge.i

.lr.ph.i.preheader:                               ; preds = %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecxE7reserveCsjjpCCFGI3ul_14lance_encoding.exit.i
  %i.o = xor i64 %i.b, -1
  %i.p = add i64 %1, %i.o                         ; 3 uses
  %min.iters.check = icmp ult i64 %i.p, 4
  br i1 %min.iters.check, label %.lr.ph.i.preheader7, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.preheader
  %n.vec = and i64 %i.p, -4                       ; 4 uses
  %i.q = shl i64 %n.vec, 3
  %i.r = getelementptr i8, ptr %i.m, i64 %i.q     ; 2 uses
  %i.s = or disjoint i64 %n.vec, 1
  %broadcast.splatinsert = insertelement <2 x i64> poison, i64 %2, i64 0
  %broadcast.splat = shufflevector <2 x i64> %broadcast.splatinsert, <2 x i64> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.t = shl i64 %index, 3
  %next.gep = getelementptr i8, ptr %i.m, i64 %i.t ; 2 uses
  %i.u = getelementptr i8, ptr %next.gep, i64 16
  store <2 x i64> %broadcast.splat, ptr %next.gep, align 8, !noalias !35253
  store <2 x i64> %broadcast.splat, ptr %i.u, align 8, !noalias !35253
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.v = icmp eq i64 %index.next, %n.vec
  br i1 %i.v, label %middle.block, label %vector.body, !llvm.loop !35251

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.p, %n.vec
  br i1 %cmp.n, label %._crit_edge.thread.i, label %.lr.ph.i.preheader7

.lr.ph.i.preheader7:                              ; preds = %.lr.ph.i.preheader, %middle.block
  %.sroa.0.021.i.ph = phi ptr [ %i.m, %.lr.ph.i.preheader ], [ %i.r, %middle.block ]
  %.sroa.03.020.i.ph = phi i64 [ 1, %.lr.ph.i.preheader ], [ %i.s, %middle.block ]
  br label %.lr.ph.i

._crit_edge.thread.i:                             ; preds = %.lr.ph.i, %middle.block
  %.lcssa = phi ptr [ %i.r, %middle.block ], [ %i.aa, %.lr.ph.i ]
  %i.w = add i64 %i.e, -1
  %i.x = add i64 %i.w, %i.i
  br label %._crit_edge.i

._crit_edge.i:                                    ; preds = %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecxE7reserveCsjjpCCFGI3ul_14lance_encoding.exit.i, %._crit_edge.thread.i
  %.sroa.0.0.lcssa28.i = phi ptr [ %.lcssa, %._crit_edge.thread.i ], [ %i.m, %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecxE7reserveCsjjpCCFGI3ul_14lance_encoding.exit.i ]
  %storemerge.lcssa27.i = phi i64 [ %i.x, %._crit_edge.thread.i ], [ %i.i, %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecxE7reserveCsjjpCCFGI3ul_14lance_encoding.exit.i ]
  store i64 %2, ptr %.sroa.0.0.lcssa28.i, align 8, !noalias !35253
  %i.y = add i64 %storemerge.lcssa27.i, 1
  br label %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecxE8truncateCsjjpCCFGI3ul_14lance_encoding.exit

.lr.ph.i:                                         ; preds = %.lr.ph.i.preheader7, %.lr.ph.i
  %.sroa.0.021.i = phi ptr [ %i.aa, %.lr.ph.i ], [ %.sroa.0.021.i.ph, %.lr.ph.i.preheader7 ] ; 2 uses
  %.sroa.03.020.i = phi i64 [ %i.z, %.lr.ph.i ], [ %.sroa.03.020.i.ph, %.lr.ph.i.preheader7 ]
  %i.z = add nuw i64 %.sroa.03.020.i, 1           ; 2 uses
  store i64 %2, ptr %.sroa.0.021.i, align 8, !noalias !35253
  %i.aa = getelementptr inbounds nuw i8, ptr %.sroa.0.021.i, i64 8 ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.z, %i.e
  br i1 %exitcond.not.i, label %._crit_edge.thread.i, label %.lr.ph.i, !llvm.loop !35252

_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecxE8truncateCsjjpCCFGI3ul_14lance_encoding.exit: ; preds = %._crit_edge.i, %bb.a
  %storemerge = phi i64 [ %1, %bb.a ], [ %i.y, %._crit_edge.i ]
  store i64 %storemerge, ptr %i.a, align 8
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RNvMs1_NtCs40k4W9msRzi_5alloc3vecINtB5_3VecyE6resizeCsjjpCCFGI3ul_14lance_encoding(ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(24) %0, i64 noundef %1, i64 noundef %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.b = load i64, ptr %i.a, align 8, !noundef !75 ; 7 uses
  %i.c = icmp ult i64 %i.b, 1152921504606846976
  tail call void @llvm.assume(i1 %i.c)
  %i.d = icmp ugt i64 %1, %i.b
  br i1 %i.d, label %bb.b, label %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecyE8truncateCsjjpCCFGI3ul_14lance_encoding.exit

bb.b:                                             ; preds = %bb.a
  %i.e = sub nuw i64 %1, %i.b                     ; 5 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !35261)
  %i.f = load i64, ptr %0, align 8, !range !76, !alias.scope !35262, !noundef !75
  %i.g = sub nsw i64 %i.f, %i.b
  %i.h = icmp ugt i64 %i.e, %i.g
  br i1 %i.h, label %bb.c, label %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecyE7reserveCsjjpCCFGI3ul_14lance_encoding.exit.i, !prof !81

bb.c:                                             ; preds = %bb.b
  tail call fastcc void @_RINvNvMs2_NtCs40k4W9msRzi_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECsjjpCCFGI3ul_14lance_encoding(ptr noalias noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %i.b, i64 noundef %i.e, i64 noundef 8, i64 noundef 8)
  %.pre.i = load i64, ptr %i.a, align 8, !alias.scope !35261
  br label %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecyE7reserveCsjjpCCFGI3ul_14lance_encoding.exit.i

_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecyE7reserveCsjjpCCFGI3ul_14lance_encoding.exit.i: ; preds = %bb.c, %bb.b
  %i.i = phi i64 [ %i.b, %bb.b ], [ %.pre.i, %bb.c ] ; 4 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.k = load ptr, ptr %i.j, align 8, !alias.scope !35261, !nonnull !75, !noundef !75
  %i.l = icmp ult i64 %i.i, 1152921504606846976
  tail call void @llvm.assume(i1 %i.l)
  %i.m = getelementptr inbounds nuw [8 x i8], ptr %i.k, i64 %i.i ; 4 uses
end_hunk_7
begin_hunk_8_@_RNvMs4_NtCsjjpCCFGI3ul_14lance_encoding6repdefNtB5_13RepDefBuilder9normalize:bb.a
  %.sroa.0.3.i.i.i.i.i.i.i = phi ptr [ null, %.thread363.i.i.i.i.i.i.i.i.i ], [ null, %bb.l ], [ %.sroa.0.0.i.i.i.i.i.i.i, %.noexc8.i.i.i.i.i.i ], [ null, %.thread363.i.i.thread.i.i.i.i.i.i.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !37088
  %.sroa.10.i.i.i.i.i.i.i.0..sroa.10.i.i.i.i.i.i.i.0..sroa.10.i.i.i.i.i.i.i.0..sroa.10.i.i.i.i.i.i.0..sroa.10.i.i.i.i.i.i.0..sroa.10.i.i.i.i.i.0..sroa.10.i.i.i.i.i.0..sroa.10.i.i.i.i.0..sroa.10.i.i.i.i.0..sroa.10.i.i.i.0..sroa.10.i.i.i.0..sroa.10.i.i.0..sroa.10.i.i.0..sroa.10.i.0..sroa.10.i.0..sroa.10.0..sroa.10.0..sroa.10.0.copyload.i.i.i.i.i.i.i = load i64, ptr %.sroa.10.i.i.i.i.i.i.i, align 8, !noalias !37106
  %.sroa.14.i.i.i.i.i.i.i.0..sroa.14.i.i.i.i.i.i.i.0..sroa.14.i.i.i.i.i.i.i.0..sroa.14.i.i.i.i.i.i.0..sroa.14.i.i.i.i.i.i.0..sroa.14.i.i.i.i.i.0..sroa.14.i.i.i.i.i.0..sroa.14.i.i.i.i.0..sroa.14.i.i.i.i.0..sroa.14.i.i.i.0..sroa.14.i.i.i.0..sroa.14.i.i.0..sroa.14.i.i.0..sroa.14.i.0..sroa.14.i.0..sroa.14.0..sroa.14.0..sroa.14.0.copyload.i.i.i.i.i.i.i = load i64, ptr %.sroa.14.i.i.i.i.i.i.i, align 8, !noalias !37106
  %i.nn = getelementptr inbounds nuw [80 x i8], ptr %i.x, i64 %.sroa.5.0.i.i.i.i.i ; 8 uses
  store ptr %.sroa.0.3.i.i.i.i.i.i.i, ptr %i.nn, align 8, !noalias !37142
  %.sroa.4.0..sroa_idx.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.nn, i64 8
  store i64 %.sroa.8.2.i.i.i.i.i.i.i, ptr %.sroa.4.0..sroa_idx.i.i.i.i.i.i.i, align 8, !noalias !37142
  %.sroa.5.0..sroa_idx.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.nn, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.5.0..sroa_idx.i.i.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.9.i.i.i.i.i.i.i, i64 24, i1 false), !noalias !37106
  %.sroa.6.0..sroa_idx.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.nn, i64 40
  store i64 %.sroa.10.i.i.i.i.i.i.i.0..sroa.10.i.i.i.i.i.i.i.0..sroa.10.i.i.i.i.i.i.i.0..sroa.10.i.i.i.i.i.i.0..sroa.10.i.i.i.i.i.i.0..sroa.10.i.i.i.i.i.0..sroa.10.i.i.i.i.i.0..sroa.10.i.i.i.i.0..sroa.10.i.i.i.i.0..sroa.10.i.i.i.0..sroa.10.i.i.i.0..sroa.10.i.i.0..sroa.10.i.i.0..sroa.10.i.0..sroa.10.i.0..sroa.10.0..sroa.10.0..sroa.10.0.copyload.i.i.i.i.i.i.i, ptr %.sroa.6.0..sroa_idx.i.i.i.i.i.i.i, align 8, !noalias !37142
  %.sroa.7.0..sroa_idx.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.nn, i64 48
  store i64 %.sroa.14.i.i.i.i.i.i.i.0..sroa.14.i.i.i.i.i.i.i.0..sroa.14.i.i.i.i.i.i.i.0..sroa.14.i.i.i.i.i.i.0..sroa.14.i.i.i.i.i.i.0..sroa.14.i.i.i.i.i.0..sroa.14.i.i.i.i.i.0..sroa.14.i.i.i.i.0..sroa.14.i.i.i.i.0..sroa.14.i.i.i.0..sroa.14.i.i.i.0..sroa.14.i.i.0..sroa.14.i.i.0..sroa.14.i.0..sroa.14.i.0..sroa.14.0..sroa.14.0..sroa.14.0.copyload.i.i.i.i.i.i.i, ptr %.sroa.7.0..sroa_idx.i.i.i.i.i.i.i, align 8, !noalias !37142
  %.sroa.813.0..sroa_idx.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.nn, i64 56
  store i64 %.sroa.16.1.i.i.i.i.i.i.i, ptr %.sroa.813.0..sroa_idx.i.i.i.i.i.i.i, align 8, !noalias !37142
  %.sroa.914.0..sroa_idx.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.nn, i64 64
  store i64 %.sroa.17.1.i.i.i.i.i.i.i, ptr %.sroa.914.0..sroa_idx.i.i.i.i.i.i.i, align 8, !noalias !37142
  %.sroa.1015.0..sroa_idx.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.nn, i64 72
  store i8 %.sroa.18.1.i.i.i.i.i.i.i, ptr %.sroa.1015.0..sroa_idx.i.i.i.i.i.i.i, align 8, !noalias !37142
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.10.i.i.i.i.i.i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.14.i.i.i.i.i.i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.9.i.i.i.i.i.i.i)
  %exitcond.not.i.i.i.i.i.i = icmp eq i64 %i.as, %i.r
  br i1 %exitcond.not.i.i.i.i.i.i, label %.loopexit.loopexit118, label %.lr.ph.i.i.i.i.i.i.split, !llvm.loop !37072

.body.i:                                          ; preds = %bb.dc, %.thread.i.i.i.i.i.i.i.i.i, %bb.q, %.loopexit.split-lp14.i.i.i.i.i.i, %.loopexit13.i.i.i.i.i.i
  %eh.lpad-body.i.i.i.i.i.i = phi { ptr, i32 } [ %.pn74200.i.i.i.i.i.i.i.i.i, %.thread.i.i.i.i.i.i.i.i.i ], [ %.pn74200.i.i.i.i.i.i.i.i.i, %bb.dc ], [ %.pn72.i.i.i.i.i.i.i.i.i, %bb.q ], [ %lpad.loopexit15.i.i.i.i.i.i, %.loopexit13.i.i.i.i.i.i ], [ %lpad.loopexit.split-lp16.i.i.i.i.i.i, %.loopexit.split-lp14.i.i.i.i.i.i ]
  store i64 %.sroa.5.0.i.i.i.i.i, ptr %i.aa, align 8, !alias.scope !37143, !noalias !37144
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VecNtNtCsjjpCCFGI3ul_14lance_encoding6repdef9RawRepDefEEB1c_(ptr noalias noundef align 8 dereferenceable(24) %i.i) #67
          to label %.body unwind label %bb.dd, !noalias !37081

bb.dd:                                            ; preds = %.body.i
  %i.no = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #68, !noalias !37081
  unreachable

.body:                                            ; preds = %bb.de, %.body.i
  %.pn = phi { ptr, i32 } [ %eh.lpad-body.i.i.i.i.i.i, %.body.i ], [ %i.np, %bb.de ]
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VecNtNtCsjjpCCFGI3ul_14lance_encoding6repdef13RepDefBuilderEEB1c_(ptr noalias noundef align 8 dereferenceable(24) %1) #67
          to label %bb.di unwind label %bb.dh

bb.de:                                            ; preds = %bb.e, %bb.b
  %i.np = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.df:                                            ; preds = %bb.b
  unreachable

.loopexit.loopexit118:                            ; preds = %_RNCINvNtNtNtCscI6d9CVNmLh_4core4iter8adapters3map8map_foldjNtNtCsjjpCCFGI3ul_14lance_encoding6repdef9RawRepDefuNCNvMs4_BX_NtBX_13RepDefBuilder9normalize0NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callBV_NCINvMsj_NtCs40k4W9msRzi_5alloc3vecINtB3w_3VecBV_E14extend_trustedINtB4_3MapINtNtNtBa_3ops5range5RangejEB1L_EE0E0E0BZ_.exit.i.i.i.i.i.i
  %.pre = load ptr, ptr %i.o, align 8
  %.pre230 = load i64, ptr %i.k, align 8
  br label %.loopexit

.loopexit:                                        ; preds = %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecNtNtCsjjpCCFGI3ul_14lance_encoding6repdef9RawRepDefE7reserveBI_.exit.i.i.i.thread, %.loopexit.loopexit118
  %i.nq = phi ptr [ %i.w, %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecNtNtCsjjpCCFGI3ul_14lance_encoding6repdef9RawRepDefE7reserveBI_.exit.i.i.i.thread ], [ %i.aa, %.loopexit.loopexit118 ]
  %i.nr = phi i64 [ %i.l, %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecNtNtCsjjpCCFGI3ul_14lance_encoding6repdef9RawRepDefE7reserveBI_.exit.i.i.i.thread ], [ %.pre230, %.loopexit.loopexit118 ] ; 2 uses
  %i.ns = phi ptr [ %i.p, %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecNtNtCsjjpCCFGI3ul_14lance_encoding6repdef9RawRepDefE7reserveBI_.exit.i.i.i.thread ], [ %.pre, %.loopexit.loopexit118 ] ; 2 uses
  store i64 %i.r, ptr %i.nq, align 8, !alias.scope !37143, !noalias !37144
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.j, ptr noundef nonnull align 8 dereferenceable(24) %i.i, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !37081
  %.idx = mul nuw nsw i64 %i.nr, 40
  %i.nt = getelementptr inbounds nuw i8, ptr %i.ns, i64 %.idx
  %i.nu = icmp eq i64 %i.nr, 0
  br i1 %i.nu, label %_RINvXs2J_NtNtCscI6d9CVNmLh_4core5slice4iterINtB7_4IterNtNtCsjjpCCFGI3ul_14lance_encoding6repdef13RepDefBuilderENtNtNtNtBb_4iter6traits8iterator8Iterator3allNvMs4_BS_BQ_8is_emptyEBU_.exit, label %.lr.ph.i

_RNvYNvMs4_NtCsjjpCCFGI3ul_14lance_encoding6repdefNtB8_13RepDefBuilder8is_emptyINtNtNtCscI6d9CVNmLh_4core3ops8function5FnMutTRBL_EE8call_mutBa_.exit.loopexit.i: ; preds = %bb.dg, %.lr.ph.i
  %i.nv = icmp eq ptr %i.nx, %i.nt
  br i1 %i.nv, label %_RINvXs2J_NtNtCscI6d9CVNmLh_4core5slice4iterINtB7_4IterNtNtCsjjpCCFGI3ul_14lance_encoding6repdef13RepDefBuilderENtNtNtNtBb_4iter6traits8iterator8Iterator3allNvMs4_BS_BQ_8is_emptyEBU_.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.loopexit, %_RNvYNvMs4_NtCsjjpCCFGI3ul_14lance_encoding6repdefNtB8_13RepDefBuilder8is_emptyINtNtNtCscI6d9CVNmLh_4core3ops8function5FnMutTRBL_EE8call_mutBa_.exit.loopexit.i
  %i.nw = phi ptr [ %i.nx, %_RNvYNvMs4_NtCsjjpCCFGI3ul_14lance_encoding6repdefNtB8_13RepDefBuilder8is_emptyINtNtNtCscI6d9CVNmLh_4core3ops8function5FnMutTRBL_EE8call_mutBa_.exit.loopexit.i ], [ %i.ns, %.loopexit ] ; 3 uses
  %i.nx = getelementptr inbounds nuw i8, ptr %i.nw, i64 40 ; 2 uses
  %i.ny = getelementptr i8, ptr %i.nw, i64 24
  %.val.i2 = load ptr, ptr %i.ny, align 8, !alias.scope !37145, !noalias !37146, !nonnull !75, !noundef !75 ; 2 uses
  %i.nz = getelementptr i8, ptr %i.nw, i64 32
  %.val3.i3 = load i64, ptr %i.nz, align 8, !alias.scope !37145, !noalias !37146, !noundef !75 ; 2 uses
  %.idx468 = mul nuw nsw i64 %.val3.i3, 80
  %i.oa = getelementptr inbounds nuw i8, ptr %.val.i2, i64 %.idx468
  %i.ob = icmp eq i64 %.val3.i3, 0
  br i1 %i.ob, label %_RNvYNvMs4_NtCsjjpCCFGI3ul_14lance_encoding6repdefNtB8_13RepDefBuilder8is_emptyINtNtNtCscI6d9CVNmLh_4core3ops8function5FnMutTRBL_EE8call_mutBa_.exit.loopexit.i, label %.lr.ph

bb.dg:                                            ; preds = %.lr.ph
  %i.oc = getelementptr inbounds nuw i8, ptr %i.oe, i64 80 ; 2 uses
  %i.od = icmp eq ptr %i.oc, %i.oa
  br i1 %i.od, label %_RNvYNvMs4_NtCsjjpCCFGI3ul_14lance_encoding6repdefNtB8_13RepDefBuilder8is_emptyINtNtNtCscI6d9CVNmLh_4core3ops8function5FnMutTRBL_EE8call_mutBa_.exit.loopexit.i, label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.i, %bb.dg
  %i.oe = phi ptr [ %i.oc, %bb.dg ], [ %.val.i2, %.lr.ph.i ] ; 3 uses
  %.val.i.i.i.i = load ptr, ptr %i.oe, align 8, !noalias !37147
  %i.of = getelementptr i8, ptr %i.oe, i64 72
  %.val3.i.i.i.i = load i8, ptr %i.of, align 8, !range !131, !noalias !37147, !noundef !75
  %i.og = icmp eq i8 %.val3.i.i.i.i, 2
  %i.oh = icmp eq ptr %.val.i.i.i.i, null
  %.sroa.0.0.i.i.i.i.i = select i1 %i.og, i1 %i.oh, i1 false
  br i1 %.sroa.0.0.i.i.i.i.i, label %bb.dg, label %_RINvXs2J_NtNtCscI6d9CVNmLh_4core5slice4iterINtB7_4IterNtNtCsjjpCCFGI3ul_14lance_encoding6repdef13RepDefBuilderENtNtNtNtBb_4iter6traits8iterator8Iterator3allNvMs4_BS_BQ_8is_emptyEBU_.exit

_RINvXs2J_NtNtCscI6d9CVNmLh_4core5slice4iterINtB7_4IterNtNtCsjjpCCFGI3ul_14lance_encoding6repdef13RepDefBuilderENtNtNtNtBb_4iter6traits8iterator8Iterator3allNvMs4_BS_BQ_8is_emptyEBU_.exit: ; preds = %_RNvYNvMs4_NtCsjjpCCFGI3ul_14lance_encoding6repdefNtB8_13RepDefBuilder8is_emptyINtNtNtCscI6d9CVNmLh_4core3ops8function5FnMutTRBL_EE8call_mutBa_.exit.loopexit.i, %.lr.ph, %.loopexit
  %i.oi = phi i8 [ 1, %.loopexit ], [ 0, %.lr.ph ], [ 1, %_RNvYNvMs4_NtCsjjpCCFGI3ul_14lance_encoding6repdefNtB8_13RepDefBuilder8is_emptyINtNtNtCscI6d9CVNmLh_4core3ops8function5FnMutTRBL_EE8call_mutBa_.exit.loopexit.i ]
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.j, i64 24, i1 false)
  %i.oj = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i8 %i.oi, ptr %i.oj, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j)
  call fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VecNtNtCsjjpCCFGI3ul_14lance_encoding6repdef13RepDefBuilderEEB1c_(ptr noalias noundef align 8 dereferenceable(24) %1)
  ret void

bb.dh:                                            ; preds = %.body
  %i.ok = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #68
  unreachable

bb.di:                                            ; preds = %.body
  resume { ptr, i32 } %.pn
}

; Function Attrs: nonlazybind uwtable
define void @_RNvMs4_NtCsjjpCCFGI3ul_14lance_encoding6repdefNtB5_13RepDefBuilder9serialize(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([64 x i8]) align 8 captures(none) dereferenceable(64) %0, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 5 uses
  %i.b = alloca [24 x i8], align 8                ; 6 uses
  %i.c = alloca [24 x i8], align 8                ; 6 uses
  %i.d = alloca [32 x i8], align 8                ; 7 uses
  %i.e = alloca [24 x i8], align 8                ; 4 uses
  %i.f = alloca [160 x i8], align 8               ; 19 uses
  %i.g = alloca [32 x i8], align 8                ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  call fastcc void @_RNvMs4_NtCsjjpCCFGI3ul_14lance_encoding6repdefNtB5_13RepDefBuilder9normalize(ptr noalias noundef align 8 captures(none) dereferenceable(32) %i.g, ptr noalias noundef align 8 captures(address) dereferenceable(24) %1)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !37157
  invoke fastcc void @_RNvMNtCsjjpCCFGI3ul_14lance_encoding6repdefNtB2_24NormalizedStructuralPlan13to_serializer(ptr noalias noundef align 8 captures(none) dereferenceable(160) %i.f, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.g)
          to label %.noexc unwind label %bb.y

.noexc:                                           ; preds = %bb.a
  %.sroa.0.0.copyload = load i64, ptr %i.f, align 8, !noalias !37157
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %.sroa.4.0.copyload = load ptr, ptr %.sroa.4.0..sroa_idx, align 8, !noalias !37157 ; 4 uses
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %.sroa.5.0.copyload = load i64, ptr %.sroa.5.0..sroa_idx, align 8, !noalias !37157 ; 2 uses
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 24
  %.sroa.6.0.copyload = load i64, ptr %.sroa.6.0..sroa_idx, align 8, !noalias !37157 ; 7 uses
  %.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 32
  %.sroa.9.0.copyload = load ptr, ptr %.sroa.9.0..sroa_idx, align 8, !noalias !37157 ; 6 uses
  %.sroa.12.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 40
  %.sroa.12.0.copyload = load i64, ptr %.sroa.12.0..sroa_idx, align 8, !noalias !37157 ; 3 uses
  %.sroa.13.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 48
  %.sroa.13.0.copyload = load i64, ptr %.sroa.13.0..sroa_idx, align 8, !noalias !37157 ; 6 uses
  %.sroa.16.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 56
  %.sroa.16.0.copyload = load ptr, ptr %.sroa.16.0..sroa_idx, align 8, !noalias !37157 ; 6 uses
  %.sroa.192.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 72
  %.sroa.192.0.copyload = load i64, ptr %.sroa.192.0..sroa_idx, align 8, !noalias !37157 ; 7 uses
  %.sroa.24.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 80
  %.sroa.24.0.copyload = load ptr, ptr %.sroa.24.0..sroa_idx, align 8, !noalias !37157 ; 36 uses
  %.sroa.27.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 88
  %.sroa.27.0.copyload = load i64, ptr %.sroa.27.0..sroa_idx, align 8, !noalias !37157 ; 4 uses
  %.sroa.28.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 96
  %.sroa.28.0.copyload = load i64, ptr %.sroa.28.0..sroa_idx, align 8, !noalias !37157 ; 5 uses
  %.sroa.31.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 104
  %.sroa.31.0.copyload = load ptr, ptr %.sroa.31.0..sroa_idx, align 8, !noalias !37157 ; 4 uses
  %.sroa.333.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 120
  %.sroa.333.0.copyload = load i64, ptr %.sroa.333.0..sroa_idx, align 8, !noalias !37157
  %.sroa.344.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 140
  %.sroa.344.0.copyload = load i8, ptr %.sroa.344.0..sroa_idx, align 4, !noalias !37157 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !37157
  %.not.i.i = icmp eq i64 %.sroa.333.0.copyload, 0
  br i1 %.not.i.i, label %bb.b, label %bb.c

bb.b:                                             ; preds = %.noexc
  store i64 -1, ptr %i.a, align 8, !noalias !37158
  %i.h = trunc nuw i8 %.sroa.344.0.copyload to i1
  invoke fastcc void @_RNvMs0_NtCsjjpCCFGI3ul_14lance_encoding6repdefNtB5_17SerializedRepDefs31new_with_fixed_size_list_levels(ptr noalias noundef nonnull align 8 captures(none) dereferenceable(64) %0, ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.a, ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.a, ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(144) %i.f, i1 noundef zeroext %i.h)
          to label %bb.f unwind label %.critedge.thread.i.i, !noalias !37159

bb.c:                                             ; preds = %.noexc
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.24.0.copyload) ]
  %.idx.i.i.i = shl i64 %.sroa.27.0.copyload, 1   ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %.sroa.24.0.copyload, i64 %.idx.i.i.i
  %i.j = icmp eq i64 %.sroa.27.0.copyload, 0
  br i1 %i.j, label %_RNvMs3_NtCsjjpCCFGI3ul_14lance_encoding6repdefNtB5_17SerializerContext18normalize_specials.exit.thread.i.i, label %iter.check

iter.check:                                       ; preds = %bb.c
  %i.k = add i64 %.idx.i.i.i, -2                  ; 3 uses
  %i.l = lshr exact i64 %i.k, 1
  %i.m = add nuw i64 %i.l, 1                      ; 5 uses
  %min.iters.check = icmp ult i64 %i.k, 14
  br i1 %min.iters.check, label %.lr.ph.i.i.i.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check13 = icmp ult i64 %i.k, 30
  br i1 %min.iters.check13, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.n = and i64 %i.m, 8
  %n.vec = and i64 %i.m, -16                      ; 4 uses
  %i.o = shl i64 %n.vec, 1
  %i.p = getelementptr i8, ptr %.sroa.24.0.copyload, i64 %i.o
  br label %vector.body

vector.body:                                      ; preds = %vector.ph, %pred.store.continue59
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %pred.store.continue59 ] ; 2 uses
  %i.q = shl i64 %index, 1                        ; 16 uses
  %next.gep = getelementptr i8, ptr %.sroa.24.0.copyload, i64 %i.q ; 3 uses
  %i.r = getelementptr i8, ptr %.sroa.24.0.copyload, i64 %i.q
  %next.gep14 = getelementptr i8, ptr %i.r, i64 2
  %i.s = getelementptr i8, ptr %.sroa.24.0.copyload, i64 %i.q
  %next.gep15 = getelementptr i8, ptr %i.s, i64 4
  %i.t = getelementptr i8, ptr %.sroa.24.0.copyload, i64 %i.q
  %next.gep16 = getelementptr i8, ptr %i.t, i64 6
  %i.u = getelementptr i8, ptr %.sroa.24.0.copyload, i64 %i.q
  %next.gep17 = getelementptr i8, ptr %i.u, i64 8
  %i.v = getelementptr i8, ptr %.sroa.24.0.copyload, i64 %i.q
  %next.gep18 = getelementptr i8, ptr %i.v, i64 10
  %i.w = getelementptr i8, ptr %.sroa.24.0.copyload, i64 %i.q
  %next.gep19 = getelementptr i8, ptr %i.w, i64 12
  %i.x = getelementptr i8, ptr %.sroa.24.0.copyload, i64 %i.q
  %next.gep20 = getelementptr i8, ptr %i.x, i64 14
  %i.y = getelementptr i8, ptr %.sroa.24.0.copyload, i64 %i.q
  %next.gep21 = getelementptr i8, ptr %i.y, i64 16
  %i.z = getelementptr i8, ptr %.sroa.24.0.copyload, i64 %i.q
  %next.gep22 = getelementptr i8, ptr %i.z, i64 18
  %i.aa = getelementptr i8, ptr %.sroa.24.0.copyload, i64 %i.q
  %next.gep23 = getelementptr i8, ptr %i.aa, i64 20
  %i.ab = getelementptr i8, ptr %.sroa.24.0.copyload, i64 %i.q
  %next.gep24 = getelementptr i8, ptr %i.ab, i64 22
  %i.ac = getelementptr i8, ptr %.sroa.24.0.copyload, i64 %i.q
  %next.gep25 = getelementptr i8, ptr %i.ac, i64 24
  %i.ad = getelementptr i8, ptr %.sroa.24.0.copyload, i64 %i.q
  %next.gep26 = getelementptr i8, ptr %i.ad, i64 26
  %i.ae = getelementptr i8, ptr %.sroa.24.0.copyload, i64 %i.q
  %next.gep27 = getelementptr i8, ptr %i.ae, i64 28
  %i.af = getelementptr i8, ptr %.sroa.24.0.copyload, i64 %i.q
  %next.gep28 = getelementptr i8, ptr %i.af, i64 30
  %i.ag = getelementptr i8, ptr %next.gep, i64 16
  %wide.load = load <8 x i16>, ptr %next.gep, align 2, !noalias !37158 ; 9 uses
  %wide.load29 = load <8 x i16>, ptr %i.ag, align 2, !noalias !37158 ; 9 uses
  %i.ah = icmp slt <8 x i16> %wide.load, zeroinitializer ; 8 uses
  %i.ai = icmp slt <8 x i16> %wide.load29, zeroinitializer ; 8 uses
  %i.aj = extractelement <8 x i1> %i.ah, i64 0
  br i1 %i.aj, label %pred.store.if, label %pred.store.continue

pred.store.if:                                    ; preds = %vector.body
  %i.ak = extractelement <8 x i16> %wide.load, i64 0
  %i.al = add i16 %i.ak, -32767
  store i16 %i.al, ptr %next.gep, align 2, !noalias !37158
  br label %pred.store.continue

pred.store.continue:                              ; preds = %pred.store.if, %vector.body
  %i.am = extractelement <8 x i1> %i.ah, i64 1
  br i1 %i.am, label %pred.store.if30, label %pred.store.continue31

pred.store.if30:                                  ; preds = %pred.store.continue
  %i.an = extractelement <8 x i16> %wide.load, i64 1
  %i.ao = add i16 %i.an, -32767
  store i16 %i.ao, ptr %next.gep14, align 2, !noalias !37158
  br label %pred.store.continue31

pred.store.continue31:                            ; preds = %pred.store.if30, %pred.store.continue
  %i.ap = extractelement <8 x i1> %i.ah, i64 2
  br i1 %i.ap, label %pred.store.if32, label %pred.store.continue33

pred.store.if32:                                  ; preds = %pred.store.continue31
  %i.aq = extractelement <8 x i16> %wide.load, i64 2
  %i.ar = add i16 %i.aq, -32767
  store i16 %i.ar, ptr %next.gep15, align 2, !noalias !37158
  br label %pred.store.continue33

pred.store.continue33:                            ; preds = %pred.store.if32, %pred.store.continue31
  %i.as = extractelement <8 x i1> %i.ah, i64 3
  br i1 %i.as, label %pred.store.if34, label %pred.store.continue35

pred.store.if34:                                  ; preds = %pred.store.continue33
  %i.at = extractelement <8 x i16> %wide.load, i64 3
  %i.au = add i16 %i.at, -32767
  store i16 %i.au, ptr %next.gep16, align 2, !noalias !37158
  br label %pred.store.continue35

pred.store.continue35:                            ; preds = %pred.store.if34, %pred.store.continue33
  %i.av = extractelement <8 x i1> %i.ah, i64 4
  br i1 %i.av, label %pred.store.if36, label %pred.store.continue37

pred.store.if36:                                  ; preds = %pred.store.continue35
  %i.aw = extractelement <8 x i16> %wide.load, i64 4
  %i.ax = add i16 %i.aw, -32767
  store i16 %i.ax, ptr %next.gep17, align 2, !noalias !37158
  br label %pred.store.continue37

pred.store.continue37:                            ; preds = %pred.store.if36, %pred.store.continue35
  %i.ay = extractelement <8 x i1> %i.ah, i64 5
  br i1 %i.ay, label %pred.store.if38, label %pred.store.continue39

pred.store.if38:                                  ; preds = %pred.store.continue37
  %i.az = extractelement <8 x i16> %wide.load, i64 5
  %i.ba = add i16 %i.az, -32767
  store i16 %i.ba, ptr %next.gep18, align 2, !noalias !37158
  br label %pred.store.continue39

pred.store.continue39:                            ; preds = %pred.store.if38, %pred.store.continue37
  %i.bb = extractelement <8 x i1> %i.ah, i64 6
  br i1 %i.bb, label %pred.store.if40, label %pred.store.continue41

pred.store.if40:                                  ; preds = %pred.store.continue39
  %i.bc = extractelement <8 x i16> %wide.load, i64 6
  %i.bd = add i16 %i.bc, -32767
  store i16 %i.bd, ptr %next.gep19, align 2, !noalias !37158
  br label %pred.store.continue41

pred.store.continue41:                            ; preds = %pred.store.if40, %pred.store.continue39
  %i.be = extractelement <8 x i1> %i.ah, i64 7
  br i1 %i.be, label %pred.store.if42, label %pred.store.continue43

pred.store.if42:                                  ; preds = %pred.store.continue41
  %i.bf = extractelement <8 x i16> %wide.load, i64 7
  %i.bg = add i16 %i.bf, -32767
  store i16 %i.bg, ptr %next.gep20, align 2, !noalias !37158
  br label %pred.store.continue43

pred.store.continue43:                            ; preds = %pred.store.if42, %pred.store.continue41
  %i.bh = extractelement <8 x i1> %i.ai, i64 0
  br i1 %i.bh, label %pred.store.if44, label %pred.store.continue45

pred.store.if44:                                  ; preds = %pred.store.continue43
  %i.bi = extractelement <8 x i16> %wide.load29, i64 0
  %i.bj = add i16 %i.bi, -32767
  store i16 %i.bj, ptr %next.gep21, align 2, !noalias !37158
  br label %pred.store.continue45

pred.store.continue45:                            ; preds = %pred.store.if44, %pred.store.continue43
  %i.bk = extractelement <8 x i1> %i.ai, i64 1
  br i1 %i.bk, label %pred.store.if46, label %pred.store.continue47

pred.store.if46:                                  ; preds = %pred.store.continue45
  %i.bl = extractelement <8 x i16> %wide.load29, i64 1
  %i.bm = add i16 %i.bl, -32767
  store i16 %i.bm, ptr %next.gep22, align 2, !noalias !37158
  br label %pred.store.continue47

pred.store.continue47:                            ; preds = %pred.store.if46, %pred.store.continue45
  %i.bn = extractelement <8 x i1> %i.ai, i64 2
  br i1 %i.bn, label %pred.store.if48, label %pred.store.continue49

pred.store.if48:                                  ; preds = %pred.store.continue47
  %i.bo = extractelement <8 x i16> %wide.load29, i64 2
  %i.bp = add i16 %i.bo, -32767
  store i16 %i.bp, ptr %next.gep23, align 2, !noalias !37158
  br label %pred.store.continue49

pred.store.continue49:                            ; preds = %pred.store.if48, %pred.store.continue47
  %i.bq = extractelement <8 x i1> %i.ai, i64 3
  br i1 %i.bq, label %pred.store.if50, label %pred.store.continue51

pred.store.if50:                                  ; preds = %pred.store.continue49
  %i.br = extractelement <8 x i16> %wide.load29, i64 3
  %i.bs = add i16 %i.br, -32767
  store i16 %i.bs, ptr %next.gep24, align 2, !noalias !37158
  br label %pred.store.continue51

pred.store.continue51:                            ; preds = %pred.store.if50, %pred.store.continue49
  %i.bt = extractelement <8 x i1> %i.ai, i64 4
  br i1 %i.bt, label %pred.store.if52, label %pred.store.continue53

pred.store.if52:                                  ; preds = %pred.store.continue51
  %i.bu = extractelement <8 x i16> %wide.load29, i64 4
  %i.bv = add i16 %i.bu, -32767
  store i16 %i.bv, ptr %next.gep25, align 2, !noalias !37158
  br label %pred.store.continue53

pred.store.continue53:                            ; preds = %pred.store.if52, %pred.store.continue51
  %i.bw = extractelement <8 x i1> %i.ai, i64 5
  br i1 %i.bw, label %pred.store.if54, label %pred.store.continue55

pred.store.if54:                                  ; preds = %pred.store.continue53
  %i.bx = extractelement <8 x i16> %wide.load29, i64 5
  %i.by = add i16 %i.bx, -32767
  store i16 %i.by, ptr %next.gep26, align 2, !noalias !37158
  br label %pred.store.continue55

pred.store.continue55:                            ; preds = %pred.store.if54, %pred.store.continue53
  %i.bz = extractelement <8 x i1> %i.ai, i64 6
  br i1 %i.bz, label %pred.store.if56, label %pred.store.continue57

pred.store.if56:                                  ; preds = %pred.store.continue55
  %i.ca = extractelement <8 x i16> %wide.load29, i64 6
  %i.cb = add i16 %i.ca, -32767
  store i16 %i.cb, ptr %next.gep27, align 2, !noalias !37158
  br label %pred.store.continue57

pred.store.continue57:                            ; preds = %pred.store.if56, %pred.store.continue55
  %i.cc = extractelement <8 x i1> %i.ai, i64 7
  br i1 %i.cc, label %pred.store.if58, label %pred.store.continue59

pred.store.if58:                                  ; preds = %pred.store.continue57
  %i.cd = extractelement <8 x i16> %wide.load29, i64 7
  %i.ce = add i16 %i.cd, -32767
  store i16 %i.ce, ptr %next.gep28, align 2, !noalias !37158
  br label %pred.store.continue59

pred.store.continue59:                            ; preds = %pred.store.if58, %pred.store.continue57
  %index.next = add nuw i64 %index, 16            ; 2 uses
  %i.cf = icmp eq i64 %index.next, %n.vec
end_hunk_8
begin_hunk_9_@_RNvMs4_NtNtNtNtCsjjpCCFGI3ul_14lance_encoding9encodings7logical9primitive6sparseNtB5_20SparseStructuralPlan8validate:bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k)
  store i64 %.sroa.0100.0, ptr %i.ad, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ab)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ac)
  %i.om = icmp eq ptr %i.bd, %i.at
  br i1 %i.om, label %._crit_edge, label %bb.h

bb.cz:                                            ; preds = %_RNvMNtCs40k4W9msRzi_5alloc5boxedINtB2_3BoxNtNvXsf_NtB2_7convertIBv_DNtNtCscI6d9CVNmLh_4core5error5ErrorNtNtB18_6marker4SyncNtB1F_4SendEL_EINtNtB18_7convert4FromNtNtB4_6string6StringE4from11StringErrorE3newCsjjpCCFGI3ul_14lance_encoding.exit285, %bb.cx
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ab)
  br label %bb.da

bb.da:                                            ; preds = %_RNvMNtCs40k4W9msRzi_5alloc5boxedINtB2_3BoxNtNvXsf_NtB2_7convertIBv_DNtNtCscI6d9CVNmLh_4core5error5ErrorNtNtB18_6marker4SyncNtB1F_4SendEL_EINtNtB18_7convert4FromNtNtB4_6string6StringE4from11StringErrorE3newCsjjpCCFGI3ul_14lance_encoding.exit286, %bb.cs, %bb.ch, %bb.cz
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ac)
  br label %bb.m
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RNvMs4_NtNtNtNtCsjjpCCFGI3ul_14lance_encoding9encodings7logical9primitive8constantNtB5_18DecodeConstantTask12slice_levels(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(24) %0, ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(24) %1, ptr noalias noundef nonnull readonly align 8 captures(address) %2, i64 noundef range(i64 0, 576460752303423488) %3) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 9 uses
  %i.b = load ptr, ptr %1, align 8, !noundef !75
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %bb.n, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val2 = load ptr, ptr %i.c, align 8            ; 3 uses
  %.val243 = ptrtoaddr ptr %.val2 to i64
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.val3 = load i64, ptr %i.d, align 8
  %.idx.i = shl nuw nsw i64 %3, 4
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 %.idx.i
  %i.f = icmp eq i64 %3, 0                        ; 2 uses
  br i1 %i.f, label %_RINvXs2J_NtNtCscI6d9CVNmLh_4core5slice4iterINtB7_4IterINtNtNtBb_3ops5range5RangejEENtNtNtNtBb_4iter6traits8iterator8Iterator4foldjNCINvNtNtB1p_8adapters3map8map_foldRBQ_jjNCNCNvMs4_NtNtNtNtCsjjpCCFGI3ul_14lance_encoding9encodings7logical9primitive8constantNtB2T_18DecodeConstantTask12slice_levels00NCINvXsK_NtB1n_5accumjNtB4V_3Sum3sumINtB29_3MapBF_B2J_EE0E0EB31_.exit.i, label %.preheader.i.preheader

.preheader.i.preheader:                           ; preds = %bb.b
  %min.iters.check = icmp samesign ult i64 %3, 4
  br i1 %min.iters.check, label %.preheader.i.preheader69, label %vector.ph

vector.ph:                                        ; preds = %.preheader.i.preheader
  %n.vec = and i64 %3, 576460752303423484         ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %vec.phi = phi <2 x i64> [ zeroinitializer, %vector.ph ], [ %i.l, %vector.body ]
  %vec.phi38 = phi <2 x i64> [ zeroinitializer, %vector.ph ], [ %i.m, %vector.body ]
  %i.g = getelementptr inbounds nuw [16 x i8], ptr %2, i64 %index
  %i.h = getelementptr inbounds nuw [16 x i8], ptr %2, i64 %index
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 32
  %wide.vec = load <4 x i64>, ptr %i.g, align 8, !noalias !37647 ; 2 uses
  %strided.vec = shufflevector <4 x i64> %wide.vec, <4 x i64> poison, <2 x i32> <i32 0, i32 2>
  %strided.vec39 = shufflevector <4 x i64> %wide.vec, <4 x i64> poison, <2 x i32> <i32 1, i32 3>
  %wide.vec40 = load <4 x i64>, ptr %i.i, align 8, !noalias !37647 ; 2 uses
  %strided.vec41 = shufflevector <4 x i64> %wide.vec40, <4 x i64> poison, <2 x i32> <i32 0, i32 2>
  %strided.vec42 = shufflevector <4 x i64> %wide.vec40, <4 x i64> poison, <2 x i32> <i32 1, i32 3>
  %i.j = sub <2 x i64> %vec.phi, %strided.vec
  %i.k = sub <2 x i64> %vec.phi38, %strided.vec41
  %i.l = add <2 x i64> %i.j, %strided.vec39       ; 2 uses
  %i.m = add <2 x i64> %i.k, %strided.vec42       ; 2 uses
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.n = icmp eq i64 %index.next, %n.vec
  br i1 %i.n, label %middle.block, label %vector.body, !llvm.loop !37623

middle.block:                                     ; preds = %vector.body
  %bin.rdx = add <2 x i64> %i.m, %i.l
  %i.o = tail call i64 @llvm.vector.reduce.add.v2i64(<2 x i64> %bin.rdx) ; 2 uses
  %cmp.n = icmp eq i64 %3, %n.vec
  br i1 %cmp.n, label %_RINvXs2J_NtNtCscI6d9CVNmLh_4core5slice4iterINtB7_4IterINtNtNtBb_3ops5range5RangejEENtNtNtNtBb_4iter6traits8iterator8Iterator4foldjNCINvNtNtB1p_8adapters3map8map_foldRBQ_jjNCNCNvMs4_NtNtNtNtCsjjpCCFGI3ul_14lance_encoding9encodings7logical9primitive8constantNtB2T_18DecodeConstantTask12slice_levels00NCINvXsK_NtB1n_5accumjNtB4V_3Sum3sumINtB29_3MapBF_B2J_EE0E0EB31_.exit.i, label %.preheader.i.preheader69

.preheader.i.preheader69:                         ; preds = %.preheader.i.preheader, %middle.block
  %.sroa.04.0.i.i.ph = phi i64 [ 0, %.preheader.i.preheader ], [ %n.vec, %middle.block ]
  %.sroa.02.0.i.i.ph = phi i64 [ 0, %.preheader.i.preheader ], [ %i.o, %middle.block ]
  br label %.preheader.i

.preheader.i:                                     ; preds = %.preheader.i.preheader69, %.preheader.i
  %.sroa.04.0.i.i = phi i64 [ %i.t, %.preheader.i ], [ %.sroa.04.0.i.i.ph, %.preheader.i.preheader69 ] ; 2 uses
  %.sroa.02.0.i.i = phi i64 [ %i.s, %.preheader.i ], [ %.sroa.02.0.i.i.ph, %.preheader.i.preheader69 ]
  %i.p = getelementptr inbounds nuw [16 x i8], ptr %2, i64 %.sroa.04.0.i.i ; 2 uses
  %.val.i.i = load i64, ptr %i.p, align 8, !noalias !37647, !noundef !75
  %i.q = getelementptr i8, ptr %i.p, i64 8
  %.val13.i.i = load i64, ptr %i.q, align 8, !noalias !37647, !noundef !75
  %i.r = sub i64 %.sroa.02.0.i.i, %.val.i.i
  %i.s = add i64 %i.r, %.val13.i.i                ; 2 uses
  %i.t = add nuw nsw i64 %.sroa.04.0.i.i, 1       ; 2 uses
  %i.u = icmp eq i64 %i.t, %3
  br i1 %i.u, label %_RINvXs2J_NtNtCscI6d9CVNmLh_4core5slice4iterINtB7_4IterINtNtNtBb_3ops5range5RangejEENtNtNtNtBb_4iter6traits8iterator8Iterator4foldjNCINvNtNtB1p_8adapters3map8map_foldRBQ_jjNCNCNvMs4_NtNtNtNtCsjjpCCFGI3ul_14lance_encoding9encodings7logical9primitive8constantNtB2T_18DecodeConstantTask12slice_levels00NCINvXsK_NtB1n_5accumjNtB4V_3Sum3sumINtB29_3MapBF_B2J_EE0E0EB31_.exit.i, label %.preheader.i, !llvm.loop !37624

_RINvXs2J_NtNtCscI6d9CVNmLh_4core5slice4iterINtB7_4IterINtNtNtBb_3ops5range5RangejEENtNtNtNtBb_4iter6traits8iterator8Iterator4foldjNCINvNtNtB1p_8adapters3map8map_foldRBQ_jjNCNCNvMs4_NtNtNtNtCsjjpCCFGI3ul_14lance_encoding9encodings7logical9primitive8constantNtB2T_18DecodeConstantTask12slice_levels00NCINvXsK_NtB1n_5accumjNtB4V_3Sum3sumINtB29_3MapBF_B2J_EE0E0EB31_.exit.i: ; preds = %.preheader.i, %middle.block, %bb.b
  %.sroa.0.0.i.i = phi i64 [ 0, %bb.b ], [ %i.o, %middle.block ], [ %i.s, %.preheader.i ] ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !37647
  %i.v = shl i64 %.sroa.0.0.i.i, 1                ; 4 uses
  %i.w = icmp slt i64 %.sroa.0.0.i.i, 0
  %.not.i.i = icmp ugt i64 %i.v, 9223372036854775806
  %or.cond.i.i = or i1 %i.w, %.not.i.i
  br i1 %or.cond.i.i, label %bb.f, label %bb.c, !prof !80

bb.c:                                             ; preds = %_RINvXs2J_NtNtCscI6d9CVNmLh_4core5slice4iterINtB7_4IterINtNtNtBb_3ops5range5RangejEENtNtNtNtBb_4iter6traits8iterator8Iterator4foldjNCINvNtNtB1p_8adapters3map8map_foldRBQ_jjNCNCNvMs4_NtNtNtNtCsjjpCCFGI3ul_14lance_encoding9encodings7logical9primitive8constantNtB2T_18DecodeConstantTask12slice_levels00NCINvXsK_NtB1n_5accumjNtB4V_3Sum3sumINtB29_3MapBF_B2J_EE0E0EB31_.exit.i
  %i.x = icmp eq i64 %i.v, 0
  br i1 %i.x, label %_RNvMs4_NtCs40k4W9msRzi_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsjjpCCFGI3ul_14lance_encoding.exit.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void @_RNvCs9hJ03s5DiqP_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #63, !noalias !37648
  %i.y = tail call noundef align 2 ptr @_RNvCs9hJ03s5DiqP_7___rustc12___rust_alloc(i64 noundef %i.v, i64 noundef range(i64 1, -9223372036854775807) 2) #63, !noalias !37648 ; 2 uses
  %i.z = icmp eq ptr %i.y, null
  br i1 %i.z, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.aa = ptrtoint ptr %i.y to i64
  br label %_RNvMs4_NtCs40k4W9msRzi_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsjjpCCFGI3ul_14lance_encoding.exit.i

bb.f:                                             ; preds = %bb.d, %_RINvXs2J_NtNtCscI6d9CVNmLh_4core5slice4iterINtB7_4IterINtNtNtBb_3ops5range5RangejEENtNtNtNtBb_4iter6traits8iterator8Iterator4foldjNCINvNtNtB1p_8adapters3map8map_foldRBQ_jjNCNCNvMs4_NtNtNtNtCsjjpCCFGI3ul_14lance_encoding9encodings7logical9primitive8constantNtB2T_18DecodeConstantTask12slice_levels00NCINvXsK_NtB1n_5accumjNtB4V_3Sum3sumINtB29_3MapBF_B2J_EE0E0EB31_.exit.i
  %.sroa.4.0.ph.i = phi i64 [ 2, %bb.d ], [ 0, %_RINvXs2J_NtNtCscI6d9CVNmLh_4core5slice4iterINtB7_4IterINtNtNtBb_3ops5range5RangejEENtNtNtNtBb_4iter6traits8iterator8Iterator4foldjNCINvNtNtB1p_8adapters3map8map_foldRBQ_jjNCNCNvMs4_NtNtNtNtCsjjpCCFGI3ul_14lance_encoding9encodings7logical9primitive8constantNtB2T_18DecodeConstantTask12slice_levels00NCINvXsK_NtB1n_5accumjNtB4V_3Sum3sumINtB29_3MapBF_B2J_EE0E0EB31_.exit.i ]
  tail call void @_RNvNtCs40k4W9msRzi_5alloc7raw_vec12handle_error(i64 noundef %.sroa.4.0.ph.i, i64 %i.v) #66, !noalias !37647
  unreachable

_RNvMs4_NtCs40k4W9msRzi_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsjjpCCFGI3ul_14lance_encoding.exit.i: ; preds = %bb.e, %bb.c
  %.sroa.10.0.i = phi i64 [ %i.aa, %bb.e ], [ 2, %bb.c ]
  %.sroa.4.0.i = phi i64 [ %.sroa.0.0.i.i, %bb.e ], [ 0, %bb.c ] ; 2 uses
  %i.ab = inttoptr i64 %.sroa.10.0.i to ptr       ; 2 uses
  %i.ac = icmp samesign ule i64 %.sroa.0.0.i.i, %.sroa.4.0.i
  tail call void @llvm.assume(i1 %i.ac)
  store i64 %.sroa.4.0.i, ptr %i.a, align 8, !noalias !37647
  %i.ad = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 3 uses
  store ptr %i.ab, ptr %i.ad, align 8, !noalias !37647
  %i.ae = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 3 uses
  store i64 0, ptr %i.ae, align 8, !noalias !37647
  br i1 %i.f, label %_RNCNvMs4_NtNtNtNtCsjjpCCFGI3ul_14lance_encoding9encodings7logical9primitive8constantNtB7_18DecodeConstantTask12slice_levels0Bf_.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %_RNvMs4_NtCs40k4W9msRzi_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsjjpCCFGI3ul_14lance_encoding.exit.i
  %i.af = lshr i64 %.val3, 1                      ; 2 uses
  br label %bb.g

bb.g:                                             ; preds = %_RINvMsj_NtCs40k4W9msRzi_5alloc3vecINtB6_3VectE14extend_trustedINtNtNtNtCscI6d9CVNmLh_4core4iter8adapters6copied6CopiedINtNtNtB17_5slice4iter4ItertEEECsjjpCCFGI3ul_14lance_encoding.exit.i, %.lr.ph.i
  %i.ag = phi ptr [ %i.ab, %.lr.ph.i ], [ %i.as, %_RINvMsj_NtCs40k4W9msRzi_5alloc3vecINtB6_3VectE14extend_trustedINtNtNtNtCscI6d9CVNmLh_4core4iter8adapters6copied6CopiedINtNtNtB17_5slice4iter4ItertEEECsjjpCCFGI3ul_14lance_encoding.exit.i ]
  %i.ah = phi i64 [ 0, %.lr.ph.i ], [ %storemerge.i.i.i.i, %_RINvMsj_NtCs40k4W9msRzi_5alloc3vecINtB6_3VectE14extend_trustedINtNtNtNtCscI6d9CVNmLh_4core4iter8adapters6copied6CopiedINtNtNtB17_5slice4iter4ItertEEECsjjpCCFGI3ul_14lance_encoding.exit.i ] ; 3 uses
  %.sroa.0.018.i = phi ptr [ %2, %.lr.ph.i ], [ %i.ai, %_RINvMsj_NtCs40k4W9msRzi_5alloc3vecINtB6_3VectE14extend_trustedINtNtNtNtCscI6d9CVNmLh_4core4iter8adapters6copied6CopiedINtNtNtB17_5slice4iter4ItertEEECsjjpCCFGI3ul_14lance_encoding.exit.i ] ; 3 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %.sroa.0.018.i, i64 16 ; 2 uses
  %i.aj = load i64, ptr %.sroa.0.018.i, align 8, !noalias !37647, !noundef !75 ; 7 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %.sroa.0.018.i, i64 8
  %i.al = load i64, ptr %i.ak, align 8, !noalias !37647, !noundef !75 ; 7 uses
  %i.am = icmp ult i64 %i.al, %i.aj
  %.not.i = icmp ugt i64 %i.al, %i.af
  %or.cond.i = or i1 %i.am, %.not.i
  br i1 %or.cond.i, label %bb.h, label %bb.i, !prof !100

bb.h:                                             ; preds = %bb.g
  invoke void @_RNvNtNtCscI6d9CVNmLh_4core5slice5index16slice_index_fail(i64 noundef %i.aj, i64 noundef %i.al, i64 noundef %i.af, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @686) #66
          to label %bb.m unwind label %.loopexit.split-lp.i, !noalias !37647

bb.i:                                             ; preds = %bb.g
  %.idx10.i = shl i64 %i.aj, 1                    ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %.val2, i64 %.idx10.i ; 7 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val2) ]
  tail call void @llvm.experimental.noalias.scope.decl(metadata !37649)
  %i.ao = sub nuw nsw i64 %i.al, %i.aj            ; 10 uses
  %i.ap = load i64, ptr %i.a, align 8, !range !76, !alias.scope !37650, !noalias !37647, !noundef !75
  %i.aq = sub i64 %i.ap, %i.ah
  %i.ar = icmp ugt i64 %i.ao, %i.aq
  br i1 %i.ar, label %bb.j, label %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VectE7reserveCsjjpCCFGI3ul_14lance_encoding.exit.i.i, !prof !81

bb.j:                                             ; preds = %bb.i
  invoke fastcc void @_RINvNvMs2_NtCs40k4W9msRzi_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECsjjpCCFGI3ul_14lance_encoding(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.a, i64 noundef %i.ah, i64 noundef %i.ao, i64 noundef 2, i64 noundef 2)
          to label %.noexc.i unwind label %.loopexit.i, !noalias !37647

.noexc.i:                                         ; preds = %bb.j
  %.pre.i.i = load i64, ptr %i.ae, align 8, !alias.scope !37649, !noalias !37647
  %.pre.i = load ptr, ptr %i.ad, align 8, !alias.scope !37649, !noalias !37647
  br label %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VectE7reserveCsjjpCCFGI3ul_14lance_encoding.exit.i.i

_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VectE7reserveCsjjpCCFGI3ul_14lance_encoding.exit.i.i: ; preds = %.noexc.i, %bb.i
  %i.as = phi ptr [ %i.ag, %bb.i ], [ %.pre.i, %.noexc.i ] ; 9 uses
  %i.at = phi i64 [ %i.ah, %bb.i ], [ %.pre.i.i, %.noexc.i ] ; 8 uses
  %i.au = ptrtoaddr ptr %i.as to i64
  %i.av = icmp eq i64 %i.aj, %i.al
  br i1 %i.av, label %_RINvMsj_NtCs40k4W9msRzi_5alloc3vecINtB6_3VectE14extend_trustedINtNtNtNtCscI6d9CVNmLh_4core4iter8adapters6copied6CopiedINtNtNtB17_5slice4iter4ItertEEECsjjpCCFGI3ul_14lance_encoding.exit.i, label %iter.check

iter.check:                                       ; preds = %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VectE7reserveCsjjpCCFGI3ul_14lance_encoding.exit.i.i
  %min.iters.check45 = icmp ult i64 %i.ao, 4
  br i1 %min.iters.check45, label %.preheader.i.i.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %iter.check
  %i.aw = shl i64 %i.at, 1
  %i.ax = add i64 %i.aw, %i.au
  %i.ay = add i64 %.idx10.i, %.val243
  %i.az = sub i64 %i.ay, %i.ax
  %diff.check = icmp ugt i64 %i.az, -32
  br i1 %diff.check, label %.preheader.i.i.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %vector.memcheck
  %min.iters.check46 = icmp ult i64 %i.ao, 16
  br i1 %min.iters.check46, label %vec.epilog.ph, label %vector.ph47

vector.ph47:                                      ; preds = %vector.main.loop.iter.check
  %i.ba = and i64 %i.ao, 12
  %n.vec48 = and i64 %i.ao, -16                   ; 5 uses
  %i.bb = add i64 %i.at, %n.vec48                 ; 2 uses
  %i.bc = getelementptr [2 x i8], ptr %i.as, i64 %i.at
  br label %vector.body49

vector.body49:                                    ; preds = %vector.ph47, %vector.body49
  %index50 = phi i64 [ 0, %vector.ph47 ], [ %index.next52, %vector.body49 ] ; 3 uses
  %i.bd = getelementptr inbounds nuw [2 x i8], ptr %i.an, i64 %index50 ; 2 uses
  %i.be = getelementptr inbounds nuw i8, ptr %i.bd, i64 16
  %wide.load = load <8 x i16>, ptr %i.bd, align 2, !noalias !37651
  %wide.load51 = load <8 x i16>, ptr %i.be, align 2, !noalias !37651
  %i.bf = getelementptr [2 x i8], ptr %i.bc, i64 %index50 ; 2 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bf, i64 16
  store <8 x i16> %wide.load, ptr %i.bf, align 2, !noalias !37652
  store <8 x i16> %wide.load51, ptr %i.bg, align 2, !noalias !37652
  %index.next52 = add nuw i64 %index50, 16        ; 2 uses
  %i.bh = icmp eq i64 %index.next52, %n.vec48
  br i1 %i.bh, label %middle.block53, label %vector.body49, !llvm.loop !37643

middle.block53:                                   ; preds = %vector.body49
  %cmp.n54 = icmp eq i64 %i.ao, %n.vec48
  br i1 %cmp.n54, label %_RINvMsj_NtCs40k4W9msRzi_5alloc3vecINtB6_3VectE14extend_trustedINtNtNtNtCscI6d9CVNmLh_4core4iter8adapters6copied6CopiedINtNtNtB17_5slice4iter4ItertEEECsjjpCCFGI3ul_14lance_encoding.exit.i, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block53
  %min.epilog.iters.check = icmp eq i64 %i.ba, 0
  br i1 %min.epilog.iters.check, label %.preheader.i.i.preheader, label %vec.epilog.ph, !prof !101

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec48, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec56 = and i64 %i.ao, -4                    ; 4 uses
  %i.bi = add i64 %i.at, %n.vec56                 ; 2 uses
  %i.bj = getelementptr [2 x i8], ptr %i.as, i64 %i.at
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index57 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next59, %vec.epilog.vector.body ] ; 3 uses
  %i.bk = getelementptr inbounds nuw [2 x i8], ptr %i.an, i64 %index57
  %wide.load58 = load <4 x i16>, ptr %i.bk, align 2, !noalias !37651
  %i.bl = getelementptr [2 x i8], ptr %i.bj, i64 %index57
  store <4 x i16> %wide.load58, ptr %i.bl, align 2, !noalias !37652
  %index.next59 = add nuw i64 %index57, 4         ; 2 uses
  %i.bm = icmp eq i64 %index.next59, %n.vec56
  br i1 %i.bm, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !37644

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n60 = icmp eq i64 %i.ao, %n.vec56
  br i1 %cmp.n60, label %_RINvMsj_NtCs40k4W9msRzi_5alloc3vecINtB6_3VectE14extend_trustedINtNtNtNtCscI6d9CVNmLh_4core4iter8adapters6copied6CopiedINtNtNtB17_5slice4iter4ItertEEECsjjpCCFGI3ul_14lance_encoding.exit.i, label %.preheader.i.i.preheader

.preheader.i.i.preheader:                         ; preds = %iter.check, %vector.memcheck, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.ph = phi i64 [ %i.at, %iter.check ], [ %i.at, %vector.memcheck ], [ %i.bb, %vec.epilog.iter.check ], [ %i.bi, %vec.epilog.middle.block ] ; 2 uses
  %.sroa.01.0.i.i.i.i.i.ph = phi i64 [ 0, %iter.check ], [ 0, %vector.memcheck ], [ %n.vec48, %vec.epilog.iter.check ], [ %n.vec56, %vec.epilog.middle.block ] ; 3 uses
  %i.bn = sub i64 %i.al, %i.aj
  %xtraiter = and i64 %i.bn, 3                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.preheader.i.i.prol.loopexit, label %.preheader.i.i.prol

.preheader.i.i.prol:                              ; preds = %.preheader.i.i.preheader, %.preheader.i.i.prol
  %i.bo = phi i64 [ %i.br, %.preheader.i.i.prol ], [ %.ph, %.preheader.i.i.preheader ] ; 2 uses
  %.sroa.01.0.i.i.i.i.i.prol = phi i64 [ %i.bs, %.preheader.i.i.prol ], [ %.sroa.01.0.i.i.i.i.i.ph, %.preheader.i.i.preheader ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.preheader.i.i.prol ], [ 0, %.preheader.i.i.preheader ]
  %i.bp = getelementptr inbounds nuw [2 x i8], ptr %i.an, i64 %.sroa.01.0.i.i.i.i.i.prol
  %.val16.i.i.i.i.i.prol = load i16, ptr %i.bp, align 2, !noalias !37651, !noundef !75
  %i.bq = getelementptr inbounds nuw [2 x i8], ptr %i.as, i64 %i.bo
  store i16 %.val16.i.i.i.i.i.prol, ptr %i.bq, align 2, !noalias !37652
  %i.br = add i64 %i.bo, 1                        ; 3 uses
  %i.bs = add nuw i64 %.sroa.01.0.i.i.i.i.i.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.preheader.i.i.prol.loopexit, label %.preheader.i.i.prol, !llvm.loop !37645

.preheader.i.i.prol.loopexit:                     ; preds = %.preheader.i.i.prol, %.preheader.i.i.preheader
  %.lcssa.unr = phi i64 [ poison, %.preheader.i.i.preheader ], [ %i.br, %.preheader.i.i.prol ]
  %.unr = phi i64 [ %.ph, %.preheader.i.i.preheader ], [ %i.br, %.preheader.i.i.prol ]
  %.sroa.01.0.i.i.i.i.i.unr = phi i64 [ %.sroa.01.0.i.i.i.i.i.ph, %.preheader.i.i.preheader ], [ %i.bs, %.preheader.i.i.prol ]
  %i.bt = sub i64 %.sroa.01.0.i.i.i.i.i.ph, %i.al
  %i.bu = add i64 %i.bt, %i.aj
  %i.bv = icmp ugt i64 %i.bu, -4
  br i1 %i.bv, label %_RINvMsj_NtCs40k4W9msRzi_5alloc3vecINtB6_3VectE14extend_trustedINtNtNtNtCscI6d9CVNmLh_4core4iter8adapters6copied6CopiedINtNtNtB17_5slice4iter4ItertEEECsjjpCCFGI3ul_14lance_encoding.exit.i, label %.preheader.i.i

.preheader.i.i:                                   ; preds = %.preheader.i.i.prol.loopexit, %.preheader.i.i
  %i.bw = phi i64 [ %i.cl, %.preheader.i.i ], [ %.unr, %.preheader.i.i.prol.loopexit ] ; 5 uses
  %.sroa.01.0.i.i.i.i.i = phi i64 [ %i.cm, %.preheader.i.i ], [ %.sroa.01.0.i.i.i.i.i.unr, %.preheader.i.i.prol.loopexit ] ; 5 uses
  %i.bx = getelementptr inbounds nuw [2 x i8], ptr %i.an, i64 %.sroa.01.0.i.i.i.i.i
  %.val16.i.i.i.i.i = load i16, ptr %i.bx, align 2, !noalias !37651, !noundef !75
  %i.by = getelementptr inbounds nuw [2 x i8], ptr %i.as, i64 %i.bw
  store i16 %.val16.i.i.i.i.i, ptr %i.by, align 2, !noalias !37652
  %i.bz = getelementptr inbounds nuw [2 x i8], ptr %i.an, i64 %.sroa.01.0.i.i.i.i.i
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bz, i64 2
  %.val16.i.i.i.i.i.1 = load i16, ptr %i.ca, align 2, !noalias !37651, !noundef !75
  %i.cb = getelementptr [2 x i8], ptr %i.as, i64 %i.bw
  %i.cc = getelementptr i8, ptr %i.cb, i64 2
  store i16 %.val16.i.i.i.i.i.1, ptr %i.cc, align 2, !noalias !37652
  %i.cd = getelementptr inbounds nuw [2 x i8], ptr %i.an, i64 %.sroa.01.0.i.i.i.i.i
  %i.ce = getelementptr inbounds nuw i8, ptr %i.cd, i64 4
  %.val16.i.i.i.i.i.2 = load i16, ptr %i.ce, align 2, !noalias !37651, !noundef !75
  %i.cf = getelementptr [2 x i8], ptr %i.as, i64 %i.bw
  %i.cg = getelementptr i8, ptr %i.cf, i64 4
  store i16 %.val16.i.i.i.i.i.2, ptr %i.cg, align 2, !noalias !37652
  %i.ch = getelementptr inbounds nuw [2 x i8], ptr %i.an, i64 %.sroa.01.0.i.i.i.i.i
  %i.ci = getelementptr inbounds nuw i8, ptr %i.ch, i64 6
  %.val16.i.i.i.i.i.3 = load i16, ptr %i.ci, align 2, !noalias !37651, !noundef !75
  %i.cj = getelementptr [2 x i8], ptr %i.as, i64 %i.bw
  %i.ck = getelementptr i8, ptr %i.cj, i64 6
  store i16 %.val16.i.i.i.i.i.3, ptr %i.ck, align 2, !noalias !37652
  %i.cl = add i64 %i.bw, 4                        ; 2 uses
  %i.cm = add nuw i64 %.sroa.01.0.i.i.i.i.i, 4    ; 2 uses
  %i.cn = icmp eq i64 %i.cm, %i.ao
  br i1 %i.cn, label %_RINvMsj_NtCs40k4W9msRzi_5alloc3vecINtB6_3VectE14extend_trustedINtNtNtNtCscI6d9CVNmLh_4core4iter8adapters6copied6CopiedINtNtNtB17_5slice4iter4ItertEEECsjjpCCFGI3ul_14lance_encoding.exit.i, label %.preheader.i.i, !llvm.loop !37646

_RINvMsj_NtCs40k4W9msRzi_5alloc3vecINtB6_3VectE14extend_trustedINtNtNtNtCscI6d9CVNmLh_4core4iter8adapters6copied6CopiedINtNtNtB17_5slice4iter4ItertEEECsjjpCCFGI3ul_14lance_encoding.exit.i: ; preds = %.preheader.i.i.prol.loopexit, %.preheader.i.i, %middle.block53, %vec.epilog.middle.block, %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VectE7reserveCsjjpCCFGI3ul_14lance_encoding.exit.i.i
  %storemerge.i.i.i.i = phi i64 [ %i.at, %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VectE7reserveCsjjpCCFGI3ul_14lance_encoding.exit.i.i ], [ %i.bi, %vec.epilog.middle.block ], [ %i.bb, %middle.block53 ], [ %.lcssa.unr, %.preheader.i.i.prol.loopexit ], [ %i.cl, %.preheader.i.i ] ; 2 uses
  store i64 %storemerge.i.i.i.i, ptr %i.ae, align 8, !noalias !37647
  %i.co = icmp eq ptr %i.ai, %i.e
  br i1 %i.co, label %_RNCNvMs4_NtNtNtNtCsjjpCCFGI3ul_14lance_encoding9encodings7logical9primitive8constantNtB7_18DecodeConstantTask12slice_levels0Bf_.exit, label %bb.g

.loopexit.i:                                      ; preds = %bb.j
  %lpad.loopexit.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.k

.loopexit.split-lp.i:                             ; preds = %bb.h
  %lpad.loopexit.split-lp.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.k

bb.k:                                             ; preds = %.loopexit.split-lp.i, %.loopexit.i
  %lpad.phi.i = phi { ptr, i32 } [ %lpad.loopexit.i, %.loopexit.i ], [ %lpad.loopexit.split-lp.i, %.loopexit.split-lp.i ]
  %.val.i = load i64, ptr %i.a, align 8, !noalias !37647 ; 2 uses
  %i.cp = icmp eq i64 %.val.i, 0
  br i1 %i.cp, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VectEECsjjpCCFGI3ul_14lance_encoding.exit.i, label %bb.l

bb.l:                                             ; preds = %bb.k
  %.val4.i = load ptr, ptr %i.ad, align 8, !noalias !37647, !nonnull !75, !noundef !75
  %i.cq = shl nuw i64 %.val.i, 1
  tail call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.val4.i, i64 noundef %i.cq, i64 noundef range(i64 1, -9223372036854775807) 2) #63, !noalias !37647
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VectEECsjjpCCFGI3ul_14lance_encoding.exit.i

bb.m:                                             ; preds = %bb.h
  unreachable

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VectEECsjjpCCFGI3ul_14lance_encoding.exit.i: ; preds = %bb.l, %bb.k
  resume { ptr, i32 } %lpad.phi.i

_RNCNvMs4_NtNtNtNtCsjjpCCFGI3ul_14lance_encoding9encodings7logical9primitive8constantNtB7_18DecodeConstantTask12slice_levels0Bf_.exit: ; preds = %_RINvMsj_NtCs40k4W9msRzi_5alloc3vecINtB6_3VectE14extend_trustedINtNtNtNtCscI6d9CVNmLh_4core4iter8adapters6copied6CopiedINtNtNtB17_5slice4iter4ItertEEECsjjpCCFGI3ul_14lance_encoding.exit.i, %_RNvMs4_NtCs40k4W9msRzi_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsjjpCCFGI3ul_14lance_encoding.exit.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.a, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !37647
  br label %bb.o

bb.n:                                             ; preds = %bb.a
  store i64 -1, ptr %0, align 8
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %_RNCNvMs4_NtNtNtNtCsjjpCCFGI3ul_14lance_encoding9encodings7logical9primitive8constantNtB7_18DecodeConstantTask12slice_levels0Bf_.exit
  ret void
}

; Function Attrs: nonlazybind uwtable
define noundef zeroext i1 @_RNvMs5_NtCsjjpCCFGI3ul_14lance_encoding6repdefNtB5_15RepDefUnraveler12is_all_valid(ptr noalias noundef readonly align 8 captures(none) dereferenceable(152) %0) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = load i64, ptr %i.a, align 8, !range !99, !noundef !75
  %.not = icmp eq i64 %i.b, -1
  br i1 %.not, label %bb.p, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !37655)
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.d = load i64, ptr %i.c, align 8, !alias.scope !37655, !noundef !75 ; 2 uses
  %i.e = icmp eq i64 %i.d, 0
  br i1 %i.e, label %_RNvMs5_NtNtNtNtCsjjpCCFGI3ul_14lance_encoding9encodings7logical9primitive6sparseNtB5_25SparseStructuralUnraveler12is_all_valid.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = add i64 %i.d, -1                         ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.h = load i64, ptr %i.g, align 8, !alias.scope !37655, !noundef !75
  %i.i = icmp ult i64 %i.f, %i.h
  br i1 %i.i, label %bb.d, label %_RNvMs5_NtNtNtNtCsjjpCCFGI3ul_14lance_encoding9encodings7logical9primitive6sparseNtB5_25SparseStructuralUnraveler12is_all_valid.exit

bb.d:                                             ; preds = %bb.c
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.k = load ptr, ptr %i.j, align 8, !alias.scope !37655, !nonnull !75, !noundef !75
  %i.l = getelementptr inbounds nuw [112 x i8], ptr %i.k, i64 %i.f ; 3 uses
  %i.m = load i64, ptr %i.l, align 8, !range !105, !noalias !37655, !noundef !75 ; 2 uses
  %i.n = icmp ne i64 %i.m, 4
  tail call void @llvm.assume(i1 %i.n)
  %i.o = icmp samesign ult i64 %i.m, 3            ; 2 uses
  %..i = select i1 %i.o, i64 96, i64 40
  %.21.i = select i1 %i.o, i64 64, i64 8
  %i.p = getelementptr inbounds nuw i8, ptr %i.l, i64 %..i
  %i.q = getelementptr inbounds nuw i8, ptr %i.l, i64 %.21.i ; 6 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 24
  %i.s = load i8, ptr %i.r, align 8, !range !89, !noalias !37655, !noundef !75
  %i.t = trunc nuw i8 %i.s to i1
  %i.u = load i64, ptr %i.q, align 8, !range !106, !noalias !37655, !noundef !75 ; 2 uses
  %i.v = xor i64 %i.u, -9223372036854775808
  %i.w = icmp slt i64 %i.u, 0
  %i.x = select i1 %i.w, i64 %i.v, i64 3          ; 4 uses
  br i1 %i.t, label %bb.f, label %bb.g

bb.e:                                             ; preds = %bb.g, %bb.f
  unreachable

bb.f:                                             ; preds = %bb.d
  switch i64 %i.x, label %bb.e [
    i64 0, label %bb.n
    i64 1, label %bb.o
    i64 2, label %bb.l
    i64 3, label %bb.m
  ]

bb.g:                                             ; preds = %bb.d
  switch i64 %i.x, label %bb.e [
    i64 0, label %bb.j
    i64 1, label %bb.k
    i64 2, label %bb.h
    i64 3, label %bb.i
  ]

bb.h:                                             ; preds = %bb.g
  br label %bb.k

bb.i:                                             ; preds = %bb.g
  %i.y = getelementptr inbounds nuw i8, ptr %i.q, i64 16
  %i.z = load i64, ptr %i.y, align 8, !noalias !37655, !noundef !75 ; 2 uses
  %i.aa = icmp ult i64 %i.z, 1152921504606846976
  tail call void @llvm.assume(i1 %i.aa)
  br label %bb.j

bb.j:                                             ; preds = %bb.k, %bb.i, %bb.g
  %.sroa.014.0.i = phi i64 [ %i.z, %bb.i ], [ %i.ad, %bb.k ], [ %i.x, %bb.g ]
  %i.ab = icmp eq i64 %.sroa.014.0.i, 0
  br label %_RNvMs5_NtNtNtNtCsjjpCCFGI3ul_14lance_encoding9encodings7logical9primitive6sparseNtB5_25SparseStructuralUnraveler12is_all_valid.exit

bb.k:                                             ; preds = %bb.h, %bb.g
  %.sink19.i = phi i64 [ 16, %bb.h ], [ 8, %bb.g ]
  %i.ac = getelementptr inbounds nuw i8, ptr %i.q, i64 %.sink19.i
  %i.ad = load i64, ptr %i.ac, align 8, !noalias !37655, !noundef !75
  br label %bb.j

bb.l:                                             ; preds = %bb.f
  br label %bb.o

bb.m:                                             ; preds = %bb.f
  %i.ae = getelementptr inbounds nuw i8, ptr %i.q, i64 16
  %i.af = load i64, ptr %i.ae, align 8, !noalias !37655, !noundef !75 ; 2 uses
  %i.ag = icmp ult i64 %i.af, 1152921504606846976
  tail call void @llvm.assume(i1 %i.ag)
  br label %bb.n

end_hunk_9
begin_hunk_10_@_RNvMse_NtCsjjpCCFGI3ul_14lance_encoding6repdefNtB5_19ControlWordIterator11append_next:bb.a
  %i.fm = icmp eq i16 %i.ev, 0
  br i1 %i.fm, label %_RNvMs7_NtCsjjpCCFGI3ul_14lance_encoding6repdefINtB5_25BinaryControlWordIteratorINtNtNtNtCscI6d9CVNmLh_4core4iter8adapters3zip3ZipINtNtB1k_6copied6CopiedINtNtNtB1o_5slice4iter4ItertEEB23_EhE11append_nextB7_.exit, label %bb.o

bb.o:                                             ; preds = %_RNvMsF_NtCs40k4W9msRzi_5alloc3vecINtB5_3VechE8push_mutCsjjpCCFGI3ul_14lance_encoding.exit.i54
  %i.fn = getelementptr inbounds nuw i8, ptr %0, i64 29
  %i.fo = load i8, ptr %i.fn, align 1, !alias.scope !46573, !noalias !46574, !noundef !75
  %i.fp = icmp eq i8 %i.fo, 0
  %i.fq = select i1 %i.fp, i16 257, i16 1
  br label %_RNvMs7_NtCsjjpCCFGI3ul_14lance_encoding6repdefINtB5_25BinaryControlWordIteratorINtNtNtNtCscI6d9CVNmLh_4core4iter8adapters3zip3ZipINtNtB1k_6copied6CopiedINtNtNtB1o_5slice4iter4ItertEEB23_EhE11append_nextB7_.exit

bb.p:                                             ; preds = %bb.a
  %i.fr = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !46579)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !46580)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !46581)
  %i.fs = load ptr, ptr %i.fr, align 8, !alias.scope !46582, !noalias !46580, !nonnull !75, !noundef !75 ; 3 uses
  %i.ft = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.fu = load ptr, ptr %i.ft, align 8, !alias.scope !46582, !noalias !46580, !nonnull !75, !noundef !75
  %i.fv = icmp eq ptr %i.fs, %i.fu
  br i1 %i.fv, label %bb.t, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.fw = getelementptr inbounds nuw i8, ptr %i.fs, i64 2
  store ptr %i.fw, ptr %i.fr, align 8, !alias.scope !46582, !noalias !46580
  %i.fx = load i16, ptr %i.fs, align 2, !noalias !46583, !noundef !75
  %i.fy = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.fz = load i16, ptr %i.fy, align 8, !alias.scope !46579, !noalias !46580, !noundef !75
  %i.ga = and i16 %i.fz, %i.fx                    ; 4 uses
  %.sroa.03.0.extract.trunc.i = trunc i16 %i.ga to i8
  %i.gb = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 3 uses
  %i.gc = load i64, ptr %i.gb, align 8, !alias.scope !46584, !noalias !46579, !noundef !75 ; 4 uses
  %i.gd = load i64, ptr %1, align 8, !range !76, !alias.scope !46584, !noalias !46579, !noundef !75
  %i.ge = icmp eq i64 %i.gc, %i.gd
  br i1 %i.ge, label %bb.r, label %_RNvMsF_NtCs40k4W9msRzi_5alloc3vecINtB5_3VechE8push_mutCsjjpCCFGI3ul_14lance_encoding.exit.i61

bb.r:                                             ; preds = %bb.q
  tail call void @_RNvMs3_NtCs40k4W9msRzi_5alloc7raw_vecINtB5_6RawVechE8grow_oneB7_(ptr noalias noundef nonnull align 8 dereferenceable(24) %1), !noalias !46579
  br label %_RNvMsF_NtCs40k4W9msRzi_5alloc3vecINtB5_3VechE8push_mutCsjjpCCFGI3ul_14lance_encoding.exit.i61

_RNvMsF_NtCs40k4W9msRzi_5alloc3vecINtB5_3VechE8push_mutCsjjpCCFGI3ul_14lance_encoding.exit.i61: ; preds = %bb.r, %bb.q
  %i.gf = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.gg = load ptr, ptr %i.gf, align 8, !alias.scope !46584, !noalias !46579, !nonnull !75, !noundef !75
  %i.gh = getelementptr inbounds nuw i8, ptr %i.gg, i64 %i.gc
  store i8 %.sroa.03.0.extract.trunc.i, ptr %i.gh, align 1, !noalias !46579
  %i.gi = add i64 %i.gc, 1                        ; 3 uses
  store i64 %i.gi, ptr %i.gb, align 8, !alias.scope !46584, !noalias !46579
  %i.gj = load i64, ptr %1, align 8, !range !76, !alias.scope !46585, !noalias !46579, !noundef !75
  %i.gk = icmp eq i64 %i.gi, %i.gj
  br i1 %i.gk, label %bb.s, label %_RNvMsb_NtCsjjpCCFGI3ul_14lance_encoding6repdefINtB5_24UnaryControlWordIteratorINtNtNtNtCscI6d9CVNmLh_4core4iter8adapters6copied6CopiedINtNtNtB1n_5slice4iter4ItertEEtE11append_nextB7_.exit

bb.s:                                             ; preds = %_RNvMsF_NtCs40k4W9msRzi_5alloc3vecINtB5_3VechE8push_mutCsjjpCCFGI3ul_14lance_encoding.exit.i61
  tail call void @_RNvMs3_NtCs40k4W9msRzi_5alloc7raw_vecINtB5_6RawVechE8grow_oneB7_(ptr noalias noundef nonnull align 8 dereferenceable(24) %1), !noalias !46579
  br label %_RNvMsb_NtCsjjpCCFGI3ul_14lance_encoding6repdefINtB5_24UnaryControlWordIteratorINtNtNtNtCscI6d9CVNmLh_4core4iter8adapters6copied6CopiedINtNtNtB1n_5slice4iter4ItertEEtE11append_nextB7_.exit

bb.t:                                             ; preds = %bb.p
  tail call void @_RNvNtCscI6d9CVNmLh_4core6option13unwrap_failed(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @2122) #66, !noalias !46586
  unreachable

_RNvMsb_NtCsjjpCCFGI3ul_14lance_encoding6repdefINtB5_24UnaryControlWordIteratorINtNtNtNtCscI6d9CVNmLh_4core4iter8adapters6copied6CopiedINtNtNtB1n_5slice4iter4ItertEEtE11append_nextB7_.exit: ; preds = %_RNvMsF_NtCs40k4W9msRzi_5alloc3vecINtB5_3VechE8push_mutCsjjpCCFGI3ul_14lance_encoding.exit.i61, %bb.s
  %.sroa.44.0.extract.shift.i = lshr i16 %i.ga, 8
  %.sroa.44.0.extract.trunc.i = trunc nuw i16 %.sroa.44.0.extract.shift.i to i8
  %i.gl = load ptr, ptr %i.gf, align 8, !alias.scope !46585, !noalias !46579, !nonnull !75, !noundef !75
  %i.gm = getelementptr inbounds nuw i8, ptr %i.gl, i64 %i.gi
  store i8 %.sroa.44.0.extract.trunc.i, ptr %i.gm, align 1, !noalias !46579
  %i.gn = add i64 %i.gc, 2
  store i64 %i.gn, ptr %i.gb, align 8, !alias.scope !46585, !noalias !46579
  %i.go = getelementptr inbounds nuw i8, ptr %0, i64 26
  %i.gp = load i16, ptr %i.go, align 2, !alias.scope !46579, !noalias !46580, !noundef !75 ; 2 uses
  %i.gq = icmp eq i16 %i.gp, 0
  %i.gr = icmp eq i16 %i.ga, %i.gp
  %narrow.i62 = or i1 %i.gq, %i.gr
  %i.gs = icmp eq i16 %i.ga, 0
  %i.gt = getelementptr inbounds nuw i8, ptr %0, i64 29
  %i.gu = load i8, ptr %i.gt, align 1, !alias.scope !46579, !noalias !46580
  %i.gv = icmp eq i8 %i.gu, 0
  %narrow13.i = select i1 %i.gs, i1 true, i1 %i.gv
  %.sroa.027.0.extract.trunc = zext i1 %narrow.i62 to i8
  %.sroa.027.1.extract.trunc = select i1 %narrow13.i, i16 257, i16 1
  br label %_RNvMs7_NtCsjjpCCFGI3ul_14lance_encoding6repdefINtB5_25BinaryControlWordIteratorINtNtNtNtCscI6d9CVNmLh_4core4iter8adapters3zip3ZipINtNtB1k_6copied6CopiedINtNtNtB1o_5slice4iter4ItertEEB23_EhE11append_nextB7_.exit

bb.u:                                             ; preds = %bb.a
  %i.gw = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !46587)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !46588)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !46589)
  %i.gx = load ptr, ptr %i.gw, align 8, !alias.scope !46590, !noalias !46588, !nonnull !75, !noundef !75 ; 3 uses
  %i.gy = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.gz = load ptr, ptr %i.gy, align 8, !alias.scope !46590, !noalias !46588, !nonnull !75, !noundef !75
  %i.ha = icmp eq ptr %i.gx, %i.gz
  br i1 %i.ha, label %_RNvMs7_NtCsjjpCCFGI3ul_14lance_encoding6repdefINtB5_25BinaryControlWordIteratorINtNtNtNtCscI6d9CVNmLh_4core4iter8adapters3zip3ZipINtNtB1k_6copied6CopiedINtNtNtB1o_5slice4iter4ItertEEB23_EhE11append_nextB7_.exit, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.hb = getelementptr inbounds nuw i8, ptr %i.gx, i64 2
  store ptr %i.hb, ptr %i.gw, align 8, !alias.scope !46590, !noalias !46588
  %i.hc = load i16, ptr %i.gx, align 2, !noalias !46591, !noundef !75
  %i.hd = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.he = load i16, ptr %i.hd, align 8, !alias.scope !46587, !noalias !46588, !noundef !75
  %i.hf = and i16 %i.he, %i.hc                    ; 4 uses
  %.sroa.04.0.extract.trunc.i63 = trunc i16 %i.hf to i8
  %.sroa.45.0.extract.shift.i64 = lshr i16 %i.hf, 8
  %.sroa.45.0.extract.trunc.i65 = trunc nuw i16 %.sroa.45.0.extract.shift.i64 to i8
  %i.hg = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 5 uses
  %i.hh = load i64, ptr %i.hg, align 8, !alias.scope !46592, !noalias !46587, !noundef !75 ; 6 uses
  %i.hi = load i64, ptr %1, align 8, !range !76, !alias.scope !46592, !noalias !46587, !noundef !75
  %i.hj = icmp eq i64 %i.hh, %i.hi
  br i1 %i.hj, label %bb.w, label %_RNvMsF_NtCs40k4W9msRzi_5alloc3vecINtB5_3VechE8push_mutCsjjpCCFGI3ul_14lance_encoding.exit.i66

bb.w:                                             ; preds = %bb.v
  tail call void @_RNvMs3_NtCs40k4W9msRzi_5alloc7raw_vecINtB5_6RawVechE8grow_oneB7_(ptr noalias noundef nonnull align 8 dereferenceable(24) %1), !noalias !46587
  br label %_RNvMsF_NtCs40k4W9msRzi_5alloc3vecINtB5_3VechE8push_mutCsjjpCCFGI3ul_14lance_encoding.exit.i66

_RNvMsF_NtCs40k4W9msRzi_5alloc3vecINtB5_3VechE8push_mutCsjjpCCFGI3ul_14lance_encoding.exit.i66: ; preds = %bb.w, %bb.v
  %i.hk = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 4 uses
  %i.hl = load ptr, ptr %i.hk, align 8, !alias.scope !46592, !noalias !46587, !nonnull !75, !noundef !75
  %i.hm = getelementptr inbounds nuw i8, ptr %i.hl, i64 %i.hh
  store i8 %.sroa.04.0.extract.trunc.i63, ptr %i.hm, align 1, !noalias !46587
  %i.hn = add i64 %i.hh, 1                        ; 3 uses
  store i64 %i.hn, ptr %i.hg, align 8, !alias.scope !46592, !noalias !46587
  %i.ho = load i64, ptr %1, align 8, !range !76, !alias.scope !46593, !noalias !46587, !noundef !75
  %i.hp = icmp eq i64 %i.hn, %i.ho
  br i1 %i.hp, label %bb.x, label %_RNvMsF_NtCs40k4W9msRzi_5alloc3vecINtB5_3VechE8push_mutCsjjpCCFGI3ul_14lance_encoding.exit11.i

bb.x:                                             ; preds = %_RNvMsF_NtCs40k4W9msRzi_5alloc3vecINtB5_3VechE8push_mutCsjjpCCFGI3ul_14lance_encoding.exit.i66
  tail call void @_RNvMs3_NtCs40k4W9msRzi_5alloc7raw_vecINtB5_6RawVechE8grow_oneB7_(ptr noalias noundef nonnull align 8 dereferenceable(24) %1), !noalias !46587
  br label %_RNvMsF_NtCs40k4W9msRzi_5alloc3vecINtB5_3VechE8push_mutCsjjpCCFGI3ul_14lance_encoding.exit11.i

_RNvMsF_NtCs40k4W9msRzi_5alloc3vecINtB5_3VechE8push_mutCsjjpCCFGI3ul_14lance_encoding.exit11.i: ; preds = %bb.x, %_RNvMsF_NtCs40k4W9msRzi_5alloc3vecINtB5_3VechE8push_mutCsjjpCCFGI3ul_14lance_encoding.exit.i66
  %i.hq = load ptr, ptr %i.hk, align 8, !alias.scope !46593, !noalias !46587, !nonnull !75, !noundef !75
  %i.hr = getelementptr inbounds nuw i8, ptr %i.hq, i64 %i.hn
  store i8 %.sroa.45.0.extract.trunc.i65, ptr %i.hr, align 1, !noalias !46587
  %i.hs = add i64 %i.hh, 2                        ; 3 uses
  store i64 %i.hs, ptr %i.hg, align 8, !alias.scope !46593, !noalias !46587
  %i.ht = load i64, ptr %1, align 8, !range !76, !alias.scope !46594, !noalias !46587, !noundef !75
  %i.hu = icmp eq i64 %i.hs, %i.ht
  br i1 %i.hu, label %bb.y, label %_RNvMsF_NtCs40k4W9msRzi_5alloc3vecINtB5_3VechE8push_mutCsjjpCCFGI3ul_14lance_encoding.exit12.i67

bb.y:                                             ; preds = %_RNvMsF_NtCs40k4W9msRzi_5alloc3vecINtB5_3VechE8push_mutCsjjpCCFGI3ul_14lance_encoding.exit11.i
  tail call void @_RNvMs3_NtCs40k4W9msRzi_5alloc7raw_vecINtB5_6RawVechE8grow_oneB7_(ptr noalias noundef nonnull align 8 dereferenceable(24) %1), !noalias !46587
  br label %_RNvMsF_NtCs40k4W9msRzi_5alloc3vecINtB5_3VechE8push_mutCsjjpCCFGI3ul_14lance_encoding.exit12.i67

_RNvMsF_NtCs40k4W9msRzi_5alloc3vecINtB5_3VechE8push_mutCsjjpCCFGI3ul_14lance_encoding.exit12.i67: ; preds = %bb.y, %_RNvMsF_NtCs40k4W9msRzi_5alloc3vecINtB5_3VechE8push_mutCsjjpCCFGI3ul_14lance_encoding.exit11.i
  %i.hv = load ptr, ptr %i.hk, align 8, !alias.scope !46594, !noalias !46587, !nonnull !75, !noundef !75
  %i.hw = getelementptr inbounds nuw i8, ptr %i.hv, i64 %i.hs
  store i8 0, ptr %i.hw, align 1, !noalias !46587
  %i.hx = add i64 %i.hh, 3                        ; 3 uses
  store i64 %i.hx, ptr %i.hg, align 8, !alias.scope !46594, !noalias !46587
  %i.hy = load i64, ptr %1, align 8, !range !76, !alias.scope !46595, !noalias !46587, !noundef !75
  %i.hz = icmp eq i64 %i.hx, %i.hy
  br i1 %i.hz, label %bb.z, label %_RNvMsF_NtCs40k4W9msRzi_5alloc3vecINtB5_3VechE8push_mutCsjjpCCFGI3ul_14lance_encoding.exit13.i68

bb.z:                                             ; preds = %_RNvMsF_NtCs40k4W9msRzi_5alloc3vecINtB5_3VechE8push_mutCsjjpCCFGI3ul_14lance_encoding.exit12.i67
  tail call void @_RNvMs3_NtCs40k4W9msRzi_5alloc7raw_vecINtB5_6RawVechE8grow_oneB7_(ptr noalias noundef nonnull align 8 dereferenceable(24) %1), !noalias !46587
  br label %_RNvMsF_NtCs40k4W9msRzi_5alloc3vecINtB5_3VechE8push_mutCsjjpCCFGI3ul_14lance_encoding.exit13.i68

_RNvMsF_NtCs40k4W9msRzi_5alloc3vecINtB5_3VechE8push_mutCsjjpCCFGI3ul_14lance_encoding.exit13.i68: ; preds = %bb.z, %_RNvMsF_NtCs40k4W9msRzi_5alloc3vecINtB5_3VechE8push_mutCsjjpCCFGI3ul_14lance_encoding.exit12.i67
  %i.ia = load ptr, ptr %i.hk, align 8, !alias.scope !46595, !noalias !46587, !nonnull !75, !noundef !75
  %i.ib = getelementptr inbounds nuw i8, ptr %i.ia, i64 %i.hx
  store i8 0, ptr %i.ib, align 1, !noalias !46587
  %i.ic = add i64 %i.hh, 4
  store i64 %i.ic, ptr %i.hg, align 8, !alias.scope !46595, !noalias !46587
  %i.id = getelementptr inbounds nuw i8, ptr %0, i64 26
  %i.ie = load i16, ptr %i.id, align 2, !alias.scope !46587, !noalias !46588, !noundef !75 ; 2 uses
  %i.if = icmp eq i16 %i.ie, 0
  %i.ig = icmp eq i16 %i.hf, %i.ie
  %narrow.i69 = or i1 %i.if, %i.ig
  %.sroa.07.0.i = zext i1 %narrow.i69 to i8       ; 2 uses
  %i.ih = icmp eq i16 %i.hf, 0
  br i1 %i.ih, label %_RNvMs7_NtCsjjpCCFGI3ul_14lance_encoding6repdefINtB5_25BinaryControlWordIteratorINtNtNtNtCscI6d9CVNmLh_4core4iter8adapters3zip3ZipINtNtB1k_6copied6CopiedINtNtNtB1o_5slice4iter4ItertEEB23_EhE11append_nextB7_.exit, label %bb.aa

bb.aa:                                            ; preds = %_RNvMsF_NtCs40k4W9msRzi_5alloc3vecINtB5_3VechE8push_mutCsjjpCCFGI3ul_14lance_encoding.exit13.i68
  %i.ii = getelementptr inbounds nuw i8, ptr %0, i64 29
  %i.ij = load i8, ptr %i.ii, align 1, !alias.scope !46587, !noalias !46588, !noundef !75
  %i.ik = icmp eq i8 %i.ij, 0
  %i.il = select i1 %i.ik, i16 257, i16 1
  br label %_RNvMs7_NtCsjjpCCFGI3ul_14lance_encoding6repdefINtB5_25BinaryControlWordIteratorINtNtNtNtCscI6d9CVNmLh_4core4iter8adapters3zip3ZipINtNtB1k_6copied6CopiedINtNtNtB1o_5slice4iter4ItertEEB23_EhE11append_nextB7_.exit

bb.ab:                                            ; preds = %bb.a
  %i.im = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.in = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.io = load i64, ptr %i.in, align 8, !noundef !75 ; 2 uses
  %i.ip = load i64, ptr %i.im, align 8, !noundef !75
  %i.iq = icmp eq i64 %i.io, %i.ip
  br i1 %i.iq, label %_RNvMs7_NtCsjjpCCFGI3ul_14lance_encoding6repdefINtB5_25BinaryControlWordIteratorINtNtNtNtCscI6d9CVNmLh_4core4iter8adapters3zip3ZipINtNtB1k_6copied6CopiedINtNtNtB1o_5slice4iter4ItertEEB23_EhE11append_nextB7_.exit, label %bb.ac

_RNvMs7_NtCsjjpCCFGI3ul_14lance_encoding6repdefINtB5_25BinaryControlWordIteratorINtNtNtNtCscI6d9CVNmLh_4core4iter8adapters3zip3ZipINtNtB1k_6copied6CopiedINtNtNtB1o_5slice4iter4ItertEEB23_EhE11append_nextB7_.exit: ; preds = %bb.aa, %_RNvMsF_NtCs40k4W9msRzi_5alloc3vecINtB5_3VechE8push_mutCsjjpCCFGI3ul_14lance_encoding.exit13.i68, %bb.u, %bb.o, %_RNvMsF_NtCs40k4W9msRzi_5alloc3vecINtB5_3VechE8push_mutCsjjpCCFGI3ul_14lance_encoding.exit.i54, %bb.l, %_RNvMsF_NtCs40k4W9msRzi_5alloc3vecINtB5_3VechE8push_mutCsjjpCCFGI3ul_14lance_encoding.exit14.i, %bb.g, %_RNvMsF_NtCs40k4W9msRzi_5alloc3vecINtB5_3VechE8push_mutCsjjpCCFGI3ul_14lance_encoding.exit10.i, %bb.d, %_RNvMsF_NtCs40k4W9msRzi_5alloc3vecINtB5_3VechE8push_mutCsjjpCCFGI3ul_14lance_encoding.exit.i, %bb.b, %bb.ab, %bb.ac, %_RNvMsb_NtCsjjpCCFGI3ul_14lance_encoding6repdefINtB5_24UnaryControlWordIteratorINtNtNtNtCscI6d9CVNmLh_4core4iter8adapters6copied6CopiedINtNtNtB1n_5slice4iter4ItertEEtE11append_nextB7_.exit
  %.sroa.9.0 = phi i16 [ undef, %bb.ab ], [ undef, %bb.b ], [ undef, %bb.d ], [ undef, %bb.g ], [ %.sroa.027.1.extract.trunc, %_RNvMsb_NtCsjjpCCFGI3ul_14lance_encoding6repdefINtB5_24UnaryControlWordIteratorINtNtNtNtCscI6d9CVNmLh_4core4iter8adapters6copied6CopiedINtNtNtB1n_5slice4iter4ItertEEtE11append_nextB7_.exit ], [ undef, %bb.l ], [ 257, %bb.ac ], [ %.sroa.45.2.insert.insert.i, %_RNvMsF_NtCs40k4W9msRzi_5alloc3vecINtB5_3VechE8push_mutCsjjpCCFGI3ul_14lance_encoding.exit.i ], [ %.sroa.47.2.insert.insert.i, %_RNvMsF_NtCs40k4W9msRzi_5alloc3vecINtB5_3VechE8push_mutCsjjpCCFGI3ul_14lance_encoding.exit10.i ], [ %.sroa.49.2.insert.insert.i, %_RNvMsF_NtCs40k4W9msRzi_5alloc3vecINtB5_3VechE8push_mutCsjjpCCFGI3ul_14lance_encoding.exit14.i ], [ 257, %_RNvMsF_NtCs40k4W9msRzi_5alloc3vecINtB5_3VechE8push_mutCsjjpCCFGI3ul_14lance_encoding.exit.i54 ], [ %i.fq, %bb.o ], [ 257, %_RNvMsF_NtCs40k4W9msRzi_5alloc3vecINtB5_3VechE8push_mutCsjjpCCFGI3ul_14lance_encoding.exit13.i68 ], [ %i.il, %bb.aa ], [ undef, %bb.u ]
  %.sroa.0.0 = phi i8 [ 2, %bb.ab ], [ 2, %bb.b ], [ 2, %bb.d ], [ 2, %bb.g ], [ %.sroa.027.0.extract.trunc, %_RNvMsb_NtCsjjpCCFGI3ul_14lance_encoding6repdefINtB5_24UnaryControlWordIteratorINtNtNtNtCscI6d9CVNmLh_4core4iter8adapters6copied6CopiedINtNtNtB1n_5slice4iter4ItertEEtE11append_nextB7_.exit ], [ 2, %bb.l ], [ 1, %bb.ac ], [ %i.aq, %_RNvMsF_NtCs40k4W9msRzi_5alloc3vecINtB5_3VechE8push_mutCsjjpCCFGI3ul_14lance_encoding.exit.i ], [ %i.cj, %_RNvMsF_NtCs40k4W9msRzi_5alloc3vecINtB5_3VechE8push_mutCsjjpCCFGI3ul_14lance_encoding.exit10.i ], [ %i.eo, %_RNvMsF_NtCs40k4W9msRzi_5alloc3vecINtB5_3VechE8push_mutCsjjpCCFGI3ul_14lance_encoding.exit14.i ], [ %.sroa.04.0.i, %_RNvMsF_NtCs40k4W9msRzi_5alloc3vecINtB5_3VechE8push_mutCsjjpCCFGI3ul_14lance_encoding.exit.i54 ], [ %.sroa.04.0.i, %bb.o ], [ %.sroa.07.0.i, %_RNvMsF_NtCs40k4W9msRzi_5alloc3vecINtB5_3VechE8push_mutCsjjpCCFGI3ul_14lance_encoding.exit13.i68 ], [ %.sroa.07.0.i, %bb.aa ], [ 2, %bb.u ]
  %.sroa.9.0.insert.ext = zext i16 %.sroa.9.0 to i24
  %.sroa.9.0.insert.shift = shl nuw i24 %.sroa.9.0.insert.ext, 8
  %.sroa.0.0.insert.ext = zext nneg i8 %.sroa.0.0 to i24
  %.sroa.0.0.insert.insert = or disjoint i24 %.sroa.9.0.insert.shift, %.sroa.0.0.insert.ext
  ret i24 %.sroa.0.0.insert.insert

bb.ac:                                            ; preds = %bb.ab
  %i.ir = add i64 %i.io, 1
  store i64 %i.ir, ptr %i.in, align 8
  br label %_RNvMs7_NtCsjjpCCFGI3ul_14lance_encoding6repdefINtB5_25BinaryControlWordIteratorINtNtNtNtCscI6d9CVNmLh_4core4iter8adapters3zip3ZipINtNtB1k_6copied6CopiedINtNtNtB1o_5slice4iter4ItertEEB23_EhE11append_nextB7_.exit
}

; Function Attrs: nonlazybind uwtable
define noundef range(i24 0, 130818) i24 @_RNvMsf_NtCsjjpCCFGI3ul_14lance_encoding6repdefNtB5_17ControlWordParser10parse_desc(ptr noalias noundef readonly align 4 captures(none) dereferenceable(8) %0, ptr noalias noundef nonnull readonly captures(none) %1, i64 noundef range(i64 0, -9223372036854775808) %2, i16 noundef %3, i16 noundef %4) unnamed_addr #0 {
bb.a:
  %i.a = load i8, ptr %0, align 4, !range !198, !noundef !75
  switch i8 %i.a, label %default.unreachable91 [
    i8 0, label %bb.b
    i8 1, label %bb.d
    i8 2, label %bb.g
    i8 3, label %bb.o
    i8 4, label %bb.q
    i8 5, label %bb.t
    i8 6, label %bb.ab
    i8 7, label %bb.ad
    i8 8, label %bb.ag
    i8 9, label %bb.ao
  ]

default.unreachable91:                            ; preds = %bb.a
  unreachable

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 1
  %i.c = load i8, ptr %i.b, align 1, !noundef !75
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.e = load i32, ptr %i.d, align 4, !noundef !75
  tail call void @llvm.experimental.noalias.scope.decl(metadata !46614)
  %.not.i = icmp eq i64 %2, 0
  br i1 %.not.i, label %bb.c, label %_RINvMsf_NtCsjjpCCFGI3ul_14lance_encoding6repdefNtB6_17ControlWordParser15parse_desc_bothKh1_EB8_.exit

bb.c:                                             ; preds = %bb.b
  tail call void @_RNvNtCscI6d9CVNmLh_4core9panicking18panic_bounds_check(i64 noundef 0, i64 noundef 0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @256) #66, !noalias !46614
  unreachable

_RINvMsf_NtCsjjpCCFGI3ul_14lance_encoding6repdefNtB6_17ControlWordParser15parse_desc_bothKh1_EB8_.exit: ; preds = %bb.b
  %i.f = load i8, ptr %1, align 1, !alias.scope !46614, !noundef !75 ; 2 uses
  %i.g = and i8 %i.c, 7
  %i.h = lshr i8 %i.f, %i.g
  %i.i = trunc i32 %i.e to i8
  %i.j = and i8 %i.f, %i.i                        ; 2 uses
  %i.k = zext i8 %i.j to i16
  %.not1.i = icmp uge i16 %4, %i.k
  %i.l = zext i8 %i.h to i16
  %i.m = icmp eq i16 %3, %i.l
  %i.n = icmp eq i8 %i.j, 0
  %.sroa.041.1.extract.trunc = zext i1 %.not1.i to i8
  %.sroa.041.2.extract.trunc = zext i1 %i.n to i8
  br label %bb.ao

bb.d:                                             ; preds = %bb.a
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 1
  %i.p = load i8, ptr %i.o, align 1, !noundef !75
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.r = load i32, ptr %i.q, align 4, !noundef !75
  tail call void @llvm.experimental.noalias.scope.decl(metadata !46615)
  switch i64 %2, label %_RINvMsf_NtCsjjpCCFGI3ul_14lance_encoding6repdefNtB6_17ControlWordParser15parse_desc_bothKh2_EB8_.exit [
    i64 0, label %bb.e
    i64 1, label %bb.f
  ]

bb.e:                                             ; preds = %bb.d
  tail call void @_RNvNtCscI6d9CVNmLh_4core9panicking18panic_bounds_check(i64 noundef 0, i64 noundef 0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @257) #66, !noalias !46615
  unreachable

bb.f:                                             ; preds = %bb.d
  tail call void @_RNvNtCscI6d9CVNmLh_4core9panicking18panic_bounds_check(i64 noundef 1, i64 noundef 1, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @258) #66, !noalias !46615
  unreachable

_RINvMsf_NtCsjjpCCFGI3ul_14lance_encoding6repdefNtB6_17ControlWordParser15parse_desc_bothKh2_EB8_.exit: ; preds = %bb.d
  %5 = load i16, ptr %1, align 1, !alias.scope !46615 ; 2 uses
  %6 = and i8 %i.p, 15
  %7 = zext nneg i8 %6 to i16
  %8 = lshr i16 %5, %7
  %9 = trunc i32 %i.r to i16
  %10 = and i16 %5, %9                            ; 2 uses
  %.not3.i = icmp ugt i16 %10, %4
  %11 = icmp eq i16 %8, %3
  %12 = icmp eq i16 %10, 0
  %.sroa.2.0.insert.shift.i58 = select i1 %.not3.i, i24 0, i24 256
  %.sroa.2.0.insert.insert.i59 = select i1 %12, i24 65792, i24 %.sroa.2.0.insert.shift.i58 ; 2 uses
  %.sroa.042.1.extract.shift = lshr exact i24 %.sroa.2.0.insert.insert.i59, 8
  %.sroa.042.1.extract.trunc = trunc i24 %.sroa.042.1.extract.shift to i8
  %.sroa.042.2.extract.shift = lshr i24 %.sroa.2.0.insert.insert.i59, 16
  %.sroa.042.2.extract.trunc = trunc nuw nsw i24 %.sroa.042.2.extract.shift to i8
  br label %bb.ao

bb.g:                                             ; preds = %bb.a
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 1
  %i.t = load i8, ptr %i.s, align 1, !noundef !75
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.v = load i32, ptr %i.u, align 4, !noundef !75
  tail call void @llvm.experimental.noalias.scope.decl(metadata !46616)
  %.not.i63 = icmp eq i64 %2, 0
  br i1 %.not.i63, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.w = load i8, ptr %1, align 1, !alias.scope !46616, !noundef !75
  %.not2.i = icmp eq i64 %2, 1
  br i1 %.not2.i, label %bb.k, label %bb.j

bb.i:                                             ; preds = %bb.g
  tail call void @_RNvNtCscI6d9CVNmLh_4core9panicking18panic_bounds_check(i64 noundef 0, i64 noundef 0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @259) #66, !noalias !46616
  unreachable

bb.j:                                             ; preds = %bb.h
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 1
  %i.y = load i8, ptr %i.x, align 1, !alias.scope !46616, !noundef !75
  %i.z = icmp samesign ugt i64 %2, 2
  br i1 %i.z, label %bb.l, label %bb.m

bb.k:                                             ; preds = %bb.h
  tail call void @_RNvNtCscI6d9CVNmLh_4core9panicking18panic_bounds_check(i64 noundef 1, i64 noundef 1, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @260) #66, !noalias !46616
  unreachable

bb.l:                                             ; preds = %bb.j
  %.not3.i64 = icmp eq i64 %2, 3
  br i1 %.not3.i64, label %bb.n, label %_RINvMsf_NtCsjjpCCFGI3ul_14lance_encoding6repdefNtB6_17ControlWordParser15parse_desc_bothKh4_EB8_.exit

bb.m:                                             ; preds = %bb.j
  tail call void @_RNvNtCscI6d9CVNmLh_4core9panicking18panic_bounds_check(i64 noundef 2, i64 noundef 2, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @261) #66, !noalias !46616
  unreachable

bb.n:                                             ; preds = %bb.l
  tail call void @_RNvNtCscI6d9CVNmLh_4core9panicking18panic_bounds_check(i64 noundef 3, i64 noundef 3, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @262) #66, !noalias !46616
  unreachable

_RINvMsf_NtCsjjpCCFGI3ul_14lance_encoding6repdefNtB6_17ControlWordParser15parse_desc_bothKh4_EB8_.exit: ; preds = %bb.l
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 2
  %i.ab = load i16, ptr %i.aa, align 1, !alias.scope !46616
  %i.ac = zext i16 %i.ab to i32
  %i.ad = shl nuw i32 %i.ac, 16
  %.sroa.4.0.insert.ext.i = zext i8 %i.y to i32
  %.sroa.4.0.insert.shift.i = shl nuw nsw i32 %.sroa.4.0.insert.ext.i, 8
  %.sroa.01.0.insert.ext.i = zext i8 %i.w to i32
  %.sroa.4.0.insert.insert.i = or disjoint i32 %.sroa.4.0.insert.shift.i, %.sroa.01.0.insert.ext.i
  %.sroa.01.0.insert.insert.i = or disjoint i32 %.sroa.4.0.insert.insert.i, %i.ad ; 2 uses
  %i.ae = and i8 %i.t, 31
  %i.af = zext nneg i8 %i.ae to i32
  %i.ag = lshr i32 %.sroa.01.0.insert.insert.i, %i.af
  %i.ah = and i32 %.sroa.01.0.insert.insert.i, %i.v ; 2 uses
  %i.ai = trunc i32 %i.ah to i16
  %.not4.i = icmp uge i16 %4, %i.ai
  %i.aj = trunc i32 %i.ag to i16
  %i.ak = icmp eq i16 %3, %i.aj
  %i.al = icmp eq i32 %i.ah, 0
  %.sroa.044.1.extract.trunc = zext i1 %.not4.i to i8
  %.sroa.044.2.extract.trunc = zext i1 %i.al to i8
  br label %bb.ao

bb.o:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !46617)
  %.not.i70 = icmp eq i64 %2, 0
  br i1 %.not.i70, label %bb.p, label %_RINvMsf_NtCsjjpCCFGI3ul_14lance_encoding6repdefNtB6_17ControlWordParser18parse_rep_desc_oneKh1_EB8_.exit

bb.p:                                             ; preds = %bb.o
  tail call void @_RNvNtCscI6d9CVNmLh_4core9panicking18panic_bounds_check(i64 noundef 0, i64 noundef 0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @270) #66, !noalias !46617
  unreachable

_RINvMsf_NtCsjjpCCFGI3ul_14lance_encoding6repdefNtB6_17ControlWordParser18parse_rep_desc_oneKh1_EB8_.exit: ; preds = %bb.o
  %i.am = load i8, ptr %1, align 1, !alias.scope !46617, !noundef !75
  %i.an = zext i8 %i.am to i16
  %i.ao = icmp eq i16 %3, %i.an
  br label %bb.ao

bb.q:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !46618)
  switch i64 %2, label %_RINvMsf_NtCsjjpCCFGI3ul_14lance_encoding6repdefNtB6_17ControlWordParser18parse_rep_desc_oneKh2_EB8_.exit [
    i64 0, label %bb.r
    i64 1, label %bb.s
  ]

bb.r:                                             ; preds = %bb.q
  tail call void @_RNvNtCscI6d9CVNmLh_4core9panicking18panic_bounds_check(i64 noundef 0, i64 noundef 0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @271) #66, !noalias !46618
  unreachable

bb.s:                                             ; preds = %bb.q
  tail call void @_RNvNtCscI6d9CVNmLh_4core9panicking18panic_bounds_check(i64 noundef 1, i64 noundef 1, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @272) #66, !noalias !46618
  unreachable

_RINvMsf_NtCsjjpCCFGI3ul_14lance_encoding6repdefNtB6_17ControlWordParser18parse_rep_desc_oneKh2_EB8_.exit: ; preds = %bb.q
  %i.ap = load i16, ptr %1, align 1, !alias.scope !46618
  %i.aq = icmp eq i16 %i.ap, %3
  br label %bb.ao

bb.t:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !46619)
  %.not.i75 = icmp eq i64 %2, 0
  br i1 %.not.i75, label %bb.v, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.ar = load i8, ptr %1, align 1, !alias.scope !46619, !noundef !75
  %.not2.i76 = icmp eq i64 %2, 1
  br i1 %.not2.i76, label %bb.x, label %bb.w

bb.v:                                             ; preds = %bb.t
  tail call void @_RNvNtCscI6d9CVNmLh_4core9panicking18panic_bounds_check(i64 noundef 0, i64 noundef 0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @273) #66, !noalias !46619
  unreachable

bb.w:                                             ; preds = %bb.u
  %i.as = getelementptr inbounds nuw i8, ptr %1, i64 1
  %i.at = load i8, ptr %i.as, align 1, !alias.scope !46619, !noundef !75
  %i.au = icmp samesign ugt i64 %2, 2
  br i1 %i.au, label %bb.y, label %bb.z

bb.x:                                             ; preds = %bb.u
  tail call void @_RNvNtCscI6d9CVNmLh_4core9panicking18panic_bounds_check(i64 noundef 1, i64 noundef 1, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @274) #66, !noalias !46619
  unreachable

bb.y:                                             ; preds = %bb.w
  %.not3.i77 = icmp eq i64 %2, 3
  br i1 %.not3.i77, label %bb.aa, label %_RINvMsf_NtCsjjpCCFGI3ul_14lance_encoding6repdefNtB6_17ControlWordParser18parse_rep_desc_oneKh4_EB8_.exit

bb.z:                                             ; preds = %bb.w
  tail call void @_RNvNtCscI6d9CVNmLh_4core9panicking18panic_bounds_check(i64 noundef 2, i64 noundef 2, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @275) #66, !noalias !46619
  unreachable

bb.aa:                                            ; preds = %bb.y
  tail call void @_RNvNtCscI6d9CVNmLh_4core9panicking18panic_bounds_check(i64 noundef 3, i64 noundef 3, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @276) #66, !noalias !46619
  unreachable

_RINvMsf_NtCsjjpCCFGI3ul_14lance_encoding6repdefNtB6_17ControlWordParser18parse_rep_desc_oneKh4_EB8_.exit: ; preds = %bb.y
  %.sroa.4.0.insert.ext.i78 = zext i8 %i.at to i16
  %.sroa.4.0.insert.shift.i79 = shl nuw i16 %.sroa.4.0.insert.ext.i78, 8
  %.sroa.01.0.insert.ext.i80 = zext i8 %i.ar to i16
  %.sroa.01.0.insert.insert.i81 = or disjoint i16 %.sroa.4.0.insert.shift.i79, %.sroa.01.0.insert.ext.i80
  %i.av = icmp eq i16 %.sroa.01.0.insert.insert.i81, %3
  br label %bb.ao

bb.ab:                                            ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !46620)
  %.not.i84 = icmp eq i64 %2, 0
  br i1 %.not.i84, label %bb.ac, label %_RINvMsf_NtCsjjpCCFGI3ul_14lance_encoding6repdefNtB6_17ControlWordParser18parse_def_desc_oneKh1_EB8_.exit

bb.ac:                                            ; preds = %bb.ab
  tail call void @_RNvNtCscI6d9CVNmLh_4core9panicking18panic_bounds_check(i64 noundef 0, i64 noundef 0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @263) #66, !noalias !46620
  unreachable

_RINvMsf_NtCsjjpCCFGI3ul_14lance_encoding6repdefNtB6_17ControlWordParser18parse_def_desc_oneKh1_EB8_.exit: ; preds = %bb.ab
  %i.aw = load i8, ptr %1, align 1, !alias.scope !46620, !noundef !75
  %i.ax = icmp eq i8 %i.aw, 0
  %.sroa.052.2.extract.trunc = zext i1 %i.ax to i8
  br label %bb.ao

bb.ad:                                            ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !46621)
  switch i64 %2, label %_RINvMsf_NtCsjjpCCFGI3ul_14lance_encoding6repdefNtB6_17ControlWordParser18parse_def_desc_oneKh2_EB8_.exit [
    i64 0, label %bb.ae
    i64 1, label %bb.af
  ]

bb.ae:                                            ; preds = %bb.ad
  tail call void @_RNvNtCscI6d9CVNmLh_4core9panicking18panic_bounds_check(i64 noundef 0, i64 noundef 0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @264) #66, !noalias !46621
  unreachable

bb.af:                                            ; preds = %bb.ad
  tail call void @_RNvNtCscI6d9CVNmLh_4core9panicking18panic_bounds_check(i64 noundef 1, i64 noundef 1, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @265) #66, !noalias !46621
  unreachable

_RINvMsf_NtCsjjpCCFGI3ul_14lance_encoding6repdefNtB6_17ControlWordParser18parse_def_desc_oneKh2_EB8_.exit: ; preds = %bb.ad
  %i.ay = load i16, ptr %1, align 1, !alias.scope !46621
  %13 = icmp eq i16 %i.ay, 0
  %.sroa.054.2.extract.trunc = zext i1 %13 to i8
  br label %bb.ao

bb.ag:                                            ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !46622)
  %.not.i87 = icmp eq i64 %2, 0
  br i1 %.not.i87, label %bb.ai, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  %i.az = load i8, ptr %1, align 1, !alias.scope !46622, !noundef !75
  %.not2.i88 = icmp eq i64 %2, 1
  br i1 %.not2.i88, label %bb.ak, label %bb.aj

bb.ai:                                            ; preds = %bb.ag
  tail call void @_RNvNtCscI6d9CVNmLh_4core9panicking18panic_bounds_check(i64 noundef 0, i64 noundef 0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @266) #66, !noalias !46622
  unreachable

bb.aj:                                            ; preds = %bb.ah
  %i.ba = getelementptr inbounds nuw i8, ptr %1, i64 1
  %i.bb = load i8, ptr %i.ba, align 1, !alias.scope !46622, !noundef !75
  %i.bc = icmp samesign ugt i64 %2, 2
  br i1 %i.bc, label %bb.al, label %bb.am

bb.ak:                                            ; preds = %bb.ah
  tail call void @_RNvNtCscI6d9CVNmLh_4core9panicking18panic_bounds_check(i64 noundef 1, i64 noundef 1, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @267) #66, !noalias !46622
  unreachable

bb.al:                                            ; preds = %bb.aj
  %.not3.i89 = icmp eq i64 %2, 3
  br i1 %.not3.i89, label %bb.an, label %_RINvMsf_NtCsjjpCCFGI3ul_14lance_encoding6repdefNtB6_17ControlWordParser18parse_def_desc_oneKh4_EB8_.exit

bb.am:                                            ; preds = %bb.aj
  tail call void @_RNvNtCscI6d9CVNmLh_4core9panicking18panic_bounds_check(i64 noundef 2, i64 noundef 2, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @268) #66, !noalias !46622
  unreachable

bb.an:                                            ; preds = %bb.al
  tail call void @_RNvNtCscI6d9CVNmLh_4core9panicking18panic_bounds_check(i64 noundef 3, i64 noundef 3, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @269) #66, !noalias !46622
  unreachable

_RINvMsf_NtCsjjpCCFGI3ul_14lance_encoding6repdefNtB6_17ControlWordParser18parse_def_desc_oneKh4_EB8_.exit: ; preds = %bb.al
  %i.bd = or i8 %i.bb, %i.az
  %i.be = icmp eq i8 %i.bd, 0
  %.sroa.056.2.extract.trunc = zext i1 %i.be to i8
  br label %bb.ao

bb.ao:                                            ; preds = %bb.a, %_RINvMsf_NtCsjjpCCFGI3ul_14lance_encoding6repdefNtB6_17ControlWordParser18parse_def_desc_oneKh4_EB8_.exit, %_RINvMsf_NtCsjjpCCFGI3ul_14lance_encoding6repdefNtB6_17ControlWordParser18parse_def_desc_oneKh2_EB8_.exit, %_RINvMsf_NtCsjjpCCFGI3ul_14lance_encoding6repdefNtB6_17ControlWordParser18parse_def_desc_oneKh1_EB8_.exit, %_RINvMsf_NtCsjjpCCFGI3ul_14lance_encoding6repdefNtB6_17ControlWordParser18parse_rep_desc_oneKh4_EB8_.exit, %_RINvMsf_NtCsjjpCCFGI3ul_14lance_encoding6repdefNtB6_17ControlWordParser18parse_rep_desc_oneKh2_EB8_.exit, %_RINvMsf_NtCsjjpCCFGI3ul_14lance_encoding6repdefNtB6_17ControlWordParser18parse_rep_desc_oneKh1_EB8_.exit, %_RINvMsf_NtCsjjpCCFGI3ul_14lance_encoding6repdefNtB6_17ControlWordParser15parse_desc_bothKh4_EB8_.exit, %_RINvMsf_NtCsjjpCCFGI3ul_14lance_encoding6repdefNtB6_17ControlWordParser15parse_desc_bothKh2_EB8_.exit, %_RINvMsf_NtCsjjpCCFGI3ul_14lance_encoding6repdefNtB6_17ControlWordParser15parse_desc_bothKh1_EB8_.exit
  %.sroa.12.0 = phi i8 [ %.sroa.041.2.extract.trunc, %_RINvMsf_NtCsjjpCCFGI3ul_14lance_encoding6repdefNtB6_17ControlWordParser15parse_desc_bothKh1_EB8_.exit ], [ %.sroa.042.2.extract.trunc, %_RINvMsf_NtCsjjpCCFGI3ul_14lance_encoding6repdefNtB6_17ControlWordParser15parse_desc_bothKh2_EB8_.exit ], [ %.sroa.044.2.extract.trunc, %_RINvMsf_NtCsjjpCCFGI3ul_14lance_encoding6repdefNtB6_17ControlWordParser15parse_desc_bothKh4_EB8_.exit ], [ 1, %_RINvMsf_NtCsjjpCCFGI3ul_14lance_encoding6repdefNtB6_17ControlWordParser18parse_rep_desc_oneKh1_EB8_.exit ], [ 1, %_RINvMsf_NtCsjjpCCFGI3ul_14lance_encoding6repdefNtB6_17ControlWordParser18parse_rep_desc_oneKh2_EB8_.exit ], [ 1, %_RINvMsf_NtCsjjpCCFGI3ul_14lance_encoding6repdefNtB6_17ControlWordParser18parse_rep_desc_oneKh4_EB8_.exit ], [ %.sroa.052.2.extract.trunc, %_RINvMsf_NtCsjjpCCFGI3ul_14lance_encoding6repdefNtB6_17ControlWordParser18parse_def_desc_oneKh1_EB8_.exit ], [ %.sroa.054.2.extract.trunc, %_RINvMsf_NtCsjjpCCFGI3ul_14lance_encoding6repdefNtB6_17ControlWordParser18parse_def_desc_oneKh2_EB8_.exit ], [ %.sroa.056.2.extract.trunc, %_RINvMsf_NtCsjjpCCFGI3ul_14lance_encoding6repdefNtB6_17ControlWordParser18parse_def_desc_oneKh4_EB8_.exit ], [ 1, %bb.a ]
  %.sroa.11.0 = phi i8 [ %.sroa.041.1.extract.trunc, %_RINvMsf_NtCsjjpCCFGI3ul_14lance_encoding6repdefNtB6_17ControlWordParser15parse_desc_bothKh1_EB8_.exit ], [ %.sroa.042.1.extract.trunc, %_RINvMsf_NtCsjjpCCFGI3ul_14lance_encoding6repdefNtB6_17ControlWordParser15parse_desc_bothKh2_EB8_.exit ], [ %.sroa.044.1.extract.trunc, %_RINvMsf_NtCsjjpCCFGI3ul_14lance_encoding6repdefNtB6_17ControlWordParser15parse_desc_bothKh4_EB8_.exit ], [ 1, %_RINvMsf_NtCsjjpCCFGI3ul_14lance_encoding6repdefNtB6_17ControlWordParser18parse_rep_desc_oneKh1_EB8_.exit ], [ 1, %_RINvMsf_NtCsjjpCCFGI3ul_14lance_encoding6repdefNtB6_17ControlWordParser18parse_rep_desc_oneKh2_EB8_.exit ], [ 1, %_RINvMsf_NtCsjjpCCFGI3ul_14lance_encoding6repdefNtB6_17ControlWordParser18parse_rep_desc_oneKh4_EB8_.exit ], [ 1, %_RINvMsf_NtCsjjpCCFGI3ul_14lance_encoding6repdefNtB6_17ControlWordParser18parse_def_desc_oneKh1_EB8_.exit ], [ 1, %_RINvMsf_NtCsjjpCCFGI3ul_14lance_encoding6repdefNtB6_17ControlWordParser18parse_def_desc_oneKh2_EB8_.exit ], [ 1, %_RINvMsf_NtCsjjpCCFGI3ul_14lance_encoding6repdefNtB6_17ControlWordParser18parse_def_desc_oneKh4_EB8_.exit ], [ 1, %bb.a ]
  %.sroa.0.0.shrunk = phi i1 [ %i.m, %_RINvMsf_NtCsjjpCCFGI3ul_14lance_encoding6repdefNtB6_17ControlWordParser15parse_desc_bothKh1_EB8_.exit ], [ %11, %_RINvMsf_NtCsjjpCCFGI3ul_14lance_encoding6repdefNtB6_17ControlWordParser15parse_desc_bothKh2_EB8_.exit ], [ %i.ak, %_RINvMsf_NtCsjjpCCFGI3ul_14lance_encoding6repdefNtB6_17ControlWordParser15parse_desc_bothKh4_EB8_.exit ], [ %i.ao, %_RINvMsf_NtCsjjpCCFGI3ul_14lance_encoding6repdefNtB6_17ControlWordParser18parse_rep_desc_oneKh1_EB8_.exit ], [ %i.aq, %_RINvMsf_NtCsjjpCCFGI3ul_14lance_encoding6repdefNtB6_17ControlWordParser18parse_rep_desc_oneKh2_EB8_.exit ], [ %i.av, %_RINvMsf_NtCsjjpCCFGI3ul_14lance_encoding6repdefNtB6_17ControlWordParser18parse_rep_desc_oneKh4_EB8_.exit ], [ true, %_RINvMsf_NtCsjjpCCFGI3ul_14lance_encoding6repdefNtB6_17ControlWordParser18parse_def_desc_oneKh1_EB8_.exit ], [ true, %_RINvMsf_NtCsjjpCCFGI3ul_14lance_encoding6repdefNtB6_17ControlWordParser18parse_def_desc_oneKh2_EB8_.exit ], [ true, %_RINvMsf_NtCsjjpCCFGI3ul_14lance_encoding6repdefNtB6_17ControlWordParser18parse_def_desc_oneKh4_EB8_.exit ], [ true, %bb.a ]
  %.sroa.12.0.insert.ext = zext nneg i8 %.sroa.12.0 to i24
  %.sroa.12.0.insert.shift = shl nuw nsw i24 %.sroa.12.0.insert.ext, 16
  %.sroa.11.0.insert.ext = zext i8 %.sroa.11.0 to i24
  %.sroa.11.0.insert.shift = shl nuw nsw i24 %.sroa.11.0.insert.ext, 8
  %.sroa.11.0.insert.insert = or disjoint i24 %.sroa.11.0.insert.shift, %.sroa.12.0.insert.shift
  %.sroa.0.0.insert.ext = zext i1 %.sroa.0.0.shrunk to i24
  %.sroa.0.0.insert.insert = or disjoint i24 %.sroa.11.0.insert.insert, %.sroa.0.0.insert.ext
  ret i24 %.sroa.0.0.insert.insert
}

; Function Attrs: nonlazybind uwtable
define void @_RNvMsf_NtCsjjpCCFGI3ul_14lance_encoding6repdefNtB5_17ControlWordParser5parse(ptr noalias noundef readonly align 4 captures(none) dereferenceable(8) %0, ptr noalias noundef nonnull readonly captures(none) %1, i64 noundef range(i64 0, -9223372036854775808) %2, ptr noalias noundef align 8 dereferenceable(24) %3, ptr noalias noundef align 8 dereferenceable(24) %4) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load i8, ptr %0, align 4, !range !198, !noundef !75
  switch i8 %i.a, label %default.unreachable12 [
    i8 0, label %bb.b
    i8 1, label %bb.g
    i8 2, label %bb.m
    i8 3, label %bb.x
    i8 4, label %bb.ab
    i8 5, label %bb.ag
    i8 6, label %bb.ah
    i8 7, label %bb.al
    i8 8, label %bb.aq
    i8 9, label %bb.ar
  ]

default.unreachable12:                            ; preds = %bb.a
  unreachable

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 1
  %i.c = load i8, ptr %i.b, align 1, !noundef !75
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.e = load i32, ptr %i.d, align 4, !noundef !75
  tail call void @llvm.experimental.noalias.scope.decl(metadata !46667)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !46668)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !46669)
  %.not.i = icmp eq i64 %2, 0
  br i1 %.not.i, label %bb.f, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = load i8, ptr %1, align 1, !alias.scope !46667, !noalias !46670, !noundef !75 ; 2 uses
  %i.g = and i8 %i.c, 7
  %i.h = lshr i8 %i.f, %i.g
  %i.i = zext i8 %i.h to i16
  %i.j = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.k = load i64, ptr %i.j, align 8, !alias.scope !46671, !noalias !46672, !noundef !75 ; 3 uses
  %i.l = load i64, ptr %3, align 8, !range !76, !alias.scope !46671, !noalias !46672, !noundef !75
  %i.m = icmp eq i64 %i.k, %i.l
  br i1 %i.m, label %bb.d, label %_RNvMsF_NtCs40k4W9msRzi_5alloc3vecINtB5_3VectE8push_mutCsjjpCCFGI3ul_14lance_encoding.exit.i

bb.d:                                             ; preds = %bb.c
  tail call void @_RNvMs3_NtCs40k4W9msRzi_5alloc7raw_vecINtB5_6RawVectE8grow_oneCs1akgR21QTtx_7roaring(ptr noalias noundef nonnull align 8 dereferenceable(24) %3), !noalias !46672
  br label %_RNvMsF_NtCs40k4W9msRzi_5alloc3vecINtB5_3VectE8push_mutCsjjpCCFGI3ul_14lance_encoding.exit.i

_RNvMsF_NtCs40k4W9msRzi_5alloc3vecINtB5_3VectE8push_mutCsjjpCCFGI3ul_14lance_encoding.exit.i: ; preds = %bb.d, %bb.c
  %i.n = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.o = load ptr, ptr %i.n, align 8, !alias.scope !46671, !noalias !46672, !nonnull !75, !noundef !75
  %i.p = getelementptr inbounds nuw [2 x i8], ptr %i.o, i64 %i.k
  store i16 %i.i, ptr %i.p, align 2, !noalias !46672
  %i.q = add i64 %i.k, 1
  store i64 %i.q, ptr %i.j, align 8, !alias.scope !46671, !noalias !46672
  %i.r = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.s = load i64, ptr %i.r, align 8, !alias.scope !46673, !noalias !46674, !noundef !75 ; 3 uses
  %i.t = load i64, ptr %4, align 8, !range !76, !alias.scope !46673, !noalias !46674, !noundef !75
  %i.u = icmp eq i64 %i.s, %i.t
  br i1 %i.u, label %bb.e, label %_RINvMsf_NtCsjjpCCFGI3ul_14lance_encoding6repdefNtB6_17ControlWordParser10parse_bothKh1_EB8_.exit

bb.e:                                             ; preds = %_RNvMsF_NtCs40k4W9msRzi_5alloc3vecINtB5_3VectE8push_mutCsjjpCCFGI3ul_14lance_encoding.exit.i
  tail call void @_RNvMs3_NtCs40k4W9msRzi_5alloc7raw_vecINtB5_6RawVectE8grow_oneCs1akgR21QTtx_7roaring(ptr noalias noundef nonnull align 8 dereferenceable(24) %4), !noalias !46667
  br label %_RINvMsf_NtCsjjpCCFGI3ul_14lance_encoding6repdefNtB6_17ControlWordParser10parse_bothKh1_EB8_.exit

bb.f:                                             ; preds = %bb.b
  tail call void @_RNvNtCscI6d9CVNmLh_4core9panicking18panic_bounds_check(i64 noundef 0, i64 noundef 0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @249) #66, !noalias !46675
  unreachable

_RINvMsf_NtCsjjpCCFGI3ul_14lance_encoding6repdefNtB6_17ControlWordParser10parse_bothKh1_EB8_.exit: ; preds = %_RNvMsF_NtCs40k4W9msRzi_5alloc3vecINtB5_3VectE8push_mutCsjjpCCFGI3ul_14lance_encoding.exit.i, %bb.e
  %i.v = trunc i32 %i.e to i8
  %i.w = and i8 %i.f, %i.v
  %i.x = zext i8 %i.w to i16
  %i.y = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.z = load ptr, ptr %i.y, align 8, !alias.scope !46673, !noalias !46674, !nonnull !75, !noundef !75
  %i.aa = getelementptr inbounds nuw [2 x i8], ptr %i.z, i64 %i.s
  store i16 %i.x, ptr %i.aa, align 2, !noalias !46667
  %i.ab = add i64 %i.s, 1
  store i64 %i.ab, ptr %i.r, align 8, !alias.scope !46673, !noalias !46674
  br label %bb.ar

bb.g:                                             ; preds = %bb.a
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 1
  %i.ad = load i8, ptr %i.ac, align 1, !noundef !75
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.af = load i32, ptr %i.ae, align 4, !noundef !75
  tail call void @llvm.experimental.noalias.scope.decl(metadata !46676)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !46677)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !46678)
  switch i64 %2, label %bb.i [
    i64 0, label %bb.h
    i64 1, label %bb.l
  ]

bb.h:                                             ; preds = %bb.g
  tail call void @_RNvNtCscI6d9CVNmLh_4core9panicking18panic_bounds_check(i64 noundef 0, i64 noundef 0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @250) #66, !noalias !46679
  unreachable

bb.i:                                             ; preds = %bb.g
  %i.ag = load i16, ptr %1, align 1, !alias.scope !46676, !noalias !46680 ; 2 uses
  %i.ah = and i8 %i.ad, 15
  %i.ai = zext nneg i8 %i.ah to i16
  %i.aj = lshr i16 %i.ag, %i.ai
  %i.ak = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.al = load i64, ptr %i.ak, align 8, !alias.scope !46681, !noalias !46682, !noundef !75 ; 3 uses
  %i.am = load i64, ptr %3, align 8, !range !76, !alias.scope !46681, !noalias !46682, !noundef !75
  %i.an = icmp eq i64 %i.al, %i.am
  br i1 %i.an, label %bb.j, label %_RNvMsF_NtCs40k4W9msRzi_5alloc3vecINtB5_3VectE8push_mutCsjjpCCFGI3ul_14lance_encoding.exit.i1

bb.j:                                             ; preds = %bb.i
  tail call void @_RNvMs3_NtCs40k4W9msRzi_5alloc7raw_vecINtB5_6RawVectE8grow_oneCs1akgR21QTtx_7roaring(ptr noalias noundef nonnull align 8 dereferenceable(24) %3), !noalias !46682
  br label %_RNvMsF_NtCs40k4W9msRzi_5alloc3vecINtB5_3VectE8push_mutCsjjpCCFGI3ul_14lance_encoding.exit.i1

_RNvMsF_NtCs40k4W9msRzi_5alloc3vecINtB5_3VectE8push_mutCsjjpCCFGI3ul_14lance_encoding.exit.i1: ; preds = %bb.j, %bb.i
  %i.ao = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.ap = load ptr, ptr %i.ao, align 8, !alias.scope !46681, !noalias !46682, !nonnull !75, !noundef !75
  %i.aq = getelementptr inbounds nuw [2 x i8], ptr %i.ap, i64 %i.al
  store i16 %i.aj, ptr %i.aq, align 2, !noalias !46682
  %i.ar = add i64 %i.al, 1
  store i64 %i.ar, ptr %i.ak, align 8, !alias.scope !46681, !noalias !46682
  %i.as = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.at = load i64, ptr %i.as, align 8, !alias.scope !46683, !noalias !46684, !noundef !75 ; 3 uses
  %i.au = load i64, ptr %4, align 8, !range !76, !alias.scope !46683, !noalias !46684, !noundef !75
  %i.av = icmp eq i64 %i.at, %i.au
  br i1 %i.av, label %bb.k, label %_RINvMsf_NtCsjjpCCFGI3ul_14lance_encoding6repdefNtB6_17ControlWordParser10parse_bothKh2_EB8_.exit

bb.k:                                             ; preds = %_RNvMsF_NtCs40k4W9msRzi_5alloc3vecINtB5_3VectE8push_mutCsjjpCCFGI3ul_14lance_encoding.exit.i1
  tail call void @_RNvMs3_NtCs40k4W9msRzi_5alloc7raw_vecINtB5_6RawVectE8grow_oneCs1akgR21QTtx_7roaring(ptr noalias noundef nonnull align 8 dereferenceable(24) %4), !noalias !46676
  br label %_RINvMsf_NtCsjjpCCFGI3ul_14lance_encoding6repdefNtB6_17ControlWordParser10parse_bothKh2_EB8_.exit

bb.l:                                             ; preds = %bb.g
  tail call void @_RNvNtCscI6d9CVNmLh_4core9panicking18panic_bounds_check(i64 noundef 1, i64 noundef 1, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @251) #66, !noalias !46679
  unreachable

_RINvMsf_NtCsjjpCCFGI3ul_14lance_encoding6repdefNtB6_17ControlWordParser10parse_bothKh2_EB8_.exit: ; preds = %_RNvMsF_NtCs40k4W9msRzi_5alloc3vecINtB5_3VectE8push_mutCsjjpCCFGI3ul_14lance_encoding.exit.i1, %bb.k
  %i.aw = trunc i32 %i.af to i16
  %i.ax = and i16 %i.ag, %i.aw
  %i.ay = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.az = load ptr, ptr %i.ay, align 8, !alias.scope !46683, !noalias !46684, !nonnull !75, !noundef !75
  %i.ba = getelementptr inbounds nuw [2 x i8], ptr %i.az, i64 %i.at
  store i16 %i.ax, ptr %i.ba, align 2, !noalias !46676
  %i.bb = add i64 %i.at, 1
  store i64 %i.bb, ptr %i.as, align 8, !alias.scope !46683, !noalias !46684
  br label %bb.ar

bb.m:                                             ; preds = %bb.a
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 1
  %i.bd = load i8, ptr %i.bc, align 1, !noundef !75
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.bf = load i32, ptr %i.be, align 4, !noundef !75
  tail call void @llvm.experimental.noalias.scope.decl(metadata !46685)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !46686)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !46687)
  %.not.i2 = icmp eq i64 %2, 0
  br i1 %.not.i2, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.bg = load i8, ptr %1, align 1, !alias.scope !46685, !noalias !46688, !noundef !75
  %.not1.i = icmp eq i64 %2, 1
  br i1 %.not1.i, label %bb.q, label %bb.p

bb.o:                                             ; preds = %bb.m
  tail call void @_RNvNtCscI6d9CVNmLh_4core9panicking18panic_bounds_check(i64 noundef 0, i64 noundef 0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @252) #66, !noalias !46689
  unreachable

bb.p:                                             ; preds = %bb.n
  %i.bh = getelementptr inbounds nuw i8, ptr %1, i64 1
  %i.bi = load i8, ptr %i.bh, align 1, !alias.scope !46685, !noalias !46688, !noundef !75
  %i.bj = icmp samesign ugt i64 %2, 2
  br i1 %i.bj, label %bb.r, label %bb.s

bb.q:                                             ; preds = %bb.n
  tail call void @_RNvNtCscI6d9CVNmLh_4core9panicking18panic_bounds_check(i64 noundef 1, i64 noundef 1, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @253) #66, !noalias !46689
  unreachable

bb.r:                                             ; preds = %bb.p
  %.not2.i = icmp eq i64 %2, 3
  br i1 %.not2.i, label %bb.w, label %bb.t

bb.s:                                             ; preds = %bb.p
  tail call void @_RNvNtCscI6d9CVNmLh_4core9panicking18panic_bounds_check(i64 noundef 2, i64 noundef 2, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @254) #66, !noalias !46689
  unreachable

bb.t:                                             ; preds = %bb.r
  %i.bk = getelementptr inbounds nuw i8, ptr %1, i64 2
  %i.bl = load i16, ptr %i.bk, align 1, !alias.scope !46685, !noalias !46688
  %i.bm = zext i16 %i.bl to i32
  %i.bn = shl nuw i32 %i.bm, 16
  %.sroa.4.0.insert.ext.i = zext i8 %i.bi to i32
  %.sroa.4.0.insert.shift.i = shl nuw nsw i32 %.sroa.4.0.insert.ext.i, 8
  %.sroa.0.0.insert.ext.i = zext i8 %i.bg to i32
  %.sroa.4.0.insert.insert.i = or disjoint i32 %.sroa.4.0.insert.shift.i, %.sroa.0.0.insert.ext.i ; 2 uses
  %.sroa.0.0.insert.insert.i = or disjoint i32 %i.bn, %.sroa.4.0.insert.insert.i
  %i.bo = and i8 %i.bd, 31
  %i.bp = zext nneg i8 %i.bo to i32
  %i.bq = lshr i32 %.sroa.0.0.insert.insert.i, %i.bp
  %i.br = trunc i32 %i.bq to i16
  %i.bs = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
end_hunk_10
begin_hunk_11_@_RNvMsf_NtNtNtCsjjpCCFGI3ul_14lance_encoding9encodings7logical9primitiveNtB5_24DecodeComplexAllNullTask12decode_level:bb.a
  %epil.iter = phi i64 [ %epil.iter.next, %.preheader.i.epil ], [ 0, %.preheader.i.epil.preheader ]
  %i.ac = getelementptr inbounds nuw [64 x i8], ptr %.72.val, i64 %.sroa.04.0.i.i.epil ; 2 uses
  %.val.i.i.epil = load i64, ptr %i.ac, align 8, !noalias !46788, !noundef !75
  %i.ad = getelementptr i8, ptr %i.ac, i64 8
  %.val13.i.i.epil = load i64, ptr %i.ad, align 8, !noalias !46788, !noundef !75
  %i.ae = sub i64 %.sroa.02.0.i.i.epil, %.val.i.i.epil
  %i.af = add i64 %i.ae, %.val13.i.i.epil         ; 2 uses
  %i.ag = add nuw i64 %.sroa.04.0.i.i.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %_RINvXs2J_NtNtCscI6d9CVNmLh_4core5slice4iterINtB7_4IterNtNtNtNtCsjjpCCFGI3ul_14lance_encoding9encodings7logical9primitive10LevelSliceENtNtNtNtBb_4iter6traits8iterator8Iterator4foldjNCINvNtNtB2d_8adapters3map8map_foldRBQ_jjNCNCNvMsf_BS_NtBS_24DecodeComplexAllNullTask12decode_level00NCINvXsK_NtB2b_5accumjNtB4E_3Sum3sumINtB2X_3MapBF_B3x_EE0E0EBY_.exit.i, label %.preheader.i.epil, !llvm.loop !46761

_RINvXs2J_NtNtCscI6d9CVNmLh_4core5slice4iterINtB7_4IterNtNtNtNtCsjjpCCFGI3ul_14lance_encoding9encodings7logical9primitive10LevelSliceENtNtNtNtBb_4iter6traits8iterator8Iterator4foldjNCINvNtNtB2d_8adapters3map8map_foldRBQ_jjNCNCNvMsf_BS_NtBS_24DecodeComplexAllNullTask12decode_level00NCINvXsK_NtB2b_5accumjNtB4E_3Sum3sumINtB2X_3MapBF_B3x_EE0E0EBY_.exit.i: ; preds = %_RINvXs2J_NtNtCscI6d9CVNmLh_4core5slice4iterINtB7_4IterNtNtNtNtCsjjpCCFGI3ul_14lance_encoding9encodings7logical9primitive10LevelSliceENtNtNtNtBb_4iter6traits8iterator8Iterator4foldjNCINvNtNtB2d_8adapters3map8map_foldRBQ_jjNCNCNvMsf_BS_NtBS_24DecodeComplexAllNullTask12decode_level00NCINvXsK_NtB2b_5accumjNtB4E_3Sum3sumINtB2X_3MapBF_B3x_EE0E0EBY_.exit.i.loopexit.unr-lcssa, %.preheader.i.epil, %bb.b
  %.sroa.0.0.i.i = phi i64 [ 0, %bb.b ], [ %i.aa, %_RINvXs2J_NtNtCscI6d9CVNmLh_4core5slice4iterINtB7_4IterNtNtNtNtCsjjpCCFGI3ul_14lance_encoding9encodings7logical9primitive10LevelSliceENtNtNtNtBb_4iter6traits8iterator8Iterator4foldjNCINvNtNtB2d_8adapters3map8map_foldRBQ_jjNCNCNvMsf_BS_NtBS_24DecodeComplexAllNullTask12decode_level00NCINvXsK_NtB2b_5accumjNtB4E_3Sum3sumINtB2X_3MapBF_B3x_EE0E0EBY_.exit.i.loopexit.unr-lcssa ], [ %i.af, %.preheader.i.epil ] ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !46788
  %i.ah = shl i64 %.sroa.0.0.i.i, 1               ; 4 uses
  %i.ai = icmp slt i64 %.sroa.0.0.i.i, 0
  %.not.i.i = icmp ugt i64 %i.ah, 9223372036854775806
  %or.cond.i.i = or i1 %i.ai, %.not.i.i
  br i1 %or.cond.i.i, label %bb.f, label %bb.c, !prof !80

bb.c:                                             ; preds = %_RINvXs2J_NtNtCscI6d9CVNmLh_4core5slice4iterINtB7_4IterNtNtNtNtCsjjpCCFGI3ul_14lance_encoding9encodings7logical9primitive10LevelSliceENtNtNtNtBb_4iter6traits8iterator8Iterator4foldjNCINvNtNtB2d_8adapters3map8map_foldRBQ_jjNCNCNvMsf_BS_NtBS_24DecodeComplexAllNullTask12decode_level00NCINvXsK_NtB2b_5accumjNtB4E_3Sum3sumINtB2X_3MapBF_B3x_EE0E0EBY_.exit.i
  %i.aj = icmp eq i64 %i.ah, 0
  br i1 %i.aj, label %_RNvMs4_NtCs40k4W9msRzi_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsjjpCCFGI3ul_14lance_encoding.exit.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void @_RNvCs9hJ03s5DiqP_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #63, !noalias !46789
  %i.ak = tail call noundef align 2 ptr @_RNvCs9hJ03s5DiqP_7___rustc12___rust_alloc(i64 noundef %i.ah, i64 noundef range(i64 1, -9223372036854775807) 2) #63, !noalias !46789 ; 2 uses
  %i.al = icmp eq ptr %i.ak, null
  br i1 %i.al, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.am = ptrtoint ptr %i.ak to i64
  br label %_RNvMs4_NtCs40k4W9msRzi_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsjjpCCFGI3ul_14lance_encoding.exit.i

bb.f:                                             ; preds = %bb.d, %_RINvXs2J_NtNtCscI6d9CVNmLh_4core5slice4iterINtB7_4IterNtNtNtNtCsjjpCCFGI3ul_14lance_encoding9encodings7logical9primitive10LevelSliceENtNtNtNtBb_4iter6traits8iterator8Iterator4foldjNCINvNtNtB2d_8adapters3map8map_foldRBQ_jjNCNCNvMsf_BS_NtBS_24DecodeComplexAllNullTask12decode_level00NCINvXsK_NtB2b_5accumjNtB4E_3Sum3sumINtB2X_3MapBF_B3x_EE0E0EBY_.exit.i
  %.sroa.4.0.ph.i = phi i64 [ 2, %bb.d ], [ 0, %_RINvXs2J_NtNtCscI6d9CVNmLh_4core5slice4iterINtB7_4IterNtNtNtNtCsjjpCCFGI3ul_14lance_encoding9encodings7logical9primitive10LevelSliceENtNtNtNtBb_4iter6traits8iterator8Iterator4foldjNCINvNtNtB2d_8adapters3map8map_foldRBQ_jjNCNCNvMsf_BS_NtBS_24DecodeComplexAllNullTask12decode_level00NCINvXsK_NtB2b_5accumjNtB4E_3Sum3sumINtB2X_3MapBF_B3x_EE0E0EBY_.exit.i ]
  tail call void @_RNvNtCs40k4W9msRzi_5alloc7raw_vec12handle_error(i64 noundef %.sroa.4.0.ph.i, i64 %i.ah) #66, !noalias !46788
  unreachable

_RNvMs4_NtCs40k4W9msRzi_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsjjpCCFGI3ul_14lance_encoding.exit.i: ; preds = %bb.e, %bb.c
  %.sroa.10.0.i = phi i64 [ %i.am, %bb.e ], [ 2, %bb.c ]
  %.sroa.4.0.i = phi i64 [ %.sroa.0.0.i.i, %bb.e ], [ 0, %bb.c ] ; 2 uses
  %i.an = inttoptr i64 %.sroa.10.0.i to ptr       ; 4 uses
  %i.ao = icmp samesign ule i64 %.sroa.0.0.i.i, %.sroa.4.0.i
  tail call void @llvm.assume(i1 %i.ao)
  store i64 %.sroa.4.0.i, ptr %i.b, align 8, !noalias !46788
  %i.ap = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 5 uses
  store ptr %i.an, ptr %i.ap, align 8, !noalias !46788
  %i.aq = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 7 uses
  store i64 0, ptr %i.aq, align 8, !noalias !46788
  br i1 %i.g, label %_RNCNvMsf_NtNtNtCsjjpCCFGI3ul_14lance_encoding9encodings7logical9primitiveNtB7_24DecodeComplexAllNullTask12decode_level0Bd_.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %_RNvMs4_NtCs40k4W9msRzi_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsjjpCCFGI3ul_14lance_encoding.exit.i
  %i.ar = load ptr, ptr %i.e, align 8, !alias.scope !46787, !noalias !46790
  %.fr45.i = freeze ptr %i.ar
  %i.as = icmp eq ptr %.fr45.i, null
  %i.at = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.au = load i64, ptr %i.at, align 8, !alias.scope !46787, !noalias !46790
  %i.av = lshr i64 %i.au, 1                       ; 3 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.ax = load ptr, ptr %i.aw, align 8, !alias.scope !46787, !noalias !46790, !nonnull !75 ; 5 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 16 ; 4 uses
  %i.az = getelementptr inbounds nuw i8, ptr %i.ax, i64 64 ; 2 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %i.ax, i64 56 ; 2 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.bc = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  br i1 %i.as, label %.lr.ph.split.us.i.preheader, label %.lr.ph.split.i

.lr.ph.split.us.i.preheader:                      ; preds = %.lr.ph.i
  %..i = select i1 %2, i64 40, i64 16
  br label %.lr.ph.split.us.i

.lr.ph.split.us.i:                                ; preds = %.lr.ph.split.us.i.preheader, %_RNvMs6_NtNtNtCsjjpCCFGI3ul_14lance_encoding9encodings7logical9primitiveNtB5_10LazyLevels11extend_into.exit.us.i
  %i.bd = phi ptr [ %i.dj, %_RNvMs6_NtNtNtCsjjpCCFGI3ul_14lance_encoding9encodings7logical9primitiveNtB5_10LazyLevels11extend_into.exit.us.i ], [ %i.an, %.lr.ph.split.us.i.preheader ] ; 2 uses
  %i.be = phi i64 [ %i.dk, %_RNvMs6_NtNtNtCsjjpCCFGI3ul_14lance_encoding9encodings7logical9primitiveNtB5_10LazyLevels11extend_into.exit.us.i ], [ 0, %.lr.ph.split.us.i.preheader ] ; 2 uses
  %.sroa.0.026.us.i = phi ptr [ %i.bf, %_RNvMs6_NtNtNtCsjjpCCFGI3ul_14lance_encoding9encodings7logical9primitiveNtB5_10LazyLevels11extend_into.exit.us.i ], [ %.72.val, %.lr.ph.split.us.i.preheader ] ; 4 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %.sroa.0.026.us.i, i64 64 ; 2 uses
  %.sroa.0.0.val.us.i = load i64, ptr %.sroa.0.026.us.i, align 8, !alias.scope !46791, !noalias !46788, !noundef !75 ; 3 uses
  %i.bg = getelementptr i8, ptr %.sroa.0.026.us.i, i64 8
  %.sroa.0.0.val4.us.i = load i64, ptr %i.bg, align 8, !alias.scope !46792, !noalias !46788, !noundef !75 ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !46793)
  %.not.i5.us.i = icmp ult i64 %.sroa.0.0.val.us.i, %.sroa.0.0.val4.us.i
  br i1 %.not.i5.us.i, label %bb.g, label %_RNvMs6_NtNtNtCsjjpCCFGI3ul_14lance_encoding9encodings7logical9primitiveNtB5_10LazyLevels11extend_into.exit.us.i

bb.g:                                             ; preds = %.lr.ph.split.us.i
  %i.bh = getelementptr inbounds nuw i8, ptr %.sroa.0.026.us.i, i64 %..i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !46794
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.a, ptr noundef nonnull align 8 dereferenceable(24) %i.bh, i64 24, i1 false)
  invoke fastcc void @_RNvMs5_NtNtNtCsjjpCCFGI3ul_14lance_encoding9encodings7logical9primitiveNtB5_10RunStorage4seek(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(72) %i.ay, ptr noalias noundef align 8 dereferenceable(24) %i.a, i64 noundef %.sroa.0.0.val.us.i)
          to label %.noexc9.us.i unwind label %.loopexit.split-lp.loopexit.split.us.i, !noalias !46788

.noexc9.us.i:                                     ; preds = %bb.g, %bb.r
  %i.bi = phi ptr [ %i.dh, %bb.r ], [ %i.bd, %bb.g ] ; 4 uses
  %i.bj = phi i64 [ %i.di, %bb.r ], [ %i.be, %bb.g ] ; 8 uses
  %i.bk = load i64, ptr %i.a, align 8, !noalias !46794, !noundef !75 ; 5 uses
  %i.bl = load i64, ptr %i.ay, align 8, !range !121, !noalias !46794, !noundef !75
  %i.bm = icmp eq i64 %i.bl, -1                   ; 2 uses
  br i1 %i.bm, label %bb.i, label %bb.h

bb.h:                                             ; preds = %.noexc9.us.i
  %i.bn = load i64, ptr %i.az, align 8, !noalias !46794, !noundef !75
  %i.bo = lshr i64 %i.bn, 1
  br label %bb.j

bb.i:                                             ; preds = %.noexc9.us.i
  %i.bp = load i64, ptr %i.ba, align 8, !noalias !46794, !noundef !75
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %.sroa.0.0.i6.us.i = phi i64 [ %i.bp, %bb.i ], [ %i.bo, %bb.h ]
  %i.bq = icmp ult i64 %i.bk, %.sroa.0.0.i6.us.i
  br i1 %i.bq, label %bb.k, label %bb.s

bb.k:                                             ; preds = %bb.j
  %i.br = load i64, ptr %i.bb, align 8, !noalias !46794, !noundef !75 ; 2 uses
  %i.bs = icmp ult i64 %i.br, %.sroa.0.0.val4.us.i
  br i1 %i.bs, label %bb.l, label %bb.s

bb.l:                                             ; preds = %bb.k
  %.sroa.0.0.i.i.us.i = tail call noundef i64 @llvm.umax.i64(i64 %.sroa.0.0.val.us.i, i64 %i.br) ; 3 uses
  %i.bt = load i64, ptr %i.bc, align 8, !noalias !46794, !noundef !75
  %.sroa.0.0.i8.i.us.i = tail call noundef i64 @llvm.umin.i64(i64 %.sroa.0.0.val4.us.i, i64 %i.bt) ; 3 uses
  %i.bu = icmp ugt i64 %.sroa.0.0.i8.i.us.i, %.sroa.0.0.i.i.us.i
  br i1 %i.bu, label %bb.m, label %bb.r

bb.m:                                             ; preds = %bb.l
  %i.bv = icmp ult i64 %i.bj, 4611686018427387904
  tail call void @llvm.assume(i1 %i.bv)
  %i.bw = sub nuw i64 %.sroa.0.0.i8.i.us.i, %.sroa.0.0.i.i.us.i ; 6 uses
  %i.bx = add i64 %i.bw, %i.bj                    ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !46795)
  br i1 %i.bm, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.by = load i64, ptr %i.az, align 8, !alias.scope !46795, !noalias !46794, !noundef !75
  %i.bz = lshr i64 %i.by, 1                       ; 2 uses
  %i.ca = icmp ult i64 %i.bk, %i.bz
  br i1 %i.ca, label %_RNvMs5_NtNtNtCsjjpCCFGI3ul_14lance_encoding9encodings7logical9primitiveNtB5_10RunStorage5value.exit.i.us.i, label %.split30.us.invoke.i

bb.o:                                             ; preds = %bb.m
  %i.cb = load i64, ptr %i.ba, align 8, !alias.scope !46795, !noalias !46794, !noundef !75 ; 2 uses
  %i.cc = icmp ult i64 %i.bk, %i.cb
  br i1 %i.cc, label %_RNvMs5_NtNtNtCsjjpCCFGI3ul_14lance_encoding9encodings7logical9primitiveNtB5_10RunStorage5value.exit.i.us.i, label %.split30.us.invoke.i

_RNvMs5_NtNtNtCsjjpCCFGI3ul_14lance_encoding9encodings7logical9primitiveNtB5_10RunStorage5value.exit.i.us.i: ; preds = %bb.o, %bb.n
  %.sink.i.i.us.i = phi i64 [ 32, %bb.o ], [ 40, %bb.n ]
  %i.cd = getelementptr inbounds nuw i8, ptr %i.ay, i64 %.sink.i.i.us.i
  %.pn.i.i.us.i = load ptr, ptr %i.cd, align 8, !alias.scope !46795, !noalias !46794, !noundef !75
  %.sroa.0.0.in.i.i.us.i = getelementptr inbounds nuw [2 x i8], ptr %.pn.i.i.us.i, i64 %i.bk
  %.sroa.0.0.i9.i.us.i = load i16, ptr %.sroa.0.0.in.i.i.us.i, align 2, !noalias !46796, !noundef !75 ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !46797)
  %i.ce = icmp ugt i64 %i.bx, %i.bj
  br i1 %i.ce, label %bb.p, label %_RNvMs1_NtCs40k4W9msRzi_5alloc3vecINtB5_3VectE6resizeCsjjpCCFGI3ul_14lance_encoding.exit.i.us.i

bb.p:                                             ; preds = %_RNvMs5_NtNtNtCsjjpCCFGI3ul_14lance_encoding9encodings7logical9primitiveNtB5_10RunStorage5value.exit.i.us.i
  tail call void @llvm.experimental.noalias.scope.decl(metadata !46798)
  %i.cf = load i64, ptr %i.b, align 8, !range !76, !alias.scope !46799, !noalias !46800, !noundef !75
  %i.cg = sub nsw i64 %i.cf, %i.bj
  %i.ch = icmp ugt i64 %i.bw, %i.cg
  br i1 %i.ch, label %bb.q, label %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VectE7reserveCsjjpCCFGI3ul_14lance_encoding.exit.i.i.i.us.i, !prof !81

bb.q:                                             ; preds = %bb.p
  invoke fastcc void @_RINvNvMs2_NtCs40k4W9msRzi_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECsjjpCCFGI3ul_14lance_encoding(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.b, i64 noundef %i.bj, i64 noundef %i.bw, i64 noundef 2, i64 noundef 2)
          to label %.noexc12.us.i unwind label %.loopexit.split.us.i, !noalias !46788

.noexc12.us.i:                                    ; preds = %bb.q
  %.pre.i.i.i.us.i = load i64, ptr %i.aq, align 8, !alias.scope !46801, !noalias !46800
  %.pre65.i = load ptr, ptr %i.ap, align 8, !alias.scope !46801, !noalias !46800
  br label %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VectE7reserveCsjjpCCFGI3ul_14lance_encoding.exit.i.i.i.us.i

_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VectE7reserveCsjjpCCFGI3ul_14lance_encoding.exit.i.i.i.us.i: ; preds = %.noexc12.us.i, %bb.p
  %i.ci = phi ptr [ %i.bi, %bb.p ], [ %.pre65.i, %.noexc12.us.i ] ; 2 uses
  %i.cj = phi i64 [ %i.bj, %bb.p ], [ %.pre.i.i.i.us.i, %.noexc12.us.i ] ; 4 uses
  %i.ck = icmp ult i64 %i.cj, 4611686018427387904
  tail call void @llvm.assume(i1 %i.ck)
  %i.cl = getelementptr inbounds nuw [2 x i8], ptr %i.ci, i64 %i.cj ; 6 uses
  %i.cm = icmp ugt i64 %i.bw, 1
  br i1 %i.cm, label %iter.check, label %._crit_edge.i.i.i.us.i

iter.check:                                       ; preds = %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VectE7reserveCsjjpCCFGI3ul_14lance_encoding.exit.i.i.i.us.i
  %i.cn = xor i64 %.sroa.0.0.i.i.us.i, -1
  %i.co = add i64 %.sroa.0.0.i8.i.us.i, %i.cn     ; 7 uses
  %min.iters.check = icmp ult i64 %i.co, 4
  br i1 %min.iters.check, label %.lr.ph.i.i.i.us.i.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check98 = icmp ult i64 %i.co, 16
  br i1 %min.iters.check98, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.cp = and i64 %i.co, 12
  %n.vec = and i64 %i.co, -16                     ; 5 uses
  %i.cq = shl i64 %n.vec, 1
  %i.cr = getelementptr i8, ptr %i.cl, i64 %i.cq  ; 2 uses
  %i.cs = or disjoint i64 %n.vec, 1
  %broadcast.splatinsert = insertelement <8 x i16> poison, i16 %.sroa.0.0.i9.i.us.i, i64 0
  %broadcast.splat = shufflevector <8 x i16> %broadcast.splatinsert, <8 x i16> poison, <8 x i32> zeroinitializer ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.ph, %vector.body
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.ct = shl i64 %index, 1
  %next.gep = getelementptr i8, ptr %i.cl, i64 %i.ct ; 2 uses
  %i.cu = getelementptr i8, ptr %next.gep, i64 16
  store <8 x i16> %broadcast.splat, ptr %next.gep, align 2, !noalias !46802
  store <8 x i16> %broadcast.splat, ptr %i.cu, align 2, !noalias !46802
  %index.next = add nuw i64 %index, 16            ; 2 uses
  %i.cv = icmp eq i64 %index.next, %n.vec
  br i1 %i.cv, label %middle.block, label %vector.body, !llvm.loop !46780

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.co, %n.vec
  br i1 %cmp.n, label %._crit_edge.thread.i.i.i.us.i, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.cp, 0
  br i1 %min.epilog.iters.check, label %.lr.ph.i.i.i.us.i.preheader, label %vec.epilog.ph, !prof !101

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec100 = and i64 %i.co, -4                   ; 4 uses
  %i.cw = shl i64 %n.vec100, 1
  %i.cx = getelementptr i8, ptr %i.cl, i64 %i.cw  ; 2 uses
  %i.cy = or disjoint i64 %n.vec100, 1
  %broadcast.splatinsert101 = insertelement <4 x i16> poison, i16 %.sroa.0.0.i9.i.us.i, i64 0
  %broadcast.splat102 = shufflevector <4 x i16> %broadcast.splatinsert101, <4 x i16> poison, <4 x i32> zeroinitializer
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index103 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next105, %vec.epilog.vector.body ] ; 2 uses
  %i.cz = shl i64 %index103, 1
  %next.gep104 = getelementptr i8, ptr %i.cl, i64 %i.cz
  store <4 x i16> %broadcast.splat102, ptr %next.gep104, align 2, !noalias !46802
  %index.next105 = add nuw i64 %index103, 4       ; 2 uses
  %i.da = icmp eq i64 %index.next105, %n.vec100
  br i1 %i.da, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !46781

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n106 = icmp eq i64 %i.co, %n.vec100
  br i1 %cmp.n106, label %._crit_edge.thread.i.i.i.us.i, label %.lr.ph.i.i.i.us.i.preheader

.lr.ph.i.i.i.us.i.preheader:                      ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.sroa.0.021.i.i.i.us.i.ph = phi ptr [ %i.cl, %iter.check ], [ %i.cr, %vec.epilog.iter.check ], [ %i.cx, %vec.epilog.middle.block ]
  %.sroa.03.020.i.i.i.us.i.ph = phi i64 [ 1, %iter.check ], [ %i.cs, %vec.epilog.iter.check ], [ %i.cy, %vec.epilog.middle.block ]
  br label %.lr.ph.i.i.i.us.i

.lr.ph.i.i.i.us.i:                                ; preds = %.lr.ph.i.i.i.us.i.preheader, %.lr.ph.i.i.i.us.i
  %.sroa.0.021.i.i.i.us.i = phi ptr [ %i.dc, %.lr.ph.i.i.i.us.i ], [ %.sroa.0.021.i.i.i.us.i.ph, %.lr.ph.i.i.i.us.i.preheader ] ; 2 uses
  %.sroa.03.020.i.i.i.us.i = phi i64 [ %i.db, %.lr.ph.i.i.i.us.i ], [ %.sroa.03.020.i.i.i.us.i.ph, %.lr.ph.i.i.i.us.i.preheader ]
  %i.db = add nuw i64 %.sroa.03.020.i.i.i.us.i, 1 ; 2 uses
  store i16 %.sroa.0.0.i9.i.us.i, ptr %.sroa.0.021.i.i.i.us.i, align 2, !noalias !46802
  %i.dc = getelementptr inbounds nuw i8, ptr %.sroa.0.021.i.i.i.us.i, i64 2 ; 2 uses
  %exitcond.not.i.i.i.us.i = icmp eq i64 %i.db, %i.bw
  br i1 %exitcond.not.i.i.i.us.i, label %._crit_edge.thread.i.i.i.us.i, label %.lr.ph.i.i.i.us.i, !llvm.loop !46782

._crit_edge.thread.i.i.i.us.i:                    ; preds = %.lr.ph.i.i.i.us.i, %vec.epilog.middle.block, %middle.block
  %.lcssa = phi ptr [ %i.cx, %vec.epilog.middle.block ], [ %i.cr, %middle.block ], [ %i.dc, %.lr.ph.i.i.i.us.i ]
  %i.dd = add i64 %i.bw, -1
  %i.de = add i64 %i.dd, %i.cj
  br label %._crit_edge.i.i.i.us.i

._crit_edge.i.i.i.us.i:                           ; preds = %._crit_edge.thread.i.i.i.us.i, %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VectE7reserveCsjjpCCFGI3ul_14lance_encoding.exit.i.i.i.us.i
  %.sroa.0.0.lcssa28.i.i.i.us.i = phi ptr [ %.lcssa, %._crit_edge.thread.i.i.i.us.i ], [ %i.cl, %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VectE7reserveCsjjpCCFGI3ul_14lance_encoding.exit.i.i.i.us.i ]
  %storemerge.lcssa27.i.i.i.us.i = phi i64 [ %i.de, %._crit_edge.thread.i.i.i.us.i ], [ %i.cj, %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VectE7reserveCsjjpCCFGI3ul_14lance_encoding.exit.i.i.i.us.i ]
  store i16 %.sroa.0.0.i9.i.us.i, ptr %.sroa.0.0.lcssa28.i.i.i.us.i, align 2, !noalias !46802
  %i.df = add i64 %storemerge.lcssa27.i.i.i.us.i, 1
  br label %_RNvMs1_NtCs40k4W9msRzi_5alloc3vecINtB5_3VectE6resizeCsjjpCCFGI3ul_14lance_encoding.exit.i.us.i

_RNvMs1_NtCs40k4W9msRzi_5alloc3vecINtB5_3VectE6resizeCsjjpCCFGI3ul_14lance_encoding.exit.i.us.i: ; preds = %._crit_edge.i.i.i.us.i, %_RNvMs5_NtNtNtCsjjpCCFGI3ul_14lance_encoding9encodings7logical9primitiveNtB5_10RunStorage5value.exit.i.us.i
  %i.dg = phi ptr [ %i.bi, %_RNvMs5_NtNtNtCsjjpCCFGI3ul_14lance_encoding9encodings7logical9primitiveNtB5_10RunStorage5value.exit.i.us.i ], [ %i.ci, %._crit_edge.i.i.i.us.i ]
  %storemerge.i.i.us.i = phi i64 [ %i.bx, %_RNvMs5_NtNtNtCsjjpCCFGI3ul_14lance_encoding9encodings7logical9primitiveNtB5_10RunStorage5value.exit.i.us.i ], [ %i.df, %._crit_edge.i.i.i.us.i ] ; 2 uses
  store i64 %storemerge.i.i.us.i, ptr %i.aq, align 8, !alias.scope !46803, !noalias !46800
  br label %bb.r

bb.r:                                             ; preds = %_RNvMs1_NtCs40k4W9msRzi_5alloc3vecINtB5_3VectE6resizeCsjjpCCFGI3ul_14lance_encoding.exit.i.us.i, %bb.l
  %i.dh = phi ptr [ %i.dg, %_RNvMs1_NtCs40k4W9msRzi_5alloc3vecINtB5_3VectE6resizeCsjjpCCFGI3ul_14lance_encoding.exit.i.us.i ], [ %i.bi, %bb.l ]
  %i.di = phi i64 [ %storemerge.i.i.us.i, %_RNvMs1_NtCs40k4W9msRzi_5alloc3vecINtB5_3VectE6resizeCsjjpCCFGI3ul_14lance_encoding.exit.i.us.i ], [ %i.bj, %bb.l ]
  invoke fastcc void @_RNvMs5_NtNtNtCsjjpCCFGI3ul_14lance_encoding9encodings7logical9primitiveNtB5_10RunStorage7advance(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(72) %i.ay, ptr noalias noundef align 8 dereferenceable(24) %i.a)
          to label %.noexc9.us.i unwind label %.loopexit.split.us.i, !noalias !46788

bb.s:                                             ; preds = %bb.k, %bb.j
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !46794
  br label %_RNvMs6_NtNtNtCsjjpCCFGI3ul_14lance_encoding9encodings7logical9primitiveNtB5_10LazyLevels11extend_into.exit.us.i

_RNvMs6_NtNtNtCsjjpCCFGI3ul_14lance_encoding9encodings7logical9primitiveNtB5_10LazyLevels11extend_into.exit.us.i: ; preds = %bb.s, %.lr.ph.split.us.i
  %i.dj = phi ptr [ %i.bi, %bb.s ], [ %i.bd, %.lr.ph.split.us.i ]
  %i.dk = phi i64 [ %i.bj, %bb.s ], [ %i.be, %.lr.ph.split.us.i ]
  %i.dl = icmp eq ptr %i.bf, %i.f
  br i1 %i.dl, label %_RNCNvMsf_NtNtNtCsjjpCCFGI3ul_14lance_encoding9encodings7logical9primitiveNtB7_24DecodeComplexAllNullTask12decode_level0Bd_.exit, label %.lr.ph.split.us.i

.loopexit.split-lp.loopexit.split.us.i:           ; preds = %bb.g
  %lpad.loopexit7.us.i = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp.i

.loopexit.split.us.i:                             ; preds = %bb.r, %bb.q
  %lpad.loopexit.us.i = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp.i

.lr.ph.split.i:                                   ; preds = %.lr.ph.i
  br i1 %2, label %.lr.ph.split.split.us.i, label %.lr.ph.split.split.i

.lr.ph.split.split.us.i:                          ; preds = %.lr.ph.split.i, %_RNvMs6_NtNtNtCsjjpCCFGI3ul_14lance_encoding9encodings7logical9primitiveNtB5_10LazyLevels11extend_into.exit.us38.i
  %i.dm = phi ptr [ %i.eb, %_RNvMs6_NtNtNtCsjjpCCFGI3ul_14lance_encoding9encodings7logical9primitiveNtB5_10LazyLevels11extend_into.exit.us38.i ], [ %i.an, %.lr.ph.split.i ] ; 2 uses
  %i.dn = phi i64 [ %i.ec, %_RNvMs6_NtNtNtCsjjpCCFGI3ul_14lance_encoding9encodings7logical9primitiveNtB5_10LazyLevels11extend_into.exit.us38.i ], [ 0, %.lr.ph.split.i ] ; 4 uses
  %.sroa.0.026.us34.i = phi ptr [ %i.do, %_RNvMs6_NtNtNtCsjjpCCFGI3ul_14lance_encoding9encodings7logical9primitiveNtB5_10LazyLevels11extend_into.exit.us38.i ], [ %.72.val, %.lr.ph.split.i ] ; 3 uses
  %i.do = getelementptr inbounds nuw i8, ptr %.sroa.0.026.us34.i, i64 64 ; 2 uses
  %.sroa.0.0.val.us35.i = load i64, ptr %.sroa.0.026.us34.i, align 8, !alias.scope !46791, !noalias !46788, !noundef !75 ; 4 uses
  %i.dp = getelementptr i8, ptr %.sroa.0.026.us34.i, i64 8
  %.sroa.0.0.val4.us36.i = load i64, ptr %i.dp, align 8, !alias.scope !46792, !noalias !46788, !noundef !75 ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !46793)
  %.not.i5.us37.i = icmp ult i64 %.sroa.0.0.val.us35.i, %.sroa.0.0.val4.us36.i
  br i1 %.not.i5.us37.i, label %bb.t, label %_RNvMs6_NtNtNtCsjjpCCFGI3ul_14lance_encoding9encodings7logical9primitiveNtB5_10LazyLevels11extend_into.exit.us38.i

bb.t:                                             ; preds = %.lr.ph.split.split.us.i
  %.not6.i.us.i = icmp ugt i64 %.sroa.0.0.val4.us36.i, %i.av
  br i1 %.not6.i.us.i, label %.split.us39.i, label %bb.u, !prof !100

bb.u:                                             ; preds = %bb.t
  %.idx7.i.us.i = shl nuw nsw i64 %.sroa.0.0.val.us35.i, 1
  %i.dq = getelementptr inbounds nuw i8, ptr %i.ax, i64 %.idx7.i.us.i
  %i.dr = sub nuw nsw i64 %.sroa.0.0.val4.us36.i, %.sroa.0.0.val.us35.i ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !46804)
  %i.ds = load i64, ptr %i.b, align 8, !range !76, !alias.scope !46805, !noalias !46800, !noundef !75
  %i.dt = sub i64 %i.ds, %i.dn
  %i.du = icmp ugt i64 %i.dr, %i.dt
  br i1 %i.du, label %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VectE7reserveCsjjpCCFGI3ul_14lance_encoding.exit.thread.i.i.us.i, label %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VectE15append_elementsCsjjpCCFGI3ul_14lance_encoding.exit.i.us.i, !prof !81

_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VectE7reserveCsjjpCCFGI3ul_14lance_encoding.exit.thread.i.i.us.i: ; preds = %bb.u
  invoke fastcc void @_RINvNvMs2_NtCs40k4W9msRzi_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECsjjpCCFGI3ul_14lance_encoding(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.b, i64 noundef %i.dn, i64 noundef range(i64 0, -9223372036854775808) %i.dr, i64 noundef 2, i64 noundef 2)
          to label %.noexc8.us.i unwind label %.loopexit.split-lp.loopexit.split.split.us.i, !noalias !46788

.noexc8.us.i:                                     ; preds = %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VectE7reserveCsjjpCCFGI3ul_14lance_encoding.exit.thread.i.i.us.i
  %i.dv = load i64, ptr %i.aq, align 8, !alias.scope !46806, !noalias !46800, !noundef !75
  %.pre64.i = load ptr, ptr %i.ap, align 8, !alias.scope !46806, !noalias !46800
  br label %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VectE15append_elementsCsjjpCCFGI3ul_14lance_encoding.exit.i.us.i

_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VectE15append_elementsCsjjpCCFGI3ul_14lance_encoding.exit.i.us.i: ; preds = %.noexc8.us.i, %bb.u
  %i.dw = phi ptr [ %.pre64.i, %.noexc8.us.i ], [ %i.dm, %bb.u ] ; 2 uses
  %.sink35.i.us.i = phi i64 [ %i.dv, %.noexc8.us.i ], [ %i.dn, %bb.u ] ; 3 uses
  %i.dx = icmp ult i64 %.sink35.i.us.i, 4611686018427387904
  tail call void @llvm.assume(i1 %i.dx)
  %i.dy = getelementptr inbounds nuw [2 x i8], ptr %i.dw, i64 %.sink35.i.us.i
  %i.dz = shl nuw i64 %i.dr, 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 2 %i.dy, ptr nonnull readonly align 2 %i.dq, i64 %i.dz, i1 false), !noalias !46807
  %i.ea = add nuw i64 %.sink35.i.us.i, %i.dr      ; 2 uses
  store i64 %i.ea, ptr %i.aq, align 8, !alias.scope !46806, !noalias !46800
  br label %_RNvMs6_NtNtNtCsjjpCCFGI3ul_14lance_encoding9encodings7logical9primitiveNtB5_10LazyLevels11extend_into.exit.us38.i

_RNvMs6_NtNtNtCsjjpCCFGI3ul_14lance_encoding9encodings7logical9primitiveNtB5_10LazyLevels11extend_into.exit.us38.i: ; preds = %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VectE15append_elementsCsjjpCCFGI3ul_14lance_encoding.exit.i.us.i, %.lr.ph.split.split.us.i
  %i.eb = phi ptr [ %i.dw, %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VectE15append_elementsCsjjpCCFGI3ul_14lance_encoding.exit.i.us.i ], [ %i.dm, %.lr.ph.split.split.us.i ]
  %i.ec = phi i64 [ %i.ea, %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VectE15append_elementsCsjjpCCFGI3ul_14lance_encoding.exit.i.us.i ], [ %i.dn, %.lr.ph.split.split.us.i ]
  %i.ed = icmp eq ptr %i.do, %i.f
  br i1 %i.ed, label %_RNCNvMsf_NtNtNtCsjjpCCFGI3ul_14lance_encoding9encodings7logical9primitiveNtB7_24DecodeComplexAllNullTask12decode_level0Bd_.exit, label %.lr.ph.split.split.us.i

.loopexit.split-lp.loopexit.split.split.us.i:     ; preds = %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VectE7reserveCsjjpCCFGI3ul_14lance_encoding.exit.thread.i.i.us.i
  %lpad.loopexit7.us43.i = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp.i

.loopexit.split-lp.loopexit.split.split.i:        ; preds = %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VectE7reserveCsjjpCCFGI3ul_14lance_encoding.exit.thread.i.i.i
  %lpad.loopexit7.i = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp.i

.loopexit.split-lp.loopexit.split-lp.i:           ; preds = %.split30.us.invoke.i, %.split.us39.i
  %lpad.loopexit.split-lp8.i = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp.i

.loopexit.split-lp.i:                             ; preds = %.loopexit.split-lp.loopexit.split-lp.i, %.loopexit.split-lp.loopexit.split.split.i, %.loopexit.split-lp.loopexit.split.split.us.i, %.loopexit.split.us.i, %.loopexit.split-lp.loopexit.split.us.i
  %lpad.phi.i = phi { ptr, i32 } [ %lpad.loopexit.us.i, %.loopexit.split.us.i ], [ %lpad.loopexit.split-lp8.i, %.loopexit.split-lp.loopexit.split-lp.i ], [ %lpad.loopexit7.us.i, %.loopexit.split-lp.loopexit.split.us.i ], [ %lpad.loopexit7.i, %.loopexit.split-lp.loopexit.split.split.i ], [ %lpad.loopexit7.us43.i, %.loopexit.split-lp.loopexit.split.split.us.i ]
  %.val.i = load i64, ptr %i.b, align 8, !noalias !46788 ; 2 uses
  %i.ee = icmp eq i64 %.val.i, 0
  br i1 %i.ee, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VectEECsjjpCCFGI3ul_14lance_encoding.exit.i, label %bb.v

bb.v:                                             ; preds = %.loopexit.split-lp.i
  %.val3.i = load ptr, ptr %i.ap, align 8, !noalias !46788, !nonnull !75, !noundef !75
  %i.ef = shl nuw i64 %.val.i, 1
  tail call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.val3.i, i64 noundef %i.ef, i64 noundef range(i64 1, -9223372036854775807) 2) #63, !noalias !46788
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VectEECsjjpCCFGI3ul_14lance_encoding.exit.i

.lr.ph.split.split.i:                             ; preds = %.lr.ph.split.i, %_RNvMs6_NtNtNtCsjjpCCFGI3ul_14lance_encoding9encodings7logical9primitiveNtB5_10LazyLevels11extend_into.exit.i
  %i.eg = phi ptr [ %i.ex, %_RNvMs6_NtNtNtCsjjpCCFGI3ul_14lance_encoding9encodings7logical9primitiveNtB5_10LazyLevels11extend_into.exit.i ], [ %i.an, %.lr.ph.split.i ] ; 2 uses
  %i.eh = phi i64 [ %i.ey, %_RNvMs6_NtNtNtCsjjpCCFGI3ul_14lance_encoding9encodings7logical9primitiveNtB5_10LazyLevels11extend_into.exit.i ], [ 0, %.lr.ph.split.i ] ; 4 uses
  %.sroa.0.026.i = phi ptr [ %i.ei, %_RNvMs6_NtNtNtCsjjpCCFGI3ul_14lance_encoding9encodings7logical9primitiveNtB5_10LazyLevels11extend_into.exit.i ], [ %.72.val, %.lr.ph.split.i ] ; 3 uses
  %i.ei = getelementptr inbounds nuw i8, ptr %.sroa.0.026.i, i64 64 ; 2 uses
  %.sroa.0.0.val.i = load i64, ptr %.sroa.0.026.i, align 8, !alias.scope !46791, !noalias !46788, !noundef !75 ; 4 uses
  %i.ej = getelementptr i8, ptr %.sroa.0.026.i, i64 8
  %.sroa.0.0.val4.i = load i64, ptr %i.ej, align 8, !alias.scope !46792, !noalias !46788, !noundef !75 ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !46793)
  %.not.i5.i = icmp ult i64 %.sroa.0.0.val.i, %.sroa.0.0.val4.i
  br i1 %.not.i5.i, label %bb.w, label %_RNvMs6_NtNtNtCsjjpCCFGI3ul_14lance_encoding9encodings7logical9primitiveNtB5_10LazyLevels11extend_into.exit.i

bb.w:                                             ; preds = %.lr.ph.split.split.i
  %.not6.i.i = icmp ugt i64 %.sroa.0.0.val4.i, %i.av
  br i1 %.not6.i.i, label %.split.us39.i, label %bb.x, !prof !100

.split.us39.i:                                    ; preds = %bb.w, %bb.t
end_hunk_11
begin_hunk_12_@_RNvXs2_NtCsjjpCCFGI3ul_14lance_encoding10statisticsNtNtB7_4data19FixedWidthDataBlockNtB5_11ComputeStat12compute_stat:bb.a
bb.f:                                             ; preds = %_RNvMNtCs40k4W9msRzi_5alloc5boxedINtB2_3BoxINtNtB4_4sync8ArcInnerINtNtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB17_5types10UInt64TypeEEE3newCsjjpCCFGI3ul_14lance_encoding.exit15
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ao), !noalias !68722
  call void @llvm.lifetime.start.p0(ptr nonnull %i.an), !noalias !68722
  call void @_RNvCs9hJ03s5DiqP_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #63, !noalias !68722
  %i.bv = call noundef align 8 dereferenceable_or_null(8) ptr @_RNvCs9hJ03s5DiqP_7___rustc12___rust_alloc(i64 noundef 8, i64 noundef range(i64 1, -9223372036854775807) 8) #63, !noalias !68722 ; 3 uses
  %i.bw = icmp eq ptr %i.bv, null
  br i1 %i.bw, label %.invoke, label %_RNvNtCs40k4W9msRzi_5alloc5boxed14box_new_uninit.exit.i, !prof !77

_RNvNtCs40k4W9msRzi_5alloc5boxed14box_new_uninit.exit.i: ; preds = %bb.f
  store i64 0, ptr %i.bv, align 8, !noalias !68722
  store i64 1, ptr %i.an, align 8, !noalias !68722
  %i.bx = getelementptr inbounds nuw i8, ptr %i.an, i64 8
  store ptr %i.bv, ptr %i.bx, align 8, !noalias !68722
  %i.by = getelementptr inbounds nuw i8, ptr %i.an, i64 16
  store i64 1, ptr %i.by, align 8, !noalias !68722
  invoke void @_RNvXsI_NtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_arrayINtB5_14PrimitiveArrayNtNtB9_5types10UInt64TypeEINtNtCscI6d9CVNmLh_4core7convert4FromINtNtCs40k4W9msRzi_5alloc3vec3VecyEE4from(ptr noalias noundef nonnull sret([96 x i8]) align 8 captures(address) dereferenceable(96) %i.ao, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.an)
          to label %.noexc24 unwind label %bb.bh

.noexc24:                                         ; preds = %_RNvNtCs40k4W9msRzi_5alloc5boxed14box_new_uninit.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.an), !noalias !68722
  call void @llvm.lifetime.start.p0(ptr nonnull %i.y), !noalias !68722
  store i64 1, ptr %i.y, align 8, !noalias !68722
  %i.bz = getelementptr inbounds nuw i8, ptr %i.y, i64 8
  store i64 1, ptr %i.bz, align 8, !noalias !68722
  %i.ca = getelementptr inbounds nuw i8, ptr %i.y, i64 16 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(96) %i.ca, ptr noundef nonnull align 8 dereferenceable(96) %i.ao, i64 96, i1 false), !noalias !68722
  call void @_RNvCs9hJ03s5DiqP_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #63, !noalias !68723
  %i.cb = call noundef align 8 dereferenceable_or_null(112) ptr @_RNvCs9hJ03s5DiqP_7___rustc12___rust_alloc(i64 noundef 112, i64 noundef range(i64 1, -9223372036854775807) 8) #63, !noalias !68723 ; 3 uses
  %i.cc = icmp eq ptr %i.cb, null
  br i1 %i.cc, label %bb.g, label %_RNvMNtCs40k4W9msRzi_5alloc5boxedINtB2_3BoxINtNtB4_4sync8ArcInnerINtNtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB17_5types10UInt64TypeEEE3newCsjjpCCFGI3ul_14lance_encoding.exit35.i, !prof !77

bb.g:                                             ; preds = %.noexc24
  invoke void @_RNvNtCs40k4W9msRzi_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 112) #66
          to label %.noexc.i unwind label %bb.h, !noalias !68722

.noexc.i:                                         ; preds = %bb.g
  unreachable

bb.h:                                             ; preds = %bb.g
  %i.cd = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_array14PrimitiveArrayNtNtBI_5types10UInt64TypeEECsjjpCCFGI3ul_14lance_encoding(ptr noalias noundef nonnull align 8 dereferenceable(96) %i.ca)
          to label %.thread unwind label %bb.i, !noalias !68722

bb.i:                                             ; preds = %bb.h
  %i.ce = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #68, !noalias !68722
  unreachable

_RNvMNtCs40k4W9msRzi_5alloc5boxedINtB2_3BoxINtNtB4_4sync8ArcInnerINtNtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB17_5types10UInt64TypeEEE3newCsjjpCCFGI3ul_14lance_encoding.exit35.i: ; preds = %.noexc24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(112) %i.cb, ptr noundef nonnull align 8 dereferenceable(112) %i.y, i64 112, i1 false), !noalias !68722
  call void @llvm.lifetime.end.p0(ptr nonnull %i.y), !noalias !68722
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ao), !noalias !68722
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %0, i64 32
  %.pre = load i64, ptr %.phi.trans.insert, align 8
  br label %bb.bi

bb.j:                                             ; preds = %_RNvMNtCs40k4W9msRzi_5alloc5boxedINtB2_3BoxINtNtB4_4sync8ArcInnerINtNtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB17_5types10UInt64TypeEEE3newCsjjpCCFGI3ul_14lance_encoding.exit15
  %i.cf = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.cg = load i64, ptr %i.cf, align 8, !alias.scope !68722, !noundef !75 ; 12 uses
  %i.ch = call range(i64 0, 65) i64 @llvm.ctpop.i64(i64 %i.cg)
  %i.ci = icmp eq i64 %i.ch, 1
  br i1 %i.ci, label %.split.i, label %bb.k

.split.i:                                         ; preds = %bb.j
  %i.cj = call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %i.cg, i1 true)
  switch i64 %i.cj, label %bb.k [
    i64 3, label %bb.o
    i64 4, label %bb.r
    i64 5, label %bb.u
    i64 6, label %bb.x
  ]

bb.k:                                             ; preds = %.split.i, %bb.j
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aa), !noalias !68722
  call void @llvm.lifetime.start.p0(ptr nonnull %i.z), !noalias !68722
  call void @_RNvCs9hJ03s5DiqP_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #63, !noalias !68722
  %i.ck = call noundef align 8 dereferenceable_or_null(8) ptr @_RNvCs9hJ03s5DiqP_7___rustc12___rust_alloc(i64 noundef 8, i64 noundef range(i64 1, -9223372036854775807) 8) #63, !noalias !68722 ; 3 uses
  %i.cl = icmp eq ptr %i.ck, null
  br i1 %i.cl, label %.invoke, label %_RNvNtCs40k4W9msRzi_5alloc5boxed14box_new_uninit.exit38.i, !prof !77

.invoke:                                          ; preds = %bb.k, %bb.f
  invoke void @_RNvNtCs40k4W9msRzi_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 8) #66
          to label %.cont unwind label %bb.bh

.cont:                                            ; preds = %.invoke
  unreachable

_RNvNtCs40k4W9msRzi_5alloc5boxed14box_new_uninit.exit38.i: ; preds = %bb.k
  store i64 %i.cg, ptr %i.ck, align 8, !noalias !68722
  store i64 1, ptr %i.z, align 8, !noalias !68722
  %i.cm = getelementptr inbounds nuw i8, ptr %i.z, i64 8
  store ptr %i.ck, ptr %i.cm, align 8, !noalias !68722
  %i.cn = getelementptr inbounds nuw i8, ptr %i.z, i64 16
  store i64 1, ptr %i.cn, align 8, !noalias !68722
  invoke void @_RNvXsI_NtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_arrayINtB5_14PrimitiveArrayNtNtB9_5types10UInt64TypeEINtNtCscI6d9CVNmLh_4core7convert4FromINtNtCs40k4W9msRzi_5alloc3vec3VecyEE4from(ptr noalias noundef nonnull sret([96 x i8]) align 8 captures(address) dereferenceable(96) %i.aa, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.z)
          to label %.noexc28 unwind label %bb.bh

.noexc28:                                         ; preds = %_RNvNtCs40k4W9msRzi_5alloc5boxed14box_new_uninit.exit38.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.z), !noalias !68722
  call void @llvm.lifetime.start.p0(ptr nonnull %i.t), !noalias !68722
  store i64 1, ptr %i.t, align 8, !noalias !68722
  %i.co = getelementptr inbounds nuw i8, ptr %i.t, i64 8
  store i64 1, ptr %i.co, align 8, !noalias !68722
  %i.cp = getelementptr inbounds nuw i8, ptr %i.t, i64 16 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(96) %i.cp, ptr noundef nonnull align 8 dereferenceable(96) %i.aa, i64 96, i1 false), !noalias !68722
  call void @_RNvCs9hJ03s5DiqP_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #63, !noalias !68724
  %i.cq = call noundef align 8 dereferenceable_or_null(112) ptr @_RNvCs9hJ03s5DiqP_7___rustc12___rust_alloc(i64 noundef 112, i64 noundef range(i64 1, -9223372036854775807) 8) #63, !noalias !68724 ; 3 uses
  %i.cr = icmp eq ptr %i.cq, null
  br i1 %i.cr, label %bb.l, label %_RNvMNtCs40k4W9msRzi_5alloc5boxedINtB2_3BoxINtNtB4_4sync8ArcInnerINtNtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB17_5types10UInt64TypeEEE3newCsjjpCCFGI3ul_14lance_encoding.exit34.i, !prof !77

bb.l:                                             ; preds = %.noexc28
  invoke void @_RNvNtCs40k4W9msRzi_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 112) #66
          to label %.noexc39.i unwind label %bb.m, !noalias !68722

.noexc39.i:                                       ; preds = %bb.l
  unreachable

bb.m:                                             ; preds = %bb.l
  %i.cs = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_array14PrimitiveArrayNtNtBI_5types10UInt64TypeEECsjjpCCFGI3ul_14lance_encoding(ptr noalias noundef nonnull align 8 dereferenceable(96) %i.cp)
          to label %.thread unwind label %bb.n, !noalias !68722

bb.n:                                             ; preds = %bb.m
  %i.ct = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #68, !noalias !68722
  unreachable

_RNvMNtCs40k4W9msRzi_5alloc5boxedINtB2_3BoxINtNtB4_4sync8ArcInnerINtNtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB17_5types10UInt64TypeEEE3newCsjjpCCFGI3ul_14lance_encoding.exit34.i: ; preds = %.noexc28
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(112) %i.cq, ptr noundef nonnull align 8 dereferenceable(112) %i.t, i64 112, i1 false), !noalias !68722
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t), !noalias !68722
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aa), !noalias !68722
  br label %bb.bi

bb.o:                                             ; preds = %.split.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.am), !noalias !68722
  call void @llvm.experimental.noalias.scope.decl(metadata !68725)
  call void @llvm.experimental.noalias.scope.decl(metadata !68726)
  %i.cu = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.cv = load ptr, ptr %i.cu, align 8, !alias.scope !68727, !noalias !68725, !noundef !75 ; 2 uses
  %i.cw = load ptr, ptr %0, align 8, !alias.scope !68727, !noalias !68725, !nonnull !75, !noundef !75 ; 2 uses
  %i.cx = atomicrmw add ptr %i.cw, i64 1 monotonic, align 8, !noalias !68728
  %i.cy = icmp slt i64 %i.cx, 0
  br i1 %i.cy, label %bb.p, label %_RINvMNtCsjjpCCFGI3ul_14lance_encoding6bufferNtB3_11LanceBuffer21borrow_to_typed_slicehEB5_.exit.i

bb.p:                                             ; preds = %bb.o
  call void @llvm.trap()
  unreachable

_RINvMNtCsjjpCCFGI3ul_14lance_encoding6bufferNtB3_11LanceBuffer21borrow_to_typed_slicehEB5_.exit.i: ; preds = %bb.o
  store ptr %i.cw, ptr %i.am, align 8, !alias.scope !68729, !noalias !68727
  %.sroa.2.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.am, i64 8
  store ptr %i.cv, ptr %.sroa.2.0..sroa_idx.i.i, align 8, !alias.scope !68729, !noalias !68727
  %.sroa.3.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.am, i64 16
  store i64 %i.bh, ptr %.sroa.3.0..sroa_idx.i.i, align 8, !alias.scope !68729, !noalias !68727
  call void @llvm.lifetime.start.p0(ptr nonnull %i.al), !noalias !68722
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ak), !noalias !68722
  %i.cz = icmp eq i64 %i.bh, 0
  br i1 %i.cz, label %.loopexit.i, label %_RNvXs0_NtNtNtCscI6d9CVNmLh_4core4iter8adapters3mapINtB5_3MapINtNtNtBb_5slice4iter6ChunkshENCINvNvMsc_NtCsjjpCCFGI3ul_14lance_encoding10statisticsNtNtB1D_4data19FixedWidthDataBlock14max_bit_widths23calculate_max_bit_widthhE0ENtNtNtB9_6traits8iterator8Iterator9size_hintB1D_.exit.i.i

_RNvXs0_NtNtNtCscI6d9CVNmLh_4core4iter8adapters3mapINtB5_3MapINtNtNtBb_5slice4iter6ChunkshENCINvNvMsc_NtCsjjpCCFGI3ul_14lance_encoding10statisticsNtNtB1D_4data19FixedWidthDataBlock14max_bit_widths23calculate_max_bit_widthhE0ENtNtNtB9_6traits8iterator8Iterator9size_hintB1D_.exit.i.i: ; preds = %_RINvMNtCsjjpCCFGI3ul_14lance_encoding6bufferNtB3_11LanceBuffer21borrow_to_typed_slicehEB5_.exit.i
  %i.da = lshr i64 %i.bh, 10
  %i.db = and i64 %i.bh, 1023
  %.not.i.i.i.i = icmp ne i64 %i.db, 0
  %i.dc = zext i1 %.not.i.i.i.i to i64
  %.sroa.0.0.i.i.i.i = add nuw nsw i64 %i.da, %i.dc ; 2 uses
  %i.dd = shl nuw nsw i64 %.sroa.0.0.i.i.i.i, 3   ; 2 uses
  call void @_RNvCs9hJ03s5DiqP_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #63, !noalias !68730
  %i.de = call noundef align 8 ptr @_RNvCs9hJ03s5DiqP_7___rustc12___rust_alloc(i64 noundef %i.dd, i64 noundef range(i64 1, 17) 8) #63, !noalias !68730 ; 3 uses
  %i.df = icmp eq ptr %i.de, null
  br i1 %i.df, label %bb.q, label %iter.check297

bb.q:                                             ; preds = %_RNvXs0_NtNtNtCscI6d9CVNmLh_4core4iter8adapters3mapINtB5_3MapINtNtNtBb_5slice4iter6ChunkshENCINvNvMsc_NtCsjjpCCFGI3ul_14lance_encoding10statisticsNtNtB1D_4data19FixedWidthDataBlock14max_bit_widths23calculate_max_bit_widthhE0ENtNtNtB9_6traits8iterator8Iterator9size_hintB1D_.exit.i.i
  invoke void @_RNvNtCs40k4W9msRzi_5alloc7raw_vec12handle_error(i64 noundef 8, i64 %i.dd) #66
          to label %.noexc44.i unwind label %bb.aa, !noalias !68722

.noexc44.i:                                       ; preds = %bb.q
  unreachable

iter.check297:                                    ; preds = %_RNvXs0_NtNtNtCscI6d9CVNmLh_4core4iter8adapters3mapINtB5_3MapINtNtNtBb_5slice4iter6ChunkshENCINvNvMsc_NtCsjjpCCFGI3ul_14lance_encoding10statisticsNtNtB1D_4data19FixedWidthDataBlock14max_bit_widths23calculate_max_bit_widthhE0ENtNtNtB9_6traits8iterator8Iterator9size_hintB1D_.exit.i.i, %_RINvXs2J_NtNtCscI6d9CVNmLh_4core5slice4iterINtB7_4IterhENtNtNtNtBb_4iter6traits8iterator8Iterator4foldhNCNCINvNvMsc_NtCsjjpCCFGI3ul_14lance_encoding10statisticsNtNtB1S_4data19FixedWidthDataBlock14max_bit_widths23calculate_max_bit_widthhE00EB1S_.exit.loopexit.i.i.i.i.i.i.i.i.i
  %i.dg = phi i64 [ %i.ef, %_RINvXs2J_NtNtCscI6d9CVNmLh_4core5slice4iterINtB7_4IterhENtNtNtNtBb_4iter6traits8iterator8Iterator4foldhNCNCINvNvMsc_NtCsjjpCCFGI3ul_14lance_encoding10statisticsNtNtB1S_4data19FixedWidthDataBlock14max_bit_widths23calculate_max_bit_widthhE00EB1S_.exit.loopexit.i.i.i.i.i.i.i.i.i ], [ 0, %_RNvXs0_NtNtNtCscI6d9CVNmLh_4core4iter8adapters3mapINtB5_3MapINtNtNtBb_5slice4iter6ChunkshENCINvNvMsc_NtCsjjpCCFGI3ul_14lance_encoding10statisticsNtNtB1D_4data19FixedWidthDataBlock14max_bit_widths23calculate_max_bit_widthhE0ENtNtNtB9_6traits8iterator8Iterator9size_hintB1D_.exit.i.i ] ; 2 uses
  %i.dh = phi i64 [ %i.ea, %_RINvXs2J_NtNtCscI6d9CVNmLh_4core5slice4iterINtB7_4IterhENtNtNtNtBb_4iter6traits8iterator8Iterator4foldhNCNCINvNvMsc_NtCsjjpCCFGI3ul_14lance_encoding10statisticsNtNtB1S_4data19FixedWidthDataBlock14max_bit_widths23calculate_max_bit_widthhE00EB1S_.exit.loopexit.i.i.i.i.i.i.i.i.i ], [ %i.bh, %_RNvXs0_NtNtNtCscI6d9CVNmLh_4core4iter8adapters3mapINtB5_3MapINtNtNtBb_5slice4iter6ChunkshENCINvNvMsc_NtCsjjpCCFGI3ul_14lance_encoding10statisticsNtNtB1D_4data19FixedWidthDataBlock14max_bit_widths23calculate_max_bit_widthhE0ENtNtNtB9_6traits8iterator8Iterator9size_hintB1D_.exit.i.i ] ; 4 uses
  %i.di = phi ptr [ %i.dz, %_RINvXs2J_NtNtCscI6d9CVNmLh_4core5slice4iterINtB7_4IterhENtNtNtNtBb_4iter6traits8iterator8Iterator4foldhNCNCINvNvMsc_NtCsjjpCCFGI3ul_14lance_encoding10statisticsNtNtB1S_4data19FixedWidthDataBlock14max_bit_widths23calculate_max_bit_widthhE00EB1S_.exit.loopexit.i.i.i.i.i.i.i.i.i ], [ %i.cv, %_RNvXs0_NtNtNtCscI6d9CVNmLh_4core4iter8adapters3mapINtB5_3MapINtNtNtBb_5slice4iter6ChunkshENCINvNvMsc_NtCsjjpCCFGI3ul_14lance_encoding10statisticsNtNtB1D_4data19FixedWidthDataBlock14max_bit_widths23calculate_max_bit_widthhE0ENtNtNtB9_6traits8iterator8Iterator9size_hintB1D_.exit.i.i ] ; 4 uses
  %.sroa.0.0.i.i.i.i.i.i.i.i.i = call noundef i64 @llvm.umin.i64(i64 %i.dh, i64 1024) ; 8 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !68731)
  %min.iters.check280 = icmp ult i64 %i.dh, 4
  br i1 %min.iters.check280, label %.preheader.i.i.i.i.i.i.i.i.i.preheader, label %vector.main.loop.iter.check281

vector.main.loop.iter.check281:                   ; preds = %iter.check297
  %min.iters.check282 = icmp ult i64 %i.dh, 32
  br i1 %min.iters.check282, label %vec.epilog.ph301, label %vector.ph283

vector.ph283:                                     ; preds = %vector.main.loop.iter.check281
  %i.dj = and i64 %.sroa.0.0.i.i.i.i.i.i.i.i.i, 28
  %n.vec284 = and i64 %.sroa.0.0.i.i.i.i.i.i.i.i.i, 2016 ; 4 uses
  br label %vector.body285

vector.body285:                                   ; preds = %vector.ph283, %vector.body285
  %index286 = phi i64 [ 0, %vector.ph283 ], [ %index.next291, %vector.body285 ] ; 2 uses
  %vec.phi287 = phi <16 x i8> [ zeroinitializer, %vector.ph283 ], [ %i.dm, %vector.body285 ]
  %vec.phi288 = phi <16 x i8> [ zeroinitializer, %vector.ph283 ], [ %i.dn, %vector.body285 ]
  %i.dk = getelementptr inbounds nuw i8, ptr %i.di, i64 %index286 ; 2 uses
  %i.dl = getelementptr inbounds nuw i8, ptr %i.dk, i64 16
  %wide.load289 = load <16 x i8>, ptr %i.dk, align 1, !alias.scope !68732, !noalias !68733
  %wide.load290 = load <16 x i8>, ptr %i.dl, align 1, !alias.scope !68732, !noalias !68733
  %i.dm = or <16 x i8> %wide.load289, %vec.phi287 ; 2 uses
  %i.dn = or <16 x i8> %wide.load290, %vec.phi288 ; 2 uses
  %index.next291 = add nuw i64 %index286, 32      ; 2 uses
  %i.do = icmp eq i64 %index.next291, %n.vec284
  br i1 %i.do, label %middle.block292, label %vector.body285, !llvm.loop !68412

middle.block292:                                  ; preds = %vector.body285
  %bin.rdx293 = or <16 x i8> %i.dn, %i.dm
  %i.dp = call i8 @llvm.vector.reduce.or.v16i8(<16 x i8> %bin.rdx293) ; 3 uses
  %cmp.n294 = icmp eq i64 %.sroa.0.0.i.i.i.i.i.i.i.i.i, %n.vec284
  br i1 %cmp.n294, label %_RINvXs2J_NtNtCscI6d9CVNmLh_4core5slice4iterINtB7_4IterhENtNtNtNtBb_4iter6traits8iterator8Iterator4foldhNCNCINvNvMsc_NtCsjjpCCFGI3ul_14lance_encoding10statisticsNtNtB1S_4data19FixedWidthDataBlock14max_bit_widths23calculate_max_bit_widthhE00EB1S_.exit.loopexit.i.i.i.i.i.i.i.i.i, label %vec.epilog.iter.check299

vec.epilog.iter.check299:                         ; preds = %middle.block292
  %min.epilog.iters.check300 = icmp eq i64 %i.dj, 0
  br i1 %min.epilog.iters.check300, label %.preheader.i.i.i.i.i.i.i.i.i.preheader, label %vec.epilog.ph301, !prof !213

vec.epilog.ph301:                                 ; preds = %vector.main.loop.iter.check281, %vec.epilog.iter.check299
  %vec.epilog.resume.val295 = phi i64 [ %n.vec284, %vec.epilog.iter.check299 ], [ 0, %vector.main.loop.iter.check281 ]
  %bc.merge.rdx296 = phi i8 [ %i.dp, %vec.epilog.iter.check299 ], [ 0, %vector.main.loop.iter.check281 ]
  %n.vec302 = and i64 %.sroa.0.0.i.i.i.i.i.i.i.i.i, 2044 ; 3 uses
  %i.dq = insertelement <4 x i8> <i8 poison, i8 0, i8 0, i8 0>, i8 %bc.merge.rdx296, i64 0
  br label %vec.epilog.vector.body303

vec.epilog.vector.body303:                        ; preds = %vec.epilog.vector.body303, %vec.epilog.ph301
  %index304 = phi i64 [ %vec.epilog.resume.val295, %vec.epilog.ph301 ], [ %index.next307, %vec.epilog.vector.body303 ] ; 2 uses
  %vec.phi305 = phi <4 x i8> [ %i.dq, %vec.epilog.ph301 ], [ %i.ds, %vec.epilog.vector.body303 ]
  %i.dr = getelementptr inbounds nuw i8, ptr %i.di, i64 %index304
  %wide.load306 = load <4 x i8>, ptr %i.dr, align 1, !alias.scope !68732, !noalias !68733
  %i.ds = or <4 x i8> %wide.load306, %vec.phi305  ; 2 uses
  %index.next307 = add nuw i64 %index304, 4       ; 2 uses
  %i.dt = icmp eq i64 %index.next307, %n.vec302
  br i1 %i.dt, label %vec.epilog.middle.block308, label %vec.epilog.vector.body303, !llvm.loop !68413

vec.epilog.middle.block308:                       ; preds = %vec.epilog.vector.body303
  %i.du = call i8 @llvm.vector.reduce.or.v4i8(<4 x i8> %i.ds) ; 2 uses
  %cmp.n309 = icmp eq i64 %.sroa.0.0.i.i.i.i.i.i.i.i.i, %n.vec302
  br i1 %cmp.n309, label %_RINvXs2J_NtNtCscI6d9CVNmLh_4core5slice4iterINtB7_4IterhENtNtNtNtBb_4iter6traits8iterator8Iterator4foldhNCNCINvNvMsc_NtCsjjpCCFGI3ul_14lance_encoding10statisticsNtNtB1S_4data19FixedWidthDataBlock14max_bit_widths23calculate_max_bit_widthhE00EB1S_.exit.loopexit.i.i.i.i.i.i.i.i.i, label %.preheader.i.i.i.i.i.i.i.i.i.preheader

.preheader.i.i.i.i.i.i.i.i.i.preheader:           ; preds = %iter.check297, %vec.epilog.iter.check299, %vec.epilog.middle.block308
  %.sroa.04.0.i.i.i.i.i.i.i.i.i.i.ph = phi i64 [ 0, %iter.check297 ], [ %n.vec284, %vec.epilog.iter.check299 ], [ %n.vec302, %vec.epilog.middle.block308 ]
  %.sroa.02.0.i.i.i.i.i.i.i.i.i.i.ph = phi i8 [ 0, %iter.check297 ], [ %i.dp, %vec.epilog.iter.check299 ], [ %i.du, %vec.epilog.middle.block308 ]
  br label %.preheader.i.i.i.i.i.i.i.i.i

.preheader.i.i.i.i.i.i.i.i.i:                     ; preds = %.preheader.i.i.i.i.i.i.i.i.i.preheader, %.preheader.i.i.i.i.i.i.i.i.i
  %.sroa.04.0.i.i.i.i.i.i.i.i.i.i = phi i64 [ %i.dx, %.preheader.i.i.i.i.i.i.i.i.i ], [ %.sroa.04.0.i.i.i.i.i.i.i.i.i.i.ph, %.preheader.i.i.i.i.i.i.i.i.i.preheader ] ; 2 uses
  %.sroa.02.0.i.i.i.i.i.i.i.i.i.i = phi i8 [ %i.dw, %.preheader.i.i.i.i.i.i.i.i.i ], [ %.sroa.02.0.i.i.i.i.i.i.i.i.i.i.ph, %.preheader.i.i.i.i.i.i.i.i.i.preheader ]
  %i.dv = getelementptr inbounds nuw i8, ptr %i.di, i64 %.sroa.04.0.i.i.i.i.i.i.i.i.i.i
  %.val.i.i.i.i.i.i.i.i.i.i = load i8, ptr %i.dv, align 1, !alias.scope !68732, !noalias !68733, !noundef !75
  %i.dw = or i8 %.val.i.i.i.i.i.i.i.i.i.i, %.sroa.02.0.i.i.i.i.i.i.i.i.i.i ; 2 uses
  %i.dx = add nuw nsw i64 %.sroa.04.0.i.i.i.i.i.i.i.i.i.i, 1 ; 2 uses
  %i.dy = icmp eq i64 %i.dx, %.sroa.0.0.i.i.i.i.i.i.i.i.i
  br i1 %i.dy, label %_RINvXs2J_NtNtCscI6d9CVNmLh_4core5slice4iterINtB7_4IterhENtNtNtNtBb_4iter6traits8iterator8Iterator4foldhNCNCINvNvMsc_NtCsjjpCCFGI3ul_14lance_encoding10statisticsNtNtB1S_4data19FixedWidthDataBlock14max_bit_widths23calculate_max_bit_widthhE00EB1S_.exit.loopexit.i.i.i.i.i.i.i.i.i, label %.preheader.i.i.i.i.i.i.i.i.i, !llvm.loop !68414

_RINvXs2J_NtNtCscI6d9CVNmLh_4core5slice4iterINtB7_4IterhENtNtNtNtBb_4iter6traits8iterator8Iterator4foldhNCNCINvNvMsc_NtCsjjpCCFGI3ul_14lance_encoding10statisticsNtNtB1S_4data19FixedWidthDataBlock14max_bit_widths23calculate_max_bit_widthhE00EB1S_.exit.loopexit.i.i.i.i.i.i.i.i.i: ; preds = %.preheader.i.i.i.i.i.i.i.i.i, %vec.epilog.middle.block308, %middle.block292
  %.lcssa = phi i8 [ %i.du, %vec.epilog.middle.block308 ], [ %i.dp, %middle.block292 ], [ %i.dw, %.preheader.i.i.i.i.i.i.i.i.i ]
  %i.dz = getelementptr inbounds nuw i8, ptr %i.di, i64 %.sroa.0.0.i.i.i.i.i.i.i.i.i
  %i.ea = sub nuw nsw i64 %i.dh, %.sroa.0.0.i.i.i.i.i.i.i.i.i ; 2 uses
  %i.eb = call range(i8 0, 9) i8 @llvm.ctlz.i8(i8 %.lcssa, i1 false)
  %i.ec = zext nneg i8 %i.eb to i64
  %i.ed = sub i64 %i.cg, %i.ec
  %i.ee = getelementptr inbounds nuw [8 x i8], ptr %i.de, i64 %i.dg
  store i64 %i.ed, ptr %i.ee, align 8, !noalias !68734
  %i.ef = add i64 %i.dg, 1                        ; 2 uses
  %i.eg = icmp eq i64 %i.ea, 0
  br i1 %i.eg, label %.loopexit.i, label %iter.check297

bb.r:                                             ; preds = %.split.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aj), !noalias !68722
  invoke fastcc void @_RINvMNtCsjjpCCFGI3ul_14lance_encoding6bufferNtB3_11LanceBuffer21borrow_to_typed_slicetEB5_(ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.aj, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %0)
          to label %.noexc29 unwind label %bb.bh

.noexc29:                                         ; preds = %bb.r
  %i.eh = getelementptr inbounds nuw i8, ptr %i.aj, i64 8
  %i.ei = load ptr, ptr %i.eh, align 8, !noalias !68722, !noundef !75
  %i.ej = getelementptr inbounds nuw i8, ptr %i.aj, i64 16
  %i.ek = load i64, ptr %i.ej, align 8, !noalias !68722, !noundef !75 ; 3 uses
  %i.el = lshr i64 %i.ek, 1                       ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ai), !noalias !68722
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ah), !noalias !68722
  %i.em = icmp eq i64 %i.el, 0
  br i1 %i.em, label %.loopexit191.i, label %_RNvXs0_NtNtNtCscI6d9CVNmLh_4core4iter8adapters3mapINtB5_3MapINtNtNtBb_5slice4iter6ChunkstENCINvNvMsc_NtCsjjpCCFGI3ul_14lance_encoding10statisticsNtNtB1D_4data19FixedWidthDataBlock14max_bit_widths23calculate_max_bit_widthtE0ENtNtNtB9_6traits8iterator8Iterator9size_hintB1D_.exit.i.i

_RNvXs0_NtNtNtCscI6d9CVNmLh_4core4iter8adapters3mapINtB5_3MapINtNtNtBb_5slice4iter6ChunkstENCINvNvMsc_NtCsjjpCCFGI3ul_14lance_encoding10statisticsNtNtB1D_4data19FixedWidthDataBlock14max_bit_widths23calculate_max_bit_widthtE0ENtNtNtB9_6traits8iterator8Iterator9size_hintB1D_.exit.i.i: ; preds = %.noexc29
  %i.en = lshr i64 %i.ek, 11
  %i.eo = and i64 %i.ek, 2046
  %.not.i.i.i49.i = icmp ne i64 %i.eo, 0
  %i.ep = zext i1 %.not.i.i.i49.i to i64
  %.sroa.0.0.i.i.i50.i = add nuw nsw i64 %i.en, %i.ep ; 3 uses
  %i.eq = shl nuw nsw i64 %.sroa.0.0.i.i.i50.i, 3 ; 2 uses
  %i.er = icmp eq i64 %.sroa.0.0.i.i.i50.i, 0
  br i1 %i.er, label %.preheader.i.i.preheader.i.preheader.i.i.i.i.i62.i, label %bb.s

bb.s:                                             ; preds = %_RNvXs0_NtNtNtCscI6d9CVNmLh_4core4iter8adapters3mapINtB5_3MapINtNtNtBb_5slice4iter6ChunkstENCINvNvMsc_NtCsjjpCCFGI3ul_14lance_encoding10statisticsNtNtB1D_4data19FixedWidthDataBlock14max_bit_widths23calculate_max_bit_widthtE0ENtNtNtB9_6traits8iterator8Iterator9size_hintB1D_.exit.i.i
  call void @_RNvCs9hJ03s5DiqP_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #63, !noalias !68735
  %i.es = call noundef align 8 ptr @_RNvCs9hJ03s5DiqP_7___rustc12___rust_alloc(i64 noundef %i.eq, i64 noundef range(i64 1, 17) 8) #63, !noalias !68735 ; 2 uses
  %i.et = icmp eq ptr %i.es, null
  br i1 %i.et, label %bb.t, label %.preheader.i.i.preheader.i.preheader.i.i.i.i.i62.i

bb.t:                                             ; preds = %bb.s
  invoke void @_RNvNtCs40k4W9msRzi_5alloc7raw_vec12handle_error(i64 noundef 8, i64 %i.eq) #66
          to label %.noexc79.i unwind label %bb.aj, !noalias !68722

.noexc79.i:                                       ; preds = %bb.t
  unreachable

.preheader.i.i.preheader.i.preheader.i.i.i.i.i62.i: ; preds = %_RNvXs0_NtNtNtCscI6d9CVNmLh_4core4iter8adapters3mapINtB5_3MapINtNtNtBb_5slice4iter6ChunkstENCINvNvMsc_NtCsjjpCCFGI3ul_14lance_encoding10statisticsNtNtB1D_4data19FixedWidthDataBlock14max_bit_widths23calculate_max_bit_widthtE0ENtNtNtB9_6traits8iterator8Iterator9size_hintB1D_.exit.i.i, %bb.s
  %.sroa.10.0.i.i55.ph.i = phi ptr [ %i.es, %bb.s ], [ inttoptr (i64 8 to ptr), %_RNvXs0_NtNtNtCscI6d9CVNmLh_4core4iter8adapters3mapINtB5_3MapINtNtNtBb_5slice4iter6ChunkstENCINvNvMsc_NtCsjjpCCFGI3ul_14lance_encoding10statisticsNtNtB1D_4data19FixedWidthDataBlock14max_bit_widths23calculate_max_bit_widthtE0ENtNtNtB9_6traits8iterator8Iterator9size_hintB1D_.exit.i.i ] ; 2 uses
  br label %iter.check

iter.check:                                       ; preds = %_RINvXs2J_NtNtCscI6d9CVNmLh_4core5slice4iterINtB7_4ItertENtNtNtNtBb_4iter6traits8iterator8Iterator4foldtNCNCINvNvMsc_NtCsjjpCCFGI3ul_14lance_encoding10statisticsNtNtB1S_4data19FixedWidthDataBlock14max_bit_widths23calculate_max_bit_widthtE00EB1S_.exit.loopexit.i.i.i.i.i.i.i.i.i, %.preheader.i.i.preheader.i.preheader.i.i.i.i.i62.i
  %i.eu = phi i64 [ %i.ft, %_RINvXs2J_NtNtCscI6d9CVNmLh_4core5slice4iterINtB7_4ItertENtNtNtNtBb_4iter6traits8iterator8Iterator4foldtNCNCINvNvMsc_NtCsjjpCCFGI3ul_14lance_encoding10statisticsNtNtB1S_4data19FixedWidthDataBlock14max_bit_widths23calculate_max_bit_widthtE00EB1S_.exit.loopexit.i.i.i.i.i.i.i.i.i ], [ 0, %.preheader.i.i.preheader.i.preheader.i.i.i.i.i62.i ] ; 2 uses
  %i.ev = phi i64 [ %i.fo, %_RINvXs2J_NtNtCscI6d9CVNmLh_4core5slice4iterINtB7_4ItertENtNtNtNtBb_4iter6traits8iterator8Iterator4foldtNCNCINvNvMsc_NtCsjjpCCFGI3ul_14lance_encoding10statisticsNtNtB1S_4data19FixedWidthDataBlock14max_bit_widths23calculate_max_bit_widthtE00EB1S_.exit.loopexit.i.i.i.i.i.i.i.i.i ], [ %i.el, %.preheader.i.i.preheader.i.preheader.i.i.i.i.i62.i ] ; 4 uses
  %i.ew = phi ptr [ %i.fn, %_RINvXs2J_NtNtCscI6d9CVNmLh_4core5slice4iterINtB7_4ItertENtNtNtNtBb_4iter6traits8iterator8Iterator4foldtNCNCINvNvMsc_NtCsjjpCCFGI3ul_14lance_encoding10statisticsNtNtB1S_4data19FixedWidthDataBlock14max_bit_widths23calculate_max_bit_widthtE00EB1S_.exit.loopexit.i.i.i.i.i.i.i.i.i ], [ %i.ei, %.preheader.i.i.preheader.i.preheader.i.i.i.i.i62.i ] ; 4 uses
  %.sroa.0.0.i.i.i.i.i.i.i.i64.i = call noundef i64 @llvm.umin.i64(i64 %i.ev, i64 1024) ; 8 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !68736)
  %min.iters.check256 = icmp ult i64 %i.ev, 4
  br i1 %min.iters.check256, label %.preheader.i.i.i.i.i.i.i.i65.i.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check257 = icmp ult i64 %i.ev, 16
  br i1 %min.iters.check257, label %vec.epilog.ph, label %vector.ph258

vector.ph258:                                     ; preds = %vector.main.loop.iter.check
  %i.ex = and i64 %.sroa.0.0.i.i.i.i.i.i.i.i64.i, 12
  %n.vec259 = and i64 %.sroa.0.0.i.i.i.i.i.i.i.i64.i, 2032 ; 4 uses
  br label %vector.body260

vector.body260:                                   ; preds = %vector.ph258, %vector.body260
  %index261 = phi i64 [ 0, %vector.ph258 ], [ %index.next266, %vector.body260 ] ; 2 uses
  %vec.phi262 = phi <8 x i16> [ zeroinitializer, %vector.ph258 ], [ %i.fa, %vector.body260 ]
  %vec.phi263 = phi <8 x i16> [ zeroinitializer, %vector.ph258 ], [ %i.fb, %vector.body260 ]
  %i.ey = getelementptr inbounds nuw [2 x i8], ptr %i.ew, i64 %index261 ; 2 uses
  %i.ez = getelementptr inbounds nuw i8, ptr %i.ey, i64 16
  %wide.load264 = load <8 x i16>, ptr %i.ey, align 2, !alias.scope !68737, !noalias !68738
  %wide.load265 = load <8 x i16>, ptr %i.ez, align 2, !alias.scope !68737, !noalias !68738
  %i.fa = or <8 x i16> %wide.load264, %vec.phi262 ; 2 uses
  %i.fb = or <8 x i16> %wide.load265, %vec.phi263 ; 2 uses
  %index.next266 = add nuw i64 %index261, 16      ; 2 uses
  %i.fc = icmp eq i64 %index.next266, %n.vec259
  br i1 %i.fc, label %middle.block267, label %vector.body260, !llvm.loop !68444

middle.block267:                                  ; preds = %vector.body260
  %bin.rdx268 = or <8 x i16> %i.fb, %i.fa
  %i.fd = call i16 @llvm.vector.reduce.or.v8i16(<8 x i16> %bin.rdx268) ; 3 uses
  %cmp.n269 = icmp eq i64 %.sroa.0.0.i.i.i.i.i.i.i.i64.i, %n.vec259
  br i1 %cmp.n269, label %_RINvXs2J_NtNtCscI6d9CVNmLh_4core5slice4iterINtB7_4ItertENtNtNtNtBb_4iter6traits8iterator8Iterator4foldtNCNCINvNvMsc_NtCsjjpCCFGI3ul_14lance_encoding10statisticsNtNtB1S_4data19FixedWidthDataBlock14max_bit_widths23calculate_max_bit_widthtE00EB1S_.exit.loopexit.i.i.i.i.i.i.i.i.i, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block267
  %min.epilog.iters.check = icmp eq i64 %i.ex, 0
  br i1 %min.epilog.iters.check, label %.preheader.i.i.i.i.i.i.i.i65.i.preheader, label %vec.epilog.ph, !prof !101

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec259, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %bc.merge.rdx270 = phi i16 [ %i.fd, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec271 = and i64 %.sroa.0.0.i.i.i.i.i.i.i.i64.i, 2044 ; 3 uses
  %i.fe = insertelement <4 x i16> <i16 poison, i16 0, i16 0, i16 0>, i16 %bc.merge.rdx270, i64 0
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index272 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next275, %vec.epilog.vector.body ] ; 2 uses
  %vec.phi273 = phi <4 x i16> [ %i.fe, %vec.epilog.ph ], [ %i.fg, %vec.epilog.vector.body ]
  %i.ff = getelementptr inbounds nuw [2 x i8], ptr %i.ew, i64 %index272
  %wide.load274 = load <4 x i16>, ptr %i.ff, align 2, !alias.scope !68737, !noalias !68738
  %i.fg = or <4 x i16> %wide.load274, %vec.phi273 ; 2 uses
  %index.next275 = add nuw i64 %index272, 4       ; 2 uses
  %i.fh = icmp eq i64 %index.next275, %n.vec271
  br i1 %i.fh, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !68445

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %i.fi = call i16 @llvm.vector.reduce.or.v4i16(<4 x i16> %i.fg) ; 2 uses
  %cmp.n276 = icmp eq i64 %.sroa.0.0.i.i.i.i.i.i.i.i64.i, %n.vec271
  br i1 %cmp.n276, label %_RINvXs2J_NtNtCscI6d9CVNmLh_4core5slice4iterINtB7_4ItertENtNtNtNtBb_4iter6traits8iterator8Iterator4foldtNCNCINvNvMsc_NtCsjjpCCFGI3ul_14lance_encoding10statisticsNtNtB1S_4data19FixedWidthDataBlock14max_bit_widths23calculate_max_bit_widthtE00EB1S_.exit.loopexit.i.i.i.i.i.i.i.i.i, label %.preheader.i.i.i.i.i.i.i.i65.i.preheader

.preheader.i.i.i.i.i.i.i.i65.i.preheader:         ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.sroa.04.0.i.i.i.i.i.i.i.i.i66.i.ph = phi i64 [ 0, %iter.check ], [ %n.vec259, %vec.epilog.iter.check ], [ %n.vec271, %vec.epilog.middle.block ]
  %.sroa.02.0.i.i.i.i.i.i.i.i.i67.i.ph = phi i16 [ 0, %iter.check ], [ %i.fd, %vec.epilog.iter.check ], [ %i.fi, %vec.epilog.middle.block ]
  br label %.preheader.i.i.i.i.i.i.i.i65.i

.preheader.i.i.i.i.i.i.i.i65.i:                   ; preds = %.preheader.i.i.i.i.i.i.i.i65.i.preheader, %.preheader.i.i.i.i.i.i.i.i65.i
  %.sroa.04.0.i.i.i.i.i.i.i.i.i66.i = phi i64 [ %i.fl, %.preheader.i.i.i.i.i.i.i.i65.i ], [ %.sroa.04.0.i.i.i.i.i.i.i.i.i66.i.ph, %.preheader.i.i.i.i.i.i.i.i65.i.preheader ] ; 2 uses
  %.sroa.02.0.i.i.i.i.i.i.i.i.i67.i = phi i16 [ %i.fk, %.preheader.i.i.i.i.i.i.i.i65.i ], [ %.sroa.02.0.i.i.i.i.i.i.i.i.i67.i.ph, %.preheader.i.i.i.i.i.i.i.i65.i.preheader ]
  %i.fj = getelementptr inbounds nuw [2 x i8], ptr %i.ew, i64 %.sroa.04.0.i.i.i.i.i.i.i.i.i66.i
  %.val.i.i.i.i.i.i.i.i.i68.i = load i16, ptr %i.fj, align 2, !alias.scope !68737, !noalias !68738, !noundef !75
  %i.fk = or i16 %.val.i.i.i.i.i.i.i.i.i68.i, %.sroa.02.0.i.i.i.i.i.i.i.i.i67.i ; 2 uses
  %i.fl = add nuw nsw i64 %.sroa.04.0.i.i.i.i.i.i.i.i.i66.i, 1 ; 2 uses
  %i.fm = icmp eq i64 %i.fl, %.sroa.0.0.i.i.i.i.i.i.i.i64.i
  br i1 %i.fm, label %_RINvXs2J_NtNtCscI6d9CVNmLh_4core5slice4iterINtB7_4ItertENtNtNtNtBb_4iter6traits8iterator8Iterator4foldtNCNCINvNvMsc_NtCsjjpCCFGI3ul_14lance_encoding10statisticsNtNtB1S_4data19FixedWidthDataBlock14max_bit_widths23calculate_max_bit_widthtE00EB1S_.exit.loopexit.i.i.i.i.i.i.i.i.i, label %.preheader.i.i.i.i.i.i.i.i65.i, !llvm.loop !68446

_RINvXs2J_NtNtCscI6d9CVNmLh_4core5slice4iterINtB7_4ItertENtNtNtNtBb_4iter6traits8iterator8Iterator4foldtNCNCINvNvMsc_NtCsjjpCCFGI3ul_14lance_encoding10statisticsNtNtB1S_4data19FixedWidthDataBlock14max_bit_widths23calculate_max_bit_widthtE00EB1S_.exit.loopexit.i.i.i.i.i.i.i.i.i: ; preds = %.preheader.i.i.i.i.i.i.i.i65.i, %vec.epilog.middle.block, %middle.block267
  %.lcssa231 = phi i16 [ %i.fi, %vec.epilog.middle.block ], [ %i.fd, %middle.block267 ], [ %i.fk, %.preheader.i.i.i.i.i.i.i.i65.i ]
  %i.fn = getelementptr inbounds nuw [2 x i8], ptr %i.ew, i64 %.sroa.0.0.i.i.i.i.i.i.i.i64.i
  %i.fo = sub nuw nsw i64 %i.ev, %.sroa.0.0.i.i.i.i.i.i.i.i64.i ; 2 uses
  %i.fp = call range(i16 0, 17) i16 @llvm.ctlz.i16(i16 %.lcssa231, i1 false)
  %i.fq = zext nneg i16 %i.fp to i64
  %i.fr = sub i64 %i.cg, %i.fq
  %i.fs = getelementptr inbounds nuw [8 x i8], ptr %.sroa.10.0.i.i55.ph.i, i64 %i.eu
  store i64 %i.fr, ptr %i.fs, align 8, !noalias !68739
  %i.ft = add i64 %i.eu, 1                        ; 2 uses
  %i.fu = icmp eq i64 %i.fo, 0
  br i1 %i.fu, label %.loopexit191.i, label %iter.check

bb.u:                                             ; preds = %.split.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ag), !noalias !68722
  invoke fastcc void @_RINvMNtCsjjpCCFGI3ul_14lance_encoding6bufferNtB3_11LanceBuffer21borrow_to_typed_slicemEB5_(ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.ag, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %0)
          to label %.noexc30 unwind label %bb.bh

.noexc30:                                         ; preds = %bb.u
  %i.fv = getelementptr inbounds nuw i8, ptr %i.ag, i64 8
  %i.fw = load ptr, ptr %i.fv, align 8, !noalias !68722, !noundef !75
  %i.fx = getelementptr inbounds nuw i8, ptr %i.ag, i64 16
  %i.fy = load i64, ptr %i.fx, align 8, !noalias !68722, !noundef !75 ; 3 uses
  %i.fz = lshr i64 %i.fy, 2                       ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.af), !noalias !68722
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ae), !noalias !68722
  %i.ga = icmp eq i64 %i.fz, 0
  br i1 %i.ga, label %.loopexit192.i, label %_RNvXs0_NtNtNtCscI6d9CVNmLh_4core4iter8adapters3mapINtB5_3MapINtNtNtBb_5slice4iter6ChunksmENCINvNvMsc_NtCsjjpCCFGI3ul_14lance_encoding10statisticsNtNtB1D_4data19FixedWidthDataBlock14max_bit_widths23calculate_max_bit_widthmE0ENtNtNtB9_6traits8iterator8Iterator9size_hintB1D_.exit.i.i

_RNvXs0_NtNtNtCscI6d9CVNmLh_4core4iter8adapters3mapINtB5_3MapINtNtNtBb_5slice4iter6ChunksmENCINvNvMsc_NtCsjjpCCFGI3ul_14lance_encoding10statisticsNtNtB1D_4data19FixedWidthDataBlock14max_bit_widths23calculate_max_bit_widthmE0ENtNtNtB9_6traits8iterator8Iterator9size_hintB1D_.exit.i.i: ; preds = %.noexc30
  %i.gb = lshr i64 %i.fy, 12
  %i.gc = and i64 %i.fy, 4092
  %.not.i.i.i84.i = icmp ne i64 %i.gc, 0
  %i.gd = zext i1 %.not.i.i.i84.i to i64
  %.sroa.0.0.i.i.i85.i = add nuw nsw i64 %i.gb, %i.gd ; 3 uses
  %i.ge = shl nuw nsw i64 %.sroa.0.0.i.i.i85.i, 3 ; 2 uses
  %i.gf = icmp eq i64 %.sroa.0.0.i.i.i85.i, 0
  br i1 %i.gf, label %.preheader.i.i.preheader.i.preheader.i.i.i.i.i97.i, label %bb.v

bb.v:                                             ; preds = %_RNvXs0_NtNtNtCscI6d9CVNmLh_4core4iter8adapters3mapINtB5_3MapINtNtNtBb_5slice4iter6ChunksmENCINvNvMsc_NtCsjjpCCFGI3ul_14lance_encoding10statisticsNtNtB1D_4data19FixedWidthDataBlock14max_bit_widths23calculate_max_bit_widthmE0ENtNtNtB9_6traits8iterator8Iterator9size_hintB1D_.exit.i.i
  call void @_RNvCs9hJ03s5DiqP_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #63, !noalias !68740
  %i.gg = call noundef align 8 ptr @_RNvCs9hJ03s5DiqP_7___rustc12___rust_alloc(i64 noundef %i.ge, i64 noundef range(i64 1, 17) 8) #63, !noalias !68740 ; 2 uses
  %i.gh = icmp eq ptr %i.gg, null
  br i1 %i.gh, label %bb.w, label %.preheader.i.i.preheader.i.preheader.i.i.i.i.i97.i

bb.w:                                             ; preds = %bb.v
  invoke void @_RNvNtCs40k4W9msRzi_5alloc7raw_vec12handle_error(i64 noundef 8, i64 %i.ge) #66
          to label %.noexc114.i unwind label %bb.ar, !noalias !68722

.noexc114.i:                                      ; preds = %bb.w
  unreachable

.preheader.i.i.preheader.i.preheader.i.i.i.i.i97.i: ; preds = %_RNvXs0_NtNtNtCscI6d9CVNmLh_4core4iter8adapters3mapINtB5_3MapINtNtNtBb_5slice4iter6ChunksmENCINvNvMsc_NtCsjjpCCFGI3ul_14lance_encoding10statisticsNtNtB1D_4data19FixedWidthDataBlock14max_bit_widths23calculate_max_bit_widthmE0ENtNtNtB9_6traits8iterator8Iterator9size_hintB1D_.exit.i.i, %bb.v
  %.sroa.10.0.i.i90.ph.i = phi ptr [ %i.gg, %bb.v ], [ inttoptr (i64 8 to ptr), %_RNvXs0_NtNtNtCscI6d9CVNmLh_4core4iter8adapters3mapINtB5_3MapINtNtNtBb_5slice4iter6ChunksmENCINvNvMsc_NtCsjjpCCFGI3ul_14lance_encoding10statisticsNtNtB1D_4data19FixedWidthDataBlock14max_bit_widths23calculate_max_bit_widthmE0ENtNtNtB9_6traits8iterator8Iterator9size_hintB1D_.exit.i.i ] ; 2 uses
  br label %.preheader.i.i.preheader.i.i.i.i.i.i98.i

.preheader.i.i.preheader.i.i.i.i.i.i98.i:         ; preds = %_RINvXs2J_NtNtCscI6d9CVNmLh_4core5slice4iterINtB7_4ItermENtNtNtNtBb_4iter6traits8iterator8Iterator4foldmNCNCINvNvMsc_NtCsjjpCCFGI3ul_14lance_encoding10statisticsNtNtB1S_4data19FixedWidthDataBlock14max_bit_widths23calculate_max_bit_widthmE00EB1S_.exit.loopexit.i.i.i.i.i.i.i.i.i, %.preheader.i.i.preheader.i.preheader.i.i.i.i.i97.i
  %i.gi = phi i64 [ %i.hb, %_RINvXs2J_NtNtCscI6d9CVNmLh_4core5slice4iterINtB7_4ItermENtNtNtNtBb_4iter6traits8iterator8Iterator4foldmNCNCINvNvMsc_NtCsjjpCCFGI3ul_14lance_encoding10statisticsNtNtB1S_4data19FixedWidthDataBlock14max_bit_widths23calculate_max_bit_widthmE00EB1S_.exit.loopexit.i.i.i.i.i.i.i.i.i ], [ 0, %.preheader.i.i.preheader.i.preheader.i.i.i.i.i97.i ] ; 2 uses
  %i.gj = phi i64 [ %i.gw, %_RINvXs2J_NtNtCscI6d9CVNmLh_4core5slice4iterINtB7_4ItermENtNtNtNtBb_4iter6traits8iterator8Iterator4foldmNCNCINvNvMsc_NtCsjjpCCFGI3ul_14lance_encoding10statisticsNtNtB1S_4data19FixedWidthDataBlock14max_bit_widths23calculate_max_bit_widthmE00EB1S_.exit.loopexit.i.i.i.i.i.i.i.i.i ], [ %i.fz, %.preheader.i.i.preheader.i.preheader.i.i.i.i.i97.i ] ; 3 uses
  %i.gk = phi ptr [ %i.gv, %_RINvXs2J_NtNtCscI6d9CVNmLh_4core5slice4iterINtB7_4ItermENtNtNtNtBb_4iter6traits8iterator8Iterator4foldmNCNCINvNvMsc_NtCsjjpCCFGI3ul_14lance_encoding10statisticsNtNtB1S_4data19FixedWidthDataBlock14max_bit_widths23calculate_max_bit_widthmE00EB1S_.exit.loopexit.i.i.i.i.i.i.i.i.i ], [ %i.fw, %.preheader.i.i.preheader.i.preheader.i.i.i.i.i97.i ] ; 3 uses
  %.sroa.0.0.i.i.i.i.i.i.i.i99.i = call noundef i64 @llvm.umin.i64(i64 %i.gj, i64 1024) ; 5 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !68741)
  %min.iters.check240 = icmp ult i64 %i.gj, 8
  br i1 %min.iters.check240, label %.preheader.i.i.i.i.i.i.i.i100.i.preheader, label %vector.ph241

vector.ph241:                                     ; preds = %.preheader.i.i.preheader.i.i.i.i.i.i98.i
  %n.vec242 = and i64 %.sroa.0.0.i.i.i.i.i.i.i.i99.i, 2040 ; 3 uses
  br label %vector.body243

vector.body243:                                   ; preds = %vector.body243, %vector.ph241
  %index244 = phi i64 [ 0, %vector.ph241 ], [ %index.next249, %vector.body243 ] ; 2 uses
  %vec.phi245 = phi <4 x i32> [ zeroinitializer, %vector.ph241 ], [ %i.gn, %vector.body243 ]
  %vec.phi246 = phi <4 x i32> [ zeroinitializer, %vector.ph241 ], [ %i.go, %vector.body243 ]
  %i.gl = getelementptr inbounds nuw [4 x i8], ptr %i.gk, i64 %index244 ; 2 uses
  %i.gm = getelementptr inbounds nuw i8, ptr %i.gl, i64 16
  %wide.load247 = load <4 x i32>, ptr %i.gl, align 4, !alias.scope !68742, !noalias !68743
  %wide.load248 = load <4 x i32>, ptr %i.gm, align 4, !alias.scope !68742, !noalias !68743
  %i.gn = or <4 x i32> %wide.load247, %vec.phi245 ; 2 uses
  %i.go = or <4 x i32> %wide.load248, %vec.phi246 ; 2 uses
  %index.next249 = add nuw i64 %index244, 8       ; 2 uses
  %i.gp = icmp eq i64 %index.next249, %n.vec242
  br i1 %i.gp, label %middle.block250, label %vector.body243, !llvm.loop !68476

middle.block250:                                  ; preds = %vector.body243
  %bin.rdx251 = or <4 x i32> %i.go, %i.gn
  %i.gq = call i32 @llvm.vector.reduce.or.v4i32(<4 x i32> %bin.rdx251) ; 2 uses
  %cmp.n252 = icmp eq i64 %.sroa.0.0.i.i.i.i.i.i.i.i99.i, %n.vec242
  br i1 %cmp.n252, label %_RINvXs2J_NtNtCscI6d9CVNmLh_4core5slice4iterINtB7_4ItermENtNtNtNtBb_4iter6traits8iterator8Iterator4foldmNCNCINvNvMsc_NtCsjjpCCFGI3ul_14lance_encoding10statisticsNtNtB1S_4data19FixedWidthDataBlock14max_bit_widths23calculate_max_bit_widthmE00EB1S_.exit.loopexit.i.i.i.i.i.i.i.i.i, label %.preheader.i.i.i.i.i.i.i.i100.i.preheader

.preheader.i.i.i.i.i.i.i.i100.i.preheader:        ; preds = %.preheader.i.i.preheader.i.i.i.i.i.i98.i, %middle.block250
  %.sroa.04.0.i.i.i.i.i.i.i.i.i101.i.ph = phi i64 [ 0, %.preheader.i.i.preheader.i.i.i.i.i.i98.i ], [ %n.vec242, %middle.block250 ]
  %.sroa.02.0.i.i.i.i.i.i.i.i.i102.i.ph = phi i32 [ 0, %.preheader.i.i.preheader.i.i.i.i.i.i98.i ], [ %i.gq, %middle.block250 ]
  br label %.preheader.i.i.i.i.i.i.i.i100.i

.preheader.i.i.i.i.i.i.i.i100.i:                  ; preds = %.preheader.i.i.i.i.i.i.i.i100.i.preheader, %.preheader.i.i.i.i.i.i.i.i100.i
  %.sroa.04.0.i.i.i.i.i.i.i.i.i101.i = phi i64 [ %i.gt, %.preheader.i.i.i.i.i.i.i.i100.i ], [ %.sroa.04.0.i.i.i.i.i.i.i.i.i101.i.ph, %.preheader.i.i.i.i.i.i.i.i100.i.preheader ] ; 2 uses
  %.sroa.02.0.i.i.i.i.i.i.i.i.i102.i = phi i32 [ %i.gs, %.preheader.i.i.i.i.i.i.i.i100.i ], [ %.sroa.02.0.i.i.i.i.i.i.i.i.i102.i.ph, %.preheader.i.i.i.i.i.i.i.i100.i.preheader ]
  %i.gr = getelementptr inbounds nuw [4 x i8], ptr %i.gk, i64 %.sroa.04.0.i.i.i.i.i.i.i.i.i101.i
  %.val.i.i.i.i.i.i.i.i.i103.i = load i32, ptr %i.gr, align 4, !alias.scope !68742, !noalias !68743, !noundef !75
  %i.gs = or i32 %.val.i.i.i.i.i.i.i.i.i103.i, %.sroa.02.0.i.i.i.i.i.i.i.i.i102.i ; 2 uses
  %i.gt = add nuw nsw i64 %.sroa.04.0.i.i.i.i.i.i.i.i.i101.i, 1 ; 2 uses
  %i.gu = icmp eq i64 %i.gt, %.sroa.0.0.i.i.i.i.i.i.i.i99.i
  br i1 %i.gu, label %_RINvXs2J_NtNtCscI6d9CVNmLh_4core5slice4iterINtB7_4ItermENtNtNtNtBb_4iter6traits8iterator8Iterator4foldmNCNCINvNvMsc_NtCsjjpCCFGI3ul_14lance_encoding10statisticsNtNtB1S_4data19FixedWidthDataBlock14max_bit_widths23calculate_max_bit_widthmE00EB1S_.exit.loopexit.i.i.i.i.i.i.i.i.i, label %.preheader.i.i.i.i.i.i.i.i100.i, !llvm.loop !68477

_RINvXs2J_NtNtCscI6d9CVNmLh_4core5slice4iterINtB7_4ItermENtNtNtNtBb_4iter6traits8iterator8Iterator4foldmNCNCINvNvMsc_NtCsjjpCCFGI3ul_14lance_encoding10statisticsNtNtB1S_4data19FixedWidthDataBlock14max_bit_widths23calculate_max_bit_widthmE00EB1S_.exit.loopexit.i.i.i.i.i.i.i.i.i: ; preds = %.preheader.i.i.i.i.i.i.i.i100.i, %middle.block250
  %.lcssa233 = phi i32 [ %i.gq, %middle.block250 ], [ %i.gs, %.preheader.i.i.i.i.i.i.i.i100.i ]
  %i.gv = getelementptr inbounds nuw [4 x i8], ptr %i.gk, i64 %.sroa.0.0.i.i.i.i.i.i.i.i99.i
  %i.gw = sub nuw nsw i64 %i.gj, %.sroa.0.0.i.i.i.i.i.i.i.i99.i ; 2 uses
  %i.gx = call range(i32 0, 33) i32 @llvm.ctlz.i32(i32 %.lcssa233, i1 false)
  %i.gy = zext nneg i32 %i.gx to i64
  %i.gz = sub i64 %i.cg, %i.gy
  %i.ha = getelementptr inbounds nuw [8 x i8], ptr %.sroa.10.0.i.i90.ph.i, i64 %i.gi
  store i64 %i.gz, ptr %i.ha, align 8, !noalias !68744
  %i.hb = add i64 %i.gi, 1                        ; 2 uses
  %i.hc = icmp eq i64 %i.gw, 0
  br i1 %i.hc, label %.loopexit192.i, label %.preheader.i.i.preheader.i.i.i.i.i.i98.i

bb.x:                                             ; preds = %.split.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ad), !noalias !68722
  invoke fastcc void @_RINvMNtCsjjpCCFGI3ul_14lance_encoding6bufferNtB3_11LanceBuffer21borrow_to_typed_sliceyEB5_(ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.ad, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %0)
          to label %.noexc31 unwind label %bb.bh

.noexc31:                                         ; preds = %bb.x
  %i.hd = getelementptr inbounds nuw i8, ptr %i.ad, i64 8
  %i.he = load ptr, ptr %i.hd, align 8, !noalias !68722, !noundef !75
  %i.hf = getelementptr inbounds nuw i8, ptr %i.ad, i64 16
  %i.hg = load i64, ptr %i.hf, align 8, !noalias !68722, !noundef !75 ; 3 uses
  %i.hh = lshr i64 %i.hg, 3                       ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ac), !noalias !68722
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ab), !noalias !68722
  %i.hi = icmp eq i64 %i.hh, 0
  br i1 %i.hi, label %.loopexit193.i, label %_RNvXs0_NtNtNtCscI6d9CVNmLh_4core4iter8adapters3mapINtB5_3MapINtNtNtBb_5slice4iter6ChunksyENCINvNvMsc_NtCsjjpCCFGI3ul_14lance_encoding10statisticsNtNtB1D_4data19FixedWidthDataBlock14max_bit_widths23calculate_max_bit_widthyE0ENtNtNtB9_6traits8iterator8Iterator9size_hintB1D_.exit.i.i

_RNvXs0_NtNtNtCscI6d9CVNmLh_4core4iter8adapters3mapINtB5_3MapINtNtNtBb_5slice4iter6ChunksyENCINvNvMsc_NtCsjjpCCFGI3ul_14lance_encoding10statisticsNtNtB1D_4data19FixedWidthDataBlock14max_bit_widths23calculate_max_bit_widthyE0ENtNtNtB9_6traits8iterator8Iterator9size_hintB1D_.exit.i.i: ; preds = %.noexc31
  %i.hj = lshr i64 %i.hg, 13
  %i.hk = and i64 %i.hg, 8184
  %.not.i.i.i119.i = icmp ne i64 %i.hk, 0
  %i.hl = zext i1 %.not.i.i.i119.i to i64
  %.sroa.0.0.i.i.i120.i = add nuw nsw i64 %i.hj, %i.hl ; 3 uses
  %i.hm = shl nuw nsw i64 %.sroa.0.0.i.i.i120.i, 3 ; 2 uses
end_hunk_12
begin_hunk_13_@_RNvXs3_NtNtNtCsjjpCCFGI3ul_14lance_encoding14array_encoding8physical7bitpackNtB5_20BitpackedPageDecoderNtNtBb_7decoder20PrimitivePageDecoder6decode:bb.a
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.ax, ptr noundef nonnull align 8 dereferenceable(56) %i.a, i64 56, i1 false), !noalias !72958
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !72958
  store ptr %i.ax, ptr %i.b, align 8, !alias.scope !72957, !noalias !72960
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr %i.k, ptr %.sroa.4.0..sroa_idx.i, align 8, !alias.scope !72957, !noalias !72960
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store i64 %i.f, ptr %.sroa.5.0..sroa_idx.i, align 8, !alias.scope !72957, !noalias !72960
  %i.bf = invoke noundef nonnull ptr @_RNvMs0_NtCsjjpCCFGI3ul_14lance_encoding4dataNtB5_9BlockInfo3new()
          to label %bb.o unwind label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.bg = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.bh = atomicrmw sub ptr %i.ax, i64 1 release, align 8, !noalias !72961
  %i.bi = icmp eq i64 %i.bh, 1
  br i1 %i.bi, label %bb.n, label %.thread

bb.n:                                             ; preds = %bb.m
  fence acquire
  invoke void @_RNvMsn_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcNtNtCs4YAKbnGhBJc_12arrow_buffer5bytes5BytesE9drop_slowBK_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.b)
          to label %.thread unwind label %bb.p

bb.o:                                             ; preds = %bb.l
  %.sroa.452.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.452.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(24) %i.b, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  store i64 -9223372036854775804, ptr %0, align 8
  %.sroa.452.sroa.4.0..sroa.452.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  store ptr %i.bf, ptr %.sroa.452.sroa.4.0..sroa.452.0..sroa_idx.sroa_idx, align 8
  %.sroa.452.sroa.5.0..sroa.452.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i64 %i.d, ptr %.sroa.452.sroa.5.0..sroa.452.0..sroa_idx.sroa_idx, align 8
  %.sroa.452.sroa.6.0..sroa.452.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 48
  store i64 %3, ptr %.sroa.452.sroa.6.0..sroa.452.0..sroa_idx.sroa_idx, align 8
  ret void

bb.p:                                             ; preds = %bb.n
  %i.bj = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #68
  unreachable

bb.q:                                             ; preds = %bb.j
  %exitcond343.not = icmp eq i64 %.sroa.058.0193, %umax342
  br i1 %exitcond343.not, label %.split.us.invoke, label %bb.r

.split.us.invoke:                                 ; preds = %bb.q, %bb.j, %bb.f, %.lr.ph.split.us
  %i.bk = phi i64 [ 0, %bb.f ], [ 0, %.lr.ph.split.us ], [ %umax, %bb.j ], [ %umax342, %bb.q ]
  %i.bl = phi i64 [ %i.y, %bb.f ], [ %i.w, %.lr.ph.split.us ], [ %i.w, %bb.j ], [ %i.y, %bb.q ]
  %i.bm = phi ptr [ @3452, %bb.f ], [ @3451, %.lr.ph.split.us ], [ @3451, %bb.j ], [ @3452, %bb.q ]
  invoke void @_RNvNtCscI6d9CVNmLh_4core9panicking18panic_bounds_check(i64 noundef %i.bk, i64 noundef %i.bl, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.bm) #66
          to label %.split.us.cont unwind label %.thread125

.split.us.cont:                                   ; preds = %.split.us.invoke
  unreachable

bb.r:                                             ; preds = %bb.q
  %i.bn = getelementptr inbounds nuw i8, ptr %i.ac, i64 %.sroa.058.0193
  %i.bo = load i8, ptr %i.bn, align 1, !noundef !75
  %i.bp = getelementptr inbounds nuw [2 x i8], ptr %i.aa, i64 %.sroa.058.0193 ; 4 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bp, i64 1
  %i.br = zext i8 %i.bo to i64                    ; 2 uses
  %i.bs = load i8, ptr %i.bq, align 1
  %i.bt = load i8, ptr %i.bp, align 1, !range !89, !noundef !75
  %i.bu = trunc nuw i8 %i.bt to i1
  %i.bv = shl i64 %i.be, 3
  %i.bw = sub i8 8, %i.bs
  %narrow = select i1 %i.bu, i8 %i.bw, i8 0
  %i.bx = zext i8 %narrow to i64
  %i.by = add nuw nsw i64 %i.br, %i.bx
  %.sroa.02.0.i = sub i64 %i.bv, %i.by
  %i.bz = udiv i64 %.sroa.02.0.i, %i.m            ; 2 uses
  %.not.i = icmp ult i64 %.sroa.0.0194, %i.bz
  br i1 %.not.i, label %bb.s, label %_RNvNtNtNtCsjjpCCFGI3ul_14lance_encoding14array_encoding8physical7bitpack20compute_start_offset.exit

.noexc99:                                         ; preds = %.split201.us
  unreachable

bb.s:                                             ; preds = %bb.r
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bc, i64 16 ; 2 uses
  %i.cb = getelementptr inbounds nuw i8, ptr %i.bp, i64 1
  %i.cc = mul i64 %.sroa.0.0194, %i.m
  %i.cd = add i64 %i.cc, %i.br                    ; 2 uses
  %i.ce = lshr i64 %i.cd, 3                       ; 2 uses
  %i.cf = icmp ult i64 %i.ce, %i.be
  %i.cg = icmp ult i64 %.sroa.012.0.ph290, %3
  %or.cond276 = select i1 %i.cf, i1 %i.cg, i1 false
  br i1 %or.cond276, label %.lr.ph282, label %.outer

.lr.ph282:                                        ; preds = %bb.s
  %i.ch = and i64 %i.cd, 7
  %i.ci = getelementptr inbounds nuw i8, ptr %i.bc, i64 8 ; 2 uses
  br label %bb.t

_RNvNtNtNtCsjjpCCFGI3ul_14lance_encoding14array_encoding8physical7bitpack20compute_start_offset.exit: ; preds = %bb.r
  %i.cj = sub nuw i64 %.sroa.0.0194, %i.bz
  %i.ck = icmp ult i64 %i.bb, %i.r
  br i1 %i.ck, label %bb.j, label %.outer._crit_edge

.outer:                                           ; preds = %bb.aj, %bb.ai, %bb.s
  %.sroa.014.2 = phi i64 [ %.sroa.014.0.ph289, %bb.s ], [ %.sroa.014.6, %bb.ai ], [ %.sroa.014.6, %bb.aj ]
  %.sroa.012.2 = phi i64 [ %.sroa.012.0.ph290, %bb.s ], [ %i.cn, %bb.ai ], [ %i.cn, %bb.aj ]
  %i.cl = icmp ult i64 %i.bb, %i.r
  br i1 %i.cl, label %.lr.ph, label %.outer._crit_edge

bb.t:                                             ; preds = %.lr.ph282, %bb.aj
  %i.cm = phi i64 [ %i.be, %.lr.ph282 ], [ %.pre, %bb.aj ] ; 2 uses
  %.sroa.012.1280 = phi i64 [ %.sroa.012.0.ph290, %.lr.ph282 ], [ %i.cn, %bb.aj ]
  %.sroa.014.1279 = phi i64 [ %.sroa.014.0.ph289, %.lr.ph282 ], [ %.sroa.014.6, %bb.aj ]
  %.sroa.021.0278 = phi i64 [ %i.ch, %.lr.ph282 ], [ %.sroa.021.2, %bb.aj ] ; 3 uses
  %.sroa.065.0277 = phi i64 [ %i.ce, %.lr.ph282 ], [ %.sroa.065.2, %bb.aj ] ; 3 uses
  %i.cn = add nuw i64 %.sroa.012.1280, 1          ; 4 uses
  %i.co = add i64 %.sroa.021.0278, %i.m           ; 2 uses
  %i.cp = lshr i64 %i.co, 3
  %i.cq = add i64 %i.cp, %.sroa.065.0277
  %i.cr = and i64 %i.co, 7                        ; 2 uses
  %i.cs = icmp eq i64 %i.cr, 0                    ; 2 uses
  %i.ct = sext i1 %i.cs to i64
  %.sroa.060.0 = add i64 %i.cq, %i.ct             ; 3 uses
  %i.cu = icmp ult i64 %.sroa.060.0, %i.cm
  br i1 %i.cu, label %bb.u, label %.invoke

bb.u:                                             ; preds = %bb.t
  %i.cv = trunc nuw nsw i64 %i.cr to i8
  %i.cw = add nsw i8 %i.cv, -1
  %i.cx = load ptr, ptr %i.ci, align 8, !noundef !75 ; 2 uses
  %i.cy = getelementptr inbounds nuw i8, ptr %i.cx, i64 %.sroa.065.0277
  %i.cz = load i8, ptr %i.cy, align 1, !noundef !75
  %i.da = and i64 %.sroa.021.0278, 63
  %i.db = shl i64 %i.p, %i.da
  %i.dc = trunc i64 %i.db to i8
  %i.dd = and i8 %i.cz, %i.dc
  %i.de = getelementptr inbounds nuw i8, ptr %i.cx, i64 %.sroa.060.0
  %i.df = load i8, ptr %i.de, align 1, !noundef !75
  %i.dg = shl nuw nsw i8 1, %i.cw
  %i.dh = select i1 %i.cs, i8 -128, i8 %i.dg
  %i.di = and i8 %i.df, %i.dh
  %.not92 = icmp ne i8 %i.di, 0
  br label %bb.v

.invoke:                                          ; preds = %.lr.ph274, %bb.ae, %bb.t, %bb.z, %bb.v
  %i.dj = phi i64 [ %.sroa.014.3272, %bb.v ], [ %i.fg, %bb.z ], [ %spec.select98, %.lr.ph274 ], [ %spec.select98, %bb.ae ], [ %.sroa.060.0, %bb.t ]
  %i.dk = phi i64 [ %i.f, %bb.v ], [ %i.fh, %bb.z ], [ %i.f, %.lr.ph274 ], [ %i.f, %bb.ae ], [ %i.cm, %bb.t ]
  %i.dl = phi ptr [ @3454, %bb.v ], [ @3455, %bb.z ], [ @3457, %.lr.ph274 ], [ @3456, %bb.ae ], [ @3453, %bb.t ]
  invoke void @_RNvNtCscI6d9CVNmLh_4core9panicking18panic_bounds_check(i64 noundef %i.dj, i64 noundef %i.dk, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.dl) #66
          to label %.cont unwind label %bb.k

.cont:                                            ; preds = %.invoke
  unreachable

bb.v:                                             ; preds = %bb.u, %bb.ab
  %.sroa.014.3272 = phi i64 [ %.sroa.014.1279, %bb.u ], [ %spec.select98, %bb.ab ] ; 5 uses
  %.sroa.021.1271 = phi i64 [ %.sroa.021.0278, %bb.u ], [ %.sroa.021.3, %bb.ab ] ; 4 uses
  %.sroa.028.0270 = phi i64 [ %i.p, %bb.u ], [ %i.fc, %bb.ab ]
  %.sroa.031.0269 = phi i8 [ %i.dd, %bb.u ], [ %.sroa.031.1, %bb.ab ] ; 2 uses
  %.sroa.032.0268 = phi i64 [ 0, %bb.u ], [ %i.ey, %bb.ab ] ; 3 uses
  %.sroa.035.0267 = phi i64 [ 0, %bb.u ], [ %spec.select, %bb.ab ] ; 4 uses
  %.sroa.065.1266 = phi i64 [ %.sroa.065.0277, %bb.u ], [ %.sroa.065.3, %bb.ab ] ; 2 uses
  %i.dm = icmp ult i64 %.sroa.014.3272, %i.f
  br i1 %i.dm, label %bb.x, label %.invoke

bb.w:                                             ; preds = %bb.y, %bb.ab
  %.sroa.065.2 = phi i64 [ %i.fg, %bb.y ], [ %.sroa.065.3, %bb.ab ] ; 3 uses
  %.sroa.021.2 = phi i64 [ 0, %bb.y ], [ %.sroa.021.3, %bb.ab ] ; 2 uses
  %brmerge.not93 = select i1 %i.ag, i1 %.not92, i1 false ; 2 uses
  %i.dn = icmp ne i64 %spec.select, 0
  %or.cond7 = and i1 %i.dn, %brmerge.not93        ; 2 uses
  %i.do = icmp ult i64 %spec.select, 8
  %or.cond292 = and i1 %or.cond7, %i.do
  br i1 %or.cond292, label %.lr.ph274, label %.loopexit

.lr.ph274:                                        ; preds = %bb.w
  %i.dp = icmp ult i64 %spec.select98, %i.f
  %i.dq = getelementptr inbounds nuw i8, ptr %i.k, i64 %spec.select98 ; 2 uses
  br i1 %i.dp, label %iter.check494, label %.invoke

iter.check494:                                    ; preds = %.lr.ph274
  %.promoted = load i8, ptr %i.dq, align 1        ; 3 uses
  %i.dr = sub i64 8, %.sroa.035.0267
  %i.ds = sub i64 %i.m, %.sroa.032.0268
  %i.dt = sub i64 8, %.sroa.021.1271
  %umin480 = tail call i64 @llvm.umin.i64(i64 %i.ds, i64 %i.dt)
  %i.du = tail call i64 @llvm.usub.sat.i64(i64 %i.dr, i64 %umin480) ; 7 uses
  %min.iters.check482 = icmp ult i64 %i.du, 16
  br i1 %min.iters.check482, label %vec.epilog.scalar.ph495.preheader, label %vector.main.loop.iter.check483

vector.main.loop.iter.check483:                   ; preds = %iter.check494
  %min.iters.check484 = icmp ult i64 %i.du, 32
  br i1 %min.iters.check484, label %vec.epilog.ph498, label %vector.ph485

vector.ph485:                                     ; preds = %vector.main.loop.iter.check483
  %i.dv = and i64 %i.du, 16
  %n.vec486 = and i64 %i.du, -32                  ; 4 uses
  %i.dw = add i64 %i.ez, %n.vec486                ; 2 uses
  %i.dx = insertelement <16 x i8> <i8 poison, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0>, i8 %.promoted, i64 0
  %i.dy = trunc i64 %i.ez to i8
  %broadcast.splatinsert = insertelement <16 x i8> poison, i8 %i.dy, i64 0
  %broadcast.splat = shufflevector <16 x i8> %broadcast.splatinsert, <16 x i8> poison, <16 x i32> zeroinitializer
  %induction = add <16 x i8> %broadcast.splat, <i8 0, i8 1, i8 2, i8 3, i8 4, i8 5, i8 6, i8 7, i8 8, i8 9, i8 10, i8 11, i8 12, i8 13, i8 14, i8 15>
  br label %vector.body487

vector.body487:                                   ; preds = %vector.ph485, %vector.body487
  %index488 = phi i64 [ 0, %vector.ph485 ], [ %index.next490, %vector.body487 ]
  %vec.phi = phi <16 x i8> [ %i.dx, %vector.ph485 ], [ %i.eb, %vector.body487 ]
  %vec.phi489 = phi <16 x i8> [ zeroinitializer, %vector.ph485 ], [ %i.ec, %vector.body487 ]
  %vec.ind = phi <16 x i8> [ %induction, %vector.ph485 ], [ %vec.ind.next, %vector.body487 ] ; 3 uses
  %step.add = add <16 x i8> %vec.ind, splat (i8 16)
  %i.dz = shl nuw <16 x i8> splat (i8 1), %vec.ind
  %i.ea = shl nuw <16 x i8> splat (i8 1), %step.add
  %i.eb = or <16 x i8> %vec.phi, %i.dz            ; 2 uses
  %i.ec = or <16 x i8> %vec.phi489, %i.ea         ; 2 uses
  %index.next490 = add nuw i64 %index488, 32      ; 2 uses
  %vec.ind.next = add <16 x i8> %vec.ind, splat (i8 32)
  %i.ed = icmp eq i64 %index.next490, %n.vec486
  br i1 %i.ed, label %middle.block491, label %vector.body487, !llvm.loop !72947

middle.block491:                                  ; preds = %vector.body487
  %bin.rdx = or <16 x i8> %i.ec, %i.eb
  %i.ee = tail call i8 @llvm.vector.reduce.or.v16i8(<16 x i8> %bin.rdx) ; 3 uses
  %cmp.n492 = icmp eq i64 %i.du, %n.vec486
  br i1 %cmp.n492, label %..loopexit_crit_edge, label %vec.epilog.iter.check496

vec.epilog.iter.check496:                         ; preds = %middle.block491
  %min.epilog.iters.check497.not.not = icmp eq i64 %i.dv, 0
  br i1 %min.epilog.iters.check497.not.not, label %vec.epilog.scalar.ph495.preheader, label %vec.epilog.ph498, !prof !72962

vec.epilog.ph498:                                 ; preds = %vector.main.loop.iter.check483, %vec.epilog.iter.check496
  %vec.epilog.resume.val493 = phi i64 [ %n.vec486, %vec.epilog.iter.check496 ], [ 0, %vector.main.loop.iter.check483 ]
  %bc.merge.rdx = phi i8 [ %i.ee, %vec.epilog.iter.check496 ], [ %.promoted, %vector.main.loop.iter.check483 ]
  %bc.resume.val = phi i64 [ %i.dw, %vec.epilog.iter.check496 ], [ %i.ez, %vector.main.loop.iter.check483 ]
  %n.vec499 = and i64 %i.du, -16                  ; 3 uses
  %i.ef = add i64 %i.ez, %n.vec499
  %i.eg = insertelement <16 x i8> <i8 poison, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0>, i8 %bc.merge.rdx, i64 0
  %i.eh = trunc i64 %bc.resume.val to i8
  %broadcast.splatinsert500 = insertelement <16 x i8> poison, i8 %i.eh, i64 0
  %broadcast.splat501 = shufflevector <16 x i8> %broadcast.splatinsert500, <16 x i8> poison, <16 x i32> zeroinitializer
  %induction502 = add <16 x i8> %broadcast.splat501, <i8 0, i8 1, i8 2, i8 3, i8 4, i8 5, i8 6, i8 7, i8 8, i8 9, i8 10, i8 11, i8 12, i8 13, i8 14, i8 15>
  br label %vec.epilog.vector.body503

vec.epilog.vector.body503:                        ; preds = %vec.epilog.vector.body503, %vec.epilog.ph498
  %index504 = phi i64 [ %vec.epilog.resume.val493, %vec.epilog.ph498 ], [ %index.next507, %vec.epilog.vector.body503 ]
  %vec.phi505 = phi <16 x i8> [ %i.eg, %vec.epilog.ph498 ], [ %i.ej, %vec.epilog.vector.body503 ]
  %vec.ind506 = phi <16 x i8> [ %induction502, %vec.epilog.ph498 ], [ %vec.ind.next508, %vec.epilog.vector.body503 ] ; 2 uses
  %i.ei = shl nuw <16 x i8> splat (i8 1), %vec.ind506
  %i.ej = or <16 x i8> %vec.phi505, %i.ei         ; 2 uses
  %index.next507 = add nuw i64 %index504, 16      ; 2 uses
  %vec.ind.next508 = add <16 x i8> %vec.ind506, splat (i8 16)
  %i.ek = icmp eq i64 %index.next507, %n.vec499
  br i1 %i.ek, label %vec.epilog.middle.block509, label %vec.epilog.vector.body503, !llvm.loop !72948

vec.epilog.middle.block509:                       ; preds = %vec.epilog.vector.body503
  %i.el = tail call i8 @llvm.vector.reduce.or.v16i8(<16 x i8> %i.ej) ; 2 uses
  %cmp.n510 = icmp eq i64 %i.du, %n.vec499
  br i1 %cmp.n510, label %..loopexit_crit_edge, label %vec.epilog.scalar.ph495.preheader

vec.epilog.scalar.ph495.preheader:                ; preds = %iter.check494, %vec.epilog.iter.check496, %vec.epilog.middle.block509
  %.ph = phi i8 [ %.promoted, %iter.check494 ], [ %i.ee, %vec.epilog.iter.check496 ], [ %i.el, %vec.epilog.middle.block509 ]
  %.sroa.035.3273.ph = phi i64 [ %i.ez, %iter.check494 ], [ %i.dw, %vec.epilog.iter.check496 ], [ %i.ef, %vec.epilog.middle.block509 ]
  br label %vec.epilog.scalar.ph495

bb.x:                                             ; preds = %bb.v
  %i.em = trunc i64 %.sroa.021.1271 to i8
  %i.en = and i8 %i.em, 7
  %i.eo = lshr i8 %.sroa.031.0269, %i.en
  %i.ep = trunc i64 %.sroa.035.0267 to i8
  %i.eq = and i8 %i.ep, 7
  %i.er = shl i8 %i.eo, %i.eq
  %i.es = getelementptr inbounds nuw i8, ptr %i.k, i64 %.sroa.014.3272 ; 2 uses
  %i.et = load i8, ptr %i.es, align 1, !noundef !75
  %i.eu = add i8 %i.et, %i.er
  store i8 %i.eu, ptr %i.es, align 1
  %i.ev = sub nuw i64 %i.m, %.sroa.032.0268
  %i.ew = sub i64 8, %.sroa.021.1271
  %.sroa.0.0.i = tail call noundef i64 @llvm.umin.i64(i64 %i.ew, i64 %i.ev)
  %i.ex = sub i64 8, %.sroa.035.0267
  %.sroa.0.0.i100 = tail call noundef i64 @llvm.umin.i64(i64 %i.ex, i64 %.sroa.0.0.i) ; 4 uses
  %i.ey = add i64 %.sroa.0.0.i100, %.sroa.032.0268 ; 2 uses
  %i.ez = add i64 %.sroa.0.0.i100, %.sroa.035.0267 ; 7 uses
  %i.fa = add i64 %.sroa.0.0.i100, %.sroa.021.1271 ; 2 uses
  %i.fb = and i64 %.sroa.0.0.i100, 63
  %i.fc = lshr i64 %.sroa.028.0270, %i.fb         ; 2 uses
  %i.fd = icmp eq i64 %i.ez, 8                    ; 3 uses
  %spec.select = select i1 %i.fd, i64 0, i64 %i.ez ; 3 uses
  %i.fe = zext i1 %i.fd to i64
  %spec.select98 = add nuw nsw i64 %.sroa.014.3272, %i.fe ; 11 uses
  %i.ff = icmp eq i64 %i.fa, 8
  br i1 %i.ff, label %bb.y, label %bb.ab

bb.y:                                             ; preds = %bb.x
  %i.fg = add i64 %.sroa.065.1266, 1              ; 6 uses
  %i.fh = load i64, ptr %i.ca, align 8, !noundef !75 ; 3 uses
  %i.fi = icmp eq i64 %i.fg, %i.fh
  br i1 %i.fi, label %bb.w, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.fj = icmp ult i64 %i.fg, %i.fh
  br i1 %i.fj, label %bb.aa, label %.invoke

bb.aa:                                            ; preds = %bb.z
  %i.fk = load ptr, ptr %i.ci, align 8, !noundef !75
  %i.fl = getelementptr inbounds nuw i8, ptr %i.fk, i64 %i.fg
  %i.fm = load i8, ptr %i.fl, align 1, !noundef !75
  %i.fn = trunc i64 %i.fc to i8
  %i.fo = and i8 %i.fm, %i.fn
  br label %bb.ab

bb.ab:                                            ; preds = %bb.x, %bb.aa
  %.sroa.065.3 = phi i64 [ %i.fg, %bb.aa ], [ %.sroa.065.1266, %bb.x ] ; 2 uses
  %.sroa.031.1 = phi i8 [ %i.fo, %bb.aa ], [ %.sroa.031.0269, %bb.x ]
  %.sroa.021.3 = phi i64 [ 0, %bb.aa ], [ %i.fa, %bb.x ] ; 2 uses
  %i.fp = icmp ult i64 %i.ey, %i.m
  br i1 %i.fp, label %bb.v, label %bb.w

..loopexit_crit_edge:                             ; preds = %vec.epilog.scalar.ph495, %vec.epilog.middle.block509, %middle.block491
  %.lcssa462 = phi i8 [ %i.el, %vec.epilog.middle.block509 ], [ %i.ee, %middle.block491 ], [ %i.ft, %vec.epilog.scalar.ph495 ]
  store i8 %.lcssa462, ptr %i.dq, align 1
  br label %.loopexit

.loopexit:                                        ; preds = %..loopexit_crit_edge, %bb.w
  br i1 %.not, label %_RNvXs_NtNtNtCscI6d9CVNmLh_4core4iter8adapters4takeINtB4_4TakeINtNtNtBa_5slice4iter7IterMuthEENtNtNtB8_6traits8iterator8Iterator3nthCsjjpCCFGI3ul_14lance_encoding.exit.thread, label %bb.ac

vec.epilog.scalar.ph495:                          ; preds = %vec.epilog.scalar.ph495.preheader, %vec.epilog.scalar.ph495
  %i.fq = phi i8 [ %i.ft, %vec.epilog.scalar.ph495 ], [ %.ph, %vec.epilog.scalar.ph495.preheader ]
  %.sroa.035.3273 = phi i64 [ %i.fu, %vec.epilog.scalar.ph495 ], [ %.sroa.035.3273.ph, %vec.epilog.scalar.ph495.preheader ] ; 2 uses
  %i.fr = trunc nuw nsw i64 %.sroa.035.3273 to i8
  %i.fs = shl nuw i8 1, %i.fr
  %i.ft = or i8 %i.fq, %i.fs                      ; 2 uses
  %i.fu = add i64 %.sroa.035.3273, 1              ; 2 uses
  %exitcond344.not = icmp eq i64 %i.fu, 8
  br i1 %exitcond344.not, label %..loopexit_crit_edge, label %vec.epilog.scalar.ph495, !llvm.loop !72949

bb.ac:                                            ; preds = %.loopexit
  %i.fv = add i64 %i.ak, %spec.select98           ; 8 uses
  br i1 %brmerge.not93, label %bb.ad, label %_RNvXs_NtNtNtCscI6d9CVNmLh_4core4iter8adapters4takeINtB4_4TakeINtNtNtBa_5slice4iter7IterMuthEENtNtNtB8_6traits8iterator8Iterator3nthCsjjpCCFGI3ul_14lance_encoding.exit.thread

bb.ad:                                            ; preds = %bb.ac
  br i1 %or.cond7, label %bb.af, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.fw = icmp ult i64 %spec.select98, %i.f
  br i1 %i.fw, label %bb.ah, label %.invoke

bb.af:                                            ; preds = %bb.ad, %bb.ah
  %i.fx = add nuw i64 %spec.select98, 1           ; 3 uses
  %i.fy = icmp ugt i64 %i.fv, %i.fx
  br i1 %i.fy, label %bb.ag, label %_RNvXs_NtNtNtCscI6d9CVNmLh_4core4iter8adapters4takeINtB4_4TakeINtNtNtBa_5slice4iter7IterMuthEENtNtNtB8_6traits8iterator8Iterator3nthCsjjpCCFGI3ul_14lance_encoding.exit.thread

bb.ag:                                            ; preds = %bb.af
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.k) ]
  %.not.i.i103.not.peel = icmp ult i64 %i.fx, %i.an
  br i1 %.not.i.i103.not.peel, label %.peel.next, label %_RNvXs_NtNtNtCscI6d9CVNmLh_4core4iter8adapters4takeINtB4_4TakeINtNtNtBa_5slice4iter7IterMuthEENtNtNtB8_6traits8iterator8Iterator3nthCsjjpCCFGI3ul_14lance_encoding.exit.thread

.peel.next:                                       ; preds = %bb.ag
  %i.fz = getelementptr inbounds nuw i8, ptr %i.k, i64 %i.fx ; 2 uses
  store i8 -1, ptr %i.fz, align 1
  %.sroa.0113.0466 = getelementptr i8, ptr %i.fz, i64 1 ; 5 uses
  %i.ga = add i64 %spec.select98, 2
  %i.gb = icmp eq i64 %i.ga, %i.f
  %or.cond138467 = select i1 %i.au, i1 true, i1 %i.gb
  br i1 %or.cond138467, label %_RNvXs_NtNtNtCscI6d9CVNmLh_4core4iter8adapters4takeINtB4_4TakeINtNtNtBa_5slice4iter7IterMuthEENtNtNtB8_6traits8iterator8Iterator3nthCsjjpCCFGI3ul_14lance_encoding.exit.thread, label %iter.check

iter.check:                                       ; preds = %.peel.next
  %i.gc = sub i64 %i.ap, %.sroa.014.3272
  %.neg = sext i1 %i.fd to i64
  %i.gd = add i64 %i.gc, %.neg
  %i.ge = freeze i64 %i.gd
  %umin = tail call i64 @llvm.umin.i64(i64 %i.ge, i64 %i.at)
  %i.gf = add i64 %umin, 1                        ; 7 uses
  %min.iters.check = icmp ult i64 %i.gf, 4
  br i1 %min.iters.check, label %vec.epilog.scalar.ph.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check471 = icmp ult i64 %i.gf, 32
  br i1 %min.iters.check471, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.gg = and i64 %i.gf, 28
  %n.vec = and i64 %i.gf, -32                     ; 5 uses
  %i.gh = getelementptr i8, ptr %.sroa.0113.0466, i64 %n.vec
  %i.gi = sub i64 %i.ao, %n.vec
  br label %vector.body

vector.body:                                      ; preds = %vector.ph, %vector.body
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %next.gep = getelementptr i8, ptr %.sroa.0113.0466, i64 %index ; 2 uses
  %i.gj = getelementptr i8, ptr %next.gep, i64 16
  store <16 x i8> splat (i8 -1), ptr %next.gep, align 1
  store <16 x i8> splat (i8 -1), ptr %i.gj, align 1
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.gk = icmp eq i64 %index.next, %n.vec
  br i1 %i.gk, label %middle.block, label %vector.body, !llvm.loop !72950

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.gf, %n.vec
  br i1 %cmp.n, label %_RNvXs_NtNtNtCscI6d9CVNmLh_4core4iter8adapters4takeINtB4_4TakeINtNtNtBa_5slice4iter7IterMuthEENtNtNtB8_6traits8iterator8Iterator3nthCsjjpCCFGI3ul_14lance_encoding.exit.thread, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.gg, 0
  br i1 %min.epilog.iters.check, label %vec.epilog.scalar.ph.preheader, label %vec.epilog.ph, !prof !213

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec473 = and i64 %i.gf, -4                   ; 4 uses
  %i.gl = getelementptr i8, ptr %.sroa.0113.0466, i64 %n.vec473
  %i.gm = sub i64 %i.ao, %n.vec473
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index474 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next476, %vec.epilog.vector.body ] ; 2 uses
  %next.gep475 = getelementptr i8, ptr %.sroa.0113.0466, i64 %index474
  store <4 x i8> splat (i8 -1), ptr %next.gep475, align 1
  %index.next476 = add nuw i64 %index474, 4       ; 2 uses
  %i.gn = icmp eq i64 %index.next476, %n.vec473
  br i1 %i.gn, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !72951

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n477 = icmp eq i64 %i.gf, %n.vec473
  br i1 %cmp.n477, label %_RNvXs_NtNtNtCscI6d9CVNmLh_4core4iter8adapters4takeINtB4_4TakeINtNtNtBa_5slice4iter7IterMuthEENtNtNtB8_6traits8iterator8Iterator3nthCsjjpCCFGI3ul_14lance_encoding.exit.thread, label %vec.epilog.scalar.ph.preheader

vec.epilog.scalar.ph.preheader:                   ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.sroa.0113.0469.ph = phi ptr [ %.sroa.0113.0466, %iter.check ], [ %i.gh, %vec.epilog.iter.check ], [ %i.gl, %vec.epilog.middle.block ]
  %.sroa.13.0468.ph = phi i64 [ %i.ao, %iter.check ], [ %i.gi, %vec.epilog.iter.check ], [ %i.gm, %vec.epilog.middle.block ]
  br label %vec.epilog.scalar.ph

bb.ah:                                            ; preds = %bb.ae
  %i.go = getelementptr inbounds nuw i8, ptr %i.k, i64 %spec.select98
  store i8 -1, ptr %i.go, align 1
  br label %bb.af

vec.epilog.scalar.ph:                             ; preds = %vec.epilog.scalar.ph.preheader, %vec.epilog.scalar.ph
  %.sroa.0113.0469 = phi ptr [ %.sroa.0113.0, %vec.epilog.scalar.ph ], [ %.sroa.0113.0469.ph, %vec.epilog.scalar.ph.preheader ] ; 2 uses
  %.sroa.13.0468 = phi i64 [ %i.gp, %vec.epilog.scalar.ph ], [ %.sroa.13.0468.ph, %vec.epilog.scalar.ph.preheader ]
  %i.gp = add i64 %.sroa.13.0468, -1              ; 2 uses
  store i8 -1, ptr %.sroa.0113.0469, align 1
  %.sroa.0113.0 = getelementptr i8, ptr %.sroa.0113.0469, i64 1 ; 2 uses
  %i.gq = icmp eq i64 %i.gp, 0
  %i.gr = icmp eq ptr %.sroa.0113.0, %i.al
  %or.cond138 = select i1 %i.gq, i1 true, i1 %i.gr
  br i1 %or.cond138, label %_RNvXs_NtNtNtCscI6d9CVNmLh_4core4iter8adapters4takeINtB4_4TakeINtNtNtBa_5slice4iter7IterMuthEENtNtNtB8_6traits8iterator8Iterator3nthCsjjpCCFGI3ul_14lance_encoding.exit.thread, label %vec.epilog.scalar.ph, !llvm.loop !72952

_RNvXs_NtNtNtCscI6d9CVNmLh_4core4iter8adapters4takeINtB4_4TakeINtNtNtBa_5slice4iter7IterMuthEENtNtNtB8_6traits8iterator8Iterator3nthCsjjpCCFGI3ul_14lance_encoding.exit.thread: ; preds = %vec.epilog.scalar.ph, %.peel.next, %vec.epilog.middle.block, %middle.block, %bb.af, %bb.ag, %bb.ac, %.loopexit
  %.sroa.014.6 = phi i64 [ %spec.select98, %.loopexit ], [ %i.fv, %bb.ac ], [ %i.fv, %bb.ag ], [ %i.fv, %bb.af ], [ %i.fv, %middle.block ], [ %i.fv, %vec.epilog.middle.block ], [ %i.fv, %.peel.next ], [ %i.fv, %vec.epilog.scalar.ph ] ; 3 uses
  %i.gs = load i8, ptr %i.bp, align 1, !range !89, !noundef !75
  %i.gt = trunc nuw i8 %i.gs to i1
  %.pre = load i64, ptr %i.ca, align 8            ; 3 uses
  br i1 %i.gt, label %bb.ai, label %bb.aj

bb.ai:                                            ; preds = %_RNvXs_NtNtNtCscI6d9CVNmLh_4core4iter8adapters4takeINtB4_4TakeINtNtNtBa_5slice4iter7IterMuthEENtNtNtB8_6traits8iterator8Iterator3nthCsjjpCCFGI3ul_14lance_encoding.exit.thread
  %i.gu = load i8, ptr %i.cb, align 1, !noundef !75
  %i.gv = add i64 %.pre, -1
  %i.gw = icmp eq i64 %.sroa.065.2, %i.gv
  %i.gx = zext i8 %i.gu to i64
  %i.gy = icmp uge i64 %.sroa.021.2, %i.gx
  %or.cond10 = and i1 %i.gw, %i.gy
  br i1 %or.cond10, label %.outer, label %bb.aj

bb.aj:                                            ; preds = %bb.ai, %_RNvXs_NtNtNtCscI6d9CVNmLh_4core4iter8adapters4takeINtB4_4TakeINtNtNtBa_5slice4iter7IterMuthEENtNtNtB8_6traits8iterator8Iterator3nthCsjjpCCFGI3ul_14lance_encoding.exit.thread
  %i.gz = icmp ult i64 %.sroa.065.2, %.pre
  %i.ha = icmp ult i64 %i.cn, %3
  %or.cond = select i1 %i.gz, i1 %i.ha, i1 false
  br i1 %or.cond, label %bb.t, label %.outer

.thread:                                          ; preds = %bb.h, %bb.al, %bb.ak, %bb.n, %bb.m
  %.pn122 = phi { ptr, i32 } [ %lpad.phi127, %bb.al ], [ %i.bg, %bb.n ], [ %i.az, %bb.h ], [ %i.bg, %bb.m ], [ %lpad.phi127, %bb.ak ]
  resume { ptr, i32 } %.pn122

bb.ak:                                            ; preds = %bb.k, %.thread125
  %lpad.phi127 = phi { ptr, i32 } [ %lpad.thr_comm, %.thread125 ], [ %lpad.thr_comm.split-lp, %bb.k ] ; 2 uses
  br i1 %i.g, label %.thread, label %bb.al

bb.al:                                            ; preds = %bb.ak
  tail call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %i.k, i64 noundef %i.f, i64 noundef range(i64 1, -9223372036854775807) 1) #63, !noalias !72963
  br label %.thread
}

; Function Attrs: nonlazybind uwtable
define void @_RNvXs3_NtNtNtCsjjpCCFGI3ul_14lance_encoding9encodings7logical15fixed_size_listNtB5_36StructuralFixedSizeListSchedulingJobNtNtBb_7decoder23StructuralSchedulingJob13schedule_next(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([56 x i8]) align 8 captures(none) dereferenceable(56) %0, ptr noalias noundef align 8 dereferenceable(24) %1, ptr noalias noundef align 8 dereferenceable(104) %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [48 x i8], align 8                ; 6 uses
  %i.b = alloca [24 x i8], align 8                ; 6 uses
  %i.c = alloca [40 x i8], align 8                ; 9 uses
  %i.d = alloca [56 x i8], align 8                ; 13 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  %i.e = load ptr, ptr %1, align 8, !nonnull !75, !noundef !75
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.g = load ptr, ptr %i.f, align 8, !nonnull !75, !align !95, !noundef !75
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 32
  %i.i = load ptr, ptr %i.h, align 8, !invariant.load !75, !nonnull !75
  call void %i.i(ptr noalias noundef nonnull sret([56 x i8]) align 8 captures(address) dereferenceable(56) %i.d, ptr noundef nonnull %i.e, ptr noalias noundef nonnull align 8 dereferenceable(104) %2)
  %i.j = load i8, ptr %i.d, align 8, !range !88, !noundef !75 ; 2 uses
  %.not = icmp eq i8 %i.j, -1
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %.sroa.423.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 1
  %.sroa.429.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %.sroa.429.0..sroa_idx, ptr noundef nonnull align 1 dereferenceable(7) %.sroa.423.0..sroa_idx, i64 7, i1 false)
  %.sroa.524.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %.sroa.524.0.copyload = load i64, ptr %.sroa.524.0..sroa_idx, align 8
  %.sroa.625.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %.sroa.625.0.copyload = load ptr, ptr %.sroa.625.0..sroa_idx, align 8
  %.sroa.726.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  %.sroa.726.0.copyload = load i64, ptr %.sroa.726.0..sroa_idx, align 8
  %.sroa.827.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 32
  %.sroa.833.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.833.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.827.0..sroa_idx, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  store i8 %i.j, ptr %0, align 8
  %.sroa.530.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.sroa.524.0.copyload, ptr %.sroa.530.0..sroa_idx, align 8
  %.sroa.631.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %.sroa.625.0.copyload, ptr %.sroa.631.0..sroa_idx, align 8
  %.sroa.732.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 %.sroa.726.0.copyload, ptr %.sroa.732.0..sroa_idx, align 8
  br label %bb.m

bb.c:                                             ; preds = %bb.a
  %i.k = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %.sroa.014.0.copyload = load i64, ptr %i.k, align 8 ; 4 uses
  %.sroa.415.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %.sroa.415.0.copyload = load ptr, ptr %.sroa.415.0..sroa_idx, align 8, !nonnull !75, !noundef !75 ; 10 uses
  %.sroa.516.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  %.sroa.516.0.copyload = load i64, ptr %.sroa.516.0..sroa_idx, align 8 ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  %i.l = icmp ult i64 %.sroa.516.0.copyload, 288230376151711744
  call void @llvm.assume(i1 %i.l)
  %.idx = shl nuw nsw i64 %.sroa.516.0.copyload, 5
  %i.m = getelementptr inbounds nuw i8, ptr %.sroa.415.0.copyload, i64 %.idx ; 4 uses
  %i.n = icmp sgt i64 %.sroa.014.0.copyload, -1
  call void @llvm.assume(i1 %i.n)
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  store ptr %.sroa.415.0.copyload, ptr %i.c, align 8
  %.sroa.4.0..sroa_idx11 = getelementptr inbounds nuw i8, ptr %i.c, i64 8 ; 2 uses
  %.sroa.512.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 16 ; 2 uses
  store i64 %.sroa.014.0.copyload, ptr %.sroa.512.0..sroa_idx, align 8
  %.sroa.6.0..sroa_idx13 = getelementptr inbounds nuw i8, ptr %i.c, i64 24 ; 2 uses
  store ptr %i.m, ptr %.sroa.6.0..sroa_idx13, align 8
  %i.p = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  store ptr %i.o, ptr %i.p, align 8
  call void @llvm.experimental.noalias.scope.decl(metadata !72981)
  call void @llvm.experimental.noalias.scope.decl(metadata !72982)
  call void @llvm.experimental.noalias.scope.decl(metadata !72983)
  call void @llvm.experimental.noalias.scope.decl(metadata !72984)
  %.not10.i.i.i.i = icmp eq i64 %.sroa.516.0.copyload, 0
  br i1 %.not10.i.i.i.i, label %._crit_edge.i.i.i.i, label %.lr.ph.i.i.i.i

.body.i:                                          ; preds = %bb.k, %bb.i
  %.pn.i = phi { ptr, i32 } [ %i.an, %bb.k ], [ %i.v, %bb.i ]
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters3map3MapINtNtNtCs40k4W9msRzi_5alloc3vec9into_iter8IntoIterNtNtCsjjpCCFGI3ul_14lance_encoding7decoder17ScheduledScanLineENCNvXs3_NtNtNtB21_9encodings7logical15fixed_size_listNtB35_36StructuralFixedSizeListSchedulingJobNtB1Z_23StructuralSchedulingJob13schedule_next0EEB21_(ptr noalias noundef nonnull align 8 dereferenceable(40) %i.c) #67
          to label %common.resume.i unwind label %bb.l, !noalias !72985

.lr.ph.i.i.i.i:                                   ; preds = %bb.c
  %i.q = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.r = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  %.pre = load i64, ptr %i.o, align 8, !noalias !72986 ; 2 uses
  %i.t = icmp eq i64 %.pre, 0
  br label %bb.d

bb.d:                                             ; preds = %_RNCINvNtNtNtCscI6d9CVNmLh_4core4iter8adapters3map12map_try_foldNtNtCsjjpCCFGI3ul_14lance_encoding7decoder17ScheduledScanLineBZ_INtNtNtCs40k4W9msRzi_5alloc3vec13in_place_drop11InPlaceDropBZ_EINtNtBa_6result6ResultB21_zENCNvXs3_NtNtNtB13_9encodings7logical15fixed_size_listNtB3C_36StructuralFixedSizeListSchedulingJobNtB11_23StructuralSchedulingJob13schedule_next0NCINvNtB26_16in_place_collect24write_in_place_with_dropBZ_E0E0B13_.exit.i.i.i.i, %.lr.ph.i.i.i.i
  %.sroa.4.011.i.i.i.i = phi ptr [ %.sroa.415.0.copyload, %.lr.ph.i.i.i.i ], [ %i.u, %_RNCINvNtNtNtCscI6d9CVNmLh_4core4iter8adapters3map12map_try_foldNtNtCsjjpCCFGI3ul_14lance_encoding7decoder17ScheduledScanLineBZ_INtNtNtCs40k4W9msRzi_5alloc3vec13in_place_drop11InPlaceDropBZ_EINtNtBa_6result6ResultB21_zENCNvXs3_NtNtNtB13_9encodings7logical15fixed_size_listNtB3C_36StructuralFixedSizeListSchedulingJobNtB11_23StructuralSchedulingJob13schedule_next0NCINvNtB26_16in_place_collect24write_in_place_with_dropBZ_E0E0B13_.exit.i.i.i.i ] ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !72987
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.r, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.4.011.i.i.i.i, i64 32, i1 false), !noalias !72987
  %i.u = getelementptr i8, ptr %.sroa.4.011.i.i.i.i, i64 32 ; 3 uses
  store ptr %.sroa.415.0.copyload, ptr %i.a, align 8, !noalias !72987
  store ptr %.sroa.4.011.i.i.i.i, ptr %i.q, align 8, !noalias !72987
  call void @llvm.experimental.noalias.scope.decl(metadata !72988)
  call void @llvm.experimental.noalias.scope.decl(metadata !72989)
  br i1 %i.t, label %bb.e, label %_RNCINvNtNtNtCscI6d9CVNmLh_4core4iter8adapters3map12map_try_foldNtNtCsjjpCCFGI3ul_14lance_encoding7decoder17ScheduledScanLineBZ_INtNtNtCs40k4W9msRzi_5alloc3vec13in_place_drop11InPlaceDropBZ_EINtNtBa_6result6ResultB21_zENCNvXs3_NtNtNtB13_9encodings7logical15fixed_size_listNtB3C_36StructuralFixedSizeListSchedulingJobNtB11_23StructuralSchedulingJob13schedule_next0NCINvNtB26_16in_place_collect24write_in_place_with_dropBZ_E0E0B13_.exit.i.i.i.i

bb.e:                                             ; preds = %bb.d
  store ptr %i.u, ptr %.sroa.4.0..sroa_idx11, align 8, !alias.scope !72990, !noalias !72991
  invoke void @_RNvNtNtCscI6d9CVNmLh_4core9panicking11panic_const23panic_const_div_by_zero(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1123) #66
          to label %bb.g unwind label %bb.f, !noalias !72986

bb.f:                                             ; preds = %bb.e
  %i.v = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VecNtNtCsjjpCCFGI3ul_14lance_encoding7decoder11MessageTypeEEB1c_(ptr noalias noundef nonnull readonly align 8 dereferenceable(32) %i.r) #67
          to label %bb.i unwind label %bb.h, !noalias !72992

bb.g:                                             ; preds = %bb.e
end_hunk_13
begin_hunk_14_@_RNvXs_NtNtCs40k4W9msRzi_5alloc3vec21spec_from_iter_nestedINtB6_3VecINtNtB8_4sync3ArcDNtNtCs4ytUTZt2Gw9_11arrow_array5array5ArrayEL_EEINtB4_18SpecFromIterNestedB13_INtNtNtNtCscI6d9CVNmLh_4core4iter8adapters3map3MapINtNtNtB2K_5slice4iter4IterB13_ENCNvMsq_NtCsjjpCCFGI3ul_14lance_encoding4dataNtB43_9DataBlock11from_arrayss_0EE9from_iterB45_:bb.a
bb.j:                                             ; preds = %bb.h
  unreachable

bb.k:                                             ; preds = %bb.i
  %i.aa = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #68, !noalias !85363
  unreachable

bb.l:                                             ; preds = %.noexc.i.i.i.i.i
  %i.ab = getelementptr inbounds nuw [16 x i8], ptr %i.k, i64 %.val15.i.i.i.i.i
  %i.ac = load <2 x ptr>, ptr %i.o, align 8, !alias.scope !85360, !noalias !85361
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !85359
  store <2 x ptr> %i.ac, ptr %i.ab, align 8, !noalias !85364
  %i.ad = add i64 %.val15.i.i.i.i.i, 1            ; 2 uses
  %i.ae = icmp eq i64 %i.ad, %i.g
  br i1 %i.ae, label %.loopexit, label %bb.g

.body:                                            ; preds = %bb.f, %bb.i
  %eh.lpad-body.i.i.i.i.i = phi { ptr, i32 } [ %i.p, %bb.f ], [ %i.z, %bb.i ]
  store i64 %.val15.i.i.i.i.i, ptr %i.n, align 8, !alias.scope !85365, !noalias !85366
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VecINtNtBG_4sync3ArcDNtNtCs4ytUTZt2Gw9_11arrow_array5array5ArrayEL_EEECsjjpCCFGI3ul_14lance_encoding(ptr noalias noundef align 8 dereferenceable(24) %i.c) #67
          to label %bb.n unwind label %bb.m

.loopexit:                                        ; preds = %bb.l, %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecINtNtB6_4sync3ArcDNtNtCs4ytUTZt2Gw9_11arrow_array5array5ArrayEL_EE7reserveCsjjpCCFGI3ul_14lance_encoding.exit.i.i.thread
  %i.af = phi ptr [ %i.j, %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecINtNtB6_4sync3ArcDNtNtCs4ytUTZt2Gw9_11arrow_array5array5ArrayEL_EE7reserveCsjjpCCFGI3ul_14lance_encoding.exit.i.i.thread ], [ %i.n, %bb.l ]
  %storemerge.i.i.i.i = phi i64 [ 0, %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecINtNtB6_4sync3ArcDNtNtCs4ytUTZt2Gw9_11arrow_array5array5ArrayEL_EE7reserveCsjjpCCFGI3ul_14lance_encoding.exit.i.i.thread ], [ %i.g, %bb.l ]
  store i64 %storemerge.i.i.i.i, ptr %i.af, align 8, !alias.scope !85365, !noalias !85366
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.c, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  ret void

bb.m:                                             ; preds = %.body
  %i.ag = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #68
  unreachable

bb.n:                                             ; preds = %.body
  resume { ptr, i32 } %eh.lpad-body.i.i.i.i.i
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RNvXs_NtNtCs40k4W9msRzi_5alloc3vec21spec_from_iter_nestedINtB6_3VecINtNtNtCscI6d9CVNmLh_4core3ops5range5RangeyEEINtB4_18SpecFromIterNestedB13_INtNtNtNtB1a_4iter8adapters3map3MapINtNtNtB1a_5slice4iter4IterNtNtNtNtCsjjpCCFGI3ul_14lance_encoding9encodings7logical9primitive11LoadedChunkENCNvXs9_NtB3i_6sparseNtB4G_25SparseStructuralSchedulerNtB3i_23StructuralPageScheduler15schedule_rangess1_0EE9from_iterB3o_(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(24) %0, ptr noundef nonnull %1, ptr noundef nonnull %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = ptrtoint ptr %2 to i64
  %i.b = ptrtoint ptr %1 to i64
  %i.c = sub i64 %i.a, %i.b
  %i.d = udiv i64 %i.c, 56                        ; 6 uses
  %i.e = shl nuw nsw i64 %i.d, 4                  ; 2 uses
  %i.f = icmp eq ptr %2, %1
  br i1 %i.f, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvCs9hJ03s5DiqP_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #63, !noalias !85386
  %i.g = tail call noundef align 8 ptr @_RNvCs9hJ03s5DiqP_7___rustc12___rust_alloc(i64 noundef %i.e, i64 noundef range(i64 1, 17) 8) #63, !noalias !85386 ; 8 uses
  %i.h = icmp eq ptr %i.g, null
  br i1 %i.h, label %bb.c, label %.preheader.i.i.preheader

.preheader.i.i.preheader:                         ; preds = %bb.b
  %i.i = add nsw i64 %i.d, -1
  %xtraiter = and i64 %i.d, 3                     ; 3 uses
  %i.j = icmp ult i64 %i.i, 3
  br i1 %i.j, label %.preheader.i.i.epil.preheader, label %.preheader.i.i.preheader.new

.preheader.i.i.preheader.new:                     ; preds = %.preheader.i.i.preheader
  %unroll_iter = and i64 %i.d, 576460752303423484
  br label %.preheader.i.i

bb.c:                                             ; preds = %bb.b
  tail call void @_RNvNtCs40k4W9msRzi_5alloc7raw_vec12handle_error(i64 noundef 8, i64 %i.e) #66
  unreachable

.preheader.i.i:                                   ; preds = %.preheader.i.i, %.preheader.i.i.preheader.new
  %i.k = phi i64 [ 0, %.preheader.i.i.preheader.new ], [ %i.ae, %.preheader.i.i ] ; 6 uses
  %niter = phi i64 [ 0, %.preheader.i.i.preheader.new ], [ %niter.next.3, %.preheader.i.i ]
  %i.l = getelementptr inbounds nuw [56 x i8], ptr %1, i64 %i.k
  %i.m = getelementptr i8, ptr %i.l, i64 32
  %i.n = getelementptr inbounds nuw [16 x i8], ptr %i.g, i64 %i.k
  %i.o = load <2 x i64>, ptr %i.m, align 8, !noalias !85387
  store <2 x i64> %i.o, ptr %i.n, align 8, !noalias !85388
  %i.p = or disjoint i64 %i.k, 1                  ; 2 uses
  %i.q = getelementptr inbounds nuw [56 x i8], ptr %1, i64 %i.p
  %i.r = getelementptr i8, ptr %i.q, i64 32
  %i.s = getelementptr inbounds nuw [16 x i8], ptr %i.g, i64 %i.p
  %i.t = load <2 x i64>, ptr %i.r, align 8, !noalias !85387
  store <2 x i64> %i.t, ptr %i.s, align 8, !noalias !85388
  %i.u = or disjoint i64 %i.k, 2                  ; 2 uses
  %i.v = getelementptr inbounds nuw [56 x i8], ptr %1, i64 %i.u
  %i.w = getelementptr i8, ptr %i.v, i64 32
  %i.x = getelementptr inbounds nuw [16 x i8], ptr %i.g, i64 %i.u
  %i.y = load <2 x i64>, ptr %i.w, align 8, !noalias !85387
  store <2 x i64> %i.y, ptr %i.x, align 8, !noalias !85388
  %i.z = or disjoint i64 %i.k, 3                  ; 2 uses
  %i.aa = getelementptr inbounds nuw [56 x i8], ptr %1, i64 %i.z
  %i.ab = getelementptr i8, ptr %i.aa, i64 32
  %i.ac = getelementptr inbounds nuw [16 x i8], ptr %i.g, i64 %i.z
  %i.ad = load <2 x i64>, ptr %i.ab, align 8, !noalias !85387
  store <2 x i64> %i.ad, ptr %i.ac, align 8, !noalias !85388
  %i.ae = add nuw i64 %i.k, 4                     ; 2 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %.loopexit.loopexit.unr-lcssa, label %.preheader.i.i

.loopexit.loopexit.unr-lcssa:                     ; preds = %.preheader.i.i
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.loopexit, label %.preheader.i.i.epil.preheader

.preheader.i.i.epil.preheader:                    ; preds = %.loopexit.loopexit.unr-lcssa, %.preheader.i.i.preheader
  %.epil.init = phi i64 [ 0, %.preheader.i.i.preheader ], [ %i.ae, %.loopexit.loopexit.unr-lcssa ]
  %lcmp.mod11 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod11)
  br label %.preheader.i.i.epil

.preheader.i.i.epil:                              ; preds = %.preheader.i.i.epil, %.preheader.i.i.epil.preheader
  %i.af = phi i64 [ %i.ak, %.preheader.i.i.epil ], [ %.epil.init, %.preheader.i.i.epil.preheader ] ; 3 uses
  %epil.iter = phi i64 [ %epil.iter.next, %.preheader.i.i.epil ], [ 0, %.preheader.i.i.epil.preheader ]
  %i.ag = getelementptr inbounds nuw [56 x i8], ptr %1, i64 %i.af
  %i.ah = getelementptr i8, ptr %i.ag, i64 32
  %i.ai = getelementptr inbounds nuw [16 x i8], ptr %i.g, i64 %i.af
  %i.aj = load <2 x i64>, ptr %i.ah, align 8, !noalias !85387
  store <2 x i64> %i.aj, ptr %i.ai, align 8, !noalias !85388
  %i.ak = add nuw i64 %i.af, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %.loopexit, label %.preheader.i.i.epil, !llvm.loop !85385

.loopexit:                                        ; preds = %.loopexit.loopexit.unr-lcssa, %.preheader.i.i.epil, %bb.a
  %.sroa.4.0.i10 = phi i64 [ 0, %bb.a ], [ %i.d, %.preheader.i.i.epil ], [ %i.d, %.loopexit.loopexit.unr-lcssa ] ; 2 uses
  %.sroa.10.0.i9 = phi ptr [ inttoptr (i64 8 to ptr), %bb.a ], [ %i.g, %.preheader.i.i.epil ], [ %i.g, %.loopexit.loopexit.unr-lcssa ]
  store i64 %.sroa.4.0.i10, ptr %0, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sroa.10.0.i9, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %.sroa.4.0.i10, ptr %.sroa.5.0..sroa_idx, align 8
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RNvXs_NtNtCs40k4W9msRzi_5alloc3vec21spec_from_iter_nestedINtB6_3VecNtNtCsjjpCCFGI3ul_14lance_encoding6repdef24DefinitionInterpretationEINtB4_18SpecFromIterNestedB13_INtNtNtNtCscI6d9CVNmLh_4core4iter8adapters3rev3RevINtNtB6_9into_iter8IntoIterB13_EEE9from_iterB17_(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dead_on_return dereferenceable(32) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val4 = load ptr, ptr %i.a, align 8, !nonnull !75, !noundef !75 ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 24
  %.val5 = load ptr, ptr %i.b, align 8, !nonnull !75, !noundef !75 ; 9 uses
  %i.c = ptrtoint ptr %.val5 to i64
  %i.d = ptrtoint ptr %.val4 to i64               ; 3 uses
  %i.e = sub nuw i64 %i.c, %i.d                   ; 12 uses
  %.not.i.i = icmp slt i64 %i.e, 0
  br i1 %.not.i.i, label %bb.d, label %bb.b, !prof !80

bb.b:                                             ; preds = %bb.a
  %i.f = icmp eq ptr %.val5, %.val4
  br i1 %i.f, label %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecNtNtCsjjpCCFGI3ul_14lance_encoding6repdef24DefinitionInterpretationE7reserveBI_.exit.i.i.thread, label %bb.c

_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecNtNtCsjjpCCFGI3ul_14lance_encoding6repdef24DefinitionInterpretationE7reserveBI_.exit.i.i.thread: ; preds = %bb.b
  %.sroa.08.0.copyload18 = load ptr, ptr %1, align 8
  %.sroa.6.0..sroa_idx19 = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.sroa.6.0.copyload20 = load i64, ptr %.sroa.6.0..sroa_idx19, align 8
  br label %._crit_edge.i.i.i.i.i

bb.c:                                             ; preds = %bb.b
  tail call void @_RNvCs9hJ03s5DiqP_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #63, !noalias !85425
  %i.g = tail call noundef ptr @_RNvCs9hJ03s5DiqP_7___rustc12___rust_alloc(i64 noundef %i.e, i64 noundef range(i64 1, 17) 1) #63, !noalias !85425 ; 14 uses
  %i.h = icmp eq ptr %i.g, null
  br i1 %i.h, label %bb.d, label %iter.check

bb.d:                                             ; preds = %bb.c, %bb.a
  %.sroa.4.0.ph.i = phi i64 [ 1, %bb.c ], [ 0, %bb.a ]
  invoke void @_RNvNtCs40k4W9msRzi_5alloc7raw_vec12handle_error(i64 noundef %.sroa.4.0.ph.i, i64 %i.e) #66
          to label %.noexc unwind label %bb.f

.noexc:                                           ; preds = %bb.d
  unreachable

iter.check:                                       ; preds = %bb.c
  %.sroa.08.0.copyload = load ptr, ptr %1, align 8 ; 4 uses
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.sroa.6.0.copyload = load i64, ptr %.sroa.6.0..sroa_idx, align 8 ; 4 uses
  %min.iters.check = icmp ult i64 %i.e, 8
  br i1 %min.iters.check, label %.lr.ph.i.i.i.i.i.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %iter.check
  %scevgep = getelementptr i8, ptr %i.g, i64 %i.e
  %bound0 = icmp ult ptr %i.g, %.val5
  %bound1 = icmp ult ptr %.val4, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.i.i.i.i.i.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %vector.memcheck
  %min.iters.check25 = icmp ult i64 %i.e, 32
  br i1 %min.iters.check25, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.i = and i64 %i.e, 24
  %n.vec = and i64 %i.e, 9223372036854775776      ; 6 uses
  %i.j = sub nsw i64 0, %n.vec
  %i.k = getelementptr i8, ptr %.val5, i64 %i.j
  br label %vector.body

vector.body:                                      ; preds = %vector.ph, %vector.body
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.l = sub i64 0, %index
  %next.gep = getelementptr i8, ptr %.val5, i64 %i.l ; 2 uses
  %i.m = getelementptr inbounds i8, ptr %next.gep, i64 -16
  %i.n = getelementptr inbounds i8, ptr %next.gep, i64 -32
  %wide.load = load <16 x i8>, ptr %i.m, align 1, !alias.scope !85426, !noalias !85427
  %wide.load26 = load <16 x i8>, ptr %i.n, align 1, !alias.scope !85426, !noalias !85427
  %reverse = shufflevector <16 x i8> %wide.load, <16 x i8> poison, <16 x i32> <i32 15, i32 14, i32 13, i32 12, i32 11, i32 10, i32 9, i32 8, i32 7, i32 6, i32 5, i32 4, i32 3, i32 2, i32 1, i32 0>
  %reverse27 = shufflevector <16 x i8> %wide.load26, <16 x i8> poison, <16 x i32> <i32 15, i32 14, i32 13, i32 12, i32 11, i32 10, i32 9, i32 8, i32 7, i32 6, i32 5, i32 4, i32 3, i32 2, i32 1, i32 0>
  %i.o = getelementptr inbounds nuw i8, ptr %i.g, i64 %index ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 16
  store <16 x i8> %reverse, ptr %i.o, align 1, !alias.scope !85428, !noalias !85429
  store <16 x i8> %reverse27, ptr %i.p, align 1, !alias.scope !85428, !noalias !85429
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.q = icmp eq i64 %index.next, %n.vec
  br i1 %i.q, label %middle.block, label %vector.body, !llvm.loop !85415

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.e, %n.vec
  br i1 %cmp.n, label %._crit_edge.i.i.i.i.i, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.i, 0
  br i1 %min.epilog.iters.check, label %.lr.ph.i.i.i.i.i.preheader, label %vec.epilog.ph, !prof !85430

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec28 = and i64 %i.e, 9223372036854775800    ; 5 uses
  %i.r = sub nsw i64 0, %n.vec28
  %i.s = getelementptr i8, ptr %.val5, i64 %i.r
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index29 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next33, %vec.epilog.vector.body ] ; 3 uses
  %i.t = sub i64 0, %index29
  %next.gep30 = getelementptr i8, ptr %.val5, i64 %i.t
  %i.u = getelementptr inbounds i8, ptr %next.gep30, i64 -8
  %wide.load31 = load <8 x i8>, ptr %i.u, align 1, !alias.scope !85426, !noalias !85427
  %reverse32 = shufflevector <8 x i8> %wide.load31, <8 x i8> poison, <8 x i32> <i32 7, i32 6, i32 5, i32 4, i32 3, i32 2, i32 1, i32 0>
  %i.v = getelementptr inbounds nuw i8, ptr %i.g, i64 %index29
  store <8 x i8> %reverse32, ptr %i.v, align 1, !alias.scope !85428, !noalias !85429
  %index.next33 = add nuw i64 %index29, 8         ; 2 uses
  %i.w = icmp eq i64 %index.next33, %n.vec28
  br i1 %i.w, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !85416

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n34 = icmp eq i64 %i.e, %n.vec28
  br i1 %cmp.n34, label %._crit_edge.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.preheader:                       ; preds = %iter.check, %vector.memcheck, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.ph = phi i64 [ 0, %iter.check ], [ 0, %vector.memcheck ], [ %n.vec, %vec.epilog.iter.check ], [ %n.vec28, %vec.epilog.middle.block ] ; 2 uses
  %.ph37 = phi ptr [ %.val5, %iter.check ], [ %.val5, %vector.memcheck ], [ %i.k, %vec.epilog.iter.check ], [ %i.s, %vec.epilog.middle.block ] ; 3 uses
  %.ph3738 = ptrtoaddr ptr %.ph37 to i64          ; 2 uses
  %i.x = sub i64 %.ph3738, %i.d
  %xtraiter = and i64 %i.x, 3                     ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.prol

.lr.ph.i.i.i.i.i.prol:                            ; preds = %.lr.ph.i.i.i.i.i.preheader, %.lr.ph.i.i.i.i.i.prol
  %i.y = phi i64 [ %i.ad, %.lr.ph.i.i.i.i.i.prol ], [ %.ph, %.lr.ph.i.i.i.i.i.preheader ] ; 2 uses
  %i.z = phi ptr [ %i.aa, %.lr.ph.i.i.i.i.i.prol ], [ %.ph37, %.lr.ph.i.i.i.i.i.preheader ]
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.i.i.i.i.prol ], [ 0, %.lr.ph.i.i.i.i.i.preheader ]
  %i.aa = getelementptr inbounds i8, ptr %i.z, i64 -1 ; 3 uses
  %i.ab = load i8, ptr %i.aa, align 1, !range !86, !noalias !85427, !noundef !75
  %i.ac = getelementptr inbounds nuw i8, ptr %i.g, i64 %i.y
  store i8 %i.ab, ptr %i.ac, align 1, !noalias !85431
  %i.ad = add nuw i64 %i.y, 1                     ; 3 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.prol, !llvm.loop !85417

.lr.ph.i.i.i.i.i.prol.loopexit:                   ; preds = %.lr.ph.i.i.i.i.i.prol, %.lr.ph.i.i.i.i.i.preheader
  %.lcssa.unr = phi i64 [ poison, %.lr.ph.i.i.i.i.i.preheader ], [ %i.ad, %.lr.ph.i.i.i.i.i.prol ]
  %.unr = phi i64 [ %.ph, %.lr.ph.i.i.i.i.i.preheader ], [ %i.ad, %.lr.ph.i.i.i.i.i.prol ]
  %.unr39 = phi ptr [ %.ph37, %.lr.ph.i.i.i.i.i.preheader ], [ %i.aa, %.lr.ph.i.i.i.i.i.prol ]
  %i.ae = sub i64 %i.d, %.ph3738
  %i.af = icmp ugt i64 %i.ae, -4
  br i1 %i.af, label %._crit_edge.i.i.i.i.i, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %.lr.ph.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i.i
  %i.ag = phi i64 [ %i.ax, %.lr.ph.i.i.i.i.i ], [ %.unr, %.lr.ph.i.i.i.i.i.prol.loopexit ] ; 5 uses
  %i.ah = phi ptr [ %i.at, %.lr.ph.i.i.i.i.i ], [ %.unr39, %.lr.ph.i.i.i.i.i.prol.loopexit ] ; 4 uses
  %i.ai = getelementptr inbounds i8, ptr %i.ah, i64 -1
  %i.aj = load i8, ptr %i.ai, align 1, !range !86, !noalias !85427, !noundef !75
  %i.ak = getelementptr inbounds nuw i8, ptr %i.g, i64 %i.ag
  store i8 %i.aj, ptr %i.ak, align 1, !noalias !85431
  %i.al = getelementptr inbounds i8, ptr %i.ah, i64 -2
  %i.am = load i8, ptr %i.al, align 1, !range !86, !noalias !85427, !noundef !75
  %i.an = getelementptr inbounds nuw i8, ptr %i.g, i64 %i.ag
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 1
  store i8 %i.am, ptr %i.ao, align 1, !noalias !85431
  %i.ap = getelementptr inbounds i8, ptr %i.ah, i64 -3
  %i.aq = load i8, ptr %i.ap, align 1, !range !86, !noalias !85427, !noundef !75
  %i.ar = getelementptr inbounds nuw i8, ptr %i.g, i64 %i.ag
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 2
  store i8 %i.aq, ptr %i.as, align 1, !noalias !85431
  %i.at = getelementptr inbounds i8, ptr %i.ah, i64 -4 ; 3 uses
  %i.au = load i8, ptr %i.at, align 1, !range !86, !noalias !85427, !noundef !75
  %i.av = getelementptr inbounds nuw i8, ptr %i.g, i64 %i.ag
  %i.aw = getelementptr inbounds nuw i8, ptr %i.av, i64 3
  store i8 %i.au, ptr %i.aw, align 1, !noalias !85431
  %i.ax = add nuw i64 %i.ag, 4                    ; 2 uses
  %i.ay = icmp eq ptr %.val4, %i.at
  br i1 %i.ay, label %._crit_edge.i.i.i.i.i, label %.lr.ph.i.i.i.i.i, !llvm.loop !85418

._crit_edge.i.i.i.i.i:                            ; preds = %.lr.ph.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i.i, %middle.block, %vec.epilog.middle.block, %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecNtNtCsjjpCCFGI3ul_14lance_encoding6repdef24DefinitionInterpretationE7reserveBI_.exit.i.i.thread
  %.sroa.6.0.copyload23 = phi i64 [ %.sroa.6.0.copyload20, %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecNtNtCsjjpCCFGI3ul_14lance_encoding6repdef24DefinitionInterpretationE7reserveBI_.exit.i.i.thread ], [ %.sroa.6.0.copyload, %middle.block ], [ %.sroa.6.0.copyload, %vec.epilog.middle.block ], [ %.sroa.6.0.copyload, %.lr.ph.i.i.i.i.i ], [ %.sroa.6.0.copyload, %.lr.ph.i.i.i.i.i.prol.loopexit ] ; 2 uses
  %.sroa.08.0.copyload22 = phi ptr [ %.sroa.08.0.copyload18, %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecNtNtCsjjpCCFGI3ul_14lance_encoding6repdef24DefinitionInterpretationE7reserveBI_.exit.i.i.thread ], [ %.sroa.08.0.copyload, %middle.block ], [ %.sroa.08.0.copyload, %vec.epilog.middle.block ], [ %.sroa.08.0.copyload, %.lr.ph.i.i.i.i.i ], [ %.sroa.08.0.copyload, %.lr.ph.i.i.i.i.i.prol.loopexit ] ; 2 uses
  %.sroa.10.0.i21 = phi ptr [ inttoptr (i64 1 to ptr), %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecNtNtCsjjpCCFGI3ul_14lance_encoding6repdef24DefinitionInterpretationE7reserveBI_.exit.i.i.thread ], [ %i.g, %middle.block ], [ %i.g, %vec.epilog.middle.block ], [ %i.g, %.lr.ph.i.i.i.i.i ], [ %i.g, %.lr.ph.i.i.i.i.i.prol.loopexit ]
  %.val7.i.i.i.i.i = phi i64 [ 0, %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecNtNtCsjjpCCFGI3ul_14lance_encoding6repdef24DefinitionInterpretationE7reserveBI_.exit.i.i.thread ], [ %n.vec, %middle.block ], [ %n.vec28, %vec.epilog.middle.block ], [ %.lcssa.unr, %.lr.ph.i.i.i.i.i.prol.loopexit ], [ %i.ax, %.lr.ph.i.i.i.i.i ]
  %i.az = icmp eq i64 %.sroa.6.0.copyload23, 0
  br i1 %i.az, label %_RNvXs_NtNtCs40k4W9msRzi_5alloc3vec11spec_extendINtB6_3VecNtNtCsjjpCCFGI3ul_14lance_encoding6repdef24DefinitionInterpretationEINtB4_10SpecExtendBT_INtNtNtNtCscI6d9CVNmLh_4core4iter8adapters3rev3RevINtNtB6_9into_iter8IntoIterBT_EEE11spec_extendBX_.exit, label %bb.e

bb.e:                                             ; preds = %._crit_edge.i.i.i.i.i
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.08.0.copyload22) ]
  tail call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.08.0.copyload22, i64 noundef %.sroa.6.0.copyload23, i64 noundef range(i64 1, -9223372036854775807) 1) #63, !noalias !85432
  br label %_RNvXs_NtNtCs40k4W9msRzi_5alloc3vec11spec_extendINtB6_3VecNtNtCsjjpCCFGI3ul_14lance_encoding6repdef24DefinitionInterpretationEINtB4_10SpecExtendBT_INtNtNtNtCscI6d9CVNmLh_4core4iter8adapters3rev3RevINtNtB6_9into_iter8IntoIterBT_EEE11spec_extendBX_.exit

_RNvXs_NtNtCs40k4W9msRzi_5alloc3vec11spec_extendINtB6_3VecNtNtCsjjpCCFGI3ul_14lance_encoding6repdef24DefinitionInterpretationEINtB4_10SpecExtendBT_INtNtNtNtCscI6d9CVNmLh_4core4iter8adapters3rev3RevINtNtB6_9into_iter8IntoIterBT_EEE11spec_extendBX_.exit: ; preds = %bb.e, %._crit_edge.i.i.i.i.i
  store i64 %i.e, ptr %0, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sroa.10.0.i21, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.6.0..sroa_idx14 = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %.val7.i.i.i.i.i, ptr %.sroa.6.0..sroa_idx14, align 8
  ret void

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters3rev3RevINtNtNtCs40k4W9msRzi_5alloc3vec9into_iter8IntoIterNtNtCsjjpCCFGI3ul_14lance_encoding6repdef24DefinitionInterpretationEEEB21_.exit: ; preds = %bb.g, %bb.f
  resume { ptr, i32 } %i.ba

bb.f:                                             ; preds = %bb.d
  %i.ba = landingpad { ptr, i32 }
          cleanup
  %i.bb = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.val7 = load i64, ptr %i.bb, align 8, !alias.scope !85433, !noundef !75 ; 2 uses
  %i.bc = icmp eq i64 %.val7, 0
  br i1 %i.bc, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters3rev3RevINtNtNtCs40k4W9msRzi_5alloc3vec9into_iter8IntoIterNtNtCsjjpCCFGI3ul_14lance_encoding6repdef24DefinitionInterpretationEEEB21_.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %.val6 = load ptr, ptr %1, align 8, !nonnull !75, !noundef !75
  tail call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.val6, i64 noundef %.val7, i64 noundef range(i64 1, -9223372036854775807) 1) #63, !noalias !85434
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters3rev3RevINtNtNtCs40k4W9msRzi_5alloc3vec9into_iter8IntoIterNtNtCsjjpCCFGI3ul_14lance_encoding6repdef24DefinitionInterpretationEEEB21_.exit
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RNvXs_NtNtCs40k4W9msRzi_5alloc3vec21spec_from_iter_nestedINtB6_3VecRNtNtNtCs4ytUTZt2Gw9_11arrow_array5array12struct_array11StructArrayEINtB4_18SpecFromIterNestedB13_INtNtNtNtCscI6d9CVNmLh_4core4iter8adapters3map3MapINtNtNtB2M_5slice4iter4IterINtNtB8_4sync3ArcDNtB18_5ArrayEL_EENCNvMsq_NtCsjjpCCFGI3ul_14lance_encoding4dataNtB4z_9DataBlock11from_arrayss0_0EE9from_iterB4B_(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(24) %0, ptr noundef nonnull %1, ptr noundef nonnull %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = ptrtoint ptr %2 to i64
  %i.b = ptrtoint ptr %1 to i64
  %i.c = sub nuw i64 %i.a, %i.b                   ; 3 uses
  %i.d = lshr exact i64 %i.c, 4                   ; 2 uses
  %i.e = lshr exact i64 %i.c, 1                   ; 2 uses
  %i.f = icmp eq ptr %2, %1
  br i1 %i.f, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvCs9hJ03s5DiqP_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #63, !noalias !85455
  %i.g = tail call noundef align 8 ptr @_RNvCs9hJ03s5DiqP_7___rustc12___rust_alloc(i64 noundef %i.e, i64 noundef range(i64 1, 17) 8) #63, !noalias !85455 ; 4 uses
  %i.h = icmp eq ptr %i.g, null
  br i1 %i.h, label %bb.c, label %.preheader.i.i

bb.c:                                             ; preds = %bb.b
  tail call void @_RNvNtCs40k4W9msRzi_5alloc7raw_vec12handle_error(i64 noundef 8, i64 %i.e) #66
  unreachable

.preheader.i.i:                                   ; preds = %bb.b, %bb.e
  %.val15.i.i.i.i.i = phi i64 [ %i.l, %bb.e ], [ 0, %bb.b ] ; 3 uses
  %i.i = getelementptr inbounds nuw [16 x i8], ptr %1, i64 %.val15.i.i.i.i.i
  %i.j = invoke noundef align 8 ptr @_RNvXs1_NtCs4ytUTZt2Gw9_11arrow_array4castINtNtCs40k4W9msRzi_5alloc4sync3ArcDNtNtB7_5array5ArrayEL_ENtB5_7AsArray13as_struct_opt(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.i)
          to label %.noexc.i.i.i.i.i unwind label %.loopexit.i.i.i.i.i, !noalias !85456 ; 2 uses

.noexc.i.i.i.i.i:                                 ; preds = %.preheader.i.i
  %.not.i.i.i.i.i.i.i.i = icmp eq ptr %i.j, null
  br i1 %.not.i.i.i.i.i.i.i.i, label %bb.d, label %bb.e, !prof !81

bb.d:                                             ; preds = %.noexc.i.i.i.i.i
  invoke void @_RNvNtCscI6d9CVNmLh_4core6option13expect_failed(ptr noalias noundef nonnull readonly captures(address, read_provenance) @4579, i64 noundef 12, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @4580) #66
          to label %.noexc16.i.i.i.i.i unwind label %.loopexit.split-lp.i.i.i.i.i, !noalias !85456

.noexc16.i.i.i.i.i:                               ; preds = %bb.d
  unreachable

bb.e:                                             ; preds = %.noexc.i.i.i.i.i
  %i.k = getelementptr inbounds nuw [8 x i8], ptr %i.g, i64 %.val15.i.i.i.i.i
  store ptr %i.j, ptr %i.k, align 8, !noalias !85457
  %i.l = add i64 %.val15.i.i.i.i.i, 1             ; 2 uses
  %i.m = icmp eq i64 %i.l, %i.d
  br i1 %i.m, label %.loopexit, label %.preheader.i.i

.loopexit.i.i.i.i.i:                              ; preds = %.preheader.i.i
  %lpad.loopexit.i.i.i.i.i = landingpad { ptr, i32 }
          cleanup
  br label %.body

.loopexit.split-lp.i.i.i.i.i:                     ; preds = %bb.d
  %lpad.loopexit.split-lp.i.i.i.i.i = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %.loopexit.split-lp.i.i.i.i.i, %.loopexit.i.i.i.i.i
  %lpad.phi.i.i.i.i.i = phi { ptr, i32 } [ %lpad.loopexit.i.i.i.i.i, %.loopexit.i.i.i.i.i ], [ %lpad.loopexit.split-lp.i.i.i.i.i, %.loopexit.split-lp.i.i.i.i.i ]
  %i.n = lshr exact i64 %i.c, 1
  tail call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %i.g, i64 noundef %i.n, i64 noundef range(i64 1, -9223372036854775807) 8) #63
  resume { ptr, i32 } %lpad.phi.i.i.i.i.i

.loopexit:                                        ; preds = %bb.e, %bb.a
  %.sroa.4.0.i21 = phi i64 [ 0, %bb.a ], [ %i.d, %bb.e ] ; 2 uses
  %.sroa.10.0.i20 = phi ptr [ inttoptr (i64 8 to ptr), %bb.a ], [ %i.g, %bb.e ]
  store i64 %.sroa.4.0.i21, ptr %0, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sroa.10.0.i20, ptr %.sroa.5.0..sroa_idx, align 8
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %.sroa.4.0.i21, ptr %.sroa.7.0..sroa_idx, align 8
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RNvXs_NtNtCs40k4W9msRzi_5alloc3vec21spec_from_iter_nestedINtB6_3VecmEINtB4_18SpecFromIterNestedmINtNtNtNtCscI6d9CVNmLh_4core4iter8adapters3map3MapINtNtNtB1F_5slice4iter4IteryENCNvXs4_NtNtNtCsjjpCCFGI3ul_14lance_encoding9encodings8physical6packedNtB2V_35PackedStructVariablePerValueEncoderNtNtNtNtB2Z_7logical9primitive7fullzip18PerValueCompressor8compresss_0EE9from_iterB31_(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(24) %0, ptr noundef nonnull %1, ptr noundef nonnull %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = ptrtoint ptr %2 to i64
  %i.b = ptrtoint ptr %1 to i64
  %i.c = sub i64 %i.a, %i.b                       ; 3 uses
  %i.d = lshr i64 %i.c, 3                         ; 5 uses
  %i.e = lshr exact i64 %i.c, 1                   ; 2 uses
  %i.f = icmp eq ptr %2, %1
  br i1 %i.f, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvCs9hJ03s5DiqP_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #63, !noalias !85478
  %i.g = tail call noundef align 4 ptr @_RNvCs9hJ03s5DiqP_7___rustc12___rust_alloc(i64 noundef %i.e, i64 noundef range(i64 1, 17) 4) #63, !noalias !85478 ; 5 uses
  %i.h = icmp eq ptr %i.g, null
  br i1 %i.h, label %bb.c, label %.preheader.i.i.preheader

bb.c:                                             ; preds = %bb.b
  tail call void @_RNvNtCs40k4W9msRzi_5alloc7raw_vec12handle_error(i64 noundef 4, i64 %i.e) #66
  unreachable

.preheader.i.i.preheader:                         ; preds = %bb.b
  %min.iters.check = icmp ult i64 %i.c, 32
  br i1 %min.iters.check, label %.preheader.i.i.preheader14, label %vector.ph

vector.ph:                                        ; preds = %.preheader.i.i.preheader
  %n.vec = and i64 %i.d, 2305843009213693948      ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.i = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %index ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  %wide.load = load <2 x i64>, ptr %i.i, align 8, !noalias !85479
  %wide.load13 = load <2 x i64>, ptr %i.j, align 8, !noalias !85479
end_hunk_14
begin_hunk_15_@_RNvXsi_NtNtNtCsjjpCCFGI3ul_14lance_encoding14array_encoding7logical6structNtB5_22SimpleStructDecodeTaskNtNtBb_7decoder15DecodeArrayTask6decode:bb.a

bb.aq:                                            ; preds = %bb.ap
  fence acquire
  invoke void @_RNvMsn_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcSIBx_NtNtCs8SUNSmrkv52_12arrow_schema5field5FieldEE9drop_slowBP_(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.ec)
          to label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs8SUNSmrkv52_12arrow_schema6fields6FieldsECsjjpCCFGI3ul_14lance_encoding.exit unwind label %bb.ba

bb.ar:                                            ; preds = %bb.al
  %.sroa.7.8..sroa_idx52 = getelementptr inbounds nuw i8, ptr %.sroa.7, i64 7 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(24) %.sroa.7.8..sroa_idx52, ptr noundef nonnull align 8 dereferenceable(24) %i.l, i64 24, i1 false), !noalias !91508
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l), !noalias !91444
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m), !noalias !91444
  %.sroa.6.8..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.6, i64 7 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(24) %.sroa.6.8..sroa_idx, ptr noundef nonnull align 1 dereferenceable(24) %.sroa.7.8..sroa_idx52, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.7)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.10)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.s, ptr noundef nonnull align 1 dereferenceable(24) %.sroa.6.8..sroa_idx, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.615)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r)
  %i.eg = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.eh = load ptr, ptr %i.eg, align 8, !nonnull !75, !noundef !75
  %i.ei = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.ej = load i64, ptr %i.ei, align 8, !noundef !75
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q)
  store ptr null, ptr %i.q, align 8
  invoke void @_RNvMNtNtCs4ytUTZt2Gw9_11arrow_array5array12struct_arrayNtB2_11StructArray7try_new(ptr noalias noundef nonnull sret([104 x i8]) align 8 captures(address) dereferenceable(104) %i.r, ptr noundef nonnull %i.eh, i64 noundef %i.ej, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.s, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(48) %i.q)
          to label %bb.as unwind label %.body.thread65

bb.as:                                            ; preds = %bb.ar
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q)
  %i.ek = load i64, ptr %i.r, align 8, !range !99, !noundef !75 ; 2 uses
  %i.el = icmp eq i64 %i.ek, -1
  %i.em = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.615, ptr noundef nonnull align 8 dereferenceable(32) %i.em, i64 32, i1 false)
  br i1 %i.el, label %bb.at, label %bb.au

bb.at:                                            ; preds = %bb.as
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.o, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.615, i64 32, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n)
  invoke void @_RNvXs6_NtCs63DIHKhvmTb_10lance_core5errorNtB5_5ErrorINtNtCscI6d9CVNmLh_4core7convert4FromNtNtCs8SUNSmrkv52_12arrow_schema5error10ArrowErrorE4from(ptr noalias noundef nonnull sret([56 x i8]) align 8 captures(none) dereferenceable(56) %i.n, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(32) %i.o, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @4392)
          to label %bb.az unwind label %.body.thread65

bb.au:                                            ; preds = %bb.as
  %.sroa.532.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.r, i64 40
  %.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.p, i64 56
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %.sroa.3.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(64) %.sroa.532.0..sroa_idx, i64 64, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r)
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.p, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.2.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.615, i64 32, i1 false)
  store i64 1, ptr %i.p, align 8
  %i.en = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  store i64 1, ptr %i.en, align 8
  %i.eo = getelementptr inbounds nuw i8, ptr %i.p, i64 16 ; 2 uses
  store i64 %i.ek, ptr %i.eo, align 8
  call void @_RNvCs9hJ03s5DiqP_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #63, !noalias !91513
  %i.ep = call noundef align 8 dereferenceable_or_null(120) ptr @_RNvCs9hJ03s5DiqP_7___rustc12___rust_alloc(i64 noundef 120, i64 noundef range(i64 1, -9223372036854775807) 8) #63, !noalias !91513 ; 3 uses
  %i.eq = icmp eq ptr %i.ep, null
  br i1 %i.eq, label %bb.av, label %bb.ay, !prof !77

bb.av:                                            ; preds = %bb.au
  invoke void @_RNvNtCs40k4W9msRzi_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 120) #66
          to label %.noexc43 unwind label %bb.aw

.noexc43:                                         ; preds = %bb.av
  unreachable

bb.aw:                                            ; preds = %bb.av
  %i.er = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtNtCs4ytUTZt2Gw9_11arrow_array5array12struct_array11StructArrayECsjjpCCFGI3ul_14lance_encoding(ptr noalias noundef nonnull align 8 dereferenceable(104) %i.eo)
          to label %.body.thread61 unwind label %bb.ax

bb.ax:                                            ; preds = %bb.aw
  %i.es = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #68
  unreachable

bb.ay:                                            ; preds = %bb.au
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(120) %i.ep, ptr noundef nonnull align 8 dereferenceable(120) %i.p, i64 120, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p)
  %i.et = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.ep, ptr %i.et, align 8
  %.sroa.511.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr @1673, ptr %.sroa.511.0..sroa_idx, align 8
  %.sroa.612.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 0, ptr %.sroa.612.0..sroa_idx, align 8
  store i8 -1, ptr %0, align 8
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs8SUNSmrkv52_12arrow_schema6fields6FieldsECsjjpCCFGI3ul_14lance_encoding.exit.sink.split

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs8SUNSmrkv52_12arrow_schema6fields6FieldsECsjjpCCFGI3ul_14lance_encoding.exit.sink.split: ; preds = %bb.ay, %bb.az
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.615)
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs8SUNSmrkv52_12arrow_schema6fields6FieldsECsjjpCCFGI3ul_14lance_encoding.exit

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs8SUNSmrkv52_12arrow_schema6fields6FieldsECsjjpCCFGI3ul_14lance_encoding.exit: ; preds = %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs8SUNSmrkv52_12arrow_schema6fields6FieldsECsjjpCCFGI3ul_14lance_encoding.exit.sink.split, %bb.aq, %bb.ap
  call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %1, i64 noundef 40, i64 noundef 8) #63
  ret void

bb.az:                                            ; preds = %bb.at
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr noundef nonnull align 8 dereferenceable(56) %i.n, i64 56, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o)
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs8SUNSmrkv52_12arrow_schema6fields6FieldsECsjjpCCFGI3ul_14lance_encoding.exit.sink.split

bb.ba:                                            ; preds = %bb.aq
  %i.eu = landingpad { ptr, i32 }
          cleanup
  br label %.body.thread61

bb.bb:                                            ; preds = %bb.bc
  %i.ev = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #68
  unreachable

.body.thread61:                                   ; preds = %.body.thread65, %bb.aw, %bb.bc, %.body.thread, %bb.ba
  %.pn = phi { ptr, i32 } [ %i.eu, %bb.ba ], [ %i.er, %bb.aw ], [ %lpad.thr_comm, %.body.thread65 ], [ %eh.lpad-body60, %bb.bc ], [ %eh.lpad-body60, %.body.thread ]
  call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %1, i64 noundef 40, i64 noundef 8) #63
  resume { ptr, i32 } %.pn

.body.thread:                                     ; preds = %.body.i, %bb.ao, %.body
  %eh.lpad-body60 = phi { ptr, i32 } [ %lpad.thr_comm.split-lp, %.body ], [ %.pn.i.i.i.i.i, %bb.ao ], [ %.pn.i.i.i.i.i, %.body.i ] ; 2 uses
  %i.ew = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !91514)
  call void @llvm.experimental.noalias.scope.decl(metadata !91515)
  call void @llvm.experimental.noalias.scope.decl(metadata !91516)
  %i.ex = load ptr, ptr %i.ew, align 8, !alias.scope !91517, !nonnull !75, !noundef !75
  %i.ey = atomicrmw sub ptr %i.ex, i64 1 release, align 8, !noalias !91517
  %i.ez = icmp eq i64 %i.ey, 1
  br i1 %i.ez, label %bb.bc, label %.body.thread61

bb.bc:                                            ; preds = %.body.thread
  fence acquire
  invoke void @_RNvMsn_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcSIBx_NtNtCs8SUNSmrkv52_12arrow_schema5field5FieldEE9drop_slowBP_(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.ew)
          to label %.body.thread61 unwind label %bb.bb
}

; Function Attrs: nonlazybind uwtable
define void @_RNvXsi_NtNtNtCsjjpCCFGI3ul_14lance_encoding9encodings7logical9primitiveNtB5_27SimpleAllNullDecodePageTaskNtNtBb_7decoder14DecodePageTask6decode(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([232 x i8]) align 8 captures(none) dereferenceable(232) %0, ptr noalias noundef nonnull align 8 captures(address) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = alloca [24 x i8], align 8                ; 4 uses
  %i.c = alloca [152 x i8], align 8               ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store i64 -1, ptr %i.b, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.d = load i64, ptr %1, align 8, !noundef !75  ; 11 uses
  %i.e = shl i64 %i.d, 1                          ; 4 uses
  %i.f = icmp slt i64 %i.d, 0
  %.not.i6.i = icmp ugt i64 %i.e, 9223372036854775806
  %or.cond.i.i = or i1 %i.f, %.not.i6.i
  br i1 %or.cond.i.i, label %bb.d, label %bb.b, !prof !80

bb.b:                                             ; preds = %bb.a
  %i.g = icmp eq i64 %i.e, 0
  br i1 %i.g, label %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VectE7reserveCsjjpCCFGI3ul_14lance_encoding.exit.i.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call void @_RNvCs9hJ03s5DiqP_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #63, !noalias !91527
  %i.h = tail call noundef align 2 ptr @_RNvCs9hJ03s5DiqP_7___rustc12___rust_alloc(i64 noundef %i.e, i64 noundef range(i64 1, 17) 2) #63, !noalias !91527 ; 2 uses
  %i.i = icmp eq ptr %i.h, null
  br i1 %i.i, label %bb.d, label %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VectE7reserveCsjjpCCFGI3ul_14lance_encoding.exit.i.i

bb.d:                                             ; preds = %bb.c, %bb.a
  %.sroa.4.0.ph.i.i = phi i64 [ 2, %bb.c ], [ 0, %bb.a ]
  invoke void @_RNvNtCs40k4W9msRzi_5alloc7raw_vec12handle_error(i64 noundef %.sroa.4.0.ph.i.i, i64 %i.e) #66
          to label %.noexc unwind label %bb.e

.noexc:                                           ; preds = %bb.d
  unreachable

_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VectE7reserveCsjjpCCFGI3ul_14lance_encoding.exit.i.i: ; preds = %bb.c, %bb.b
  %.sroa.10.0.i.i = phi ptr [ inttoptr (i64 2 to ptr), %bb.b ], [ %i.h, %bb.c ] ; 8 uses
  %.sroa.4.0.i.i = phi i64 [ 0, %bb.b ], [ %i.d, %bb.c ] ; 4 uses
  %i.j = icmp samesign ule i64 %i.d, %.sroa.4.0.i.i
  tail call void @llvm.assume(i1 %i.j)
  %i.k = icmp samesign ugt i64 %i.d, 1
  br i1 %i.k, label %iter.check, label %._crit_edge.i.i

iter.check:                                       ; preds = %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VectE7reserveCsjjpCCFGI3ul_14lance_encoding.exit.i.i
  %i.l = add nsw i64 %i.d, -1                     ; 5 uses
  %min.iters.check = icmp ult i64 %i.d, 5
  br i1 %min.iters.check, label %.lr.ph.i.i.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check35 = icmp ult i64 %i.d, 17
  br i1 %min.iters.check35, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.m = and i64 %i.l, 12
  %n.vec = and i64 %i.l, -16                      ; 5 uses
  %i.n = shl i64 %n.vec, 1
  %i.o = getelementptr i8, ptr %.sroa.10.0.i.i, i64 %i.n ; 2 uses
  %i.p = or disjoint i64 %n.vec, 1
  br label %vector.body

vector.body:                                      ; preds = %vector.ph, %vector.body
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.q = shl i64 %index, 1
  %next.gep = getelementptr i8, ptr %.sroa.10.0.i.i, i64 %i.q ; 2 uses
  %i.r = getelementptr i8, ptr %next.gep, i64 16
  store <8 x i16> splat (i16 1), ptr %next.gep, align 2, !noalias !91528
  store <8 x i16> splat (i16 1), ptr %i.r, align 2, !noalias !91528
  %index.next = add nuw i64 %index, 16            ; 2 uses
  %i.s = icmp eq i64 %index.next, %n.vec
  br i1 %i.s, label %middle.block, label %vector.body, !llvm.loop !91524

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.l, %n.vec
  br i1 %cmp.n, label %._crit_edge.thread.i.i, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.m, 0
  br i1 %min.epilog.iters.check, label %.lr.ph.i.i.preheader, label %vec.epilog.ph, !prof !101

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec37 = and i64 %i.l, -4                     ; 4 uses
  %i.t = shl i64 %n.vec37, 1
  %i.u = getelementptr i8, ptr %.sroa.10.0.i.i, i64 %i.t ; 2 uses
  %i.v = or disjoint i64 %n.vec37, 1
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index38 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next40, %vec.epilog.vector.body ] ; 2 uses
  %i.w = shl i64 %index38, 1
  %next.gep39 = getelementptr i8, ptr %.sroa.10.0.i.i, i64 %i.w
  store <4 x i16> splat (i16 1), ptr %next.gep39, align 2, !noalias !91528
  %index.next40 = add nuw i64 %index38, 4         ; 2 uses
  %i.x = icmp eq i64 %index.next40, %n.vec37
  br i1 %i.x, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !91525

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n41 = icmp eq i64 %i.l, %n.vec37
  br i1 %cmp.n41, label %._crit_edge.thread.i.i, label %.lr.ph.i.i.preheader

.lr.ph.i.i.preheader:                             ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.sroa.0.021.i.i.ph = phi ptr [ %.sroa.10.0.i.i, %iter.check ], [ %i.o, %vec.epilog.iter.check ], [ %i.u, %vec.epilog.middle.block ]
  %.sroa.03.020.i.i.ph = phi i64 [ 1, %iter.check ], [ %i.p, %vec.epilog.iter.check ], [ %i.v, %vec.epilog.middle.block ]
  br label %.lr.ph.i.i

._crit_edge.i.i:                                  ; preds = %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VectE7reserveCsjjpCCFGI3ul_14lance_encoding.exit.i.i
  %.not.i.i = icmp eq i64 %i.d, 0
  br i1 %.not.i.i, label %_RINvXs_NtNtCs40k4W9msRzi_5alloc3vec14spec_from_elemtNtB5_12SpecFromElem9from_elemNtNtB9_5alloc6GlobalECsjjpCCFGI3ul_14lance_encoding.exit, label %._crit_edge.thread.i.i

._crit_edge.thread.i.i:                           ; preds = %.lr.ph.i.i, %middle.block, %vec.epilog.middle.block, %._crit_edge.i.i
  %.sroa.0.0.lcssa28.i.i = phi ptr [ %.sroa.10.0.i.i, %._crit_edge.i.i ], [ %i.u, %vec.epilog.middle.block ], [ %i.o, %middle.block ], [ %i.z, %.lr.ph.i.i ]
  store i16 1, ptr %.sroa.0.0.lcssa28.i.i, align 2, !noalias !91528
  br label %_RINvXs_NtNtCs40k4W9msRzi_5alloc3vec14spec_from_elemtNtB5_12SpecFromElem9from_elemNtNtB9_5alloc6GlobalECsjjpCCFGI3ul_14lance_encoding.exit

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.preheader, %.lr.ph.i.i
  %.sroa.0.021.i.i = phi ptr [ %i.z, %.lr.ph.i.i ], [ %.sroa.0.021.i.i.ph, %.lr.ph.i.i.preheader ] ; 2 uses
  %.sroa.03.020.i.i = phi i64 [ %i.y, %.lr.ph.i.i ], [ %.sroa.03.020.i.i.ph, %.lr.ph.i.i.preheader ]
  %i.y = add nuw i64 %.sroa.03.020.i.i, 1         ; 2 uses
  store i16 1, ptr %.sroa.0.021.i.i, align 2, !noalias !91528
  %i.z = getelementptr inbounds nuw i8, ptr %.sroa.0.021.i.i, i64 2 ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %i.y, %i.d
  br i1 %exitcond.not.i.i, label %._crit_edge.thread.i.i, label %.lr.ph.i.i, !llvm.loop !91526

bb.e:                                             ; preds = %bb.d
  %i.aa = landingpad { ptr, i32 }
          cleanup
  br label %bb.l

_RINvXs_NtNtCs40k4W9msRzi_5alloc3vec14spec_from_elemtNtB5_12SpecFromElem9from_elemNtNtB9_5alloc6GlobalECsjjpCCFGI3ul_14lance_encoding.exit: ; preds = %._crit_edge.thread.i.i, %._crit_edge.i.i
  store i64 %.sroa.4.0.i.i, ptr %i.a, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr %.sroa.10.0.i.i, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store i64 %i.d, ptr %.sroa.5.0..sroa_idx, align 8
  tail call void @_RNvCs9hJ03s5DiqP_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #63
  %i.ab = tail call noundef align 8 dereferenceable_or_null(24) ptr @_RNvCs9hJ03s5DiqP_7___rustc12___rust_alloc(i64 noundef 24, i64 noundef range(i64 1, -9223372036854775807) 8) #63 ; 5 uses
  %i.ac = icmp eq ptr %i.ab, null
  br i1 %i.ac, label %bb.f, label %bb.h, !prof !77

bb.f:                                             ; preds = %_RINvXs_NtNtCs40k4W9msRzi_5alloc3vec14spec_from_elemtNtB5_12SpecFromElem9from_elemNtNtB9_5alloc6GlobalECsjjpCCFGI3ul_14lance_encoding.exit
  invoke void @_RNvNtCs40k4W9msRzi_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 24) #66
          to label %.noexc17 unwind label %bb.j

.noexc17:                                         ; preds = %bb.f
  unreachable

bb.g:                                             ; preds = %bb.h
  %i.ad = landingpad { ptr, i32 }
          cleanup
  br label %bb.l

bb.h:                                             ; preds = %_RINvXs_NtNtCs40k4W9msRzi_5alloc3vec14spec_from_elemtNtB5_12SpecFromElem9from_elemNtNtB9_5alloc6GlobalECsjjpCCFGI3ul_14lance_encoding.exit
  store i64 1, ptr %i.ab, align 8
  %.sroa.424.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ab, i64 8
  store i64 1, ptr %.sroa.424.0..sroa_idx, align 8
  %.sroa.525.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ab, i64 16
  store i8 2, ptr %.sroa.525.0..sroa_idx, align 8
  %i.ae = load i64, ptr %1, align 8, !noundef !75 ; 2 uses
  invoke void @_RNvMs5_NtCsjjpCCFGI3ul_14lance_encoding6repdefNtB5_15RepDefUnraveler3new(ptr noalias noundef nonnull sret([152 x i8]) align 8 captures(none) dereferenceable(152) %i.c, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.b, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.a, ptr noundef nonnull %i.ab, i64 noundef 1, i64 noundef %i.ae)
          to label %bb.i unwind label %bb.g

bb.i:                                             ; preds = %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(152) %0, ptr noundef nonnull align 8 dereferenceable(152) %i.c, i64 152, i1 false)
  %.sroa.43.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 152
  store i64 -9223372036854775806, ptr %.sroa.43.0..sroa_idx, align 8
  %.sroa.54.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 160
  store i64 %i.ae, ptr %.sroa.54.0..sroa_idx, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  tail call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %1, i64 noundef 8, i64 noundef 8) #63
  ret void

bb.j:                                             ; preds = %bb.f
  %i.af = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %.not = icmp eq i64 %.sroa.4.0.i.i, 0
  br i1 %.not, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ag = shl nuw i64 %.sroa.4.0.i.i, 1
  tail call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.10.0.i.i, i64 noundef %i.ag, i64 noundef range(i64 1, -9223372036854775807) 2) #63
  br label %bb.l

bb.l:                                             ; preds = %bb.g, %bb.k, %bb.j, %bb.e
  %.pn28 = phi { ptr, i32 } [ %i.ad, %bb.g ], [ %i.aa, %bb.e ], [ %i.af, %bb.j ], [ %i.af, %bb.k ]
  tail call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %1, i64 noundef 8, i64 noundef 8) #63
  resume { ptr, i32 } %.pn28
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXsi_NtNtNtCsjjpCCFGI3ul_14lance_encoding9encodings8physical3rleNtB5_10RleEncoderNtNtCscI6d9CVNmLh_4core3fmt5Debug3fmt(ptr noalias noundef readonly align 4 captures(address, read_provenance) dereferenceable(28) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #2 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 25
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 12
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr %i.d, ptr %i.a, align 8
  %i.e = call noundef zeroext i1 @_RNvMsa_NtCscI6d9CVNmLh_4core3fmtNtB5_9Formatter26debug_struct_field4_finish(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) @4394, i64 noundef 10, ptr noalias noundef nonnull readonly captures(address, read_provenance) @4395, i64 noundef 16, ptr noundef nonnull %i.b, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @4393, ptr noalias noundef nonnull readonly captures(address, read_provenance) @4396, i64 noundef 18, ptr noundef nonnull %0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @3614, ptr noalias noundef nonnull readonly captures(address, read_provenance) @4397, i64 noundef 23, ptr noundef nonnull %i.c, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @3614, ptr noalias noundef nonnull readonly captures(address, read_provenance) @4398, i64 noundef 20, ptr noundef nonnull %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @2851)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret i1 %i.e
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXsi_NtNtNtCsjjpCCFGI3ul_14lance_encoding9encodings8physical6packedNtB5_35PackedStructVariablePerValueEncoderNtNtCscI6d9CVNmLh_4core3fmt5Debug3fmt(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(40) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #2 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 24
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %0, ptr %i.a, align 8
  %i.c = call noundef zeroext i1 @_RNvMsa_NtCscI6d9CVNmLh_4core3fmtNtB5_9Formatter26debug_struct_field2_finish(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) @4401, i64 noundef 35, ptr noalias noundef nonnull readonly captures(address, read_provenance) @4402, i64 noundef 8, ptr noundef nonnull %i.b, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @4399, ptr noalias noundef nonnull readonly captures(address, read_provenance) @3437, i64 noundef 6, ptr noundef nonnull %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @4400)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret i1 %i.c
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXsi_NtNtNtNtCsjjpCCFGI3ul_14lance_encoding9encodings7logical9primitive4blobNtB5_15BlobPageDecoderNtNtCscI6d9CVNmLh_4core3fmt5Debug3fmt(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(56) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #2 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 32
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 48
  store ptr %i.c, ptr %i.a, align 8
  %i.d = call noundef zeroext i1 @_RNvMsa_NtCscI6d9CVNmLh_4core3fmtNtB5_9Formatter26debug_struct_field3_finish(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) @4404, i64 noundef 15, ptr noalias noundef nonnull readonly captures(address, read_provenance) @4405, i64 noundef 5, ptr noundef nonnull %0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @4403, ptr noalias noundef nonnull readonly captures(address, read_provenance) @2855, i64 noundef 11, ptr noundef nonnull %i.b, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @2847, ptr noalias noundef nonnull readonly captures(address, read_provenance) @2859, i64 noundef 8, ptr noundef nonnull %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @172)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret i1 %i.d
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable
define internal noundef i64 @_RNvXsj_NtCsjjpCCFGI3ul_14lance_encoding7decoderNtB5_19SimplePriorityRangeNtB5_13PriorityRange16current_priority(ptr noalias noundef readonly align 8 captures(none) dereferenceable(8) %0) unnamed_addr #28 {
bb.a:
  %i.a = load i64, ptr %0, align 8, !noundef !75
  ret i64 %i.a
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define internal void @_RNvXsj_NtCsjjpCCFGI3ul_14lance_encoding7decoderNtB5_19SimplePriorityRangeNtB5_13PriorityRange7advance(ptr noalias nofree noundef align 8 captures(none) dereferenceable(8) %0, i64 noundef %1) unnamed_addr #33 {
bb.a:
  %i.a = load i64, ptr %0, align 8, !noundef !75
  %i.b = add i64 %i.a, %1
  store i64 %i.b, ptr %0, align 8
  ret void
}

; Function Attrs: nonlazybind uwtable
define { ptr, ptr } @_RNvXsj_NtCsjjpCCFGI3ul_14lance_encoding7decoderNtB5_19SimplePriorityRangeNtB5_13PriorityRange9box_clone(ptr noalias noundef readonly align 8 captures(none) dereferenceable(8) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load i64, ptr %0, align 8, !noundef !75
  tail call void @_RNvCs9hJ03s5DiqP_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #63
  %i.b = tail call noundef align 8 dereferenceable_or_null(8) ptr @_RNvCs9hJ03s5DiqP_7___rustc12___rust_alloc(i64 noundef 8, i64 noundef range(i64 1, -9223372036854775807) 8) #63 ; 3 uses
  %i.c = icmp eq ptr %i.b, null
  br i1 %i.c, label %bb.b, label %_RNvNtCs40k4W9msRzi_5alloc5boxed14box_new_uninit.exit, !prof !77

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvNtCs40k4W9msRzi_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 8) #66
  unreachable

_RNvNtCs40k4W9msRzi_5alloc5boxed14box_new_uninit.exit: ; preds = %bb.a
  store i64 %i.a, ptr %i.b, align 8
  %i.d = insertvalue { ptr, ptr } poison, ptr %i.b, 0
end_hunk_15
