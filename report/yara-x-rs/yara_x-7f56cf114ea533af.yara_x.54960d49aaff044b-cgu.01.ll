Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/yara-x-rs/original/yara_x-7f56cf114ea533af.yara_x.54960d49aaff044b-cgu.01?download=true
inline.NumInlined: 5554
inline.NumDeleted: 2662
begin_hunk_0_@_RNvMNtNtCs7gfv9tzbXmh_6yara_x4wasm7builderNtB2_17WasmModuleBuilder5build:bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store i64 0, ptr %i.c, align 8
  %i.z = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store ptr inttoptr (i64 8 to ptr), ptr %i.z, align 8
  %i.aa = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  store i64 0, ptr %i.aa, align 8
  %i.ab = getelementptr inbounds nuw i8, ptr %1, i64 336
  %i.ac = invoke { i64, i32 } @_RNvMNtCs5lEgW3tfVqv_6walrus16function_builderNtB2_15FunctionBuilder6finish(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(128) %i.d, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.c, ptr noalias nofree noundef nonnull align 8 dereferenceable(72) %i.ab)
          to label %bb.k unwind label %bb.b       ; 2 uses

bb.k:                                             ; preds = %bb.j
  %i.ad = extractvalue { i64, i32 } %i.ac, 0
  %i.ae = extractvalue { i64, i32 } %i.ac, 1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  %i.af = getelementptr inbounds nuw i8, ptr %1, i64 504
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store ptr @108, ptr %i.b, align 8
  %i.ag = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i64 4, ptr %i.ag, align 8
  %i.ah = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store i64 %i.ad, ptr %i.ah, align 8
  %i.ai = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  store i32 %i.ae, ptr %i.ai, align 8
  %i.aj = invoke { i64, i32 } @_RINvMs0_NtCs5lEgW3tfVqv_6walrus15tombstone_arenaINtB6_14TombstoneArenaNtNtNtB8_6module7exports6ExportE13alloc_with_idNCINvMs0_B18_NtB18_13ModuleExports3addINtCsiukO0zjz20O_8id_arena2IdNtNtB1a_9functions8FunctionEE0ECs7gfv9tzbXmh_6yara_x(ptr noalias nofree noundef nonnull align 8 dereferenceable(64) %i.af, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(32) %i.b)
          to label %bb.l unwind label %bb.b       ; 0 uses

bb.l:                                             ; preds = %bb.k
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  invoke void @_RNvNtNtCs5lEgW3tfVqv_6walrus6passes2gc3run(ptr noalias nofree noundef nonnull align 8 dereferenceable(1376) %1)
          to label %bb.m unwind label %bb.b

bb.m:                                             ; preds = %bb.l
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1376) %0, ptr noundef nonnull align 8 dereferenceable(1376) %1, i64 1376, i1 false)
  %i.ak = getelementptr inbounds nuw i8, ptr %1, i64 1760
  invoke void @_RNvXsg_NtCsjqcU1oJFKXj_9hashbrown3rawINtB5_8RawTableTNtNtCsexYYUdYSQU6_5alloc6string6StringINtCsiukO0zjz20O_8id_arena2IdNtNtNtCs5lEgW3tfVqv_6walrus6module9functions8FunctionEEENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs7gfv9tzbXmh_6yara_x(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.ak)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsG258MDvU3F_3std11collections4hash3map7HashMapNtNtCsexYYUdYSQU6_5alloc6string6StringINtCsiukO0zjz20O_8id_arena2IdNtNtNtCs5lEgW3tfVqv_6walrus6module9functions8FunctionENtCsaO0k6qjB80f_10rustc_hash13FxBuildHasherEECs7gfv9tzbXmh_6yara_x.exit unwind label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.al = landingpad { ptr, i32 }
          cleanup
  %i.am = getelementptr inbounds nuw i8, ptr %1, i64 1504
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCs5lEgW3tfVqv_6walrus16function_builder15FunctionBuilderECs7gfv9tzbXmh_6yara_x(ptr noalias nofree noundef align 8 dereferenceable(128) %i.am) #25
          to label %bb.o unwind label %bb.r

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsG258MDvU3F_3std11collections4hash3map7HashMapNtNtCsexYYUdYSQU6_5alloc6string6StringINtCsiukO0zjz20O_8id_arena2IdNtNtNtCs5lEgW3tfVqv_6walrus6module9functions8FunctionENtCsaO0k6qjB80f_10rustc_hash13FxBuildHasherEECs7gfv9tzbXmh_6yara_x.exit: ; preds = %bb.m
  %i.an = getelementptr inbounds nuw i8, ptr %1, i64 1504
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCs5lEgW3tfVqv_6walrus16function_builder15FunctionBuilderECs7gfv9tzbXmh_6yara_x(ptr noalias nofree noundef align 8 dereferenceable(128) %i.an)
          to label %bb.q unwind label %bb.p

