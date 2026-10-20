Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/pola-rs/original/polars_utils-a04f66c812329f94.polars_utils.1b9d48609f1572cb-cgu.06?download=true
inline.NumInlined: 120
inline.NumDeleted: 87
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@_RINvMs0_Cs61SnqI2q75L_7memmap2NtB6_11MmapOptions3mapRNtNtCsh8eZTKRCwoO_3std2fs4FileECs2mZqlW55729_12polars_utils:bb.a
  %i.s = sub nuw i64 %i.l, %i.q, !dbg !295
  br label %bb.d, !dbg !285

bb.h:                                             ; preds = %bb.f
  %i.t = call noundef nonnull ptr @_RINvMs5_NtNtCsh8eZTKRCwoO_3std2io5errorNtB6_5Error3newReEBa_(i8 noundef 21, ptr noalias noundef nonnull readonly captures(address, read_provenance) @0, i64 noundef 39) #19, !dbg !296, !noalias !276
  %i.u = insertvalue { i64, ptr } { i64 1, ptr poison }, ptr %i.t, 1, !dbg !297
  br label %_RINvMs0_Cs61SnqI2q75L_7memmap2NtB6_11MmapOptions7get_lenRNtNtCsh8eZTKRCwoO_3std2fs4FileECs2mZqlW55729_12polars_utils.exit, !dbg !297

_RINvMs0_Cs61SnqI2q75L_7memmap2NtB6_11MmapOptions7get_lenRNtNtCsh8eZTKRCwoO_3std2fs4FileECs2mZqlW55729_12polars_utils.exit: ; preds = %bb.d, %bb.e, %bb.h
  %.merged.i = phi { i64, ptr } [ %i.n, %bb.d ], [ %i.o, %bb.e ], [ %i.u, %bb.h ], !dbg !291 ; 2 uses
  %i.v = extractvalue { i64, ptr } %.merged.i, 0, !dbg !277
  %i.w = extractvalue { i64, ptr } %.merged.i, 1, !dbg !277 ; 2 uses
  %i.x = trunc nuw i64 %i.v to i1, !dbg !298
  br i1 %i.x, label %bb.k, label %bb.i, !dbg !298

bb.i:                                             ; preds = %_RINvMs0_Cs61SnqI2q75L_7memmap2NtB6_11MmapOptions7get_lenRNtNtCsh8eZTKRCwoO_3std2fs4FileECs2mZqlW55729_12polars_utils.exit
  %i.y = ptrtoint ptr %i.w to i64, !dbg !277
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 16, !dbg !299
  %i.aa = load i64, ptr %i.z, align 8, !dbg !299, !noundef !77
  %i.ab = getelementptr inbounds nuw i8, ptr %1, i64 27, !dbg !300
  %i.ac = load i8, ptr %i.ab, align 1, !dbg !300, !range !87, !noundef !77
  %i.ad = trunc nuw i8 %i.ac to i1, !dbg !300
  %i.ae = getelementptr inbounds nuw i8, ptr %1, i64 28, !dbg !301
  %i.af = load i8, ptr %i.ae, align 4, !dbg !301, !range !87, !noundef !77
  %i.ag = trunc nuw i8 %i.af to i1, !dbg !301
  call void @_RNvMNtCs61SnqI2q75L_7memmap22osNtB2_9MmapInner3map(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.a, i64 noundef %i.y, i32 noundef %i.c, i64 noundef %i.aa, i1 noundef zeroext %i.ad, i1 noundef zeroext %i.ag), !dbg !280
  %i.ah = load i64, ptr %i.a, align 8, !dbg !302, !range !79, !noundef !77
  %i.ai = trunc nuw i64 %i.ah to i1, !dbg !303
  %i.aj = getelementptr inbounds nuw i8, ptr %i.a, i64 8, !dbg !304
  %i.ak = load ptr, ptr %i.aj, align 8, !dbg !304, !noundef !77 ; 2 uses
  br i1 %i.ai, label %bb.k, label %bb.j, !dbg !303

bb.j:                                             ; preds = %bb.i
  %i.al = getelementptr inbounds nuw i8, ptr %i.a, i64 16, !dbg !305
  %i.am = load i64, ptr %i.al, align 8, !dbg !305, !noundef !77
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !306
  store i64 %i.am, ptr %i.an, align 8, !dbg !306
  br label %bb.k, !dbg !307

