Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/rustworkx-rs/original/rustworkx.rustworkx.eb4f31e2585f1285-cgu.0?download=true
inline.NumInlined: 67643
inline.NumDeleted: 27589
loop-unroll.NumCompletelyUnrolled: 143
loop-unroll.NumRuntimeUnrolled: 258
loop-unroll.NumUnrolled: 402
begin_hunk_0_@_RINvXs9_NtCsfztDQZkQYYe_8indexmap3mapINtB6_8IndexMapNtNtCs87CvPiUlf0m_5alloc6string6StringNtNtCskcxRuJ53GpR_9rustworkx7graphml5ValueNtNtCs1X8ypyHYXIB_8foldhash4fast11RandomStateEINtNtNtNtCslwFuT2d6ECx_4core4iter6traits7collect12FromIteratorTBO_B1q_EE9from_iterINtNtNtB2X_8adapters3map3MapINtNtNtBS_3vec9into_iter8IntoIterINtB8_6BucketBO_B1q_EENvMs0_B8_B59_9key_valueEEB1u_:bb.a
  unreachable

_RNvMs1_NtCsfztDQZkQYYe_8indexmap3mapINtB5_8IndexMapNtNtCs87CvPiUlf0m_5alloc6string6StringNtNtCskcxRuJ53GpR_9rustworkx7graphml5ValueNtNtCs1X8ypyHYXIB_8foldhash4fast11RandomStateE24with_capacity_and_hasherB1t_.exit: ; preds = %bb.e
  %i.aj = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %.sroa.8.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.e, i64 40
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.8.0..sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(16) %i.aj, i64 16, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !45483
  store i64 %i.k, ptr %i.e, align 8, !alias.scope !45483
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  store ptr %i.v, ptr %.sroa.4.0..sroa_idx.i, align 8, !alias.scope !45483
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  store i64 0, ptr %.sroa.5.0..sroa_idx.i, align 8, !alias.scope !45483
  %.sroa.6.0..sroa_idx4.i = getelementptr inbounds nuw i8, ptr %i.e, i64 24
  store ptr %.sroa.0.0.copyload.i.i, ptr %.sroa.6.0..sroa_idx4.i, align 8, !alias.scope !45483
  %.sroa.7.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.e, i64 32
  store i64 %.sroa.5.0.copyload.i.i, ptr %.sroa.7.0..sroa_idx.i, align 8, !alias.scope !45483
  %i.ak = getelementptr inbounds nuw i8, ptr %i.e, i64 56
  store i64 %i.l, ptr %i.ak, align 8, !alias.scope !45483
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %i.e, i64 48
  %.pre = load i64, ptr %.phi.trans.insert, align 8, !alias.scope !45488
  %.pre.fr = freeze i64 %.pre
  %i.al = icmp eq i64 %.pre.fr, 0
  tail call void @llvm.experimental.noalias.scope.decl(metadata !45488)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !45489)
  %.val.i = load ptr, ptr %i.f, align 8, !alias.scope !45489, !nonnull !56, !noundef !56
  %.val5.i = load ptr, ptr %i.g, align 8, !alias.scope !45489, !nonnull !56, !noundef !56
  %i.am = ptrtoint ptr %.val5.i to i64
  %i.an = ptrtoint ptr %.val.i to i64
  %i.ao = sub nuw i64 %i.am, %i.an
  %i.ap = udiv exact i64 %i.ao, 56                ; 2 uses
  %i.aq = lshr i64 %i.ap, 1
  %spec.select = select i1 %i.al, i64 0, i64 %i.aq
  br label %bb.i