bb.o:                                             ; preds = %bb.p, %bb.n
  %.pn = phi { ptr, i32 } [ %i.ap, %bb.p ], [ %i.al, %bb.n ]
  %i.ao = getelementptr inbounds nuw i8, ptr %1, i64 1632
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCs5lEgW3tfVqv_6walrus16function_builder15FunctionBuilderECs7gfv9tzbXmh_6yara_x(ptr noalias nofree noundef align 8 dereferenceable(128) %i.ao) #25
          to label %bb.s unwind label %bb.r

bb.p:                                             ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsG258MDvU3F_3std11collections4hash3map7HashMapNtNtCsexYYUdYSQU6_5alloc6string6StringINtCsiukO0zjz20O_8id_arena2IdNtNtNtCs5lEgW3tfVqv_6walrus6module9functions8FunctionENtCsaO0k6qjB80f_10rustc_hash13FxBuildHasherEECs7gfv9tzbXmh_6yara_x.exit
  %i.ap = landingpad { ptr, i32 }
          cleanup
  br label %bb.o

bb.q:                                             ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsG258MDvU3F_3std11collections4hash3map7HashMapNtNtCsexYYUdYSQU6_5alloc6string6StringINtCsiukO0zjz20O_8id_arena2IdNtNtNtCs5lEgW3tfVqv_6walrus6module9functions8FunctionENtCsaO0k6qjB80f_10rustc_hash13FxBuildHasherEECs7gfv9tzbXmh_6yara_x.exit
  %i.aq = getelementptr inbounds nuw i8, ptr %1, i64 1632
  call fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCs5lEgW3tfVqv_6walrus16function_builder15FunctionBuilderECs7gfv9tzbXmh_6yara_x(ptr noalias nofree noundef align 8 dereferenceable(128) %i.aq)
  ret void

bb.r:                                             ; preds = %bb.t, %bb.w, %bb.v, %bb.u, %bb.o, %bb.n, %.body
  %i.ar = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #26
  unreachable

bb.s:                                             ; preds = %bb.w, %bb.o
  %.pn.pn = phi { ptr, i32 } [ %.pn, %bb.o ], [ %eh.lpad-body, %bb.w ]
  resume { ptr, i32 } %.pn.pn

bb.t:                                             ; preds = %.body
  %i.as = getelementptr inbounds nuw i8, ptr %1, i64 1760
  invoke void @_RNvXsg_NtCsjqcU1oJFKXj_9hashbrown3rawINtB5_8RawTableTNtNtCsexYYUdYSQU6_5alloc6string6StringINtCsiukO0zjz20O_8id_arena2IdNtNtNtCs5lEgW3tfVqv_6walrus6module9functions8FunctionEEENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs7gfv9tzbXmh_6yara_x(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.as)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsG258MDvU3F_3std11collections4hash3map7HashMapNtNtCsexYYUdYSQU6_5alloc6string6StringINtCsiukO0zjz20O_8id_arena2IdNtNtNtCs5lEgW3tfVqv_6walrus6module9functions8FunctionENtCsaO0k6qjB80f_10rustc_hash13FxBuildHasherEECs7gfv9tzbXmh_6yara_x.exit7 unwind label %bb.r

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsG258MDvU3F_3std11collections4hash3map7HashMapNtNtCsexYYUdYSQU6_5alloc6string6StringINtCsiukO0zjz20O_8id_arena2IdNtNtNtCs5lEgW3tfVqv_6walrus6module9functions8FunctionENtCsaO0k6qjB80f_10rustc_hash13FxBuildHasherEECs7gfv9tzbXmh_6yara_x.exit7: ; preds = %bb.t
  br i1 %.sroa.0.0.lpad-body, label %bb.v, label %bb.u

