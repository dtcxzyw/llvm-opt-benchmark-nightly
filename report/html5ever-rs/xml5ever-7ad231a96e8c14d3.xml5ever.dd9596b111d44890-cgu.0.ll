Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/html5ever-rs/original/xml5ever-7ad231a96e8c14d3.xml5ever.dd9596b111d44890-cgu.0?download=true
inline.NumInlined: 119
inline.NumDeleted: 76
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumRuntimeUnrolled: 3
loop-unroll.NumUnrolled: 5
begin_hunk_0_@_RNvMsi_NtNtNtCsexYYUdYSQU6_5alloc11collections5btree3mapINtB5_8BTreeMapINtNtCskKLDkoKarTP_4core6option6OptionINtNtCsgv7xG79AfeB_12string_cache4atom4AtomNtCsbN1FUDjLgAL_9web_atoms15PrefixStaticSetEEIB18_IB1K_NtB2s_18NamespaceStaticSetEEE6insertCsj1ugBVjDER0_8xml5ever:bb.a
  %i.q = trunc nuw i64 %i.p to i1
  %i.r = getelementptr inbounds nuw i8, ptr %i.f, i64 8 ; 2 uses
  %.sroa.13.16..sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 16 ; 2 uses
  %.sroa.1320.16..sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 24 ; 2 uses
  br i1 %i.q, label %bb.h, label %bb.e

bb.e:                                             ; preds = %bb.d
  %.sroa.7.8.copyload15 = load i64, ptr %i.r, align 8, !noalias !85
  %.sroa.11.8.copyload17 = load ptr, ptr %.sroa.13.16..sroa_idx, align 8, !noalias !85
  %.sroa.13.8.copyload19 = load i64, ptr %.sroa.1320.16..sroa_idx, align 8, !noalias !85
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !86
  %i.s = icmp ne i64 %1, 0
  %i.t = and i64 %1, 3
  %i.u = icmp eq i64 %i.t, 0
  %or.cond.i.i = and i1 %i.s, %i.u
  br i1 %or.cond.i.i, label %bb.f, label %bb.k

bb.f:                                             ; preds = %bb.e
  %i.v = inttoptr i64 %1 to ptr
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 24
  %i.x = atomicrmw sub ptr %i.w, i64 1 seq_cst, align 8, !noalias !88
  %i.y = icmp eq i64 %i.x, 1
  br i1 %i.y, label %bb.g, label %bb.k, !prof !6

bb.g:                                             ; preds = %bb.f
  invoke void @_RINvNvXs4_NtCsgv7xG79AfeB_12string_cache4atomINtB8_4AtompENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4drop9drop_slowNtCsbN1FUDjLgAL_9web_atoms15PrefixStaticSetECsj1ugBVjDER0_8xml5ever(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.g)
          to label %bb.k unwind label %bb.j

bb.h:                                             ; preds = %bb.d
  %.sroa.11.16.copyload = load ptr, ptr %i.r, align 8, !noalias !85
  %.sroa.13.16.copyload = load i64, ptr %.sroa.13.16..sroa_idx, align 8, !noalias !85
  %.sroa.1320.16.copyload = load ptr, ptr %.sroa.1320.16..sroa_idx, align 8, !noalias !85
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !86
  br label %bb.n

bb.i:                                             ; preds = %bb.b
  %i.z = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsgv7xG79AfeB_12string_cache4atom4AtomNtCsbN1FUDjLgAL_9web_atoms15PrefixStaticSetEEECsj1ugBVjDER0_8xml5ever(ptr noalias nofree noundef align 8 dereferenceable(8) %i.g) #19
          to label %.thread25 unwind label %bb.c, !noalias !86

bb.j:                                             ; preds = %bb.g
  %lpad.thr_comm.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %.thread25

bb.k:                                             ; preds = %bb.e, %bb.f, %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j)
  store i64 %.sroa.7.8.copyload15, ptr %i.j, align 8
  %.sroa.11.8..sroa_idx = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  store ptr %.sroa.11.8.copyload17, ptr %.sroa.11.8..sroa_idx, align 8
  %.sroa.13.8..sroa_idx = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  store i64 %.sroa.13.8.copyload19, ptr %.sroa.13.8..sroa_idx, align 8
  %.sroa.1320.8..sroa_idx = getelementptr inbounds nuw i8, ptr %i.j, i64 24
  store ptr %0, ptr %.sroa.1320.8..sroa_idx, align 8
  %i.aa = load i64, ptr %i.k, align 8, !noundef !4 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  store i64 %i.aa, ptr %i.e, align 8, !noalias !89
  %i.ab = invoke { ptr, ptr } @_RNvMsS_NtNtNtCsexYYUdYSQU6_5alloc11collections5btree4nodeINtB5_6HandleINtB5_7NodeRefNtNtB5_6marker3MutINtNtCskKLDkoKarTP_4core6option6OptionINtNtCsgv7xG79AfeB_12string_cache4atom4AtomNtCsbN1FUDjLgAL_9web_atoms15PrefixStaticSetEEIB1D_IB2f_NtB2X_18NamespaceStaticSetEENtB1m_14LeafOrInternalENtB1m_2KVE6kv_mutCsj1ugBVjDER0_8xml5ever(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.j)
          to label %bb.t unwind label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.ac = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsgv7xG79AfeB_12string_cache4atom4AtomNtCsbN1FUDjLgAL_9web_atoms18NamespaceStaticSetEEECsj1ugBVjDER0_8xml5ever(ptr noalias nofree noundef align 8 dereferenceable(8) %i.e) #19
          to label %.thread29 unwind label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.ad = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #18
  unreachable