bb.i:                                             ; preds = %_RNvMs1_NtCsfztDQZkQYYe_8indexmap3mapINtB5_8IndexMapNtNtCs87CvPiUlf0m_5alloc6string6StringNtNtCskcxRuJ53GpR_9rustworkx7graphml5ValueNtNtCs1X8ypyHYXIB_8foldhash4fast11RandomStateE24with_capacity_and_hasherB1t_.exit, %_RNvMs1_NtCsfztDQZkQYYe_8indexmap3mapINtB5_8IndexMapNtNtCs87CvPiUlf0m_5alloc6string6StringNtNtCskcxRuJ53GpR_9rustworkx7graphml5ValueNtNtCs1X8ypyHYXIB_8foldhash4fast11RandomStateE24with_capacity_and_hasherB1t_.exit.thread
  %i.ar = phi i64 [ %i.ap, %_RNvMs1_NtCsfztDQZkQYYe_8indexmap3mapINtB5_8IndexMapNtNtCs87CvPiUlf0m_5alloc6string6StringNtNtCskcxRuJ53GpR_9rustworkx7graphml5ValueNtNtCs1X8ypyHYXIB_8foldhash4fast11RandomStateE24with_capacity_and_hasherB1t_.exit ], [ %i.u, %_RNvMs1_NtCsfztDQZkQYYe_8indexmap3mapINtB5_8IndexMapNtNtCs87CvPiUlf0m_5alloc6string6StringNtNtCskcxRuJ53GpR_9rustworkx7graphml5ValueNtNtCs1X8ypyHYXIB_8foldhash4fast11RandomStateE24with_capacity_and_hasherB1t_.exit.thread ]
  %i.as = phi i64 [ %spec.select, %_RNvMs1_NtCsfztDQZkQYYe_8indexmap3mapINtB5_8IndexMapNtNtCs87CvPiUlf0m_5alloc6string6StringNtNtCskcxRuJ53GpR_9rustworkx7graphml5ValueNtNtCs1X8ypyHYXIB_8foldhash4fast11RandomStateE24with_capacity_and_hasherB1t_.exit ], [ 0, %_RNvMs1_NtCsfztDQZkQYYe_8indexmap3mapINtB5_8IndexMapNtNtCs87CvPiUlf0m_5alloc6string6StringNtNtCskcxRuJ53GpR_9rustworkx7graphml5ValueNtNtCs1X8ypyHYXIB_8foldhash4fast11RandomStateE24with_capacity_and_hasherB1t_.exit.thread ]
  %.sroa.0.0.i = sub nuw nsw i64 %i.ar, %i.as
  invoke fastcc void @_RNvMs_NtCsfztDQZkQYYe_8indexmap5innerINtB4_4CoreNtNtCs87CvPiUlf0m_5alloc6string6StringNtNtCskcxRuJ53GpR_9rustworkx7graphml5ValueE7reserveB1q_(ptr noalias nofree noundef nonnull align 8 dereferenceable(64) %i.e, i64 noundef %.sroa.0.0.i)
          to label %bb.j unwind label %bb.n, !noalias !45489

.body.i:                                          ; preds = %bb.k
  %i.at = landingpad { ptr, i32 }
          cleanup
  store ptr %i.ba, ptr %i.aw, align 8, !alias.scope !45490, !noalias !45491
  call fastcc void @_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtNtCs87CvPiUlf0m_5alloc3vec9into_iter8IntoIterINtCsfztDQZkQYYe_8indexmap6BucketNtNtBI_6string6StringNtNtCskcxRuJ53GpR_9rustworkx7graphml5ValueEEEB2l_(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.c) #63, !noalias !45492
  br label %.body7

bb.j:                                             ; preds = %bb.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !45491
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.c, ptr noundef nonnull readonly align 8 dereferenceable(32) %1, i64 32, i1 false), !noalias !45488
  call void @llvm.experimental.noalias.scope.decl(metadata !45490)
  %i.au = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  %i.av = load ptr, ptr %i.au, align 8, !alias.scope !45490, !noalias !45491, !nonnull !56, !noundef !56 ; 2 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %i.c, i64 8 ; 2 uses
  %.promoted.i.i.i.i = load ptr, ptr %i.aw, align 8, !alias.scope !45490, !noalias !45491 ; 2 uses
  %.not.not7.i.i.i.i = icmp eq ptr %.promoted.i.i.i.i, %i.av
  br i1 %.not.not7.i.i.i.i, label %._crit_edge.i.i.i.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.j
  %i.ax = getelementptr inbounds nuw i8, ptr %i.b, i64 24 ; 2 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %.sroa.4.0..sroa_idx.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  br label %bb.k

