Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/typst-rs/original/typst_eval-c4041f41e6cae5ac.typst_eval.3c87175780ab122f-cgu.0?download=true
inline.NumInlined: 6644
inline.NumDeleted: 3025
loop-unroll.NumCompletelyUnrolled: 5
loop-unroll.NumRuntimeUnrolled: 23
loop-unroll.NumUnrolled: 28
begin_hunk_0_@_RNvMNtCs5cbCQMMIObr_10typst_eval2vmNtB2_2Vm4bind:bb.a
  %i.by = getelementptr inbounds i8, ptr %.sroa.04.0.val, i64 -16
  %i.bz = atomicrmw add ptr %i.by, i64 1 monotonic, align 8
  %i.ca = icmp slt i64 %i.bz, 0
  br i1 %i.ca, label %bb.ae, label %bb.ag, !prof !40

bb.ae:                                            ; preds = %bb.ad
  invoke fastcc void @_RINvNtCsakL8LGkl72C_4ecow3vec18ref_count_overflowhECs5cbCQMMIObr_10typst_eval(ptr noundef nonnull %.sroa.04.0.val) #42
          to label %.noexc104 unwind label %.thread125

.noexc104:                                        ; preds = %bb.ae
  unreachable

bb.af:                                            ; preds = %.loopexit
  %.sroa.079.0.copyload = load ptr, ptr %.sroa.04.0, align 1
  %.sroa.480.0.copyload = load i64, ptr %i.bx, align 1
  br label %bb.ag

bb.ag:                                            ; preds = %bb.ac, %bb.ad, %bb.af
  %.sroa.072.0 = phi ptr [ %.sroa.079.0.copyload, %bb.af ], [ %.sroa.04.0.val, %bb.ad ], [ inttoptr (i64 16 to ptr), %bb.ac ]
  %.sroa.574.0 = phi i64 [ %.sroa.480.0.copyload, %bb.af ], [ %.sroa.04.0.val89, %bb.ad ], [ %.sroa.04.0.val89, %bb.ac ]
  %i.cb = getelementptr inbounds nuw i8, ptr %0, i64 48
  store ptr %.sroa.072.0, ptr %i.c, align 8
  %.sroa.574.0..sroa_idx75 = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store i64 %.sroa.574.0, ptr %.sroa.574.0..sroa_idx75, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.b, ptr noundef nonnull align 8 dereferenceable(56) %2, i64 56, i1 false)
  %i.cc = call noundef nonnull align 8 ptr @_RNvMs0_NtNtCsdaEETE4DqmE_13typst_library11foundations5scopeNtB5_5Scope4bind(ptr noalias nofree noundef nonnull align 8 dereferenceable(64) %i.cb, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(16) %i.c, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(56) %i.b) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  ret void

bb.ah:                                            ; preds = %.thread121, %bb.r, %.body91, %bb.n, %bb.i
  %i.cd = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #43
  unreachable

bb.ai:                                            ; preds = %.thread121
  resume { ptr, i32 } %.pn87120

.thread121:                                       ; preds = %bb.i, %.body91, %bb.l, %.thread125
  %.pn87120 = phi { ptr, i32 } [ %i.am, %bb.l ], [ %lpad.thr_comm, %.thread125 ], [ %i.aj, %bb.i ], [ %.pn, %.body91 ]
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsdaEETE4DqmE_13typst_library11foundations5scope7BindingECs5cbCQMMIObr_10typst_eval(ptr noalias nofree noundef align 8 dereferenceable(56) %2) #44
          to label %bb.ai unwind label %bb.ah
}

; Function Attrs: cold nonlazybind uwtable
define void @_RNvMNtCs5cbCQMMIObr_10typst_eval2vmNtB2_2Vm5trace(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(384) %0, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(32) %1) unnamed_addr #6 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [72 x i8], align 8                ; 8 uses
  %i.b = alloca [32 x i8], align 8                ; 4 uses
  %i.c = alloca [80 x i8], align 8                ; 4 uses
  %i.d = alloca [32 x i8], align 8                ; 4 uses
  %i.e = alloca [32 x i8], align 8                ; 5 uses
  %i.f = alloca [80 x i8], align 8                ; 8 uses
  %i.g = alloca [16 x i8], align 8                ; 5 uses
  %i.h = alloca [24 x i8], align 8                ; 7 uses
  %i.i = alloca [24 x i8], align 8                ; 6 uses
  %i.j = alloca [24 x i8], align 8                ; 5 uses
  %i.k = alloca [24 x i8], align 8                ; 8 uses
  %i.l = alloca [32 x i8], align 8                ; 8 uses
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 264
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.l, ptr noundef nonnull align 8 dereferenceable(32) %1, i64 32, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k)
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 344
  tail call void @llvm.experimental.noalias.scope.decl(metadata !13954)
  %i.o = load ptr, ptr %i.n, align 8, !alias.scope !13954, !nonnull !35, !align !92, !noundef !35 ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 352
  %i.q = load ptr, ptr %i.p, align 8, !alias.scope !13954, !noundef !35 ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 360
  %i.s = load ptr, ptr %i.r, align 8, !alias.scope !13954 ; 2 uses
  %.not.i = icmp eq ptr %i.q, null
  br i1 %.not.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.s) ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !noalias !13955
  invoke void @_RNvMs4_NtNtCsdaEETE4DqmE_13typst_library11foundations7contextNtB5_7Context6styles(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.i, ptr noalias nofree noundef nonnull readonly align 16 captures(address, read_provenance) dereferenceable(64) %i.o)
          to label %.noexc unwind label %.body.thread29

.noexc:                                           ; preds = %bb.b
  %i.t = invoke fastcc noundef i128 @_RINvNtCsloFShupyl5J_6comemo4hash4hashINtNtCs3oUPovFnLWP_4core6result6ResultNtNtNtCsdaEETE4DqmE_13typst_library11foundations6styles10StyleChainNtNtB1h_4diag12HintedStringEECs5cbCQMMIObr_10typst_eval(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.i)
          to label %bb.e unwind label %bb.d, !noalias !13955

bb.c:                                             ; preds = %bb.a
  invoke void @_RNvMs4_NtNtCsdaEETE4DqmE_13typst_library11foundations7contextNtB5_7Context6styles(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.k, ptr noalias nofree noundef nonnull readonly align 16 captures(address, read_provenance) dereferenceable(64) %i.o)
          to label %_RNvMs1_NvNtNtCsdaEETE4DqmE_13typst_library11foundations7context1__NtB5_15___ComemoSurface6styles.exit unwind label %.body.thread29

bb.d:                                             ; preds = %bb.e, %.noexc
  %i.u = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6result6ResultNtNtNtCsdaEETE4DqmE_13typst_library11foundations6styles10StyleChainNtNtB13_4diag12HintedStringEECs5cbCQMMIObr_10typst_eval(ptr noalias nofree noundef align 8 dereferenceable(24) %i.i) #44
          to label %.body.thread unwind label %bb.g, !noalias !13955

bb.e:                                             ; preds = %.noexc
  %i.v = getelementptr inbounds nuw i8, ptr %i.s, i64 24
  %i.w = load ptr, ptr %i.v, align 8, !invariant.load !35, !noalias !13955, !nonnull !35
  %i.x = invoke noundef zeroext i1 %i.w(ptr noundef nonnull %i.q, i8 noundef 1, i128 noundef %i.t)
          to label %bb.f unwind label %bb.d, !noalias !13955 ; 0 uses

bb.f:                                             ; preds = %bb.e
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.k, ptr noundef nonnull align 8 dereferenceable(24) %i.i, i64 24, i1 false), !noalias !13954
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !13955
  br label %_RNvMs1_NvNtNtCsdaEETE4DqmE_13typst_library11foundations7context1__NtB5_15___ComemoSurface6styles.exit

bb.g:                                             ; preds = %bb.d
  %i.y = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #43, !noalias !13955
  unreachable

.body.thread29:                                   ; preds = %bb.m, %bb.k, %bb.c, %bb.b, %bb.i
  %lpad.thr_comm = landingpad { ptr, i32 }
          cleanup
  br label %.body.thread