bb.k:                                             ; preds = %bb.j, %bb.i, %_RINvMs0_Cs61SnqI2q75L_7memmap2NtB6_11MmapOptions7get_lenRNtNtCsh8eZTKRCwoO_3std2fs4FileECs2mZqlW55729_12polars_utils.exit
  %.sink = phi ptr [ %i.w, %_RINvMs0_Cs61SnqI2q75L_7memmap2NtB6_11MmapOptions7get_lenRNtNtCsh8eZTKRCwoO_3std2fs4FileECs2mZqlW55729_12polars_utils.exit ], [ %i.ak, %bb.i ], [ %i.ak, %bb.j ]
  %storemerge.sink = phi i64 [ 1, %_RINvMs0_Cs61SnqI2q75L_7memmap2NtB6_11MmapOptions7get_lenRNtNtCsh8eZTKRCwoO_3std2fs4FileECs2mZqlW55729_12polars_utils.exit ], [ 1, %bb.i ], [ 0, %bb.j ]
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !308
  store ptr %.sink, ptr %i.ao, align 8, !dbg !308
  store i64 %storemerge.sink, ptr %0, align 8, !dbg !308
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !309
  ret void, !dbg !310
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VecINtNtCs8RCgFHiPUyX_15crossbeam_deque5deque7StealerNtNtCs4BcJZGCY6Ba_10rayon_core3job6JobRefEEECs2mZqlW55729_12polars_utils(ptr noalias noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !7 {
bb.a:
  invoke void @_RNvXso_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VecINtNtCs8RCgFHiPUyX_15crossbeam_deque5deque7StealerNtNtCs4BcJZGCY6Ba_10rayon_core3job6JobRefEENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCs2mZqlW55729_12polars_utils(ptr noalias noundef nonnull align 8 dereferenceable(24) %0)
          to label %bb.c unwind label %bb.b, !dbg !313

bb.b:                                             ; preds = %bb.a
  %i.a = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsgZ49sUHp3tW_5alloc7raw_vecINtB5_6RawVecINtNtCs8RCgFHiPUyX_15crossbeam_deque5deque7StealerNtNtCs4BcJZGCY6Ba_10rayon_core3job6JobRefEENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCs2mZqlW55729_12polars_utils(ptr noalias noundef nonnull align 8 dereferenceable(16) %0)
          to label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc7raw_vec6RawVecINtNtCs8RCgFHiPUyX_15crossbeam_deque5deque7StealerNtNtCs4BcJZGCY6Ba_10rayon_core3job6JobRefEEECs2mZqlW55729_12polars_utils.exit unwind label %bb.d, !dbg !314

bb.c:                                             ; preds = %bb.a
  tail call void @_RNvXs1_NtCsgZ49sUHp3tW_5alloc7raw_vecINtB5_6RawVecINtNtCs8RCgFHiPUyX_15crossbeam_deque5deque7StealerNtNtCs4BcJZGCY6Ba_10rayon_core3job6JobRefEENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCs2mZqlW55729_12polars_utils(ptr noalias noundef nonnull align 8 dereferenceable(16) %0), !dbg !315
  ret void, !dbg !313

bb.d:                                             ; preds = %bb.b
  %i.b = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #20, !dbg !313
  unreachable, !dbg !313

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc7raw_vec6RawVecINtNtCs8RCgFHiPUyX_15crossbeam_deque5deque7StealerNtNtCs4BcJZGCY6Ba_10rayon_core3job6JobRefEEECs2mZqlW55729_12polars_utils.exit: ; preds = %bb.b
  resume { ptr, i32 } %i.a, !dbg !313
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCsbm5zPlkZccl_4pyo38pybacked11PyBackedStrECs2mZqlW55729_12polars_utils(ptr %.0.val) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !9 {
bb.a:
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.0.val) ]
  %i.a = tail call noundef nonnull align 8 ptr @llvm.threadlocal.address.p0(ptr @_RNvNCNKNvNtNtCsbm5zPlkZccl_4pyo38internal5state12ATTACH_COUNT0s_023___RUST_STD_INTERNAL_VAL), !dbg !326
  %.val.i.i.i.i = load i64, ptr %i.a, align 8, !dbg !327, !noundef !77
  %i.b = icmp sgt i64 %.val.i.i.i.i, 0, !dbg !328
  br i1 %i.b, label %bb.c, label %bb.b, !dbg !329, !prof !113

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvNvXsA_NtCsbm5zPlkZccl_4pyo38instanceINtB7_2PypENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4drop9drop_slow(ptr noundef nonnull %.0.val), !dbg !330
  br label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsbm5zPlkZccl_4pyo38instance2PyNtNtNtBL_5types6string8PyStringEECs2mZqlW55729_12polars_utils.exit, !dbg !330

bb.c:                                             ; preds = %bb.a
  tail call void @_Py_DecRef(ptr noundef nonnull %.0.val) #21, !dbg !331
  br label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsbm5zPlkZccl_4pyo38instance2PyNtNtNtBL_5types6string8PyStringEECs2mZqlW55729_12polars_utils.exit, !dbg !332

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsbm5zPlkZccl_4pyo38instance2PyNtNtNtBL_5types6string8PyStringEECs2mZqlW55729_12polars_utils.exit: ; preds = %bb.b, %bb.c
  ret void, !dbg !333
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeTINtNtCsgZ49sUHp3tW_5alloc3vec3VecINtNtCs8RCgFHiPUyX_15crossbeam_deque5deque6WorkerNtNtCs4BcJZGCY6Ba_10rayon_core3job6JobRefEEIBI_INtB1h_7StealerB21_EEEECs2mZqlW55729_12polars_utils(ptr noalias noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !334 {
bb.a:
  invoke void @_RNvXso_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VecINtNtCs8RCgFHiPUyX_15crossbeam_deque5deque6WorkerNtNtCs4BcJZGCY6Ba_10rayon_core3job6JobRefEENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCs2mZqlW55729_12polars_utils(ptr noalias noundef nonnull align 8 dereferenceable(24) %0)
          to label %bb.c unwind label %bb.b, !dbg !343

bb.b:                                             ; preds = %bb.a
  %i.a = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsgZ49sUHp3tW_5alloc7raw_vecINtB5_6RawVecINtNtCs8RCgFHiPUyX_15crossbeam_deque5deque6WorkerNtNtCs4BcJZGCY6Ba_10rayon_core3job6JobRefEENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCs2mZqlW55729_12polars_utils(ptr noalias noundef nonnull align 8 dereferenceable(24) %0)
          to label %.body unwind label %bb.d, !dbg !344

bb.c:                                             ; preds = %bb.a
  invoke void @_RNvXs1_NtCsgZ49sUHp3tW_5alloc7raw_vecINtB5_6RawVecINtNtCs8RCgFHiPUyX_15crossbeam_deque5deque6WorkerNtNtCs4BcJZGCY6Ba_10rayon_core3job6JobRefEENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCs2mZqlW55729_12polars_utils(ptr noalias noundef nonnull align 8 dereferenceable(24) %0)
          to label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VecINtNtCs8RCgFHiPUyX_15crossbeam_deque5deque6WorkerNtNtCs4BcJZGCY6Ba_10rayon_core3job6JobRefEEECs2mZqlW55729_12polars_utils.exit unwind label %bb.e, !dbg !345

bb.d:                                             ; preds = %bb.b
  %i.b = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #20, !dbg !343
  unreachable, !dbg !343

bb.e:                                             ; preds = %bb.c
  %i.c = landingpad { ptr, i32 }
          cleanup
  br label %.body, !dbg !346

.body:                                            ; preds = %bb.b, %bb.e
  %eh.lpad-body = phi { ptr, i32 } [ %i.c, %bb.e ], [ %i.a, %bb.b ]
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 24, !dbg !346
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VecINtNtCs8RCgFHiPUyX_15crossbeam_deque5deque7StealerNtNtCs4BcJZGCY6Ba_10rayon_core3job6JobRefEEECs2mZqlW55729_12polars_utils(ptr noalias noundef align 8 dereferenceable(24) %i.d) #22
          to label %common.resume unwind label %bb.h, !dbg !346

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VecINtNtCs8RCgFHiPUyX_15crossbeam_deque5deque6WorkerNtNtCs4BcJZGCY6Ba_10rayon_core3job6JobRefEEECs2mZqlW55729_12polars_utils.exit: ; preds = %bb.c
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 24, !dbg !346 ; 3 uses
  invoke void @_RNvXso_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VecINtNtCs8RCgFHiPUyX_15crossbeam_deque5deque7StealerNtNtCs4BcJZGCY6Ba_10rayon_core3job6JobRefEENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCs2mZqlW55729_12polars_utils(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.e)
          to label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VecINtNtCs8RCgFHiPUyX_15crossbeam_deque5deque7StealerNtNtCs4BcJZGCY6Ba_10rayon_core3job6JobRefEEECs2mZqlW55729_12polars_utils.exit unwind label %bb.f, !dbg !347

bb.f:                                             ; preds = %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VecINtNtCs8RCgFHiPUyX_15crossbeam_deque5deque6WorkerNtNtCs4BcJZGCY6Ba_10rayon_core3job6JobRefEEECs2mZqlW55729_12polars_utils.exit
  %i.f = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsgZ49sUHp3tW_5alloc7raw_vecINtB5_6RawVecINtNtCs8RCgFHiPUyX_15crossbeam_deque5deque7StealerNtNtCs4BcJZGCY6Ba_10rayon_core3job6JobRefEENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCs2mZqlW55729_12polars_utils(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.e)
          to label %common.resume unwind label %bb.g, !dbg !348

bb.g:                                             ; preds = %bb.f
  %i.g = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #20, !dbg !347
  unreachable, !dbg !347

common.resume:                                    ; preds = %.body, %bb.f
  %common.resume.op = phi { ptr, i32 } [ %i.f, %bb.f ], [ %eh.lpad-body, %.body ]
  resume { ptr, i32 } %common.resume.op, !dbg !346

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VecINtNtCs8RCgFHiPUyX_15crossbeam_deque5deque7StealerNtNtCs4BcJZGCY6Ba_10rayon_core3job6JobRefEEECs2mZqlW55729_12polars_utils.exit: ; preds = %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VecINtNtCs8RCgFHiPUyX_15crossbeam_deque5deque6WorkerNtNtCs4BcJZGCY6Ba_10rayon_core3job6JobRefEEECs2mZqlW55729_12polars_utils.exit
  tail call void @_RNvXs1_NtCsgZ49sUHp3tW_5alloc7raw_vecINtB5_6RawVecINtNtCs8RCgFHiPUyX_15crossbeam_deque5deque7StealerNtNtCs4BcJZGCY6Ba_10rayon_core3job6JobRefEENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCs2mZqlW55729_12polars_utils(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.e), !dbg !349
  ret void, !dbg !346

bb.h:                                             ; preds = %.body
  %i.h = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #20, !dbg !346
  unreachable, !dbg !346
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXs0_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3mapINtB6_3MapINtNtB8_6copied6CopiedINtNtNtBc_5slice4iter4IterReEENCINvXsb_NtCs7tGzs63DEEy_9hashbrown3setINtB1W_7HashSetB1J_NtNtCsk79RHlfmHDk_8foldhash7quality11RandomStateEINtNtNtBa_6traits7collect6ExtendB1J_E6extendBX_E0ENtNtB3B_8iterator8Iterator4folduNCINvNvB4k_8for_each4callTB1J_uENCINvXs1l_NtB1Y_3mapINtB5w_7HashMapB1J_uB2J_EIB3x_B5f_E6extendBN_E0E0ECs2mZqlW55729_12polars_utils(ptr noundef nonnull %0, ptr noundef %1, ptr noalias noundef align 8 dereferenceable(40) %2) unnamed_addr #0 !dbg !350 {
bb.a:
  tail call void @_RINvXs_NtNtNtCscgRAwXFJnXP_4core4iter8adapters6copiedINtB5_6CopiedINtNtNtBb_5slice4iter4IterReEENtNtNtB9_6traits8iterator8Iterator4folduNCINvNtB7_3map8map_foldB1s_TB1s_uEuNCINvXsb_NtCs7tGzs63DEEy_9hashbrown3setINtB2S_7HashSetB1s_NtNtCsk79RHlfmHDk_8foldhash7quality11RandomStateEINtNtB1A_7collect6ExtendB1s_E6extendBP_E0NCINvNvB1w_8for_each4callB2B_NCINvXs1l_NtB2U_3mapINtB5K_7HashMapB1s_uB3F_EIB4t_B2B_E6extendINtB2f_3MapBP_B2J_EE0E0E0ECs2mZqlW55729_12polars_utils(ptr noundef nonnull %0, ptr noundef %1, ptr noalias noundef nonnull align 8 dereferenceable(40) %2), !dbg !351
  ret void, !dbg !352
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXs0_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3mapINtB6_3MapINtNtNtBc_3ops5range5RangejENCINvMs4_NtCs4BcJZGCY6Ba_10rayon_core8registryNtB1y_8Registry3newNtB1y_12DefaultSpawnE0ENtNtNtBa_6traits8iterator8Iterator4folduNCINvNvB2P_8for_each4callTINtNtCs8RCgFHiPUyX_15crossbeam_deque5deque6WorkerNtNtB1A_3job6JobRefEINtB3W_7StealerB4G_EENCINvNvNtB2T_7collect14default_extend18unchecked_extenderTINtNtCsgZ49sUHp3tW_5alloc3vec3VecB3T_EIB6i_B50_EEB3S_E0E0ECs2mZqlW55729_12polars_utils(ptr noalias noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %0, ptr noalias noundef align 8 dereferenceable(48) %1) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !353 {
bb.a:
  %i.a = alloca [48 x i8], align 8                ; 10 uses
  %i.b = alloca [32 x i8], align 8                ; 11 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !388
  %i.d = load i64, ptr %i.c, align 8, !dbg !388, !noundef !77 ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !388
  %i.f = load i64, ptr %i.e, align 8, !dbg !388, !noundef !77 ; 3 uses
  %i.g = load ptr, ptr %0, align 8, !dbg !389, !nonnull !77, !noundef !77
  tail call void @llvm.experimental.noalias.scope.decl(metadata !381), !dbg !390
  %i.h = icmp ult i64 %i.d, %i.f, !dbg !391
  br i1 %i.h, label %.lr.ph.i, label %_RINvYINtNtNtCscgRAwXFJnXP_4core3ops5range5RangejENtNtNtNtBa_4iter6traits8iterator8Iterator4folduNCINvNtNtBR_8adapters3map8map_foldjTINtNtCs8RCgFHiPUyX_15crossbeam_deque5deque6WorkerNtNtCs4BcJZGCY6Ba_10rayon_core3job6JobRefEINtB29_7StealerB2T_EEuNCINvMs4_NtB2X_8registryNtB44_8Registry3newNtB44_12DefaultSpawnE0NCINvNvBL_8for_each4callB25_NCINvNvNtBP_7collect14default_extend18unchecked_extenderTINtNtCsgZ49sUHp3tW_5alloc3vec3VecB26_EIB6m_B3z_EEB25_E0E0E0ECs2mZqlW55729_12polars_utils.exit, !dbg !392

.lr.ph.i:                                         ; preds = %bb.a
  %i.i = load i8, ptr %i.g, align 1, !range !87, !alias.scope !381, !noalias !382, !noundef !77
  %i.j = trunc nuw i8 %i.i to i1
  %i.k = getelementptr inbounds nuw i8, ptr %i.b, i64 24 ; 2 uses
  %.sroa.42.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 32 ; 2 uses
  %.sroa.53.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 40 ; 2 uses
  br i1 %i.j, label %.lr.ph.split.us.i, label %.lr.ph.split.i

.lr.ph.split.us.i:                                ; preds = %.lr.ph.i, %_RNCINvNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map8map_foldjTINtNtCs8RCgFHiPUyX_15crossbeam_deque5deque6WorkerNtNtCs4BcJZGCY6Ba_10rayon_core3job6JobRefEINtBZ_7StealerB1J_EEuNCINvMs4_NtB1N_8registryNtB2T_8Registry3newNtB2T_12DefaultSpawnE0NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callBV_NCINvNvNtB3Y_7collect14default_extend18unchecked_extenderTINtNtCsgZ49sUHp3tW_5alloc3vec3VecBW_EIB5G_B2p_EEBV_E0E0E0Cs2mZqlW55729_12polars_utils.exit.us.i
  %.sroa.0.09.us.i = phi i64 [ %i.o, %_RNCINvNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map8map_foldjTINtNtCs8RCgFHiPUyX_15crossbeam_deque5deque6WorkerNtNtCs4BcJZGCY6Ba_10rayon_core3job6JobRefEINtBZ_7StealerB1J_EEuNCINvMs4_NtB1N_8registryNtB2T_8Registry3newNtB2T_12DefaultSpawnE0NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callBV_NCINvNvNtB3Y_7collect14default_extend18unchecked_extenderTINtNtCsgZ49sUHp3tW_5alloc3vec3VecBW_EIB5G_B2p_EEBV_E0E0E0Cs2mZqlW55729_12polars_utils.exit.us.i ], [ %i.d, %.lr.ph.i ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !383
  call void @_RNvMs4_NtCs8RCgFHiPUyX_15crossbeam_deque5dequeINtB5_6WorkerNtNtCs4BcJZGCY6Ba_10rayon_core3job6JobRefE8new_fifoCs2mZqlW55729_12polars_utils(ptr noalias noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %i.b), !dbg !393, !noalias !384
  %i.l = load ptr, ptr %i.b, align 8, !dbg !394, !noalias !385, !nonnull !77, !noundef !77 ; 2 uses
  %i.m = atomicrmw add ptr %i.l, i64 1 monotonic, align 8, !dbg !395, !noalias !384
  %i.n = icmp slt i64 %i.m, 0, !dbg !396
  br i1 %i.n, label %.split.us.i, label %_RNCINvNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map8map_foldjTINtNtCs8RCgFHiPUyX_15crossbeam_deque5deque6WorkerNtNtCs4BcJZGCY6Ba_10rayon_core3job6JobRefEINtBZ_7StealerB1J_EEuNCINvMs4_NtB1N_8registryNtB2T_8Registry3newNtB2T_12DefaultSpawnE0NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callBV_NCINvNvNtB3Y_7collect14default_extend18unchecked_extenderTINtNtCsgZ49sUHp3tW_5alloc3vec3VecBW_EIB5G_B2p_EEBV_E0E0E0Cs2mZqlW55729_12polars_utils.exit.us.i, !dbg !396

_RNCINvNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map8map_foldjTINtNtCs8RCgFHiPUyX_15crossbeam_deque5deque6WorkerNtNtCs4BcJZGCY6Ba_10rayon_core3job6JobRefEINtBZ_7StealerB1J_EEuNCINvMs4_NtB1N_8registryNtB2T_8Registry3newNtB2T_12DefaultSpawnE0NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callBV_NCINvNvNtB3Y_7collect14default_extend18unchecked_extenderTINtNtCsgZ49sUHp3tW_5alloc3vec3VecBW_EIB5G_B2p_EEBV_E0E0E0Cs2mZqlW55729_12polars_utils.exit.us.i: ; preds = %.lr.ph.split.us.i
  %i.o = add nuw i64 %.sroa.0.09.us.i, 1, !dbg !397 ; 2 uses
  %i.p = load i8, ptr %i.k, align 8, !dbg !398, !range !87, !noalias !385, !noundef !77
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !399, !noalias !386
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.a, ptr noundef nonnull align 8 dereferenceable(32) %i.b, i64 32, i1 false), !dbg !400, !noalias !383
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !401, !noalias !383
  store ptr %i.l, ptr %.sroa.42.0..sroa_idx.i.i, align 8, !dbg !399, !noalias !383
  store i8 %i.p, ptr %.sroa.53.0..sroa_idx.i.i, align 8, !dbg !399, !noalias !383
  call void @_RNvXs2_NtNtNtCscgRAwXFJnXP_4core4iter6traits7collectTINtNtCsgZ49sUHp3tW_5alloc3vec3VecINtNtCs8RCgFHiPUyX_15crossbeam_deque5deque6WorkerNtNtCs4BcJZGCY6Ba_10rayon_core3job6JobRefEEIBQ_INtB1p_7StealerB29_EEEINtB5_6ExtendTB1m_B2U_EE20extend_one_uncheckedCs2mZqlW55729_12polars_utils(ptr noalias noundef nonnull align 8 dereferenceable(48) %1, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(48) %i.a), !dbg !402, !noalias !387
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !403, !noalias !386
  %exitcond12.not.i = icmp eq i64 %i.o, %i.f, !dbg !391
  br i1 %exitcond12.not.i, label %_RINvYINtNtNtCscgRAwXFJnXP_4core3ops5range5RangejENtNtNtNtBa_4iter6traits8iterator8Iterator4folduNCINvNtNtBR_8adapters3map8map_foldjTINtNtCs8RCgFHiPUyX_15crossbeam_deque5deque6WorkerNtNtCs4BcJZGCY6Ba_10rayon_core3job6JobRefEINtB29_7StealerB2T_EEuNCINvMs4_NtB2X_8registryNtB44_8Registry3newNtB44_12DefaultSpawnE0NCINvNvBL_8for_each4callB25_NCINvNvNtBP_7collect14default_extend18unchecked_extenderTINtNtCsgZ49sUHp3tW_5alloc3vec3VecB26_EIB6m_B3z_EEB25_E0E0E0ECs2mZqlW55729_12polars_utils.exit, label %.lr.ph.split.us.i, !dbg !392

.lr.ph.split.i:                                   ; preds = %.lr.ph.i, %_RNCINvNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map8map_foldjTINtNtCs8RCgFHiPUyX_15crossbeam_deque5deque6WorkerNtNtCs4BcJZGCY6Ba_10rayon_core3job6JobRefEINtBZ_7StealerB1J_EEuNCINvMs4_NtB1N_8registryNtB2T_8Registry3newNtB2T_12DefaultSpawnE0NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callBV_NCINvNvNtB3Y_7collect14default_extend18unchecked_extenderTINtNtCsgZ49sUHp3tW_5alloc3vec3VecBW_EIB5G_B2p_EEBV_E0E0E0Cs2mZqlW55729_12polars_utils.exit.i
  %.sroa.0.09.i = phi i64 [ %i.t, %_RNCINvNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map8map_foldjTINtNtCs8RCgFHiPUyX_15crossbeam_deque5deque6WorkerNtNtCs4BcJZGCY6Ba_10rayon_core3job6JobRefEINtBZ_7StealerB1J_EEuNCINvMs4_NtB1N_8registryNtB2T_8Registry3newNtB2T_12DefaultSpawnE0NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callBV_NCINvNvNtB3Y_7collect14default_extend18unchecked_extenderTINtNtCsgZ49sUHp3tW_5alloc3vec3VecBW_EIB5G_B2p_EEBV_E0E0E0Cs2mZqlW55729_12polars_utils.exit.i ], [ %i.d, %.lr.ph.i ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !383
  call void @_RNvMs4_NtCs8RCgFHiPUyX_15crossbeam_deque5dequeINtB5_6WorkerNtNtCs4BcJZGCY6Ba_10rayon_core3job6JobRefE8new_lifoCs2mZqlW55729_12polars_utils(ptr noalias noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %i.b), !dbg !404, !noalias !384
  %i.q = load ptr, ptr %i.b, align 8, !dbg !394, !noalias !385, !nonnull !77, !noundef !77 ; 2 uses
  %i.r = atomicrmw add ptr %i.q, i64 1 monotonic, align 8, !dbg !395, !noalias !384
  %i.s = icmp slt i64 %i.r, 0, !dbg !396
  br i1 %i.s, label %.split.us.i, label %_RNCINvNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map8map_foldjTINtNtCs8RCgFHiPUyX_15crossbeam_deque5deque6WorkerNtNtCs4BcJZGCY6Ba_10rayon_core3job6JobRefEINtBZ_7StealerB1J_EEuNCINvMs4_NtB1N_8registryNtB2T_8Registry3newNtB2T_12DefaultSpawnE0NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callBV_NCINvNvNtB3Y_7collect14default_extend18unchecked_extenderTINtNtCsgZ49sUHp3tW_5alloc3vec3VecBW_EIB5G_B2p_EEBV_E0E0E0Cs2mZqlW55729_12polars_utils.exit.i, !dbg !396

.split.us.i:                                      ; preds = %.lr.ph.split.i, %.lr.ph.split.us.i
  call void @llvm.trap(), !dbg !405
  unreachable, !dbg !405

_RNCINvNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map8map_foldjTINtNtCs8RCgFHiPUyX_15crossbeam_deque5deque6WorkerNtNtCs4BcJZGCY6Ba_10rayon_core3job6JobRefEINtBZ_7StealerB1J_EEuNCINvMs4_NtB1N_8registryNtB2T_8Registry3newNtB2T_12DefaultSpawnE0NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callBV_NCINvNvNtB3Y_7collect14default_extend18unchecked_extenderTINtNtCsgZ49sUHp3tW_5alloc3vec3VecBW_EIB5G_B2p_EEBV_E0E0E0Cs2mZqlW55729_12polars_utils.exit.i: ; preds = %.lr.ph.split.i
  %i.t = add nuw i64 %.sroa.0.09.i, 1, !dbg !397  ; 2 uses
  %i.u = load i8, ptr %i.k, align 8, !dbg !398, !range !87, !noalias !385, !noundef !77
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !399, !noalias !386
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.a, ptr noundef nonnull align 8 dereferenceable(32) %i.b, i64 32, i1 false), !dbg !400, !noalias !383
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !401, !noalias !383
  store ptr %i.q, ptr %.sroa.42.0..sroa_idx.i.i, align 8, !dbg !399, !noalias !383
  store i8 %i.u, ptr %.sroa.53.0..sroa_idx.i.i, align 8, !dbg !399, !noalias !383
  call void @_RNvXs2_NtNtNtCscgRAwXFJnXP_4core4iter6traits7collectTINtNtCsgZ49sUHp3tW_5alloc3vec3VecINtNtCs8RCgFHiPUyX_15crossbeam_deque5deque6WorkerNtNtCs4BcJZGCY6Ba_10rayon_core3job6JobRefEEIBQ_INtB1p_7StealerB29_EEEINtB5_6ExtendTB1m_B2U_EE20extend_one_uncheckedCs2mZqlW55729_12polars_utils(ptr noalias noundef nonnull align 8 dereferenceable(48) %1, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(48) %i.a), !dbg !402, !noalias !387
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !403, !noalias !386
  %exitcond.not.i = icmp eq i64 %i.t, %i.f, !dbg !391
  br i1 %exitcond.not.i, label %_RINvYINtNtNtCscgRAwXFJnXP_4core3ops5range5RangejENtNtNtNtBa_4iter6traits8iterator8Iterator4folduNCINvNtNtBR_8adapters3map8map_foldjTINtNtCs8RCgFHiPUyX_15crossbeam_deque5deque6WorkerNtNtCs4BcJZGCY6Ba_10rayon_core3job6JobRefEINtB29_7StealerB2T_EEuNCINvMs4_NtB2X_8registryNtB44_8Registry3newNtB44_12DefaultSpawnE0NCINvNvBL_8for_each4callB25_NCINvNvNtBP_7collect14default_extend18unchecked_extenderTINtNtCsgZ49sUHp3tW_5alloc3vec3VecB26_EIB6m_B3z_EEB25_E0E0E0ECs2mZqlW55729_12polars_utils.exit, label %.lr.ph.split.i, !dbg !392

_RINvYINtNtNtCscgRAwXFJnXP_4core3ops5range5RangejENtNtNtNtBa_4iter6traits8iterator8Iterator4folduNCINvNtNtBR_8adapters3map8map_foldjTINtNtCs8RCgFHiPUyX_15crossbeam_deque5deque6WorkerNtNtCs4BcJZGCY6Ba_10rayon_core3job6JobRefEINtB29_7StealerB2T_EEuNCINvMs4_NtB2X_8registryNtB44_8Registry3newNtB44_12DefaultSpawnE0NCINvNvBL_8for_each4callB25_NCINvNvNtBP_7collect14default_extend18unchecked_extenderTINtNtCsgZ49sUHp3tW_5alloc3vec3VecB26_EIB6m_B3z_EEB25_E0E0E0ECs2mZqlW55729_12polars_utils.exit: ; preds = %_RNCINvNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map8map_foldjTINtNtCs8RCgFHiPUyX_15crossbeam_deque5deque6WorkerNtNtCs4BcJZGCY6Ba_10rayon_core3job6JobRefEINtBZ_7StealerB1J_EEuNCINvMs4_NtB1N_8registryNtB2T_8Registry3newNtB2T_12DefaultSpawnE0NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callBV_NCINvNvNtB3Y_7collect14default_extend18unchecked_extenderTINtNtCsgZ49sUHp3tW_5alloc3vec3VecBW_EIB5G_B2p_EEBV_E0E0E0Cs2mZqlW55729_12polars_utils.exit.i, %_RNCINvNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map8map_foldjTINtNtCs8RCgFHiPUyX_15crossbeam_deque5deque6WorkerNtNtCs4BcJZGCY6Ba_10rayon_core3job6JobRefEINtBZ_7StealerB1J_EEuNCINvMs4_NtB1N_8registryNtB2T_8Registry3newNtB2T_12DefaultSpawnE0NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callBV_NCINvNvNtB3Y_7collect14default_extend18unchecked_extenderTINtNtCsgZ49sUHp3tW_5alloc3vec3VecBW_EIB5G_B2p_EEBV_E0E0E0Cs2mZqlW55729_12polars_utils.exit.us.i, %bb.a
  ret void, !dbg !406
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXs0_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3mapINtB6_3MapINtNtNtBc_3ops5range5RangejENCINvMs4_NtCs4BcJZGCY6Ba_10rayon_core8registryNtB1y_8Registry3newNtB1y_12DefaultSpawnE0ENtNtNtBa_6traits8iterator8Iterator4folduNCINvNvB2P_8for_each4callTINtNtCs8RCgFHiPUyX_15crossbeam_deque5deque6WorkerNtNtB1A_3job6JobRefEINtB3W_7StealerB4G_EENCINvNvNtB2T_7collect14default_extend8extenderTINtNtCsgZ49sUHp3tW_5alloc3vec3VecB3T_EIB67_B50_EEB3S_E0E0ECs2mZqlW55729_12polars_utils(ptr noalias noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %0, ptr noalias noundef align 8 dereferenceable(48) %1) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !407 {
bb.a:
  %i.a = alloca [48 x i8], align 8                ; 10 uses
  %i.b = alloca [32 x i8], align 8                ; 11 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !442
  %i.d = load i64, ptr %i.c, align 8, !dbg !442, !noundef !77 ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !442
  %i.f = load i64, ptr %i.e, align 8, !dbg !442, !noundef !77 ; 3 uses
  %i.g = load ptr, ptr %0, align 8, !dbg !443, !nonnull !77, !noundef !77
  tail call void @llvm.experimental.noalias.scope.decl(metadata !435), !dbg !444
  %i.h = icmp ult i64 %i.d, %i.f, !dbg !445
  br i1 %i.h, label %.lr.ph.i, label %_RINvYINtNtNtCscgRAwXFJnXP_4core3ops5range5RangejENtNtNtNtBa_4iter6traits8iterator8Iterator4folduNCINvNtNtBR_8adapters3map8map_foldjTINtNtCs8RCgFHiPUyX_15crossbeam_deque5deque6WorkerNtNtCs4BcJZGCY6Ba_10rayon_core3job6JobRefEINtB29_7StealerB2T_EEuNCINvMs4_NtB2X_8registryNtB44_8Registry3newNtB44_12DefaultSpawnE0NCINvNvBL_8for_each4callB25_NCINvNvNtBP_7collect14default_extend8extenderTINtNtCsgZ49sUHp3tW_5alloc3vec3VecB26_EIB6b_B3z_EEB25_E0E0E0ECs2mZqlW55729_12polars_utils.exit, !dbg !446

.lr.ph.i:                                         ; preds = %bb.a
  %i.i = load i8, ptr %i.g, align 1, !range !87, !alias.scope !435, !noalias !436, !noundef !77
  %i.j = trunc nuw i8 %i.i to i1
  %i.k = getelementptr inbounds nuw i8, ptr %i.b, i64 24 ; 2 uses
  %.sroa.42.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 32 ; 2 uses
  %.sroa.53.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 40 ; 2 uses
  br i1 %i.j, label %.lr.ph.split.us.i, label %.lr.ph.split.i

.lr.ph.split.us.i:                                ; preds = %.lr.ph.i, %_RNCINvNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map8map_foldjTINtNtCs8RCgFHiPUyX_15crossbeam_deque5deque6WorkerNtNtCs4BcJZGCY6Ba_10rayon_core3job6JobRefEINtBZ_7StealerB1J_EEuNCINvMs4_NtB1N_8registryNtB2T_8Registry3newNtB2T_12DefaultSpawnE0NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callBV_NCINvNvNtB3Y_7collect14default_extend8extenderTINtNtCsgZ49sUHp3tW_5alloc3vec3VecBW_EIB5v_B2p_EEBV_E0E0E0Cs2mZqlW55729_12polars_utils.exit.us.i
  %.sroa.0.09.us.i = phi i64 [ %i.o, %_RNCINvNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map8map_foldjTINtNtCs8RCgFHiPUyX_15crossbeam_deque5deque6WorkerNtNtCs4BcJZGCY6Ba_10rayon_core3job6JobRefEINtBZ_7StealerB1J_EEuNCINvMs4_NtB1N_8registryNtB2T_8Registry3newNtB2T_12DefaultSpawnE0NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callBV_NCINvNvNtB3Y_7collect14default_extend8extenderTINtNtCsgZ49sUHp3tW_5alloc3vec3VecBW_EIB5v_B2p_EEBV_E0E0E0Cs2mZqlW55729_12polars_utils.exit.us.i ], [ %i.d, %.lr.ph.i ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !437
  call void @_RNvMs4_NtCs8RCgFHiPUyX_15crossbeam_deque5dequeINtB5_6WorkerNtNtCs4BcJZGCY6Ba_10rayon_core3job6JobRefE8new_fifoCs2mZqlW55729_12polars_utils(ptr noalias noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %i.b), !dbg !447, !noalias !438
  %i.l = load ptr, ptr %i.b, align 8, !dbg !448, !noalias !439, !nonnull !77, !noundef !77 ; 2 uses
  %i.m = atomicrmw add ptr %i.l, i64 1 monotonic, align 8, !dbg !449, !noalias !438
  %i.n = icmp slt i64 %i.m, 0, !dbg !450
  br i1 %i.n, label %.split.us.i, label %_RNCINvNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map8map_foldjTINtNtCs8RCgFHiPUyX_15crossbeam_deque5deque6WorkerNtNtCs4BcJZGCY6Ba_10rayon_core3job6JobRefEINtBZ_7StealerB1J_EEuNCINvMs4_NtB1N_8registryNtB2T_8Registry3newNtB2T_12DefaultSpawnE0NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callBV_NCINvNvNtB3Y_7collect14default_extend8extenderTINtNtCsgZ49sUHp3tW_5alloc3vec3VecBW_EIB5v_B2p_EEBV_E0E0E0Cs2mZqlW55729_12polars_utils.exit.us.i, !dbg !450

_RNCINvNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map8map_foldjTINtNtCs8RCgFHiPUyX_15crossbeam_deque5deque6WorkerNtNtCs4BcJZGCY6Ba_10rayon_core3job6JobRefEINtBZ_7StealerB1J_EEuNCINvMs4_NtB1N_8registryNtB2T_8Registry3newNtB2T_12DefaultSpawnE0NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callBV_NCINvNvNtB3Y_7collect14default_extend8extenderTINtNtCsgZ49sUHp3tW_5alloc3vec3VecBW_EIB5v_B2p_EEBV_E0E0E0Cs2mZqlW55729_12polars_utils.exit.us.i: ; preds = %.lr.ph.split.us.i
  %i.o = add nuw i64 %.sroa.0.09.us.i, 1, !dbg !451 ; 2 uses
  %i.p = load i8, ptr %i.k, align 8, !dbg !452, !range !87, !noalias !439, !noundef !77
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !453, !noalias !440
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.a, ptr noundef nonnull align 8 dereferenceable(32) %i.b, i64 32, i1 false), !dbg !454, !noalias !437
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !455, !noalias !437
  store ptr %i.l, ptr %.sroa.42.0..sroa_idx.i.i, align 8, !dbg !453, !noalias !437
  store i8 %i.p, ptr %.sroa.53.0..sroa_idx.i.i, align 8, !dbg !453, !noalias !437
  call void @_RNvXs2_NtNtNtCscgRAwXFJnXP_4core4iter6traits7collectTINtNtCsgZ49sUHp3tW_5alloc3vec3VecINtNtCs8RCgFHiPUyX_15crossbeam_deque5deque6WorkerNtNtCs4BcJZGCY6Ba_10rayon_core3job6JobRefEEIBQ_INtB1p_7StealerB29_EEEINtB5_6ExtendTB1m_B2U_EE10extend_oneCs2mZqlW55729_12polars_utils(ptr noalias noundef nonnull align 8 dereferenceable(48) %1, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(48) %i.a), !dbg !456, !noalias !441
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !457, !noalias !440
  %exitcond12.not.i = icmp eq i64 %i.o, %i.f, !dbg !445
  br i1 %exitcond12.not.i, label %_RINvYINtNtNtCscgRAwXFJnXP_4core3ops5range5RangejENtNtNtNtBa_4iter6traits8iterator8Iterator4folduNCINvNtNtBR_8adapters3map8map_foldjTINtNtCs8RCgFHiPUyX_15crossbeam_deque5deque6WorkerNtNtCs4BcJZGCY6Ba_10rayon_core3job6JobRefEINtB29_7StealerB2T_EEuNCINvMs4_NtB2X_8registryNtB44_8Registry3newNtB44_12DefaultSpawnE0NCINvNvBL_8for_each4callB25_NCINvNvNtBP_7collect14default_extend8extenderTINtNtCsgZ49sUHp3tW_5alloc3vec3VecB26_EIB6b_B3z_EEB25_E0E0E0ECs2mZqlW55729_12polars_utils.exit, label %.lr.ph.split.us.i, !dbg !446

.lr.ph.split.i:                                   ; preds = %.lr.ph.i, %_RNCINvNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map8map_foldjTINtNtCs8RCgFHiPUyX_15crossbeam_deque5deque6WorkerNtNtCs4BcJZGCY6Ba_10rayon_core3job6JobRefEINtBZ_7StealerB1J_EEuNCINvMs4_NtB1N_8registryNtB2T_8Registry3newNtB2T_12DefaultSpawnE0NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callBV_NCINvNvNtB3Y_7collect14default_extend8extenderTINtNtCsgZ49sUHp3tW_5alloc3vec3VecBW_EIB5v_B2p_EEBV_E0E0E0Cs2mZqlW55729_12polars_utils.exit.i
  %.sroa.0.09.i = phi i64 [ %i.t, %_RNCINvNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map8map_foldjTINtNtCs8RCgFHiPUyX_15crossbeam_deque5deque6WorkerNtNtCs4BcJZGCY6Ba_10rayon_core3job6JobRefEINtBZ_7StealerB1J_EEuNCINvMs4_NtB1N_8registryNtB2T_8Registry3newNtB2T_12DefaultSpawnE0NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callBV_NCINvNvNtB3Y_7collect14default_extend8extenderTINtNtCsgZ49sUHp3tW_5alloc3vec3VecBW_EIB5v_B2p_EEBV_E0E0E0Cs2mZqlW55729_12polars_utils.exit.i ], [ %i.d, %.lr.ph.i ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !437
  call void @_RNvMs4_NtCs8RCgFHiPUyX_15crossbeam_deque5dequeINtB5_6WorkerNtNtCs4BcJZGCY6Ba_10rayon_core3job6JobRefE8new_lifoCs2mZqlW55729_12polars_utils(ptr noalias noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %i.b), !dbg !458, !noalias !438
  %i.q = load ptr, ptr %i.b, align 8, !dbg !448, !noalias !439, !nonnull !77, !noundef !77 ; 2 uses
  %i.r = atomicrmw add ptr %i.q, i64 1 monotonic, align 8, !dbg !449, !noalias !438
  %i.s = icmp slt i64 %i.r, 0, !dbg !450
  br i1 %i.s, label %.split.us.i, label %_RNCINvNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map8map_foldjTINtNtCs8RCgFHiPUyX_15crossbeam_deque5deque6WorkerNtNtCs4BcJZGCY6Ba_10rayon_core3job6JobRefEINtBZ_7StealerB1J_EEuNCINvMs4_NtB1N_8registryNtB2T_8Registry3newNtB2T_12DefaultSpawnE0NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callBV_NCINvNvNtB3Y_7collect14default_extend8extenderTINtNtCsgZ49sUHp3tW_5alloc3vec3VecBW_EIB5v_B2p_EEBV_E0E0E0Cs2mZqlW55729_12polars_utils.exit.i, !dbg !450

.split.us.i:                                      ; preds = %.lr.ph.split.i, %.lr.ph.split.us.i
  call void @llvm.trap(), !dbg !459
  unreachable, !dbg !459

_RNCINvNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map8map_foldjTINtNtCs8RCgFHiPUyX_15crossbeam_deque5deque6WorkerNtNtCs4BcJZGCY6Ba_10rayon_core3job6JobRefEINtBZ_7StealerB1J_EEuNCINvMs4_NtB1N_8registryNtB2T_8Registry3newNtB2T_12DefaultSpawnE0NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callBV_NCINvNvNtB3Y_7collect14default_extend8extenderTINtNtCsgZ49sUHp3tW_5alloc3vec3VecBW_EIB5v_B2p_EEBV_E0E0E0Cs2mZqlW55729_12polars_utils.exit.i: ; preds = %.lr.ph.split.i
  %i.t = add nuw i64 %.sroa.0.09.i, 1, !dbg !451  ; 2 uses
  %i.u = load i8, ptr %i.k, align 8, !dbg !452, !range !87, !noalias !439, !noundef !77
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !453, !noalias !440
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.a, ptr noundef nonnull align 8 dereferenceable(32) %i.b, i64 32, i1 false), !dbg !454, !noalias !437
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !455, !noalias !437
  store ptr %i.q, ptr %.sroa.42.0..sroa_idx.i.i, align 8, !dbg !453, !noalias !437
  store i8 %i.u, ptr %.sroa.53.0..sroa_idx.i.i, align 8, !dbg !453, !noalias !437
  call void @_RNvXs2_NtNtNtCscgRAwXFJnXP_4core4iter6traits7collectTINtNtCsgZ49sUHp3tW_5alloc3vec3VecINtNtCs8RCgFHiPUyX_15crossbeam_deque5deque6WorkerNtNtCs4BcJZGCY6Ba_10rayon_core3job6JobRefEEIBQ_INtB1p_7StealerB29_EEEINtB5_6ExtendTB1m_B2U_EE10extend_oneCs2mZqlW55729_12polars_utils(ptr noalias noundef nonnull align 8 dereferenceable(48) %1, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(48) %i.a), !dbg !456, !noalias !441
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !457, !noalias !440
  %exitcond.not.i = icmp eq i64 %i.t, %i.f, !dbg !445
  br i1 %exitcond.not.i, label %_RINvYINtNtNtCscgRAwXFJnXP_4core3ops5range5RangejENtNtNtNtBa_4iter6traits8iterator8Iterator4folduNCINvNtNtBR_8adapters3map8map_foldjTINtNtCs8RCgFHiPUyX_15crossbeam_deque5deque6WorkerNtNtCs4BcJZGCY6Ba_10rayon_core3job6JobRefEINtB29_7StealerB2T_EEuNCINvMs4_NtB2X_8registryNtB44_8Registry3newNtB44_12DefaultSpawnE0NCINvNvBL_8for_each4callB25_NCINvNvNtBP_7collect14default_extend8extenderTINtNtCsgZ49sUHp3tW_5alloc3vec3VecB26_EIB6b_B3z_EEB25_E0E0E0ECs2mZqlW55729_12polars_utils.exit, label %.lr.ph.split.i, !dbg !446

_RINvYINtNtNtCscgRAwXFJnXP_4core3ops5range5RangejENtNtNtNtBa_4iter6traits8iterator8Iterator4folduNCINvNtNtBR_8adapters3map8map_foldjTINtNtCs8RCgFHiPUyX_15crossbeam_deque5deque6WorkerNtNtCs4BcJZGCY6Ba_10rayon_core3job6JobRefEINtB29_7StealerB2T_EEuNCINvMs4_NtB2X_8registryNtB44_8Registry3newNtB44_12DefaultSpawnE0NCINvNvBL_8for_each4callB25_NCINvNvNtBP_7collect14default_extend8extenderTINtNtCsgZ49sUHp3tW_5alloc3vec3VecB26_EIB6b_B3z_EEB25_E0E0E0ECs2mZqlW55729_12polars_utils.exit: ; preds = %_RNCINvNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map8map_foldjTINtNtCs8RCgFHiPUyX_15crossbeam_deque5deque6WorkerNtNtCs4BcJZGCY6Ba_10rayon_core3job6JobRefEINtBZ_7StealerB1J_EEuNCINvMs4_NtB1N_8registryNtB2T_8Registry3newNtB2T_12DefaultSpawnE0NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callBV_NCINvNvNtB3Y_7collect14default_extend8extenderTINtNtCsgZ49sUHp3tW_5alloc3vec3VecBW_EIB5v_B2p_EEBV_E0E0E0Cs2mZqlW55729_12polars_utils.exit.i, %_RNCINvNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map8map_foldjTINtNtCs8RCgFHiPUyX_15crossbeam_deque5deque6WorkerNtNtCs4BcJZGCY6Ba_10rayon_core3job6JobRefEINtBZ_7StealerB1J_EEuNCINvMs4_NtB1N_8registryNtB2T_8Registry3newNtB2T_12DefaultSpawnE0NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callBV_NCINvNvNtB3Y_7collect14default_extend8extenderTINtNtCsgZ49sUHp3tW_5alloc3vec3VecBW_EIB5v_B2p_EEBV_E0E0E0Cs2mZqlW55729_12polars_utils.exit.us.i, %bb.a
  ret void, !dbg !460
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXs0_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3mapINtB6_3MapINtNtNtBc_3ops5range5RangejENCINvMs4_NtCs4BcJZGCY6Ba_10rayon_core8registryNtB1y_8Registry3newNtB1y_12DefaultSpawnEs_0ENtNtNtBa_6traits8iterator8Iterator4folduNCINvNvB2R_8for_each4callTINtNtCs8RCgFHiPUyX_15crossbeam_deque5deque6WorkerNtNtB1A_3job6JobRefEINtB3Y_7StealerB4I_EENCINvNvNtB2V_7collect14default_extend18unchecked_extenderTINtNtCsgZ49sUHp3tW_5alloc3vec3VecB3V_EIB6k_B52_EEB3U_E0E0ECs2mZqlW55729_12polars_utils(i64 noundef %0, i64 noundef %1, ptr noalias noundef align 8 dereferenceable(48) %2) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !461 {
bb.a:
  %i.a = alloca [48 x i8], align 8                ; 6 uses
  %i.b = alloca [32 x i8], align 8                ; 6 uses
  %i.c = icmp ult i64 %0, %1, !dbg !493
  br i1 %i.c, label %.lr.ph.i, label %_RINvYINtNtNtCscgRAwXFJnXP_4core3ops5range5RangejENtNtNtNtBa_4iter6traits8iterator8Iterator4folduNCINvNtNtBR_8adapters3map8map_foldjTINtNtCs8RCgFHiPUyX_15crossbeam_deque5deque6WorkerNtNtCs4BcJZGCY6Ba_10rayon_core3job6JobRefEINtB29_7StealerB2T_EEuNCINvMs4_NtB2X_8registryNtB44_8Registry3newNtB44_12DefaultSpawnEs_0NCINvNvBL_8for_each4callB25_NCINvNvNtBP_7collect14default_extend18unchecked_extenderTINtNtCsgZ49sUHp3tW_5alloc3vec3VecB26_EIB6o_B3z_EEB25_E0E0E0ECs2mZqlW55729_12polars_utils.exit, !dbg !494

.lr.ph.i:                                         ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %.sroa.42.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  %.sroa.53.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  br label %bb.b, !dbg !494

bb.b:                                             ; preds = %_RNCINvNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map8map_foldjTINtNtCs8RCgFHiPUyX_15crossbeam_deque5deque6WorkerNtNtCs4BcJZGCY6Ba_10rayon_core3job6JobRefEINtBZ_7StealerB1J_EEuNCINvMs4_NtB1N_8registryNtB2T_8Registry3newNtB2T_12DefaultSpawnEs_0NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callBV_NCINvNvNtB40_7collect14default_extend18unchecked_extenderTINtNtCsgZ49sUHp3tW_5alloc3vec3VecBW_EIB5I_B2p_EEBV_E0E0E0Cs2mZqlW55729_12polars_utils.exit.i, %.lr.ph.i
  %.sroa.0.08.i = phi i64 [ %0, %.lr.ph.i ], [ %i.h, %_RNCINvNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map8map_foldjTINtNtCs8RCgFHiPUyX_15crossbeam_deque5deque6WorkerNtNtCs4BcJZGCY6Ba_10rayon_core3job6JobRefEINtBZ_7StealerB1J_EEuNCINvMs4_NtB1N_8registryNtB2T_8Registry3newNtB2T_12DefaultSpawnEs_0NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callBV_NCINvNvNtB40_7collect14default_extend18unchecked_extenderTINtNtCsgZ49sUHp3tW_5alloc3vec3VecBW_EIB5I_B2p_EEBV_E0E0E0Cs2mZqlW55729_12polars_utils.exit.i ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !dbg !495, !noalias !488
  call void @_RNvMs4_NtCs8RCgFHiPUyX_15crossbeam_deque5dequeINtB5_6WorkerNtNtCs4BcJZGCY6Ba_10rayon_core3job6JobRefE8new_fifoCs2mZqlW55729_12polars_utils(ptr noalias noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %i.b), !dbg !495, !noalias !489
  %i.e = load ptr, ptr %i.b, align 8, !dbg !496, !noalias !490, !nonnull !77, !noundef !77 ; 2 uses
  %i.f = atomicrmw add ptr %i.e, i64 1 monotonic, align 8, !dbg !497, !noalias !489
  %i.g = icmp slt i64 %i.f, 0, !dbg !498
  br i1 %i.g, label %bb.c, label %_RNCINvNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map8map_foldjTINtNtCs8RCgFHiPUyX_15crossbeam_deque5deque6WorkerNtNtCs4BcJZGCY6Ba_10rayon_core3job6JobRefEINtBZ_7StealerB1J_EEuNCINvMs4_NtB1N_8registryNtB2T_8Registry3newNtB2T_12DefaultSpawnEs_0NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callBV_NCINvNvNtB40_7collect14default_extend18unchecked_extenderTINtNtCsgZ49sUHp3tW_5alloc3vec3VecBW_EIB5I_B2p_EEBV_E0E0E0Cs2mZqlW55729_12polars_utils.exit.i, !dbg !498

bb.c:                                             ; preds = %bb.b
  call void @llvm.trap(), !dbg !499
  unreachable, !dbg !499

_RNCINvNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map8map_foldjTINtNtCs8RCgFHiPUyX_15crossbeam_deque5deque6WorkerNtNtCs4BcJZGCY6Ba_10rayon_core3job6JobRefEINtBZ_7StealerB1J_EEuNCINvMs4_NtB1N_8registryNtB2T_8Registry3newNtB2T_12DefaultSpawnEs_0NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callBV_NCINvNvNtB40_7collect14default_extend18unchecked_extenderTINtNtCsgZ49sUHp3tW_5alloc3vec3VecBW_EIB5I_B2p_EEBV_E0E0E0Cs2mZqlW55729_12polars_utils.exit.i: ; preds = %bb.b
  %i.h = add nuw i64 %.sroa.0.08.i, 1, !dbg !500  ; 2 uses
  %i.i = load i8, ptr %i.d, align 8, !dbg !501, !range !87, !noalias !490, !noundef !77
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !502, !noalias !491
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.a, ptr noundef nonnull align 8 dereferenceable(32) %i.b, i64 32, i1 false), !dbg !503, !noalias !488
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !504, !noalias !488
  store ptr %i.e, ptr %.sroa.42.0..sroa_idx.i.i, align 8, !dbg !502, !noalias !488
  store i8 %i.i, ptr %.sroa.53.0..sroa_idx.i.i, align 8, !dbg !502, !noalias !488
  call void @_RNvXs2_NtNtNtCscgRAwXFJnXP_4core4iter6traits7collectTINtNtCsgZ49sUHp3tW_5alloc3vec3VecINtNtCs8RCgFHiPUyX_15crossbeam_deque5deque6WorkerNtNtCs4BcJZGCY6Ba_10rayon_core3job6JobRefEEIBQ_INtB1p_7StealerB29_EEEINtB5_6ExtendTB1m_B2U_EE20extend_one_uncheckedCs2mZqlW55729_12polars_utils(ptr noalias noundef nonnull align 8 dereferenceable(48) %2, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(48) %i.a), !dbg !505, !noalias !492
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !506, !noalias !491
  %exitcond.not.i = icmp eq i64 %i.h, %1, !dbg !493
  br i1 %exitcond.not.i, label %_RINvYINtNtNtCscgRAwXFJnXP_4core3ops5range5RangejENtNtNtNtBa_4iter6traits8iterator8Iterator4folduNCINvNtNtBR_8adapters3map8map_foldjTINtNtCs8RCgFHiPUyX_15crossbeam_deque5deque6WorkerNtNtCs4BcJZGCY6Ba_10rayon_core3job6JobRefEINtB29_7StealerB2T_EEuNCINvMs4_NtB2X_8registryNtB44_8Registry3newNtB44_12DefaultSpawnEs_0NCINvNvBL_8for_each4callB25_NCINvNvNtBP_7collect14default_extend18unchecked_extenderTINtNtCsgZ49sUHp3tW_5alloc3vec3VecB26_EIB6o_B3z_EEB25_E0E0E0ECs2mZqlW55729_12polars_utils.exit, label %bb.b, !dbg !494

_RINvYINtNtNtCscgRAwXFJnXP_4core3ops5range5RangejENtNtNtNtBa_4iter6traits8iterator8Iterator4folduNCINvNtNtBR_8adapters3map8map_foldjTINtNtCs8RCgFHiPUyX_15crossbeam_deque5deque6WorkerNtNtCs4BcJZGCY6Ba_10rayon_core3job6JobRefEINtB29_7StealerB2T_EEuNCINvMs4_NtB2X_8registryNtB44_8Registry3newNtB44_12DefaultSpawnEs_0NCINvNvBL_8for_each4callB25_NCINvNvNtBP_7collect14default_extend18unchecked_extenderTINtNtCsgZ49sUHp3tW_5alloc3vec3VecB26_EIB6o_B3z_EEB25_E0E0E0ECs2mZqlW55729_12polars_utils.exit: ; preds = %_RNCINvNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map8map_foldjTINtNtCs8RCgFHiPUyX_15crossbeam_deque5deque6WorkerNtNtCs4BcJZGCY6Ba_10rayon_core3job6JobRefEINtBZ_7StealerB1J_EEuNCINvMs4_NtB1N_8registryNtB2T_8Registry3newNtB2T_12DefaultSpawnEs_0NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callBV_NCINvNvNtB40_7collect14default_extend18unchecked_extenderTINtNtCsgZ49sUHp3tW_5alloc3vec3VecBW_EIB5I_B2p_EEBV_E0E0E0Cs2mZqlW55729_12polars_utils.exit.i, %bb.a
  ret void, !dbg !507
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXs0_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3mapINtB6_3MapINtNtNtBc_3ops5range5RangejENCINvMs4_NtCs4BcJZGCY6Ba_10rayon_core8registryNtB1y_8Registry3newNtB1y_12DefaultSpawnEs_0ENtNtNtBa_6traits8iterator8Iterator4folduNCINvNvB2R_8for_each4callTINtNtCs8RCgFHiPUyX_15crossbeam_deque5deque6WorkerNtNtB1A_3job6JobRefEINtB3Y_7StealerB4I_EENCINvNvNtB2V_7collect14default_extend8extenderTINtNtCsgZ49sUHp3tW_5alloc3vec3VecB3V_EIB69_B52_EEB3U_E0E0ECs2mZqlW55729_12polars_utils(i64 noundef %0, i64 noundef %1, ptr noalias noundef align 8 dereferenceable(48) %2) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !508 {
bb.a:
  %i.a = alloca [48 x i8], align 8                ; 6 uses
  %i.b = alloca [32 x i8], align 8                ; 6 uses
  %i.c = icmp ult i64 %0, %1, !dbg !540
  br i1 %i.c, label %.lr.ph.i, label %_RINvYINtNtNtCscgRAwXFJnXP_4core3ops5range5RangejENtNtNtNtBa_4iter6traits8iterator8Iterator4folduNCINvNtNtBR_8adapters3map8map_foldjTINtNtCs8RCgFHiPUyX_15crossbeam_deque5deque6WorkerNtNtCs4BcJZGCY6Ba_10rayon_core3job6JobRefEINtB29_7StealerB2T_EEuNCINvMs4_NtB2X_8registryNtB44_8Registry3newNtB44_12DefaultSpawnEs_0NCINvNvBL_8for_each4callB25_NCINvNvNtBP_7collect14default_extend8extenderTINtNtCsgZ49sUHp3tW_5alloc3vec3VecB26_EIB6d_B3z_EEB25_E0E0E0ECs2mZqlW55729_12polars_utils.exit, !dbg !541

.lr.ph.i:                                         ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %.sroa.42.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  %.sroa.53.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  br label %bb.b, !dbg !541

bb.b:                                             ; preds = %_RNCINvNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map8map_foldjTINtNtCs8RCgFHiPUyX_15crossbeam_deque5deque6WorkerNtNtCs4BcJZGCY6Ba_10rayon_core3job6JobRefEINtBZ_7StealerB1J_EEuNCINvMs4_NtB1N_8registryNtB2T_8Registry3newNtB2T_12DefaultSpawnEs_0NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callBV_NCINvNvNtB40_7collect14default_extend8extenderTINtNtCsgZ49sUHp3tW_5alloc3vec3VecBW_EIB5x_B2p_EEBV_E0E0E0Cs2mZqlW55729_12polars_utils.exit.i, %.lr.ph.i
  %.sroa.0.08.i = phi i64 [ %0, %.lr.ph.i ], [ %i.h, %_RNCINvNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map8map_foldjTINtNtCs8RCgFHiPUyX_15crossbeam_deque5deque6WorkerNtNtCs4BcJZGCY6Ba_10rayon_core3job6JobRefEINtBZ_7StealerB1J_EEuNCINvMs4_NtB1N_8registryNtB2T_8Registry3newNtB2T_12DefaultSpawnEs_0NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callBV_NCINvNvNtB40_7collect14default_extend8extenderTINtNtCsgZ49sUHp3tW_5alloc3vec3VecBW_EIB5x_B2p_EEBV_E0E0E0Cs2mZqlW55729_12polars_utils.exit.i ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !dbg !542, !noalias !535
  call void @_RNvMs4_NtCs8RCgFHiPUyX_15crossbeam_deque5dequeINtB5_6WorkerNtNtCs4BcJZGCY6Ba_10rayon_core3job6JobRefE8new_fifoCs2mZqlW55729_12polars_utils(ptr noalias noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %i.b), !dbg !542, !noalias !536
  %i.e = load ptr, ptr %i.b, align 8, !dbg !543, !noalias !537, !nonnull !77, !noundef !77 ; 2 uses
  %i.f = atomicrmw add ptr %i.e, i64 1 monotonic, align 8, !dbg !544, !noalias !536
  %i.g = icmp slt i64 %i.f, 0, !dbg !545
  br i1 %i.g, label %bb.c, label %_RNCINvNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map8map_foldjTINtNtCs8RCgFHiPUyX_15crossbeam_deque5deque6WorkerNtNtCs4BcJZGCY6Ba_10rayon_core3job6JobRefEINtBZ_7StealerB1J_EEuNCINvMs4_NtB1N_8registryNtB2T_8Registry3newNtB2T_12DefaultSpawnEs_0NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callBV_NCINvNvNtB40_7collect14default_extend8extenderTINtNtCsgZ49sUHp3tW_5alloc3vec3VecBW_EIB5x_B2p_EEBV_E0E0E0Cs2mZqlW55729_12polars_utils.exit.i, !dbg !545

bb.c:                                             ; preds = %bb.b
  call void @llvm.trap(), !dbg !546
  unreachable, !dbg !546

_RNCINvNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map8map_foldjTINtNtCs8RCgFHiPUyX_15crossbeam_deque5deque6WorkerNtNtCs4BcJZGCY6Ba_10rayon_core3job6JobRefEINtBZ_7StealerB1J_EEuNCINvMs4_NtB1N_8registryNtB2T_8Registry3newNtB2T_12DefaultSpawnEs_0NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callBV_NCINvNvNtB40_7collect14default_extend8extenderTINtNtCsgZ49sUHp3tW_5alloc3vec3VecBW_EIB5x_B2p_EEBV_E0E0E0Cs2mZqlW55729_12polars_utils.exit.i: ; preds = %bb.b
  %i.h = add nuw i64 %.sroa.0.08.i, 1, !dbg !547  ; 2 uses
  %i.i = load i8, ptr %i.d, align 8, !dbg !548, !range !87, !noalias !537, !noundef !77
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !549, !noalias !538
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.a, ptr noundef nonnull align 8 dereferenceable(32) %i.b, i64 32, i1 false), !dbg !550, !noalias !535
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !551, !noalias !535
  store ptr %i.e, ptr %.sroa.42.0..sroa_idx.i.i, align 8, !dbg !549, !noalias !535
  store i8 %i.i, ptr %.sroa.53.0..sroa_idx.i.i, align 8, !dbg !549, !noalias !535
  call void @_RNvXs2_NtNtNtCscgRAwXFJnXP_4core4iter6traits7collectTINtNtCsgZ49sUHp3tW_5alloc3vec3VecINtNtCs8RCgFHiPUyX_15crossbeam_deque5deque6WorkerNtNtCs4BcJZGCY6Ba_10rayon_core3job6JobRefEEIBQ_INtB1p_7StealerB29_EEEINtB5_6ExtendTB1m_B2U_EE10extend_oneCs2mZqlW55729_12polars_utils(ptr noalias noundef nonnull align 8 dereferenceable(48) %2, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(48) %i.a), !dbg !552, !noalias !539
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !553, !noalias !538
  %exitcond.not.i = icmp eq i64 %i.h, %1, !dbg !540
  br i1 %exitcond.not.i, label %_RINvYINtNtNtCscgRAwXFJnXP_4core3ops5range5RangejENtNtNtNtBa_4iter6traits8iterator8Iterator4folduNCINvNtNtBR_8adapters3map8map_foldjTINtNtCs8RCgFHiPUyX_15crossbeam_deque5deque6WorkerNtNtCs4BcJZGCY6Ba_10rayon_core3job6JobRefEINtB29_7StealerB2T_EEuNCINvMs4_NtB2X_8registryNtB44_8Registry3newNtB44_12DefaultSpawnEs_0NCINvNvBL_8for_each4callB25_NCINvNvNtBP_7collect14default_extend8extenderTINtNtCsgZ49sUHp3tW_5alloc3vec3VecB26_EIB6d_B3z_EEB25_E0E0E0ECs2mZqlW55729_12polars_utils.exit, label %bb.b, !dbg !541

_RINvYINtNtNtCscgRAwXFJnXP_4core3ops5range5RangejENtNtNtNtBa_4iter6traits8iterator8Iterator4folduNCINvNtNtBR_8adapters3map8map_foldjTINtNtCs8RCgFHiPUyX_15crossbeam_deque5deque6WorkerNtNtCs4BcJZGCY6Ba_10rayon_core3job6JobRefEINtB29_7StealerB2T_EEuNCINvMs4_NtB2X_8registryNtB44_8Registry3newNtB44_12DefaultSpawnEs_0NCINvNvBL_8for_each4callB25_NCINvNvNtBP_7collect14default_extend8extenderTINtNtCsgZ49sUHp3tW_5alloc3vec3VecB26_EIB6d_B3z_EEB25_E0E0E0ECs2mZqlW55729_12polars_utils.exit: ; preds = %_RNCINvNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map8map_foldjTINtNtCs8RCgFHiPUyX_15crossbeam_deque5deque6WorkerNtNtCs4BcJZGCY6Ba_10rayon_core3job6JobRefEINtBZ_7StealerB1J_EEuNCINvMs4_NtB1N_8registryNtB2T_8Registry3newNtB2T_12DefaultSpawnEs_0NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callBV_NCINvNvNtB40_7collect14default_extend8extenderTINtNtCsgZ49sUHp3tW_5alloc3vec3VecBW_EIB5x_B2p_EEBV_E0E0E0Cs2mZqlW55729_12polars_utils.exit.i, %bb.a
  ret void, !dbg !554
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(write, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define hidden void @_RINvXs0_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3mapINtB6_3MapINtNtNtBc_3ops5range5RangejENCNvMs_NtCs8RCgFHiPUyX_15crossbeam_deque5dequeINtB1w_6BufferNtNtCs4BcJZGCY6Ba_10rayon_core3job6JobRefE5alloc0ENtNtNtBa_6traits8iterator8Iterator4folduNCINvNvB3b_8for_each4callINtNtNtBc_3mem12maybe_uninit11MaybeUninitB2n_ENCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB57_3VecB4e_E14extend_trustedBN_E0E0ECs2mZqlW55729_12polars_utils(i64 noundef %0, i64 noundef %1, ptr noalias noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %2) unnamed_addr #1 personality ptr @rust_eh_personality !dbg !555 {
bb.a:
  %.sroa.0.0.copyload = load ptr, ptr %2, align 8, !dbg !575, !nonnull !77, !noundef !77
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 8, !dbg !575
  %.sroa.4.0.copyload = load i64, ptr %.sroa.4.0..sroa_idx, align 8, !dbg !575
  %i.a = tail call i64 @llvm.usub.sat.i64(i64 %1, i64 %0), !dbg !576
  %.val5.i = add i64 %.sroa.4.0.copyload, %i.a, !dbg !576
  store i64 %.val5.i, ptr %.sroa.0.0.copyload, align 8, !dbg !577, !noalias !574
  ret void, !dbg !578
}

; Function Attrs: nofree norecurse nosync nounwind nonlazybind memory(readwrite, inaccessiblemem: write, target_mem: none) uwtable
define hidden void @_RINvXs0_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3mapINtB6_3MapINtNtNtBc_5slice4iter4IterhENCNvNtCsgZ49sUHp3tW_5alloc3str13replace_ascii0ENtNtNtBa_6traits8iterator8Iterator4folduNCINvNvB2a_8for_each4callhNCINvMsj_NtB1v_3vecINtB3n_3VechE14extend_trustedBN_E0E0ECs2mZqlW55729_12polars_utils(ptr noalias noundef readonly align 8 captures(none) dead_on_return dereferenceable(32) %0, ptr noalias noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %1) unnamed_addr #2 personality ptr @rust_eh_personality !dbg !579 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !dbg !647, !nonnull !77, !noundef !77 ; 5 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !647
  %i.c = load ptr, ptr %i.b, align 8, !dbg !647, !nonnull !77, !noundef !77 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !648
  %i.e = load ptr, ptr %i.d, align 8, !dbg !648, !nonnull !77, !noundef !77 ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 24, !dbg !648
  %i.g = load ptr, ptr %i.f, align 8, !dbg !648, !nonnull !77, !noundef !77 ; 3 uses
  %.sroa.0.0.copyload = load ptr, ptr %1, align 8, !dbg !649 ; 2 uses
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 8, !dbg !649
  %.sroa.5.0.copyload = load i64, ptr %.sroa.5.0..sroa_idx, align 8, !dbg !649 ; 3 uses
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 16, !dbg !649
  %.sroa.7.0.copyload = load ptr, ptr %.sroa.7.0..sroa_idx, align 8, !dbg !649 ; 3 uses
  %i.h = icmp eq ptr %i.a, %i.c, !dbg !650
  br i1 %i.h, label %_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IterhENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters3map8map_foldRhhuNCNvNtCsgZ49sUHp3tW_5alloc3str13replace_ascii0NCINvNvBS_8for_each4callhNCINvMsj_NtB2l_3vecINtB3x_3VechE14extend_trustedINtB1I_3MapBF_B2f_EE0E0E0ECs2mZqlW55729_12polars_utils.exit, label %bb.b, !dbg !651

bb.b:                                             ; preds = %bb.a
  %i.i = ptrtoint ptr %i.c to i64, !dbg !652      ; 2 uses
  %i.j = ptrtoint ptr %i.a to i64, !dbg !652      ; 2 uses
  %i.k = sub i64 %i.i, %i.j, !dbg !652            ; 3 uses
  %xtraiter = and i64 %i.k, 1, !dbg !653
  %i.l = add i64 %i.i, -1, !dbg !653
  %i.m = icmp eq i64 %i.l, %i.j, !dbg !653
  br i1 %i.m, label %.epil.preheader, label %.new, !dbg !653

.new:                                             ; preds = %bb.b
  %unroll_iter = and i64 %i.k, -2, !dbg !653
  br label %bb.c, !dbg !653

bb.c:                                             ; preds = %bb.g, %.new
  %i.n = phi i64 [ %.sroa.5.0.copyload, %.new ], [ %i.aa, %bb.g ] ; 3 uses
  %.sroa.01.0.i = phi i64 [ 0, %.new ], [ %i.ab, %bb.g ], !dbg !654 ; 3 uses
  %niter = phi i64 [ 0, %.new ], [ %niter.next.1, %bb.g ]
  %i.o = getelementptr inbounds nuw i8, ptr %i.a, i64 %.sroa.01.0.i, !dbg !655
  %.val16.i = load i8, ptr %i.o, align 1, !dbg !656, !noalias !632, !noundef !77 ; 2 uses
  %i.p = load i8, ptr %i.e, align 1, !dbg !657, !noalias !633, !noundef !77
  %i.q = icmp eq i8 %.val16.i, %i.p, !dbg !658
  br i1 %i.q, label %bb.d, label %bb.e, !dbg !658

bb.d:                                             ; preds = %bb.c
  %i.r = load i8, ptr %i.g, align 1, !dbg !659, !noalias !633, !noundef !77
  br label %bb.e, !dbg !660

bb.e:                                             ; preds = %bb.d, %bb.c
  %.sroa.0.0.i.i.i = phi i8 [ %i.r, %bb.d ], [ %.val16.i, %bb.c ], !dbg !661
  %i.s = getelementptr inbounds nuw i8, ptr %.sroa.7.0.copyload, i64 %i.n, !dbg !662
  store i8 %.sroa.0.0.i.i.i, ptr %i.s, align 1, !dbg !663, !noalias !640
  %i.t = getelementptr inbounds nuw i8, ptr %i.a, i64 %.sroa.01.0.i, !dbg !655
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 1, !dbg !655
  %.val16.i.1 = load i8, ptr %i.u, align 1, !dbg !656, !noalias !632, !noundef !77 ; 2 uses
  %i.v = load i8, ptr %i.e, align 1, !dbg !657, !noalias !633, !noundef !77
  %i.w = icmp eq i8 %.val16.i.1, %i.v, !dbg !658
  br i1 %i.w, label %bb.f, label %bb.g, !dbg !658

bb.f:                                             ; preds = %bb.e
  %i.x = load i8, ptr %i.g, align 1, !dbg !659, !noalias !633, !noundef !77
  br label %bb.g, !dbg !660

bb.g:                                             ; preds = %bb.f, %bb.e
  %.sroa.0.0.i.i.i.1 = phi i8 [ %i.x, %bb.f ], [ %.val16.i.1, %bb.e ], !dbg !661
  %i.y = getelementptr i8, ptr %.sroa.7.0.copyload, i64 %i.n, !dbg !662
  %i.z = getelementptr i8, ptr %i.y, i64 1, !dbg !662
  store i8 %.sroa.0.0.i.i.i.1, ptr %i.z, align 1, !dbg !663, !noalias !640
  %i.aa = add i64 %i.n, 2, !dbg !664              ; 3 uses
  %i.ab = add nuw i64 %.sroa.01.0.i, 2, !dbg !665 ; 2 uses
  %niter.next.1 = add i64 %niter, 2, !dbg !666    ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter, !dbg !666
  br i1 %niter.ncmp.1, label %_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IterhENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters3map8map_foldRhhuNCNvNtCsgZ49sUHp3tW_5alloc3str13replace_ascii0NCINvNvBS_8for_each4callhNCINvMsj_NtB2l_3vecINtB3x_3VechE14extend_trustedINtB1I_3MapBF_B2f_EE0E0E0ECs2mZqlW55729_12polars_utils.exit.loopexit.unr-lcssa, label %bb.c, !dbg !666

_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IterhENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters3map8map_foldRhhuNCNvNtCsgZ49sUHp3tW_5alloc3str13replace_ascii0NCINvNvBS_8for_each4callhNCINvMsj_NtB2l_3vecINtB3x_3VechE14extend_trustedINtB1I_3MapBF_B2f_EE0E0E0ECs2mZqlW55729_12polars_utils.exit.loopexit.unr-lcssa: ; preds = %bb.g
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0, !dbg !658
  br i1 %lcmp.mod.not, label %_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IterhENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters3map8map_foldRhhuNCNvNtCsgZ49sUHp3tW_5alloc3str13replace_ascii0NCINvNvBS_8for_each4callhNCINvMsj_NtB2l_3vecINtB3x_3VechE14extend_trustedINtB1I_3MapBF_B2f_EE0E0E0ECs2mZqlW55729_12polars_utils.exit, label %.epil.preheader, !dbg !658

.epil.preheader:                                  ; preds = %_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IterhENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters3map8map_foldRhhuNCNvNtCsgZ49sUHp3tW_5alloc3str13replace_ascii0NCINvNvBS_8for_each4callhNCINvMsj_NtB2l_3vecINtB3x_3VechE14extend_trustedINtB1I_3MapBF_B2f_EE0E0E0ECs2mZqlW55729_12polars_utils.exit.loopexit.unr-lcssa, %bb.b
  %.epil.init = phi i64 [ %.sroa.5.0.copyload, %bb.b ], [ %i.aa, %_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IterhENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters3map8map_foldRhhuNCNvNtCsgZ49sUHp3tW_5alloc3str13replace_ascii0NCINvNvBS_8for_each4callhNCINvMsj_NtB2l_3vecINtB3x_3VechE14extend_trustedINtB1I_3MapBF_B2f_EE0E0E0ECs2mZqlW55729_12polars_utils.exit.loopexit.unr-lcssa ] ; 2 uses
  %.sroa.01.0.i.epil.init = phi i64 [ 0, %bb.b ], [ %i.ab, %_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IterhENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters3map8map_foldRhhuNCNvNtCsgZ49sUHp3tW_5alloc3str13replace_ascii0NCINvNvBS_8for_each4callhNCINvMsj_NtB2l_3vecINtB3x_3VechE14extend_trustedINtB1I_3MapBF_B2f_EE0E0E0ECs2mZqlW55729_12polars_utils.exit.loopexit.unr-lcssa ]
  %lcmp.mod4 = trunc i64 %i.k to i1, !dbg !658
  tail call void @llvm.assume(i1 %lcmp.mod4), !dbg !658
  %i.ac = getelementptr inbounds nuw i8, ptr %i.a, i64 %.sroa.01.0.i.epil.init, !dbg !655
  %.val16.i.epil = load i8, ptr %i.ac, align 1, !dbg !656, !noalias !632, !noundef !77 ; 2 uses
  %i.ad = load i8, ptr %i.e, align 1, !dbg !657, !noalias !633, !noundef !77
  %i.ae = icmp eq i8 %.val16.i.epil, %i.ad, !dbg !658
  br i1 %i.ae, label %bb.h, label %_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IterhENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters3map8map_foldRhhuNCNvNtCsgZ49sUHp3tW_5alloc3str13replace_ascii0NCINvNvBS_8for_each4callhNCINvMsj_NtB2l_3vecINtB3x_3VechE14extend_trustedINtB1I_3MapBF_B2f_EE0E0E0ECs2mZqlW55729_12polars_utils.exit.loopexit.epilog-lcssa, !dbg !658

bb.h:                                             ; preds = %.epil.preheader
  %i.af = load i8, ptr %i.g, align 1, !dbg !659, !noalias !633, !noundef !77
  br label %_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IterhENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters3map8map_foldRhhuNCNvNtCsgZ49sUHp3tW_5alloc3str13replace_ascii0NCINvNvBS_8for_each4callhNCINvMsj_NtB2l_3vecINtB3x_3VechE14extend_trustedINtB1I_3MapBF_B2f_EE0E0E0ECs2mZqlW55729_12polars_utils.exit.loopexit.epilog-lcssa, !dbg !660

_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IterhENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters3map8map_foldRhhuNCNvNtCsgZ49sUHp3tW_5alloc3str13replace_ascii0NCINvNvBS_8for_each4callhNCINvMsj_NtB2l_3vecINtB3x_3VechE14extend_trustedINtB1I_3MapBF_B2f_EE0E0E0ECs2mZqlW55729_12polars_utils.exit.loopexit.epilog-lcssa: ; preds = %bb.h, %.epil.preheader
  %.sroa.0.0.i.i.i.epil = phi i8 [ %i.af, %bb.h ], [ %.val16.i.epil, %.epil.preheader ], !dbg !661
  %i.ag = getelementptr inbounds nuw i8, ptr %.sroa.7.0.copyload, i64 %.epil.init, !dbg !662
  store i8 %.sroa.0.0.i.i.i.epil, ptr %i.ag, align 1, !dbg !663, !noalias !640
  %i.ah = add i64 %.epil.init, 1, !dbg !664
  br label %_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IterhENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters3map8map_foldRhhuNCNvNtCsgZ49sUHp3tW_5alloc3str13replace_ascii0NCINvNvBS_8for_each4callhNCINvMsj_NtB2l_3vecINtB3x_3VechE14extend_trustedINtB1I_3MapBF_B2f_EE0E0E0ECs2mZqlW55729_12polars_utils.exit

_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IterhENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters3map8map_foldRhhuNCNvNtCsgZ49sUHp3tW_5alloc3str13replace_ascii0NCINvNvBS_8for_each4callhNCINvMsj_NtB2l_3vecINtB3x_3VechE14extend_trustedINtB1I_3MapBF_B2f_EE0E0E0ECs2mZqlW55729_12polars_utils.exit: ; preds = %_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IterhENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters3map8map_foldRhhuNCNvNtCsgZ49sUHp3tW_5alloc3str13replace_ascii0NCINvNvBS_8for_each4callhNCINvMsj_NtB2l_3vecINtB3x_3VechE14extend_trustedINtB1I_3MapBF_B2f_EE0E0E0ECs2mZqlW55729_12polars_utils.exit.loopexit.epilog-lcssa, %_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IterhENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters3map8map_foldRhhuNCNvNtCsgZ49sUHp3tW_5alloc3str13replace_ascii0NCINvNvBS_8for_each4callhNCINvMsj_NtB2l_3vecINtB3x_3VechE14extend_trustedINtB1I_3MapBF_B2f_EE0E0E0ECs2mZqlW55729_12polars_utils.exit.loopexit.unr-lcssa, %bb.a
  %storemerge = phi i64 [ %.sroa.5.0.copyload, %bb.a ], [ %i.aa, %_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IterhENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters3map8map_foldRhhuNCNvNtCsgZ49sUHp3tW_5alloc3str13replace_ascii0NCINvNvBS_8for_each4callhNCINvMsj_NtB2l_3vecINtB3x_3VechE14extend_trustedINtB1I_3MapBF_B2f_EE0E0E0ECs2mZqlW55729_12polars_utils.exit.loopexit.unr-lcssa ], [ %i.ah, %_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IterhENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters3map8map_foldRhhuNCNvNtCsgZ49sUHp3tW_5alloc3str13replace_ascii0NCINvNvBS_8for_each4callhNCINvMsj_NtB2l_3vecINtB3x_3VechE14extend_trustedINtB1I_3MapBF_B2f_EE0E0E0ECs2mZqlW55729_12polars_utils.exit.loopexit.epilog-lcssa ], !dbg !667
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.copyload) ]
  store i64 %storemerge, ptr %.sroa.0.0.copyload, align 8, !dbg !667, !noalias !632
  ret void, !dbg !668
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXs0_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3mapINtB6_3MapINtNtNtCsgZ49sUHp3tW_5alloc3vec9into_iter8IntoIterINtNtCs8RCgFHiPUyX_15crossbeam_deque5deque7StealerNtNtCs4BcJZGCY6Ba_10rayon_core3job6JobRefEENvMs5_NtB2D_8registryNtB3m_10ThreadInfo3newENtNtNtBa_6traits8iterator8Iterator4folduNCINvNvB3Y_8for_each4callB3B_NCINvMsj_B12_INtB12_3VecB3B_E14extend_trustedBN_E0E0ECs2mZqlW55729_12polars_utils(ptr noalias noundef readonly align 8 captures(none) dead_on_return dereferenceable(32) %0, ptr noalias noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %1) unnamed_addr #0 !dbg !669 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 4 uses
  %i.b = alloca [32 x i8], align 8                ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !dbg !672
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.b, ptr noundef nonnull align 8 dereferenceable(32) %0, i64 32, i1 false), !dbg !672
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !671
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.a, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false), !dbg !673
  call void @_RINvXs4_NtNtCsgZ49sUHp3tW_5alloc3vec9into_iterINtB6_8IntoIterINtNtCs8RCgFHiPUyX_15crossbeam_deque5deque7StealerNtNtCs4BcJZGCY6Ba_10rayon_core3job6JobRefEENtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4folduNCINvNtNtB2y_8adapters3map8map_foldBX_NtNtB1P_8registry10ThreadInfouNvMs5_B47_B45_3newNCINvNvB2s_8for_each4callB45_NCINvMsj_B8_INtB8_3VecB45_E14extend_trustedINtB3y_3MapBI_B4z_EE0E0E0ECs2mZqlW55729_12polars_utils(ptr noalias noundef nonnull align 8 captures(address) dereferenceable(32) %i.b, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.a), !dbg !674
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !675
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !675
  ret void, !dbg !676
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvYINtNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map3MapINtNtNtBc_3ops5range5RangejENCINvMs4_NtCs4BcJZGCY6Ba_10rayon_core8registryNtB1s_8Registry3newNtB1s_12DefaultSpawnE0ENtNtNtBa_6traits8iterator8Iterator5unzipINtNtCs8RCgFHiPUyX_15crossbeam_deque5deque6WorkerNtNtB1u_3job6JobRefEINtB3q_7StealerB4a_EINtNtCsgZ49sUHp3tW_5alloc3vec3VecB3n_EIB4P_B4u_EECs2mZqlW55729_12polars_utils(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([48 x i8]) align 8 captures(none) dereferenceable(48) %0, ptr noalias noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %1) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !677 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 2 uses
  %i.b = alloca [48 x i8], align 8                ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !dbg !687
  store i64 0, ptr %i.b, align 8, !dbg !688, !alias.scope !684
  %.sroa.4.0..sroa_idx2.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8, !dbg !688
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.4.0..sroa_idx2.i, align 8, !dbg !688, !alias.scope !684
  %.sroa.5.0..sroa_idx3.i = getelementptr inbounds nuw i8, ptr %i.b, i64 16, !dbg !688
  %.sroa.2.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 32, !dbg !688
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.5.0..sroa_idx3.i, i8 0, i64 16, i1 false), !dbg !688, !alias.scope !684
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.2.0..sroa_idx.i, align 8, !dbg !688, !alias.scope !684
  %.sroa.3.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 40, !dbg !688
  store i64 0, ptr %.sroa.3.0..sroa_idx.i, align 8, !dbg !688, !alias.scope !684
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.a, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false), !dbg !689
  invoke void @_RNvXs_NvNtNtNtCscgRAwXFJnXP_4core4iter6traits7collect14default_extendTINtNtCsgZ49sUHp3tW_5alloc3vec3VecINtNtCs8RCgFHiPUyX_15crossbeam_deque5deque6WorkerNtNtCs4BcJZGCY6Ba_10rayon_core3job6JobRefEEIB17_INtB1G_7StealerB2q_EEEINtB4_10SpecExtendINtNtNtBa_8adapters3map3MapINtNtNtBc_3ops5range5RangejENCINvMs4_NtB2u_8registryNtB4S_8Registry3newNtB4S_12DefaultSpawnE0EE6extendCs2mZqlW55729_12polars_utils(ptr noalias noundef nonnull align 8 dereferenceable(48) %i.b, ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(24) %i.a)
          to label %bb.c unwind label %bb.b, !dbg !690

bb.b:                                             ; preds = %bb.a
  %i.c = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeTINtNtCsgZ49sUHp3tW_5alloc3vec3VecINtNtCs8RCgFHiPUyX_15crossbeam_deque5deque6WorkerNtNtCs4BcJZGCY6Ba_10rayon_core3job6JobRefEEIBI_INtB1h_7StealerB21_EEEECs2mZqlW55729_12polars_utils(ptr noalias noundef align 8 dereferenceable(48) %i.b) #22
          to label %bb.e unwind label %bb.d, !dbg !691

bb.c:                                             ; preds = %bb.a
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 8 dereferenceable(48) %i.b, i64 48, i1 false), !dbg !692
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !691
  ret void, !dbg !693