bb.n:                                             ; preds = %bb.a, %bb.h
  %.sroa.1320.0 = phi ptr [ undef, %bb.a ], [ %.sroa.1320.16.copyload, %bb.h ]
  %.sroa.13.0 = phi i64 [ undef, %bb.a ], [ %.sroa.13.16.copyload, %bb.h ]
  %.sroa.11.0 = phi ptr [ null, %bb.a ], [ %.sroa.11.16.copyload, %bb.h ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i)
  store ptr %0, ptr %i.i, align 8
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.i, i64 8 ; 2 uses
  store i64 %1, ptr %.sroa.7.0..sroa_idx, align 8
  %.sroa.11.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.i, i64 16 ; 2 uses
  store ptr %.sroa.11.0, ptr %.sroa.11.0..sroa_idx, align 8
  %.sroa.13.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.i, i64 24
  store i64 %.sroa.13.0, ptr %.sroa.13.0..sroa_idx, align 8
  %.sroa.1320.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.i, i64 32
  store ptr %.sroa.1320.0, ptr %.sroa.1320.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  call void @llvm.experimental.noalias.scope.decl(metadata !90)
  call void @llvm.experimental.noalias.scope.decl(metadata !91)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  store i64 %2, ptr %i.d, align 8, !noalias !92
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !92
  %.not.i6 = icmp eq ptr %.sroa.11.0, null
  br i1 %.not.i6, label %bb.o, label %.noexc10

bb.o:                                             ; preds = %bb.n
  %i.ae = invoke { ptr, i64 } @_RINvMs8_NtNtNtCsexYYUdYSQU6_5alloc11collections5btree4nodeINtB6_7NodeRefNtNtB6_6marker5OwnedINtNtCskKLDkoKarTP_4core6option6OptionINtNtCsgv7xG79AfeB_12string_cache4atom4AtomNtCsbN1FUDjLgAL_9web_atoms15PrefixStaticSetEEIB1t_IB25_NtB2N_18NamespaceStaticSetEENtB1a_4LeafE8new_leafNtNtBc_5alloc6GlobalECsj1ugBVjDER0_8xml5ever()
          to label %.noexc9 unwind label %bb.q, !noalias !92 ; 2 uses

.noexc9:                                          ; preds = %bb.o
  %i.af = extractvalue { ptr, i64 } %i.ae, 0      ; 3 uses
  %i.ag = extractvalue { ptr, i64 } %i.ae, 1      ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.af) ]
  store ptr %i.af, ptr %0, align 8, !noalias !92
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.ag, ptr %i.ah, align 8, !noalias !92
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !92
  %i.ai = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i64 %i.ag, ptr %i.ai, align 8, !noalias !92
  store ptr %i.af, ptr %i.b, align 8, !noalias !92
  call void @_RNvMsu_NtNtNtCsexYYUdYSQU6_5alloc11collections5btree4nodeINtB5_7NodeRefNtNtB5_6marker3MutINtNtCskKLDkoKarTP_4core6option6OptionINtNtCsgv7xG79AfeB_12string_cache4atom4AtomNtCsbN1FUDjLgAL_9web_atoms15PrefixStaticSetEEIB1q_IB22_NtB2K_18NamespaceStaticSetEENtB19_4LeafE16push_with_handleCsj1ugBVjDER0_8xml5ever(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.c, ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.b, i64 noundef %1, i64 noundef %2)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !92
  br label %_RNvMs5_NtNtNtNtCsexYYUdYSQU6_5alloc11collections5btree3map5entryINtB5_13OccupiedEntryINtNtCskKLDkoKarTP_4core6option6OptionINtNtCsgv7xG79AfeB_12string_cache4atom4AtomNtCsbN1FUDjLgAL_9web_atoms15PrefixStaticSetEEIB1m_IB1Y_NtB2G_18NamespaceStaticSetEEE8into_mutCsj1ugBVjDER0_8xml5ever.exit

.noexc10:                                         ; preds = %bb.n
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !92
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.a, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.11.0..sroa_idx, i64 24, i1 false), !noalias !90
  %i.aj = getelementptr inbounds nuw i8, ptr %i.i, i64 40
  call void @_RINvMsN_NtNtNtCsexYYUdYSQU6_5alloc11collections5btree4nodeINtB6_6HandleINtB6_7NodeRefNtNtB6_6marker3MutINtNtCskKLDkoKarTP_4core6option6OptionINtNtCsgv7xG79AfeB_12string_cache4atom4AtomNtCsbN1FUDjLgAL_9web_atoms15PrefixStaticSetEEIB1E_IB2g_NtB2Y_18NamespaceStaticSetEENtB1n_4LeafENtB1n_4EdgeE16insert_recursingNtNtBc_5alloc6GlobalNCNvMs4_NtNtB8_3map5entryINtB5p_11VacantEntryB1D_B3F_E12insert_entry0ECsj1ugBVjDER0_8xml5ever(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.c, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.a, i64 noundef %1, i64 noundef %2, ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %i.i, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.aj)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !92
  br label %_RNvMs5_NtNtNtNtCsexYYUdYSQU6_5alloc11collections5btree3map5entryINtB5_13OccupiedEntryINtNtCskKLDkoKarTP_4core6option6OptionINtNtCsgv7xG79AfeB_12string_cache4atom4AtomNtCsbN1FUDjLgAL_9web_atoms15PrefixStaticSetEEIB1m_IB1Y_NtB2G_18NamespaceStaticSetEEE8into_mutCsj1ugBVjDER0_8xml5ever.exit

bb.p:                                             ; preds = %bb.r, %bb.q
  %i.ak = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #18, !noalias !90
  unreachable

bb.q:                                             ; preds = %bb.o
  %i.al = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsgv7xG79AfeB_12string_cache4atom4AtomNtCsbN1FUDjLgAL_9web_atoms18NamespaceStaticSetEEECsj1ugBVjDER0_8xml5ever(ptr noalias nofree noundef align 8 dereferenceable(8) %i.d) #19
          to label %bb.r unwind label %bb.p, !noalias !92