_RNvMs1_NvNtNtCsdaEETE4DqmE_13typst_library11foundations7context1__NtB5_15___ComemoSurface6styles.exit: ; preds = %bb.f, %bb.c
  %i.z = load ptr, ptr %i.k, align 8, !noundef !35 ; 2 uses
  %i.aa = icmp eq ptr %i.z, null
  %i.ab = getelementptr inbounds nuw i8, ptr %i.k, i64 8 ; 2 uses
  br i1 %i.aa, label %bb.h, label %bb.m

bb.h:                                             ; preds = %_RNvMs1_NvNtNtCsdaEETE4DqmE_13typst_library11foundations7context1__NtB5_15___ComemoSurface6styles.exit
  call void @llvm.experimental.noalias.scope.decl(metadata !13956)
  %.val.i = load ptr, ptr %i.ab, align 8, !alias.scope !13956, !nonnull !35, !noundef !35 ; 4 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %i.k, i64 16
  %.val1.i = load i64, ptr %i.ac, align 8, !alias.scope !13956
  %.not.i.i.i.i.i = icmp eq ptr %.val.i, inttoptr (i64 16 to ptr)
  %i.ad = getelementptr inbounds i8, ptr %.val.i, i64 -16 ; 2 uses
  br i1 %.not.i.i.i.i.i, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6result6ResultNtNtNtCsdaEETE4DqmE_13typst_library11foundations6styles10StyleChainNtNtB13_4diag12HintedStringEECs5cbCQMMIObr_10typst_eval.exit.thread, label %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orbNCNvXs7_BL_INtBL_6EcoVecNtNtBN_6string9EcoStringENtNtNtB5_3ops4drop4Drop4drop0ECs5cbCQMMIObr_10typst_eval.exit.i.i.i.i

_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orbNCNvXs7_BL_INtBL_6EcoVecNtNtBN_6string9EcoStringENtNtNtB5_3ops4drop4Drop4drop0ECs5cbCQMMIObr_10typst_eval.exit.i.i.i.i: ; preds = %bb.h
  %i.ae = atomicrmw add ptr %i.ad, i64 -1 release, align 8, !noalias !13956
  %.not.i.i.i.i = icmp eq i64 %i.ae, 1
  br i1 %.not.i.i.i.i, label %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orjNCNvMBL_INtBL_6EcoVecNtNtBN_6string9EcoStringE8capacity0ECs5cbCQMMIObr_10typst_eval.exit.i.i.i.i, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6result6ResultNtNtNtCsdaEETE4DqmE_13typst_library11foundations6styles10StyleChainNtNtB13_4diag12HintedStringEECs5cbCQMMIObr_10typst_eval.exit.thread

_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orjNCNvMBL_INtBL_6EcoVecNtNtBN_6string9EcoStringE8capacity0ECs5cbCQMMIObr_10typst_eval.exit.i.i.i.i: ; preds = %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orbNCNvXs7_BL_INtBL_6EcoVecNtNtBN_6string9EcoStringENtNtNtB5_3ops4drop4Drop4drop0ECs5cbCQMMIObr_10typst_eval.exit.i.i.i.i
  fence acquire
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !13956
  %i.af = getelementptr i8, ptr %.val.i, i64 -8
  %.val.i.i.i.i.i = load i64, ptr %i.af, align 8, !noalias !13956, !noundef !35 ; 2 uses
  %i.ag = icmp ult i64 %.val.i.i.i.i.i, 1152921504606846976
  %i.ah = shl i64 %.val.i.i.i.i.i, 4              ; 2 uses
  %i.ai = icmp ult i64 %i.ah, 9223372036854775784
  %narrow.i.i.i.i.i.i = and i1 %i.ag, %i.ai
  br i1 %narrow.i.i.i.i.i.i, label %_RNvMs0_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVecNtNtB7_6string9EcoStringE4sizeCs5cbCQMMIObr_10typst_eval.exit.i.i.i.i, label %bb.i, !prof !37

bb.i:                                             ; preds = %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orjNCNvMBL_INtBL_6EcoVecNtNtBN_6string9EcoStringE8capacity0ECs5cbCQMMIObr_10typst_eval.exit.i.i.i.i
  invoke void @_RNvNtCsakL8LGkl72C_4ecow3vec17capacity_overflow() #42
          to label %.noexc11 unwind label %.body.thread29

.noexc11:                                         ; preds = %bb.i
  unreachable

_RNvMs0_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVecNtNtB7_6string9EcoStringE4sizeCs5cbCQMMIObr_10typst_eval.exit.i.i.i.i: ; preds = %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orjNCNvMBL_INtBL_6EcoVecNtNtBN_6string9EcoStringE8capacity0ECs5cbCQMMIObr_10typst_eval.exit.i.i.i.i
  %i.aj = add nuw nsw i64 %i.ah, 16
  %i.ak = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  store ptr %i.ad, ptr %i.ak, align 8, !noalias !13956
  store i64 8, ptr %i.h, align 8, !noalias !13956
  %i.al = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  store i64 %i.aj, ptr %i.al, align 8, !noalias !13956
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueSNtNtCsakL8LGkl72C_4ecow6string9EcoStringECs5cbCQMMIObr_10typst_eval(ptr noalias nofree noundef nonnull align 8 %.val.i, i64 noundef %.val1.i)
          to label %bb.k unwind label %bb.j, !noalias !13956

bb.j:                                             ; preds = %_RNvMs0_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVecNtNtB7_6string9EcoStringE4sizeCs5cbCQMMIObr_10typst_eval.exit.i.i.i.i
  %i.am = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXNvXs7_NtCsakL8LGkl72C_4ecow3vecINtB8_6EcoVecpENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropNtB2_7DeallocBM_4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.h)
          to label %.body.thread unwind label %bb.l, !noalias !13956

bb.k:                                             ; preds = %_RNvMs0_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVecNtNtB7_6string9EcoStringE4sizeCs5cbCQMMIObr_10typst_eval.exit.i.i.i.i
  invoke void @_RNvXNvXs7_NtCsakL8LGkl72C_4ecow3vecINtB8_6EcoVecpENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropNtB2_7DeallocBM_4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.h)
          to label %.noexc12 unwind label %.body.thread29

.noexc12:                                         ; preds = %bb.k
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !13956
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6result6ResultNtNtNtCsdaEETE4DqmE_13typst_library11foundations6styles10StyleChainNtNtB13_4diag12HintedStringEECs5cbCQMMIObr_10typst_eval.exit.thread

bb.l:                                             ; preds = %bb.j
  %i.an = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #43, !noalias !13956
  unreachable

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6result6ResultNtNtNtCsdaEETE4DqmE_13typst_library11foundations6styles10StyleChainNtNtB13_4diag12HintedStringEECs5cbCQMMIObr_10typst_eval.exit.thread: ; preds = %bb.h, %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orbNCNvXs7_BL_INtBL_6EcoVecNtNtBN_6string9EcoStringENtNtNtB5_3ops4drop4Drop4drop0ECs5cbCQMMIObr_10typst_eval.exit.i.i.i.i, %.noexc12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k)
  br label %bb.n

bb.m:                                             ; preds = %_RNvMs1_NvNtNtCsdaEETE4DqmE_13typst_library11foundations7context1__NtB5_15___ComemoSurface6styles.exit
  %.sroa.6.0..sroa_idx3 = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.6.0..sroa_idx3, ptr noundef nonnull align 8 dereferenceable(16) %i.ab, i64 16, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k)
  store ptr %i.z, ptr %i.j, align 8
  %i.ao = invoke { ptr, i64 } @_RNvMsk_NtNtCsdaEETE4DqmE_13typst_library11foundations6stylesNtB5_10StyleChain6to_map(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.j)
          to label %bb.w unwind label %.body.thread29 ; 2 uses