bb.d:                                             ; preds = %bb.b
  %i.d = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #20, !dbg !694
  unreachable, !dbg !694

bb.e:                                             ; preds = %bb.b
  resume { ptr, i32 } %i.c, !dbg !694
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvYINtNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map3MapINtNtNtBc_3ops5range5RangejENCINvMs4_NtCs4BcJZGCY6Ba_10rayon_core8registryNtB1s_8Registry3newNtB1s_12DefaultSpawnEs_0ENtNtNtBa_6traits8iterator8Iterator5unzipINtNtCs8RCgFHiPUyX_15crossbeam_deque5deque6WorkerNtNtB1u_3job6JobRefEINtB3s_7StealerB4c_EINtNtCsgZ49sUHp3tW_5alloc3vec3VecB3p_EIB4R_B4w_EECs2mZqlW55729_12polars_utils(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([48 x i8]) align 8 captures(none) dereferenceable(48) %0, i64 noundef %1, i64 noundef %2) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !695 {
bb.a:
  %i.a = alloca [48 x i8], align 8                ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !705
  store i64 0, ptr %i.a, align 8, !dbg !706, !alias.scope !702
  %.sroa.4.0..sroa_idx2.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8, !dbg !706
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.4.0..sroa_idx2.i, align 8, !dbg !706, !alias.scope !702
  %.sroa.5.0..sroa_idx3.i = getelementptr inbounds nuw i8, ptr %i.a, i64 16, !dbg !706
  %.sroa.2.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 32, !dbg !706
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.5.0..sroa_idx3.i, i8 0, i64 16, i1 false), !dbg !706, !alias.scope !702
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.2.0..sroa_idx.i, align 8, !dbg !706, !alias.scope !702
  %.sroa.3.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 40, !dbg !706
  store i64 0, ptr %.sroa.3.0..sroa_idx.i, align 8, !dbg !706, !alias.scope !702