bb.r:                                             ; preds = %bb.q
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsgv7xG79AfeB_12string_cache4atom4AtomNtCsbN1FUDjLgAL_9web_atoms15PrefixStaticSetEEECsj1ugBVjDER0_8xml5ever(ptr noalias nofree noundef align 8 dereferenceable(8) %.sroa.7.0..sroa_idx) #19
          to label %.thread29 unwind label %bb.p, !noalias !90

_RNvMs5_NtNtNtNtCsexYYUdYSQU6_5alloc11collections5btree3map5entryINtB5_13OccupiedEntryINtNtCskKLDkoKarTP_4core6option6OptionINtNtCsgv7xG79AfeB_12string_cache4atom4AtomNtCsbN1FUDjLgAL_9web_atoms15PrefixStaticSetEEIB1m_IB1Y_NtB2G_18NamespaceStaticSetEEE8into_mutCsj1ugBVjDER0_8xml5ever.exit: ; preds = %.noexc10, %.noexc9
  %i.am = load ptr, ptr %i.i, align 8, !alias.scope !91, !noalias !90, !nonnull !4, !noundef !4 ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 16 ; 2 uses
  %i.ao = load i64, ptr %i.an, align 8, !noalias !90, !noundef !4
  %i.ap = add i64 %i.ao, 1
  store i64 %i.ap, ptr %i.an, align 8, !noalias !90
  %i.aq = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.ar = load ptr, ptr %i.c, align 8, !noalias !92, !nonnull !4, !noundef !4
  store ptr %i.ar, ptr %i.h, align 8, !alias.scope !90, !noalias !91
  %.sroa.4.0..sroa_idx.i7 = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %i.as = load <2 x i64>, ptr %i.aq, align 8, !noalias !92
  store <2 x i64> %i.as, ptr %.sroa.4.0..sroa_idx.i7, align 8, !alias.scope !90, !noalias !91
  %i.at = getelementptr inbounds nuw i8, ptr %i.h, i64 24
  store ptr %i.am, ptr %i.at, align 8, !alias.scope !90, !noalias !91
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !92
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  %i.au = call noundef nonnull align 8 ptr @_RNvMsQ_NtNtNtCsexYYUdYSQU6_5alloc11collections5btree4nodeINtB5_6HandleINtB5_7NodeRefNtNtB5_6marker3MutINtNtCskKLDkoKarTP_4core6option6OptionINtNtCsgv7xG79AfeB_12string_cache4atom4AtomNtCsbN1FUDjLgAL_9web_atoms15PrefixStaticSetEEIB1D_IB2f_NtB2X_18NamespaceStaticSetEENtB1m_14LeafOrInternalENtB1m_2KVE12into_val_mutCsj1ugBVjDER0_8xml5ever(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %i.h) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  br label %bb.s

bb.s:                                             ; preds = %bb.t, %_RNvMs5_NtNtNtNtCsexYYUdYSQU6_5alloc11collections5btree3map5entryINtB5_13OccupiedEntryINtNtCskKLDkoKarTP_4core6option6OptionINtNtCsgv7xG79AfeB_12string_cache4atom4AtomNtCsbN1FUDjLgAL_9web_atoms15PrefixStaticSetEEIB1m_IB1Y_NtB2G_18NamespaceStaticSetEEE8into_mutCsj1ugBVjDER0_8xml5ever.exit
  %.sroa.3.0 = phi i64 [ %i.ay, %bb.t ], [ undef, %_RNvMs5_NtNtNtNtCsexYYUdYSQU6_5alloc11collections5btree3map5entryINtB5_13OccupiedEntryINtNtCskKLDkoKarTP_4core6option6OptionINtNtCsgv7xG79AfeB_12string_cache4atom4AtomNtCsbN1FUDjLgAL_9web_atoms15PrefixStaticSetEEIB1m_IB1Y_NtB2G_18NamespaceStaticSetEEE8into_mutCsj1ugBVjDER0_8xml5ever.exit ]
  %.sroa.0.0 = phi i64 [ 1, %bb.t ], [ 0, %_RNvMs5_NtNtNtNtCsexYYUdYSQU6_5alloc11collections5btree3map5entryINtB5_13OccupiedEntryINtNtCskKLDkoKarTP_4core6option6OptionINtNtCsgv7xG79AfeB_12string_cache4atom4AtomNtCsbN1FUDjLgAL_9web_atoms15PrefixStaticSetEEIB1m_IB1Y_NtB2G_18NamespaceStaticSetEEE8into_mutCsj1ugBVjDER0_8xml5ever.exit ]
  %i.av = insertvalue { i64, i64 } poison, i64 %.sroa.0.0, 0
  %i.aw = insertvalue { i64, i64 } %i.av, i64 %.sroa.3.0, 1
  ret { i64, i64 } %i.aw

bb.t:                                             ; preds = %bb.k
  %i.ax = extractvalue { ptr, ptr } %i.ab, 1      ; 2 uses
  %i.ay = load i64, ptr %i.ax, align 8, !noundef !4
  store i64 %i.aa, ptr %i.ax, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j)
  br label %bb.s

.thread29:                                        ; preds = %bb.l, %bb.r, %.thread25
  %.pn24 = phi { ptr, i32 } [ %i.al, %bb.r ], [ %eh.lpad-body28, %.thread25 ], [ %i.ac, %bb.l ]
  resume { ptr, i32 } %.pn24

.thread25:                                        ; preds = %bb.i, %bb.j
  %eh.lpad-body28 = phi { ptr, i32 } [ %lpad.thr_comm.split-lp, %bb.j ], [ %i.z, %bb.i ]
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsgv7xG79AfeB_12string_cache4atom4AtomNtCsbN1FUDjLgAL_9web_atoms18NamespaceStaticSetEEECsj1ugBVjDER0_8xml5ever(ptr noalias nofree noundef align 8 dereferenceable(8) %i.k) #19
          to label %.thread29 unwind label %bb.u