bb.n:                                             ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6result6ResultNtNtNtCsdaEETE4DqmE_13typst_library11foundations6styles10StyleChainNtNtB13_4diag12HintedStringEECs5cbCQMMIObr_10typst_eval.exit.thread, %bb.w
  %.sroa.5.0 = phi i64 [ %i.br, %bb.w ], [ undef, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6result6ResultNtNtNtCsdaEETE4DqmE_13typst_library11foundations6styles10StyleChainNtNtB13_4diag12HintedStringEECs5cbCQMMIObr_10typst_eval.exit.thread ] ; 5 uses
  %.sroa.0.0 = phi ptr [ %i.bq, %bb.w ], [ null, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6result6ResultNtNtNtCsdaEETE4DqmE_13typst_library11foundations6styles10StyleChainNtNtB13_4diag12HintedStringEECs5cbCQMMIObr_10typst_eval.exit.thread ] ; 9 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !13957)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  store ptr %.sroa.0.0, ptr %i.g, align 8, !noalias !13958
  %i.ap = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  store i64 %.sroa.5.0, ptr %i.ap, align 8, !noalias !13958
  %i.aq = load ptr, ptr %i.m, align 8, !alias.scope !13957, !nonnull !35, !align !45, !noundef !35 ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 272
  %i.as = load ptr, ptr %i.ar, align 8, !alias.scope !13957, !noundef !35 ; 2 uses
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 280
  %i.au = load ptr, ptr %i.at, align 8, !alias.scope !13957 ; 2 uses
  %.not.not.i = icmp eq ptr %i.as, null
  br i1 %.not.not.i, label %.noexc16, label %bb.o

bb.o:                                             ; preds = %bb.n
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.au) ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !13958
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !13958
  invoke fastcc void @_RNvXsj_NtNtCsdaEETE4DqmE_13typst_library11foundations5valueNtB5_5ValueNtNtCs3oUPovFnLWP_4core5clone5Clone5clone(ptr noalias nofree noundef align 8 captures(none) dereferenceable(32) %i.e, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.l)
          to label %bb.p unwind label %.thread4.i, !noalias !13957

.noexc16:                                         ; preds = %bb.n
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !13958
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.b, ptr noundef nonnull align 8 dereferenceable(32) %i.l, i64 32, i1 false), !noalias !13957
  call void @_RNvMs9_NtCsdaEETE4DqmE_13typst_library6engineNtB5_4Sink5value(ptr noalias nofree noundef nonnull align 8 dereferenceable(96) %i.aq, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(32) %i.b, ptr noundef %.sroa.0.0, i64 %.sroa.5.0)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !13958
  br label %bb.x

bb.p:                                             ; preds = %bb.o
  %magicptr.i = ptrtoint ptr %.sroa.0.0 to i64
  switch i64 %magicptr.i, label %bb.q [
    i64 0, label %bb.s
    i64 16, label %bb.s
  ]

bb.q:                                             ; preds = %bb.p
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0) ]
  %i.av = getelementptr inbounds i8, ptr %.sroa.0.0, i64 -16
  %i.aw = atomicrmw add ptr %i.av, i64 1 monotonic, align 8, !noalias !13958
  %i.ax = icmp slt i64 %i.aw, 0
  br i1 %i.ax, label %bb.r, label %bb.s, !prof !40

bb.r:                                             ; preds = %bb.q
  invoke fastcc void @_RINvNtCsakL8LGkl72C_4ecow3vec18ref_count_overflowINtNtCs6xpQEr8gLsQ_11typst_utils4hash8LazyHashNtNtNtCsdaEETE4DqmE_13typst_library11foundations6styles5StyleEECs5cbCQMMIObr_10typst_eval(ptr noundef nonnull %.sroa.0.0, i64 noundef %.sroa.5.0) #42
          to label %.noexc.i unwind label %bb.t, !noalias !13957

.noexc.i:                                         ; preds = %bb.r
  unreachable

bb.s:                                             ; preds = %bb.q, %bb.p, %bb.p
  %i.ay = getelementptr inbounds nuw i8, ptr %i.f, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.ay, ptr noundef nonnull align 8 dereferenceable(32) %i.e, i64 32, i1 false), !noalias !13958
  %i.az = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  store ptr %.sroa.0.0, ptr %i.az, align 8, !noalias !13958
  %i.ba = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  store i64 %.sroa.5.0, ptr %i.ba, align 8, !noalias !13958
  store i64 4, ptr %i.f, align 8, !noalias !13958
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !13958
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !13958
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.d, ptr noundef nonnull align 8 dereferenceable(32) %i.l, i64 32, i1 false), !noalias !13957
  invoke void @_RNvMs9_NtCsdaEETE4DqmE_13typst_library6engineNtB5_4Sink5value(ptr noalias nofree noundef nonnull align 8 dereferenceable(96) %i.aq, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(32) %i.d, ptr noundef %.sroa.0.0, i64 %.sroa.5.0)
          to label %.noexc17 unwind label %bb.v, !noalias !13957

bb.t:                                             ; preds = %bb.r
  %i.bb = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsdaEETE4DqmE_13typst_library11foundations5value5ValueECs5cbCQMMIObr_10typst_eval(ptr noalias nofree noundef align 8 dereferenceable(32) %i.e) #44
          to label %.thread4.thread.i unwind label %bb.u, !noalias !13957

.noexc17:                                         ; preds = %bb.s
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !13958
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !13958
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %i.c, ptr noundef nonnull align 8 dereferenceable(80) %i.f, i64 80, i1 false), !noalias !13958
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !13958
  store i64 8317987319222330741, ptr %i.a, align 8, !noalias !13958
  %.sroa.3.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 7816392313619706465, ptr %.sroa.3.0..sroa_idx.i.i, align 8, !noalias !13958
  %.sroa.4.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store i64 7237128888997146499, ptr %.sroa.4.0..sroa_idx.i.i, align 8, !noalias !13958
  %.sroa.5.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store i64 8387220255154660723, ptr %.sroa.5.0..sroa_idx.i.i, align 8, !noalias !13958
  %.sroa.6.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.6.0..sroa_idx.i.i, i8 0, i64 40, i1 false), !noalias !13958
  %i.bc = call fastcc { i64, i64 } @_RNvMs7_NtCs83m0le5ggt2_9siphasher6sip128INtB5_6HasherNtB5_11Sip13RoundsE9finish128Cs5cbCQMMIObr_10typst_eval(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(72) %i.a) #48, !noalias !13958 ; 2 uses
  %i.bd = extractvalue { i64, i64 } %i.bc, 0
  %i.be = extractvalue { i64, i64 } %i.bc, 1
  %i.bf = zext i64 %i.bd to i128
  %i.bg = zext i64 %i.be to i128
  %i.bh = shl nuw i128 %i.bg, 64
  %i.bi = or disjoint i128 %i.bh, %i.bf
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !13958
  %i.bj = getelementptr inbounds nuw i8, ptr %i.au, i64 24
  %i.bk = load ptr, ptr %i.bj, align 8, !invariant.load !35, !noalias !13957, !nonnull !35
  %i.bl = call noundef zeroext i1 %i.bk(ptr noundef nonnull %i.as, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(80) %i.c, i128 noundef %i.bi), !inline_history !13953 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !13958
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !13958
  br label %bb.x

bb.u:                                             ; preds = %.noexc14.i, %.thread4.thread.i, %bb.v, %bb.t
  %i.bm = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #43, !noalias !13957
  unreachable

bb.v:                                             ; preds = %bb.s
  %i.bn = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNvNtCsdaEETE4DqmE_13typst_library6engines_1__15___ComemoVariantECs5cbCQMMIObr_10typst_eval(ptr noalias nofree noundef align 8 dereferenceable(80) %i.f) #44
          to label %.body.thread25 unwind label %bb.u, !noalias !13957

.thread4.i:                                       ; preds = %bb.o
  %i.bo = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.bp = icmp eq ptr %.sroa.0.0, null
  br i1 %i.bp, label %.noexc14.i, label %.thread4.thread.i

.thread4.thread.i:                                ; preds = %.thread4.i, %bb.t
  %.pn.pn716.i = phi { ptr, i32 } [ %i.bo, %.thread4.i ], [ %i.bb, %bb.t ]
  invoke fastcc void @_RNvXs7_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVecINtNtCs6xpQEr8gLsQ_11typst_utils4hash8LazyHashNtNtNtCsdaEETE4DqmE_13typst_library11foundations6styles5StyleEENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs5cbCQMMIObr_10typst_eval(ptr noalias nofree noundef nonnull readonly align 8 dereferenceable(16) %i.g)
          to label %.noexc14.i unwind label %bb.u, !noalias !13957

