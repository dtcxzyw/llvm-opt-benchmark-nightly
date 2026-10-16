Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/diesel-rs/original/diesel-ab2aac80bfe783bd.diesel.1982d20ac86e90f0-cgu.07?download=true
inline.NumInlined: 991
inline.NumDeleted: 473
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 3
begin_hunk_0_@_RNvMs1_NtCs2bNgeUs5Jlc_6diesel6configNtB5_11PrintSchema19custom_type_derives:bb.a
  invoke void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VecNtNtBG_6string6StringEECs2bNgeUs5Jlc_6diesel(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.c) #35
          to label %.body.i unwind label %bb.f, !noalias !1136

bb.h:                                             ; preds = %bb.a
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.g, ptr noundef nonnull align 8 dereferenceable(24) %i.f, i64 24, i1 false), !alias.scope !1137
  br label %_RINvMNtCscI6d9CVNmLh_4core6optionINtB3_6OptionRINtNtCs40k4W9msRzi_5alloc3vec3VecNtNtBO_6string6StringEE6map_orBJ_NCNvMs1_NtCs2bNgeUs5Jlc_6diesel6configNtB1V_11PrintSchema19custom_type_derives0EB1X_.exit

bb.i:                                             ; preds = %bb.c, %bb.b
  %i.ag = landingpad { ptr, i32 }
          cleanup
  br label %.body.i

.body.i:                                          ; preds = %bb.i, %bb.g
  %eh.lpad-body.i = phi { ptr, i32 } [ %i.ag, %bb.i ], [ %lpad.loopexit.i.i.i, %bb.g ]
  invoke void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VecNtNtBG_6string6StringEECs2bNgeUs5Jlc_6diesel(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.f) #35
          to label %common.resume unwind label %bb.l, !noalias !1138

.loopexit.i:                                      ; preds = %bb.e, %.lr.ph.i.i.i, %_RNvMs4_NtCs40k4W9msRzi_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs2bNgeUs5Jlc_6diesel.exit.i.i.i
  store i64 %.val4.i, ptr %i.w, align 8, !noalias !1134
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.g, ptr noundef nonnull align 8 dereferenceable(24) %i.c, i64 24, i1 false), !noalias !1139
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !1134
  invoke void @_RNvXso_NtCs40k4W9msRzi_5alloc3vecINtB5_3VecNtNtB7_6string6StringENtNtNtCscI6d9CVNmLh_4core3ops4drop4Drop4dropCs2bNgeUs5Jlc_6diesel(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.f)
          to label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VecNtNtBG_6string6StringEECs2bNgeUs5Jlc_6diesel.exit.i unwind label %bb.j, !noalias !1138

bb.j:                                             ; preds = %.loopexit.i
  %i.ah = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs40k4W9msRzi_5alloc7raw_vecINtB5_6RawVecNtNtB7_6string6StringENtNtNtCscI6d9CVNmLh_4core3ops4drop4Drop4dropCs2bNgeUs5Jlc_6diesel(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.f)
          to label %common.resume unwind label %bb.k, !noalias !1138

bb.k:                                             ; preds = %bb.j
  %i.ai = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #36, !noalias !1138
  unreachable

common.resume:                                    ; preds = %.body, %.body.i, %bb.j
  %common.resume.op = phi { ptr, i32 } [ %eh.lpad-body.i, %.body.i ], [ %i.ah, %bb.j ], [ %eh.lpad-body, %.body ]
  resume { ptr, i32 } %common.resume.op

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VecNtNtBG_6string6StringEECs2bNgeUs5Jlc_6diesel.exit.i: ; preds = %.loopexit.i
  call void @_RNvXs1_NtCs40k4W9msRzi_5alloc7raw_vecINtB5_6RawVecNtNtB7_6string6StringENtNtNtCscI6d9CVNmLh_4core3ops4drop4Drop4dropCs2bNgeUs5Jlc_6diesel(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.f), !noalias !1138
  br label %_RINvMNtCscI6d9CVNmLh_4core6optionINtB3_6OptionRINtNtCs40k4W9msRzi_5alloc3vec3VecNtNtBO_6string6StringEE6map_orBJ_NCNvMs1_NtCs2bNgeUs5Jlc_6diesel6configNtB1V_11PrintSchema19custom_type_derives0EB1X_.exit

bb.l:                                             ; preds = %.body.i
  %i.aj = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #36, !noalias !1138
  unreachable

_RINvMNtCscI6d9CVNmLh_4core6optionINtB3_6OptionRINtNtCs40k4W9msRzi_5alloc3vec3VecNtNtBO_6string6StringEE6map_orBJ_NCNvMs1_NtCs2bNgeUs5Jlc_6diesel6configNtB1V_11PrintSchema19custom_type_derives0EB1X_.exit: ; preds = %bb.h, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VecNtNtBG_6string6StringEECs2bNgeUs5Jlc_6diesel.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  %i.ak = getelementptr inbounds nuw i8, ptr %i.g, i64 8 ; 2 uses
  %i.al = load ptr, ptr %i.ak, align 8, !nonnull !5, !noundef !5 ; 3 uses
  %i.am = getelementptr inbounds nuw i8, ptr %i.g, i64 16 ; 2 uses
  %i.an = load i64, ptr %i.am, align 8, !noundef !5 ; 5 uses
  %.idx = mul nuw nsw i64 %i.an, 24
  %i.ao = getelementptr inbounds nuw i8, ptr %i.al, i64 %.idx
  %.not.i = icmp eq i64 %i.an, 0
  br i1 %.not.i, label %.loopexit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %_RINvMNtCscI6d9CVNmLh_4core6optionINtB3_6OptionRINtNtCs40k4W9msRzi_5alloc3vec3VecNtNtBO_6string6StringEE6map_orBJ_NCNvMs1_NtCs2bNgeUs5Jlc_6diesel6configNtB1V_11PrintSchema19custom_type_derives0EB1X_.exit, %_RNCNvMs1_NtCs2bNgeUs5Jlc_6diesel6configNtB7_11PrintSchema19custom_type_derivess_0B9_.exit.backedge.i
  %i.ap = phi ptr [ %i.aq, %_RNCNvMs1_NtCs2bNgeUs5Jlc_6diesel6configNtB7_11PrintSchema19custom_type_derivess_0B9_.exit.backedge.i ], [ %i.al, %_RINvMNtCscI6d9CVNmLh_4core6optionINtB3_6OptionRINtNtCs40k4W9msRzi_5alloc3vec3VecNtNtBO_6string6StringEE6map_orBJ_NCNvMs1_NtCs2bNgeUs5Jlc_6diesel6configNtB1V_11PrintSchema19custom_type_derives0EB1X_.exit ] ; 3 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 24 ; 2 uses
  %i.ar = getelementptr i8, ptr %i.ap, i64 16
  %.val3.i = load i64, ptr %i.ar, align 8, !noalias !1140, !noundef !5
  %i.as = icmp eq i64 %.val3.i, 26
  br i1 %i.as, label %.split.i, label %_RNCNvMs1_NtCs2bNgeUs5Jlc_6diesel6configNtB7_11PrintSchema19custom_type_derivess_0B9_.exit.backedge.i

.split.i:                                         ; preds = %.lr.ph.i
  %i.at = getelementptr i8, ptr %i.ap, i64 8
  %.val.i5 = load ptr, ptr %i.at, align 8, !noalias !1140, !nonnull !5, !noundef !5 ; 2 uses
  %i.au = load i128, ptr %.val.i5, align 1
  %i.av = xor i128 %i.au, 134836028213993473038994466557753911652
  %i.aw = getelementptr i8, ptr %.val.i5, i64 10
  %i.ax = load i128, ptr %i.aw, align 1
  %i.ay = xor i128 %i.ax, 134836025682721479616868360737279729516
  %i.az = or i128 %i.av, %i.ay
  %i.ba = icmp ne i128 %i.az, 0
  %i.bb = zext i1 %i.ba to i32
  %i.bc = icmp eq i32 %i.bb, 0
  br i1 %i.bc, label %_RINvXs2J_NtNtCscI6d9CVNmLh_4core5slice4iterINtB7_4IterNtNtCs40k4W9msRzi_5alloc6string6StringENtNtNtNtBb_4iter6traits8iterator8Iterator3anyNCNvMs1_NtCs2bNgeUs5Jlc_6diesel6configNtB2k_11PrintSchema19custom_type_derivess_0EB2m_.exit, label %_RNCNvMs1_NtCs2bNgeUs5Jlc_6diesel6configNtB7_11PrintSchema19custom_type_derivess_0B9_.exit.backedge.i