bb.k:                                             ; preds = %bb.m, %.lr.ph.i.i.i.i
  %i.az = phi ptr [ %.promoted.i.i.i.i, %.lr.ph.i.i.i.i ], [ %i.ba, %bb.m ] ; 3 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %i.az, i64 56 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !45493
  %i.bb = getelementptr inbounds nuw i8, ptr %i.az, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ax, ptr noundef nonnull align 8 dereferenceable(24) %i.bb, i64 24, i1 false), !noalias !45494
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.b, ptr noundef nonnull align 8 dereferenceable(24) %i.az, i64 24, i1 false), !noalias !45494
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !45495
  invoke fastcc void @_RNvMs2_NtCsfztDQZkQYYe_8indexmap3mapINtB5_8IndexMapNtNtCs87CvPiUlf0m_5alloc6string6StringNtNtCskcxRuJ53GpR_9rustworkx7graphml5ValueNtNtCs1X8ypyHYXIB_8foldhash4fast11RandomStateE11insert_fullB1t_(ptr noalias nofree noundef align 8 captures(address) dereferenceable(32) %i.a, ptr noalias nofree noundef nonnull align 8 dereferenceable(64) %i.e, ptr noalias nofree noundef nonnull readonly align 8 captures(address) dereferenceable(48) %i.b, ptr noalias nofree noundef readonly align 8 captures(address) dereferenceable(24) %i.ax)
          to label %.noexc.i.i.i.i unwind label %.body.i, !noalias !45494

.noexc.i.i.i.i:                                   ; preds = %bb.k
  %.sroa.0.0.copyload.i.i.i.i.i.i.i = load i64, ptr %i.ay, align 8, !noalias !45495 ; 4 uses
  %.sroa.4.0.copyload.i.i.i.i.i.i.i = load ptr, ptr %.sroa.4.0..sroa_idx.i.i.i.i.i.i.i, align 8, !noalias !45495 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !45495
  %i.bc = icmp eq i64 %.sroa.0.0.copyload.i.i.i.i.i.i.i, -1
  br i1 %i.bc, label %bb.m, label %bb.l

bb.l:                                             ; preds = %.noexc.i.i.i.i
  %i.bd = icmp ne i64 %.sroa.0.0.copyload.i.i.i.i.i.i.i, -9223372036854775804
  call void @llvm.assume(i1 %i.bd)
  %or.cond.i.i.i.i.i.i.i.i.i = icmp slt i64 %.sroa.0.0.copyload.i.i.i.i.i.i.i, 1
  br i1 %or.cond.i.i.i.i.i.i.i.i.i, label %bb.m, label %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i.i.i.i.i.i.i.i.i.i.i

_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.l
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.4.0.copyload.i.i.i.i.i.i.i) ]
  call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.4.0.copyload.i.i.i.i.i.i.i, i64 noundef %.sroa.0.0.copyload.i.i.i.i.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #59, !noalias !45496
  br label %bb.m

._crit_edge.i.i.i.i:                              ; preds = %bb.m, %bb.j
  %i.be = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %i.bf = load i64, ptr %i.be, align 8, !alias.scope !45490, !noalias !45491, !noundef !56 ; 2 uses
  %i.bg = icmp eq i64 %i.bf, 0
  br i1 %i.bg, label %bb.o, label %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i.i.i.i.i

_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i.i.i.i.i: ; preds = %._crit_edge.i.i.i.i
  %i.bh = load ptr, ptr %i.c, align 8, !alias.scope !45490, !noalias !45491, !nonnull !56, !noundef !56
  %i.bi = mul nuw i64 %i.bf, 56
  call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %i.bh, i64 noundef %i.bi, i64 noundef range(i64 1, -9223372036854775807) 8) #59, !noalias !45494
  br label %bb.o

bb.m:                                             ; preds = %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i.i.i.i.i.i.i.i.i.i.i, %bb.l, %.noexc.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !45493
  %.not.not.i.i.i.i = icmp eq ptr %i.ba, %i.av
  br i1 %.not.not.i.i.i.i, label %._crit_edge.i.i.i.i, label %bb.k

