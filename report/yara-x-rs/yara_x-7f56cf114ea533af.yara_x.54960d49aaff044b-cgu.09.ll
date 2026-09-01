Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/yara-x-rs/original/yara_x-7f56cf114ea533af.yara_x.54960d49aaff044b-cgu.09?download=true
inline.NumInlined: 4282
inline.NumDeleted: 1610
loop-unroll.NumCompletelyUnrolled: 26
loop-unroll.NumRuntimeUnrolled: 24
loop-unroll.NumUnrolled: 50
begin_hunk_0_@_RNvMNtCs7gfv9tzbXmh_6yara_x4wasmNtB2_10WasmExport11get_methods:bb.a

.invoke.i:                                        ; preds = %bb.y, %bb.x, %bb.w
  %i.ax = phi ptr [ @8, %bb.y ], [ @8, %bb.x ], [ @7, %bb.w ]
  invoke void @_RNvNtCskKLDkoKarTP_4core6option13unwrap_failed(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.ax) #45
          to label %.cont.i unwind label %.thread62.i, !noalias !5675

.cont.i:                                          ; preds = %.invoke.i
  unreachable

bb.z:                                             ; preds = %bb.y
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ar, i64 64 ; 6 uses
  %i.az = load i64, ptr %i.ay, align 8, !range !17, !alias.scope !5693, !noalias !5675, !noundef !4
  %switch.i27.i = icmp ugt i64 %i.az, -3
  br i1 %switch.i27.i, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsexYYUdYSQU6_5alloc6borrow3CoweEEECs7gfv9tzbXmh_6yara_x.exit33.i, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  invoke void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs7gfv9tzbXmh_6yara_x(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.ay)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECs7gfv9tzbXmh_6yara_x.exit.i.i29.i unwind label %bb.ab, !noalias !5675

bb.ab:                                            ; preds = %bb.aa
  %i.ba = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs7gfv9tzbXmh_6yara_x(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.ay)
          to label %.thread56.i unwind label %bb.ac, !noalias !5675

bb.ac:                                            ; preds = %bb.ab
  %i.bb = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #43, !noalias !5675
  unreachable

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECs7gfv9tzbXmh_6yara_x.exit.i.i29.i: ; preds = %bb.aa
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs7gfv9tzbXmh_6yara_x(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.ay)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsexYYUdYSQU6_5alloc6borrow3CoweEEECs7gfv9tzbXmh_6yara_x.exit33.i unwind label %bb.ad, !noalias !5675

bb.ad:                                            ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECs7gfv9tzbXmh_6yara_x.exit.i.i29.i
  %i.bc = landingpad { ptr, i32 }
          cleanup
  br label %.thread56.i

.thread56.i:                                      ; preds = %bb.ad, %bb.ab
  %eh.lpad-body31.i = phi { ptr, i32 } [ %i.bc, %bb.ad ], [ %i.ba, %bb.ab ]
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ay, ptr noundef nonnull align 8 dereferenceable(24) %i.g, i64 24, i1 false), !noalias !5675
  br label %bb.ag

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsexYYUdYSQU6_5alloc6borrow3CoweEEECs7gfv9tzbXmh_6yara_x.exit33.i: ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECs7gfv9tzbXmh_6yara_x.exit.i.i29.i, %bb.z
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ay, ptr noundef nonnull align 8 dereferenceable(24) %i.g, i64 24, i1 false), !noalias !5675
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !5675
  %i.bd = load ptr, ptr %i.aa, align 8, !noalias !5675, !nonnull !4, !noundef !4
  %i.be = load i64, ptr %i.ac, align 8, !noalias !5675, !noundef !4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !5675
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.b, ptr noundef nonnull align 8 dereferenceable(48) %i.d, i64 48, i1 false), !noalias !5675
  invoke void @_RNvMs1_NtCsjqcU1oJFKXj_9hashbrown3mapINtB5_7HashMapReNtNtNtCs7gfv9tzbXmh_6yara_x5types4func4FuncNtCsaO0k6qjB80f_10rustc_hash13FxBuildHasherE6insertBV_(ptr noalias nofree noundef nonnull sret([48 x i8]) align 8 captures(none) dereferenceable(48) %i.c, ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.i, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.bd, i64 noundef %i.be, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(48) %i.b)
          to label %bb.ae unwind label %.critedge26.thread69.i, !noalias !5675

bb.ae:                                            ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsexYYUdYSQU6_5alloc6borrow3CoweEEECs7gfv9tzbXmh_6yara_x.exit33.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !5675
  %i.bf = load i64, ptr %i.c, align 8, !range !26, !alias.scope !5696, !noalias !5675, !noundef !4
  %i.bg = icmp eq i64 %i.bf, -1
  br i1 %i.bg, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCs7gfv9tzbXmh_6yara_x5types4func4FuncEEB13_.exit.i, label %bb.af