_RNCNvMs1_NtCs2bNgeUs5Jlc_6diesel6configNtB7_11PrintSchema19custom_type_derivess_0B9_.exit.backedge.i: ; preds = %.split.i, %.lr.ph.i
  %.not7.i = icmp eq ptr %i.aq, %i.ao
  br i1 %.not7.i, label %.loopexit, label %.lr.ph.i

bb.m:                                             ; preds = %bb.o, %.loopexit
  %i.bd = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %bb.r, %bb.m
  %eh.lpad-body = phi { ptr, i32 } [ %i.bd, %bb.m ], [ %i.bo, %bb.r ]
  invoke void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VecNtNtBG_6string6StringEECs2bNgeUs5Jlc_6diesel(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.g) #35
          to label %common.resume unwind label %bb.v

.loopexit:                                        ; preds = %_RNCNvMs1_NtCs2bNgeUs5Jlc_6diesel6configNtB7_11PrintSchema19custom_type_derivess_0B9_.exit.backedge.i, %_RINvMNtCscI6d9CVNmLh_4core6optionINtB3_6OptionRINtNtCs40k4W9msRzi_5alloc3vec3VecNtNtBO_6string6StringEE6map_orBJ_NCNvMs1_NtCs2bNgeUs5Jlc_6diesel6configNtB1V_11PrintSchema19custom_type_derives0EB1X_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  invoke void @_RNvMs4_NtCs40k4W9msRzi_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs2bNgeUs5Jlc_6diesel(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.d, i64 noundef 26, i1 noundef zeroext false, i64 noundef 1, i64 noundef 1)
          to label %bb.n unwind label %bb.m

bb.n:                                             ; preds = %.loopexit
  %i.be = load i64, ptr %i.d, align 8, !range !8, !noundef !5
  %i.bf = trunc nuw i64 %i.be to i1
  %i.bg = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.bh = load i64, ptr %i.bg, align 8, !range !9, !noundef !5 ; 3 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %i.d, i64 16 ; 2 uses
  br i1 %i.bf, label %bb.o, label %bb.p, !prof !10

bb.o:                                             ; preds = %bb.n
  %i.bj = load i64, ptr %i.bi, align 8
  invoke void @_RNvNtCs40k4W9msRzi_5alloc7raw_vec12handle_error(i64 noundef %i.bh, i64 %i.bj) #34
          to label %bb.u unwind label %bb.m

bb.p:                                             ; preds = %bb.n
  %i.bk = load ptr, ptr %i.bi, align 8, !nonnull !5, !noundef !5 ; 2 uses
  %i.bl = icmp samesign ugt i64 %i.bh, 25
  call void @llvm.assume(i1 %i.bl)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(26) %i.bk, ptr noundef nonnull align 1 dereferenceable(26) @63, i64 26, i1 false)
  store i64 %i.bh, ptr %i.e, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  store ptr %i.bk, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  store i64 26, ptr %.sroa.6.0..sroa_idx, align 8
  %i.bm = load i64, ptr %i.g, align 8, !range !17, !alias.scope !1141, !noundef !5
  %i.bn = icmp eq i64 %i.an, %i.bm
  br i1 %i.bn, label %bb.q, label %bb.t

bb.q:                                             ; preds = %bb.p
  invoke void @_RNvMs3_NtCs40k4W9msRzi_5alloc7raw_vecINtB5_6RawVecNtNtB7_6string6StringE8grow_oneCsgczF5crJ4sT_3std(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.g)
          to label %._crit_edge unwind label %bb.r, !noalias !1142

._crit_edge:                                      ; preds = %bb.q
  %.pre = load ptr, ptr %i.ak, align 8, !alias.scope !1141
  br label %bb.t

bb.r:                                             ; preds = %bb.q
  %i.bo = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs40k4W9msRzi_5alloc6string6StringECs2bNgeUs5Jlc_6diesel(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.e) #35
          to label %.body unwind label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.bp = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #36
  unreachable

bb.t:                                             ; preds = %._crit_edge, %bb.p
  %i.bq = phi ptr [ %.pre, %._crit_edge ], [ %i.al, %bb.p ]
  %i.br = getelementptr inbounds nuw [24 x i8], ptr %i.bq, i64 %i.an
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.br, ptr noundef nonnull align 8 dereferenceable(24) %i.e, i64 24, i1 false)
  %i.bs = add i64 %i.an, 1
  store i64 %i.bs, ptr %i.am, align 8, !alias.scope !1141
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  br label %_RINvXs2J_NtNtCscI6d9CVNmLh_4core5slice4iterINtB7_4IterNtNtCs40k4W9msRzi_5alloc6string6StringENtNtNtNtBb_4iter6traits8iterator8Iterator3anyNCNvMs1_NtCs2bNgeUs5Jlc_6diesel6configNtB2k_11PrintSchema19custom_type_derivess_0EB2m_.exit

_RINvXs2J_NtNtCscI6d9CVNmLh_4core5slice4iterINtB7_4IterNtNtCs40k4W9msRzi_5alloc6string6StringENtNtNtNtBb_4iter6traits8iterator8Iterator3anyNCNvMs1_NtCs2bNgeUs5Jlc_6diesel6configNtB2k_11PrintSchema19custom_type_derivess_0EB2m_.exit: ; preds = %.split.i, %bb.t
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.g, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  ret void

bb.u:                                             ; preds = %bb.o
  unreachable

bb.v:                                             ; preds = %.body
  %i.bt = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #36
  unreachable
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define hidden void @_RNvMs2_NtNtCs7RVENRMef48_12sharded_slab4page4slotINtB5_4SlotNtNtNtCseEiWxPEiqDv_18tracing_subscriber8registry7sharded9DataInnerNtNtB9_3cfg13DefaultConfigE3newCs2bNgeUs5Jlc_6diesel(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([96 x i8]) align 8 captures(none) dereferenceable(96) initializes((0, 96)) %0, i64 noundef %1) unnamed_addr #3 {
bb.a:
  %.sroa.5.i = alloca [39 x i8], align 1          ; 2 uses
  %.sroa.5.16..sroa_idx.i = getelementptr inbounds nuw i8, ptr %.sroa.5.i, i64 7
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(32) %.sroa.5.16..sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(32) @169, i64 32, i1 false)
  %.sroa.57.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(25) %.sroa.57.0..sroa_idx, i8 0, i64 25, i1 false)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 80
  store i64 3, ptr %i.a, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 88
  store i64 %1, ptr %i.b, align 8
  store ptr @_RNvNvXs5_NtNtCseEiWxPEiqDv_18tracing_subscriber8registry7shardedNtB7_9DataInnerNtNtCscI6d9CVNmLh_4core7default7Default7default13NULL_METADATA, ptr %0, align 8
  %.sroa.46.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 0, ptr %.sroa.46.0..sroa_idx, align 8
  %.sroa.68.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 41
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(39) %.sroa.68.0..sroa_idx, ptr noundef nonnull align 1 dereferenceable(39) %.sroa.5.i, i64 39, i1 false)
  ret void
}

; Function Attrs: cold nonlazybind uwtable
define hidden void @_RNvMs2_NtNtNtCs3MibkwviICO_14regex_automata4util4pool5innerINtB5_4PoolNtNtNtBb_4meta5regex5CacheINtNtCs40k4W9msRzi_5alloc5boxed3BoxDINtNtNtCscI6d9CVNmLh_4core3ops8function2FnuEp6OutputB16_NtNtB2d_6marker4SyncNtNtNtB2d_5panic11unwind_safe10UnwindSafeNtB32_4SendNtB3m_13RefUnwindSafeEL_EE8get_slowCs2bNgeUs5Jlc_6diesel(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([32 x i8]) align 8 captures(none) dereferenceable(32) %0, ptr noundef nonnull align 8 %1, i64 noundef %2, i64 noundef %3) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [1400 x i8], align 8              ; 5 uses
  %i.b = alloca [1400 x i8], align 8              ; 5 uses
  %i.c = alloca [24 x i8], align 8                ; 9 uses
  %i.d = alloca [1400 x i8], align 8              ; 5 uses
  %i.e = icmp eq i64 %3, 0
  br i1 %i.e, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.g = cmpxchg ptr %i.f, i64 0, i64 1 acq_rel acquire, align 8
  %.sroa.18.0.in.i = extractvalue { i64, i1 } %i.g, 1
  br i1 %.sroa.18.0.in.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.i = load i64, ptr %i.h, align 8, !noundef !5 ; 3 uses
  %i.j = icmp ult i64 %i.i, 144115188075855872
  tail call void @llvm.assume(i1 %i.j)
  %i.k = icmp eq i64 %i.i, 0
  br i1 %i.k, label %bb.g, label %bb.h