bb.n:                                             ; preds = %bb.i
  %i.bj = landingpad { ptr, i32 }
          cleanup
  call fastcc void @_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters3map3MapINtNtNtCs87CvPiUlf0m_5alloc3vec9into_iter8IntoIterINtCsfztDQZkQYYe_8indexmap6BucketNtNtB1g_6string6StringNtNtCskcxRuJ53GpR_9rustworkx7graphml5ValueEENvMs0_B20_B1X_9key_valueEEB2U_(ptr noalias nofree noundef nonnull readonly align 8 dereferenceable(32) %1) #63
  br label %.body7

.body7:                                           ; preds = %.body.i, %bb.n
  %eh.lpad-body8 = phi { ptr, i32 } [ %i.at, %.body.i ], [ %i.bj, %bb.n ]
  call fastcc void @_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCsfztDQZkQYYe_8indexmap3map8IndexMapNtNtCs87CvPiUlf0m_5alloc6string6StringNtNtCskcxRuJ53GpR_9rustworkx7graphml5ValueNtNtCs1X8ypyHYXIB_8foldhash4fast11RandomStateEEB1W_(ptr noalias nofree noundef align 8 dereferenceable(64) %i.e) #63
  br label %bb.p

bb.o:                                             ; preds = %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i.i.i.i.i, %._crit_edge.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !45491
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %0, ptr noundef nonnull align 8 dereferenceable(64) %i.e, i64 64, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  ret void

bb.p:                                             ; preds = %.body7, %.thread
  %.pn11 = phi { ptr, i32 } [ %eh.lpad-body, %.thread ], [ %eh.lpad-body8, %.body7 ]
  resume { ptr, i32 } %.pn11

.thread:                                          ; preds = %bb.f, %_RNvMs1_NtCslcZTgAvcSNH_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i.i.i, %bb.b
  %eh.lpad-body = phi { ptr, i32 } [ %i.m, %bb.b ], [ %i.x, %_RNvMs1_NtCslcZTgAvcSNH_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i.i.i ], [ %i.x, %bb.f ]
  tail call fastcc void @_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters3map3MapINtNtNtCs87CvPiUlf0m_5alloc3vec9into_iter8IntoIterINtCsfztDQZkQYYe_8indexmap6BucketNtNtB1g_6string6StringNtNtCskcxRuJ53GpR_9rustworkx7graphml5ValueEENvMs0_B20_B1X_9key_valueEEB2U_(ptr noalias nofree noundef align 8 dereferenceable(32) %1) #63
  br label %bb.p
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @_RINvXs_NtNtCsi0YPOvDEjiZ_4pyo35types3anyINtNtB9_8instance5BoundNtB5_5PyAnyENtB5_12PyAnyMethods11call_methodReTBC_EECskcxRuJ53GpR_9rustworkx(ptr dead_on_unwind noalias nofree noundef nonnull writable align 8 captures(none) dereferenceable(72) %0, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %1, ptr noundef nonnull %2, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable_or_null(8) %3) unnamed_addr #5 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [72 x i8], align 8                ; 5 uses
  %i.b = alloca [64 x i8], align 8                ; 5 uses
  %i.c = invoke noundef nonnull ptr @_RNvMNtNtCsi0YPOvDEjiZ_4pyo35types6stringNtB2_8PyString3new(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @1661, i64 noundef 7)
          to label %.noexc unwind label %bb.c     ; 3 uses

.noexc:                                           ; preds = %bb.a
  invoke void @_RNvNvXs_NtNtCsi0YPOvDEjiZ_4pyo35types3anyINtNtBa_8instance5BoundNtB6_5PyAnyENtB6_12PyAnyMethods7getattr5inner(ptr noalias nofree noundef nonnull sret([72 x i8]) align 8 captures(none) dereferenceable(72) %0, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %1, ptr noundef nonnull %i.c)
          to label %bb.d unwind label %bb.b

bb.b:                                             ; preds = %.noexc
  %i.d = landingpad { ptr, i32 }
          cleanup
  tail call void @_Py_DecRef(ptr noundef nonnull %i.c) #59, !noalias !45516
  br label %bb.n

bb.c:                                             ; preds = %bb.a
  %i.e = landingpad { ptr, i32 }
          cleanup
  br label %bb.n