bb.u:                                             ; preds = %bb.v, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsG258MDvU3F_3std11collections4hash3map7HashMapNtNtCsexYYUdYSQU6_5alloc6string6StringINtCsiukO0zjz20O_8id_arena2IdNtNtNtCs5lEgW3tfVqv_6walrus6module9functions8FunctionENtCsaO0k6qjB80f_10rustc_hash13FxBuildHasherEECs7gfv9tzbXmh_6yara_x.exit7
  %i.at = getelementptr inbounds nuw i8, ptr %1, i64 1504
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCs5lEgW3tfVqv_6walrus16function_builder15FunctionBuilderECs7gfv9tzbXmh_6yara_x(ptr noalias nofree noundef align 8 dereferenceable(128) %i.at) #25
          to label %bb.w unwind label %bb.r

bb.v:                                             ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsG258MDvU3F_3std11collections4hash3map7HashMapNtNtCsexYYUdYSQU6_5alloc6string6StringINtCsiukO0zjz20O_8id_arena2IdNtNtNtCs5lEgW3tfVqv_6walrus6module9functions8FunctionENtCsaO0k6qjB80f_10rustc_hash13FxBuildHasherEECs7gfv9tzbXmh_6yara_x.exit7
  %i.au = getelementptr inbounds nuw i8, ptr %1, i64 1376
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCs5lEgW3tfVqv_6walrus16function_builder15FunctionBuilderECs7gfv9tzbXmh_6yara_x(ptr noalias nofree noundef align 8 dereferenceable(128) %i.au) #25
          to label %bb.u unwind label %bb.r

bb.w:                                             ; preds = %bb.u
  %i.av = getelementptr inbounds nuw i8, ptr %1, i64 1632
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCs5lEgW3tfVqv_6walrus16function_builder15FunctionBuilderECs7gfv9tzbXmh_6yara_x(ptr noalias nofree noundef align 8 dereferenceable(128) %i.av) #25
          to label %bb.s unwind label %bb.r
}

; Function Attrs: nonlazybind uwtable
define internal fastcc { i64, i32 } @_RNvMNtNtCs7gfv9tzbXmh_6yara_x8compiler4emitNtB2_11EmitContext11function_id(ptr captures(address, read_provenance) %.88.val, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %0, i64 noundef %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 4 uses
  %i.b = alloca [16 x i8], align 8                ; 3 uses
  store ptr %0, ptr %i.b, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i64 %1, ptr %i.c, align 8
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.88.val) ]
  %i.d = getelementptr inbounds nuw i8, ptr %.88.val, i64 24
  %i.e = load i64, ptr %i.d, align 8, !alias.scope !5122, !noundef !6
  %i.f = icmp eq i64 %i.e, 0
  br i1 %i.f, label %select.unfold, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %.88.val, i64 32
  %i.h = tail call noundef i64 @_RINvYNtCsaO0k6qjB80f_10rustc_hash13FxBuildHasherNtNtCskKLDkoKarTP_4core4hash11BuildHasher8hash_oneReECs7gfv9tzbXmh_6yara_x(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.g, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %0, i64 noundef %1) ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5123)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5124)
  %i.i = lshr i64 %i.h, 57
  %i.j = trunc nuw nsw i64 %i.i to i8
  %i.k = getelementptr inbounds nuw i8, ptr %.88.val, i64 8
  %i.l = load i64, ptr %i.k, align 8, !alias.scope !5125, !noundef !6 ; 2 uses
  %i.m = load ptr, ptr %.88.val, align 8, !alias.scope !5125, !nonnull !6, !noundef !6 ; 2 uses
  %i.n = insertelement <16 x i8> poison, i8 %i.j, i64 0
  %i.o = shufflevector <16 x i8> %i.n, <16 x i8> poison, <16 x i32> zeroinitializer
  br label %bb.c