bb.d:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 24
  call void @_RNvXsv_NtCs40k4W9msRzi_5alloc5boxedINtB5_3BoxDINtNtNtCscI6d9CVNmLh_4core3ops8function2FnuEp6OutputNtNtNtCs3MibkwviICO_14regex_automata4meta5regex5CacheNtNtBP_6marker4SyncNtNtNtBP_5panic11unwind_safe10UnwindSafeNtB2r_4SendNtB2K_13RefUnwindSafeEL_EIBJ_uE4callCs2bNgeUs5Jlc_6diesel(ptr noalias noundef nonnull sret([1400 x i8]) align 8 captures(address) dereferenceable(1400) %i.d, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.l)
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 48 ; 4 uses
  %i.n = load i64, ptr %i.m, align 8, !range !1151, !alias.scope !1152, !noundef !5
  %i.o = icmp eq i64 %i.n, -2
  br i1 %i.o, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCs3MibkwviICO_14regex_automata4meta5regex5CacheEECs2bNgeUs5Jlc_6diesel.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtNtCs3MibkwviICO_14regex_automata4meta5regex5CacheECs2bNgeUs5Jlc_6diesel(ptr noalias noundef nonnull align 8 dereferenceable(1400) %i.m)
          to label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCs3MibkwviICO_14regex_automata4meta5regex5CacheEECs2bNgeUs5Jlc_6diesel.exit unwind label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.p = landingpad { ptr, i32 }
          cleanup
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1400) %i.m, ptr noundef nonnull align 8 dereferenceable(1400) %i.d, i64 1400, i1 false)
  br label %common.resume

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCs3MibkwviICO_14regex_automata4meta5regex5CacheEECs2bNgeUs5Jlc_6diesel.exit: ; preds = %bb.d, %bb.e
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1400) %i.m, ptr noundef nonnull align 8 dereferenceable(1400) %i.d, i64 1400, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  %i.q = inttoptr i64 %2 to ptr
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %1, ptr %i.r, align 8
  store i64 1, ptr %0, align 8
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.q, ptr %i.s, align 8
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i8 0, ptr %i.t, align 8
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtNtCsgczF5crJ4sT_3std4sync6poison5mutex10MutexGuardINtNtCs40k4W9msRzi_5alloc3vec3VecINtNtB1B_5boxed3BoxNtNtNtCs3MibkwviICO_14regex_automata4meta5regex5CacheEEEECs2bNgeUs5Jlc_6diesel.exit22

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtNtCsgczF5crJ4sT_3std4sync6poison5mutex10MutexGuardINtNtCs40k4W9msRzi_5alloc3vec3VecINtNtB1B_5boxed3BoxNtNtNtCs3MibkwviICO_14regex_automata4meta5regex5CacheEEEECs2bNgeUs5Jlc_6diesel.exit22: ; preds = %bb.v, %_RNvMNtNtCsgczF5crJ4sT_3std4sync6poisonNtB2_4Flag4done.exit.i.i21, %bb.r, %_RNvMNtCs40k4W9msRzi_5alloc5boxedINtB2_3BoxNtNtNtCs3MibkwviICO_14regex_automata4meta5regex5CacheE3newCs2bNgeUs5Jlc_6diesel.exit9, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCs3MibkwviICO_14regex_automata4meta5regex5CacheEECs2bNgeUs5Jlc_6diesel.exit
  ret void

common.resume:                                    ; preds = %10, %bb.f, %bb.t
  %common.resume.op = phi { ptr, i32 } [ %i.bj, %bb.t ], [ %i.p, %bb.f ], [ %11, %10 ]
  resume { ptr, i32 } %common.resume.op

bb.g:                                             ; preds = %bb.c
  tail call void @_RNvNtNtCscI6d9CVNmLh_4core9panicking11panic_const23panic_const_rem_by_zero(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @95) #34
  unreachable

bb.h:                                             ; preds = %bb.c
  %4 = urem i64 %2, %i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.v = load ptr, ptr %i.u, align 8, !nonnull !5, !noundef !5
  %i.w = getelementptr inbounds nuw [64 x i8], ptr %i.v, i64 %4
  call void @_RNvMs5_NtNtNtCsgczF5crJ4sT_3std4sync6poison5mutexINtB5_5MutexINtNtCs40k4W9msRzi_5alloc3vec3VecINtNtB12_5boxed3BoxNtNtNtCs3MibkwviICO_14regex_automata4meta5regex5CacheEEE8try_lockCs2bNgeUs5Jlc_6diesel(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.c, ptr noundef nonnull align 8 %i.w)
  %i.x = load i64, ptr %i.c, align 8, !range !8, !noundef !5
  %i.y = trunc nuw i64 %i.x to i1
  br i1 %i.y, label %bb.w, label %bb.i

bb.i:                                             ; preds = %bb.h
  %5 = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.z = load ptr, ptr %5, align 8, !nonnull !5, !align !14, !noundef !5 ; 9 uses
  %6 = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %i.aa = load i8, ptr %6, align 8, !range !12, !noundef !5 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  %i.ab = getelementptr inbounds nuw i8, ptr %i.z, i64 24 ; 2 uses
  %i.ac = load i64, ptr %i.ab, align 8, !noundef !5 ; 3 uses
  %i.ad = icmp eq i64 %i.ac, 0
  br i1 %i.ad, label %bb.j, label %bb.n

bb.j:                                             ; preds = %bb.i
  %i.ae = getelementptr inbounds nuw i8, ptr %i.z, i64 4
  %i.af = trunc nuw i8 %i.aa to i1
  br i1 %i.af, label %_RNvMNtNtCsgczF5crJ4sT_3std4sync6poisonNtB2_4Flag4done.exit.i.i, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ag = load atomic i64, ptr @_RNvNtNtCsgczF5crJ4sT_3std9panicking11panic_count18GLOBAL_PANIC_COUNT monotonic, align 8
  %i.ah = and i64 %i.ag, 9223372036854775807
  %i.ai = icmp eq i64 %i.ah, 0
  br i1 %i.ai, label %_RNvMNtNtCsgczF5crJ4sT_3std4sync6poisonNtB2_4Flag4done.exit.i.i, label %.noexc19, !prof !15

.noexc19:                                         ; preds = %bb.k
  %i.aj = tail call noundef zeroext i1 @_RNvNtNtCsgczF5crJ4sT_3std9panicking11panic_count17is_zero_slow_path()
  br i1 %i.aj, label %_RNvMNtNtCsgczF5crJ4sT_3std4sync6poisonNtB2_4Flag4done.exit.i.i, label %bb.l

bb.l:                                             ; preds = %.noexc19
  store atomic i8 1, ptr %i.ae monotonic, align 4
  br label %_RNvMNtNtCsgczF5crJ4sT_3std4sync6poisonNtB2_4Flag4done.exit.i.i

_RNvMNtNtCsgczF5crJ4sT_3std4sync6poisonNtB2_4Flag4done.exit.i.i: ; preds = %bb.l, %.noexc19, %bb.k, %bb.j
  %i.ak = atomicrmw xchg ptr %i.z, i32 0 release, align 4
  %i.al = icmp eq i32 %i.ak, 2
  br i1 %i.al, label %bb.m, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtNtCsgczF5crJ4sT_3std4sync6poison5mutex10MutexGuardINtNtCs40k4W9msRzi_5alloc3vec3VecINtNtB1B_5boxed3BoxNtNtNtCs3MibkwviICO_14regex_automata4meta5regex5CacheEEEECs2bNgeUs5Jlc_6diesel.exit, !prof !10

bb.m:                                             ; preds = %_RNvMNtNtCsgczF5crJ4sT_3std4sync6poisonNtB2_4Flag4done.exit.i.i
  tail call void @_RNvMNtNtNtNtCsgczF5crJ4sT_3std3sys4sync5mutex5futexNtB2_5Mutex4wake(ptr noundef nonnull align 4 %i.z)
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtNtCsgczF5crJ4sT_3std4sync6poison5mutex10MutexGuardINtNtCs40k4W9msRzi_5alloc3vec3VecINtNtB1B_5boxed3BoxNtNtNtCs3MibkwviICO_14regex_automata4meta5regex5CacheEEEECs2bNgeUs5Jlc_6diesel.exit