.noexc14.i:                                       ; preds = %.thread4.thread.i, %.thread4.i
  %.pn.pn717.i = phi { ptr, i32 } [ %.pn.pn716.i, %.thread4.thread.i ], [ %i.bo, %.thread4.i ]
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsdaEETE4DqmE_13typst_library11foundations5value5ValueECs5cbCQMMIObr_10typst_eval(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.l) #44
          to label %.body.thread25 unwind label %bb.u, !noalias !13957

bb.w:                                             ; preds = %bb.m
  %i.bq = extractvalue { ptr, i64 } %i.ao, 0
  %i.br = extractvalue { ptr, i64 } %i.ao, 1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j)
  br label %bb.n

bb.x:                                             ; preds = %.noexc17, %.noexc16
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l)
  ret void

.body.thread25:                                   ; preds = %.noexc14.i, %bb.v, %.body.thread
  %eh.lpad-body23 = phi { ptr, i32 } [ %eh.lpad-body24, %.body.thread ], [ %i.bn, %bb.v ], [ %.pn.pn717.i, %.noexc14.i ]
  resume { ptr, i32 } %eh.lpad-body23

.body.thread:                                     ; preds = %bb.j, %bb.d, %.body.thread29
  %eh.lpad-body24 = phi { ptr, i32 } [ %lpad.thr_comm, %.body.thread29 ], [ %i.u, %bb.d ], [ %i.am, %bb.j ]
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsdaEETE4DqmE_13typst_library11foundations5value5ValueECs5cbCQMMIObr_10typst_eval(ptr noalias nofree noundef align 8 dereferenceable(32) %i.l) #44
          to label %.body.thread25 unwind label %bb.y

bb.y:                                             ; preds = %.body.thread
  %i.bs = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #43
  unreachable
}

; Function Attrs: nonlazybind uwtable
define void @_RNvMNtCs5cbCQMMIObr_10typst_eval2vmNtB2_2Vm8trace_at(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(384) %0, i64 noundef range(i64 1, 0) %1, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) %2) unnamed_addr #0 {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 376
  %i.c = load i64, ptr %i.b, align 8, !noundef !35
  %i.d = icmp eq i64 %i.c, %1
  br i1 %i.d, label %bb.c, label %bb.b, !prof !118

bb.b:                                             ; preds = %bb.a, %bb.c
  ret void

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call fastcc void @_RNvXsj_NtNtCsdaEETE4DqmE_13typst_library11foundations5valueNtB5_5ValueNtNtCs3oUPovFnLWP_4core5clone5Clone5clone(ptr noalias nofree noundef align 8 captures(none) dereferenceable(32) %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) %2) #48
  call void @_RNvMNtCs5cbCQMMIObr_10typst_eval2vmNtB2_2Vm5trace(ptr noalias nofree noundef nonnull align 8 dereferenceable(384) %0, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.b
}

; Function Attrs: nonlazybind uwtable
define void @_RNvMNtCs5cbCQMMIObr_10typst_eval4flowNtB2_9FlowEvent9forbidden(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([72 x i8]) align 8 captures(none) dereferenceable(72) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(48) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 7 uses
  %i.b = alloca [16 x i8], align 8                ; 5 uses
  %i.c = alloca [16 x i8], align 8                ; 7 uses
  %i.d = alloca [16 x i8], align 8                ; 5 uses
  %i.e = alloca [16 x i8], align 8                ; 7 uses
  %i.f = alloca [16 x i8], align 8                ; 5 uses
  %i.g = load i64, ptr %1, align 8, !range !117, !noundef !35 ; 2 uses
  %i.h = add nsw i64 %i.g, -32
  %i.i = icmp sgt i64 %i.g, 31
  %i.j = select i1 %i.i, i64 %i.h, i64 2
  switch i64 %i.j, label %bb.b [
    i64 0, label %bb.c
    i64 1, label %bb.d
    i64 2, label %bb.e
  ]

bb.b:                                             ; preds = %bb.a
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.l = load i64, ptr %i.k, align 8, !range !38, !noundef !35
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(15) %i.e, i8 0, i64 15, i1 false)
  %.sroa.419.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 15
  store i8 -128, ptr %.sroa.419.0..sroa_idx, align 1
  invoke void @_RNvMNtCsakL8LGkl72C_4ecow6stringNtB2_9EcoString8push_str(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.e, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @187, i64 noundef 28)
          to label %bb.g unwind label %bb.f

bb.d:                                             ; preds = %bb.a
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.n = load i64, ptr %i.m, align 8, !range !38, !noundef !35
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(15) %i.c, i8 0, i64 15, i1 false)
  %.sroa.413.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 15
  store i8 -128, ptr %.sroa.413.0..sroa_idx, align 1
  invoke void @_RNvMNtCsakL8LGkl72C_4ecow6stringNtB2_9EcoString8push_str(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.c, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @189, i64 noundef 31)
          to label %bb.m unwind label %bb.l

bb.e:                                             ; preds = %bb.a
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.p = load i64, ptr %i.o, align 8, !range !38, !noundef !35
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(15) %i.a, i8 0, i64 15, i1 false)
  %.sroa.47.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 15
  store i8 -128, ptr %.sroa.47.0..sroa_idx, align 1
  invoke void @_RNvMNtCsakL8LGkl72C_4ecow6stringNtB2_9EcoString8push_str(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.a, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @190, i64 noundef 33)
          to label %bb.q unwind label %bb.p

bb.f:                                             ; preds = %bb.c
  %i.q = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsakL8LGkl72C_4ecow6string9EcoStringECs5cbCQMMIObr_10typst_eval(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.e) #44
          to label %common.resume unwind label %bb.k

bb.g:                                             ; preds = %bb.c
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.f, ptr noundef nonnull align 8 dereferenceable(16) %i.e, i64 16, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
end_hunk_0
begin_hunk_1_@_RNvXs8_NtCs5cbCQMMIObr_10typst_eval4codeNtNtCs5PEMdK7bMAG_12typst_syntax3ast5ArrayNtB7_4Eval4eval:bb.a
  br i1 %.not.i.i.us.i, label %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orjNCNvMBL_INtBL_6EcoVecNtNtNtCsdaEETE4DqmE_13typst_library11foundations5value5ValueE8capacity0ECs5cbCQMMIObr_10typst_eval.exit.i.us.i, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.cs = getelementptr i8, ptr %.val.i.us.i, i64 -8
  %.val.i.i.us.i = load i64, ptr %i.cs, align 8, !noalias !18421, !noundef !35
  br label %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orjNCNvMBL_INtBL_6EcoVecNtNtNtCsdaEETE4DqmE_13typst_library11foundations5value5ValueE8capacity0ECs5cbCQMMIObr_10typst_eval.exit.i.us.i

_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orjNCNvMBL_INtBL_6EcoVecNtNtNtCsdaEETE4DqmE_13typst_library11foundations5value5ValueE8capacity0ECs5cbCQMMIObr_10typst_eval.exit.i.us.i: ; preds = %bb.x, %bb.w
  %.sroa.02.0.i.i.us.i = phi i64 [ %.val.i.i.us.i, %bb.x ], [ 0, %bb.w ]
  %i.ct = icmp eq i64 %i.cr, %.sroa.02.0.i.i.us.i
  %i.cu = zext i1 %i.ct to i64
  invoke fastcc void @_RNvMs_NtCsakL8LGkl72C_4ecow3vecINtB4_6EcoVecNtNtNtCsdaEETE4DqmE_13typst_library11foundations5value5ValueE7reserveCs5cbCQMMIObr_10typst_eval(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.ae, i64 noundef %i.cu)
          to label %bb.y unwind label %.split.us.i, !noalias !18422, !inline_history !30