bb.af:                                            ; preds = %bb.ae
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCs7gfv9tzbXmh_6yara_x5types4func4FuncEBH_(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %i.c)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCs7gfv9tzbXmh_6yara_x5types4func4FuncEEB13_.exit.i unwind label %.critedge26.thread69.i, !noalias !5675

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCs7gfv9tzbXmh_6yara_x5types4func4FuncEEB13_.exit.i: ; preds = %bb.af, %bb.ae
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !5675
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !5675
  br label %_RNvNtCs7gfv9tzbXmh_6yara_x4wasm12wasm_exports.exit.i

bb.ag:                                            ; preds = %.thread56.i, %.thread62.i
  %.sroa.010.161.i = phi i1 [ false, %.thread56.i ], [ true, %.thread62.i ]
  %.pn60.i = phi { ptr, i32 } [ %eh.lpad-body31.i, %.thread56.i ], [ %lpad.thr_comm.i, %.thread62.i ] ; 2 uses
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCs7gfv9tzbXmh_6yara_x5types4func4FuncEBH_(ptr noalias nofree noundef align 8 dereferenceable(48) %i.d) #44
          to label %.critedge26.i unwind label %bb.u, !noalias !5675

bb.ah:                                            ; preds = %.critedge26.thread44.i, %.critedge26.i
  %.sroa.011.149.i = phi i1 [ %.sroa.011.2.i, %.critedge26.thread44.i ], [ false, %.critedge26.i ]
  %.pn20.pn48.i = phi { ptr, i32 } [ %i.ag, %.critedge26.thread44.i ], [ %.pn60.i, %.critedge26.i ] ; 2 uses
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsexYYUdYSQU6_5alloc6borrow3CoweEEECs7gfv9tzbXmh_6yara_x(ptr noalias nofree noundef align 8 dereferenceable(24) %i.g) #44
          to label %bb.h unwind label %bb.u, !noalias !5675

bb.ai:                                            ; preds = %.thread.i, %bb.h
  %.pn20.pn.pn40.i = phi { ptr, i32 } [ %i.af, %.thread.i ], [ %.pn20.pn48.i, %bb.h ]
  invoke void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECs7gfv9tzbXmh_6yara_x(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.h) #44
          to label %.thread66.i unwind label %bb.u, !noalias !5675

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsG258MDvU3F_3std11collections4hash3map7HashMapReNtNtNtCs7gfv9tzbXmh_6yara_x5types4func4FuncNtCsaO0k6qjB80f_10rustc_hash13FxBuildHasherEEB1D_.exit.i: ; preds = %.thread66.i
  resume { ptr, i32 } %.pn20.pn.pn.pn.i

_RINvMNtCs7gfv9tzbXmh_6yara_x4wasmNtB3_10WasmExport13get_functionsNCNvB2_11get_methods0EB5_.exit: ; preds = %_RNvNtCs7gfv9tzbXmh_6yara_x4wasm12wasm_exports.exit.i, %_RNCINvNvNtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4find5checkRNtNtCs7gfv9tzbXmh_6yara_x4wasm10WasmExportQNCNvMB1f_B1d_11get_methods0E0B1h_.exit.i.i, %_RNvNtCs7gfv9tzbXmh_6yara_x4wasm12wasm_exports.exit.preheader.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %i.i, i64 32, i1 false), !noalias !5699
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !5675
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMNtCs7gfv9tzbXmh_6yara_x4wasmNtB2_10WasmExport28fully_qualified_mangled_name(ptr dead_on_unwind noalias nofree noundef writable sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(112) %1) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 12 uses
  %i.b = alloca [104 x i8], align 8               ; 4 uses
  %i.c = alloca [24 x i8], align 8                ; 4 uses
  %i.d = alloca [24 x i8], align 8                ; 6 uses
  %i.e = alloca [24 x i8], align 8                ; 6 uses
  %i.f = alloca [32 x i8], align 8                ; 7 uses
  %i.g = alloca [16 x i8], align 8                ; 5 uses
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 88
  %i.i = load ptr, ptr %i.h, align 8, !noundef !4
  %.not = icmp eq ptr %i.i, null
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.j = tail call noundef align 8 ptr @_RINvNvCsf6TnPd79eKd_9inventory1__9into_iterRDNtNtCs7gfv9tzbXmh_6yara_x7modules16RegisteredModuleEL_EBL_() ; 2 uses
  %.not2564 = icmp eq ptr %i.j, null
  br i1 %.not2564, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.b
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.l = load ptr, ptr %i.k, align 8, !nonnull !4 ; 10 uses
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.n = load i64, ptr %i.m, align 8              ; 17 uses
  %i.o = icmp ult i64 %i.n, 17
  %i.p = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.q = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.r = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  %i.s = icmp samesign ult i64 %i.n, 16
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.u = load ptr, ptr %i.t, align 8, !nonnull !4, !noundef !4
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.w = load i64, ptr %i.v, align 8, !noundef !4 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  call void @_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs7gfv9tzbXmh_6yara_x(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.e, i64 noundef %i.w, i1 noundef zeroext false, i64 noundef 1, i64 noundef 1)
  %i.x = load i64, ptr %i.e, align 8, !range !43, !noundef !4
  %i.y = trunc nuw i64 %i.x to i1
  %i.z = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.aa = load i64, ptr %i.z, align 8, !range !207, !noundef !4 ; 3 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %i.e, i64 16 ; 2 uses
  br i1 %i.y, label %bb.ai, label %bb.aj, !prof !21