bb.c:                                             ; preds = %bb.e, %bb.b
  %.sroa.9.0.i.i.i = phi i64 [ 0, %bb.b ], [ %i.af, %bb.e ]
  %.pn.i.i = phi i64 [ %i.h, %bb.b ], [ %i.ag, %bb.e ]
  %.sroa.01.0.i.i.i = and i64 %.pn.i.i, %i.l      ; 3 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.m, i64 %.sroa.01.0.i.i.i
  %.sroa.0.0.copyload.i24.i.i = load <16 x i8>, ptr %i.p, align 1, !noalias !5126 ; 2 uses
  %i.q = icmp eq <16 x i8> %.sroa.0.0.copyload.i24.i.i, %i.o
  %i.r = bitcast <16 x i1> %i.q to i16            ; 2 uses
  %.not.i.not30.i.i = icmp eq i16 %i.r, 0
  br i1 %.not.i.not30.i.i, label %._crit_edge.i.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.c, %bb.d
  %.sroa.06.0.i31.i.i = phi i16 [ %i.ae, %bb.d ], [ %i.r, %bb.c ] ; 3 uses
  %i.s = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.sroa.06.0.i31.i.i, i1 true)
  %i.t = zext nneg i16 %i.s to i64
  %i.u = add i64 %.sroa.01.0.i.i.i, %i.t
  %i.v = and i64 %i.u, %i.l
  %i.w = sub nsw i64 0, %i.v
  %i.x = getelementptr inbounds [40 x i8], ptr %i.m, i64 %i.w ; 3 uses
  %i.y = getelementptr inbounds i8, ptr %i.x, i64 -40
  %i.z = tail call noundef zeroext i1 @_RNvXCsjqcU1oJFKXj_9hashbrowneINtB2_10EquivalentNtNtCsexYYUdYSQU6_5alloc6string6StringE10equivalentCs7gfv9tzbXmh_6yara_x(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %0, i64 noundef %1, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %i.y), !noalias !5127
  br i1 %i.z, label %_RINvMs1_NtCsjqcU1oJFKXj_9hashbrown3mapINtB6_7HashMapNtNtCsexYYUdYSQU6_5alloc6string6StringINtCsiukO0zjz20O_8id_arena2IdNtNtNtCs5lEgW3tfVqv_6walrus6module9functions8FunctionENtCsaO0k6qjB80f_10rustc_hash13FxBuildHasherE3geteECs7gfv9tzbXmh_6yara_x.exit, label %bb.d, !prof !8

._crit_edge.i.i:                                  ; preds = %bb.d, %bb.c
  %i.aa = icmp eq <16 x i8> %.sroa.0.0.copyload.i24.i.i, splat (i8 -1)
  %i.ab = bitcast <16 x i1> %i.aa to i16
  %i.ac = icmp eq i16 %i.ab, 0
  br i1 %i.ac, label %bb.e, label %select.unfold, !prof !9

bb.d:                                             ; preds = %.lr.ph.i.i
  %i.ad = add i16 %.sroa.06.0.i31.i.i, -1
  %i.ae = and i16 %i.ad, %.sroa.06.0.i31.i.i      ; 2 uses
  %.not.i.not.i.i = icmp eq i16 %i.ae, 0
  br i1 %.not.i.not.i.i, label %._crit_edge.i.i, label %.lr.ph.i.i

bb.e:                                             ; preds = %._crit_edge.i.i
  %i.af = add i64 %.sroa.9.0.i.i.i, 16            ; 2 uses
  %i.ag = add i64 %.sroa.01.0.i.i.i, %i.af
  br label %bb.c

_RINvMs1_NtCsjqcU1oJFKXj_9hashbrown3mapINtB6_7HashMapNtNtCsexYYUdYSQU6_5alloc6string6StringINtCsiukO0zjz20O_8id_arena2IdNtNtNtCs5lEgW3tfVqv_6walrus6module9functions8FunctionENtCsaO0k6qjB80f_10rustc_hash13FxBuildHasherE3geteECs7gfv9tzbXmh_6yara_x.exit: ; preds = %.lr.ph.i.i
  %i.ah = getelementptr inbounds i8, ptr %i.x, i64 -16
  %i.ai = load i64, ptr %i.ah, align 8, !noundef !6
  %i.aj = getelementptr inbounds i8, ptr %i.x, i64 -8
  %i.ak = load i32, ptr %i.aj, align 8, !noundef !6
  %i.al = insertvalue { i64, i32 } poison, i64 %i.ai, 0
  %i.am = insertvalue { i64, i32 } %i.al, i32 %i.ak, 1
  ret { i64, i32 } %i.am