bb.y:                                             ; preds = %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orjNCNvMBL_INtBL_6EcoVecNtNtNtCsdaEETE4DqmE_13typst_library11foundations5value5ValueE8capacity0ECs5cbCQMMIObr_10typst_eval.exit.i.us.i
  %i.cv = load ptr, ptr %i.ae, align 8, !alias.scope !18420, !nonnull !35, !noundef !35
  %i.cw = load i64, ptr %i.ai, align 8, !alias.scope !18420, !noundef !35 ; 2 uses
  %i.cx = getelementptr inbounds nuw [32 x i8], ptr %i.cv, i64 %i.cw
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.cx, ptr noundef nonnull align 8 dereferenceable(32) %i.e, i64 32, i1 false), !noalias !18420
  %i.cy = add i64 %i.cw, 1
  store i64 %i.cy, ptr %i.ai, align 8, !alias.scope !18420
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !18413
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.7.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.7.i)
  %exitcond25.not.i = icmp eq i64 %i.co, %i.ch
  br i1 %exitcond25.not.i, label %_RNvXsz_NtCsakL8LGkl72C_4ecow3vecINtB5_8IntoIterNtNtNtCsdaEETE4DqmE_13typst_library11foundations5value5ValueENtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4nextCs5cbCQMMIObr_10typst_eval.exit.thread.i, label %_RNvXsz_NtCsakL8LGkl72C_4ecow3vecINtB5_8IntoIterNtNtNtCsdaEETE4DqmE_13typst_library11foundations5value5ValueENtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4nextCs5cbCQMMIObr_10typst_eval.exit.us.i

.split.us.i:                                      ; preds = %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orjNCNvMBL_INtBL_6EcoVecNtNtNtCsdaEETE4DqmE_13typst_library11foundations5value5ValueE8capacity0ECs5cbCQMMIObr_10typst_eval.exit.i.us.i
  %i.cz = landingpad { ptr, i32 }
          cleanup
  br label %bb.ac

bb.z:                                             ; preds = %.noexc119
  %i.da = sub i64 %.val4.i, %.val.i115
  invoke fastcc void @_RNvMs_NtCsakL8LGkl72C_4ecow3vecINtB4_6EcoVecNtNtNtCsdaEETE4DqmE_13typst_library11foundations5value5ValueE7reserveCs5cbCQMMIObr_10typst_eval(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.ae, i64 noundef %i.da)
          to label %bb.v unwind label %bb.ah

.lr.ph.split.i:                                   ; preds = %.lr.ph.i, %bb.af
  %i.db = phi i64 [ %i.dc, %bb.af ], [ %.promoted.i117, %.lr.ph.i ] ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !18414)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !18416
  %i.dc = add nuw i64 %i.db, 1                    ; 5 uses
  %i.dd = icmp ult i64 %i.db, %i.cm
  call void @llvm.assume(i1 %i.dd)
  %i.de = getelementptr inbounds nuw [32 x i8], ptr %i.cl, i64 %i.db
  invoke fastcc void @_RNvXsj_NtNtCsdaEETE4DqmE_13typst_library11foundations5valueNtB5_5ValueNtNtCs3oUPovFnLWP_4core5clone5Clone5clone(ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(32) %i.d, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.de) #48
          to label %_RNvXsz_NtCsakL8LGkl72C_4ecow3vecINtB5_8IntoIterNtNtNtCsdaEETE4DqmE_13typst_library11foundations5value5ValueENtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4nextCs5cbCQMMIObr_10typst_eval.exit.i unwind label %bb.aa, !noalias !18413

bb.aa:                                            ; preds = %.lr.ph.split.i
  %i.df = landingpad { ptr, i32 }
          cleanup
  store i64 %i.dc, ptr %i.al, align 8, !noalias !18413
  br label %.body.i

.body.i:                                          ; preds = %bb.ac, %bb.aa
  %eh.lpad-body.i = phi { ptr, i32 } [ %i.df, %bb.aa ], [ %.us-phi18.i, %bb.ac ]
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCsakL8LGkl72C_4ecow3vec8IntoIterNtNtNtCsdaEETE4DqmE_13typst_library11foundations5value5ValueEECs5cbCQMMIObr_10typst_eval(ptr noalias nofree noundef align 8 dereferenceable(40) %i.f) #44
          to label %.thread165 unwind label %bb.ag, !noalias !18413

_RNvXsz_NtCsakL8LGkl72C_4ecow3vecINtB5_8IntoIterNtNtNtCsdaEETE4DqmE_13typst_library11foundations5value5ValueENtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4nextCs5cbCQMMIObr_10typst_eval.exit.i: ; preds = %.lr.ph.split.i
  %.sroa.05.0.copyload6.i = load i64, ptr %i.d, align 8, !noalias !18418 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.7.i, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.7.0..sroa_idx7.i, i64 24, i1 false), !noalias !18418
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !18416
  %.not2.i = icmp eq i64 %.sroa.05.0.copyload6.i, -1
  br i1 %.not2.i, label %_RNvXsz_NtCsakL8LGkl72C_4ecow3vecINtB5_8IntoIterNtNtNtCsdaEETE4DqmE_13typst_library11foundations5value5ValueENtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4nextCs5cbCQMMIObr_10typst_eval.exit.thread.i, label %bb.ab

bb.ab:                                            ; preds = %_RNvXsz_NtCsakL8LGkl72C_4ecow3vecINtB5_8IntoIterNtNtNtCsdaEETE4DqmE_13typst_library11foundations5value5ValueENtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4nextCs5cbCQMMIObr_10typst_eval.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !18413
  store i64 %.sroa.05.0.copyload6.i, ptr %i.e, align 8, !noalias !18413
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.7.0..sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.7.i, i64 24, i1 false), !noalias !18413
  call void @llvm.experimental.noalias.scope.decl(metadata !18419)
  %i.dg = load i64, ptr %i.ai, align 8, !alias.scope !18420, !noundef !35
  %.val.i.i118 = load ptr, ptr %i.ae, align 8, !alias.scope !18420, !nonnull !35, !noundef !35 ; 2 uses
  %.not.i.i.i = icmp eq ptr %.val.i.i118, inttoptr (i64 16 to ptr)
  br i1 %.not.i.i.i, label %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orjNCNvMBL_INtBL_6EcoVecNtNtNtCsdaEETE4DqmE_13typst_library11foundations5value5ValueE8capacity0ECs5cbCQMMIObr_10typst_eval.exit.i.i, label %bb.ad

.split.i:                                         ; preds = %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orjNCNvMBL_INtBL_6EcoVecNtNtNtCsdaEETE4DqmE_13typst_library11foundations5value5ValueE8capacity0ECs5cbCQMMIObr_10typst_eval.exit.i.i
  %i.dh = landingpad { ptr, i32 }
          cleanup
  br label %bb.ac

bb.ac:                                            ; preds = %.split.i, %.split.us.i
  %.us-phi17.i = phi i64 [ %i.dc, %.split.i ], [ %i.co, %.split.us.i ]
  %.us-phi18.i = phi { ptr, i32 } [ %i.dh, %.split.i ], [ %i.cz, %.split.us.i ]
  store i64 %.us-phi17.i, ptr %i.al, align 8, !noalias !18413
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsdaEETE4DqmE_13typst_library11foundations5value5ValueECs5cbCQMMIObr_10typst_eval(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.e) #44
          to label %.body.i unwind label %bb.ae, !noalias !18420, !inline_history !30

bb.ad:                                            ; preds = %bb.ab
  %i.di = getelementptr i8, ptr %.val.i.i118, i64 -8
  %.val.i.i.i = load i64, ptr %i.di, align 8, !noalias !18421, !noundef !35
  br label %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orjNCNvMBL_INtBL_6EcoVecNtNtNtCsdaEETE4DqmE_13typst_library11foundations5value5ValueE8capacity0ECs5cbCQMMIObr_10typst_eval.exit.i.i

_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orjNCNvMBL_INtBL_6EcoVecNtNtNtCsdaEETE4DqmE_13typst_library11foundations5value5ValueE8capacity0ECs5cbCQMMIObr_10typst_eval.exit.i.i: ; preds = %bb.ad, %bb.ab
  %.sroa.02.0.i.i.i = phi i64 [ %.val.i.i.i, %bb.ad ], [ 0, %bb.ab ]
  %i.dj = icmp eq i64 %i.dg, %.sroa.02.0.i.i.i
  %i.dk = zext i1 %i.dj to i64
  invoke fastcc void @_RNvMs_NtCsakL8LGkl72C_4ecow3vecINtB4_6EcoVecNtNtNtCsdaEETE4DqmE_13typst_library11foundations5value5ValueE7reserveCs5cbCQMMIObr_10typst_eval(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.ae, i64 noundef %i.dk)
          to label %bb.af unwind label %.split.i, !noalias !18422, !inline_history !30