bb.n:                                             ; preds = %bb.i
  %i.am = getelementptr inbounds nuw i8, ptr %i.z, i64 8
  %i.an = add nsw i64 %i.ac, -1                   ; 3 uses
  store i64 %i.an, ptr %i.ab, align 8
  %i.ao = load i64, ptr %i.am, align 8, !range !17, !noundef !5
  %i.ap = icmp samesign ult i64 %i.an, %i.ao
  tail call void @llvm.assume(i1 %i.ap)
  %i.aq = getelementptr inbounds nuw i8, ptr %i.z, i64 16
  %i.ar = load ptr, ptr %i.aq, align 8, !nonnull !5, !noundef !5
  %i.as = icmp ult i64 %i.ac, 1152921504606846977
  tail call void @llvm.assume(i1 %i.as)
  %i.at = getelementptr inbounds nuw [8 x i8], ptr %i.ar, i64 %i.an
  %i.au = load ptr, ptr %i.at, align 8, !nonnull !5, !align !14, !noundef !5
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %1, ptr %i.av, align 8
  store i64 0, ptr %0, align 8
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.au, ptr %i.aw, align 8
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i8 0, ptr %i.ax, align 8
  %i.ay = getelementptr inbounds nuw i8, ptr %i.z, i64 4
  %i.az = trunc nuw i8 %i.aa to i1
  br i1 %i.az, label %_RNvMNtNtCsgczF5crJ4sT_3std4sync6poisonNtB2_4Flag4done.exit.i.i21, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.ba = load atomic i64, ptr @_RNvNtNtCsgczF5crJ4sT_3std9panicking11panic_count18GLOBAL_PANIC_COUNT monotonic, align 8
  %i.bb = and i64 %i.ba, 9223372036854775807
  %i.bc = icmp eq i64 %i.bb, 0
  br i1 %i.bc, label %_RNvMNtNtCsgczF5crJ4sT_3std4sync6poisonNtB2_4Flag4done.exit.i.i21, label %bb.p, !prof !15

bb.p:                                             ; preds = %bb.o
  %i.bd = tail call noundef zeroext i1 @_RNvNtNtCsgczF5crJ4sT_3std9panicking11panic_count17is_zero_slow_path()
  br i1 %i.bd, label %_RNvMNtNtCsgczF5crJ4sT_3std4sync6poisonNtB2_4Flag4done.exit.i.i21, label %bb.q

bb.q:                                             ; preds = %bb.p
  store atomic i8 1, ptr %i.ay monotonic, align 4
  br label %_RNvMNtNtCsgczF5crJ4sT_3std4sync6poisonNtB2_4Flag4done.exit.i.i21

_RNvMNtNtCsgczF5crJ4sT_3std4sync6poisonNtB2_4Flag4done.exit.i.i21: ; preds = %bb.q, %bb.p, %bb.o, %bb.n
  %i.be = atomicrmw xchg ptr %i.z, i32 0 release, align 4
  %i.bf = icmp eq i32 %i.be, 2
  br i1 %i.bf, label %bb.r, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtNtCsgczF5crJ4sT_3std4sync6poison5mutex10MutexGuardINtNtCs40k4W9msRzi_5alloc3vec3VecINtNtB1B_5boxed3BoxNtNtNtCs3MibkwviICO_14regex_automata4meta5regex5CacheEEEECs2bNgeUs5Jlc_6diesel.exit22, !prof !10

bb.r:                                             ; preds = %_RNvMNtNtCsgczF5crJ4sT_3std4sync6poisonNtB2_4Flag4done.exit.i.i21
  tail call void @_RNvMNtNtNtNtCsgczF5crJ4sT_3std3sys4sync5mutex5futexNtB2_5Mutex4wake(ptr noundef nonnull align 4 %i.z)
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtNtCsgczF5crJ4sT_3std4sync6poison5mutex10MutexGuardINtNtCs40k4W9msRzi_5alloc3vec3VecINtNtB1B_5boxed3BoxNtNtNtCs3MibkwviICO_14regex_automata4meta5regex5CacheEEEECs2bNgeUs5Jlc_6diesel.exit22

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtNtCsgczF5crJ4sT_3std4sync6poison5mutex10MutexGuardINtNtCs40k4W9msRzi_5alloc3vec3VecINtNtB1B_5boxed3BoxNtNtNtCs3MibkwviICO_14regex_automata4meta5regex5CacheEEEECs2bNgeUs5Jlc_6diesel.exit: ; preds = %bb.m, %_RNvMNtNtCsgczF5crJ4sT_3std4sync6poisonNtB2_4Flag4done.exit.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.bg = getelementptr inbounds nuw i8, ptr %1, i64 24
  call void @_RNvXsv_NtCs40k4W9msRzi_5alloc5boxedINtB5_3BoxDINtNtNtCscI6d9CVNmLh_4core3ops8function2FnuEp6OutputNtNtNtCs3MibkwviICO_14regex_automata4meta5regex5CacheNtNtBP_6marker4SyncNtNtNtBP_5panic11unwind_safe10UnwindSafeNtB2r_4SendNtB2K_13RefUnwindSafeEL_EIBJ_uE4callCs2bNgeUs5Jlc_6diesel(ptr noalias noundef nonnull sret([1400 x i8]) align 8 captures(address) dereferenceable(1400) %i.b, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.bg)
  call void @_RNvCs9hJ03s5DiqP_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #28, !noalias !1153
  %i.bh = call noundef align 8 dereferenceable_or_null(1400) ptr @_RNvCs9hJ03s5DiqP_7___rustc12___rust_alloc(i64 noundef range(i64 0, 1401) 1400, i64 noundef range(i64 1, 9) 8) #28, !noalias !1153 ; 3 uses
  %i.bi = icmp eq ptr %i.bh, null
  br i1 %i.bi, label %bb.s, label %bb.v, !prof !6

bb.s:                                             ; preds = %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtNtCsgczF5crJ4sT_3std4sync6poison5mutex10MutexGuardINtNtCs40k4W9msRzi_5alloc3vec3VecINtNtB1B_5boxed3BoxNtNtNtCs3MibkwviICO_14regex_automata4meta5regex5CacheEEEECs2bNgeUs5Jlc_6diesel.exit
  invoke void @_RNvNtCs40k4W9msRzi_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 1400) #34
          to label %.noexc23 unwind label %bb.t

.noexc23:                                         ; preds = %bb.s
  unreachable

bb.t:                                             ; preds = %bb.s
  %i.bj = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtNtCs3MibkwviICO_14regex_automata4meta5regex5CacheECs2bNgeUs5Jlc_6diesel(ptr noalias noundef nonnull align 8 dereferenceable(1400) %i.b) #35
          to label %common.resume unwind label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.bk = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #36
  unreachable

bb.v:                                             ; preds = %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtNtCsgczF5crJ4sT_3std4sync6poison5mutex10MutexGuardINtNtCs40k4W9msRzi_5alloc3vec3VecINtNtB1B_5boxed3BoxNtNtNtCs3MibkwviICO_14regex_automata4meta5regex5CacheEEEECs2bNgeUs5Jlc_6diesel.exit
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1400) %i.bh, ptr noundef nonnull align 8 dereferenceable(1400) %i.b, i64 1400, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %i.bl = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %1, ptr %i.bl, align 8
  store i64 0, ptr %0, align 8
  %i.bm = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.bh, ptr %i.bm, align 8
  %i.bn = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i8 0, ptr %i.bn, align 8
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtNtCsgczF5crJ4sT_3std4sync6poison5mutex10MutexGuardINtNtCs40k4W9msRzi_5alloc3vec3VecINtNtB1B_5boxed3BoxNtNtNtCs3MibkwviICO_14regex_automata4meta5regex5CacheEEEECs2bNgeUs5Jlc_6diesel.exit22

bb.w:                                             ; preds = %bb.h
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1154)
  %7 = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %.val.i25 = load ptr, ptr %7, align 8, !alias.scope !1154 ; 4 uses
  %8 = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %.val3.i26 = load i8, ptr %8, align 8, !range !13, !alias.scope !1154, !noundef !5 ; 2 uses
  %.not.i.i27 = icmp eq i8 %.val3.i26, 2
  br i1 %.not.i.i27, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6result6ResultINtNtNtNtCsgczF5crJ4sT_3std4sync6poison5mutex10MutexGuardINtNtCs40k4W9msRzi_5alloc3vec3VecINtNtB1X_5boxed3BoxNtNtNtCs3MibkwviICO_14regex_automata4meta5regex5CacheEEEINtB12_12TryLockErrorBX_EEECs2bNgeUs5Jlc_6diesel.exit32, label %bb.x