bb.u:                                             ; preds = %.thread25
  %i.az = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #18
  unreachable
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @_RNvMss_NtCsldpiDtalS19_7tendril7tendrilINtB5_7TendrilNtNtB7_3fmt4UTF8E14try_subtendrilCsj1ugBVjDER0_8xml5ever(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(24) %0, ptr nofree noundef nonnull align 8 captures(address, read_provenance) %1, i32 noundef %2, i32 noundef %3) unnamed_addr #1 {
bb.a:
  %.sroa.4.i.i = alloca i64, align 8              ; 5 uses
  %i.a = alloca [40 x i8], align 8                ; 4 uses
  %i.b = alloca [40 x i8], align 8                ; 5 uses
  %i.c = load ptr, ptr %1, align 8, !nonnull !4, !noundef !4 ; 8 uses
  %i.d = ptrtoint ptr %i.c to i64                 ; 7 uses
  %i.e = icmp eq ptr %i.c, inttoptr (i64 15 to ptr)
  br i1 %i.e, label %.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = icmp ult ptr %i.c, inttoptr (i64 9 to ptr) ; 2 uses
  br i1 %i.f, label %bb.c, label %.thread23

bb.c:                                             ; preds = %bb.b
  %i.g = trunc nuw nsw i64 %i.d to i32            ; 2 uses
  %i.h = icmp ugt i32 %2, %i.g
  %i.i = sub nuw i32 %i.g, %2
  %i.j = icmp ugt i32 %3, %i.i
  %or.cond = select i1 %i.h, i1 true, i1 %i.j
  br i1 %or.cond, label %bb.r, label %bb.e

.thread23:                                        ; preds = %bb.b
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.l = load i32, ptr %i.k, align 8, !noundef !4 ; 2 uses
  %i.m = icmp ugt i32 %2, %i.l
  %i.n = sub nuw i32 %i.l, %2
  %i.o = icmp ugt i32 %3, %i.n
  %or.cond25 = select i1 %i.m, i1 true, i1 %i.o
  br i1 %or.cond25, label %bb.r, label %.thread26

.thread:                                          ; preds = %bb.a
  %i.p = or i32 %3, %2
  %or.cond9.not = icmp eq i32 %i.p, 0
  br i1 %or.cond9.not, label %_RNvMss_NtCsldpiDtalS19_7tendril7tendrilINtB5_7TendrilNtNtB7_3fmt4UTF8E13as_byte_sliceCsj1ugBVjDER0_8xml5ever.exit.i, label %bb.r

.thread26:                                        ; preds = %.thread23
  %i.q = and i64 %i.d, 1
  %i.r = sub nsw i64 0, %i.q
  %i.s = getelementptr i8, ptr %i.c, i64 %i.r
  %i.t = trunc i64 %i.d to i1
  br i1 %i.t, label %bb.d, label %bb.f

bb.d:                                             ; preds = %.thread26
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 12
  %i.v = load i32, ptr %i.u, align 4, !noalias !106, !noundef !4
  %i.w = zext i32 %i.v to i64
  br label %bb.f

bb.e:                                             ; preds = %bb.c
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 8
  br label %_RNvMss_NtCsldpiDtalS19_7tendril7tendrilINtB5_7TendrilNtNtB7_3fmt4UTF8E13as_byte_sliceCsj1ugBVjDER0_8xml5ever.exit

bb.f:                                             ; preds = %bb.d, %.thread26
  %.sroa.01.0.i.i = phi i64 [ %i.w, %bb.d ], [ 0, %.thread26 ]
  %i.y = getelementptr inbounds nuw i8, ptr %i.s, i64 16
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 %.sroa.01.0.i.i
  br label %_RNvMss_NtCsldpiDtalS19_7tendril7tendrilINtB5_7TendrilNtNtB7_3fmt4UTF8E13as_byte_sliceCsj1ugBVjDER0_8xml5ever.exit

_RNvMss_NtCsldpiDtalS19_7tendril7tendrilINtB5_7TendrilNtNtB7_3fmt4UTF8E13as_byte_sliceCsj1ugBVjDER0_8xml5ever.exit: ; preds = %bb.e, %bb.f
  %.sroa.0.0.i = phi ptr [ %i.z, %bb.f ], [ %i.x, %bb.e ]
  %i.aa = zext i32 %2 to i64                      ; 3 uses
  %i.ab = zext i32 %3 to i64                      ; 5 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i, i64 %i.aa ; 2 uses
  %i.ad = icmp eq i32 %3, 0
  br i1 %i.ad, label %_RNvXs5_NtCsldpiDtalS19_7tendril3fmtNtB5_4UTF8NtB5_6Format15validate_subseq.exit.thread.thread, label %bb.g

bb.g:                                             ; preds = %_RNvMss_NtCsldpiDtalS19_7tendril7tendrilINtB5_7TendrilNtNtB7_3fmt4UTF8E13as_byte_sliceCsj1ugBVjDER0_8xml5ever.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !107
  %i.ae = add nsw i64 %i.ab, -1
  call fastcc void @_RNvNtCsldpiDtalS19_7tendril4futf8classify(ptr noalias nofree noundef align 8 captures(none) dereferenceable(40) %i.b, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.ac, i64 noundef range(i64 0, 4294967296) %i.ab, i64 noundef %i.ae) #20
  %i.af = load i16, ptr %i.b, align 8, !range !108, !noalias !107, !noundef !4 ; 2 uses
  %.not.i = icmp eq i16 %i.af, -1
  br i1 %.not.i, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ag = icmp eq i16 %i.af, 0
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !107
  br i1 %i.ag, label %_RNvXs5_NtCsldpiDtalS19_7tendril3fmtNtB5_4UTF8NtB5_6Format15validate_subseq.exit, label %_RNvXs5_NtCsldpiDtalS19_7tendril3fmtNtB5_4UTF8NtB5_6Format15validate_subseq.exit.thread16

bb.i:                                             ; preds = %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !107
  br label %_RNvXs5_NtCsldpiDtalS19_7tendril3fmtNtB5_4UTF8NtB5_6Format15validate_subseq.exit.thread16