bb.d:                                             ; preds = %.lr.ph, %_RNvXst_NtNtCskKLDkoKarTP_4core3str7patternReNtB5_7Pattern15is_contained_in.exit.thread32
  %.sroa.08.065 = phi ptr [ %i.j, %.lr.ph ], [ %i.ae, %_RNvXst_NtNtCskKLDkoKarTP_4core3str7patternReNtB5_7Pattern15is_contained_in.exit.thread32 ] ; 2 uses
  %i.ac = load ptr, ptr %.sroa.08.065, align 8, !nonnull !4, !noundef !4 ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %.sroa.08.065, i64 16
  %i.ae = load ptr, ptr %i.ad, align 8, !align !11, !noundef !4 ; 2 uses
  %i.af = load ptr, ptr %i.ac, align 8, !nonnull !4, !noundef !4 ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %i.ac, i64 8
  %i.ah = load ptr, ptr %i.ag, align 8, !nonnull !4, !align !11, !noundef !4 ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 48
  %i.aj = load ptr, ptr %i.ai, align 8, !invariant.load !4, !nonnull !4
  %i.ak = tail call { ptr, i64 } %i.aj(ptr noundef nonnull %i.af) #49 ; 2 uses
  %i.al = extractvalue { ptr, i64 } %i.ak, 0      ; 10 uses
  %.not27 = icmp eq ptr %i.al, null
  br i1 %.not27, label %_RNvXst_NtNtCskKLDkoKarTP_4core3str7patternReNtB5_7Pattern15is_contained_in.exit.thread32, label %bb.j

._crit_edge:                                      ; preds = %_RNvXst_NtNtCskKLDkoKarTP_4core3str7patternReNtB5_7Pattern15is_contained_in.exit.thread32, %bb.b
  %i.am = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.an = load ptr, ptr %i.am, align 8, !nonnull !4, !noundef !4
  %i.ao = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.ap = load i64, ptr %i.ao, align 8, !noundef !4 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  call void @_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs7gfv9tzbXmh_6yara_x(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.d, i64 noundef %i.ap, i1 noundef zeroext false, i64 noundef 1, i64 noundef 1)
  %i.aq = load i64, ptr %i.d, align 8, !range !43, !noundef !4
  %i.ar = trunc nuw i64 %i.aq to i1
  %i.as = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.at = load i64, ptr %i.as, align 8, !range !207, !noundef !4 ; 3 uses
  %i.au = getelementptr inbounds nuw i8, ptr %i.d, i64 16 ; 2 uses
  br i1 %i.ar, label %bb.e, label %bb.f, !prof !21

bb.e:                                             ; preds = %._crit_edge
  %i.av = load i64, ptr %i.au, align 8
  tail call void @_RNvNtCsexYYUdYSQU6_5alloc7raw_vec12handle_error(i64 noundef %i.at, i64 %i.av) #45
  unreachable

bb.f:                                             ; preds = %._crit_edge
  %i.aw = load ptr, ptr %i.au, align 8, !nonnull !4, !noundef !4 ; 2 uses
  %i.ax = icmp ule i64 %i.ap, %i.at
  tail call void @llvm.assume(i1 %i.ax)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  %.not26 = icmp eq i64 %i.ap, 0
  br i1 %.not26, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.h, %bb.f
  store i64 %i.at, ptr %0, align 8
  %.sroa.411.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.aw, ptr %.sroa.411.0..sroa_idx, align 8
  %.sroa.612.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.ap, ptr %.sroa.612.0..sroa_idx, align 8
  br label %bb.i

bb.h:                                             ; preds = %bb.f
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.aw, ptr nonnull align 1 %i.an, i64 %i.ap, i1 false)
  br label %bb.g

bb.i:                                             ; preds = %bb.ak, %.split, %bb.g
  ret void

bb.j:                                             ; preds = %bb.d
  %i.ay = extractvalue { ptr, i64 } %i.ak, 1      ; 18 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5700)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5703)
  %i.az = icmp eq i64 %i.ay, 0
  br i1 %i.az, label %.split, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ba = icmp ult i64 %i.ay, %i.n
  br i1 %i.ba, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.bb = icmp eq i64 %i.ay, 1
  br i1 %i.bb, label %bb.o, label %bb.n

bb.m:                                             ; preds = %bb.k
  %i.bc = icmp eq i64 %i.ay, %i.n
  br i1 %i.bc, label %bb.ah, label %_RNvXst_NtNtCskKLDkoKarTP_4core3str7patternReNtB5_7Pattern15is_contained_in.exit.thread32

bb.n:                                             ; preds = %bb.l
  %i.bd = icmp ult i64 %i.ay, 33
  br i1 %i.bd, label %bb.r, label %_RNvNtNtCskKLDkoKarTP_4core3str7pattern13simd_contains.exit.i