bb.x:                                             ; preds = %bb.w
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i25) ]
  %i.bo = getelementptr inbounds nuw i8, ptr %.val.i25, i64 4
  %i.bp = trunc nuw i8 %.val3.i26 to i1
  br i1 %i.bp, label %_RNvMNtNtCsgczF5crJ4sT_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i.i.i28, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.bq = load atomic i64, ptr @_RNvNtNtCsgczF5crJ4sT_3std9panicking11panic_count18GLOBAL_PANIC_COUNT monotonic, align 8, !noalias !1154
  %i.br = and i64 %i.bq, 9223372036854775807
  %i.bs = icmp eq i64 %i.br, 0
  br i1 %i.bs, label %_RNvMNtNtCsgczF5crJ4sT_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i.i.i28, label %bb.z, !prof !15

bb.z:                                             ; preds = %bb.y
  %i.bt = tail call noundef zeroext i1 @_RNvNtNtCsgczF5crJ4sT_3std9panicking11panic_count17is_zero_slow_path(), !noalias !1154
  br i1 %i.bt, label %_RNvMNtNtCsgczF5crJ4sT_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i.i.i28, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  store atomic i8 1, ptr %i.bo monotonic, align 1, !noalias !1154
  br label %_RNvMNtNtCsgczF5crJ4sT_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i.i.i28

_RNvMNtNtCsgczF5crJ4sT_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i.i.i28: ; preds = %bb.aa, %bb.z, %bb.y, %bb.x
  %i.bu = atomicrmw xchg ptr %.val.i25, i32 0 release, align 4, !noalias !1154
  %i.bv = icmp eq i32 %i.bu, 2
  br i1 %i.bv, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtNtCsgczF5crJ4sT_3std4sync6poison5mutex10MutexGuardINtNtCs40k4W9msRzi_5alloc3vec3VecINtNtB1B_5boxed3BoxNtNtNtCs3MibkwviICO_14regex_automata4meta5regex5CacheEEEECs2bNgeUs5Jlc_6diesel.exit.sink.split.i29, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6result6ResultINtNtNtNtCsgczF5crJ4sT_3std4sync6poison5mutex10MutexGuardINtNtCs40k4W9msRzi_5alloc3vec3VecINtNtB1X_5boxed3BoxNtNtNtCs3MibkwviICO_14regex_automata4meta5regex5CacheEEEINtB12_12TryLockErrorBX_EEECs2bNgeUs5Jlc_6diesel.exit32, !prof !10

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtNtCsgczF5crJ4sT_3std4sync6poison5mutex10MutexGuardINtNtCs40k4W9msRzi_5alloc3vec3VecINtNtB1B_5boxed3BoxNtNtNtCs3MibkwviICO_14regex_automata4meta5regex5CacheEEEECs2bNgeUs5Jlc_6diesel.exit.sink.split.i29: ; preds = %_RNvMNtNtCsgczF5crJ4sT_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i.i.i28
  tail call void @_RNvMNtNtNtNtCsgczF5crJ4sT_3std3sys4sync5mutex5futexNtB2_5Mutex4wake(ptr noundef nonnull align 4 %.val.i25), !noalias !1154
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6result6ResultINtNtNtNtCsgczF5crJ4sT_3std4sync6poison5mutex10MutexGuardINtNtCs40k4W9msRzi_5alloc3vec3VecINtNtB1X_5boxed3BoxNtNtNtCs3MibkwviICO_14regex_automata4meta5regex5CacheEEEINtB12_12TryLockErrorBX_EEECs2bNgeUs5Jlc_6diesel.exit32

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6result6ResultINtNtNtNtCsgczF5crJ4sT_3std4sync6poison5mutex10MutexGuardINtNtCs40k4W9msRzi_5alloc3vec3VecINtNtB1X_5boxed3BoxNtNtNtCs3MibkwviICO_14regex_automata4meta5regex5CacheEEEINtB12_12TryLockErrorBX_EEECs2bNgeUs5Jlc_6diesel.exit32: ; preds = %bb.w, %_RNvMNtNtCsgczF5crJ4sT_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i.i.i28, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtNtCsgczF5crJ4sT_3std4sync6poison5mutex10MutexGuardINtNtCs40k4W9msRzi_5alloc3vec3VecINtNtB1B_5boxed3BoxNtNtNtCs3MibkwviICO_14regex_automata4meta5regex5CacheEEEECs2bNgeUs5Jlc_6diesel.exit.sink.split.i29
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.bw = getelementptr inbounds nuw i8, ptr %1, i64 24
  call void @_RNvXsv_NtCs40k4W9msRzi_5alloc5boxedINtB5_3BoxDINtNtNtCscI6d9CVNmLh_4core3ops8function2FnuEp6OutputNtNtNtCs3MibkwviICO_14regex_automata4meta5regex5CacheNtNtBP_6marker4SyncNtNtNtBP_5panic11unwind_safe10UnwindSafeNtB2r_4SendNtB2K_13RefUnwindSafeEL_EIBJ_uE4callCs2bNgeUs5Jlc_6diesel(ptr noalias noundef nonnull sret([1400 x i8]) align 8 captures(address) dereferenceable(1400) %i.a, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.bw)
  call void @_RNvCs9hJ03s5DiqP_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #28, !noalias !1155
  %i.bx = call noundef align 8 dereferenceable_or_null(1400) ptr @_RNvCs9hJ03s5DiqP_7___rustc12___rust_alloc(i64 noundef range(i64 0, 1401) 1400, i64 noundef range(i64 1, 9) 8) #28, !noalias !1155 ; 3 uses
  %i.by = icmp eq ptr %i.bx, null
  br i1 %i.by, label %9, label %_RNvMNtCs40k4W9msRzi_5alloc5boxedINtB2_3BoxNtNtNtCs3MibkwviICO_14regex_automata4meta5regex5CacheE3newCs2bNgeUs5Jlc_6diesel.exit9, !prof !6

9:                                                ; preds = %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6result6ResultINtNtNtNtCsgczF5crJ4sT_3std4sync6poison5mutex10MutexGuardINtNtCs40k4W9msRzi_5alloc3vec3VecINtNtB1X_5boxed3BoxNtNtNtCs3MibkwviICO_14regex_automata4meta5regex5CacheEEEINtB12_12TryLockErrorBX_EEECs2bNgeUs5Jlc_6diesel.exit32
  invoke void @_RNvNtCs40k4W9msRzi_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 1400) #34
          to label %.noexc31 unwind label %10

.noexc31:                                         ; preds = %9
  unreachable

10:                                               ; preds = %9
  %11 = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtNtCs3MibkwviICO_14regex_automata4meta5regex5CacheECs2bNgeUs5Jlc_6diesel(ptr noalias noundef nonnull align 8 dereferenceable(1400) %i.a) #35
          to label %common.resume unwind label %12

12:                                               ; preds = %10
  %13 = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #36
  unreachable

_RNvMNtCs40k4W9msRzi_5alloc5boxedINtB2_3BoxNtNtNtCs3MibkwviICO_14regex_automata4meta5regex5CacheE3newCs2bNgeUs5Jlc_6diesel.exit9: ; preds = %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6result6ResultINtNtNtNtCsgczF5crJ4sT_3std4sync6poison5mutex10MutexGuardINtNtCs40k4W9msRzi_5alloc3vec3VecINtNtB1X_5boxed3BoxNtNtNtCs3MibkwviICO_14regex_automata4meta5regex5CacheEEEINtB12_12TryLockErrorBX_EEECs2bNgeUs5Jlc_6diesel.exit32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1400) %i.bx, ptr noundef nonnull align 8 dereferenceable(1400) %i.a, i64 1400, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %14 = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %1, ptr %14, align 8
  store i64 0, ptr %0, align 8
  %15 = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.bx, ptr %15, align 8
  %16 = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i8 1, ptr %16, align 8
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtNtCsgczF5crJ4sT_3std4sync6poison5mutex10MutexGuardINtNtCs40k4W9msRzi_5alloc3vec3VecINtNtB1B_5boxed3BoxNtNtNtCs3MibkwviICO_14regex_automata4meta5regex5CacheEEEECs2bNgeUs5Jlc_6diesel.exit22
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @_RNvMs2_NtNtNtCs3MibkwviICO_14regex_automata4util4pool5innerINtB5_4PoolNtNtNtBb_4meta5regex5CacheINtNtCs40k4W9msRzi_5alloc5boxed3BoxDINtNtNtCscI6d9CVNmLh_4core3ops8function2FnuEp6OutputB16_NtNtB2d_6marker4SyncNtNtNtB2d_5panic11unwind_safe10UnwindSafeNtB32_4SendNtB3m_13RefUnwindSafeEL_EE9put_valueCs2bNgeUs5Jlc_6diesel(ptr nofree noundef nonnull readonly align 8 captures(none) %0, ptr noalias noundef nonnull align 8 %1) unnamed_addr #5 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 43 uses
  %i.b = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr @_RNvNCNKNvNtNtNtCs3MibkwviICO_14regex_automata4util4pool5inner9THREAD_ID0s_023___RUST_STD_INTERNAL_VAL) ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 2 uses
  %i.d = load i8, ptr %i.c, align 8, !range !12, !noalias !1189, !noundef !5
  %i.e = trunc nuw i8 %i.d to i1
  br i1 %i.e, label %bb.d, label %bb.b, !prof !15