_RNvXs5_NtCsldpiDtalS19_7tendril3fmtNtB5_4UTF8NtB5_6Format15validate_subseq.exit: ; preds = %bb.h
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !107
  call fastcc void @_RNvNtCsldpiDtalS19_7tendril4futf8classify(ptr noalias nofree noundef align 8 captures(none) dereferenceable(40) %i.a, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.ac, i64 noundef range(i64 0, 4294967296) %i.ab, i64 noundef 0) #20
  %i.ah = load i16, ptr %i.a, align 8, !range !108, !noalias !107, !noundef !4
  %i.ai = icmp eq i16 %i.ah, 0
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !107
  br i1 %i.ai, label %_RNvXs5_NtCsldpiDtalS19_7tendril3fmtNtB5_4UTF8NtB5_6Format15validate_subseq.exit.thread, label %_RNvXs5_NtCsldpiDtalS19_7tendril3fmtNtB5_4UTF8NtB5_6Format15validate_subseq.exit.thread16

_RNvXs5_NtCsldpiDtalS19_7tendril3fmtNtB5_4UTF8NtB5_6Format15validate_subseq.exit.thread16: ; preds = %bb.i, %bb.h, %_RNvXs5_NtCsldpiDtalS19_7tendril3fmtNtB5_4UTF8NtB5_6Format15validate_subseq.exit
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 1
  store i8 1, ptr %i.aj, align 1
  br label %bb.q

_RNvXs5_NtCsldpiDtalS19_7tendril3fmtNtB5_4UTF8NtB5_6Format15validate_subseq.exit.thread: ; preds = %_RNvXs5_NtCsldpiDtalS19_7tendril3fmtNtB5_4UTF8NtB5_6Format15validate_subseq.exit
  %i.ak = icmp ult i32 %3, 9
  br i1 %i.ak, label %_RNvXs5_NtCsldpiDtalS19_7tendril3fmtNtB5_4UTF8NtB5_6Format15validate_subseq.exit.thread.thread, label %bb.j

bb.j:                                             ; preds = %_RNvXs5_NtCsldpiDtalS19_7tendril3fmtNtB5_4UTF8NtB5_6Format15validate_subseq.exit.thread
  %4 = trunc i64 %i.d to i1
  br i1 %4, label %_RNvMss_NtCsldpiDtalS19_7tendril7tendrilINtB5_7TendrilNtNtB7_3fmt4UTF8E15make_buf_sharedCsj1ugBVjDER0_8xml5ever.exit.i, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.al = getelementptr inbounds nuw i8, ptr %1, i64 12 ; 2 uses
  %i.am = load i32, ptr %i.al, align 4, !noalias !109, !noundef !4
  %i.an = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store i32 %i.am, ptr %i.an, align 8, !noalias !109
  %i.ao = getelementptr i8, ptr %i.c, i64 1       ; 4 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.ao) ]
  store ptr %i.ao, ptr %1, align 8, !noalias !109
  store i32 0, ptr %i.al, align 4, !noalias !109
  %.pre.i = ptrtoint ptr %i.ao to i64
  br label %_RNvMss_NtCsldpiDtalS19_7tendril7tendrilINtB5_7TendrilNtNtB7_3fmt4UTF8E15make_buf_sharedCsj1ugBVjDER0_8xml5ever.exit.i

_RNvMss_NtCsldpiDtalS19_7tendril7tendrilINtB5_7TendrilNtNtB7_3fmt4UTF8E15make_buf_sharedCsj1ugBVjDER0_8xml5ever.exit.i: ; preds = %bb.k, %bb.j
  %.pre-phi.i = phi i64 [ %i.d, %bb.j ], [ %.pre.i, %bb.k ]
  %i.ap = phi ptr [ %i.c, %bb.j ], [ %i.ao, %bb.k ]
  %5 = and i64 %.pre-phi.i, 1
  %6 = sub nsw i64 0, %5
  %i.aq = getelementptr i8, ptr %i.ap, i64 %6     ; 2 uses
  %i.ar = load i64, ptr %i.aq, align 8, !noalias !109, !noundef !4 ; 2 uses
  %i.as = icmp eq i64 %i.ar, -1
  br i1 %i.as, label %bb.l, label %_RNvXNtCsldpiDtalS19_7tendril7tendrilNtB2_9NonAtomicNtB2_9Atomicity9increment.exit.i, !prof !6

bb.l:                                             ; preds = %_RNvMss_NtCsldpiDtalS19_7tendril7tendrilINtB5_7TendrilNtNtB7_3fmt4UTF8E15make_buf_sharedCsj1ugBVjDER0_8xml5ever.exit.i
  %i.at = load ptr, ptr @_RNvCsldpiDtalS19_7tendril5OFLOW, align 8, !noalias !109, !nonnull !4, !noundef !4
  %i.au = load i64, ptr getelementptr inbounds nuw (i8, ptr @_RNvCsldpiDtalS19_7tendril5OFLOW, i64 8), align 8, !noalias !109, !noundef !4
  tail call void @_RNvNtCskKLDkoKarTP_4core6option13expect_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.at, i64 noundef %i.au, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @13) #21, !noalias !109
  unreachable