select.unfold:                                    ; preds = %._crit_edge.i.i, %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %i.b, ptr %i.a, align 8
  %.sroa.44.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr @_RNvXs1i_NtCskKLDkoKarTP_4core3fmtReNtB6_7Display3fmtCs7gfv9tzbXmh_6yara_x, ptr %.sroa.44.0..sroa_idx, align 8
  call void @_RNvNtCskKLDkoKarTP_4core9panicking9panic_fmt(ptr noundef nonnull @109, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @110) #28
  unreachable
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMs6_NtNtCsbhAup8j5lif_16wasmtime_environ11collections9index_mapINtB5_11TryIndexMapNtNtB9_11string_pool4AtomNtNtB9_5types11EntityIndexE6insertCs7gfv9tzbXmh_6yara_x(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([16 x i8]) align 8 captures(none) dereferenceable(16) initializes((0, 4), (8, 12)) %0, ptr noalias nofree noundef align 8 dereferenceable(72) %1, i32 noundef range(i32 1, 0) %2, i32 noundef range(i32 0, 5) %3, i32 noundef %4) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 5 uses
  %i.b = alloca [16 x i8], align 8                ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5130)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !5130
  call void @_RNvMs_NtCs907JfTDu8Xv_8indexmap5innerINtB4_4CoreNtNtCsbhAup8j5lif_16wasmtime_environ11string_pool4AtomNtNtBO_5types11EntityIndexE11try_reserveCs7gfv9tzbXmh_6yara_x(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.a, ptr noalias nofree noundef nonnull align 8 dereferenceable(72) %1, i64 noundef 1)
  %i.c = load i64, ptr %i.a, align 8, !range !5131, !noalias !5130, !noundef !6
  %.not.i = icmp eq i64 %i.c, -1
  br i1 %.not.i, label %bb.f, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 48
  %.val.i = load i64, ptr %i.d, align 8, !alias.scope !5130, !noundef !6
  %i.e = call i64 @llvm.uadd.sat.i64(i64 %.val.i, i64 1) ; 4 uses
  %i.f = shl nuw i64 %i.e, 2                      ; 2 uses
  %i.g = icmp ugt i64 %i.e, 4611686018427387903
  br i1 %i.g, label %bb.e, label %bb.c, !prof !9

bb.c:                                             ; preds = %bb.b
  %i.h = shl nuw i64 %i.e, 3
  %i.i = icmp samesign ugt i64 %i.e, 2305843009213693951
  br i1 %i.i, label %bb.d, label %bb.e, !prof !31

bb.d:                                             ; preds = %bb.c
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c, %bb.b
  %.sroa.0.02.i.i = phi i64 [ %i.f, %bb.c ], [ %i.f, %bb.d ], [ -1, %bb.b ]
  %.sroa.01.0.i.i = phi i64 [ %i.h, %bb.c ], [ -1, %bb.d ], [ -1, %bb.b ]
  %i.j = call i64 @llvm.uadd.sat.i64(i64 %.sroa.0.02.i.i, i64 %.sroa.01.0.i.i)
  %i.k = call noundef nonnull ptr @_RNvMsn_NtNtCsgIATGCnso3Z_22wasmtime_internal_core5error5errorNtB5_13OomOrDynError11new_oom_ptr(i64 noundef %i.j)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !5130
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.k, ptr %i.l, align 8
  br label %bb.g

bb.f:                                             ; preds = %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !5130
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @_RNvMs2_NtCs907JfTDu8Xv_8indexmap3mapINtB5_8IndexMapNtNtCsbhAup8j5lif_16wasmtime_environ11string_pool4AtomNtNtBR_5types11EntityIndexE11insert_fullCs7gfv9tzbXmh_6yara_x(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.b, ptr noalias nofree noundef nonnull align 8 dereferenceable(72) %1, i32 noundef %2, i32 noundef %3, i32 noundef %4)
  %i.m = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.o = load <2 x i32>, ptr %i.m, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  store <2 x i32> %i.o, ptr %i.n, align 4
  br label %bb.g