.body:                                            ; preds = %bb.f, %bb.l
  %.sink.i3.sink.i.i = phi ptr [ %2, %bb.f ], [ %i.k, %bb.l ]
  %common.resume.op.i.i = phi { ptr, i32 } [ %i.m, %bb.f ], [ %i.t, %bb.l ]
  tail call void @_Py_DecRef(ptr noundef nonnull %.sink.i3.sink.i.i) #59, !noalias !45517
  br label %bb.n

bb.d:                                             ; preds = %.noexc
  tail call void @_Py_DecRef(ptr noundef nonnull %i.c) #59, !noalias !45516
  %i.f = load i64, ptr %0, align 8, !range !57, !noundef !56
  %i.g = trunc nuw i64 %i.f to i1
  br i1 %i.g, label %bb.m, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.i = load ptr, ptr %i.h, align 8, !nonnull !56, !noundef !56 ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !45518)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !45519)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !45520)
  %i.j = load ptr, ptr %3, align 8, !alias.scope !45520, !noalias !45518, !nonnull !56, !noundef !56
  tail call void @llvm.experimental.noalias.scope.decl(metadata !45521)
  %i.k = tail call noundef ptr @PyTuple_New(i64 noundef 1) #59, !noalias !45522 ; 5 uses
  %i.l = icmp eq ptr %i.k, null
  br i1 %i.l, label %.invoke.i.i, label %bb.g, !prof !60

bb.f:                                             ; preds = %.invoke.i.i
  %i.m = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.g:                                             ; preds = %bb.e
  %i.n = tail call noundef i32 @PyTuple_SetItem(ptr noundef nonnull %i.k, i64 noundef 0, ptr noundef nonnull %2) #59, !noalias !45522 ; 0 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !45523)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !45524)
  %i.o = tail call noundef ptr @PyObject_Call(ptr noundef nonnull %i.i, ptr noundef nonnull %i.k, ptr noundef nonnull %i.j) #59, !noalias !45525 ; 2 uses
  %i.p = icmp eq ptr %i.o, null
  br i1 %i.p, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  store ptr %i.o, ptr %i.h, align 8, !alias.scope !45526
  br label %_RNCINvXs_NtNtCsi0YPOvDEjiZ_4pyo35types3anyINtNtBb_8instance5BoundNtB7_5PyAnyENtB7_12PyAnyMethods11call_methodReTBE_EE0CskcxRuJ53GpR_9rustworkx.exit

bb.i:                                             ; preds = %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !45525
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !45525
  invoke void @_RNvMs_NtCsi0YPOvDEjiZ_4pyo33errNtB4_5PyErr4take(ptr noalias nofree noundef nonnull sret([72 x i8]) align 8 captures(none) dereferenceable(72) %i.a)
          to label %.noexc.i.i.i.i unwind label %bb.l, !noalias !45527

.noexc.i.i.i.i:                                   ; preds = %bb.i
  %i.q = load i64, ptr %i.a, align 8, !range !57, !noalias !45525, !noundef !56
  %i.r = trunc nuw i64 %i.q to i1
  br i1 %i.r, label %bb.j, label %bb.k, !prof !66

bb.j:                                             ; preds = %.noexc.i.i.i.i
  %i.s = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.b, ptr noundef nonnull align 8 dereferenceable(64) %i.s, i64 64, i1 false), !noalias !45525
  br label %.noexc2.i.i.i.i

bb.k:                                             ; preds = %.noexc.i.i.i.i
  invoke void @_RNvNtCsi0YPOvDEjiZ_4pyo33err15failed_to_fetch(ptr noalias nofree noundef nonnull sret([64 x i8]) align 8 captures(none) dereferenceable(64) %i.b)
          to label %.noexc2.i.i.i.i unwind label %bb.l, !noalias !45527

.noexc2.i.i.i.i:                                  ; preds = %bb.k, %bb.j
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !45525
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.h, ptr noundef nonnull align 8 dereferenceable(64) %i.b, i64 64, i1 false), !noalias !45520
  store i64 1, ptr %0, align 8, !alias.scope !45526
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !45525
  br label %_RNCINvXs_NtNtCsi0YPOvDEjiZ_4pyo35types3anyINtNtBb_8instance5BoundNtB7_5PyAnyENtB7_12PyAnyMethods11call_methodReTBE_EE0CskcxRuJ53GpR_9rustworkx.exit