_RNvXNtCsldpiDtalS19_7tendril7tendrilNtB2_9NonAtomicNtB2_9Atomicity9increment.exit.i: ; preds = %_RNvMss_NtCsldpiDtalS19_7tendril7tendrilINtB5_7TendrilNtNtB7_3fmt4UTF8E15make_buf_sharedCsj1ugBVjDER0_8xml5ever.exit.i
  %i.av = add nuw i64 %i.ar, 1
  store i64 %i.av, ptr %i.aq, align 8, !noalias !109
  %i.aw = load ptr, ptr %1, align 8, !noalias !110, !nonnull !4, !noundef !4 ; 2 uses
  %i.ax = ptrtoint ptr %i.aw to i64
  %i.ay = and i64 %i.ax, 1
  %i.az = sub nsw i64 0, %i.ay
  %i.ba = getelementptr i8, ptr %i.aw, i64 %i.az  ; 3 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.ba) ]
  %i.bb = getelementptr inbounds nuw i8, ptr %1, i64 12
  %i.bc = load i32, ptr %i.bb, align 4, !noalias !109, !noundef !4
  %i.bd = add i32 %i.bc, %2
  %i.be = ptrtoint ptr %i.ba to i64
  %.not.i.i = and i64 %i.be, 1
  %i.bf = xor i64 %.not.i.i, 1
  %i.bg = getelementptr i8, ptr %i.ba, i64 %i.bf  ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.bg) ]
  %.sroa.4.0.insert.ext.i = zext i32 %i.bd to i64
  %.sroa.4.0.insert.shift.i = shl nuw i64 %.sroa.4.0.insert.ext.i, 32
  %.sroa.02.0.insert.insert.i = or disjoint i64 %.sroa.4.0.insert.shift.i, %i.ab
  br label %_RNvMss_NtCsldpiDtalS19_7tendril7tendrilINtB5_7TendrilNtNtB7_3fmt4UTF8E17unsafe_subtendrilCsj1ugBVjDER0_8xml5ever.exit

_RNvXs5_NtCsldpiDtalS19_7tendril3fmtNtB5_4UTF8NtB5_6Format15validate_subseq.exit.thread.thread: ; preds = %_RNvMss_NtCsldpiDtalS19_7tendril7tendrilINtB5_7TendrilNtNtB7_3fmt4UTF8E13as_byte_sliceCsj1ugBVjDER0_8xml5ever.exit, %_RNvXs5_NtCsldpiDtalS19_7tendril3fmtNtB5_4UTF8NtB5_6Format15validate_subseq.exit.thread
  %i.bh = phi i64 [ %i.ab, %_RNvXs5_NtCsldpiDtalS19_7tendril3fmtNtB5_4UTF8NtB5_6Format15validate_subseq.exit.thread ], [ 0, %_RNvMss_NtCsldpiDtalS19_7tendril7tendrilINtB5_7TendrilNtNtB7_3fmt4UTF8E13as_byte_sliceCsj1ugBVjDER0_8xml5ever.exit ] ; 2 uses
  br i1 %i.f, label %bb.o, label %bb.m

bb.m:                                             ; preds = %_RNvXs5_NtCsldpiDtalS19_7tendril3fmtNtB5_4UTF8NtB5_6Format15validate_subseq.exit.thread.thread
  %i.bi = and i64 %i.d, 1
  %i.bj = sub nsw i64 0, %i.bi
  %i.bk = getelementptr i8, ptr %i.c, i64 %i.bj
  %i.bl = trunc i64 %i.d to i1
  br i1 %i.bl, label %bb.n, label %bb.p

bb.n:                                             ; preds = %bb.m
  %i.bm = getelementptr inbounds nuw i8, ptr %1, i64 12
  %i.bn = load i32, ptr %i.bm, align 4, !noalias !111, !noundef !4
  %i.bo = zext i32 %i.bn to i64
  br label %bb.p

bb.o:                                             ; preds = %_RNvXs5_NtCsldpiDtalS19_7tendril3fmtNtB5_4UTF8NtB5_6Format15validate_subseq.exit.thread.thread
  %i.bp = getelementptr inbounds nuw i8, ptr %1, i64 8
  br label %_RNvMss_NtCsldpiDtalS19_7tendril7tendrilINtB5_7TendrilNtNtB7_3fmt4UTF8E13as_byte_sliceCsj1ugBVjDER0_8xml5ever.exit.i

bb.p:                                             ; preds = %bb.n, %bb.m
  %.sroa.01.0.i.i.i = phi i64 [ %i.bo, %bb.n ], [ 0, %bb.m ]
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bk, i64 16
  %i.br = getelementptr inbounds nuw i8, ptr %i.bq, i64 %.sroa.01.0.i.i.i
  br label %_RNvMss_NtCsldpiDtalS19_7tendril7tendrilINtB5_7TendrilNtNtB7_3fmt4UTF8E13as_byte_sliceCsj1ugBVjDER0_8xml5ever.exit.i

_RNvMss_NtCsldpiDtalS19_7tendril7tendrilINtB5_7TendrilNtNtB7_3fmt4UTF8E13as_byte_sliceCsj1ugBVjDER0_8xml5ever.exit.i: ; preds = %.thread, %bb.p, %bb.o
  %i.bs = phi i64 [ %i.aa, %bb.p ], [ %i.aa, %bb.o ], [ 0, %.thread ]
  %i.bt = phi i64 [ %i.bh, %bb.p ], [ %i.bh, %bb.o ], [ 0, %.thread ] ; 2 uses
  %.sroa.0.0.i3.i = phi ptr [ %i.br, %bb.p ], [ %i.bp, %bb.o ], [ inttoptr (i64 1 to ptr), %.thread ]
  %i.bu = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i3.i, i64 %i.bs
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.4.i.i)
  %i.bv = icmp eq i32 %3, 0
  %i.bw = inttoptr i64 %i.bt to ptr
  %i.bx = select i1 %i.bv, ptr inttoptr (i64 15 to ptr), ptr %i.bw
  store i64 0, ptr %.sroa.4.i.i, align 8, !noalias !112
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %.sroa.4.i.i, ptr nonnull readonly align 1 %i.bu, i64 range(i64 0, 9) %i.bt, i1 false), !noalias !113
  %.sroa.4.i.i.0..sroa.4.i.i.0..sroa.4.i.i.0..sroa.4.i.0..sroa.4.i.0..sroa.4.0..sroa.4.0..sroa.4.0..sroa.4.0.copyload.i.i = load i64, ptr %.sroa.4.i.i, align 8, !noalias !112
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.4.i.i)
  br label %_RNvMss_NtCsldpiDtalS19_7tendril7tendrilINtB5_7TendrilNtNtB7_3fmt4UTF8E17unsafe_subtendrilCsj1ugBVjDER0_8xml5ever.exit