bb.g:                                             ; preds = %bb.e, %bb.f
  %storemerge = phi i32 [ 0, %bb.f ], [ 1, %bb.e ]
  store i32 %storemerge, ptr %0, align 8
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc { i64, i32 } @_RNvMs_NtNtCs7gfv9tzbXmh_6yara_x4wasm7builderNtB4_17WasmModuleBuilder11function_id(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(1976) %0, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 4 uses
  %i.b = alloca [16 x i8], align 8                ; 3 uses
  store ptr %1, ptr %i.b, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i64 %2, ptr %i.c, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 1784
  %i.e = load i64, ptr %i.d, align 8, !alias.scope !5143, !noundef !6
  %i.f = icmp eq i64 %i.e, 0
  br i1 %i.f, label %select.unfold, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 1760
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 1792
  %i.i = tail call noundef i64 @_RINvYNtCsaO0k6qjB80f_10rustc_hash13FxBuildHasherNtNtCskKLDkoKarTP_4core4hash11BuildHasher8hash_oneReECs7gfv9tzbXmh_6yara_x(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.h, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef %2) ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5144)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5145)
  %i.j = lshr i64 %i.i, 57
  %i.k = trunc nuw nsw i64 %i.j to i8
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 1768
  %i.m = load i64, ptr %i.l, align 8, !alias.scope !5146, !noundef !6 ; 2 uses
  %i.n = load ptr, ptr %i.g, align 8, !alias.scope !5146, !nonnull !6, !noundef !6 ; 2 uses
  %i.o = insertelement <16 x i8> poison, i8 %i.k, i64 0
  %i.p = shufflevector <16 x i8> %i.o, <16 x i8> poison, <16 x i32> zeroinitializer
  br label %bb.c

bb.c:                                             ; preds = %bb.e, %bb.b
  %.sroa.9.0.i.i.i = phi i64 [ 0, %bb.b ], [ %i.ag, %bb.e ]
  %.pn.i.i = phi i64 [ %i.i, %bb.b ], [ %i.ah, %bb.e ]
  %.sroa.01.0.i.i.i = and i64 %.pn.i.i, %i.m      ; 3 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.n, i64 %.sroa.01.0.i.i.i
  %.sroa.0.0.copyload.i24.i.i = load <16 x i8>, ptr %i.q, align 1, !noalias !5147 ; 2 uses
  %i.r = icmp eq <16 x i8> %.sroa.0.0.copyload.i24.i.i, %i.p
  %i.s = bitcast <16 x i1> %i.r to i16            ; 2 uses
  %.not.i.not30.i.i = icmp eq i16 %i.s, 0
  br i1 %.not.i.not30.i.i, label %._crit_edge.i.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.c, %bb.d
  %.sroa.06.0.i31.i.i = phi i16 [ %i.af, %bb.d ], [ %i.s, %bb.c ] ; 3 uses
  %i.t = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.sroa.06.0.i31.i.i, i1 true)
  %i.u = zext nneg i16 %i.t to i64
  %i.v = add i64 %.sroa.01.0.i.i.i, %i.u
  %i.w = and i64 %i.v, %i.m
  %i.x = sub nsw i64 0, %i.w
  %i.y = getelementptr inbounds [40 x i8], ptr %i.n, i64 %i.x ; 3 uses
  %i.z = getelementptr inbounds i8, ptr %i.y, i64 -40
  %i.aa = tail call noundef zeroext i1 @_RNvXCsjqcU1oJFKXj_9hashbrowneINtB2_10EquivalentNtNtCsexYYUdYSQU6_5alloc6string6StringE10equivalentCs7gfv9tzbXmh_6yara_x(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef %2, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %i.z), !noalias !5148
  br i1 %i.aa, label %_RINvMs1_NtCsjqcU1oJFKXj_9hashbrown3mapINtB6_7HashMapNtNtCsexYYUdYSQU6_5alloc6string6StringINtCsiukO0zjz20O_8id_arena2IdNtNtNtCs5lEgW3tfVqv_6walrus6module9functions8FunctionENtCsaO0k6qjB80f_10rustc_hash13FxBuildHasherE3geteECs7gfv9tzbXmh_6yara_x.exit, label %bb.d, !prof !8

._crit_edge.i.i:                                  ; preds = %bb.d, %bb.c
  %i.ab = icmp eq <16 x i8> %.sroa.0.0.copyload.i24.i.i, splat (i8 -1)
  %i.ac = bitcast <16 x i1> %i.ab to i16
  %i.ad = icmp eq i16 %i.ac, 0
  br i1 %i.ad, label %bb.e, label %select.unfold, !prof !9