bb.o:                                             ; preds = %bb.l
  %.val.i = load i8, ptr %i.al, align 1, !alias.scope !5700, !noalias !5703, !noundef !4 ; 2 uses
  br i1 %i.s, label %.lr.ph.i.i.i, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.be = tail call { i64, i64 } @_RNvNtNtCskKLDkoKarTP_4core5slice6memchr14memchr_aligned(i8 noundef %.val.i, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.l, i64 noundef range(i64 0, -9223372036854775808) %i.n), !noalias !5700 ; 2 uses
  %i.bf = extractvalue { i64, i64 } %i.be, 0
  %i.bg = trunc nuw i64 %i.bf to i1
  br i1 %i.bg, label %.loopexit9.i.i.i.loopexit36, label %_RNvXst_NtNtCskKLDkoKarTP_4core3str7patternReNtB5_7Pattern15is_contained_in.exit.thread32

.loopexit9.i.i.i.loopexit36:                      ; preds = %bb.p
  %i.bh = extractvalue { i64, i64 } %i.be, 1
  br label %.loopexit9.i.i.i

.loopexit9.i.i.i:                                 ; preds = %.lr.ph.i.i.i, %.loopexit9.i.i.i.loopexit36
  %.sroa.5.0.i.i.i = phi i64 [ %i.bh, %.loopexit9.i.i.i.loopexit36 ], [ %.sroa.04.011.i.i.i, %.lr.ph.i.i.i ]
  %i.bi = icmp ult i64 %.sroa.5.0.i.i.i, %i.n
  tail call void @llvm.assume(i1 %i.bi)
  br label %.split

.lr.ph.i.i.i:                                     ; preds = %bb.o, %bb.q
  %.sroa.04.011.i.i.i = phi i64 [ %i.bm, %bb.q ], [ 0, %bb.o ] ; 3 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %i.l, i64 %.sroa.04.011.i.i.i
  %i.bk = load i8, ptr %i.bj, align 1, !alias.scope !5705, !noalias !5700, !noundef !4
  %i.bl = icmp eq i8 %i.bk, %.val.i
  br i1 %i.bl, label %.loopexit9.i.i.i, label %bb.q

bb.q:                                             ; preds = %.lr.ph.i.i.i
  %i.bm = add nuw nsw i64 %.sroa.04.011.i.i.i, 1  ; 2 uses
  %exitcond.not.i.i.i = icmp eq i64 %i.bm, %i.n
  br i1 %exitcond.not.i.i.i, label %_RNvXst_NtNtCskKLDkoKarTP_4core3str7patternReNtB5_7Pattern15is_contained_in.exit.thread32, label %.lr.ph.i.i.i

_RNvNtNtCskKLDkoKarTP_4core3str7pattern13simd_contains.exit.i: ; preds = %bb.t, %bb.n
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !5710
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !5710
  call void @_RNvMsu_NtNtCskKLDkoKarTP_4core3str7patternNtB5_11StrSearcher3new(ptr noalias nofree noundef nonnull sret([104 x i8]) align 8 captures(none) dereferenceable(104) %i.b, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.l, i64 noundef %i.n, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.al, i64 noundef %i.ay)
  call fastcc void @_RNvXsv_NtNtCskKLDkoKarTP_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher10next_match(ptr noalias nofree noundef align 8 captures(address) dereferenceable(24) %i.c, ptr noalias nofree noundef align 8 dereferenceable(104) %i.b) #49
  %i.bn = load i64, ptr %i.c, align 8, !range !43, !noalias !5710, !noundef !4
  %i.bo = trunc nuw nsw i64 %i.bn to i8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !5710
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !5710
  br label %_RNvXst_NtNtCskKLDkoKarTP_4core3str7patternReNtB5_7Pattern15is_contained_in.exit

bb.r:                                             ; preds = %bb.n
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5711)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5714)
  %i.bp = load i8, ptr %i.al, align 1, !alias.scope !5716, !noalias !5717, !noundef !4 ; 3 uses
  %i.bq = add nsw i64 %i.ay, -1                   ; 2 uses
  %i.br = icmp eq i64 %i.ay, 2
  br i1 %i.br, label %.thread.i.i, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.bs = tail call i64 @llvm.usub.sat.i64(i64 range(i64 2, 33) %i.ay, i64 4)
  br label %.lr.ph161

bb.t:                                             ; preds = %_RNCINvNvNtNtNtNtCskKLDkoKarTP_4core4iter6traits12double_ended19DoubleEndedIterator5rfind5checkjNCNvNtNtBe_3str7pattern13simd_contains0E0Cs7gfv9tzbXmh_6yara_x.exit.i.i.i
  %i.bt = icmp ult i64 %i.bs, %i.bv
  br i1 %i.bt, label %.lr.ph161, label %_RNvNtNtCskKLDkoKarTP_4core3str7pattern13simd_contains.exit.i