_RNvMss_NtCsldpiDtalS19_7tendril7tendrilINtB5_7TendrilNtNtB7_3fmt4UTF8E17unsafe_subtendrilCsj1ugBVjDER0_8xml5ever.exit: ; preds = %_RNvXNtCsldpiDtalS19_7tendril7tendrilNtB2_9NonAtomicNtB2_9Atomicity9increment.exit.i, %_RNvMss_NtCsldpiDtalS19_7tendril7tendrilINtB5_7TendrilNtNtB7_3fmt4UTF8E13as_byte_sliceCsj1ugBVjDER0_8xml5ever.exit.i
  %.sroa.5.0 = phi i64 [ %.sroa.4.i.i.0..sroa.4.i.i.0..sroa.4.i.i.0..sroa.4.i.0..sroa.4.i.0..sroa.4.0..sroa.4.0..sroa.4.0..sroa.4.0.copyload.i.i, %_RNvMss_NtCsldpiDtalS19_7tendril7tendrilINtB5_7TendrilNtNtB7_3fmt4UTF8E13as_byte_sliceCsj1ugBVjDER0_8xml5ever.exit.i ], [ %.sroa.02.0.insert.insert.i, %_RNvXNtCsldpiDtalS19_7tendril7tendrilNtB2_9NonAtomicNtB2_9Atomicity9increment.exit.i ]
  %.sroa.0.07 = phi ptr [ %i.bx, %_RNvMss_NtCsldpiDtalS19_7tendril7tendrilINtB5_7TendrilNtNtB7_3fmt4UTF8E13as_byte_sliceCsj1ugBVjDER0_8xml5ever.exit.i ], [ %i.bg, %_RNvXNtCsldpiDtalS19_7tendril7tendrilNtB2_9NonAtomicNtB2_9Atomicity9increment.exit.i ]
  %i.by = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sroa.0.07, ptr %i.by, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %.sroa.5.0, ptr %.sroa.5.0..sroa_idx, align 8
  br label %bb.q

bb.q:                                             ; preds = %_RNvXs5_NtCsldpiDtalS19_7tendril3fmtNtB5_4UTF8NtB5_6Format15validate_subseq.exit.thread16, %bb.r, %_RNvMss_NtCsldpiDtalS19_7tendril7tendrilINtB5_7TendrilNtNtB7_3fmt4UTF8E17unsafe_subtendrilCsj1ugBVjDER0_8xml5ever.exit
  %.sink = phi i8 [ 1, %_RNvXs5_NtCsldpiDtalS19_7tendril3fmtNtB5_4UTF8NtB5_6Format15validate_subseq.exit.thread16 ], [ 1, %bb.r ], [ 0, %_RNvMss_NtCsldpiDtalS19_7tendril7tendrilINtB5_7TendrilNtNtB7_3fmt4UTF8E17unsafe_subtendrilCsj1ugBVjDER0_8xml5ever.exit ]
  store i8 %.sink, ptr %0, align 8
  ret void

bb.r:                                             ; preds = %.thread23, %.thread, %bb.c
  %i.bz = getelementptr inbounds nuw i8, ptr %0, i64 1
  store i8 0, ptr %i.bz, align 1
  br label %bb.q
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @_RNvMss_NtCsldpiDtalS19_7tendril7tendrilINtB5_7TendrilNtNtB7_3fmt4UTF8E29push_bytes_without_validatingCsj1ugBVjDER0_8xml5ever(ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(16) %0, ptr noalias nofree noundef nonnull readonly captures(none) %1, i64 noundef range(i64 1, 5) %2) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %.sroa.4.i = alloca i64, align 8                ; 5 uses
  %i.a = alloca [16 x i8], align 8                ; 4 uses
  %i.b = alloca [24 x i8], align 8                ; 8 uses
  %i.c = alloca [16 x i8], align 8                ; 4 uses
  %i.d = alloca [24 x i8], align 8                ; 6 uses
  %i.e = alloca [24 x i8], align 8                ; 6 uses
  %i.f = alloca [8 x i8], align 8                 ; 8 uses
  %i.g = load ptr, ptr %0, align 8, !nonnull !4, !noundef !4 ; 7 uses
  %i.h = ptrtoint ptr %i.g to i64                 ; 7 uses
  %i.i = icmp eq ptr %i.g, inttoptr (i64 15 to ptr)
  br i1 %i.i, label %.thread40, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.j = icmp ult ptr %i.g, inttoptr (i64 9 to ptr) ; 5 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 6 uses
  %i.l = load i32, ptr %i.k, align 8              ; 5 uses
  %i.m = trunc nuw i64 %i.h to i32                ; 2 uses
  %.sroa.01.0 = select i1 %i.j, i32 %i.m, i32 %i.l ; 2 uses
  %i.n = trunc nuw nsw i64 %2 to i32
  %i.o = add i32 %.sroa.01.0, %i.n                ; 7 uses
  %i.p = icmp ult i32 %i.o, %.sroa.01.0
  br i1 %i.p, label %bb.d, label %bb.c, !prof !131

.thread40:                                        ; preds = %bb.a
  %i.q = trunc nuw nsw i64 %2 to i32
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  store i64 0, ptr %i.f, align 8
  br label %_RNvMss_NtCsldpiDtalS19_7tendril7tendrilINtB5_7TendrilNtNtB7_3fmt4UTF8E13as_byte_sliceCsj1ugBVjDER0_8xml5ever.exit24

bb.c:                                             ; preds = %bb.b
  %i.r = icmp ult i32 %i.o, 9
  br i1 %i.r, label %bb.v, label %bb.e