end_hunk_0
begin_hunk_1_@_RNvMNtCs2mZqlW55729_12polars_utils10slice_enumNtB2_5Slice9offsetted:bb.a
  %.not = icmp ugt i64 %2, %i.d, !dbg !800
  br i1 %.not, label %bb.d, label %bb.e, !dbg !800

bb.d:                                             ; preds = %bb.c
  %i.g = sub nuw i64 %2, %i.d, !dbg !801
  %i.h = tail call i64 @llvm.usub.sat.i64(i64 %i.f, i64 %i.g), !dbg !802
  br label %bb.f, !dbg !803

bb.e:                                             ; preds = %bb.c
  %i.i = sub nuw i64 %i.d, %2, !dbg !804
  br label %bb.f, !dbg !803

bb.f:                                             ; preds = %bb.e, %bb.d
  %.sroa.02.0 = phi i64 [ %i.i, %bb.e ], [ 0, %bb.d ], !dbg !805
  %.sroa.0.0 = phi i64 [ %i.f, %bb.e ], [ %i.h, %bb.d ], !dbg !806
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !807
  store i64 %.sroa.02.0, ptr %i.j, align 8, !dbg !807
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !807
  store i64 %.sroa.0.0, ptr %i.k, align 8, !dbg !807
  store i64 0, ptr %0, align 8, !dbg !807
  ret void, !dbg !808
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: write) uwtable
define void @_RNvMNtCs2mZqlW55729_12polars_utils17calc_morsel_splitNtB2_13PartSizesIter19new_from_total_size(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) initializes((0, 24)) %0, i64 noundef %1, i64 noundef %2) unnamed_addr #4 personality ptr @rust_eh_personality !dbg !809 {
bb.a:
  %i.a = icmp eq i64 %2, 0, !dbg !813
  br i1 %i.a, label %bb.b, label %bb.c, !dbg !813

bb.b:                                             ; preds = %bb.a, %bb.c
  %.sink2 = phi i64 [ %i.d, %bb.c ], [ 0, %bb.a ], !dbg !814
  %.sink = phi i64 [ %i.f, %bb.c ], [ 0, %bb.a ], !dbg !814
  store i64 %.sink2, ptr %0, align 8, !dbg !814
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !814
  store i64 %2, ptr %i.b, align 8, !dbg !814
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !814
  store i64 %.sink, ptr %i.c, align 8, !dbg !814
  ret void, !dbg !815

bb.c:                                             ; preds = %bb.a
  %i.d = udiv i64 %1, %2, !dbg !816
  %i.e = urem i64 %1, %2, !dbg !817
  %i.f = sub nuw i64 %2, %i.e, !dbg !818
  br label %bb.b, !dbg !815
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define void @_RNvMs_NtCs2mZqlW55729_12polars_utils18cardinality_sketchNtB4_17CardinalitySketch6insert(ptr noalias nofree noundef captures(none) dereferenceable(256) %0, i64 noundef %1) unnamed_addr #3 personality ptr @rust_eh_personality !dbg !819 {
bb.a:
  %i.a = mul i64 %1, 2887833722462635776, !dbg !828
  %i.b = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.a, i1 false), !dbg !829
  %i.c = trunc nuw nsw i64 %i.b to i8, !dbg !828
  %i.d = add nuw nsw i8 %i.c, 1, !dbg !830
  %i.e = mul i64 %1, -8059169931769559161, !dbg !831
  %i.f = lshr i64 %i.e, 56, !dbg !832
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 %i.f, !dbg !833 ; 2 uses
  %i.h = load i8, ptr %i.g, align 1, !dbg !833, !noundef !77
  %.sroa.0.0.i = tail call noundef range(i8 1, 0) i8 @llvm.umax.i8(i8 range(i8 1, 66) %i.d, i8 %i.h), !dbg !834
  store i8 %.sroa.0.0.i, ptr %i.g, align 1, !dbg !835
  ret void, !dbg !836
}

; Function Attrs: nonlazybind uwtable
define void @_RNvMs_NtCs2mZqlW55729_12polars_utils18cardinality_sketchNtB4_17CardinalitySketch7combine(ptr noalias noundef dereferenceable(256) %0, ptr noalias noundef readonly captures(address, read_provenance) dereferenceable(256) %1) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !837 {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 5 uses
  %i.b = alloca [256 x i8], align 1               ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !864
  store ptr %0, ptr %i.a, align 8, !noalias !865
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr %1, ptr %i.c, align 8, !noalias !865
  br label %bb.b, !dbg !880

bb.b:                                             ; preds = %bb.b, %bb.a
  %storemerge5.i.i = phi i64 [ 0, %bb.a ], [ %i.f, %bb.b ] ; 3 uses
  %i.d = call noundef i8 @_RNvXs_NtNtCscgRAwXFJnXP_4core3ops9try_traitINtB4_7WrappedhjNCNvMs_NtCs2mZqlW55729_12polars_utils18cardinality_sketchNtB12_17CardinalitySketch7combine0EINtNtB6_8function5FnMutTjEE8call_mutB14_(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.a, i64 noundef %storemerge5.i.i), !dbg !881, !noalias !869
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 %storemerge5.i.i, !dbg !882
  store i8 %i.d, ptr %i.e, align 1, !dbg !883
  %i.f = add nuw nsw i64 %storemerge5.i.i, 1, !dbg !884 ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %i.f, 256, !dbg !880
  br i1 %exitcond.not.i.i, label %_RINvNtCscgRAwXFJnXP_4core5array11try_from_fnINtNtNtB4_3ops9try_trait17NeverShortCircuithEKj100_INtBJ_7WrappedhjNCNvMs_NtCs2mZqlW55729_12polars_utils18cardinality_sketchNtB1S_17CardinalitySketch7combine0EEB1U_.exit, label %bb.b, !dbg !880

_RINvNtCscgRAwXFJnXP_4core5array11try_from_fnINtNtNtB4_3ops9try_trait17NeverShortCircuithEKj100_INtBJ_7WrappedhjNCNvMs_NtCs2mZqlW55729_12polars_utils18cardinality_sketchNtB1S_17CardinalitySketch7combine0EEB1U_.exit: ; preds = %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !885, !noalias !864
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(256) %0, ptr noundef nonnull align 1 dereferenceable(256) %i.b, i64 256, i1 false), !dbg !886
  ret void, !dbg !887
}

; Function Attrs: nofree norecurse nosync nounwind nonlazybind memory(argmem: read) uwtable
define noundef i64 @_RNvMs_NtCs2mZqlW55729_12polars_utils18cardinality_sketchNtB4_17CardinalitySketch8estimate(ptr noalias noundef readonly captures(none) dereferenceable(256) %0) unnamed_addr #5 personality ptr @rust_eh_personality !dbg !888 {
vector.ph:
  br label %vector.body, !dbg !912

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ], !dbg !927 ; 2 uses
  %vec.phi = phi <2 x double> [ zeroinitializer, %vector.ph ], [ %i.k, %vector.body ]
  %vec.phi20 = phi <2 x double> [ zeroinitializer, %vector.ph ], [ %i.l, %vector.body ]
  %vec.phi21 = phi <2 x i64> [ zeroinitializer, %vector.ph ], [ %i.q, %vector.body ]
  %vec.phi22 = phi <2 x i64> [ zeroinitializer, %vector.ph ], [ %i.r, %vector.body ]
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 %index, !dbg !928 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 2, !dbg !929
  %wide.load = load <2 x i8>, ptr %i.a, align 1, !dbg !929 ; 2 uses
  %wide.load23 = load <2 x i8>, ptr %i.b, align 1, !dbg !929 ; 2 uses
  %i.c = zext <2 x i8> %wide.load to <2 x i64>, !dbg !930
  %i.d = zext <2 x i8> %wide.load23 to <2 x i64>, !dbg !930
  %i.e = shl nuw nsw <2 x i64> %i.c, splat (i64 52), !dbg !931
  %i.f = shl nuw nsw <2 x i64> %i.d, splat (i64 52), !dbg !931
  %i.g = sub nuw nsw <2 x i64> splat (i64 4607182418800017408), %i.e, !dbg !932
  %i.h = sub nuw nsw <2 x i64> splat (i64 4607182418800017408), %i.f, !dbg !932
  %i.i = bitcast <2 x i64> %i.g to <2 x double>, !dbg !933
  %i.j = bitcast <2 x i64> %i.h to <2 x double>, !dbg !933
  %i.k = fadd reassoc nsz arcp contract <2 x double> %vec.phi, %i.i, !dbg !934 ; 2 uses
  %i.l = fadd reassoc nsz arcp contract <2 x double> %vec.phi20, %i.j, !dbg !934 ; 2 uses
  %i.m = icmp eq <2 x i8> %wide.load, zeroinitializer, !dbg !935
  %i.n = icmp eq <2 x i8> %wide.load23, zeroinitializer, !dbg !935
  %i.o = zext <2 x i1> %i.m to <2 x i64>, !dbg !935
  %i.p = zext <2 x i1> %i.n to <2 x i64>, !dbg !935
  %i.q = add <2 x i64> %vec.phi21, %i.o, !dbg !936 ; 2 uses
  %i.r = add <2 x i64> %vec.phi22, %i.p, !dbg !936 ; 2 uses
  %index.next = add nuw i64 %index, 4, !dbg !927  ; 2 uses
  %i.s = icmp eq i64 %index.next, 256, !dbg !912
  br i1 %i.s, label %middle.block, label %vector.body, !dbg !912, !llvm.loop !904

middle.block:                                     ; preds = %vector.body
  %bin.rdx24 = add <2 x i64> %i.r, %i.q, !dbg !912
  %i.t = tail call i64 @llvm.vector.reduce.add.v2i64(<2 x i64> %bin.rdx24), !dbg !912 ; 3 uses
  %bin.rdx = fadd reassoc nsz arcp contract <2 x double> %i.l, %i.k, !dbg !912
  %i.u = tail call reassoc nsz arcp contract double @llvm.vector.reduce.fadd.v2f64(double 0.000000e+00, <2 x double> %bin.rdx), !dbg !912
  %i.v = fdiv double f0x40E6B2ABA7F5EE9A, %i.u, !dbg !937 ; 2 uses
  %i.w = fcmp ugt double %i.v, 6.400000e+02, !dbg !938
  %i.x = icmp eq i64 %i.t, 0
  %or.cond = select i1 %i.w, i1 true, i1 %i.x, !dbg !938
  br i1 %or.cond, label %bb.b, label %bb.a, !dbg !938

bb.a:                                             ; preds = %middle.block
  %i.y = uitofp i64 %i.t to float, !dbg !939
  %i.z = fdiv nnan float 2.560000e+02, %i.y, !dbg !940
  %i.aa = tail call nnan float @llvm.log.f32(float %i.z), !dbg !941
  %i.ab = fpext nnan float %i.aa to double, !dbg !940
  %i.ac = fmul nnan double %i.ab, 2.560000e+02, !dbg !942
  br label %bb.b, !dbg !943

bb.b:                                             ; preds = %middle.block, %bb.a
  %.sroa.010.0 = phi double [ %i.v, %middle.block ], [ %i.ac, %bb.a ], !dbg !944
  %i.ad = icmp eq i64 %i.t, 256, !dbg !945
  br i1 %i.ad, label %bb.d, label %bb.c, !dbg !945

bb.c:                                             ; preds = %bb.b
  %i.ae = fadd double %.sroa.010.0, 5.000000e-01, !dbg !946
  %i.af = tail call i64 @llvm.fptoui.sat.i64.f64(double %i.ae), !dbg !947
  %.sroa.0.0.i = tail call noundef range(i64 1, 0) i64 @llvm.umax.i64(i64 %i.af, i64 1), !dbg !948
  br label %bb.d, !dbg !949

bb.d:                                             ; preds = %bb.b, %bb.c
  %.sroa.0.0 = phi i64 [ %.sroa.0.0.i, %bb.c ], [ 0, %bb.b ], !dbg !950
  ret i64 %.sroa.0.0, !dbg !951
}