.lr.ph161:                                        ; preds = %bb.s, %bb.t
  %i.bu = phi i64 [ %i.ay, %bb.s ], [ %i.bv, %bb.t ]
  %i.bv = add nsw i64 %i.bu, -1                   ; 6 uses
  %i.bw = icmp ult i64 %i.bv, %i.ay
  br i1 %i.bw, label %_RNCINvNvNtNtNtNtCskKLDkoKarTP_4core4iter6traits12double_ended19DoubleEndedIterator5rfind5checkjNCNvNtNtBe_3str7pattern13simd_contains0E0Cs7gfv9tzbXmh_6yara_x.exit.i.i.i, label %bb.u

bb.u:                                             ; preds = %.lr.ph161
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking18panic_bounds_check(i64 noundef %i.bv, i64 noundef range(i64 2, 33) %i.ay, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @148) #47, !noalias !5718
  unreachable

_RNCINvNvNtNtNtNtCskKLDkoKarTP_4core4iter6traits12double_ended19DoubleEndedIterator5rfind5checkjNCNvNtNtBe_3str7pattern13simd_contains0E0Cs7gfv9tzbXmh_6yara_x.exit.i.i.i: ; preds = %.lr.ph161
  %i.bx = getelementptr inbounds nuw i8, ptr %i.al, i64 %i.bv
  %i.by = load i8, ptr %i.bx, align 1, !alias.scope !5716, !noalias !5726, !noundef !4 ; 2 uses
  %.not.i.not.i.i.i = icmp eq i8 %i.by, %i.bp
  br i1 %.not.i.not.i.i.i, label %bb.t, label %bb.v

bb.v:                                             ; preds = %_RNCINvNvNtNtNtNtCskKLDkoKarTP_4core4iter6traits12double_ended19DoubleEndedIterator5rfind5checkjNCNvNtNtBe_3str7pattern13simd_contains0E0Cs7gfv9tzbXmh_6yara_x.exit.i.i.i
  %i.bz = add nuw nsw i64 %i.ay, 15
  %i.ca = icmp ult i64 %i.n, %i.bz
  br i1 %i.ca, label %.lr.ph.split.us.i.i.i, label %bb.w

.thread.i.i:                                      ; preds = %bb.r
  br i1 %i.o, label %.lr.ph.split.us.i.i.i, label %.thread92.i.i

.thread92.i.i:                                    ; preds = %.thread.i.i
  %i.cb = insertelement <16 x i8> poison, i8 %i.bp, i64 0
  %i.cc = shufflevector <16 x i8> %i.cb, <16 x i8> poison, <16 x i32> zeroinitializer
  %.phi.trans.insert.i.i = getelementptr inbounds nuw i8, ptr %i.al, i64 1
  %.pre.i.i = load i8, ptr %.phi.trans.insert.i.i, align 1, !alias.scope !5716, !noalias !5717
  br label %bb.x

bb.w:                                             ; preds = %bb.v
  %i.cd = insertelement <16 x i8> poison, i8 %i.bp, i64 0
  %i.ce = shufflevector <16 x i8> %i.cd, <16 x i8> poison, <16 x i32> zeroinitializer
  br label %bb.x

.lr.ph.split.us.i.i.i:                            ; preds = %.thread.i.i, %bb.v
  %bcmp.i.i.us22.i.i.i = tail call i32 @bcmp(ptr noundef nonnull readonly dereferenceable(1) %i.l, ptr noundef nonnull readonly dereferenceable(1) %i.al, i64 range(i64 2, 33) %i.ay), !alias.scope !5727, !noalias !5728
  %i.cf = icmp eq i32 %bcmp.i.i.us22.i.i.i, 0
  br i1 %i.cf, label %.split, label %_RNCINvNvNtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator3any5checkRShNCNvNtNtBe_3str7pattern13simd_containss_0E0Cs7gfv9tzbXmh_6yara_x.exit.backedge.us.i.i.i

.split.us.i.i.i:                                  ; preds = %_RNCINvNvNtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator3any5checkRShNCNvNtNtBe_3str7pattern13simd_containss_0E0Cs7gfv9tzbXmh_6yara_x.exit.backedge.us.i.i.i
  %i.cg = getelementptr inbounds nuw i8, ptr %.pn.i.i, i64 1 ; 2 uses
  %bcmp.i.i.us.i.i.i = tail call i32 @bcmp(ptr noundef nonnull readonly dereferenceable(1) %i.cg, ptr noundef nonnull readonly dereferenceable(1) %i.al, i64 range(i64 2, 33) %i.ay), !alias.scope !5727, !noalias !5728
  %i.ch = icmp eq i32 %bcmp.i.i.us.i.i.i, 0
  br i1 %i.ch, label %.split, label %_RNCINvNvNtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator3any5checkRShNCNvNtNtBe_3str7pattern13simd_containss_0E0Cs7gfv9tzbXmh_6yara_x.exit.backedge.us.i.i.i

_RNCINvNvNtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator3any5checkRShNCNvNtNtBe_3str7pattern13simd_containss_0E0Cs7gfv9tzbXmh_6yara_x.exit.backedge.us.i.i.i: ; preds = %.lr.ph.split.us.i.i.i, %.split.us.i.i.i
  %.pn.i.i = phi ptr [ %i.cg, %.split.us.i.i.i ], [ %i.l, %.lr.ph.split.us.i.i.i ]
  %.in.i.i = phi i64 [ %i.ci, %.split.us.i.i.i ], [ %i.n, %.lr.ph.split.us.i.i.i ]
  %i.ci = add i64 %.in.i.i, -1                    ; 2 uses
  %.not27.i.i.i = icmp ugt i64 %i.ay, %i.ci
  br i1 %.not27.i.i.i, label %_RNvXst_NtNtCskKLDkoKarTP_4core3str7patternReNtB5_7Pattern15is_contained_in.exit.thread32, label %.split.us.i.i.i

bb.x:                                             ; preds = %bb.w, %.thread92.i.i
  %i.cj = phi i8 [ %.pre.i.i, %.thread92.i.i ], [ %i.by, %bb.w ]
  %i.ck = phi <16 x i8> [ %i.cc, %.thread92.i.i ], [ %i.ce, %bb.w ] ; 6 uses
  %storemerge9194.i.i = phi i64 [ 1, %.thread92.i.i ], [ %i.bv, %bb.w ] ; 6 uses
  %i.cl = insertelement <16 x i8> poison, i8 %i.cj, i64 0
  %i.cm = shufflevector <16 x i8> %i.cl, <16 x i8> poison, <16 x i32> zeroinitializer ; 6 uses
  %i.cn = getelementptr inbounds nuw i8, ptr %i.al, i64 1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !5727
  store ptr %i.l, ptr %i.a, align 8, !noalias !5727
  store i64 %i.n, ptr %i.p, align 8, !noalias !5727
  store ptr %i.cn, ptr %i.q, align 8, !noalias !5727
  store i64 %i.bq, ptr %i.r, align 8, !noalias !5727
  %i.co = add nuw nsw i64 %i.ay, 63               ; 2 uses
  %.not.i.i = icmp ult i64 %i.co, %i.n
  br i1 %.not.i.i, label %.lr.ph.i.i, label %.preheader.i.i

.preheader.i.i:                                   ; preds = %bb.ab, %bb.x
  %.sroa.014.0.lcssa.i.i = phi i8 [ 0, %bb.x ], [ %.sroa.014.2.3.i.i, %bb.ab ] ; 2 uses
  %.sroa.06.0.lcssa.i.i = phi i64 [ 0, %bb.x ], [ %i.ek, %bb.ab ] ; 2 uses
  %i.cp = add nuw nsw i64 %i.ay, 15               ; 2 uses
  %i.cq = add i64 %.sroa.06.0.lcssa.i.i, %i.cp
  %i.cr = icmp uge i64 %i.cq, %i.n
  %i.cs = trunc nuw i8 %.sroa.014.0.lcssa.i.i to i1 ; 2 uses
  %or.cond3104.i.i = select i1 %i.cr, i1 true, i1 %i.cs
  br i1 %or.cond3104.i.i, label %._crit_edge.i.i, label %.lr.ph106.i.i