bb.d:                                             ; preds = %bb.b
  %i.s = load ptr, ptr @_RNvCsldpiDtalS19_7tendril5OFLOW, align 8, !nonnull !4, !noundef !4
  %i.t = load i64, ptr getelementptr inbounds nuw (i8, ptr @_RNvCsldpiDtalS19_7tendril5OFLOW, i64 8), align 8, !noundef !4
  tail call void @_RNvNtCskKLDkoKarTP_4core6option13expect_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.s, i64 noundef %i.t, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @11) #21
  unreachable

bb.e:                                             ; preds = %bb.c
  tail call void @llvm.experimental.noalias.scope.decl(metadata !132)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !133)
  %i.u = icmp ult ptr %i.g, inttoptr (i64 16 to ptr)
  %i.v = trunc i64 %i.h to i1                     ; 2 uses
  %or.cond.i.i = or i1 %i.u, %i.v
  br i1 %or.cond.i.i, label %_RNvMss_NtCsldpiDtalS19_7tendril7tendrilINtB5_7TendrilNtNtB7_3fmt4UTF8E13as_byte_sliceCsj1ugBVjDER0_8xml5ever.exit.i.i, label %_RNvMss_NtCsldpiDtalS19_7tendril7tendrilINtB5_7TendrilNtNtB7_3fmt4UTF8E10make_ownedCsj1ugBVjDER0_8xml5ever.exit.thread.i

_RNvMss_NtCsldpiDtalS19_7tendril7tendrilINtB5_7TendrilNtNtB7_3fmt4UTF8E13as_byte_sliceCsj1ugBVjDER0_8xml5ever.exit.i.i: ; preds = %bb.e
  %i.w = and i64 %i.h, 1
  %i.x = sub nsw i64 0, %i.w
  %i.y = getelementptr i8, ptr %i.g, i64 %i.x
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.aa = load i32, ptr %i.z, align 4
  %i.ab = zext i32 %i.aa to i64
  %.sroa.01.0.i.i.i.i = select i1 %i.v, i64 %i.ab, i64 0
  %i.ac = getelementptr inbounds nuw i8, ptr %i.y, i64 16
  %i.ad = zext i32 %i.l to i64
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ac, i64 %.sroa.01.0.i.i.i.i
  %.pre-phi = select i1 %i.j, i32 %i.m, i32 %i.l
  %.sroa.4.0.i.i.i = select i1 %i.j, i64 %i.h, i64 %i.ad ; 3 uses
  %.sroa.0.0.i.i.i = select i1 %i.j, ptr %i.k, ptr %i.ae
  %spec.store.select.i.i.i.i = tail call i32 @llvm.umax.i32(i32 %.pre-phi, i32 16)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !134
  %i.af = zext i32 %spec.store.select.i.i.i.i to i64
  %i.ag = add nuw nsw i64 %i.af, 15
  %i.ah = lshr i64 %i.ag, 4                       ; 2 uses
  %i.ai = add nuw nsw i64 %i.ah, 1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !134
  call void @_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsj1ugBVjDER0_8xml5ever(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.d, i64 noundef %i.ai, i1 noundef zeroext false, i64 noundef 8, i64 noundef 16), !noalias !134
  %i.aj = load i64, ptr %i.d, align 8, !range !5, !noalias !134, !noundef !4
  %i.ak = trunc nuw i64 %i.aj to i1
  %i.al = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.am = load i64, ptr %i.al, align 8, !range !135, !noalias !134, !noundef !4 ; 4 uses
  %i.an = getelementptr inbounds nuw i8, ptr %i.d, i64 16 ; 2 uses
  br i1 %i.ak, label %bb.f, label %bb.g, !prof !6

bb.f:                                             ; preds = %_RNvMss_NtCsldpiDtalS19_7tendril7tendrilINtB5_7TendrilNtNtB7_3fmt4UTF8E13as_byte_sliceCsj1ugBVjDER0_8xml5ever.exit.i.i
  %i.ao = load i64, ptr %i.an, align 8, !noalias !134
  tail call void @_RNvNtCsexYYUdYSQU6_5alloc7raw_vec12handle_error(i64 noundef %i.am, i64 %i.ao) #22, !noalias !134
  unreachable

bb.g:                                             ; preds = %_RNvMss_NtCsldpiDtalS19_7tendril7tendrilINtB5_7TendrilNtNtB7_3fmt4UTF8E13as_byte_sliceCsj1ugBVjDER0_8xml5ever.exit.i.i
  %i.ap = load ptr, ptr %i.an, align 8, !noalias !134, !nonnull !4, !noundef !4 ; 7 uses
  %i.aq = icmp samesign ult i64 %i.ah, %i.am
  tail call void @llvm.assume(i1 %i.aq)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !134
  store i64 %i.am, ptr %i.e, align 8, !noalias !134
  %i.ar = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  store ptr %i.ap, ptr %i.ar, align 8, !noalias !134
  %i.as = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  store i64 0, ptr %i.as, align 8, !noalias !134
  %i.at = shl i64 %i.am, 4
  %i.au = add i64 %i.at, -16                      ; 2 uses
  %i.av = icmp ugt i64 %i.au, 4294967295
  br i1 %i.av, label %bb.h, label %_RNvMss_NtCsldpiDtalS19_7tendril7tendrilINtB5_7TendrilNtNtB7_3fmt4UTF8E10owned_copyCsj1ugBVjDER0_8xml5ever.exit.i.i, !prof !6

bb.h:                                             ; preds = %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !134
  store ptr @_RNvCsldpiDtalS19_7tendril5OFLOW, ptr %i.c, align 8, !noalias !134
  %.sroa.47.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store ptr @_RNvXs1i_NtCskKLDkoKarTP_4core3fmtReNtB6_7Display3fmtCsj1ugBVjDER0_8xml5ever, ptr %.sroa.47.0..sroa_idx.i.i.i.i, align 8, !noalias !134
  invoke void @_RNvNtCskKLDkoKarTP_4core9panicking9panic_fmt(ptr noundef nonnull @7, ptr noundef nonnull %i.c, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @8) #22
          to label %bb.j unwind label %bb.i, !noalias !134
end_hunk_0