; Function Attrs: nonlazybind uwtable
define noundef i64 @_RNvNtCs2mZqlW55729_12polars_utils17calc_morsel_split12calc_n_parts(i64 noundef %0, i64 noundef range(i64 1, 0) %1) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !952 {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 5 uses
  %i.b = alloca [16 x i8], align 8                ; 5 uses
  %i.c = alloca [16 x i8], align 8                ; 5 uses
  %i.d = alloca [16 x i8], align 8                ; 5 uses
  %i.e = alloca [16 x i8], align 8                ; 8 uses
  %i.f = alloca [8 x i8], align 8                 ; 2 uses
  %i.g = alloca [8 x i8], align 8                 ; 2 uses
  store i64 %0, ptr %i.g, align 8
  store i64 %1, ptr %i.f, align 8
  %.not = icmp ugt i64 %0, %1, !dbg !1094
  br i1 %.not, label %bb.c, label %bb.b, !dbg !1094

bb.b:                                             ; preds = %bb.a
  %i.h = icmp ne i64 %0, 0, !dbg !1095
  %. = zext i1 %i.h to i64, !dbg !1096
  br label %bb.e, !dbg !1096

bb.c:                                             ; preds = %bb.a
  %i.i = udiv i64 %0, %1, !dbg !1097              ; 7 uses
  %i.j = tail call i64 @llvm.uadd.sat.i64(i64 %i.i, i64 1), !dbg !1098 ; 7 uses
  %i.k = icmp uge i64 %i.i, %i.j, !dbg !1099      ; 2 uses
  %not..i.i = xor i1 %i.k, true, !dbg !1100
  %i.l = zext i1 %not..i.i to i64, !dbg !1100
  %.sroa.58.0.copyload.i.i = add nuw i64 %i.i, %i.l, !dbg !1100 ; 3 uses
  %i.m = udiv i64 %0, %i.i, !dbg !1101            ; 3 uses
  %i.n = icmp ult i64 %i.m, %1, !dbg !1102
  %i.o = sub nuw i64 %1, %i.m, !dbg !1102
  %i.p = sub nuw i64 %i.m, %1, !dbg !1102
  %.sroa.0.0.i.i3.i.i.i = select i1 %i.n, i64 %i.o, i64 %i.p, !dbg !1102 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !1066
  store ptr %i.g, ptr %i.e, align 8, !noalias !1067
  %i.q = getelementptr inbounds nuw i8, ptr %i.e, i64 8 ; 3 uses
  store ptr %i.f, ptr %i.q, align 8, !noalias !1067
  %.not.i.i.i6.i.i = icmp ugt i64 %.sroa.58.0.copyload.i.i, %i.j
  %or.cond.i.i.i = select i1 %i.k, i1 true, i1 %.not.i.i.i6.i.i, !dbg !1103
  br i1 %or.cond.i.i.i, label %bb.d, label %.preheader.i.i.i.i.i, !dbg !1103

.preheader.i.i.i.i.i:                             ; preds = %bb.c
  %i.r = icmp ult i64 %.sroa.58.0.copyload.i.i, %i.j, !dbg !1104
  br i1 %i.r, label %.lr.ph.i.i.i.i.i, label %._crit_edge.i.i.i.i.i, !dbg !1105

.lr.ph.i.i.i.i.i:                                 ; preds = %.preheader.i.i.i.i.i
  %i.s = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  %i.t = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.u = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  br label %_RNCINvMs0_NtNtCscgRAwXFJnXP_4core3ops9try_traitINtB8_17NeverShortCircuitTyyEE10wrap_mut_2B18_yNCINvNtNtNtBc_4iter8adapters3map8map_foldyB18_B18_NCINvNvNtNtNtB1D_6traits8iterator8Iterator10min_by_key3keyyyNCNvNtCs2mZqlW55729_12polars_utils17calc_morsel_split12calc_n_parts0E0NCINvNvB2p_6min_by4foldB18_INvB2n_7compareyyEE0E0E0B3m_.exit.i.i.i.i.i, !dbg !1105

_RNCINvMs0_NtNtCscgRAwXFJnXP_4core3ops9try_traitINtB8_17NeverShortCircuitTyyEE10wrap_mut_2B18_yNCINvNtNtNtBc_4iter8adapters3map8map_foldyB18_B18_NCINvNvNtNtNtB1D_6traits8iterator8Iterator10min_by_key3keyyyNCNvNtCs2mZqlW55729_12polars_utils17calc_morsel_split12calc_n_parts0E0NCINvNvB2p_6min_by4foldB18_INvB2n_7compareyyEE0E0E0B3m_.exit.i.i.i.i.i: ; preds = %_RNCINvMs0_NtNtCscgRAwXFJnXP_4core3ops9try_traitINtB8_17NeverShortCircuitTyyEE10wrap_mut_2B18_yNCINvNtNtNtBc_4iter8adapters3map8map_foldyB18_B18_NCINvNvNtNtNtB1D_6traits8iterator8Iterator10min_by_key3keyyyNCNvNtCs2mZqlW55729_12polars_utils17calc_morsel_split12calc_n_parts0E0NCINvNvB2p_6min_by4foldB18_INvB2n_7compareyyEE0E0E0B3m_.exit.i.i.i.i.i, %.lr.ph.i.i.i.i.i
  %.sroa.01.036.i.i.i.i.i = phi i64 [ %.sroa.0.0.i.i3.i.i.i, %.lr.ph.i.i.i.i.i ], [ %.sroa.0.0.i.i6.i.i.i.i.i.i.i, %_RNCINvMs0_NtNtCscgRAwXFJnXP_4core3ops9try_traitINtB8_17NeverShortCircuitTyyEE10wrap_mut_2B18_yNCINvNtNtNtBc_4iter8adapters3map8map_foldyB18_B18_NCINvNvNtNtNtB1D_6traits8iterator8Iterator10min_by_key3keyyyNCNvNtCs2mZqlW55729_12polars_utils17calc_morsel_split12calc_n_parts0E0NCINvNvB2p_6min_by4foldB18_INvB2n_7compareyyEE0E0E0B3m_.exit.i.i.i.i.i ] ; 2 uses
  %.sroa.8.035.i.i.i.i.i = phi i64 [ %i.i, %.lr.ph.i.i.i.i.i ], [ %.sroa.3.0.i.i.i.i.i.i.i.i.i, %_RNCINvMs0_NtNtCscgRAwXFJnXP_4core3ops9try_traitINtB8_17NeverShortCircuitTyyEE10wrap_mut_2B18_yNCINvNtNtNtBc_4iter8adapters3map8map_foldyB18_B18_NCINvNvNtNtNtB1D_6traits8iterator8Iterator10min_by_key3keyyyNCNvNtCs2mZqlW55729_12polars_utils17calc_morsel_split12calc_n_parts0E0NCINvNvB2p_6min_by4foldB18_INvB2n_7compareyyEE0E0E0B3m_.exit.i.i.i.i.i ] ; 2 uses
  %i.v = phi i64 [ %.sroa.58.0.copyload.i.i, %.lr.ph.i.i.i.i.i ], [ %i.w, %_RNCINvMs0_NtNtCscgRAwXFJnXP_4core3ops9try_traitINtB8_17NeverShortCircuitTyyEE10wrap_mut_2B18_yNCINvNtNtNtBc_4iter8adapters3map8map_foldyB18_B18_NCINvNvNtNtNtB1D_6traits8iterator8Iterator10min_by_key3keyyyNCNvNtCs2mZqlW55729_12polars_utils17calc_morsel_split12calc_n_parts0E0NCINvNvB2p_6min_by4foldB18_INvB2n_7compareyyEE0E0E0B3m_.exit.i.i.i.i.i ] ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1072), !dbg !1106
  call void @llvm.experimental.noalias.scope.decl(metadata !1073), !dbg !1107
  %i.w = add nuw i64 %i.v, 1, !dbg !1108          ; 2 uses
  %.val5.i.i.i.i.i.i.i = load ptr, ptr %i.q, align 8, !dbg !1109, !alias.scope !1079, !noalias !1067, !nonnull !77, !noundef !77
  %.val.i.i.i.i.i.i.i = load ptr, ptr %i.e, align 8, !dbg !1109, !alias.scope !1079, !noalias !1067, !nonnull !77, !noundef !77
  %i.x = load i64, ptr %.val.i.i.i.i.i.i.i, align 8, !dbg !1110, !noalias !1080, !noundef !77
  %i.y = udiv i64 %i.x, %i.v, !dbg !1111          ; 3 uses
  %i.z = load i64, ptr %.val5.i.i.i.i.i.i.i, align 8, !dbg !1112, !range !1081, !noalias !1080, !noundef !77 ; 3 uses
  %i.aa = icmp ult i64 %i.y, %i.z, !dbg !1113
  %i.ab = sub nuw i64 %i.z, %i.y, !dbg !1113
  %i.ac = sub nuw i64 %i.y, %i.z, !dbg !1113
  %.sroa.0.0.i.i.i.i.i.i.i.i.i = select i1 %i.aa, i64 %i.ab, i64 %i.ac, !dbg !1113 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !1082
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !1082
  store i64 %.sroa.01.036.i.i.i.i.i, ptr %i.d, align 8, !noalias !1083
  store i64 %.sroa.8.035.i.i.i.i.i, ptr %i.t, align 8, !noalias !1083
  store i64 %.sroa.0.0.i.i.i.i.i.i.i.i.i, ptr %i.c, align 8, !noalias !1083
  store i64 %i.v, ptr %i.u, align 8, !noalias !1083
  %i.ad = call noundef i8 @_RNvXs2_NtNtNtCscgRAwXFJnXP_4core3ops8function5implsQINvNvNtNtNtNtBb_4iter6traits8iterator8Iterator10min_by_key7compareyyEINtB7_6FnOnceTRTyyEB29_EE9call_onceCs2mZqlW55729_12polars_utils(ptr noalias noundef nonnull %i.s, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.d, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.c), !dbg !1114, !noalias !1084
  %i.ae = icmp slt i8 %i.ad, 1, !dbg !1115        ; 2 uses
  %.sroa.3.0.i.i.i.i.i.i.i.i.i = select i1 %i.ae, i64 %.sroa.8.035.i.i.i.i.i, i64 %i.v, !dbg !1114 ; 2 uses
  %.sroa.0.0.i.i6.i.i.i.i.i.i.i = select i1 %i.ae, i64 %.sroa.01.036.i.i.i.i.i, i64 %.sroa.0.0.i.i.i.i.i.i.i.i.i, !dbg !1114 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !dbg !1116, !noalias !1082
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !dbg !1116, !noalias !1082
  %exitcond.not.i.i.i.i.i = icmp eq i64 %i.w, %i.j, !dbg !1104
  br i1 %exitcond.not.i.i.i.i.i, label %._crit_edge.i.i.i.i.i.a, label %_RNCINvMs0_NtNtCscgRAwXFJnXP_4core3ops9try_traitINtB8_17NeverShortCircuitTyyEE10wrap_mut_2B18_yNCINvNtNtNtBc_4iter8adapters3map8map_foldyB18_B18_NCINvNvNtNtNtB1D_6traits8iterator8Iterator10min_by_key3keyyyNCNvNtCs2mZqlW55729_12polars_utils17calc_morsel_split12calc_n_parts0E0NCINvNvB2p_6min_by4foldB18_INvB2n_7compareyyEE0E0E0B3m_.exit.i.i.i.i.i, !dbg !1105

._crit_edge.i.i.i.i.i:                            ; preds = %.preheader.i.i.i.i.i
  call void @llvm.experimental.noalias.scope.decl(metadata !1088), !dbg !1117
  call void @llvm.experimental.noalias.scope.decl(metadata !1089), !dbg !1118
  br label %_RNCINvMs0_NtNtCscgRAwXFJnXP_4core3ops9try_traitINtB8_17NeverShortCircuitTyyEE10wrap_mut_2B18_yNCINvNtNtNtBc_4iter8adapters3map8map_foldyB18_B18_NCINvNvNtNtNtB1D_6traits8iterator8Iterator10min_by_key3keyyyNCNvNtCs2mZqlW55729_12polars_utils17calc_morsel_split12calc_n_parts0E0NCINvNvB2p_6min_by4foldB18_INvB2n_7compareyyEE0E0E0B3m_.exit30.i.i.i.i.i, !dbg !1119

._crit_edge.i.i.i.i.i.a:                          ; preds = %_RNCINvMs0_NtNtCscgRAwXFJnXP_4core3ops9try_traitINtB8_17NeverShortCircuitTyyEE10wrap_mut_2B18_yNCINvNtNtNtBc_4iter8adapters3map8map_foldyB18_B18_NCINvNvNtNtNtB1D_6traits8iterator8Iterator10min_by_key3keyyyNCNvNtCs2mZqlW55729_12polars_utils17calc_morsel_split12calc_n_parts0E0NCINvNvB2p_6min_by4foldB18_INvB2n_7compareyyEE0E0E0B3m_.exit.i.i.i.i.i
  %.val5.i.i25.i.i.i.i.pre.i = load ptr, ptr %i.q, align 8, !dbg !1120, !alias.scope !1090, !noalias !1067
  %.val.i.i26.i.i.i.i.pre.i = load ptr, ptr %i.e, align 8, !dbg !1120, !alias.scope !1090, !noalias !1067
  %.pre.i = load i64, ptr %.val.i.i26.i.i.i.i.pre.i, align 8, !dbg !1121, !noalias !1091
  %.pre10.i = load i64, ptr %.val5.i.i25.i.i.i.i.pre.i, align 8, !dbg !1122, !range !1081, !noalias !1091
  br label %_RNCINvMs0_NtNtCscgRAwXFJnXP_4core3ops9try_traitINtB8_17NeverShortCircuitTyyEE10wrap_mut_2B18_yNCINvNtNtNtBc_4iter8adapters3map8map_foldyB18_B18_NCINvNvNtNtNtB1D_6traits8iterator8Iterator10min_by_key3keyyyNCNvNtCs2mZqlW55729_12polars_utils17calc_morsel_split12calc_n_parts0E0NCINvNvB2p_6min_by4foldB18_INvB2n_7compareyyEE0E0E0B3m_.exit30.i.i.i.i.i, !dbg !1120

_RNCINvMs0_NtNtCscgRAwXFJnXP_4core3ops9try_traitINtB8_17NeverShortCircuitTyyEE10wrap_mut_2B18_yNCINvNtNtNtBc_4iter8adapters3map8map_foldyB18_B18_NCINvNvNtNtNtB1D_6traits8iterator8Iterator10min_by_key3keyyyNCNvNtCs2mZqlW55729_12polars_utils17calc_morsel_split12calc_n_parts0E0NCINvNvB2p_6min_by4foldB18_INvB2n_7compareyyEE0E0E0B3m_.exit30.i.i.i.i.i: ; preds = %._crit_edge.i.i.i.i.i.a, %._crit_edge.i.i.i.i.i
  %i.af = phi i64 [ %1, %._crit_edge.i.i.i.i.i ], [ %.pre10.i, %._crit_edge.i.i.i.i.i.a ], !dbg !1122 ; 3 uses
  %i.ag = phi i64 [ %0, %._crit_edge.i.i.i.i.i ], [ %.pre.i, %._crit_edge.i.i.i.i.i.a ], !dbg !1121
  %.sroa.8.0.lcssa47.i.i.i21.i.i = phi i64 [ %i.i, %._crit_edge.i.i.i.i.i ], [ %.sroa.3.0.i.i.i.i.i.i.i.i.i, %._crit_edge.i.i.i.i.i.a ] ; 2 uses
  %.sroa.01.0.lcssa48.i.i.i20.i.i = phi i64 [ %.sroa.0.0.i.i3.i.i.i, %._crit_edge.i.i.i.i.i ], [ %.sroa.0.0.i.i6.i.i.i.i.i.i.i, %._crit_edge.i.i.i.i.i.a ]
  %i.ah = udiv i64 %i.ag, %i.j, !dbg !1119        ; 3 uses
  %i.ai = icmp ult i64 %i.ah, %i.af, !dbg !1123
  %i.aj = sub nuw i64 %i.af, %i.ah, !dbg !1123
  %i.ak = sub nuw i64 %i.ah, %i.af, !dbg !1123
  %.sroa.0.0.i.i.i.i27.i.i.i.i.i = select i1 %i.ai, i64 %i.aj, i64 %i.ak, !dbg !1123
  %i.al = getelementptr inbounds nuw i8, ptr %i.e, i64 16, !dbg !1124
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !1092
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !1092
  store i64 %.sroa.01.0.lcssa48.i.i.i20.i.i, ptr %i.b, align 8, !noalias !1093
  %i.am = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i64 %.sroa.8.0.lcssa47.i.i.i21.i.i, ptr %i.am, align 8, !noalias !1093
  store i64 %.sroa.0.0.i.i.i.i27.i.i.i.i.i, ptr %i.a, align 8, !noalias !1093
  %i.an = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 %i.j, ptr %i.an, align 8, !noalias !1093
  %i.ao = call noundef i8 @_RNvXs2_NtNtNtCscgRAwXFJnXP_4core3ops8function5implsQINvNvNtNtNtNtBb_4iter6traits8iterator8Iterator10min_by_key7compareyyEINtB7_6FnOnceTRTyyEB29_EE9call_onceCs2mZqlW55729_12polars_utils(ptr noalias noundef nonnull %i.al, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.b, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.a), !dbg !1125, !noalias !1084
  %i.ap = icmp slt i8 %i.ao, 1, !dbg !1126
  %.sroa.3.0.i.i.i.i28.i.i.i.i.i = select i1 %i.ap, i64 %.sroa.8.0.lcssa47.i.i.i21.i.i, i64 %i.j, !dbg !1125
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !1127, !noalias !1092
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !1127, !noalias !1092
  br label %bb.d, !dbg !1128

bb.d:                                             ; preds = %_RNCINvMs0_NtNtCscgRAwXFJnXP_4core3ops9try_traitINtB8_17NeverShortCircuitTyyEE10wrap_mut_2B18_yNCINvNtNtNtBc_4iter8adapters3map8map_foldyB18_B18_NCINvNvNtNtNtB1D_6traits8iterator8Iterator10min_by_key3keyyyNCNvNtCs2mZqlW55729_12polars_utils17calc_morsel_split12calc_n_parts0E0NCINvNvB2p_6min_by4foldB18_INvB2n_7compareyyEE0E0E0B3m_.exit30.i.i.i.i.i, %bb.c
  %.sroa.8.1.pn.i.i.i.i.i = phi i64 [ %.sroa.3.0.i.i.i.i28.i.i.i.i.i, %_RNCINvMs0_NtNtCscgRAwXFJnXP_4core3ops9try_traitINtB8_17NeverShortCircuitTyyEE10wrap_mut_2B18_yNCINvNtNtNtBc_4iter8adapters3map8map_foldyB18_B18_NCINvNvNtNtNtB1D_6traits8iterator8Iterator10min_by_key3keyyyNCNvNtCs2mZqlW55729_12polars_utils17calc_morsel_split12calc_n_parts0E0NCINvNvB2p_6min_by4foldB18_INvB2n_7compareyyEE0E0E0B3m_.exit30.i.i.i.i.i ], [ %i.i, %bb.c ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !dbg !1129, !noalias !1066
  br label %bb.e, !dbg !1130

bb.e:                                             ; preds = %bb.b, %bb.d
  %.sroa.0.0 = phi i64 [ %., %bb.b ], [ %.sroa.8.1.pn.i.i.i.i.i, %bb.d ], !dbg !1131
  ret i64 %.sroa.0.0, !dbg !1130
}

; Function Attrs: nonlazybind uwtable
define void @_RNvNtCs2mZqlW55729_12polars_utils6pl_str18unique_column_name(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !1132 {
bb.a:
  %i.a = alloca [0 x i8], align 1
  %i.b = alloca [16 x i8], align 8                ; 5 uses
  %i.c = alloca [24 x i8], align 8                ; 7 uses
  %i.d = alloca [8 x i8], align 8                 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !dbg !1174
  %i.e = atomicrmw add ptr @_RNvNvNtCs2mZqlW55729_12polars_utils6pl_str18unique_column_name7COUNTER, i64 1 monotonic, align 8, !dbg !1175
  store i64 %i.e, ptr %i.d, align 8, !dbg !1175
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !dbg !1176
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.c, ptr noundef nonnull align 8 dereferenceable(24) @13, i64 24, i1 false), !dbg !1177
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !dbg !1178
  store ptr %i.d, ptr %i.b, align 8, !dbg !1178
  %.sroa.42.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 8, !dbg !1178
  store ptr @_RNvXsd_NtNtNtCscgRAwXFJnXP_4core3fmt3num3impyNtB9_7Display3fmt, ptr %.sroa.42.0..sroa_idx, align 8, !dbg !1178
  %i.f = invoke noundef zeroext i1 @_RNvXs11_Cs7VARH73bmU_11compact_strNtB6_13CompactStringNtNtCscgRAwXFJnXP_4core3fmt5Write9write_fmt(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.c, ptr noundef nonnull @14, ptr noundef nonnull %i.b)
          to label %bb.d unwind label %bb.b, !dbg !1179

bb.b:                                             ; preds = %bb.e, %bb.a
  %i.g = landingpad { ptr, i32 }
          cleanup
  %i.h = getelementptr inbounds nuw i8, ptr %i.c, i64 23, !dbg !1180
  %i.i = load i8, ptr %i.h, align 1, !dbg !1180, !range !207, !alias.scope !1173, !noundef !77
  %i.j = icmp eq i8 %i.i, -40, !dbg !1181
  br i1 %i.j, label %bb.c, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrEBK_.exit, !dbg !1181, !prof !188

bb.c:                                             ; preds = %bb.b
  invoke void @_RNvNvXs2_NtCs7VARH73bmU_11compact_str4reprNtB7_4ReprNtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4drop13outlined_drop(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.c)
          to label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrEBK_.exit unwind label %bb.f, !dbg !1182

bb.d:                                             ; preds = %bb.a
  br i1 %i.f, label %bb.e, label %_RNvMNtCscgRAwXFJnXP_4core6resultINtB2_6ResultuNtNtB4_3fmt5ErrorE6unwrapCs2mZqlW55729_12polars_utils.exit, !dbg !1183, !prof !188

bb.e:                                             ; preds = %bb.d
  invoke void @_RNvNtCscgRAwXFJnXP_4core6result13unwrap_failed(ptr noalias noundef nonnull readonly captures(address, read_provenance) @11, i64 noundef 43, ptr noundef nonnull %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @12, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @16) #24
          to label %.noexc unwind label %bb.b, !dbg !1184

.noexc:                                           ; preds = %bb.e
  unreachable

_RNvMNtCscgRAwXFJnXP_4core6resultINtB2_6ResultuNtNtB4_3fmt5ErrorE6unwrapCs2mZqlW55729_12polars_utils.exit: ; preds = %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !1185
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.c, i64 24, i1 false), !dbg !1186
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !dbg !1187
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !dbg !1188
  ret void, !dbg !1189

bb.f:                                             ; preds = %bb.c
  %i.k = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #20, !dbg !1190
  unreachable, !dbg !1190

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrEBK_.exit: ; preds = %bb.b, %bb.c
  resume { ptr, i32 } %i.g, !dbg !1190
}

; Function Attrs: nonlazybind uwtable
define noundef nonnull ptr @_RNvXNtNtCs2mZqlW55729_12polars_utils6pl_str12__python_implNtB4_10PlSmallStrNtNtCsbm5zPlkZccl_4pyo310conversion12IntoPyObject13into_pyobject(ptr noalias noundef align 8 captures(address) dead_on_return dereferenceable(24) %0) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !1191 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 23, !dbg !1217
  %i.b = load i8, ptr %i.a, align 1, !dbg !1217, !range !207, !alias.scope !1215, !noundef !77 ; 4 uses
  %i.c = icmp ugt i8 %i.b, -41, !dbg !1218
  br i1 %i.c, label %bb.c, label %bb.b, !dbg !1218

bb.b:                                             ; preds = %bb.a
  %i.d = add i8 %i.b, 64, !dbg !1219
  %i.e = tail call i8 @llvm.umin.i8(i8 %i.d, i8 24), !dbg !1220
  %.sroa.0.0.i.i = zext nneg i8 %i.e to i64, !dbg !1220
  br label %bb.f, !dbg !1221

bb.c:                                             ; preds = %bb.a
  %i.f = load ptr, ptr %0, align 8, !dbg !1222, !alias.scope !1215, !noundef !77
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !1223
  %i.h = load i64, ptr %i.g, align 8, !dbg !1223, !alias.scope !1215, !noundef !77
  br label %bb.f, !dbg !1224

bb.d:                                             ; preds = %bb.f
  %i.i = landingpad { ptr, i32 }
          cleanup
  %i.j = icmp eq i8 %i.b, -40, !dbg !1225
  br i1 %i.j, label %bb.e, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrEBK_.exit, !dbg !1225, !prof !188

bb.e:                                             ; preds = %bb.d
  invoke void @_RNvNvXs2_NtCs7VARH73bmU_11compact_str4reprNtB7_4ReprNtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4drop13outlined_drop(ptr noalias noundef nonnull align 8 dereferenceable(24) %0)
          to label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrEBK_.exit unwind label %bb.i, !dbg !1226

bb.f:                                             ; preds = %bb.c, %bb.b
  %.sroa.01.0.i = phi i64 [ %i.h, %bb.c ], [ %.sroa.0.0.i.i, %bb.b ], !dbg !1227
  %.sroa.0.0.i = phi ptr [ %i.f, %bb.c ], [ %0, %bb.b ], !dbg !1228
  %i.k = invoke noundef nonnull ptr @_RNvMNtNtCsbm5zPlkZccl_4pyo35types6stringNtB2_8PyString3new(ptr noalias noundef nonnull readonly captures(address, read_provenance) %.sroa.0.0.i, i64 noundef %.sroa.01.0.i)
          to label %bb.g unwind label %bb.d, !dbg !1229

bb.g:                                             ; preds = %bb.f
  %i.l = icmp eq i8 %i.b, -40, !dbg !1230
  br i1 %i.l, label %bb.h, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrEBK_.exit1, !dbg !1230, !prof !188

bb.h:                                             ; preds = %bb.g
  tail call void @_RNvNvXs2_NtCs7VARH73bmU_11compact_str4reprNtB7_4ReprNtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4drop13outlined_drop(ptr noalias noundef nonnull align 8 dereferenceable(24) %0), !dbg !1231
  br label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrEBK_.exit1, !dbg !1231

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrEBK_.exit1: ; preds = %bb.g, %bb.h
  ret ptr %i.k, !dbg !1232

bb.i:                                             ; preds = %bb.e
  %i.m = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #20, !dbg !1233
  unreachable, !dbg !1233

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrEBK_.exit: ; preds = %bb.d, %bb.e
  resume { ptr, i32 } %i.i, !dbg !1233
}

; Function Attrs: nonlazybind uwtable
define noundef zeroext i1 @_RNvXNvXNvNtCs2mZqlW55729_12polars_utils10slice_enums_1__NtB7_5SliceNtNtCs40veMcpUDl8_10serde_core2de11Deserialize11deserializeNtB2_14___FieldVisitorNtB15_7Visitor9expecting(ptr noalias noundef nonnull readonly captures(none) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #0 !dbg !1234 {
bb.a:
  %i.a = tail call noundef zeroext i1 @_RNvMsa_NtCscgRAwXFJnXP_4core3fmtNtB5_9Formatter9write_str(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) @17, i64 noundef 18), !dbg !1236
  ret i1 %i.a, !dbg !1237
}

; Function Attrs: nonlazybind uwtable
define noundef zeroext i1 @_RNvXNvXs0_NvXNvNtCs2mZqlW55729_12polars_utils10slice_enums_1__NtBd_5SliceNtNtCs40veMcpUDl8_10serde_core2de11Deserialize11deserializeNtB8_9___VisitorNtB1b_7Visitor10visit_enumNtB2_14___FieldVisitorB2m_9expecting(ptr noalias noundef nonnull readonly captures(none) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #0 !dbg !1238 {
bb.a:
  %i.a = tail call noundef zeroext i1 @_RNvMsa_NtCscgRAwXFJnXP_4core3fmtNtB5_9Formatter9write_str(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) @18, i64 noundef 16), !dbg !1240
  ret i1 %i.a, !dbg !1241
}

; Function Attrs: nonlazybind uwtable
define void @_RNvXs0_NtCs2mZqlW55729_12polars_utils10slice_enumNtB5_5SliceINtNtCscgRAwXFJnXP_4core7convert4FromTxjEE4from(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, i64 noundef %1, i64 noundef %2) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !1242 {
bb.a:
  %i.a = alloca [0 x i8], align 1
  %i.b = icmp sgt i64 %1, -1, !dbg !1251
  br i1 %i.b, label %.split, label %bb.b, !dbg !1251

bb.b:                                             ; preds = %bb.a
  %i.c = sub i64 0, %1, !dbg !1252                ; 2 uses
  %i.d = icmp sgt i64 %i.c, -1, !dbg !1253
  br i1 %i.d, label %.split, label %.split2, !dbg !1253

.split2:                                          ; preds = %bb.b
  call void @_RNvNtCscgRAwXFJnXP_4core6result13unwrap_failed(ptr noalias noundef nonnull readonly captures(address, read_provenance) @11, i64 noundef 43, ptr noundef nonnull %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @10, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @19) #24, !dbg !1254
  unreachable

.split:                                           ; preds = %bb.b, %bb.a
  %.sink = phi i64 [ %1, %bb.a ], [ %i.c, %bb.b ]
  %storemerge = phi i64 [ 0, %bb.a ], [ 1, %bb.b ], !dbg !1255
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !1255
  store i64 %.sink, ptr %i.e, align 8, !dbg !1255
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !1255
  store i64 %2, ptr %i.f, align 8, !dbg !1255
  store i64 %storemerge, ptr %0, align 8, !dbg !1255
  ret void, !dbg !1256
}