bb.ae:                                            ; preds = %bb.ac
  %i.dl = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #43, !noalias !18420, !inline_history !30
  unreachable

_RNvXsz_NtCsakL8LGkl72C_4ecow3vecINtB5_8IntoIterNtNtNtCsdaEETE4DqmE_13typst_library11foundations5value5ValueENtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4nextCs5cbCQMMIObr_10typst_eval.exit.thread.i: ; preds = %bb.af, %_RNvXsz_NtCsakL8LGkl72C_4ecow3vecINtB5_8IntoIterNtNtNtCsdaEETE4DqmE_13typst_library11foundations5value5ValueENtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4nextCs5cbCQMMIObr_10typst_eval.exit.i, %bb.y, %_RNvXsz_NtCsakL8LGkl72C_4ecow3vecINtB5_8IntoIterNtNtNtCsdaEETE4DqmE_13typst_library11foundations5value5ValueENtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4nextCs5cbCQMMIObr_10typst_eval.exit.us.i, %bb.v
  %i.dm = phi i64 [ %.promoted.i117, %bb.v ], [ %i.co, %_RNvXsz_NtCsakL8LGkl72C_4ecow3vecINtB5_8IntoIterNtNtNtCsdaEETE4DqmE_13typst_library11foundations5value5ValueENtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4nextCs5cbCQMMIObr_10typst_eval.exit.us.i ], [ %i.ch, %bb.y ], [ %i.ch, %bb.af ], [ %i.dc, %_RNvXsz_NtCsakL8LGkl72C_4ecow3vecINtB5_8IntoIterNtNtNtCsdaEETE4DqmE_13typst_library11foundations5value5ValueENtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4nextCs5cbCQMMIObr_10typst_eval.exit.i ]
  store i64 %i.dm, ptr %i.al, align 8, !noalias !18413
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.7.i)
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCsakL8LGkl72C_4ecow3vec8IntoIterNtNtNtCsdaEETE4DqmE_13typst_library11foundations5value5ValueEECs5cbCQMMIObr_10typst_eval(ptr noalias nofree noundef align 8 dereferenceable(40) %i.f)
          to label %_RINvXsv_NtCsakL8LGkl72C_4ecow3vecINtB6_6EcoVecNtNtNtCsdaEETE4DqmE_13typst_library11foundations5value5ValueEINtNtNtNtCs3oUPovFnLWP_4core4iter6traits7collect6ExtendBI_E6extendNtNtBM_5array5ArrayECs5cbCQMMIObr_10typst_eval.exit unwind label %.thread170.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.af:                                            ; preds = %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orjNCNvMBL_INtBL_6EcoVecNtNtNtCsdaEETE4DqmE_13typst_library11foundations5value5ValueE8capacity0ECs5cbCQMMIObr_10typst_eval.exit.i.i
  %i.dn = load ptr, ptr %i.ae, align 8, !alias.scope !18420, !nonnull !35, !noundef !35
  %i.do = load i64, ptr %i.ai, align 8, !alias.scope !18420, !noundef !35 ; 2 uses
  %i.dp = getelementptr inbounds nuw [32 x i8], ptr %i.dn, i64 %i.do
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.dp, ptr noundef nonnull align 8 dereferenceable(32) %i.e, i64 32, i1 false), !noalias !18420
  %i.dq = add i64 %i.do, 1
  store i64 %i.dq, ptr %i.ai, align 8, !alias.scope !18420
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !18413
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.7.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.7.i)
  %exitcond.not.i = icmp eq i64 %i.dc, %i.ch
  br i1 %exitcond.not.i, label %_RNvXsz_NtCsakL8LGkl72C_4ecow3vecINtB5_8IntoIterNtNtNtCsdaEETE4DqmE_13typst_library11foundations5value5ValueENtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4nextCs5cbCQMMIObr_10typst_eval.exit.thread.i, label %.lr.ph.split.i

bb.ag:                                            ; preds = %bb.ah, %.body.i
  %i.dr = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #43, !noalias !18413
  unreachable

bb.ah:                                            ; preds = %bb.z
  %i.ds = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCsakL8LGkl72C_4ecow3vec8IntoIterNtNtNtCsdaEETE4DqmE_13typst_library11foundations5value5ValueEECs5cbCQMMIObr_10typst_eval(ptr noalias nofree noundef align 8 dereferenceable(40) %i.g) #44
          to label %.thread165 unwind label %bb.ag, !noalias !18413

_RINvXsv_NtCsakL8LGkl72C_4ecow3vecINtB6_6EcoVecNtNtNtCsdaEETE4DqmE_13typst_library11foundations5value5ValueEINtNtNtNtCs3oUPovFnLWP_4core4iter6traits7collect6ExtendBI_E6extendNtNtBM_5array5ArrayECs5cbCQMMIObr_10typst_eval.exit: ; preds = %_RNvXsz_NtCsakL8LGkl72C_4ecow3vecINtB5_8IntoIterNtNtNtCsdaEETE4DqmE_13typst_library11foundations5value5ValueENtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4nextCs5cbCQMMIObr_10typst_eval.exit.thread.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !18413
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !18413
  %.pre = load i64, ptr %i.aa, align 8, !range !41
  br label %bb.t

bb.ai:                                            ; preds = %bb.s
  br i1 %.sroa.0.0, label %.preheader, label %.loopexit194

.preheader:                                       ; preds = %bb.ai
  %i.dt = icmp eq ptr %i.ar, %i.ah
  br i1 %i.dt, label %.thread181, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader
  %.sroa.4155.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  br label %bb.al

.thread170.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %bb.al, %bb.am, %.noexc134, %bb.ap, %_RNvXsz_NtCsakL8LGkl72C_4ecow3vecINtB5_8IntoIterNtNtNtCsdaEETE4DqmE_13typst_library11foundations5value5ValueENtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4nextCs5cbCQMMIObr_10typst_eval.exit.thread.i, %bb.u, %bb.an, %bb.ao
  %lpad.loopexit.split-lp421 = landingpad { ptr, i32 }
          cleanup
  br label %.thread165

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %bb.d, %bb.f, %bb.g, %bb.p, %bb.ak, %bb.bk, %bb.bw
  %lpad.loopexit.split-lp418 = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.aj:                                            ; preds = %bb.ak, %bb.t
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aa)
  br label %bb.n

bb.ak:                                            ; preds = %bb.t
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsdaEETE4DqmE_13typst_library11foundations5value5ValueECs5cbCQMMIObr_10typst_eval(ptr noalias nofree noundef align 8 dereferenceable(32) %i.aa)
          to label %bb.aj unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.al:                                            ; preds = %.lr.ph, %.backedge
  %.sroa.0.3240 = phi ptr [ %i.ar, %.lr.ph ], [ %i.du, %.backedge ] ; 2 uses
  %i.du = getelementptr inbounds nuw i8, ptr %.sroa.0.3240, i64 32 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !18423
  invoke void @_RNvXsL_NtCs5PEMdK7bMAG_12typst_syntax3astNtB5_9ArrayItemNtB5_7AstNode12from_untyped(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(none) dereferenceable(16) %i.c, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %.sroa.0.3240)
          to label %.noexc128 unwind label %.thread170.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !inline_history !18399

.noexc128:                                        ; preds = %bb.al
  %i.dv = load i64, ptr %i.c, align 8, !range !18409, !noalias !18423, !noundef !35
  switch i64 %i.dv, label %.loopexit [
    i64 -2, label %.backedge
    i64 -1, label %bb.am
  ]

bb.am:                                            ; preds = %.noexc128
  %.sroa.4155.0.copyload = load ptr, ptr %.sroa.4155.0..sroa_idx, align 8, !noalias !18423, !nonnull !35, !noundef !35
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !18424
  %i.dw = invoke { i64, ptr } @_RNvMsQ_NtCs5PEMdK7bMAG_12typst_syntax3astNtB5_6Spread4expr(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %.sroa.4155.0.copyload)
          to label %.noexc134 unwind label %.thread170.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !inline_history !18403 ; 2 uses