bb.b:                                             ; preds = %bb.a
  %i.f = atomicrmw add ptr @_RNvNtNtNtCs3MibkwviICO_14regex_automata4util4pool5inner7COUNTER, i64 1 monotonic, align 8, !noalias !1190 ; 2 uses
  %i.g = icmp eq i64 %i.f, 0
  br i1 %i.g, label %bb.c, label %.noexc27, !prof !10

bb.c:                                             ; preds = %bb.b
  invoke void @_RNvNtCscI6d9CVNmLh_4core9panicking9panic_fmt(ptr noundef nonnull @101, ptr noundef nonnull inttoptr (i64 87 to ptr), ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @102) #34
          to label %.noexc28 unwind label %.loopexit.split-lp

.noexc28:                                         ; preds = %bb.c
  unreachable

.noexc27:                                         ; preds = %bb.b
  store i64 %i.f, ptr %i.b, align 8, !noalias !1190
  store i8 1, ptr %i.c, align 8, !noalias !1190
  br label %bb.d

bb.d:                                             ; preds = %bb.a, %.noexc27
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 10 uses
  %i.i = load i64, ptr %i.h, align 8, !noundef !5 ; 3 uses
  %i.j = icmp ult i64 %i.i, 144115188075855872
  tail call void @llvm.assume(i1 %i.j)
  %i.k = icmp eq i64 %i.i, 0
  br i1 %i.k, label %bb.e, label %bb.h

bb.e:                                             ; preds = %bb.d
  invoke void @_RNvNtNtCscI6d9CVNmLh_4core9panicking11panic_const23panic_const_rem_by_zero(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @96) #34
          to label %bb.f unwind label %.loopexit.split-lp

bb.f:                                             ; preds = %bb.i, %bb.e
  unreachable

common.resume:                                    ; preds = %bb.cj, %.body, %bb.g
  %common.resume.op = phi { ptr, i32 } [ %i.l, %bb.g ], [ %i.ab, %.body ], [ %lpad.phi, %bb.cj ]
  resume { ptr, i32 } %common.resume.op

bb.g:                                             ; preds = %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6result6ResultINtNtNtNtCsgczF5crJ4sT_3std4sync6poison5mutex10MutexGuardINtNtCs40k4W9msRzi_5alloc3vec3VecINtNtB1X_5boxed3BoxNtNtNtCs3MibkwviICO_14regex_automata4meta5regex5CacheEEEINtB12_12TryLockErrorBX_EEECs2bNgeUs5Jlc_6diesel.exit26.9
  %i.l = landingpad { ptr, i32 }
          cleanup
  tail call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %1, i64 noundef 1400, i64 noundef 8) #28
  br label %common.resume

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc5boxed3BoxNtNtNtCs3MibkwviICO_14regex_automata4meta5regex5CacheEECs2bNgeUs5Jlc_6diesel.exit: ; preds = %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6result6ResultINtNtNtNtCsgczF5crJ4sT_3std4sync6poison5mutex10MutexGuardINtNtCs40k4W9msRzi_5alloc3vec3VecINtNtB1X_5boxed3BoxNtNtNtCs3MibkwviICO_14regex_automata4meta5regex5CacheEEEINtB12_12TryLockErrorBX_EEECs2bNgeUs5Jlc_6diesel.exit26.9
  tail call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %1, i64 noundef 1400, i64 noundef 8) #28
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtNtCsgczF5crJ4sT_3std4sync6poison5mutex10MutexGuardINtNtCs40k4W9msRzi_5alloc3vec3VecINtNtB1B_5boxed3BoxNtNtNtCs3MibkwviICO_14regex_automata4meta5regex5CacheEEEECs2bNgeUs5Jlc_6diesel.exit

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtNtCsgczF5crJ4sT_3std4sync6poison5mutex10MutexGuardINtNtCs40k4W9msRzi_5alloc3vec3VecINtNtB1B_5boxed3BoxNtNtNtCs3MibkwviICO_14regex_automata4meta5regex5CacheEEEECs2bNgeUs5Jlc_6diesel.exit: ; preds = %bb.r, %_RNvMNtNtCsgczF5crJ4sT_3std4sync6poisonNtB2_4Flag4done.exit.i.i, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc5boxed3BoxNtNtNtCs3MibkwviICO_14regex_automata4meta5regex5CacheEECs2bNgeUs5Jlc_6diesel.exit
  ret void

bb.h:                                             ; preds = %bb.d
  %.val.i.i = load i64, ptr %i.b, align 8, !noalias !1191, !noundef !5
  %i.m = urem i64 %.val.i.i, %i.i                 ; 20 uses
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 10 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 11 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 11 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.q = load ptr, ptr %i.n, align 8, !nonnull !5, !noundef !5
  %i.r = getelementptr inbounds nuw [64 x i8], ptr %i.q, i64 %i.m
  invoke void @_RNvMs5_NtNtNtCsgczF5crJ4sT_3std4sync6poison5mutexINtB5_5MutexINtNtCs40k4W9msRzi_5alloc3vec3VecINtNtB12_5boxed3BoxNtNtNtCs3MibkwviICO_14regex_automata4meta5regex5CacheEEE8try_lockCs2bNgeUs5Jlc_6diesel(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, ptr noundef nonnull align 8 %i.r)
          to label %bb.j unwind label %.loopexit