; Function Attrs: nonlazybind uwtable
define void @_RNvXs0_NtNtCs2mZqlW55729_12polars_utils6pl_str12__python_implNtB7_10PlSmallStrNtNtCsbm5zPlkZccl_4pyo310conversion12FromPyObject7extract(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([72 x i8]) align 8 captures(none) dereferenceable(72) %0, ptr noundef nonnull %1) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !1257 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 10 uses
  %i.b = alloca [16 x i8], align 8                ; 5 uses
  %i.c = alloca [72 x i8], align 8                ; 12 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !dbg !1354
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !dbg !1384, !noalias !1346
  call void @_RINvNvMsb_NtCsbm5zPlkZccl_4pyo38instanceINtB8_8BorrowedpE4cast5innerNtNtNtBa_5types6string8PyStringECs2mZqlW55729_12polars_utils(ptr noalias noundef nonnull sret([16 x i8]) align 8 captures(none) dereferenceable(16) %i.b, ptr noundef nonnull %1), !dbg !1385, !noalias !1346
  %i.d = load ptr, ptr %i.b, align 8, !dbg !1386, !noalias !1346, !noundef !77 ; 2 uses
  %.not.i = icmp eq ptr %i.d, null, !dbg !1386
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 8, !dbg !1387
  %i.f = load ptr, ptr %i.e, align 8, !dbg !1387, !noalias !1346, !nonnull !77, !noundef !77 ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !1388, !noalias !1346