bb.d:                                             ; preds = %.lr.ph.i.i
  %i.ae = add i16 %.sroa.06.0.i31.i.i, -1
  %i.af = and i16 %i.ae, %.sroa.06.0.i31.i.i      ; 2 uses
  %.not.i.not.i.i = icmp eq i16 %i.af, 0
  br i1 %.not.i.not.i.i, label %._crit_edge.i.i, label %.lr.ph.i.i

bb.e:                                             ; preds = %._crit_edge.i.i
  %i.ag = add i64 %.sroa.9.0.i.i.i, 16            ; 2 uses
  %i.ah = add i64 %.sroa.01.0.i.i.i, %i.ag
  br label %bb.c

_RINvMs1_NtCsjqcU1oJFKXj_9hashbrown3mapINtB6_7HashMapNtNtCsexYYUdYSQU6_5alloc6string6StringINtCsiukO0zjz20O_8id_arena2IdNtNtNtCs5lEgW3tfVqv_6walrus6module9functions8FunctionENtCsaO0k6qjB80f_10rustc_hash13FxBuildHasherE3geteECs7gfv9tzbXmh_6yara_x.exit: ; preds = %.lr.ph.i.i
  %i.ai = getelementptr inbounds i8, ptr %i.y, i64 -16
  %i.aj = load i64, ptr %i.ai, align 8, !noundef !6
  %i.ak = getelementptr inbounds i8, ptr %i.y, i64 -8
  %i.al = load i32, ptr %i.ak, align 8, !noundef !6
  %i.am = insertvalue { i64, i32 } poison, i64 %i.aj, 0
  %i.an = insertvalue { i64, i32 } %i.am, i32 %i.al, 1
  ret { i64, i32 } %i.an

select.unfold:                                    ; preds = %._crit_edge.i.i, %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %i.b, ptr %i.a, align 8
  %.sroa.44.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr @_RNvXs1i_NtCskKLDkoKarTP_4core3fmtReNtB6_7Display3fmtCs7gfv9tzbXmh_6yara_x, ptr %.sroa.44.0..sroa_idx, align 8
  call void @_RNvNtCskKLDkoKarTP_4core9panicking9panic_fmt(ptr noundef nonnull @109, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @114) #28
  unreachable
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RNvMs_NtNtCs7gfv9tzbXmh_6yara_x4wasm7builderNtB4_17WasmModuleBuilder16finish_rule_func(ptr noalias nofree noundef nonnull align 8 dereferenceable(1976) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [96 x i8], align 16               ; 8 uses
  %i.b = alloca [96 x i8], align 16               ; 8 uses
  %i.c = alloca [96 x i8], align 16               ; 8 uses
  %i.d = alloca [200 x i8], align 8               ; 10 uses
  %i.e = alloca [24 x i8], align 8                ; 6 uses
  %i.f = alloca [24 x i8], align 8                ; 4 uses
  %i.g = alloca [128 x i8], align 8               ; 4 uses
  %i.h = alloca [128 x i8], align 8               ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 152
  call void @_RNvMNtCs5lEgW3tfVqv_6walrus16function_builderNtB2_15FunctionBuilder3new(ptr noalias nofree noundef nonnull sret([128 x i8]) align 8 captures(none) dereferenceable(128) %i.g, ptr noalias nofree noundef nonnull align 8 dereferenceable(184) %i.i, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) inttoptr (i64 8 to ptr), i64 noundef 0, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) @107, i64 noundef 1)
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 1632 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(128) %i.h, ptr noundef nonnull align 8 dereferenceable(128) %i.j, i64 128, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(128) %i.j, ptr noundef nonnull align 8 dereferenceable(128) %i.g, i64 128, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  invoke void @_RNvMNtCs5lEgW3tfVqv_6walrus16function_builderNtB2_15FunctionBuilder9func_body(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.f, ptr noalias nofree noundef nonnull align 8 dereferenceable(128) %i.h)
          to label %bb.b unwind label %.body.thread37

.body.thread37:                                   ; preds = %bb.f, %bb.d, %bb.b, %bb.a
  %lpad.thr_comm = landingpad { ptr, i32 }
          cleanup
  br label %.body.thread32