bb.i:                                             ; preds = %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6result6ResultINtNtNtNtCsgczF5crJ4sT_3std4sync6poison5mutex10MutexGuardINtNtCs40k4W9msRzi_5alloc3vec3VecINtNtB1X_5boxed3BoxNtNtNtCs3MibkwviICO_14regex_automata4meta5regex5CacheEEEINtB12_12TryLockErrorBX_EEECs2bNgeUs5Jlc_6diesel.exit26.8, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6result6ResultINtNtNtNtCsgczF5crJ4sT_3std4sync6poison5mutex10MutexGuardINtNtCs40k4W9msRzi_5alloc3vec3VecINtNtB1X_5boxed3BoxNtNtNtCs3MibkwviICO_14regex_automata4meta5regex5CacheEEEINtB12_12TryLockErrorBX_EEECs2bNgeUs5Jlc_6diesel.exit26.7, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6result6ResultINtNtNtNtCsgczF5crJ4sT_3std4sync6poison5mutex10MutexGuardINtNtCs40k4W9msRzi_5alloc3vec3VecINtNtB1X_5boxed3BoxNtNtNtCs3MibkwviICO_14regex_automata4meta5regex5CacheEEEINtB12_12TryLockErrorBX_EEECs2bNgeUs5Jlc_6diesel.exit26.6, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6result6ResultINtNtNtNtCsgczF5crJ4sT_3std4sync6poison5mutex10MutexGuardINtNtCs40k4W9msRzi_5alloc3vec3VecINtNtB1X_5boxed3BoxNtNtNtCs3MibkwviICO_14regex_automata4meta5regex5CacheEEEINtB12_12TryLockErrorBX_EEECs2bNgeUs5Jlc_6diesel.exit26.5, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6result6ResultINtNtNtNtCsgczF5crJ4sT_3std4sync6poison5mutex10MutexGuardINtNtCs40k4W9msRzi_5alloc3vec3VecINtNtB1X_5boxed3BoxNtNtNtCs3MibkwviICO_14regex_automata4meta5regex5CacheEEEINtB12_12TryLockErrorBX_EEECs2bNgeUs5Jlc_6diesel.exit26.4, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6result6ResultINtNtNtNtCsgczF5crJ4sT_3std4sync6poison5mutex10MutexGuardINtNtCs40k4W9msRzi_5alloc3vec3VecINtNtB1X_5boxed3BoxNtNtNtCs3MibkwviICO_14regex_automata4meta5regex5CacheEEEINtB12_12TryLockErrorBX_EEECs2bNgeUs5Jlc_6diesel.exit26.3, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6result6ResultINtNtNtNtCsgczF5crJ4sT_3std4sync6poison5mutex10MutexGuardINtNtCs40k4W9msRzi_5alloc3vec3VecINtNtB1X_5boxed3BoxNtNtNtCs3MibkwviICO_14regex_automata4meta5regex5CacheEEEINtB12_12TryLockErrorBX_EEECs2bNgeUs5Jlc_6diesel.exit26.2, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6result6ResultINtNtNtNtCsgczF5crJ4sT_3std4sync6poison5mutex10MutexGuardINtNtCs40k4W9msRzi_5alloc3vec3VecINtNtB1X_5boxed3BoxNtNtNtCs3MibkwviICO_14regex_automata4meta5regex5CacheEEEINtB12_12TryLockErrorBX_EEECs2bNgeUs5Jlc_6diesel.exit26.1, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6result6ResultINtNtNtNtCsgczF5crJ4sT_3std4sync6poison5mutex10MutexGuardINtNtCs40k4W9msRzi_5alloc3vec3VecINtNtB1X_5boxed3BoxNtNtNtCs3MibkwviICO_14regex_automata4meta5regex5CacheEEEINtB12_12TryLockErrorBX_EEECs2bNgeUs5Jlc_6diesel.exit26
  %.lcssa = phi i64 [ %i.fg, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6result6ResultINtNtNtNtCsgczF5crJ4sT_3std4sync6poison5mutex10MutexGuardINtNtCs40k4W9msRzi_5alloc3vec3VecINtNtB1X_5boxed3BoxNtNtNtCs3MibkwviICO_14regex_automata4meta5regex5CacheEEEINtB12_12TryLockErrorBX_EEECs2bNgeUs5Jlc_6diesel.exit26.8 ], [ %i.ay, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6result6ResultINtNtNtNtCsgczF5crJ4sT_3std4sync6poison5mutex10MutexGuardINtNtCs40k4W9msRzi_5alloc3vec3VecINtNtB1X_5boxed3BoxNtNtNtCs3MibkwviICO_14regex_automata4meta5regex5CacheEEEINtB12_12TryLockErrorBX_EEECs2bNgeUs5Jlc_6diesel.exit26 ], [ %i.bm, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6result6ResultINtNtNtNtCsgczF5crJ4sT_3std4sync6poison5mutex10MutexGuardINtNtCs40k4W9msRzi_5alloc3vec3VecINtNtB1X_5boxed3BoxNtNtNtCs3MibkwviICO_14regex_automata4meta5regex5CacheEEEINtB12_12TryLockErrorBX_EEECs2bNgeUs5Jlc_6diesel.exit26.1 ], [ %i.ca, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6result6ResultINtNtNtNtCsgczF5crJ4sT_3std4sync6poison5mutex10MutexGuardINtNtCs40k4W9msRzi_5alloc3vec3VecINtNtB1X_5boxed3BoxNtNtNtCs3MibkwviICO_14regex_automata4meta5regex5CacheEEEINtB12_12TryLockErrorBX_EEECs2bNgeUs5Jlc_6diesel.exit26.2 ], [ %i.co, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6result6ResultINtNtNtNtCsgczF5crJ4sT_3std4sync6poison5mutex10MutexGuardINtNtCs40k4W9msRzi_5alloc3vec3VecINtNtB1X_5boxed3BoxNtNtNtCs3MibkwviICO_14regex_automata4meta5regex5CacheEEEINtB12_12TryLockErrorBX_EEECs2bNgeUs5Jlc_6diesel.exit26.3 ], [ %i.dc, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6result6ResultINtNtNtNtCsgczF5crJ4sT_3std4sync6poison5mutex10MutexGuardINtNtCs40k4W9msRzi_5alloc3vec3VecINtNtB1X_5boxed3BoxNtNtNtCs3MibkwviICO_14regex_automata4meta5regex5CacheEEEINtB12_12TryLockErrorBX_EEECs2bNgeUs5Jlc_6diesel.exit26.4 ], [ %i.dq, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6result6ResultINtNtNtNtCsgczF5crJ4sT_3std4sync6poison5mutex10MutexGuardINtNtCs40k4W9msRzi_5alloc3vec3VecINtNtB1X_5boxed3BoxNtNtNtCs3MibkwviICO_14regex_automata4meta5regex5CacheEEEINtB12_12TryLockErrorBX_EEECs2bNgeUs5Jlc_6diesel.exit26.5 ], [ %i.ee, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6result6ResultINtNtNtNtCsgczF5crJ4sT_3std4sync6poison5mutex10MutexGuardINtNtCs40k4W9msRzi_5alloc3vec3VecINtNtB1X_5boxed3BoxNtNtNtCs3MibkwviICO_14regex_automata4meta5regex5CacheEEEINtB12_12TryLockErrorBX_EEECs2bNgeUs5Jlc_6diesel.exit26.6 ], [ %i.es, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6result6ResultINtNtNtNtCsgczF5crJ4sT_3std4sync6poison5mutex10MutexGuardINtNtCs40k4W9msRzi_5alloc3vec3VecINtNtB1X_5boxed3BoxNtNtNtCs3MibkwviICO_14regex_automata4meta5regex5CacheEEEINtB12_12TryLockErrorBX_EEECs2bNgeUs5Jlc_6diesel.exit26.7 ]
  invoke void @_RNvNtCscI6d9CVNmLh_4core9panicking18panic_bounds_check(i64 noundef %i.m, i64 noundef %.lcssa, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @97) #34
          to label %bb.f unwind label %.loopexit.split-lp

bb.j:                                             ; preds = %bb.h
  %i.s = load i64, ptr %i.a, align 8, !range !8, !noundef !5
  %i.t = trunc nuw i64 %i.s to i1
  br i1 %i.t, label %bb.t, label %bb.k

bb.k:                                             ; preds = %bb.cd, %bb.bw, %bb.bp, %bb.bi, %bb.bb, %bb.au, %bb.an, %bb.ag, %bb.z, %bb.j
  %i.u = load ptr, ptr %i.o, align 8, !nonnull !5, !align !14, !noundef !5 ; 7 uses
  %i.v = load i8, ptr %i.p, align 8, !range !12, !noundef !5 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.w = getelementptr inbounds nuw i8, ptr %i.u, i64 8 ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.u, i64 24 ; 2 uses
  %i.y = load i64, ptr %i.x, align 8, !alias.scope !1192, !noundef !5 ; 3 uses
  %i.z = load i64, ptr %i.w, align 8, !range !17, !alias.scope !1192, !noundef !5
  %i.aa = icmp eq i64 %i.y, %i.z
  br i1 %i.aa, label %bb.l, label %bb.o

bb.l:                                             ; preds = %bb.k
  invoke void @_RNvMs3_NtCs40k4W9msRzi_5alloc7raw_vecINtB5_6RawVecINtNtB7_5boxed3BoxNtNtNtCs3MibkwviICO_14regex_automata4meta5regex5CacheEE8grow_oneCscFSI96EfbHA_10env_filter(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.w)
          to label %bb.o unwind label %bb.m, !noalias !1193

bb.m:                                             ; preds = %bb.l
  %i.ab = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc5boxed3BoxNtNtNtCs3MibkwviICO_14regex_automata4meta5regex5CacheEECs2bNgeUs5Jlc_6diesel(ptr nonnull align 8 %1) #35
          to label %.body unwind label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.ac = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #36
  unreachable

.body:                                            ; preds = %bb.m
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtNtCsgczF5crJ4sT_3std4sync6poison5mutex10MutexGuardINtNtCs40k4W9msRzi_5alloc3vec3VecINtNtB1B_5boxed3BoxNtNtNtCs3MibkwviICO_14regex_automata4meta5regex5CacheEEEECs2bNgeUs5Jlc_6diesel(ptr nonnull %i.u, i8 %i.v) #35
          to label %common.resume unwind label %bb.s