end_hunk_1
begin_hunk_2_@llvm.vector.reduce.add.v2i64
!919 = !DINamespace(name: "algebraic_ops", scope: !184)
!920 = !DILocation(line: 59, column: 19, scope: !899)
!921 = !{!"llvm.loop.isvectorized", i32 1}
!922 = !{!"llvm.loop.unroll.runtime.disable"}
!923 = !DIFile(filename: "library/std/src/num/f32.rs", directory: "/rustc/48cc71ee88cd0f11217eced958b9930970da998b", checksumkind: CSK_MD5, checksum: "f0b9edd9b4401d181abb858442759c14")
!924 = !DINamespace(name: "f32", scope: !103)
!925 = !DINamespace(name: "{impl#0}", scope: !924)
!926 = !DILocation(line: 66, column: 46, scope: !905)
!927 = !DILocation(line: 659, column: 28, scope: !897, inlinedAt: !911)
!928 = !DILocation(line: 1717, column: 9, scope: !898, inlinedAt: !912)
!929 = !DILocation(line: 59, column: 45, scope: !899)
!930 = !DILocation(line: 6, column: 28, scope: !901, inlinedAt: !913)
!931 = !DILocation(line: 6, column: 27, scope: !901, inlinedAt: !913)
!932 = !DILocation(line: 6, column: 20, scope: !901, inlinedAt: !913)
!933 = !DILocation(line: 1229, column: 18, scope: !902, inlinedAt: !917)
!934 = !DILocation(line: 5, column: 9, scope: !903, inlinedAt: !920)
!935 = !DILocation(line: 60, column: 25, scope: !899)
!936 = !DILocation(line: 60, column: 13, scope: !899)
!937 = !DILocation(line: 63, column: 19, scope: !895)
!938 = !DILocation(line: 64, column: 27, scope: !905)
!939 = !DILocation(line: 66, column: 29, scope: !905)
!940 = !DILocation(line: 66, column: 17, scope: !905)
!941 = !DILocation(line: 472, column: 9, scope: !906, inlinedAt: !926)
!942 = !DILocation(line: 66, column: 13, scope: !905)
!943 = !DILocation(line: 64, column: 24, scope: !905)
!944 = !DILocation(line: 0, scope: !895)
!945 = !DILocation(line: 71, column: 12, scope: !907)
!946 = !DILocation(line: 74, column: 14, scope: !907)
!947 = !DILocation(line: 74, column: 13, scope: !907)
!948 = !DILocation(line: 1038, column: 12, scope: !55, inlinedAt: !908)
!949 = !DILocation(line: 71, column: 9, scope: !907)
!950 = !DILocation(line: 0, scope: !907)
!951 = !DILocation(line: 76, column: 6, scope: !888)
!952 = distinct !DISubprogram(name: "calc_n_parts", linkageName: "_RNvNtCs2mZqlW55729_12polars_utils17calc_morsel_split12calc_n_parts", scope: !195, file: !194, line: 61, type: !78, scopeLine: 61, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !77)
!953 = distinct !DISubprogram(name: "saturating_add", linkageName: "_RNvMs7_NtCscgRAwXFJnXP_4core3numy14saturating_add", scope: !199, file: !156, line: 2354, type: !78, scopeLine: 2354, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !77)
!954 = distinct !DILexicalBlock(scope: !952, file: !194, line: 66, column: 5)
!955 = distinct !DISubprogram(name: "lt", linkageName: "_RNvXs12_NtNtCscgRAwXFJnXP_4core3cmp5implsyNtB8_10PartialOrd2lt", scope: !1055, file: !122, line: 1917, type: !78, scopeLine: 1917, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !77)
!956 = distinct !DISubprogram(name: "spec_next<u64>", linkageName: "_RNvXsc_NtNtCscgRAwXFJnXP_4core4iter5rangeINtNtNtB9_3ops5range14RangeInclusiveyENtB5_26RangeInclusiveIteratorImpl9spec_nextCs2mZqlW55729_12polars_utils", scope: !1056, file: !126, line: 1173, type: !78, scopeLine: 1173, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !77)
!957 = distinct !DISubprogram(name: "next<u64>", linkageName: "_RNvXsd_NtNtCscgRAwXFJnXP_4core4iter5rangeINtNtNtB9_3ops5range14RangeInclusiveyENtNtNtB7_6traits8iterator8Iterator4nextCs2mZqlW55729_12polars_utils", scope: !1057, file: !126, line: 1268, type: !78, scopeLine: 1268, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !77)
!958 = distinct !DISubprogram(name: "next<(u64, u64), core::ops::range::RangeInclusive<u64>, core::iter::traits::iterator::Iterator::min_by_key::key::{closure_env#0}<u64, u64, polars_utils::calc_morsel_split::calc_n_parts::{closure_env#0}>>", linkageName: "_RNvXs0_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3mapINtB5_3MapINtNtNtBb_3ops5range14RangeInclusiveyENCINvNvNtNtNtB9_6traits8iterator8Iterator10min_by_key3keyyyNCNvNtCs2mZqlW55729_12polars_utils17calc_morsel_split12calc_n_parts0E0EB1F_4nextB2B_", scope: !121, file: !117, line: 106, type: !78, scopeLine: 106, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !77)
!959 = distinct !DISubprogram(name: "reduce<core::iter::adapters::map::Map<core::ops::range::RangeInclusive<u64>, core::iter::traits::iterator::Iterator::min_by_key::key::{closure_env#0}<u64, u64, polars_utils::calc_morsel_split::calc_n_parts::{closure_env#0}>>, core::iter::traits::iterator::Iterator::min_by::fold::{closure_env#0}<(u64, u64), fn(&(u64, u64), &(u64, u64)) -> core::cmp::Ordering>>", linkageName: "_RINvYINtNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map3MapINtNtNtBc_3ops5range14RangeInclusiveyENCINvNvNtNtNtBa_6traits8iterator8Iterator10min_by_key3keyyyNCNvNtCs2mZqlW55729_12polars_utils17calc_morsel_split12calc_n_parts0E0EB1A_6reduceNCINvNvB1A_6min_by4foldTyyEINvB1y_7compareyyEE0EB2w_", scope: !133, file: !130, line: 2718, type: !78, scopeLine: 2718, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !77)
!960 = distinct !DISubprogram(name: "min_by<core::iter::adapters::map::Map<core::ops::range::RangeInclusive<u64>, core::iter::traits::iterator::Iterator::min_by_key::key::{closure_env#0}<u64, u64, polars_utils::calc_morsel_split::calc_n_parts::{closure_env#0}>>, fn(&(u64, u64), &(u64, u64)) -> core::cmp::Ordering>", linkageName: "_RINvYINtNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map3MapINtNtNtBc_3ops5range14RangeInclusiveyENCINvNvNtNtNtBa_6traits8iterator8Iterator10min_by_key3keyyyNCNvNtCs2mZqlW55729_12polars_utils17calc_morsel_split12calc_n_parts0E0EB1A_6min_byINvB1y_7compareyyEEB2w_", scope: !133, file: !130, line: 3424, type: !78, scopeLine: 3424, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !77)
!961 = distinct !DISubprogram(name: "min_by_key<core::ops::range::RangeInclusive<u64>, u64, polars_utils::calc_morsel_split::calc_n_parts::{closure_env#0}>", linkageName: "_RINvYINtNtNtCscgRAwXFJnXP_4core3ops5range14RangeInclusiveyENtNtNtNtBa_4iter6traits8iterator8Iterator10min_by_keyyNCNvNtCs2mZqlW55729_12polars_utils17calc_morsel_split12calc_n_parts0EB1T_", scope: !133, file: !130, line: 3390, type: !78, scopeLine: 3390, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !77)
!962 = distinct !DILocation(line: 69, column: 10, scope: !954)
!963 = distinct !DILocation(line: 3405, column: 39, scope: !961, inlinedAt: !962)
!964 = distinct !DILocation(line: 3434, column: 14, scope: !960, inlinedAt: !963)
!965 = distinct !DILocation(line: 2723, column: 26, scope: !959, inlinedAt: !964)
!966 = distinct !DILocation(line: 107, column: 19, scope: !958, inlinedAt: !965)
!967 = distinct !DILocation(line: 1269, column: 14, scope: !957, inlinedAt: !966)
!968 = distinct !DILocation(line: 1177, column: 28, scope: !956, inlinedAt: !967)
!969 = distinct !DILexicalBlock(scope: !956, file: !126, line: 1177, column: 9)
!970 = distinct !DISubprogram(name: "{closure#0}", linkageName: "_RNCNvNtCs2mZqlW55729_12polars_utils17calc_morsel_split12calc_n_parts0B5_", scope: !1058, file: !194, line: 69, type: !91, scopeLine: 69, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !77)
!971 = distinct !DISubprogram(name: "{closure#0}<u64, u64, polars_utils::calc_morsel_split::calc_n_parts::{closure_env#0}>", linkageName: "_RNCINvNvNtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator10min_by_key3keyyyNCNvNtCs2mZqlW55729_12polars_utils17calc_morsel_split12calc_n_parts0E0B1p_", scope: !1060, file: !130, line: 3397, type: !91, scopeLine: 3397, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !77)
!972 = distinct !DISubprogram(name: "call_once<(u64), core::iter::traits::iterator::Iterator::min_by_key::key::{closure_env#0}<u64, u64, polars_utils::calc_morsel_split::calc_n_parts::{closure_env#0}>>", linkageName: "_RNvXs2_NtNtNtCscgRAwXFJnXP_4core3ops8function5implsQNCINvNvNtNtNtNtBb_4iter6traits8iterator8Iterator10min_by_key3keyyyNCNvNtCs2mZqlW55729_12polars_utils17calc_morsel_split12calc_n_parts0E0INtB7_6FnOnceTyEE9call_onceB1Y_", scope: !1062, file: !98, line: 309, type: !78, scopeLine: 309, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !77)
!973 = distinct !DISubprogram(name: "map<u64, (u64, u64), &mut core::iter::traits::iterator::Iterator::min_by_key::key::{closure_env#0}<u64, u64, polars_utils::calc_morsel_split::calc_n_parts::{closure_env#0}>>", linkageName: "_RINvMNtCscgRAwXFJnXP_4core6optionINtB3_6OptionyE3mapTyyEQNCINvNvNtNtNtNtB5_4iter6traits8iterator8Iterator10min_by_key3keyyyNCNvNtCs2mZqlW55729_12polars_utils17calc_morsel_split12calc_n_parts0E0EB23_", scope: !1065, file: !1063, line: 1160, type: !78, scopeLine: 1160, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !77)
!974 = distinct !DILexicalBlock(scope: !973, file: !1063, line: 1165, column: 13)
!975 = distinct !DILocation(line: 107, column: 26, scope: !958, inlinedAt: !965)
!976 = distinct !DILocation(line: 1165, column: 29, scope: !974, inlinedAt: !975)
!977 = distinct !DILocation(line: 310, column: 21, scope: !972, inlinedAt: !976)
!978 = distinct !DILocation(line: 3397, column: 23, scope: !971, inlinedAt: !977)
!979 = distinct !DISubprogram(name: "abs_diff", linkageName: "_RNvMs7_NtCscgRAwXFJnXP_4core3numy8abs_diff", scope: !199, file: !156, line: 3068, type: !78, scopeLine: 3068, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !77)
!980 = distinct !DILocation(line: 69, column: 49, scope: !970, inlinedAt: !978)
!981 = distinct !{!981, i1 true, !"_RINvYINtNtNtCscgRAwXFJnXP_4core3ops5range14RangeInclusiveyENtNtNtNtBa_4iter6traits8iterator8Iterator10min_by_keyyNCNvNtCs2mZqlW55729_12polars_utils17calc_morsel_split12calc_n_parts0EB1T_"}
!982 = distinct !{!982, !981, !"_RINvYINtNtNtCscgRAwXFJnXP_4core3ops5range14RangeInclusiveyENtNtNtNtBa_4iter6traits8iterator8Iterator10min_by_keyyNCNvNtCs2mZqlW55729_12polars_utils17calc_morsel_split12calc_n_parts0EB1T_: argument 2"}
!983 = distinct !{!983, !981, !"_RINvYINtNtNtCscgRAwXFJnXP_4core3ops5range14RangeInclusiveyENtNtNtNtBa_4iter6traits8iterator8Iterator10min_by_keyyNCNvNtCs2mZqlW55729_12polars_utils17calc_morsel_split12calc_n_parts0EB1T_: argument 1"}
!984 = distinct !{!984, !981, !"_RINvYINtNtNtCscgRAwXFJnXP_4core3ops5range14RangeInclusiveyENtNtNtNtBa_4iter6traits8iterator8Iterator10min_by_keyyNCNvNtCs2mZqlW55729_12polars_utils17calc_morsel_split12calc_n_parts0EB1T_: argument 0"}
!985 = distinct !{!985, i1 true, !"_RINvYINtNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map3MapINtNtNtBc_3ops5range14RangeInclusiveyENCINvNvNtNtNtBa_6traits8iterator8Iterator10min_by_key3keyyyNCNvNtCs2mZqlW55729_12polars_utils17calc_morsel_split12calc_n_parts0E0EB1A_6reduceNCINvNvB1A_6min_by4foldTyyEINvB1y_7compareyyEE0EB2w_"}
!986 = distinct !{!986, !985, !"_RINvYINtNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map3MapINtNtNtBc_3ops5range14RangeInclusiveyENCINvNvNtNtNtBa_6traits8iterator8Iterator10min_by_key3keyyyNCNvNtCs2mZqlW55729_12polars_utils17calc_morsel_split12calc_n_parts0E0EB1A_6reduceNCINvNvB1A_6min_by4foldTyyEINvB1y_7compareyyEE0EB2w_: argument 1"}
!987 = distinct !{!987, !985, !"_RINvYINtNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map3MapINtNtNtBc_3ops5range14RangeInclusiveyENCINvNvNtNtNtBa_6traits8iterator8Iterator10min_by_key3keyyyNCNvNtCs2mZqlW55729_12polars_utils17calc_morsel_split12calc_n_parts0E0EB1A_6reduceNCINvNvB1A_6min_by4foldTyyEINvB1y_7compareyyEE0EB2w_: argument 0"}
!988 = distinct !{!988, i1 true, !"_RINvXs0_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3mapINtB6_3MapINtNtNtBc_3ops5range14RangeInclusiveyENCINvNvNtNtNtBa_6traits8iterator8Iterator10min_by_key3keyyyNCNvNtCs2mZqlW55729_12polars_utils17calc_morsel_split12calc_n_parts0E0EB1G_4foldTyyENCINvNvB1G_6min_by4foldB3O_INvB1E_7compareyyEE0EB2C_"}
!989 = distinct !{!989, !988, !"_RINvXs0_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3mapINtB6_3MapINtNtNtBc_3ops5range14RangeInclusiveyENCINvNvNtNtNtBa_6traits8iterator8Iterator10min_by_key3keyyyNCNvNtCs2mZqlW55729_12polars_utils17calc_morsel_split12calc_n_parts0E0EB1G_4foldTyyENCINvNvB1G_6min_by4foldB3O_INvB1E_7compareyyEE0EB2C_: argument 0"}
!990 = distinct !{!990, i1 true, !"_RINvXsd_NtNtCscgRAwXFJnXP_4core4iter5rangeINtNtNtBa_3ops5range14RangeInclusiveyENtNtNtB8_6traits8iterator8Iterator4foldTyyENCINvNtNtB8_8adapters3map8map_foldyB1T_B1T_NCINvNvB1g_10min_by_key3keyyyNCNvNtCs2mZqlW55729_12polars_utils17calc_morsel_split12calc_n_parts0E0NCINvNvB1g_6min_by4foldB1T_INvB2J_7compareyyEE0E0EB3d_"}
!991 = distinct !{!991, !990, !"_RINvXsd_NtNtCscgRAwXFJnXP_4core4iter5rangeINtNtNtBa_3ops5range14RangeInclusiveyENtNtNtB8_6traits8iterator8Iterator4foldTyyENCINvNtNtB8_8adapters3map8map_foldyB1T_B1T_NCINvNvB1g_10min_by_key3keyyyNCNvNtCs2mZqlW55729_12polars_utils17calc_morsel_split12calc_n_parts0E0NCINvNvB1g_6min_by4foldB1T_INvB2J_7compareyyEE0E0EB3d_: argument 2"}
!992 = distinct !{!992, !990, !"_RINvXsd_NtNtCscgRAwXFJnXP_4core4iter5rangeINtNtNtBa_3ops5range14RangeInclusiveyENtNtNtB8_6traits8iterator8Iterator4foldTyyENCINvNtNtB8_8adapters3map8map_foldyB1T_B1T_NCINvNvB1g_10min_by_key3keyyyNCNvNtCs2mZqlW55729_12polars_utils17calc_morsel_split12calc_n_parts0E0NCINvNvB1g_6min_by4foldB1T_INvB2J_7compareyyEE0E0EB3d_: argument 1"}
!993 = distinct !{!993, !990, !"_RINvXsd_NtNtCscgRAwXFJnXP_4core4iter5rangeINtNtNtBa_3ops5range14RangeInclusiveyENtNtNtB8_6traits8iterator8Iterator4foldTyyENCINvNtNtB8_8adapters3map8map_foldyB1T_B1T_NCINvNvB1g_10min_by_key3keyyyNCNvNtCs2mZqlW55729_12polars_utils17calc_morsel_split12calc_n_parts0E0NCINvNvB1g_6min_by4foldB1T_INvB2J_7compareyyEE0E0EB3d_: argument 0"}
!994 = distinct !{!994, i1 true, !"_RINvXsc_NtNtCscgRAwXFJnXP_4core4iter5rangeINtNtNtBa_3ops5range14RangeInclusiveyENtB6_26RangeInclusiveIteratorImpl13spec_try_foldTyyENCINvMs0_NtBJ_9try_traitINtB2f_17NeverShortCircuitB22_E10wrap_mut_2B22_yNCINvNtNtB8_8adapters3map8map_foldyB22_B22_NCINvNvNtNtNtB8_6traits8iterator8Iterator10min_by_key3keyyyNCNvNtCs2mZqlW55729_12polars_utils17calc_morsel_split12calc_n_parts0E0NCINvNvB44_6min_by4foldB22_INvB42_7compareyyEE0E0E0B2u_EB50_"}
!995 = distinct !{!995, !994, !"_RINvXsc_NtNtCscgRAwXFJnXP_4core4iter5rangeINtNtNtBa_3ops5range14RangeInclusiveyENtB6_26RangeInclusiveIteratorImpl13spec_try_foldTyyENCINvMs0_NtBJ_9try_traitINtB2f_17NeverShortCircuitB22_E10wrap_mut_2B22_yNCINvNtNtB8_8adapters3map8map_foldyB22_B22_NCINvNvNtNtNtB8_6traits8iterator8Iterator10min_by_key3keyyyNCNvNtCs2mZqlW55729_12polars_utils17calc_morsel_split12calc_n_parts0E0NCINvNvB44_6min_by4foldB22_INvB42_7compareyyEE0E0E0B2u_EB50_: argument 2"}
!996 = distinct !{!996, !994, !"_RINvXsc_NtNtCscgRAwXFJnXP_4core4iter5rangeINtNtNtBa_3ops5range14RangeInclusiveyENtB6_26RangeInclusiveIteratorImpl13spec_try_foldTyyENCINvMs0_NtBJ_9try_traitINtB2f_17NeverShortCircuitB22_E10wrap_mut_2B22_yNCINvNtNtB8_8adapters3map8map_foldyB22_B22_NCINvNvNtNtNtB8_6traits8iterator8Iterator10min_by_key3keyyyNCNvNtCs2mZqlW55729_12polars_utils17calc_morsel_split12calc_n_parts0E0NCINvNvB44_6min_by4foldB22_INvB42_7compareyyEE0E0E0B2u_EB50_: argument 1"}
!997 = distinct !{!997, !994, !"_RINvXsc_NtNtCscgRAwXFJnXP_4core4iter5rangeINtNtNtBa_3ops5range14RangeInclusiveyENtB6_26RangeInclusiveIteratorImpl13spec_try_foldTyyENCINvMs0_NtBJ_9try_traitINtB2f_17NeverShortCircuitB22_E10wrap_mut_2B22_yNCINvNtNtB8_8adapters3map8map_foldyB22_B22_NCINvNvNtNtNtB8_6traits8iterator8Iterator10min_by_key3keyyyNCNvNtCs2mZqlW55729_12polars_utils17calc_morsel_split12calc_n_parts0E0NCINvNvB44_6min_by4foldB22_INvB42_7compareyyEE0E0E0B2u_EB50_: argument 0"}
!998 = distinct !DISubprogram(name: "is_empty<u64>", linkageName: "_RNvMs8_NtNtCscgRAwXFJnXP_4core3ops5rangeINtB5_14RangeInclusiveyE8is_emptyCs2mZqlW55729_12polars_utils", scope: !1070, file: !1068, line: 559, type: !78, scopeLine: 559, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !77)
!999 = distinct !DISubprogram(name: "spec_try_fold<u64, (u64, u64), core::ops::try_trait::{impl#2}::wrap_mut_2::{closure_env#0}<(u64, u64), (u64, u64), u64, core::iter::adapters::map::map_fold::{closure_env#0}<u64, (u64, u64), (u64, u64), core::iter::traits::iterator::Iterator::min_by_key::key::{closure_env#0}<u64, u64, polars_utils::calc_morsel_split::calc_n_parts::{closure_env#0}>, core::iter::traits::iterator::Iterator::min_by::fold::{closure_env#0}<(u64, u64), fn(&(u64, u64), &(u64, u64)) -> core::cmp::Ordering>>>, core::ops::try_trait::NeverShortCircuit<(u64, u64)>>", linkageName: "_RINvXsc_NtNtCscgRAwXFJnXP_4core4iter5rangeINtNtNtBa_3ops5range14RangeInclusiveyENtB6_26RangeInclusiveIteratorImpl13spec_try_foldTyyENCINvMs0_NtBJ_9try_traitINtB2f_17NeverShortCircuitB22_E10wrap_mut_2B22_yNCINvNtNtB8_8adapters3map8map_foldyB22_B22_NCINvNvNtNtNtB8_6traits8iterator8Iterator10min_by_key3keyyyNCNvNtCs2mZqlW55729_12polars_utils17calc_morsel_split12calc_n_parts0E0NCINvNvB44_6min_by4foldB22_INvB42_7compareyyEE0E0E0B2u_EB50_", scope: !1056, file: !126, line: 1189, type: !78, scopeLine: 1189, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !77)
!1000 = distinct !DISubprogram(name: "try_fold<u64, (u64, u64), core::ops::try_trait::{impl#2}::wrap_mut_2::{closure_env#0}<(u64, u64), (u64, u64), u64, core::iter::adapters::map::map_fold::{closure_env#0}<u64, (u64, u64), (u64, u64), core::iter::traits::iterator::Iterator::min_by_key::key::{closure_env#0}<u64, u64, polars_utils::calc_morsel_split::calc_n_parts::{closure_env#0}>, core::iter::traits::iterator::Iterator::min_by::fold::{closure_env#0}<(u64, u64), fn(&(u64, u64), &(u64, u64)) -> core::cmp::Ordering>>>, core::ops::try_trait::NeverShortCircuit<(u64, u64)>>", linkageName: "_RINvXsd_NtNtCscgRAwXFJnXP_4core4iter5rangeINtNtNtBa_3ops5range14RangeInclusiveyENtNtNtB8_6traits8iterator8Iterator8try_foldTyyENCINvMs0_NtBJ_9try_traitINtB2a_17NeverShortCircuitB1X_E10wrap_mut_2B1X_yNCINvNtNtB8_8adapters3map8map_foldyB1X_B1X_NCINvNvB1g_10min_by_key3keyyyNCNvNtCs2mZqlW55729_12polars_utils17calc_morsel_split12calc_n_parts0E0NCINvNvB1g_6min_by4foldB1X_INvB3X_7compareyyEE0E0E0B2p_EB4r_", scope: !1057, file: !126, line: 1323, type: !78, scopeLine: 1323, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !77)
!1001 = distinct !DISubprogram(name: "fold<u64, (u64, u64), core::iter::adapters::map::map_fold::{closure_env#0}<u64, (u64, u64), (u64, u64), core::iter::traits::iterator::Iterator::min_by_key::key::{closure_env#0}<u64, u64, polars_utils::calc_morsel_split::calc_n_parts::{closure_env#0}>, core::iter::traits::iterator::Iterator::min_by::fold::{closure_env#0}<(u64, u64), fn(&(u64, u64), &(u64, u64)) -> core::cmp::Ordering>>>", linkageName: "_RINvXsd_NtNtCscgRAwXFJnXP_4core4iter5rangeINtNtNtBa_3ops5range14RangeInclusiveyENtNtNtB8_6traits8iterator8Iterator4foldTyyENCINvNtNtB8_8adapters3map8map_foldyB1T_B1T_NCINvNvB1g_10min_by_key3keyyyNCNvNtCs2mZqlW55729_12polars_utils17calc_morsel_split12calc_n_parts0E0NCINvNvB1g_6min_by4foldB1T_INvB2J_7compareyyEE0E0EB3d_", scope: !1057, file: !1071, line: 374, type: !78, scopeLine: 374, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !77)
!1002 = distinct !DISubprogram(name: "fold<(u64, u64), core::ops::range::RangeInclusive<u64>, core::iter::traits::iterator::Iterator::min_by_key::key::{closure_env#0}<u64, u64, polars_utils::calc_morsel_split::calc_n_parts::{closure_env#0}>, (u64, u64), core::iter::traits::iterator::Iterator::min_by::fold::{closure_env#0}<(u64, u64), fn(&(u64, u64), &(u64, u64)) -> core::cmp::Ordering>>", linkageName: "_RINvXs0_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3mapINtB6_3MapINtNtNtBc_3ops5range14RangeInclusiveyENCINvNvNtNtNtBa_6traits8iterator8Iterator10min_by_key3keyyyNCNvNtCs2mZqlW55729_12polars_utils17calc_morsel_split12calc_n_parts0E0EB1G_4foldTyyENCINvNvB1G_6min_by4foldB3O_INvB1E_7compareyyEE0EB2C_", scope: !121, file: !117, line: 124, type: !78, scopeLine: 124, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !77)
!1003 = distinct !DILexicalBlock(scope: !959, file: !130, line: 2723, column: 9)
!1004 = distinct !DILocation(line: 2724, column: 19, scope: !1003, inlinedAt: !964)
!1005 = distinct !DILocation(line: 128, column: 19, scope: !1002, inlinedAt: !1004)
!1006 = distinct !DILocation(line: 380, column: 18, scope: !1001, inlinedAt: !1005)
!1007 = distinct !DILocation(line: 1329, column: 14, scope: !1000, inlinedAt: !1006)
!1008 = distinct !DILocation(line: 1195, column: 17, scope: !999, inlinedAt: !1007)
!1009 = distinct !DILexicalBlock(scope: !999, file: !126, line: 1199, column: 9)
!1010 = distinct !DILocation(line: 1201, column: 15, scope: !1009, inlinedAt: !1007)
!1011 = distinct !{!1011, i1 true, !"_RNCINvMs0_NtNtCscgRAwXFJnXP_4core3ops9try_traitINtB8_17NeverShortCircuitTyyEE10wrap_mut_2B18_yNCINvNtNtNtBc_4iter8adapters3map8map_foldyB18_B18_NCINvNvNtNtNtB1D_6traits8iterator8Iterator10min_by_key3keyyyNCNvNtCs2mZqlW55729_12polars_utils17calc_morsel_split12calc_n_parts0E0NCINvNvB2p_6min_by4foldB18_INvB2n_7compareyyEE0E0E0B3m_"}
!1012 = distinct !{!1012, !1011, !"_RNCINvMs0_NtNtCscgRAwXFJnXP_4core3ops9try_traitINtB8_17NeverShortCircuitTyyEE10wrap_mut_2B18_yNCINvNtNtNtBc_4iter8adapters3map8map_foldyB18_B18_NCINvNvNtNtNtB1D_6traits8iterator8Iterator10min_by_key3keyyyNCNvNtCs2mZqlW55729_12polars_utils17calc_morsel_split12calc_n_parts0E0NCINvNvB2p_6min_by4foldB18_INvB2n_7compareyyEE0E0E0B3m_: argument 0"}
!1013 = distinct !DILexicalBlock(scope: !1009, file: !126, line: 1203, column: 13)
!1014 = distinct !DILexicalBlock(scope: !1013, file: !126, line: 1204, column: 13)
!1015 = distinct !{!1015, i1 true, !"_RNCINvNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map8map_foldyTyyEBV_NCINvNvNtNtNtB8_6traits8iterator8Iterator10min_by_key3keyyyNCNvNtCs2mZqlW55729_12polars_utils17calc_morsel_split12calc_n_parts0E0NCINvNvB19_6min_by4foldBV_INvB17_7compareyyEE0E0B25_"}
!1016 = distinct !{!1016, !1015, !"_RNCINvNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map8map_foldyTyyEBV_NCINvNvNtNtNtB8_6traits8iterator8Iterator10min_by_key3keyyyNCNvNtCs2mZqlW55729_12polars_utils17calc_morsel_split12calc_n_parts0E0NCINvNvB19_6min_by4foldBV_INvB17_7compareyyEE0E0B25_: argument 0"}
!1017 = distinct !DISubprogram(name: "{closure#0}<(u64, u64), (u64, u64), u64, core::iter::adapters::map::map_fold::{closure_env#0}<u64, (u64, u64), (u64, u64), core::iter::traits::iterator::Iterator::min_by_key::key::{closure_env#0}<u64, u64, polars_utils::calc_morsel_split::calc_n_parts::{closure_env#0}>, core::iter::traits::iterator::Iterator::min_by::fold::{closure_env#0}<(u64, u64), fn(&(u64, u64), &(u64, u64)) -> core::cmp::Ordering>>>", linkageName: "_RNCINvMs0_NtNtCscgRAwXFJnXP_4core3ops9try_traitINtB8_17NeverShortCircuitTyyEE10wrap_mut_2B18_yNCINvNtNtNtBc_4iter8adapters3map8map_foldyB18_B18_NCINvNvNtNtNtB1D_6traits8iterator8Iterator10min_by_key3keyyyNCNvNtCs2mZqlW55729_12polars_utils17calc_morsel_split12calc_n_parts0E0NCINvNvB2p_6min_by4foldB18_INvB2n_7compareyyEE0E0E0B3m_", scope: !1077, file: !1074, line: 436, type: !78, scopeLine: 436, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !77)
!1018 = distinct !DILocation(line: 1205, column: 21, scope: !1014, inlinedAt: !1007)
!1019 = distinct !DISubprogram(name: "unchecked_add", linkageName: "_RNvMs7_NtCscgRAwXFJnXP_4core3numy13unchecked_add", scope: !199, file: !156, line: 886, type: !78, scopeLine: 886, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !77)
!1020 = distinct !DISubprogram(name: "forward_unchecked", linkageName: "_RNvXsD_NtNtCscgRAwXFJnXP_4core4iter5rangeyNtB5_4Step17forward_unchecked", scope: !1078, file: !126, line: 212, type: !78, scopeLine: 212, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !77)
!1021 = distinct !DILocation(line: 1203, column: 30, scope: !1009, inlinedAt: !1007)
!1022 = distinct !DILocation(line: 214, column: 28, scope: !1020, inlinedAt: !1021)
!1023 = distinct !DISubprogram(name: "{closure#0}<u64, (u64, u64), (u64, u64), core::iter::traits::iterator::Iterator::min_by_key::key::{closure_env#0}<u64, u64, polars_utils::calc_morsel_split::calc_n_parts::{closure_env#0}>, core::iter::traits::iterator::Iterator::min_by::fold::{closure_env#0}<(u64, u64), fn(&(u64, u64), &(u64, u64)) -> core::cmp::Ordering>>", linkageName: "_RNCINvNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map8map_foldyTyyEBV_NCINvNvNtNtNtB8_6traits8iterator8Iterator10min_by_key3keyyyNCNvNtCs2mZqlW55729_12polars_utils17calc_morsel_split12calc_n_parts0E0NCINvNvB19_6min_by4foldBV_INvB17_7compareyyEE0E0B25_", scope: !139, file: !117, line: 88, type: !78, scopeLine: 88, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !77)
!1024 = distinct !DILocation(line: 436, column: 39, scope: !1017, inlinedAt: !1018)
!1025 = distinct !DILocation(line: 88, column: 28, scope: !1023, inlinedAt: !1024)
!1026 = distinct !DILocation(line: 3397, column: 23, scope: !971, inlinedAt: !1025)
!1027 = distinct !DILocation(line: 69, column: 49, scope: !970, inlinedAt: !1026)
!1028 = distinct !{!1028, i1 true, !"_RNCINvNvNtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator6min_by4foldTyyEINvNvB6_10min_by_key7compareyyEE0Cs2mZqlW55729_12polars_utils"}
!1029 = distinct !{!1029, !1028, !"_RNCINvNvNtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator6min_by4foldTyyEINvNvB6_10min_by_key7compareyyEE0Cs2mZqlW55729_12polars_utils: argument 0"}
!1030 = distinct !{!1030, i1 true, !"_RINvNtCscgRAwXFJnXP_4core3cmp6min_byTyyEQINvNvNtNtNtNtB4_4iter6traits8iterator8Iterator10min_by_key7compareyyEECs2mZqlW55729_12polars_utils"}
!1031 = distinct !{!1031, !1030, !"_RINvNtCscgRAwXFJnXP_4core3cmp6min_byTyyEQINvNvNtNtNtNtB4_4iter6traits8iterator8Iterator10min_by_key7compareyyEECs2mZqlW55729_12polars_utils: argument 0"}
!1032 = distinct !DISubprogram(name: "min_by<(u64, u64), &mut fn(&(u64, u64), &(u64, u64)) -> core::cmp::Ordering>", linkageName: "_RINvNtCscgRAwXFJnXP_4core3cmp6min_byTyyEQINvNvNtNtNtNtB4_4iter6traits8iterator8Iterator10min_by_key7compareyyEECs2mZqlW55729_12polars_utils", scope: !123, file: !122, line: 1606, type: !78, scopeLine: 1606, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !77)
!1033 = distinct !DISubprogram(name: "{closure#0}<(u64, u64), fn(&(u64, u64), &(u64, u64)) -> core::cmp::Ordering>", linkageName: "_RNCINvNvNtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator6min_by4foldTyyEINvNvB6_10min_by_key7compareyyEE0Cs2mZqlW55729_12polars_utils", scope: !1086, file: !130, line: 3431, type: !78, scopeLine: 3431, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !77)
!1034 = distinct !DILocation(line: 88, column: 21, scope: !1023, inlinedAt: !1024)
!1035 = distinct !DILocation(line: 3431, column: 25, scope: !1033, inlinedAt: !1034)
!1036 = distinct !DISubprogram(name: "is_le", linkageName: "_RNvMNtCscgRAwXFJnXP_4core3cmpNtB2_8Ordering5is_le", scope: !1087, file: !122, line: 519, type: !78, scopeLine: 519, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !77)
!1037 = distinct !DILocation(line: 1611, column: 26, scope: !1032, inlinedAt: !1035)
!1038 = distinct !{!1038, i1 true, !"_RNCINvMs0_NtNtCscgRAwXFJnXP_4core3ops9try_traitINtB8_17NeverShortCircuitTyyEE10wrap_mut_2B18_yNCINvNtNtNtBc_4iter8adapters3map8map_foldyB18_B18_NCINvNvNtNtNtB1D_6traits8iterator8Iterator10min_by_key3keyyyNCNvNtCs2mZqlW55729_12polars_utils17calc_morsel_split12calc_n_parts0E0NCINvNvB2p_6min_by4foldB18_INvB2n_7compareyyEE0E0E0B3m_"}
!1039 = distinct !{!1039, !1038, !"_RNCINvMs0_NtNtCscgRAwXFJnXP_4core3ops9try_traitINtB8_17NeverShortCircuitTyyEE10wrap_mut_2B18_yNCINvNtNtNtBc_4iter8adapters3map8map_foldyB18_B18_NCINvNvNtNtNtB1D_6traits8iterator8Iterator10min_by_key3keyyyNCNvNtCs2mZqlW55729_12polars_utils17calc_morsel_split12calc_n_parts0E0NCINvNvB2p_6min_by4foldB18_INvB2n_7compareyyEE0E0E0B3m_: argument 0"}
!1040 = distinct !{!1040, i1 true, !"_RNCINvNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map8map_foldyTyyEBV_NCINvNvNtNtNtB8_6traits8iterator8Iterator10min_by_key3keyyyNCNvNtCs2mZqlW55729_12polars_utils17calc_morsel_split12calc_n_parts0E0NCINvNvB19_6min_by4foldBV_INvB17_7compareyyEE0E0B25_"}
!1041 = distinct !{!1041, !1040, !"_RNCINvNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map8map_foldyTyyEBV_NCINvNvNtNtNtB8_6traits8iterator8Iterator10min_by_key3keyyyNCNvNtCs2mZqlW55729_12polars_utils17calc_morsel_split12calc_n_parts0E0NCINvNvB19_6min_by4foldBV_INvB17_7compareyyEE0E0B25_: argument 0"}
!1042 = distinct !DILocation(line: 1211, column: 21, scope: !1009, inlinedAt: !1007)
!1043 = distinct !DILocation(line: 436, column: 39, scope: !1017, inlinedAt: !1042)
!1044 = distinct !DILocation(line: 88, column: 28, scope: !1023, inlinedAt: !1043)
!1045 = distinct !DILocation(line: 3397, column: 23, scope: !971, inlinedAt: !1044)
!1046 = distinct !DILocation(line: 69, column: 49, scope: !970, inlinedAt: !1045)
!1047 = distinct !{!1047, i1 true, !"_RNCINvNvNtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator6min_by4foldTyyEINvNvB6_10min_by_key7compareyyEE0Cs2mZqlW55729_12polars_utils"}
!1048 = distinct !{!1048, !1047, !"_RNCINvNvNtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator6min_by4foldTyyEINvNvB6_10min_by_key7compareyyEE0Cs2mZqlW55729_12polars_utils: argument 0"}
!1049 = distinct !{!1049, i1 true, !"_RINvNtCscgRAwXFJnXP_4core3cmp6min_byTyyEQINvNvNtNtNtNtB4_4iter6traits8iterator8Iterator10min_by_key7compareyyEECs2mZqlW55729_12polars_utils"}
!1050 = distinct !{!1050, !1049, !"_RINvNtCscgRAwXFJnXP_4core3cmp6min_byTyyEQINvNvNtNtNtNtB4_4iter6traits8iterator8Iterator10min_by_key7compareyyEECs2mZqlW55729_12polars_utils: argument 0"}
!1051 = distinct !DILocation(line: 88, column: 21, scope: !1023, inlinedAt: !1043)
!1052 = distinct !DILocation(line: 3431, column: 25, scope: !1033, inlinedAt: !1051)
!1053 = distinct !DILocation(line: 1611, column: 26, scope: !1032, inlinedAt: !1052)
!1054 = !DILocation(line: 68, column: 24, scope: !954)
!1055 = !DINamespace(name: "{impl#66}", scope: !124)
!1056 = !DINamespace(name: "{impl#14}", scope: !127)
!1057 = !DINamespace(name: "{impl#15}", scope: !127)
!1058 = !DINamespace(name: "calc_n_parts", scope: !195)
!1059 = !DINamespace(name: "min_by_key", scope: !133)
!1060 = !DINamespace(name: "key", scope: !1059)
!1061 = !DINamespace(name: "impls", scope: !100)
!1062 = !DINamespace(name: "{impl#4}", scope: !1061)
!1063 = !DIFile(filename: "library/core/src/option.rs", directory: "/rustc/48cc71ee88cd0f11217eced958b9930970da998b", checksumkind: CSK_MD5, checksum: "fddbcef1524c4b01c55888c6c3823b51")
!1064 = !DINamespace(name: "option", scope: !81)
!1065 = !DINamespace(name: "Option", scope: !1064)
!1066 = !{!993, !992, !991, !989, !987, !986, !984, !983, !982}
!1067 = !{!997, !996, !995, !993, !992, !991, !989, !987, !986, !984, !983, !982}
!1068 = !DIFile(filename: "library/core/src/ops/range.rs", directory: "/rustc/48cc71ee88cd0f11217eced958b9930970da998b", checksumkind: CSK_MD5, checksum: "aa9e58e587ecf6fc84aabc8815f8ac79")
!1069 = !DINamespace(name: "range", scope: !99)
!1070 = !DINamespace(name: "RangeInclusive", scope: !1069)
!1071 = !DIFile(filename: "library/core/src/iter/mod.rs", directory: "/rustc/48cc71ee88cd0f11217eced958b9930970da998b", checksumkind: CSK_MD5, checksum: "20d83cc3e02b8a8debc301b85898f940")
!1072 = !{!1012}
!1073 = !{!1016}
!1074 = !DIFile(filename: "library/core/src/ops/try_trait.rs", directory: "/rustc/48cc71ee88cd0f11217eced958b9930970da998b", checksumkind: CSK_MD5, checksum: "335edf7dc4f730de066f28da87d0a7cf")
!1075 = !DINamespace(name: "try_trait", scope: !99)
!1076 = !DINamespace(name: "{impl#2}", scope: !1075)
!1077 = !DINamespace(name: "wrap_mut_2", scope: !1076)
!1078 = !DINamespace(name: "{impl#41}", scope: !127)
!1079 = !{!1016, !1012}
!1080 = !{!1016, !1012, !997, !993, !989, !987, !986, !984}
!1081 = !{i64 1, i64 0}
!1082 = !{!1029, !1016, !1012, !997, !996, !995, !993, !992, !991, !989, !987, !986, !984, !983, !982}
!1083 = !{!1031, !1029, !1016, !1012, !997, !996, !995, !993, !992, !991, !989, !987, !986, !984, !983, !982}
!1084 = !{!997, !993, !989, !987, !986, !984}
!1085 = !DINamespace(name: "min_by", scope: !133)
!1086 = !DINamespace(name: "fold", scope: !1085)
!1087 = !DINamespace(name: "Ordering", scope: !123)
!1088 = !{!1039}
!1089 = !{!1041}
!1090 = !{!1041, !1039}
!1091 = !{!1041, !1039, !997, !993, !989, !987, !986, !984}
!1092 = !{!1048, !1041, !1039, !997, !996, !995, !993, !992, !991, !989, !987, !986, !984, !983, !982}
!1093 = !{!1050, !1048, !1041, !1039, !997, !996, !995, !993, !992, !991, !989, !987, !986, !984, !983, !982}
!1094 = !DILocation(line: 62, column: 8, scope: !952)
!1095 = !DILocation(line: 63, column: 19, scope: !952)
!1096 = !DILocation(line: 63, column: 16, scope: !952)
!1097 = !DILocation(line: 66, column: 19, scope: !952)
!1098 = !DILocation(line: 2355, column: 13, scope: !953, inlinedAt: !1054)
!1099 = !DILocation(line: 1917, column: 50, scope: !955, inlinedAt: !968)
!1100 = !DILocation(line: 1178, column: 17, scope: !969, inlinedAt: !967)
!1101 = !DILocation(line: 69, column: 31, scope: !970, inlinedAt: !978)
!1102 = !DILocation(line: 3074, column: 20, scope: !979, inlinedAt: !980)
!1103 = !DILocation(line: 563, column: 9, scope: !998, inlinedAt: !1008)
!1104 = !DILocation(line: 1917, column: 50, scope: !955, inlinedAt: !1010)
!1105 = !DILocation(line: 1201, column: 15, scope: !1009, inlinedAt: !1007)
!1106 = !DILocation(line: 1205, column: 21, scope: !1014, inlinedAt: !1007)
!1107 = !DILocation(line: 436, column: 39, scope: !1017, inlinedAt: !1018)
!1108 = !DILocation(line: 898, column: 17, scope: !1019, inlinedAt: !1022)
!1109 = !DILocation(line: 88, column: 28, scope: !1023, inlinedAt: !1024)
!1110 = !DILocation(line: 69, column: 32, scope: !970, inlinedAt: !1026)
!1111 = !DILocation(line: 69, column: 31, scope: !970, inlinedAt: !1026)
!1112 = !DILocation(line: 69, column: 58, scope: !970, inlinedAt: !1026)
!1113 = !DILocation(line: 3074, column: 20, scope: !979, inlinedAt: !1027)
!1114 = !DILocation(line: 1611, column: 8, scope: !1032, inlinedAt: !1035)
!1115 = !DILocation(line: 520, column: 9, scope: !1036, inlinedAt: !1037)
!1116 = !DILocation(line: 1612, column: 2, scope: !1032, inlinedAt: !1035)
!1117 = !DILocation(line: 1211, column: 21, scope: !1009, inlinedAt: !1007)
!1118 = !DILocation(line: 436, column: 39, scope: !1017, inlinedAt: !1042)
!1119 = !DILocation(line: 69, column: 31, scope: !970, inlinedAt: !1045)
!1120 = !DILocation(line: 88, column: 28, scope: !1023, inlinedAt: !1043)
!1121 = !DILocation(line: 69, column: 32, scope: !970, inlinedAt: !1045)
!1122 = !DILocation(line: 69, column: 58, scope: !970, inlinedAt: !1045)
!1123 = !DILocation(line: 3074, column: 20, scope: !979, inlinedAt: !1046)
!1124 = !DILocation(line: 88, column: 21, scope: !1023, inlinedAt: !1043)
!1125 = !DILocation(line: 1611, column: 8, scope: !1032, inlinedAt: !1052)
!1126 = !DILocation(line: 520, column: 9, scope: !1036, inlinedAt: !1053)
!1127 = !DILocation(line: 1612, column: 2, scope: !1032, inlinedAt: !1052)
!1128 = !DILocation(line: 1210, column: 9, scope: !1009, inlinedAt: !1007)
!1129 = !DILocation(line: 1215, column: 6, scope: !999, inlinedAt: !1007)
!1130 = !DILocation(line: 71, column: 2, scope: !952)
!1131 = !DILocation(line: 0, scope: !952)
!1132 = distinct !DISubprogram(name: "unique_column_name", linkageName: "_RNvNtCs2mZqlW55729_12polars_utils6pl_str18unique_column_name", scope: !201, file: !200, line: 312, type: !78, scopeLine: 312, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !77)
!1133 = distinct !DISubprogram(name: "atomic_add<u64, u64>", linkageName: "_RINvNtNtCscgRAwXFJnXP_4core4sync6atomic10atomic_addyyECs2mZqlW55729_12polars_utils", scope: !154, file: !152, line: 3933, type: !78, scopeLine: 3933, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !77)
!1134 = distinct !DISubprogram(name: "fetch_add<u64>", linkageName: "_RNvMNtCs2mZqlW55729_12polars_utils12relaxed_cellINtB2_11RelaxedCellyE9fetch_addB4_", scope: !1166, file: !1164, line: 20, type: !78, scopeLine: 20, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !77)
!1135 = distinct !DISubprogram(name: "fetch_add", linkageName: "_RNvXsa_NtCs2mZqlW55729_12polars_utils12relaxed_cellyNtB5_12AtomicNative9fetch_add", scope: !1167, file: !1164, line: 99, type: !78, scopeLine: 99, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !77)
!1136 = distinct !DISubprogram(name: "fetch_add", linkageName: "_RNvMs1c_NtNtCscgRAwXFJnXP_4core4sync6atomicINtB6_6AtomicyE9fetch_add", scope: !155, file: !152, line: 3160, type: !78, scopeLine: 3160, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !77)
!1137 = distinct !DILexicalBlock(scope: !1132, file: !200, line: 314, column: 5)
!1138 = distinct !DILexicalBlock(scope: !1137, file: !200, line: 11, column: 9)
!1139 = distinct !DILexicalBlock(scope: !1138, file: !1169, line: 604, column: 24)
!1140 = distinct !DISubprogram(name: "write_fmt", linkageName: "_RNvXso_NtCs2mZqlW55729_12polars_utils6pl_strNtB5_10PlSmallStrNtNtCscgRAwXFJnXP_4core3fmt5Write9write_fmt", scope: !1170, file: !200, line: 286, type: !78, scopeLine: 286, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !77)
!1141 = distinct !DISubprogram(name: "last_byte", linkageName: "_RNvMs0_NtCs7VARH73bmU_11compact_str4reprNtB5_4Repr9last_byte", scope: !205, file: !202, line: 609, type: !78, scopeLine: 609, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !77)
!1142 = distinct !DISubprogram(name: "is_heap_allocated", linkageName: "_RNvMs0_NtCs7VARH73bmU_11compact_str4reprNtB5_4Repr17is_heap_allocated", scope: !205, file: !202, line: 446, type: !78, scopeLine: 446, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !77)
!1143 = distinct !DILocation(line: 14, column: 5, scope: !1137)
!1144 = distinct !DILocation(line: 810, column: 1, scope: !59, inlinedAt: !1143)
!1145 = distinct !DILocation(line: 810, column: 1, scope: !58, inlinedAt: !1144)
!1146 = distinct !DILocation(line: 810, column: 1, scope: !57, inlinedAt: !1145)
!1147 = distinct !DILocation(line: 779, column: 17, scope: !56, inlinedAt: !1146)
!1148 = distinct !DILocation(line: 447, column: 30, scope: !1142, inlinedAt: !1147)
!1149 = distinct !{!1149, i1 true, !"_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrEBK_"}
!1150 = distinct !{!1150, !1149, !"_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrEBK_: argument 0"}
!1151 = distinct !{!1151, i1 true, !"_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtCs7VARH73bmU_11compact_str13CompactStringECs2mZqlW55729_12polars_utils"}
!1152 = distinct !{!1152, !1151, !"_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtCs7VARH73bmU_11compact_str13CompactStringECs2mZqlW55729_12polars_utils: argument 0"}
!1153 = distinct !{!1153, i1 true, !"_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCs7VARH73bmU_11compact_str4repr4ReprECs2mZqlW55729_12polars_utils"}
!1154 = distinct !{!1154, !1153, !"_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCs7VARH73bmU_11compact_str4repr4ReprECs2mZqlW55729_12polars_utils: argument 0"}
!1155 = distinct !{!1155, i1 true, !"_RNvXs2_NtCs7VARH73bmU_11compact_str4reprNtB5_4ReprNtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4drop"}
!1156 = distinct !{!1156, !1155, !"_RNvXs2_NtCs7VARH73bmU_11compact_str4reprNtB5_4ReprNtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4drop: argument 0"}
!1157 = distinct !DISubprogram(name: "unwrap<(), core::fmt::Error>", linkageName: "_RNvMNtCscgRAwXFJnXP_4core6resultINtB2_6ResultuNtNtB4_3fmt5ErrorE6unwrapCs2mZqlW55729_12polars_utils", scope: !88, file: !80, line: 1227, type: !78, scopeLine: 1227, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !77)
!1158 = distinct !DILocation(line: 12, column: 34, scope: !1138)
!1159 = distinct !DILexicalBlock(scope: !1157, file: !80, line: 1233, column: 13)
!1160 = !DILocation(line: 314, column: 23, scope: !1132)
!1161 = !DILocation(line: 21, column: 9, scope: !1134, inlinedAt: !1160)
!1162 = !DILocation(line: 100, column: 24, scope: !1135, inlinedAt: !1161)
!1163 = !DILocation(line: 3162, column: 26, scope: !1136, inlinedAt: !1162)
!1164 = !DIFile(filename: "crates/polars-utils/src/relaxed_cell.rs", directory: "/opt-bench/work/pola-rs/polars", checksumkind: CSK_MD5, checksum: "afc89ba5581dcec04ada8ac579dc6dbd")
!1165 = !DINamespace(name: "relaxed_cell", scope: !184)
!1166 = !DINamespace(name: "RelaxedCell", scope: !1165)
!1167 = !DINamespace(name: "{impl#12}", scope: !1165)
!1168 = !DILexicalBlockFile(scope: !1139, file: !200, discriminator: 0)
!1169 = !DIFile(filename: "library/core/src/macros/mod.rs", directory: "/rustc/48cc71ee88cd0f11217eced958b9930970da998b", checksumkind: CSK_MD5, checksum: "05d0820999e50315dc32c83aa7c28669")
!1170 = !DINamespace(name: "{impl#26}", scope: !201)
!1171 = !DILexicalBlockFile(scope: !1138, file: !200, discriminator: 4)
!1172 = !DILocation(line: 12, column: 9, scope: !1171)
!1173 = !{!1156, !1154, !1152, !1150}
!1174 = !DILocation(line: 314, column: 9, scope: !1132)
!1175 = !DILocation(line: 3937, column: 24, scope: !1133, inlinedAt: !1163)
!1176 = !DILocation(line: 11, column: 13, scope: !1137)
!1177 = !DILocation(line: 11, column: 26, scope: !1137)
!1178 = !DILocation(line: 12, column: 9, scope: !1168)
!1179 = !DILocation(line: 287, column: 16, scope: !1140, inlinedAt: !1172)
!1180 = !DILocation(line: 612, column: 33, scope: !1141, inlinedAt: !1148)
!1181 = !DILocation(line: 779, column: 12, scope: !56, inlinedAt: !1146)
!1182 = !DILocation(line: 780, column: 13, scope: !56, inlinedAt: !1146)
!1183 = !DILocation(line: 1231, column: 9, scope: !1157, inlinedAt: !1158)
!1184 = !DILocation(line: 1233, column: 23, scope: !1159, inlinedAt: !1158)
!1185 = !DILocation(line: 12, column: 42, scope: !1138)
!1186 = !DILocation(line: 13, column: 9, scope: !1138)
!1187 = !DILocation(line: 14, column: 5, scope: !1137)
!1188 = !DILocation(line: 316, column: 1, scope: !1132)
!1189 = !DILocation(line: 316, column: 2, scope: !1132)
!1190 = !DILocation(line: 312, column: 1, scope: !1132)
!1191 = distinct !DISubprogram(name: "into_pyobject", linkageName: "_RNvXNtNtCs2mZqlW55729_12polars_utils6pl_str12__python_implNtB4_10PlSmallStrNtNtCsbm5zPlkZccl_4pyo310conversion12IntoPyObject13into_pyobject", scope: !1211, file: !200, line: 333, type: !78, scopeLine: 333, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !77)
!1192 = distinct !DISubprogram(name: "as_str", linkageName: "_RNvMs0_NtCs7VARH73bmU_11compact_str4reprNtB5_4Repr6as_str", scope: !205, file: !202, line: 379, type: !78, scopeLine: 379, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !77)
!1193 = distinct !DISubprogram(name: "as_str", linkageName: "_RNvMNtCs2mZqlW55729_12polars_utils6pl_strNtB2_10PlSmallStr6as_str", scope: !209, file: !200, line: 66, type: !78, scopeLine: 66, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !77)
!1194 = distinct !DISubprogram(name: "as_str", linkageName: "_RNvMCs7VARH73bmU_11compact_strNtB2_13CompactString6as_str", scope: !211, file: !210, line: 557, type: !78, scopeLine: 557, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !77)
!1195 = distinct !DILocation(line: 381, column: 54, scope: !1192, inlinedAt: !1214)
!1196 = distinct !DILocation(line: 359, column: 17, scope: !63, inlinedAt: !1195)
!1197 = distinct !{!1197, i1 true, !"_RNvMs0_NtCs7VARH73bmU_11compact_str4reprNtB5_4Repr8as_slice"}
!1198 = distinct !{!1198, !1197, !"_RNvMs0_NtCs7VARH73bmU_11compact_str4reprNtB5_4Repr8as_slice: argument 0"}
!1199 = distinct !DILocation(line: 365, column: 30, scope: !63, inlinedAt: !1195)
!1200 = distinct !DILocation(line: 364, column: 26, scope: !63, inlinedAt: !1195)
!1201 = distinct !DILocation(line: 1576, column: 8, scope: !65, inlinedAt: !1200)
!1202 = distinct !DILocation(line: 335, column: 9, scope: !1191)
!1203 = distinct !DILocation(line: 810, column: 1, scope: !59, inlinedAt: !1202)
!1204 = distinct !DILocation(line: 810, column: 1, scope: !58, inlinedAt: !1203)
!1205 = distinct !DILocation(line: 810, column: 1, scope: !57, inlinedAt: !1204)
!1206 = distinct !DISubprogram(name: "into_pyobject", linkageName: "_RNvXNtNtNtCsbm5zPlkZccl_4pyo311conversions3std6stringReNtNtB8_10conversion12IntoPyObject13into_pyobject", scope: !217, file: !213, line: 21, type: !78, scopeLine: 21, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !77)
!1207 = distinct !DILocation(line: 335, column: 9, scope: !1191)
!1208 = distinct !DILocation(line: 810, column: 1, scope: !59, inlinedAt: !1207)
!1209 = distinct !DILocation(line: 810, column: 1, scope: !58, inlinedAt: !1208)
!1210 = distinct !DILocation(line: 810, column: 1, scope: !57, inlinedAt: !1209)
!1211 = !DINamespace(name: "{impl#0}", scope: !208)
!1212 = !DILocation(line: 334, column: 18, scope: !1191)
!1213 = !DILocation(line: 67, column: 16, scope: !1193, inlinedAt: !1212)
!1214 = !DILocation(line: 558, column: 16, scope: !1194, inlinedAt: !1213)
!1215 = !{!1198}
!1216 = !DILocation(line: 334, column: 27, scope: !1191)
!1217 = !DILocation(line: 612, column: 33, scope: !60, inlinedAt: !1196)
!1218 = !DILocation(line: 359, column: 12, scope: !63, inlinedAt: !1195)
!1219 = !DILocation(line: 2548, column: 13, scope: !64, inlinedAt: !1199)
!1220 = !DILocation(line: 1077, column: 12, scope: !54, inlinedAt: !1201)
!1221 = !DILocation(line: 369, column: 12, scope: !67, inlinedAt: !1195)
!1222 = !DILocation(line: 358, column: 28, scope: !62, inlinedAt: !1195)
!1223 = !DILocation(line: 368, column: 27, scope: !66, inlinedAt: !1195)
!1224 = !DILocation(line: 369, column: 9, scope: !67, inlinedAt: !1195)
!1225 = !DILocation(line: 779, column: 12, scope: !56, inlinedAt: !1205)
!1226 = !DILocation(line: 780, column: 13, scope: !56, inlinedAt: !1205)
!1227 = !DILocation(line: 0, scope: !63, inlinedAt: !1195)
!1228 = !DILocation(line: 0, scope: !61, inlinedAt: !1195)
!1229 = !DILocation(line: 22, column: 12, scope: !1206, inlinedAt: !1216)
!1230 = !DILocation(line: 779, column: 12, scope: !56, inlinedAt: !1210)
!1231 = !DILocation(line: 780, column: 13, scope: !56, inlinedAt: !1210)
!1232 = !DILocation(line: 335, column: 10, scope: !1191)
!1233 = !DILocation(line: 333, column: 9, scope: !1191)
!1234 = distinct !DISubprogram(name: "expecting", linkageName: "_RNvXNvXNvNtCs2mZqlW55729_12polars_utils10slice_enums_1__NtB7_5SliceNtNtCs40veMcpUDl8_10serde_core2de11Deserialize11deserializeNtB2_14___FieldVisitorNtB15_7Visitor9expecting", scope: !1235, file: !183, line: 6, type: !78, scopeLine: 6, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !77)
!1235 = !DINamespace(name: "{impl#0}", scope: !220)
!1236 = !DILocation(line: 6, column: 56, scope: !1234)
!1237 = !DILocation(line: 6, column: 74, scope: !1234)
!1238 = distinct !DISubprogram(name: "expecting", linkageName: "_RNvXNvXs0_NvXNvNtCs2mZqlW55729_12polars_utils10slice_enums_1__NtBd_5SliceNtNtCs40veMcpUDl8_10serde_core2de11Deserialize11deserializeNtB8_9___VisitorNtB1b_7Visitor10visit_enumNtB2_14___FieldVisitorB2m_9expecting", scope: !1239, file: !183, line: 6, type: !78, scopeLine: 6, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !77)
!1239 = !DINamespace(name: "{impl#0}", scope: !222)
!1240 = !DILocation(line: 6, column: 56, scope: !1238)
!1241 = !DILocation(line: 6, column: 74, scope: !1238)
!1242 = distinct !DISubprogram(name: "from", linkageName: "_RNvXs0_NtCs2mZqlW55729_12polars_utils10slice_enumNtB5_5SliceINtNtCscgRAwXFJnXP_4core7convert4FromTxjEE4from", scope: !1248, file: !183, line: 127, type: !78, scopeLine: 127, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !77)
!1243 = distinct !DILexicalBlock(scope: !1242, file: !183, line: 127, column: 50)
!1244 = distinct !DISubprogram(name: "try_from", linkageName: "_RNvXso_NtNtNtCscgRAwXFJnXP_4core7convert3num18ptr_try_from_implsjINtB9_7TryFromxE8try_from", scope: !1249, file: !190, line: 271, type: !78, scopeLine: 271, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !77)
!1245 = distinct !DISubprogram(name: "unwrap<usize, core::num::error::TryFromIntError>", linkageName: "_RNvMNtCscgRAwXFJnXP_4core6resultINtB2_6ResultjNtNtNtB4_3num5error15TryFromIntErrorE6unwrapCs2mZqlW55729_12polars_utils", scope: !88, file: !80, line: 1227, type: !78, scopeLine: 1227, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !77)
!1246 = distinct !DILexicalBlock(scope: !1245, file: !80, line: 1233, column: 13)
!1247 = distinct !DILocation(line: 135, column: 59, scope: !1243)
!1248 = !DINamespace(name: "{impl#2}", scope: !185)
!1249 = !DINamespace(name: "{impl#26}", scope: !193)
!1250 = !DILocation(line: 135, column: 34, scope: !1243)
!1251 = !DILocation(line: 128, column: 12, scope: !1243)
!1252 = !DILocation(line: 135, column: 50, scope: !1243)
!1253 = !DILocation(line: 272, column: 20, scope: !1244, inlinedAt: !1250)
!1254 = !DILocation(line: 1233, column: 23, scope: !1246, inlinedAt: !1247)
!1255 = !DILocation(line: 0, scope: !1243)
!1256 = !DILocation(line: 139, column: 6, scope: !1242)
!1257 = distinct !DISubprogram(name: "extract", linkageName: "_RNvXs0_NtNtCs2mZqlW55729_12polars_utils6pl_str12__python_implNtB7_10PlSmallStrNtNtCsbm5zPlkZccl_4pyo310conversion12FromPyObject7extract", scope: !1345, file: !200, line: 351, type: !78, scopeLine: 351, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !77)
!1258 = distinct !{!1258, i1 true, !"_RNvXs7_NtCsbm5zPlkZccl_4pyo38pybackedNtB5_11PyBackedStrNtNtB7_10conversion12FromPyObject7extract"}
!1259 = distinct !{!1259, !1258, !"_RNvXs7_NtCsbm5zPlkZccl_4pyo38pybackedNtB5_11PyBackedStrNtNtB7_10conversion12FromPyObject7extract: argument 0"}
!1260 = distinct !DISubprogram(name: "extract", linkageName: "_RNvXs7_NtCsbm5zPlkZccl_4pyo38pybackedNtB5_11PyBackedStrNtNtB7_10conversion12FromPyObject7extract", scope: !1349, file: !1347, line: 139, type: !78, scopeLine: 139, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !77)
!1261 = distinct !DISubprogram(name: "extract<pyo3::types::any::PyAny, pyo3::pybacked::PyBackedStr>", linkageName: "_RINvMsb_NtCsbm5zPlkZccl_4pyo38instanceINtB6_8BorrowedNtNtNtB8_5types3any5PyAnyE7extractNtNtB8_8pybacked11PyBackedStrECs2mZqlW55729_12polars_utils", scope: !1350, file: !108, line: 1008, type: !78, scopeLine: 1008, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !77)
!1262 = distinct !DILocation(line: 1012, column: 9, scope: !1261, inlinedAt: !1351)
!1263 = distinct !DISubprogram(name: "cast<pyo3::types::any::PyAny, pyo3::types::string::PyString>", linkageName: "_RINvMsb_NtCsbm5zPlkZccl_4pyo38instanceINtB6_8BorrowedNtNtNtB8_5types3any5PyAnyE4castNtNtBT_6string8PyStringECs2mZqlW55729_12polars_utils", scope: !1350, file: !108, line: 1020, type: !78, scopeLine: 1020, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !77)
!1264 = distinct !DILocation(line: 140, column: 29, scope: !1260, inlinedAt: !1262)
!1265 = distinct !DISubprogram(name: "branch<pyo3::instance::Borrowed<pyo3::types::string::PyString>, pyo3::err::cast_error::CastError>", linkageName: "_RNvXsp_NtCscgRAwXFJnXP_4core6resultINtB5_6ResultINtNtCsbm5zPlkZccl_4pyo38instance8BorrowedNtNtNtBP_5types6string8PyStringENtNtNtBP_3err10cast_error9CastErrorENtNtNtB7_3ops9try_trait3Try6branchCs2mZqlW55729_12polars_utils", scope: !83, file: !80, line: 2172, type: !78, scopeLine: 2172, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !77)
!1266 = distinct !DILocation(line: 140, column: 25, scope: !1260, inlinedAt: !1262)
!1267 = distinct !DISubprogram(name: "from_residual<pyo3::pybacked::PyBackedStr, pyo3::err::cast_error::CastError, pyo3::err::PyErr>", linkageName: "_RNvXsq_NtCscgRAwXFJnXP_4core6resultINtB5_6ResultNtNtCsbm5zPlkZccl_4pyo38pybacked11PyBackedStrNtNtBO_3err5PyErrEINtNtNtB7_3ops9try_trait12FromResidualIBy_NtNtB7_7convert10InfallibleNtNtB1v_10cast_error9CastErrorEE13from_residualCs2mZqlW55729_12polars_utils", scope: !1352, file: !80, line: 2187, type: !78, scopeLine: 2187, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !77)
!1268 = distinct !DILexicalBlock(scope: !1267, file: !80, line: 2189, column: 13)
!1269 = distinct !DILexicalBlock(scope: !1260, file: !1347, line: 140, column: 47)
!1270 = distinct !DILexicalBlock(scope: !1269, file: !1347, line: 140, column: 47)
!1271 = distinct !DILocation(line: 140, column: 25, scope: !1353, inlinedAt: !1262)
!1272 = distinct !DISubprogram(name: "branch<pyo3::pybacked::PyBackedStr, pyo3::err::PyErr>", linkageName: "_RNvXsp_NtCscgRAwXFJnXP_4core6resultINtB5_6ResultNtNtCsbm5zPlkZccl_4pyo38pybacked11PyBackedStrNtNtBO_3err5PyErrENtNtNtB7_3ops9try_trait3Try6branchCs2mZqlW55729_12polars_utils", scope: !83, file: !80, line: 2172, type: !78, scopeLine: 2172, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !77)
!1273 = distinct !DISubprogram(name: "Py_INCREF", linkageName: "_RNvNtCsfueLBegRnmY_8pyo3_ffi8refcount9Py_INCREF", scope: !116, file: !114, line: 179, type: !78, scopeLine: 179, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !77)
!1274 = distinct !DISubprogram(name: "clone_ref<pyo3::types::string::PyString>", linkageName: "_RNvMsq_NtCsbm5zPlkZccl_4pyo38instanceINtB5_2PyNtNtNtB7_5types6string8PyStringE9clone_refCs2mZqlW55729_12polars_utils", scope: !1355, file: !108, line: 1811, type: !78, scopeLine: 1811, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !77)
!1275 = distinct !DISubprogram(name: "clone<pyo3::types::string::PyString>", linkageName: "_RNvXs7_NtCsbm5zPlkZccl_4pyo38instanceINtB5_5BoundNtNtNtB7_5types6string8PyStringENtNtCscgRAwXFJnXP_4core5clone5Clone5cloneCs2mZqlW55729_12polars_utils", scope: !1356, file: !108, line: 822, type: !78, scopeLine: 822, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !77)
!1276 = distinct !DISubprogram(name: "to_owned<pyo3::types::string::PyString>", linkageName: "_RNvMsb_NtCsbm5zPlkZccl_4pyo38instanceINtB5_8BorrowedNtNtNtB7_5types6string8PyStringE8to_ownedCs2mZqlW55729_12polars_utils", scope: !1350, file: !108, line: 984, type: !78, scopeLine: 984, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !77)
!1277 = distinct !DILocation(line: 140, column: 49, scope: !1260, inlinedAt: !1262)
!1278 = distinct !DILocation(line: 985, column: 17, scope: !1276, inlinedAt: !1277)
!1279 = distinct !DILocation(line: 823, column: 47, scope: !1275, inlinedAt: !1278)
!1280 = distinct !DILocation(line: 1816, column: 18, scope: !1274, inlinedAt: !1279)
!1281 = distinct !DILexicalBlock(scope: !1260, file: !1347, line: 140, column: 9)
!1282 = distinct !DISubprogram(name: "from_residual<polars_utils::pl_str::PlSmallStr, pyo3::err::PyErr, pyo3::err::PyErr>", linkageName: "_RNvXsq_NtCscgRAwXFJnXP_4core6resultINtB5_6ResultNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrNtNtCsbm5zPlkZccl_4pyo33err5PyErrEINtNtNtB7_3ops9try_trait12FromResidualIBy_NtNtB7_7convert10InfallibleB1z_EE13from_residualBO_", scope: !1352, file: !80, line: 2187, type: !78, scopeLine: 2187, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !77)
!1283 = distinct !DILexicalBlock(scope: !1282, file: !80, line: 2189, column: 13)
!1284 = distinct !DILexicalBlock(scope: !1257, file: !200, line: 352, column: 46)
!1285 = distinct !DILexicalBlock(scope: !1284, file: !200, line: 352, column: 46)
!1286 = distinct !DISubprogram(name: "new", linkageName: "_RNvMs0_NtCs7VARH73bmU_11compact_str4reprNtB5_4Repr3new", scope: !205, file: !202, line: 65, type: !78, scopeLine: 65, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !77)
!1287 = distinct !DILexicalBlock(scope: !1286, file: !202, line: 66, column: 9)
!1288 = distinct !DISubprogram(name: "try_new<&str>", linkageName: "_RINvMCs7VARH73bmU_11compact_strNtB3_13CompactString7try_newReECs2mZqlW55729_12polars_utils", scope: !211, file: !210, line: 194, type: !78, scopeLine: 194, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !77)
!1289 = distinct !DISubprogram(name: "new<&str>", linkageName: "_RINvMCs7VARH73bmU_11compact_strNtB3_13CompactString3newReECs2mZqlW55729_12polars_utils", scope: !211, file: !210, line: 185, type: !78, scopeLine: 185, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !77)
!1290 = distinct !DISubprogram(name: "into<&str, polars_utils::pl_str::PlSmallStr>", linkageName: "_RNvXs1_NtCscgRAwXFJnXP_4core7convertReINtB5_4IntoNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrE4intoBP_", scope: !1365, file: !1364, line: 777, type: !78, scopeLine: 777, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !77)
!1291 = distinct !DISubprogram(name: "from", linkageName: "_RNvXs7_NtCs2mZqlW55729_12polars_utils6pl_strNtB5_10PlSmallStrINtNtCscgRAwXFJnXP_4core7convert4FromReE4from", scope: !1366, file: !200, line: 153, type: !78, scopeLine: 153, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !77)
!1292 = distinct !DISubprogram(name: "from_str", linkageName: "_RNvMNtCs2mZqlW55729_12polars_utils6pl_strNtB2_10PlSmallStr8from_str", scope: !209, file: !200, line: 56, type: !78, scopeLine: 56, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !77)
!1293 = distinct !DISubprogram(name: "from", linkageName: "_RNvXsp_Cs7VARH73bmU_11compact_strNtB5_13CompactStringINtNtCscgRAwXFJnXP_4core7convert4FromReE4from", scope: !1367, file: !210, line: 2124, type: !78, scopeLine: 2124, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !77)
!1294 = distinct !DILocation(line: 186, column: 9, scope: !1289, inlinedAt: !1363)
!1295 = distinct !DILocation(line: 195, column: 9, scope: !1288, inlinedAt: !1294)
!1296 = distinct !DISubprogram(name: "unwrap_with_msg<compact_str::CompactString, compact_str::ReserveError>", linkageName: "_RNvXs1l_Cs7VARH73bmU_11compact_strINtNtCscgRAwXFJnXP_4core6result6ResultNtB6_13CompactStringNtB6_12ReserveErrorENtB6_13UnwrapWithMsg15unwrap_with_msgCs2mZqlW55729_12polars_utils", scope: !1368, file: !210, line: 2649, type: !78, scopeLine: 2649, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !77)
!1297 = distinct !DISubprogram(name: "allocate_ptr", linkageName: "_RNvNtNtCs7VARH73bmU_11compact_str4repr4heap12allocate_ptr", scope: !1371, file: !1370, line: 265, type: !78, scopeLine: 265, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !77)
!1298 = distinct !DISubprogram(name: "new", linkageName: "_RNvMNtNtCs7VARH73bmU_11compact_str4repr4heapNtB2_10HeapBuffer3new", scope: !1372, file: !1370, line: 37, type: !78, scopeLine: 37, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !77)
!1299 = distinct !DILexicalBlock(scope: !1298, file: !1370, line: 38, column: 9)
!1300 = distinct !DILocation(line: 75, column: 13, scope: !1287, inlinedAt: !1295)
!1301 = distinct !DILocation(line: 39, column: 26, scope: !1299, inlinedAt: !1300)
!1302 = distinct !DILocation(line: 267, column: 29, scope: !1297, inlinedAt: !1301)
!1303 = distinct !DILexicalBlock(scope: !1297, file: !1370, line: 267, column: 5)
!1304 = distinct !DILexicalBlock(scope: !1303, file: !1370, line: 268, column: 5)
!1305 = distinct !DISubprogram(name: "branch<(compact_str::repr::capacity::Capacity, core::ptr::non_null::NonNull<u8>), compact_str::ReserveError>", linkageName: "_RNvXsp_NtCscgRAwXFJnXP_4core6resultINtB5_6ResultTNtNtNtCs7VARH73bmU_11compact_str4repr8capacity8CapacityINtNtNtB7_3ptr8non_null7NonNullhEENtBR_12ReserveErrorENtNtNtB7_3ops9try_trait3Try6branchCs2mZqlW55729_12polars_utils", scope: !83, file: !80, line: 2172, type: !78, scopeLine: 2172, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !77)
!1306 = distinct !DILocation(line: 39, column: 26, scope: !1299, inlinedAt: !1300)
!1307 = distinct !DISubprogram(name: "map<compact_str::repr::Repr, compact_str::ReserveError, compact_str::CompactString, fn(compact_str::repr::Repr) -> compact_str::CompactString>", linkageName: "_RINvMNtCscgRAwXFJnXP_4core6resultINtB3_6ResultNtNtCs7VARH73bmU_11compact_str4repr4ReprNtBM_12ReserveErrorE3mapNtBM_13CompactStringNcB1K_0ECs2mZqlW55729_12polars_utils", scope: !88, file: !80, line: 831, type: !78, scopeLine: 831, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !77)
!1308 = distinct !DILocation(line: 195, column: 34, scope: !1288, inlinedAt: !1294)
!1309 = distinct !{!1309, i1 true, !"_RINvMCs7VARH73bmU_11compact_strNtB3_13CompactString7try_newReECs2mZqlW55729_12polars_utils"}
!1310 = distinct !{!1310, !1309, !"_RINvMCs7VARH73bmU_11compact_strNtB3_13CompactString7try_newReECs2mZqlW55729_12polars_utils: argument 1"}
!1311 = distinct !{!1311, !1309, !"_RINvMCs7VARH73bmU_11compact_strNtB3_13CompactString7try_newReECs2mZqlW55729_12polars_utils: argument 0"}
!1312 = distinct !{!1312, i1 true, !"_RNvMs0_NtCs7VARH73bmU_11compact_str4reprNtB5_4Repr3new"}
!1313 = distinct !{!1313, !1312, !"_RNvMs0_NtCs7VARH73bmU_11compact_str4reprNtB5_4Repr3new: argument 1"}
!1314 = distinct !{!1314, !1312, !"_RNvMs0_NtCs7VARH73bmU_11compact_str4reprNtB5_4Repr3new: argument 0"}
!1315 = distinct !DISubprogram(name: "new", linkageName: "_RNvMNtNtCs7VARH73bmU_11compact_str4repr6inlineNtB2_12InlineBuffer3new", scope: !1376, file: !1374, line: 23, type: !78, scopeLine: 23, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !77)
!1316 = distinct !DILexicalBlock(scope: !1315, file: !1374, line: 26, column: 9)
!1317 = distinct !DILocation(line: 72, column: 35, scope: !1287, inlinedAt: !1295)
!1318 = distinct !DILexicalBlock(scope: !1316, file: !1374, line: 27, column: 9)
!1319 = distinct !DISubprogram(name: "copy_nonoverlapping<u8>", linkageName: "_RINvNtCscgRAwXFJnXP_4core3ptr19copy_nonoverlappinghECs2mZqlW55729_12polars_utils", scope: !90, file: !89, line: 531, type: !78, scopeLine: 531, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !77)
!1320 = distinct !DILocation(line: 43, column: 9, scope: !1318, inlinedAt: !1317)
!1321 = distinct !DILexicalBlock(scope: !1287, file: !202, line: 72, column: 13)
!1322 = distinct !DISubprogram(name: "new", linkageName: "_RNvMs_NtNtCs7VARH73bmU_11compact_str4repr8capacityNtB4_8Capacity3new", scope: !1381, file: !1379, line: 68, type: !78, scopeLine: 68, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !77)
end_hunk_2