bb.b:                                             ; preds = %bb.a
  %i.k = invoke { ptr, i64 } @_RNvMs_NtCs5lEgW3tfVqv_6walrus16function_builderNtB4_15InstrSeqBuilder6instrs(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.f)
          to label %bb.c unwind label %.body.thread37

bb.c:                                             ; preds = %bb.b
  %i.l = extractvalue { ptr, i64 } %i.k, 1
  %i.m = icmp eq i64 %i.l, 0
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  br i1 %i.m, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  invoke void @_RNvMNtCs5lEgW3tfVqv_6walrus16function_builderNtB2_15FunctionBuilder9func_body(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.e, ptr noalias nofree noundef nonnull align 8 dereferenceable(128) %i.h)
          to label %bb.f unwind label %.body.thread37

bb.e:                                             ; preds = %bb.c
  call fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCs5lEgW3tfVqv_6walrus16function_builder15FunctionBuilderECs7gfv9tzbXmh_6yara_x(ptr noalias nofree noundef align 8 dereferenceable(128) %i.h)
  br label %bb.q

bb.f:                                             ; preds = %bb.d
  call void @llvm.experimental.noalias.scope.decl(metadata !5165)
  %i.n = load ptr, ptr %i.e, align 8, !alias.scope !5165, !nonnull !6, !align !14, !noundef !6
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 24
  %i.p = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.q = load i64, ptr %i.p, align 8, !alias.scope !5165, !noundef !6
  %i.r = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  %i.s = load i32, ptr %i.r, align 8, !alias.scope !5165, !noundef !6
  %i.t = invoke noundef nonnull align 8 ptr @_RNvXs2_NtCs5lEgW3tfVqv_6walrus15tombstone_arenaINtB5_14TombstoneArenaNtNtB7_2ir8InstrSeqEINtNtNtCskKLDkoKarTP_4core3ops5index8IndexMutINtCsiukO0zjz20O_8id_arena2IdB15_EE9index_mutCs7gfv9tzbXmh_6yara_x(ptr noalias nofree noundef nonnull align 8 dereferenceable(64) %i.o, i64 noundef %i.q, i32 noundef %i.s, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @3)
          to label %.noexc unwind label %.body.thread37, !noalias !5166 ; 4 uses

.noexc:                                           ; preds = %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !5166
  store i8 9, ptr %i.c, align 16, !noalias !5166
  %.sroa.4.i.sroa.3.0..sroa.4.0..sroa_idx.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  store i32 0, ptr %.sroa.4.i.sroa.3.0..sroa.4.0..sroa_idx.i.sroa_idx, align 16, !noalias !5166
  %.sroa.4.i.sroa.4.0..sroa.4.0..sroa_idx.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 20
  store i32 0, ptr %.sroa.4.i.sroa.4.0..sroa.4.0..sroa_idx.i.sroa_idx, align 4, !noalias !5166
  %i.u = getelementptr inbounds nuw i8, ptr %i.c, i64 80
  store i32 -1, ptr %i.u, align 16, !noalias !5166
  %i.v = getelementptr inbounds nuw i8, ptr %i.t, i64 16 ; 2 uses
  %i.w = load i64, ptr %i.v, align 8, !alias.scope !5167, !noalias !5166, !noundef !6 ; 3 uses
  %i.x = load i64, ptr %i.t, align 8, !range !7, !alias.scope !5167, !noalias !5166, !noundef !6
  %i.y = icmp eq i64 %i.w, %i.x
  br i1 %i.y, label %bb.g, label %.noexc12

bb.g:                                             ; preds = %.noexc
  invoke void @_RNvMs4_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecTNtNtCs5lEgW3tfVqv_6walrus2ir5InstrNtBP_10InstrLocIdEE8grow_oneBR_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.t)
          to label %.noexc12 unwind label %bb.h, !noalias !5168

bb.h:                                             ; preds = %bb.g
  %i.z = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueTNtNtCs5lEgW3tfVqv_6walrus2ir5InstrNtBE_10InstrLocIdEECs7gfv9tzbXmh_6yara_x(ptr noalias nofree noundef nonnull align 16 dereferenceable(96) %i.c) #25
          to label %.body.thread32 unwind label %bb.i, !noalias !5166
end_hunk_0