bb.l:                                             ; preds = %bb.k, %bb.i
  %i.t = landingpad { ptr, i32 }
          cleanup
  br label %.body

.invoke.i.i:                                      ; preds = %bb.e
  invoke void @_RNvNtCsi0YPOvDEjiZ_4pyo38instance13panic_on_null(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @19) #61
          to label %.cont.i.i unwind label %bb.f, !noalias !45528

.cont.i.i:                                        ; preds = %.invoke.i.i
  unreachable

_RNCINvXs_NtNtCsi0YPOvDEjiZ_4pyo35types3anyINtNtBb_8instance5BoundNtB7_5PyAnyENtB7_12PyAnyMethods11call_methodReTBE_EE0CskcxRuJ53GpR_9rustworkx.exit: ; preds = %bb.h, %.noexc2.i.i.i.i
  tail call void @_Py_DecRef(ptr noundef nonnull %i.k) #59, !noalias !45517
  br label %bb.m

bb.m:                                             ; preds = %bb.d, %_RNCINvXs_NtNtCsi0YPOvDEjiZ_4pyo35types3anyINtNtBb_8instance5BoundNtB7_5PyAnyENtB7_12PyAnyMethods11call_methodReTBE_EE0CskcxRuJ53GpR_9rustworkx.exit
  %.sink = phi ptr [ %i.i, %_RNCINvXs_NtNtCsi0YPOvDEjiZ_4pyo35types3anyINtNtBb_8instance5BoundNtB7_5PyAnyENtB7_12PyAnyMethods11call_methodReTBE_EE0CskcxRuJ53GpR_9rustworkx.exit ], [ %2, %bb.d ]
  tail call void @_Py_DecRef(ptr noundef nonnull %.sink) #59
  ret void

bb.n:                                             ; preds = %bb.c, %bb.b, %.body
  %.sink7 = phi ptr [ %i.i, %.body ], [ %2, %bb.b ], [ %2, %bb.c ]
  %eh.lpad-body4 = phi { ptr, i32 } [ %common.resume.op.i.i, %.body ], [ %i.d, %bb.b ], [ %i.e, %bb.c ]
  tail call void @_Py_DecRef(ptr noundef nonnull %.sink7) #59
  resume { ptr, i32 } %eh.lpad-body4
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvXs_NtNtCsi0YPOvDEjiZ_4pyo35types4dictINtNtB9_8instance5BoundNtB5_6PyDictENtB5_13PyDictMethods8get_itemReECskcxRuJ53GpR_9rustworkx(ptr dead_on_unwind noalias nofree noundef nonnull writable align 8 captures(none) dereferenceable(72) %0, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %2, i64 noundef range(i64 5, 14) %3) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = tail call noundef nonnull ptr @_RNvMNtNtCsi0YPOvDEjiZ_4pyo35types6stringNtB2_8PyString3new(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %2, i64 noundef %3) ; 3 uses
  invoke void @_RNvNvXs_NtNtCsi0YPOvDEjiZ_4pyo35types4dictINtNtBa_8instance5BoundNtB6_6PyDictENtB6_13PyDictMethods8get_item5inner(ptr noalias nofree noundef nonnull sret([72 x i8]) align 8 captures(none) dereferenceable(72) %0, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %1, ptr noundef nonnull %i.a)
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @_Py_DecRef(ptr noundef nonnull %i.a) #59
  ret void

bb.c:                                             ; preds = %bb.a
  %i.b = landingpad { ptr, i32 }
          cleanup
  tail call void @_Py_DecRef(ptr noundef nonnull %i.a) #59
  resume { ptr, i32 } %i.b
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvXs_NtNtCsi0YPOvDEjiZ_4pyo35types4dictINtNtB9_8instance5BoundNtB5_6PyDictENtB5_13PyDictMethods8set_itemReINtBG_2PyNtNtB7_3any5PyAnyEECskcxRuJ53GpR_9rustworkx(ptr dead_on_unwind noalias nofree noundef nonnull writable align 8 captures(address) dereferenceable(72) %0, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %2, i64 noundef %3, ptr noundef nonnull %4) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = invoke noundef nonnull ptr @_RNvMNtNtCsi0YPOvDEjiZ_4pyo35types6stringNtB2_8PyString3new(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %2, i64 noundef %3)
          to label %bb.c unwind label %bb.g       ; 3 uses