bb.o:                                             ; preds = %bb.l, %bb.k
  %i.ad = getelementptr inbounds nuw i8, ptr %i.u, i64 16
  %i.ae = load ptr, ptr %i.ad, align 8, !alias.scope !1192, !nonnull !5, !noundef !5
  %i.af = getelementptr inbounds nuw [8 x i8], ptr %i.ae, i64 %i.y
  store ptr %1, ptr %i.af, align 8, !noalias !1193
  %i.ag = add i64 %i.y, 1
  store i64 %i.ag, ptr %i.x, align 8, !alias.scope !1192
  %i.ah = getelementptr inbounds nuw i8, ptr %i.u, i64 4
  %i.ai = trunc nuw i8 %i.v to i1
  br i1 %i.ai, label %_RNvMNtNtCsgczF5crJ4sT_3std4sync6poisonNtB2_4Flag4done.exit.i.i, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.aj = load atomic i64, ptr @_RNvNtNtCsgczF5crJ4sT_3std9panicking11panic_count18GLOBAL_PANIC_COUNT monotonic, align 8
  %i.ak = and i64 %i.aj, 9223372036854775807
  %i.al = icmp eq i64 %i.ak, 0
  br i1 %i.al, label %_RNvMNtNtCsgczF5crJ4sT_3std4sync6poisonNtB2_4Flag4done.exit.i.i, label %.noexc14, !prof !15

.noexc14:                                         ; preds = %bb.p
  %i.am = tail call noundef zeroext i1 @_RNvNtNtCsgczF5crJ4sT_3std9panicking11panic_count17is_zero_slow_path()
  br i1 %i.am, label %_RNvMNtNtCsgczF5crJ4sT_3std4sync6poisonNtB2_4Flag4done.exit.i.i, label %bb.q

bb.q:                                             ; preds = %.noexc14
  store atomic i8 1, ptr %i.ah monotonic, align 4
  br label %_RNvMNtNtCsgczF5crJ4sT_3std4sync6poisonNtB2_4Flag4done.exit.i.i

_RNvMNtNtCsgczF5crJ4sT_3std4sync6poisonNtB2_4Flag4done.exit.i.i: ; preds = %bb.q, %.noexc14, %bb.p, %bb.o
  %i.an = atomicrmw xchg ptr %i.u, i32 0 release, align 4
  %i.ao = icmp eq i32 %i.an, 2
  br i1 %i.ao, label %bb.r, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtNtCsgczF5crJ4sT_3std4sync6poison5mutex10MutexGuardINtNtCs40k4W9msRzi_5alloc3vec3VecINtNtB1B_5boxed3BoxNtNtNtCs3MibkwviICO_14regex_automata4meta5regex5CacheEEEECs2bNgeUs5Jlc_6diesel.exit, !prof !10

bb.r:                                             ; preds = %_RNvMNtNtCsgczF5crJ4sT_3std4sync6poisonNtB2_4Flag4done.exit.i.i
  tail call void @_RNvMNtNtNtNtCsgczF5crJ4sT_3std3sys4sync5mutex5futexNtB2_5Mutex4wake(ptr noundef nonnull align 4 %i.u)
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtNtCsgczF5crJ4sT_3std4sync6poison5mutex10MutexGuardINtNtCs40k4W9msRzi_5alloc3vec3VecINtNtB1B_5boxed3BoxNtNtNtCs3MibkwviICO_14regex_automata4meta5regex5CacheEEEECs2bNgeUs5Jlc_6diesel.exit

bb.s:                                             ; preds = %bb.cj, %.body
  %i.ap = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #36
  unreachable

bb.t:                                             ; preds = %bb.j
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1194)
  %.val.i16 = load ptr, ptr %i.o, align 8, !alias.scope !1194 ; 4 uses
  %.val3.i17 = load i8, ptr %i.p, align 8, !range !13, !alias.scope !1194, !noundef !5 ; 2 uses
  %.not.i.i18 = icmp eq i8 %.val3.i17, 2
  br i1 %.not.i.i18, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6result6ResultINtNtNtNtCsgczF5crJ4sT_3std4sync6poison5mutex10MutexGuardINtNtCs40k4W9msRzi_5alloc3vec3VecINtNtB1X_5boxed3BoxNtNtNtCs3MibkwviICO_14regex_automata4meta5regex5CacheEEEINtB12_12TryLockErrorBX_EEECs2bNgeUs5Jlc_6diesel.exit26, label %bb.u

bb.u:                                             ; preds = %bb.t
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i16) ]
  %i.aq = getelementptr inbounds nuw i8, ptr %.val.i16, i64 4
  %i.ar = trunc nuw i8 %.val3.i17 to i1
  br i1 %i.ar, label %_RNvMNtNtCsgczF5crJ4sT_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i.i.i19, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.as = load atomic i64, ptr @_RNvNtNtCsgczF5crJ4sT_3std9panicking11panic_count18GLOBAL_PANIC_COUNT monotonic, align 8, !noalias !1194
  %i.at = and i64 %i.as, 9223372036854775807
  %i.au = icmp eq i64 %i.at, 0
  br i1 %i.au, label %_RNvMNtNtCsgczF5crJ4sT_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i.i.i19, label %bb.w, !prof !15

bb.w:                                             ; preds = %bb.v
  %i.av = invoke noundef zeroext i1 @_RNvNtNtCsgczF5crJ4sT_3std9panicking11panic_count17is_zero_slow_path()
          to label %.noexc24 unwind label %.loopexit

.noexc24:                                         ; preds = %bb.w
  br i1 %i.av, label %_RNvMNtNtCsgczF5crJ4sT_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i.i.i19, label %bb.x

bb.x:                                             ; preds = %.noexc24
  store atomic i8 1, ptr %i.aq monotonic, align 1, !noalias !1194
  br label %_RNvMNtNtCsgczF5crJ4sT_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i.i.i19

_RNvMNtNtCsgczF5crJ4sT_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i.i.i19: ; preds = %bb.x, %.noexc24, %bb.v, %bb.u
  %i.aw = atomicrmw xchg ptr %.val.i16, i32 0 release, align 4, !noalias !1194
  %i.ax = icmp eq i32 %i.aw, 2
  br i1 %i.ax, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtNtCsgczF5crJ4sT_3std4sync6poison5mutex10MutexGuardINtNtCs40k4W9msRzi_5alloc3vec3VecINtNtB1B_5boxed3BoxNtNtNtCs3MibkwviICO_14regex_automata4meta5regex5CacheEEEECs2bNgeUs5Jlc_6diesel.exit.sink.split.i20, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6result6ResultINtNtNtNtCsgczF5crJ4sT_3std4sync6poison5mutex10MutexGuardINtNtCs40k4W9msRzi_5alloc3vec3VecINtNtB1X_5boxed3BoxNtNtNtCs3MibkwviICO_14regex_automata4meta5regex5CacheEEEINtB12_12TryLockErrorBX_EEECs2bNgeUs5Jlc_6diesel.exit26, !prof !10

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtNtCsgczF5crJ4sT_3std4sync6poison5mutex10MutexGuardINtNtCs40k4W9msRzi_5alloc3vec3VecINtNtB1B_5boxed3BoxNtNtNtCs3MibkwviICO_14regex_automata4meta5regex5CacheEEEECs2bNgeUs5Jlc_6diesel.exit.sink.split.i20: ; preds = %_RNvMNtNtCsgczF5crJ4sT_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i.i.i19
  invoke void @_RNvMNtNtNtNtCsgczF5crJ4sT_3std3sys4sync5mutex5futexNtB2_5Mutex4wake(ptr noundef nonnull align 4 %.val.i16)
          to label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6result6ResultINtNtNtNtCsgczF5crJ4sT_3std4sync6poison5mutex10MutexGuardINtNtCs40k4W9msRzi_5alloc3vec3VecINtNtB1X_5boxed3BoxNtNtNtCs3MibkwviICO_14regex_automata4meta5regex5CacheEEEINtB12_12TryLockErrorBX_EEECs2bNgeUs5Jlc_6diesel.exit26 unwind label %.loopexit

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6result6ResultINtNtNtNtCsgczF5crJ4sT_3std4sync6poison5mutex10MutexGuardINtNtCs40k4W9msRzi_5alloc3vec3VecINtNtB1X_5boxed3BoxNtNtNtCs3MibkwviICO_14regex_automata4meta5regex5CacheEEEINtB12_12TryLockErrorBX_EEECs2bNgeUs5Jlc_6diesel.exit26: ; preds = %_RNvMNtNtCsgczF5crJ4sT_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i.i.i19, %bb.t, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtNtCsgczF5crJ4sT_3std4sync6poison5mutex10MutexGuardINtNtCs40k4W9msRzi_5alloc3vec3VecINtNtB1B_5boxed3BoxNtNtNtCs3MibkwviICO_14regex_automata4meta5regex5CacheEEEECs2bNgeUs5Jlc_6diesel.exit.sink.split.i20
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.ay = load i64, ptr %i.h, align 8, !noundef !5 ; 2 uses
  %i.az = icmp ult i64 %i.m, %i.ay
  br i1 %i.az, label %bb.y, label %bb.i

end_hunk_0