.noexc134:                                        ; preds = %bb.am
  %i.dx = extractvalue { i64, ptr } %i.dw, 0
  %i.dy = extractvalue { i64, ptr } %i.dw, 1
  invoke void @_RNvXs_NtCs5cbCQMMIObr_10typst_eval4codeNtNtCs5PEMdK7bMAG_12typst_syntax3ast4ExprNtB6_4Eval4eval(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %i.b, i64 noundef %i.dx, ptr noundef %i.dy, ptr noalias nofree noundef nonnull align 8 dereferenceable(384) %2)
          to label %.noexc135 unwind label %.thread170.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !inline_history !18403

.noexc135:                                        ; preds = %.noexc134
  %i.dz = load i64, ptr %i.b, align 8, !range !39, !noalias !18424, !noundef !35
  switch i64 %i.dz, label %bb.an [
    i64 26, label %bb.ap
    i64 -1, label %bb.ao
  ]

bb.an:                                            ; preds = %.noexc135
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsdaEETE4DqmE_13typst_library11foundations5value5ValueECs5cbCQMMIObr_10typst_eval(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.b)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6result6ResultNtNtNtCsdaEETE4DqmE_13typst_library11foundations5value5ValueINtNtCsakL8LGkl72C_4ecow3vec6EcoVecNtNtB13_4diag16SourceDiagnosticEEECs5cbCQMMIObr_10typst_eval.exit.i unwind label %.thread170.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !inline_history !18403

bb.ao:                                            ; preds = %.noexc135
  %i.ea = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %.val.i.i133 = load ptr, ptr %i.ea, align 8, !alias.scope !18425, !noalias !18424, !nonnull !35, !noundef !35
  %i.eb = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %.val1.i.i = load i64, ptr %i.eb, align 8, !alias.scope !18425, !noalias !18424
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCsakL8LGkl72C_4ecow3vec6EcoVecNtNtCsdaEETE4DqmE_13typst_library4diag16SourceDiagnosticEECs5cbCQMMIObr_10typst_eval(ptr nonnull %.val.i.i133, i64 %.val1.i.i)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6result6ResultNtNtNtCsdaEETE4DqmE_13typst_library11foundations5value5ValueINtNtCsakL8LGkl72C_4ecow3vec6EcoVecNtNtB13_4diag16SourceDiagnosticEEECs5cbCQMMIObr_10typst_eval.exit.i unwind label %.thread170.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !inline_history !18403

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6result6ResultNtNtNtCsdaEETE4DqmE_13typst_library11foundations5value5ValueINtNtCsakL8LGkl72C_4ecow3vec6EcoVecNtNtB13_4diag16SourceDiagnosticEEECs5cbCQMMIObr_10typst_eval.exit.i: ; preds = %bb.ao, %bb.an
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !18424
  br label %.loopexit

bb.ap:                                            ; preds = %.noexc135
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsdaEETE4DqmE_13typst_library11foundations5value5ValueECs5cbCQMMIObr_10typst_eval(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.b)
          to label %.noexc129 unwind label %.thread170.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !inline_history !18403

.noexc129:                                        ; preds = %bb.ap
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !18424
  br label %.backedge

.backedge:                                        ; preds = %.noexc128, %.noexc129
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !18423
  %i.ec = icmp eq ptr %i.du, %i.ah
  br i1 %i.ec, label %.thread181, label %bb.al

.loopexit:                                        ; preds = %.noexc128, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6result6ResultNtNtNtCsdaEETE4DqmE_13typst_library11foundations5value5ValueINtNtCsakL8LGkl72C_4ecow3vec6EcoVecNtNtB13_4diag16SourceDiagnosticEEECs5cbCQMMIObr_10typst_eval.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !18423
  br label %.loopexit194

.thread181:                                       ; preds = %.backedge, %.preheader
  call void @llvm.lifetime.start.p0(ptr nonnull %i.y)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.y, ptr noundef nonnull align 8 dereferenceable(32) %i.aa, i64 32, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.x)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.w)
  invoke void @_RNvMs_NtCs5PEMdK7bMAG_12typst_syntax4nodeNtB4_10SyntaxNode9full_text(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(none) dereferenceable(16) %i.w, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %1)
          to label %bb.as unwind label %bb.ar

bb.aq:                                            ; preds = %bb.av, %bb.at, %bb.ar
  %.pn102 = phi { ptr, i32 } [ %i.ed, %bb.ar ], [ %.pn100, %bb.av ], [ %i.ee, %bb.at ]
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsdaEETE4DqmE_13typst_library11foundations5value5ValueECs5cbCQMMIObr_10typst_eval(ptr noalias nofree noundef align 8 dereferenceable(32) %i.y) #44
          to label %.body unwind label %bb.bn

bb.ar:                                            ; preds = %bb.bj, %.thread181
  %i.ed = landingpad { ptr, i32 }
          cleanup
  br label %bb.aq

bb.as:                                            ; preds = %.thread181
  invoke void @_RNvMNtCsakL8LGkl72C_4ecow6stringNtB2_9EcoString8replacen(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(none) dereferenceable(16) %i.x, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.w, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @350, i64 noundef 1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @351, i64 noundef 3, i64 noundef 1)
          to label %bb.au unwind label %bb.at

bb.at:                                            ; preds = %bb.as
  %i.ee = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsakL8LGkl72C_4ecow6string9EcoStringECs5cbCQMMIObr_10typst_eval(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.w) #44
          to label %bb.aq unwind label %bb.bn

bb.au:                                            ; preds = %bb.as
  invoke void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsakL8LGkl72C_4ecow6string9EcoStringECs5cbCQMMIObr_10typst_eval(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.w)
          to label %bb.ax unwind label %bb.aw

bb.av:                                            ; preds = %bb.bg, %bb.ay, %bb.aw
  %.pn100 = phi { ptr, i32 } [ %i.ef, %bb.aw ], [ %.pn, %bb.bg ], [ %i.ej, %bb.ay ]
  invoke void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsakL8LGkl72C_4ecow6string9EcoStringECs5cbCQMMIObr_10typst_eval(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.x) #44
          to label %bb.aq unwind label %bb.bn

bb.aw:                                            ; preds = %bb.bi, %_RNvMNtCs3oUPovFnLWP_4core6resultINtB2_6ResultuNtNtB4_3fmt5ErrorE6unwrapCs5cbCQMMIObr_10typst_eval.exit112, %bb.au
  %i.ef = landingpad { ptr, i32 }
          cleanup
  br label %bb.av

bb.ax:                                            ; preds = %bb.au
  call void @llvm.lifetime.end.p0(ptr nonnull %i.w)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.v)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.u)
  %i.eg = getelementptr inbounds nuw i8, ptr %.sroa.6.0.copyload, i64 24
  %i.eh = load i64, ptr %i.eg, align 8, !range !38, !noundef !35
  call void @llvm.lifetime.start.p0(ptr nonnull %i.t)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.s)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(15) %i.s, i8 0, i64 15, i1 false)
  %.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.s, i64 15
  store i8 -128, ptr %.sroa.3.0..sroa_idx, align 1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r)
  %i.ei = invoke noundef nonnull align 8 ptr @_RNvMNtNtCsdaEETE4DqmE_13typst_library11foundations5valueNtB2_5Value2ty(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.y)
          to label %bb.az unwind label %bb.ay

bb.ay:                                            ; preds = %bb.bb, %bb.az, %bb.ax
  %i.ej = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsakL8LGkl72C_4ecow6string9EcoStringECs5cbCQMMIObr_10typst_eval(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.s) #44
          to label %bb.av unwind label %bb.bn

bb.az:                                            ; preds = %bb.ax
  store ptr %i.ei, ptr %i.r, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q)
  store ptr %i.r, ptr %i.q, align 8
  %.sroa.447.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  store ptr @_RNvXs1_NtNtCsdaEETE4DqmE_13typst_library11foundations2tyNtB5_4TypeNtNtCs3oUPovFnLWP_4core3fmt7Display3fmt, ptr %.sroa.447.0..sroa_idx, align 8
  %i.ek = invoke noundef zeroext i1 @_RNvNtCs3oUPovFnLWP_4core3fmt5write(ptr noundef nonnull %i.s, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(48) @8, ptr noundef nonnull @352, ptr noundef nonnull %i.q)
          to label %bb.ba unwind label %bb.ay