bb.b:                                             ; preds = %bb.c
  %i.b = landingpad { ptr, i32 }
          cleanup
  tail call void @_Py_DecRef(ptr noundef nonnull %4) #59
  tail call void @_Py_DecRef(ptr noundef nonnull %i.a) #59
  br label %bb.f

bb.c:                                             ; preds = %bb.a
  invoke void @_RNvNvXs_NtNtCsi0YPOvDEjiZ_4pyo35types4dictINtNtBa_8instance5BoundNtB6_6PyDictENtB6_13PyDictMethods8set_item5inner(ptr noalias nofree noundef nonnull sret([72 x i8]) align 8 captures(address) dereferenceable(72) %0, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %1, ptr noundef nonnull %i.a, ptr noundef nonnull %4)
          to label %bb.d unwind label %bb.b

bb.d:                                             ; preds = %bb.c
  tail call void @_Py_DecRef(ptr noundef nonnull %4) #59
  tail call void @_Py_DecRef(ptr noundef nonnull %i.a) #59
  ret void

bb.e:                                             ; preds = %bb.g
  %i.c = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCslwFuT2d6ECx_4core9panicking16panic_in_cleanup() #58
  unreachable

bb.f:                                             ; preds = %bb.b, %bb.g
  %.pn1729 = phi { ptr, i32 } [ %i.d, %bb.g ], [ %i.b, %bb.b ]
  resume { ptr, i32 } %.pn1729

bb.g:                                             ; preds = %bb.a
  %i.d = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtBG_5types3any5PyAnyEECskcxRuJ53GpR_9rustworkx(ptr nonnull %4) #63
          to label %bb.f unwind label %bb.e
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvXs_NtNtCsi0YPOvDEjiZ_4pyo35types6moduleINtNtB9_8instance5BoundNtB5_8PyModuleENtB5_15PyModuleMethods11add_wrappedINtBI_2PyB12_ENCNvCskcxRuJ53GpR_9rustworkx9rustworkxs3h_0EB28_(ptr dead_on_unwind noalias nofree noundef nonnull writable align 8 captures(address) dereferenceable(72) %0, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %1) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [64 x i8], align 8                ; 4 uses
  %i.b = alloca [72 x i8], align 8                ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @_RNvMs_NtNtCsi0YPOvDEjiZ_4pyo35impl_8pymoduleNtB4_9ModuleDef11make_module(ptr noalias nofree noundef nonnull sret([72 x i8]) align 8 captures(none) dereferenceable(72) %i.b, ptr noundef nonnull align 8 @_RNvNtNtCskcxRuJ53GpR_9rustworkx10generators10generators9__PYO3_DEF)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !45531)
  %i.c = load i64, ptr %i.b, align 8, !range !57, !alias.scope !45531, !noundef !56
  %i.d = trunc nuw i64 %i.c to i1
  br i1 %i.d, label %bb.b, label %bb.g, !prof !60

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !45531
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.a, ptr noundef nonnull readonly align 8 dereferenceable(64) %i.e, i64 64, i1 false)
  invoke void @_RNvNtCslwFuT2d6ECx_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @1313, i64 noundef 23, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @1536, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1314) #61
          to label %bb.d unwind label %bb.c, !noalias !45531

bb.c:                                             ; preds = %bb.b
  %i.f = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueNtNtCsi0YPOvDEjiZ_4pyo33err5PyErrECskcxRuJ53GpR_9rustworkx(ptr noalias nofree noundef nonnull align 8 dereferenceable(64) %i.a) #63
          to label %bb.f unwind label %bb.e, !noalias !45531

bb.d:                                             ; preds = %bb.b
  unreachable

bb.e:                                             ; preds = %bb.c
  %i.g = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCslwFuT2d6ECx_4core9panicking16panic_in_cleanup() #58, !noalias !45531
  unreachable

bb.f:                                             ; preds = %bb.c
  resume { ptr, i32 } %i.f