.lr.ph.i.i:                                       ; preds = %bb.x, %bb.ab
  %.sroa.06.0102.i.i = phi i64 [ %i.ek, %bb.ab ], [ 0, %bb.x ] ; 6 uses
  %i.ct = getelementptr inbounds nuw i8, ptr %i.l, i64 %.sroa.06.0102.i.i ; 5 uses
  %.sroa.0.0.copyload.i.i.i = load <16 x i8>, ptr %i.ct, align 1, !alias.scope !5717, !noalias !5732
  %i.cu = getelementptr inbounds nuw i8, ptr %i.ct, i64 %storemerge9194.i.i
  %.sroa.01.0.copyload.i.i.i = load <16 x i8>, ptr %i.cu, align 1, !alias.scope !5717, !noalias !5732
  %i.cv = icmp eq <16 x i8> %.sroa.0.0.copyload.i.i.i, %i.ck
  %i.cw = icmp eq <16 x i8> %.sroa.01.0.copyload.i.i.i, %i.cm
  %i.cx = and <16 x i1> %i.cv, %i.cw
  %i.cy = bitcast <16 x i1> %i.cx to i16          ; 2 uses
  %i.cz = getelementptr inbounds nuw i8, ptr %i.ct, i64 16 ; 2 uses
  %.sroa.0.0.copyload.i.1.i.i = load <16 x i8>, ptr %i.cz, align 1, !alias.scope !5717, !noalias !5732
  %i.da = getelementptr inbounds nuw i8, ptr %i.cz, i64 %storemerge9194.i.i
  %.sroa.01.0.copyload.i.1.i.i = load <16 x i8>, ptr %i.da, align 1, !alias.scope !5717, !noalias !5732
  %i.db = icmp eq <16 x i8> %.sroa.0.0.copyload.i.1.i.i, %i.ck
  %i.dc = icmp eq <16 x i8> %.sroa.01.0.copyload.i.1.i.i, %i.cm
  %i.dd = and <16 x i1> %i.db, %i.dc
  %i.de = bitcast <16 x i1> %i.dd to i16          ; 2 uses
  %i.df = getelementptr inbounds nuw i8, ptr %i.ct, i64 32 ; 2 uses
  %.sroa.0.0.copyload.i.2.i.i = load <16 x i8>, ptr %i.df, align 1, !alias.scope !5717, !noalias !5732
  %i.dg = getelementptr inbounds nuw i8, ptr %i.df, i64 %storemerge9194.i.i
  %.sroa.01.0.copyload.i.2.i.i = load <16 x i8>, ptr %i.dg, align 1, !alias.scope !5717, !noalias !5732
  %i.dh = icmp eq <16 x i8> %.sroa.0.0.copyload.i.2.i.i, %i.ck
  %i.di = icmp eq <16 x i8> %.sroa.01.0.copyload.i.2.i.i, %i.cm
  %i.dj = and <16 x i1> %i.dh, %i.di
  %i.dk = bitcast <16 x i1> %i.dj to i16          ; 2 uses
  %i.dl = getelementptr inbounds nuw i8, ptr %i.ct, i64 48 ; 2 uses
  %.sroa.0.0.copyload.i.3.i.i = load <16 x i8>, ptr %i.dl, align 1, !alias.scope !5717, !noalias !5732
  %i.dm = getelementptr inbounds nuw i8, ptr %i.dl, i64 %storemerge9194.i.i
  %.sroa.01.0.copyload.i.3.i.i = load <16 x i8>, ptr %i.dm, align 1, !alias.scope !5717, !noalias !5732
  %i.dn = icmp eq <16 x i8> %.sroa.0.0.copyload.i.3.i.i, %i.ck
  %i.do = icmp eq <16 x i8> %.sroa.01.0.copyload.i.3.i.i, %i.cm
  %i.dp = and <16 x i1> %i.dn, %i.do
  %i.dq = bitcast <16 x i1> %i.dp to i16          ; 2 uses
  %i.dr = icmp eq i16 %i.cy, 0
  br i1 %i.dr, label %.preheader95.1.i.i, label %bb.ac

.preheader95.1.i.i:                               ; preds = %bb.ac, %.lr.ph.i.i
  %.sroa.014.2.i.i = phi i8 [ 0, %.lr.ph.i.i ], [ %i.ep, %bb.ac ] ; 3 uses
  %i.ds = icmp eq i16 %i.de, 0
  br i1 %i.ds, label %.preheader95.2.i.i, label %bb.y

bb.y:                                             ; preds = %.preheader95.1.i.i
  %i.dt = or disjoint i64 %.sroa.06.0102.i.i, 16
  %i.du = trunc nuw i8 %.sroa.014.2.i.i to i1
  %i.dv = call fastcc noundef zeroext i1 @_RNCNvNtNtCskKLDkoKarTP_4core3str7pattern13simd_containss0_0Cs7gfv9tzbXmh_6yara_x(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.a, i64 noundef %i.dt, i16 noundef %i.de, i1 noundef zeroext %i.du) #49
  %i.dw = zext i1 %i.dv to i8
  %i.dx = or i8 %.sroa.014.2.i.i, %i.dw
  br label %.preheader95.2.i.i

.preheader95.2.i.i:                               ; preds = %bb.y, %.preheader95.1.i.i
  %.sroa.014.2.1.i.i = phi i8 [ %.sroa.014.2.i.i, %.preheader95.1.i.i ], [ %i.dx, %bb.y ] ; 3 uses
  %i.dy = icmp eq i16 %i.dk, 0
  br i1 %i.dy, label %.preheader95.3.i.i, label %bb.z

bb.z:                                             ; preds = %.preheader95.2.i.i
  %i.dz = or disjoint i64 %.sroa.06.0102.i.i, 32
  %i.ea = trunc nuw i8 %.sroa.014.2.1.i.i to i1
  %i.eb = call fastcc noundef zeroext i1 @_RNCNvNtNtCskKLDkoKarTP_4core3str7pattern13simd_containss0_0Cs7gfv9tzbXmh_6yara_x(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.a, i64 noundef %i.dz, i16 noundef %i.dk, i1 noundef zeroext %i.ea) #49
  %i.ec = zext i1 %i.eb to i8
  %i.ed = or i8 %.sroa.014.2.1.i.i, %i.ec
  br label %.preheader95.3.i.i

.preheader95.3.i.i:                               ; preds = %bb.z, %.preheader95.2.i.i
  %.sroa.014.2.2.i.i = phi i8 [ %.sroa.014.2.1.i.i, %.preheader95.2.i.i ], [ %i.ed, %bb.z ] ; 3 uses
  %i.ee = icmp eq i16 %i.dq, 0
  br i1 %i.ee, label %bb.ab, label %bb.aa