bb.ba:                                            ; preds = %bb.az
  br i1 %i.ek, label %bb.bb, label %_RNvMNtCs3oUPovFnLWP_4core6resultINtB2_6ResultuNtNtB4_3fmt5ErrorE6unwrapCs5cbCQMMIObr_10typst_eval.exit112, !prof !40

bb.bb:                                            ; preds = %bb.ba
  invoke void @_RNvNtCs3oUPovFnLWP_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @178, i64 noundef 43, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @182, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @353) #47
          to label %.noexc111 unwind label %bb.ay

.noexc111:                                        ; preds = %bb.bb
  unreachable

_RNvMNtCs3oUPovFnLWP_4core6resultINtB2_6ResultuNtNtB4_3fmt5ErrorE6unwrapCs5cbCQMMIObr_10typst_eval.exit112: ; preds = %bb.ba
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.t, ptr noundef nonnull align 8 dereferenceable(16) %i.s, i64 16, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s)
  invoke fastcc void @_RINvMs1_NtCsdaEETE4DqmE_13typst_library4diagNtB6_16SourceDiagnostic5errorNtNtCs5PEMdK7bMAG_12typst_syntax4span4SpanNtNtCsakL8LGkl72C_4ecow6string9EcoStringECs5cbCQMMIObr_10typst_eval(ptr noalias nofree noundef align 8 captures(none) dereferenceable(72) %i.u, i64 noundef %i.eh, ptr noalias nofree noundef align 8 captures(address) dereferenceable(16) %i.t)
          to label %bb.bc unwind label %bb.aw

bb.bc:                                            ; preds = %_RNvMNtCs3oUPovFnLWP_4core6resultINtB2_6ResultuNtNtB4_3fmt5ErrorE6unwrapCs5cbCQMMIObr_10typst_eval.exit112
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(15) %i.p, i8 0, i64 15, i1 false)
  %.sroa.3.0..sroa_idx42 = getelementptr inbounds nuw i8, ptr %i.p, i64 15
  store i8 -128, ptr %.sroa.3.0..sroa_idx42, align 1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o)
  store ptr %i.x, ptr %i.o, align 8
  %.sroa.463.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  store ptr @_RNvXs2_NtCsakL8LGkl72C_4ecow6stringNtB5_9EcoStringNtNtCs3oUPovFnLWP_4core3fmt7Display3fmt, ptr %.sroa.463.0..sroa_idx, align 8
  %i.el = invoke noundef zeroext i1 @_RNvNtCs3oUPovFnLWP_4core3fmt5write(ptr noundef nonnull %i.p, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(48) @8, ptr noundef nonnull @354, ptr noundef nonnull %i.o)
          to label %bb.be unwind label %bb.bd

bb.bd:                                            ; preds = %bb.bf, %bb.bc
  %i.em = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsakL8LGkl72C_4ecow6string9EcoStringECs5cbCQMMIObr_10typst_eval(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.p) #44
          to label %bb.bg unwind label %bb.bn

bb.be:                                            ; preds = %bb.bc
  br i1 %i.el, label %bb.bf, label %_RNvMNtCs3oUPovFnLWP_4core6resultINtB2_6ResultuNtNtB4_3fmt5ErrorE6unwrapCs5cbCQMMIObr_10typst_eval.exit110, !prof !40

bb.bf:                                            ; preds = %bb.be
  invoke void @_RNvNtCs3oUPovFnLWP_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @178, i64 noundef 43, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @182, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @353) #47
          to label %.noexc109 unwind label %bb.bd

.noexc109:                                        ; preds = %bb.bf
  unreachable

_RNvMNtCs3oUPovFnLWP_4core6resultINtB2_6ResultuNtNtB4_3fmt5ErrorE6unwrapCs5cbCQMMIObr_10typst_eval.exit110: ; preds = %bb.be
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o)
  %i.en = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.en, ptr noundef nonnull align 8 dereferenceable(16) %i.p, i64 16, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p)
  %i.eo = getelementptr inbounds nuw i8, ptr %i.u, i64 32
  store i64 1, ptr %i.h, align 8
  %i.ep = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  store i64 0, ptr %i.ep, align 8
  invoke fastcc void @_RNvMs_NtCsakL8LGkl72C_4ecow3vecINtB4_6EcoVecINtNtCs5PEMdK7bMAG_12typst_syntax4span7SpannedNtNtB6_6string9EcoStringNtBJ_8DiagSpanEE4pushCs5cbCQMMIObr_10typst_eval(ptr noalias nofree noundef align 8 dereferenceable(16) %i.eo, ptr noalias nofree noundef align 8 captures(address) dereferenceable(32) %i.h)
          to label %bb.bi unwind label %bb.bh

bb.bg:                                            ; preds = %bb.bh, %bb.bd
  %.pn = phi { ptr, i32 } [ %i.eq, %bb.bh ], [ %i.em, %bb.bd ]
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsdaEETE4DqmE_13typst_library4diag16SourceDiagnosticECs5cbCQMMIObr_10typst_eval(ptr noalias nofree noundef align 8 dereferenceable(72) %i.u) #44
          to label %bb.av unwind label %bb.bn

bb.bh:                                            ; preds = %_RNvMNtCs3oUPovFnLWP_4core6resultINtB2_6ResultuNtNtB4_3fmt5ErrorE6unwrapCs5cbCQMMIObr_10typst_eval.exit110
  %i.eq = landingpad { ptr, i32 }
          cleanup
  br label %bb.bg

bb.bi:                                            ; preds = %_RNvMNtCs3oUPovFnLWP_4core6resultINtB2_6ResultuNtNtB4_3fmt5ErrorE6unwrapCs5cbCQMMIObr_10typst_eval.exit110
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.v, ptr noundef nonnull align 8 dereferenceable(72) %i.u, i64 72, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u)
  %i.er = invoke fastcc { ptr, i64 } @_RNvXsr_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVecNtNtCsdaEETE4DqmE_13typst_library4diag16SourceDiagnosticEINtNtCs3oUPovFnLWP_4core7convert4FromABH_j1_E4fromCs5cbCQMMIObr_10typst_eval(ptr noalias nofree noundef align 8 captures(address) dereferenceable(72) %i.v)
          to label %bb.bj unwind label %bb.aw     ; 2 uses

bb.bj:                                            ; preds = %bb.bi
  %i.es = extractvalue { ptr, i64 } %i.er, 0
  %i.et = extractvalue { ptr, i64 } %i.er, 1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.v)
  %i.eu = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.es, ptr %i.eu, align 8
  %i.ev = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.et, ptr %i.ev, align 8
  store i64 1, ptr %0, align 8
  invoke void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsakL8LGkl72C_4ecow6string9EcoStringECs5cbCQMMIObr_10typst_eval(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.x)
          to label %bb.bk unwind label %bb.ar

bb.bk:                                            ; preds = %bb.bj
  call void @llvm.lifetime.end.p0(ptr nonnull %i.x)
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsdaEETE4DqmE_13typst_library11foundations5value5ValueECs5cbCQMMIObr_10typst_eval(ptr noalias nofree noundef align 8 dereferenceable(32) %i.y)
          to label %bb.bl unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.bl:                                            ; preds = %bb.bk
  call void @llvm.lifetime.end.p0(ptr nonnull %i.y)
  br label %bb.bm

bb.bm:                                            ; preds = %bb.bx, %bb.bl, %bb.r
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aa)
  br label %bb.o

bb.bn:                                            ; preds = %bb.by, %.body125, %bb.bo, %bb.bg, %bb.bd, %bb.ay, %bb.av, %bb.at, %bb.aq, %.body
  %i.ew = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #43
  unreachable

bb.bo:                                            ; preds = %bb.br, %bb.bp, %.loopexit194
  %i.ex = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsakL8LGkl72C_4ecow6string9EcoStringECs5cbCQMMIObr_10typst_eval(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.k) #44
end_hunk_1