bb.g:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.i = load ptr, ptr %i.h, align 8, !alias.scope !45531, !nonnull !56, !noundef !56
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  tail call void @_RNvNvXs_NtNtCsi0YPOvDEjiZ_4pyo35types6moduleINtNtBa_8instance5BoundNtB6_8PyModuleENtB6_15PyModuleMethods11add_wrapped5inner(ptr noalias nofree noundef nonnull sret([72 x i8]) align 8 captures(address) dereferenceable(72) %0, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %1, ptr noundef nonnull %i.i)
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvXs_NtNtCsi0YPOvDEjiZ_4pyo35types6moduleINtNtB9_8instance5BoundNtB5_8PyModuleENtB5_15PyModuleMethods11add_wrappedINtNtCslwFuT2d6ECx_4core6result6ResultIBG_NtNtB7_8function11PyCFunctionENtNtB9_3err5PyErrENCNvCskcxRuJ53GpR_9rustworkx9rustworkx0EB3m_(ptr dead_on_unwind noalias nofree noundef nonnull writable align 8 captures(address) dereferenceable(72) %0, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %1) unnamed_addr #1 {
bb.a:
  %i.a = alloca [72 x i8], align 8                ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @_RNvXs4_NtNtCsi0YPOvDEjiZ_4pyo35impl_10pyfunctionNtNtB9_6marker6PythonINtB5_17WrapPyFunctionArgINtNtB9_8instance5BoundNtNtNtB9_5types8function11PyCFunctionEE15wrap_pyfunction(ptr noalias nofree noundef nonnull sret([72 x i8]) align 8 captures(address) dereferenceable(72) %i.a, ptr noundef nonnull align 8 @_RNvNtNtCskcxRuJ53GpR_9rustworkx9traversal14bfs_successors9__PYO3_DEF)
  call void @llvm.experimental.noalias.scope.decl(metadata !45535)
  %i.b = load i64, ptr %i.a, align 8, !range !57, !alias.scope !45536, !noundef !56
  %i.c = trunc nuw i64 %i.b to i1
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %.sroa.5.8.copyload = load ptr, ptr %i.d, align 8, !alias.scope !45537 ; 2 uses
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %.sroa.91.8..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %.sroa.49.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %.sroa.49.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(56) %.sroa.91.8..sroa_idx, i64 56, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sroa.5.8.copyload, ptr %i.e, align 8
  store i64 1, ptr %0, align 8
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @_RNvNvXs_NtNtCsi0YPOvDEjiZ_4pyo35types6moduleINtNtBa_8instance5BoundNtB6_8PyModuleENtB6_15PyModuleMethods11add_wrapped5inner(ptr noalias nofree noundef nonnull sret([72 x i8]) align 8 captures(address) dereferenceable(72) %0, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %1, ptr noundef nonnull %.sroa.5.8.copyload)
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvXs_NtNtCsi0YPOvDEjiZ_4pyo35types6moduleINtNtB9_8instance5BoundNtB5_8PyModuleENtB5_15PyModuleMethods11add_wrappedINtNtCslwFuT2d6ECx_4core6result6ResultIBG_NtNtB7_8function11PyCFunctionENtNtB9_3err5PyErrENCNvCskcxRuJ53GpR_9rustworkx9rustworkxs0_0EB3m_(ptr dead_on_unwind noalias nofree noundef nonnull writable align 8 captures(address) dereferenceable(72) %0, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %1) unnamed_addr #1 {
bb.a:
  %i.a = alloca [72 x i8], align 8                ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @_RNvXs4_NtNtCsi0YPOvDEjiZ_4pyo35impl_10pyfunctionNtNtB9_6marker6PythonINtB5_17WrapPyFunctionArgINtNtB9_8instance5BoundNtNtNtB9_5types8function11PyCFunctionEE15wrap_pyfunction(ptr noalias nofree noundef nonnull sret([72 x i8]) align 8 captures(address) dereferenceable(72) %i.a, ptr noundef nonnull align 8 @_RNvNtNtCskcxRuJ53GpR_9rustworkx9traversal16graph_bfs_search9__PYO3_DEF)
  call void @llvm.experimental.noalias.scope.decl(metadata !45541)
  %i.b = load i64, ptr %i.a, align 8, !range !57, !alias.scope !45542, !noundef !56
  %i.c = trunc nuw i64 %i.b to i1
end_hunk_0