bb.aa:                                            ; preds = %.preheader95.3.i.i
  %i.ef = or disjoint i64 %.sroa.06.0102.i.i, 48
  %i.eg = trunc nuw i8 %.sroa.014.2.2.i.i to i1
  %i.eh = call fastcc noundef zeroext i1 @_RNCNvNtNtCskKLDkoKarTP_4core3str7pattern13simd_containss0_0Cs7gfv9tzbXmh_6yara_x(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.a, i64 noundef %i.ef, i16 noundef %i.dq, i1 noundef zeroext %i.eg) #49
  %i.ei = zext i1 %i.eh to i8
  %i.ej = or i8 %.sroa.014.2.2.i.i, %i.ei
  br label %bb.ab

bb.ab:                                            ; preds = %bb.aa, %.preheader95.3.i.i
  %.sroa.014.2.3.i.i = phi i8 [ %.sroa.014.2.2.i.i, %.preheader95.3.i.i ], [ %i.ej, %bb.aa ] ; 2 uses
  %i.ek = add i64 %.sroa.06.0102.i.i, 64          ; 3 uses
  %i.el = add i64 %i.ek, %i.co
  %i.em = icmp uge i64 %i.el, %i.n
  %i.en = trunc nuw i8 %.sroa.014.2.3.i.i to i1
  %or.cond.i.i = select i1 %i.em, i1 true, i1 %i.en
  br i1 %or.cond.i.i, label %.preheader.i.i, label %.lr.ph.i.i

bb.ac:                                            ; preds = %.lr.ph.i.i
  %i.eo = call fastcc noundef zeroext i1 @_RNCNvNtNtCskKLDkoKarTP_4core3str7pattern13simd_containss0_0Cs7gfv9tzbXmh_6yara_x(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.a, i64 noundef %.sroa.06.0102.i.i, i16 noundef %i.cy, i1 noundef zeroext false) #49
  %i.ep = zext i1 %i.eo to i8
  br label %.preheader95.1.i.i

._crit_edge.i.i:                                  ; preds = %bb.ad, %.preheader.i.i
  %.sroa.014.3.lcssa.i.i = phi i8 [ %.sroa.014.0.lcssa.i.i, %.preheader.i.i ], [ %.sroa.014.4.i.i, %bb.ad ] ; 2 uses
  %.lcssa.i.i = phi i1 [ %i.cs, %.preheader.i.i ], [ %i.fj, %bb.ad ]
  %i.eq = sub nuw i64 %i.n, %i.bq
  %i.er = add i64 %i.eq, -16                      ; 2 uses
  %i.es = getelementptr inbounds nuw i8, ptr %i.l, i64 %i.er ; 2 uses
  %.sroa.0.0.copyload.i57.i.i = load <16 x i8>, ptr %i.es, align 1, !alias.scope !5717, !noalias !5735
  %i.et = getelementptr inbounds nuw i8, ptr %i.es, i64 %storemerge9194.i.i
  %.sroa.01.0.copyload.i58.i.i = load <16 x i8>, ptr %i.et, align 1, !alias.scope !5717, !noalias !5735
  %i.eu = icmp eq <16 x i8> %.sroa.0.0.copyload.i57.i.i, %i.ck
  %i.ev = icmp eq <16 x i8> %.sroa.01.0.copyload.i58.i.i, %i.cm
  %i.ew = and <16 x i1> %i.eu, %i.ev
  %i.ex = bitcast <16 x i1> %i.ew to i16          ; 2 uses
  %i.ey = icmp eq i16 %i.ex, 0
  br i1 %i.ey, label %bb.af, label %bb.ag

.lr.ph106.i.i:                                    ; preds = %.preheader.i.i, %bb.ad
  %.sroa.06.1105.i.i = phi i64 [ %i.fg, %bb.ad ], [ %.sroa.06.0.lcssa.i.i, %.preheader.i.i ] ; 3 uses
  %i.ez = getelementptr inbounds nuw i8, ptr %i.l, i64 %.sroa.06.1105.i.i ; 2 uses
  %.sroa.0.0.copyload.i59.i.i = load <16 x i8>, ptr %i.ez, align 1, !alias.scope !5717, !noalias !5738
  %i.fa = getelementptr inbounds nuw i8, ptr %i.ez, i64 %storemerge9194.i.i
  %.sroa.01.0.copyload.i60.i.i = load <16 x i8>, ptr %i.fa, align 1, !alias.scope !5717, !noalias !5738
  %i.fb = icmp eq <16 x i8> %.sroa.0.0.copyload.i59.i.i, %i.ck
  %i.fc = icmp eq <16 x i8> %.sroa.01.0.copyload.i60.i.i, %i.cm
  %i.fd = and <16 x i1> %i.fb, %i.fc
  %i.fe = bitcast <16 x i1> %i.fd to i16          ; 2 uses
  %i.ff = icmp eq i16 %i.fe, 0
  br i1 %i.ff, label %bb.ad, label %bb.ae

bb.ad:                                            ; preds = %bb.ae, %.lr.ph106.i.i
  %.sroa.014.4.i.i = phi i8 [ 0, %.lr.ph106.i.i ], [ %i.fl, %bb.ae ] ; 2 uses
  %i.fg = add i64 %.sroa.06.1105.i.i, 16          ; 2 uses
end_hunk_0
