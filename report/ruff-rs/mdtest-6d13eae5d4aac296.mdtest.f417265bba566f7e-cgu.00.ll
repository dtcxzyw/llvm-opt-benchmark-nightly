Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ruff-rs/original/mdtest-6d13eae5d4aac296.mdtest.f417265bba566f7e-cgu.00?download=true
inline.NumInlined: 730
inline.NumDeleted: 60
begin_hunk_0_@_RINvNtNtCsiqiOkcJdymw_7similar10algorithms5myers18diff_deadline_implINtNtCscdodAO9FK5_5alloc3vec3VecINtNtB4_5utils10UniqueItemINtB1D_12OffsetLookupmEEEB14_INtNtB4_7replace7ReplaceINtNtB4_8patience8PatienceB20_B20_INtNtB4_7compact7CompactB20_B20_IB2u_NtNtB4_7capture7CaptureEEEEECskXhPDodhyTq_6mdtest:bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @_RNvMNtNtCsiqiOkcJdymw_7similar10algorithms5myersNtB2_1V3new(ptr noalias noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %i.b, i64 noundef %i.e)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  invoke void @_RNvMNtNtCsiqiOkcJdymw_7similar10algorithms5myersNtB2_1V3new(ptr noalias noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %i.a, i64 noundef %i.e)
          to label %bb.c unwind label %bb.b

.body:                                            ; preds = %bb.g, %bb.b, %bb.d
  %.pn = phi { ptr, i32 } [ %i.g, %bb.d ], [ %i.f, %bb.b ], [ %i.h, %bb.g ]
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCsiqiOkcJdymw_7similar10algorithms5myers1VECskXhPDodhyTq_6mdtest(ptr noalias noundef align 8 dereferenceable(32) %i.b) #15
          to label %common.resume unwind label %bb.k

bb.b:                                             ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecjEECskXhPDodhyTq_6mdtest.exit.i, %bb.a
  %i.f = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.c:                                             ; preds = %bb.a
  invoke fastcc void @_RINvNtNtCsiqiOkcJdymw_7similar10algorithms5myers7conquerINtNtCscdodAO9FK5_5alloc3vec3VecINtNtB4_5utils10UniqueItemINtB1r_12OffsetLookupmEEEBS_INtNtB4_7replace7ReplaceINtNtB4_8patience8PatienceB1O_B1O_INtNtB4_7compact7CompactB1O_B1O_IB2h_NtNtB4_7capture7CaptureEEEEECskXhPDodhyTq_6mdtest(ptr noalias noundef align 8 dereferenceable(208) %0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %1, i64 noundef %2, i64 noundef %3, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %4, i64 noundef %5, i64 noundef %6, ptr noalias noundef align 8 dereferenceable(32) %i.a, ptr noalias noundef align 8 dereferenceable(32) %i.b, i64 %7, i32 noundef %8)
          to label %bb.e unwind label %bb.d

bb.d:                                             ; preds = %bb.e, %bb.c
  %i.g = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCsiqiOkcJdymw_7similar10algorithms5myers1VECskXhPDodhyTq_6mdtest(ptr noalias noundef align 8 dereferenceable(32) %i.a) #15
          to label %.body unwind label %bb.k

bb.e:                                             ; preds = %bb.c
  invoke void @_RNvXs1_NtNtCsiqiOkcJdymw_7similar10algorithms7replaceINtB5_7ReplaceINtNtB7_8patience8PatienceINtNtB7_5utils12OffsetLookupmEB1t_INtNtB7_7compact7CompactB1t_B1t_IBQ_NtNtB7_7capture7CaptureEEEENtNtB7_4hook8DiffHook6finishCskXhPDodhyTq_6mdtest(ptr noalias noundef nonnull align 8 dereferenceable(208) %0)
          to label %bb.f unwind label %bb.d

bb.f:                                             ; preds = %bb.e
  invoke void @_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VecjENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCskXhPDodhyTq_6mdtest(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.a)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecjEECskXhPDodhyTq_6mdtest.exit.i unwind label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.h = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecjENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCskXhPDodhyTq_6mdtest(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.a)
          to label %.body unwind label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.i = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #13
  unreachable

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecjEECskXhPDodhyTq_6mdtest.exit.i: ; preds = %bb.f
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecjENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCskXhPDodhyTq_6mdtest(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.a)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCsiqiOkcJdymw_7similar10algorithms5myers1VECskXhPDodhyTq_6mdtest.exit unwind label %bb.b

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCsiqiOkcJdymw_7similar10algorithms5myers1VECskXhPDodhyTq_6mdtest.exit: ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecjEECskXhPDodhyTq_6mdtest.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  invoke void @_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VecjENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCskXhPDodhyTq_6mdtest(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.b)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCsiqiOkcJdymw_7similar10algorithms5myers1VECskXhPDodhyTq_6mdtest.exit19 unwind label %bb.i

bb.i:                                             ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCsiqiOkcJdymw_7similar10algorithms5myers1VECskXhPDodhyTq_6mdtest.exit
  %i.j = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecjENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCskXhPDodhyTq_6mdtest(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.b)
          to label %common.resume unwind label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.k = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #13
  unreachable

common.resume:                                    ; preds = %.body, %bb.i
  %common.resume.op = phi { ptr, i32 } [ %i.j, %bb.i ], [ %.pn, %.body ]
  resume { ptr, i32 } %common.resume.op

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCsiqiOkcJdymw_7similar10algorithms5myers1VECskXhPDodhyTq_6mdtest.exit19: ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCsiqiOkcJdymw_7similar10algorithms5myers1VECskXhPDodhyTq_6mdtest.exit
  call void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecjENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCskXhPDodhyTq_6mdtest(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  ret void

bb.k:                                             ; preds = %bb.d, %.body
  %i.l = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #13
  unreachable
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvNtNtCsiqiOkcJdymw_7similar10algorithms5myers18diff_deadline_implINtNtCscdodAO9FK5_5alloc3vec3VecINtNtB4_5utils10UniqueItemINtNtB6_4text12TextDiffSideeEEEB14_INtNtB4_7replace7ReplaceINtNtB4_8patience8PatienceB20_B20_INtNtB4_7compact7CompactB20_B20_IB2A_NtNtB4_7capture7CaptureEEEEECskXhPDodhyTq_6mdtest(ptr noalias noundef align 8 dereferenceable(208) %0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %1, i64 noundef %2, i64 noundef %3, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %4, i64 noundef %5, i64 noundef %6, i64 %7, i32 noundef range(i32 -1, 1000000000) %8) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 8 uses
  %i.b = alloca [32 x i8], align 8                ; 8 uses
  %.sroa.0.0 = tail call i64 @llvm.usub.sat.i64(i64 %3, i64 %2)
  %.sroa.05.0 = tail call i64 @llvm.usub.sat.i64(i64 %6, i64 %5)
  %i.c = add i64 %.sroa.05.0, %.sroa.0.0          ; 2 uses
  %i.d = lshr i64 %i.c, 1
  %.sroa.011.0 = sub nuw i64 %i.c, %i.d
  %i.e = add nuw i64 %.sroa.011.0, 1              ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @_RNvMNtNtCsiqiOkcJdymw_7similar10algorithms5myersNtB2_1V3new(ptr noalias noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %i.b, i64 noundef %i.e)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  invoke void @_RNvMNtNtCsiqiOkcJdymw_7similar10algorithms5myersNtB2_1V3new(ptr noalias noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %i.a, i64 noundef %i.e)
          to label %bb.c unwind label %bb.b

.body:                                            ; preds = %bb.g, %bb.b, %bb.d
  %.pn = phi { ptr, i32 } [ %i.g, %bb.d ], [ %i.f, %bb.b ], [ %i.h, %bb.g ]
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCsiqiOkcJdymw_7similar10algorithms5myers1VECskXhPDodhyTq_6mdtest(ptr noalias noundef align 8 dereferenceable(32) %i.b) #15
          to label %common.resume unwind label %bb.k

bb.b:                                             ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecjEECskXhPDodhyTq_6mdtest.exit.i, %bb.a
  %i.f = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.c:                                             ; preds = %bb.a
  invoke fastcc void @_RINvNtNtCsiqiOkcJdymw_7similar10algorithms5myers7conquerINtNtCscdodAO9FK5_5alloc3vec3VecINtNtB4_5utils10UniqueItemINtNtB6_4text12TextDiffSideeEEEBS_INtNtB4_7replace7ReplaceINtNtB4_8patience8PatienceB1O_B1O_INtNtB4_7compact7CompactB1O_B1O_IB2n_NtNtB4_7capture7CaptureEEEEECskXhPDodhyTq_6mdtest(ptr noalias noundef align 8 dereferenceable(208) %0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %1, i64 noundef %2, i64 noundef %3, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %4, i64 noundef %5, i64 noundef %6, ptr noalias noundef align 8 dereferenceable(32) %i.a, ptr noalias noundef align 8 dereferenceable(32) %i.b, i64 %7, i32 noundef %8)
          to label %bb.e unwind label %bb.d

bb.d:                                             ; preds = %bb.e, %bb.c
  %i.g = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCsiqiOkcJdymw_7similar10algorithms5myers1VECskXhPDodhyTq_6mdtest(ptr noalias noundef align 8 dereferenceable(32) %i.a) #15
          to label %.body unwind label %bb.k

bb.e:                                             ; preds = %bb.c
  invoke void @_RNvXs1_NtNtCsiqiOkcJdymw_7similar10algorithms7replaceINtB5_7ReplaceINtNtB7_8patience8PatienceINtNtB9_4text12TextDiffSideeEB1t_INtNtB7_7compact7CompactB1t_B1t_IBQ_NtNtB7_7capture7CaptureEEEENtNtB7_4hook8DiffHook6finishCskXhPDodhyTq_6mdtest(ptr noalias noundef nonnull align 8 dereferenceable(208) %0)
          to label %bb.f unwind label %bb.d

bb.f:                                             ; preds = %bb.e
  invoke void @_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VecjENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCskXhPDodhyTq_6mdtest(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.a)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecjEECskXhPDodhyTq_6mdtest.exit.i unwind label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.h = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecjENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCskXhPDodhyTq_6mdtest(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.a)
          to label %.body unwind label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.i = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #13
  unreachable

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecjEECskXhPDodhyTq_6mdtest.exit.i: ; preds = %bb.f
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecjENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCskXhPDodhyTq_6mdtest(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.a)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCsiqiOkcJdymw_7similar10algorithms5myers1VECskXhPDodhyTq_6mdtest.exit unwind label %bb.b

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCsiqiOkcJdymw_7similar10algorithms5myers1VECskXhPDodhyTq_6mdtest.exit: ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecjEECskXhPDodhyTq_6mdtest.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  invoke void @_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VecjENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCskXhPDodhyTq_6mdtest(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.b)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCsiqiOkcJdymw_7similar10algorithms5myers1VECskXhPDodhyTq_6mdtest.exit19 unwind label %bb.i

bb.i:                                             ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCsiqiOkcJdymw_7similar10algorithms5myers1VECskXhPDodhyTq_6mdtest.exit
  %i.j = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecjENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCskXhPDodhyTq_6mdtest(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.b)
          to label %common.resume unwind label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.k = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #13
  unreachable

common.resume:                                    ; preds = %.body, %bb.i
  %common.resume.op = phi { ptr, i32 } [ %i.j, %bb.i ], [ %.pn, %.body ]
  resume { ptr, i32 } %common.resume.op

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCsiqiOkcJdymw_7similar10algorithms5myers1VECskXhPDodhyTq_6mdtest.exit19: ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCsiqiOkcJdymw_7similar10algorithms5myers1VECskXhPDodhyTq_6mdtest.exit
  call void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecjENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCskXhPDodhyTq_6mdtest(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  ret void

bb.k:                                             ; preds = %bb.d, %.body
  %i.l = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #13
  unreachable
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtNtCsiqiOkcJdymw_7similar10algorithms5myers7conquerINtNtB4_5utils12OffsetLookupjEBS_INtNtB4_4hook12NoFinishHookQIB1q_QINtNtB4_7compact7CompactIBT_mEB2l_INtNtB4_7replace7ReplaceNtNtB4_7capture7CaptureEEEEECskXhPDodhyTq_6mdtest(ptr noalias noundef nonnull align 8 dereferenceable(8) %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %1, i64 noundef %2, i64 noundef %3, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %4, i64 noundef %5, i64 noundef %6, ptr noalias noundef nonnull align 8 dereferenceable(32) %7, ptr noalias noundef nonnull align 8 dereferenceable(32) %8, i64 %9, i32 noundef range(i32 -1, 1000000000) %10) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = alloca [24 x i8], align 8                ; 11 uses
  %i.c = alloca [24 x i8], align 8                ; 6 uses
  %i.d = alloca [24 x i8], align 8                ; 11 uses
  %i.e = alloca [32 x i8], align 8                ; 6 uses
  %i.f = alloca [32 x i8], align 8                ; 6 uses
  %i.g = alloca [24 x i8], align 8                ; 7 uses
  %i.h = tail call noundef i64 @_RINvNtNtCsiqiOkcJdymw_7similar10algorithms5utils17common_prefix_lenINtB2_12OffsetLookupjEB13_ECskXhPDodhyTq_6mdtest(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %1, i64 noundef %2, i64 noundef %3, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %4, i64 noundef %5, i64 noundef %6) ; 4 uses
  %.not = icmp eq i64 %i.h, 0
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCsiqiOkcJdymw_7similar5types6DiffOpE8push_mutCskXhPDodhyTq_6mdtest.exit, %bb.a
  %i.i = add i64 %i.h, %2                         ; 2 uses
  %i.j = add i64 %i.h, %5                         ; 2 uses
  %i.k = tail call noundef i64 @_RINvNtNtCsiqiOkcJdymw_7similar10algorithms5utils17common_suffix_lenINtB2_12OffsetLookupjEB13_ECskXhPDodhyTq_6mdtest(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %1, i64 noundef %i.i, i64 noundef %3, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %4, i64 noundef %i.j, i64 noundef %6) ; 4 uses
  %i.l = sub i64 %3, %i.k                         ; 9 uses
  %i.m = sub i64 %6, %i.k                         ; 9 uses
  %i.n = getelementptr inbounds nuw i8, ptr %4, i64 24
  %i.o = load i64, ptr %i.n, align 8              ; 8 uses
  %i.p = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.q = load i64, ptr %i.p, align 8              ; 27 uses
  %i.r = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.s = load ptr, ptr %i.r, align 8, !nonnull !3 ; 11 uses
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.u = load i64, ptr %i.t, align 8              ; 5 uses
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.w = load i64, ptr %i.v, align 8              ; 23 uses
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.y = load ptr, ptr %i.x, align 8, !nonnull !3 ; 10 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.f, i64 8 ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %i.ab = getelementptr inbounds nuw i8, ptr %i.f, i64 24
  %i.ac = getelementptr inbounds nuw i8, ptr %i.e, i64 8 ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  %i.ae = getelementptr inbounds nuw i8, ptr %i.e, i64 24
  br label %bb.e

bb.c:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !243)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !244)
  %i.af = load ptr, ptr %0, align 8, !alias.scope !245, !nonnull !3, !align !5, !noundef !3
  tail call void @llvm.experimental.noalias.scope.decl(metadata !246)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !247), !noalias !245
  %i.ag = load ptr, ptr %i.af, align 8, !alias.scope !248, !noalias !245, !nonnull !3, !align !5, !noundef !3 ; 3 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 120 ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ag, i64 136 ; 2 uses
  %i.aj = load i64, ptr %i.ai, align 8, !alias.scope !249, !noalias !250, !noundef !3 ; 3 uses
  %i.ak = load i64, ptr %i.ah, align 8, !range !6, !alias.scope !249, !noalias !250, !noundef !3
  %i.al = icmp eq i64 %i.aj, %i.ak
  br i1 %i.al, label %bb.d, label %_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCsiqiOkcJdymw_7similar5types6DiffOpE8push_mutCskXhPDodhyTq_6mdtest.exit

bb.d:                                             ; preds = %bb.c
  tail call void @_RNvMs3_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecNtNtCsiqiOkcJdymw_7similar5types6DiffOpE8grow_oneBP_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.ah), !noalias !251
  br label %_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCsiqiOkcJdymw_7similar5types6DiffOpE8push_mutCskXhPDodhyTq_6mdtest.exit

_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCsiqiOkcJdymw_7similar5types6DiffOpE8push_mutCskXhPDodhyTq_6mdtest.exit: ; preds = %bb.c, %bb.d
  %i.am = getelementptr inbounds nuw i8, ptr %i.ag, i64 128
  %i.an = load ptr, ptr %i.am, align 8, !alias.scope !249, !noalias !250, !nonnull !3, !noundef !3
  %i.ao = getelementptr inbounds nuw [40 x i8], ptr %i.an, i64 %i.aj ; 4 uses
  store i64 0, ptr %i.ao, align 8, !noalias !250
  %.sroa.4241.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ao, i64 8
  store i64 %2, ptr %.sroa.4241.0..sroa_idx, align 8, !noalias !250
  %.sroa.5242.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ao, i64 16
  store i64 %5, ptr %.sroa.5242.0..sroa_idx, align 8, !noalias !250
  %.sroa.6243.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ao, i64 24
  store i64 %i.h, ptr %.sroa.6243.0..sroa_idx, align 8, !noalias !250
  %i.ap = add i64 %i.aj, 1
  store i64 %i.ap, ptr %i.ai, align 8, !alias.scope !249, !noalias !250
  br label %bb.b

bb.e:                                             ; preds = %_RINvNtNtCsiqiOkcJdymw_7similar10algorithms5myers21try_emit_front_anchorINtNtB4_5utils12OffsetLookupjEB17_INtNtB4_4hook12NoFinishHookQIB1G_QINtNtB4_7compact7CompactIB18_mEB2B_INtNtB4_7replace7ReplaceNtNtB4_7capture7CaptureEEEEECskXhPDodhyTq_6mdtest.exit, %bb.b
  %.sroa.0195.0 = phi i64 [ %i.j, %bb.b ], [ %.sroa.0195.2, %_RINvNtNtCsiqiOkcJdymw_7similar10algorithms5myers21try_emit_front_anchorINtNtB4_5utils12OffsetLookupjEB17_INtNtB4_4hook12NoFinishHookQIB1G_QINtNtB4_7compact7CompactIB18_mEB2B_INtNtB4_7replace7ReplaceNtNtB4_7capture7CaptureEEEEECskXhPDodhyTq_6mdtest.exit ] ; 36 uses
  %.sroa.0.0 = phi i64 [ %i.i, %bb.b ], [ %.sroa.0.2, %_RINvNtNtCsiqiOkcJdymw_7similar10algorithms5myers21try_emit_front_anchorINtNtB4_5utils12OffsetLookupjEB17_INtNtB4_4hook12NoFinishHookQIB1G_QINtNtB4_7compact7CompactIB18_mEB2B_INtNtB4_7replace7ReplaceNtNtB4_7capture7CaptureEEEEECskXhPDodhyTq_6mdtest.exit ] ; 33 uses
  %i.aq = icmp ult i64 %.sroa.0.0, %i.l           ; 2 uses
  %i.ar = icmp ult i64 %.sroa.0195.0, %i.m        ; 3 uses
  %or.cond312 = select i1 %i.aq, i1 %i.ar, i1 false
  br i1 %or.cond312, label %bb.g, label %bb.f

bb.f:                                             ; preds = %_RINvNtNtCsiqiOkcJdymw_7similar10algorithms5myers21try_emit_front_anchorINtNtB4_5utils12OffsetLookupjEB17_INtNtB4_4hook12NoFinishHookQIB1G_QINtNtB4_7compact7CompactIB18_mEB2B_INtNtB4_7replace7ReplaceNtNtB4_7capture7CaptureEEEEECskXhPDodhyTq_6mdtest.exit, %bb.e
  br i1 %i.aq, label %bb.at, label %bb.au

bb.g:                                             ; preds = %bb.e
  %i.as = sub nuw i64 %i.l, %.sroa.0.0            ; 5 uses
  %i.at = sub nuw i64 %i.m, %.sroa.0195.0         ; 6 uses
  %i.au = icmp ult i64 %i.as, 97
  %i.av = icmp ult i64 %i.at, 97
  %or.cond.i = or i1 %i.av, %i.au
  br i1 %or.cond.i, label %_RINvNtNtCsiqiOkcJdymw_7similar10algorithms5myers21try_emit_front_anchorINtNtB4_5utils12OffsetLookupjEB17_INtNtB4_4hook12NoFinishHookQIB1G_QINtNtB4_7compact7CompactIB18_mEB2B_INtNtB4_7replace7ReplaceNtNtB4_7capture7CaptureEEEEECskXhPDodhyTq_6mdtest.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %.sroa.0.0.i53 = call noundef i64 @llvm.umin.i64(i64 %i.at, i64 %i.as) ; 2 uses
  %.sroa.0.0.i54 = call noundef i64 @llvm.umax.i64(i64 %i.at, i64 %i.as)
  %i.aw = shl nuw i64 %.sroa.0.0.i53, 1
  %i.ax = icmp slt i64 %.sroa.0.0.i53, 0
  br i1 %i.ax, label %bb.i, label %bb.j, !prof !7

bb.i:                                             ; preds = %bb.h
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %.sroa.052.0.i = phi i64 [ -1, %bb.i ], [ %i.aw, %bb.h ]
  %i.ay = icmp ult i64 %.sroa.0.0.i54, %.sroa.052.0.i
  br i1 %i.ay, label %_RINvNtNtCsiqiOkcJdymw_7similar10algorithms5myers21try_emit_front_anchorINtNtB4_5utils12OffsetLookupjEB17_INtNtB4_4hook12NoFinishHookQIB1G_QINtNtB4_7compact7CompactIB18_mEB2B_INtNtB4_7replace7ReplaceNtNtB4_7capture7CaptureEEEEECskXhPDodhyTq_6mdtest.exit, label %bb.k

bb.k:                                             ; preds = %bb.j
  %.not.i = icmp ule i64 %i.at, %i.as
  %i.az = icmp ule i64 %i.as, %i.at
  %.not.i.fr = freeze i1 %.not.i
  %i.ba = sub i64 %.sroa.0195.0, %i.o             ; 2 uses
  %i.bb = icmp ult i64 %i.ba, %i.q
  %i.bc = getelementptr inbounds nuw [8 x i8], ptr %i.s, i64 %i.ba
  br label %bb.l

.loopexit:                                        ; preds = %.outer, %bb.z, %bb.o, %bb.y
  %.sroa.525.2.i.ph.lcssa485 = phi i64 [ %.sroa.525.2.i.ph636, %bb.o ], [ %.sroa.525.2.i.ph636, %bb.z ], [ %.sroa.525.2.i.ph636, %bb.y ], [ %.sroa.525.3.i, %.outer ] ; 2 uses
  %.sroa.023.1.i.ph.lcssa478 = phi i64 [ %.sroa.023.1.i.ph637, %bb.o ], [ %.sroa.023.1.i.ph637, %bb.z ], [ %.sroa.023.1.i.ph637, %bb.y ], [ %.sroa.023.2.i, %.outer ] ; 2 uses
  %.sroa.9.2.i.ph.lcssa471 = phi i64 [ %.sroa.9.2.i.ph638, %bb.o ], [ %.sroa.9.2.i.ph638, %bb.z ], [ %.sroa.9.2.i.ph638, %bb.y ], [ %.sroa.9.3.i, %.outer ] ; 2 uses
  %.sroa.12.2.i.ph.lcssa464 = phi i64 [ %.sroa.12.2.i.ph639, %bb.o ], [ %.sroa.12.2.i.ph639, %bb.z ], [ %.sroa.12.2.i.ph639, %bb.y ], [ %.sroa.12.3.i, %.outer ] ; 2 uses
  %.not.i57 = icmp ugt i64 %spec.select313, 4
  %or.cond318 = or i1 %i.bd, %.not.i57
  br i1 %or.cond318, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k, %.loopexit
  %.sroa.12.0.i644 = phi i64 [ undef, %bb.k ], [ %.sroa.12.2.i.ph.lcssa464, %.loopexit ]
  %.sroa.9.0.i643 = phi i64 [ undef, %bb.k ], [ %.sroa.9.2.i.ph.lcssa471, %.loopexit ]
  %.sroa.023.0.i642 = phi i64 [ 0, %bb.k ], [ %.sroa.023.1.i.ph.lcssa478, %.loopexit ]
  %.sroa.525.0.i641 = phi i64 [ undef, %bb.k ], [ %.sroa.525.2.i.ph.lcssa485, %.loopexit ]
  %.sroa.0228.0640 = phi i64 [ 0, %bb.k ], [ %spec.select313, %.loopexit ] ; 11 uses
  %i.bd = icmp eq i64 %.sroa.0228.0640, 4         ; 2 uses
  %i.be = add nuw nsw i64 %.sroa.0228.0640, 1
  %spec.select313 = select i1 %i.bd, i64 4, i64 %i.be ; 2 uses
  %i.bf = icmp eq i64 %.sroa.0228.0640, 0
  %i.bg = add i64 %.sroa.0228.0640, %.sroa.0.0    ; 2 uses
  %i.bh = sub i64 %i.bg, %i.u                     ; 5 uses
  %i.bi = icmp ult i64 %i.bh, %i.w                ; 2 uses
  %i.bj = getelementptr inbounds nuw [8 x i8], ptr %i.y, i64 %i.bh ; 2 uses
  %i.bk = sub i64 %i.l, %i.bg
  br label %.lr.ph

bb.m:                                             ; preds = %.loopexit
  %i.bl = trunc nuw i64 %.sroa.023.1.i.ph.lcssa478 to i1
  br i1 %i.bl, label %.loopexit395, label %_RINvNtNtCsiqiOkcJdymw_7similar10algorithms5myers21try_emit_front_anchorINtNtB4_5utils12OffsetLookupjEB17_INtNtB4_4hook12NoFinishHookQIB1G_QINtNtB4_7compact7CompactIB18_mEB2B_INtNtB4_7replace7ReplaceNtNtB4_7capture7CaptureEEEEECskXhPDodhyTq_6mdtest.exit

.loopexit395:                                     ; preds = %bb.aa, %bb.m
  %.sroa.525.1.i = phi i64 [ %.sroa.525.2.i.ph.lcssa485, %bb.m ], [ %.sroa.0228.0640, %bb.aa ] ; 4 uses
  %.sroa.9.1.i = phi i64 [ %.sroa.9.2.i.ph.lcssa471, %bb.m ], [ %.us-phi548, %bb.aa ] ; 4 uses
  %.sroa.12.1.i = phi i64 [ %.sroa.12.2.i.ph.lcssa464, %bb.m ], [ %.sroa.01.0.i.lcssa, %bb.aa ] ; 3 uses
  %i.bm = icmp eq i64 %.sroa.525.1.i, 0
  %i.bn = icmp eq i64 %.sroa.9.1.i, 0             ; 2 uses
  br i1 %i.bm, label %bb.ai, label %bb.aj

.lr.ph.split.split:                               ; preds = %.lr.ph.split, %bb.o
  %.sroa.0229.0523 = phi i64 [ %spec.select315, %bb.o ], [ %.sroa.0229.0.ph635, %.lr.ph.split ] ; 3 uses
  %i.bo = icmp eq i64 %.sroa.0229.0523, 4         ; 3 uses
  %i.bp = add nuw nsw i64 %.sroa.0229.0523, 1
  %spec.select315 = select i1 %i.bo, i64 4, i64 %i.bp ; 3 uses
  %i.bq = call noundef zeroext i1 @_RNvNtCsiqiOkcJdymw_7similar16deadline_support17deadline_exceeded(i64 %9, i32 noundef range(i32 -1, 1000000000) %10), !noalias !252
  br i1 %i.bq, label %_RINvNtNtCsiqiOkcJdymw_7similar10algorithms5myers21try_emit_front_anchorINtNtB4_5utils12OffsetLookupjEB17_INtNtB4_4hook12NoFinishHookQIB1G_QINtNtB4_7compact7CompactIB18_mEB2B_INtNtB4_7replace7ReplaceNtNtB4_7capture7CaptureEEEEECskXhPDodhyTq_6mdtest.exit, label %bb.n

bb.n:                                             ; preds = %.lr.ph.split.split
  %.not647 = icmp eq i64 %.sroa.0229.0523, 0
  br i1 %.not647, label %bb.p, label %bb.o

bb.o:                                             ; preds = %bb.n, %_RNvXs3_NtNtCsiqiOkcJdymw_7similar10algorithms5utilsINtB5_12OffsetLookupjEINtNtNtCs4NRVxsYgnAr_4core3ops5index5IndexjE5indexCskXhPDodhyTq_6mdtest.exit30
  %.not.i59 = icmp ugt i64 %spec.select315, 4
  %or.cond319 = select i1 %i.bo, i1 true, i1 %.not.i59
  br i1 %or.cond319, label %.loopexit, label %.lr.ph.split.split

bb.p:                                             ; preds = %bb.n
  br i1 %i.bb, label %_RNvXs3_NtNtCsiqiOkcJdymw_7similar10algorithms5utilsINtB5_12OffsetLookupjEINtNtNtCs4NRVxsYgnAr_4core3ops5index5IndexjE5indexCskXhPDodhyTq_6mdtest.exit31, label %.split.loopexit1078

.split.loopexit1078:                              ; preds = %bb.p
  %i.br = sub i64 %.sroa.0195.0, %i.o
  br label %.split

.split:                                           ; preds = %bb.x, %.split.loopexit1078
  %.us-phi = phi i64 [ %i.br, %.split.loopexit1078 ], [ %i.ci, %bb.x ]
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking18panic_bounds_check(i64 noundef %.us-phi, i64 noundef %i.q, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @79) #14, !noalias !253
  unreachable

_RNvXs3_NtNtCsiqiOkcJdymw_7similar10algorithms5utilsINtB5_12OffsetLookupjEINtNtNtCs4NRVxsYgnAr_4core3ops5index5IndexjE5indexCskXhPDodhyTq_6mdtest.exit31: ; preds = %bb.p
  br i1 %i.bi, label %_RNvXs3_NtNtCsiqiOkcJdymw_7similar10algorithms5utilsINtB5_12OffsetLookupjEINtNtNtCs4NRVxsYgnAr_4core3ops5index5IndexjE5indexCskXhPDodhyTq_6mdtest.exit30, label %.split533

.split533:                                        ; preds = %_RNvXs3_NtNtCsiqiOkcJdymw_7similar10algorithms5utilsINtB5_12OffsetLookupjEINtNtNtCs4NRVxsYgnAr_4core3ops5index5IndexjE5indexCskXhPDodhyTq_6mdtest.exit31, %_RNvXs3_NtNtCsiqiOkcJdymw_7similar10algorithms5utilsINtB5_12OffsetLookupjEINtNtNtCs4NRVxsYgnAr_4core3ops5index5IndexjE5indexCskXhPDodhyTq_6mdtest.exit31.us
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking18panic_bounds_check(i64 noundef %i.bh, i64 noundef %i.w, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @80) #14, !noalias !254
  unreachable

_RNvXs3_NtNtCsiqiOkcJdymw_7similar10algorithms5utilsINtB5_12OffsetLookupjEINtNtNtCs4NRVxsYgnAr_4core3ops5index5IndexjE5indexCskXhPDodhyTq_6mdtest.exit30: ; preds = %_RNvXs3_NtNtCsiqiOkcJdymw_7similar10algorithms5utilsINtB5_12OffsetLookupjEINtNtNtCs4NRVxsYgnAr_4core3ops5index5IndexjE5indexCskXhPDodhyTq_6mdtest.exit31
  %.val49 = load i64, ptr %i.bc, align 8, !noundef !3
  %.val50 = load i64, ptr %i.bj, align 8, !noundef !3
  %.not316 = icmp eq i64 %.val49, %.val50
  br i1 %.not316, label %.split537, label %bb.o

.split537.loopexit:                               ; preds = %_RNvXs3_NtNtCsiqiOkcJdymw_7similar10algorithms5utilsINtB5_12OffsetLookupjEINtNtNtCs4NRVxsYgnAr_4core3ops5index5IndexjE5indexCskXhPDodhyTq_6mdtest.exit30.us
  %.pre878 = sub i64 %i.m, %i.ch
  br label %.split537

.split537:                                        ; preds = %_RNvXs3_NtNtCsiqiOkcJdymw_7similar10algorithms5utilsINtB5_12OffsetLookupjEINtNtNtCs4NRVxsYgnAr_4core3ops5index5IndexjE5indexCskXhPDodhyTq_6mdtest.exit30, %.split537.loopexit
  %.pre-phi = phi i64 [ %.pre878, %.split537.loopexit ], [ %i.at, %_RNvXs3_NtNtCsiqiOkcJdymw_7similar10algorithms5utilsINtB5_12OffsetLookupjEINtNtNtCs4NRVxsYgnAr_4core3ops5index5IndexjE5indexCskXhPDodhyTq_6mdtest.exit30 ]
  %.us-phi543 = phi i64 [ %i.ch, %.split537.loopexit ], [ %.sroa.0195.0, %_RNvXs3_NtNtCsiqiOkcJdymw_7similar10algorithms5utilsINtB5_12OffsetLookupjEINtNtNtCs4NRVxsYgnAr_4core3ops5index5IndexjE5indexCskXhPDodhyTq_6mdtest.exit30 ]
  %.us-phi546 = phi i1 [ %i.ce, %.split537.loopexit ], [ %i.bo, %_RNvXs3_NtNtCsiqiOkcJdymw_7similar10algorithms5utilsINtB5_12OffsetLookupjEINtNtNtCs4NRVxsYgnAr_4core3ops5index5IndexjE5indexCskXhPDodhyTq_6mdtest.exit30 ]
  %.us-phi547 = phi i64 [ %spec.select315.us, %.split537.loopexit ], [ %spec.select315, %_RNvXs3_NtNtCsiqiOkcJdymw_7similar10algorithms5utilsINtB5_12OffsetLookupjEINtNtNtCs4NRVxsYgnAr_4core3ops5index5IndexjE5indexCskXhPDodhyTq_6mdtest.exit30 ] ; 2 uses
  %.us-phi548 = phi i64 [ %.sroa.0229.0523.us, %.split537.loopexit ], [ 0, %_RNvXs3_NtNtCsiqiOkcJdymw_7similar10algorithms5utilsINtB5_12OffsetLookupjEINtNtNtCs4NRVxsYgnAr_4core3ops5index5IndexjE5indexCskXhPDodhyTq_6mdtest.exit30 ] ; 6 uses
  %.sroa.0.0.i63 = call noundef i64 @llvm.umin.i64(i64 %.pre-phi, i64 %i.bk) ; 3 uses
  %.not648 = icmp eq i64 %.sroa.0.0.i63, 0
  br i1 %.not648, label %.outer, label %.lr.ph632

.lr.ph632:                                        ; preds = %.split537
  %i.bs = sub i64 %.us-phi543, %i.o               ; 2 uses
  br label %bb.q

bb.q:                                             ; preds = %.lr.ph632, %bb.v
  %.sroa.01.0.i631 = phi i64 [ 0, %.lr.ph632 ], [ %i.cc, %bb.v ] ; 5 uses
  %i.bt = and i64 %.sroa.01.0.i631, 1023
  %i.bu = icmp eq i64 %i.bt, 0
  br i1 %i.bu, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  %i.bv = call noundef zeroext i1 @_RNvNtCsiqiOkcJdymw_7similar16deadline_support17deadline_exceeded(i64 %9, i32 noundef range(i32 -1, 1000000000) %10), !noalias !252
  br i1 %i.bv, label %_RINvNtNtCsiqiOkcJdymw_7similar10algorithms5myers21try_emit_front_anchorINtNtB4_5utils12OffsetLookupjEB17_INtNtB4_4hook12NoFinishHookQIB1G_QINtNtB4_7compact7CompactIB18_mEB2B_INtNtB4_7replace7ReplaceNtNtB4_7capture7CaptureEEEEECskXhPDodhyTq_6mdtest.exit, label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.q
  %i.bw = add nuw i64 %i.bs, %.sroa.01.0.i631     ; 2 uses
  %i.bx = icmp ult i64 %i.bw, %i.q
  br i1 %i.bx, label %_RNvXs3_NtNtCsiqiOkcJdymw_7similar10algorithms5utilsINtB5_12OffsetLookupjEINtNtNtCs4NRVxsYgnAr_4core3ops5index5IndexjE5indexCskXhPDodhyTq_6mdtest.exit29, label %bb.t

bb.t:                                             ; preds = %bb.s
end_hunk_0
begin_hunk_1_@_RINvNtNtCsiqiOkcJdymw_7similar10algorithms5myers7conquerINtNtB4_5utils12OffsetLookupjEBS_INtNtB4_4hook12NoFinishHookQIB1q_QINtNtB4_7compact7CompactIBT_mEB2l_INtNtB4_7replace7ReplaceNtNtB4_7capture7CaptureEEEEECskXhPDodhyTq_6mdtest:bb.a
  br label %bb.ak

bb.ao:                                            ; preds = %bb.aj
  call void @llvm.experimental.noalias.scope.decl(metadata !273)
  call void @llvm.experimental.noalias.scope.decl(metadata !274), !noalias !258
  %i.dz = load ptr, ptr %0, align 8, !alias.scope !275, !noalias !258, !nonnull !3, !align !5, !noundef !3 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !276)
  call void @llvm.experimental.noalias.scope.decl(metadata !277), !noalias !278
  %i.ea = load ptr, ptr %i.dz, align 8, !alias.scope !279, !noalias !278, !nonnull !3, !align !5, !noundef !3 ; 3 uses
  %i.eb = getelementptr inbounds nuw i8, ptr %i.ea, i64 120 ; 2 uses
  %i.ec = getelementptr inbounds nuw i8, ptr %i.ea, i64 136 ; 2 uses
  %i.ed = load i64, ptr %i.ec, align 8, !alias.scope !280, !noalias !281, !noundef !3 ; 3 uses
  %i.ee = load i64, ptr %i.eb, align 8, !range !6, !alias.scope !280, !noalias !281, !noundef !3
  %i.ef = icmp eq i64 %i.ed, %i.ee
  br i1 %i.ef, label %bb.ap, label %_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCsiqiOkcJdymw_7similar5types6DiffOpE8push_mutCskXhPDodhyTq_6mdtest.exit68

bb.ap:                                            ; preds = %bb.ao
  call void @_RNvMs3_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecNtNtCsiqiOkcJdymw_7similar5types6DiffOpE8grow_oneBP_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.eb), !noalias !282
  br label %_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCsiqiOkcJdymw_7similar5types6DiffOpE8push_mutCskXhPDodhyTq_6mdtest.exit68

_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCsiqiOkcJdymw_7similar5types6DiffOpE8push_mutCskXhPDodhyTq_6mdtest.exit68: ; preds = %bb.ao, %bb.ap
  %i.eg = getelementptr inbounds nuw i8, ptr %i.ea, i64 128
  %i.eh = load ptr, ptr %i.eg, align 8, !alias.scope !280, !noalias !281, !nonnull !3, !noundef !3
  %i.ei = getelementptr inbounds nuw [40 x i8], ptr %i.eh, i64 %i.ed ; 4 uses
  store i64 1, ptr %i.ei, align 8, !noalias !281
  %.sroa.4246.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ei, i64 8
  store i64 %.sroa.0.0, ptr %.sroa.4246.0..sroa_idx, align 8, !noalias !281
  %.sroa.5247.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ei, i64 16
  store i64 %.sroa.525.1.i, ptr %.sroa.5247.0..sroa_idx, align 8, !noalias !281
  %.sroa.6248.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ei, i64 24
  store i64 %.sroa.0195.0, ptr %.sroa.6248.0..sroa_idx, align 8, !noalias !281
  %i.ej = add i64 %i.ed, 1
  store i64 %i.ej, ptr %i.ec, align 8, !alias.scope !280, !noalias !281
  br label %bb.ak

bb.aq:                                            ; preds = %bb.aj
  call void @llvm.experimental.noalias.scope.decl(metadata !283)
  call void @llvm.experimental.noalias.scope.decl(metadata !284), !noalias !258
  %i.ek = load ptr, ptr %0, align 8, !alias.scope !285, !noalias !258, !nonnull !3, !align !5, !noundef !3 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !286)
  call void @llvm.experimental.noalias.scope.decl(metadata !287), !noalias !288
  %i.el = load ptr, ptr %i.ek, align 8, !alias.scope !289, !noalias !288, !nonnull !3, !align !5, !noundef !3 ; 3 uses
  %i.em = getelementptr inbounds nuw i8, ptr %i.el, i64 120 ; 4 uses
  %i.en = getelementptr inbounds nuw i8, ptr %i.el, i64 136 ; 3 uses
  %i.eo = load i64, ptr %i.en, align 8, !alias.scope !290, !noalias !291, !noundef !3 ; 4 uses
  %i.ep = load i64, ptr %i.em, align 8, !range !6, !alias.scope !290, !noalias !291, !noundef !3
  %i.eq = icmp eq i64 %i.eo, %i.ep
  br i1 %i.eq, label %bb.ar, label %_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCsiqiOkcJdymw_7similar5types6DiffOpE8push_mutCskXhPDodhyTq_6mdtest.exit69

bb.ar:                                            ; preds = %bb.aq
  call void @_RNvMs3_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecNtNtCsiqiOkcJdymw_7similar5types6DiffOpE8grow_oneBP_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.em), !noalias !292
  br label %_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCsiqiOkcJdymw_7similar5types6DiffOpE8push_mutCskXhPDodhyTq_6mdtest.exit69

_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCsiqiOkcJdymw_7similar5types6DiffOpE8push_mutCskXhPDodhyTq_6mdtest.exit69: ; preds = %bb.aq, %bb.ar
  %i.er = getelementptr inbounds nuw i8, ptr %i.el, i64 128 ; 2 uses
  %i.es = load ptr, ptr %i.er, align 8, !alias.scope !290, !noalias !291, !nonnull !3, !noundef !3
  %i.et = getelementptr inbounds nuw [40 x i8], ptr %i.es, i64 %i.eo ; 4 uses
  store i64 1, ptr %i.et, align 8, !noalias !291
  %.sroa.4276.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.et, i64 8
  store i64 %.sroa.0.0, ptr %.sroa.4276.0..sroa_idx, align 8, !noalias !291
  %.sroa.5277.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.et, i64 16
  store i64 %.sroa.525.1.i, ptr %.sroa.5277.0..sroa_idx, align 8, !noalias !291
  %.sroa.6278.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.et, i64 24
  store i64 %.sroa.0195.0, ptr %.sroa.6278.0..sroa_idx, align 8, !noalias !291
  %i.eu = add i64 %i.eo, 1                        ; 3 uses
  store i64 %i.eu, ptr %i.en, align 8, !alias.scope !290, !noalias !291
  %i.ev = load i64, ptr %i.em, align 8, !range !6, !alias.scope !293, !noalias !291, !noundef !3
  %i.ew = icmp eq i64 %i.eu, %i.ev
  br i1 %i.ew, label %bb.as, label %_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCsiqiOkcJdymw_7similar5types6DiffOpE8push_mutCskXhPDodhyTq_6mdtest.exit70

bb.as:                                            ; preds = %_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCsiqiOkcJdymw_7similar5types6DiffOpE8push_mutCskXhPDodhyTq_6mdtest.exit69
  call void @_RNvMs3_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecNtNtCsiqiOkcJdymw_7similar5types6DiffOpE8grow_oneBP_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.em), !noalias !294
  br label %_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCsiqiOkcJdymw_7similar5types6DiffOpE8push_mutCskXhPDodhyTq_6mdtest.exit70

_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCsiqiOkcJdymw_7similar5types6DiffOpE8push_mutCskXhPDodhyTq_6mdtest.exit70: ; preds = %_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCsiqiOkcJdymw_7similar5types6DiffOpE8push_mutCskXhPDodhyTq_6mdtest.exit69, %bb.as
  %i.ex = load ptr, ptr %i.er, align 8, !alias.scope !293, !noalias !291, !nonnull !3, !noundef !3
  %i.ey = getelementptr inbounds nuw [40 x i8], ptr %i.ex, i64 %i.eu ; 4 uses
  store i64 2, ptr %i.ey, align 8, !noalias !291
  %.sroa.4281.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ey, i64 8
  store i64 %.sroa.0.0, ptr %.sroa.4281.0..sroa_idx, align 8, !noalias !291
  %.sroa.5282.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ey, i64 16
  store i64 %.sroa.0195.0, ptr %.sroa.5282.0..sroa_idx, align 8, !noalias !291
  %.sroa.6283.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ey, i64 24
  store i64 %.sroa.9.1.i, ptr %.sroa.6283.0..sroa_idx, align 8, !noalias !291
  %i.ez = add i64 %i.eo, 2
  store i64 %i.ez, ptr %i.en, align 8, !alias.scope !293, !noalias !291
  br label %bb.ak

_RINvNtNtCsiqiOkcJdymw_7similar10algorithms5myers21try_emit_front_anchorINtNtB4_5utils12OffsetLookupjEB17_INtNtB4_4hook12NoFinishHookQIB1G_QINtNtB4_7compact7CompactIB18_mEB2B_INtNtB4_7replace7ReplaceNtNtB4_7capture7CaptureEEEEECskXhPDodhyTq_6mdtest.exit: ; preds = %.lr.ph.split.split.us, %.lr.ph.split.split, %.lr.ph.split.us, %bb.r, %bb.g, %bb.j, %bb.m, %_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCsiqiOkcJdymw_7similar5types6DiffOpE8push_mutCskXhPDodhyTq_6mdtest.exit66
  %.sroa.0195.2 = phi i64 [ %.sroa.0195.0, %bb.g ], [ %.sroa.0195.0, %bb.j ], [ %.sroa.0195.0, %bb.m ], [ %i.do, %_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCsiqiOkcJdymw_7similar5types6DiffOpE8push_mutCskXhPDodhyTq_6mdtest.exit66 ], [ %.sroa.0195.0, %.lr.ph.split.split ], [ %.sroa.0195.0, %.lr.ph.split.us ], [ %.sroa.0195.0, %bb.r ], [ %.sroa.0195.0, %.lr.ph.split.split.us ] ; 2 uses
  %.sroa.0.2 = phi i64 [ %.sroa.0.0, %bb.g ], [ %.sroa.0.0, %bb.j ], [ %.sroa.0.0, %bb.m ], [ %i.dn, %_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCsiqiOkcJdymw_7similar5types6DiffOpE8push_mutCskXhPDodhyTq_6mdtest.exit66 ], [ %.sroa.0.0, %.lr.ph.split.split ], [ %.sroa.0.0, %.lr.ph.split.us ], [ %.sroa.0.0, %bb.r ], [ %.sroa.0.0, %.lr.ph.split.split.us ] ; 2 uses
  %i.fa = icmp eq i64 %.sroa.0.2, %.sroa.0.0
  %i.fb = icmp eq i64 %.sroa.0195.2, %.sroa.0195.0
  %or.cond = select i1 %i.fa, i1 %i.fb, i1 false
  br i1 %or.cond, label %bb.f, label %bb.e

bb.at:                                            ; preds = %bb.f
  br i1 %i.ar, label %bb.ay, label %bb.aw

bb.au:                                            ; preds = %bb.f
  br i1 %i.ar, label %.thread, label %bb.av

bb.av:                                            ; preds = %.sink.split.i.thread, %_RINvNtNtCsiqiOkcJdymw_7similar10algorithms5myers27maybe_emit_small_side_exactINtNtB4_5utils12OffsetLookupjEB1d_INtNtB4_4hook12NoFinishHookQIB1M_QINtNtB4_7compact7CompactIB1e_mEB2H_INtNtB4_7replace7ReplaceNtNtB4_7capture7CaptureEEEEECskXhPDodhyTq_6mdtest.exit.thread309, %_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCsiqiOkcJdymw_7similar5types6DiffOpE8push_mutCskXhPDodhyTq_6mdtest.exit71, %_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCsiqiOkcJdymw_7similar5types6DiffOpE8push_mutCskXhPDodhyTq_6mdtest.exit161, %_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCsiqiOkcJdymw_7similar5types6DiffOpE8push_mutCskXhPDodhyTq_6mdtest.exit160, %bb.gs, %bb.au
  %.not26 = icmp eq i64 %i.k, 0
  br i1 %.not26, label %bb.gz, label %bb.gx

bb.aw:                                            ; preds = %bb.at
  %i.fc = sub nuw i64 %i.l, %.sroa.0.0
  call void @llvm.experimental.noalias.scope.decl(metadata !295)
  call void @llvm.experimental.noalias.scope.decl(metadata !296)
  %i.fd = load ptr, ptr %0, align 8, !alias.scope !297, !nonnull !3, !align !5, !noundef !3
  call void @llvm.experimental.noalias.scope.decl(metadata !298)
  call void @llvm.experimental.noalias.scope.decl(metadata !299), !noalias !297
  %i.fe = load ptr, ptr %i.fd, align 8, !alias.scope !300, !noalias !297, !nonnull !3, !align !5, !noundef !3 ; 3 uses
  %i.ff = getelementptr inbounds nuw i8, ptr %i.fe, i64 120 ; 2 uses
  %i.fg = getelementptr inbounds nuw i8, ptr %i.fe, i64 136 ; 2 uses
  %i.fh = load i64, ptr %i.fg, align 8, !alias.scope !301, !noalias !302, !noundef !3 ; 3 uses
  %i.fi = load i64, ptr %i.ff, align 8, !range !6, !alias.scope !301, !noalias !302, !noundef !3
  %i.fj = icmp eq i64 %i.fh, %i.fi
  br i1 %i.fj, label %bb.ax, label %_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCsiqiOkcJdymw_7similar5types6DiffOpE8push_mutCskXhPDodhyTq_6mdtest.exit71

bb.ax:                                            ; preds = %bb.aw
  call void @_RNvMs3_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecNtNtCsiqiOkcJdymw_7similar5types6DiffOpE8grow_oneBP_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.ff), !noalias !303
  br label %_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCsiqiOkcJdymw_7similar5types6DiffOpE8push_mutCskXhPDodhyTq_6mdtest.exit71

_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCsiqiOkcJdymw_7similar5types6DiffOpE8push_mutCskXhPDodhyTq_6mdtest.exit71: ; preds = %bb.aw, %bb.ax
  %i.fk = getelementptr inbounds nuw i8, ptr %i.fe, i64 128
  %i.fl = load ptr, ptr %i.fk, align 8, !alias.scope !301, !noalias !302, !nonnull !3, !noundef !3
  %i.fm = getelementptr inbounds nuw [40 x i8], ptr %i.fl, i64 %i.fh ; 4 uses
  store i64 1, ptr %i.fm, align 8, !noalias !302
  %.sroa.4251.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.fm, i64 8
  store i64 %.sroa.0.0, ptr %.sroa.4251.0..sroa_idx, align 8, !noalias !302
  %.sroa.5252.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.fm, i64 16
  store i64 %i.fc, ptr %.sroa.5252.0..sroa_idx, align 8, !noalias !302
  %.sroa.6253.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.fm, i64 24
  store i64 %.sroa.0195.0, ptr %.sroa.6253.0..sroa_idx, align 8, !noalias !302
  %i.fn = add i64 %i.fh, 1
  store i64 %i.fn, ptr %i.fg, align 8, !alias.scope !301, !noalias !302
  br label %bb.av

bb.ay:                                            ; preds = %bb.at
  %i.fo = call noundef zeroext i1 @_RNvNtCsiqiOkcJdymw_7similar16deadline_support17deadline_exceeded(i64 %9, i32 noundef range(i32 -1, 1000000000) %10), !noalias !304
  br i1 %i.fo, label %_RINvNtNtCsiqiOkcJdymw_7similar10algorithms5myers27maybe_emit_small_side_exactINtNtB4_5utils12OffsetLookupjEB1d_INtNtB4_4hook12NoFinishHookQIB1M_QINtNtB4_7compact7CompactIB1e_mEB2H_INtNtB4_7replace7ReplaceNtNtB4_7capture7CaptureEEEEECskXhPDodhyTq_6mdtest.exit.thread, label %bb.az

bb.az:                                            ; preds = %bb.ay
  %i.fp = sub nuw i64 %i.l, %.sroa.0.0            ; 22 uses
  %i.fq = sub nuw i64 %i.m, %.sroa.0195.0         ; 22 uses
  %i.fr = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %i.fp, i64 %i.fq) ; 2 uses
  %i.fs = extractvalue { i64, i1 } %i.fr, 1
  br i1 %i.fs, label %_RINvNtNtCsiqiOkcJdymw_7similar10algorithms5myers27maybe_emit_small_side_exactINtNtB4_5utils12OffsetLookupjEB1d_INtNtB4_4hook12NoFinishHookQIB1M_QINtNtB4_7compact7CompactIB1e_mEB2H_INtNtB4_7replace7ReplaceNtNtB4_7capture7CaptureEEEEECskXhPDodhyTq_6mdtest.exit.thread, label %bb.ba, !prof !7

bb.ba:                                            ; preds = %bb.az
  %i.ft = extractvalue { i64, i1 } %i.fr, 0
  %.sroa.0.0.i73 = call noundef i64 @llvm.umax.i64(i64 %i.fq, i64 %i.fp)
  %.sroa.0.0.i72 = call noundef i64 @llvm.umin.i64(i64 %i.fq, i64 %i.fp)
  %i.fu = add i64 %.sroa.0.0.i72, -65
  %or.cond.i27 = icmp ult i64 %i.fu, -64
  %i.fv = icmp ult i64 %.sroa.0.0.i73, 512
  %or.cond1.i = or i1 %i.fv, %or.cond.i27
  %i.fw = icmp ugt i64 %i.ft, 64000000
  %or.cond3.i = select i1 %or.cond1.i, i1 true, i1 %i.fw
  br i1 %or.cond3.i, label %_RINvNtNtCsiqiOkcJdymw_7similar10algorithms5myers27maybe_emit_small_side_exactINtNtB4_5utils12OffsetLookupjEB1d_INtNtB4_4hook12NoFinishHookQIB1M_QINtNtB4_7compact7CompactIB1e_mEB2H_INtNtB4_7replace7ReplaceNtNtB4_7capture7CaptureEEEEECskXhPDodhyTq_6mdtest.exit.thread, label %bb.bb

bb.bb:                                            ; preds = %bb.ba
  %.not.i28 = icmp ugt i64 %i.fp, %i.fq
  %.val51 = load ptr, ptr %0, align 8             ; 20 uses
  %i.fx = call noundef zeroext i1 @_RNvNtCsiqiOkcJdymw_7similar16deadline_support17deadline_exceeded(i64 %9, i32 noundef range(i32 -1, 1000000000) %10), !noalias !3 ; 2 uses
  br i1 %.not.i28, label %bb.bc, label %bb.dw

bb.bc:                                            ; preds = %bb.bb
  br i1 %i.fx, label %_RINvNtNtCsiqiOkcJdymw_7similar10algorithms5myers27maybe_emit_small_side_exactINtNtB4_5utils12OffsetLookupjEB1d_INtNtB4_4hook12NoFinishHookQIB1M_QINtNtB4_7compact7CompactIB1e_mEB2H_INtNtB4_7replace7ReplaceNtNtB4_7capture7CaptureEEEEECskXhPDodhyTq_6mdtest.exit.thread, label %bb.bd

bb.bd:                                            ; preds = %bb.bc
  %i.fy = add i64 %i.fp, 1                        ; 11 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !305
  %i.fz = add nuw i64 %i.fq, 1
  %i.ga = mul i64 %i.fy, %i.fz                    ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !306)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !307
  call void @_RNvMs4_NtCscdodAO9FK5_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCskXhPDodhyTq_6mdtest(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.c, i64 noundef %i.ga, i1 noundef zeroext true, i64 noundef 1, i64 noundef 1), !noalias !307
  %i.gb = load i64, ptr %i.c, align 8, !range !8, !noalias !307, !noundef !3
  %i.gc = trunc nuw i64 %i.gb to i1
  %i.gd = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.ge = load i64, ptr %i.gd, align 8, !range !9, !noalias !307, !noundef !3 ; 2 uses
  %i.gf = getelementptr inbounds nuw i8, ptr %i.c, i64 16 ; 2 uses
  br i1 %i.gc, label %bb.be, label %.lr.ph469.i, !prof !7

bb.be:                                            ; preds = %bb.bd
  %i.gg = load i64, ptr %i.gf, align 8, !noalias !307
  call void @_RNvNtCscdodAO9FK5_5alloc7raw_vec12handle_error(i64 noundef %i.ge, i64 %i.gg) #14, !noalias !307
  unreachable

.lr.ph469.i:                                      ; preds = %bb.bd
  %i.gh = load ptr, ptr %i.gf, align 8, !noalias !307, !nonnull !3, !noundef !3
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !307
  store i64 %i.ge, ptr %i.d, align 8, !alias.scope !306, !noalias !305
  %i.gi = getelementptr inbounds nuw i8, ptr %i.d, i64 8 ; 7 uses
  store ptr %i.gh, ptr %i.gi, align 8, !alias.scope !306, !noalias !305
  %i.gj = getelementptr inbounds nuw i8, ptr %i.d, i64 16 ; 7 uses
  store i64 %i.ga, ptr %i.gj, align 8, !alias.scope !306, !noalias !305
  %invariant.op470.i = sub i64 %.sroa.0195.0, %i.o ; 3 uses
  %invariant.op.i = sub i64 %.sroa.0.0, %i.u      ; 3 uses
  br label %.lr.ph469.split.i

.lr.ph469.split.i:                                ; preds = %.lr.ph469.i, %..loopexit39_crit_edge.split.us.i
  %.sroa.0102.0468.i = phi i64 [ %i.gk, %..loopexit39_crit_edge.split.us.i ], [ %i.fq, %.lr.ph469.i ] ; 2 uses
  %i.gk = add i64 %.sroa.0102.0468.i, -1          ; 4 uses
  %i.gl = invoke noundef zeroext i1 @_RNvNtCsiqiOkcJdymw_7similar16deadline_support17deadline_exceeded(i64 %9, i32 noundef range(i32 -1, 1000000000) %10)
          to label %bb.dh unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !305

._crit_edge496.i:                                 ; preds = %bb.cu
  br i1 %i.ma, label %bb.bf, label %bb.bh

.lr.ph495.i:                                      ; preds = %..loopexit39_crit_edge.split.us.i, %bb.cu
  %.sroa.05.0.not494.i = phi i1 [ false, %bb.cu ], [ true, %..loopexit39_crit_edge.split.us.i ] ; 3 uses
  %.sroa.09.0493.i = phi i64 [ %.sroa.09.3.i, %bb.cu ], [ 0, %..loopexit39_crit_edge.split.us.i ] ; 12 uses
  %.sroa.038.0492.i = phi i64 [ %.sroa.038.3.i, %bb.cu ], [ 0, %..loopexit39_crit_edge.split.us.i ] ; 17 uses
  %i.gm = and i64 %.sroa.038.0492.i, 1023
  %i.gn = icmp eq i64 %i.gm, 0
  %or.cond170.i = select i1 %.sroa.05.0.not494.i, i1 %i.gn, i1 false ; 2 uses
  br i1 %or.cond170.i, label %bb.bl, label %bb.bk

bb.bf:                                            ; preds = %._crit_edge496.i
  %i.go = add i64 %.sroa.038.3.i, %.sroa.0.0      ; 2 uses
  %i.gp = sub nuw i64 %i.fp, %.sroa.038.3.i
  %i.gq = add i64 %.sroa.09.3.i, %.sroa.0195.0    ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val51) ]
  %i.gr = load ptr, ptr %.val51, align 8, !alias.scope !308, !noalias !305, !nonnull !3, !align !5, !noundef !3 ; 3 uses
  %i.gs = getelementptr inbounds nuw i8, ptr %i.gr, i64 120 ; 2 uses
  %i.gt = getelementptr inbounds nuw i8, ptr %i.gr, i64 136 ; 2 uses
  %i.gu = load i64, ptr %i.gt, align 8, !alias.scope !309, !noalias !305, !noundef !3 ; 3 uses
  %i.gv = load i64, ptr %i.gs, align 8, !range !6, !alias.scope !309, !noalias !305, !noundef !3
  %i.gw = icmp eq i64 %i.gu, %i.gv
  br i1 %i.gw, label %bb.bg, label %_RNvXs0_NtNtCsiqiOkcJdymw_7similar10algorithms4hookINtB5_12NoFinishHookQIBN_QINtNtB7_7compact7CompactINtNtB7_5utils12OffsetLookupmEB1A_INtNtB7_7replace7ReplaceNtNtB7_7capture7CaptureEEEENtB5_8DiffHook6deleteCskXhPDodhyTq_6mdtest.exit181.i

bb.bg:                                            ; preds = %bb.bf
  invoke void @_RNvMs3_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecNtNtCsiqiOkcJdymw_7similar5types6DiffOpE8grow_oneBP_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.gs)
          to label %_RNvXs0_NtNtCsiqiOkcJdymw_7similar10algorithms4hookINtB5_12NoFinishHookQIBN_QINtNtB7_7compact7CompactINtNtB7_5utils12OffsetLookupmEB1A_INtNtB7_7replace7ReplaceNtNtB7_7capture7CaptureEEEENtB5_8DiffHook6deleteCskXhPDodhyTq_6mdtest.exit181.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !305

_RNvXs0_NtNtCsiqiOkcJdymw_7similar10algorithms4hookINtB5_12NoFinishHookQIBN_QINtNtB7_7compact7CompactINtNtB7_5utils12OffsetLookupmEB1A_INtNtB7_7replace7ReplaceNtNtB7_7capture7CaptureEEEENtB5_8DiffHook6deleteCskXhPDodhyTq_6mdtest.exit181.i: ; preds = %bb.bg, %bb.bf
  %i.gx = getelementptr inbounds nuw i8, ptr %i.gr, i64 128
  %i.gy = load ptr, ptr %i.gx, align 8, !alias.scope !309, !noalias !305, !nonnull !3, !noundef !3
  %i.gz = getelementptr inbounds nuw [40 x i8], ptr %i.gy, i64 %i.gu ; 4 uses
  store i64 1, ptr %i.gz, align 8, !noalias !305
  %.sroa.47.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.gz, i64 8
  store i64 %i.go, ptr %.sroa.47.0..sroa_idx.i, align 8, !noalias !305
  %.sroa.58.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.gz, i64 16
  store i64 %i.gp, ptr %.sroa.58.0..sroa_idx.i, align 8, !noalias !305
  %.sroa.69.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.gz, i64 24
  store i64 %i.gq, ptr %.sroa.69.0..sroa_idx.i, align 8, !noalias !305
  %i.ha = add i64 %i.gu, 1
  store i64 %i.ha, ptr %i.gt, align 8, !alias.scope !309, !noalias !305
  br i1 %i.lz, label %bb.bi, label %.sink.split.i.thread

bb.bh:                                            ; preds = %._crit_edge496.i
  br i1 %i.lz, label %._crit_edge880, label %.sink.split.i.thread

._crit_edge880:                                   ; preds = %bb.bh
  %.pre881 = add i64 %.sroa.038.3.i, %.sroa.0.0
  %.pre883 = add i64 %.sroa.09.3.i, %.sroa.0195.0
  br label %bb.bi

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %bb.di, %bb.bl, %bb.bw, %bb.cj, %bb.cv, %bb.cx, %bb.bx, %bb.ck, %.lr.ph469.split.i, %bb.dt, %.invoke.i, %bb.bj, %bb.bg
  %lpad.loopexit.split-lp1548 = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VechEECskXhPDodhyTq_6mdtest(ptr noalias noundef align 8 dereferenceable(24) %i.d) #15
          to label %common.resume unwind label %bb.dv, !noalias !305

bb.bi:                                            ; preds = %._crit_edge880, %_RNvXs0_NtNtCsiqiOkcJdymw_7similar10algorithms4hookINtB5_12NoFinishHookQIBN_QINtNtB7_7compact7CompactINtNtB7_5utils12OffsetLookupmEB1A_INtNtB7_7replace7ReplaceNtNtB7_7capture7CaptureEEEENtB5_8DiffHook6deleteCskXhPDodhyTq_6mdtest.exit181.i
  %.pre-phi884 = phi i64 [ %.pre883, %._crit_edge880 ], [ %i.gq, %_RNvXs0_NtNtCsiqiOkcJdymw_7similar10algorithms4hookINtB5_12NoFinishHookQIBN_QINtNtB7_7compact7CompactINtNtB7_5utils12OffsetLookupmEB1A_INtNtB7_7replace7ReplaceNtNtB7_7capture7CaptureEEEENtB5_8DiffHook6deleteCskXhPDodhyTq_6mdtest.exit181.i ]
  %.pre-phi882 = phi i64 [ %.pre881, %._crit_edge880 ], [ %i.go, %_RNvXs0_NtNtCsiqiOkcJdymw_7similar10algorithms4hookINtB5_12NoFinishHookQIBN_QINtNtB7_7compact7CompactINtNtB7_5utils12OffsetLookupmEB1A_INtNtB7_7replace7ReplaceNtNtB7_7capture7CaptureEEEENtB5_8DiffHook6deleteCskXhPDodhyTq_6mdtest.exit181.i ]
  %i.hb = sub nuw i64 %i.fq, %.sroa.09.3.i
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val51) ]
  %i.hc = load ptr, ptr %.val51, align 8, !alias.scope !310, !noalias !305, !nonnull !3, !align !5, !noundef !3 ; 3 uses
  %i.hd = getelementptr inbounds nuw i8, ptr %i.hc, i64 120 ; 2 uses
  %i.he = getelementptr inbounds nuw i8, ptr %i.hc, i64 136 ; 2 uses
  %i.hf = load i64, ptr %i.he, align 8, !alias.scope !311, !noalias !305, !noundef !3 ; 3 uses
  %i.hg = load i64, ptr %i.hd, align 8, !range !6, !alias.scope !311, !noalias !305, !noundef !3
  %i.hh = icmp eq i64 %i.hf, %i.hg
  br i1 %i.hh, label %bb.bj, label %_RNvXs0_NtNtCsiqiOkcJdymw_7similar10algorithms4hookINtB5_12NoFinishHookQIBN_QINtNtB7_7compact7CompactINtNtB7_5utils12OffsetLookupmEB1A_INtNtB7_7replace7ReplaceNtNtB7_7capture7CaptureEEEENtB5_8DiffHook6insertCskXhPDodhyTq_6mdtest.exit182.i

bb.bj:                                            ; preds = %bb.bi
  invoke void @_RNvMs3_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecNtNtCsiqiOkcJdymw_7similar5types6DiffOpE8grow_oneBP_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.hd)
          to label %_RNvXs0_NtNtCsiqiOkcJdymw_7similar10algorithms4hookINtB5_12NoFinishHookQIBN_QINtNtB7_7compact7CompactINtNtB7_5utils12OffsetLookupmEB1A_INtNtB7_7replace7ReplaceNtNtB7_7capture7CaptureEEEENtB5_8DiffHook6insertCskXhPDodhyTq_6mdtest.exit182.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !305

_RNvXs0_NtNtCsiqiOkcJdymw_7similar10algorithms4hookINtB5_12NoFinishHookQIBN_QINtNtB7_7compact7CompactINtNtB7_5utils12OffsetLookupmEB1A_INtNtB7_7replace7ReplaceNtNtB7_7capture7CaptureEEEENtB5_8DiffHook6insertCskXhPDodhyTq_6mdtest.exit182.i: ; preds = %bb.bj, %bb.bi
  %i.hi = getelementptr inbounds nuw i8, ptr %i.hc, i64 128
  %i.hj = load ptr, ptr %i.hi, align 8, !alias.scope !311, !noalias !305, !nonnull !3, !noundef !3
  %i.hk = getelementptr inbounds nuw [40 x i8], ptr %i.hj, i64 %i.hf ; 4 uses
  store i64 2, ptr %i.hk, align 8, !noalias !305
  %.sroa.417.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.hk, i64 8
  store i64 %.pre-phi882, ptr %.sroa.417.0..sroa_idx.i, align 8, !noalias !305
  %.sroa.518.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.hk, i64 16
  store i64 %.pre-phi884, ptr %.sroa.518.0..sroa_idx.i, align 8, !noalias !305
  %.sroa.619.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.hk, i64 24
  store i64 %i.hb, ptr %.sroa.619.0..sroa_idx.i, align 8, !noalias !305
  %i.hl = add i64 %i.hf, 1
  store i64 %i.hl, ptr %i.he, align 8, !alias.scope !311, !noalias !305
  br label %.sink.split.i.thread

.sink.split.i.thread:                             ; preds = %_RNvXs0_NtNtCsiqiOkcJdymw_7similar10algorithms4hookINtB5_12NoFinishHookQIBN_QINtNtB7_7compact7CompactINtNtB7_5utils12OffsetLookupmEB1A_INtNtB7_7replace7ReplaceNtNtB7_7capture7CaptureEEEENtB5_8DiffHook6deleteCskXhPDodhyTq_6mdtest.exit181.i, %bb.bh, %_RNvXs0_NtNtCsiqiOkcJdymw_7similar10algorithms4hookINtB5_12NoFinishHookQIBN_QINtNtB7_7compact7CompactINtNtB7_5utils12OffsetLookupmEB1A_INtNtB7_7replace7ReplaceNtNtB7_7capture7CaptureEEEENtB5_8DiffHook6insertCskXhPDodhyTq_6mdtest.exit182.i
  call fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VechEECskXhPDodhyTq_6mdtest(ptr noalias noundef align 8 dereferenceable(24) %i.d), !noalias !305
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !305
  br label %bb.av

.sink.split.i:                                    ; preds = %.loopexit24.i
  call void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCskXhPDodhyTq_6mdtest(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.d), !noalias !305
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !305
  br label %_RINvNtNtCsiqiOkcJdymw_7similar10algorithms5myers27maybe_emit_small_side_exactINtNtB4_5utils12OffsetLookupjEB1d_INtNtB4_4hook12NoFinishHookQIB1M_QINtNtB4_7compact7CompactIB1e_mEB2H_INtNtB4_7replace7ReplaceNtNtB4_7capture7CaptureEEEEECskXhPDodhyTq_6mdtest.exit.thread

bb.bk:                                            ; preds = %bb.bm, %.lr.ph495.i
  %i.hm = mul i64 %.sroa.09.0493.i, %i.fy         ; 4 uses
  %i.hn = add i64 %.sroa.038.0492.i, %.sroa.0.0   ; 4 uses
  %i.ho = add i64 %.sroa.09.0493.i, %.sroa.0195.0 ; 4 uses
  %i.hp = sub i64 %i.ho, %i.o                     ; 3 uses
  %i.hq = icmp ult i64 %i.hp, %i.q
  br i1 %i.hq, label %bb.bn, label %.invoke.i

.invoke.i:                                        ; preds = %bb.dr, %bb.dp, %bb.dn, %bb.dm, %bb.dk, %bb.bt, %bb.br, %bb.bq, %bb.bp, %bb.bn, %bb.bk, %bb.cs, %bb.cq, %bb.cp, %bb.co, %bb.cm, %bb.cf, %bb.cd, %bb.cc, %bb.cb, %bb.bz, %bb.cz, %bb.cw, %bb.dc, %bb.db, %bb.du, %.lr.ph.split.i
  %i.hr = phi i64 [ %i.kf, %bb.cf ], [ %.reass.i, %bb.du ], [ %.reass.i, %.lr.ph.split.i ], [ %i.lt, %bb.cs ], [ %i.hp, %bb.bk ], [ %i.ne, %bb.dc ], [ %i.q, %bb.cw ], [ %i.mx, %bb.db ], [ %i.w, %bb.cz ], [ %i.jp, %bb.bz ], [ %i.jt, %bb.cb ], [ %i.jx, %bb.cd ], [ %i.jv, %bb.cc ], [ %i.lb, %bb.cm ], [ %i.lf, %bb.co ], [ %i.ll, %bb.cq ], [ %i.lh, %bb.cp ], [ %i.ia, %bb.bp ], [ %i.ic, %bb.bq ], [ %i.is, %bb.bt ], [ %i.hw, %bb.bn ], [ %i.ih, %bb.br ], [ %i.ob, %bb.dm ], [ %.reass.us.i, %bb.dk ], [ %i.ou, %bb.dr ], [ %i.of, %bb.dn ], [ %i.ol, %bb.dp ]
  %i.hs = phi i64 [ %.pre729.i.a, %bb.cf ], [ %i.q, %bb.du ], [ %i.q, %.lr.ph.split.i ], [ %.pre727.i, %bb.cs ], [ %i.q, %bb.bk ], [ %i.mz, %bb.dc ], [ %i.q, %bb.cw ], [ %i.mz, %bb.db ], [ %i.w, %bb.cz ], [ %i.w, %bb.bz ], [ %.pre729.i.a, %bb.cb ], [ %.pre729.i.a, %bb.cd ], [ %.pre729.i.a, %bb.cc ], [ %i.q, %bb.cm ], [ %.pre727.i, %bb.co ], [ %.pre727.i, %bb.cq ], [ %.pre727.i, %bb.cp ], [ %.pre725.i, %bb.bp ], [ %.pre725.i, %bb.bq ], [ %.pre725.i, %bb.bt ], [ %i.w, %bb.bn ], [ %.pre725.i, %bb.br ], [ %i.od, %bb.dm ], [ %i.w, %bb.dk ], [ %i.ot, %bb.dr ], [ %i.od, %bb.dn ], [ %i.om, %bb.dp ]
  %i.ht = phi ptr [ @34, %bb.cf ], [ @45, %bb.du ], [ @45, %.lr.ph.split.i ], [ @40, %bb.cs ], [ @23, %bb.bk ], [ @44, %bb.dc ], [ @41, %bb.cw ], [ @43, %bb.db ], [ @42, %bb.cz ], [ @30, %bb.bz ], [ @31, %bb.cb ], [ @32, %bb.cd ], [ @33, %bb.cc ], [ @35, %bb.cm ], [ @37, %bb.co ], [ @38, %bb.cq ], [ @39, %bb.cp ], [ @25, %bb.bp ], [ @27, %bb.bq ], [ @28, %bb.bt ], [ @24, %bb.bn ], [ @26, %bb.br ], [ @47, %bb.dm ], [ @46, %bb.dk ], [ @50, %bb.dr ], [ @48, %bb.dn ], [ @49, %bb.dp ]
  invoke void @_RNvNtCs4NRVxsYgnAr_4core9panicking18panic_bounds_check(i64 noundef %i.hr, i64 noundef %i.hs, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.ht) #14
          to label %.cont.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !305

.cont.i:                                          ; preds = %.invoke.i
  unreachable

bb.bl:                                            ; preds = %.lr.ph495.i
  %i.hu = invoke noundef zeroext i1 @_RNvNtCsiqiOkcJdymw_7similar16deadline_support17deadline_exceeded(i64 %9, i32 noundef range(i32 -1, 1000000000) %10)
          to label %bb.bm unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !305

bb.bm:                                            ; preds = %bb.bl
  br i1 %i.hu, label %.loopexit24.i, label %bb.bk

bb.bn:                                            ; preds = %bb.bk
  %i.hv = getelementptr inbounds nuw [8 x i8], ptr %i.s, i64 %i.hp ; 2 uses
  %i.hw = sub i64 %i.hn, %i.u                     ; 3 uses
  %i.hx = icmp ult i64 %i.hw, %i.w
  br i1 %i.hx, label %bb.bo, label %.invoke.i

bb.bo:                                            ; preds = %bb.bn
  %i.hy = getelementptr inbounds nuw [8 x i8], ptr %i.y, i64 %i.hw ; 2 uses
  %.val212.i = load i64, ptr %i.hv, align 8, !noalias !305, !noundef !3
  %.val213.i = load i64, ptr %i.hy, align 8, !noalias !305, !noundef !3
  %i.hz = icmp eq i64 %.val212.i, %.val213.i
  %.pre.i = load ptr, ptr %i.gi, align 8, !noalias !305 ; 4 uses
  %.pre725.i = load i64, ptr %i.gj, align 8, !noalias !305 ; 8 uses
  br i1 %i.hz, label %bb.bp, label %._crit_edge731.i

._crit_edge731.i:                                 ; preds = %bb.bo
  %.pre732.i = add nuw i64 %.sroa.09.0493.i, 1
  %.pre733.i = mul i64 %.pre732.i, %i.fy
  br label %bb.bq

bb.bp:                                            ; preds = %bb.bo
  %i.ia = add i64 %i.hm, %.sroa.038.0492.i        ; 3 uses
  %i.ib = icmp ult i64 %i.ia, %.pre725.i
  br i1 %i.ib, label %bb.br, label %.invoke.i

bb.bq:                                            ; preds = %bb.bs, %._crit_edge731.i
  %.pre-phi734.i = phi i64 [ %.pre733.i, %._crit_edge731.i ], [ %i.if, %bb.bs ] ; 3 uses
  %i.ic = add i64 %.pre-phi734.i, %.sroa.038.0492.i ; 3 uses
  %i.id = icmp ult i64 %i.ic, %.pre725.i
  br i1 %i.id, label %bb.bt, label %.invoke.i

bb.br:                                            ; preds = %bb.bp
  %i.ie = add nuw i64 %.sroa.09.0493.i, 1
  %i.if = mul i64 %i.ie, %i.fy                    ; 2 uses
  %i.ig = add nuw i64 %.sroa.038.0492.i, 1
  %i.ih = add i64 %i.ig, %i.if                    ; 3 uses
  %i.ii = icmp ult i64 %i.ih, %.pre725.i
  br i1 %i.ii, label %bb.bs, label %.invoke.i

bb.bs:                                            ; preds = %bb.br
  %i.ij = getelementptr inbounds nuw i8, ptr %.pre.i, i64 %i.ia
  %i.ik = load i8, ptr %i.ij, align 1, !noalias !305, !noundef !3
  %i.il = getelementptr inbounds nuw i8, ptr %.pre.i, i64 %i.ih
  %i.im = load i8, ptr %i.il, align 1, !noalias !305, !noundef !3
  %i.in = add i8 %i.im, 1
  %i.io = icmp eq i8 %i.ik, %i.in
  br i1 %i.io, label %.preheader.i, label %bb.bq

.preheader.i:                                     ; preds = %bb.bs
  %i.ip = icmp ult i64 %.sroa.09.0493.i, %i.fq
  %i.iq = icmp ult i64 %.sroa.038.0492.i, %i.fp
  %or.cond177478.i = select i1 %i.ip, i1 %i.iq, i1 false
  br i1 %or.cond177478.i, label %.lr.ph481.i, label %._crit_edge482.i

bb.bt:                                            ; preds = %bb.bq
  %i.ir = add nuw i64 %.sroa.038.0492.i, 1        ; 3 uses
  %i.is = add i64 %i.ir, %i.hm                    ; 3 uses
  %i.it = icmp ult i64 %i.is, %.pre725.i
  br i1 %i.it, label %bb.bu, label %.invoke.i

bb.bu:                                            ; preds = %bb.bt
  %i.iu = getelementptr inbounds nuw i8, ptr %.pre.i, i64 %i.ic
  %i.iv = load i8, ptr %i.iu, align 1, !noalias !305, !noundef !3
  %i.iw = getelementptr inbounds nuw i8, ptr %.pre.i, i64 %i.is
  %i.ix = load i8, ptr %i.iw, align 1, !noalias !305, !noundef !3
  %.not164.i = icmp ult i8 %i.iv, %i.ix
  br i1 %.not164.i, label %.preheader25.i, label %.preheader30.i

.preheader30.i:                                   ; preds = %bb.bu
  %umax.i = call i64 @llvm.umax.i64(i64 %.sroa.09.0493.i, i64 %i.fq) ; 3 uses
  %exitcond.not.i1505.not = icmp ult i64 %.sroa.09.0493.i, %i.fq
  br i1 %exitcond.not.i1505.not, label %.lr.ph1507, label %._crit_edge1508

.preheader25.i:                                   ; preds = %bb.bu
  %i.iy = icmp ult i64 %.sroa.038.0492.i, %i.fp
  br i1 %i.iy, label %.lr.ph473.i, label %._crit_edge.i

.lr.ph473.i:                                      ; preds = %.preheader25.i
  %i.iz = add i64 %.pre-phi734.i, 1
  %i.ja = add i64 %i.hm, 1
  br label %bb.bv

bb.bv:                                            ; preds = %bb.ch, %.lr.ph473.i
  %.sroa.038.1472.i = phi i64 [ %.sroa.038.0492.i, %.lr.ph473.i ], [ %i.km, %bb.ch ] ; 9 uses
  %i.jb = and i64 %.sroa.038.1472.i, 1023
  %i.jc = icmp eq i64 %i.jb, 0
  %or.cond173.i = and i1 %.sroa.05.0.not494.i, %i.jc
  br i1 %or.cond173.i, label %bb.bx, label %bb.bz

._crit_edge.i:                                    ; preds = %bb.ch, %bb.cg, %bb.ce, %.preheader25.i
  %.sroa.038.1.lcssa.i = phi i64 [ %.sroa.038.0492.i, %.preheader25.i ], [ %i.fp, %bb.ch ], [ %.sroa.038.1472.i, %bb.cg ], [ %.sroa.038.1472.i, %bb.ce ] ; 2 uses
  %i.jd = sub nuw i64 %.sroa.038.1.lcssa.i, %.sroa.038.0492.i
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val51) ]
  %i.je = load ptr, ptr %.val51, align 8, !alias.scope !312, !noalias !305, !nonnull !3, !align !5, !noundef !3 ; 3 uses
  %i.jf = getelementptr inbounds nuw i8, ptr %i.je, i64 120 ; 2 uses
  %i.jg = getelementptr inbounds nuw i8, ptr %i.je, i64 136 ; 2 uses
  %i.jh = load i64, ptr %i.jg, align 8, !alias.scope !313, !noalias !305, !noundef !3 ; 3 uses
  %i.ji = load i64, ptr %i.jf, align 8, !range !6, !alias.scope !313, !noalias !305, !noundef !3
  %i.jj = icmp eq i64 %i.jh, %i.ji
  br i1 %i.jj, label %bb.bw, label %_RNvXs0_NtNtCsiqiOkcJdymw_7similar10algorithms4hookINtB5_12NoFinishHookQIBN_QINtNtB7_7compact7CompactINtNtB7_5utils12OffsetLookupmEB1A_INtNtB7_7replace7ReplaceNtNtB7_7capture7CaptureEEEENtB5_8DiffHook6deleteCskXhPDodhyTq_6mdtest.exit.i

bb.bw:                                            ; preds = %._crit_edge.i
  invoke void @_RNvMs3_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecNtNtCsiqiOkcJdymw_7similar5types6DiffOpE8grow_oneBP_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.jf)
          to label %_RNvXs0_NtNtCsiqiOkcJdymw_7similar10algorithms4hookINtB5_12NoFinishHookQIBN_QINtNtB7_7compact7CompactINtNtB7_5utils12OffsetLookupmEB1A_INtNtB7_7replace7ReplaceNtNtB7_7capture7CaptureEEEENtB5_8DiffHook6deleteCskXhPDodhyTq_6mdtest.exit.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !305

_RNvXs0_NtNtCsiqiOkcJdymw_7similar10algorithms4hookINtB5_12NoFinishHookQIBN_QINtNtB7_7compact7CompactINtNtB7_5utils12OffsetLookupmEB1A_INtNtB7_7replace7ReplaceNtNtB7_7capture7CaptureEEEENtB5_8DiffHook6deleteCskXhPDodhyTq_6mdtest.exit.i: ; preds = %bb.bw, %._crit_edge.i
  %i.jk = getelementptr inbounds nuw i8, ptr %i.je, i64 128
  %i.jl = load ptr, ptr %i.jk, align 8, !alias.scope !313, !noalias !305, !nonnull !3, !noundef !3
  %i.jm = getelementptr inbounds nuw [40 x i8], ptr %i.jl, i64 %i.jh ; 4 uses
  store i64 1, ptr %i.jm, align 8, !noalias !305
  %.sroa.42.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.jm, i64 8
  store i64 %i.hn, ptr %.sroa.42.0..sroa_idx.i, align 8, !noalias !305
  %.sroa.53.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.jm, i64 16
  store i64 %i.jd, ptr %.sroa.53.0..sroa_idx.i, align 8, !noalias !305
  %.sroa.64.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.jm, i64 24
  store i64 %i.ho, ptr %.sroa.64.0..sroa_idx.i, align 8, !noalias !305
  %i.jn = add i64 %i.jh, 1
  store i64 %i.jn, ptr %i.jg, align 8, !alias.scope !313, !noalias !305
  br label %bb.cu

bb.bx:                                            ; preds = %bb.bv
  %i.jo = invoke noundef zeroext i1 @_RNvNtCsiqiOkcJdymw_7similar16deadline_support17deadline_exceeded(i64 %9, i32 noundef range(i32 -1, 1000000000) %10)
          to label %bb.by unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !305

bb.by:                                            ; preds = %bb.bx
  br i1 %i.jo, label %.loopexit24.i, label %bb.bz

bb.bz:                                            ; preds = %bb.by, %bb.bv
  %i.jp = add i64 %.sroa.038.1472.i, %invariant.op.i ; 3 uses
  %i.jq = icmp ult i64 %i.jp, %i.w
  br i1 %i.jq, label %bb.ca, label %.invoke.i

bb.ca:                                            ; preds = %bb.bz
  %i.jr = getelementptr inbounds nuw [8 x i8], ptr %i.y, i64 %i.jp
  %.val210.i = load i64, ptr %i.hv, align 8, !noalias !305, !noundef !3
  %.val211.i = load i64, ptr %i.jr, align 8, !noalias !305, !noundef !3
  %i.js = icmp eq i64 %.val210.i, %.val211.i
  %.pre728.i.a = load ptr, ptr %i.gi, align 8, !noalias !305 ; 4 uses
  %.pre729.i.a = load i64, ptr %i.gj, align 8, !noalias !305 ; 8 uses
  br i1 %i.js, label %bb.cb, label %bb.cc

bb.cb:                                            ; preds = %bb.ca
  %i.jt = add i64 %.sroa.038.1472.i, %i.hm        ; 3 uses
  %i.ju = icmp ult i64 %i.jt, %.pre729.i.a
  br i1 %i.ju, label %bb.cd, label %.invoke.i

bb.cc:                                            ; preds = %bb.ce, %bb.ca
  %i.jv = add i64 %.sroa.038.1472.i, %.pre-phi734.i ; 3 uses
  %i.jw = icmp ult i64 %i.jv, %.pre729.i.a
  br i1 %i.jw, label %bb.cf, label %.invoke.i

bb.cd:                                            ; preds = %bb.cb
  %i.jx = add i64 %i.iz, %.sroa.038.1472.i        ; 3 uses
  %i.jy = icmp ult i64 %i.jx, %.pre729.i.a
  br i1 %i.jy, label %bb.ce, label %.invoke.i

bb.ce:                                            ; preds = %bb.cd
  %i.jz = getelementptr inbounds nuw i8, ptr %.pre728.i.a, i64 %i.jt
  %i.ka = load i8, ptr %i.jz, align 1, !noalias !305, !noundef !3
  %i.kb = getelementptr inbounds nuw i8, ptr %.pre728.i.a, i64 %i.jx
  %i.kc = load i8, ptr %i.kb, align 1, !noalias !305, !noundef !3
  %i.kd = add i8 %i.kc, 1
  %i.ke = icmp eq i8 %i.ka, %i.kd
  br i1 %i.ke, label %._crit_edge.i, label %bb.cc

bb.cf:                                            ; preds = %bb.cc
  %i.kf = add i64 %i.ja, %.sroa.038.1472.i        ; 3 uses
  %i.kg = icmp ult i64 %i.kf, %.pre729.i.a
  br i1 %i.kg, label %bb.cg, label %.invoke.i

bb.cg:                                            ; preds = %bb.cf
  %i.kh = getelementptr inbounds nuw i8, ptr %.pre728.i.a, i64 %i.jv
  %i.ki = load i8, ptr %i.kh, align 1, !noalias !305, !noundef !3
  %i.kj = getelementptr inbounds nuw i8, ptr %.pre728.i.a, i64 %i.kf
  %i.kk = load i8, ptr %i.kj, align 1, !noalias !305, !noundef !3
  %i.kl = icmp ult i8 %i.ki, %i.kk
  br i1 %i.kl, label %bb.ch, label %._crit_edge.i

bb.ch:                                            ; preds = %bb.cg
  %i.km = add nuw i64 %.sroa.038.1472.i, 1        ; 2 uses
  %i.kn = icmp ult i64 %i.km, %i.fp
  br i1 %i.kn, label %bb.bv, label %._crit_edge.i

bb.ci:                                            ; preds = %bb.ct
  %exitcond.not.i = icmp eq i64 %.pre-phi736.i, %umax.i
  br i1 %exitcond.not.i, label %._crit_edge1508, label %.lr.ph1507

.lr.ph1507:                                       ; preds = %.preheader30.i, %bb.ci
  %.sroa.09.1.i1506 = phi i64 [ %.pre-phi736.i, %bb.ci ], [ %.sroa.09.0493.i, %.preheader30.i ] ; 6 uses
  br i1 %or.cond170.i, label %bb.ck, label %bb.cm

._crit_edge1508:                                  ; preds = %bb.ci, %bb.cr, %bb.ct, %.preheader30.i
  %.sroa.09.1.lcssa.i = phi i64 [ %umax.i, %.preheader30.i ], [ %umax.i, %bb.ci ], [ %.sroa.09.1.i1506, %bb.cr ], [ %.sroa.09.1.i1506, %bb.ct ] ; 2 uses
  %i.ko = sub i64 %.sroa.09.1.lcssa.i, %.sroa.09.0493.i
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val51) ]
  %i.kp = load ptr, ptr %.val51, align 8, !alias.scope !314, !noalias !305, !nonnull !3, !align !5, !noundef !3 ; 3 uses
  %i.kq = getelementptr inbounds nuw i8, ptr %i.kp, i64 120 ; 2 uses
  %i.kr = getelementptr inbounds nuw i8, ptr %i.kp, i64 136 ; 2 uses
  %i.ks = load i64, ptr %i.kr, align 8, !alias.scope !315, !noalias !305, !noundef !3 ; 3 uses
  %i.kt = load i64, ptr %i.kq, align 8, !range !6, !alias.scope !315, !noalias !305, !noundef !3
  %i.ku = icmp eq i64 %i.ks, %i.kt
  br i1 %i.ku, label %bb.cj, label %_RNvXs0_NtNtCsiqiOkcJdymw_7similar10algorithms4hookINtB5_12NoFinishHookQIBN_QINtNtB7_7compact7CompactINtNtB7_5utils12OffsetLookupmEB1A_INtNtB7_7replace7ReplaceNtNtB7_7capture7CaptureEEEENtB5_8DiffHook6insertCskXhPDodhyTq_6mdtest.exit.i

bb.cj:                                            ; preds = %._crit_edge1508
  invoke void @_RNvMs3_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecNtNtCsiqiOkcJdymw_7similar5types6DiffOpE8grow_oneBP_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.kq)
          to label %_RNvXs0_NtNtCsiqiOkcJdymw_7similar10algorithms4hookINtB5_12NoFinishHookQIBN_QINtNtB7_7compact7CompactINtNtB7_5utils12OffsetLookupmEB1A_INtNtB7_7replace7ReplaceNtNtB7_7capture7CaptureEEEENtB5_8DiffHook6insertCskXhPDodhyTq_6mdtest.exit.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !305

_RNvXs0_NtNtCsiqiOkcJdymw_7similar10algorithms4hookINtB5_12NoFinishHookQIBN_QINtNtB7_7compact7CompactINtNtB7_5utils12OffsetLookupmEB1A_INtNtB7_7replace7ReplaceNtNtB7_7capture7CaptureEEEENtB5_8DiffHook6insertCskXhPDodhyTq_6mdtest.exit.i: ; preds = %bb.cj, %._crit_edge1508
  %i.kv = getelementptr inbounds nuw i8, ptr %i.kp, i64 128
  %i.kw = load ptr, ptr %i.kv, align 8, !alias.scope !315, !noalias !305, !nonnull !3, !noundef !3
  %i.kx = getelementptr inbounds nuw [40 x i8], ptr %i.kw, i64 %i.ks ; 4 uses
  store i64 2, ptr %i.kx, align 8, !noalias !305
  %.sroa.412.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.kx, i64 8
  store i64 %i.hn, ptr %.sroa.412.0..sroa_idx.i, align 8, !noalias !305
  %.sroa.513.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.kx, i64 16
  store i64 %i.ho, ptr %.sroa.513.0..sroa_idx.i, align 8, !noalias !305
  %.sroa.614.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.kx, i64 24
  store i64 %i.ko, ptr %.sroa.614.0..sroa_idx.i, align 8, !noalias !305
  %i.ky = add i64 %i.ks, 1
  store i64 %i.ky, ptr %i.kr, align 8, !alias.scope !315, !noalias !305
  br label %bb.cu

bb.ck:                                            ; preds = %.lr.ph1507
  %i.kz = invoke noundef zeroext i1 @_RNvNtCsiqiOkcJdymw_7similar16deadline_support17deadline_exceeded(i64 %9, i32 noundef range(i32 -1, 1000000000) %10)
          to label %bb.cl unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !305

bb.cl:                                            ; preds = %bb.ck
  br i1 %i.kz, label %.loopexit24.i, label %bb.cm

bb.cm:                                            ; preds = %bb.cl, %.lr.ph1507
  %i.la = mul i64 %.sroa.09.1.i1506, %i.fy        ; 2 uses
  %i.lb = add i64 %.sroa.09.1.i1506, %invariant.op470.i ; 3 uses
  %i.lc = icmp ult i64 %i.lb, %i.q
  br i1 %i.lc, label %bb.cn, label %.invoke.i

bb.cn:                                            ; preds = %bb.cm
  %i.ld = getelementptr inbounds nuw [8 x i8], ptr %i.s, i64 %i.lb
  %.val208.i = load i64, ptr %i.ld, align 8, !noalias !305, !noundef !3
  %.val209.i = load i64, ptr %i.hy, align 8, !noalias !305, !noundef !3
  %i.le = icmp eq i64 %.val208.i, %.val209.i
  %.pre726.i = load ptr, ptr %i.gi, align 8, !noalias !305 ; 4 uses
  %.pre727.i = load i64, ptr %i.gj, align 8, !noalias !305 ; 8 uses
  br i1 %i.le, label %bb.co, label %._crit_edge730.i

._crit_edge730.i:                                 ; preds = %bb.cn
  %.pre735.i = add i64 %.sroa.09.1.i1506, 1       ; 2 uses
  %.pre737.i = mul i64 %.pre735.i, %i.fy
  br label %bb.cp

bb.co:                                            ; preds = %bb.cn
  %i.lf = add i64 %i.la, %.sroa.038.0492.i        ; 3 uses
  %i.lg = icmp ult i64 %i.lf, %.pre727.i
  br i1 %i.lg, label %bb.cq, label %.invoke.i

bb.cp:                                            ; preds = %bb.cr, %._crit_edge730.i
  %.pre-phi738.i.a = phi i64 [ %.pre737.i, %._crit_edge730.i ], [ %i.lk, %bb.cr ]
  %.pre-phi736.i = phi i64 [ %.pre735.i, %._crit_edge730.i ], [ %i.lj, %bb.cr ] ; 2 uses
  %i.lh = add i64 %.pre-phi738.i.a, %.sroa.038.0492.i ; 3 uses
  %i.li = icmp ult i64 %i.lh, %.pre727.i
  br i1 %i.li, label %bb.cs, label %.invoke.i

bb.cq:                                            ; preds = %bb.co
  %i.lj = add i64 %.sroa.09.1.i1506, 1            ; 2 uses
  %i.lk = mul i64 %i.lj, %i.fy                    ; 2 uses
  %i.ll = add i64 %i.lk, %i.ir                    ; 3 uses
  %i.lm = icmp ult i64 %i.ll, %.pre727.i
  br i1 %i.lm, label %bb.cr, label %.invoke.i

bb.cr:                                            ; preds = %bb.cq
  %i.ln = getelementptr inbounds nuw i8, ptr %.pre726.i, i64 %i.lf
  %i.lo = load i8, ptr %i.ln, align 1, !noalias !305, !noundef !3
  %i.lp = getelementptr inbounds nuw i8, ptr %.pre726.i, i64 %i.ll
  %i.lq = load i8, ptr %i.lp, align 1, !noalias !305, !noundef !3
  %i.lr = add i8 %i.lq, 1
  %i.ls = icmp eq i8 %i.lo, %i.lr
  br i1 %i.ls, label %._crit_edge1508, label %bb.cp

bb.cs:                                            ; preds = %bb.cp
  %i.lt = add i64 %i.la, %i.ir                    ; 3 uses
  %i.lu = icmp ult i64 %i.lt, %.pre727.i
  br i1 %i.lu, label %bb.ct, label %.invoke.i

bb.ct:                                            ; preds = %bb.cs
  %i.lv = getelementptr inbounds nuw i8, ptr %.pre726.i, i64 %i.lh
  %i.lw = load i8, ptr %i.lv, align 1, !noalias !305, !noundef !3
  %i.lx = getelementptr inbounds nuw i8, ptr %.pre726.i, i64 %i.lt
  %i.ly = load i8, ptr %i.lx, align 1, !noalias !305, !noundef !3
  %.not167.i = icmp ult i8 %i.lw, %i.ly
  br i1 %.not167.i, label %._crit_edge1508, label %bb.ci

bb.cu:                                            ; preds = %_RNvXs0_NtNtCsiqiOkcJdymw_7similar10algorithms4hookINtB5_12NoFinishHookQIBN_QINtNtB7_7compact7CompactINtNtB7_5utils12OffsetLookupmEB1A_INtNtB7_7replace7ReplaceNtNtB7_7capture7CaptureEEEENtB5_8DiffHook5equalCskXhPDodhyTq_6mdtest.exit.i, %_RNvXs0_NtNtCsiqiOkcJdymw_7similar10algorithms4hookINtB5_12NoFinishHookQIBN_QINtNtB7_7compact7CompactINtNtB7_5utils12OffsetLookupmEB1A_INtNtB7_7replace7ReplaceNtNtB7_7capture7CaptureEEEENtB5_8DiffHook6insertCskXhPDodhyTq_6mdtest.exit.i, %_RNvXs0_NtNtCsiqiOkcJdymw_7similar10algorithms4hookINtB5_12NoFinishHookQIBN_QINtNtB7_7compact7CompactINtNtB7_5utils12OffsetLookupmEB1A_INtNtB7_7replace7ReplaceNtNtB7_7capture7CaptureEEEENtB5_8DiffHook6deleteCskXhPDodhyTq_6mdtest.exit.i
  %.sroa.038.3.i = phi i64 [ %.sroa.038.0492.i, %_RNvXs0_NtNtCsiqiOkcJdymw_7similar10algorithms4hookINtB5_12NoFinishHookQIBN_QINtNtB7_7compact7CompactINtNtB7_5utils12OffsetLookupmEB1A_INtNtB7_7replace7ReplaceNtNtB7_7capture7CaptureEEEENtB5_8DiffHook6insertCskXhPDodhyTq_6mdtest.exit.i ], [ %.sroa.038.1.lcssa.i, %_RNvXs0_NtNtCsiqiOkcJdymw_7similar10algorithms4hookINtB5_12NoFinishHookQIBN_QINtNtB7_7compact7CompactINtNtB7_5utils12OffsetLookupmEB1A_INtNtB7_7replace7ReplaceNtNtB7_7capture7CaptureEEEENtB5_8DiffHook6deleteCskXhPDodhyTq_6mdtest.exit.i ], [ %.sroa.038.4.lcssa.i, %_RNvXs0_NtNtCsiqiOkcJdymw_7similar10algorithms4hookINtB5_12NoFinishHookQIBN_QINtNtB7_7compact7CompactINtNtB7_5utils12OffsetLookupmEB1A_INtNtB7_7replace7ReplaceNtNtB7_7capture7CaptureEEEENtB5_8DiffHook5equalCskXhPDodhyTq_6mdtest.exit.i ] ; 5 uses
  %.sroa.09.3.i = phi i64 [ %.sroa.09.1.lcssa.i, %_RNvXs0_NtNtCsiqiOkcJdymw_7similar10algorithms4hookINtB5_12NoFinishHookQIBN_QINtNtB7_7compact7CompactINtNtB7_5utils12OffsetLookupmEB1A_INtNtB7_7replace7ReplaceNtNtB7_7capture7CaptureEEEENtB5_8DiffHook6insertCskXhPDodhyTq_6mdtest.exit.i ], [ %.sroa.09.0493.i, %_RNvXs0_NtNtCsiqiOkcJdymw_7similar10algorithms4hookINtB5_12NoFinishHookQIBN_QINtNtB7_7compact7CompactINtNtB7_5utils12OffsetLookupmEB1A_INtNtB7_7replace7ReplaceNtNtB7_7capture7CaptureEEEENtB5_8DiffHook6deleteCskXhPDodhyTq_6mdtest.exit.i ], [ %.sroa.09.4.lcssa.i, %_RNvXs0_NtNtCsiqiOkcJdymw_7similar10algorithms4hookINtB5_12NoFinishHookQIBN_QINtNtB7_7compact7CompactINtNtB7_5utils12OffsetLookupmEB1A_INtNtB7_7replace7ReplaceNtNtB7_7capture7CaptureEEEENtB5_8DiffHook5equalCskXhPDodhyTq_6mdtest.exit.i ] ; 5 uses
  %i.lz = icmp ult i64 %.sroa.09.3.i, %i.fq       ; 3 uses
  %i.ma = icmp ult i64 %.sroa.038.3.i, %i.fp      ; 2 uses
  %or.cond.i75 = select i1 %i.lz, i1 %i.ma, i1 false
  br i1 %or.cond.i75, label %.lr.ph495.i, label %._crit_edge496.i

._crit_edge482.i:                                 ; preds = %bb.de, %bb.dd, %bb.da, %.preheader.i
  %.sroa.038.4.lcssa.i = phi i64 [ %.sroa.038.0492.i, %.preheader.i ], [ %i.nd, %bb.de ], [ %.sroa.038.4479.i, %bb.da ], [ %.sroa.038.4479.i, %bb.dd ] ; 2 uses
  %.sroa.09.4.lcssa.i = phi i64 [ %.sroa.09.0493.i, %.preheader.i ], [ %i.nb, %bb.de ], [ %.sroa.09.4480.i, %bb.da ], [ %.sroa.09.4480.i, %bb.dd ]
  %i.mb = sub nuw i64 %.sroa.038.4.lcssa.i, %.sroa.038.0492.i
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val51) ]
  %i.mc = load ptr, ptr %.val51, align 8, !alias.scope !316, !noalias !305, !nonnull !3, !align !5, !noundef !3 ; 3 uses
  %i.md = getelementptr inbounds nuw i8, ptr %i.mc, i64 120 ; 2 uses
  %i.me = getelementptr inbounds nuw i8, ptr %i.mc, i64 136 ; 2 uses
  %i.mf = load i64, ptr %i.me, align 8, !alias.scope !317, !noalias !305, !noundef !3 ; 3 uses
  %i.mg = load i64, ptr %i.md, align 8, !range !6, !alias.scope !317, !noalias !305, !noundef !3
  %i.mh = icmp eq i64 %i.mf, %i.mg
  br i1 %i.mh, label %bb.cv, label %_RNvXs0_NtNtCsiqiOkcJdymw_7similar10algorithms4hookINtB5_12NoFinishHookQIBN_QINtNtB7_7compact7CompactINtNtB7_5utils12OffsetLookupmEB1A_INtNtB7_7replace7ReplaceNtNtB7_7capture7CaptureEEEENtB5_8DiffHook5equalCskXhPDodhyTq_6mdtest.exit.i

bb.cv:                                            ; preds = %._crit_edge482.i
  invoke void @_RNvMs3_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecNtNtCsiqiOkcJdymw_7similar5types6DiffOpE8grow_oneBP_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.md)
          to label %_RNvXs0_NtNtCsiqiOkcJdymw_7similar10algorithms4hookINtB5_12NoFinishHookQIBN_QINtNtB7_7compact7CompactINtNtB7_5utils12OffsetLookupmEB1A_INtNtB7_7replace7ReplaceNtNtB7_7capture7CaptureEEEENtB5_8DiffHook5equalCskXhPDodhyTq_6mdtest.exit.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !305

_RNvXs0_NtNtCsiqiOkcJdymw_7similar10algorithms4hookINtB5_12NoFinishHookQIBN_QINtNtB7_7compact7CompactINtNtB7_5utils12OffsetLookupmEB1A_INtNtB7_7replace7ReplaceNtNtB7_7capture7CaptureEEEENtB5_8DiffHook5equalCskXhPDodhyTq_6mdtest.exit.i: ; preds = %bb.cv, %._crit_edge482.i
  %i.mi = getelementptr inbounds nuw i8, ptr %i.mc, i64 128
  %i.mj = load ptr, ptr %i.mi, align 8, !alias.scope !317, !noalias !305, !nonnull !3, !noundef !3
  %i.mk = getelementptr inbounds nuw [40 x i8], ptr %i.mj, i64 %i.mf ; 4 uses
  store i64 0, ptr %i.mk, align 8, !noalias !305
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.mk, i64 8
  store i64 %i.hn, ptr %.sroa.4.0..sroa_idx.i, align 8, !noalias !305
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.mk, i64 16
  store i64 %i.ho, ptr %.sroa.5.0..sroa_idx.i, align 8, !noalias !305
  %.sroa.6.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.mk, i64 24
  store i64 %i.mb, ptr %.sroa.6.0..sroa_idx.i, align 8, !noalias !305
  %i.ml = add i64 %i.mf, 1
  store i64 %i.ml, ptr %i.me, align 8, !alias.scope !317, !noalias !305
  br label %bb.cu

.lr.ph481.i:                                      ; preds = %.preheader.i, %bb.de
  %.sroa.09.4480.i = phi i64 [ %i.nb, %bb.de ], [ %.sroa.09.0493.i, %.preheader.i ] ; 5 uses
  %.sroa.038.4479.i = phi i64 [ %i.nd, %bb.de ], [ %.sroa.038.0492.i, %.preheader.i ] ; 6 uses
  %i.mm = and i64 %.sroa.038.4479.i, 1023
  %i.mn = icmp eq i64 %i.mm, 0
  %or.cond180.i = select i1 %.sroa.05.0.not494.i, i1 %i.mn, i1 false
  br i1 %or.cond180.i, label %bb.cx, label %bb.cw

bb.cw:                                            ; preds = %bb.cy, %.lr.ph481.i
  %i.mo = mul i64 %.sroa.09.4480.i, %i.fy
  %i.mp = add i64 %.sroa.09.4480.i, %invariant.op470.i ; 2 uses
  %i.mq = icmp ult i64 %i.mp, %i.q
  br i1 %i.mq, label %bb.cz, label %.invoke.i

bb.cx:                                            ; preds = %.lr.ph481.i
  %i.mr = invoke noundef zeroext i1 @_RNvNtCsiqiOkcJdymw_7similar16deadline_support17deadline_exceeded(i64 %9, i32 noundef range(i32 -1, 1000000000) %10)
          to label %bb.cy unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !305

bb.cy:                                            ; preds = %bb.cx
  br i1 %i.mr, label %.loopexit24.i, label %bb.cw

bb.cz:                                            ; preds = %bb.cw
  %i.ms = add i64 %.sroa.038.4479.i, %invariant.op.i ; 2 uses
  %i.mt = icmp ult i64 %i.ms, %i.w
  br i1 %i.mt, label %bb.da, label %.invoke.i

bb.da:                                            ; preds = %bb.cz
  %i.mu = getelementptr inbounds nuw [8 x i8], ptr %i.s, i64 %i.mp
  %i.mv = getelementptr inbounds nuw [8 x i8], ptr %i.y, i64 %i.ms
  %.val206.i = load i64, ptr %i.mu, align 8, !noalias !305, !noundef !3
  %.val207.i = load i64, ptr %i.mv, align 8, !noalias !305, !noundef !3
  %i.mw = icmp eq i64 %.val206.i, %.val207.i
  br i1 %i.mw, label %bb.db, label %._crit_edge482.i

bb.db:                                            ; preds = %bb.da
  %i.mx = add i64 %i.mo, %.sroa.038.4479.i        ; 3 uses
  %i.my = load ptr, ptr %i.gi, align 8, !noalias !305, !nonnull !3, !noundef !3 ; 2 uses
  %i.mz = load i64, ptr %i.gj, align 8, !noalias !305, !noundef !3 ; 4 uses
  %i.na = icmp ult i64 %i.mx, %i.mz
  br i1 %i.na, label %bb.dc, label %.invoke.i

bb.dc:                                            ; preds = %bb.db
  %i.nb = add nuw i64 %.sroa.09.4480.i, 1         ; 4 uses
  %i.nc = mul i64 %i.nb, %i.fy
  %i.nd = add nuw i64 %.sroa.038.4479.i, 1        ; 4 uses
  %i.ne = add i64 %i.nd, %i.nc                    ; 3 uses
  %i.nf = icmp ult i64 %i.ne, %i.mz
  br i1 %i.nf, label %bb.dd, label %.invoke.i

bb.dd:                                            ; preds = %bb.dc
  %i.ng = getelementptr inbounds nuw i8, ptr %i.my, i64 %i.mx
  %i.nh = load i8, ptr %i.ng, align 1, !noalias !305, !noundef !3
  %i.ni = getelementptr inbounds nuw i8, ptr %i.my, i64 %i.ne
  %i.nj = load i8, ptr %i.ni, align 1, !noalias !305, !noundef !3
  %i.nk = add i8 %i.nj, 1
  %i.nl = icmp eq i8 %i.nh, %i.nk
  br i1 %i.nl, label %bb.de, label %._crit_edge482.i

bb.de:                                            ; preds = %bb.dd
  %i.nm = icmp ult i64 %i.nb, %i.fq
  %i.nn = icmp ult i64 %i.nd, %i.fp
  %or.cond177.i = and i1 %i.nm, %i.nn
  br i1 %or.cond177.i, label %.lr.ph481.i, label %._crit_edge482.i

.loopexit24.i:                                    ; preds = %bb.dh, %bb.dj, %bb.bm, %bb.cl, %bb.by, %bb.cy, %bb.du
  invoke void @_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCskXhPDodhyTq_6mdtest(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.d)
          to label %.sink.split.i unwind label %bb.df, !noalias !305

bb.df:                                            ; preds = %.loopexit24.i
  %i.no = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCskXhPDodhyTq_6mdtest(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.d)
          to label %common.resume unwind label %bb.dg, !noalias !305

bb.dg:                                            ; preds = %bb.df
  %i.np = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #13, !noalias !305
  unreachable

common.resume:                                    ; preds = %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i88.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %bb.fz, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %bb.df
  %common.resume.op = phi { ptr, i32 } [ %lpad.loopexit.split-lp1548, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ], [ %i.no, %bb.df ], [ %i.wr, %bb.fz ], [ %lpad.loopexit.split-lp1593, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i88.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ]
  resume { ptr, i32 } %common.resume.op

bb.dh:                                            ; preds = %.lr.ph469.split.i
  br i1 %i.gl, label %.loopexit24.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.dh
  %i.nq = mul i64 %i.gk, %i.fy                    ; 2 uses
  %i.nr = mul i64 %.sroa.0102.0468.i, %i.fy       ; 2 uses
  %.reass.i = add i64 %i.gk, %invariant.op470.i   ; 4 uses
  %i.ns = icmp ult i64 %.reass.i, %i.q
  %i.nt = getelementptr inbounds nuw [8 x i8], ptr %i.s, i64 %.reass.i
  %.fr.i = freeze i1 %i.ns
  br i1 %.fr.i, label %.lr.ph.split.us.i, label %.lr.ph.split.i

.lr.ph.split.us.i:                                ; preds = %.lr.ph.i, %bb.ds
  %.sroa.0105.0432.us.i = phi i64 [ %i.nu, %bb.ds ], [ %i.fp, %.lr.ph.i ] ; 3 uses
  %i.nu = add i64 %.sroa.0105.0432.us.i, -1       ; 6 uses
  %i.nv = and i64 %i.nu, 1023
  %i.nw = icmp eq i64 %i.nv, 0
  br i1 %i.nw, label %bb.di, label %bb.dk

bb.di:                                            ; preds = %.lr.ph.split.us.i
  %i.nx = invoke noundef zeroext i1 @_RNvNtCsiqiOkcJdymw_7similar16deadline_support17deadline_exceeded(i64 %9, i32 noundef range(i32 -1, 1000000000) %10)
          to label %bb.dj unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !305

bb.dj:                                            ; preds = %bb.di
  br i1 %i.nx, label %.loopexit24.i, label %bb.dk

bb.dk:                                            ; preds = %bb.dj, %.lr.ph.split.us.i
  %.reass.us.i = add i64 %i.nu, %invariant.op.i   ; 3 uses
  %i.ny = icmp ult i64 %.reass.us.i, %i.w
  br i1 %i.ny, label %bb.dl, label %.invoke.i

bb.dl:                                            ; preds = %bb.dk
  %i.nz = getelementptr inbounds nuw [8 x i8], ptr %i.y, i64 %.reass.us.i
  %.val.us.i = load i64, ptr %i.nt, align 8, !noalias !305, !noundef !3
  %.val205.us.i = load i64, ptr %i.nz, align 8, !noalias !305, !noundef !3
  %i.oa = icmp eq i64 %.val.us.i, %.val205.us.i
  br i1 %i.oa, label %bb.dp, label %bb.dm

bb.dm:                                            ; preds = %bb.dl
  %i.ob = add i64 %i.nu, %i.nr                    ; 3 uses
  %i.oc = load ptr, ptr %i.gi, align 8, !noalias !305, !nonnull !3, !noundef !3 ; 3 uses
  %i.od = load i64, ptr %i.gj, align 8, !noalias !305, !noundef !3 ; 5 uses
  %i.oe = icmp ult i64 %i.ob, %i.od
  br i1 %i.oe, label %bb.dn, label %.invoke.i

bb.dn:                                            ; preds = %bb.dm
  %i.of = add i64 %.sroa.0105.0432.us.i, %i.nq    ; 3 uses
  %i.og = icmp ult i64 %i.of, %i.od
  br i1 %i.og, label %bb.do, label %.invoke.i

bb.do:                                            ; preds = %bb.dn
  %i.oh = getelementptr inbounds nuw i8, ptr %i.oc, i64 %i.ob
  %i.oi = load i8, ptr %i.oh, align 1, !noalias !305, !noundef !3
  %i.oj = getelementptr inbounds nuw i8, ptr %i.oc, i64 %i.of
  %i.ok = load i8, ptr %i.oj, align 1, !noalias !305, !noundef !3
  %.sroa.0.0.i.us.i = call noundef i8 @llvm.umax.i8(i8 %i.ok, i8 %i.oi)
  br label %bb.dr

bb.dp:                                            ; preds = %bb.dl
  %i.ol = add i64 %.sroa.0105.0432.us.i, %i.nr    ; 3 uses
  %i.om = load i64, ptr %i.gj, align 8, !noalias !305, !noundef !3 ; 3 uses
  %i.on = icmp ult i64 %i.ol, %i.om
  br i1 %i.on, label %bb.dq, label %.invoke.i

bb.dq:                                            ; preds = %bb.dp
  %i.oo = load ptr, ptr %i.gi, align 8, !noalias !305, !nonnull !3, !noundef !3 ; 2 uses
  %i.op = getelementptr inbounds nuw i8, ptr %i.oo, i64 %i.ol
  %i.oq = load i8, ptr %i.op, align 1, !noalias !305, !noundef !3
  %i.or = add i8 %i.oq, 1
  br label %bb.dr

bb.dr:                                            ; preds = %bb.dq, %bb.do
  %i.os = phi ptr [ %i.oo, %bb.dq ], [ %i.oc, %bb.do ]
  %i.ot = phi i64 [ %i.om, %bb.dq ], [ %i.od, %bb.do ] ; 2 uses
  %.sroa.04.0.us.i = phi i8 [ %i.or, %bb.dq ], [ %.sroa.0.0.i.us.i, %bb.do ]
  %i.ou = add i64 %i.nu, %i.nq                    ; 3 uses
  %i.ov = icmp ult i64 %i.ou, %i.ot
  br i1 %i.ov, label %bb.ds, label %.invoke.i

bb.ds:                                            ; preds = %bb.dr
  %i.ow = getelementptr inbounds nuw i8, ptr %i.os, i64 %i.ou
  store i8 %.sroa.04.0.us.i, ptr %i.ow, align 1, !noalias !305
  %.not168.us.i = icmp eq i64 %i.nu, 0
  br i1 %.not168.us.i, label %..loopexit39_crit_edge.split.us.i, label %.lr.ph.split.us.i

..loopexit39_crit_edge.split.us.i:                ; preds = %bb.ds
  %.not.i76 = icmp eq i64 %i.gk, 0
  br i1 %.not.i76, label %.lr.ph495.i, label %.lr.ph469.split.i

.lr.ph.split.i:                                   ; preds = %.lr.ph.i
  %i.ox = and i64 %i.fp, 1023
  %i.oy = icmp eq i64 %i.ox, 1
  br i1 %i.oy, label %bb.dt, label %.invoke.i

bb.dt:                                            ; preds = %.lr.ph.split.i
  %i.oz = invoke noundef zeroext i1 @_RNvNtCsiqiOkcJdymw_7similar16deadline_support17deadline_exceeded(i64 %9, i32 noundef range(i32 -1, 1000000000) %10)
          to label %bb.du unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !305

bb.du:                                            ; preds = %bb.dt
  br i1 %i.oz, label %.loopexit24.i, label %.invoke.i

bb.dv:                                            ; preds = %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp
  %i.pa = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #13, !noalias !305
  unreachable

bb.dw:                                            ; preds = %bb.bb
  br i1 %i.fx, label %_RINvNtNtCsiqiOkcJdymw_7similar10algorithms5myers27maybe_emit_small_side_exactINtNtB4_5utils12OffsetLookupjEB1d_INtNtB4_4hook12NoFinishHookQIB1M_QINtNtB4_7compact7CompactIB1e_mEB2H_INtNtB4_7replace7ReplaceNtNtB4_7capture7CaptureEEEEECskXhPDodhyTq_6mdtest.exit.thread, label %bb.dx

bb.dx:                                            ; preds = %bb.dw
  %i.pb = add i64 %i.fq, 1                        ; 11 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !318
  %i.pc = add i64 %i.fp, 1
  %i.pd = mul i64 %i.pc, %i.pb                    ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !319)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !320
  call void @_RNvMs4_NtCscdodAO9FK5_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCskXhPDodhyTq_6mdtest(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, i64 noundef %i.pd, i1 noundef zeroext true, i64 noundef 1, i64 noundef 1), !noalias !320
  %i.pe = load i64, ptr %i.a, align 8, !range !8, !noalias !320, !noundef !3
  %i.pf = trunc nuw i64 %i.pe to i1
  %i.pg = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.ph = load i64, ptr %i.pg, align 8, !range !9, !noalias !320, !noundef !3 ; 2 uses
  %i.pi = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  br i1 %i.pf, label %bb.dy, label %.lr.ph484.i, !prof !7

bb.dy:                                            ; preds = %bb.dx
  %i.pj = load i64, ptr %i.pi, align 8, !noalias !320
  call void @_RNvNtCscdodAO9FK5_5alloc7raw_vec12handle_error(i64 noundef %i.ph, i64 %i.pj) #14, !noalias !320
  unreachable

.lr.ph484.i:                                      ; preds = %bb.dx
  %i.pk = load ptr, ptr %i.pi, align 8, !noalias !320, !nonnull !3, !noundef !3
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !320
  store i64 %i.ph, ptr %i.b, align 8, !alias.scope !319, !noalias !318
  %i.pl = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 7 uses
  store ptr %i.pk, ptr %i.pl, align 8, !alias.scope !319, !noalias !318
  %i.pm = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 7 uses
  store i64 %i.pd, ptr %i.pm, align 8, !alias.scope !319, !noalias !318
  %invariant.op.i92 = sub i64 %.sroa.0195.0, %i.o ; 4 uses
  %invariant.op485.i = sub i64 %.sroa.0.0, %i.u   ; 3 uses
  br label %.lr.ph484.split.i

.lr.ph484.split.i:                                ; preds = %.lr.ph484.i, %..loopexit39_crit_edge.split.us.i157
  %.sroa.0102.0483.i = phi i64 [ %i.pn, %..loopexit39_crit_edge.split.us.i157 ], [ %i.fp, %.lr.ph484.i ] ; 2 uses
  %i.pn = add i64 %.sroa.0102.0483.i, -1          ; 4 uses
  %i.po = invoke noundef zeroext i1 @_RNvNtCsiqiOkcJdymw_7similar16deadline_support17deadline_exceeded(i64 %9, i32 noundef range(i32 -1, 1000000000) %10)
          to label %bb.gb unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i88.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !318

._crit_edge512.i:                                 ; preds = %bb.fo
  br i1 %i.vc, label %bb.dz, label %bb.eb

.lr.ph511.i:                                      ; preds = %..loopexit39_crit_edge.split.us.i157, %bb.fo
  %.sroa.05.0.not510.i = phi i1 [ false, %bb.fo ], [ true, %..loopexit39_crit_edge.split.us.i157 ] ; 3 uses
  %.sroa.09.0509.i = phi i64 [ %.sroa.09.3.i122, %bb.fo ], [ 0, %..loopexit39_crit_edge.split.us.i157 ] ; 13 uses
  %.sroa.039.0508.i = phi i64 [ %.sroa.039.3.i, %bb.fo ], [ 0, %..loopexit39_crit_edge.split.us.i157 ] ; 16 uses
  %i.pp = and i64 %.sroa.039.0508.i, 1023
  %i.pq = icmp eq i64 %i.pp, 0
  %or.cond170.i103 = select i1 %.sroa.05.0.not510.i, i1 %i.pq, i1 false ; 2 uses
  br i1 %or.cond170.i103, label %bb.ef, label %bb.ee

bb.dz:                                            ; preds = %._crit_edge512.i
  %i.pr = add i64 %.sroa.09.3.i122, %.sroa.0.0    ; 2 uses
  %i.ps = sub nuw i64 %i.fp, %.sroa.09.3.i122
  %i.pt = add i64 %.sroa.039.3.i, %.sroa.0195.0   ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val51) ]
  %i.pu = load ptr, ptr %.val51, align 8, !alias.scope !321, !noalias !318, !nonnull !3, !align !5, !noundef !3 ; 3 uses
  %i.pv = getelementptr inbounds nuw i8, ptr %i.pu, i64 120 ; 2 uses
  %i.pw = getelementptr inbounds nuw i8, ptr %i.pu, i64 136 ; 2 uses
  %i.px = load i64, ptr %i.pw, align 8, !alias.scope !322, !noalias !318, !noundef !3 ; 3 uses
  %i.py = load i64, ptr %i.pv, align 8, !range !6, !alias.scope !322, !noalias !318, !noundef !3
  %i.pz = icmp eq i64 %i.px, %i.py
  br i1 %i.pz, label %bb.ea, label %_RNvXs0_NtNtCsiqiOkcJdymw_7similar10algorithms4hookINtB5_12NoFinishHookQIBN_QINtNtB7_7compact7CompactINtNtB7_5utils12OffsetLookupmEB1A_INtNtB7_7replace7ReplaceNtNtB7_7capture7CaptureEEEENtB5_8DiffHook6deleteCskXhPDodhyTq_6mdtest.exit181.i99

bb.ea:                                            ; preds = %bb.dz
  invoke void @_RNvMs3_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecNtNtCsiqiOkcJdymw_7similar5types6DiffOpE8grow_oneBP_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.pv)
          to label %_RNvXs0_NtNtCsiqiOkcJdymw_7similar10algorithms4hookINtB5_12NoFinishHookQIBN_QINtNtB7_7compact7CompactINtNtB7_5utils12OffsetLookupmEB1A_INtNtB7_7replace7ReplaceNtNtB7_7capture7CaptureEEEENtB5_8DiffHook6deleteCskXhPDodhyTq_6mdtest.exit181.i99 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i88.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !318

_RNvXs0_NtNtCsiqiOkcJdymw_7similar10algorithms4hookINtB5_12NoFinishHookQIBN_QINtNtB7_7compact7CompactINtNtB7_5utils12OffsetLookupmEB1A_INtNtB7_7replace7ReplaceNtNtB7_7capture7CaptureEEEENtB5_8DiffHook6deleteCskXhPDodhyTq_6mdtest.exit181.i99: ; preds = %bb.ea, %bb.dz
  %i.qa = getelementptr inbounds nuw i8, ptr %i.pu, i64 128
  %i.qb = load ptr, ptr %i.qa, align 8, !alias.scope !322, !noalias !318, !nonnull !3, !noundef !3
  %i.qc = getelementptr inbounds nuw [40 x i8], ptr %i.qb, i64 %i.px ; 4 uses
  store i64 1, ptr %i.qc, align 8, !noalias !318
  %.sroa.47.0..sroa_idx.i100 = getelementptr inbounds nuw i8, ptr %i.qc, i64 8
  store i64 %i.pr, ptr %.sroa.47.0..sroa_idx.i100, align 8, !noalias !318
  %.sroa.58.0..sroa_idx.i101 = getelementptr inbounds nuw i8, ptr %i.qc, i64 16
  store i64 %i.ps, ptr %.sroa.58.0..sroa_idx.i101, align 8, !noalias !318
  %.sroa.69.0..sroa_idx.i102 = getelementptr inbounds nuw i8, ptr %i.qc, i64 24
  store i64 %i.pt, ptr %.sroa.69.0..sroa_idx.i102, align 8, !noalias !318
  %i.qd = add i64 %i.px, 1
  store i64 %i.qd, ptr %i.pw, align 8, !alias.scope !322, !noalias !318
  br i1 %i.vd, label %bb.ec, label %_RINvNtNtCsiqiOkcJdymw_7similar10algorithms5myers27maybe_emit_small_side_exactINtNtB4_5utils12OffsetLookupjEB1d_INtNtB4_4hook12NoFinishHookQIB1M_QINtNtB4_7compact7CompactIB1e_mEB2H_INtNtB4_7replace7ReplaceNtNtB4_7capture7CaptureEEEEECskXhPDodhyTq_6mdtest.exit.thread309

bb.eb:                                            ; preds = %._crit_edge512.i
  br i1 %i.vd, label %._crit_edge879, label %_RINvNtNtCsiqiOkcJdymw_7similar10algorithms5myers27maybe_emit_small_side_exactINtNtB4_5utils12OffsetLookupjEB1d_INtNtB4_4hook12NoFinishHookQIB1M_QINtNtB4_7compact7CompactIB1e_mEB2H_INtNtB4_7replace7ReplaceNtNtB4_7capture7CaptureEEEEECskXhPDodhyTq_6mdtest.exit.thread309

._crit_edge879:                                   ; preds = %bb.eb
  %.pre885 = add i64 %.sroa.09.3.i122, %.sroa.0.0
  %.pre887 = add i64 %.sroa.039.3.i, %.sroa.0195.0
  br label %bb.ec

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i88.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %bb.gc, %bb.ef, %bb.eq, %bb.fd, %bb.fp, %bb.fr, %bb.er, %bb.fe, %.lr.ph484.split.i, %bb.gn, %.invoke.i104, %bb.ed, %bb.ea
  %lpad.loopexit.split-lp1593 = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VechEECskXhPDodhyTq_6mdtest(ptr noalias noundef align 8 dereferenceable(24) %i.b) #15
          to label %common.resume unwind label %bb.gr, !noalias !318

bb.ec:                                            ; preds = %._crit_edge879, %_RNvXs0_NtNtCsiqiOkcJdymw_7similar10algorithms4hookINtB5_12NoFinishHookQIBN_QINtNtB7_7compact7CompactINtNtB7_5utils12OffsetLookupmEB1A_INtNtB7_7replace7ReplaceNtNtB7_7capture7CaptureEEEENtB5_8DiffHook6deleteCskXhPDodhyTq_6mdtest.exit181.i99
  %.pre-phi888 = phi i64 [ %.pre887, %._crit_edge879 ], [ %i.pt, %_RNvXs0_NtNtCsiqiOkcJdymw_7similar10algorithms4hookINtB5_12NoFinishHookQIBN_QINtNtB7_7compact7CompactINtNtB7_5utils12OffsetLookupmEB1A_INtNtB7_7replace7ReplaceNtNtB7_7capture7CaptureEEEENtB5_8DiffHook6deleteCskXhPDodhyTq_6mdtest.exit181.i99 ]
  %.pre-phi886 = phi i64 [ %.pre885, %._crit_edge879 ], [ %i.pr, %_RNvXs0_NtNtCsiqiOkcJdymw_7similar10algorithms4hookINtB5_12NoFinishHookQIBN_QINtNtB7_7compact7CompactINtNtB7_5utils12OffsetLookupmEB1A_INtNtB7_7replace7ReplaceNtNtB7_7capture7CaptureEEEENtB5_8DiffHook6deleteCskXhPDodhyTq_6mdtest.exit181.i99 ]
  %i.qe = sub nuw i64 %i.fq, %.sroa.039.3.i
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val51) ]
  %i.qf = load ptr, ptr %.val51, align 8, !alias.scope !323, !noalias !318, !nonnull !3, !align !5, !noundef !3 ; 3 uses
  %i.qg = getelementptr inbounds nuw i8, ptr %i.qf, i64 120 ; 2 uses
  %i.qh = getelementptr inbounds nuw i8, ptr %i.qf, i64 136 ; 2 uses
  %i.qi = load i64, ptr %i.qh, align 8, !alias.scope !324, !noalias !318, !noundef !3 ; 3 uses
  %i.qj = load i64, ptr %i.qg, align 8, !range !6, !alias.scope !324, !noalias !318, !noundef !3
  %i.qk = icmp eq i64 %i.qi, %i.qj
  br i1 %i.qk, label %bb.ed, label %_RNvXs0_NtNtCsiqiOkcJdymw_7similar10algorithms4hookINtB5_12NoFinishHookQIBN_QINtNtB7_7compact7CompactINtNtB7_5utils12OffsetLookupmEB1A_INtNtB7_7replace7ReplaceNtNtB7_7capture7CaptureEEEENtB5_8DiffHook6insertCskXhPDodhyTq_6mdtest.exit182.i84

bb.ed:                                            ; preds = %bb.ec
  invoke void @_RNvMs3_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecNtNtCsiqiOkcJdymw_7similar5types6DiffOpE8grow_oneBP_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.qg)
          to label %_RNvXs0_NtNtCsiqiOkcJdymw_7similar10algorithms4hookINtB5_12NoFinishHookQIBN_QINtNtB7_7compact7CompactINtNtB7_5utils12OffsetLookupmEB1A_INtNtB7_7replace7ReplaceNtNtB7_7capture7CaptureEEEENtB5_8DiffHook6insertCskXhPDodhyTq_6mdtest.exit182.i84 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i88.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !318

_RNvXs0_NtNtCsiqiOkcJdymw_7similar10algorithms4hookINtB5_12NoFinishHookQIBN_QINtNtB7_7compact7CompactINtNtB7_5utils12OffsetLookupmEB1A_INtNtB7_7replace7ReplaceNtNtB7_7capture7CaptureEEEENtB5_8DiffHook6insertCskXhPDodhyTq_6mdtest.exit182.i84: ; preds = %bb.ed, %bb.ec
  %i.ql = getelementptr inbounds nuw i8, ptr %i.qf, i64 128
  %i.qm = load ptr, ptr %i.ql, align 8, !alias.scope !324, !noalias !318, !nonnull !3, !noundef !3
  %i.qn = getelementptr inbounds nuw [40 x i8], ptr %i.qm, i64 %i.qi ; 4 uses
  store i64 2, ptr %i.qn, align 8, !noalias !318
  %.sroa.417.0..sroa_idx.i85 = getelementptr inbounds nuw i8, ptr %i.qn, i64 8
  store i64 %.pre-phi886, ptr %.sroa.417.0..sroa_idx.i85, align 8, !noalias !318
  %.sroa.518.0..sroa_idx.i86 = getelementptr inbounds nuw i8, ptr %i.qn, i64 16
  store i64 %.pre-phi888, ptr %.sroa.518.0..sroa_idx.i86, align 8, !noalias !318
  %.sroa.619.0..sroa_idx.i87 = getelementptr inbounds nuw i8, ptr %i.qn, i64 24
  store i64 %i.qe, ptr %.sroa.619.0..sroa_idx.i87, align 8, !noalias !318
  %i.qo = add i64 %i.qi, 1
  store i64 %i.qo, ptr %i.qh, align 8, !alias.scope !324, !noalias !318
  br label %_RINvNtNtCsiqiOkcJdymw_7similar10algorithms5myers27maybe_emit_small_side_exactINtNtB4_5utils12OffsetLookupjEB1d_INtNtB4_4hook12NoFinishHookQIB1M_QINtNtB4_7compact7CompactIB1e_mEB2H_INtNtB4_7replace7ReplaceNtNtB4_7capture7CaptureEEEEECskXhPDodhyTq_6mdtest.exit.thread309

_RINvNtNtCsiqiOkcJdymw_7similar10algorithms5myers27maybe_emit_small_side_exactINtNtB4_5utils12OffsetLookupjEB1d_INtNtB4_4hook12NoFinishHookQIB1M_QINtNtB4_7compact7CompactIB1e_mEB2H_INtNtB4_7replace7ReplaceNtNtB4_7capture7CaptureEEEEECskXhPDodhyTq_6mdtest.exit.thread309: ; preds = %_RNvXs0_NtNtCsiqiOkcJdymw_7similar10algorithms4hookINtB5_12NoFinishHookQIBN_QINtNtB7_7compact7CompactINtNtB7_5utils12OffsetLookupmEB1A_INtNtB7_7replace7ReplaceNtNtB7_7capture7CaptureEEEENtB5_8DiffHook6deleteCskXhPDodhyTq_6mdtest.exit181.i99, %bb.eb, %_RNvXs0_NtNtCsiqiOkcJdymw_7similar10algorithms4hookINtB5_12NoFinishHookQIBN_QINtNtB7_7compact7CompactINtNtB7_5utils12OffsetLookupmEB1A_INtNtB7_7replace7ReplaceNtNtB7_7capture7CaptureEEEENtB5_8DiffHook6insertCskXhPDodhyTq_6mdtest.exit182.i84
  call fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VechEECskXhPDodhyTq_6mdtest(ptr noalias noundef align 8 dereferenceable(24) %i.b), !noalias !318
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !318
  br label %bb.av

bb.ee:                                            ; preds = %bb.eg, %.lr.ph511.i
  %i.qp = mul i64 %.sroa.09.0509.i, %i.pb         ; 4 uses
  %i.qq = add i64 %.sroa.09.0509.i, %.sroa.0.0    ; 4 uses
  %i.qr = add i64 %.sroa.039.0508.i, %.sroa.0195.0 ; 4 uses
  %i.qs = sub i64 %i.qr, %i.o                     ; 3 uses
  %i.qt = icmp ult i64 %i.qs, %i.q
  br i1 %i.qt, label %bb.eh, label %.invoke.i104

.invoke.i104:                                     ; preds = %bb.gl, %bb.gj, %bb.gh, %bb.gg, %bb.ge, %bb.en, %bb.el, %bb.ek, %bb.ej, %bb.eh, %bb.ee, %bb.fm, %bb.fk, %bb.fj, %bb.fi, %bb.fg, %bb.ez, %bb.ex, %bb.ew, %bb.ev, %bb.et, %bb.ft, %bb.fq, %bb.fw, %bb.fv, %bb.gq, %bb.gp
  %i.qu = phi i64 [ %i.ti, %bb.ez ], [ %.reass.i148, %bb.gp ], [ %.reass486.i, %bb.gq ], [ %i.uw, %bb.fm ], [ %i.qs, %bb.ee ], [ %i.wh, %bb.fw ], [ %i.q, %bb.fq ], [ %i.wa, %bb.fv ], [ %i.w, %bb.ft ], [ %i.ss, %bb.et ], [ %i.sw, %bb.ev ], [ %i.ta, %bb.ex ], [ %i.sy, %bb.ew ], [ %i.ue, %bb.fg ], [ %i.ui, %bb.fi ], [ %i.uo, %bb.fk ], [ %i.uk, %bb.fj ], [ %i.rd, %bb.ej ], [ %i.rf, %bb.ek ], [ %i.rv, %bb.en ], [ %i.qz, %bb.eh ], [ %i.rk, %bb.el ], [ %i.xe, %bb.gg ], [ %.reass.us.i151, %bb.ge ], [ %i.xx, %bb.gl ], [ %i.xi, %bb.gh ], [ %i.xo, %bb.gj ]
  %i.qv = phi i64 [ %.pre745.i.a, %bb.ez ], [ %i.q, %bb.gp ], [ %i.w, %bb.gq ], [ %.pre743.i, %bb.fm ], [ %i.q, %bb.ee ], [ %i.wc, %bb.fw ], [ %i.q, %bb.fq ], [ %i.wc, %bb.fv ], [ %i.w, %bb.ft ], [ %i.q, %bb.et ], [ %.pre745.i.a, %bb.ev ], [ %.pre745.i.a, %bb.ex ], [ %.pre745.i.a, %bb.ew ], [ %i.w, %bb.fg ], [ %.pre743.i, %bb.fi ], [ %.pre743.i, %bb.fk ], [ %.pre743.i, %bb.fj ], [ %.pre741.i, %bb.ej ], [ %.pre741.i, %bb.ek ], [ %.pre741.i, %bb.en ], [ %i.w, %bb.eh ], [ %.pre741.i, %bb.el ], [ %i.xg, %bb.gg ], [ %i.q, %bb.ge ], [ %i.xw, %bb.gl ], [ %i.xg, %bb.gh ], [ %i.xp, %bb.gj ]
  %i.qw = phi ptr [ @62, %bb.ez ], [ @73, %bb.gp ], [ @74, %bb.gq ], [ @68, %bb.fm ], [ @51, %bb.ee ], [ @72, %bb.fw ], [ @69, %bb.fq ], [ @71, %bb.fv ], [ @70, %bb.ft ], [ @57, %bb.et ], [ @59, %bb.ev ], [ @60, %bb.ex ], [ @61, %bb.ew ], [ @64, %bb.fg ], [ @65, %bb.fi ], [ @66, %bb.fk ], [ @67, %bb.fj ], [ @53, %bb.ej ], [ @55, %bb.ek ], [ @56, %bb.en ], [ @52, %bb.eh ], [ @54, %bb.el ], [ @75, %bb.gg ], [ @73, %bb.ge ], [ @78, %bb.gl ], [ @76, %bb.gh ], [ @77, %bb.gj ]
  invoke void @_RNvNtCs4NRVxsYgnAr_4core9panicking18panic_bounds_check(i64 noundef %i.qu, i64 noundef %i.qv, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.qw) #14
          to label %.cont.i105 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i88.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !318

.cont.i105:                                       ; preds = %.invoke.i104
  unreachable

bb.ef:                                            ; preds = %.lr.ph511.i
  %i.qx = invoke noundef zeroext i1 @_RNvNtCsiqiOkcJdymw_7similar16deadline_support17deadline_exceeded(i64 %9, i32 noundef range(i32 -1, 1000000000) %10)
          to label %bb.eg unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i88.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !318

bb.eg:                                            ; preds = %bb.ef
  br i1 %i.qx, label %.loopexit24.i124, label %bb.ee

bb.eh:                                            ; preds = %bb.ee
  %i.qy = getelementptr inbounds nuw [8 x i8], ptr %i.s, i64 %i.qs ; 2 uses
  %i.qz = sub i64 %i.qq, %i.u                     ; 3 uses
  %i.ra = icmp ult i64 %i.qz, %i.w
  br i1 %i.ra, label %bb.ei, label %.invoke.i104

bb.ei:                                            ; preds = %bb.eh
  %i.rb = getelementptr inbounds nuw [8 x i8], ptr %i.y, i64 %i.qz ; 2 uses
  %.val212.i106 = load i64, ptr %i.qy, align 8, !noalias !318, !noundef !3
  %.val213.i107 = load i64, ptr %i.rb, align 8, !noalias !318, !noundef !3
  %i.rc = icmp eq i64 %.val212.i106, %.val213.i107
  %.pre.i108 = load ptr, ptr %i.pl, align 8, !noalias !318 ; 4 uses
  %.pre741.i = load i64, ptr %i.pm, align 8, !noalias !318 ; 8 uses
  br i1 %i.rc, label %bb.ej, label %._crit_edge747.i

._crit_edge747.i:                                 ; preds = %bb.ei
  %.pre748.i = add nuw i64 %.sroa.09.0509.i, 1
  %.pre749.i = mul i64 %.pre748.i, %i.pb
  br label %bb.ek

bb.ej:                                            ; preds = %bb.ei
  %i.rd = add i64 %i.qp, %.sroa.039.0508.i        ; 3 uses
  %i.re = icmp ult i64 %i.rd, %.pre741.i
  br i1 %i.re, label %bb.el, label %.invoke.i104

bb.ek:                                            ; preds = %bb.em, %._crit_edge747.i
  %.pre-phi750.i = phi i64 [ %.pre749.i, %._crit_edge747.i ], [ %i.ri, %bb.em ] ; 3 uses
  %i.rf = add i64 %.pre-phi750.i, %.sroa.039.0508.i ; 3 uses
  %i.rg = icmp ult i64 %i.rf, %.pre741.i
  br i1 %i.rg, label %bb.en, label %.invoke.i104

bb.el:                                            ; preds = %bb.ej
  %i.rh = add nuw i64 %.sroa.09.0509.i, 1
  %i.ri = mul i64 %i.rh, %i.pb                    ; 2 uses
  %i.rj = add nuw i64 %.sroa.039.0508.i, 1
  %i.rk = add i64 %i.rj, %i.ri                    ; 3 uses
  %i.rl = icmp ult i64 %i.rk, %.pre741.i
  br i1 %i.rl, label %bb.em, label %.invoke.i104

bb.em:                                            ; preds = %bb.el
  %i.rm = getelementptr inbounds nuw i8, ptr %.pre.i108, i64 %i.rd
  %i.rn = load i8, ptr %i.rm, align 1, !noalias !318, !noundef !3
  %i.ro = getelementptr inbounds nuw i8, ptr %.pre.i108, i64 %i.rk
  %i.rp = load i8, ptr %i.ro, align 1, !noalias !318, !noundef !3
  %i.rq = add i8 %i.rp, 1
  %i.rr = icmp eq i8 %i.rn, %i.rq
  br i1 %i.rr, label %.preheader.i135, label %bb.ek

.preheader.i135:                                  ; preds = %bb.em
  %i.rs = icmp ult i64 %.sroa.09.0509.i, %i.fp
  %i.rt = icmp ult i64 %.sroa.039.0508.i, %i.fq
  %or.cond177494.i = select i1 %i.rs, i1 %i.rt, i1 false
  br i1 %or.cond177494.i, label %.lr.ph497.i, label %._crit_edge498.i

bb.en:                                            ; preds = %bb.ek
  %i.ru = add i64 %.sroa.039.0508.i, 1            ; 3 uses
  %i.rv = add i64 %i.ru, %i.qp                    ; 3 uses
  %i.rw = icmp ult i64 %i.rv, %.pre741.i
  br i1 %i.rw, label %bb.eo, label %.invoke.i104

bb.eo:                                            ; preds = %bb.en
  %i.rx = getelementptr inbounds nuw i8, ptr %.pre.i108, i64 %i.rf
  %i.ry = load i8, ptr %i.rx, align 1, !noalias !318, !noundef !3
  %i.rz = getelementptr inbounds nuw i8, ptr %.pre.i108, i64 %i.rv
  %i.sa = load i8, ptr %i.rz, align 1, !noalias !318, !noundef !3
  %.not164.i109 = icmp ult i8 %i.ry, %i.sa
  br i1 %.not164.i109, label %.preheader25.i126, label %.preheader30.i110

.preheader30.i110:                                ; preds = %bb.eo
  %umax.i111 = call i64 @llvm.umax.i64(i64 %.sroa.09.0509.i, i64 %i.fp) ; 3 uses
  %exitcond.not.i1131497.not = icmp ult i64 %.sroa.09.0509.i, %i.fp
  br i1 %exitcond.not.i1131497.not, label %.lr.ph1499, label %._crit_edge1500

.preheader25.i126:                                ; preds = %bb.eo
  %i.sb = icmp ult i64 %.sroa.039.0508.i, %i.fq
  br i1 %i.sb, label %.lr.ph489.i, label %._crit_edge.i127

.lr.ph489.i:                                      ; preds = %.preheader25.i126
  %i.sc = add i64 %.pre-phi750.i, 1
  %i.sd = add i64 %i.qp, 1
  br label %bb.ep

bb.ep:                                            ; preds = %bb.fb, %.lr.ph489.i
  %.sroa.039.1488.i = phi i64 [ %.sroa.039.0508.i, %.lr.ph489.i ], [ %i.tp, %bb.fb ] ; 9 uses
  %i.se = and i64 %.sroa.039.1488.i, 1023
  %i.sf = icmp eq i64 %i.se, 0
  %or.cond173.i132 = and i1 %.sroa.05.0.not510.i, %i.sf
  br i1 %or.cond173.i132, label %bb.er, label %bb.et

._crit_edge.i127:                                 ; preds = %bb.fb, %bb.fa, %bb.ey, %.preheader25.i126
  %.sroa.039.1.lcssa.i = phi i64 [ %.sroa.039.0508.i, %.preheader25.i126 ], [ %i.fq, %bb.fb ], [ %.sroa.039.1488.i, %bb.fa ], [ %.sroa.039.1488.i, %bb.ey ] ; 2 uses
  %i.sg = sub nuw i64 %.sroa.039.1.lcssa.i, %.sroa.039.0508.i
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val51) ]
  %i.sh = load ptr, ptr %.val51, align 8, !alias.scope !325, !noalias !318, !nonnull !3, !align !5, !noundef !3 ; 3 uses
  %i.si = getelementptr inbounds nuw i8, ptr %i.sh, i64 120 ; 2 uses
  %i.sj = getelementptr inbounds nuw i8, ptr %i.sh, i64 136 ; 2 uses
  %i.sk = load i64, ptr %i.sj, align 8, !alias.scope !326, !noalias !318, !noundef !3 ; 3 uses
  %i.sl = load i64, ptr %i.si, align 8, !range !6, !alias.scope !326, !noalias !318, !noundef !3
  %i.sm = icmp eq i64 %i.sk, %i.sl
  br i1 %i.sm, label %bb.eq, label %_RNvXs0_NtNtCsiqiOkcJdymw_7similar10algorithms4hookINtB5_12NoFinishHookQIBN_QINtNtB7_7compact7CompactINtNtB7_5utils12OffsetLookupmEB1A_INtNtB7_7replace7ReplaceNtNtB7_7capture7CaptureEEEENtB5_8DiffHook6insertCskXhPDodhyTq_6mdtest.exit.i128

bb.eq:                                            ; preds = %._crit_edge.i127
  invoke void @_RNvMs3_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecNtNtCsiqiOkcJdymw_7similar5types6DiffOpE8grow_oneBP_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.si)
          to label %_RNvXs0_NtNtCsiqiOkcJdymw_7similar10algorithms4hookINtB5_12NoFinishHookQIBN_QINtNtB7_7compact7CompactINtNtB7_5utils12OffsetLookupmEB1A_INtNtB7_7replace7ReplaceNtNtB7_7capture7CaptureEEEENtB5_8DiffHook6insertCskXhPDodhyTq_6mdtest.exit.i128 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i88.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !318

_RNvXs0_NtNtCsiqiOkcJdymw_7similar10algorithms4hookINtB5_12NoFinishHookQIBN_QINtNtB7_7compact7CompactINtNtB7_5utils12OffsetLookupmEB1A_INtNtB7_7replace7ReplaceNtNtB7_7capture7CaptureEEEENtB5_8DiffHook6insertCskXhPDodhyTq_6mdtest.exit.i128: ; preds = %bb.eq, %._crit_edge.i127
  %i.sn = getelementptr inbounds nuw i8, ptr %i.sh, i64 128
  %i.so = load ptr, ptr %i.sn, align 8, !alias.scope !326, !noalias !318, !nonnull !3, !noundef !3
  %i.sp = getelementptr inbounds nuw [40 x i8], ptr %i.so, i64 %i.sk ; 4 uses
  store i64 2, ptr %i.sp, align 8, !noalias !318
  %.sroa.412.0..sroa_idx.i129 = getelementptr inbounds nuw i8, ptr %i.sp, i64 8
  store i64 %i.qq, ptr %.sroa.412.0..sroa_idx.i129, align 8, !noalias !318
  %.sroa.513.0..sroa_idx.i130 = getelementptr inbounds nuw i8, ptr %i.sp, i64 16
  store i64 %i.qr, ptr %.sroa.513.0..sroa_idx.i130, align 8, !noalias !318
  %.sroa.614.0..sroa_idx.i131 = getelementptr inbounds nuw i8, ptr %i.sp, i64 24
  store i64 %i.sg, ptr %.sroa.614.0..sroa_idx.i131, align 8, !noalias !318
  %i.sq = add i64 %i.sk, 1
  store i64 %i.sq, ptr %i.sj, align 8, !alias.scope !326, !noalias !318
  br label %bb.fo

bb.er:                                            ; preds = %bb.ep
  %i.sr = invoke noundef zeroext i1 @_RNvNtCsiqiOkcJdymw_7similar16deadline_support17deadline_exceeded(i64 %9, i32 noundef range(i32 -1, 1000000000) %10)
          to label %bb.es unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i88.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !318

bb.es:                                            ; preds = %bb.er
  br i1 %i.sr, label %.loopexit24.i124, label %bb.et

bb.et:                                            ; preds = %bb.es, %bb.ep
  %i.ss = add i64 %.sroa.039.1488.i, %invariant.op.i92 ; 3 uses
  %i.st = icmp ult i64 %i.ss, %i.q
  br i1 %i.st, label %bb.eu, label %.invoke.i104

bb.eu:                                            ; preds = %bb.et
  %i.su = getelementptr inbounds nuw [8 x i8], ptr %i.s, i64 %i.ss
  %.val210.i133 = load i64, ptr %i.su, align 8, !noalias !318, !noundef !3
  %.val211.i134 = load i64, ptr %i.rb, align 8, !noalias !318, !noundef !3
  %i.sv = icmp eq i64 %.val210.i133, %.val211.i134
  %.pre744.i.a = load ptr, ptr %i.pl, align 8, !noalias !318 ; 4 uses
  %.pre745.i.a = load i64, ptr %i.pm, align 8, !noalias !318 ; 8 uses
  br i1 %i.sv, label %bb.ev, label %bb.ew

bb.ev:                                            ; preds = %bb.eu
  %i.sw = add i64 %.sroa.039.1488.i, %i.qp        ; 3 uses
  %i.sx = icmp ult i64 %i.sw, %.pre745.i.a
  br i1 %i.sx, label %bb.ex, label %.invoke.i104

bb.ew:                                            ; preds = %bb.ey, %bb.eu
  %i.sy = add i64 %.sroa.039.1488.i, %.pre-phi750.i ; 3 uses
  %i.sz = icmp ult i64 %i.sy, %.pre745.i.a
  br i1 %i.sz, label %bb.ez, label %.invoke.i104

bb.ex:                                            ; preds = %bb.ev
  %i.ta = add i64 %i.sc, %.sroa.039.1488.i        ; 3 uses
  %i.tb = icmp ult i64 %i.ta, %.pre745.i.a
  br i1 %i.tb, label %bb.ey, label %.invoke.i104

bb.ey:                                            ; preds = %bb.ex
  %i.tc = getelementptr inbounds nuw i8, ptr %.pre744.i.a, i64 %i.sw
  %i.td = load i8, ptr %i.tc, align 1, !noalias !318, !noundef !3
  %i.te = getelementptr inbounds nuw i8, ptr %.pre744.i.a, i64 %i.ta
  %i.tf = load i8, ptr %i.te, align 1, !noalias !318, !noundef !3
  %i.tg = add i8 %i.tf, 1
  %i.th = icmp eq i8 %i.td, %i.tg
  br i1 %i.th, label %._crit_edge.i127, label %bb.ew

bb.ez:                                            ; preds = %bb.ew
  %i.ti = add i64 %i.sd, %.sroa.039.1488.i        ; 3 uses
  %i.tj = icmp ult i64 %i.ti, %.pre745.i.a
  br i1 %i.tj, label %bb.fa, label %.invoke.i104

bb.fa:                                            ; preds = %bb.ez
  %i.tk = getelementptr inbounds nuw i8, ptr %.pre744.i.a, i64 %i.sy
  %i.tl = load i8, ptr %i.tk, align 1, !noalias !318, !noundef !3
  %i.tm = getelementptr inbounds nuw i8, ptr %.pre744.i.a, i64 %i.ti
  %i.tn = load i8, ptr %i.tm, align 1, !noalias !318, !noundef !3
  %i.to = icmp ult i8 %i.tl, %i.tn
  br i1 %i.to, label %bb.fb, label %._crit_edge.i127

bb.fb:                                            ; preds = %bb.fa
  %i.tp = add nuw i64 %.sroa.039.1488.i, 1        ; 2 uses
  %i.tq = icmp ult i64 %i.tp, %i.fq
  br i1 %i.tq, label %bb.ep, label %._crit_edge.i127

bb.fc:                                            ; preds = %bb.fn
  %exitcond.not.i113 = icmp eq i64 %.pre-phi752.i, %umax.i111
  br i1 %exitcond.not.i113, label %._crit_edge1500, label %.lr.ph1499

.lr.ph1499:                                       ; preds = %.preheader30.i110, %bb.fc
  %.sroa.09.1.i1121498 = phi i64 [ %.pre-phi752.i, %bb.fc ], [ %.sroa.09.0509.i, %.preheader30.i110 ] ; 6 uses
  br i1 %or.cond170.i103, label %bb.fe, label %bb.fg

._crit_edge1500:                                  ; preds = %bb.fc, %bb.fl, %bb.fn, %.preheader30.i110
  %.sroa.09.1.lcssa.i117 = phi i64 [ %umax.i111, %.preheader30.i110 ], [ %umax.i111, %bb.fc ], [ %.sroa.09.1.i1121498, %bb.fl ], [ %.sroa.09.1.i1121498, %bb.fn ] ; 2 uses
  %i.tr = sub nuw i64 %.sroa.09.1.lcssa.i117, %.sroa.09.0509.i
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val51) ]
  %i.ts = load ptr, ptr %.val51, align 8, !alias.scope !327, !noalias !318, !nonnull !3, !align !5, !noundef !3 ; 3 uses
  %i.tt = getelementptr inbounds nuw i8, ptr %i.ts, i64 120 ; 2 uses
  %i.tu = getelementptr inbounds nuw i8, ptr %i.ts, i64 136 ; 2 uses
  %i.tv = load i64, ptr %i.tu, align 8, !alias.scope !328, !noalias !318, !noundef !3 ; 3 uses
  %i.tw = load i64, ptr %i.tt, align 8, !range !6, !alias.scope !328, !noalias !318, !noundef !3
  %i.tx = icmp eq i64 %i.tv, %i.tw
  br i1 %i.tx, label %bb.fd, label %_RNvXs0_NtNtCsiqiOkcJdymw_7similar10algorithms4hookINtB5_12NoFinishHookQIBN_QINtNtB7_7compact7CompactINtNtB7_5utils12OffsetLookupmEB1A_INtNtB7_7replace7ReplaceNtNtB7_7capture7CaptureEEEENtB5_8DiffHook6deleteCskXhPDodhyTq_6mdtest.exit.i118

bb.fd:                                            ; preds = %._crit_edge1500
  invoke void @_RNvMs3_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecNtNtCsiqiOkcJdymw_7similar5types6DiffOpE8grow_oneBP_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.tt)
          to label %_RNvXs0_NtNtCsiqiOkcJdymw_7similar10algorithms4hookINtB5_12NoFinishHookQIBN_QINtNtB7_7compact7CompactINtNtB7_5utils12OffsetLookupmEB1A_INtNtB7_7replace7ReplaceNtNtB7_7capture7CaptureEEEENtB5_8DiffHook6deleteCskXhPDodhyTq_6mdtest.exit.i118 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i88.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !318

_RNvXs0_NtNtCsiqiOkcJdymw_7similar10algorithms4hookINtB5_12NoFinishHookQIBN_QINtNtB7_7compact7CompactINtNtB7_5utils12OffsetLookupmEB1A_INtNtB7_7replace7ReplaceNtNtB7_7capture7CaptureEEEENtB5_8DiffHook6deleteCskXhPDodhyTq_6mdtest.exit.i118: ; preds = %bb.fd, %._crit_edge1500
  %i.ty = getelementptr inbounds nuw i8, ptr %i.ts, i64 128
  %i.tz = load ptr, ptr %i.ty, align 8, !alias.scope !328, !noalias !318, !nonnull !3, !noundef !3
  %i.ua = getelementptr inbounds nuw [40 x i8], ptr %i.tz, i64 %i.tv ; 4 uses
  store i64 1, ptr %i.ua, align 8, !noalias !318
  %.sroa.42.0..sroa_idx.i119 = getelementptr inbounds nuw i8, ptr %i.ua, i64 8
  store i64 %i.qq, ptr %.sroa.42.0..sroa_idx.i119, align 8, !noalias !318
  %.sroa.53.0..sroa_idx.i120 = getelementptr inbounds nuw i8, ptr %i.ua, i64 16
  store i64 %i.tr, ptr %.sroa.53.0..sroa_idx.i120, align 8, !noalias !318
  %.sroa.64.0..sroa_idx.i121 = getelementptr inbounds nuw i8, ptr %i.ua, i64 24
  store i64 %i.qr, ptr %.sroa.64.0..sroa_idx.i121, align 8, !noalias !318
  %i.ub = add i64 %i.tv, 1
  store i64 %i.ub, ptr %i.tu, align 8, !alias.scope !328, !noalias !318
  br label %bb.fo

bb.fe:                                            ; preds = %.lr.ph1499
  %i.uc = invoke noundef zeroext i1 @_RNvNtCsiqiOkcJdymw_7similar16deadline_support17deadline_exceeded(i64 %9, i32 noundef range(i32 -1, 1000000000) %10)
          to label %bb.ff unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i88.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !318

bb.ff:                                            ; preds = %bb.fe
  br i1 %i.uc, label %.loopexit24.i124, label %bb.fg

bb.fg:                                            ; preds = %bb.ff, %.lr.ph1499
  %i.ud = mul i64 %.sroa.09.1.i1121498, %i.pb     ; 2 uses
  %i.ue = add i64 %.sroa.09.1.i1121498, %invariant.op485.i ; 3 uses
  %i.uf = icmp ult i64 %i.ue, %i.w
  br i1 %i.uf, label %bb.fh, label %.invoke.i104

bb.fh:                                            ; preds = %bb.fg
  %i.ug = getelementptr inbounds nuw [8 x i8], ptr %i.y, i64 %i.ue
  %.val208.i114 = load i64, ptr %i.qy, align 8, !noalias !318, !noundef !3
  %.val209.i115 = load i64, ptr %i.ug, align 8, !noalias !318, !noundef !3
  %i.uh = icmp eq i64 %.val208.i114, %.val209.i115
  %.pre742.i = load ptr, ptr %i.pl, align 8, !noalias !318 ; 4 uses
  %.pre743.i = load i64, ptr %i.pm, align 8, !noalias !318 ; 8 uses
  br i1 %i.uh, label %bb.fi, label %._crit_edge746.i

._crit_edge746.i:                                 ; preds = %bb.fh
  %.pre751.i = add i64 %.sroa.09.1.i1121498, 1    ; 2 uses
  %.pre753.i = mul i64 %.pre751.i, %i.pb
  br label %bb.fj

bb.fi:                                            ; preds = %bb.fh
  %i.ui = add i64 %i.ud, %.sroa.039.0508.i        ; 3 uses
  %i.uj = icmp ult i64 %i.ui, %.pre743.i
  br i1 %i.uj, label %bb.fk, label %.invoke.i104

bb.fj:                                            ; preds = %bb.fl, %._crit_edge746.i
  %.pre-phi754.i.a = phi i64 [ %.pre753.i, %._crit_edge746.i ], [ %i.un, %bb.fl ]
  %.pre-phi752.i = phi i64 [ %.pre751.i, %._crit_edge746.i ], [ %i.um, %bb.fl ] ; 2 uses
  %i.uk = add i64 %.pre-phi754.i.a, %.sroa.039.0508.i ; 3 uses
  %i.ul = icmp ult i64 %i.uk, %.pre743.i
  br i1 %i.ul, label %bb.fm, label %.invoke.i104

bb.fk:                                            ; preds = %bb.fi
  %i.um = add i64 %.sroa.09.1.i1121498, 1         ; 2 uses
  %i.un = mul i64 %i.um, %i.pb                    ; 2 uses
  %i.uo = add i64 %i.un, %i.ru                    ; 3 uses
  %i.up = icmp ult i64 %i.uo, %.pre743.i
  br i1 %i.up, label %bb.fl, label %.invoke.i104

bb.fl:                                            ; preds = %bb.fk
  %i.uq = getelementptr inbounds nuw i8, ptr %.pre742.i, i64 %i.ui
  %i.ur = load i8, ptr %i.uq, align 1, !noalias !318, !noundef !3
  %i.us = getelementptr inbounds nuw i8, ptr %.pre742.i, i64 %i.uo
  %i.ut = load i8, ptr %i.us, align 1, !noalias !318, !noundef !3
  %i.uu = add i8 %i.ut, 1
  %i.uv = icmp eq i8 %i.ur, %i.uu
  br i1 %i.uv, label %._crit_edge1500, label %bb.fj

bb.fm:                                            ; preds = %bb.fj
  %i.uw = add i64 %i.ud, %i.ru                    ; 3 uses
  %i.ux = icmp ult i64 %i.uw, %.pre743.i
  br i1 %i.ux, label %bb.fn, label %.invoke.i104

bb.fn:                                            ; preds = %bb.fm
  %i.uy = getelementptr inbounds nuw i8, ptr %.pre742.i, i64 %i.uk
  %i.uz = load i8, ptr %i.uy, align 1, !noalias !318, !noundef !3
  %i.va = getelementptr inbounds nuw i8, ptr %.pre742.i, i64 %i.uw
  %i.vb = load i8, ptr %i.va, align 1, !noalias !318, !noundef !3
  %.not167.i116 = icmp ult i8 %i.uz, %i.vb
  br i1 %.not167.i116, label %._crit_edge1500, label %bb.fc

bb.fo:                                            ; preds = %_RNvXs0_NtNtCsiqiOkcJdymw_7similar10algorithms4hookINtB5_12NoFinishHookQIBN_QINtNtB7_7compact7CompactINtNtB7_5utils12OffsetLookupmEB1A_INtNtB7_7replace7ReplaceNtNtB7_7capture7CaptureEEEENtB5_8DiffHook5equalCskXhPDodhyTq_6mdtest.exit.i137, %_RNvXs0_NtNtCsiqiOkcJdymw_7similar10algorithms4hookINtB5_12NoFinishHookQIBN_QINtNtB7_7compact7CompactINtNtB7_5utils12OffsetLookupmEB1A_INtNtB7_7replace7ReplaceNtNtB7_7capture7CaptureEEEENtB5_8DiffHook6deleteCskXhPDodhyTq_6mdtest.exit.i118, %_RNvXs0_NtNtCsiqiOkcJdymw_7similar10algorithms4hookINtB5_12NoFinishHookQIBN_QINtNtB7_7compact7CompactINtNtB7_5utils12OffsetLookupmEB1A_INtNtB7_7replace7ReplaceNtNtB7_7capture7CaptureEEEENtB5_8DiffHook6insertCskXhPDodhyTq_6mdtest.exit.i128
  %.sroa.039.3.i = phi i64 [ %.sroa.039.0508.i, %_RNvXs0_NtNtCsiqiOkcJdymw_7similar10algorithms4hookINtB5_12NoFinishHookQIBN_QINtNtB7_7compact7CompactINtNtB7_5utils12OffsetLookupmEB1A_INtNtB7_7replace7ReplaceNtNtB7_7capture7CaptureEEEENtB5_8DiffHook6deleteCskXhPDodhyTq_6mdtest.exit.i118 ], [ %.sroa.039.1.lcssa.i, %_RNvXs0_NtNtCsiqiOkcJdymw_7similar10algorithms4hookINtB5_12NoFinishHookQIBN_QINtNtB7_7compact7CompactINtNtB7_5utils12OffsetLookupmEB1A_INtNtB7_7replace7ReplaceNtNtB7_7capture7CaptureEEEENtB5_8DiffHook6insertCskXhPDodhyTq_6mdtest.exit.i128 ], [ %.sroa.039.4.lcssa.i, %_RNvXs0_NtNtCsiqiOkcJdymw_7similar10algorithms4hookINtB5_12NoFinishHookQIBN_QINtNtB7_7compact7CompactINtNtB7_5utils12OffsetLookupmEB1A_INtNtB7_7replace7ReplaceNtNtB7_7capture7CaptureEEEENtB5_8DiffHook5equalCskXhPDodhyTq_6mdtest.exit.i137 ] ; 5 uses
  %.sroa.09.3.i122 = phi i64 [ %.sroa.09.1.lcssa.i117, %_RNvXs0_NtNtCsiqiOkcJdymw_7similar10algorithms4hookINtB5_12NoFinishHookQIBN_QINtNtB7_7compact7CompactINtNtB7_5utils12OffsetLookupmEB1A_INtNtB7_7replace7ReplaceNtNtB7_7capture7CaptureEEEENtB5_8DiffHook6deleteCskXhPDodhyTq_6mdtest.exit.i118 ], [ %.sroa.09.0509.i, %_RNvXs0_NtNtCsiqiOkcJdymw_7similar10algorithms4hookINtB5_12NoFinishHookQIBN_QINtNtB7_7compact7CompactINtNtB7_5utils12OffsetLookupmEB1A_INtNtB7_7replace7ReplaceNtNtB7_7capture7CaptureEEEENtB5_8DiffHook6insertCskXhPDodhyTq_6mdtest.exit.i128 ], [ %.sroa.09.4.lcssa.i136, %_RNvXs0_NtNtCsiqiOkcJdymw_7similar10algorithms4hookINtB5_12NoFinishHookQIBN_QINtNtB7_7compact7CompactINtNtB7_5utils12OffsetLookupmEB1A_INtNtB7_7replace7ReplaceNtNtB7_7capture7CaptureEEEENtB5_8DiffHook5equalCskXhPDodhyTq_6mdtest.exit.i137 ] ; 5 uses
  %i.vc = icmp ult i64 %.sroa.09.3.i122, %i.fp    ; 2 uses
  %i.vd = icmp ult i64 %.sroa.039.3.i, %i.fq      ; 3 uses
  %or.cond.i123 = select i1 %i.vc, i1 %i.vd, i1 false
  br i1 %or.cond.i123, label %.lr.ph511.i, label %._crit_edge512.i

._crit_edge498.i:                                 ; preds = %bb.fy, %bb.fx, %bb.fu, %.preheader.i135
  %.sroa.039.4.lcssa.i = phi i64 [ %.sroa.039.0508.i, %.preheader.i135 ], [ %i.wg, %bb.fy ], [ %.sroa.039.4495.i, %bb.fu ], [ %.sroa.039.4495.i, %bb.fx ]
  %.sroa.09.4.lcssa.i136 = phi i64 [ %.sroa.09.0509.i, %.preheader.i135 ], [ %i.we, %bb.fy ], [ %.sroa.09.4496.i, %bb.fu ], [ %.sroa.09.4496.i, %bb.fx ] ; 2 uses
  %i.ve = sub i64 %.sroa.09.4.lcssa.i136, %.sroa.09.0509.i
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val51) ]
  %i.vf = load ptr, ptr %.val51, align 8, !alias.scope !329, !noalias !318, !nonnull !3, !align !5, !noundef !3 ; 3 uses
  %i.vg = getelementptr inbounds nuw i8, ptr %i.vf, i64 120 ; 2 uses
  %i.vh = getelementptr inbounds nuw i8, ptr %i.vf, i64 136 ; 2 uses
  %i.vi = load i64, ptr %i.vh, align 8, !alias.scope !330, !noalias !318, !noundef !3 ; 3 uses
  %i.vj = load i64, ptr %i.vg, align 8, !range !6, !alias.scope !330, !noalias !318, !noundef !3
  %i.vk = icmp eq i64 %i.vi, %i.vj
  br i1 %i.vk, label %bb.fp, label %_RNvXs0_NtNtCsiqiOkcJdymw_7similar10algorithms4hookINtB5_12NoFinishHookQIBN_QINtNtB7_7compact7CompactINtNtB7_5utils12OffsetLookupmEB1A_INtNtB7_7replace7ReplaceNtNtB7_7capture7CaptureEEEENtB5_8DiffHook5equalCskXhPDodhyTq_6mdtest.exit.i137

bb.fp:                                            ; preds = %._crit_edge498.i
  invoke void @_RNvMs3_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecNtNtCsiqiOkcJdymw_7similar5types6DiffOpE8grow_oneBP_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.vg)
          to label %_RNvXs0_NtNtCsiqiOkcJdymw_7similar10algorithms4hookINtB5_12NoFinishHookQIBN_QINtNtB7_7compact7CompactINtNtB7_5utils12OffsetLookupmEB1A_INtNtB7_7replace7ReplaceNtNtB7_7capture7CaptureEEEENtB5_8DiffHook5equalCskXhPDodhyTq_6mdtest.exit.i137 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i88.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !318

_RNvXs0_NtNtCsiqiOkcJdymw_7similar10algorithms4hookINtB5_12NoFinishHookQIBN_QINtNtB7_7compact7CompactINtNtB7_5utils12OffsetLookupmEB1A_INtNtB7_7replace7ReplaceNtNtB7_7capture7CaptureEEEENtB5_8DiffHook5equalCskXhPDodhyTq_6mdtest.exit.i137: ; preds = %bb.fp, %._crit_edge498.i
  %i.vl = getelementptr inbounds nuw i8, ptr %i.vf, i64 128
  %i.vm = load ptr, ptr %i.vl, align 8, !alias.scope !330, !noalias !318, !nonnull !3, !noundef !3
  %i.vn = getelementptr inbounds nuw [40 x i8], ptr %i.vm, i64 %i.vi ; 4 uses
  store i64 0, ptr %i.vn, align 8, !noalias !318
  %.sroa.4.0..sroa_idx.i138 = getelementptr inbounds nuw i8, ptr %i.vn, i64 8
  store i64 %i.qq, ptr %.sroa.4.0..sroa_idx.i138, align 8, !noalias !318
  %.sroa.5.0..sroa_idx.i139 = getelementptr inbounds nuw i8, ptr %i.vn, i64 16
  store i64 %i.qr, ptr %.sroa.5.0..sroa_idx.i139, align 8, !noalias !318
  %.sroa.6.0..sroa_idx.i140 = getelementptr inbounds nuw i8, ptr %i.vn, i64 24
  store i64 %i.ve, ptr %.sroa.6.0..sroa_idx.i140, align 8, !noalias !318
  %i.vo = add i64 %i.vi, 1
  store i64 %i.vo, ptr %i.vh, align 8, !alias.scope !330, !noalias !318
  br label %bb.fo

.lr.ph497.i:                                      ; preds = %.preheader.i135, %bb.fy
  %.sroa.09.4496.i = phi i64 [ %i.we, %bb.fy ], [ %.sroa.09.0509.i, %.preheader.i135 ] ; 5 uses
  %.sroa.039.4495.i = phi i64 [ %i.wg, %bb.fy ], [ %.sroa.039.0508.i, %.preheader.i135 ] ; 6 uses
  %i.vp = and i64 %.sroa.039.4495.i, 1023
  %i.vq = icmp eq i64 %i.vp, 0
  %or.cond180.i141 = select i1 %.sroa.05.0.not510.i, i1 %i.vq, i1 false
  br i1 %or.cond180.i141, label %bb.fr, label %bb.fq

bb.fq:                                            ; preds = %bb.fs, %.lr.ph497.i
  %i.vr = mul i64 %.sroa.09.4496.i, %i.pb
  %i.vs = add i64 %.sroa.039.4495.i, %invariant.op.i92 ; 2 uses
  %i.vt = icmp ult i64 %i.vs, %i.q
  br i1 %i.vt, label %bb.ft, label %.invoke.i104

bb.fr:                                            ; preds = %.lr.ph497.i
  %i.vu = invoke noundef zeroext i1 @_RNvNtCsiqiOkcJdymw_7similar16deadline_support17deadline_exceeded(i64 %9, i32 noundef range(i32 -1, 1000000000) %10)
          to label %bb.fs unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i88.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !318

bb.fs:                                            ; preds = %bb.fr
  br i1 %i.vu, label %.loopexit24.i124, label %bb.fq

bb.ft:                                            ; preds = %bb.fq
  %i.vv = add i64 %.sroa.09.4496.i, %invariant.op485.i ; 2 uses
  %i.vw = icmp ult i64 %i.vv, %i.w
  br i1 %i.vw, label %bb.fu, label %.invoke.i104

bb.fu:                                            ; preds = %bb.ft
  %i.vx = getelementptr inbounds nuw [8 x i8], ptr %i.s, i64 %i.vs
  %i.vy = getelementptr inbounds nuw [8 x i8], ptr %i.y, i64 %i.vv
  %.val206.i142 = load i64, ptr %i.vx, align 8, !noalias !318, !noundef !3
  %.val207.i143 = load i64, ptr %i.vy, align 8, !noalias !318, !noundef !3
  %i.vz = icmp eq i64 %.val206.i142, %.val207.i143
  br i1 %i.vz, label %bb.fv, label %._crit_edge498.i

bb.fv:                                            ; preds = %bb.fu
  %i.wa = add i64 %i.vr, %.sroa.039.4495.i        ; 3 uses
  %i.wb = load ptr, ptr %i.pl, align 8, !noalias !318, !nonnull !3, !noundef !3 ; 2 uses
  %i.wc = load i64, ptr %i.pm, align 8, !noalias !318, !noundef !3 ; 4 uses
  %i.wd = icmp ult i64 %i.wa, %i.wc
  br i1 %i.wd, label %bb.fw, label %.invoke.i104

bb.fw:                                            ; preds = %bb.fv
  %i.we = add nuw i64 %.sroa.09.4496.i, 1         ; 4 uses
  %i.wf = mul i64 %i.we, %i.pb
  %i.wg = add nuw i64 %.sroa.039.4495.i, 1        ; 4 uses
  %i.wh = add i64 %i.wg, %i.wf                    ; 3 uses
  %i.wi = icmp ult i64 %i.wh, %i.wc
  br i1 %i.wi, label %bb.fx, label %.invoke.i104

bb.fx:                                            ; preds = %bb.fw
  %i.wj = getelementptr inbounds nuw i8, ptr %i.wb, i64 %i.wa
  %i.wk = load i8, ptr %i.wj, align 1, !noalias !318, !noundef !3
  %i.wl = getelementptr inbounds nuw i8, ptr %i.wb, i64 %i.wh
  %i.wm = load i8, ptr %i.wl, align 1, !noalias !318, !noundef !3
  %i.wn = add i8 %i.wm, 1
  %i.wo = icmp eq i8 %i.wk, %i.wn
  br i1 %i.wo, label %bb.fy, label %._crit_edge498.i

bb.fy:                                            ; preds = %bb.fx
  %i.wp = icmp ult i64 %i.we, %i.fp
  %i.wq = icmp ult i64 %i.wg, %i.fq
  %or.cond177.i144 = and i1 %i.wp, %i.wq
  br i1 %or.cond177.i144, label %.lr.ph497.i, label %._crit_edge498.i

.loopexit24.i124:                                 ; preds = %bb.gb, %bb.gd, %bb.eg, %bb.ff, %bb.es, %bb.fs, %bb.go
  invoke void @_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCskXhPDodhyTq_6mdtest(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.b)
          to label %_RINvNtNtCsiqiOkcJdymw_7similar10algorithms5myers27maybe_emit_small_side_exactINtNtB4_5utils12OffsetLookupjEB1d_INtNtB4_4hook12NoFinishHookQIB1M_QINtNtB4_7compact7CompactIB1e_mEB2H_INtNtB4_7replace7ReplaceNtNtB4_7capture7CaptureEEEEECskXhPDodhyTq_6mdtest.exit unwind label %bb.fz, !noalias !318

bb.fz:                                            ; preds = %.loopexit24.i124
  %i.wr = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCskXhPDodhyTq_6mdtest(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.b)
          to label %common.resume unwind label %bb.ga, !noalias !318

bb.ga:                                            ; preds = %bb.fz
  %i.ws = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #13, !noalias !318
  unreachable

bb.gb:                                            ; preds = %.lr.ph484.split.i
  br i1 %i.po, label %.loopexit24.i124, label %.lr.ph.i145

.lr.ph.i145:                                      ; preds = %bb.gb
  %i.wt = mul i64 %i.pn, %i.pb                    ; 2 uses
  %i.wu = mul i64 %.sroa.0102.0483.i, %i.pb       ; 2 uses
  %.reass486.i = add i64 %i.pn, %invariant.op485.i ; 3 uses
  %i.wv = icmp ult i64 %.reass486.i, %i.w
  %i.ww = getelementptr inbounds nuw [8 x i8], ptr %i.y, i64 %.reass486.i
  %.fr.i146 = freeze i1 %i.wv
  br i1 %.fr.i146, label %.lr.ph.split.us.i149, label %.lr.ph.split.i147

.lr.ph.split.us.i149:                             ; preds = %.lr.ph.i145, %bb.gm
  %.sroa.0105.0432.us.i150 = phi i64 [ %i.wx, %bb.gm ], [ %i.fq, %.lr.ph.i145 ] ; 3 uses
  %i.wx = add i64 %.sroa.0105.0432.us.i150, -1    ; 6 uses
  %i.wy = and i64 %i.wx, 1023
  %i.wz = icmp eq i64 %i.wy, 0
  br i1 %i.wz, label %bb.gc, label %bb.ge

bb.gc:                                            ; preds = %.lr.ph.split.us.i149
  %i.xa = invoke noundef zeroext i1 @_RNvNtCsiqiOkcJdymw_7similar16deadline_support17deadline_exceeded(i64 %9, i32 noundef range(i32 -1, 1000000000) %10)
          to label %bb.gd unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i88.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !318

bb.gd:                                            ; preds = %bb.gc
end_hunk_1
begin_hunk_2_@_RINvNtNtCsiqiOkcJdymw_7similar10algorithms5myers7conquerINtNtB4_5utils12OffsetLookupjEBS_INtNtB4_4hook12NoFinishHookQIB1q_QINtNtB4_7compact7CompactIBT_mEB2l_INtNtB4_7replace7ReplaceNtNtB4_7capture7CaptureEEEEECskXhPDodhyTq_6mdtest:bb.a
bb.gn:                                            ; preds = %.lr.ph.split.i147
  %i.yd = invoke noundef zeroext i1 @_RNvNtCsiqiOkcJdymw_7similar16deadline_support17deadline_exceeded(i64 %9, i32 noundef range(i32 -1, 1000000000) %10)
          to label %bb.go unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i88.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !318

bb.go:                                            ; preds = %bb.gn
  br i1 %i.yd, label %.loopexit24.i124, label %bb.gp

bb.gp:                                            ; preds = %bb.go, %.lr.ph.split.i147
  %.reass.i148 = add i64 %invariant.op.i92, %i.ya ; 2 uses
  %i.ye = icmp ult i64 %.reass.i148, %i.q
  br i1 %i.ye, label %bb.gq, label %.invoke.i104

bb.gq:                                            ; preds = %bb.gp
  br label %.invoke.i104

bb.gr:                                            ; preds = %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i88.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp
  %i.yf = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #13, !noalias !318
  unreachable

_RINvNtNtCsiqiOkcJdymw_7similar10algorithms5myers27maybe_emit_small_side_exactINtNtB4_5utils12OffsetLookupjEB1d_INtNtB4_4hook12NoFinishHookQIB1M_QINtNtB4_7compact7CompactIB1e_mEB2H_INtNtB4_7replace7ReplaceNtNtB4_7capture7CaptureEEEEECskXhPDodhyTq_6mdtest.exit: ; preds = %.loopexit24.i124
  call void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCskXhPDodhyTq_6mdtest(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.b), !noalias !318
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !318
  br label %_RINvNtNtCsiqiOkcJdymw_7similar10algorithms5myers27maybe_emit_small_side_exactINtNtB4_5utils12OffsetLookupjEB1d_INtNtB4_4hook12NoFinishHookQIB1M_QINtNtB4_7compact7CompactIB1e_mEB2H_INtNtB4_7replace7ReplaceNtNtB4_7capture7CaptureEEEEECskXhPDodhyTq_6mdtest.exit.thread

_RINvNtNtCsiqiOkcJdymw_7similar10algorithms5myers27maybe_emit_small_side_exactINtNtB4_5utils12OffsetLookupjEB1d_INtNtB4_4hook12NoFinishHookQIB1M_QINtNtB4_7compact7CompactIB1e_mEB2H_INtNtB4_7replace7ReplaceNtNtB4_7capture7CaptureEEEEECskXhPDodhyTq_6mdtest.exit.thread: ; preds = %bb.az, %bb.dw, %bb.bc, %bb.ba, %bb.ay, %.sink.split.i, %_RINvNtNtCsiqiOkcJdymw_7similar10algorithms5myers27maybe_emit_small_side_exactINtNtB4_5utils12OffsetLookupjEB1d_INtNtB4_4hook12NoFinishHookQIB1M_QINtNtB4_7compact7CompactIB1e_mEB2H_INtNtB4_7replace7ReplaceNtNtB4_7capture7CaptureEEEEECskXhPDodhyTq_6mdtest.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  call fastcc void @_RINvNtNtCsiqiOkcJdymw_7similar10algorithms5myers17find_middle_snakeINtNtB4_5utils12OffsetLookupjEB13_ECskXhPDodhyTq_6mdtest(ptr noalias noundef align 8 captures(none) dereferenceable(24) %i.g, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) %1, i64 noundef %.sroa.0.0, i64 noundef %i.l, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) %4, i64 noundef %.sroa.0195.0, i64 noundef %i.m, ptr noalias noundef align 8 dereferenceable(32) %7, ptr noalias noundef align 8 dereferenceable(32) %8, i64 %9, i32 noundef %10)
  %i.yg = load i64, ptr %i.g, align 8, !range !8, !noundef !3
  %i.yh = trunc nuw i64 %i.yg to i1
  br i1 %i.yh, label %bb.gs, label %bb.gt

bb.gs:                                            ; preds = %_RINvNtNtCsiqiOkcJdymw_7similar10algorithms5myers27maybe_emit_small_side_exactINtNtB4_5utils12OffsetLookupjEB1d_INtNtB4_4hook12NoFinishHookQIB1M_QINtNtB4_7compact7CompactIB1e_mEB2H_INtNtB4_7replace7ReplaceNtNtB4_7capture7CaptureEEEEECskXhPDodhyTq_6mdtest.exit.thread
  %i.yi = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %i.yj = load i64, ptr %i.yi, align 8, !noundef !3 ; 2 uses
  %i.yk = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  %i.yl = load i64, ptr %i.yk, align 8, !noundef !3 ; 2 uses
  call fastcc void @_RINvNtNtCsiqiOkcJdymw_7similar10algorithms5myers7conquerINtNtB4_5utils12OffsetLookupjEBS_INtNtB4_4hook12NoFinishHookQIB1q_QINtNtB4_7compact7CompactIBT_mEB2l_INtNtB4_7replace7ReplaceNtNtB4_7capture7CaptureEEEEECskXhPDodhyTq_6mdtest(ptr noalias noundef align 8 dereferenceable(8) %0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) %1, i64 noundef %.sroa.0.0, i64 noundef %i.yj, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) %4, i64 noundef %.sroa.0195.0, i64 noundef %i.yl, ptr noalias noundef align 8 dereferenceable(32) %7, ptr noalias noundef align 8 dereferenceable(32) %8, i64 %9, i32 noundef %10)
  call fastcc void @_RINvNtNtCsiqiOkcJdymw_7similar10algorithms5myers7conquerINtNtB4_5utils12OffsetLookupjEBS_INtNtB4_4hook12NoFinishHookQIB1q_QINtNtB4_7compact7CompactIBT_mEB2l_INtNtB4_7replace7ReplaceNtNtB4_7capture7CaptureEEEEECskXhPDodhyTq_6mdtest(ptr noalias noundef align 8 dereferenceable(8) %0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) %1, i64 noundef %i.yj, i64 noundef %i.l, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) %4, i64 noundef %i.yl, i64 noundef %i.m, ptr noalias noundef align 8 dereferenceable(32) %7, ptr noalias noundef align 8 dereferenceable(32) %8, i64 %9, i32 noundef %10)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  br label %bb.av

bb.gt:                                            ; preds = %_RINvNtNtCsiqiOkcJdymw_7similar10algorithms5myers27maybe_emit_small_side_exactINtNtB4_5utils12OffsetLookupjEB1d_INtNtB4_4hook12NoFinishHookQIB1M_QINtNtB4_7compact7CompactIB1e_mEB2H_INtNtB4_7replace7ReplaceNtNtB4_7capture7CaptureEEEEECskXhPDodhyTq_6mdtest.exit.thread
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  %i.ym = sub nuw i64 %i.l, %.sroa.0.0
  call void @llvm.experimental.noalias.scope.decl(metadata !331)
  call void @llvm.experimental.noalias.scope.decl(metadata !332)
  %i.yn = load ptr, ptr %0, align 8, !alias.scope !333, !nonnull !3, !align !5, !noundef !3 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !334)
  call void @llvm.experimental.noalias.scope.decl(metadata !335), !noalias !333
  %i.yo = load ptr, ptr %i.yn, align 8, !alias.scope !336, !noalias !333, !nonnull !3, !align !5, !noundef !3 ; 3 uses
  %i.yp = getelementptr inbounds nuw i8, ptr %i.yo, i64 120 ; 2 uses
  %i.yq = getelementptr inbounds nuw i8, ptr %i.yo, i64 136 ; 2 uses
  %i.yr = load i64, ptr %i.yq, align 8, !alias.scope !337, !noalias !338, !noundef !3 ; 3 uses
  %i.ys = load i64, ptr %i.yp, align 8, !range !6, !alias.scope !337, !noalias !338, !noundef !3
  %i.yt = icmp eq i64 %i.yr, %i.ys
  br i1 %i.yt, label %bb.gu, label %_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCsiqiOkcJdymw_7similar5types6DiffOpE8push_mutCskXhPDodhyTq_6mdtest.exit159

bb.gu:                                            ; preds = %bb.gt
  call void @_RNvMs3_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecNtNtCsiqiOkcJdymw_7similar5types6DiffOpE8grow_oneBP_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.yp), !noalias !339
  br label %_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCsiqiOkcJdymw_7similar5types6DiffOpE8push_mutCskXhPDodhyTq_6mdtest.exit159

_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCsiqiOkcJdymw_7similar5types6DiffOpE8push_mutCskXhPDodhyTq_6mdtest.exit159: ; preds = %bb.gt, %bb.gu
  %i.yu = getelementptr inbounds nuw i8, ptr %i.yo, i64 128
  %i.yv = load ptr, ptr %i.yu, align 8, !alias.scope !337, !noalias !338, !nonnull !3, !noundef !3
  %i.yw = getelementptr inbounds nuw [40 x i8], ptr %i.yv, i64 %i.yr ; 4 uses
  store i64 1, ptr %i.yw, align 8, !noalias !338
  %.sroa.4256.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.yw, i64 8
  store i64 %.sroa.0.0, ptr %.sroa.4256.0..sroa_idx, align 8, !noalias !338
  %.sroa.5257.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.yw, i64 16
  store i64 %i.ym, ptr %.sroa.5257.0..sroa_idx, align 8, !noalias !338
  %.sroa.6258.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.yw, i64 24
  store i64 %.sroa.0195.0, ptr %.sroa.6258.0..sroa_idx, align 8, !noalias !338
  %i.yx = add i64 %i.yr, 1
  store i64 %i.yx, ptr %i.yq, align 8, !alias.scope !337, !noalias !338
  %i.yy = sub nuw i64 %i.m, %.sroa.0195.0
  call void @llvm.experimental.noalias.scope.decl(metadata !340)
  call void @llvm.experimental.noalias.scope.decl(metadata !341), !noalias !342
  %i.yz = load ptr, ptr %i.yn, align 8, !alias.scope !343, !noalias !342, !nonnull !3, !align !5, !noundef !3 ; 3 uses
  %i.za = getelementptr inbounds nuw i8, ptr %i.yz, i64 120 ; 2 uses
  %i.zb = getelementptr inbounds nuw i8, ptr %i.yz, i64 136 ; 2 uses
  %i.zc = load i64, ptr %i.zb, align 8, !alias.scope !344, !noalias !345, !noundef !3 ; 3 uses
  %i.zd = load i64, ptr %i.za, align 8, !range !6, !alias.scope !344, !noalias !345, !noundef !3
  %i.ze = icmp eq i64 %i.zc, %i.zd
  br i1 %i.ze, label %bb.gv, label %_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCsiqiOkcJdymw_7similar5types6DiffOpE8push_mutCskXhPDodhyTq_6mdtest.exit160

bb.gv:                                            ; preds = %_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCsiqiOkcJdymw_7similar5types6DiffOpE8push_mutCskXhPDodhyTq_6mdtest.exit159
  call void @_RNvMs3_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecNtNtCsiqiOkcJdymw_7similar5types6DiffOpE8grow_oneBP_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.za), !noalias !346
  br label %_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCsiqiOkcJdymw_7similar5types6DiffOpE8push_mutCskXhPDodhyTq_6mdtest.exit160

_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCsiqiOkcJdymw_7similar5types6DiffOpE8push_mutCskXhPDodhyTq_6mdtest.exit160: ; preds = %_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCsiqiOkcJdymw_7similar5types6DiffOpE8push_mutCskXhPDodhyTq_6mdtest.exit159, %bb.gv
  %i.zf = getelementptr inbounds nuw i8, ptr %i.yz, i64 128
  %i.zg = load ptr, ptr %i.zf, align 8, !alias.scope !344, !noalias !345, !nonnull !3, !noundef !3
  %i.zh = getelementptr inbounds nuw [40 x i8], ptr %i.zg, i64 %i.zc ; 4 uses
  store i64 2, ptr %i.zh, align 8, !noalias !345
  %.sroa.4271.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.zh, i64 8
  store i64 %.sroa.0.0, ptr %.sroa.4271.0..sroa_idx, align 8, !noalias !345
  %.sroa.5272.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.zh, i64 16
  store i64 %.sroa.0195.0, ptr %.sroa.5272.0..sroa_idx, align 8, !noalias !345
  %.sroa.6273.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.zh, i64 24
  store i64 %i.yy, ptr %.sroa.6273.0..sroa_idx, align 8, !noalias !345
  %i.zi = add i64 %i.zc, 1
  store i64 %i.zi, ptr %i.zb, align 8, !alias.scope !344, !noalias !345
  br label %bb.av

.thread:                                          ; preds = %bb.au
  %i.zj = sub nuw i64 %i.m, %.sroa.0195.0
  call void @llvm.experimental.noalias.scope.decl(metadata !347)
  call void @llvm.experimental.noalias.scope.decl(metadata !348)
  %i.zk = load ptr, ptr %0, align 8, !alias.scope !349, !nonnull !3, !align !5, !noundef !3
  call void @llvm.experimental.noalias.scope.decl(metadata !350)
  call void @llvm.experimental.noalias.scope.decl(metadata !351), !noalias !349
  %i.zl = load ptr, ptr %i.zk, align 8, !alias.scope !352, !noalias !349, !nonnull !3, !align !5, !noundef !3 ; 3 uses
  %i.zm = getelementptr inbounds nuw i8, ptr %i.zl, i64 120 ; 2 uses
  %i.zn = getelementptr inbounds nuw i8, ptr %i.zl, i64 136 ; 2 uses
  %i.zo = load i64, ptr %i.zn, align 8, !alias.scope !353, !noalias !354, !noundef !3 ; 3 uses
  %i.zp = load i64, ptr %i.zm, align 8, !range !6, !alias.scope !353, !noalias !354, !noundef !3
  %i.zq = icmp eq i64 %i.zo, %i.zp
  br i1 %i.zq, label %bb.gw, label %_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCsiqiOkcJdymw_7similar5types6DiffOpE8push_mutCskXhPDodhyTq_6mdtest.exit161

bb.gw:                                            ; preds = %.thread
  call void @_RNvMs3_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecNtNtCsiqiOkcJdymw_7similar5types6DiffOpE8grow_oneBP_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.zm), !noalias !355
  br label %_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCsiqiOkcJdymw_7similar5types6DiffOpE8push_mutCskXhPDodhyTq_6mdtest.exit161

_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCsiqiOkcJdymw_7similar5types6DiffOpE8push_mutCskXhPDodhyTq_6mdtest.exit161: ; preds = %.thread, %bb.gw
  %i.zr = getelementptr inbounds nuw i8, ptr %i.zl, i64 128
  %i.zs = load ptr, ptr %i.zr, align 8, !alias.scope !353, !noalias !354, !nonnull !3, !noundef !3
  %i.zt = getelementptr inbounds nuw [40 x i8], ptr %i.zs, i64 %i.zo ; 4 uses
  store i64 2, ptr %i.zt, align 8, !noalias !354
  %.sroa.4266.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.zt, i64 8
  store i64 %.sroa.0.0, ptr %.sroa.4266.0..sroa_idx, align 8, !noalias !354
  %.sroa.5267.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.zt, i64 16
  store i64 %.sroa.0195.0, ptr %.sroa.5267.0..sroa_idx, align 8, !noalias !354
  %.sroa.6268.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.zt, i64 24
  store i64 %i.zj, ptr %.sroa.6268.0..sroa_idx, align 8, !noalias !354
  %i.zu = add i64 %i.zo, 1
  store i64 %i.zu, ptr %i.zn, align 8, !alias.scope !353, !noalias !354
  br label %bb.av

bb.gx:                                            ; preds = %bb.av
  call void @llvm.experimental.noalias.scope.decl(metadata !356)
  call void @llvm.experimental.noalias.scope.decl(metadata !357)
  %i.zv = load ptr, ptr %0, align 8, !alias.scope !358, !nonnull !3, !align !5, !noundef !3
  call void @llvm.experimental.noalias.scope.decl(metadata !359)
  call void @llvm.experimental.noalias.scope.decl(metadata !360), !noalias !358
  %i.zw = load ptr, ptr %i.zv, align 8, !alias.scope !361, !noalias !358, !nonnull !3, !align !5, !noundef !3 ; 3 uses
  %i.zx = getelementptr inbounds nuw i8, ptr %i.zw, i64 120 ; 2 uses
  %i.zy = getelementptr inbounds nuw i8, ptr %i.zw, i64 136 ; 2 uses
  %i.zz = load i64, ptr %i.zy, align 8, !alias.scope !362, !noalias !363, !noundef !3 ; 3 uses
  %i.aaa = load i64, ptr %i.zx, align 8, !range !6, !alias.scope !362, !noalias !363, !noundef !3
  %i.aab = icmp eq i64 %i.zz, %i.aaa
  br i1 %i.aab, label %bb.gy, label %_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCsiqiOkcJdymw_7similar5types6DiffOpE8push_mutCskXhPDodhyTq_6mdtest.exit162

bb.gy:                                            ; preds = %bb.gx
  call void @_RNvMs3_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecNtNtCsiqiOkcJdymw_7similar5types6DiffOpE8grow_oneBP_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.zx), !noalias !364
  br label %_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCsiqiOkcJdymw_7similar5types6DiffOpE8push_mutCskXhPDodhyTq_6mdtest.exit162

_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCsiqiOkcJdymw_7similar5types6DiffOpE8push_mutCskXhPDodhyTq_6mdtest.exit162: ; preds = %bb.gx, %bb.gy
  %i.aac = getelementptr inbounds nuw i8, ptr %i.zw, i64 128
  %i.aad = load ptr, ptr %i.aac, align 8, !alias.scope !362, !noalias !363, !nonnull !3, !noundef !3
  %i.aae = getelementptr inbounds nuw [40 x i8], ptr %i.aad, i64 %i.zz ; 4 uses
  store i64 0, ptr %i.aae, align 8, !noalias !363
  %.sroa.4236.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.aae, i64 8
  store i64 %i.l, ptr %.sroa.4236.0..sroa_idx, align 8, !noalias !363
  %.sroa.5237.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.aae, i64 16
  store i64 %i.m, ptr %.sroa.5237.0..sroa_idx, align 8, !noalias !363
  %.sroa.6238.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.aae, i64 24
  store i64 %i.k, ptr %.sroa.6238.0..sroa_idx, align 8, !noalias !363
  %i.aaf = add i64 %i.zz, 1
  store i64 %i.aaf, ptr %i.zy, align 8, !alias.scope !362, !noalias !363
  br label %bb.gz

bb.gz:                                            ; preds = %bb.av, %_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCsiqiOkcJdymw_7similar5types6DiffOpE8push_mutCskXhPDodhyTq_6mdtest.exit162
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtNtCsiqiOkcJdymw_7similar10algorithms5myers7conquerINtNtB4_5utils12OffsetLookupjEBS_INtNtB4_4hook12NoFinishHookQIB1q_QINtNtB4_7compact7CompactINtNtB6_4text12TextDiffSideeEB2l_INtNtB4_7replace7ReplaceNtNtB4_7capture7CaptureEEEEECskXhPDodhyTq_6mdtest(ptr noalias noundef nonnull align 8 dereferenceable(8) %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %1, i64 noundef %2, i64 noundef %3, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %4, i64 noundef %5, i64 noundef %6, ptr noalias noundef nonnull align 8 dereferenceable(32) %7, ptr noalias noundef nonnull align 8 dereferenceable(32) %8, i64 %9, i32 noundef range(i32 -1, 1000000000) %10) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = alloca [24 x i8], align 8                ; 11 uses
  %i.c = alloca [24 x i8], align 8                ; 6 uses
  %i.d = alloca [24 x i8], align 8                ; 11 uses
  %i.e = alloca [32 x i8], align 8                ; 6 uses
  %i.f = alloca [32 x i8], align 8                ; 6 uses
  %i.g = alloca [24 x i8], align 8                ; 7 uses
  %i.h = tail call noundef i64 @_RINvNtNtCsiqiOkcJdymw_7similar10algorithms5utils17common_prefix_lenINtB2_12OffsetLookupjEB13_ECskXhPDodhyTq_6mdtest(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %1, i64 noundef %2, i64 noundef %3, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %4, i64 noundef %5, i64 noundef %6) ; 4 uses
  %.not = icmp eq i64 %i.h, 0
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCsiqiOkcJdymw_7similar5types6DiffOpE8push_mutCskXhPDodhyTq_6mdtest.exit, %bb.a
  %i.i = add i64 %i.h, %2                         ; 2 uses
  %i.j = add i64 %i.h, %5                         ; 2 uses
  %i.k = tail call noundef i64 @_RINvNtNtCsiqiOkcJdymw_7similar10algorithms5utils17common_suffix_lenINtB2_12OffsetLookupjEB13_ECskXhPDodhyTq_6mdtest(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %1, i64 noundef %i.i, i64 noundef %3, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %4, i64 noundef %i.j, i64 noundef %6) ; 4 uses
  %i.l = sub i64 %3, %i.k                         ; 9 uses
  %i.m = sub i64 %6, %i.k                         ; 9 uses
  %i.n = getelementptr inbounds nuw i8, ptr %4, i64 24
  %i.o = load i64, ptr %i.n, align 8              ; 8 uses
  %i.p = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.q = load i64, ptr %i.p, align 8              ; 27 uses
  %i.r = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.s = load ptr, ptr %i.r, align 8, !nonnull !3 ; 11 uses
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.u = load i64, ptr %i.t, align 8              ; 5 uses
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.w = load i64, ptr %i.v, align 8              ; 23 uses
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.y = load ptr, ptr %i.x, align 8, !nonnull !3 ; 10 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.f, i64 8 ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %i.ab = getelementptr inbounds nuw i8, ptr %i.f, i64 24
  %i.ac = getelementptr inbounds nuw i8, ptr %i.e, i64 8 ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  %i.ae = getelementptr inbounds nuw i8, ptr %i.e, i64 24
  br label %bb.e

bb.c:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !566)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !567)
  %i.af = load ptr, ptr %0, align 8, !alias.scope !568, !nonnull !3, !align !5, !noundef !3
  tail call void @llvm.experimental.noalias.scope.decl(metadata !569)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !570), !noalias !568
  %i.ag = load ptr, ptr %i.af, align 8, !alias.scope !571, !noalias !568, !nonnull !3, !align !5, !noundef !3 ; 3 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 120 ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ag, i64 136 ; 2 uses
  %i.aj = load i64, ptr %i.ai, align 8, !alias.scope !572, !noalias !573, !noundef !3 ; 3 uses
  %i.ak = load i64, ptr %i.ah, align 8, !range !6, !alias.scope !572, !noalias !573, !noundef !3
  %i.al = icmp eq i64 %i.aj, %i.ak
  br i1 %i.al, label %bb.d, label %_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCsiqiOkcJdymw_7similar5types6DiffOpE8push_mutCskXhPDodhyTq_6mdtest.exit

bb.d:                                             ; preds = %bb.c
  tail call void @_RNvMs3_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecNtNtCsiqiOkcJdymw_7similar5types6DiffOpE8grow_oneBP_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.ah), !noalias !574
  br label %_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCsiqiOkcJdymw_7similar5types6DiffOpE8push_mutCskXhPDodhyTq_6mdtest.exit

_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCsiqiOkcJdymw_7similar5types6DiffOpE8push_mutCskXhPDodhyTq_6mdtest.exit: ; preds = %bb.c, %bb.d
  %i.am = getelementptr inbounds nuw i8, ptr %i.ag, i64 128
  %i.an = load ptr, ptr %i.am, align 8, !alias.scope !572, !noalias !573, !nonnull !3, !noundef !3
  %i.ao = getelementptr inbounds nuw [40 x i8], ptr %i.an, i64 %i.aj ; 4 uses
  store i64 0, ptr %i.ao, align 8, !noalias !573
  %.sroa.4241.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ao, i64 8
  store i64 %2, ptr %.sroa.4241.0..sroa_idx, align 8, !noalias !573
  %.sroa.5242.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ao, i64 16
  store i64 %5, ptr %.sroa.5242.0..sroa_idx, align 8, !noalias !573
  %.sroa.6243.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ao, i64 24
  store i64 %i.h, ptr %.sroa.6243.0..sroa_idx, align 8, !noalias !573
  %i.ap = add i64 %i.aj, 1
  store i64 %i.ap, ptr %i.ai, align 8, !alias.scope !572, !noalias !573
  br label %bb.b

bb.e:                                             ; preds = %_RINvNtNtCsiqiOkcJdymw_7similar10algorithms5myers21try_emit_front_anchorINtNtB4_5utils12OffsetLookupjEB17_INtNtB4_4hook12NoFinishHookQIB1G_QINtNtB4_7compact7CompactINtNtB6_4text12TextDiffSideeEB2B_INtNtB4_7replace7ReplaceNtNtB4_7capture7CaptureEEEEECskXhPDodhyTq_6mdtest.exit, %bb.b
  %.sroa.0195.0 = phi i64 [ %i.j, %bb.b ], [ %.sroa.0195.2, %_RINvNtNtCsiqiOkcJdymw_7similar10algorithms5myers21try_emit_front_anchorINtNtB4_5utils12OffsetLookupjEB17_INtNtB4_4hook12NoFinishHookQIB1G_QINtNtB4_7compact7CompactINtNtB6_4text12TextDiffSideeEB2B_INtNtB4_7replace7ReplaceNtNtB4_7capture7CaptureEEEEECskXhPDodhyTq_6mdtest.exit ] ; 36 uses
  %.sroa.0.0 = phi i64 [ %i.i, %bb.b ], [ %.sroa.0.2, %_RINvNtNtCsiqiOkcJdymw_7similar10algorithms5myers21try_emit_front_anchorINtNtB4_5utils12OffsetLookupjEB17_INtNtB4_4hook12NoFinishHookQIB1G_QINtNtB4_7compact7CompactINtNtB6_4text12TextDiffSideeEB2B_INtNtB4_7replace7ReplaceNtNtB4_7capture7CaptureEEEEECskXhPDodhyTq_6mdtest.exit ] ; 33 uses
  %i.aq = icmp ult i64 %.sroa.0.0, %i.l           ; 2 uses
  %i.ar = icmp ult i64 %.sroa.0195.0, %i.m        ; 3 uses
  %or.cond312 = select i1 %i.aq, i1 %i.ar, i1 false
  br i1 %or.cond312, label %bb.g, label %bb.f

bb.f:                                             ; preds = %_RINvNtNtCsiqiOkcJdymw_7similar10algorithms5myers21try_emit_front_anchorINtNtB4_5utils12OffsetLookupjEB17_INtNtB4_4hook12NoFinishHookQIB1G_QINtNtB4_7compact7CompactINtNtB6_4text12TextDiffSideeEB2B_INtNtB4_7replace7ReplaceNtNtB4_7capture7CaptureEEEEECskXhPDodhyTq_6mdtest.exit, %bb.e
  br i1 %i.aq, label %bb.at, label %bb.au

bb.g:                                             ; preds = %bb.e
  %i.as = sub nuw i64 %i.l, %.sroa.0.0            ; 5 uses
  %i.at = sub nuw i64 %i.m, %.sroa.0195.0         ; 6 uses
  %i.au = icmp ult i64 %i.as, 97
  %i.av = icmp ult i64 %i.at, 97
  %or.cond.i = or i1 %i.av, %i.au
  br i1 %or.cond.i, label %_RINvNtNtCsiqiOkcJdymw_7similar10algorithms5myers21try_emit_front_anchorINtNtB4_5utils12OffsetLookupjEB17_INtNtB4_4hook12NoFinishHookQIB1G_QINtNtB4_7compact7CompactINtNtB6_4text12TextDiffSideeEB2B_INtNtB4_7replace7ReplaceNtNtB4_7capture7CaptureEEEEECskXhPDodhyTq_6mdtest.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %.sroa.0.0.i53 = call noundef i64 @llvm.umin.i64(i64 %i.at, i64 %i.as) ; 2 uses
  %.sroa.0.0.i54 = call noundef i64 @llvm.umax.i64(i64 %i.at, i64 %i.as)
  %i.aw = shl nuw i64 %.sroa.0.0.i53, 1
  %i.ax = icmp slt i64 %.sroa.0.0.i53, 0
  br i1 %i.ax, label %bb.i, label %bb.j, !prof !7

bb.i:                                             ; preds = %bb.h
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %.sroa.052.0.i = phi i64 [ -1, %bb.i ], [ %i.aw, %bb.h ]
  %i.ay = icmp ult i64 %.sroa.0.0.i54, %.sroa.052.0.i
  br i1 %i.ay, label %_RINvNtNtCsiqiOkcJdymw_7similar10algorithms5myers21try_emit_front_anchorINtNtB4_5utils12OffsetLookupjEB17_INtNtB4_4hook12NoFinishHookQIB1G_QINtNtB4_7compact7CompactINtNtB6_4text12TextDiffSideeEB2B_INtNtB4_7replace7ReplaceNtNtB4_7capture7CaptureEEEEECskXhPDodhyTq_6mdtest.exit, label %bb.k

bb.k:                                             ; preds = %bb.j
  %.not.i = icmp ule i64 %i.at, %i.as
  %i.az = icmp ule i64 %i.as, %i.at
  %.not.i.fr = freeze i1 %.not.i
  %i.ba = sub i64 %.sroa.0195.0, %i.o             ; 2 uses
  %i.bb = icmp ult i64 %i.ba, %i.q
  %i.bc = getelementptr inbounds nuw [8 x i8], ptr %i.s, i64 %i.ba
  br label %bb.l

.loopexit:                                        ; preds = %.outer, %bb.z, %bb.o, %bb.y
  %.sroa.525.2.i.ph.lcssa485 = phi i64 [ %.sroa.525.2.i.ph636, %bb.o ], [ %.sroa.525.2.i.ph636, %bb.z ], [ %.sroa.525.2.i.ph636, %bb.y ], [ %.sroa.525.3.i, %.outer ] ; 2 uses
  %.sroa.023.1.i.ph.lcssa478 = phi i64 [ %.sroa.023.1.i.ph637, %bb.o ], [ %.sroa.023.1.i.ph637, %bb.z ], [ %.sroa.023.1.i.ph637, %bb.y ], [ %.sroa.023.2.i, %.outer ] ; 2 uses
  %.sroa.9.2.i.ph.lcssa471 = phi i64 [ %.sroa.9.2.i.ph638, %bb.o ], [ %.sroa.9.2.i.ph638, %bb.z ], [ %.sroa.9.2.i.ph638, %bb.y ], [ %.sroa.9.3.i, %.outer ] ; 2 uses
  %.sroa.12.2.i.ph.lcssa464 = phi i64 [ %.sroa.12.2.i.ph639, %bb.o ], [ %.sroa.12.2.i.ph639, %bb.z ], [ %.sroa.12.2.i.ph639, %bb.y ], [ %.sroa.12.3.i, %.outer ] ; 2 uses
  %.not.i57 = icmp ugt i64 %spec.select313, 4
  %or.cond318 = or i1 %i.bd, %.not.i57
  br i1 %or.cond318, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k, %.loopexit
  %.sroa.12.0.i644 = phi i64 [ undef, %bb.k ], [ %.sroa.12.2.i.ph.lcssa464, %.loopexit ]
  %.sroa.9.0.i643 = phi i64 [ undef, %bb.k ], [ %.sroa.9.2.i.ph.lcssa471, %.loopexit ]
  %.sroa.023.0.i642 = phi i64 [ 0, %bb.k ], [ %.sroa.023.1.i.ph.lcssa478, %.loopexit ]
  %.sroa.525.0.i641 = phi i64 [ undef, %bb.k ], [ %.sroa.525.2.i.ph.lcssa485, %.loopexit ]
  %.sroa.0228.0640 = phi i64 [ 0, %bb.k ], [ %spec.select313, %.loopexit ] ; 11 uses
  %i.bd = icmp eq i64 %.sroa.0228.0640, 4         ; 2 uses
  %i.be = add nuw nsw i64 %.sroa.0228.0640, 1
  %spec.select313 = select i1 %i.bd, i64 4, i64 %i.be ; 2 uses
  %i.bf = icmp eq i64 %.sroa.0228.0640, 0
  %i.bg = add i64 %.sroa.0228.0640, %.sroa.0.0    ; 2 uses
  %i.bh = sub i64 %i.bg, %i.u                     ; 5 uses
  %i.bi = icmp ult i64 %i.bh, %i.w                ; 2 uses
  %i.bj = getelementptr inbounds nuw [8 x i8], ptr %i.y, i64 %i.bh ; 2 uses
  %i.bk = sub i64 %i.l, %i.bg
  br label %.lr.ph

bb.m:                                             ; preds = %.loopexit
  %i.bl = trunc nuw i64 %.sroa.023.1.i.ph.lcssa478 to i1
  br i1 %i.bl, label %.loopexit395, label %_RINvNtNtCsiqiOkcJdymw_7similar10algorithms5myers21try_emit_front_anchorINtNtB4_5utils12OffsetLookupjEB17_INtNtB4_4hook12NoFinishHookQIB1G_QINtNtB4_7compact7CompactINtNtB6_4text12TextDiffSideeEB2B_INtNtB4_7replace7ReplaceNtNtB4_7capture7CaptureEEEEECskXhPDodhyTq_6mdtest.exit

.loopexit395:                                     ; preds = %bb.aa, %bb.m
  %.sroa.525.1.i = phi i64 [ %.sroa.525.2.i.ph.lcssa485, %bb.m ], [ %.sroa.0228.0640, %bb.aa ] ; 4 uses
  %.sroa.9.1.i = phi i64 [ %.sroa.9.2.i.ph.lcssa471, %bb.m ], [ %.us-phi548, %bb.aa ] ; 4 uses
  %.sroa.12.1.i = phi i64 [ %.sroa.12.2.i.ph.lcssa464, %bb.m ], [ %.sroa.01.0.i.lcssa, %bb.aa ] ; 3 uses
  %i.bm = icmp eq i64 %.sroa.525.1.i, 0
  %i.bn = icmp eq i64 %.sroa.9.1.i, 0             ; 2 uses
  br i1 %i.bm, label %bb.ai, label %bb.aj

.lr.ph.split.split:                               ; preds = %.lr.ph.split, %bb.o
  %.sroa.0229.0523 = phi i64 [ %spec.select315, %bb.o ], [ %.sroa.0229.0.ph635, %.lr.ph.split ] ; 3 uses
  %i.bo = icmp eq i64 %.sroa.0229.0523, 4         ; 3 uses
  %i.bp = add nuw nsw i64 %.sroa.0229.0523, 1
  %spec.select315 = select i1 %i.bo, i64 4, i64 %i.bp ; 3 uses
  %i.bq = call noundef zeroext i1 @_RNvNtCsiqiOkcJdymw_7similar16deadline_support17deadline_exceeded(i64 %9, i32 noundef range(i32 -1, 1000000000) %10), !noalias !575
  br i1 %i.bq, label %_RINvNtNtCsiqiOkcJdymw_7similar10algorithms5myers21try_emit_front_anchorINtNtB4_5utils12OffsetLookupjEB17_INtNtB4_4hook12NoFinishHookQIB1G_QINtNtB4_7compact7CompactINtNtB6_4text12TextDiffSideeEB2B_INtNtB4_7replace7ReplaceNtNtB4_7capture7CaptureEEEEECskXhPDodhyTq_6mdtest.exit, label %bb.n

bb.n:                                             ; preds = %.lr.ph.split.split
  %.not647 = icmp eq i64 %.sroa.0229.0523, 0
  br i1 %.not647, label %bb.p, label %bb.o

bb.o:                                             ; preds = %bb.n, %_RNvXs3_NtNtCsiqiOkcJdymw_7similar10algorithms5utilsINtB5_12OffsetLookupjEINtNtNtCs4NRVxsYgnAr_4core3ops5index5IndexjE5indexCskXhPDodhyTq_6mdtest.exit30
  %.not.i59 = icmp ugt i64 %spec.select315, 4
  %or.cond319 = select i1 %i.bo, i1 true, i1 %.not.i59
  br i1 %or.cond319, label %.loopexit, label %.lr.ph.split.split

bb.p:                                             ; preds = %bb.n
  br i1 %i.bb, label %_RNvXs3_NtNtCsiqiOkcJdymw_7similar10algorithms5utilsINtB5_12OffsetLookupjEINtNtNtCs4NRVxsYgnAr_4core3ops5index5IndexjE5indexCskXhPDodhyTq_6mdtest.exit31, label %.split.loopexit1078

.split.loopexit1078:                              ; preds = %bb.p
  %i.br = sub i64 %.sroa.0195.0, %i.o
  br label %.split

.split:                                           ; preds = %bb.x, %.split.loopexit1078
  %.us-phi = phi i64 [ %i.br, %.split.loopexit1078 ], [ %i.ci, %bb.x ]
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking18panic_bounds_check(i64 noundef %.us-phi, i64 noundef %i.q, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @79) #14, !noalias !576
  unreachable

_RNvXs3_NtNtCsiqiOkcJdymw_7similar10algorithms5utilsINtB5_12OffsetLookupjEINtNtNtCs4NRVxsYgnAr_4core3ops5index5IndexjE5indexCskXhPDodhyTq_6mdtest.exit31: ; preds = %bb.p
  br i1 %i.bi, label %_RNvXs3_NtNtCsiqiOkcJdymw_7similar10algorithms5utilsINtB5_12OffsetLookupjEINtNtNtCs4NRVxsYgnAr_4core3ops5index5IndexjE5indexCskXhPDodhyTq_6mdtest.exit30, label %.split533

.split533:                                        ; preds = %_RNvXs3_NtNtCsiqiOkcJdymw_7similar10algorithms5utilsINtB5_12OffsetLookupjEINtNtNtCs4NRVxsYgnAr_4core3ops5index5IndexjE5indexCskXhPDodhyTq_6mdtest.exit31, %_RNvXs3_NtNtCsiqiOkcJdymw_7similar10algorithms5utilsINtB5_12OffsetLookupjEINtNtNtCs4NRVxsYgnAr_4core3ops5index5IndexjE5indexCskXhPDodhyTq_6mdtest.exit31.us
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking18panic_bounds_check(i64 noundef %i.bh, i64 noundef %i.w, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @80) #14, !noalias !577
  unreachable

_RNvXs3_NtNtCsiqiOkcJdymw_7similar10algorithms5utilsINtB5_12OffsetLookupjEINtNtNtCs4NRVxsYgnAr_4core3ops5index5IndexjE5indexCskXhPDodhyTq_6mdtest.exit30: ; preds = %_RNvXs3_NtNtCsiqiOkcJdymw_7similar10algorithms5utilsINtB5_12OffsetLookupjEINtNtNtCs4NRVxsYgnAr_4core3ops5index5IndexjE5indexCskXhPDodhyTq_6mdtest.exit31
  %.val49 = load i64, ptr %i.bc, align 8, !noundef !3
  %.val50 = load i64, ptr %i.bj, align 8, !noundef !3
  %.not316 = icmp eq i64 %.val49, %.val50
  br i1 %.not316, label %.split537, label %bb.o

.split537.loopexit:                               ; preds = %_RNvXs3_NtNtCsiqiOkcJdymw_7similar10algorithms5utilsINtB5_12OffsetLookupjEINtNtNtCs4NRVxsYgnAr_4core3ops5index5IndexjE5indexCskXhPDodhyTq_6mdtest.exit30.us
  %.pre878 = sub i64 %i.m, %i.ch
  br label %.split537

.split537:                                        ; preds = %_RNvXs3_NtNtCsiqiOkcJdymw_7similar10algorithms5utilsINtB5_12OffsetLookupjEINtNtNtCs4NRVxsYgnAr_4core3ops5index5IndexjE5indexCskXhPDodhyTq_6mdtest.exit30, %.split537.loopexit
  %.pre-phi = phi i64 [ %.pre878, %.split537.loopexit ], [ %i.at, %_RNvXs3_NtNtCsiqiOkcJdymw_7similar10algorithms5utilsINtB5_12OffsetLookupjEINtNtNtCs4NRVxsYgnAr_4core3ops5index5IndexjE5indexCskXhPDodhyTq_6mdtest.exit30 ]
  %.us-phi543 = phi i64 [ %i.ch, %.split537.loopexit ], [ %.sroa.0195.0, %_RNvXs3_NtNtCsiqiOkcJdymw_7similar10algorithms5utilsINtB5_12OffsetLookupjEINtNtNtCs4NRVxsYgnAr_4core3ops5index5IndexjE5indexCskXhPDodhyTq_6mdtest.exit30 ]
  %.us-phi546 = phi i1 [ %i.ce, %.split537.loopexit ], [ %i.bo, %_RNvXs3_NtNtCsiqiOkcJdymw_7similar10algorithms5utilsINtB5_12OffsetLookupjEINtNtNtCs4NRVxsYgnAr_4core3ops5index5IndexjE5indexCskXhPDodhyTq_6mdtest.exit30 ]
  %.us-phi547 = phi i64 [ %spec.select315.us, %.split537.loopexit ], [ %spec.select315, %_RNvXs3_NtNtCsiqiOkcJdymw_7similar10algorithms5utilsINtB5_12OffsetLookupjEINtNtNtCs4NRVxsYgnAr_4core3ops5index5IndexjE5indexCskXhPDodhyTq_6mdtest.exit30 ] ; 2 uses
  %.us-phi548 = phi i64 [ %.sroa.0229.0523.us, %.split537.loopexit ], [ 0, %_RNvXs3_NtNtCsiqiOkcJdymw_7similar10algorithms5utilsINtB5_12OffsetLookupjEINtNtNtCs4NRVxsYgnAr_4core3ops5index5IndexjE5indexCskXhPDodhyTq_6mdtest.exit30 ] ; 6 uses
  %.sroa.0.0.i63 = call noundef i64 @llvm.umin.i64(i64 %.pre-phi, i64 %i.bk) ; 3 uses
  %.not648 = icmp eq i64 %.sroa.0.0.i63, 0
  br i1 %.not648, label %.outer, label %.lr.ph632

.lr.ph632:                                        ; preds = %.split537
  %i.bs = sub i64 %.us-phi543, %i.o               ; 2 uses
  br label %bb.q

bb.q:                                             ; preds = %.lr.ph632, %bb.v
  %.sroa.01.0.i631 = phi i64 [ 0, %.lr.ph632 ], [ %i.cc, %bb.v ] ; 5 uses
  %i.bt = and i64 %.sroa.01.0.i631, 1023
  %i.bu = icmp eq i64 %i.bt, 0
  br i1 %i.bu, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  %i.bv = call noundef zeroext i1 @_RNvNtCsiqiOkcJdymw_7similar16deadline_support17deadline_exceeded(i64 %9, i32 noundef range(i32 -1, 1000000000) %10), !noalias !575
  br i1 %i.bv, label %_RINvNtNtCsiqiOkcJdymw_7similar10algorithms5myers21try_emit_front_anchorINtNtB4_5utils12OffsetLookupjEB17_INtNtB4_4hook12NoFinishHookQIB1G_QINtNtB4_7compact7CompactINtNtB6_4text12TextDiffSideeEB2B_INtNtB4_7replace7ReplaceNtNtB4_7capture7CaptureEEEEECskXhPDodhyTq_6mdtest.exit, label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.q
  %i.bw = add nuw i64 %i.bs, %.sroa.01.0.i631     ; 2 uses
  %i.bx = icmp ult i64 %i.bw, %i.q
  br i1 %i.bx, label %_RNvXs3_NtNtCsiqiOkcJdymw_7similar10algorithms5utilsINtB5_12OffsetLookupjEINtNtNtCs4NRVxsYgnAr_4core3ops5index5IndexjE5indexCskXhPDodhyTq_6mdtest.exit29, label %bb.t

bb.t:                                             ; preds = %bb.s
end_hunk_2
begin_hunk_3_@_RINvNtNtCsiqiOkcJdymw_7similar10algorithms5myers7conquerINtNtB4_5utils12OffsetLookupjEBS_INtNtB4_4hook12NoFinishHookQIB1q_QINtNtB4_7compact7CompactINtNtB6_4text12TextDiffSideeEB2l_INtNtB4_7replace7ReplaceNtNtB4_7capture7CaptureEEEEECskXhPDodhyTq_6mdtest:bb.a
  br label %bb.ak

bb.ao:                                            ; preds = %bb.aj
  call void @llvm.experimental.noalias.scope.decl(metadata !596)
  call void @llvm.experimental.noalias.scope.decl(metadata !597), !noalias !581
  %i.dz = load ptr, ptr %0, align 8, !alias.scope !598, !noalias !581, !nonnull !3, !align !5, !noundef !3 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !599)
  call void @llvm.experimental.noalias.scope.decl(metadata !600), !noalias !601
  %i.ea = load ptr, ptr %i.dz, align 8, !alias.scope !602, !noalias !601, !nonnull !3, !align !5, !noundef !3 ; 3 uses
  %i.eb = getelementptr inbounds nuw i8, ptr %i.ea, i64 120 ; 2 uses
  %i.ec = getelementptr inbounds nuw i8, ptr %i.ea, i64 136 ; 2 uses
  %i.ed = load i64, ptr %i.ec, align 8, !alias.scope !603, !noalias !604, !noundef !3 ; 3 uses
  %i.ee = load i64, ptr %i.eb, align 8, !range !6, !alias.scope !603, !noalias !604, !noundef !3
  %i.ef = icmp eq i64 %i.ed, %i.ee
  br i1 %i.ef, label %bb.ap, label %_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCsiqiOkcJdymw_7similar5types6DiffOpE8push_mutCskXhPDodhyTq_6mdtest.exit68

bb.ap:                                            ; preds = %bb.ao
  call void @_RNvMs3_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecNtNtCsiqiOkcJdymw_7similar5types6DiffOpE8grow_oneBP_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.eb), !noalias !605
  br label %_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCsiqiOkcJdymw_7similar5types6DiffOpE8push_mutCskXhPDodhyTq_6mdtest.exit68

_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCsiqiOkcJdymw_7similar5types6DiffOpE8push_mutCskXhPDodhyTq_6mdtest.exit68: ; preds = %bb.ao, %bb.ap
  %i.eg = getelementptr inbounds nuw i8, ptr %i.ea, i64 128
  %i.eh = load ptr, ptr %i.eg, align 8, !alias.scope !603, !noalias !604, !nonnull !3, !noundef !3
  %i.ei = getelementptr inbounds nuw [40 x i8], ptr %i.eh, i64 %i.ed ; 4 uses
  store i64 1, ptr %i.ei, align 8, !noalias !604
  %.sroa.4246.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ei, i64 8
  store i64 %.sroa.0.0, ptr %.sroa.4246.0..sroa_idx, align 8, !noalias !604
  %.sroa.5247.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ei, i64 16
  store i64 %.sroa.525.1.i, ptr %.sroa.5247.0..sroa_idx, align 8, !noalias !604
  %.sroa.6248.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ei, i64 24
  store i64 %.sroa.0195.0, ptr %.sroa.6248.0..sroa_idx, align 8, !noalias !604
  %i.ej = add i64 %i.ed, 1
  store i64 %i.ej, ptr %i.ec, align 8, !alias.scope !603, !noalias !604
  br label %bb.ak

bb.aq:                                            ; preds = %bb.aj
  call void @llvm.experimental.noalias.scope.decl(metadata !606)
  call void @llvm.experimental.noalias.scope.decl(metadata !607), !noalias !581
  %i.ek = load ptr, ptr %0, align 8, !alias.scope !608, !noalias !581, !nonnull !3, !align !5, !noundef !3 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !609)
  call void @llvm.experimental.noalias.scope.decl(metadata !610), !noalias !611
  %i.el = load ptr, ptr %i.ek, align 8, !alias.scope !612, !noalias !611, !nonnull !3, !align !5, !noundef !3 ; 3 uses
  %i.em = getelementptr inbounds nuw i8, ptr %i.el, i64 120 ; 4 uses
  %i.en = getelementptr inbounds nuw i8, ptr %i.el, i64 136 ; 3 uses
  %i.eo = load i64, ptr %i.en, align 8, !alias.scope !613, !noalias !614, !noundef !3 ; 4 uses
  %i.ep = load i64, ptr %i.em, align 8, !range !6, !alias.scope !613, !noalias !614, !noundef !3
  %i.eq = icmp eq i64 %i.eo, %i.ep
  br i1 %i.eq, label %bb.ar, label %_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCsiqiOkcJdymw_7similar5types6DiffOpE8push_mutCskXhPDodhyTq_6mdtest.exit69

bb.ar:                                            ; preds = %bb.aq
  call void @_RNvMs3_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecNtNtCsiqiOkcJdymw_7similar5types6DiffOpE8grow_oneBP_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.em), !noalias !615
  br label %_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCsiqiOkcJdymw_7similar5types6DiffOpE8push_mutCskXhPDodhyTq_6mdtest.exit69

_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCsiqiOkcJdymw_7similar5types6DiffOpE8push_mutCskXhPDodhyTq_6mdtest.exit69: ; preds = %bb.aq, %bb.ar
  %i.er = getelementptr inbounds nuw i8, ptr %i.el, i64 128 ; 2 uses
  %i.es = load ptr, ptr %i.er, align 8, !alias.scope !613, !noalias !614, !nonnull !3, !noundef !3
  %i.et = getelementptr inbounds nuw [40 x i8], ptr %i.es, i64 %i.eo ; 4 uses
  store i64 1, ptr %i.et, align 8, !noalias !614
  %.sroa.4276.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.et, i64 8
  store i64 %.sroa.0.0, ptr %.sroa.4276.0..sroa_idx, align 8, !noalias !614
  %.sroa.5277.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.et, i64 16
  store i64 %.sroa.525.1.i, ptr %.sroa.5277.0..sroa_idx, align 8, !noalias !614
  %.sroa.6278.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.et, i64 24
  store i64 %.sroa.0195.0, ptr %.sroa.6278.0..sroa_idx, align 8, !noalias !614
  %i.eu = add i64 %i.eo, 1                        ; 3 uses
  store i64 %i.eu, ptr %i.en, align 8, !alias.scope !613, !noalias !614
  %i.ev = load i64, ptr %i.em, align 8, !range !6, !alias.scope !616, !noalias !614, !noundef !3
  %i.ew = icmp eq i64 %i.eu, %i.ev
  br i1 %i.ew, label %bb.as, label %_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCsiqiOkcJdymw_7similar5types6DiffOpE8push_mutCskXhPDodhyTq_6mdtest.exit70

bb.as:                                            ; preds = %_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCsiqiOkcJdymw_7similar5types6DiffOpE8push_mutCskXhPDodhyTq_6mdtest.exit69
  call void @_RNvMs3_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecNtNtCsiqiOkcJdymw_7similar5types6DiffOpE8grow_oneBP_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.em), !noalias !617
  br label %_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCsiqiOkcJdymw_7similar5types6DiffOpE8push_mutCskXhPDodhyTq_6mdtest.exit70

_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCsiqiOkcJdymw_7similar5types6DiffOpE8push_mutCskXhPDodhyTq_6mdtest.exit70: ; preds = %_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCsiqiOkcJdymw_7similar5types6DiffOpE8push_mutCskXhPDodhyTq_6mdtest.exit69, %bb.as
  %i.ex = load ptr, ptr %i.er, align 8, !alias.scope !616, !noalias !614, !nonnull !3, !noundef !3
  %i.ey = getelementptr inbounds nuw [40 x i8], ptr %i.ex, i64 %i.eu ; 4 uses
  store i64 2, ptr %i.ey, align 8, !noalias !614
  %.sroa.4281.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ey, i64 8
  store i64 %.sroa.0.0, ptr %.sroa.4281.0..sroa_idx, align 8, !noalias !614
  %.sroa.5282.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ey, i64 16
  store i64 %.sroa.0195.0, ptr %.sroa.5282.0..sroa_idx, align 8, !noalias !614
  %.sroa.6283.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ey, i64 24
  store i64 %.sroa.9.1.i, ptr %.sroa.6283.0..sroa_idx, align 8, !noalias !614
  %i.ez = add i64 %i.eo, 2
  store i64 %i.ez, ptr %i.en, align 8, !alias.scope !616, !noalias !614
  br label %bb.ak

_RINvNtNtCsiqiOkcJdymw_7similar10algorithms5myers21try_emit_front_anchorINtNtB4_5utils12OffsetLookupjEB17_INtNtB4_4hook12NoFinishHookQIB1G_QINtNtB4_7compact7CompactINtNtB6_4text12TextDiffSideeEB2B_INtNtB4_7replace7ReplaceNtNtB4_7capture7CaptureEEEEECskXhPDodhyTq_6mdtest.exit: ; preds = %.lr.ph.split.split.us, %.lr.ph.split.split, %.lr.ph.split.us, %bb.r, %bb.g, %bb.j, %bb.m, %_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCsiqiOkcJdymw_7similar5types6DiffOpE8push_mutCskXhPDodhyTq_6mdtest.exit66
  %.sroa.0195.2 = phi i64 [ %.sroa.0195.0, %bb.g ], [ %.sroa.0195.0, %bb.j ], [ %.sroa.0195.0, %bb.m ], [ %i.do, %_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCsiqiOkcJdymw_7similar5types6DiffOpE8push_mutCskXhPDodhyTq_6mdtest.exit66 ], [ %.sroa.0195.0, %.lr.ph.split.split ], [ %.sroa.0195.0, %.lr.ph.split.us ], [ %.sroa.0195.0, %bb.r ], [ %.sroa.0195.0, %.lr.ph.split.split.us ] ; 2 uses
  %.sroa.0.2 = phi i64 [ %.sroa.0.0, %bb.g ], [ %.sroa.0.0, %bb.j ], [ %.sroa.0.0, %bb.m ], [ %i.dn, %_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCsiqiOkcJdymw_7similar5types6DiffOpE8push_mutCskXhPDodhyTq_6mdtest.exit66 ], [ %.sroa.0.0, %.lr.ph.split.split ], [ %.sroa.0.0, %.lr.ph.split.us ], [ %.sroa.0.0, %bb.r ], [ %.sroa.0.0, %.lr.ph.split.split.us ] ; 2 uses
  %i.fa = icmp eq i64 %.sroa.0.2, %.sroa.0.0
  %i.fb = icmp eq i64 %.sroa.0195.2, %.sroa.0195.0
  %or.cond = select i1 %i.fa, i1 %i.fb, i1 false
  br i1 %or.cond, label %bb.f, label %bb.e

bb.at:                                            ; preds = %bb.f
  br i1 %i.ar, label %bb.ay, label %bb.aw

bb.au:                                            ; preds = %bb.f
  br i1 %i.ar, label %.thread, label %bb.av

bb.av:                                            ; preds = %.sink.split.i.thread, %_RINvNtNtCsiqiOkcJdymw_7similar10algorithms5myers27maybe_emit_small_side_exactINtNtB4_5utils12OffsetLookupjEB1d_INtNtB4_4hook12NoFinishHookQIB1M_QINtNtB4_7compact7CompactINtNtB6_4text12TextDiffSideeEB2H_INtNtB4_7replace7ReplaceNtNtB4_7capture7CaptureEEEEECskXhPDodhyTq_6mdtest.exit.thread309, %_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCsiqiOkcJdymw_7similar5types6DiffOpE8push_mutCskXhPDodhyTq_6mdtest.exit71, %_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCsiqiOkcJdymw_7similar5types6DiffOpE8push_mutCskXhPDodhyTq_6mdtest.exit161, %_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCsiqiOkcJdymw_7similar5types6DiffOpE8push_mutCskXhPDodhyTq_6mdtest.exit160, %bb.gs, %bb.au
  %.not26 = icmp eq i64 %i.k, 0
  br i1 %.not26, label %bb.gz, label %bb.gx

bb.aw:                                            ; preds = %bb.at
  %i.fc = sub nuw i64 %i.l, %.sroa.0.0
  call void @llvm.experimental.noalias.scope.decl(metadata !618)
  call void @llvm.experimental.noalias.scope.decl(metadata !619)
  %i.fd = load ptr, ptr %0, align 8, !alias.scope !620, !nonnull !3, !align !5, !noundef !3
  call void @llvm.experimental.noalias.scope.decl(metadata !621)
  call void @llvm.experimental.noalias.scope.decl(metadata !622), !noalias !620
  %i.fe = load ptr, ptr %i.fd, align 8, !alias.scope !623, !noalias !620, !nonnull !3, !align !5, !noundef !3 ; 3 uses
  %i.ff = getelementptr inbounds nuw i8, ptr %i.fe, i64 120 ; 2 uses
  %i.fg = getelementptr inbounds nuw i8, ptr %i.fe, i64 136 ; 2 uses
  %i.fh = load i64, ptr %i.fg, align 8, !alias.scope !624, !noalias !625, !noundef !3 ; 3 uses
  %i.fi = load i64, ptr %i.ff, align 8, !range !6, !alias.scope !624, !noalias !625, !noundef !3
  %i.fj = icmp eq i64 %i.fh, %i.fi
  br i1 %i.fj, label %bb.ax, label %_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCsiqiOkcJdymw_7similar5types6DiffOpE8push_mutCskXhPDodhyTq_6mdtest.exit71

bb.ax:                                            ; preds = %bb.aw
  call void @_RNvMs3_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecNtNtCsiqiOkcJdymw_7similar5types6DiffOpE8grow_oneBP_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.ff), !noalias !626
  br label %_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCsiqiOkcJdymw_7similar5types6DiffOpE8push_mutCskXhPDodhyTq_6mdtest.exit71

_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCsiqiOkcJdymw_7similar5types6DiffOpE8push_mutCskXhPDodhyTq_6mdtest.exit71: ; preds = %bb.aw, %bb.ax
  %i.fk = getelementptr inbounds nuw i8, ptr %i.fe, i64 128
  %i.fl = load ptr, ptr %i.fk, align 8, !alias.scope !624, !noalias !625, !nonnull !3, !noundef !3
  %i.fm = getelementptr inbounds nuw [40 x i8], ptr %i.fl, i64 %i.fh ; 4 uses
  store i64 1, ptr %i.fm, align 8, !noalias !625
  %.sroa.4251.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.fm, i64 8
  store i64 %.sroa.0.0, ptr %.sroa.4251.0..sroa_idx, align 8, !noalias !625
  %.sroa.5252.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.fm, i64 16
  store i64 %i.fc, ptr %.sroa.5252.0..sroa_idx, align 8, !noalias !625
  %.sroa.6253.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.fm, i64 24
  store i64 %.sroa.0195.0, ptr %.sroa.6253.0..sroa_idx, align 8, !noalias !625
  %i.fn = add i64 %i.fh, 1
  store i64 %i.fn, ptr %i.fg, align 8, !alias.scope !624, !noalias !625
  br label %bb.av

bb.ay:                                            ; preds = %bb.at
  %i.fo = call noundef zeroext i1 @_RNvNtCsiqiOkcJdymw_7similar16deadline_support17deadline_exceeded(i64 %9, i32 noundef range(i32 -1, 1000000000) %10), !noalias !627
  br i1 %i.fo, label %_RINvNtNtCsiqiOkcJdymw_7similar10algorithms5myers27maybe_emit_small_side_exactINtNtB4_5utils12OffsetLookupjEB1d_INtNtB4_4hook12NoFinishHookQIB1M_QINtNtB4_7compact7CompactINtNtB6_4text12TextDiffSideeEB2H_INtNtB4_7replace7ReplaceNtNtB4_7capture7CaptureEEEEECskXhPDodhyTq_6mdtest.exit.thread, label %bb.az

bb.az:                                            ; preds = %bb.ay
  %i.fp = sub nuw i64 %i.l, %.sroa.0.0            ; 22 uses
  %i.fq = sub nuw i64 %i.m, %.sroa.0195.0         ; 22 uses
  %i.fr = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %i.fp, i64 %i.fq) ; 2 uses
  %i.fs = extractvalue { i64, i1 } %i.fr, 1
  br i1 %i.fs, label %_RINvNtNtCsiqiOkcJdymw_7similar10algorithms5myers27maybe_emit_small_side_exactINtNtB4_5utils12OffsetLookupjEB1d_INtNtB4_4hook12NoFinishHookQIB1M_QINtNtB4_7compact7CompactINtNtB6_4text12TextDiffSideeEB2H_INtNtB4_7replace7ReplaceNtNtB4_7capture7CaptureEEEEECskXhPDodhyTq_6mdtest.exit.thread, label %bb.ba, !prof !7

bb.ba:                                            ; preds = %bb.az
  %i.ft = extractvalue { i64, i1 } %i.fr, 0
  %.sroa.0.0.i73 = call noundef i64 @llvm.umax.i64(i64 %i.fq, i64 %i.fp)
  %.sroa.0.0.i72 = call noundef i64 @llvm.umin.i64(i64 %i.fq, i64 %i.fp)
  %i.fu = add i64 %.sroa.0.0.i72, -65
  %or.cond.i27 = icmp ult i64 %i.fu, -64
  %i.fv = icmp ult i64 %.sroa.0.0.i73, 512
  %or.cond1.i = or i1 %i.fv, %or.cond.i27
  %i.fw = icmp ugt i64 %i.ft, 64000000
  %or.cond3.i = select i1 %or.cond1.i, i1 true, i1 %i.fw
  br i1 %or.cond3.i, label %_RINvNtNtCsiqiOkcJdymw_7similar10algorithms5myers27maybe_emit_small_side_exactINtNtB4_5utils12OffsetLookupjEB1d_INtNtB4_4hook12NoFinishHookQIB1M_QINtNtB4_7compact7CompactINtNtB6_4text12TextDiffSideeEB2H_INtNtB4_7replace7ReplaceNtNtB4_7capture7CaptureEEEEECskXhPDodhyTq_6mdtest.exit.thread, label %bb.bb

bb.bb:                                            ; preds = %bb.ba
  %.not.i28 = icmp ugt i64 %i.fp, %i.fq
  %.val51 = load ptr, ptr %0, align 8             ; 20 uses
  %i.fx = call noundef zeroext i1 @_RNvNtCsiqiOkcJdymw_7similar16deadline_support17deadline_exceeded(i64 %9, i32 noundef range(i32 -1, 1000000000) %10), !noalias !3 ; 2 uses
  br i1 %.not.i28, label %bb.bc, label %bb.dw

bb.bc:                                            ; preds = %bb.bb
  br i1 %i.fx, label %_RINvNtNtCsiqiOkcJdymw_7similar10algorithms5myers27maybe_emit_small_side_exactINtNtB4_5utils12OffsetLookupjEB1d_INtNtB4_4hook12NoFinishHookQIB1M_QINtNtB4_7compact7CompactINtNtB6_4text12TextDiffSideeEB2H_INtNtB4_7replace7ReplaceNtNtB4_7capture7CaptureEEEEECskXhPDodhyTq_6mdtest.exit.thread, label %bb.bd

bb.bd:                                            ; preds = %bb.bc
  %i.fy = add i64 %i.fp, 1                        ; 11 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !628
  %i.fz = add nuw i64 %i.fq, 1
  %i.ga = mul i64 %i.fy, %i.fz                    ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !629)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !630
  call void @_RNvMs4_NtCscdodAO9FK5_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCskXhPDodhyTq_6mdtest(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.c, i64 noundef %i.ga, i1 noundef zeroext true, i64 noundef 1, i64 noundef 1), !noalias !630
  %i.gb = load i64, ptr %i.c, align 8, !range !8, !noalias !630, !noundef !3
  %i.gc = trunc nuw i64 %i.gb to i1
  %i.gd = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.ge = load i64, ptr %i.gd, align 8, !range !9, !noalias !630, !noundef !3 ; 2 uses
  %i.gf = getelementptr inbounds nuw i8, ptr %i.c, i64 16 ; 2 uses
  br i1 %i.gc, label %bb.be, label %.lr.ph469.i, !prof !7

bb.be:                                            ; preds = %bb.bd
  %i.gg = load i64, ptr %i.gf, align 8, !noalias !630
  call void @_RNvNtCscdodAO9FK5_5alloc7raw_vec12handle_error(i64 noundef %i.ge, i64 %i.gg) #14, !noalias !630
  unreachable

.lr.ph469.i:                                      ; preds = %bb.bd
  %i.gh = load ptr, ptr %i.gf, align 8, !noalias !630, !nonnull !3, !noundef !3
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !630
  store i64 %i.ge, ptr %i.d, align 8, !alias.scope !629, !noalias !628
  %i.gi = getelementptr inbounds nuw i8, ptr %i.d, i64 8 ; 7 uses
  store ptr %i.gh, ptr %i.gi, align 8, !alias.scope !629, !noalias !628
  %i.gj = getelementptr inbounds nuw i8, ptr %i.d, i64 16 ; 7 uses
  store i64 %i.ga, ptr %i.gj, align 8, !alias.scope !629, !noalias !628
  %invariant.op470.i = sub i64 %.sroa.0195.0, %i.o ; 3 uses
  %invariant.op.i = sub i64 %.sroa.0.0, %i.u      ; 3 uses
  br label %.lr.ph469.split.i

.lr.ph469.split.i:                                ; preds = %.lr.ph469.i, %..loopexit39_crit_edge.split.us.i
  %.sroa.0102.0468.i = phi i64 [ %i.gk, %..loopexit39_crit_edge.split.us.i ], [ %i.fq, %.lr.ph469.i ] ; 2 uses
  %i.gk = add i64 %.sroa.0102.0468.i, -1          ; 4 uses
  %i.gl = invoke noundef zeroext i1 @_RNvNtCsiqiOkcJdymw_7similar16deadline_support17deadline_exceeded(i64 %9, i32 noundef range(i32 -1, 1000000000) %10)
          to label %bb.dh unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !628

._crit_edge496.i:                                 ; preds = %bb.cu
  br i1 %i.ma, label %bb.bf, label %bb.bh

.lr.ph495.i:                                      ; preds = %..loopexit39_crit_edge.split.us.i, %bb.cu
  %.sroa.05.0.not494.i = phi i1 [ false, %bb.cu ], [ true, %..loopexit39_crit_edge.split.us.i ] ; 3 uses
  %.sroa.09.0493.i = phi i64 [ %.sroa.09.3.i, %bb.cu ], [ 0, %..loopexit39_crit_edge.split.us.i ] ; 12 uses
  %.sroa.038.0492.i = phi i64 [ %.sroa.038.3.i, %bb.cu ], [ 0, %..loopexit39_crit_edge.split.us.i ] ; 17 uses
  %i.gm = and i64 %.sroa.038.0492.i, 1023
  %i.gn = icmp eq i64 %i.gm, 0
  %or.cond170.i = select i1 %.sroa.05.0.not494.i, i1 %i.gn, i1 false ; 2 uses
  br i1 %or.cond170.i, label %bb.bl, label %bb.bk

bb.bf:                                            ; preds = %._crit_edge496.i
  %i.go = add i64 %.sroa.038.3.i, %.sroa.0.0      ; 2 uses
  %i.gp = sub nuw i64 %i.fp, %.sroa.038.3.i
  %i.gq = add i64 %.sroa.09.3.i, %.sroa.0195.0    ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val51) ]
  %i.gr = load ptr, ptr %.val51, align 8, !alias.scope !631, !noalias !628, !nonnull !3, !align !5, !noundef !3 ; 3 uses
  %i.gs = getelementptr inbounds nuw i8, ptr %i.gr, i64 120 ; 2 uses
  %i.gt = getelementptr inbounds nuw i8, ptr %i.gr, i64 136 ; 2 uses
  %i.gu = load i64, ptr %i.gt, align 8, !alias.scope !632, !noalias !628, !noundef !3 ; 3 uses
  %i.gv = load i64, ptr %i.gs, align 8, !range !6, !alias.scope !632, !noalias !628, !noundef !3
  %i.gw = icmp eq i64 %i.gu, %i.gv
  br i1 %i.gw, label %bb.bg, label %_RNvXs0_NtNtCsiqiOkcJdymw_7similar10algorithms4hookINtB5_12NoFinishHookQIBN_QINtNtB7_7compact7CompactINtNtB9_4text12TextDiffSideeEB1A_INtNtB7_7replace7ReplaceNtNtB7_7capture7CaptureEEEENtB5_8DiffHook6deleteCskXhPDodhyTq_6mdtest.exit181.i

bb.bg:                                            ; preds = %bb.bf
  invoke void @_RNvMs3_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecNtNtCsiqiOkcJdymw_7similar5types6DiffOpE8grow_oneBP_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.gs)
          to label %_RNvXs0_NtNtCsiqiOkcJdymw_7similar10algorithms4hookINtB5_12NoFinishHookQIBN_QINtNtB7_7compact7CompactINtNtB9_4text12TextDiffSideeEB1A_INtNtB7_7replace7ReplaceNtNtB7_7capture7CaptureEEEENtB5_8DiffHook6deleteCskXhPDodhyTq_6mdtest.exit181.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !628

_RNvXs0_NtNtCsiqiOkcJdymw_7similar10algorithms4hookINtB5_12NoFinishHookQIBN_QINtNtB7_7compact7CompactINtNtB9_4text12TextDiffSideeEB1A_INtNtB7_7replace7ReplaceNtNtB7_7capture7CaptureEEEENtB5_8DiffHook6deleteCskXhPDodhyTq_6mdtest.exit181.i: ; preds = %bb.bg, %bb.bf
  %i.gx = getelementptr inbounds nuw i8, ptr %i.gr, i64 128
  %i.gy = load ptr, ptr %i.gx, align 8, !alias.scope !632, !noalias !628, !nonnull !3, !noundef !3
  %i.gz = getelementptr inbounds nuw [40 x i8], ptr %i.gy, i64 %i.gu ; 4 uses
  store i64 1, ptr %i.gz, align 8, !noalias !628
  %.sroa.47.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.gz, i64 8
  store i64 %i.go, ptr %.sroa.47.0..sroa_idx.i, align 8, !noalias !628
  %.sroa.58.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.gz, i64 16
  store i64 %i.gp, ptr %.sroa.58.0..sroa_idx.i, align 8, !noalias !628
  %.sroa.69.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.gz, i64 24
  store i64 %i.gq, ptr %.sroa.69.0..sroa_idx.i, align 8, !noalias !628
  %i.ha = add i64 %i.gu, 1
  store i64 %i.ha, ptr %i.gt, align 8, !alias.scope !632, !noalias !628
  br i1 %i.lz, label %bb.bi, label %.sink.split.i.thread

bb.bh:                                            ; preds = %._crit_edge496.i
  br i1 %i.lz, label %._crit_edge880, label %.sink.split.i.thread

._crit_edge880:                                   ; preds = %bb.bh
  %.pre881 = add i64 %.sroa.038.3.i, %.sroa.0.0
  %.pre883 = add i64 %.sroa.09.3.i, %.sroa.0195.0
  br label %bb.bi

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %bb.di, %bb.bl, %bb.bw, %bb.cj, %bb.cv, %bb.cx, %bb.bx, %bb.ck, %.lr.ph469.split.i, %bb.dt, %.invoke.i, %bb.bj, %bb.bg
  %lpad.loopexit.split-lp1548 = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VechEECskXhPDodhyTq_6mdtest(ptr noalias noundef align 8 dereferenceable(24) %i.d) #15
          to label %common.resume unwind label %bb.dv, !noalias !628

bb.bi:                                            ; preds = %._crit_edge880, %_RNvXs0_NtNtCsiqiOkcJdymw_7similar10algorithms4hookINtB5_12NoFinishHookQIBN_QINtNtB7_7compact7CompactINtNtB9_4text12TextDiffSideeEB1A_INtNtB7_7replace7ReplaceNtNtB7_7capture7CaptureEEEENtB5_8DiffHook6deleteCskXhPDodhyTq_6mdtest.exit181.i
  %.pre-phi884 = phi i64 [ %.pre883, %._crit_edge880 ], [ %i.gq, %_RNvXs0_NtNtCsiqiOkcJdymw_7similar10algorithms4hookINtB5_12NoFinishHookQIBN_QINtNtB7_7compact7CompactINtNtB9_4text12TextDiffSideeEB1A_INtNtB7_7replace7ReplaceNtNtB7_7capture7CaptureEEEENtB5_8DiffHook6deleteCskXhPDodhyTq_6mdtest.exit181.i ]
  %.pre-phi882 = phi i64 [ %.pre881, %._crit_edge880 ], [ %i.go, %_RNvXs0_NtNtCsiqiOkcJdymw_7similar10algorithms4hookINtB5_12NoFinishHookQIBN_QINtNtB7_7compact7CompactINtNtB9_4text12TextDiffSideeEB1A_INtNtB7_7replace7ReplaceNtNtB7_7capture7CaptureEEEENtB5_8DiffHook6deleteCskXhPDodhyTq_6mdtest.exit181.i ]
  %i.hb = sub nuw i64 %i.fq, %.sroa.09.3.i
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val51) ]
  %i.hc = load ptr, ptr %.val51, align 8, !alias.scope !633, !noalias !628, !nonnull !3, !align !5, !noundef !3 ; 3 uses
  %i.hd = getelementptr inbounds nuw i8, ptr %i.hc, i64 120 ; 2 uses
  %i.he = getelementptr inbounds nuw i8, ptr %i.hc, i64 136 ; 2 uses
  %i.hf = load i64, ptr %i.he, align 8, !alias.scope !634, !noalias !628, !noundef !3 ; 3 uses
  %i.hg = load i64, ptr %i.hd, align 8, !range !6, !alias.scope !634, !noalias !628, !noundef !3
  %i.hh = icmp eq i64 %i.hf, %i.hg
  br i1 %i.hh, label %bb.bj, label %_RNvXs0_NtNtCsiqiOkcJdymw_7similar10algorithms4hookINtB5_12NoFinishHookQIBN_QINtNtB7_7compact7CompactINtNtB9_4text12TextDiffSideeEB1A_INtNtB7_7replace7ReplaceNtNtB7_7capture7CaptureEEEENtB5_8DiffHook6insertCskXhPDodhyTq_6mdtest.exit182.i

bb.bj:                                            ; preds = %bb.bi
  invoke void @_RNvMs3_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecNtNtCsiqiOkcJdymw_7similar5types6DiffOpE8grow_oneBP_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.hd)
          to label %_RNvXs0_NtNtCsiqiOkcJdymw_7similar10algorithms4hookINtB5_12NoFinishHookQIBN_QINtNtB7_7compact7CompactINtNtB9_4text12TextDiffSideeEB1A_INtNtB7_7replace7ReplaceNtNtB7_7capture7CaptureEEEENtB5_8DiffHook6insertCskXhPDodhyTq_6mdtest.exit182.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !628

_RNvXs0_NtNtCsiqiOkcJdymw_7similar10algorithms4hookINtB5_12NoFinishHookQIBN_QINtNtB7_7compact7CompactINtNtB9_4text12TextDiffSideeEB1A_INtNtB7_7replace7ReplaceNtNtB7_7capture7CaptureEEEENtB5_8DiffHook6insertCskXhPDodhyTq_6mdtest.exit182.i: ; preds = %bb.bj, %bb.bi
  %i.hi = getelementptr inbounds nuw i8, ptr %i.hc, i64 128
  %i.hj = load ptr, ptr %i.hi, align 8, !alias.scope !634, !noalias !628, !nonnull !3, !noundef !3
  %i.hk = getelementptr inbounds nuw [40 x i8], ptr %i.hj, i64 %i.hf ; 4 uses
  store i64 2, ptr %i.hk, align 8, !noalias !628
  %.sroa.417.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.hk, i64 8
  store i64 %.pre-phi882, ptr %.sroa.417.0..sroa_idx.i, align 8, !noalias !628
  %.sroa.518.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.hk, i64 16
  store i64 %.pre-phi884, ptr %.sroa.518.0..sroa_idx.i, align 8, !noalias !628
  %.sroa.619.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.hk, i64 24
  store i64 %i.hb, ptr %.sroa.619.0..sroa_idx.i, align 8, !noalias !628
  %i.hl = add i64 %i.hf, 1
  store i64 %i.hl, ptr %i.he, align 8, !alias.scope !634, !noalias !628
  br label %.sink.split.i.thread

.sink.split.i.thread:                             ; preds = %_RNvXs0_NtNtCsiqiOkcJdymw_7similar10algorithms4hookINtB5_12NoFinishHookQIBN_QINtNtB7_7compact7CompactINtNtB9_4text12TextDiffSideeEB1A_INtNtB7_7replace7ReplaceNtNtB7_7capture7CaptureEEEENtB5_8DiffHook6deleteCskXhPDodhyTq_6mdtest.exit181.i, %bb.bh, %_RNvXs0_NtNtCsiqiOkcJdymw_7similar10algorithms4hookINtB5_12NoFinishHookQIBN_QINtNtB7_7compact7CompactINtNtB9_4text12TextDiffSideeEB1A_INtNtB7_7replace7ReplaceNtNtB7_7capture7CaptureEEEENtB5_8DiffHook6insertCskXhPDodhyTq_6mdtest.exit182.i
  call fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VechEECskXhPDodhyTq_6mdtest(ptr noalias noundef align 8 dereferenceable(24) %i.d), !noalias !628
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !628
  br label %bb.av

.sink.split.i:                                    ; preds = %.loopexit24.i
  call void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCskXhPDodhyTq_6mdtest(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.d), !noalias !628
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !628
  br label %_RINvNtNtCsiqiOkcJdymw_7similar10algorithms5myers27maybe_emit_small_side_exactINtNtB4_5utils12OffsetLookupjEB1d_INtNtB4_4hook12NoFinishHookQIB1M_QINtNtB4_7compact7CompactINtNtB6_4text12TextDiffSideeEB2H_INtNtB4_7replace7ReplaceNtNtB4_7capture7CaptureEEEEECskXhPDodhyTq_6mdtest.exit.thread

bb.bk:                                            ; preds = %bb.bm, %.lr.ph495.i
  %i.hm = mul i64 %.sroa.09.0493.i, %i.fy         ; 4 uses
  %i.hn = add i64 %.sroa.038.0492.i, %.sroa.0.0   ; 4 uses
  %i.ho = add i64 %.sroa.09.0493.i, %.sroa.0195.0 ; 4 uses
  %i.hp = sub i64 %i.ho, %i.o                     ; 3 uses
  %i.hq = icmp ult i64 %i.hp, %i.q
  br i1 %i.hq, label %bb.bn, label %.invoke.i

.invoke.i:                                        ; preds = %bb.dr, %bb.dp, %bb.dn, %bb.dm, %bb.dk, %bb.bt, %bb.br, %bb.bq, %bb.bp, %bb.bn, %bb.bk, %bb.cs, %bb.cq, %bb.cp, %bb.co, %bb.cm, %bb.cf, %bb.cd, %bb.cc, %bb.cb, %bb.bz, %bb.cz, %bb.cw, %bb.dc, %bb.db, %bb.du, %.lr.ph.split.i
  %i.hr = phi i64 [ %i.kf, %bb.cf ], [ %.reass.i, %bb.du ], [ %.reass.i, %.lr.ph.split.i ], [ %i.lt, %bb.cs ], [ %i.hp, %bb.bk ], [ %i.ne, %bb.dc ], [ %i.q, %bb.cw ], [ %i.mx, %bb.db ], [ %i.w, %bb.cz ], [ %i.jp, %bb.bz ], [ %i.jt, %bb.cb ], [ %i.jx, %bb.cd ], [ %i.jv, %bb.cc ], [ %i.lb, %bb.cm ], [ %i.lf, %bb.co ], [ %i.ll, %bb.cq ], [ %i.lh, %bb.cp ], [ %i.ia, %bb.bp ], [ %i.ic, %bb.bq ], [ %i.is, %bb.bt ], [ %i.hw, %bb.bn ], [ %i.ih, %bb.br ], [ %i.ob, %bb.dm ], [ %.reass.us.i, %bb.dk ], [ %i.ou, %bb.dr ], [ %i.of, %bb.dn ], [ %i.ol, %bb.dp ]
  %i.hs = phi i64 [ %.pre729.i.a, %bb.cf ], [ %i.q, %bb.du ], [ %i.q, %.lr.ph.split.i ], [ %.pre727.i, %bb.cs ], [ %i.q, %bb.bk ], [ %i.mz, %bb.dc ], [ %i.q, %bb.cw ], [ %i.mz, %bb.db ], [ %i.w, %bb.cz ], [ %i.w, %bb.bz ], [ %.pre729.i.a, %bb.cb ], [ %.pre729.i.a, %bb.cd ], [ %.pre729.i.a, %bb.cc ], [ %i.q, %bb.cm ], [ %.pre727.i, %bb.co ], [ %.pre727.i, %bb.cq ], [ %.pre727.i, %bb.cp ], [ %.pre725.i, %bb.bp ], [ %.pre725.i, %bb.bq ], [ %.pre725.i, %bb.bt ], [ %i.w, %bb.bn ], [ %.pre725.i, %bb.br ], [ %i.od, %bb.dm ], [ %i.w, %bb.dk ], [ %i.ot, %bb.dr ], [ %i.od, %bb.dn ], [ %i.om, %bb.dp ]
  %i.ht = phi ptr [ @34, %bb.cf ], [ @45, %bb.du ], [ @45, %.lr.ph.split.i ], [ @40, %bb.cs ], [ @23, %bb.bk ], [ @44, %bb.dc ], [ @41, %bb.cw ], [ @43, %bb.db ], [ @42, %bb.cz ], [ @30, %bb.bz ], [ @31, %bb.cb ], [ @32, %bb.cd ], [ @33, %bb.cc ], [ @35, %bb.cm ], [ @37, %bb.co ], [ @38, %bb.cq ], [ @39, %bb.cp ], [ @25, %bb.bp ], [ @27, %bb.bq ], [ @28, %bb.bt ], [ @24, %bb.bn ], [ @26, %bb.br ], [ @47, %bb.dm ], [ @46, %bb.dk ], [ @50, %bb.dr ], [ @48, %bb.dn ], [ @49, %bb.dp ]
  invoke void @_RNvNtCs4NRVxsYgnAr_4core9panicking18panic_bounds_check(i64 noundef %i.hr, i64 noundef %i.hs, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.ht) #14
          to label %.cont.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !628

.cont.i:                                          ; preds = %.invoke.i
  unreachable

bb.bl:                                            ; preds = %.lr.ph495.i
  %i.hu = invoke noundef zeroext i1 @_RNvNtCsiqiOkcJdymw_7similar16deadline_support17deadline_exceeded(i64 %9, i32 noundef range(i32 -1, 1000000000) %10)
          to label %bb.bm unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !628

bb.bm:                                            ; preds = %bb.bl
  br i1 %i.hu, label %.loopexit24.i, label %bb.bk

bb.bn:                                            ; preds = %bb.bk
  %i.hv = getelementptr inbounds nuw [8 x i8], ptr %i.s, i64 %i.hp ; 2 uses
  %i.hw = sub i64 %i.hn, %i.u                     ; 3 uses
  %i.hx = icmp ult i64 %i.hw, %i.w
  br i1 %i.hx, label %bb.bo, label %.invoke.i

bb.bo:                                            ; preds = %bb.bn
  %i.hy = getelementptr inbounds nuw [8 x i8], ptr %i.y, i64 %i.hw ; 2 uses
  %.val212.i = load i64, ptr %i.hv, align 8, !noalias !628, !noundef !3
  %.val213.i = load i64, ptr %i.hy, align 8, !noalias !628, !noundef !3
  %i.hz = icmp eq i64 %.val212.i, %.val213.i
  %.pre.i = load ptr, ptr %i.gi, align 8, !noalias !628 ; 4 uses
  %.pre725.i = load i64, ptr %i.gj, align 8, !noalias !628 ; 8 uses
  br i1 %i.hz, label %bb.bp, label %._crit_edge731.i

._crit_edge731.i:                                 ; preds = %bb.bo
  %.pre732.i = add nuw i64 %.sroa.09.0493.i, 1
  %.pre733.i = mul i64 %.pre732.i, %i.fy
  br label %bb.bq

bb.bp:                                            ; preds = %bb.bo
  %i.ia = add i64 %i.hm, %.sroa.038.0492.i        ; 3 uses
  %i.ib = icmp ult i64 %i.ia, %.pre725.i
  br i1 %i.ib, label %bb.br, label %.invoke.i

bb.bq:                                            ; preds = %bb.bs, %._crit_edge731.i
  %.pre-phi734.i = phi i64 [ %.pre733.i, %._crit_edge731.i ], [ %i.if, %bb.bs ] ; 3 uses
  %i.ic = add i64 %.pre-phi734.i, %.sroa.038.0492.i ; 3 uses
  %i.id = icmp ult i64 %i.ic, %.pre725.i
  br i1 %i.id, label %bb.bt, label %.invoke.i

bb.br:                                            ; preds = %bb.bp
  %i.ie = add nuw i64 %.sroa.09.0493.i, 1
  %i.if = mul i64 %i.ie, %i.fy                    ; 2 uses
  %i.ig = add nuw i64 %.sroa.038.0492.i, 1
  %i.ih = add i64 %i.ig, %i.if                    ; 3 uses
  %i.ii = icmp ult i64 %i.ih, %.pre725.i
  br i1 %i.ii, label %bb.bs, label %.invoke.i

bb.bs:                                            ; preds = %bb.br
  %i.ij = getelementptr inbounds nuw i8, ptr %.pre.i, i64 %i.ia
  %i.ik = load i8, ptr %i.ij, align 1, !noalias !628, !noundef !3
  %i.il = getelementptr inbounds nuw i8, ptr %.pre.i, i64 %i.ih
  %i.im = load i8, ptr %i.il, align 1, !noalias !628, !noundef !3
  %i.in = add i8 %i.im, 1
  %i.io = icmp eq i8 %i.ik, %i.in
  br i1 %i.io, label %.preheader.i, label %bb.bq

.preheader.i:                                     ; preds = %bb.bs
  %i.ip = icmp ult i64 %.sroa.09.0493.i, %i.fq
  %i.iq = icmp ult i64 %.sroa.038.0492.i, %i.fp
  %or.cond177478.i = select i1 %i.ip, i1 %i.iq, i1 false
  br i1 %or.cond177478.i, label %.lr.ph481.i, label %._crit_edge482.i

bb.bt:                                            ; preds = %bb.bq
  %i.ir = add nuw i64 %.sroa.038.0492.i, 1        ; 3 uses
  %i.is = add i64 %i.ir, %i.hm                    ; 3 uses
  %i.it = icmp ult i64 %i.is, %.pre725.i
  br i1 %i.it, label %bb.bu, label %.invoke.i

bb.bu:                                            ; preds = %bb.bt
  %i.iu = getelementptr inbounds nuw i8, ptr %.pre.i, i64 %i.ic
  %i.iv = load i8, ptr %i.iu, align 1, !noalias !628, !noundef !3
  %i.iw = getelementptr inbounds nuw i8, ptr %.pre.i, i64 %i.is
  %i.ix = load i8, ptr %i.iw, align 1, !noalias !628, !noundef !3
  %.not164.i = icmp ult i8 %i.iv, %i.ix
  br i1 %.not164.i, label %.preheader25.i, label %.preheader30.i

.preheader30.i:                                   ; preds = %bb.bu
  %umax.i = call i64 @llvm.umax.i64(i64 %.sroa.09.0493.i, i64 %i.fq) ; 3 uses
  %exitcond.not.i1505.not = icmp ult i64 %.sroa.09.0493.i, %i.fq
  br i1 %exitcond.not.i1505.not, label %.lr.ph1507, label %._crit_edge1508

.preheader25.i:                                   ; preds = %bb.bu
  %i.iy = icmp ult i64 %.sroa.038.0492.i, %i.fp
  br i1 %i.iy, label %.lr.ph473.i, label %._crit_edge.i

.lr.ph473.i:                                      ; preds = %.preheader25.i
  %i.iz = add i64 %.pre-phi734.i, 1
  %i.ja = add i64 %i.hm, 1
  br label %bb.bv

bb.bv:                                            ; preds = %bb.ch, %.lr.ph473.i
  %.sroa.038.1472.i = phi i64 [ %.sroa.038.0492.i, %.lr.ph473.i ], [ %i.km, %bb.ch ] ; 9 uses
  %i.jb = and i64 %.sroa.038.1472.i, 1023
  %i.jc = icmp eq i64 %i.jb, 0
  %or.cond173.i = and i1 %.sroa.05.0.not494.i, %i.jc
  br i1 %or.cond173.i, label %bb.bx, label %bb.bz

._crit_edge.i:                                    ; preds = %bb.ch, %bb.cg, %bb.ce, %.preheader25.i
  %.sroa.038.1.lcssa.i = phi i64 [ %.sroa.038.0492.i, %.preheader25.i ], [ %i.fp, %bb.ch ], [ %.sroa.038.1472.i, %bb.cg ], [ %.sroa.038.1472.i, %bb.ce ] ; 2 uses
  %i.jd = sub nuw i64 %.sroa.038.1.lcssa.i, %.sroa.038.0492.i
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val51) ]
  %i.je = load ptr, ptr %.val51, align 8, !alias.scope !635, !noalias !628, !nonnull !3, !align !5, !noundef !3 ; 3 uses
  %i.jf = getelementptr inbounds nuw i8, ptr %i.je, i64 120 ; 2 uses
  %i.jg = getelementptr inbounds nuw i8, ptr %i.je, i64 136 ; 2 uses
  %i.jh = load i64, ptr %i.jg, align 8, !alias.scope !636, !noalias !628, !noundef !3 ; 3 uses
  %i.ji = load i64, ptr %i.jf, align 8, !range !6, !alias.scope !636, !noalias !628, !noundef !3
  %i.jj = icmp eq i64 %i.jh, %i.ji
  br i1 %i.jj, label %bb.bw, label %_RNvXs0_NtNtCsiqiOkcJdymw_7similar10algorithms4hookINtB5_12NoFinishHookQIBN_QINtNtB7_7compact7CompactINtNtB9_4text12TextDiffSideeEB1A_INtNtB7_7replace7ReplaceNtNtB7_7capture7CaptureEEEENtB5_8DiffHook6deleteCskXhPDodhyTq_6mdtest.exit.i

bb.bw:                                            ; preds = %._crit_edge.i
  invoke void @_RNvMs3_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecNtNtCsiqiOkcJdymw_7similar5types6DiffOpE8grow_oneBP_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.jf)
          to label %_RNvXs0_NtNtCsiqiOkcJdymw_7similar10algorithms4hookINtB5_12NoFinishHookQIBN_QINtNtB7_7compact7CompactINtNtB9_4text12TextDiffSideeEB1A_INtNtB7_7replace7ReplaceNtNtB7_7capture7CaptureEEEENtB5_8DiffHook6deleteCskXhPDodhyTq_6mdtest.exit.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !628

_RNvXs0_NtNtCsiqiOkcJdymw_7similar10algorithms4hookINtB5_12NoFinishHookQIBN_QINtNtB7_7compact7CompactINtNtB9_4text12TextDiffSideeEB1A_INtNtB7_7replace7ReplaceNtNtB7_7capture7CaptureEEEENtB5_8DiffHook6deleteCskXhPDodhyTq_6mdtest.exit.i: ; preds = %bb.bw, %._crit_edge.i
  %i.jk = getelementptr inbounds nuw i8, ptr %i.je, i64 128
  %i.jl = load ptr, ptr %i.jk, align 8, !alias.scope !636, !noalias !628, !nonnull !3, !noundef !3
  %i.jm = getelementptr inbounds nuw [40 x i8], ptr %i.jl, i64 %i.jh ; 4 uses
  store i64 1, ptr %i.jm, align 8, !noalias !628
  %.sroa.42.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.jm, i64 8
  store i64 %i.hn, ptr %.sroa.42.0..sroa_idx.i, align 8, !noalias !628
  %.sroa.53.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.jm, i64 16
  store i64 %i.jd, ptr %.sroa.53.0..sroa_idx.i, align 8, !noalias !628
  %.sroa.64.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.jm, i64 24
  store i64 %i.ho, ptr %.sroa.64.0..sroa_idx.i, align 8, !noalias !628
  %i.jn = add i64 %i.jh, 1
  store i64 %i.jn, ptr %i.jg, align 8, !alias.scope !636, !noalias !628
  br label %bb.cu

bb.bx:                                            ; preds = %bb.bv
  %i.jo = invoke noundef zeroext i1 @_RNvNtCsiqiOkcJdymw_7similar16deadline_support17deadline_exceeded(i64 %9, i32 noundef range(i32 -1, 1000000000) %10)
          to label %bb.by unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !628

bb.by:                                            ; preds = %bb.bx
  br i1 %i.jo, label %.loopexit24.i, label %bb.bz

bb.bz:                                            ; preds = %bb.by, %bb.bv
  %i.jp = add i64 %.sroa.038.1472.i, %invariant.op.i ; 3 uses
  %i.jq = icmp ult i64 %i.jp, %i.w
  br i1 %i.jq, label %bb.ca, label %.invoke.i

bb.ca:                                            ; preds = %bb.bz
  %i.jr = getelementptr inbounds nuw [8 x i8], ptr %i.y, i64 %i.jp
  %.val210.i = load i64, ptr %i.hv, align 8, !noalias !628, !noundef !3
  %.val211.i = load i64, ptr %i.jr, align 8, !noalias !628, !noundef !3
  %i.js = icmp eq i64 %.val210.i, %.val211.i
  %.pre728.i.a = load ptr, ptr %i.gi, align 8, !noalias !628 ; 4 uses
  %.pre729.i.a = load i64, ptr %i.gj, align 8, !noalias !628 ; 8 uses
  br i1 %i.js, label %bb.cb, label %bb.cc

bb.cb:                                            ; preds = %bb.ca
  %i.jt = add i64 %.sroa.038.1472.i, %i.hm        ; 3 uses
  %i.ju = icmp ult i64 %i.jt, %.pre729.i.a
  br i1 %i.ju, label %bb.cd, label %.invoke.i

bb.cc:                                            ; preds = %bb.ce, %bb.ca
  %i.jv = add i64 %.sroa.038.1472.i, %.pre-phi734.i ; 3 uses
  %i.jw = icmp ult i64 %i.jv, %.pre729.i.a
  br i1 %i.jw, label %bb.cf, label %.invoke.i

bb.cd:                                            ; preds = %bb.cb
  %i.jx = add i64 %i.iz, %.sroa.038.1472.i        ; 3 uses
  %i.jy = icmp ult i64 %i.jx, %.pre729.i.a
  br i1 %i.jy, label %bb.ce, label %.invoke.i

bb.ce:                                            ; preds = %bb.cd
  %i.jz = getelementptr inbounds nuw i8, ptr %.pre728.i.a, i64 %i.jt
  %i.ka = load i8, ptr %i.jz, align 1, !noalias !628, !noundef !3
  %i.kb = getelementptr inbounds nuw i8, ptr %.pre728.i.a, i64 %i.jx
  %i.kc = load i8, ptr %i.kb, align 1, !noalias !628, !noundef !3
  %i.kd = add i8 %i.kc, 1
  %i.ke = icmp eq i8 %i.ka, %i.kd
  br i1 %i.ke, label %._crit_edge.i, label %bb.cc

bb.cf:                                            ; preds = %bb.cc
  %i.kf = add i64 %i.ja, %.sroa.038.1472.i        ; 3 uses
  %i.kg = icmp ult i64 %i.kf, %.pre729.i.a
  br i1 %i.kg, label %bb.cg, label %.invoke.i

bb.cg:                                            ; preds = %bb.cf
  %i.kh = getelementptr inbounds nuw i8, ptr %.pre728.i.a, i64 %i.jv
  %i.ki = load i8, ptr %i.kh, align 1, !noalias !628, !noundef !3
  %i.kj = getelementptr inbounds nuw i8, ptr %.pre728.i.a, i64 %i.kf
  %i.kk = load i8, ptr %i.kj, align 1, !noalias !628, !noundef !3
  %i.kl = icmp ult i8 %i.ki, %i.kk
  br i1 %i.kl, label %bb.ch, label %._crit_edge.i

bb.ch:                                            ; preds = %bb.cg
  %i.km = add nuw i64 %.sroa.038.1472.i, 1        ; 2 uses
  %i.kn = icmp ult i64 %i.km, %i.fp
  br i1 %i.kn, label %bb.bv, label %._crit_edge.i

bb.ci:                                            ; preds = %bb.ct
  %exitcond.not.i = icmp eq i64 %.pre-phi736.i, %umax.i
  br i1 %exitcond.not.i, label %._crit_edge1508, label %.lr.ph1507

.lr.ph1507:                                       ; preds = %.preheader30.i, %bb.ci
  %.sroa.09.1.i1506 = phi i64 [ %.pre-phi736.i, %bb.ci ], [ %.sroa.09.0493.i, %.preheader30.i ] ; 6 uses
  br i1 %or.cond170.i, label %bb.ck, label %bb.cm

._crit_edge1508:                                  ; preds = %bb.ci, %bb.cr, %bb.ct, %.preheader30.i
  %.sroa.09.1.lcssa.i = phi i64 [ %umax.i, %.preheader30.i ], [ %umax.i, %bb.ci ], [ %.sroa.09.1.i1506, %bb.cr ], [ %.sroa.09.1.i1506, %bb.ct ] ; 2 uses
  %i.ko = sub i64 %.sroa.09.1.lcssa.i, %.sroa.09.0493.i
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val51) ]
  %i.kp = load ptr, ptr %.val51, align 8, !alias.scope !637, !noalias !628, !nonnull !3, !align !5, !noundef !3 ; 3 uses
  %i.kq = getelementptr inbounds nuw i8, ptr %i.kp, i64 120 ; 2 uses
  %i.kr = getelementptr inbounds nuw i8, ptr %i.kp, i64 136 ; 2 uses
  %i.ks = load i64, ptr %i.kr, align 8, !alias.scope !638, !noalias !628, !noundef !3 ; 3 uses
  %i.kt = load i64, ptr %i.kq, align 8, !range !6, !alias.scope !638, !noalias !628, !noundef !3
  %i.ku = icmp eq i64 %i.ks, %i.kt
  br i1 %i.ku, label %bb.cj, label %_RNvXs0_NtNtCsiqiOkcJdymw_7similar10algorithms4hookINtB5_12NoFinishHookQIBN_QINtNtB7_7compact7CompactINtNtB9_4text12TextDiffSideeEB1A_INtNtB7_7replace7ReplaceNtNtB7_7capture7CaptureEEEENtB5_8DiffHook6insertCskXhPDodhyTq_6mdtest.exit.i

bb.cj:                                            ; preds = %._crit_edge1508
  invoke void @_RNvMs3_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecNtNtCsiqiOkcJdymw_7similar5types6DiffOpE8grow_oneBP_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.kq)
          to label %_RNvXs0_NtNtCsiqiOkcJdymw_7similar10algorithms4hookINtB5_12NoFinishHookQIBN_QINtNtB7_7compact7CompactINtNtB9_4text12TextDiffSideeEB1A_INtNtB7_7replace7ReplaceNtNtB7_7capture7CaptureEEEENtB5_8DiffHook6insertCskXhPDodhyTq_6mdtest.exit.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !628

_RNvXs0_NtNtCsiqiOkcJdymw_7similar10algorithms4hookINtB5_12NoFinishHookQIBN_QINtNtB7_7compact7CompactINtNtB9_4text12TextDiffSideeEB1A_INtNtB7_7replace7ReplaceNtNtB7_7capture7CaptureEEEENtB5_8DiffHook6insertCskXhPDodhyTq_6mdtest.exit.i: ; preds = %bb.cj, %._crit_edge1508
  %i.kv = getelementptr inbounds nuw i8, ptr %i.kp, i64 128
  %i.kw = load ptr, ptr %i.kv, align 8, !alias.scope !638, !noalias !628, !nonnull !3, !noundef !3
  %i.kx = getelementptr inbounds nuw [40 x i8], ptr %i.kw, i64 %i.ks ; 4 uses
  store i64 2, ptr %i.kx, align 8, !noalias !628
  %.sroa.412.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.kx, i64 8
  store i64 %i.hn, ptr %.sroa.412.0..sroa_idx.i, align 8, !noalias !628
  %.sroa.513.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.kx, i64 16
  store i64 %i.ho, ptr %.sroa.513.0..sroa_idx.i, align 8, !noalias !628
  %.sroa.614.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.kx, i64 24
  store i64 %i.ko, ptr %.sroa.614.0..sroa_idx.i, align 8, !noalias !628
  %i.ky = add i64 %i.ks, 1
  store i64 %i.ky, ptr %i.kr, align 8, !alias.scope !638, !noalias !628
  br label %bb.cu

bb.ck:                                            ; preds = %.lr.ph1507
  %i.kz = invoke noundef zeroext i1 @_RNvNtCsiqiOkcJdymw_7similar16deadline_support17deadline_exceeded(i64 %9, i32 noundef range(i32 -1, 1000000000) %10)
          to label %bb.cl unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !628

bb.cl:                                            ; preds = %bb.ck
  br i1 %i.kz, label %.loopexit24.i, label %bb.cm

bb.cm:                                            ; preds = %bb.cl, %.lr.ph1507
  %i.la = mul i64 %.sroa.09.1.i1506, %i.fy        ; 2 uses
  %i.lb = add i64 %.sroa.09.1.i1506, %invariant.op470.i ; 3 uses
  %i.lc = icmp ult i64 %i.lb, %i.q
  br i1 %i.lc, label %bb.cn, label %.invoke.i

bb.cn:                                            ; preds = %bb.cm
  %i.ld = getelementptr inbounds nuw [8 x i8], ptr %i.s, i64 %i.lb
  %.val208.i = load i64, ptr %i.ld, align 8, !noalias !628, !noundef !3
  %.val209.i = load i64, ptr %i.hy, align 8, !noalias !628, !noundef !3
  %i.le = icmp eq i64 %.val208.i, %.val209.i
  %.pre726.i = load ptr, ptr %i.gi, align 8, !noalias !628 ; 4 uses
  %.pre727.i = load i64, ptr %i.gj, align 8, !noalias !628 ; 8 uses
  br i1 %i.le, label %bb.co, label %._crit_edge730.i

._crit_edge730.i:                                 ; preds = %bb.cn
  %.pre735.i = add i64 %.sroa.09.1.i1506, 1       ; 2 uses
  %.pre737.i = mul i64 %.pre735.i, %i.fy
  br label %bb.cp

bb.co:                                            ; preds = %bb.cn
  %i.lf = add i64 %i.la, %.sroa.038.0492.i        ; 3 uses
  %i.lg = icmp ult i64 %i.lf, %.pre727.i
  br i1 %i.lg, label %bb.cq, label %.invoke.i

bb.cp:                                            ; preds = %bb.cr, %._crit_edge730.i
  %.pre-phi738.i.a = phi i64 [ %.pre737.i, %._crit_edge730.i ], [ %i.lk, %bb.cr ]
  %.pre-phi736.i = phi i64 [ %.pre735.i, %._crit_edge730.i ], [ %i.lj, %bb.cr ] ; 2 uses
  %i.lh = add i64 %.pre-phi738.i.a, %.sroa.038.0492.i ; 3 uses
  %i.li = icmp ult i64 %i.lh, %.pre727.i
  br i1 %i.li, label %bb.cs, label %.invoke.i

bb.cq:                                            ; preds = %bb.co
  %i.lj = add i64 %.sroa.09.1.i1506, 1            ; 2 uses
  %i.lk = mul i64 %i.lj, %i.fy                    ; 2 uses
  %i.ll = add i64 %i.lk, %i.ir                    ; 3 uses
  %i.lm = icmp ult i64 %i.ll, %.pre727.i
  br i1 %i.lm, label %bb.cr, label %.invoke.i

bb.cr:                                            ; preds = %bb.cq
  %i.ln = getelementptr inbounds nuw i8, ptr %.pre726.i, i64 %i.lf
  %i.lo = load i8, ptr %i.ln, align 1, !noalias !628, !noundef !3
  %i.lp = getelementptr inbounds nuw i8, ptr %.pre726.i, i64 %i.ll
  %i.lq = load i8, ptr %i.lp, align 1, !noalias !628, !noundef !3
  %i.lr = add i8 %i.lq, 1
  %i.ls = icmp eq i8 %i.lo, %i.lr
  br i1 %i.ls, label %._crit_edge1508, label %bb.cp

bb.cs:                                            ; preds = %bb.cp
  %i.lt = add i64 %i.la, %i.ir                    ; 3 uses
  %i.lu = icmp ult i64 %i.lt, %.pre727.i
  br i1 %i.lu, label %bb.ct, label %.invoke.i

bb.ct:                                            ; preds = %bb.cs
  %i.lv = getelementptr inbounds nuw i8, ptr %.pre726.i, i64 %i.lh
  %i.lw = load i8, ptr %i.lv, align 1, !noalias !628, !noundef !3
  %i.lx = getelementptr inbounds nuw i8, ptr %.pre726.i, i64 %i.lt
  %i.ly = load i8, ptr %i.lx, align 1, !noalias !628, !noundef !3
  %.not167.i = icmp ult i8 %i.lw, %i.ly
  br i1 %.not167.i, label %._crit_edge1508, label %bb.ci

bb.cu:                                            ; preds = %_RNvXs0_NtNtCsiqiOkcJdymw_7similar10algorithms4hookINtB5_12NoFinishHookQIBN_QINtNtB7_7compact7CompactINtNtB9_4text12TextDiffSideeEB1A_INtNtB7_7replace7ReplaceNtNtB7_7capture7CaptureEEEENtB5_8DiffHook5equalCskXhPDodhyTq_6mdtest.exit.i, %_RNvXs0_NtNtCsiqiOkcJdymw_7similar10algorithms4hookINtB5_12NoFinishHookQIBN_QINtNtB7_7compact7CompactINtNtB9_4text12TextDiffSideeEB1A_INtNtB7_7replace7ReplaceNtNtB7_7capture7CaptureEEEENtB5_8DiffHook6insertCskXhPDodhyTq_6mdtest.exit.i, %_RNvXs0_NtNtCsiqiOkcJdymw_7similar10algorithms4hookINtB5_12NoFinishHookQIBN_QINtNtB7_7compact7CompactINtNtB9_4text12TextDiffSideeEB1A_INtNtB7_7replace7ReplaceNtNtB7_7capture7CaptureEEEENtB5_8DiffHook6deleteCskXhPDodhyTq_6mdtest.exit.i
  %.sroa.038.3.i = phi i64 [ %.sroa.038.0492.i, %_RNvXs0_NtNtCsiqiOkcJdymw_7similar10algorithms4hookINtB5_12NoFinishHookQIBN_QINtNtB7_7compact7CompactINtNtB9_4text12TextDiffSideeEB1A_INtNtB7_7replace7ReplaceNtNtB7_7capture7CaptureEEEENtB5_8DiffHook6insertCskXhPDodhyTq_6mdtest.exit.i ], [ %.sroa.038.1.lcssa.i, %_RNvXs0_NtNtCsiqiOkcJdymw_7similar10algorithms4hookINtB5_12NoFinishHookQIBN_QINtNtB7_7compact7CompactINtNtB9_4text12TextDiffSideeEB1A_INtNtB7_7replace7ReplaceNtNtB7_7capture7CaptureEEEENtB5_8DiffHook6deleteCskXhPDodhyTq_6mdtest.exit.i ], [ %.sroa.038.4.lcssa.i, %_RNvXs0_NtNtCsiqiOkcJdymw_7similar10algorithms4hookINtB5_12NoFinishHookQIBN_QINtNtB7_7compact7CompactINtNtB9_4text12TextDiffSideeEB1A_INtNtB7_7replace7ReplaceNtNtB7_7capture7CaptureEEEENtB5_8DiffHook5equalCskXhPDodhyTq_6mdtest.exit.i ] ; 5 uses
  %.sroa.09.3.i = phi i64 [ %.sroa.09.1.lcssa.i, %_RNvXs0_NtNtCsiqiOkcJdymw_7similar10algorithms4hookINtB5_12NoFinishHookQIBN_QINtNtB7_7compact7CompactINtNtB9_4text12TextDiffSideeEB1A_INtNtB7_7replace7ReplaceNtNtB7_7capture7CaptureEEEENtB5_8DiffHook6insertCskXhPDodhyTq_6mdtest.exit.i ], [ %.sroa.09.0493.i, %_RNvXs0_NtNtCsiqiOkcJdymw_7similar10algorithms4hookINtB5_12NoFinishHookQIBN_QINtNtB7_7compact7CompactINtNtB9_4text12TextDiffSideeEB1A_INtNtB7_7replace7ReplaceNtNtB7_7capture7CaptureEEEENtB5_8DiffHook6deleteCskXhPDodhyTq_6mdtest.exit.i ], [ %.sroa.09.4.lcssa.i, %_RNvXs0_NtNtCsiqiOkcJdymw_7similar10algorithms4hookINtB5_12NoFinishHookQIBN_QINtNtB7_7compact7CompactINtNtB9_4text12TextDiffSideeEB1A_INtNtB7_7replace7ReplaceNtNtB7_7capture7CaptureEEEENtB5_8DiffHook5equalCskXhPDodhyTq_6mdtest.exit.i ] ; 5 uses
  %i.lz = icmp ult i64 %.sroa.09.3.i, %i.fq       ; 3 uses
  %i.ma = icmp ult i64 %.sroa.038.3.i, %i.fp      ; 2 uses
  %or.cond.i75 = select i1 %i.lz, i1 %i.ma, i1 false
  br i1 %or.cond.i75, label %.lr.ph495.i, label %._crit_edge496.i

._crit_edge482.i:                                 ; preds = %bb.de, %bb.dd, %bb.da, %.preheader.i
  %.sroa.038.4.lcssa.i = phi i64 [ %.sroa.038.0492.i, %.preheader.i ], [ %i.nd, %bb.de ], [ %.sroa.038.4479.i, %bb.da ], [ %.sroa.038.4479.i, %bb.dd ] ; 2 uses
  %.sroa.09.4.lcssa.i = phi i64 [ %.sroa.09.0493.i, %.preheader.i ], [ %i.nb, %bb.de ], [ %.sroa.09.4480.i, %bb.da ], [ %.sroa.09.4480.i, %bb.dd ]
  %i.mb = sub nuw i64 %.sroa.038.4.lcssa.i, %.sroa.038.0492.i
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val51) ]
  %i.mc = load ptr, ptr %.val51, align 8, !alias.scope !639, !noalias !628, !nonnull !3, !align !5, !noundef !3 ; 3 uses
  %i.md = getelementptr inbounds nuw i8, ptr %i.mc, i64 120 ; 2 uses
  %i.me = getelementptr inbounds nuw i8, ptr %i.mc, i64 136 ; 2 uses
  %i.mf = load i64, ptr %i.me, align 8, !alias.scope !640, !noalias !628, !noundef !3 ; 3 uses
  %i.mg = load i64, ptr %i.md, align 8, !range !6, !alias.scope !640, !noalias !628, !noundef !3
  %i.mh = icmp eq i64 %i.mf, %i.mg
  br i1 %i.mh, label %bb.cv, label %_RNvXs0_NtNtCsiqiOkcJdymw_7similar10algorithms4hookINtB5_12NoFinishHookQIBN_QINtNtB7_7compact7CompactINtNtB9_4text12TextDiffSideeEB1A_INtNtB7_7replace7ReplaceNtNtB7_7capture7CaptureEEEENtB5_8DiffHook5equalCskXhPDodhyTq_6mdtest.exit.i

bb.cv:                                            ; preds = %._crit_edge482.i
  invoke void @_RNvMs3_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecNtNtCsiqiOkcJdymw_7similar5types6DiffOpE8grow_oneBP_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.md)
          to label %_RNvXs0_NtNtCsiqiOkcJdymw_7similar10algorithms4hookINtB5_12NoFinishHookQIBN_QINtNtB7_7compact7CompactINtNtB9_4text12TextDiffSideeEB1A_INtNtB7_7replace7ReplaceNtNtB7_7capture7CaptureEEEENtB5_8DiffHook5equalCskXhPDodhyTq_6mdtest.exit.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !628

_RNvXs0_NtNtCsiqiOkcJdymw_7similar10algorithms4hookINtB5_12NoFinishHookQIBN_QINtNtB7_7compact7CompactINtNtB9_4text12TextDiffSideeEB1A_INtNtB7_7replace7ReplaceNtNtB7_7capture7CaptureEEEENtB5_8DiffHook5equalCskXhPDodhyTq_6mdtest.exit.i: ; preds = %bb.cv, %._crit_edge482.i
  %i.mi = getelementptr inbounds nuw i8, ptr %i.mc, i64 128
  %i.mj = load ptr, ptr %i.mi, align 8, !alias.scope !640, !noalias !628, !nonnull !3, !noundef !3
  %i.mk = getelementptr inbounds nuw [40 x i8], ptr %i.mj, i64 %i.mf ; 4 uses
  store i64 0, ptr %i.mk, align 8, !noalias !628
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.mk, i64 8
  store i64 %i.hn, ptr %.sroa.4.0..sroa_idx.i, align 8, !noalias !628
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.mk, i64 16
  store i64 %i.ho, ptr %.sroa.5.0..sroa_idx.i, align 8, !noalias !628
  %.sroa.6.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.mk, i64 24
  store i64 %i.mb, ptr %.sroa.6.0..sroa_idx.i, align 8, !noalias !628
  %i.ml = add i64 %i.mf, 1
  store i64 %i.ml, ptr %i.me, align 8, !alias.scope !640, !noalias !628
  br label %bb.cu

.lr.ph481.i:                                      ; preds = %.preheader.i, %bb.de
  %.sroa.09.4480.i = phi i64 [ %i.nb, %bb.de ], [ %.sroa.09.0493.i, %.preheader.i ] ; 5 uses
  %.sroa.038.4479.i = phi i64 [ %i.nd, %bb.de ], [ %.sroa.038.0492.i, %.preheader.i ] ; 6 uses
  %i.mm = and i64 %.sroa.038.4479.i, 1023
  %i.mn = icmp eq i64 %i.mm, 0
  %or.cond180.i = select i1 %.sroa.05.0.not494.i, i1 %i.mn, i1 false
  br i1 %or.cond180.i, label %bb.cx, label %bb.cw

bb.cw:                                            ; preds = %bb.cy, %.lr.ph481.i
  %i.mo = mul i64 %.sroa.09.4480.i, %i.fy
  %i.mp = add i64 %.sroa.09.4480.i, %invariant.op470.i ; 2 uses
  %i.mq = icmp ult i64 %i.mp, %i.q
  br i1 %i.mq, label %bb.cz, label %.invoke.i

bb.cx:                                            ; preds = %.lr.ph481.i
  %i.mr = invoke noundef zeroext i1 @_RNvNtCsiqiOkcJdymw_7similar16deadline_support17deadline_exceeded(i64 %9, i32 noundef range(i32 -1, 1000000000) %10)
          to label %bb.cy unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !628

bb.cy:                                            ; preds = %bb.cx
  br i1 %i.mr, label %.loopexit24.i, label %bb.cw

bb.cz:                                            ; preds = %bb.cw
  %i.ms = add i64 %.sroa.038.4479.i, %invariant.op.i ; 2 uses
  %i.mt = icmp ult i64 %i.ms, %i.w
  br i1 %i.mt, label %bb.da, label %.invoke.i

bb.da:                                            ; preds = %bb.cz
  %i.mu = getelementptr inbounds nuw [8 x i8], ptr %i.s, i64 %i.mp
  %i.mv = getelementptr inbounds nuw [8 x i8], ptr %i.y, i64 %i.ms
  %.val206.i = load i64, ptr %i.mu, align 8, !noalias !628, !noundef !3
  %.val207.i = load i64, ptr %i.mv, align 8, !noalias !628, !noundef !3
  %i.mw = icmp eq i64 %.val206.i, %.val207.i
  br i1 %i.mw, label %bb.db, label %._crit_edge482.i

bb.db:                                            ; preds = %bb.da
  %i.mx = add i64 %i.mo, %.sroa.038.4479.i        ; 3 uses
  %i.my = load ptr, ptr %i.gi, align 8, !noalias !628, !nonnull !3, !noundef !3 ; 2 uses
  %i.mz = load i64, ptr %i.gj, align 8, !noalias !628, !noundef !3 ; 4 uses
  %i.na = icmp ult i64 %i.mx, %i.mz
  br i1 %i.na, label %bb.dc, label %.invoke.i

bb.dc:                                            ; preds = %bb.db
  %i.nb = add nuw i64 %.sroa.09.4480.i, 1         ; 4 uses
  %i.nc = mul i64 %i.nb, %i.fy
  %i.nd = add nuw i64 %.sroa.038.4479.i, 1        ; 4 uses
  %i.ne = add i64 %i.nd, %i.nc                    ; 3 uses
  %i.nf = icmp ult i64 %i.ne, %i.mz
  br i1 %i.nf, label %bb.dd, label %.invoke.i

bb.dd:                                            ; preds = %bb.dc
  %i.ng = getelementptr inbounds nuw i8, ptr %i.my, i64 %i.mx
  %i.nh = load i8, ptr %i.ng, align 1, !noalias !628, !noundef !3
  %i.ni = getelementptr inbounds nuw i8, ptr %i.my, i64 %i.ne
  %i.nj = load i8, ptr %i.ni, align 1, !noalias !628, !noundef !3
  %i.nk = add i8 %i.nj, 1
  %i.nl = icmp eq i8 %i.nh, %i.nk
  br i1 %i.nl, label %bb.de, label %._crit_edge482.i

bb.de:                                            ; preds = %bb.dd
  %i.nm = icmp ult i64 %i.nb, %i.fq
  %i.nn = icmp ult i64 %i.nd, %i.fp
  %or.cond177.i = and i1 %i.nm, %i.nn
  br i1 %or.cond177.i, label %.lr.ph481.i, label %._crit_edge482.i

.loopexit24.i:                                    ; preds = %bb.dh, %bb.dj, %bb.bm, %bb.cl, %bb.by, %bb.cy, %bb.du
  invoke void @_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCskXhPDodhyTq_6mdtest(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.d)
          to label %.sink.split.i unwind label %bb.df, !noalias !628

bb.df:                                            ; preds = %.loopexit24.i
  %i.no = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCskXhPDodhyTq_6mdtest(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.d)
          to label %common.resume unwind label %bb.dg, !noalias !628

bb.dg:                                            ; preds = %bb.df
  %i.np = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #13, !noalias !628
  unreachable

common.resume:                                    ; preds = %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i88.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %bb.fz, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %bb.df
  %common.resume.op = phi { ptr, i32 } [ %lpad.loopexit.split-lp1548, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ], [ %i.no, %bb.df ], [ %i.wr, %bb.fz ], [ %lpad.loopexit.split-lp1593, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i88.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ]
  resume { ptr, i32 } %common.resume.op

bb.dh:                                            ; preds = %.lr.ph469.split.i
  br i1 %i.gl, label %.loopexit24.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.dh
  %i.nq = mul i64 %i.gk, %i.fy                    ; 2 uses
  %i.nr = mul i64 %.sroa.0102.0468.i, %i.fy       ; 2 uses
  %.reass.i = add i64 %i.gk, %invariant.op470.i   ; 4 uses
  %i.ns = icmp ult i64 %.reass.i, %i.q
  %i.nt = getelementptr inbounds nuw [8 x i8], ptr %i.s, i64 %.reass.i
  %.fr.i = freeze i1 %i.ns
  br i1 %.fr.i, label %.lr.ph.split.us.i, label %.lr.ph.split.i

.lr.ph.split.us.i:                                ; preds = %.lr.ph.i, %bb.ds
  %.sroa.0105.0432.us.i = phi i64 [ %i.nu, %bb.ds ], [ %i.fp, %.lr.ph.i ] ; 3 uses
  %i.nu = add i64 %.sroa.0105.0432.us.i, -1       ; 6 uses
  %i.nv = and i64 %i.nu, 1023
  %i.nw = icmp eq i64 %i.nv, 0
  br i1 %i.nw, label %bb.di, label %bb.dk

bb.di:                                            ; preds = %.lr.ph.split.us.i
  %i.nx = invoke noundef zeroext i1 @_RNvNtCsiqiOkcJdymw_7similar16deadline_support17deadline_exceeded(i64 %9, i32 noundef range(i32 -1, 1000000000) %10)
          to label %bb.dj unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !628

bb.dj:                                            ; preds = %bb.di
  br i1 %i.nx, label %.loopexit24.i, label %bb.dk

bb.dk:                                            ; preds = %bb.dj, %.lr.ph.split.us.i
  %.reass.us.i = add i64 %i.nu, %invariant.op.i   ; 3 uses
  %i.ny = icmp ult i64 %.reass.us.i, %i.w
  br i1 %i.ny, label %bb.dl, label %.invoke.i

bb.dl:                                            ; preds = %bb.dk
  %i.nz = getelementptr inbounds nuw [8 x i8], ptr %i.y, i64 %.reass.us.i
  %.val.us.i = load i64, ptr %i.nt, align 8, !noalias !628, !noundef !3
  %.val205.us.i = load i64, ptr %i.nz, align 8, !noalias !628, !noundef !3
  %i.oa = icmp eq i64 %.val.us.i, %.val205.us.i
  br i1 %i.oa, label %bb.dp, label %bb.dm

bb.dm:                                            ; preds = %bb.dl
  %i.ob = add i64 %i.nu, %i.nr                    ; 3 uses
  %i.oc = load ptr, ptr %i.gi, align 8, !noalias !628, !nonnull !3, !noundef !3 ; 3 uses
  %i.od = load i64, ptr %i.gj, align 8, !noalias !628, !noundef !3 ; 5 uses
  %i.oe = icmp ult i64 %i.ob, %i.od
  br i1 %i.oe, label %bb.dn, label %.invoke.i

bb.dn:                                            ; preds = %bb.dm
  %i.of = add i64 %.sroa.0105.0432.us.i, %i.nq    ; 3 uses
  %i.og = icmp ult i64 %i.of, %i.od
  br i1 %i.og, label %bb.do, label %.invoke.i

bb.do:                                            ; preds = %bb.dn
  %i.oh = getelementptr inbounds nuw i8, ptr %i.oc, i64 %i.ob
  %i.oi = load i8, ptr %i.oh, align 1, !noalias !628, !noundef !3
  %i.oj = getelementptr inbounds nuw i8, ptr %i.oc, i64 %i.of
  %i.ok = load i8, ptr %i.oj, align 1, !noalias !628, !noundef !3
  %.sroa.0.0.i.us.i = call noundef i8 @llvm.umax.i8(i8 %i.ok, i8 %i.oi)
  br label %bb.dr

bb.dp:                                            ; preds = %bb.dl
  %i.ol = add i64 %.sroa.0105.0432.us.i, %i.nr    ; 3 uses
  %i.om = load i64, ptr %i.gj, align 8, !noalias !628, !noundef !3 ; 3 uses
  %i.on = icmp ult i64 %i.ol, %i.om
  br i1 %i.on, label %bb.dq, label %.invoke.i

bb.dq:                                            ; preds = %bb.dp
  %i.oo = load ptr, ptr %i.gi, align 8, !noalias !628, !nonnull !3, !noundef !3 ; 2 uses
  %i.op = getelementptr inbounds nuw i8, ptr %i.oo, i64 %i.ol
  %i.oq = load i8, ptr %i.op, align 1, !noalias !628, !noundef !3
  %i.or = add i8 %i.oq, 1
  br label %bb.dr

bb.dr:                                            ; preds = %bb.dq, %bb.do
  %i.os = phi ptr [ %i.oo, %bb.dq ], [ %i.oc, %bb.do ]
  %i.ot = phi i64 [ %i.om, %bb.dq ], [ %i.od, %bb.do ] ; 2 uses
  %.sroa.04.0.us.i = phi i8 [ %i.or, %bb.dq ], [ %.sroa.0.0.i.us.i, %bb.do ]
  %i.ou = add i64 %i.nu, %i.nq                    ; 3 uses
  %i.ov = icmp ult i64 %i.ou, %i.ot
  br i1 %i.ov, label %bb.ds, label %.invoke.i

bb.ds:                                            ; preds = %bb.dr
  %i.ow = getelementptr inbounds nuw i8, ptr %i.os, i64 %i.ou
  store i8 %.sroa.04.0.us.i, ptr %i.ow, align 1, !noalias !628
  %.not168.us.i = icmp eq i64 %i.nu, 0
  br i1 %.not168.us.i, label %..loopexit39_crit_edge.split.us.i, label %.lr.ph.split.us.i

..loopexit39_crit_edge.split.us.i:                ; preds = %bb.ds
  %.not.i76 = icmp eq i64 %i.gk, 0
  br i1 %.not.i76, label %.lr.ph495.i, label %.lr.ph469.split.i

.lr.ph.split.i:                                   ; preds = %.lr.ph.i
  %i.ox = and i64 %i.fp, 1023
  %i.oy = icmp eq i64 %i.ox, 1
  br i1 %i.oy, label %bb.dt, label %.invoke.i

bb.dt:                                            ; preds = %.lr.ph.split.i
  %i.oz = invoke noundef zeroext i1 @_RNvNtCsiqiOkcJdymw_7similar16deadline_support17deadline_exceeded(i64 %9, i32 noundef range(i32 -1, 1000000000) %10)
          to label %bb.du unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !628

bb.du:                                            ; preds = %bb.dt
  br i1 %i.oz, label %.loopexit24.i, label %.invoke.i

bb.dv:                                            ; preds = %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp
  %i.pa = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #13, !noalias !628
  unreachable

bb.dw:                                            ; preds = %bb.bb
  br i1 %i.fx, label %_RINvNtNtCsiqiOkcJdymw_7similar10algorithms5myers27maybe_emit_small_side_exactINtNtB4_5utils12OffsetLookupjEB1d_INtNtB4_4hook12NoFinishHookQIB1M_QINtNtB4_7compact7CompactINtNtB6_4text12TextDiffSideeEB2H_INtNtB4_7replace7ReplaceNtNtB4_7capture7CaptureEEEEECskXhPDodhyTq_6mdtest.exit.thread, label %bb.dx

bb.dx:                                            ; preds = %bb.dw
  %i.pb = add i64 %i.fq, 1                        ; 11 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !641
  %i.pc = add i64 %i.fp, 1
  %i.pd = mul i64 %i.pc, %i.pb                    ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !642)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !643
  call void @_RNvMs4_NtCscdodAO9FK5_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCskXhPDodhyTq_6mdtest(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, i64 noundef %i.pd, i1 noundef zeroext true, i64 noundef 1, i64 noundef 1), !noalias !643
  %i.pe = load i64, ptr %i.a, align 8, !range !8, !noalias !643, !noundef !3
  %i.pf = trunc nuw i64 %i.pe to i1
  %i.pg = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.ph = load i64, ptr %i.pg, align 8, !range !9, !noalias !643, !noundef !3 ; 2 uses
  %i.pi = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  br i1 %i.pf, label %bb.dy, label %.lr.ph484.i, !prof !7

bb.dy:                                            ; preds = %bb.dx
  %i.pj = load i64, ptr %i.pi, align 8, !noalias !643
  call void @_RNvNtCscdodAO9FK5_5alloc7raw_vec12handle_error(i64 noundef %i.ph, i64 %i.pj) #14, !noalias !643
  unreachable

.lr.ph484.i:                                      ; preds = %bb.dx
  %i.pk = load ptr, ptr %i.pi, align 8, !noalias !643, !nonnull !3, !noundef !3
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !643
  store i64 %i.ph, ptr %i.b, align 8, !alias.scope !642, !noalias !641
  %i.pl = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 7 uses
  store ptr %i.pk, ptr %i.pl, align 8, !alias.scope !642, !noalias !641
  %i.pm = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 7 uses
  store i64 %i.pd, ptr %i.pm, align 8, !alias.scope !642, !noalias !641
  %invariant.op.i92 = sub i64 %.sroa.0195.0, %i.o ; 4 uses
  %invariant.op485.i = sub i64 %.sroa.0.0, %i.u   ; 3 uses
  br label %.lr.ph484.split.i

.lr.ph484.split.i:                                ; preds = %.lr.ph484.i, %..loopexit39_crit_edge.split.us.i157
  %.sroa.0102.0483.i = phi i64 [ %i.pn, %..loopexit39_crit_edge.split.us.i157 ], [ %i.fp, %.lr.ph484.i ] ; 2 uses
  %i.pn = add i64 %.sroa.0102.0483.i, -1          ; 4 uses
  %i.po = invoke noundef zeroext i1 @_RNvNtCsiqiOkcJdymw_7similar16deadline_support17deadline_exceeded(i64 %9, i32 noundef range(i32 -1, 1000000000) %10)
          to label %bb.gb unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i88.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !641

._crit_edge512.i:                                 ; preds = %bb.fo
  br i1 %i.vc, label %bb.dz, label %bb.eb

.lr.ph511.i:                                      ; preds = %..loopexit39_crit_edge.split.us.i157, %bb.fo
  %.sroa.05.0.not510.i = phi i1 [ false, %bb.fo ], [ true, %..loopexit39_crit_edge.split.us.i157 ] ; 3 uses
  %.sroa.09.0509.i = phi i64 [ %.sroa.09.3.i122, %bb.fo ], [ 0, %..loopexit39_crit_edge.split.us.i157 ] ; 13 uses
  %.sroa.039.0508.i = phi i64 [ %.sroa.039.3.i, %bb.fo ], [ 0, %..loopexit39_crit_edge.split.us.i157 ] ; 16 uses
  %i.pp = and i64 %.sroa.039.0508.i, 1023
  %i.pq = icmp eq i64 %i.pp, 0
  %or.cond170.i103 = select i1 %.sroa.05.0.not510.i, i1 %i.pq, i1 false ; 2 uses
  br i1 %or.cond170.i103, label %bb.ef, label %bb.ee

bb.dz:                                            ; preds = %._crit_edge512.i
  %i.pr = add i64 %.sroa.09.3.i122, %.sroa.0.0    ; 2 uses
  %i.ps = sub nuw i64 %i.fp, %.sroa.09.3.i122
  %i.pt = add i64 %.sroa.039.3.i, %.sroa.0195.0   ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val51) ]
  %i.pu = load ptr, ptr %.val51, align 8, !alias.scope !644, !noalias !641, !nonnull !3, !align !5, !noundef !3 ; 3 uses
  %i.pv = getelementptr inbounds nuw i8, ptr %i.pu, i64 120 ; 2 uses
  %i.pw = getelementptr inbounds nuw i8, ptr %i.pu, i64 136 ; 2 uses
  %i.px = load i64, ptr %i.pw, align 8, !alias.scope !645, !noalias !641, !noundef !3 ; 3 uses
  %i.py = load i64, ptr %i.pv, align 8, !range !6, !alias.scope !645, !noalias !641, !noundef !3
  %i.pz = icmp eq i64 %i.px, %i.py
  br i1 %i.pz, label %bb.ea, label %_RNvXs0_NtNtCsiqiOkcJdymw_7similar10algorithms4hookINtB5_12NoFinishHookQIBN_QINtNtB7_7compact7CompactINtNtB9_4text12TextDiffSideeEB1A_INtNtB7_7replace7ReplaceNtNtB7_7capture7CaptureEEEENtB5_8DiffHook6deleteCskXhPDodhyTq_6mdtest.exit181.i99

bb.ea:                                            ; preds = %bb.dz
  invoke void @_RNvMs3_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecNtNtCsiqiOkcJdymw_7similar5types6DiffOpE8grow_oneBP_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.pv)
          to label %_RNvXs0_NtNtCsiqiOkcJdymw_7similar10algorithms4hookINtB5_12NoFinishHookQIBN_QINtNtB7_7compact7CompactINtNtB9_4text12TextDiffSideeEB1A_INtNtB7_7replace7ReplaceNtNtB7_7capture7CaptureEEEENtB5_8DiffHook6deleteCskXhPDodhyTq_6mdtest.exit181.i99 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i88.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !641

_RNvXs0_NtNtCsiqiOkcJdymw_7similar10algorithms4hookINtB5_12NoFinishHookQIBN_QINtNtB7_7compact7CompactINtNtB9_4text12TextDiffSideeEB1A_INtNtB7_7replace7ReplaceNtNtB7_7capture7CaptureEEEENtB5_8DiffHook6deleteCskXhPDodhyTq_6mdtest.exit181.i99: ; preds = %bb.ea, %bb.dz
  %i.qa = getelementptr inbounds nuw i8, ptr %i.pu, i64 128
  %i.qb = load ptr, ptr %i.qa, align 8, !alias.scope !645, !noalias !641, !nonnull !3, !noundef !3
  %i.qc = getelementptr inbounds nuw [40 x i8], ptr %i.qb, i64 %i.px ; 4 uses
  store i64 1, ptr %i.qc, align 8, !noalias !641
  %.sroa.47.0..sroa_idx.i100 = getelementptr inbounds nuw i8, ptr %i.qc, i64 8
  store i64 %i.pr, ptr %.sroa.47.0..sroa_idx.i100, align 8, !noalias !641
  %.sroa.58.0..sroa_idx.i101 = getelementptr inbounds nuw i8, ptr %i.qc, i64 16
  store i64 %i.ps, ptr %.sroa.58.0..sroa_idx.i101, align 8, !noalias !641
  %.sroa.69.0..sroa_idx.i102 = getelementptr inbounds nuw i8, ptr %i.qc, i64 24
  store i64 %i.pt, ptr %.sroa.69.0..sroa_idx.i102, align 8, !noalias !641
  %i.qd = add i64 %i.px, 1
  store i64 %i.qd, ptr %i.pw, align 8, !alias.scope !645, !noalias !641
  br i1 %i.vd, label %bb.ec, label %_RINvNtNtCsiqiOkcJdymw_7similar10algorithms5myers27maybe_emit_small_side_exactINtNtB4_5utils12OffsetLookupjEB1d_INtNtB4_4hook12NoFinishHookQIB1M_QINtNtB4_7compact7CompactINtNtB6_4text12TextDiffSideeEB2H_INtNtB4_7replace7ReplaceNtNtB4_7capture7CaptureEEEEECskXhPDodhyTq_6mdtest.exit.thread309

bb.eb:                                            ; preds = %._crit_edge512.i
  br i1 %i.vd, label %._crit_edge879, label %_RINvNtNtCsiqiOkcJdymw_7similar10algorithms5myers27maybe_emit_small_side_exactINtNtB4_5utils12OffsetLookupjEB1d_INtNtB4_4hook12NoFinishHookQIB1M_QINtNtB4_7compact7CompactINtNtB6_4text12TextDiffSideeEB2H_INtNtB4_7replace7ReplaceNtNtB4_7capture7CaptureEEEEECskXhPDodhyTq_6mdtest.exit.thread309

._crit_edge879:                                   ; preds = %bb.eb
  %.pre885 = add i64 %.sroa.09.3.i122, %.sroa.0.0
  %.pre887 = add i64 %.sroa.039.3.i, %.sroa.0195.0
  br label %bb.ec

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i88.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %bb.gc, %bb.ef, %bb.eq, %bb.fd, %bb.fp, %bb.fr, %bb.er, %bb.fe, %.lr.ph484.split.i, %bb.gn, %.invoke.i104, %bb.ed, %bb.ea
  %lpad.loopexit.split-lp1593 = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VechEECskXhPDodhyTq_6mdtest(ptr noalias noundef align 8 dereferenceable(24) %i.b) #15
          to label %common.resume unwind label %bb.gr, !noalias !641

bb.ec:                                            ; preds = %._crit_edge879, %_RNvXs0_NtNtCsiqiOkcJdymw_7similar10algorithms4hookINtB5_12NoFinishHookQIBN_QINtNtB7_7compact7CompactINtNtB9_4text12TextDiffSideeEB1A_INtNtB7_7replace7ReplaceNtNtB7_7capture7CaptureEEEENtB5_8DiffHook6deleteCskXhPDodhyTq_6mdtest.exit181.i99
  %.pre-phi888 = phi i64 [ %.pre887, %._crit_edge879 ], [ %i.pt, %_RNvXs0_NtNtCsiqiOkcJdymw_7similar10algorithms4hookINtB5_12NoFinishHookQIBN_QINtNtB7_7compact7CompactINtNtB9_4text12TextDiffSideeEB1A_INtNtB7_7replace7ReplaceNtNtB7_7capture7CaptureEEEENtB5_8DiffHook6deleteCskXhPDodhyTq_6mdtest.exit181.i99 ]
  %.pre-phi886 = phi i64 [ %.pre885, %._crit_edge879 ], [ %i.pr, %_RNvXs0_NtNtCsiqiOkcJdymw_7similar10algorithms4hookINtB5_12NoFinishHookQIBN_QINtNtB7_7compact7CompactINtNtB9_4text12TextDiffSideeEB1A_INtNtB7_7replace7ReplaceNtNtB7_7capture7CaptureEEEENtB5_8DiffHook6deleteCskXhPDodhyTq_6mdtest.exit181.i99 ]
  %i.qe = sub nuw i64 %i.fq, %.sroa.039.3.i
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val51) ]
  %i.qf = load ptr, ptr %.val51, align 8, !alias.scope !646, !noalias !641, !nonnull !3, !align !5, !noundef !3 ; 3 uses
  %i.qg = getelementptr inbounds nuw i8, ptr %i.qf, i64 120 ; 2 uses
  %i.qh = getelementptr inbounds nuw i8, ptr %i.qf, i64 136 ; 2 uses
  %i.qi = load i64, ptr %i.qh, align 8, !alias.scope !647, !noalias !641, !noundef !3 ; 3 uses
  %i.qj = load i64, ptr %i.qg, align 8, !range !6, !alias.scope !647, !noalias !641, !noundef !3
  %i.qk = icmp eq i64 %i.qi, %i.qj
  br i1 %i.qk, label %bb.ed, label %_RNvXs0_NtNtCsiqiOkcJdymw_7similar10algorithms4hookINtB5_12NoFinishHookQIBN_QINtNtB7_7compact7CompactINtNtB9_4text12TextDiffSideeEB1A_INtNtB7_7replace7ReplaceNtNtB7_7capture7CaptureEEEENtB5_8DiffHook6insertCskXhPDodhyTq_6mdtest.exit182.i84

bb.ed:                                            ; preds = %bb.ec
  invoke void @_RNvMs3_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecNtNtCsiqiOkcJdymw_7similar5types6DiffOpE8grow_oneBP_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.qg)
          to label %_RNvXs0_NtNtCsiqiOkcJdymw_7similar10algorithms4hookINtB5_12NoFinishHookQIBN_QINtNtB7_7compact7CompactINtNtB9_4text12TextDiffSideeEB1A_INtNtB7_7replace7ReplaceNtNtB7_7capture7CaptureEEEENtB5_8DiffHook6insertCskXhPDodhyTq_6mdtest.exit182.i84 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i88.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !641

_RNvXs0_NtNtCsiqiOkcJdymw_7similar10algorithms4hookINtB5_12NoFinishHookQIBN_QINtNtB7_7compact7CompactINtNtB9_4text12TextDiffSideeEB1A_INtNtB7_7replace7ReplaceNtNtB7_7capture7CaptureEEEENtB5_8DiffHook6insertCskXhPDodhyTq_6mdtest.exit182.i84: ; preds = %bb.ed, %bb.ec
  %i.ql = getelementptr inbounds nuw i8, ptr %i.qf, i64 128
  %i.qm = load ptr, ptr %i.ql, align 8, !alias.scope !647, !noalias !641, !nonnull !3, !noundef !3
  %i.qn = getelementptr inbounds nuw [40 x i8], ptr %i.qm, i64 %i.qi ; 4 uses
  store i64 2, ptr %i.qn, align 8, !noalias !641
  %.sroa.417.0..sroa_idx.i85 = getelementptr inbounds nuw i8, ptr %i.qn, i64 8
  store i64 %.pre-phi886, ptr %.sroa.417.0..sroa_idx.i85, align 8, !noalias !641
  %.sroa.518.0..sroa_idx.i86 = getelementptr inbounds nuw i8, ptr %i.qn, i64 16
  store i64 %.pre-phi888, ptr %.sroa.518.0..sroa_idx.i86, align 8, !noalias !641
  %.sroa.619.0..sroa_idx.i87 = getelementptr inbounds nuw i8, ptr %i.qn, i64 24
  store i64 %i.qe, ptr %.sroa.619.0..sroa_idx.i87, align 8, !noalias !641
  %i.qo = add i64 %i.qi, 1
  store i64 %i.qo, ptr %i.qh, align 8, !alias.scope !647, !noalias !641
  br label %_RINvNtNtCsiqiOkcJdymw_7similar10algorithms5myers27maybe_emit_small_side_exactINtNtB4_5utils12OffsetLookupjEB1d_INtNtB4_4hook12NoFinishHookQIB1M_QINtNtB4_7compact7CompactINtNtB6_4text12TextDiffSideeEB2H_INtNtB4_7replace7ReplaceNtNtB4_7capture7CaptureEEEEECskXhPDodhyTq_6mdtest.exit.thread309

_RINvNtNtCsiqiOkcJdymw_7similar10algorithms5myers27maybe_emit_small_side_exactINtNtB4_5utils12OffsetLookupjEB1d_INtNtB4_4hook12NoFinishHookQIB1M_QINtNtB4_7compact7CompactINtNtB6_4text12TextDiffSideeEB2H_INtNtB4_7replace7ReplaceNtNtB4_7capture7CaptureEEEEECskXhPDodhyTq_6mdtest.exit.thread309: ; preds = %_RNvXs0_NtNtCsiqiOkcJdymw_7similar10algorithms4hookINtB5_12NoFinishHookQIBN_QINtNtB7_7compact7CompactINtNtB9_4text12TextDiffSideeEB1A_INtNtB7_7replace7ReplaceNtNtB7_7capture7CaptureEEEENtB5_8DiffHook6deleteCskXhPDodhyTq_6mdtest.exit181.i99, %bb.eb, %_RNvXs0_NtNtCsiqiOkcJdymw_7similar10algorithms4hookINtB5_12NoFinishHookQIBN_QINtNtB7_7compact7CompactINtNtB9_4text12TextDiffSideeEB1A_INtNtB7_7replace7ReplaceNtNtB7_7capture7CaptureEEEENtB5_8DiffHook6insertCskXhPDodhyTq_6mdtest.exit182.i84
  call fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VechEECskXhPDodhyTq_6mdtest(ptr noalias noundef align 8 dereferenceable(24) %i.b), !noalias !641
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !641
  br label %bb.av

bb.ee:                                            ; preds = %bb.eg, %.lr.ph511.i
  %i.qp = mul i64 %.sroa.09.0509.i, %i.pb         ; 4 uses
  %i.qq = add i64 %.sroa.09.0509.i, %.sroa.0.0    ; 4 uses
  %i.qr = add i64 %.sroa.039.0508.i, %.sroa.0195.0 ; 4 uses
  %i.qs = sub i64 %i.qr, %i.o                     ; 3 uses
  %i.qt = icmp ult i64 %i.qs, %i.q
  br i1 %i.qt, label %bb.eh, label %.invoke.i104

.invoke.i104:                                     ; preds = %bb.gl, %bb.gj, %bb.gh, %bb.gg, %bb.ge, %bb.en, %bb.el, %bb.ek, %bb.ej, %bb.eh, %bb.ee, %bb.fm, %bb.fk, %bb.fj, %bb.fi, %bb.fg, %bb.ez, %bb.ex, %bb.ew, %bb.ev, %bb.et, %bb.ft, %bb.fq, %bb.fw, %bb.fv, %bb.gq, %bb.gp
  %i.qu = phi i64 [ %i.ti, %bb.ez ], [ %.reass.i148, %bb.gp ], [ %.reass486.i, %bb.gq ], [ %i.uw, %bb.fm ], [ %i.qs, %bb.ee ], [ %i.wh, %bb.fw ], [ %i.q, %bb.fq ], [ %i.wa, %bb.fv ], [ %i.w, %bb.ft ], [ %i.ss, %bb.et ], [ %i.sw, %bb.ev ], [ %i.ta, %bb.ex ], [ %i.sy, %bb.ew ], [ %i.ue, %bb.fg ], [ %i.ui, %bb.fi ], [ %i.uo, %bb.fk ], [ %i.uk, %bb.fj ], [ %i.rd, %bb.ej ], [ %i.rf, %bb.ek ], [ %i.rv, %bb.en ], [ %i.qz, %bb.eh ], [ %i.rk, %bb.el ], [ %i.xe, %bb.gg ], [ %.reass.us.i151, %bb.ge ], [ %i.xx, %bb.gl ], [ %i.xi, %bb.gh ], [ %i.xo, %bb.gj ]
  %i.qv = phi i64 [ %.pre745.i.a, %bb.ez ], [ %i.q, %bb.gp ], [ %i.w, %bb.gq ], [ %.pre743.i, %bb.fm ], [ %i.q, %bb.ee ], [ %i.wc, %bb.fw ], [ %i.q, %bb.fq ], [ %i.wc, %bb.fv ], [ %i.w, %bb.ft ], [ %i.q, %bb.et ], [ %.pre745.i.a, %bb.ev ], [ %.pre745.i.a, %bb.ex ], [ %.pre745.i.a, %bb.ew ], [ %i.w, %bb.fg ], [ %.pre743.i, %bb.fi ], [ %.pre743.i, %bb.fk ], [ %.pre743.i, %bb.fj ], [ %.pre741.i, %bb.ej ], [ %.pre741.i, %bb.ek ], [ %.pre741.i, %bb.en ], [ %i.w, %bb.eh ], [ %.pre741.i, %bb.el ], [ %i.xg, %bb.gg ], [ %i.q, %bb.ge ], [ %i.xw, %bb.gl ], [ %i.xg, %bb.gh ], [ %i.xp, %bb.gj ]
  %i.qw = phi ptr [ @62, %bb.ez ], [ @73, %bb.gp ], [ @74, %bb.gq ], [ @68, %bb.fm ], [ @51, %bb.ee ], [ @72, %bb.fw ], [ @69, %bb.fq ], [ @71, %bb.fv ], [ @70, %bb.ft ], [ @57, %bb.et ], [ @59, %bb.ev ], [ @60, %bb.ex ], [ @61, %bb.ew ], [ @64, %bb.fg ], [ @65, %bb.fi ], [ @66, %bb.fk ], [ @67, %bb.fj ], [ @53, %bb.ej ], [ @55, %bb.ek ], [ @56, %bb.en ], [ @52, %bb.eh ], [ @54, %bb.el ], [ @75, %bb.gg ], [ @73, %bb.ge ], [ @78, %bb.gl ], [ @76, %bb.gh ], [ @77, %bb.gj ]
  invoke void @_RNvNtCs4NRVxsYgnAr_4core9panicking18panic_bounds_check(i64 noundef %i.qu, i64 noundef %i.qv, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.qw) #14
          to label %.cont.i105 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i88.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !641

.cont.i105:                                       ; preds = %.invoke.i104
  unreachable

bb.ef:                                            ; preds = %.lr.ph511.i
  %i.qx = invoke noundef zeroext i1 @_RNvNtCsiqiOkcJdymw_7similar16deadline_support17deadline_exceeded(i64 %9, i32 noundef range(i32 -1, 1000000000) %10)
          to label %bb.eg unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i88.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !641

bb.eg:                                            ; preds = %bb.ef
  br i1 %i.qx, label %.loopexit24.i124, label %bb.ee

bb.eh:                                            ; preds = %bb.ee
  %i.qy = getelementptr inbounds nuw [8 x i8], ptr %i.s, i64 %i.qs ; 2 uses
  %i.qz = sub i64 %i.qq, %i.u                     ; 3 uses
  %i.ra = icmp ult i64 %i.qz, %i.w
  br i1 %i.ra, label %bb.ei, label %.invoke.i104

bb.ei:                                            ; preds = %bb.eh
  %i.rb = getelementptr inbounds nuw [8 x i8], ptr %i.y, i64 %i.qz ; 2 uses
  %.val212.i106 = load i64, ptr %i.qy, align 8, !noalias !641, !noundef !3
  %.val213.i107 = load i64, ptr %i.rb, align 8, !noalias !641, !noundef !3
  %i.rc = icmp eq i64 %.val212.i106, %.val213.i107
  %.pre.i108 = load ptr, ptr %i.pl, align 8, !noalias !641 ; 4 uses
  %.pre741.i = load i64, ptr %i.pm, align 8, !noalias !641 ; 8 uses
  br i1 %i.rc, label %bb.ej, label %._crit_edge747.i

._crit_edge747.i:                                 ; preds = %bb.ei
  %.pre748.i = add nuw i64 %.sroa.09.0509.i, 1
  %.pre749.i = mul i64 %.pre748.i, %i.pb
  br label %bb.ek

bb.ej:                                            ; preds = %bb.ei
  %i.rd = add i64 %i.qp, %.sroa.039.0508.i        ; 3 uses
  %i.re = icmp ult i64 %i.rd, %.pre741.i
  br i1 %i.re, label %bb.el, label %.invoke.i104

bb.ek:                                            ; preds = %bb.em, %._crit_edge747.i
  %.pre-phi750.i = phi i64 [ %.pre749.i, %._crit_edge747.i ], [ %i.ri, %bb.em ] ; 3 uses
  %i.rf = add i64 %.pre-phi750.i, %.sroa.039.0508.i ; 3 uses
  %i.rg = icmp ult i64 %i.rf, %.pre741.i
  br i1 %i.rg, label %bb.en, label %.invoke.i104

bb.el:                                            ; preds = %bb.ej
  %i.rh = add nuw i64 %.sroa.09.0509.i, 1
  %i.ri = mul i64 %i.rh, %i.pb                    ; 2 uses
  %i.rj = add nuw i64 %.sroa.039.0508.i, 1
  %i.rk = add i64 %i.rj, %i.ri                    ; 3 uses
  %i.rl = icmp ult i64 %i.rk, %.pre741.i
  br i1 %i.rl, label %bb.em, label %.invoke.i104

bb.em:                                            ; preds = %bb.el
  %i.rm = getelementptr inbounds nuw i8, ptr %.pre.i108, i64 %i.rd
  %i.rn = load i8, ptr %i.rm, align 1, !noalias !641, !noundef !3
  %i.ro = getelementptr inbounds nuw i8, ptr %.pre.i108, i64 %i.rk
  %i.rp = load i8, ptr %i.ro, align 1, !noalias !641, !noundef !3
  %i.rq = add i8 %i.rp, 1
  %i.rr = icmp eq i8 %i.rn, %i.rq
  br i1 %i.rr, label %.preheader.i135, label %bb.ek

.preheader.i135:                                  ; preds = %bb.em
  %i.rs = icmp ult i64 %.sroa.09.0509.i, %i.fp
  %i.rt = icmp ult i64 %.sroa.039.0508.i, %i.fq
  %or.cond177494.i = select i1 %i.rs, i1 %i.rt, i1 false
  br i1 %or.cond177494.i, label %.lr.ph497.i, label %._crit_edge498.i

bb.en:                                            ; preds = %bb.ek
  %i.ru = add i64 %.sroa.039.0508.i, 1            ; 3 uses
  %i.rv = add i64 %i.ru, %i.qp                    ; 3 uses
  %i.rw = icmp ult i64 %i.rv, %.pre741.i
  br i1 %i.rw, label %bb.eo, label %.invoke.i104

bb.eo:                                            ; preds = %bb.en
  %i.rx = getelementptr inbounds nuw i8, ptr %.pre.i108, i64 %i.rf
  %i.ry = load i8, ptr %i.rx, align 1, !noalias !641, !noundef !3
  %i.rz = getelementptr inbounds nuw i8, ptr %.pre.i108, i64 %i.rv
  %i.sa = load i8, ptr %i.rz, align 1, !noalias !641, !noundef !3
  %.not164.i109 = icmp ult i8 %i.ry, %i.sa
  br i1 %.not164.i109, label %.preheader25.i126, label %.preheader30.i110

.preheader30.i110:                                ; preds = %bb.eo
  %umax.i111 = call i64 @llvm.umax.i64(i64 %.sroa.09.0509.i, i64 %i.fp) ; 3 uses
  %exitcond.not.i1131497.not = icmp ult i64 %.sroa.09.0509.i, %i.fp
  br i1 %exitcond.not.i1131497.not, label %.lr.ph1499, label %._crit_edge1500

.preheader25.i126:                                ; preds = %bb.eo
  %i.sb = icmp ult i64 %.sroa.039.0508.i, %i.fq
  br i1 %i.sb, label %.lr.ph489.i, label %._crit_edge.i127

.lr.ph489.i:                                      ; preds = %.preheader25.i126
  %i.sc = add i64 %.pre-phi750.i, 1
  %i.sd = add i64 %i.qp, 1
  br label %bb.ep

bb.ep:                                            ; preds = %bb.fb, %.lr.ph489.i
  %.sroa.039.1488.i = phi i64 [ %.sroa.039.0508.i, %.lr.ph489.i ], [ %i.tp, %bb.fb ] ; 9 uses
  %i.se = and i64 %.sroa.039.1488.i, 1023
  %i.sf = icmp eq i64 %i.se, 0
  %or.cond173.i132 = and i1 %.sroa.05.0.not510.i, %i.sf
  br i1 %or.cond173.i132, label %bb.er, label %bb.et

._crit_edge.i127:                                 ; preds = %bb.fb, %bb.fa, %bb.ey, %.preheader25.i126
  %.sroa.039.1.lcssa.i = phi i64 [ %.sroa.039.0508.i, %.preheader25.i126 ], [ %i.fq, %bb.fb ], [ %.sroa.039.1488.i, %bb.fa ], [ %.sroa.039.1488.i, %bb.ey ] ; 2 uses
  %i.sg = sub nuw i64 %.sroa.039.1.lcssa.i, %.sroa.039.0508.i
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val51) ]
  %i.sh = load ptr, ptr %.val51, align 8, !alias.scope !648, !noalias !641, !nonnull !3, !align !5, !noundef !3 ; 3 uses
  %i.si = getelementptr inbounds nuw i8, ptr %i.sh, i64 120 ; 2 uses
  %i.sj = getelementptr inbounds nuw i8, ptr %i.sh, i64 136 ; 2 uses
  %i.sk = load i64, ptr %i.sj, align 8, !alias.scope !649, !noalias !641, !noundef !3 ; 3 uses
  %i.sl = load i64, ptr %i.si, align 8, !range !6, !alias.scope !649, !noalias !641, !noundef !3
  %i.sm = icmp eq i64 %i.sk, %i.sl
  br i1 %i.sm, label %bb.eq, label %_RNvXs0_NtNtCsiqiOkcJdymw_7similar10algorithms4hookINtB5_12NoFinishHookQIBN_QINtNtB7_7compact7CompactINtNtB9_4text12TextDiffSideeEB1A_INtNtB7_7replace7ReplaceNtNtB7_7capture7CaptureEEEENtB5_8DiffHook6insertCskXhPDodhyTq_6mdtest.exit.i128

bb.eq:                                            ; preds = %._crit_edge.i127
  invoke void @_RNvMs3_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecNtNtCsiqiOkcJdymw_7similar5types6DiffOpE8grow_oneBP_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.si)
          to label %_RNvXs0_NtNtCsiqiOkcJdymw_7similar10algorithms4hookINtB5_12NoFinishHookQIBN_QINtNtB7_7compact7CompactINtNtB9_4text12TextDiffSideeEB1A_INtNtB7_7replace7ReplaceNtNtB7_7capture7CaptureEEEENtB5_8DiffHook6insertCskXhPDodhyTq_6mdtest.exit.i128 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i88.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !641

_RNvXs0_NtNtCsiqiOkcJdymw_7similar10algorithms4hookINtB5_12NoFinishHookQIBN_QINtNtB7_7compact7CompactINtNtB9_4text12TextDiffSideeEB1A_INtNtB7_7replace7ReplaceNtNtB7_7capture7CaptureEEEENtB5_8DiffHook6insertCskXhPDodhyTq_6mdtest.exit.i128: ; preds = %bb.eq, %._crit_edge.i127
  %i.sn = getelementptr inbounds nuw i8, ptr %i.sh, i64 128
  %i.so = load ptr, ptr %i.sn, align 8, !alias.scope !649, !noalias !641, !nonnull !3, !noundef !3
  %i.sp = getelementptr inbounds nuw [40 x i8], ptr %i.so, i64 %i.sk ; 4 uses
  store i64 2, ptr %i.sp, align 8, !noalias !641
  %.sroa.412.0..sroa_idx.i129 = getelementptr inbounds nuw i8, ptr %i.sp, i64 8
  store i64 %i.qq, ptr %.sroa.412.0..sroa_idx.i129, align 8, !noalias !641
  %.sroa.513.0..sroa_idx.i130 = getelementptr inbounds nuw i8, ptr %i.sp, i64 16
  store i64 %i.qr, ptr %.sroa.513.0..sroa_idx.i130, align 8, !noalias !641
  %.sroa.614.0..sroa_idx.i131 = getelementptr inbounds nuw i8, ptr %i.sp, i64 24
  store i64 %i.sg, ptr %.sroa.614.0..sroa_idx.i131, align 8, !noalias !641
  %i.sq = add i64 %i.sk, 1
  store i64 %i.sq, ptr %i.sj, align 8, !alias.scope !649, !noalias !641
  br label %bb.fo

bb.er:                                            ; preds = %bb.ep
  %i.sr = invoke noundef zeroext i1 @_RNvNtCsiqiOkcJdymw_7similar16deadline_support17deadline_exceeded(i64 %9, i32 noundef range(i32 -1, 1000000000) %10)
          to label %bb.es unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i88.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !641

bb.es:                                            ; preds = %bb.er
  br i1 %i.sr, label %.loopexit24.i124, label %bb.et

bb.et:                                            ; preds = %bb.es, %bb.ep
  %i.ss = add i64 %.sroa.039.1488.i, %invariant.op.i92 ; 3 uses
  %i.st = icmp ult i64 %i.ss, %i.q
  br i1 %i.st, label %bb.eu, label %.invoke.i104

bb.eu:                                            ; preds = %bb.et
  %i.su = getelementptr inbounds nuw [8 x i8], ptr %i.s, i64 %i.ss
  %.val210.i133 = load i64, ptr %i.su, align 8, !noalias !641, !noundef !3
  %.val211.i134 = load i64, ptr %i.rb, align 8, !noalias !641, !noundef !3
  %i.sv = icmp eq i64 %.val210.i133, %.val211.i134
  %.pre744.i.a = load ptr, ptr %i.pl, align 8, !noalias !641 ; 4 uses
  %.pre745.i.a = load i64, ptr %i.pm, align 8, !noalias !641 ; 8 uses
  br i1 %i.sv, label %bb.ev, label %bb.ew

bb.ev:                                            ; preds = %bb.eu
  %i.sw = add i64 %.sroa.039.1488.i, %i.qp        ; 3 uses
  %i.sx = icmp ult i64 %i.sw, %.pre745.i.a
  br i1 %i.sx, label %bb.ex, label %.invoke.i104

bb.ew:                                            ; preds = %bb.ey, %bb.eu
  %i.sy = add i64 %.sroa.039.1488.i, %.pre-phi750.i ; 3 uses
  %i.sz = icmp ult i64 %i.sy, %.pre745.i.a
  br i1 %i.sz, label %bb.ez, label %.invoke.i104

bb.ex:                                            ; preds = %bb.ev
  %i.ta = add i64 %i.sc, %.sroa.039.1488.i        ; 3 uses
  %i.tb = icmp ult i64 %i.ta, %.pre745.i.a
  br i1 %i.tb, label %bb.ey, label %.invoke.i104

bb.ey:                                            ; preds = %bb.ex
  %i.tc = getelementptr inbounds nuw i8, ptr %.pre744.i.a, i64 %i.sw
  %i.td = load i8, ptr %i.tc, align 1, !noalias !641, !noundef !3
  %i.te = getelementptr inbounds nuw i8, ptr %.pre744.i.a, i64 %i.ta
  %i.tf = load i8, ptr %i.te, align 1, !noalias !641, !noundef !3
  %i.tg = add i8 %i.tf, 1
  %i.th = icmp eq i8 %i.td, %i.tg
  br i1 %i.th, label %._crit_edge.i127, label %bb.ew

bb.ez:                                            ; preds = %bb.ew
  %i.ti = add i64 %i.sd, %.sroa.039.1488.i        ; 3 uses
  %i.tj = icmp ult i64 %i.ti, %.pre745.i.a
  br i1 %i.tj, label %bb.fa, label %.invoke.i104

bb.fa:                                            ; preds = %bb.ez
  %i.tk = getelementptr inbounds nuw i8, ptr %.pre744.i.a, i64 %i.sy
  %i.tl = load i8, ptr %i.tk, align 1, !noalias !641, !noundef !3
  %i.tm = getelementptr inbounds nuw i8, ptr %.pre744.i.a, i64 %i.ti
  %i.tn = load i8, ptr %i.tm, align 1, !noalias !641, !noundef !3
  %i.to = icmp ult i8 %i.tl, %i.tn
  br i1 %i.to, label %bb.fb, label %._crit_edge.i127

bb.fb:                                            ; preds = %bb.fa
  %i.tp = add nuw i64 %.sroa.039.1488.i, 1        ; 2 uses
  %i.tq = icmp ult i64 %i.tp, %i.fq
  br i1 %i.tq, label %bb.ep, label %._crit_edge.i127

bb.fc:                                            ; preds = %bb.fn
  %exitcond.not.i113 = icmp eq i64 %.pre-phi752.i, %umax.i111
  br i1 %exitcond.not.i113, label %._crit_edge1500, label %.lr.ph1499

.lr.ph1499:                                       ; preds = %.preheader30.i110, %bb.fc
  %.sroa.09.1.i1121498 = phi i64 [ %.pre-phi752.i, %bb.fc ], [ %.sroa.09.0509.i, %.preheader30.i110 ] ; 6 uses
  br i1 %or.cond170.i103, label %bb.fe, label %bb.fg

._crit_edge1500:                                  ; preds = %bb.fc, %bb.fl, %bb.fn, %.preheader30.i110
  %.sroa.09.1.lcssa.i117 = phi i64 [ %umax.i111, %.preheader30.i110 ], [ %umax.i111, %bb.fc ], [ %.sroa.09.1.i1121498, %bb.fl ], [ %.sroa.09.1.i1121498, %bb.fn ] ; 2 uses
  %i.tr = sub nuw i64 %.sroa.09.1.lcssa.i117, %.sroa.09.0509.i
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val51) ]
  %i.ts = load ptr, ptr %.val51, align 8, !alias.scope !650, !noalias !641, !nonnull !3, !align !5, !noundef !3 ; 3 uses
  %i.tt = getelementptr inbounds nuw i8, ptr %i.ts, i64 120 ; 2 uses
  %i.tu = getelementptr inbounds nuw i8, ptr %i.ts, i64 136 ; 2 uses
  %i.tv = load i64, ptr %i.tu, align 8, !alias.scope !651, !noalias !641, !noundef !3 ; 3 uses
  %i.tw = load i64, ptr %i.tt, align 8, !range !6, !alias.scope !651, !noalias !641, !noundef !3
  %i.tx = icmp eq i64 %i.tv, %i.tw
  br i1 %i.tx, label %bb.fd, label %_RNvXs0_NtNtCsiqiOkcJdymw_7similar10algorithms4hookINtB5_12NoFinishHookQIBN_QINtNtB7_7compact7CompactINtNtB9_4text12TextDiffSideeEB1A_INtNtB7_7replace7ReplaceNtNtB7_7capture7CaptureEEEENtB5_8DiffHook6deleteCskXhPDodhyTq_6mdtest.exit.i118

bb.fd:                                            ; preds = %._crit_edge1500
  invoke void @_RNvMs3_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecNtNtCsiqiOkcJdymw_7similar5types6DiffOpE8grow_oneBP_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.tt)
          to label %_RNvXs0_NtNtCsiqiOkcJdymw_7similar10algorithms4hookINtB5_12NoFinishHookQIBN_QINtNtB7_7compact7CompactINtNtB9_4text12TextDiffSideeEB1A_INtNtB7_7replace7ReplaceNtNtB7_7capture7CaptureEEEENtB5_8DiffHook6deleteCskXhPDodhyTq_6mdtest.exit.i118 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i88.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !641

_RNvXs0_NtNtCsiqiOkcJdymw_7similar10algorithms4hookINtB5_12NoFinishHookQIBN_QINtNtB7_7compact7CompactINtNtB9_4text12TextDiffSideeEB1A_INtNtB7_7replace7ReplaceNtNtB7_7capture7CaptureEEEENtB5_8DiffHook6deleteCskXhPDodhyTq_6mdtest.exit.i118: ; preds = %bb.fd, %._crit_edge1500
  %i.ty = getelementptr inbounds nuw i8, ptr %i.ts, i64 128
  %i.tz = load ptr, ptr %i.ty, align 8, !alias.scope !651, !noalias !641, !nonnull !3, !noundef !3
  %i.ua = getelementptr inbounds nuw [40 x i8], ptr %i.tz, i64 %i.tv ; 4 uses
  store i64 1, ptr %i.ua, align 8, !noalias !641
  %.sroa.42.0..sroa_idx.i119 = getelementptr inbounds nuw i8, ptr %i.ua, i64 8
  store i64 %i.qq, ptr %.sroa.42.0..sroa_idx.i119, align 8, !noalias !641
  %.sroa.53.0..sroa_idx.i120 = getelementptr inbounds nuw i8, ptr %i.ua, i64 16
  store i64 %i.tr, ptr %.sroa.53.0..sroa_idx.i120, align 8, !noalias !641
  %.sroa.64.0..sroa_idx.i121 = getelementptr inbounds nuw i8, ptr %i.ua, i64 24
  store i64 %i.qr, ptr %.sroa.64.0..sroa_idx.i121, align 8, !noalias !641
  %i.ub = add i64 %i.tv, 1
  store i64 %i.ub, ptr %i.tu, align 8, !alias.scope !651, !noalias !641
  br label %bb.fo

bb.fe:                                            ; preds = %.lr.ph1499
  %i.uc = invoke noundef zeroext i1 @_RNvNtCsiqiOkcJdymw_7similar16deadline_support17deadline_exceeded(i64 %9, i32 noundef range(i32 -1, 1000000000) %10)
          to label %bb.ff unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i88.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !641

bb.ff:                                            ; preds = %bb.fe
  br i1 %i.uc, label %.loopexit24.i124, label %bb.fg

bb.fg:                                            ; preds = %bb.ff, %.lr.ph1499
  %i.ud = mul i64 %.sroa.09.1.i1121498, %i.pb     ; 2 uses
  %i.ue = add i64 %.sroa.09.1.i1121498, %invariant.op485.i ; 3 uses
  %i.uf = icmp ult i64 %i.ue, %i.w
  br i1 %i.uf, label %bb.fh, label %.invoke.i104

bb.fh:                                            ; preds = %bb.fg
  %i.ug = getelementptr inbounds nuw [8 x i8], ptr %i.y, i64 %i.ue
  %.val208.i114 = load i64, ptr %i.qy, align 8, !noalias !641, !noundef !3
  %.val209.i115 = load i64, ptr %i.ug, align 8, !noalias !641, !noundef !3
  %i.uh = icmp eq i64 %.val208.i114, %.val209.i115
  %.pre742.i = load ptr, ptr %i.pl, align 8, !noalias !641 ; 4 uses
  %.pre743.i = load i64, ptr %i.pm, align 8, !noalias !641 ; 8 uses
  br i1 %i.uh, label %bb.fi, label %._crit_edge746.i

._crit_edge746.i:                                 ; preds = %bb.fh
  %.pre751.i = add i64 %.sroa.09.1.i1121498, 1    ; 2 uses
  %.pre753.i = mul i64 %.pre751.i, %i.pb
  br label %bb.fj

bb.fi:                                            ; preds = %bb.fh
  %i.ui = add i64 %i.ud, %.sroa.039.0508.i        ; 3 uses
  %i.uj = icmp ult i64 %i.ui, %.pre743.i
  br i1 %i.uj, label %bb.fk, label %.invoke.i104

bb.fj:                                            ; preds = %bb.fl, %._crit_edge746.i
  %.pre-phi754.i.a = phi i64 [ %.pre753.i, %._crit_edge746.i ], [ %i.un, %bb.fl ]
  %.pre-phi752.i = phi i64 [ %.pre751.i, %._crit_edge746.i ], [ %i.um, %bb.fl ] ; 2 uses
  %i.uk = add i64 %.pre-phi754.i.a, %.sroa.039.0508.i ; 3 uses
  %i.ul = icmp ult i64 %i.uk, %.pre743.i
  br i1 %i.ul, label %bb.fm, label %.invoke.i104

bb.fk:                                            ; preds = %bb.fi
  %i.um = add i64 %.sroa.09.1.i1121498, 1         ; 2 uses
  %i.un = mul i64 %i.um, %i.pb                    ; 2 uses
  %i.uo = add i64 %i.un, %i.ru                    ; 3 uses
  %i.up = icmp ult i64 %i.uo, %.pre743.i
  br i1 %i.up, label %bb.fl, label %.invoke.i104

bb.fl:                                            ; preds = %bb.fk
  %i.uq = getelementptr inbounds nuw i8, ptr %.pre742.i, i64 %i.ui
  %i.ur = load i8, ptr %i.uq, align 1, !noalias !641, !noundef !3
  %i.us = getelementptr inbounds nuw i8, ptr %.pre742.i, i64 %i.uo
  %i.ut = load i8, ptr %i.us, align 1, !noalias !641, !noundef !3
  %i.uu = add i8 %i.ut, 1
  %i.uv = icmp eq i8 %i.ur, %i.uu
  br i1 %i.uv, label %._crit_edge1500, label %bb.fj

bb.fm:                                            ; preds = %bb.fj
  %i.uw = add i64 %i.ud, %i.ru                    ; 3 uses
  %i.ux = icmp ult i64 %i.uw, %.pre743.i
  br i1 %i.ux, label %bb.fn, label %.invoke.i104

bb.fn:                                            ; preds = %bb.fm
  %i.uy = getelementptr inbounds nuw i8, ptr %.pre742.i, i64 %i.uk
  %i.uz = load i8, ptr %i.uy, align 1, !noalias !641, !noundef !3
  %i.va = getelementptr inbounds nuw i8, ptr %.pre742.i, i64 %i.uw
  %i.vb = load i8, ptr %i.va, align 1, !noalias !641, !noundef !3
  %.not167.i116 = icmp ult i8 %i.uz, %i.vb
  br i1 %.not167.i116, label %._crit_edge1500, label %bb.fc

bb.fo:                                            ; preds = %_RNvXs0_NtNtCsiqiOkcJdymw_7similar10algorithms4hookINtB5_12NoFinishHookQIBN_QINtNtB7_7compact7CompactINtNtB9_4text12TextDiffSideeEB1A_INtNtB7_7replace7ReplaceNtNtB7_7capture7CaptureEEEENtB5_8DiffHook5equalCskXhPDodhyTq_6mdtest.exit.i137, %_RNvXs0_NtNtCsiqiOkcJdymw_7similar10algorithms4hookINtB5_12NoFinishHookQIBN_QINtNtB7_7compact7CompactINtNtB9_4text12TextDiffSideeEB1A_INtNtB7_7replace7ReplaceNtNtB7_7capture7CaptureEEEENtB5_8DiffHook6deleteCskXhPDodhyTq_6mdtest.exit.i118, %_RNvXs0_NtNtCsiqiOkcJdymw_7similar10algorithms4hookINtB5_12NoFinishHookQIBN_QINtNtB7_7compact7CompactINtNtB9_4text12TextDiffSideeEB1A_INtNtB7_7replace7ReplaceNtNtB7_7capture7CaptureEEEENtB5_8DiffHook6insertCskXhPDodhyTq_6mdtest.exit.i128
  %.sroa.039.3.i = phi i64 [ %.sroa.039.0508.i, %_RNvXs0_NtNtCsiqiOkcJdymw_7similar10algorithms4hookINtB5_12NoFinishHookQIBN_QINtNtB7_7compact7CompactINtNtB9_4text12TextDiffSideeEB1A_INtNtB7_7replace7ReplaceNtNtB7_7capture7CaptureEEEENtB5_8DiffHook6deleteCskXhPDodhyTq_6mdtest.exit.i118 ], [ %.sroa.039.1.lcssa.i, %_RNvXs0_NtNtCsiqiOkcJdymw_7similar10algorithms4hookINtB5_12NoFinishHookQIBN_QINtNtB7_7compact7CompactINtNtB9_4text12TextDiffSideeEB1A_INtNtB7_7replace7ReplaceNtNtB7_7capture7CaptureEEEENtB5_8DiffHook6insertCskXhPDodhyTq_6mdtest.exit.i128 ], [ %.sroa.039.4.lcssa.i, %_RNvXs0_NtNtCsiqiOkcJdymw_7similar10algorithms4hookINtB5_12NoFinishHookQIBN_QINtNtB7_7compact7CompactINtNtB9_4text12TextDiffSideeEB1A_INtNtB7_7replace7ReplaceNtNtB7_7capture7CaptureEEEENtB5_8DiffHook5equalCskXhPDodhyTq_6mdtest.exit.i137 ] ; 5 uses
  %.sroa.09.3.i122 = phi i64 [ %.sroa.09.1.lcssa.i117, %_RNvXs0_NtNtCsiqiOkcJdymw_7similar10algorithms4hookINtB5_12NoFinishHookQIBN_QINtNtB7_7compact7CompactINtNtB9_4text12TextDiffSideeEB1A_INtNtB7_7replace7ReplaceNtNtB7_7capture7CaptureEEEENtB5_8DiffHook6deleteCskXhPDodhyTq_6mdtest.exit.i118 ], [ %.sroa.09.0509.i, %_RNvXs0_NtNtCsiqiOkcJdymw_7similar10algorithms4hookINtB5_12NoFinishHookQIBN_QINtNtB7_7compact7CompactINtNtB9_4text12TextDiffSideeEB1A_INtNtB7_7replace7ReplaceNtNtB7_7capture7CaptureEEEENtB5_8DiffHook6insertCskXhPDodhyTq_6mdtest.exit.i128 ], [ %.sroa.09.4.lcssa.i136, %_RNvXs0_NtNtCsiqiOkcJdymw_7similar10algorithms4hookINtB5_12NoFinishHookQIBN_QINtNtB7_7compact7CompactINtNtB9_4text12TextDiffSideeEB1A_INtNtB7_7replace7ReplaceNtNtB7_7capture7CaptureEEEENtB5_8DiffHook5equalCskXhPDodhyTq_6mdtest.exit.i137 ] ; 5 uses
  %i.vc = icmp ult i64 %.sroa.09.3.i122, %i.fp    ; 2 uses
  %i.vd = icmp ult i64 %.sroa.039.3.i, %i.fq      ; 3 uses
  %or.cond.i123 = select i1 %i.vc, i1 %i.vd, i1 false
  br i1 %or.cond.i123, label %.lr.ph511.i, label %._crit_edge512.i

._crit_edge498.i:                                 ; preds = %bb.fy, %bb.fx, %bb.fu, %.preheader.i135
  %.sroa.039.4.lcssa.i = phi i64 [ %.sroa.039.0508.i, %.preheader.i135 ], [ %i.wg, %bb.fy ], [ %.sroa.039.4495.i, %bb.fu ], [ %.sroa.039.4495.i, %bb.fx ]
  %.sroa.09.4.lcssa.i136 = phi i64 [ %.sroa.09.0509.i, %.preheader.i135 ], [ %i.we, %bb.fy ], [ %.sroa.09.4496.i, %bb.fu ], [ %.sroa.09.4496.i, %bb.fx ] ; 2 uses
  %i.ve = sub i64 %.sroa.09.4.lcssa.i136, %.sroa.09.0509.i
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val51) ]
  %i.vf = load ptr, ptr %.val51, align 8, !alias.scope !652, !noalias !641, !nonnull !3, !align !5, !noundef !3 ; 3 uses
  %i.vg = getelementptr inbounds nuw i8, ptr %i.vf, i64 120 ; 2 uses
  %i.vh = getelementptr inbounds nuw i8, ptr %i.vf, i64 136 ; 2 uses
  %i.vi = load i64, ptr %i.vh, align 8, !alias.scope !653, !noalias !641, !noundef !3 ; 3 uses
  %i.vj = load i64, ptr %i.vg, align 8, !range !6, !alias.scope !653, !noalias !641, !noundef !3
  %i.vk = icmp eq i64 %i.vi, %i.vj
  br i1 %i.vk, label %bb.fp, label %_RNvXs0_NtNtCsiqiOkcJdymw_7similar10algorithms4hookINtB5_12NoFinishHookQIBN_QINtNtB7_7compact7CompactINtNtB9_4text12TextDiffSideeEB1A_INtNtB7_7replace7ReplaceNtNtB7_7capture7CaptureEEEENtB5_8DiffHook5equalCskXhPDodhyTq_6mdtest.exit.i137

bb.fp:                                            ; preds = %._crit_edge498.i
  invoke void @_RNvMs3_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecNtNtCsiqiOkcJdymw_7similar5types6DiffOpE8grow_oneBP_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.vg)
          to label %_RNvXs0_NtNtCsiqiOkcJdymw_7similar10algorithms4hookINtB5_12NoFinishHookQIBN_QINtNtB7_7compact7CompactINtNtB9_4text12TextDiffSideeEB1A_INtNtB7_7replace7ReplaceNtNtB7_7capture7CaptureEEEENtB5_8DiffHook5equalCskXhPDodhyTq_6mdtest.exit.i137 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i88.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !641

_RNvXs0_NtNtCsiqiOkcJdymw_7similar10algorithms4hookINtB5_12NoFinishHookQIBN_QINtNtB7_7compact7CompactINtNtB9_4text12TextDiffSideeEB1A_INtNtB7_7replace7ReplaceNtNtB7_7capture7CaptureEEEENtB5_8DiffHook5equalCskXhPDodhyTq_6mdtest.exit.i137: ; preds = %bb.fp, %._crit_edge498.i
  %i.vl = getelementptr inbounds nuw i8, ptr %i.vf, i64 128
  %i.vm = load ptr, ptr %i.vl, align 8, !alias.scope !653, !noalias !641, !nonnull !3, !noundef !3
  %i.vn = getelementptr inbounds nuw [40 x i8], ptr %i.vm, i64 %i.vi ; 4 uses
  store i64 0, ptr %i.vn, align 8, !noalias !641
  %.sroa.4.0..sroa_idx.i138 = getelementptr inbounds nuw i8, ptr %i.vn, i64 8
  store i64 %i.qq, ptr %.sroa.4.0..sroa_idx.i138, align 8, !noalias !641
  %.sroa.5.0..sroa_idx.i139 = getelementptr inbounds nuw i8, ptr %i.vn, i64 16
  store i64 %i.qr, ptr %.sroa.5.0..sroa_idx.i139, align 8, !noalias !641
  %.sroa.6.0..sroa_idx.i140 = getelementptr inbounds nuw i8, ptr %i.vn, i64 24
  store i64 %i.ve, ptr %.sroa.6.0..sroa_idx.i140, align 8, !noalias !641
  %i.vo = add i64 %i.vi, 1
  store i64 %i.vo, ptr %i.vh, align 8, !alias.scope !653, !noalias !641
  br label %bb.fo

.lr.ph497.i:                                      ; preds = %.preheader.i135, %bb.fy
  %.sroa.09.4496.i = phi i64 [ %i.we, %bb.fy ], [ %.sroa.09.0509.i, %.preheader.i135 ] ; 5 uses
  %.sroa.039.4495.i = phi i64 [ %i.wg, %bb.fy ], [ %.sroa.039.0508.i, %.preheader.i135 ] ; 6 uses
  %i.vp = and i64 %.sroa.039.4495.i, 1023
  %i.vq = icmp eq i64 %i.vp, 0
  %or.cond180.i141 = select i1 %.sroa.05.0.not510.i, i1 %i.vq, i1 false
  br i1 %or.cond180.i141, label %bb.fr, label %bb.fq

bb.fq:                                            ; preds = %bb.fs, %.lr.ph497.i
  %i.vr = mul i64 %.sroa.09.4496.i, %i.pb
  %i.vs = add i64 %.sroa.039.4495.i, %invariant.op.i92 ; 2 uses
  %i.vt = icmp ult i64 %i.vs, %i.q
  br i1 %i.vt, label %bb.ft, label %.invoke.i104

bb.fr:                                            ; preds = %.lr.ph497.i
  %i.vu = invoke noundef zeroext i1 @_RNvNtCsiqiOkcJdymw_7similar16deadline_support17deadline_exceeded(i64 %9, i32 noundef range(i32 -1, 1000000000) %10)
          to label %bb.fs unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i88.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !641

bb.fs:                                            ; preds = %bb.fr
  br i1 %i.vu, label %.loopexit24.i124, label %bb.fq

bb.ft:                                            ; preds = %bb.fq
  %i.vv = add i64 %.sroa.09.4496.i, %invariant.op485.i ; 2 uses
  %i.vw = icmp ult i64 %i.vv, %i.w
  br i1 %i.vw, label %bb.fu, label %.invoke.i104

bb.fu:                                            ; preds = %bb.ft
  %i.vx = getelementptr inbounds nuw [8 x i8], ptr %i.s, i64 %i.vs
  %i.vy = getelementptr inbounds nuw [8 x i8], ptr %i.y, i64 %i.vv
  %.val206.i142 = load i64, ptr %i.vx, align 8, !noalias !641, !noundef !3
  %.val207.i143 = load i64, ptr %i.vy, align 8, !noalias !641, !noundef !3
  %i.vz = icmp eq i64 %.val206.i142, %.val207.i143
  br i1 %i.vz, label %bb.fv, label %._crit_edge498.i

bb.fv:                                            ; preds = %bb.fu
  %i.wa = add i64 %i.vr, %.sroa.039.4495.i        ; 3 uses
  %i.wb = load ptr, ptr %i.pl, align 8, !noalias !641, !nonnull !3, !noundef !3 ; 2 uses
  %i.wc = load i64, ptr %i.pm, align 8, !noalias !641, !noundef !3 ; 4 uses
  %i.wd = icmp ult i64 %i.wa, %i.wc
  br i1 %i.wd, label %bb.fw, label %.invoke.i104

bb.fw:                                            ; preds = %bb.fv
  %i.we = add nuw i64 %.sroa.09.4496.i, 1         ; 4 uses
  %i.wf = mul i64 %i.we, %i.pb
  %i.wg = add nuw i64 %.sroa.039.4495.i, 1        ; 4 uses
  %i.wh = add i64 %i.wg, %i.wf                    ; 3 uses
  %i.wi = icmp ult i64 %i.wh, %i.wc
  br i1 %i.wi, label %bb.fx, label %.invoke.i104

bb.fx:                                            ; preds = %bb.fw
  %i.wj = getelementptr inbounds nuw i8, ptr %i.wb, i64 %i.wa
  %i.wk = load i8, ptr %i.wj, align 1, !noalias !641, !noundef !3
  %i.wl = getelementptr inbounds nuw i8, ptr %i.wb, i64 %i.wh
  %i.wm = load i8, ptr %i.wl, align 1, !noalias !641, !noundef !3
  %i.wn = add i8 %i.wm, 1
  %i.wo = icmp eq i8 %i.wk, %i.wn
  br i1 %i.wo, label %bb.fy, label %._crit_edge498.i

bb.fy:                                            ; preds = %bb.fx
  %i.wp = icmp ult i64 %i.we, %i.fp
  %i.wq = icmp ult i64 %i.wg, %i.fq
  %or.cond177.i144 = and i1 %i.wp, %i.wq
  br i1 %or.cond177.i144, label %.lr.ph497.i, label %._crit_edge498.i

.loopexit24.i124:                                 ; preds = %bb.gb, %bb.gd, %bb.eg, %bb.ff, %bb.es, %bb.fs, %bb.go
  invoke void @_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCskXhPDodhyTq_6mdtest(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.b)
          to label %_RINvNtNtCsiqiOkcJdymw_7similar10algorithms5myers27maybe_emit_small_side_exactINtNtB4_5utils12OffsetLookupjEB1d_INtNtB4_4hook12NoFinishHookQIB1M_QINtNtB4_7compact7CompactINtNtB6_4text12TextDiffSideeEB2H_INtNtB4_7replace7ReplaceNtNtB4_7capture7CaptureEEEEECskXhPDodhyTq_6mdtest.exit unwind label %bb.fz, !noalias !641

bb.fz:                                            ; preds = %.loopexit24.i124
  %i.wr = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCskXhPDodhyTq_6mdtest(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.b)
          to label %common.resume unwind label %bb.ga, !noalias !641

bb.ga:                                            ; preds = %bb.fz
  %i.ws = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #13, !noalias !641
  unreachable

bb.gb:                                            ; preds = %.lr.ph484.split.i
  br i1 %i.po, label %.loopexit24.i124, label %.lr.ph.i145

.lr.ph.i145:                                      ; preds = %bb.gb
  %i.wt = mul i64 %i.pn, %i.pb                    ; 2 uses
  %i.wu = mul i64 %.sroa.0102.0483.i, %i.pb       ; 2 uses
  %.reass486.i = add i64 %i.pn, %invariant.op485.i ; 3 uses
  %i.wv = icmp ult i64 %.reass486.i, %i.w
  %i.ww = getelementptr inbounds nuw [8 x i8], ptr %i.y, i64 %.reass486.i
  %.fr.i146 = freeze i1 %i.wv
  br i1 %.fr.i146, label %.lr.ph.split.us.i149, label %.lr.ph.split.i147

.lr.ph.split.us.i149:                             ; preds = %.lr.ph.i145, %bb.gm
  %.sroa.0105.0432.us.i150 = phi i64 [ %i.wx, %bb.gm ], [ %i.fq, %.lr.ph.i145 ] ; 3 uses
  %i.wx = add i64 %.sroa.0105.0432.us.i150, -1    ; 6 uses
  %i.wy = and i64 %i.wx, 1023
  %i.wz = icmp eq i64 %i.wy, 0
  br i1 %i.wz, label %bb.gc, label %bb.ge

bb.gc:                                            ; preds = %.lr.ph.split.us.i149
  %i.xa = invoke noundef zeroext i1 @_RNvNtCsiqiOkcJdymw_7similar16deadline_support17deadline_exceeded(i64 %9, i32 noundef range(i32 -1, 1000000000) %10)
          to label %bb.gd unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i88.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !641

bb.gd:                                            ; preds = %bb.gc
end_hunk_3
begin_hunk_4_@_RINvNtNtCsiqiOkcJdymw_7similar10algorithms5myers7conquerINtNtB4_5utils12OffsetLookupjEBS_INtNtB4_4hook12NoFinishHookQIB1q_QINtNtB4_7compact7CompactINtNtB6_4text12TextDiffSideeEB2l_INtNtB4_7replace7ReplaceNtNtB4_7capture7CaptureEEEEECskXhPDodhyTq_6mdtest:bb.a
bb.gn:                                            ; preds = %.lr.ph.split.i147
  %i.yd = invoke noundef zeroext i1 @_RNvNtCsiqiOkcJdymw_7similar16deadline_support17deadline_exceeded(i64 %9, i32 noundef range(i32 -1, 1000000000) %10)
          to label %bb.go unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i88.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !641

bb.go:                                            ; preds = %bb.gn
  br i1 %i.yd, label %.loopexit24.i124, label %bb.gp

bb.gp:                                            ; preds = %bb.go, %.lr.ph.split.i147
  %.reass.i148 = add i64 %invariant.op.i92, %i.ya ; 2 uses
  %i.ye = icmp ult i64 %.reass.i148, %i.q
  br i1 %i.ye, label %bb.gq, label %.invoke.i104

bb.gq:                                            ; preds = %bb.gp
  br label %.invoke.i104

bb.gr:                                            ; preds = %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i88.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp
  %i.yf = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #13, !noalias !641
  unreachable

_RINvNtNtCsiqiOkcJdymw_7similar10algorithms5myers27maybe_emit_small_side_exactINtNtB4_5utils12OffsetLookupjEB1d_INtNtB4_4hook12NoFinishHookQIB1M_QINtNtB4_7compact7CompactINtNtB6_4text12TextDiffSideeEB2H_INtNtB4_7replace7ReplaceNtNtB4_7capture7CaptureEEEEECskXhPDodhyTq_6mdtest.exit: ; preds = %.loopexit24.i124
  call void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCskXhPDodhyTq_6mdtest(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.b), !noalias !641
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !641
  br label %_RINvNtNtCsiqiOkcJdymw_7similar10algorithms5myers27maybe_emit_small_side_exactINtNtB4_5utils12OffsetLookupjEB1d_INtNtB4_4hook12NoFinishHookQIB1M_QINtNtB4_7compact7CompactINtNtB6_4text12TextDiffSideeEB2H_INtNtB4_7replace7ReplaceNtNtB4_7capture7CaptureEEEEECskXhPDodhyTq_6mdtest.exit.thread

_RINvNtNtCsiqiOkcJdymw_7similar10algorithms5myers27maybe_emit_small_side_exactINtNtB4_5utils12OffsetLookupjEB1d_INtNtB4_4hook12NoFinishHookQIB1M_QINtNtB4_7compact7CompactINtNtB6_4text12TextDiffSideeEB2H_INtNtB4_7replace7ReplaceNtNtB4_7capture7CaptureEEEEECskXhPDodhyTq_6mdtest.exit.thread: ; preds = %bb.az, %bb.dw, %bb.bc, %bb.ba, %bb.ay, %.sink.split.i, %_RINvNtNtCsiqiOkcJdymw_7similar10algorithms5myers27maybe_emit_small_side_exactINtNtB4_5utils12OffsetLookupjEB1d_INtNtB4_4hook12NoFinishHookQIB1M_QINtNtB4_7compact7CompactINtNtB6_4text12TextDiffSideeEB2H_INtNtB4_7replace7ReplaceNtNtB4_7capture7CaptureEEEEECskXhPDodhyTq_6mdtest.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  call fastcc void @_RINvNtNtCsiqiOkcJdymw_7similar10algorithms5myers17find_middle_snakeINtNtB4_5utils12OffsetLookupjEB13_ECskXhPDodhyTq_6mdtest(ptr noalias noundef align 8 captures(none) dereferenceable(24) %i.g, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) %1, i64 noundef %.sroa.0.0, i64 noundef %i.l, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) %4, i64 noundef %.sroa.0195.0, i64 noundef %i.m, ptr noalias noundef align 8 dereferenceable(32) %7, ptr noalias noundef align 8 dereferenceable(32) %8, i64 %9, i32 noundef %10)
  %i.yg = load i64, ptr %i.g, align 8, !range !8, !noundef !3
  %i.yh = trunc nuw i64 %i.yg to i1
  br i1 %i.yh, label %bb.gs, label %bb.gt

bb.gs:                                            ; preds = %_RINvNtNtCsiqiOkcJdymw_7similar10algorithms5myers27maybe_emit_small_side_exactINtNtB4_5utils12OffsetLookupjEB1d_INtNtB4_4hook12NoFinishHookQIB1M_QINtNtB4_7compact7CompactINtNtB6_4text12TextDiffSideeEB2H_INtNtB4_7replace7ReplaceNtNtB4_7capture7CaptureEEEEECskXhPDodhyTq_6mdtest.exit.thread
  %i.yi = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %i.yj = load i64, ptr %i.yi, align 8, !noundef !3 ; 2 uses
  %i.yk = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  %i.yl = load i64, ptr %i.yk, align 8, !noundef !3 ; 2 uses
  call fastcc void @_RINvNtNtCsiqiOkcJdymw_7similar10algorithms5myers7conquerINtNtB4_5utils12OffsetLookupjEBS_INtNtB4_4hook12NoFinishHookQIB1q_QINtNtB4_7compact7CompactINtNtB6_4text12TextDiffSideeEB2l_INtNtB4_7replace7ReplaceNtNtB4_7capture7CaptureEEEEECskXhPDodhyTq_6mdtest(ptr noalias noundef align 8 dereferenceable(8) %0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) %1, i64 noundef %.sroa.0.0, i64 noundef %i.yj, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) %4, i64 noundef %.sroa.0195.0, i64 noundef %i.yl, ptr noalias noundef align 8 dereferenceable(32) %7, ptr noalias noundef align 8 dereferenceable(32) %8, i64 %9, i32 noundef %10)
  call fastcc void @_RINvNtNtCsiqiOkcJdymw_7similar10algorithms5myers7conquerINtNtB4_5utils12OffsetLookupjEBS_INtNtB4_4hook12NoFinishHookQIB1q_QINtNtB4_7compact7CompactINtNtB6_4text12TextDiffSideeEB2l_INtNtB4_7replace7ReplaceNtNtB4_7capture7CaptureEEEEECskXhPDodhyTq_6mdtest(ptr noalias noundef align 8 dereferenceable(8) %0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) %1, i64 noundef %i.yj, i64 noundef %i.l, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) %4, i64 noundef %i.yl, i64 noundef %i.m, ptr noalias noundef align 8 dereferenceable(32) %7, ptr noalias noundef align 8 dereferenceable(32) %8, i64 %9, i32 noundef %10)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  br label %bb.av

bb.gt:                                            ; preds = %_RINvNtNtCsiqiOkcJdymw_7similar10algorithms5myers27maybe_emit_small_side_exactINtNtB4_5utils12OffsetLookupjEB1d_INtNtB4_4hook12NoFinishHookQIB1M_QINtNtB4_7compact7CompactINtNtB6_4text12TextDiffSideeEB2H_INtNtB4_7replace7ReplaceNtNtB4_7capture7CaptureEEEEECskXhPDodhyTq_6mdtest.exit.thread
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  %i.ym = sub nuw i64 %i.l, %.sroa.0.0
  call void @llvm.experimental.noalias.scope.decl(metadata !654)
  call void @llvm.experimental.noalias.scope.decl(metadata !655)
  %i.yn = load ptr, ptr %0, align 8, !alias.scope !656, !nonnull !3, !align !5, !noundef !3 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !657)
  call void @llvm.experimental.noalias.scope.decl(metadata !658), !noalias !656
  %i.yo = load ptr, ptr %i.yn, align 8, !alias.scope !659, !noalias !656, !nonnull !3, !align !5, !noundef !3 ; 3 uses
  %i.yp = getelementptr inbounds nuw i8, ptr %i.yo, i64 120 ; 2 uses
  %i.yq = getelementptr inbounds nuw i8, ptr %i.yo, i64 136 ; 2 uses
  %i.yr = load i64, ptr %i.yq, align 8, !alias.scope !660, !noalias !661, !noundef !3 ; 3 uses
  %i.ys = load i64, ptr %i.yp, align 8, !range !6, !alias.scope !660, !noalias !661, !noundef !3
  %i.yt = icmp eq i64 %i.yr, %i.ys
  br i1 %i.yt, label %bb.gu, label %_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCsiqiOkcJdymw_7similar5types6DiffOpE8push_mutCskXhPDodhyTq_6mdtest.exit159

bb.gu:                                            ; preds = %bb.gt
  call void @_RNvMs3_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecNtNtCsiqiOkcJdymw_7similar5types6DiffOpE8grow_oneBP_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.yp), !noalias !662
  br label %_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCsiqiOkcJdymw_7similar5types6DiffOpE8push_mutCskXhPDodhyTq_6mdtest.exit159

_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCsiqiOkcJdymw_7similar5types6DiffOpE8push_mutCskXhPDodhyTq_6mdtest.exit159: ; preds = %bb.gt, %bb.gu
  %i.yu = getelementptr inbounds nuw i8, ptr %i.yo, i64 128
  %i.yv = load ptr, ptr %i.yu, align 8, !alias.scope !660, !noalias !661, !nonnull !3, !noundef !3
  %i.yw = getelementptr inbounds nuw [40 x i8], ptr %i.yv, i64 %i.yr ; 4 uses
  store i64 1, ptr %i.yw, align 8, !noalias !661
  %.sroa.4256.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.yw, i64 8
  store i64 %.sroa.0.0, ptr %.sroa.4256.0..sroa_idx, align 8, !noalias !661
  %.sroa.5257.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.yw, i64 16
  store i64 %i.ym, ptr %.sroa.5257.0..sroa_idx, align 8, !noalias !661
  %.sroa.6258.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.yw, i64 24
  store i64 %.sroa.0195.0, ptr %.sroa.6258.0..sroa_idx, align 8, !noalias !661
  %i.yx = add i64 %i.yr, 1
  store i64 %i.yx, ptr %i.yq, align 8, !alias.scope !660, !noalias !661
  %i.yy = sub nuw i64 %i.m, %.sroa.0195.0
  call void @llvm.experimental.noalias.scope.decl(metadata !663)
  call void @llvm.experimental.noalias.scope.decl(metadata !664), !noalias !665
  %i.yz = load ptr, ptr %i.yn, align 8, !alias.scope !666, !noalias !665, !nonnull !3, !align !5, !noundef !3 ; 3 uses
  %i.za = getelementptr inbounds nuw i8, ptr %i.yz, i64 120 ; 2 uses
  %i.zb = getelementptr inbounds nuw i8, ptr %i.yz, i64 136 ; 2 uses
  %i.zc = load i64, ptr %i.zb, align 8, !alias.scope !667, !noalias !668, !noundef !3 ; 3 uses
  %i.zd = load i64, ptr %i.za, align 8, !range !6, !alias.scope !667, !noalias !668, !noundef !3
  %i.ze = icmp eq i64 %i.zc, %i.zd
  br i1 %i.ze, label %bb.gv, label %_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCsiqiOkcJdymw_7similar5types6DiffOpE8push_mutCskXhPDodhyTq_6mdtest.exit160

bb.gv:                                            ; preds = %_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCsiqiOkcJdymw_7similar5types6DiffOpE8push_mutCskXhPDodhyTq_6mdtest.exit159
  call void @_RNvMs3_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecNtNtCsiqiOkcJdymw_7similar5types6DiffOpE8grow_oneBP_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.za), !noalias !669
  br label %_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCsiqiOkcJdymw_7similar5types6DiffOpE8push_mutCskXhPDodhyTq_6mdtest.exit160

_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCsiqiOkcJdymw_7similar5types6DiffOpE8push_mutCskXhPDodhyTq_6mdtest.exit160: ; preds = %_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCsiqiOkcJdymw_7similar5types6DiffOpE8push_mutCskXhPDodhyTq_6mdtest.exit159, %bb.gv
  %i.zf = getelementptr inbounds nuw i8, ptr %i.yz, i64 128
  %i.zg = load ptr, ptr %i.zf, align 8, !alias.scope !667, !noalias !668, !nonnull !3, !noundef !3
  %i.zh = getelementptr inbounds nuw [40 x i8], ptr %i.zg, i64 %i.zc ; 4 uses
  store i64 2, ptr %i.zh, align 8, !noalias !668
  %.sroa.4271.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.zh, i64 8
  store i64 %.sroa.0.0, ptr %.sroa.4271.0..sroa_idx, align 8, !noalias !668
  %.sroa.5272.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.zh, i64 16
  store i64 %.sroa.0195.0, ptr %.sroa.5272.0..sroa_idx, align 8, !noalias !668
  %.sroa.6273.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.zh, i64 24
  store i64 %i.yy, ptr %.sroa.6273.0..sroa_idx, align 8, !noalias !668
  %i.zi = add i64 %i.zc, 1
  store i64 %i.zi, ptr %i.zb, align 8, !alias.scope !667, !noalias !668
  br label %bb.av

.thread:                                          ; preds = %bb.au
  %i.zj = sub nuw i64 %i.m, %.sroa.0195.0
  call void @llvm.experimental.noalias.scope.decl(metadata !670)
  call void @llvm.experimental.noalias.scope.decl(metadata !671)
  %i.zk = load ptr, ptr %0, align 8, !alias.scope !672, !nonnull !3, !align !5, !noundef !3
  call void @llvm.experimental.noalias.scope.decl(metadata !673)
  call void @llvm.experimental.noalias.scope.decl(metadata !674), !noalias !672
  %i.zl = load ptr, ptr %i.zk, align 8, !alias.scope !675, !noalias !672, !nonnull !3, !align !5, !noundef !3 ; 3 uses
  %i.zm = getelementptr inbounds nuw i8, ptr %i.zl, i64 120 ; 2 uses
  %i.zn = getelementptr inbounds nuw i8, ptr %i.zl, i64 136 ; 2 uses
  %i.zo = load i64, ptr %i.zn, align 8, !alias.scope !676, !noalias !677, !noundef !3 ; 3 uses
  %i.zp = load i64, ptr %i.zm, align 8, !range !6, !alias.scope !676, !noalias !677, !noundef !3
  %i.zq = icmp eq i64 %i.zo, %i.zp
  br i1 %i.zq, label %bb.gw, label %_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCsiqiOkcJdymw_7similar5types6DiffOpE8push_mutCskXhPDodhyTq_6mdtest.exit161

bb.gw:                                            ; preds = %.thread
  call void @_RNvMs3_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecNtNtCsiqiOkcJdymw_7similar5types6DiffOpE8grow_oneBP_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.zm), !noalias !678
  br label %_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCsiqiOkcJdymw_7similar5types6DiffOpE8push_mutCskXhPDodhyTq_6mdtest.exit161

_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCsiqiOkcJdymw_7similar5types6DiffOpE8push_mutCskXhPDodhyTq_6mdtest.exit161: ; preds = %.thread, %bb.gw
  %i.zr = getelementptr inbounds nuw i8, ptr %i.zl, i64 128
  %i.zs = load ptr, ptr %i.zr, align 8, !alias.scope !676, !noalias !677, !nonnull !3, !noundef !3
  %i.zt = getelementptr inbounds nuw [40 x i8], ptr %i.zs, i64 %i.zo ; 4 uses
  store i64 2, ptr %i.zt, align 8, !noalias !677
  %.sroa.4266.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.zt, i64 8
  store i64 %.sroa.0.0, ptr %.sroa.4266.0..sroa_idx, align 8, !noalias !677
  %.sroa.5267.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.zt, i64 16
  store i64 %.sroa.0195.0, ptr %.sroa.5267.0..sroa_idx, align 8, !noalias !677
  %.sroa.6268.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.zt, i64 24
  store i64 %i.zj, ptr %.sroa.6268.0..sroa_idx, align 8, !noalias !677
  %i.zu = add i64 %i.zo, 1
  store i64 %i.zu, ptr %i.zn, align 8, !alias.scope !676, !noalias !677
  br label %bb.av

bb.gx:                                            ; preds = %bb.av
  call void @llvm.experimental.noalias.scope.decl(metadata !679)
  call void @llvm.experimental.noalias.scope.decl(metadata !680)
  %i.zv = load ptr, ptr %0, align 8, !alias.scope !681, !nonnull !3, !align !5, !noundef !3
  call void @llvm.experimental.noalias.scope.decl(metadata !682)
  call void @llvm.experimental.noalias.scope.decl(metadata !683), !noalias !681
  %i.zw = load ptr, ptr %i.zv, align 8, !alias.scope !684, !noalias !681, !nonnull !3, !align !5, !noundef !3 ; 3 uses
  %i.zx = getelementptr inbounds nuw i8, ptr %i.zw, i64 120 ; 2 uses
  %i.zy = getelementptr inbounds nuw i8, ptr %i.zw, i64 136 ; 2 uses
  %i.zz = load i64, ptr %i.zy, align 8, !alias.scope !685, !noalias !686, !noundef !3 ; 3 uses
  %i.aaa = load i64, ptr %i.zx, align 8, !range !6, !alias.scope !685, !noalias !686, !noundef !3
  %i.aab = icmp eq i64 %i.zz, %i.aaa
  br i1 %i.aab, label %bb.gy, label %_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCsiqiOkcJdymw_7similar5types6DiffOpE8push_mutCskXhPDodhyTq_6mdtest.exit162

bb.gy:                                            ; preds = %bb.gx
  call void @_RNvMs3_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecNtNtCsiqiOkcJdymw_7similar5types6DiffOpE8grow_oneBP_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.zx), !noalias !687
  br label %_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCsiqiOkcJdymw_7similar5types6DiffOpE8push_mutCskXhPDodhyTq_6mdtest.exit162

_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCsiqiOkcJdymw_7similar5types6DiffOpE8push_mutCskXhPDodhyTq_6mdtest.exit162: ; preds = %bb.gx, %bb.gy
  %i.aac = getelementptr inbounds nuw i8, ptr %i.zw, i64 128
  %i.aad = load ptr, ptr %i.aac, align 8, !alias.scope !685, !noalias !686, !nonnull !3, !noundef !3
  %i.aae = getelementptr inbounds nuw [40 x i8], ptr %i.aad, i64 %i.zz ; 4 uses
  store i64 0, ptr %i.aae, align 8, !noalias !686
  %.sroa.4236.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.aae, i64 8
  store i64 %i.l, ptr %.sroa.4236.0..sroa_idx, align 8, !noalias !686
  %.sroa.5237.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.aae, i64 16
  store i64 %i.m, ptr %.sroa.5237.0..sroa_idx, align 8, !noalias !686
  %.sroa.6238.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.aae, i64 24
  store i64 %i.k, ptr %.sroa.6238.0..sroa_idx, align 8, !noalias !686
  %i.aaf = add i64 %i.zz, 1
  store i64 %i.aaf, ptr %i.zy, align 8, !alias.scope !685, !noalias !686
  br label %bb.gz

bb.gz:                                            ; preds = %bb.av, %_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCsiqiOkcJdymw_7similar5types6DiffOpE8push_mutCskXhPDodhyTq_6mdtest.exit162
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtNtCsiqiOkcJdymw_7similar10algorithms5myers7conquerINtNtB4_5utils12OffsetLookupjEBS_INtNtB4_4hook12NoFinishHookQINtNtB4_7compact7CompactIBT_mEB2f_INtNtB4_7replace7ReplaceNtNtB4_7capture7CaptureEEEECskXhPDodhyTq_6mdtest(ptr noalias noundef nonnull align 8 dereferenceable(8) %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %1, i64 noundef %2, i64 noundef %3, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %4, i64 noundef %5, i64 noundef %6, ptr noalias noundef nonnull align 8 dereferenceable(32) %7, ptr noalias noundef nonnull align 8 dereferenceable(32) %8, i64 %9, i32 noundef range(i32 -1, 1000000000) %10) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = alloca [24 x i8], align 8                ; 11 uses
  %i.c = alloca [24 x i8], align 8                ; 6 uses
  %i.d = alloca [24 x i8], align 8                ; 11 uses
  %i.e = alloca [32 x i8], align 8                ; 6 uses
  %i.f = alloca [32 x i8], align 8                ; 6 uses
  %i.g = alloca [24 x i8], align 8                ; 7 uses
  %i.h = tail call noundef i64 @_RINvNtNtCsiqiOkcJdymw_7similar10algorithms5utils17common_prefix_lenINtB2_12OffsetLookupjEB13_ECskXhPDodhyTq_6mdtest(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %1, i64 noundef %2, i64 noundef %3, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %4, i64 noundef %5, i64 noundef %6) ; 4 uses
  %.not = icmp eq i64 %i.h, 0
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCsiqiOkcJdymw_7similar5types6DiffOpE8push_mutCskXhPDodhyTq_6mdtest.exit, %bb.a
  %i.i = add i64 %i.h, %2                         ; 2 uses
  %i.j = add i64 %i.h, %5                         ; 2 uses
  %i.k = tail call noundef i64 @_RINvNtNtCsiqiOkcJdymw_7similar10algorithms5utils17common_suffix_lenINtB2_12OffsetLookupjEB13_ECskXhPDodhyTq_6mdtest(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %1, i64 noundef %i.i, i64 noundef %3, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %4, i64 noundef %i.j, i64 noundef %6) ; 4 uses
  %i.l = sub i64 %3, %i.k                         ; 9 uses
  %i.m = sub i64 %6, %i.k                         ; 9 uses
  %i.n = getelementptr inbounds nuw i8, ptr %4, i64 24
  %i.o = load i64, ptr %i.n, align 8              ; 8 uses
  %i.p = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.q = load i64, ptr %i.p, align 8              ; 27 uses
  %i.r = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.s = load ptr, ptr %i.r, align 8, !nonnull !3 ; 11 uses
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.u = load i64, ptr %i.t, align 8              ; 5 uses
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.w = load i64, ptr %i.v, align 8              ; 23 uses
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.y = load ptr, ptr %i.x, align 8, !nonnull !3 ; 10 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.f, i64 8 ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %i.ab = getelementptr inbounds nuw i8, ptr %i.f, i64 24
  %i.ac = getelementptr inbounds nuw i8, ptr %i.e, i64 8 ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  %i.ae = getelementptr inbounds nuw i8, ptr %i.e, i64 24
  br label %bb.e

bb.c:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !809)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !810)
  %i.af = load ptr, ptr %0, align 8, !alias.scope !811, !nonnull !3, !align !5, !noundef !3 ; 3 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 120 ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %i.af, i64 136 ; 2 uses
  %i.ai = load i64, ptr %i.ah, align 8, !alias.scope !812, !noalias !811, !noundef !3 ; 3 uses
  %i.aj = load i64, ptr %i.ag, align 8, !range !6, !alias.scope !812, !noalias !811, !noundef !3
  %i.ak = icmp eq i64 %i.ai, %i.aj
  br i1 %i.ak, label %bb.d, label %_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCsiqiOkcJdymw_7similar5types6DiffOpE8push_mutCskXhPDodhyTq_6mdtest.exit

bb.d:                                             ; preds = %bb.c
  tail call void @_RNvMs3_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecNtNtCsiqiOkcJdymw_7similar5types6DiffOpE8grow_oneBP_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.ag), !noalias !813
  br label %_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCsiqiOkcJdymw_7similar5types6DiffOpE8push_mutCskXhPDodhyTq_6mdtest.exit

_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCsiqiOkcJdymw_7similar5types6DiffOpE8push_mutCskXhPDodhyTq_6mdtest.exit: ; preds = %bb.c, %bb.d
  %i.al = getelementptr inbounds nuw i8, ptr %i.af, i64 128
  %i.am = load ptr, ptr %i.al, align 8, !alias.scope !812, !noalias !811, !nonnull !3, !noundef !3
  %i.an = getelementptr inbounds nuw [40 x i8], ptr %i.am, i64 %i.ai ; 4 uses
  store i64 0, ptr %i.an, align 8, !noalias !811
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.an, i64 8
  store i64 %2, ptr %.sroa.4.0..sroa_idx, align 8, !noalias !811
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.an, i64 16
  store i64 %5, ptr %.sroa.5.0..sroa_idx, align 8, !noalias !811
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.an, i64 24
  store i64 %i.h, ptr %.sroa.6.0..sroa_idx, align 8, !noalias !811
  %i.ao = add i64 %i.ai, 1
  store i64 %i.ao, ptr %i.ah, align 8, !alias.scope !812, !noalias !811
  br label %bb.b

bb.e:                                             ; preds = %_RINvNtNtCsiqiOkcJdymw_7similar10algorithms5myers21try_emit_front_anchorINtNtB4_5utils12OffsetLookupjEB17_INtNtB4_4hook12NoFinishHookQINtNtB4_7compact7CompactIB18_mEB2v_INtNtB4_7replace7ReplaceNtNtB4_7capture7CaptureEEEECskXhPDodhyTq_6mdtest.exit, %bb.b
  %.sroa.0188.0 = phi i64 [ %i.j, %bb.b ], [ %.sroa.0188.2, %_RINvNtNtCsiqiOkcJdymw_7similar10algorithms5myers21try_emit_front_anchorINtNtB4_5utils12OffsetLookupjEB17_INtNtB4_4hook12NoFinishHookQINtNtB4_7compact7CompactIB18_mEB2v_INtNtB4_7replace7ReplaceNtNtB4_7capture7CaptureEEEECskXhPDodhyTq_6mdtest.exit ] ; 36 uses
  %.sroa.0.0 = phi i64 [ %i.i, %bb.b ], [ %.sroa.0.2, %_RINvNtNtCsiqiOkcJdymw_7similar10algorithms5myers21try_emit_front_anchorINtNtB4_5utils12OffsetLookupjEB17_INtNtB4_4hook12NoFinishHookQINtNtB4_7compact7CompactIB18_mEB2v_INtNtB4_7replace7ReplaceNtNtB4_7capture7CaptureEEEECskXhPDodhyTq_6mdtest.exit ] ; 33 uses
  %i.ap = icmp ult i64 %.sroa.0.0, %i.l           ; 2 uses
  %i.aq = icmp ult i64 %.sroa.0188.0, %i.m        ; 3 uses
  %or.cond305 = select i1 %i.ap, i1 %i.aq, i1 false
  br i1 %or.cond305, label %bb.g, label %bb.f

bb.f:                                             ; preds = %_RINvNtNtCsiqiOkcJdymw_7similar10algorithms5myers21try_emit_front_anchorINtNtB4_5utils12OffsetLookupjEB17_INtNtB4_4hook12NoFinishHookQINtNtB4_7compact7CompactIB18_mEB2v_INtNtB4_7replace7ReplaceNtNtB4_7capture7CaptureEEEECskXhPDodhyTq_6mdtest.exit, %bb.e
  br i1 %i.ap, label %bb.at, label %bb.au

bb.g:                                             ; preds = %bb.e
  %i.ar = sub nuw i64 %i.l, %.sroa.0.0            ; 5 uses
  %i.as = sub nuw i64 %i.m, %.sroa.0188.0         ; 6 uses
  %i.at = icmp ult i64 %i.ar, 97
  %i.au = icmp ult i64 %i.as, 97
  %or.cond.i = or i1 %i.au, %i.at
  br i1 %or.cond.i, label %_RINvNtNtCsiqiOkcJdymw_7similar10algorithms5myers21try_emit_front_anchorINtNtB4_5utils12OffsetLookupjEB17_INtNtB4_4hook12NoFinishHookQINtNtB4_7compact7CompactIB18_mEB2v_INtNtB4_7replace7ReplaceNtNtB4_7capture7CaptureEEEECskXhPDodhyTq_6mdtest.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %.sroa.0.0.i53 = call noundef i64 @llvm.umin.i64(i64 %i.as, i64 %i.ar) ; 2 uses
  %.sroa.0.0.i54 = call noundef i64 @llvm.umax.i64(i64 %i.as, i64 %i.ar)
  %i.av = shl nuw i64 %.sroa.0.0.i53, 1
  %i.aw = icmp slt i64 %.sroa.0.0.i53, 0
  br i1 %i.aw, label %bb.i, label %bb.j, !prof !7

bb.i:                                             ; preds = %bb.h
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %.sroa.052.0.i = phi i64 [ -1, %bb.i ], [ %i.av, %bb.h ]
  %i.ax = icmp ult i64 %.sroa.0.0.i54, %.sroa.052.0.i
  br i1 %i.ax, label %_RINvNtNtCsiqiOkcJdymw_7similar10algorithms5myers21try_emit_front_anchorINtNtB4_5utils12OffsetLookupjEB17_INtNtB4_4hook12NoFinishHookQINtNtB4_7compact7CompactIB18_mEB2v_INtNtB4_7replace7ReplaceNtNtB4_7capture7CaptureEEEECskXhPDodhyTq_6mdtest.exit, label %bb.k

bb.k:                                             ; preds = %bb.j
  %.not.i = icmp ule i64 %i.as, %i.ar
  %i.ay = icmp ule i64 %i.ar, %i.as
  %.not.i.fr = freeze i1 %.not.i
  %i.az = sub i64 %.sroa.0188.0, %i.o             ; 2 uses
  %i.ba = icmp ult i64 %i.az, %i.q
  %i.bb = getelementptr inbounds nuw [8 x i8], ptr %i.s, i64 %i.az
  br label %bb.l

.loopexit:                                        ; preds = %.outer, %bb.z, %bb.o, %bb.y
  %.sroa.525.2.i.ph.lcssa478 = phi i64 [ %.sroa.525.2.i.ph629, %bb.o ], [ %.sroa.525.2.i.ph629, %bb.z ], [ %.sroa.525.2.i.ph629, %bb.y ], [ %.sroa.525.3.i, %.outer ] ; 2 uses
  %.sroa.023.1.i.ph.lcssa471 = phi i64 [ %.sroa.023.1.i.ph630, %bb.o ], [ %.sroa.023.1.i.ph630, %bb.z ], [ %.sroa.023.1.i.ph630, %bb.y ], [ %.sroa.023.2.i, %.outer ] ; 2 uses
  %.sroa.9.2.i.ph.lcssa464 = phi i64 [ %.sroa.9.2.i.ph631, %bb.o ], [ %.sroa.9.2.i.ph631, %bb.z ], [ %.sroa.9.2.i.ph631, %bb.y ], [ %.sroa.9.3.i, %.outer ] ; 2 uses
  %.sroa.12.2.i.ph.lcssa457 = phi i64 [ %.sroa.12.2.i.ph632, %bb.o ], [ %.sroa.12.2.i.ph632, %bb.z ], [ %.sroa.12.2.i.ph632, %bb.y ], [ %.sroa.12.3.i, %.outer ] ; 2 uses
  %.not.i57 = icmp ugt i64 %spec.select306, 4
  %or.cond311 = or i1 %i.bc, %.not.i57
  br i1 %or.cond311, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k, %.loopexit
  %.sroa.12.0.i637 = phi i64 [ undef, %bb.k ], [ %.sroa.12.2.i.ph.lcssa457, %.loopexit ]
  %.sroa.9.0.i636 = phi i64 [ undef, %bb.k ], [ %.sroa.9.2.i.ph.lcssa464, %.loopexit ]
  %.sroa.023.0.i635 = phi i64 [ 0, %bb.k ], [ %.sroa.023.1.i.ph.lcssa471, %.loopexit ]
  %.sroa.525.0.i634 = phi i64 [ undef, %bb.k ], [ %.sroa.525.2.i.ph.lcssa478, %.loopexit ]
  %.sroa.0221.0633 = phi i64 [ 0, %bb.k ], [ %spec.select306, %.loopexit ] ; 11 uses
  %i.bc = icmp eq i64 %.sroa.0221.0633, 4         ; 2 uses
  %i.bd = add nuw nsw i64 %.sroa.0221.0633, 1
  %spec.select306 = select i1 %i.bc, i64 4, i64 %i.bd ; 2 uses
  %i.be = icmp eq i64 %.sroa.0221.0633, 0
  %i.bf = add i64 %.sroa.0221.0633, %.sroa.0.0    ; 2 uses
  %i.bg = sub i64 %i.bf, %i.u                     ; 5 uses
  %i.bh = icmp ult i64 %i.bg, %i.w                ; 2 uses
  %i.bi = getelementptr inbounds nuw [8 x i8], ptr %i.y, i64 %i.bg ; 2 uses
  %i.bj = sub i64 %i.l, %i.bf
  br label %.lr.ph

bb.m:                                             ; preds = %.loopexit
  %i.bk = trunc nuw i64 %.sroa.023.1.i.ph.lcssa471 to i1
  br i1 %i.bk, label %.loopexit388, label %_RINvNtNtCsiqiOkcJdymw_7similar10algorithms5myers21try_emit_front_anchorINtNtB4_5utils12OffsetLookupjEB17_INtNtB4_4hook12NoFinishHookQINtNtB4_7compact7CompactIB18_mEB2v_INtNtB4_7replace7ReplaceNtNtB4_7capture7CaptureEEEECskXhPDodhyTq_6mdtest.exit

.loopexit388:                                     ; preds = %bb.aa, %bb.m
  %.sroa.525.1.i = phi i64 [ %.sroa.525.2.i.ph.lcssa478, %bb.m ], [ %.sroa.0221.0633, %bb.aa ] ; 4 uses
  %.sroa.9.1.i = phi i64 [ %.sroa.9.2.i.ph.lcssa464, %bb.m ], [ %.us-phi541, %bb.aa ] ; 4 uses
  %.sroa.12.1.i = phi i64 [ %.sroa.12.2.i.ph.lcssa457, %bb.m ], [ %.sroa.01.0.i.lcssa, %bb.aa ] ; 3 uses
  %i.bl = icmp eq i64 %.sroa.525.1.i, 0
  %i.bm = icmp eq i64 %.sroa.9.1.i, 0             ; 2 uses
  br i1 %i.bl, label %bb.ai, label %bb.aj

.lr.ph.split.split:                               ; preds = %.lr.ph.split, %bb.o
  %.sroa.0222.0516 = phi i64 [ %spec.select308, %bb.o ], [ %.sroa.0222.0.ph628, %.lr.ph.split ] ; 3 uses
  %i.bn = icmp eq i64 %.sroa.0222.0516, 4         ; 3 uses
  %i.bo = add nuw nsw i64 %.sroa.0222.0516, 1
  %spec.select308 = select i1 %i.bn, i64 4, i64 %i.bo ; 3 uses
  %i.bp = call noundef zeroext i1 @_RNvNtCsiqiOkcJdymw_7similar16deadline_support17deadline_exceeded(i64 %9, i32 noundef range(i32 -1, 1000000000) %10), !noalias !814
  br i1 %i.bp, label %_RINvNtNtCsiqiOkcJdymw_7similar10algorithms5myers21try_emit_front_anchorINtNtB4_5utils12OffsetLookupjEB17_INtNtB4_4hook12NoFinishHookQINtNtB4_7compact7CompactIB18_mEB2v_INtNtB4_7replace7ReplaceNtNtB4_7capture7CaptureEEEECskXhPDodhyTq_6mdtest.exit, label %bb.n

bb.n:                                             ; preds = %.lr.ph.split.split
  %.not640 = icmp eq i64 %.sroa.0222.0516, 0
  br i1 %.not640, label %bb.p, label %bb.o

bb.o:                                             ; preds = %bb.n, %_RNvXs3_NtNtCsiqiOkcJdymw_7similar10algorithms5utilsINtB5_12OffsetLookupjEINtNtNtCs4NRVxsYgnAr_4core3ops5index5IndexjE5indexCskXhPDodhyTq_6mdtest.exit30
  %.not.i59 = icmp ugt i64 %spec.select308, 4
  %or.cond312 = select i1 %i.bn, i1 true, i1 %.not.i59
  br i1 %or.cond312, label %.loopexit, label %.lr.ph.split.split

bb.p:                                             ; preds = %bb.n
  br i1 %i.ba, label %_RNvXs3_NtNtCsiqiOkcJdymw_7similar10algorithms5utilsINtB5_12OffsetLookupjEINtNtNtCs4NRVxsYgnAr_4core3ops5index5IndexjE5indexCskXhPDodhyTq_6mdtest.exit31, label %.split.loopexit1085

.split.loopexit1085:                              ; preds = %bb.p
  %i.bq = sub i64 %.sroa.0188.0, %i.o
  br label %.split

.split:                                           ; preds = %bb.x, %.split.loopexit1085
  %.us-phi = phi i64 [ %i.bq, %.split.loopexit1085 ], [ %i.ch, %bb.x ]
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking18panic_bounds_check(i64 noundef %.us-phi, i64 noundef %i.q, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @79) #14, !noalias !815
  unreachable

_RNvXs3_NtNtCsiqiOkcJdymw_7similar10algorithms5utilsINtB5_12OffsetLookupjEINtNtNtCs4NRVxsYgnAr_4core3ops5index5IndexjE5indexCskXhPDodhyTq_6mdtest.exit31: ; preds = %bb.p
  br i1 %i.bh, label %_RNvXs3_NtNtCsiqiOkcJdymw_7similar10algorithms5utilsINtB5_12OffsetLookupjEINtNtNtCs4NRVxsYgnAr_4core3ops5index5IndexjE5indexCskXhPDodhyTq_6mdtest.exit30, label %.split526

.split526:                                        ; preds = %_RNvXs3_NtNtCsiqiOkcJdymw_7similar10algorithms5utilsINtB5_12OffsetLookupjEINtNtNtCs4NRVxsYgnAr_4core3ops5index5IndexjE5indexCskXhPDodhyTq_6mdtest.exit31, %_RNvXs3_NtNtCsiqiOkcJdymw_7similar10algorithms5utilsINtB5_12OffsetLookupjEINtNtNtCs4NRVxsYgnAr_4core3ops5index5IndexjE5indexCskXhPDodhyTq_6mdtest.exit31.us
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking18panic_bounds_check(i64 noundef %i.bg, i64 noundef %i.w, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @80) #14, !noalias !816
  unreachable

_RNvXs3_NtNtCsiqiOkcJdymw_7similar10algorithms5utilsINtB5_12OffsetLookupjEINtNtNtCs4NRVxsYgnAr_4core3ops5index5IndexjE5indexCskXhPDodhyTq_6mdtest.exit30: ; preds = %_RNvXs3_NtNtCsiqiOkcJdymw_7similar10algorithms5utilsINtB5_12OffsetLookupjEINtNtNtCs4NRVxsYgnAr_4core3ops5index5IndexjE5indexCskXhPDodhyTq_6mdtest.exit31
  %.val49 = load i64, ptr %i.bb, align 8, !noundef !3
  %.val50 = load i64, ptr %i.bi, align 8, !noundef !3
  %.not309 = icmp eq i64 %.val49, %.val50
  br i1 %.not309, label %.split530, label %bb.o

.split530.loopexit:                               ; preds = %_RNvXs3_NtNtCsiqiOkcJdymw_7similar10algorithms5utilsINtB5_12OffsetLookupjEINtNtNtCs4NRVxsYgnAr_4core3ops5index5IndexjE5indexCskXhPDodhyTq_6mdtest.exit30.us
  %.pre873 = sub i64 %i.m, %i.cg
  br label %.split530

.split530:                                        ; preds = %_RNvXs3_NtNtCsiqiOkcJdymw_7similar10algorithms5utilsINtB5_12OffsetLookupjEINtNtNtCs4NRVxsYgnAr_4core3ops5index5IndexjE5indexCskXhPDodhyTq_6mdtest.exit30, %.split530.loopexit
  %.pre-phi = phi i64 [ %.pre873, %.split530.loopexit ], [ %i.as, %_RNvXs3_NtNtCsiqiOkcJdymw_7similar10algorithms5utilsINtB5_12OffsetLookupjEINtNtNtCs4NRVxsYgnAr_4core3ops5index5IndexjE5indexCskXhPDodhyTq_6mdtest.exit30 ]
  %.us-phi536 = phi i64 [ %i.cg, %.split530.loopexit ], [ %.sroa.0188.0, %_RNvXs3_NtNtCsiqiOkcJdymw_7similar10algorithms5utilsINtB5_12OffsetLookupjEINtNtNtCs4NRVxsYgnAr_4core3ops5index5IndexjE5indexCskXhPDodhyTq_6mdtest.exit30 ]
  %.us-phi539 = phi i1 [ %i.cd, %.split530.loopexit ], [ %i.bn, %_RNvXs3_NtNtCsiqiOkcJdymw_7similar10algorithms5utilsINtB5_12OffsetLookupjEINtNtNtCs4NRVxsYgnAr_4core3ops5index5IndexjE5indexCskXhPDodhyTq_6mdtest.exit30 ]
  %.us-phi540 = phi i64 [ %spec.select308.us, %.split530.loopexit ], [ %spec.select308, %_RNvXs3_NtNtCsiqiOkcJdymw_7similar10algorithms5utilsINtB5_12OffsetLookupjEINtNtNtCs4NRVxsYgnAr_4core3ops5index5IndexjE5indexCskXhPDodhyTq_6mdtest.exit30 ] ; 2 uses
  %.us-phi541 = phi i64 [ %.sroa.0222.0516.us, %.split530.loopexit ], [ 0, %_RNvXs3_NtNtCsiqiOkcJdymw_7similar10algorithms5utilsINtB5_12OffsetLookupjEINtNtNtCs4NRVxsYgnAr_4core3ops5index5IndexjE5indexCskXhPDodhyTq_6mdtest.exit30 ] ; 6 uses
  %.sroa.0.0.i63 = call noundef i64 @llvm.umin.i64(i64 %.pre-phi, i64 %i.bj) ; 3 uses
  %.not641 = icmp eq i64 %.sroa.0.0.i63, 0
  br i1 %.not641, label %.outer, label %.lr.ph625

.lr.ph625:                                        ; preds = %.split530
  %i.br = sub i64 %.us-phi536, %i.o               ; 2 uses
  br label %bb.q

bb.q:                                             ; preds = %.lr.ph625, %bb.v
  %.sroa.01.0.i624 = phi i64 [ 0, %.lr.ph625 ], [ %i.cb, %bb.v ] ; 5 uses
  %i.bs = and i64 %.sroa.01.0.i624, 1023
  %i.bt = icmp eq i64 %i.bs, 0
  br i1 %i.bt, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  %i.bu = call noundef zeroext i1 @_RNvNtCsiqiOkcJdymw_7similar16deadline_support17deadline_exceeded(i64 %9, i32 noundef range(i32 -1, 1000000000) %10), !noalias !814
  br i1 %i.bu, label %_RINvNtNtCsiqiOkcJdymw_7similar10algorithms5myers21try_emit_front_anchorINtNtB4_5utils12OffsetLookupjEB17_INtNtB4_4hook12NoFinishHookQINtNtB4_7compact7CompactIB18_mEB2v_INtNtB4_7replace7ReplaceNtNtB4_7capture7CaptureEEEECskXhPDodhyTq_6mdtest.exit, label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.q
  %i.bv = add nuw i64 %i.br, %.sroa.01.0.i624     ; 2 uses
  %i.bw = icmp ult i64 %i.bv, %i.q
  br i1 %i.bw, label %_RNvXs3_NtNtCsiqiOkcJdymw_7similar10algorithms5utilsINtB5_12OffsetLookupjEINtNtNtCs4NRVxsYgnAr_4core3ops5index5IndexjE5indexCskXhPDodhyTq_6mdtest.exit29, label %bb.t

bb.t:                                             ; preds = %bb.s
  %umax = call i64 @llvm.umax.i64(i64 %i.q, i64 %i.br)
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking18panic_bounds_check(i64 noundef %umax, i64 noundef %i.q, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @81) #14, !noalias !817
  unreachable
end_hunk_4
begin_hunk_5_@_RINvNtNtCsiqiOkcJdymw_7similar10algorithms5myers7conquerINtNtB4_5utils12OffsetLookupjEBS_INtNtB4_4hook12NoFinishHookQINtNtB4_7compact7CompactIBT_mEB2f_INtNtB4_7replace7ReplaceNtNtB4_7capture7CaptureEEEECskXhPDodhyTq_6mdtest:bb.a
  store i64 2, ptr %i.du, align 8, !noalias !825
  %.sroa.4264.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.du, i64 8
  store i64 %.sroa.0.0, ptr %.sroa.4264.0..sroa_idx, align 8, !noalias !825
  %.sroa.5265.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.du, i64 16
  store i64 %.sroa.0188.0, ptr %.sroa.5265.0..sroa_idx, align 8, !noalias !825
  %.sroa.6266.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.du, i64 24
  store i64 %.sroa.9.1.i, ptr %.sroa.6266.0..sroa_idx, align 8, !noalias !825
  %i.dv = add i64 %i.dp, 1                        ; 2 uses
  store i64 %i.dv, ptr %i.do, align 8, !alias.scope !824, !noalias !825
  br label %bb.ak

bb.ao:                                            ; preds = %bb.aj
  call void @llvm.experimental.noalias.scope.decl(metadata !827)
  call void @llvm.experimental.noalias.scope.decl(metadata !828), !noalias !820
  %i.dw = load ptr, ptr %0, align 8, !alias.scope !829, !noalias !820, !nonnull !3, !align !5, !noundef !3 ; 4 uses
  %i.dx = getelementptr inbounds nuw i8, ptr %i.dw, i64 120 ; 2 uses
  %i.dy = getelementptr inbounds nuw i8, ptr %i.dw, i64 136 ; 2 uses
  %i.dz = load i64, ptr %i.dy, align 8, !alias.scope !830, !noalias !831, !noundef !3 ; 3 uses
  %i.ea = load i64, ptr %i.dx, align 8, !range !6, !alias.scope !830, !noalias !831, !noundef !3
  %i.eb = icmp eq i64 %i.dz, %i.ea
  br i1 %i.eb, label %bb.ap, label %_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCsiqiOkcJdymw_7similar5types6DiffOpE8push_mutCskXhPDodhyTq_6mdtest.exit68

bb.ap:                                            ; preds = %bb.ao
  call void @_RNvMs3_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecNtNtCsiqiOkcJdymw_7similar5types6DiffOpE8grow_oneBP_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.dx), !noalias !832
  br label %_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCsiqiOkcJdymw_7similar5types6DiffOpE8push_mutCskXhPDodhyTq_6mdtest.exit68

_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCsiqiOkcJdymw_7similar5types6DiffOpE8push_mutCskXhPDodhyTq_6mdtest.exit68: ; preds = %bb.ao, %bb.ap
  %i.ec = getelementptr inbounds nuw i8, ptr %i.dw, i64 128
  %i.ed = load ptr, ptr %i.ec, align 8, !alias.scope !830, !noalias !831, !nonnull !3, !noundef !3
  %i.ee = getelementptr inbounds nuw [40 x i8], ptr %i.ed, i64 %i.dz ; 4 uses
  store i64 1, ptr %i.ee, align 8, !noalias !831
  %.sroa.4249.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ee, i64 8
  store i64 %.sroa.0.0, ptr %.sroa.4249.0..sroa_idx, align 8, !noalias !831
  %.sroa.5250.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ee, i64 16
  store i64 %.sroa.525.1.i, ptr %.sroa.5250.0..sroa_idx, align 8, !noalias !831
  %.sroa.6251.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ee, i64 24
  store i64 %.sroa.0188.0, ptr %.sroa.6251.0..sroa_idx, align 8, !noalias !831
  %i.ef = add i64 %i.dz, 1                        ; 2 uses
  store i64 %i.ef, ptr %i.dy, align 8, !alias.scope !830, !noalias !831
  br label %bb.ak

bb.aq:                                            ; preds = %bb.aj
  call void @llvm.experimental.noalias.scope.decl(metadata !833)
  call void @llvm.experimental.noalias.scope.decl(metadata !834), !noalias !820
  %i.eg = load ptr, ptr %0, align 8, !alias.scope !835, !noalias !820, !nonnull !3, !align !5, !noundef !3 ; 4 uses
  %i.eh = getelementptr inbounds nuw i8, ptr %i.eg, i64 120 ; 4 uses
  %i.ei = getelementptr inbounds nuw i8, ptr %i.eg, i64 136 ; 3 uses
  %i.ej = load i64, ptr %i.ei, align 8, !alias.scope !836, !noalias !837, !noundef !3 ; 4 uses
  %i.ek = load i64, ptr %i.eh, align 8, !range !6, !alias.scope !836, !noalias !837, !noundef !3
  %i.el = icmp eq i64 %i.ej, %i.ek
  br i1 %i.el, label %bb.ar, label %_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCsiqiOkcJdymw_7similar5types6DiffOpE8push_mutCskXhPDodhyTq_6mdtest.exit69

bb.ar:                                            ; preds = %bb.aq
  call void @_RNvMs3_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecNtNtCsiqiOkcJdymw_7similar5types6DiffOpE8grow_oneBP_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.eh), !noalias !838
  br label %_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCsiqiOkcJdymw_7similar5types6DiffOpE8push_mutCskXhPDodhyTq_6mdtest.exit69

_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCsiqiOkcJdymw_7similar5types6DiffOpE8push_mutCskXhPDodhyTq_6mdtest.exit69: ; preds = %bb.aq, %bb.ar
  %i.em = getelementptr inbounds nuw i8, ptr %i.eg, i64 128 ; 2 uses
  %i.en = load ptr, ptr %i.em, align 8, !alias.scope !836, !noalias !837, !nonnull !3, !noundef !3
  %i.eo = getelementptr inbounds nuw [40 x i8], ptr %i.en, i64 %i.ej ; 4 uses
  store i64 1, ptr %i.eo, align 8, !noalias !837
  %.sroa.4269.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.eo, i64 8
  store i64 %.sroa.0.0, ptr %.sroa.4269.0..sroa_idx, align 8, !noalias !837
  %.sroa.5270.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.eo, i64 16
  store i64 %.sroa.525.1.i, ptr %.sroa.5270.0..sroa_idx, align 8, !noalias !837
  %.sroa.6271.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.eo, i64 24
  store i64 %.sroa.0188.0, ptr %.sroa.6271.0..sroa_idx, align 8, !noalias !837
  %i.ep = add i64 %i.ej, 1                        ; 3 uses
  store i64 %i.ep, ptr %i.ei, align 8, !alias.scope !836, !noalias !837
  %i.eq = load i64, ptr %i.eh, align 8, !range !6, !alias.scope !839, !noalias !837, !noundef !3
  %i.er = icmp eq i64 %i.ep, %i.eq
  br i1 %i.er, label %bb.as, label %_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCsiqiOkcJdymw_7similar5types6DiffOpE8push_mutCskXhPDodhyTq_6mdtest.exit70

bb.as:                                            ; preds = %_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCsiqiOkcJdymw_7similar5types6DiffOpE8push_mutCskXhPDodhyTq_6mdtest.exit69
  call void @_RNvMs3_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecNtNtCsiqiOkcJdymw_7similar5types6DiffOpE8grow_oneBP_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.eh), !noalias !840
  br label %_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCsiqiOkcJdymw_7similar5types6DiffOpE8push_mutCskXhPDodhyTq_6mdtest.exit70

_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCsiqiOkcJdymw_7similar5types6DiffOpE8push_mutCskXhPDodhyTq_6mdtest.exit70: ; preds = %_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCsiqiOkcJdymw_7similar5types6DiffOpE8push_mutCskXhPDodhyTq_6mdtest.exit69, %bb.as
  %i.es = load ptr, ptr %i.em, align 8, !alias.scope !839, !noalias !837, !nonnull !3, !noundef !3
  %i.et = getelementptr inbounds nuw [40 x i8], ptr %i.es, i64 %i.ep ; 4 uses
  store i64 2, ptr %i.et, align 8, !noalias !837
  %.sroa.4274.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.et, i64 8
  store i64 %.sroa.0.0, ptr %.sroa.4274.0..sroa_idx, align 8, !noalias !837
  %.sroa.5275.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.et, i64 16
  store i64 %.sroa.0188.0, ptr %.sroa.5275.0..sroa_idx, align 8, !noalias !837
  %.sroa.6276.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.et, i64 24
  store i64 %.sroa.9.1.i, ptr %.sroa.6276.0..sroa_idx, align 8, !noalias !837
  %i.eu = add i64 %i.ej, 2                        ; 2 uses
  store i64 %i.eu, ptr %i.ei, align 8, !alias.scope !839, !noalias !837
  br label %bb.ak

_RINvNtNtCsiqiOkcJdymw_7similar10algorithms5myers21try_emit_front_anchorINtNtB4_5utils12OffsetLookupjEB17_INtNtB4_4hook12NoFinishHookQINtNtB4_7compact7CompactIB18_mEB2v_INtNtB4_7replace7ReplaceNtNtB4_7capture7CaptureEEEECskXhPDodhyTq_6mdtest.exit: ; preds = %.lr.ph.split.split.us, %.lr.ph.split.split, %.lr.ph.split.us, %bb.r, %bb.g, %bb.j, %bb.m, %_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCsiqiOkcJdymw_7similar5types6DiffOpE8push_mutCskXhPDodhyTq_6mdtest.exit66
  %.sroa.0188.2 = phi i64 [ %.sroa.0188.0, %bb.g ], [ %.sroa.0188.0, %bb.j ], [ %.sroa.0188.0, %bb.m ], [ %i.dm, %_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCsiqiOkcJdymw_7similar5types6DiffOpE8push_mutCskXhPDodhyTq_6mdtest.exit66 ], [ %.sroa.0188.0, %.lr.ph.split.split ], [ %.sroa.0188.0, %.lr.ph.split.us ], [ %.sroa.0188.0, %bb.r ], [ %.sroa.0188.0, %.lr.ph.split.split.us ] ; 2 uses
  %.sroa.0.2 = phi i64 [ %.sroa.0.0, %bb.g ], [ %.sroa.0.0, %bb.j ], [ %.sroa.0.0, %bb.m ], [ %i.dl, %_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCsiqiOkcJdymw_7similar5types6DiffOpE8push_mutCskXhPDodhyTq_6mdtest.exit66 ], [ %.sroa.0.0, %.lr.ph.split.split ], [ %.sroa.0.0, %.lr.ph.split.us ], [ %.sroa.0.0, %bb.r ], [ %.sroa.0.0, %.lr.ph.split.split.us ] ; 2 uses
  %i.ev = icmp eq i64 %.sroa.0.2, %.sroa.0.0
  %i.ew = icmp eq i64 %.sroa.0188.2, %.sroa.0188.0
  %or.cond = select i1 %i.ev, i1 %i.ew, i1 false
  br i1 %or.cond, label %bb.f, label %bb.e

bb.at:                                            ; preds = %bb.f
  br i1 %i.aq, label %bb.ay, label %bb.aw

bb.au:                                            ; preds = %bb.f
  br i1 %i.aq, label %.thread, label %bb.av

bb.av:                                            ; preds = %.sink.split.i.thread, %_RINvNtNtCsiqiOkcJdymw_7similar10algorithms5myers27maybe_emit_small_side_exactINtNtB4_5utils12OffsetLookupjEB1d_INtNtB4_4hook12NoFinishHookQINtNtB4_7compact7CompactIB1e_mEB2B_INtNtB4_7replace7ReplaceNtNtB4_7capture7CaptureEEEECskXhPDodhyTq_6mdtest.exit.thread302, %_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCsiqiOkcJdymw_7similar5types6DiffOpE8push_mutCskXhPDodhyTq_6mdtest.exit71, %_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCsiqiOkcJdymw_7similar5types6DiffOpE8push_mutCskXhPDodhyTq_6mdtest.exit154, %_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCsiqiOkcJdymw_7similar5types6DiffOpE8push_mutCskXhPDodhyTq_6mdtest.exit153, %bb.gs, %bb.au
  %.not26 = icmp eq i64 %i.k, 0
  br i1 %.not26, label %bb.gz, label %bb.gx

bb.aw:                                            ; preds = %bb.at
  %i.ex = sub nuw i64 %i.l, %.sroa.0.0
  call void @llvm.experimental.noalias.scope.decl(metadata !841)
  call void @llvm.experimental.noalias.scope.decl(metadata !842)
  %i.ey = load ptr, ptr %0, align 8, !alias.scope !843, !nonnull !3, !align !5, !noundef !3 ; 3 uses
  %i.ez = getelementptr inbounds nuw i8, ptr %i.ey, i64 120 ; 2 uses
  %i.fa = getelementptr inbounds nuw i8, ptr %i.ey, i64 136 ; 2 uses
  %i.fb = load i64, ptr %i.fa, align 8, !alias.scope !844, !noalias !843, !noundef !3 ; 3 uses
  %i.fc = load i64, ptr %i.ez, align 8, !range !6, !alias.scope !844, !noalias !843, !noundef !3
  %i.fd = icmp eq i64 %i.fb, %i.fc
  br i1 %i.fd, label %bb.ax, label %_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCsiqiOkcJdymw_7similar5types6DiffOpE8push_mutCskXhPDodhyTq_6mdtest.exit71

bb.ax:                                            ; preds = %bb.aw
  call void @_RNvMs3_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecNtNtCsiqiOkcJdymw_7similar5types6DiffOpE8grow_oneBP_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.ez), !noalias !845
  br label %_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCsiqiOkcJdymw_7similar5types6DiffOpE8push_mutCskXhPDodhyTq_6mdtest.exit71

_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCsiqiOkcJdymw_7similar5types6DiffOpE8push_mutCskXhPDodhyTq_6mdtest.exit71: ; preds = %bb.aw, %bb.ax
  %i.fe = getelementptr inbounds nuw i8, ptr %i.ey, i64 128
  %i.ff = load ptr, ptr %i.fe, align 8, !alias.scope !844, !noalias !843, !nonnull !3, !noundef !3
  %i.fg = getelementptr inbounds nuw [40 x i8], ptr %i.ff, i64 %i.fb ; 4 uses
  store i64 1, ptr %i.fg, align 8, !noalias !843
  %.sroa.4244.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.fg, i64 8
  store i64 %.sroa.0.0, ptr %.sroa.4244.0..sroa_idx, align 8, !noalias !843
  %.sroa.5245.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.fg, i64 16
  store i64 %i.ex, ptr %.sroa.5245.0..sroa_idx, align 8, !noalias !843
  %.sroa.6246.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.fg, i64 24
  store i64 %.sroa.0188.0, ptr %.sroa.6246.0..sroa_idx, align 8, !noalias !843
  %i.fh = add i64 %i.fb, 1
  store i64 %i.fh, ptr %i.fa, align 8, !alias.scope !844, !noalias !843
  br label %bb.av

bb.ay:                                            ; preds = %bb.at
  %i.fi = call noundef zeroext i1 @_RNvNtCsiqiOkcJdymw_7similar16deadline_support17deadline_exceeded(i64 %9, i32 noundef range(i32 -1, 1000000000) %10), !noalias !846
  br i1 %i.fi, label %_RINvNtNtCsiqiOkcJdymw_7similar10algorithms5myers27maybe_emit_small_side_exactINtNtB4_5utils12OffsetLookupjEB1d_INtNtB4_4hook12NoFinishHookQINtNtB4_7compact7CompactIB1e_mEB2B_INtNtB4_7replace7ReplaceNtNtB4_7capture7CaptureEEEECskXhPDodhyTq_6mdtest.exit.thread, label %bb.az

bb.az:                                            ; preds = %bb.ay
  %i.fj = sub nuw i64 %i.l, %.sroa.0.0            ; 22 uses
  %i.fk = sub nuw i64 %i.m, %.sroa.0188.0         ; 22 uses
  %i.fl = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %i.fj, i64 %i.fk) ; 2 uses
  %i.fm = extractvalue { i64, i1 } %i.fl, 1
  br i1 %i.fm, label %_RINvNtNtCsiqiOkcJdymw_7similar10algorithms5myers27maybe_emit_small_side_exactINtNtB4_5utils12OffsetLookupjEB1d_INtNtB4_4hook12NoFinishHookQINtNtB4_7compact7CompactIB1e_mEB2B_INtNtB4_7replace7ReplaceNtNtB4_7capture7CaptureEEEECskXhPDodhyTq_6mdtest.exit.thread, label %bb.ba, !prof !7

bb.ba:                                            ; preds = %bb.az
  %i.fn = extractvalue { i64, i1 } %i.fl, 0
  %.sroa.0.0.i73 = call noundef i64 @llvm.umax.i64(i64 %i.fk, i64 %i.fj)
  %.sroa.0.0.i72 = call noundef i64 @llvm.umin.i64(i64 %i.fk, i64 %i.fj)
  %i.fo = add i64 %.sroa.0.0.i72, -65
  %or.cond.i27 = icmp ult i64 %i.fo, -64
  %i.fp = icmp ult i64 %.sroa.0.0.i73, 512
  %or.cond1.i = or i1 %i.fp, %or.cond.i27
  %i.fq = icmp ugt i64 %i.fn, 64000000
  %or.cond3.i = select i1 %or.cond1.i, i1 true, i1 %i.fq
  br i1 %or.cond3.i, label %_RINvNtNtCsiqiOkcJdymw_7similar10algorithms5myers27maybe_emit_small_side_exactINtNtB4_5utils12OffsetLookupjEB1d_INtNtB4_4hook12NoFinishHookQINtNtB4_7compact7CompactIB1e_mEB2B_INtNtB4_7replace7ReplaceNtNtB4_7capture7CaptureEEEECskXhPDodhyTq_6mdtest.exit.thread, label %bb.bb

bb.bb:                                            ; preds = %bb.ba
  %.not.i28 = icmp ugt i64 %i.fj, %i.fk
  %.val51 = load ptr, ptr %0, align 8             ; 16 uses
  %i.fr = call noundef zeroext i1 @_RNvNtCsiqiOkcJdymw_7similar16deadline_support17deadline_exceeded(i64 %9, i32 noundef range(i32 -1, 1000000000) %10), !noalias !3 ; 2 uses
  br i1 %.not.i28, label %bb.bc, label %bb.dw

bb.bc:                                            ; preds = %bb.bb
  br i1 %i.fr, label %_RINvNtNtCsiqiOkcJdymw_7similar10algorithms5myers27maybe_emit_small_side_exactINtNtB4_5utils12OffsetLookupjEB1d_INtNtB4_4hook12NoFinishHookQINtNtB4_7compact7CompactIB1e_mEB2B_INtNtB4_7replace7ReplaceNtNtB4_7capture7CaptureEEEECskXhPDodhyTq_6mdtest.exit.thread, label %bb.bd

bb.bd:                                            ; preds = %bb.bc
  %i.fs = add i64 %i.fj, 1                        ; 11 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !847
  %i.ft = add nuw i64 %i.fk, 1
  %i.fu = mul i64 %i.fs, %i.ft                    ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !848)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !849
  call void @_RNvMs4_NtCscdodAO9FK5_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCskXhPDodhyTq_6mdtest(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.c, i64 noundef %i.fu, i1 noundef zeroext true, i64 noundef 1, i64 noundef 1), !noalias !849
  %i.fv = load i64, ptr %i.c, align 8, !range !8, !noalias !849, !noundef !3
  %i.fw = trunc nuw i64 %i.fv to i1
  %i.fx = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.fy = load i64, ptr %i.fx, align 8, !range !9, !noalias !849, !noundef !3 ; 2 uses
  %i.fz = getelementptr inbounds nuw i8, ptr %i.c, i64 16 ; 2 uses
  br i1 %i.fw, label %bb.be, label %.lr.ph469.i, !prof !7

bb.be:                                            ; preds = %bb.bd
  %i.ga = load i64, ptr %i.fz, align 8, !noalias !849
  call void @_RNvNtCscdodAO9FK5_5alloc7raw_vec12handle_error(i64 noundef %i.fy, i64 %i.ga) #14, !noalias !849
  unreachable

.lr.ph469.i:                                      ; preds = %bb.bd
  %i.gb = load ptr, ptr %i.fz, align 8, !noalias !849, !nonnull !3, !noundef !3
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !849
  store i64 %i.fy, ptr %i.d, align 8, !alias.scope !848, !noalias !847
  %i.gc = getelementptr inbounds nuw i8, ptr %i.d, i64 8 ; 7 uses
  store ptr %i.gb, ptr %i.gc, align 8, !alias.scope !848, !noalias !847
  %i.gd = getelementptr inbounds nuw i8, ptr %i.d, i64 16 ; 7 uses
  store i64 %i.fu, ptr %i.gd, align 8, !alias.scope !848, !noalias !847
  %invariant.op470.i = sub i64 %.sroa.0188.0, %i.o ; 3 uses
  %invariant.op.i = sub i64 %.sroa.0.0, %i.u      ; 3 uses
  br label %.lr.ph469.split.i

.lr.ph495.i:                                      ; preds = %..loopexit39_crit_edge.split.us.i
  %i.ge = getelementptr inbounds nuw i8, ptr %.val51, i64 120 ; 10 uses
  %i.gf = getelementptr inbounds nuw i8, ptr %.val51, i64 136 ; 6 uses
  %i.gg = getelementptr inbounds nuw i8, ptr %.val51, i64 128 ; 3 uses
  br label %bb.bf

.lr.ph469.split.i:                                ; preds = %.lr.ph469.i, %..loopexit39_crit_edge.split.us.i
  %.sroa.0102.0468.i = phi i64 [ %i.gh, %..loopexit39_crit_edge.split.us.i ], [ %i.fk, %.lr.ph469.i ] ; 2 uses
  %i.gh = add i64 %.sroa.0102.0468.i, -1          ; 4 uses
  %i.gi = invoke noundef zeroext i1 @_RNvNtCsiqiOkcJdymw_7similar16deadline_support17deadline_exceeded(i64 %9, i32 noundef range(i32 -1, 1000000000) %10)
          to label %bb.dh unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !847

._crit_edge496.i:                                 ; preds = %_RNvXs0_NtNtCsiqiOkcJdymw_7similar10algorithms4hookINtB5_12NoFinishHookQINtNtB7_7compact7CompactINtNtB7_5utils12OffsetLookupmEB1v_INtNtB7_7replace7ReplaceNtNtB7_7capture7CaptureEEENtB5_8DiffHook5equalCskXhPDodhyTq_6mdtest.exit.i
  br i1 %i.ld, label %bb.bg, label %bb.bi

bb.bf:                                            ; preds = %_RNvXs0_NtNtCsiqiOkcJdymw_7similar10algorithms4hookINtB5_12NoFinishHookQINtNtB7_7compact7CompactINtNtB7_5utils12OffsetLookupmEB1v_INtNtB7_7replace7ReplaceNtNtB7_7capture7CaptureEEENtB5_8DiffHook5equalCskXhPDodhyTq_6mdtest.exit.i, %.lr.ph495.i
  %.sroa.05.0.not494.i = phi i1 [ true, %.lr.ph495.i ], [ false, %_RNvXs0_NtNtCsiqiOkcJdymw_7similar10algorithms4hookINtB5_12NoFinishHookQINtNtB7_7compact7CompactINtNtB7_5utils12OffsetLookupmEB1v_INtNtB7_7replace7ReplaceNtNtB7_7capture7CaptureEEENtB5_8DiffHook5equalCskXhPDodhyTq_6mdtest.exit.i ] ; 3 uses
  %.sroa.09.0493.i = phi i64 [ 0, %.lr.ph495.i ], [ %.sroa.09.3.i, %_RNvXs0_NtNtCsiqiOkcJdymw_7similar10algorithms4hookINtB5_12NoFinishHookQINtNtB7_7compact7CompactINtNtB7_5utils12OffsetLookupmEB1v_INtNtB7_7replace7ReplaceNtNtB7_7capture7CaptureEEENtB5_8DiffHook5equalCskXhPDodhyTq_6mdtest.exit.i ] ; 13 uses
  %.sroa.038.0492.i = phi i64 [ 0, %.lr.ph495.i ], [ %.sroa.038.3.i, %_RNvXs0_NtNtCsiqiOkcJdymw_7similar10algorithms4hookINtB5_12NoFinishHookQINtNtB7_7compact7CompactINtNtB7_5utils12OffsetLookupmEB1v_INtNtB7_7replace7ReplaceNtNtB7_7capture7CaptureEEENtB5_8DiffHook5equalCskXhPDodhyTq_6mdtest.exit.i ] ; 18 uses
  %i.gj = and i64 %.sroa.038.0492.i, 1023
  %i.gk = icmp eq i64 %i.gj, 0
  %or.cond170.i = select i1 %.sroa.05.0.not494.i, i1 %i.gk, i1 false ; 2 uses
  br i1 %or.cond170.i, label %bb.bm, label %bb.bl

bb.bg:                                            ; preds = %._crit_edge496.i
  %i.gl = add i64 %.sroa.038.3.i, %.sroa.0.0      ; 2 uses
  %i.gm = sub nuw i64 %i.fj, %.sroa.038.3.i
  %i.gn = add i64 %.sroa.09.3.i, %.sroa.0188.0    ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val51) ]
  %i.go = load i64, ptr %i.ge, align 8, !range !6, !alias.scope !850, !noalias !847, !noundef !3
  %i.gp = icmp eq i64 %i.lb, %i.go
  br i1 %i.gp, label %bb.bh, label %_RNvXs0_NtNtCsiqiOkcJdymw_7similar10algorithms4hookINtB5_12NoFinishHookQINtNtB7_7compact7CompactINtNtB7_5utils12OffsetLookupmEB1v_INtNtB7_7replace7ReplaceNtNtB7_7capture7CaptureEEENtB5_8DiffHook6deleteCskXhPDodhyTq_6mdtest.exit181.i

bb.bh:                                            ; preds = %bb.bg
  invoke void @_RNvMs3_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecNtNtCsiqiOkcJdymw_7similar5types6DiffOpE8grow_oneBP_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.ge)
          to label %_RNvXs0_NtNtCsiqiOkcJdymw_7similar10algorithms4hookINtB5_12NoFinishHookQINtNtB7_7compact7CompactINtNtB7_5utils12OffsetLookupmEB1v_INtNtB7_7replace7ReplaceNtNtB7_7capture7CaptureEEENtB5_8DiffHook6deleteCskXhPDodhyTq_6mdtest.exit181.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !847

_RNvXs0_NtNtCsiqiOkcJdymw_7similar10algorithms4hookINtB5_12NoFinishHookQINtNtB7_7compact7CompactINtNtB7_5utils12OffsetLookupmEB1v_INtNtB7_7replace7ReplaceNtNtB7_7capture7CaptureEEENtB5_8DiffHook6deleteCskXhPDodhyTq_6mdtest.exit181.i: ; preds = %bb.bh, %bb.bg
  %i.gq = load ptr, ptr %i.gg, align 8, !alias.scope !850, !noalias !847, !nonnull !3, !noundef !3
  %i.gr = getelementptr inbounds nuw [40 x i8], ptr %i.gq, i64 %i.lb ; 4 uses
  store i64 1, ptr %i.gr, align 8, !noalias !847
  %.sroa.42.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.gr, i64 8
  store i64 %i.gl, ptr %.sroa.42.0..sroa_idx.i, align 8, !noalias !847
  %.sroa.53.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.gr, i64 16
  store i64 %i.gm, ptr %.sroa.53.0..sroa_idx.i, align 8, !noalias !847
  %.sroa.64.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.gr, i64 24
  store i64 %i.gn, ptr %.sroa.64.0..sroa_idx.i, align 8, !noalias !847
  %i.gs = add i64 %.sink1026.i, 2                 ; 2 uses
  store i64 %i.gs, ptr %i.gf, align 8, !alias.scope !850, !noalias !847
  br i1 %i.lc, label %bb.bj, label %.sink.split.i.thread

bb.bi:                                            ; preds = %._crit_edge496.i
  br i1 %i.lc, label %._crit_edge875, label %.sink.split.i.thread

._crit_edge875:                                   ; preds = %bb.bi
  %.pre876 = add i64 %.sroa.038.3.i, %.sroa.0.0
  %.pre878 = add i64 %.sroa.09.3.i, %.sroa.0188.0
  br label %bb.bj

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %bb.di, %bb.bm, %bb.bx, %bb.ck, %bb.cv, %bb.cx, %bb.by, %bb.cl, %.lr.ph469.split.i, %bb.dt, %.invoke.i, %bb.bk, %bb.bh
  %lpad.loopexit.split-lp1560 = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VechEECskXhPDodhyTq_6mdtest(ptr noalias noundef align 8 dereferenceable(24) %i.d) #15
          to label %common.resume unwind label %bb.dv, !noalias !847

bb.bj:                                            ; preds = %._crit_edge875, %_RNvXs0_NtNtCsiqiOkcJdymw_7similar10algorithms4hookINtB5_12NoFinishHookQINtNtB7_7compact7CompactINtNtB7_5utils12OffsetLookupmEB1v_INtNtB7_7replace7ReplaceNtNtB7_7capture7CaptureEEENtB5_8DiffHook6deleteCskXhPDodhyTq_6mdtest.exit181.i
  %.pre-phi879 = phi i64 [ %.pre878, %._crit_edge875 ], [ %i.gn, %_RNvXs0_NtNtCsiqiOkcJdymw_7similar10algorithms4hookINtB5_12NoFinishHookQINtNtB7_7compact7CompactINtNtB7_5utils12OffsetLookupmEB1v_INtNtB7_7replace7ReplaceNtNtB7_7capture7CaptureEEENtB5_8DiffHook6deleteCskXhPDodhyTq_6mdtest.exit181.i ]
  %.pre-phi877 = phi i64 [ %.pre876, %._crit_edge875 ], [ %i.gl, %_RNvXs0_NtNtCsiqiOkcJdymw_7similar10algorithms4hookINtB5_12NoFinishHookQINtNtB7_7compact7CompactINtNtB7_5utils12OffsetLookupmEB1v_INtNtB7_7replace7ReplaceNtNtB7_7capture7CaptureEEENtB5_8DiffHook6deleteCskXhPDodhyTq_6mdtest.exit181.i ]
  %i.gt = phi i64 [ %i.lb, %._crit_edge875 ], [ %i.gs, %_RNvXs0_NtNtCsiqiOkcJdymw_7similar10algorithms4hookINtB5_12NoFinishHookQINtNtB7_7compact7CompactINtNtB7_5utils12OffsetLookupmEB1v_INtNtB7_7replace7ReplaceNtNtB7_7capture7CaptureEEENtB5_8DiffHook6deleteCskXhPDodhyTq_6mdtest.exit181.i ] ; 3 uses
  %i.gu = sub nuw i64 %i.fk, %.sroa.09.3.i
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val51) ]
  %i.gv = load i64, ptr %i.ge, align 8, !range !6, !alias.scope !851, !noalias !847, !noundef !3
  %i.gw = icmp eq i64 %i.gt, %i.gv
  br i1 %i.gw, label %bb.bk, label %_RNvXs0_NtNtCsiqiOkcJdymw_7similar10algorithms4hookINtB5_12NoFinishHookQINtNtB7_7compact7CompactINtNtB7_5utils12OffsetLookupmEB1v_INtNtB7_7replace7ReplaceNtNtB7_7capture7CaptureEEENtB5_8DiffHook6insertCskXhPDodhyTq_6mdtest.exit182.i

bb.bk:                                            ; preds = %bb.bj
  invoke void @_RNvMs3_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecNtNtCsiqiOkcJdymw_7similar5types6DiffOpE8grow_oneBP_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.ge)
          to label %_RNvXs0_NtNtCsiqiOkcJdymw_7similar10algorithms4hookINtB5_12NoFinishHookQINtNtB7_7compact7CompactINtNtB7_5utils12OffsetLookupmEB1v_INtNtB7_7replace7ReplaceNtNtB7_7capture7CaptureEEENtB5_8DiffHook6insertCskXhPDodhyTq_6mdtest.exit182.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !847

_RNvXs0_NtNtCsiqiOkcJdymw_7similar10algorithms4hookINtB5_12NoFinishHookQINtNtB7_7compact7CompactINtNtB7_5utils12OffsetLookupmEB1v_INtNtB7_7replace7ReplaceNtNtB7_7capture7CaptureEEENtB5_8DiffHook6insertCskXhPDodhyTq_6mdtest.exit182.i: ; preds = %bb.bk, %bb.bj
  %i.gx = load ptr, ptr %i.gg, align 8, !alias.scope !851, !noalias !847, !nonnull !3, !noundef !3
  %i.gy = getelementptr inbounds nuw [40 x i8], ptr %i.gx, i64 %i.gt ; 4 uses
  store i64 2, ptr %i.gy, align 8, !noalias !847
  %.sroa.412.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.gy, i64 8
  store i64 %.pre-phi877, ptr %.sroa.412.0..sroa_idx.i, align 8, !noalias !847
  %.sroa.513.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.gy, i64 16
  store i64 %.pre-phi879, ptr %.sroa.513.0..sroa_idx.i, align 8, !noalias !847
  %.sroa.614.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.gy, i64 24
  store i64 %i.gu, ptr %.sroa.614.0..sroa_idx.i, align 8, !noalias !847
  %i.gz = add i64 %i.gt, 1
  store i64 %i.gz, ptr %i.gf, align 8, !alias.scope !851, !noalias !847
  br label %.sink.split.i.thread

.sink.split.i.thread:                             ; preds = %_RNvXs0_NtNtCsiqiOkcJdymw_7similar10algorithms4hookINtB5_12NoFinishHookQINtNtB7_7compact7CompactINtNtB7_5utils12OffsetLookupmEB1v_INtNtB7_7replace7ReplaceNtNtB7_7capture7CaptureEEENtB5_8DiffHook6deleteCskXhPDodhyTq_6mdtest.exit181.i, %bb.bi, %_RNvXs0_NtNtCsiqiOkcJdymw_7similar10algorithms4hookINtB5_12NoFinishHookQINtNtB7_7compact7CompactINtNtB7_5utils12OffsetLookupmEB1v_INtNtB7_7replace7ReplaceNtNtB7_7capture7CaptureEEENtB5_8DiffHook6insertCskXhPDodhyTq_6mdtest.exit182.i
  call fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VechEECskXhPDodhyTq_6mdtest(ptr noalias noundef align 8 dereferenceable(24) %i.d), !noalias !847
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !847
  br label %bb.av

.sink.split.i:                                    ; preds = %.loopexit24.i
  call void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCskXhPDodhyTq_6mdtest(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.d), !noalias !847
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !847
  br label %_RINvNtNtCsiqiOkcJdymw_7similar10algorithms5myers27maybe_emit_small_side_exactINtNtB4_5utils12OffsetLookupjEB1d_INtNtB4_4hook12NoFinishHookQINtNtB4_7compact7CompactIB1e_mEB2B_INtNtB4_7replace7ReplaceNtNtB4_7capture7CaptureEEEECskXhPDodhyTq_6mdtest.exit.thread

bb.bl:                                            ; preds = %bb.bn, %bb.bf
  %i.ha = mul i64 %.sroa.09.0493.i, %i.fs         ; 4 uses
  %i.hb = add i64 %.sroa.038.0492.i, %.sroa.0.0   ; 2 uses
  %i.hc = add i64 %.sroa.09.0493.i, %.sroa.0188.0 ; 7 uses
  %i.hd = sub i64 %i.hc, %i.o                     ; 3 uses
  %i.he = icmp ult i64 %i.hd, %i.q
  br i1 %i.he, label %bb.bo, label %.invoke.i

.invoke.i:                                        ; preds = %bb.dr, %bb.dp, %bb.dn, %bb.dm, %bb.dk, %bb.bu, %bb.bs, %bb.br, %bb.bq, %bb.bo, %bb.bl, %bb.ct, %bb.cr, %bb.cq, %bb.cp, %bb.cn, %bb.cg, %bb.ce, %bb.cd, %bb.cc, %bb.ca, %bb.cz, %bb.cw, %bb.dc, %bb.db, %bb.du, %.lr.ph.split.i
  %i.hf = phi i64 [ %i.jm, %bb.cg ], [ %.reass.i, %bb.du ], [ %.reass.i, %.lr.ph.split.i ], [ %i.kt, %bb.ct ], [ %i.hd, %bb.bl ], [ %i.ma, %bb.dc ], [ %i.q, %bb.cw ], [ %i.lt, %bb.db ], [ %i.w, %bb.cz ], [ %i.iw, %bb.ca ], [ %i.ja, %bb.cc ], [ %i.je, %bb.ce ], [ %i.jc, %bb.cd ], [ %i.kb, %bb.cn ], [ %i.kf, %bb.cp ], [ %i.kl, %bb.cr ], [ %i.kh, %bb.cq ], [ %i.ho, %bb.bq ], [ %i.hq, %bb.br ], [ %i.ig, %bb.bu ], [ %i.hk, %bb.bo ], [ %i.hv, %bb.bs ], [ %i.mx, %bb.dm ], [ %.reass.us.i, %bb.dk ], [ %i.nq, %bb.dr ], [ %i.nb, %bb.dn ], [ %i.nh, %bb.dp ]
  %i.hg = phi i64 [ %.pre729.i.a, %bb.cg ], [ %i.q, %bb.du ], [ %i.q, %.lr.ph.split.i ], [ %.pre727.i, %bb.ct ], [ %i.q, %bb.bl ], [ %i.lv, %bb.dc ], [ %i.q, %bb.cw ], [ %i.lv, %bb.db ], [ %i.w, %bb.cz ], [ %i.w, %bb.ca ], [ %.pre729.i.a, %bb.cc ], [ %.pre729.i.a, %bb.ce ], [ %.pre729.i.a, %bb.cd ], [ %i.q, %bb.cn ], [ %.pre727.i, %bb.cp ], [ %.pre727.i, %bb.cr ], [ %.pre727.i, %bb.cq ], [ %.pre725.i, %bb.bq ], [ %.pre725.i, %bb.br ], [ %.pre725.i, %bb.bu ], [ %i.w, %bb.bo ], [ %.pre725.i, %bb.bs ], [ %i.mz, %bb.dm ], [ %i.w, %bb.dk ], [ %i.np, %bb.dr ], [ %i.mz, %bb.dn ], [ %i.ni, %bb.dp ]
  %i.hh = phi ptr [ @34, %bb.cg ], [ @45, %bb.du ], [ @45, %.lr.ph.split.i ], [ @40, %bb.ct ], [ @23, %bb.bl ], [ @44, %bb.dc ], [ @41, %bb.cw ], [ @43, %bb.db ], [ @42, %bb.cz ], [ @30, %bb.ca ], [ @31, %bb.cc ], [ @32, %bb.ce ], [ @33, %bb.cd ], [ @35, %bb.cn ], [ @37, %bb.cp ], [ @38, %bb.cr ], [ @39, %bb.cq ], [ @25, %bb.bq ], [ @27, %bb.br ], [ @28, %bb.bu ], [ @24, %bb.bo ], [ @26, %bb.bs ], [ @47, %bb.dm ], [ @46, %bb.dk ], [ @50, %bb.dr ], [ @48, %bb.dn ], [ @49, %bb.dp ]
  invoke void @_RNvNtCs4NRVxsYgnAr_4core9panicking18panic_bounds_check(i64 noundef %i.hf, i64 noundef %i.hg, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.hh) #14
          to label %.cont.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !847

.cont.i:                                          ; preds = %.invoke.i
  unreachable

bb.bm:                                            ; preds = %bb.bf
  %i.hi = invoke noundef zeroext i1 @_RNvNtCsiqiOkcJdymw_7similar16deadline_support17deadline_exceeded(i64 %9, i32 noundef range(i32 -1, 1000000000) %10)
          to label %bb.bn unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !847

bb.bn:                                            ; preds = %bb.bm
  br i1 %i.hi, label %.loopexit24.i, label %bb.bl

bb.bo:                                            ; preds = %bb.bl
  %i.hj = getelementptr inbounds nuw [8 x i8], ptr %i.s, i64 %i.hd ; 2 uses
  %i.hk = sub i64 %i.hb, %i.u                     ; 3 uses
  %i.hl = icmp ult i64 %i.hk, %i.w
  br i1 %i.hl, label %bb.bp, label %.invoke.i

bb.bp:                                            ; preds = %bb.bo
  %i.hm = getelementptr inbounds nuw [8 x i8], ptr %i.y, i64 %i.hk ; 2 uses
  %.val210.i = load i64, ptr %i.hj, align 8, !noalias !847, !noundef !3
  %.val211.i = load i64, ptr %i.hm, align 8, !noalias !847, !noundef !3
  %i.hn = icmp eq i64 %.val210.i, %.val211.i
  %.pre.i = load ptr, ptr %i.gc, align 8, !noalias !847 ; 4 uses
  %.pre725.i = load i64, ptr %i.gd, align 8, !noalias !847 ; 8 uses
  br i1 %i.hn, label %bb.bq, label %._crit_edge731.i

._crit_edge731.i:                                 ; preds = %bb.bp
  %.pre732.i = add nuw i64 %.sroa.09.0493.i, 1
  %.pre733.i = mul i64 %.pre732.i, %i.fs
  br label %bb.br

bb.bq:                                            ; preds = %bb.bp
  %i.ho = add i64 %i.ha, %.sroa.038.0492.i        ; 3 uses
  %i.hp = icmp ult i64 %i.ho, %.pre725.i
  br i1 %i.hp, label %bb.bs, label %.invoke.i

bb.br:                                            ; preds = %bb.bt, %._crit_edge731.i
  %.pre-phi734.i = phi i64 [ %.pre733.i, %._crit_edge731.i ], [ %i.ht, %bb.bt ] ; 3 uses
  %i.hq = add i64 %.pre-phi734.i, %.sroa.038.0492.i ; 3 uses
  %i.hr = icmp ult i64 %i.hq, %.pre725.i
  br i1 %i.hr, label %bb.bu, label %.invoke.i

bb.bs:                                            ; preds = %bb.bq
  %i.hs = add nuw i64 %.sroa.09.0493.i, 1
  %i.ht = mul i64 %i.hs, %i.fs                    ; 2 uses
  %i.hu = add nuw i64 %.sroa.038.0492.i, 1
  %i.hv = add i64 %i.hu, %i.ht                    ; 3 uses
  %i.hw = icmp ult i64 %i.hv, %.pre725.i
  br i1 %i.hw, label %bb.bt, label %.invoke.i

bb.bt:                                            ; preds = %bb.bs
  %i.hx = getelementptr inbounds nuw i8, ptr %.pre.i, i64 %i.ho
  %i.hy = load i8, ptr %i.hx, align 1, !noalias !847, !noundef !3
  %i.hz = getelementptr inbounds nuw i8, ptr %.pre.i, i64 %i.hv
  %i.ia = load i8, ptr %i.hz, align 1, !noalias !847, !noundef !3
  %i.ib = add i8 %i.ia, 1
  %i.ic = icmp eq i8 %i.hy, %i.ib
  br i1 %i.ic, label %.preheader.i, label %bb.br

.preheader.i:                                     ; preds = %bb.bt
  %i.id = icmp ult i64 %.sroa.09.0493.i, %i.fk
  %i.ie = icmp ult i64 %.sroa.038.0492.i, %i.fj
  %or.cond177478.i = select i1 %i.id, i1 %i.ie, i1 false
  br i1 %or.cond177478.i, label %.lr.ph481.i, label %._crit_edge482.i

bb.bu:                                            ; preds = %bb.br
  %i.if = add i64 %.sroa.038.0492.i, 1            ; 3 uses
  %i.ig = add i64 %i.if, %i.ha                    ; 3 uses
  %i.ih = icmp ult i64 %i.ig, %.pre725.i
  br i1 %i.ih, label %bb.bv, label %.invoke.i

bb.bv:                                            ; preds = %bb.bu
  %i.ii = getelementptr inbounds nuw i8, ptr %.pre.i, i64 %i.hq
  %i.ij = load i8, ptr %i.ii, align 1, !noalias !847, !noundef !3
  %i.ik = getelementptr inbounds nuw i8, ptr %.pre.i, i64 %i.ig
  %i.il = load i8, ptr %i.ik, align 1, !noalias !847, !noundef !3
  %.not164.i = icmp ult i8 %i.ij, %i.il
  br i1 %.not164.i, label %.preheader25.i, label %.preheader30.i

.preheader30.i:                                   ; preds = %bb.bv
  %umax.i = call i64 @llvm.umax.i64(i64 %.sroa.09.0493.i, i64 %i.fk) ; 3 uses
  %exitcond.not.i1516.not = icmp ult i64 %.sroa.09.0493.i, %i.fk
  br i1 %exitcond.not.i1516.not, label %.lr.ph1518, label %._crit_edge1519

.preheader25.i:                                   ; preds = %bb.bv
  %i.im = icmp ult i64 %.sroa.038.0492.i, %i.fj
  br i1 %i.im, label %.lr.ph473.i, label %._crit_edge.i

.lr.ph473.i:                                      ; preds = %.preheader25.i
  %i.in = add i64 %.pre-phi734.i, 1
  %i.io = add i64 %i.ha, 1
  br label %bb.bw

bb.bw:                                            ; preds = %bb.ci, %.lr.ph473.i
  %.sroa.038.1472.i = phi i64 [ %.sroa.038.0492.i, %.lr.ph473.i ], [ %i.jt, %bb.ci ] ; 9 uses
  %i.ip = and i64 %.sroa.038.1472.i, 1023
  %i.iq = icmp eq i64 %i.ip, 0
  %or.cond173.i = and i1 %.sroa.05.0.not494.i, %i.iq
  br i1 %or.cond173.i, label %bb.by, label %bb.ca

._crit_edge.i:                                    ; preds = %bb.ci, %bb.ch, %bb.cf, %.preheader25.i
  %.sroa.038.1.lcssa.i = phi i64 [ %.sroa.038.0492.i, %.preheader25.i ], [ %i.fj, %bb.ci ], [ %.sroa.038.1472.i, %bb.ch ], [ %.sroa.038.1472.i, %bb.cf ] ; 3 uses
  %i.ir = sub nuw i64 %.sroa.038.1.lcssa.i, %.sroa.038.0492.i ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val51) ]
  %i.is = load i64, ptr %i.gf, align 8, !alias.scope !852, !noalias !847, !noundef !3 ; 3 uses
  %i.it = load i64, ptr %i.ge, align 8, !range !6, !alias.scope !852, !noalias !847, !noundef !3
  %i.iu = icmp eq i64 %i.is, %i.it
  br i1 %i.iu, label %bb.bx, label %_RNvXs0_NtNtCsiqiOkcJdymw_7similar10algorithms4hookINtB5_12NoFinishHookQINtNtB7_7compact7CompactINtNtB7_5utils12OffsetLookupmEB1v_INtNtB7_7replace7ReplaceNtNtB7_7capture7CaptureEEENtB5_8DiffHook5equalCskXhPDodhyTq_6mdtest.exit.i

bb.bx:                                            ; preds = %._crit_edge.i
  invoke void @_RNvMs3_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecNtNtCsiqiOkcJdymw_7similar5types6DiffOpE8grow_oneBP_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.ge)
          to label %_RNvXs0_NtNtCsiqiOkcJdymw_7similar10algorithms4hookINtB5_12NoFinishHookQINtNtB7_7compact7CompactINtNtB7_5utils12OffsetLookupmEB1v_INtNtB7_7replace7ReplaceNtNtB7_7capture7CaptureEEENtB5_8DiffHook5equalCskXhPDodhyTq_6mdtest.exit.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !847

bb.by:                                            ; preds = %bb.bw
  %i.iv = invoke noundef zeroext i1 @_RNvNtCsiqiOkcJdymw_7similar16deadline_support17deadline_exceeded(i64 %9, i32 noundef range(i32 -1, 1000000000) %10)
          to label %bb.bz unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !847

bb.bz:                                            ; preds = %bb.by
  br i1 %i.iv, label %.loopexit24.i, label %bb.ca

bb.ca:                                            ; preds = %bb.bz, %bb.bw
  %i.iw = add i64 %.sroa.038.1472.i, %invariant.op.i ; 3 uses
  %i.ix = icmp ult i64 %i.iw, %i.w
  br i1 %i.ix, label %bb.cb, label %.invoke.i

bb.cb:                                            ; preds = %bb.ca
  %i.iy = getelementptr inbounds nuw [8 x i8], ptr %i.y, i64 %i.iw
  %.val208.i = load i64, ptr %i.hj, align 8, !noalias !847, !noundef !3
  %.val209.i = load i64, ptr %i.iy, align 8, !noalias !847, !noundef !3
  %i.iz = icmp eq i64 %.val208.i, %.val209.i
  %.pre728.i.a = load ptr, ptr %i.gc, align 8, !noalias !847 ; 4 uses
  %.pre729.i.a = load i64, ptr %i.gd, align 8, !noalias !847 ; 8 uses
  br i1 %i.iz, label %bb.cc, label %bb.cd

bb.cc:                                            ; preds = %bb.cb
  %i.ja = add i64 %.sroa.038.1472.i, %i.ha        ; 3 uses
  %i.jb = icmp ult i64 %i.ja, %.pre729.i.a
  br i1 %i.jb, label %bb.ce, label %.invoke.i

bb.cd:                                            ; preds = %bb.cf, %bb.cb
  %i.jc = add i64 %.sroa.038.1472.i, %.pre-phi734.i ; 3 uses
  %i.jd = icmp ult i64 %i.jc, %.pre729.i.a
  br i1 %i.jd, label %bb.cg, label %.invoke.i

bb.ce:                                            ; preds = %bb.cc
  %i.je = add i64 %i.in, %.sroa.038.1472.i        ; 3 uses
  %i.jf = icmp ult i64 %i.je, %.pre729.i.a
  br i1 %i.jf, label %bb.cf, label %.invoke.i

bb.cf:                                            ; preds = %bb.ce
  %i.jg = getelementptr inbounds nuw i8, ptr %.pre728.i.a, i64 %i.ja
  %i.jh = load i8, ptr %i.jg, align 1, !noalias !847, !noundef !3
  %i.ji = getelementptr inbounds nuw i8, ptr %.pre728.i.a, i64 %i.je
  %i.jj = load i8, ptr %i.ji, align 1, !noalias !847, !noundef !3
  %i.jk = add i8 %i.jj, 1
  %i.jl = icmp eq i8 %i.jh, %i.jk
  br i1 %i.jl, label %._crit_edge.i, label %bb.cd

bb.cg:                                            ; preds = %bb.cd
  %i.jm = add i64 %i.io, %.sroa.038.1472.i        ; 3 uses
  %i.jn = icmp ult i64 %i.jm, %.pre729.i.a
  br i1 %i.jn, label %bb.ch, label %.invoke.i

bb.ch:                                            ; preds = %bb.cg
  %i.jo = getelementptr inbounds nuw i8, ptr %.pre728.i.a, i64 %i.jc
  %i.jp = load i8, ptr %i.jo, align 1, !noalias !847, !noundef !3
  %i.jq = getelementptr inbounds nuw i8, ptr %.pre728.i.a, i64 %i.jm
  %i.jr = load i8, ptr %i.jq, align 1, !noalias !847, !noundef !3
  %i.js = icmp ult i8 %i.jp, %i.jr
  br i1 %i.js, label %bb.ci, label %._crit_edge.i

bb.ci:                                            ; preds = %bb.ch
  %i.jt = add nuw i64 %.sroa.038.1472.i, 1        ; 2 uses
  %i.ju = icmp ult i64 %i.jt, %i.fj
  br i1 %i.ju, label %bb.bw, label %._crit_edge.i

bb.cj:                                            ; preds = %bb.cu
  %exitcond.not.i = icmp eq i64 %.pre-phi736.i, %umax.i
  br i1 %exitcond.not.i, label %._crit_edge1519, label %.lr.ph1518

.lr.ph1518:                                       ; preds = %.preheader30.i, %bb.cj
  %.sroa.09.1.i1517 = phi i64 [ %.pre-phi736.i, %bb.cj ], [ %.sroa.09.0493.i, %.preheader30.i ] ; 6 uses
  br i1 %or.cond170.i, label %bb.cl, label %bb.cn

._crit_edge1519:                                  ; preds = %bb.cj, %bb.cs, %bb.cu, %.preheader30.i
  %.sroa.09.1.lcssa.i = phi i64 [ %umax.i, %.preheader30.i ], [ %umax.i, %bb.cj ], [ %.sroa.09.1.i1517, %bb.cs ], [ %.sroa.09.1.i1517, %bb.cu ] ; 3 uses
  %i.jv = sub i64 %.sroa.09.1.lcssa.i, %.sroa.09.0493.i ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val51) ]
  %i.jw = load i64, ptr %i.gf, align 8, !alias.scope !853, !noalias !847, !noundef !3 ; 3 uses
  %i.jx = load i64, ptr %i.ge, align 8, !range !6, !alias.scope !853, !noalias !847, !noundef !3
  %i.jy = icmp eq i64 %i.jw, %i.jx
  br i1 %i.jy, label %bb.ck, label %_RNvXs0_NtNtCsiqiOkcJdymw_7similar10algorithms4hookINtB5_12NoFinishHookQINtNtB7_7compact7CompactINtNtB7_5utils12OffsetLookupmEB1v_INtNtB7_7replace7ReplaceNtNtB7_7capture7CaptureEEENtB5_8DiffHook5equalCskXhPDodhyTq_6mdtest.exit.i

bb.ck:                                            ; preds = %._crit_edge1519
  invoke void @_RNvMs3_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecNtNtCsiqiOkcJdymw_7similar5types6DiffOpE8grow_oneBP_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.ge)
          to label %_RNvXs0_NtNtCsiqiOkcJdymw_7similar10algorithms4hookINtB5_12NoFinishHookQINtNtB7_7compact7CompactINtNtB7_5utils12OffsetLookupmEB1v_INtNtB7_7replace7ReplaceNtNtB7_7capture7CaptureEEENtB5_8DiffHook5equalCskXhPDodhyTq_6mdtest.exit.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !847

bb.cl:                                            ; preds = %.lr.ph1518
  %i.jz = invoke noundef zeroext i1 @_RNvNtCsiqiOkcJdymw_7similar16deadline_support17deadline_exceeded(i64 %9, i32 noundef range(i32 -1, 1000000000) %10)
          to label %bb.cm unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !847

bb.cm:                                            ; preds = %bb.cl
  br i1 %i.jz, label %.loopexit24.i, label %bb.cn

bb.cn:                                            ; preds = %bb.cm, %.lr.ph1518
  %i.ka = mul i64 %.sroa.09.1.i1517, %i.fs        ; 2 uses
  %i.kb = add i64 %.sroa.09.1.i1517, %invariant.op470.i ; 3 uses
  %i.kc = icmp ult i64 %i.kb, %i.q
  br i1 %i.kc, label %bb.co, label %.invoke.i

bb.co:                                            ; preds = %bb.cn
  %i.kd = getelementptr inbounds nuw [8 x i8], ptr %i.s, i64 %i.kb
  %.val206.i = load i64, ptr %i.kd, align 8, !noalias !847, !noundef !3
  %.val207.i = load i64, ptr %i.hm, align 8, !noalias !847, !noundef !3
  %i.ke = icmp eq i64 %.val206.i, %.val207.i
  %.pre726.i = load ptr, ptr %i.gc, align 8, !noalias !847 ; 4 uses
  %.pre727.i = load i64, ptr %i.gd, align 8, !noalias !847 ; 8 uses
  br i1 %i.ke, label %bb.cp, label %._crit_edge730.i

._crit_edge730.i:                                 ; preds = %bb.co
  %.pre735.i = add i64 %.sroa.09.1.i1517, 1       ; 2 uses
  %.pre737.i = mul i64 %.pre735.i, %i.fs
  br label %bb.cq

bb.cp:                                            ; preds = %bb.co
  %i.kf = add i64 %i.ka, %.sroa.038.0492.i        ; 3 uses
  %i.kg = icmp ult i64 %i.kf, %.pre727.i
  br i1 %i.kg, label %bb.cr, label %.invoke.i

bb.cq:                                            ; preds = %bb.cs, %._crit_edge730.i
  %.pre-phi738.i.a = phi i64 [ %.pre737.i, %._crit_edge730.i ], [ %i.kk, %bb.cs ]
  %.pre-phi736.i = phi i64 [ %.pre735.i, %._crit_edge730.i ], [ %i.kj, %bb.cs ] ; 2 uses
  %i.kh = add i64 %.pre-phi738.i.a, %.sroa.038.0492.i ; 3 uses
  %i.ki = icmp ult i64 %i.kh, %.pre727.i
  br i1 %i.ki, label %bb.ct, label %.invoke.i

bb.cr:                                            ; preds = %bb.cp
  %i.kj = add i64 %.sroa.09.1.i1517, 1            ; 2 uses
  %i.kk = mul i64 %i.kj, %i.fs                    ; 2 uses
  %i.kl = add i64 %i.kk, %i.if                    ; 3 uses
  %i.km = icmp ult i64 %i.kl, %.pre727.i
  br i1 %i.km, label %bb.cs, label %.invoke.i

bb.cs:                                            ; preds = %bb.cr
  %i.kn = getelementptr inbounds nuw i8, ptr %.pre726.i, i64 %i.kf
  %i.ko = load i8, ptr %i.kn, align 1, !noalias !847, !noundef !3
  %i.kp = getelementptr inbounds nuw i8, ptr %.pre726.i, i64 %i.kl
  %i.kq = load i8, ptr %i.kp, align 1, !noalias !847, !noundef !3
  %i.kr = add i8 %i.kq, 1
  %i.ks = icmp eq i8 %i.ko, %i.kr
  br i1 %i.ks, label %._crit_edge1519, label %bb.cq

bb.ct:                                            ; preds = %bb.cq
  %i.kt = add i64 %i.ka, %i.if                    ; 3 uses
  %i.ku = icmp ult i64 %i.kt, %.pre727.i
  br i1 %i.ku, label %bb.cu, label %.invoke.i

bb.cu:                                            ; preds = %bb.ct
  %i.kv = getelementptr inbounds nuw i8, ptr %.pre726.i, i64 %i.kh
  %i.kw = load i8, ptr %i.kv, align 1, !noalias !847, !noundef !3
  %i.kx = getelementptr inbounds nuw i8, ptr %.pre726.i, i64 %i.kt
  %i.ky = load i8, ptr %i.kx, align 1, !noalias !847, !noundef !3
  %.not167.i = icmp ult i8 %i.kw, %i.ky
  br i1 %.not167.i, label %._crit_edge1519, label %bb.cj

_RNvXs0_NtNtCsiqiOkcJdymw_7similar10algorithms4hookINtB5_12NoFinishHookQINtNtB7_7compact7CompactINtNtB7_5utils12OffsetLookupmEB1v_INtNtB7_7replace7ReplaceNtNtB7_7capture7CaptureEEENtB5_8DiffHook5equalCskXhPDodhyTq_6mdtest.exit.i: ; preds = %bb.cv, %._crit_edge482.i, %bb.ck, %._crit_edge1519, %bb.bx, %._crit_edge.i
  %.sink1026.i = phi i64 [ %i.is, %._crit_edge.i ], [ %i.lf, %._crit_edge482.i ], [ %i.lf, %bb.cv ], [ %i.is, %bb.bx ], [ %i.jw, %bb.ck ], [ %i.jw, %._crit_edge1519 ] ; 3 uses
  %.sink1023.i = phi i64 [ 1, %._crit_edge.i ], [ 0, %._crit_edge482.i ], [ 0, %bb.cv ], [ 1, %bb.bx ], [ 2, %bb.ck ], [ 2, %._crit_edge1519 ]
  %.sink1020.i = phi i64 [ %i.ir, %._crit_edge.i ], [ %i.hc, %._crit_edge482.i ], [ %i.hc, %bb.cv ], [ %i.ir, %bb.bx ], [ %i.hc, %bb.ck ], [ %i.hc, %._crit_edge1519 ]
  %.sink.i = phi i64 [ %i.hc, %._crit_edge.i ], [ %i.le, %._crit_edge482.i ], [ %i.le, %bb.cv ], [ %i.hc, %bb.bx ], [ %i.jv, %bb.ck ], [ %i.jv, %._crit_edge1519 ]
  %.sroa.038.3.i = phi i64 [ %.sroa.038.1.lcssa.i, %._crit_edge.i ], [ %.sroa.038.4.lcssa.i, %._crit_edge482.i ], [ %.sroa.038.4.lcssa.i, %bb.cv ], [ %.sroa.038.1.lcssa.i, %bb.bx ], [ %.sroa.038.0492.i, %bb.ck ], [ %.sroa.038.0492.i, %._crit_edge1519 ] ; 5 uses
  %.sroa.09.3.i = phi i64 [ %.sroa.09.0493.i, %._crit_edge.i ], [ %.sroa.09.4.lcssa.i, %._crit_edge482.i ], [ %.sroa.09.4.lcssa.i, %bb.cv ], [ %.sroa.09.0493.i, %bb.bx ], [ %.sroa.09.1.lcssa.i, %bb.ck ], [ %.sroa.09.1.lcssa.i, %._crit_edge1519 ] ; 5 uses
  %i.kz = load ptr, ptr %i.gg, align 8, !noalias !847, !nonnull !3, !noundef !3
  %i.la = getelementptr inbounds nuw [40 x i8], ptr %i.kz, i64 %.sink1026.i ; 4 uses
  store i64 %.sink1023.i, ptr %i.la, align 8, !noalias !847
  %.sroa.417.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.la, i64 8
  store i64 %i.hb, ptr %.sroa.417.0..sroa_idx.i, align 8, !noalias !847
  %.sroa.518.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.la, i64 16
  store i64 %.sink1020.i, ptr %.sroa.518.0..sroa_idx.i, align 8, !noalias !847
  %.sroa.619.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.la, i64 24
  store i64 %.sink.i, ptr %.sroa.619.0..sroa_idx.i, align 8, !noalias !847
  %i.lb = add i64 %.sink1026.i, 1                 ; 4 uses
  store i64 %i.lb, ptr %i.gf, align 8, !noalias !847
  %i.lc = icmp ult i64 %.sroa.09.3.i, %i.fk       ; 3 uses
  %i.ld = icmp ult i64 %.sroa.038.3.i, %i.fj      ; 2 uses
  %or.cond.i75 = select i1 %i.lc, i1 %i.ld, i1 false
  br i1 %or.cond.i75, label %bb.bf, label %._crit_edge496.i

._crit_edge482.i:                                 ; preds = %bb.de, %bb.dd, %bb.da, %.preheader.i
  %.sroa.038.4.lcssa.i = phi i64 [ %.sroa.038.0492.i, %.preheader.i ], [ %i.lz, %bb.de ], [ %.sroa.038.4479.i, %bb.da ], [ %.sroa.038.4479.i, %bb.dd ] ; 3 uses
  %.sroa.09.4.lcssa.i = phi i64 [ %.sroa.09.0493.i, %.preheader.i ], [ %i.lx, %bb.de ], [ %.sroa.09.4480.i, %bb.da ], [ %.sroa.09.4480.i, %bb.dd ] ; 2 uses
  %i.le = sub nuw i64 %.sroa.038.4.lcssa.i, %.sroa.038.0492.i ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val51) ]
  %i.lf = load i64, ptr %i.gf, align 8, !alias.scope !854, !noalias !847, !noundef !3 ; 3 uses
  %i.lg = load i64, ptr %i.ge, align 8, !range !6, !alias.scope !854, !noalias !847, !noundef !3
  %i.lh = icmp eq i64 %i.lf, %i.lg
  br i1 %i.lh, label %bb.cv, label %_RNvXs0_NtNtCsiqiOkcJdymw_7similar10algorithms4hookINtB5_12NoFinishHookQINtNtB7_7compact7CompactINtNtB7_5utils12OffsetLookupmEB1v_INtNtB7_7replace7ReplaceNtNtB7_7capture7CaptureEEENtB5_8DiffHook5equalCskXhPDodhyTq_6mdtest.exit.i

bb.cv:                                            ; preds = %._crit_edge482.i
  invoke void @_RNvMs3_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecNtNtCsiqiOkcJdymw_7similar5types6DiffOpE8grow_oneBP_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.ge)
          to label %_RNvXs0_NtNtCsiqiOkcJdymw_7similar10algorithms4hookINtB5_12NoFinishHookQINtNtB7_7compact7CompactINtNtB7_5utils12OffsetLookupmEB1v_INtNtB7_7replace7ReplaceNtNtB7_7capture7CaptureEEENtB5_8DiffHook5equalCskXhPDodhyTq_6mdtest.exit.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !847

.lr.ph481.i:                                      ; preds = %.preheader.i, %bb.de
  %.sroa.09.4480.i = phi i64 [ %i.lx, %bb.de ], [ %.sroa.09.0493.i, %.preheader.i ] ; 5 uses
  %.sroa.038.4479.i = phi i64 [ %i.lz, %bb.de ], [ %.sroa.038.0492.i, %.preheader.i ] ; 6 uses
  %i.li = and i64 %.sroa.038.4479.i, 1023
  %i.lj = icmp eq i64 %i.li, 0
  %or.cond180.i = select i1 %.sroa.05.0.not494.i, i1 %i.lj, i1 false
  br i1 %or.cond180.i, label %bb.cx, label %bb.cw

bb.cw:                                            ; preds = %bb.cy, %.lr.ph481.i
  %i.lk = mul i64 %.sroa.09.4480.i, %i.fs
  %i.ll = add i64 %.sroa.09.4480.i, %invariant.op470.i ; 2 uses
  %i.lm = icmp ult i64 %i.ll, %i.q
  br i1 %i.lm, label %bb.cz, label %.invoke.i

bb.cx:                                            ; preds = %.lr.ph481.i
  %i.ln = invoke noundef zeroext i1 @_RNvNtCsiqiOkcJdymw_7similar16deadline_support17deadline_exceeded(i64 %9, i32 noundef range(i32 -1, 1000000000) %10)
          to label %bb.cy unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !847

bb.cy:                                            ; preds = %bb.cx
  br i1 %i.ln, label %.loopexit24.i, label %bb.cw

bb.cz:                                            ; preds = %bb.cw
  %i.lo = add i64 %.sroa.038.4479.i, %invariant.op.i ; 2 uses
  %i.lp = icmp ult i64 %i.lo, %i.w
  br i1 %i.lp, label %bb.da, label %.invoke.i

bb.da:                                            ; preds = %bb.cz
  %i.lq = getelementptr inbounds nuw [8 x i8], ptr %i.s, i64 %i.ll
  %i.lr = getelementptr inbounds nuw [8 x i8], ptr %i.y, i64 %i.lo
  %.val204.i = load i64, ptr %i.lq, align 8, !noalias !847, !noundef !3
  %.val205.i = load i64, ptr %i.lr, align 8, !noalias !847, !noundef !3
  %i.ls = icmp eq i64 %.val204.i, %.val205.i
  br i1 %i.ls, label %bb.db, label %._crit_edge482.i

bb.db:                                            ; preds = %bb.da
  %i.lt = add i64 %i.lk, %.sroa.038.4479.i        ; 3 uses
  %i.lu = load ptr, ptr %i.gc, align 8, !noalias !847, !nonnull !3, !noundef !3 ; 2 uses
  %i.lv = load i64, ptr %i.gd, align 8, !noalias !847, !noundef !3 ; 4 uses
  %i.lw = icmp ult i64 %i.lt, %i.lv
  br i1 %i.lw, label %bb.dc, label %.invoke.i

bb.dc:                                            ; preds = %bb.db
  %i.lx = add nuw i64 %.sroa.09.4480.i, 1         ; 4 uses
  %i.ly = mul i64 %i.lx, %i.fs
  %i.lz = add nuw i64 %.sroa.038.4479.i, 1        ; 4 uses
  %i.ma = add i64 %i.lz, %i.ly                    ; 3 uses
  %i.mb = icmp ult i64 %i.ma, %i.lv
  br i1 %i.mb, label %bb.dd, label %.invoke.i

bb.dd:                                            ; preds = %bb.dc
  %i.mc = getelementptr inbounds nuw i8, ptr %i.lu, i64 %i.lt
  %i.md = load i8, ptr %i.mc, align 1, !noalias !847, !noundef !3
  %i.me = getelementptr inbounds nuw i8, ptr %i.lu, i64 %i.ma
  %i.mf = load i8, ptr %i.me, align 1, !noalias !847, !noundef !3
  %i.mg = add i8 %i.mf, 1
  %i.mh = icmp eq i8 %i.md, %i.mg
  br i1 %i.mh, label %bb.de, label %._crit_edge482.i

bb.de:                                            ; preds = %bb.dd
  %i.mi = icmp ult i64 %i.lx, %i.fk
  %i.mj = icmp ult i64 %i.lz, %i.fj
  %or.cond177.i = and i1 %i.mi, %i.mj
  br i1 %or.cond177.i, label %.lr.ph481.i, label %._crit_edge482.i

.loopexit24.i:                                    ; preds = %bb.dh, %bb.dj, %bb.bn, %bb.cm, %bb.bz, %bb.cy, %bb.du
  invoke void @_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCskXhPDodhyTq_6mdtest(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.d)
          to label %.sink.split.i unwind label %bb.df, !noalias !847

bb.df:                                            ; preds = %.loopexit24.i
  %i.mk = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCskXhPDodhyTq_6mdtest(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.d)
          to label %common.resume unwind label %bb.dg, !noalias !847

bb.dg:                                            ; preds = %bb.df
  %i.ml = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #13, !noalias !847
  unreachable

common.resume:                                    ; preds = %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i88.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %bb.fz, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %bb.df
  %common.resume.op = phi { ptr, i32 } [ %lpad.loopexit.split-lp1560, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ], [ %i.mk, %bb.df ], [ %i.up, %bb.fz ], [ %lpad.loopexit.split-lp1606, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i88.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ]
  resume { ptr, i32 } %common.resume.op

bb.dh:                                            ; preds = %.lr.ph469.split.i
  br i1 %i.gi, label %.loopexit24.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.dh
  %i.mm = mul i64 %i.gh, %i.fs                    ; 2 uses
  %i.mn = mul i64 %.sroa.0102.0468.i, %i.fs       ; 2 uses
  %.reass.i = add i64 %i.gh, %invariant.op470.i   ; 4 uses
  %i.mo = icmp ult i64 %.reass.i, %i.q
  %i.mp = getelementptr inbounds nuw [8 x i8], ptr %i.s, i64 %.reass.i
  %.fr.i = freeze i1 %i.mo
  br i1 %.fr.i, label %.lr.ph.split.us.i, label %.lr.ph.split.i

.lr.ph.split.us.i:                                ; preds = %.lr.ph.i, %bb.ds
  %.sroa.0105.0432.us.i = phi i64 [ %i.mq, %bb.ds ], [ %i.fj, %.lr.ph.i ] ; 3 uses
  %i.mq = add i64 %.sroa.0105.0432.us.i, -1       ; 6 uses
  %i.mr = and i64 %i.mq, 1023
  %i.ms = icmp eq i64 %i.mr, 0
  br i1 %i.ms, label %bb.di, label %bb.dk

bb.di:                                            ; preds = %.lr.ph.split.us.i
  %i.mt = invoke noundef zeroext i1 @_RNvNtCsiqiOkcJdymw_7similar16deadline_support17deadline_exceeded(i64 %9, i32 noundef range(i32 -1, 1000000000) %10)
          to label %bb.dj unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !847

bb.dj:                                            ; preds = %bb.di
  br i1 %i.mt, label %.loopexit24.i, label %bb.dk

bb.dk:                                            ; preds = %bb.dj, %.lr.ph.split.us.i
  %.reass.us.i = add i64 %i.mq, %invariant.op.i   ; 3 uses
  %i.mu = icmp ult i64 %.reass.us.i, %i.w
  br i1 %i.mu, label %bb.dl, label %.invoke.i

bb.dl:                                            ; preds = %bb.dk
  %i.mv = getelementptr inbounds nuw [8 x i8], ptr %i.y, i64 %.reass.us.i
  %.val.us.i = load i64, ptr %i.mp, align 8, !noalias !847, !noundef !3
  %.val203.us.i = load i64, ptr %i.mv, align 8, !noalias !847, !noundef !3
  %i.mw = icmp eq i64 %.val.us.i, %.val203.us.i
  br i1 %i.mw, label %bb.dp, label %bb.dm

bb.dm:                                            ; preds = %bb.dl
  %i.mx = add i64 %i.mq, %i.mn                    ; 3 uses
  %i.my = load ptr, ptr %i.gc, align 8, !noalias !847, !nonnull !3, !noundef !3 ; 3 uses
  %i.mz = load i64, ptr %i.gd, align 8, !noalias !847, !noundef !3 ; 5 uses
  %i.na = icmp ult i64 %i.mx, %i.mz
  br i1 %i.na, label %bb.dn, label %.invoke.i

bb.dn:                                            ; preds = %bb.dm
  %i.nb = add i64 %.sroa.0105.0432.us.i, %i.mm    ; 3 uses
  %i.nc = icmp ult i64 %i.nb, %i.mz
  br i1 %i.nc, label %bb.do, label %.invoke.i

bb.do:                                            ; preds = %bb.dn
  %i.nd = getelementptr inbounds nuw i8, ptr %i.my, i64 %i.mx
  %i.ne = load i8, ptr %i.nd, align 1, !noalias !847, !noundef !3
  %i.nf = getelementptr inbounds nuw i8, ptr %i.my, i64 %i.nb
  %i.ng = load i8, ptr %i.nf, align 1, !noalias !847, !noundef !3
  %.sroa.0.0.i.us.i = call noundef i8 @llvm.umax.i8(i8 %i.ng, i8 %i.ne)
  br label %bb.dr

bb.dp:                                            ; preds = %bb.dl
  %i.nh = add i64 %.sroa.0105.0432.us.i, %i.mn    ; 3 uses
  %i.ni = load i64, ptr %i.gd, align 8, !noalias !847, !noundef !3 ; 3 uses
  %i.nj = icmp ult i64 %i.nh, %i.ni
  br i1 %i.nj, label %bb.dq, label %.invoke.i

bb.dq:                                            ; preds = %bb.dp
  %i.nk = load ptr, ptr %i.gc, align 8, !noalias !847, !nonnull !3, !noundef !3 ; 2 uses
  %i.nl = getelementptr inbounds nuw i8, ptr %i.nk, i64 %i.nh
  %i.nm = load i8, ptr %i.nl, align 1, !noalias !847, !noundef !3
  %i.nn = add i8 %i.nm, 1
  br label %bb.dr

bb.dr:                                            ; preds = %bb.dq, %bb.do
  %i.no = phi ptr [ %i.nk, %bb.dq ], [ %i.my, %bb.do ]
  %i.np = phi i64 [ %i.ni, %bb.dq ], [ %i.mz, %bb.do ] ; 2 uses
  %.sroa.04.0.us.i = phi i8 [ %i.nn, %bb.dq ], [ %.sroa.0.0.i.us.i, %bb.do ]
  %i.nq = add i64 %i.mq, %i.mm                    ; 3 uses
  %i.nr = icmp ult i64 %i.nq, %i.np
  br i1 %i.nr, label %bb.ds, label %.invoke.i

bb.ds:                                            ; preds = %bb.dr
  %i.ns = getelementptr inbounds nuw i8, ptr %i.no, i64 %i.nq
  store i8 %.sroa.04.0.us.i, ptr %i.ns, align 1, !noalias !847
  %.not168.us.i = icmp eq i64 %i.mq, 0
  br i1 %.not168.us.i, label %..loopexit39_crit_edge.split.us.i, label %.lr.ph.split.us.i

..loopexit39_crit_edge.split.us.i:                ; preds = %bb.ds
  %.not.i76 = icmp eq i64 %i.gh, 0
  br i1 %.not.i76, label %.lr.ph495.i, label %.lr.ph469.split.i

.lr.ph.split.i:                                   ; preds = %.lr.ph.i
  %i.nt = and i64 %i.fj, 1023
  %i.nu = icmp eq i64 %i.nt, 1
  br i1 %i.nu, label %bb.dt, label %.invoke.i

bb.dt:                                            ; preds = %.lr.ph.split.i
  %i.nv = invoke noundef zeroext i1 @_RNvNtCsiqiOkcJdymw_7similar16deadline_support17deadline_exceeded(i64 %9, i32 noundef range(i32 -1, 1000000000) %10)
          to label %bb.du unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !847

bb.du:                                            ; preds = %bb.dt
  br i1 %i.nv, label %.loopexit24.i, label %.invoke.i

bb.dv:                                            ; preds = %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp
  %i.nw = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #13, !noalias !847
  unreachable

bb.dw:                                            ; preds = %bb.bb
  br i1 %i.fr, label %_RINvNtNtCsiqiOkcJdymw_7similar10algorithms5myers27maybe_emit_small_side_exactINtNtB4_5utils12OffsetLookupjEB1d_INtNtB4_4hook12NoFinishHookQINtNtB4_7compact7CompactIB1e_mEB2B_INtNtB4_7replace7ReplaceNtNtB4_7capture7CaptureEEEECskXhPDodhyTq_6mdtest.exit.thread, label %bb.dx

bb.dx:                                            ; preds = %bb.dw
  %i.nx = add i64 %i.fk, 1                        ; 11 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !855
  %i.ny = add i64 %i.fj, 1
  %i.nz = mul i64 %i.ny, %i.nx                    ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !856)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !857
  call void @_RNvMs4_NtCscdodAO9FK5_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCskXhPDodhyTq_6mdtest(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, i64 noundef %i.nz, i1 noundef zeroext true, i64 noundef 1, i64 noundef 1), !noalias !857
  %i.oa = load i64, ptr %i.a, align 8, !range !8, !noalias !857, !noundef !3
  %i.ob = trunc nuw i64 %i.oa to i1
  %i.oc = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.od = load i64, ptr %i.oc, align 8, !range !9, !noalias !857, !noundef !3 ; 2 uses
  %i.oe = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  br i1 %i.ob, label %bb.dy, label %.lr.ph484.i, !prof !7

bb.dy:                                            ; preds = %bb.dx
  %i.of = load i64, ptr %i.oe, align 8, !noalias !857
  call void @_RNvNtCscdodAO9FK5_5alloc7raw_vec12handle_error(i64 noundef %i.od, i64 %i.of) #14, !noalias !857
  unreachable

.lr.ph484.i:                                      ; preds = %bb.dx
  %i.og = load ptr, ptr %i.oe, align 8, !noalias !857, !nonnull !3, !noundef !3
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !857
  store i64 %i.od, ptr %i.b, align 8, !alias.scope !856, !noalias !855
  %i.oh = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 7 uses
  store ptr %i.og, ptr %i.oh, align 8, !alias.scope !856, !noalias !855
  %i.oi = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 7 uses
  store i64 %i.nz, ptr %i.oi, align 8, !alias.scope !856, !noalias !855
  %invariant.op.i92 = sub i64 %.sroa.0188.0, %i.o ; 4 uses
  %invariant.op485.i = sub i64 %.sroa.0.0, %i.u   ; 3 uses
  br label %.lr.ph484.split.i

.lr.ph511.i:                                      ; preds = %..loopexit39_crit_edge.split.us.i150
  %i.oj = getelementptr inbounds nuw i8, ptr %.val51, i64 120 ; 10 uses
  %i.ok = getelementptr inbounds nuw i8, ptr %.val51, i64 136 ; 6 uses
  %i.ol = getelementptr inbounds nuw i8, ptr %.val51, i64 128 ; 3 uses
  br label %bb.dz

.lr.ph484.split.i:                                ; preds = %.lr.ph484.i, %..loopexit39_crit_edge.split.us.i150
  %.sroa.0102.0483.i = phi i64 [ %i.om, %..loopexit39_crit_edge.split.us.i150 ], [ %i.fj, %.lr.ph484.i ] ; 2 uses
  %i.om = add i64 %.sroa.0102.0483.i, -1          ; 4 uses
  %i.on = invoke noundef zeroext i1 @_RNvNtCsiqiOkcJdymw_7similar16deadline_support17deadline_exceeded(i64 %9, i32 noundef range(i32 -1, 1000000000) %10)
          to label %bb.gb unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i88.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !855

._crit_edge512.i:                                 ; preds = %_RNvXs0_NtNtCsiqiOkcJdymw_7similar10algorithms4hookINtB5_12NoFinishHookQINtNtB7_7compact7CompactINtNtB7_5utils12OffsetLookupmEB1v_INtNtB7_7replace7ReplaceNtNtB7_7capture7CaptureEEENtB5_8DiffHook5equalCskXhPDodhyTq_6mdtest.exit.i118
  br i1 %i.th, label %bb.ea, label %bb.ec

bb.dz:                                            ; preds = %_RNvXs0_NtNtCsiqiOkcJdymw_7similar10algorithms4hookINtB5_12NoFinishHookQINtNtB7_7compact7CompactINtNtB7_5utils12OffsetLookupmEB1v_INtNtB7_7replace7ReplaceNtNtB7_7capture7CaptureEEENtB5_8DiffHook5equalCskXhPDodhyTq_6mdtest.exit.i118, %.lr.ph511.i
  %.sroa.05.0.not510.i = phi i1 [ true, %.lr.ph511.i ], [ false, %_RNvXs0_NtNtCsiqiOkcJdymw_7similar10algorithms4hookINtB5_12NoFinishHookQINtNtB7_7compact7CompactINtNtB7_5utils12OffsetLookupmEB1v_INtNtB7_7replace7ReplaceNtNtB7_7capture7CaptureEEENtB5_8DiffHook5equalCskXhPDodhyTq_6mdtest.exit.i118 ] ; 3 uses
  %.sroa.09.0509.i = phi i64 [ 0, %.lr.ph511.i ], [ %.sroa.09.3.i120, %_RNvXs0_NtNtCsiqiOkcJdymw_7similar10algorithms4hookINtB5_12NoFinishHookQINtNtB7_7compact7CompactINtNtB7_5utils12OffsetLookupmEB1v_INtNtB7_7replace7ReplaceNtNtB7_7capture7CaptureEEENtB5_8DiffHook5equalCskXhPDodhyTq_6mdtest.exit.i118 ] ; 14 uses
  %.sroa.039.0508.i = phi i64 [ 0, %.lr.ph511.i ], [ %.sroa.039.3.i, %_RNvXs0_NtNtCsiqiOkcJdymw_7similar10algorithms4hookINtB5_12NoFinishHookQINtNtB7_7compact7CompactINtNtB7_5utils12OffsetLookupmEB1v_INtNtB7_7replace7ReplaceNtNtB7_7capture7CaptureEEENtB5_8DiffHook5equalCskXhPDodhyTq_6mdtest.exit.i118 ] ; 17 uses
  %i.oo = and i64 %.sroa.039.0508.i, 1023
  %i.op = icmp eq i64 %i.oo, 0
  %or.cond170.i103 = select i1 %.sroa.05.0.not510.i, i1 %i.op, i1 false ; 2 uses
  br i1 %or.cond170.i103, label %bb.eg, label %bb.ef

bb.ea:                                            ; preds = %._crit_edge512.i
  %i.oq = add i64 %.sroa.09.3.i120, %.sroa.0.0    ; 2 uses
  %i.or = sub nuw i64 %i.fj, %.sroa.09.3.i120
  %i.os = add i64 %.sroa.039.3.i, %.sroa.0188.0   ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val51) ]
  %i.ot = load i64, ptr %i.oj, align 8, !range !6, !alias.scope !858, !noalias !855, !noundef !3
  %i.ou = icmp eq i64 %i.tg, %i.ot
  br i1 %i.ou, label %bb.eb, label %_RNvXs0_NtNtCsiqiOkcJdymw_7similar10algorithms4hookINtB5_12NoFinishHookQINtNtB7_7compact7CompactINtNtB7_5utils12OffsetLookupmEB1v_INtNtB7_7replace7ReplaceNtNtB7_7capture7CaptureEEENtB5_8DiffHook6deleteCskXhPDodhyTq_6mdtest.exit181.i99

bb.eb:                                            ; preds = %bb.ea
  invoke void @_RNvMs3_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecNtNtCsiqiOkcJdymw_7similar5types6DiffOpE8grow_oneBP_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.oj)
          to label %_RNvXs0_NtNtCsiqiOkcJdymw_7similar10algorithms4hookINtB5_12NoFinishHookQINtNtB7_7compact7CompactINtNtB7_5utils12OffsetLookupmEB1v_INtNtB7_7replace7ReplaceNtNtB7_7capture7CaptureEEENtB5_8DiffHook6deleteCskXhPDodhyTq_6mdtest.exit181.i99 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i88.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !855

_RNvXs0_NtNtCsiqiOkcJdymw_7similar10algorithms4hookINtB5_12NoFinishHookQINtNtB7_7compact7CompactINtNtB7_5utils12OffsetLookupmEB1v_INtNtB7_7replace7ReplaceNtNtB7_7capture7CaptureEEENtB5_8DiffHook6deleteCskXhPDodhyTq_6mdtest.exit181.i99: ; preds = %bb.eb, %bb.ea
  %i.ov = load ptr, ptr %i.ol, align 8, !alias.scope !858, !noalias !855, !nonnull !3, !noundef !3
  %i.ow = getelementptr inbounds nuw [40 x i8], ptr %i.ov, i64 %i.tg ; 4 uses
  store i64 1, ptr %i.ow, align 8, !noalias !855
  %.sroa.42.0..sroa_idx.i100 = getelementptr inbounds nuw i8, ptr %i.ow, i64 8
  store i64 %i.oq, ptr %.sroa.42.0..sroa_idx.i100, align 8, !noalias !855
  %.sroa.53.0..sroa_idx.i101 = getelementptr inbounds nuw i8, ptr %i.ow, i64 16
  store i64 %i.or, ptr %.sroa.53.0..sroa_idx.i101, align 8, !noalias !855
  %.sroa.64.0..sroa_idx.i102 = getelementptr inbounds nuw i8, ptr %i.ow, i64 24
  store i64 %i.os, ptr %.sroa.64.0..sroa_idx.i102, align 8, !noalias !855
  %i.ox = add i64 %.sink1039.i, 2                 ; 2 uses
  store i64 %i.ox, ptr %i.ok, align 8, !alias.scope !858, !noalias !855
  br i1 %i.ti, label %bb.ed, label %_RINvNtNtCsiqiOkcJdymw_7similar10algorithms5myers27maybe_emit_small_side_exactINtNtB4_5utils12OffsetLookupjEB1d_INtNtB4_4hook12NoFinishHookQINtNtB4_7compact7CompactIB1e_mEB2B_INtNtB4_7replace7ReplaceNtNtB4_7capture7CaptureEEEECskXhPDodhyTq_6mdtest.exit.thread302

bb.ec:                                            ; preds = %._crit_edge512.i
  br i1 %i.ti, label %._crit_edge874, label %_RINvNtNtCsiqiOkcJdymw_7similar10algorithms5myers27maybe_emit_small_side_exactINtNtB4_5utils12OffsetLookupjEB1d_INtNtB4_4hook12NoFinishHookQINtNtB4_7compact7CompactIB1e_mEB2B_INtNtB4_7replace7ReplaceNtNtB4_7capture7CaptureEEEECskXhPDodhyTq_6mdtest.exit.thread302

._crit_edge874:                                   ; preds = %bb.ec
  %.pre880 = add i64 %.sroa.09.3.i120, %.sroa.0.0
  %.pre882 = add i64 %.sroa.039.3.i, %.sroa.0188.0
  br label %bb.ed

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i88.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %bb.gc, %bb.eg, %bb.er, %bb.fe, %bb.fp, %bb.fr, %bb.es, %bb.ff, %.lr.ph484.split.i, %bb.gn, %.invoke.i104, %bb.ee, %bb.eb
  %lpad.loopexit.split-lp1606 = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VechEECskXhPDodhyTq_6mdtest(ptr noalias noundef align 8 dereferenceable(24) %i.b) #15
          to label %common.resume unwind label %bb.gr, !noalias !855

bb.ed:                                            ; preds = %._crit_edge874, %_RNvXs0_NtNtCsiqiOkcJdymw_7similar10algorithms4hookINtB5_12NoFinishHookQINtNtB7_7compact7CompactINtNtB7_5utils12OffsetLookupmEB1v_INtNtB7_7replace7ReplaceNtNtB7_7capture7CaptureEEENtB5_8DiffHook6deleteCskXhPDodhyTq_6mdtest.exit181.i99
  %.pre-phi883 = phi i64 [ %.pre882, %._crit_edge874 ], [ %i.os, %_RNvXs0_NtNtCsiqiOkcJdymw_7similar10algorithms4hookINtB5_12NoFinishHookQINtNtB7_7compact7CompactINtNtB7_5utils12OffsetLookupmEB1v_INtNtB7_7replace7ReplaceNtNtB7_7capture7CaptureEEENtB5_8DiffHook6deleteCskXhPDodhyTq_6mdtest.exit181.i99 ]
  %.pre-phi881 = phi i64 [ %.pre880, %._crit_edge874 ], [ %i.oq, %_RNvXs0_NtNtCsiqiOkcJdymw_7similar10algorithms4hookINtB5_12NoFinishHookQINtNtB7_7compact7CompactINtNtB7_5utils12OffsetLookupmEB1v_INtNtB7_7replace7ReplaceNtNtB7_7capture7CaptureEEENtB5_8DiffHook6deleteCskXhPDodhyTq_6mdtest.exit181.i99 ]
  %i.oy = phi i64 [ %i.tg, %._crit_edge874 ], [ %i.ox, %_RNvXs0_NtNtCsiqiOkcJdymw_7similar10algorithms4hookINtB5_12NoFinishHookQINtNtB7_7compact7CompactINtNtB7_5utils12OffsetLookupmEB1v_INtNtB7_7replace7ReplaceNtNtB7_7capture7CaptureEEENtB5_8DiffHook6deleteCskXhPDodhyTq_6mdtest.exit181.i99 ] ; 3 uses
  %i.oz = sub nuw i64 %i.fk, %.sroa.039.3.i
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val51) ]
  %i.pa = load i64, ptr %i.oj, align 8, !range !6, !alias.scope !859, !noalias !855, !noundef !3
  %i.pb = icmp eq i64 %i.oy, %i.pa
  br i1 %i.pb, label %bb.ee, label %_RNvXs0_NtNtCsiqiOkcJdymw_7similar10algorithms4hookINtB5_12NoFinishHookQINtNtB7_7compact7CompactINtNtB7_5utils12OffsetLookupmEB1v_INtNtB7_7replace7ReplaceNtNtB7_7capture7CaptureEEENtB5_8DiffHook6insertCskXhPDodhyTq_6mdtest.exit182.i84

bb.ee:                                            ; preds = %bb.ed
  invoke void @_RNvMs3_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecNtNtCsiqiOkcJdymw_7similar5types6DiffOpE8grow_oneBP_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.oj)
          to label %_RNvXs0_NtNtCsiqiOkcJdymw_7similar10algorithms4hookINtB5_12NoFinishHookQINtNtB7_7compact7CompactINtNtB7_5utils12OffsetLookupmEB1v_INtNtB7_7replace7ReplaceNtNtB7_7capture7CaptureEEENtB5_8DiffHook6insertCskXhPDodhyTq_6mdtest.exit182.i84 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i88.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !855

_RNvXs0_NtNtCsiqiOkcJdymw_7similar10algorithms4hookINtB5_12NoFinishHookQINtNtB7_7compact7CompactINtNtB7_5utils12OffsetLookupmEB1v_INtNtB7_7replace7ReplaceNtNtB7_7capture7CaptureEEENtB5_8DiffHook6insertCskXhPDodhyTq_6mdtest.exit182.i84: ; preds = %bb.ee, %bb.ed
  %i.pc = load ptr, ptr %i.ol, align 8, !alias.scope !859, !noalias !855, !nonnull !3, !noundef !3
  %i.pd = getelementptr inbounds nuw [40 x i8], ptr %i.pc, i64 %i.oy ; 4 uses
  store i64 2, ptr %i.pd, align 8, !noalias !855
  %.sroa.412.0..sroa_idx.i85 = getelementptr inbounds nuw i8, ptr %i.pd, i64 8
  store i64 %.pre-phi881, ptr %.sroa.412.0..sroa_idx.i85, align 8, !noalias !855
  %.sroa.513.0..sroa_idx.i86 = getelementptr inbounds nuw i8, ptr %i.pd, i64 16
  store i64 %.pre-phi883, ptr %.sroa.513.0..sroa_idx.i86, align 8, !noalias !855
  %.sroa.614.0..sroa_idx.i87 = getelementptr inbounds nuw i8, ptr %i.pd, i64 24
  store i64 %i.oz, ptr %.sroa.614.0..sroa_idx.i87, align 8, !noalias !855
  %i.pe = add i64 %i.oy, 1
  store i64 %i.pe, ptr %i.ok, align 8, !alias.scope !859, !noalias !855
  br label %_RINvNtNtCsiqiOkcJdymw_7similar10algorithms5myers27maybe_emit_small_side_exactINtNtB4_5utils12OffsetLookupjEB1d_INtNtB4_4hook12NoFinishHookQINtNtB4_7compact7CompactIB1e_mEB2B_INtNtB4_7replace7ReplaceNtNtB4_7capture7CaptureEEEECskXhPDodhyTq_6mdtest.exit.thread302

_RINvNtNtCsiqiOkcJdymw_7similar10algorithms5myers27maybe_emit_small_side_exactINtNtB4_5utils12OffsetLookupjEB1d_INtNtB4_4hook12NoFinishHookQINtNtB4_7compact7CompactIB1e_mEB2B_INtNtB4_7replace7ReplaceNtNtB4_7capture7CaptureEEEECskXhPDodhyTq_6mdtest.exit.thread302: ; preds = %_RNvXs0_NtNtCsiqiOkcJdymw_7similar10algorithms4hookINtB5_12NoFinishHookQINtNtB7_7compact7CompactINtNtB7_5utils12OffsetLookupmEB1v_INtNtB7_7replace7ReplaceNtNtB7_7capture7CaptureEEENtB5_8DiffHook6deleteCskXhPDodhyTq_6mdtest.exit181.i99, %bb.ec, %_RNvXs0_NtNtCsiqiOkcJdymw_7similar10algorithms4hookINtB5_12NoFinishHookQINtNtB7_7compact7CompactINtNtB7_5utils12OffsetLookupmEB1v_INtNtB7_7replace7ReplaceNtNtB7_7capture7CaptureEEENtB5_8DiffHook6insertCskXhPDodhyTq_6mdtest.exit182.i84
  call fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VechEECskXhPDodhyTq_6mdtest(ptr noalias noundef align 8 dereferenceable(24) %i.b), !noalias !855
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !855
  br label %bb.av

bb.ef:                                            ; preds = %bb.eh, %bb.dz
  %i.pf = mul i64 %.sroa.09.0509.i, %i.nx         ; 4 uses
  %i.pg = add i64 %.sroa.09.0509.i, %.sroa.0.0    ; 2 uses
  %i.ph = add i64 %.sroa.039.0508.i, %.sroa.0188.0 ; 7 uses
  %i.pi = sub i64 %i.ph, %i.o                     ; 3 uses
  %i.pj = icmp ult i64 %i.pi, %i.q
  br i1 %i.pj, label %bb.ei, label %.invoke.i104

.invoke.i104:                                     ; preds = %bb.gl, %bb.gj, %bb.gh, %bb.gg, %bb.ge, %bb.eo, %bb.em, %bb.el, %bb.ek, %bb.ei, %bb.ef, %bb.fn, %bb.fl, %bb.fk, %bb.fj, %bb.fh, %bb.fa, %bb.ey, %bb.ex, %bb.ew, %bb.eu, %bb.ft, %bb.fq, %bb.fw, %bb.fv, %bb.gq, %bb.gp
  %i.pk = phi i64 [ %i.rr, %bb.fa ], [ %.reass.i141, %bb.gp ], [ %.reass486.i, %bb.gq ], [ %i.sy, %bb.fn ], [ %i.pi, %bb.ef ], [ %i.uf, %bb.fw ], [ %i.q, %bb.fq ], [ %i.ty, %bb.fv ], [ %i.w, %bb.ft ], [ %i.rb, %bb.eu ], [ %i.rf, %bb.ew ], [ %i.rj, %bb.ey ], [ %i.rh, %bb.ex ], [ %i.sg, %bb.fh ], [ %i.sk, %bb.fj ], [ %i.sq, %bb.fl ], [ %i.sm, %bb.fk ], [ %i.pt, %bb.ek ], [ %i.pv, %bb.el ], [ %i.ql, %bb.eo ], [ %i.pp, %bb.ei ], [ %i.qa, %bb.em ], [ %i.vc, %bb.gg ], [ %.reass.us.i144, %bb.ge ], [ %i.vv, %bb.gl ], [ %i.vg, %bb.gh ], [ %i.vm, %bb.gj ]
  %i.pl = phi i64 [ %.pre745.i.a, %bb.fa ], [ %i.q, %bb.gp ], [ %i.w, %bb.gq ], [ %.pre743.i, %bb.fn ], [ %i.q, %bb.ef ], [ %i.ua, %bb.fw ], [ %i.q, %bb.fq ], [ %i.ua, %bb.fv ], [ %i.w, %bb.ft ], [ %i.q, %bb.eu ], [ %.pre745.i.a, %bb.ew ], [ %.pre745.i.a, %bb.ey ], [ %.pre745.i.a, %bb.ex ], [ %i.w, %bb.fh ], [ %.pre743.i, %bb.fj ], [ %.pre743.i, %bb.fl ], [ %.pre743.i, %bb.fk ], [ %.pre741.i, %bb.ek ], [ %.pre741.i, %bb.el ], [ %.pre741.i, %bb.eo ], [ %i.w, %bb.ei ], [ %.pre741.i, %bb.em ], [ %i.ve, %bb.gg ], [ %i.q, %bb.ge ], [ %i.vu, %bb.gl ], [ %i.ve, %bb.gh ], [ %i.vn, %bb.gj ]
  %i.pm = phi ptr [ @62, %bb.fa ], [ @73, %bb.gp ], [ @74, %bb.gq ], [ @68, %bb.fn ], [ @51, %bb.ef ], [ @72, %bb.fw ], [ @69, %bb.fq ], [ @71, %bb.fv ], [ @70, %bb.ft ], [ @57, %bb.eu ], [ @59, %bb.ew ], [ @60, %bb.ey ], [ @61, %bb.ex ], [ @64, %bb.fh ], [ @65, %bb.fj ], [ @66, %bb.fl ], [ @67, %bb.fk ], [ @53, %bb.ek ], [ @55, %bb.el ], [ @56, %bb.eo ], [ @52, %bb.ei ], [ @54, %bb.em ], [ @75, %bb.gg ], [ @73, %bb.ge ], [ @78, %bb.gl ], [ @76, %bb.gh ], [ @77, %bb.gj ]
  invoke void @_RNvNtCs4NRVxsYgnAr_4core9panicking18panic_bounds_check(i64 noundef %i.pk, i64 noundef %i.pl, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.pm) #14
          to label %.cont.i105 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i88.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !855

.cont.i105:                                       ; preds = %.invoke.i104
  unreachable

bb.eg:                                            ; preds = %bb.dz
  %i.pn = invoke noundef zeroext i1 @_RNvNtCsiqiOkcJdymw_7similar16deadline_support17deadline_exceeded(i64 %9, i32 noundef range(i32 -1, 1000000000) %10)
          to label %bb.eh unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i88.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !855

bb.eh:                                            ; preds = %bb.eg
  br i1 %i.pn, label %.loopexit24.i125, label %bb.ef

bb.ei:                                            ; preds = %bb.ef
  %i.po = getelementptr inbounds nuw [8 x i8], ptr %i.s, i64 %i.pi ; 2 uses
  %i.pp = sub i64 %i.pg, %i.u                     ; 3 uses
  %i.pq = icmp ult i64 %i.pp, %i.w
  br i1 %i.pq, label %bb.ej, label %.invoke.i104

bb.ej:                                            ; preds = %bb.ei
  %i.pr = getelementptr inbounds nuw [8 x i8], ptr %i.y, i64 %i.pp ; 2 uses
  %.val210.i106 = load i64, ptr %i.po, align 8, !noalias !855, !noundef !3
  %.val211.i107 = load i64, ptr %i.pr, align 8, !noalias !855, !noundef !3
  %i.ps = icmp eq i64 %.val210.i106, %.val211.i107
  %.pre.i108 = load ptr, ptr %i.oh, align 8, !noalias !855 ; 4 uses
  %.pre741.i = load i64, ptr %i.oi, align 8, !noalias !855 ; 8 uses
  br i1 %i.ps, label %bb.ek, label %._crit_edge747.i

._crit_edge747.i:                                 ; preds = %bb.ej
  %.pre748.i = add nuw i64 %.sroa.09.0509.i, 1
  %.pre749.i = mul i64 %.pre748.i, %i.nx
  br label %bb.el

bb.ek:                                            ; preds = %bb.ej
  %i.pt = add i64 %i.pf, %.sroa.039.0508.i        ; 3 uses
  %i.pu = icmp ult i64 %i.pt, %.pre741.i
  br i1 %i.pu, label %bb.em, label %.invoke.i104

bb.el:                                            ; preds = %bb.en, %._crit_edge747.i
  %.pre-phi750.i = phi i64 [ %.pre749.i, %._crit_edge747.i ], [ %i.py, %bb.en ] ; 3 uses
  %i.pv = add i64 %.pre-phi750.i, %.sroa.039.0508.i ; 3 uses
  %i.pw = icmp ult i64 %i.pv, %.pre741.i
  br i1 %i.pw, label %bb.eo, label %.invoke.i104

bb.em:                                            ; preds = %bb.ek
  %i.px = add nuw i64 %.sroa.09.0509.i, 1
  %i.py = mul i64 %i.px, %i.nx                    ; 2 uses
  %i.pz = add nuw i64 %.sroa.039.0508.i, 1
  %i.qa = add i64 %i.pz, %i.py                    ; 3 uses
  %i.qb = icmp ult i64 %i.qa, %.pre741.i
  br i1 %i.qb, label %bb.en, label %.invoke.i104

bb.en:                                            ; preds = %bb.em
  %i.qc = getelementptr inbounds nuw i8, ptr %.pre.i108, i64 %i.pt
  %i.qd = load i8, ptr %i.qc, align 1, !noalias !855, !noundef !3
  %i.qe = getelementptr inbounds nuw i8, ptr %.pre.i108, i64 %i.qa
  %i.qf = load i8, ptr %i.qe, align 1, !noalias !855, !noundef !3
  %i.qg = add i8 %i.qf, 1
  %i.qh = icmp eq i8 %i.qd, %i.qg
  br i1 %i.qh, label %.preheader.i132, label %bb.el

.preheader.i132:                                  ; preds = %bb.en
  %i.qi = icmp ult i64 %.sroa.09.0509.i, %i.fj
  %i.qj = icmp ult i64 %.sroa.039.0508.i, %i.fk
  %or.cond177494.i = select i1 %i.qi, i1 %i.qj, i1 false
  br i1 %or.cond177494.i, label %.lr.ph497.i, label %._crit_edge498.i

bb.eo:                                            ; preds = %bb.el
  %i.qk = add i64 %.sroa.039.0508.i, 1            ; 3 uses
  %i.ql = add i64 %i.qk, %i.pf                    ; 3 uses
  %i.qm = icmp ult i64 %i.ql, %.pre741.i
  br i1 %i.qm, label %bb.ep, label %.invoke.i104

bb.ep:                                            ; preds = %bb.eo
  %i.qn = getelementptr inbounds nuw i8, ptr %.pre.i108, i64 %i.pv
  %i.qo = load i8, ptr %i.qn, align 1, !noalias !855, !noundef !3
  %i.qp = getelementptr inbounds nuw i8, ptr %.pre.i108, i64 %i.ql
  %i.qq = load i8, ptr %i.qp, align 1, !noalias !855, !noundef !3
  %.not164.i109 = icmp ult i8 %i.qo, %i.qq
  br i1 %.not164.i109, label %.preheader25.i127, label %.preheader30.i110

.preheader30.i110:                                ; preds = %bb.ep
  %umax.i111 = call i64 @llvm.umax.i64(i64 %.sroa.09.0509.i, i64 %i.fj) ; 3 uses
  %exitcond.not.i1131508.not = icmp ult i64 %.sroa.09.0509.i, %i.fj
  br i1 %exitcond.not.i1131508.not, label %.lr.ph1510, label %._crit_edge1511

.preheader25.i127:                                ; preds = %bb.ep
  %i.qr = icmp ult i64 %.sroa.039.0508.i, %i.fk
  br i1 %i.qr, label %.lr.ph489.i, label %._crit_edge.i128

.lr.ph489.i:                                      ; preds = %.preheader25.i127
  %i.qs = add i64 %.pre-phi750.i, 1
  %i.qt = add i64 %i.pf, 1
  br label %bb.eq

bb.eq:                                            ; preds = %bb.fc, %.lr.ph489.i
  %.sroa.039.1488.i = phi i64 [ %.sroa.039.0508.i, %.lr.ph489.i ], [ %i.ry, %bb.fc ] ; 9 uses
  %i.qu = and i64 %.sroa.039.1488.i, 1023
  %i.qv = icmp eq i64 %i.qu, 0
  %or.cond173.i129 = and i1 %.sroa.05.0.not510.i, %i.qv
  br i1 %or.cond173.i129, label %bb.es, label %bb.eu

._crit_edge.i128:                                 ; preds = %bb.fc, %bb.fb, %bb.ez, %.preheader25.i127
  %.sroa.039.1.lcssa.i = phi i64 [ %.sroa.039.0508.i, %.preheader25.i127 ], [ %i.fk, %bb.fc ], [ %.sroa.039.1488.i, %bb.fb ], [ %.sroa.039.1488.i, %bb.ez ] ; 3 uses
  %i.qw = sub nuw i64 %.sroa.039.1.lcssa.i, %.sroa.039.0508.i ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val51) ]
  %i.qx = load i64, ptr %i.ok, align 8, !alias.scope !860, !noalias !855, !noundef !3 ; 3 uses
  %i.qy = load i64, ptr %i.oj, align 8, !range !6, !alias.scope !860, !noalias !855, !noundef !3
  %i.qz = icmp eq i64 %i.qx, %i.qy
  br i1 %i.qz, label %bb.er, label %_RNvXs0_NtNtCsiqiOkcJdymw_7similar10algorithms4hookINtB5_12NoFinishHookQINtNtB7_7compact7CompactINtNtB7_5utils12OffsetLookupmEB1v_INtNtB7_7replace7ReplaceNtNtB7_7capture7CaptureEEENtB5_8DiffHook5equalCskXhPDodhyTq_6mdtest.exit.i118

bb.er:                                            ; preds = %._crit_edge.i128
  invoke void @_RNvMs3_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecNtNtCsiqiOkcJdymw_7similar5types6DiffOpE8grow_oneBP_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.oj)
          to label %_RNvXs0_NtNtCsiqiOkcJdymw_7similar10algorithms4hookINtB5_12NoFinishHookQINtNtB7_7compact7CompactINtNtB7_5utils12OffsetLookupmEB1v_INtNtB7_7replace7ReplaceNtNtB7_7capture7CaptureEEENtB5_8DiffHook5equalCskXhPDodhyTq_6mdtest.exit.i118 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i88.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !855

bb.es:                                            ; preds = %bb.eq
  %i.ra = invoke noundef zeroext i1 @_RNvNtCsiqiOkcJdymw_7similar16deadline_support17deadline_exceeded(i64 %9, i32 noundef range(i32 -1, 1000000000) %10)
          to label %bb.et unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i88.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !855

bb.et:                                            ; preds = %bb.es
  br i1 %i.ra, label %.loopexit24.i125, label %bb.eu

bb.eu:                                            ; preds = %bb.et, %bb.eq
  %i.rb = add i64 %.sroa.039.1488.i, %invariant.op.i92 ; 3 uses
  %i.rc = icmp ult i64 %i.rb, %i.q
  br i1 %i.rc, label %bb.ev, label %.invoke.i104

bb.ev:                                            ; preds = %bb.eu
  %i.rd = getelementptr inbounds nuw [8 x i8], ptr %i.s, i64 %i.rb
  %.val208.i130 = load i64, ptr %i.rd, align 8, !noalias !855, !noundef !3
  %.val209.i131 = load i64, ptr %i.pr, align 8, !noalias !855, !noundef !3
  %i.re = icmp eq i64 %.val208.i130, %.val209.i131
  %.pre744.i.a = load ptr, ptr %i.oh, align 8, !noalias !855 ; 4 uses
  %.pre745.i.a = load i64, ptr %i.oi, align 8, !noalias !855 ; 8 uses
  br i1 %i.re, label %bb.ew, label %bb.ex

bb.ew:                                            ; preds = %bb.ev
  %i.rf = add i64 %.sroa.039.1488.i, %i.pf        ; 3 uses
  %i.rg = icmp ult i64 %i.rf, %.pre745.i.a
  br i1 %i.rg, label %bb.ey, label %.invoke.i104

bb.ex:                                            ; preds = %bb.ez, %bb.ev
  %i.rh = add i64 %.sroa.039.1488.i, %.pre-phi750.i ; 3 uses
  %i.ri = icmp ult i64 %i.rh, %.pre745.i.a
  br i1 %i.ri, label %bb.fa, label %.invoke.i104

bb.ey:                                            ; preds = %bb.ew
  %i.rj = add i64 %i.qs, %.sroa.039.1488.i        ; 3 uses
  %i.rk = icmp ult i64 %i.rj, %.pre745.i.a
  br i1 %i.rk, label %bb.ez, label %.invoke.i104

bb.ez:                                            ; preds = %bb.ey
  %i.rl = getelementptr inbounds nuw i8, ptr %.pre744.i.a, i64 %i.rf
  %i.rm = load i8, ptr %i.rl, align 1, !noalias !855, !noundef !3
  %i.rn = getelementptr inbounds nuw i8, ptr %.pre744.i.a, i64 %i.rj
  %i.ro = load i8, ptr %i.rn, align 1, !noalias !855, !noundef !3
  %i.rp = add i8 %i.ro, 1
  %i.rq = icmp eq i8 %i.rm, %i.rp
  br i1 %i.rq, label %._crit_edge.i128, label %bb.ex

bb.fa:                                            ; preds = %bb.ex
  %i.rr = add i64 %i.qt, %.sroa.039.1488.i        ; 3 uses
  %i.rs = icmp ult i64 %i.rr, %.pre745.i.a
  br i1 %i.rs, label %bb.fb, label %.invoke.i104

bb.fb:                                            ; preds = %bb.fa
  %i.rt = getelementptr inbounds nuw i8, ptr %.pre744.i.a, i64 %i.rh
  %i.ru = load i8, ptr %i.rt, align 1, !noalias !855, !noundef !3
  %i.rv = getelementptr inbounds nuw i8, ptr %.pre744.i.a, i64 %i.rr
  %i.rw = load i8, ptr %i.rv, align 1, !noalias !855, !noundef !3
  %i.rx = icmp ult i8 %i.ru, %i.rw
  br i1 %i.rx, label %bb.fc, label %._crit_edge.i128

bb.fc:                                            ; preds = %bb.fb
  %i.ry = add nuw i64 %.sroa.039.1488.i, 1        ; 2 uses
  %i.rz = icmp ult i64 %i.ry, %i.fk
  br i1 %i.rz, label %bb.eq, label %._crit_edge.i128

bb.fd:                                            ; preds = %bb.fo
  %exitcond.not.i113 = icmp eq i64 %.pre-phi752.i, %umax.i111
  br i1 %exitcond.not.i113, label %._crit_edge1511, label %.lr.ph1510

.lr.ph1510:                                       ; preds = %.preheader30.i110, %bb.fd
  %.sroa.09.1.i1121509 = phi i64 [ %.pre-phi752.i, %bb.fd ], [ %.sroa.09.0509.i, %.preheader30.i110 ] ; 6 uses
  br i1 %or.cond170.i103, label %bb.ff, label %bb.fh

._crit_edge1511:                                  ; preds = %bb.fd, %bb.fm, %bb.fo, %.preheader30.i110
  %.sroa.09.1.lcssa.i117 = phi i64 [ %umax.i111, %.preheader30.i110 ], [ %umax.i111, %bb.fd ], [ %.sroa.09.1.i1121509, %bb.fm ], [ %.sroa.09.1.i1121509, %bb.fo ] ; 3 uses
  %i.sa = sub nuw i64 %.sroa.09.1.lcssa.i117, %.sroa.09.0509.i ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val51) ]
  %i.sb = load i64, ptr %i.ok, align 8, !alias.scope !861, !noalias !855, !noundef !3 ; 3 uses
  %i.sc = load i64, ptr %i.oj, align 8, !range !6, !alias.scope !861, !noalias !855, !noundef !3
  %i.sd = icmp eq i64 %i.sb, %i.sc
  br i1 %i.sd, label %bb.fe, label %_RNvXs0_NtNtCsiqiOkcJdymw_7similar10algorithms4hookINtB5_12NoFinishHookQINtNtB7_7compact7CompactINtNtB7_5utils12OffsetLookupmEB1v_INtNtB7_7replace7ReplaceNtNtB7_7capture7CaptureEEENtB5_8DiffHook5equalCskXhPDodhyTq_6mdtest.exit.i118

bb.fe:                                            ; preds = %._crit_edge1511
  invoke void @_RNvMs3_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecNtNtCsiqiOkcJdymw_7similar5types6DiffOpE8grow_oneBP_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.oj)
          to label %_RNvXs0_NtNtCsiqiOkcJdymw_7similar10algorithms4hookINtB5_12NoFinishHookQINtNtB7_7compact7CompactINtNtB7_5utils12OffsetLookupmEB1v_INtNtB7_7replace7ReplaceNtNtB7_7capture7CaptureEEENtB5_8DiffHook5equalCskXhPDodhyTq_6mdtest.exit.i118 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i88.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !855

bb.ff:                                            ; preds = %.lr.ph1510
  %i.se = invoke noundef zeroext i1 @_RNvNtCsiqiOkcJdymw_7similar16deadline_support17deadline_exceeded(i64 %9, i32 noundef range(i32 -1, 1000000000) %10)
          to label %bb.fg unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i88.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !855

bb.fg:                                            ; preds = %bb.ff
  br i1 %i.se, label %.loopexit24.i125, label %bb.fh

bb.fh:                                            ; preds = %bb.fg, %.lr.ph1510
  %i.sf = mul i64 %.sroa.09.1.i1121509, %i.nx     ; 2 uses
  %i.sg = add i64 %.sroa.09.1.i1121509, %invariant.op485.i ; 3 uses
  %i.sh = icmp ult i64 %i.sg, %i.w
  br i1 %i.sh, label %bb.fi, label %.invoke.i104

bb.fi:                                            ; preds = %bb.fh
  %i.si = getelementptr inbounds nuw [8 x i8], ptr %i.y, i64 %i.sg
  %.val206.i114 = load i64, ptr %i.po, align 8, !noalias !855, !noundef !3
  %.val207.i115 = load i64, ptr %i.si, align 8, !noalias !855, !noundef !3
  %i.sj = icmp eq i64 %.val206.i114, %.val207.i115
  %.pre742.i = load ptr, ptr %i.oh, align 8, !noalias !855 ; 4 uses
  %.pre743.i = load i64, ptr %i.oi, align 8, !noalias !855 ; 8 uses
  br i1 %i.sj, label %bb.fj, label %._crit_edge746.i

._crit_edge746.i:                                 ; preds = %bb.fi
  %.pre751.i = add i64 %.sroa.09.1.i1121509, 1    ; 2 uses
  %.pre753.i = mul i64 %.pre751.i, %i.nx
  br label %bb.fk

bb.fj:                                            ; preds = %bb.fi
  %i.sk = add i64 %i.sf, %.sroa.039.0508.i        ; 3 uses
  %i.sl = icmp ult i64 %i.sk, %.pre743.i
  br i1 %i.sl, label %bb.fl, label %.invoke.i104

bb.fk:                                            ; preds = %bb.fm, %._crit_edge746.i
  %.pre-phi754.i.a = phi i64 [ %.pre753.i, %._crit_edge746.i ], [ %i.sp, %bb.fm ]
  %.pre-phi752.i = phi i64 [ %.pre751.i, %._crit_edge746.i ], [ %i.so, %bb.fm ] ; 2 uses
  %i.sm = add i64 %.pre-phi754.i.a, %.sroa.039.0508.i ; 3 uses
  %i.sn = icmp ult i64 %i.sm, %.pre743.i
  br i1 %i.sn, label %bb.fn, label %.invoke.i104

bb.fl:                                            ; preds = %bb.fj
  %i.so = add i64 %.sroa.09.1.i1121509, 1         ; 2 uses
  %i.sp = mul i64 %i.so, %i.nx                    ; 2 uses
  %i.sq = add i64 %i.sp, %i.qk                    ; 3 uses
  %i.sr = icmp ult i64 %i.sq, %.pre743.i
  br i1 %i.sr, label %bb.fm, label %.invoke.i104

bb.fm:                                            ; preds = %bb.fl
  %i.ss = getelementptr inbounds nuw i8, ptr %.pre742.i, i64 %i.sk
  %i.st = load i8, ptr %i.ss, align 1, !noalias !855, !noundef !3
  %i.su = getelementptr inbounds nuw i8, ptr %.pre742.i, i64 %i.sq
  %i.sv = load i8, ptr %i.su, align 1, !noalias !855, !noundef !3
  %i.sw = add i8 %i.sv, 1
  %i.sx = icmp eq i8 %i.st, %i.sw
  br i1 %i.sx, label %._crit_edge1511, label %bb.fk

bb.fn:                                            ; preds = %bb.fk
  %i.sy = add i64 %i.sf, %i.qk                    ; 3 uses
  %i.sz = icmp ult i64 %i.sy, %.pre743.i
  br i1 %i.sz, label %bb.fo, label %.invoke.i104

bb.fo:                                            ; preds = %bb.fn
  %i.ta = getelementptr inbounds nuw i8, ptr %.pre742.i, i64 %i.sm
  %i.tb = load i8, ptr %i.ta, align 1, !noalias !855, !noundef !3
  %i.tc = getelementptr inbounds nuw i8, ptr %.pre742.i, i64 %i.sy
  %i.td = load i8, ptr %i.tc, align 1, !noalias !855, !noundef !3
  %.not167.i116 = icmp ult i8 %i.tb, %i.td
  br i1 %.not167.i116, label %._crit_edge1511, label %bb.fd

_RNvXs0_NtNtCsiqiOkcJdymw_7similar10algorithms4hookINtB5_12NoFinishHookQINtNtB7_7compact7CompactINtNtB7_5utils12OffsetLookupmEB1v_INtNtB7_7replace7ReplaceNtNtB7_7capture7CaptureEEENtB5_8DiffHook5equalCskXhPDodhyTq_6mdtest.exit.i118: ; preds = %bb.fp, %._crit_edge498.i, %bb.fe, %._crit_edge1511, %bb.er, %._crit_edge.i128
  %.sink1039.i = phi i64 [ %i.tk, %._crit_edge498.i ], [ %i.qx, %._crit_edge.i128 ], [ %i.tk, %bb.fp ], [ %i.qx, %bb.er ], [ %i.sb, %bb.fe ], [ %i.sb, %._crit_edge1511 ] ; 3 uses
  %.sink1036.i = phi i64 [ 0, %._crit_edge498.i ], [ 2, %._crit_edge.i128 ], [ 0, %bb.fp ], [ 2, %bb.er ], [ 1, %bb.fe ], [ 1, %._crit_edge1511 ]
  %.sink1033.i = phi i64 [ %i.ph, %._crit_edge498.i ], [ %i.ph, %._crit_edge.i128 ], [ %i.ph, %bb.fp ], [ %i.ph, %bb.er ], [ %i.sa, %bb.fe ], [ %i.sa, %._crit_edge1511 ]
  %.sink.i119 = phi i64 [ %i.tj, %._crit_edge498.i ], [ %i.qw, %._crit_edge.i128 ], [ %i.tj, %bb.fp ], [ %i.qw, %bb.er ], [ %i.ph, %bb.fe ], [ %i.ph, %._crit_edge1511 ]
  %.sroa.039.3.i = phi i64 [ %.sroa.039.4.lcssa.i, %._crit_edge498.i ], [ %.sroa.039.1.lcssa.i, %._crit_edge.i128 ], [ %.sroa.039.4.lcssa.i, %bb.fp ], [ %.sroa.039.1.lcssa.i, %bb.er ], [ %.sroa.039.0508.i, %bb.fe ], [ %.sroa.039.0508.i, %._crit_edge1511 ] ; 5 uses
  %.sroa.09.3.i120 = phi i64 [ %.sroa.09.4.lcssa.i133, %._crit_edge498.i ], [ %.sroa.09.0509.i, %._crit_edge.i128 ], [ %.sroa.09.4.lcssa.i133, %bb.fp ], [ %.sroa.09.0509.i, %bb.er ], [ %.sroa.09.1.lcssa.i117, %bb.fe ], [ %.sroa.09.1.lcssa.i117, %._crit_edge1511 ] ; 5 uses
  %i.te = load ptr, ptr %i.ol, align 8, !noalias !855, !nonnull !3, !noundef !3
  %i.tf = getelementptr inbounds nuw [40 x i8], ptr %i.te, i64 %.sink1039.i ; 4 uses
  store i64 %.sink1036.i, ptr %i.tf, align 8, !noalias !855
  %.sroa.417.0..sroa_idx.i121 = getelementptr inbounds nuw i8, ptr %i.tf, i64 8
  store i64 %i.pg, ptr %.sroa.417.0..sroa_idx.i121, align 8, !noalias !855
  %.sroa.518.0..sroa_idx.i122 = getelementptr inbounds nuw i8, ptr %i.tf, i64 16
  store i64 %.sink1033.i, ptr %.sroa.518.0..sroa_idx.i122, align 8, !noalias !855
  %.sroa.619.0..sroa_idx.i123 = getelementptr inbounds nuw i8, ptr %i.tf, i64 24
  store i64 %.sink.i119, ptr %.sroa.619.0..sroa_idx.i123, align 8, !noalias !855
  %i.tg = add i64 %.sink1039.i, 1                 ; 4 uses
  store i64 %i.tg, ptr %i.ok, align 8, !noalias !855
  %i.th = icmp ult i64 %.sroa.09.3.i120, %i.fj    ; 2 uses
  %i.ti = icmp ult i64 %.sroa.039.3.i, %i.fk      ; 3 uses
  %or.cond.i124 = select i1 %i.th, i1 %i.ti, i1 false
  br i1 %or.cond.i124, label %bb.dz, label %._crit_edge512.i

._crit_edge498.i:                                 ; preds = %bb.fy, %bb.fx, %bb.fu, %.preheader.i132
  %.sroa.039.4.lcssa.i = phi i64 [ %.sroa.039.0508.i, %.preheader.i132 ], [ %i.ue, %bb.fy ], [ %.sroa.039.4495.i, %bb.fu ], [ %.sroa.039.4495.i, %bb.fx ] ; 2 uses
  %.sroa.09.4.lcssa.i133 = phi i64 [ %.sroa.09.0509.i, %.preheader.i132 ], [ %i.uc, %bb.fy ], [ %.sroa.09.4496.i, %bb.fu ], [ %.sroa.09.4496.i, %bb.fx ] ; 3 uses
  %i.tj = sub i64 %.sroa.09.4.lcssa.i133, %.sroa.09.0509.i ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val51) ]
  %i.tk = load i64, ptr %i.ok, align 8, !alias.scope !862, !noalias !855, !noundef !3 ; 3 uses
  %i.tl = load i64, ptr %i.oj, align 8, !range !6, !alias.scope !862, !noalias !855, !noundef !3
  %i.tm = icmp eq i64 %i.tk, %i.tl
  br i1 %i.tm, label %bb.fp, label %_RNvXs0_NtNtCsiqiOkcJdymw_7similar10algorithms4hookINtB5_12NoFinishHookQINtNtB7_7compact7CompactINtNtB7_5utils12OffsetLookupmEB1v_INtNtB7_7replace7ReplaceNtNtB7_7capture7CaptureEEENtB5_8DiffHook5equalCskXhPDodhyTq_6mdtest.exit.i118

bb.fp:                                            ; preds = %._crit_edge498.i
  invoke void @_RNvMs3_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecNtNtCsiqiOkcJdymw_7similar5types6DiffOpE8grow_oneBP_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.oj)
          to label %_RNvXs0_NtNtCsiqiOkcJdymw_7similar10algorithms4hookINtB5_12NoFinishHookQINtNtB7_7compact7CompactINtNtB7_5utils12OffsetLookupmEB1v_INtNtB7_7replace7ReplaceNtNtB7_7capture7CaptureEEENtB5_8DiffHook5equalCskXhPDodhyTq_6mdtest.exit.i118 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i88.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !855

.lr.ph497.i:                                      ; preds = %.preheader.i132, %bb.fy
  %.sroa.09.4496.i = phi i64 [ %i.uc, %bb.fy ], [ %.sroa.09.0509.i, %.preheader.i132 ] ; 5 uses
  %.sroa.039.4495.i = phi i64 [ %i.ue, %bb.fy ], [ %.sroa.039.0508.i, %.preheader.i132 ] ; 6 uses
  %i.tn = and i64 %.sroa.039.4495.i, 1023
  %i.to = icmp eq i64 %i.tn, 0
  %or.cond180.i134 = select i1 %.sroa.05.0.not510.i, i1 %i.to, i1 false
  br i1 %or.cond180.i134, label %bb.fr, label %bb.fq

bb.fq:                                            ; preds = %bb.fs, %.lr.ph497.i
  %i.tp = mul i64 %.sroa.09.4496.i, %i.nx
  %i.tq = add i64 %.sroa.039.4495.i, %invariant.op.i92 ; 2 uses
  %i.tr = icmp ult i64 %i.tq, %i.q
  br i1 %i.tr, label %bb.ft, label %.invoke.i104

bb.fr:                                            ; preds = %.lr.ph497.i
  %i.ts = invoke noundef zeroext i1 @_RNvNtCsiqiOkcJdymw_7similar16deadline_support17deadline_exceeded(i64 %9, i32 noundef range(i32 -1, 1000000000) %10)
          to label %bb.fs unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i88.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !855

bb.fs:                                            ; preds = %bb.fr
  br i1 %i.ts, label %.loopexit24.i125, label %bb.fq

bb.ft:                                            ; preds = %bb.fq
  %i.tt = add i64 %.sroa.09.4496.i, %invariant.op485.i ; 2 uses
  %i.tu = icmp ult i64 %i.tt, %i.w
  br i1 %i.tu, label %bb.fu, label %.invoke.i104

bb.fu:                                            ; preds = %bb.ft
  %i.tv = getelementptr inbounds nuw [8 x i8], ptr %i.s, i64 %i.tq
  %i.tw = getelementptr inbounds nuw [8 x i8], ptr %i.y, i64 %i.tt
  %.val204.i135 = load i64, ptr %i.tv, align 8, !noalias !855, !noundef !3
  %.val205.i136 = load i64, ptr %i.tw, align 8, !noalias !855, !noundef !3
  %i.tx = icmp eq i64 %.val204.i135, %.val205.i136
  br i1 %i.tx, label %bb.fv, label %._crit_edge498.i

bb.fv:                                            ; preds = %bb.fu
  %i.ty = add i64 %i.tp, %.sroa.039.4495.i        ; 3 uses
  %i.tz = load ptr, ptr %i.oh, align 8, !noalias !855, !nonnull !3, !noundef !3 ; 2 uses
  %i.ua = load i64, ptr %i.oi, align 8, !noalias !855, !noundef !3 ; 4 uses
  %i.ub = icmp ult i64 %i.ty, %i.ua
  br i1 %i.ub, label %bb.fw, label %.invoke.i104

bb.fw:                                            ; preds = %bb.fv
  %i.uc = add nuw i64 %.sroa.09.4496.i, 1         ; 4 uses
  %i.ud = mul i64 %i.uc, %i.nx
  %i.ue = add nuw i64 %.sroa.039.4495.i, 1        ; 4 uses
  %i.uf = add i64 %i.ue, %i.ud                    ; 3 uses
  %i.ug = icmp ult i64 %i.uf, %i.ua
  br i1 %i.ug, label %bb.fx, label %.invoke.i104

bb.fx:                                            ; preds = %bb.fw
  %i.uh = getelementptr inbounds nuw i8, ptr %i.tz, i64 %i.ty
  %i.ui = load i8, ptr %i.uh, align 1, !noalias !855, !noundef !3
  %i.uj = getelementptr inbounds nuw i8, ptr %i.tz, i64 %i.uf
  %i.uk = load i8, ptr %i.uj, align 1, !noalias !855, !noundef !3
  %i.ul = add i8 %i.uk, 1
  %i.um = icmp eq i8 %i.ui, %i.ul
  br i1 %i.um, label %bb.fy, label %._crit_edge498.i

bb.fy:                                            ; preds = %bb.fx
  %i.un = icmp ult i64 %i.uc, %i.fj
  %i.uo = icmp ult i64 %i.ue, %i.fk
  %or.cond177.i137 = and i1 %i.un, %i.uo
  br i1 %or.cond177.i137, label %.lr.ph497.i, label %._crit_edge498.i

.loopexit24.i125:                                 ; preds = %bb.gb, %bb.gd, %bb.eh, %bb.fg, %bb.et, %bb.fs, %bb.go
  invoke void @_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCskXhPDodhyTq_6mdtest(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.b)
          to label %_RINvNtNtCsiqiOkcJdymw_7similar10algorithms5myers27maybe_emit_small_side_exactINtNtB4_5utils12OffsetLookupjEB1d_INtNtB4_4hook12NoFinishHookQINtNtB4_7compact7CompactIB1e_mEB2B_INtNtB4_7replace7ReplaceNtNtB4_7capture7CaptureEEEECskXhPDodhyTq_6mdtest.exit unwind label %bb.fz, !noalias !855

bb.fz:                                            ; preds = %.loopexit24.i125
  %i.up = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCskXhPDodhyTq_6mdtest(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.b)
          to label %common.resume unwind label %bb.ga, !noalias !855

bb.ga:                                            ; preds = %bb.fz
  %i.uq = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #13, !noalias !855
  unreachable

bb.gb:                                            ; preds = %.lr.ph484.split.i
  br i1 %i.on, label %.loopexit24.i125, label %.lr.ph.i138

.lr.ph.i138:                                      ; preds = %bb.gb
  %i.ur = mul i64 %i.om, %i.nx                    ; 2 uses
  %i.us = mul i64 %.sroa.0102.0483.i, %i.nx       ; 2 uses
  %.reass486.i = add i64 %i.om, %invariant.op485.i ; 3 uses
  %i.ut = icmp ult i64 %.reass486.i, %i.w
  %i.uu = getelementptr inbounds nuw [8 x i8], ptr %i.y, i64 %.reass486.i
  %.fr.i139 = freeze i1 %i.ut
  br i1 %.fr.i139, label %.lr.ph.split.us.i142, label %.lr.ph.split.i140

.lr.ph.split.us.i142:                             ; preds = %.lr.ph.i138, %bb.gm
  %.sroa.0105.0432.us.i143 = phi i64 [ %i.uv, %bb.gm ], [ %i.fk, %.lr.ph.i138 ] ; 3 uses
  %i.uv = add i64 %.sroa.0105.0432.us.i143, -1    ; 6 uses
  %i.uw = and i64 %i.uv, 1023
  %i.ux = icmp eq i64 %i.uw, 0
  br i1 %i.ux, label %bb.gc, label %bb.ge

bb.gc:                                            ; preds = %.lr.ph.split.us.i142
  %i.uy = invoke noundef zeroext i1 @_RNvNtCsiqiOkcJdymw_7similar16deadline_support17deadline_exceeded(i64 %9, i32 noundef range(i32 -1, 1000000000) %10)
          to label %bb.gd unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i88.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !855

bb.gd:                                            ; preds = %bb.gc
  br i1 %i.uy, label %.loopexit24.i125, label %bb.ge

bb.ge:                                            ; preds = %bb.gd, %.lr.ph.split.us.i142
end_hunk_5
begin_hunk_6_@_RINvNtNtCsiqiOkcJdymw_7similar10algorithms5myers7conquerINtNtB4_5utils12OffsetLookupjEBS_INtNtB4_4hook12NoFinishHookQINtNtB4_7compact7CompactIBT_mEB2f_INtNtB4_7replace7ReplaceNtNtB4_7capture7CaptureEEEECskXhPDodhyTq_6mdtest:bb.a
bb.gm:                                            ; preds = %bb.gl
  %i.vx = getelementptr inbounds nuw i8, ptr %i.vt, i64 %i.vv
  store i8 %.sroa.04.0.us.i148, ptr %i.vx, align 1, !noalias !855
  %.not168.us.i149 = icmp eq i64 %i.uv, 0
  br i1 %.not168.us.i149, label %..loopexit39_crit_edge.split.us.i150, label %.lr.ph.split.us.i142

..loopexit39_crit_edge.split.us.i150:             ; preds = %bb.gm
  %.not.i151 = icmp eq i64 %i.om, 0
  br i1 %.not.i151, label %.lr.ph511.i, label %.lr.ph484.split.i

.lr.ph.split.i140:                                ; preds = %.lr.ph.i138
  %i.vy = add i64 %i.fk, -1                       ; 2 uses
  %i.vz = and i64 %i.vy, 1023
  %i.wa = icmp eq i64 %i.vz, 0
  br i1 %i.wa, label %bb.gn, label %bb.gp

bb.gn:                                            ; preds = %.lr.ph.split.i140
  %i.wb = invoke noundef zeroext i1 @_RNvNtCsiqiOkcJdymw_7similar16deadline_support17deadline_exceeded(i64 %9, i32 noundef range(i32 -1, 1000000000) %10)
          to label %bb.go unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i88.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !855

bb.go:                                            ; preds = %bb.gn
  br i1 %i.wb, label %.loopexit24.i125, label %bb.gp

bb.gp:                                            ; preds = %bb.go, %.lr.ph.split.i140
  %.reass.i141 = add i64 %invariant.op.i92, %i.vy ; 2 uses
  %i.wc = icmp ult i64 %.reass.i141, %i.q
  br i1 %i.wc, label %bb.gq, label %.invoke.i104

bb.gq:                                            ; preds = %bb.gp
  br label %.invoke.i104

bb.gr:                                            ; preds = %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i88.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp
  %i.wd = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #13, !noalias !855
  unreachable

_RINvNtNtCsiqiOkcJdymw_7similar10algorithms5myers27maybe_emit_small_side_exactINtNtB4_5utils12OffsetLookupjEB1d_INtNtB4_4hook12NoFinishHookQINtNtB4_7compact7CompactIB1e_mEB2B_INtNtB4_7replace7ReplaceNtNtB4_7capture7CaptureEEEECskXhPDodhyTq_6mdtest.exit: ; preds = %.loopexit24.i125
  call void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCskXhPDodhyTq_6mdtest(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.b), !noalias !855
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !855
  br label %_RINvNtNtCsiqiOkcJdymw_7similar10algorithms5myers27maybe_emit_small_side_exactINtNtB4_5utils12OffsetLookupjEB1d_INtNtB4_4hook12NoFinishHookQINtNtB4_7compact7CompactIB1e_mEB2B_INtNtB4_7replace7ReplaceNtNtB4_7capture7CaptureEEEECskXhPDodhyTq_6mdtest.exit.thread

_RINvNtNtCsiqiOkcJdymw_7similar10algorithms5myers27maybe_emit_small_side_exactINtNtB4_5utils12OffsetLookupjEB1d_INtNtB4_4hook12NoFinishHookQINtNtB4_7compact7CompactIB1e_mEB2B_INtNtB4_7replace7ReplaceNtNtB4_7capture7CaptureEEEECskXhPDodhyTq_6mdtest.exit.thread: ; preds = %bb.az, %bb.dw, %bb.bc, %bb.ba, %bb.ay, %.sink.split.i, %_RINvNtNtCsiqiOkcJdymw_7similar10algorithms5myers27maybe_emit_small_side_exactINtNtB4_5utils12OffsetLookupjEB1d_INtNtB4_4hook12NoFinishHookQINtNtB4_7compact7CompactIB1e_mEB2B_INtNtB4_7replace7ReplaceNtNtB4_7capture7CaptureEEEECskXhPDodhyTq_6mdtest.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  call fastcc void @_RINvNtNtCsiqiOkcJdymw_7similar10algorithms5myers17find_middle_snakeINtNtB4_5utils12OffsetLookupjEB13_ECskXhPDodhyTq_6mdtest(ptr noalias noundef align 8 captures(none) dereferenceable(24) %i.g, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) %1, i64 noundef %.sroa.0.0, i64 noundef %i.l, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) %4, i64 noundef %.sroa.0188.0, i64 noundef %i.m, ptr noalias noundef align 8 dereferenceable(32) %7, ptr noalias noundef align 8 dereferenceable(32) %8, i64 %9, i32 noundef %10)
  %i.we = load i64, ptr %i.g, align 8, !range !8, !noundef !3
  %i.wf = trunc nuw i64 %i.we to i1
  br i1 %i.wf, label %bb.gs, label %bb.gt

bb.gs:                                            ; preds = %_RINvNtNtCsiqiOkcJdymw_7similar10algorithms5myers27maybe_emit_small_side_exactINtNtB4_5utils12OffsetLookupjEB1d_INtNtB4_4hook12NoFinishHookQINtNtB4_7compact7CompactIB1e_mEB2B_INtNtB4_7replace7ReplaceNtNtB4_7capture7CaptureEEEECskXhPDodhyTq_6mdtest.exit.thread
  %i.wg = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %i.wh = load i64, ptr %i.wg, align 8, !noundef !3 ; 2 uses
  %i.wi = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  %i.wj = load i64, ptr %i.wi, align 8, !noundef !3 ; 2 uses
  call fastcc void @_RINvNtNtCsiqiOkcJdymw_7similar10algorithms5myers7conquerINtNtB4_5utils12OffsetLookupjEBS_INtNtB4_4hook12NoFinishHookQINtNtB4_7compact7CompactIBT_mEB2f_INtNtB4_7replace7ReplaceNtNtB4_7capture7CaptureEEEECskXhPDodhyTq_6mdtest(ptr noalias noundef align 8 dereferenceable(8) %0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) %1, i64 noundef %.sroa.0.0, i64 noundef %i.wh, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) %4, i64 noundef %.sroa.0188.0, i64 noundef %i.wj, ptr noalias noundef align 8 dereferenceable(32) %7, ptr noalias noundef align 8 dereferenceable(32) %8, i64 %9, i32 noundef %10)
  call fastcc void @_RINvNtNtCsiqiOkcJdymw_7similar10algorithms5myers7conquerINtNtB4_5utils12OffsetLookupjEBS_INtNtB4_4hook12NoFinishHookQINtNtB4_7compact7CompactIBT_mEB2f_INtNtB4_7replace7ReplaceNtNtB4_7capture7CaptureEEEECskXhPDodhyTq_6mdtest(ptr noalias noundef align 8 dereferenceable(8) %0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) %1, i64 noundef %i.wh, i64 noundef %i.l, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) %4, i64 noundef %i.wj, i64 noundef %i.m, ptr noalias noundef align 8 dereferenceable(32) %7, ptr noalias noundef align 8 dereferenceable(32) %8, i64 %9, i32 noundef %10)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  br label %bb.av

bb.gt:                                            ; preds = %_RINvNtNtCsiqiOkcJdymw_7similar10algorithms5myers27maybe_emit_small_side_exactINtNtB4_5utils12OffsetLookupjEB1d_INtNtB4_4hook12NoFinishHookQINtNtB4_7compact7CompactIB1e_mEB2B_INtNtB4_7replace7ReplaceNtNtB4_7capture7CaptureEEEECskXhPDodhyTq_6mdtest.exit.thread
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  %i.wk = sub nuw i64 %i.l, %.sroa.0.0
  call void @llvm.experimental.noalias.scope.decl(metadata !863)
  call void @llvm.experimental.noalias.scope.decl(metadata !864)
  %i.wl = load ptr, ptr %0, align 8, !alias.scope !865, !nonnull !3, !align !5, !noundef !3 ; 3 uses
  %i.wm = getelementptr inbounds nuw i8, ptr %i.wl, i64 120 ; 4 uses
  %i.wn = getelementptr inbounds nuw i8, ptr %i.wl, i64 136 ; 3 uses
  %i.wo = load i64, ptr %i.wn, align 8, !alias.scope !866, !noalias !865, !noundef !3 ; 4 uses
  %i.wp = load i64, ptr %i.wm, align 8, !range !6, !alias.scope !866, !noalias !865, !noundef !3
  %i.wq = icmp eq i64 %i.wo, %i.wp
  br i1 %i.wq, label %bb.gu, label %_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCsiqiOkcJdymw_7similar5types6DiffOpE8push_mutCskXhPDodhyTq_6mdtest.exit152

bb.gu:                                            ; preds = %bb.gt
  call void @_RNvMs3_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecNtNtCsiqiOkcJdymw_7similar5types6DiffOpE8grow_oneBP_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.wm), !noalias !867
  br label %_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCsiqiOkcJdymw_7similar5types6DiffOpE8push_mutCskXhPDodhyTq_6mdtest.exit152

_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCsiqiOkcJdymw_7similar5types6DiffOpE8push_mutCskXhPDodhyTq_6mdtest.exit152: ; preds = %bb.gt, %bb.gu
  %i.wr = getelementptr inbounds nuw i8, ptr %i.wl, i64 128 ; 2 uses
  %i.ws = load ptr, ptr %i.wr, align 8, !alias.scope !866, !noalias !865, !nonnull !3, !noundef !3
  %i.wt = getelementptr inbounds nuw [40 x i8], ptr %i.ws, i64 %i.wo ; 4 uses
  store i64 1, ptr %i.wt, align 8, !noalias !865
  %.sroa.4239.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.wt, i64 8
  store i64 %.sroa.0.0, ptr %.sroa.4239.0..sroa_idx, align 8, !noalias !865
  %.sroa.5240.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.wt, i64 16
  store i64 %i.wk, ptr %.sroa.5240.0..sroa_idx, align 8, !noalias !865
  %.sroa.6241.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.wt, i64 24
  store i64 %.sroa.0188.0, ptr %.sroa.6241.0..sroa_idx, align 8, !noalias !865
  %i.wu = add i64 %i.wo, 1                        ; 3 uses
  store i64 %i.wu, ptr %i.wn, align 8, !alias.scope !866, !noalias !865
  %i.wv = sub nuw i64 %i.m, %.sroa.0188.0
  %i.ww = load i64, ptr %i.wm, align 8, !range !6, !alias.scope !868, !noalias !869, !noundef !3
  %i.wx = icmp eq i64 %i.wu, %i.ww
  br i1 %i.wx, label %bb.gv, label %_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCsiqiOkcJdymw_7similar5types6DiffOpE8push_mutCskXhPDodhyTq_6mdtest.exit153

bb.gv:                                            ; preds = %_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCsiqiOkcJdymw_7similar5types6DiffOpE8push_mutCskXhPDodhyTq_6mdtest.exit152
  call void @_RNvMs3_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecNtNtCsiqiOkcJdymw_7similar5types6DiffOpE8grow_oneBP_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.wm), !noalias !870
  br label %_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCsiqiOkcJdymw_7similar5types6DiffOpE8push_mutCskXhPDodhyTq_6mdtest.exit153

_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCsiqiOkcJdymw_7similar5types6DiffOpE8push_mutCskXhPDodhyTq_6mdtest.exit153: ; preds = %_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCsiqiOkcJdymw_7similar5types6DiffOpE8push_mutCskXhPDodhyTq_6mdtest.exit152, %bb.gv
  %i.wy = load ptr, ptr %i.wr, align 8, !alias.scope !868, !noalias !869, !nonnull !3, !noundef !3
  %i.wz = getelementptr inbounds nuw [40 x i8], ptr %i.wy, i64 %i.wu ; 4 uses
  store i64 2, ptr %i.wz, align 8, !noalias !869
  %.sroa.4254.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.wz, i64 8
  store i64 %.sroa.0.0, ptr %.sroa.4254.0..sroa_idx, align 8, !noalias !869
  %.sroa.5255.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.wz, i64 16
  store i64 %.sroa.0188.0, ptr %.sroa.5255.0..sroa_idx, align 8, !noalias !869
  %.sroa.6256.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.wz, i64 24
  store i64 %i.wv, ptr %.sroa.6256.0..sroa_idx, align 8, !noalias !869
  %i.xa = add i64 %i.wo, 2
  store i64 %i.xa, ptr %i.wn, align 8, !alias.scope !868, !noalias !869
  br label %bb.av

.thread:                                          ; preds = %bb.au
  %i.xb = sub nuw i64 %i.m, %.sroa.0188.0
  call void @llvm.experimental.noalias.scope.decl(metadata !871)
  call void @llvm.experimental.noalias.scope.decl(metadata !872)
  %i.xc = load ptr, ptr %0, align 8, !alias.scope !873, !nonnull !3, !align !5, !noundef !3 ; 3 uses
  %i.xd = getelementptr inbounds nuw i8, ptr %i.xc, i64 120 ; 2 uses
  %i.xe = getelementptr inbounds nuw i8, ptr %i.xc, i64 136 ; 2 uses
  %i.xf = load i64, ptr %i.xe, align 8, !alias.scope !874, !noalias !873, !noundef !3 ; 3 uses
  %i.xg = load i64, ptr %i.xd, align 8, !range !6, !alias.scope !874, !noalias !873, !noundef !3
  %i.xh = icmp eq i64 %i.xf, %i.xg
  br i1 %i.xh, label %bb.gw, label %_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCsiqiOkcJdymw_7similar5types6DiffOpE8push_mutCskXhPDodhyTq_6mdtest.exit154

bb.gw:                                            ; preds = %.thread
  call void @_RNvMs3_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecNtNtCsiqiOkcJdymw_7similar5types6DiffOpE8grow_oneBP_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.xd), !noalias !875
  br label %_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCsiqiOkcJdymw_7similar5types6DiffOpE8push_mutCskXhPDodhyTq_6mdtest.exit154

_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCsiqiOkcJdymw_7similar5types6DiffOpE8push_mutCskXhPDodhyTq_6mdtest.exit154: ; preds = %.thread, %bb.gw
  %i.xi = getelementptr inbounds nuw i8, ptr %i.xc, i64 128
  %i.xj = load ptr, ptr %i.xi, align 8, !alias.scope !874, !noalias !873, !nonnull !3, !noundef !3
  %i.xk = getelementptr inbounds nuw [40 x i8], ptr %i.xj, i64 %i.xf ; 4 uses
  store i64 2, ptr %i.xk, align 8, !noalias !873
  %.sroa.4259.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.xk, i64 8
  store i64 %.sroa.0.0, ptr %.sroa.4259.0..sroa_idx, align 8, !noalias !873
  %.sroa.5260.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.xk, i64 16
  store i64 %.sroa.0188.0, ptr %.sroa.5260.0..sroa_idx, align 8, !noalias !873
  %.sroa.6261.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.xk, i64 24
  store i64 %i.xb, ptr %.sroa.6261.0..sroa_idx, align 8, !noalias !873
  %i.xl = add i64 %i.xf, 1
  store i64 %i.xl, ptr %i.xe, align 8, !alias.scope !874, !noalias !873
  br label %bb.av

bb.gx:                                            ; preds = %bb.av
  call void @llvm.experimental.noalias.scope.decl(metadata !876)
  call void @llvm.experimental.noalias.scope.decl(metadata !877)
  %i.xm = load ptr, ptr %0, align 8, !alias.scope !878, !nonnull !3, !align !5, !noundef !3 ; 3 uses
  %i.xn = getelementptr inbounds nuw i8, ptr %i.xm, i64 120 ; 2 uses
  %i.xo = getelementptr inbounds nuw i8, ptr %i.xm, i64 136 ; 2 uses
  %i.xp = load i64, ptr %i.xo, align 8, !alias.scope !879, !noalias !878, !noundef !3 ; 3 uses
  %i.xq = load i64, ptr %i.xn, align 8, !range !6, !alias.scope !879, !noalias !878, !noundef !3
  %i.xr = icmp eq i64 %i.xp, %i.xq
  br i1 %i.xr, label %bb.gy, label %_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCsiqiOkcJdymw_7similar5types6DiffOpE8push_mutCskXhPDodhyTq_6mdtest.exit155

bb.gy:                                            ; preds = %bb.gx
  call void @_RNvMs3_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecNtNtCsiqiOkcJdymw_7similar5types6DiffOpE8grow_oneBP_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.xn), !noalias !880
  br label %_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCsiqiOkcJdymw_7similar5types6DiffOpE8push_mutCskXhPDodhyTq_6mdtest.exit155

_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCsiqiOkcJdymw_7similar5types6DiffOpE8push_mutCskXhPDodhyTq_6mdtest.exit155: ; preds = %bb.gx, %bb.gy
  %i.xs = getelementptr inbounds nuw i8, ptr %i.xm, i64 128
  %i.xt = load ptr, ptr %i.xs, align 8, !alias.scope !879, !noalias !878, !nonnull !3, !noundef !3
  %i.xu = getelementptr inbounds nuw [40 x i8], ptr %i.xt, i64 %i.xp ; 4 uses
  store i64 0, ptr %i.xu, align 8, !noalias !878
  %.sroa.4229.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.xu, i64 8
  store i64 %i.l, ptr %.sroa.4229.0..sroa_idx, align 8, !noalias !878
  %.sroa.5230.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.xu, i64 16
  store i64 %i.m, ptr %.sroa.5230.0..sroa_idx, align 8, !noalias !878
  %.sroa.6231.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.xu, i64 24
  store i64 %i.k, ptr %.sroa.6231.0..sroa_idx, align 8, !noalias !878
  %i.xv = add i64 %i.xp, 1
  store i64 %i.xv, ptr %i.xo, align 8, !alias.scope !879, !noalias !878
  br label %bb.gz

bb.gz:                                            ; preds = %bb.av, %_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCsiqiOkcJdymw_7similar5types6DiffOpE8push_mutCskXhPDodhyTq_6mdtest.exit155
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtNtCsiqiOkcJdymw_7similar10algorithms5myers7conquerINtNtB4_5utils12OffsetLookupjEBS_INtNtB4_4hook12NoFinishHookQINtNtB4_7compact7CompactINtNtB6_4text12TextDiffSideeEB2f_INtNtB4_7replace7ReplaceNtNtB4_7capture7CaptureEEEECskXhPDodhyTq_6mdtest(ptr noalias noundef nonnull align 8 dereferenceable(8) %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %1, i64 noundef %2, i64 noundef %3, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %4, i64 noundef %5, i64 noundef %6, ptr noalias noundef nonnull align 8 dereferenceable(32) %7, ptr noalias noundef nonnull align 8 dereferenceable(32) %8, i64 %9, i32 noundef range(i32 -1, 1000000000) %10) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = alloca [24 x i8], align 8                ; 11 uses
  %i.c = alloca [24 x i8], align 8                ; 6 uses
  %i.d = alloca [24 x i8], align 8                ; 11 uses
  %i.e = alloca [32 x i8], align 8                ; 6 uses
  %i.f = alloca [32 x i8], align 8                ; 6 uses
  %i.g = alloca [24 x i8], align 8                ; 7 uses
  %i.h = tail call noundef i64 @_RINvNtNtCsiqiOkcJdymw_7similar10algorithms5utils17common_prefix_lenINtB2_12OffsetLookupjEB13_ECskXhPDodhyTq_6mdtest(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %1, i64 noundef %2, i64 noundef %3, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %4, i64 noundef %5, i64 noundef %6) ; 4 uses
  %.not = icmp eq i64 %i.h, 0
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCsiqiOkcJdymw_7similar5types6DiffOpE8push_mutCskXhPDodhyTq_6mdtest.exit, %bb.a
  %i.i = add i64 %i.h, %2                         ; 2 uses
  %i.j = add i64 %i.h, %5                         ; 2 uses
  %i.k = tail call noundef i64 @_RINvNtNtCsiqiOkcJdymw_7similar10algorithms5utils17common_suffix_lenINtB2_12OffsetLookupjEB13_ECskXhPDodhyTq_6mdtest(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %1, i64 noundef %i.i, i64 noundef %3, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %4, i64 noundef %i.j, i64 noundef %6) ; 4 uses
  %i.l = sub i64 %3, %i.k                         ; 9 uses
  %i.m = sub i64 %6, %i.k                         ; 9 uses
  %i.n = getelementptr inbounds nuw i8, ptr %4, i64 24
  %i.o = load i64, ptr %i.n, align 8              ; 8 uses
  %i.p = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.q = load i64, ptr %i.p, align 8              ; 27 uses
  %i.r = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.s = load ptr, ptr %i.r, align 8, !nonnull !3 ; 11 uses
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.u = load i64, ptr %i.t, align 8              ; 5 uses
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.w = load i64, ptr %i.v, align 8              ; 23 uses
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.y = load ptr, ptr %i.x, align 8, !nonnull !3 ; 10 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.f, i64 8 ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %i.ab = getelementptr inbounds nuw i8, ptr %i.f, i64 24
  %i.ac = getelementptr inbounds nuw i8, ptr %i.e, i64 8 ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  %i.ae = getelementptr inbounds nuw i8, ptr %i.e, i64 24
  br label %bb.e

bb.c:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1002)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1003)
  %i.af = load ptr, ptr %0, align 8, !alias.scope !1004, !nonnull !3, !align !5, !noundef !3 ; 3 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 120 ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %i.af, i64 136 ; 2 uses
  %i.ai = load i64, ptr %i.ah, align 8, !alias.scope !1005, !noalias !1004, !noundef !3 ; 3 uses
  %i.aj = load i64, ptr %i.ag, align 8, !range !6, !alias.scope !1005, !noalias !1004, !noundef !3
  %i.ak = icmp eq i64 %i.ai, %i.aj
  br i1 %i.ak, label %bb.d, label %_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCsiqiOkcJdymw_7similar5types6DiffOpE8push_mutCskXhPDodhyTq_6mdtest.exit

bb.d:                                             ; preds = %bb.c
  tail call void @_RNvMs3_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecNtNtCsiqiOkcJdymw_7similar5types6DiffOpE8grow_oneBP_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.ag), !noalias !1006
  br label %_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCsiqiOkcJdymw_7similar5types6DiffOpE8push_mutCskXhPDodhyTq_6mdtest.exit

_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCsiqiOkcJdymw_7similar5types6DiffOpE8push_mutCskXhPDodhyTq_6mdtest.exit: ; preds = %bb.c, %bb.d
  %i.al = getelementptr inbounds nuw i8, ptr %i.af, i64 128
  %i.am = load ptr, ptr %i.al, align 8, !alias.scope !1005, !noalias !1004, !nonnull !3, !noundef !3
  %i.an = getelementptr inbounds nuw [40 x i8], ptr %i.am, i64 %i.ai ; 4 uses
  store i64 0, ptr %i.an, align 8, !noalias !1004
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.an, i64 8
  store i64 %2, ptr %.sroa.4.0..sroa_idx, align 8, !noalias !1004
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.an, i64 16
  store i64 %5, ptr %.sroa.5.0..sroa_idx, align 8, !noalias !1004
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.an, i64 24
  store i64 %i.h, ptr %.sroa.6.0..sroa_idx, align 8, !noalias !1004
  %i.ao = add i64 %i.ai, 1
  store i64 %i.ao, ptr %i.ah, align 8, !alias.scope !1005, !noalias !1004
  br label %bb.b

bb.e:                                             ; preds = %_RINvNtNtCsiqiOkcJdymw_7similar10algorithms5myers21try_emit_front_anchorINtNtB4_5utils12OffsetLookupjEB17_INtNtB4_4hook12NoFinishHookQINtNtB4_7compact7CompactINtNtB6_4text12TextDiffSideeEB2v_INtNtB4_7replace7ReplaceNtNtB4_7capture7CaptureEEEECskXhPDodhyTq_6mdtest.exit, %bb.b
  %.sroa.0188.0 = phi i64 [ %i.j, %bb.b ], [ %.sroa.0188.2, %_RINvNtNtCsiqiOkcJdymw_7similar10algorithms5myers21try_emit_front_anchorINtNtB4_5utils12OffsetLookupjEB17_INtNtB4_4hook12NoFinishHookQINtNtB4_7compact7CompactINtNtB6_4text12TextDiffSideeEB2v_INtNtB4_7replace7ReplaceNtNtB4_7capture7CaptureEEEECskXhPDodhyTq_6mdtest.exit ] ; 36 uses
  %.sroa.0.0 = phi i64 [ %i.i, %bb.b ], [ %.sroa.0.2, %_RINvNtNtCsiqiOkcJdymw_7similar10algorithms5myers21try_emit_front_anchorINtNtB4_5utils12OffsetLookupjEB17_INtNtB4_4hook12NoFinishHookQINtNtB4_7compact7CompactINtNtB6_4text12TextDiffSideeEB2v_INtNtB4_7replace7ReplaceNtNtB4_7capture7CaptureEEEECskXhPDodhyTq_6mdtest.exit ] ; 33 uses
  %i.ap = icmp ult i64 %.sroa.0.0, %i.l           ; 2 uses
  %i.aq = icmp ult i64 %.sroa.0188.0, %i.m        ; 3 uses
  %or.cond305 = select i1 %i.ap, i1 %i.aq, i1 false
  br i1 %or.cond305, label %bb.g, label %bb.f

bb.f:                                             ; preds = %_RINvNtNtCsiqiOkcJdymw_7similar10algorithms5myers21try_emit_front_anchorINtNtB4_5utils12OffsetLookupjEB17_INtNtB4_4hook12NoFinishHookQINtNtB4_7compact7CompactINtNtB6_4text12TextDiffSideeEB2v_INtNtB4_7replace7ReplaceNtNtB4_7capture7CaptureEEEECskXhPDodhyTq_6mdtest.exit, %bb.e
  br i1 %i.ap, label %bb.at, label %bb.au

bb.g:                                             ; preds = %bb.e
  %i.ar = sub nuw i64 %i.l, %.sroa.0.0            ; 5 uses
  %i.as = sub nuw i64 %i.m, %.sroa.0188.0         ; 6 uses
  %i.at = icmp ult i64 %i.ar, 97
  %i.au = icmp ult i64 %i.as, 97
  %or.cond.i = or i1 %i.au, %i.at
  br i1 %or.cond.i, label %_RINvNtNtCsiqiOkcJdymw_7similar10algorithms5myers21try_emit_front_anchorINtNtB4_5utils12OffsetLookupjEB17_INtNtB4_4hook12NoFinishHookQINtNtB4_7compact7CompactINtNtB6_4text12TextDiffSideeEB2v_INtNtB4_7replace7ReplaceNtNtB4_7capture7CaptureEEEECskXhPDodhyTq_6mdtest.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %.sroa.0.0.i53 = call noundef i64 @llvm.umin.i64(i64 %i.as, i64 %i.ar) ; 2 uses
  %.sroa.0.0.i54 = call noundef i64 @llvm.umax.i64(i64 %i.as, i64 %i.ar)
  %i.av = shl nuw i64 %.sroa.0.0.i53, 1
  %i.aw = icmp slt i64 %.sroa.0.0.i53, 0
  br i1 %i.aw, label %bb.i, label %bb.j, !prof !7

bb.i:                                             ; preds = %bb.h
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %.sroa.052.0.i = phi i64 [ -1, %bb.i ], [ %i.av, %bb.h ]
  %i.ax = icmp ult i64 %.sroa.0.0.i54, %.sroa.052.0.i
  br i1 %i.ax, label %_RINvNtNtCsiqiOkcJdymw_7similar10algorithms5myers21try_emit_front_anchorINtNtB4_5utils12OffsetLookupjEB17_INtNtB4_4hook12NoFinishHookQINtNtB4_7compact7CompactINtNtB6_4text12TextDiffSideeEB2v_INtNtB4_7replace7ReplaceNtNtB4_7capture7CaptureEEEECskXhPDodhyTq_6mdtest.exit, label %bb.k

bb.k:                                             ; preds = %bb.j
  %.not.i = icmp ule i64 %i.as, %i.ar
  %i.ay = icmp ule i64 %i.ar, %i.as
  %.not.i.fr = freeze i1 %.not.i
  %i.az = sub i64 %.sroa.0188.0, %i.o             ; 2 uses
  %i.ba = icmp ult i64 %i.az, %i.q
  %i.bb = getelementptr inbounds nuw [8 x i8], ptr %i.s, i64 %i.az
  br label %bb.l

.loopexit:                                        ; preds = %.outer, %bb.z, %bb.o, %bb.y
  %.sroa.525.2.i.ph.lcssa478 = phi i64 [ %.sroa.525.2.i.ph629, %bb.o ], [ %.sroa.525.2.i.ph629, %bb.z ], [ %.sroa.525.2.i.ph629, %bb.y ], [ %.sroa.525.3.i, %.outer ] ; 2 uses
  %.sroa.023.1.i.ph.lcssa471 = phi i64 [ %.sroa.023.1.i.ph630, %bb.o ], [ %.sroa.023.1.i.ph630, %bb.z ], [ %.sroa.023.1.i.ph630, %bb.y ], [ %.sroa.023.2.i, %.outer ] ; 2 uses
  %.sroa.9.2.i.ph.lcssa464 = phi i64 [ %.sroa.9.2.i.ph631, %bb.o ], [ %.sroa.9.2.i.ph631, %bb.z ], [ %.sroa.9.2.i.ph631, %bb.y ], [ %.sroa.9.3.i, %.outer ] ; 2 uses
  %.sroa.12.2.i.ph.lcssa457 = phi i64 [ %.sroa.12.2.i.ph632, %bb.o ], [ %.sroa.12.2.i.ph632, %bb.z ], [ %.sroa.12.2.i.ph632, %bb.y ], [ %.sroa.12.3.i, %.outer ] ; 2 uses
  %.not.i57 = icmp ugt i64 %spec.select306, 4
  %or.cond311 = or i1 %i.bc, %.not.i57
  br i1 %or.cond311, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k, %.loopexit
  %.sroa.12.0.i637 = phi i64 [ undef, %bb.k ], [ %.sroa.12.2.i.ph.lcssa457, %.loopexit ]
  %.sroa.9.0.i636 = phi i64 [ undef, %bb.k ], [ %.sroa.9.2.i.ph.lcssa464, %.loopexit ]
  %.sroa.023.0.i635 = phi i64 [ 0, %bb.k ], [ %.sroa.023.1.i.ph.lcssa471, %.loopexit ]
  %.sroa.525.0.i634 = phi i64 [ undef, %bb.k ], [ %.sroa.525.2.i.ph.lcssa478, %.loopexit ]
  %.sroa.0221.0633 = phi i64 [ 0, %bb.k ], [ %spec.select306, %.loopexit ] ; 11 uses
  %i.bc = icmp eq i64 %.sroa.0221.0633, 4         ; 2 uses
  %i.bd = add nuw nsw i64 %.sroa.0221.0633, 1
  %spec.select306 = select i1 %i.bc, i64 4, i64 %i.bd ; 2 uses
  %i.be = icmp eq i64 %.sroa.0221.0633, 0
  %i.bf = add i64 %.sroa.0221.0633, %.sroa.0.0    ; 2 uses
  %i.bg = sub i64 %i.bf, %i.u                     ; 5 uses
  %i.bh = icmp ult i64 %i.bg, %i.w                ; 2 uses
  %i.bi = getelementptr inbounds nuw [8 x i8], ptr %i.y, i64 %i.bg ; 2 uses
  %i.bj = sub i64 %i.l, %i.bf
  br label %.lr.ph

bb.m:                                             ; preds = %.loopexit
  %i.bk = trunc nuw i64 %.sroa.023.1.i.ph.lcssa471 to i1
  br i1 %i.bk, label %.loopexit388, label %_RINvNtNtCsiqiOkcJdymw_7similar10algorithms5myers21try_emit_front_anchorINtNtB4_5utils12OffsetLookupjEB17_INtNtB4_4hook12NoFinishHookQINtNtB4_7compact7CompactINtNtB6_4text12TextDiffSideeEB2v_INtNtB4_7replace7ReplaceNtNtB4_7capture7CaptureEEEECskXhPDodhyTq_6mdtest.exit

.loopexit388:                                     ; preds = %bb.aa, %bb.m
  %.sroa.525.1.i = phi i64 [ %.sroa.525.2.i.ph.lcssa478, %bb.m ], [ %.sroa.0221.0633, %bb.aa ] ; 4 uses
  %.sroa.9.1.i = phi i64 [ %.sroa.9.2.i.ph.lcssa464, %bb.m ], [ %.us-phi541, %bb.aa ] ; 4 uses
  %.sroa.12.1.i = phi i64 [ %.sroa.12.2.i.ph.lcssa457, %bb.m ], [ %.sroa.01.0.i.lcssa, %bb.aa ] ; 3 uses
  %i.bl = icmp eq i64 %.sroa.525.1.i, 0
  %i.bm = icmp eq i64 %.sroa.9.1.i, 0             ; 2 uses
  br i1 %i.bl, label %bb.ai, label %bb.aj

.lr.ph.split.split:                               ; preds = %.lr.ph.split, %bb.o
  %.sroa.0222.0516 = phi i64 [ %spec.select308, %bb.o ], [ %.sroa.0222.0.ph628, %.lr.ph.split ] ; 3 uses
  %i.bn = icmp eq i64 %.sroa.0222.0516, 4         ; 3 uses
  %i.bo = add nuw nsw i64 %.sroa.0222.0516, 1
  %spec.select308 = select i1 %i.bn, i64 4, i64 %i.bo ; 3 uses
  %i.bp = call noundef zeroext i1 @_RNvNtCsiqiOkcJdymw_7similar16deadline_support17deadline_exceeded(i64 %9, i32 noundef range(i32 -1, 1000000000) %10), !noalias !1007
  br i1 %i.bp, label %_RINvNtNtCsiqiOkcJdymw_7similar10algorithms5myers21try_emit_front_anchorINtNtB4_5utils12OffsetLookupjEB17_INtNtB4_4hook12NoFinishHookQINtNtB4_7compact7CompactINtNtB6_4text12TextDiffSideeEB2v_INtNtB4_7replace7ReplaceNtNtB4_7capture7CaptureEEEECskXhPDodhyTq_6mdtest.exit, label %bb.n

bb.n:                                             ; preds = %.lr.ph.split.split
  %.not640 = icmp eq i64 %.sroa.0222.0516, 0
  br i1 %.not640, label %bb.p, label %bb.o

bb.o:                                             ; preds = %bb.n, %_RNvXs3_NtNtCsiqiOkcJdymw_7similar10algorithms5utilsINtB5_12OffsetLookupjEINtNtNtCs4NRVxsYgnAr_4core3ops5index5IndexjE5indexCskXhPDodhyTq_6mdtest.exit30
  %.not.i59 = icmp ugt i64 %spec.select308, 4
  %or.cond312 = select i1 %i.bn, i1 true, i1 %.not.i59
  br i1 %or.cond312, label %.loopexit, label %.lr.ph.split.split

bb.p:                                             ; preds = %bb.n
  br i1 %i.ba, label %_RNvXs3_NtNtCsiqiOkcJdymw_7similar10algorithms5utilsINtB5_12OffsetLookupjEINtNtNtCs4NRVxsYgnAr_4core3ops5index5IndexjE5indexCskXhPDodhyTq_6mdtest.exit31, label %.split.loopexit1085

.split.loopexit1085:                              ; preds = %bb.p
  %i.bq = sub i64 %.sroa.0188.0, %i.o
  br label %.split

.split:                                           ; preds = %bb.x, %.split.loopexit1085
  %.us-phi = phi i64 [ %i.bq, %.split.loopexit1085 ], [ %i.ch, %bb.x ]
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking18panic_bounds_check(i64 noundef %.us-phi, i64 noundef %i.q, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @79) #14, !noalias !1008
  unreachable

_RNvXs3_NtNtCsiqiOkcJdymw_7similar10algorithms5utilsINtB5_12OffsetLookupjEINtNtNtCs4NRVxsYgnAr_4core3ops5index5IndexjE5indexCskXhPDodhyTq_6mdtest.exit31: ; preds = %bb.p
  br i1 %i.bh, label %_RNvXs3_NtNtCsiqiOkcJdymw_7similar10algorithms5utilsINtB5_12OffsetLookupjEINtNtNtCs4NRVxsYgnAr_4core3ops5index5IndexjE5indexCskXhPDodhyTq_6mdtest.exit30, label %.split526

.split526:                                        ; preds = %_RNvXs3_NtNtCsiqiOkcJdymw_7similar10algorithms5utilsINtB5_12OffsetLookupjEINtNtNtCs4NRVxsYgnAr_4core3ops5index5IndexjE5indexCskXhPDodhyTq_6mdtest.exit31, %_RNvXs3_NtNtCsiqiOkcJdymw_7similar10algorithms5utilsINtB5_12OffsetLookupjEINtNtNtCs4NRVxsYgnAr_4core3ops5index5IndexjE5indexCskXhPDodhyTq_6mdtest.exit31.us
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking18panic_bounds_check(i64 noundef %i.bg, i64 noundef %i.w, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @80) #14, !noalias !1009
  unreachable

_RNvXs3_NtNtCsiqiOkcJdymw_7similar10algorithms5utilsINtB5_12OffsetLookupjEINtNtNtCs4NRVxsYgnAr_4core3ops5index5IndexjE5indexCskXhPDodhyTq_6mdtest.exit30: ; preds = %_RNvXs3_NtNtCsiqiOkcJdymw_7similar10algorithms5utilsINtB5_12OffsetLookupjEINtNtNtCs4NRVxsYgnAr_4core3ops5index5IndexjE5indexCskXhPDodhyTq_6mdtest.exit31
  %.val49 = load i64, ptr %i.bb, align 8, !noundef !3
  %.val50 = load i64, ptr %i.bi, align 8, !noundef !3
  %.not309 = icmp eq i64 %.val49, %.val50
  br i1 %.not309, label %.split530, label %bb.o

.split530.loopexit:                               ; preds = %_RNvXs3_NtNtCsiqiOkcJdymw_7similar10algorithms5utilsINtB5_12OffsetLookupjEINtNtNtCs4NRVxsYgnAr_4core3ops5index5IndexjE5indexCskXhPDodhyTq_6mdtest.exit30.us
  %.pre873 = sub i64 %i.m, %i.cg
  br label %.split530

.split530:                                        ; preds = %_RNvXs3_NtNtCsiqiOkcJdymw_7similar10algorithms5utilsINtB5_12OffsetLookupjEINtNtNtCs4NRVxsYgnAr_4core3ops5index5IndexjE5indexCskXhPDodhyTq_6mdtest.exit30, %.split530.loopexit
  %.pre-phi = phi i64 [ %.pre873, %.split530.loopexit ], [ %i.as, %_RNvXs3_NtNtCsiqiOkcJdymw_7similar10algorithms5utilsINtB5_12OffsetLookupjEINtNtNtCs4NRVxsYgnAr_4core3ops5index5IndexjE5indexCskXhPDodhyTq_6mdtest.exit30 ]
  %.us-phi536 = phi i64 [ %i.cg, %.split530.loopexit ], [ %.sroa.0188.0, %_RNvXs3_NtNtCsiqiOkcJdymw_7similar10algorithms5utilsINtB5_12OffsetLookupjEINtNtNtCs4NRVxsYgnAr_4core3ops5index5IndexjE5indexCskXhPDodhyTq_6mdtest.exit30 ]
  %.us-phi539 = phi i1 [ %i.cd, %.split530.loopexit ], [ %i.bn, %_RNvXs3_NtNtCsiqiOkcJdymw_7similar10algorithms5utilsINtB5_12OffsetLookupjEINtNtNtCs4NRVxsYgnAr_4core3ops5index5IndexjE5indexCskXhPDodhyTq_6mdtest.exit30 ]
  %.us-phi540 = phi i64 [ %spec.select308.us, %.split530.loopexit ], [ %spec.select308, %_RNvXs3_NtNtCsiqiOkcJdymw_7similar10algorithms5utilsINtB5_12OffsetLookupjEINtNtNtCs4NRVxsYgnAr_4core3ops5index5IndexjE5indexCskXhPDodhyTq_6mdtest.exit30 ] ; 2 uses
  %.us-phi541 = phi i64 [ %.sroa.0222.0516.us, %.split530.loopexit ], [ 0, %_RNvXs3_NtNtCsiqiOkcJdymw_7similar10algorithms5utilsINtB5_12OffsetLookupjEINtNtNtCs4NRVxsYgnAr_4core3ops5index5IndexjE5indexCskXhPDodhyTq_6mdtest.exit30 ] ; 6 uses
  %.sroa.0.0.i63 = call noundef i64 @llvm.umin.i64(i64 %.pre-phi, i64 %i.bj) ; 3 uses
  %.not641 = icmp eq i64 %.sroa.0.0.i63, 0
  br i1 %.not641, label %.outer, label %.lr.ph625

.lr.ph625:                                        ; preds = %.split530
  %i.br = sub i64 %.us-phi536, %i.o               ; 2 uses
  br label %bb.q

bb.q:                                             ; preds = %.lr.ph625, %bb.v
  %.sroa.01.0.i624 = phi i64 [ 0, %.lr.ph625 ], [ %i.cb, %bb.v ] ; 5 uses
  %i.bs = and i64 %.sroa.01.0.i624, 1023
  %i.bt = icmp eq i64 %i.bs, 0
  br i1 %i.bt, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  %i.bu = call noundef zeroext i1 @_RNvNtCsiqiOkcJdymw_7similar16deadline_support17deadline_exceeded(i64 %9, i32 noundef range(i32 -1, 1000000000) %10), !noalias !1007
  br i1 %i.bu, label %_RINvNtNtCsiqiOkcJdymw_7similar10algorithms5myers21try_emit_front_anchorINtNtB4_5utils12OffsetLookupjEB17_INtNtB4_4hook12NoFinishHookQINtNtB4_7compact7CompactINtNtB6_4text12TextDiffSideeEB2v_INtNtB4_7replace7ReplaceNtNtB4_7capture7CaptureEEEECskXhPDodhyTq_6mdtest.exit, label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.q
  %i.bv = add nuw i64 %i.br, %.sroa.01.0.i624     ; 2 uses
  %i.bw = icmp ult i64 %i.bv, %i.q
  br i1 %i.bw, label %_RNvXs3_NtNtCsiqiOkcJdymw_7similar10algorithms5utilsINtB5_12OffsetLookupjEINtNtNtCs4NRVxsYgnAr_4core3ops5index5IndexjE5indexCskXhPDodhyTq_6mdtest.exit29, label %bb.t

bb.t:                                             ; preds = %bb.s
  %umax = call i64 @llvm.umax.i64(i64 %i.q, i64 %i.br)
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking18panic_bounds_check(i64 noundef %umax, i64 noundef %i.q, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @81) #14, !noalias !1010
  unreachable
end_hunk_6
begin_hunk_7_@_RINvNtNtCsiqiOkcJdymw_7similar10algorithms5myers7conquerINtNtB4_5utils12OffsetLookupjEBS_INtNtB4_4hook12NoFinishHookQINtNtB4_7compact7CompactINtNtB6_4text12TextDiffSideeEB2f_INtNtB4_7replace7ReplaceNtNtB4_7capture7CaptureEEEECskXhPDodhyTq_6mdtest:bb.a
  store i64 2, ptr %i.du, align 8, !noalias !1018
  %.sroa.4264.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.du, i64 8
  store i64 %.sroa.0.0, ptr %.sroa.4264.0..sroa_idx, align 8, !noalias !1018
  %.sroa.5265.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.du, i64 16
  store i64 %.sroa.0188.0, ptr %.sroa.5265.0..sroa_idx, align 8, !noalias !1018
  %.sroa.6266.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.du, i64 24
  store i64 %.sroa.9.1.i, ptr %.sroa.6266.0..sroa_idx, align 8, !noalias !1018
  %i.dv = add i64 %i.dp, 1                        ; 2 uses
  store i64 %i.dv, ptr %i.do, align 8, !alias.scope !1017, !noalias !1018
  br label %bb.ak

bb.ao:                                            ; preds = %bb.aj
  call void @llvm.experimental.noalias.scope.decl(metadata !1020)
  call void @llvm.experimental.noalias.scope.decl(metadata !1021), !noalias !1013
  %i.dw = load ptr, ptr %0, align 8, !alias.scope !1022, !noalias !1013, !nonnull !3, !align !5, !noundef !3 ; 4 uses
  %i.dx = getelementptr inbounds nuw i8, ptr %i.dw, i64 120 ; 2 uses
  %i.dy = getelementptr inbounds nuw i8, ptr %i.dw, i64 136 ; 2 uses
  %i.dz = load i64, ptr %i.dy, align 8, !alias.scope !1023, !noalias !1024, !noundef !3 ; 3 uses
  %i.ea = load i64, ptr %i.dx, align 8, !range !6, !alias.scope !1023, !noalias !1024, !noundef !3
  %i.eb = icmp eq i64 %i.dz, %i.ea
  br i1 %i.eb, label %bb.ap, label %_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCsiqiOkcJdymw_7similar5types6DiffOpE8push_mutCskXhPDodhyTq_6mdtest.exit68

bb.ap:                                            ; preds = %bb.ao
  call void @_RNvMs3_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecNtNtCsiqiOkcJdymw_7similar5types6DiffOpE8grow_oneBP_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.dx), !noalias !1025
  br label %_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCsiqiOkcJdymw_7similar5types6DiffOpE8push_mutCskXhPDodhyTq_6mdtest.exit68

_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCsiqiOkcJdymw_7similar5types6DiffOpE8push_mutCskXhPDodhyTq_6mdtest.exit68: ; preds = %bb.ao, %bb.ap
  %i.ec = getelementptr inbounds nuw i8, ptr %i.dw, i64 128
  %i.ed = load ptr, ptr %i.ec, align 8, !alias.scope !1023, !noalias !1024, !nonnull !3, !noundef !3
  %i.ee = getelementptr inbounds nuw [40 x i8], ptr %i.ed, i64 %i.dz ; 4 uses
  store i64 1, ptr %i.ee, align 8, !noalias !1024
  %.sroa.4249.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ee, i64 8
  store i64 %.sroa.0.0, ptr %.sroa.4249.0..sroa_idx, align 8, !noalias !1024
  %.sroa.5250.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ee, i64 16
  store i64 %.sroa.525.1.i, ptr %.sroa.5250.0..sroa_idx, align 8, !noalias !1024
  %.sroa.6251.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ee, i64 24
  store i64 %.sroa.0188.0, ptr %.sroa.6251.0..sroa_idx, align 8, !noalias !1024
  %i.ef = add i64 %i.dz, 1                        ; 2 uses
  store i64 %i.ef, ptr %i.dy, align 8, !alias.scope !1023, !noalias !1024
  br label %bb.ak

bb.aq:                                            ; preds = %bb.aj
  call void @llvm.experimental.noalias.scope.decl(metadata !1026)
  call void @llvm.experimental.noalias.scope.decl(metadata !1027), !noalias !1013
  %i.eg = load ptr, ptr %0, align 8, !alias.scope !1028, !noalias !1013, !nonnull !3, !align !5, !noundef !3 ; 4 uses
  %i.eh = getelementptr inbounds nuw i8, ptr %i.eg, i64 120 ; 4 uses
  %i.ei = getelementptr inbounds nuw i8, ptr %i.eg, i64 136 ; 3 uses
  %i.ej = load i64, ptr %i.ei, align 8, !alias.scope !1029, !noalias !1030, !noundef !3 ; 4 uses
  %i.ek = load i64, ptr %i.eh, align 8, !range !6, !alias.scope !1029, !noalias !1030, !noundef !3
  %i.el = icmp eq i64 %i.ej, %i.ek
  br i1 %i.el, label %bb.ar, label %_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCsiqiOkcJdymw_7similar5types6DiffOpE8push_mutCskXhPDodhyTq_6mdtest.exit69

bb.ar:                                            ; preds = %bb.aq
  call void @_RNvMs3_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecNtNtCsiqiOkcJdymw_7similar5types6DiffOpE8grow_oneBP_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.eh), !noalias !1031
  br label %_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCsiqiOkcJdymw_7similar5types6DiffOpE8push_mutCskXhPDodhyTq_6mdtest.exit69

_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCsiqiOkcJdymw_7similar5types6DiffOpE8push_mutCskXhPDodhyTq_6mdtest.exit69: ; preds = %bb.aq, %bb.ar
  %i.em = getelementptr inbounds nuw i8, ptr %i.eg, i64 128 ; 2 uses
  %i.en = load ptr, ptr %i.em, align 8, !alias.scope !1029, !noalias !1030, !nonnull !3, !noundef !3
  %i.eo = getelementptr inbounds nuw [40 x i8], ptr %i.en, i64 %i.ej ; 4 uses
  store i64 1, ptr %i.eo, align 8, !noalias !1030
  %.sroa.4269.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.eo, i64 8
  store i64 %.sroa.0.0, ptr %.sroa.4269.0..sroa_idx, align 8, !noalias !1030
  %.sroa.5270.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.eo, i64 16
  store i64 %.sroa.525.1.i, ptr %.sroa.5270.0..sroa_idx, align 8, !noalias !1030
  %.sroa.6271.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.eo, i64 24
  store i64 %.sroa.0188.0, ptr %.sroa.6271.0..sroa_idx, align 8, !noalias !1030
  %i.ep = add i64 %i.ej, 1                        ; 3 uses
  store i64 %i.ep, ptr %i.ei, align 8, !alias.scope !1029, !noalias !1030
  %i.eq = load i64, ptr %i.eh, align 8, !range !6, !alias.scope !1032, !noalias !1030, !noundef !3
  %i.er = icmp eq i64 %i.ep, %i.eq
  br i1 %i.er, label %bb.as, label %_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCsiqiOkcJdymw_7similar5types6DiffOpE8push_mutCskXhPDodhyTq_6mdtest.exit70

bb.as:                                            ; preds = %_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCsiqiOkcJdymw_7similar5types6DiffOpE8push_mutCskXhPDodhyTq_6mdtest.exit69
  call void @_RNvMs3_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecNtNtCsiqiOkcJdymw_7similar5types6DiffOpE8grow_oneBP_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.eh), !noalias !1033
  br label %_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCsiqiOkcJdymw_7similar5types6DiffOpE8push_mutCskXhPDodhyTq_6mdtest.exit70

_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCsiqiOkcJdymw_7similar5types6DiffOpE8push_mutCskXhPDodhyTq_6mdtest.exit70: ; preds = %_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCsiqiOkcJdymw_7similar5types6DiffOpE8push_mutCskXhPDodhyTq_6mdtest.exit69, %bb.as
  %i.es = load ptr, ptr %i.em, align 8, !alias.scope !1032, !noalias !1030, !nonnull !3, !noundef !3
  %i.et = getelementptr inbounds nuw [40 x i8], ptr %i.es, i64 %i.ep ; 4 uses
  store i64 2, ptr %i.et, align 8, !noalias !1030
  %.sroa.4274.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.et, i64 8
  store i64 %.sroa.0.0, ptr %.sroa.4274.0..sroa_idx, align 8, !noalias !1030
  %.sroa.5275.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.et, i64 16
  store i64 %.sroa.0188.0, ptr %.sroa.5275.0..sroa_idx, align 8, !noalias !1030
  %.sroa.6276.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.et, i64 24
  store i64 %.sroa.9.1.i, ptr %.sroa.6276.0..sroa_idx, align 8, !noalias !1030
  %i.eu = add i64 %i.ej, 2                        ; 2 uses
  store i64 %i.eu, ptr %i.ei, align 8, !alias.scope !1032, !noalias !1030
  br label %bb.ak

_RINvNtNtCsiqiOkcJdymw_7similar10algorithms5myers21try_emit_front_anchorINtNtB4_5utils12OffsetLookupjEB17_INtNtB4_4hook12NoFinishHookQINtNtB4_7compact7CompactINtNtB6_4text12TextDiffSideeEB2v_INtNtB4_7replace7ReplaceNtNtB4_7capture7CaptureEEEECskXhPDodhyTq_6mdtest.exit: ; preds = %.lr.ph.split.split.us, %.lr.ph.split.split, %.lr.ph.split.us, %bb.r, %bb.g, %bb.j, %bb.m, %_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCsiqiOkcJdymw_7similar5types6DiffOpE8push_mutCskXhPDodhyTq_6mdtest.exit66
  %.sroa.0188.2 = phi i64 [ %.sroa.0188.0, %bb.g ], [ %.sroa.0188.0, %bb.j ], [ %.sroa.0188.0, %bb.m ], [ %i.dm, %_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCsiqiOkcJdymw_7similar5types6DiffOpE8push_mutCskXhPDodhyTq_6mdtest.exit66 ], [ %.sroa.0188.0, %.lr.ph.split.split ], [ %.sroa.0188.0, %.lr.ph.split.us ], [ %.sroa.0188.0, %bb.r ], [ %.sroa.0188.0, %.lr.ph.split.split.us ] ; 2 uses
  %.sroa.0.2 = phi i64 [ %.sroa.0.0, %bb.g ], [ %.sroa.0.0, %bb.j ], [ %.sroa.0.0, %bb.m ], [ %i.dl, %_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCsiqiOkcJdymw_7similar5types6DiffOpE8push_mutCskXhPDodhyTq_6mdtest.exit66 ], [ %.sroa.0.0, %.lr.ph.split.split ], [ %.sroa.0.0, %.lr.ph.split.us ], [ %.sroa.0.0, %bb.r ], [ %.sroa.0.0, %.lr.ph.split.split.us ] ; 2 uses
  %i.ev = icmp eq i64 %.sroa.0.2, %.sroa.0.0
  %i.ew = icmp eq i64 %.sroa.0188.2, %.sroa.0188.0
  %or.cond = select i1 %i.ev, i1 %i.ew, i1 false
  br i1 %or.cond, label %bb.f, label %bb.e

bb.at:                                            ; preds = %bb.f
  br i1 %i.aq, label %bb.ay, label %bb.aw

bb.au:                                            ; preds = %bb.f
  br i1 %i.aq, label %.thread, label %bb.av

bb.av:                                            ; preds = %.sink.split.i.thread, %_RINvNtNtCsiqiOkcJdymw_7similar10algorithms5myers27maybe_emit_small_side_exactINtNtB4_5utils12OffsetLookupjEB1d_INtNtB4_4hook12NoFinishHookQINtNtB4_7compact7CompactINtNtB6_4text12TextDiffSideeEB2B_INtNtB4_7replace7ReplaceNtNtB4_7capture7CaptureEEEECskXhPDodhyTq_6mdtest.exit.thread302, %_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCsiqiOkcJdymw_7similar5types6DiffOpE8push_mutCskXhPDodhyTq_6mdtest.exit71, %_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCsiqiOkcJdymw_7similar5types6DiffOpE8push_mutCskXhPDodhyTq_6mdtest.exit154, %_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCsiqiOkcJdymw_7similar5types6DiffOpE8push_mutCskXhPDodhyTq_6mdtest.exit153, %bb.gs, %bb.au
  %.not26 = icmp eq i64 %i.k, 0
  br i1 %.not26, label %bb.gz, label %bb.gx

bb.aw:                                            ; preds = %bb.at
  %i.ex = sub nuw i64 %i.l, %.sroa.0.0
  call void @llvm.experimental.noalias.scope.decl(metadata !1034)
  call void @llvm.experimental.noalias.scope.decl(metadata !1035)
  %i.ey = load ptr, ptr %0, align 8, !alias.scope !1036, !nonnull !3, !align !5, !noundef !3 ; 3 uses
  %i.ez = getelementptr inbounds nuw i8, ptr %i.ey, i64 120 ; 2 uses
  %i.fa = getelementptr inbounds nuw i8, ptr %i.ey, i64 136 ; 2 uses
  %i.fb = load i64, ptr %i.fa, align 8, !alias.scope !1037, !noalias !1036, !noundef !3 ; 3 uses
  %i.fc = load i64, ptr %i.ez, align 8, !range !6, !alias.scope !1037, !noalias !1036, !noundef !3
  %i.fd = icmp eq i64 %i.fb, %i.fc
  br i1 %i.fd, label %bb.ax, label %_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCsiqiOkcJdymw_7similar5types6DiffOpE8push_mutCskXhPDodhyTq_6mdtest.exit71

bb.ax:                                            ; preds = %bb.aw
  call void @_RNvMs3_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecNtNtCsiqiOkcJdymw_7similar5types6DiffOpE8grow_oneBP_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.ez), !noalias !1038
  br label %_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCsiqiOkcJdymw_7similar5types6DiffOpE8push_mutCskXhPDodhyTq_6mdtest.exit71

_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCsiqiOkcJdymw_7similar5types6DiffOpE8push_mutCskXhPDodhyTq_6mdtest.exit71: ; preds = %bb.aw, %bb.ax
  %i.fe = getelementptr inbounds nuw i8, ptr %i.ey, i64 128
  %i.ff = load ptr, ptr %i.fe, align 8, !alias.scope !1037, !noalias !1036, !nonnull !3, !noundef !3
  %i.fg = getelementptr inbounds nuw [40 x i8], ptr %i.ff, i64 %i.fb ; 4 uses
  store i64 1, ptr %i.fg, align 8, !noalias !1036
  %.sroa.4244.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.fg, i64 8
  store i64 %.sroa.0.0, ptr %.sroa.4244.0..sroa_idx, align 8, !noalias !1036
  %.sroa.5245.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.fg, i64 16
  store i64 %i.ex, ptr %.sroa.5245.0..sroa_idx, align 8, !noalias !1036
  %.sroa.6246.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.fg, i64 24
  store i64 %.sroa.0188.0, ptr %.sroa.6246.0..sroa_idx, align 8, !noalias !1036
  %i.fh = add i64 %i.fb, 1
  store i64 %i.fh, ptr %i.fa, align 8, !alias.scope !1037, !noalias !1036
  br label %bb.av

bb.ay:                                            ; preds = %bb.at
  %i.fi = call noundef zeroext i1 @_RNvNtCsiqiOkcJdymw_7similar16deadline_support17deadline_exceeded(i64 %9, i32 noundef range(i32 -1, 1000000000) %10), !noalias !1039
  br i1 %i.fi, label %_RINvNtNtCsiqiOkcJdymw_7similar10algorithms5myers27maybe_emit_small_side_exactINtNtB4_5utils12OffsetLookupjEB1d_INtNtB4_4hook12NoFinishHookQINtNtB4_7compact7CompactINtNtB6_4text12TextDiffSideeEB2B_INtNtB4_7replace7ReplaceNtNtB4_7capture7CaptureEEEECskXhPDodhyTq_6mdtest.exit.thread, label %bb.az

bb.az:                                            ; preds = %bb.ay
  %i.fj = sub nuw i64 %i.l, %.sroa.0.0            ; 22 uses
  %i.fk = sub nuw i64 %i.m, %.sroa.0188.0         ; 22 uses
  %i.fl = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %i.fj, i64 %i.fk) ; 2 uses
  %i.fm = extractvalue { i64, i1 } %i.fl, 1
  br i1 %i.fm, label %_RINvNtNtCsiqiOkcJdymw_7similar10algorithms5myers27maybe_emit_small_side_exactINtNtB4_5utils12OffsetLookupjEB1d_INtNtB4_4hook12NoFinishHookQINtNtB4_7compact7CompactINtNtB6_4text12TextDiffSideeEB2B_INtNtB4_7replace7ReplaceNtNtB4_7capture7CaptureEEEECskXhPDodhyTq_6mdtest.exit.thread, label %bb.ba, !prof !7

bb.ba:                                            ; preds = %bb.az
  %i.fn = extractvalue { i64, i1 } %i.fl, 0
  %.sroa.0.0.i73 = call noundef i64 @llvm.umax.i64(i64 %i.fk, i64 %i.fj)
  %.sroa.0.0.i72 = call noundef i64 @llvm.umin.i64(i64 %i.fk, i64 %i.fj)
  %i.fo = add i64 %.sroa.0.0.i72, -65
  %or.cond.i27 = icmp ult i64 %i.fo, -64
  %i.fp = icmp ult i64 %.sroa.0.0.i73, 512
  %or.cond1.i = or i1 %i.fp, %or.cond.i27
  %i.fq = icmp ugt i64 %i.fn, 64000000
  %or.cond3.i = select i1 %or.cond1.i, i1 true, i1 %i.fq
  br i1 %or.cond3.i, label %_RINvNtNtCsiqiOkcJdymw_7similar10algorithms5myers27maybe_emit_small_side_exactINtNtB4_5utils12OffsetLookupjEB1d_INtNtB4_4hook12NoFinishHookQINtNtB4_7compact7CompactINtNtB6_4text12TextDiffSideeEB2B_INtNtB4_7replace7ReplaceNtNtB4_7capture7CaptureEEEECskXhPDodhyTq_6mdtest.exit.thread, label %bb.bb

bb.bb:                                            ; preds = %bb.ba
  %.not.i28 = icmp ugt i64 %i.fj, %i.fk
  %.val51 = load ptr, ptr %0, align 8             ; 16 uses
  %i.fr = call noundef zeroext i1 @_RNvNtCsiqiOkcJdymw_7similar16deadline_support17deadline_exceeded(i64 %9, i32 noundef range(i32 -1, 1000000000) %10), !noalias !3 ; 2 uses
  br i1 %.not.i28, label %bb.bc, label %bb.dw

bb.bc:                                            ; preds = %bb.bb
  br i1 %i.fr, label %_RINvNtNtCsiqiOkcJdymw_7similar10algorithms5myers27maybe_emit_small_side_exactINtNtB4_5utils12OffsetLookupjEB1d_INtNtB4_4hook12NoFinishHookQINtNtB4_7compact7CompactINtNtB6_4text12TextDiffSideeEB2B_INtNtB4_7replace7ReplaceNtNtB4_7capture7CaptureEEEECskXhPDodhyTq_6mdtest.exit.thread, label %bb.bd

bb.bd:                                            ; preds = %bb.bc
  %i.fs = add i64 %i.fj, 1                        ; 11 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !1040
  %i.ft = add nuw i64 %i.fk, 1
  %i.fu = mul i64 %i.fs, %i.ft                    ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1041)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !1042
  call void @_RNvMs4_NtCscdodAO9FK5_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCskXhPDodhyTq_6mdtest(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.c, i64 noundef %i.fu, i1 noundef zeroext true, i64 noundef 1, i64 noundef 1), !noalias !1042
  %i.fv = load i64, ptr %i.c, align 8, !range !8, !noalias !1042, !noundef !3
  %i.fw = trunc nuw i64 %i.fv to i1
  %i.fx = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.fy = load i64, ptr %i.fx, align 8, !range !9, !noalias !1042, !noundef !3 ; 2 uses
  %i.fz = getelementptr inbounds nuw i8, ptr %i.c, i64 16 ; 2 uses
  br i1 %i.fw, label %bb.be, label %.lr.ph469.i, !prof !7

bb.be:                                            ; preds = %bb.bd
  %i.ga = load i64, ptr %i.fz, align 8, !noalias !1042
  call void @_RNvNtCscdodAO9FK5_5alloc7raw_vec12handle_error(i64 noundef %i.fy, i64 %i.ga) #14, !noalias !1042
  unreachable

.lr.ph469.i:                                      ; preds = %bb.bd
  %i.gb = load ptr, ptr %i.fz, align 8, !noalias !1042, !nonnull !3, !noundef !3
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !1042
  store i64 %i.fy, ptr %i.d, align 8, !alias.scope !1041, !noalias !1040
  %i.gc = getelementptr inbounds nuw i8, ptr %i.d, i64 8 ; 7 uses
  store ptr %i.gb, ptr %i.gc, align 8, !alias.scope !1041, !noalias !1040
  %i.gd = getelementptr inbounds nuw i8, ptr %i.d, i64 16 ; 7 uses
  store i64 %i.fu, ptr %i.gd, align 8, !alias.scope !1041, !noalias !1040
  %invariant.op470.i = sub i64 %.sroa.0188.0, %i.o ; 3 uses
  %invariant.op.i = sub i64 %.sroa.0.0, %i.u      ; 3 uses
  br label %.lr.ph469.split.i

.lr.ph495.i:                                      ; preds = %..loopexit39_crit_edge.split.us.i
  %i.ge = getelementptr inbounds nuw i8, ptr %.val51, i64 120 ; 10 uses
  %i.gf = getelementptr inbounds nuw i8, ptr %.val51, i64 136 ; 6 uses
  %i.gg = getelementptr inbounds nuw i8, ptr %.val51, i64 128 ; 3 uses
  br label %bb.bf

.lr.ph469.split.i:                                ; preds = %.lr.ph469.i, %..loopexit39_crit_edge.split.us.i
  %.sroa.0102.0468.i = phi i64 [ %i.gh, %..loopexit39_crit_edge.split.us.i ], [ %i.fk, %.lr.ph469.i ] ; 2 uses
  %i.gh = add i64 %.sroa.0102.0468.i, -1          ; 4 uses
  %i.gi = invoke noundef zeroext i1 @_RNvNtCsiqiOkcJdymw_7similar16deadline_support17deadline_exceeded(i64 %9, i32 noundef range(i32 -1, 1000000000) %10)
          to label %bb.dh unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !1040

._crit_edge496.i:                                 ; preds = %_RNvXs0_NtNtCsiqiOkcJdymw_7similar10algorithms4hookINtB5_12NoFinishHookQINtNtB7_7compact7CompactINtNtB9_4text12TextDiffSideeEB1v_INtNtB7_7replace7ReplaceNtNtB7_7capture7CaptureEEENtB5_8DiffHook5equalCskXhPDodhyTq_6mdtest.exit.i
  br i1 %i.ld, label %bb.bg, label %bb.bi

bb.bf:                                            ; preds = %_RNvXs0_NtNtCsiqiOkcJdymw_7similar10algorithms4hookINtB5_12NoFinishHookQINtNtB7_7compact7CompactINtNtB9_4text12TextDiffSideeEB1v_INtNtB7_7replace7ReplaceNtNtB7_7capture7CaptureEEENtB5_8DiffHook5equalCskXhPDodhyTq_6mdtest.exit.i, %.lr.ph495.i
  %.sroa.05.0.not494.i = phi i1 [ true, %.lr.ph495.i ], [ false, %_RNvXs0_NtNtCsiqiOkcJdymw_7similar10algorithms4hookINtB5_12NoFinishHookQINtNtB7_7compact7CompactINtNtB9_4text12TextDiffSideeEB1v_INtNtB7_7replace7ReplaceNtNtB7_7capture7CaptureEEENtB5_8DiffHook5equalCskXhPDodhyTq_6mdtest.exit.i ] ; 3 uses
  %.sroa.09.0493.i = phi i64 [ 0, %.lr.ph495.i ], [ %.sroa.09.3.i, %_RNvXs0_NtNtCsiqiOkcJdymw_7similar10algorithms4hookINtB5_12NoFinishHookQINtNtB7_7compact7CompactINtNtB9_4text12TextDiffSideeEB1v_INtNtB7_7replace7ReplaceNtNtB7_7capture7CaptureEEENtB5_8DiffHook5equalCskXhPDodhyTq_6mdtest.exit.i ] ; 13 uses
  %.sroa.038.0492.i = phi i64 [ 0, %.lr.ph495.i ], [ %.sroa.038.3.i, %_RNvXs0_NtNtCsiqiOkcJdymw_7similar10algorithms4hookINtB5_12NoFinishHookQINtNtB7_7compact7CompactINtNtB9_4text12TextDiffSideeEB1v_INtNtB7_7replace7ReplaceNtNtB7_7capture7CaptureEEENtB5_8DiffHook5equalCskXhPDodhyTq_6mdtest.exit.i ] ; 18 uses
  %i.gj = and i64 %.sroa.038.0492.i, 1023
  %i.gk = icmp eq i64 %i.gj, 0
  %or.cond170.i = select i1 %.sroa.05.0.not494.i, i1 %i.gk, i1 false ; 2 uses
  br i1 %or.cond170.i, label %bb.bm, label %bb.bl

bb.bg:                                            ; preds = %._crit_edge496.i
  %i.gl = add i64 %.sroa.038.3.i, %.sroa.0.0      ; 2 uses
  %i.gm = sub nuw i64 %i.fj, %.sroa.038.3.i
  %i.gn = add i64 %.sroa.09.3.i, %.sroa.0188.0    ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val51) ]
  %i.go = load i64, ptr %i.ge, align 8, !range !6, !alias.scope !1043, !noalias !1040, !noundef !3
  %i.gp = icmp eq i64 %i.lb, %i.go
  br i1 %i.gp, label %bb.bh, label %_RNvXs0_NtNtCsiqiOkcJdymw_7similar10algorithms4hookINtB5_12NoFinishHookQINtNtB7_7compact7CompactINtNtB9_4text12TextDiffSideeEB1v_INtNtB7_7replace7ReplaceNtNtB7_7capture7CaptureEEENtB5_8DiffHook6deleteCskXhPDodhyTq_6mdtest.exit181.i

bb.bh:                                            ; preds = %bb.bg
  invoke void @_RNvMs3_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecNtNtCsiqiOkcJdymw_7similar5types6DiffOpE8grow_oneBP_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.ge)
          to label %_RNvXs0_NtNtCsiqiOkcJdymw_7similar10algorithms4hookINtB5_12NoFinishHookQINtNtB7_7compact7CompactINtNtB9_4text12TextDiffSideeEB1v_INtNtB7_7replace7ReplaceNtNtB7_7capture7CaptureEEENtB5_8DiffHook6deleteCskXhPDodhyTq_6mdtest.exit181.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !1040

_RNvXs0_NtNtCsiqiOkcJdymw_7similar10algorithms4hookINtB5_12NoFinishHookQINtNtB7_7compact7CompactINtNtB9_4text12TextDiffSideeEB1v_INtNtB7_7replace7ReplaceNtNtB7_7capture7CaptureEEENtB5_8DiffHook6deleteCskXhPDodhyTq_6mdtest.exit181.i: ; preds = %bb.bh, %bb.bg
  %i.gq = load ptr, ptr %i.gg, align 8, !alias.scope !1043, !noalias !1040, !nonnull !3, !noundef !3
  %i.gr = getelementptr inbounds nuw [40 x i8], ptr %i.gq, i64 %i.lb ; 4 uses
  store i64 1, ptr %i.gr, align 8, !noalias !1040
  %.sroa.42.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.gr, i64 8
  store i64 %i.gl, ptr %.sroa.42.0..sroa_idx.i, align 8, !noalias !1040
  %.sroa.53.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.gr, i64 16
  store i64 %i.gm, ptr %.sroa.53.0..sroa_idx.i, align 8, !noalias !1040
  %.sroa.64.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.gr, i64 24
  store i64 %i.gn, ptr %.sroa.64.0..sroa_idx.i, align 8, !noalias !1040
  %i.gs = add i64 %.sink1026.i, 2                 ; 2 uses
  store i64 %i.gs, ptr %i.gf, align 8, !alias.scope !1043, !noalias !1040
  br i1 %i.lc, label %bb.bj, label %.sink.split.i.thread

bb.bi:                                            ; preds = %._crit_edge496.i
  br i1 %i.lc, label %._crit_edge875, label %.sink.split.i.thread

._crit_edge875:                                   ; preds = %bb.bi
  %.pre876 = add i64 %.sroa.038.3.i, %.sroa.0.0
  %.pre878 = add i64 %.sroa.09.3.i, %.sroa.0188.0
  br label %bb.bj

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %bb.di, %bb.bm, %bb.bx, %bb.ck, %bb.cv, %bb.cx, %bb.by, %bb.cl, %.lr.ph469.split.i, %bb.dt, %.invoke.i, %bb.bk, %bb.bh
  %lpad.loopexit.split-lp1560 = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VechEECskXhPDodhyTq_6mdtest(ptr noalias noundef align 8 dereferenceable(24) %i.d) #15
          to label %common.resume unwind label %bb.dv, !noalias !1040

bb.bj:                                            ; preds = %._crit_edge875, %_RNvXs0_NtNtCsiqiOkcJdymw_7similar10algorithms4hookINtB5_12NoFinishHookQINtNtB7_7compact7CompactINtNtB9_4text12TextDiffSideeEB1v_INtNtB7_7replace7ReplaceNtNtB7_7capture7CaptureEEENtB5_8DiffHook6deleteCskXhPDodhyTq_6mdtest.exit181.i
  %.pre-phi879 = phi i64 [ %.pre878, %._crit_edge875 ], [ %i.gn, %_RNvXs0_NtNtCsiqiOkcJdymw_7similar10algorithms4hookINtB5_12NoFinishHookQINtNtB7_7compact7CompactINtNtB9_4text12TextDiffSideeEB1v_INtNtB7_7replace7ReplaceNtNtB7_7capture7CaptureEEENtB5_8DiffHook6deleteCskXhPDodhyTq_6mdtest.exit181.i ]
  %.pre-phi877 = phi i64 [ %.pre876, %._crit_edge875 ], [ %i.gl, %_RNvXs0_NtNtCsiqiOkcJdymw_7similar10algorithms4hookINtB5_12NoFinishHookQINtNtB7_7compact7CompactINtNtB9_4text12TextDiffSideeEB1v_INtNtB7_7replace7ReplaceNtNtB7_7capture7CaptureEEENtB5_8DiffHook6deleteCskXhPDodhyTq_6mdtest.exit181.i ]
  %i.gt = phi i64 [ %i.lb, %._crit_edge875 ], [ %i.gs, %_RNvXs0_NtNtCsiqiOkcJdymw_7similar10algorithms4hookINtB5_12NoFinishHookQINtNtB7_7compact7CompactINtNtB9_4text12TextDiffSideeEB1v_INtNtB7_7replace7ReplaceNtNtB7_7capture7CaptureEEENtB5_8DiffHook6deleteCskXhPDodhyTq_6mdtest.exit181.i ] ; 3 uses
  %i.gu = sub nuw i64 %i.fk, %.sroa.09.3.i
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val51) ]
  %i.gv = load i64, ptr %i.ge, align 8, !range !6, !alias.scope !1044, !noalias !1040, !noundef !3
  %i.gw = icmp eq i64 %i.gt, %i.gv
  br i1 %i.gw, label %bb.bk, label %_RNvXs0_NtNtCsiqiOkcJdymw_7similar10algorithms4hookINtB5_12NoFinishHookQINtNtB7_7compact7CompactINtNtB9_4text12TextDiffSideeEB1v_INtNtB7_7replace7ReplaceNtNtB7_7capture7CaptureEEENtB5_8DiffHook6insertCskXhPDodhyTq_6mdtest.exit182.i

bb.bk:                                            ; preds = %bb.bj
  invoke void @_RNvMs3_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecNtNtCsiqiOkcJdymw_7similar5types6DiffOpE8grow_oneBP_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.ge)
          to label %_RNvXs0_NtNtCsiqiOkcJdymw_7similar10algorithms4hookINtB5_12NoFinishHookQINtNtB7_7compact7CompactINtNtB9_4text12TextDiffSideeEB1v_INtNtB7_7replace7ReplaceNtNtB7_7capture7CaptureEEENtB5_8DiffHook6insertCskXhPDodhyTq_6mdtest.exit182.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !1040

_RNvXs0_NtNtCsiqiOkcJdymw_7similar10algorithms4hookINtB5_12NoFinishHookQINtNtB7_7compact7CompactINtNtB9_4text12TextDiffSideeEB1v_INtNtB7_7replace7ReplaceNtNtB7_7capture7CaptureEEENtB5_8DiffHook6insertCskXhPDodhyTq_6mdtest.exit182.i: ; preds = %bb.bk, %bb.bj
  %i.gx = load ptr, ptr %i.gg, align 8, !alias.scope !1044, !noalias !1040, !nonnull !3, !noundef !3
  %i.gy = getelementptr inbounds nuw [40 x i8], ptr %i.gx, i64 %i.gt ; 4 uses
  store i64 2, ptr %i.gy, align 8, !noalias !1040
  %.sroa.412.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.gy, i64 8
  store i64 %.pre-phi877, ptr %.sroa.412.0..sroa_idx.i, align 8, !noalias !1040
  %.sroa.513.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.gy, i64 16
  store i64 %.pre-phi879, ptr %.sroa.513.0..sroa_idx.i, align 8, !noalias !1040
  %.sroa.614.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.gy, i64 24
  store i64 %i.gu, ptr %.sroa.614.0..sroa_idx.i, align 8, !noalias !1040
  %i.gz = add i64 %i.gt, 1
  store i64 %i.gz, ptr %i.gf, align 8, !alias.scope !1044, !noalias !1040
  br label %.sink.split.i.thread

.sink.split.i.thread:                             ; preds = %_RNvXs0_NtNtCsiqiOkcJdymw_7similar10algorithms4hookINtB5_12NoFinishHookQINtNtB7_7compact7CompactINtNtB9_4text12TextDiffSideeEB1v_INtNtB7_7replace7ReplaceNtNtB7_7capture7CaptureEEENtB5_8DiffHook6deleteCskXhPDodhyTq_6mdtest.exit181.i, %bb.bi, %_RNvXs0_NtNtCsiqiOkcJdymw_7similar10algorithms4hookINtB5_12NoFinishHookQINtNtB7_7compact7CompactINtNtB9_4text12TextDiffSideeEB1v_INtNtB7_7replace7ReplaceNtNtB7_7capture7CaptureEEENtB5_8DiffHook6insertCskXhPDodhyTq_6mdtest.exit182.i
  call fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VechEECskXhPDodhyTq_6mdtest(ptr noalias noundef align 8 dereferenceable(24) %i.d), !noalias !1040
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !1040
  br label %bb.av

.sink.split.i:                                    ; preds = %.loopexit24.i
  call void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCskXhPDodhyTq_6mdtest(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.d), !noalias !1040
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !1040
  br label %_RINvNtNtCsiqiOkcJdymw_7similar10algorithms5myers27maybe_emit_small_side_exactINtNtB4_5utils12OffsetLookupjEB1d_INtNtB4_4hook12NoFinishHookQINtNtB4_7compact7CompactINtNtB6_4text12TextDiffSideeEB2B_INtNtB4_7replace7ReplaceNtNtB4_7capture7CaptureEEEECskXhPDodhyTq_6mdtest.exit.thread

bb.bl:                                            ; preds = %bb.bn, %bb.bf
  %i.ha = mul i64 %.sroa.09.0493.i, %i.fs         ; 4 uses
  %i.hb = add i64 %.sroa.038.0492.i, %.sroa.0.0   ; 2 uses
  %i.hc = add i64 %.sroa.09.0493.i, %.sroa.0188.0 ; 7 uses
  %i.hd = sub i64 %i.hc, %i.o                     ; 3 uses
  %i.he = icmp ult i64 %i.hd, %i.q
  br i1 %i.he, label %bb.bo, label %.invoke.i

.invoke.i:                                        ; preds = %bb.dr, %bb.dp, %bb.dn, %bb.dm, %bb.dk, %bb.bu, %bb.bs, %bb.br, %bb.bq, %bb.bo, %bb.bl, %bb.ct, %bb.cr, %bb.cq, %bb.cp, %bb.cn, %bb.cg, %bb.ce, %bb.cd, %bb.cc, %bb.ca, %bb.cz, %bb.cw, %bb.dc, %bb.db, %bb.du, %.lr.ph.split.i
  %i.hf = phi i64 [ %i.jm, %bb.cg ], [ %.reass.i, %bb.du ], [ %.reass.i, %.lr.ph.split.i ], [ %i.kt, %bb.ct ], [ %i.hd, %bb.bl ], [ %i.ma, %bb.dc ], [ %i.q, %bb.cw ], [ %i.lt, %bb.db ], [ %i.w, %bb.cz ], [ %i.iw, %bb.ca ], [ %i.ja, %bb.cc ], [ %i.je, %bb.ce ], [ %i.jc, %bb.cd ], [ %i.kb, %bb.cn ], [ %i.kf, %bb.cp ], [ %i.kl, %bb.cr ], [ %i.kh, %bb.cq ], [ %i.ho, %bb.bq ], [ %i.hq, %bb.br ], [ %i.ig, %bb.bu ], [ %i.hk, %bb.bo ], [ %i.hv, %bb.bs ], [ %i.mx, %bb.dm ], [ %.reass.us.i, %bb.dk ], [ %i.nq, %bb.dr ], [ %i.nb, %bb.dn ], [ %i.nh, %bb.dp ]
  %i.hg = phi i64 [ %.pre729.i.a, %bb.cg ], [ %i.q, %bb.du ], [ %i.q, %.lr.ph.split.i ], [ %.pre727.i, %bb.ct ], [ %i.q, %bb.bl ], [ %i.lv, %bb.dc ], [ %i.q, %bb.cw ], [ %i.lv, %bb.db ], [ %i.w, %bb.cz ], [ %i.w, %bb.ca ], [ %.pre729.i.a, %bb.cc ], [ %.pre729.i.a, %bb.ce ], [ %.pre729.i.a, %bb.cd ], [ %i.q, %bb.cn ], [ %.pre727.i, %bb.cp ], [ %.pre727.i, %bb.cr ], [ %.pre727.i, %bb.cq ], [ %.pre725.i, %bb.bq ], [ %.pre725.i, %bb.br ], [ %.pre725.i, %bb.bu ], [ %i.w, %bb.bo ], [ %.pre725.i, %bb.bs ], [ %i.mz, %bb.dm ], [ %i.w, %bb.dk ], [ %i.np, %bb.dr ], [ %i.mz, %bb.dn ], [ %i.ni, %bb.dp ]
  %i.hh = phi ptr [ @34, %bb.cg ], [ @45, %bb.du ], [ @45, %.lr.ph.split.i ], [ @40, %bb.ct ], [ @23, %bb.bl ], [ @44, %bb.dc ], [ @41, %bb.cw ], [ @43, %bb.db ], [ @42, %bb.cz ], [ @30, %bb.ca ], [ @31, %bb.cc ], [ @32, %bb.ce ], [ @33, %bb.cd ], [ @35, %bb.cn ], [ @37, %bb.cp ], [ @38, %bb.cr ], [ @39, %bb.cq ], [ @25, %bb.bq ], [ @27, %bb.br ], [ @28, %bb.bu ], [ @24, %bb.bo ], [ @26, %bb.bs ], [ @47, %bb.dm ], [ @46, %bb.dk ], [ @50, %bb.dr ], [ @48, %bb.dn ], [ @49, %bb.dp ]
  invoke void @_RNvNtCs4NRVxsYgnAr_4core9panicking18panic_bounds_check(i64 noundef %i.hf, i64 noundef %i.hg, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.hh) #14
          to label %.cont.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !1040

.cont.i:                                          ; preds = %.invoke.i
  unreachable

bb.bm:                                            ; preds = %bb.bf
  %i.hi = invoke noundef zeroext i1 @_RNvNtCsiqiOkcJdymw_7similar16deadline_support17deadline_exceeded(i64 %9, i32 noundef range(i32 -1, 1000000000) %10)
          to label %bb.bn unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !1040

bb.bn:                                            ; preds = %bb.bm
  br i1 %i.hi, label %.loopexit24.i, label %bb.bl

bb.bo:                                            ; preds = %bb.bl
  %i.hj = getelementptr inbounds nuw [8 x i8], ptr %i.s, i64 %i.hd ; 2 uses
  %i.hk = sub i64 %i.hb, %i.u                     ; 3 uses
  %i.hl = icmp ult i64 %i.hk, %i.w
  br i1 %i.hl, label %bb.bp, label %.invoke.i

bb.bp:                                            ; preds = %bb.bo
  %i.hm = getelementptr inbounds nuw [8 x i8], ptr %i.y, i64 %i.hk ; 2 uses
  %.val210.i = load i64, ptr %i.hj, align 8, !noalias !1040, !noundef !3
  %.val211.i = load i64, ptr %i.hm, align 8, !noalias !1040, !noundef !3
  %i.hn = icmp eq i64 %.val210.i, %.val211.i
  %.pre.i = load ptr, ptr %i.gc, align 8, !noalias !1040 ; 4 uses
  %.pre725.i = load i64, ptr %i.gd, align 8, !noalias !1040 ; 8 uses
  br i1 %i.hn, label %bb.bq, label %._crit_edge731.i

._crit_edge731.i:                                 ; preds = %bb.bp
  %.pre732.i = add nuw i64 %.sroa.09.0493.i, 1
  %.pre733.i = mul i64 %.pre732.i, %i.fs
  br label %bb.br

bb.bq:                                            ; preds = %bb.bp
  %i.ho = add i64 %i.ha, %.sroa.038.0492.i        ; 3 uses
  %i.hp = icmp ult i64 %i.ho, %.pre725.i
  br i1 %i.hp, label %bb.bs, label %.invoke.i

bb.br:                                            ; preds = %bb.bt, %._crit_edge731.i
  %.pre-phi734.i = phi i64 [ %.pre733.i, %._crit_edge731.i ], [ %i.ht, %bb.bt ] ; 3 uses
  %i.hq = add i64 %.pre-phi734.i, %.sroa.038.0492.i ; 3 uses
  %i.hr = icmp ult i64 %i.hq, %.pre725.i
  br i1 %i.hr, label %bb.bu, label %.invoke.i

bb.bs:                                            ; preds = %bb.bq
  %i.hs = add nuw i64 %.sroa.09.0493.i, 1
  %i.ht = mul i64 %i.hs, %i.fs                    ; 2 uses
  %i.hu = add nuw i64 %.sroa.038.0492.i, 1
  %i.hv = add i64 %i.hu, %i.ht                    ; 3 uses
  %i.hw = icmp ult i64 %i.hv, %.pre725.i
  br i1 %i.hw, label %bb.bt, label %.invoke.i

bb.bt:                                            ; preds = %bb.bs
  %i.hx = getelementptr inbounds nuw i8, ptr %.pre.i, i64 %i.ho
  %i.hy = load i8, ptr %i.hx, align 1, !noalias !1040, !noundef !3
  %i.hz = getelementptr inbounds nuw i8, ptr %.pre.i, i64 %i.hv
  %i.ia = load i8, ptr %i.hz, align 1, !noalias !1040, !noundef !3
  %i.ib = add i8 %i.ia, 1
  %i.ic = icmp eq i8 %i.hy, %i.ib
  br i1 %i.ic, label %.preheader.i, label %bb.br

.preheader.i:                                     ; preds = %bb.bt
  %i.id = icmp ult i64 %.sroa.09.0493.i, %i.fk
  %i.ie = icmp ult i64 %.sroa.038.0492.i, %i.fj
  %or.cond177478.i = select i1 %i.id, i1 %i.ie, i1 false
  br i1 %or.cond177478.i, label %.lr.ph481.i, label %._crit_edge482.i

bb.bu:                                            ; preds = %bb.br
  %i.if = add i64 %.sroa.038.0492.i, 1            ; 3 uses
  %i.ig = add i64 %i.if, %i.ha                    ; 3 uses
  %i.ih = icmp ult i64 %i.ig, %.pre725.i
  br i1 %i.ih, label %bb.bv, label %.invoke.i

bb.bv:                                            ; preds = %bb.bu
  %i.ii = getelementptr inbounds nuw i8, ptr %.pre.i, i64 %i.hq
  %i.ij = load i8, ptr %i.ii, align 1, !noalias !1040, !noundef !3
  %i.ik = getelementptr inbounds nuw i8, ptr %.pre.i, i64 %i.ig
  %i.il = load i8, ptr %i.ik, align 1, !noalias !1040, !noundef !3
  %.not164.i = icmp ult i8 %i.ij, %i.il
  br i1 %.not164.i, label %.preheader25.i, label %.preheader30.i

.preheader30.i:                                   ; preds = %bb.bv
  %umax.i = call i64 @llvm.umax.i64(i64 %.sroa.09.0493.i, i64 %i.fk) ; 3 uses
  %exitcond.not.i1516.not = icmp ult i64 %.sroa.09.0493.i, %i.fk
  br i1 %exitcond.not.i1516.not, label %.lr.ph1518, label %._crit_edge1519

.preheader25.i:                                   ; preds = %bb.bv
  %i.im = icmp ult i64 %.sroa.038.0492.i, %i.fj
  br i1 %i.im, label %.lr.ph473.i, label %._crit_edge.i

.lr.ph473.i:                                      ; preds = %.preheader25.i
  %i.in = add i64 %.pre-phi734.i, 1
  %i.io = add i64 %i.ha, 1
  br label %bb.bw

bb.bw:                                            ; preds = %bb.ci, %.lr.ph473.i
  %.sroa.038.1472.i = phi i64 [ %.sroa.038.0492.i, %.lr.ph473.i ], [ %i.jt, %bb.ci ] ; 9 uses
  %i.ip = and i64 %.sroa.038.1472.i, 1023
  %i.iq = icmp eq i64 %i.ip, 0
  %or.cond173.i = and i1 %.sroa.05.0.not494.i, %i.iq
  br i1 %or.cond173.i, label %bb.by, label %bb.ca

._crit_edge.i:                                    ; preds = %bb.ci, %bb.ch, %bb.cf, %.preheader25.i
  %.sroa.038.1.lcssa.i = phi i64 [ %.sroa.038.0492.i, %.preheader25.i ], [ %i.fj, %bb.ci ], [ %.sroa.038.1472.i, %bb.ch ], [ %.sroa.038.1472.i, %bb.cf ] ; 3 uses
  %i.ir = sub nuw i64 %.sroa.038.1.lcssa.i, %.sroa.038.0492.i ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val51) ]
  %i.is = load i64, ptr %i.gf, align 8, !alias.scope !1045, !noalias !1040, !noundef !3 ; 3 uses
  %i.it = load i64, ptr %i.ge, align 8, !range !6, !alias.scope !1045, !noalias !1040, !noundef !3
  %i.iu = icmp eq i64 %i.is, %i.it
  br i1 %i.iu, label %bb.bx, label %_RNvXs0_NtNtCsiqiOkcJdymw_7similar10algorithms4hookINtB5_12NoFinishHookQINtNtB7_7compact7CompactINtNtB9_4text12TextDiffSideeEB1v_INtNtB7_7replace7ReplaceNtNtB7_7capture7CaptureEEENtB5_8DiffHook5equalCskXhPDodhyTq_6mdtest.exit.i

bb.bx:                                            ; preds = %._crit_edge.i
  invoke void @_RNvMs3_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecNtNtCsiqiOkcJdymw_7similar5types6DiffOpE8grow_oneBP_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.ge)
          to label %_RNvXs0_NtNtCsiqiOkcJdymw_7similar10algorithms4hookINtB5_12NoFinishHookQINtNtB7_7compact7CompactINtNtB9_4text12TextDiffSideeEB1v_INtNtB7_7replace7ReplaceNtNtB7_7capture7CaptureEEENtB5_8DiffHook5equalCskXhPDodhyTq_6mdtest.exit.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !1040

bb.by:                                            ; preds = %bb.bw
  %i.iv = invoke noundef zeroext i1 @_RNvNtCsiqiOkcJdymw_7similar16deadline_support17deadline_exceeded(i64 %9, i32 noundef range(i32 -1, 1000000000) %10)
          to label %bb.bz unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !1040

bb.bz:                                            ; preds = %bb.by
  br i1 %i.iv, label %.loopexit24.i, label %bb.ca

bb.ca:                                            ; preds = %bb.bz, %bb.bw
  %i.iw = add i64 %.sroa.038.1472.i, %invariant.op.i ; 3 uses
  %i.ix = icmp ult i64 %i.iw, %i.w
  br i1 %i.ix, label %bb.cb, label %.invoke.i

bb.cb:                                            ; preds = %bb.ca
  %i.iy = getelementptr inbounds nuw [8 x i8], ptr %i.y, i64 %i.iw
  %.val208.i = load i64, ptr %i.hj, align 8, !noalias !1040, !noundef !3
  %.val209.i = load i64, ptr %i.iy, align 8, !noalias !1040, !noundef !3
  %i.iz = icmp eq i64 %.val208.i, %.val209.i
  %.pre728.i.a = load ptr, ptr %i.gc, align 8, !noalias !1040 ; 4 uses
  %.pre729.i.a = load i64, ptr %i.gd, align 8, !noalias !1040 ; 8 uses
  br i1 %i.iz, label %bb.cc, label %bb.cd

bb.cc:                                            ; preds = %bb.cb
  %i.ja = add i64 %.sroa.038.1472.i, %i.ha        ; 3 uses
  %i.jb = icmp ult i64 %i.ja, %.pre729.i.a
  br i1 %i.jb, label %bb.ce, label %.invoke.i

bb.cd:                                            ; preds = %bb.cf, %bb.cb
  %i.jc = add i64 %.sroa.038.1472.i, %.pre-phi734.i ; 3 uses
  %i.jd = icmp ult i64 %i.jc, %.pre729.i.a
  br i1 %i.jd, label %bb.cg, label %.invoke.i

bb.ce:                                            ; preds = %bb.cc
  %i.je = add i64 %i.in, %.sroa.038.1472.i        ; 3 uses
  %i.jf = icmp ult i64 %i.je, %.pre729.i.a
  br i1 %i.jf, label %bb.cf, label %.invoke.i

bb.cf:                                            ; preds = %bb.ce
  %i.jg = getelementptr inbounds nuw i8, ptr %.pre728.i.a, i64 %i.ja
  %i.jh = load i8, ptr %i.jg, align 1, !noalias !1040, !noundef !3
  %i.ji = getelementptr inbounds nuw i8, ptr %.pre728.i.a, i64 %i.je
  %i.jj = load i8, ptr %i.ji, align 1, !noalias !1040, !noundef !3
  %i.jk = add i8 %i.jj, 1
  %i.jl = icmp eq i8 %i.jh, %i.jk
  br i1 %i.jl, label %._crit_edge.i, label %bb.cd

bb.cg:                                            ; preds = %bb.cd
  %i.jm = add i64 %i.io, %.sroa.038.1472.i        ; 3 uses
  %i.jn = icmp ult i64 %i.jm, %.pre729.i.a
  br i1 %i.jn, label %bb.ch, label %.invoke.i

bb.ch:                                            ; preds = %bb.cg
  %i.jo = getelementptr inbounds nuw i8, ptr %.pre728.i.a, i64 %i.jc
  %i.jp = load i8, ptr %i.jo, align 1, !noalias !1040, !noundef !3
  %i.jq = getelementptr inbounds nuw i8, ptr %.pre728.i.a, i64 %i.jm
  %i.jr = load i8, ptr %i.jq, align 1, !noalias !1040, !noundef !3
  %i.js = icmp ult i8 %i.jp, %i.jr
  br i1 %i.js, label %bb.ci, label %._crit_edge.i

bb.ci:                                            ; preds = %bb.ch
  %i.jt = add nuw i64 %.sroa.038.1472.i, 1        ; 2 uses
  %i.ju = icmp ult i64 %i.jt, %i.fj
  br i1 %i.ju, label %bb.bw, label %._crit_edge.i

bb.cj:                                            ; preds = %bb.cu
  %exitcond.not.i = icmp eq i64 %.pre-phi736.i, %umax.i
  br i1 %exitcond.not.i, label %._crit_edge1519, label %.lr.ph1518

.lr.ph1518:                                       ; preds = %.preheader30.i, %bb.cj
  %.sroa.09.1.i1517 = phi i64 [ %.pre-phi736.i, %bb.cj ], [ %.sroa.09.0493.i, %.preheader30.i ] ; 6 uses
  br i1 %or.cond170.i, label %bb.cl, label %bb.cn

._crit_edge1519:                                  ; preds = %bb.cj, %bb.cs, %bb.cu, %.preheader30.i
  %.sroa.09.1.lcssa.i = phi i64 [ %umax.i, %.preheader30.i ], [ %umax.i, %bb.cj ], [ %.sroa.09.1.i1517, %bb.cs ], [ %.sroa.09.1.i1517, %bb.cu ] ; 3 uses
  %i.jv = sub i64 %.sroa.09.1.lcssa.i, %.sroa.09.0493.i ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val51) ]
  %i.jw = load i64, ptr %i.gf, align 8, !alias.scope !1046, !noalias !1040, !noundef !3 ; 3 uses
  %i.jx = load i64, ptr %i.ge, align 8, !range !6, !alias.scope !1046, !noalias !1040, !noundef !3
  %i.jy = icmp eq i64 %i.jw, %i.jx
  br i1 %i.jy, label %bb.ck, label %_RNvXs0_NtNtCsiqiOkcJdymw_7similar10algorithms4hookINtB5_12NoFinishHookQINtNtB7_7compact7CompactINtNtB9_4text12TextDiffSideeEB1v_INtNtB7_7replace7ReplaceNtNtB7_7capture7CaptureEEENtB5_8DiffHook5equalCskXhPDodhyTq_6mdtest.exit.i

bb.ck:                                            ; preds = %._crit_edge1519
  invoke void @_RNvMs3_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecNtNtCsiqiOkcJdymw_7similar5types6DiffOpE8grow_oneBP_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.ge)
          to label %_RNvXs0_NtNtCsiqiOkcJdymw_7similar10algorithms4hookINtB5_12NoFinishHookQINtNtB7_7compact7CompactINtNtB9_4text12TextDiffSideeEB1v_INtNtB7_7replace7ReplaceNtNtB7_7capture7CaptureEEENtB5_8DiffHook5equalCskXhPDodhyTq_6mdtest.exit.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !1040

bb.cl:                                            ; preds = %.lr.ph1518
  %i.jz = invoke noundef zeroext i1 @_RNvNtCsiqiOkcJdymw_7similar16deadline_support17deadline_exceeded(i64 %9, i32 noundef range(i32 -1, 1000000000) %10)
          to label %bb.cm unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !1040

bb.cm:                                            ; preds = %bb.cl
  br i1 %i.jz, label %.loopexit24.i, label %bb.cn

bb.cn:                                            ; preds = %bb.cm, %.lr.ph1518
  %i.ka = mul i64 %.sroa.09.1.i1517, %i.fs        ; 2 uses
  %i.kb = add i64 %.sroa.09.1.i1517, %invariant.op470.i ; 3 uses
  %i.kc = icmp ult i64 %i.kb, %i.q
  br i1 %i.kc, label %bb.co, label %.invoke.i

bb.co:                                            ; preds = %bb.cn
  %i.kd = getelementptr inbounds nuw [8 x i8], ptr %i.s, i64 %i.kb
  %.val206.i = load i64, ptr %i.kd, align 8, !noalias !1040, !noundef !3
  %.val207.i = load i64, ptr %i.hm, align 8, !noalias !1040, !noundef !3
  %i.ke = icmp eq i64 %.val206.i, %.val207.i
  %.pre726.i = load ptr, ptr %i.gc, align 8, !noalias !1040 ; 4 uses
  %.pre727.i = load i64, ptr %i.gd, align 8, !noalias !1040 ; 8 uses
  br i1 %i.ke, label %bb.cp, label %._crit_edge730.i

._crit_edge730.i:                                 ; preds = %bb.co
  %.pre735.i = add i64 %.sroa.09.1.i1517, 1       ; 2 uses
  %.pre737.i = mul i64 %.pre735.i, %i.fs
  br label %bb.cq

bb.cp:                                            ; preds = %bb.co
  %i.kf = add i64 %i.ka, %.sroa.038.0492.i        ; 3 uses
  %i.kg = icmp ult i64 %i.kf, %.pre727.i
  br i1 %i.kg, label %bb.cr, label %.invoke.i

bb.cq:                                            ; preds = %bb.cs, %._crit_edge730.i
  %.pre-phi738.i.a = phi i64 [ %.pre737.i, %._crit_edge730.i ], [ %i.kk, %bb.cs ]
  %.pre-phi736.i = phi i64 [ %.pre735.i, %._crit_edge730.i ], [ %i.kj, %bb.cs ] ; 2 uses
  %i.kh = add i64 %.pre-phi738.i.a, %.sroa.038.0492.i ; 3 uses
  %i.ki = icmp ult i64 %i.kh, %.pre727.i
  br i1 %i.ki, label %bb.ct, label %.invoke.i

bb.cr:                                            ; preds = %bb.cp
  %i.kj = add i64 %.sroa.09.1.i1517, 1            ; 2 uses
  %i.kk = mul i64 %i.kj, %i.fs                    ; 2 uses
  %i.kl = add i64 %i.kk, %i.if                    ; 3 uses
  %i.km = icmp ult i64 %i.kl, %.pre727.i
  br i1 %i.km, label %bb.cs, label %.invoke.i

bb.cs:                                            ; preds = %bb.cr
  %i.kn = getelementptr inbounds nuw i8, ptr %.pre726.i, i64 %i.kf
  %i.ko = load i8, ptr %i.kn, align 1, !noalias !1040, !noundef !3
  %i.kp = getelementptr inbounds nuw i8, ptr %.pre726.i, i64 %i.kl
  %i.kq = load i8, ptr %i.kp, align 1, !noalias !1040, !noundef !3
  %i.kr = add i8 %i.kq, 1
  %i.ks = icmp eq i8 %i.ko, %i.kr
  br i1 %i.ks, label %._crit_edge1519, label %bb.cq

bb.ct:                                            ; preds = %bb.cq
  %i.kt = add i64 %i.ka, %i.if                    ; 3 uses
  %i.ku = icmp ult i64 %i.kt, %.pre727.i
  br i1 %i.ku, label %bb.cu, label %.invoke.i

bb.cu:                                            ; preds = %bb.ct
  %i.kv = getelementptr inbounds nuw i8, ptr %.pre726.i, i64 %i.kh
  %i.kw = load i8, ptr %i.kv, align 1, !noalias !1040, !noundef !3
  %i.kx = getelementptr inbounds nuw i8, ptr %.pre726.i, i64 %i.kt
  %i.ky = load i8, ptr %i.kx, align 1, !noalias !1040, !noundef !3
  %.not167.i = icmp ult i8 %i.kw, %i.ky
  br i1 %.not167.i, label %._crit_edge1519, label %bb.cj

_RNvXs0_NtNtCsiqiOkcJdymw_7similar10algorithms4hookINtB5_12NoFinishHookQINtNtB7_7compact7CompactINtNtB9_4text12TextDiffSideeEB1v_INtNtB7_7replace7ReplaceNtNtB7_7capture7CaptureEEENtB5_8DiffHook5equalCskXhPDodhyTq_6mdtest.exit.i: ; preds = %bb.cv, %._crit_edge482.i, %bb.ck, %._crit_edge1519, %bb.bx, %._crit_edge.i
  %.sink1026.i = phi i64 [ %i.is, %._crit_edge.i ], [ %i.lf, %._crit_edge482.i ], [ %i.lf, %bb.cv ], [ %i.is, %bb.bx ], [ %i.jw, %bb.ck ], [ %i.jw, %._crit_edge1519 ] ; 3 uses
  %.sink1023.i = phi i64 [ 1, %._crit_edge.i ], [ 0, %._crit_edge482.i ], [ 0, %bb.cv ], [ 1, %bb.bx ], [ 2, %bb.ck ], [ 2, %._crit_edge1519 ]
  %.sink1020.i = phi i64 [ %i.ir, %._crit_edge.i ], [ %i.hc, %._crit_edge482.i ], [ %i.hc, %bb.cv ], [ %i.ir, %bb.bx ], [ %i.hc, %bb.ck ], [ %i.hc, %._crit_edge1519 ]
  %.sink.i = phi i64 [ %i.hc, %._crit_edge.i ], [ %i.le, %._crit_edge482.i ], [ %i.le, %bb.cv ], [ %i.hc, %bb.bx ], [ %i.jv, %bb.ck ], [ %i.jv, %._crit_edge1519 ]
  %.sroa.038.3.i = phi i64 [ %.sroa.038.1.lcssa.i, %._crit_edge.i ], [ %.sroa.038.4.lcssa.i, %._crit_edge482.i ], [ %.sroa.038.4.lcssa.i, %bb.cv ], [ %.sroa.038.1.lcssa.i, %bb.bx ], [ %.sroa.038.0492.i, %bb.ck ], [ %.sroa.038.0492.i, %._crit_edge1519 ] ; 5 uses
  %.sroa.09.3.i = phi i64 [ %.sroa.09.0493.i, %._crit_edge.i ], [ %.sroa.09.4.lcssa.i, %._crit_edge482.i ], [ %.sroa.09.4.lcssa.i, %bb.cv ], [ %.sroa.09.0493.i, %bb.bx ], [ %.sroa.09.1.lcssa.i, %bb.ck ], [ %.sroa.09.1.lcssa.i, %._crit_edge1519 ] ; 5 uses
  %i.kz = load ptr, ptr %i.gg, align 8, !noalias !1040, !nonnull !3, !noundef !3
  %i.la = getelementptr inbounds nuw [40 x i8], ptr %i.kz, i64 %.sink1026.i ; 4 uses
  store i64 %.sink1023.i, ptr %i.la, align 8, !noalias !1040
  %.sroa.417.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.la, i64 8
  store i64 %i.hb, ptr %.sroa.417.0..sroa_idx.i, align 8, !noalias !1040
  %.sroa.518.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.la, i64 16
  store i64 %.sink1020.i, ptr %.sroa.518.0..sroa_idx.i, align 8, !noalias !1040
  %.sroa.619.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.la, i64 24
  store i64 %.sink.i, ptr %.sroa.619.0..sroa_idx.i, align 8, !noalias !1040
  %i.lb = add i64 %.sink1026.i, 1                 ; 4 uses
  store i64 %i.lb, ptr %i.gf, align 8, !noalias !1040
  %i.lc = icmp ult i64 %.sroa.09.3.i, %i.fk       ; 3 uses
  %i.ld = icmp ult i64 %.sroa.038.3.i, %i.fj      ; 2 uses
  %or.cond.i75 = select i1 %i.lc, i1 %i.ld, i1 false
  br i1 %or.cond.i75, label %bb.bf, label %._crit_edge496.i

._crit_edge482.i:                                 ; preds = %bb.de, %bb.dd, %bb.da, %.preheader.i
  %.sroa.038.4.lcssa.i = phi i64 [ %.sroa.038.0492.i, %.preheader.i ], [ %i.lz, %bb.de ], [ %.sroa.038.4479.i, %bb.da ], [ %.sroa.038.4479.i, %bb.dd ] ; 3 uses
  %.sroa.09.4.lcssa.i = phi i64 [ %.sroa.09.0493.i, %.preheader.i ], [ %i.lx, %bb.de ], [ %.sroa.09.4480.i, %bb.da ], [ %.sroa.09.4480.i, %bb.dd ] ; 2 uses
  %i.le = sub nuw i64 %.sroa.038.4.lcssa.i, %.sroa.038.0492.i ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val51) ]
  %i.lf = load i64, ptr %i.gf, align 8, !alias.scope !1047, !noalias !1040, !noundef !3 ; 3 uses
  %i.lg = load i64, ptr %i.ge, align 8, !range !6, !alias.scope !1047, !noalias !1040, !noundef !3
  %i.lh = icmp eq i64 %i.lf, %i.lg
  br i1 %i.lh, label %bb.cv, label %_RNvXs0_NtNtCsiqiOkcJdymw_7similar10algorithms4hookINtB5_12NoFinishHookQINtNtB7_7compact7CompactINtNtB9_4text12TextDiffSideeEB1v_INtNtB7_7replace7ReplaceNtNtB7_7capture7CaptureEEENtB5_8DiffHook5equalCskXhPDodhyTq_6mdtest.exit.i

bb.cv:                                            ; preds = %._crit_edge482.i
  invoke void @_RNvMs3_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecNtNtCsiqiOkcJdymw_7similar5types6DiffOpE8grow_oneBP_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.ge)
          to label %_RNvXs0_NtNtCsiqiOkcJdymw_7similar10algorithms4hookINtB5_12NoFinishHookQINtNtB7_7compact7CompactINtNtB9_4text12TextDiffSideeEB1v_INtNtB7_7replace7ReplaceNtNtB7_7capture7CaptureEEENtB5_8DiffHook5equalCskXhPDodhyTq_6mdtest.exit.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !1040

.lr.ph481.i:                                      ; preds = %.preheader.i, %bb.de
  %.sroa.09.4480.i = phi i64 [ %i.lx, %bb.de ], [ %.sroa.09.0493.i, %.preheader.i ] ; 5 uses
  %.sroa.038.4479.i = phi i64 [ %i.lz, %bb.de ], [ %.sroa.038.0492.i, %.preheader.i ] ; 6 uses
  %i.li = and i64 %.sroa.038.4479.i, 1023
  %i.lj = icmp eq i64 %i.li, 0
  %or.cond180.i = select i1 %.sroa.05.0.not494.i, i1 %i.lj, i1 false
  br i1 %or.cond180.i, label %bb.cx, label %bb.cw

bb.cw:                                            ; preds = %bb.cy, %.lr.ph481.i
  %i.lk = mul i64 %.sroa.09.4480.i, %i.fs
  %i.ll = add i64 %.sroa.09.4480.i, %invariant.op470.i ; 2 uses
  %i.lm = icmp ult i64 %i.ll, %i.q
  br i1 %i.lm, label %bb.cz, label %.invoke.i

bb.cx:                                            ; preds = %.lr.ph481.i
  %i.ln = invoke noundef zeroext i1 @_RNvNtCsiqiOkcJdymw_7similar16deadline_support17deadline_exceeded(i64 %9, i32 noundef range(i32 -1, 1000000000) %10)
          to label %bb.cy unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !1040

bb.cy:                                            ; preds = %bb.cx
  br i1 %i.ln, label %.loopexit24.i, label %bb.cw

bb.cz:                                            ; preds = %bb.cw
  %i.lo = add i64 %.sroa.038.4479.i, %invariant.op.i ; 2 uses
  %i.lp = icmp ult i64 %i.lo, %i.w
  br i1 %i.lp, label %bb.da, label %.invoke.i

bb.da:                                            ; preds = %bb.cz
  %i.lq = getelementptr inbounds nuw [8 x i8], ptr %i.s, i64 %i.ll
  %i.lr = getelementptr inbounds nuw [8 x i8], ptr %i.y, i64 %i.lo
  %.val204.i = load i64, ptr %i.lq, align 8, !noalias !1040, !noundef !3
  %.val205.i = load i64, ptr %i.lr, align 8, !noalias !1040, !noundef !3
  %i.ls = icmp eq i64 %.val204.i, %.val205.i
  br i1 %i.ls, label %bb.db, label %._crit_edge482.i

bb.db:                                            ; preds = %bb.da
  %i.lt = add i64 %i.lk, %.sroa.038.4479.i        ; 3 uses
  %i.lu = load ptr, ptr %i.gc, align 8, !noalias !1040, !nonnull !3, !noundef !3 ; 2 uses
  %i.lv = load i64, ptr %i.gd, align 8, !noalias !1040, !noundef !3 ; 4 uses
  %i.lw = icmp ult i64 %i.lt, %i.lv
  br i1 %i.lw, label %bb.dc, label %.invoke.i

bb.dc:                                            ; preds = %bb.db
  %i.lx = add nuw i64 %.sroa.09.4480.i, 1         ; 4 uses
  %i.ly = mul i64 %i.lx, %i.fs
  %i.lz = add nuw i64 %.sroa.038.4479.i, 1        ; 4 uses
  %i.ma = add i64 %i.lz, %i.ly                    ; 3 uses
  %i.mb = icmp ult i64 %i.ma, %i.lv
  br i1 %i.mb, label %bb.dd, label %.invoke.i

bb.dd:                                            ; preds = %bb.dc
  %i.mc = getelementptr inbounds nuw i8, ptr %i.lu, i64 %i.lt
  %i.md = load i8, ptr %i.mc, align 1, !noalias !1040, !noundef !3
  %i.me = getelementptr inbounds nuw i8, ptr %i.lu, i64 %i.ma
  %i.mf = load i8, ptr %i.me, align 1, !noalias !1040, !noundef !3
  %i.mg = add i8 %i.mf, 1
  %i.mh = icmp eq i8 %i.md, %i.mg
  br i1 %i.mh, label %bb.de, label %._crit_edge482.i

bb.de:                                            ; preds = %bb.dd
  %i.mi = icmp ult i64 %i.lx, %i.fk
  %i.mj = icmp ult i64 %i.lz, %i.fj
  %or.cond177.i = and i1 %i.mi, %i.mj
  br i1 %or.cond177.i, label %.lr.ph481.i, label %._crit_edge482.i

.loopexit24.i:                                    ; preds = %bb.dh, %bb.dj, %bb.bn, %bb.cm, %bb.bz, %bb.cy, %bb.du
  invoke void @_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCskXhPDodhyTq_6mdtest(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.d)
          to label %.sink.split.i unwind label %bb.df, !noalias !1040

bb.df:                                            ; preds = %.loopexit24.i
  %i.mk = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCskXhPDodhyTq_6mdtest(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.d)
          to label %common.resume unwind label %bb.dg, !noalias !1040

bb.dg:                                            ; preds = %bb.df
  %i.ml = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #13, !noalias !1040
  unreachable

common.resume:                                    ; preds = %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i88.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %bb.fz, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %bb.df
  %common.resume.op = phi { ptr, i32 } [ %lpad.loopexit.split-lp1560, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ], [ %i.mk, %bb.df ], [ %i.up, %bb.fz ], [ %lpad.loopexit.split-lp1606, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i88.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ]
  resume { ptr, i32 } %common.resume.op

bb.dh:                                            ; preds = %.lr.ph469.split.i
  br i1 %i.gi, label %.loopexit24.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.dh
  %i.mm = mul i64 %i.gh, %i.fs                    ; 2 uses
  %i.mn = mul i64 %.sroa.0102.0468.i, %i.fs       ; 2 uses
  %.reass.i = add i64 %i.gh, %invariant.op470.i   ; 4 uses
  %i.mo = icmp ult i64 %.reass.i, %i.q
  %i.mp = getelementptr inbounds nuw [8 x i8], ptr %i.s, i64 %.reass.i
  %.fr.i = freeze i1 %i.mo
  br i1 %.fr.i, label %.lr.ph.split.us.i, label %.lr.ph.split.i

.lr.ph.split.us.i:                                ; preds = %.lr.ph.i, %bb.ds
  %.sroa.0105.0432.us.i = phi i64 [ %i.mq, %bb.ds ], [ %i.fj, %.lr.ph.i ] ; 3 uses
  %i.mq = add i64 %.sroa.0105.0432.us.i, -1       ; 6 uses
  %i.mr = and i64 %i.mq, 1023
  %i.ms = icmp eq i64 %i.mr, 0
  br i1 %i.ms, label %bb.di, label %bb.dk

bb.di:                                            ; preds = %.lr.ph.split.us.i
  %i.mt = invoke noundef zeroext i1 @_RNvNtCsiqiOkcJdymw_7similar16deadline_support17deadline_exceeded(i64 %9, i32 noundef range(i32 -1, 1000000000) %10)
          to label %bb.dj unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !1040

bb.dj:                                            ; preds = %bb.di
  br i1 %i.mt, label %.loopexit24.i, label %bb.dk

bb.dk:                                            ; preds = %bb.dj, %.lr.ph.split.us.i
  %.reass.us.i = add i64 %i.mq, %invariant.op.i   ; 3 uses
  %i.mu = icmp ult i64 %.reass.us.i, %i.w
  br i1 %i.mu, label %bb.dl, label %.invoke.i

bb.dl:                                            ; preds = %bb.dk
  %i.mv = getelementptr inbounds nuw [8 x i8], ptr %i.y, i64 %.reass.us.i
  %.val.us.i = load i64, ptr %i.mp, align 8, !noalias !1040, !noundef !3
  %.val203.us.i = load i64, ptr %i.mv, align 8, !noalias !1040, !noundef !3
  %i.mw = icmp eq i64 %.val.us.i, %.val203.us.i
  br i1 %i.mw, label %bb.dp, label %bb.dm

bb.dm:                                            ; preds = %bb.dl
  %i.mx = add i64 %i.mq, %i.mn                    ; 3 uses
  %i.my = load ptr, ptr %i.gc, align 8, !noalias !1040, !nonnull !3, !noundef !3 ; 3 uses
  %i.mz = load i64, ptr %i.gd, align 8, !noalias !1040, !noundef !3 ; 5 uses
  %i.na = icmp ult i64 %i.mx, %i.mz
  br i1 %i.na, label %bb.dn, label %.invoke.i

bb.dn:                                            ; preds = %bb.dm
  %i.nb = add i64 %.sroa.0105.0432.us.i, %i.mm    ; 3 uses
  %i.nc = icmp ult i64 %i.nb, %i.mz
  br i1 %i.nc, label %bb.do, label %.invoke.i

bb.do:                                            ; preds = %bb.dn
  %i.nd = getelementptr inbounds nuw i8, ptr %i.my, i64 %i.mx
  %i.ne = load i8, ptr %i.nd, align 1, !noalias !1040, !noundef !3
  %i.nf = getelementptr inbounds nuw i8, ptr %i.my, i64 %i.nb
  %i.ng = load i8, ptr %i.nf, align 1, !noalias !1040, !noundef !3
  %.sroa.0.0.i.us.i = call noundef i8 @llvm.umax.i8(i8 %i.ng, i8 %i.ne)
  br label %bb.dr

bb.dp:                                            ; preds = %bb.dl
  %i.nh = add i64 %.sroa.0105.0432.us.i, %i.mn    ; 3 uses
  %i.ni = load i64, ptr %i.gd, align 8, !noalias !1040, !noundef !3 ; 3 uses
  %i.nj = icmp ult i64 %i.nh, %i.ni
  br i1 %i.nj, label %bb.dq, label %.invoke.i

bb.dq:                                            ; preds = %bb.dp
  %i.nk = load ptr, ptr %i.gc, align 8, !noalias !1040, !nonnull !3, !noundef !3 ; 2 uses
  %i.nl = getelementptr inbounds nuw i8, ptr %i.nk, i64 %i.nh
  %i.nm = load i8, ptr %i.nl, align 1, !noalias !1040, !noundef !3
  %i.nn = add i8 %i.nm, 1
  br label %bb.dr

bb.dr:                                            ; preds = %bb.dq, %bb.do
  %i.no = phi ptr [ %i.nk, %bb.dq ], [ %i.my, %bb.do ]
  %i.np = phi i64 [ %i.ni, %bb.dq ], [ %i.mz, %bb.do ] ; 2 uses
  %.sroa.04.0.us.i = phi i8 [ %i.nn, %bb.dq ], [ %.sroa.0.0.i.us.i, %bb.do ]
  %i.nq = add i64 %i.mq, %i.mm                    ; 3 uses
  %i.nr = icmp ult i64 %i.nq, %i.np
  br i1 %i.nr, label %bb.ds, label %.invoke.i

bb.ds:                                            ; preds = %bb.dr
  %i.ns = getelementptr inbounds nuw i8, ptr %i.no, i64 %i.nq
  store i8 %.sroa.04.0.us.i, ptr %i.ns, align 1, !noalias !1040
  %.not168.us.i = icmp eq i64 %i.mq, 0
  br i1 %.not168.us.i, label %..loopexit39_crit_edge.split.us.i, label %.lr.ph.split.us.i

..loopexit39_crit_edge.split.us.i:                ; preds = %bb.ds
  %.not.i76 = icmp eq i64 %i.gh, 0
  br i1 %.not.i76, label %.lr.ph495.i, label %.lr.ph469.split.i

.lr.ph.split.i:                                   ; preds = %.lr.ph.i
  %i.nt = and i64 %i.fj, 1023
  %i.nu = icmp eq i64 %i.nt, 1
  br i1 %i.nu, label %bb.dt, label %.invoke.i

bb.dt:                                            ; preds = %.lr.ph.split.i
  %i.nv = invoke noundef zeroext i1 @_RNvNtCsiqiOkcJdymw_7similar16deadline_support17deadline_exceeded(i64 %9, i32 noundef range(i32 -1, 1000000000) %10)
          to label %bb.du unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !1040

bb.du:                                            ; preds = %bb.dt
  br i1 %i.nv, label %.loopexit24.i, label %.invoke.i

bb.dv:                                            ; preds = %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp
  %i.nw = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #13, !noalias !1040
  unreachable

bb.dw:                                            ; preds = %bb.bb
  br i1 %i.fr, label %_RINvNtNtCsiqiOkcJdymw_7similar10algorithms5myers27maybe_emit_small_side_exactINtNtB4_5utils12OffsetLookupjEB1d_INtNtB4_4hook12NoFinishHookQINtNtB4_7compact7CompactINtNtB6_4text12TextDiffSideeEB2B_INtNtB4_7replace7ReplaceNtNtB4_7capture7CaptureEEEECskXhPDodhyTq_6mdtest.exit.thread, label %bb.dx

bb.dx:                                            ; preds = %bb.dw
  %i.nx = add i64 %i.fk, 1                        ; 11 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !1048
  %i.ny = add i64 %i.fj, 1
  %i.nz = mul i64 %i.ny, %i.nx                    ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1049)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !1050
  call void @_RNvMs4_NtCscdodAO9FK5_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCskXhPDodhyTq_6mdtest(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, i64 noundef %i.nz, i1 noundef zeroext true, i64 noundef 1, i64 noundef 1), !noalias !1050
  %i.oa = load i64, ptr %i.a, align 8, !range !8, !noalias !1050, !noundef !3
  %i.ob = trunc nuw i64 %i.oa to i1
  %i.oc = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.od = load i64, ptr %i.oc, align 8, !range !9, !noalias !1050, !noundef !3 ; 2 uses
  %i.oe = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  br i1 %i.ob, label %bb.dy, label %.lr.ph484.i, !prof !7

bb.dy:                                            ; preds = %bb.dx
  %i.of = load i64, ptr %i.oe, align 8, !noalias !1050
  call void @_RNvNtCscdodAO9FK5_5alloc7raw_vec12handle_error(i64 noundef %i.od, i64 %i.of) #14, !noalias !1050
  unreachable

.lr.ph484.i:                                      ; preds = %bb.dx
  %i.og = load ptr, ptr %i.oe, align 8, !noalias !1050, !nonnull !3, !noundef !3
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !1050
  store i64 %i.od, ptr %i.b, align 8, !alias.scope !1049, !noalias !1048
  %i.oh = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 7 uses
  store ptr %i.og, ptr %i.oh, align 8, !alias.scope !1049, !noalias !1048
  %i.oi = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 7 uses
  store i64 %i.nz, ptr %i.oi, align 8, !alias.scope !1049, !noalias !1048
  %invariant.op.i92 = sub i64 %.sroa.0188.0, %i.o ; 4 uses
  %invariant.op485.i = sub i64 %.sroa.0.0, %i.u   ; 3 uses
  br label %.lr.ph484.split.i

.lr.ph511.i:                                      ; preds = %..loopexit39_crit_edge.split.us.i150
  %i.oj = getelementptr inbounds nuw i8, ptr %.val51, i64 120 ; 10 uses
  %i.ok = getelementptr inbounds nuw i8, ptr %.val51, i64 136 ; 6 uses
  %i.ol = getelementptr inbounds nuw i8, ptr %.val51, i64 128 ; 3 uses
  br label %bb.dz

.lr.ph484.split.i:                                ; preds = %.lr.ph484.i, %..loopexit39_crit_edge.split.us.i150
  %.sroa.0102.0483.i = phi i64 [ %i.om, %..loopexit39_crit_edge.split.us.i150 ], [ %i.fj, %.lr.ph484.i ] ; 2 uses
  %i.om = add i64 %.sroa.0102.0483.i, -1          ; 4 uses
  %i.on = invoke noundef zeroext i1 @_RNvNtCsiqiOkcJdymw_7similar16deadline_support17deadline_exceeded(i64 %9, i32 noundef range(i32 -1, 1000000000) %10)
          to label %bb.gb unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i88.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !1048

._crit_edge512.i:                                 ; preds = %_RNvXs0_NtNtCsiqiOkcJdymw_7similar10algorithms4hookINtB5_12NoFinishHookQINtNtB7_7compact7CompactINtNtB9_4text12TextDiffSideeEB1v_INtNtB7_7replace7ReplaceNtNtB7_7capture7CaptureEEENtB5_8DiffHook5equalCskXhPDodhyTq_6mdtest.exit.i118
  br i1 %i.th, label %bb.ea, label %bb.ec

bb.dz:                                            ; preds = %_RNvXs0_NtNtCsiqiOkcJdymw_7similar10algorithms4hookINtB5_12NoFinishHookQINtNtB7_7compact7CompactINtNtB9_4text12TextDiffSideeEB1v_INtNtB7_7replace7ReplaceNtNtB7_7capture7CaptureEEENtB5_8DiffHook5equalCskXhPDodhyTq_6mdtest.exit.i118, %.lr.ph511.i
  %.sroa.05.0.not510.i = phi i1 [ true, %.lr.ph511.i ], [ false, %_RNvXs0_NtNtCsiqiOkcJdymw_7similar10algorithms4hookINtB5_12NoFinishHookQINtNtB7_7compact7CompactINtNtB9_4text12TextDiffSideeEB1v_INtNtB7_7replace7ReplaceNtNtB7_7capture7CaptureEEENtB5_8DiffHook5equalCskXhPDodhyTq_6mdtest.exit.i118 ] ; 3 uses
  %.sroa.09.0509.i = phi i64 [ 0, %.lr.ph511.i ], [ %.sroa.09.3.i120, %_RNvXs0_NtNtCsiqiOkcJdymw_7similar10algorithms4hookINtB5_12NoFinishHookQINtNtB7_7compact7CompactINtNtB9_4text12TextDiffSideeEB1v_INtNtB7_7replace7ReplaceNtNtB7_7capture7CaptureEEENtB5_8DiffHook5equalCskXhPDodhyTq_6mdtest.exit.i118 ] ; 14 uses
  %.sroa.039.0508.i = phi i64 [ 0, %.lr.ph511.i ], [ %.sroa.039.3.i, %_RNvXs0_NtNtCsiqiOkcJdymw_7similar10algorithms4hookINtB5_12NoFinishHookQINtNtB7_7compact7CompactINtNtB9_4text12TextDiffSideeEB1v_INtNtB7_7replace7ReplaceNtNtB7_7capture7CaptureEEENtB5_8DiffHook5equalCskXhPDodhyTq_6mdtest.exit.i118 ] ; 17 uses
  %i.oo = and i64 %.sroa.039.0508.i, 1023
  %i.op = icmp eq i64 %i.oo, 0
  %or.cond170.i103 = select i1 %.sroa.05.0.not510.i, i1 %i.op, i1 false ; 2 uses
  br i1 %or.cond170.i103, label %bb.eg, label %bb.ef

bb.ea:                                            ; preds = %._crit_edge512.i
  %i.oq = add i64 %.sroa.09.3.i120, %.sroa.0.0    ; 2 uses
  %i.or = sub nuw i64 %i.fj, %.sroa.09.3.i120
  %i.os = add i64 %.sroa.039.3.i, %.sroa.0188.0   ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val51) ]
  %i.ot = load i64, ptr %i.oj, align 8, !range !6, !alias.scope !1051, !noalias !1048, !noundef !3
  %i.ou = icmp eq i64 %i.tg, %i.ot
  br i1 %i.ou, label %bb.eb, label %_RNvXs0_NtNtCsiqiOkcJdymw_7similar10algorithms4hookINtB5_12NoFinishHookQINtNtB7_7compact7CompactINtNtB9_4text12TextDiffSideeEB1v_INtNtB7_7replace7ReplaceNtNtB7_7capture7CaptureEEENtB5_8DiffHook6deleteCskXhPDodhyTq_6mdtest.exit181.i99

bb.eb:                                            ; preds = %bb.ea
  invoke void @_RNvMs3_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecNtNtCsiqiOkcJdymw_7similar5types6DiffOpE8grow_oneBP_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.oj)
          to label %_RNvXs0_NtNtCsiqiOkcJdymw_7similar10algorithms4hookINtB5_12NoFinishHookQINtNtB7_7compact7CompactINtNtB9_4text12TextDiffSideeEB1v_INtNtB7_7replace7ReplaceNtNtB7_7capture7CaptureEEENtB5_8DiffHook6deleteCskXhPDodhyTq_6mdtest.exit181.i99 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i88.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !1048

_RNvXs0_NtNtCsiqiOkcJdymw_7similar10algorithms4hookINtB5_12NoFinishHookQINtNtB7_7compact7CompactINtNtB9_4text12TextDiffSideeEB1v_INtNtB7_7replace7ReplaceNtNtB7_7capture7CaptureEEENtB5_8DiffHook6deleteCskXhPDodhyTq_6mdtest.exit181.i99: ; preds = %bb.eb, %bb.ea
  %i.ov = load ptr, ptr %i.ol, align 8, !alias.scope !1051, !noalias !1048, !nonnull !3, !noundef !3
  %i.ow = getelementptr inbounds nuw [40 x i8], ptr %i.ov, i64 %i.tg ; 4 uses
  store i64 1, ptr %i.ow, align 8, !noalias !1048
  %.sroa.42.0..sroa_idx.i100 = getelementptr inbounds nuw i8, ptr %i.ow, i64 8
  store i64 %i.oq, ptr %.sroa.42.0..sroa_idx.i100, align 8, !noalias !1048
  %.sroa.53.0..sroa_idx.i101 = getelementptr inbounds nuw i8, ptr %i.ow, i64 16
  store i64 %i.or, ptr %.sroa.53.0..sroa_idx.i101, align 8, !noalias !1048
  %.sroa.64.0..sroa_idx.i102 = getelementptr inbounds nuw i8, ptr %i.ow, i64 24
  store i64 %i.os, ptr %.sroa.64.0..sroa_idx.i102, align 8, !noalias !1048
  %i.ox = add i64 %.sink1039.i, 2                 ; 2 uses
  store i64 %i.ox, ptr %i.ok, align 8, !alias.scope !1051, !noalias !1048
  br i1 %i.ti, label %bb.ed, label %_RINvNtNtCsiqiOkcJdymw_7similar10algorithms5myers27maybe_emit_small_side_exactINtNtB4_5utils12OffsetLookupjEB1d_INtNtB4_4hook12NoFinishHookQINtNtB4_7compact7CompactINtNtB6_4text12TextDiffSideeEB2B_INtNtB4_7replace7ReplaceNtNtB4_7capture7CaptureEEEECskXhPDodhyTq_6mdtest.exit.thread302

bb.ec:                                            ; preds = %._crit_edge512.i
  br i1 %i.ti, label %._crit_edge874, label %_RINvNtNtCsiqiOkcJdymw_7similar10algorithms5myers27maybe_emit_small_side_exactINtNtB4_5utils12OffsetLookupjEB1d_INtNtB4_4hook12NoFinishHookQINtNtB4_7compact7CompactINtNtB6_4text12TextDiffSideeEB2B_INtNtB4_7replace7ReplaceNtNtB4_7capture7CaptureEEEECskXhPDodhyTq_6mdtest.exit.thread302

._crit_edge874:                                   ; preds = %bb.ec
  %.pre880 = add i64 %.sroa.09.3.i120, %.sroa.0.0
  %.pre882 = add i64 %.sroa.039.3.i, %.sroa.0188.0
  br label %bb.ed

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i88.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %bb.gc, %bb.eg, %bb.er, %bb.fe, %bb.fp, %bb.fr, %bb.es, %bb.ff, %.lr.ph484.split.i, %bb.gn, %.invoke.i104, %bb.ee, %bb.eb
  %lpad.loopexit.split-lp1606 = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VechEECskXhPDodhyTq_6mdtest(ptr noalias noundef align 8 dereferenceable(24) %i.b) #15
          to label %common.resume unwind label %bb.gr, !noalias !1048

bb.ed:                                            ; preds = %._crit_edge874, %_RNvXs0_NtNtCsiqiOkcJdymw_7similar10algorithms4hookINtB5_12NoFinishHookQINtNtB7_7compact7CompactINtNtB9_4text12TextDiffSideeEB1v_INtNtB7_7replace7ReplaceNtNtB7_7capture7CaptureEEENtB5_8DiffHook6deleteCskXhPDodhyTq_6mdtest.exit181.i99
  %.pre-phi883 = phi i64 [ %.pre882, %._crit_edge874 ], [ %i.os, %_RNvXs0_NtNtCsiqiOkcJdymw_7similar10algorithms4hookINtB5_12NoFinishHookQINtNtB7_7compact7CompactINtNtB9_4text12TextDiffSideeEB1v_INtNtB7_7replace7ReplaceNtNtB7_7capture7CaptureEEENtB5_8DiffHook6deleteCskXhPDodhyTq_6mdtest.exit181.i99 ]
  %.pre-phi881 = phi i64 [ %.pre880, %._crit_edge874 ], [ %i.oq, %_RNvXs0_NtNtCsiqiOkcJdymw_7similar10algorithms4hookINtB5_12NoFinishHookQINtNtB7_7compact7CompactINtNtB9_4text12TextDiffSideeEB1v_INtNtB7_7replace7ReplaceNtNtB7_7capture7CaptureEEENtB5_8DiffHook6deleteCskXhPDodhyTq_6mdtest.exit181.i99 ]
  %i.oy = phi i64 [ %i.tg, %._crit_edge874 ], [ %i.ox, %_RNvXs0_NtNtCsiqiOkcJdymw_7similar10algorithms4hookINtB5_12NoFinishHookQINtNtB7_7compact7CompactINtNtB9_4text12TextDiffSideeEB1v_INtNtB7_7replace7ReplaceNtNtB7_7capture7CaptureEEENtB5_8DiffHook6deleteCskXhPDodhyTq_6mdtest.exit181.i99 ] ; 3 uses
  %i.oz = sub nuw i64 %i.fk, %.sroa.039.3.i
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val51) ]
  %i.pa = load i64, ptr %i.oj, align 8, !range !6, !alias.scope !1052, !noalias !1048, !noundef !3
  %i.pb = icmp eq i64 %i.oy, %i.pa
  br i1 %i.pb, label %bb.ee, label %_RNvXs0_NtNtCsiqiOkcJdymw_7similar10algorithms4hookINtB5_12NoFinishHookQINtNtB7_7compact7CompactINtNtB9_4text12TextDiffSideeEB1v_INtNtB7_7replace7ReplaceNtNtB7_7capture7CaptureEEENtB5_8DiffHook6insertCskXhPDodhyTq_6mdtest.exit182.i84

bb.ee:                                            ; preds = %bb.ed
  invoke void @_RNvMs3_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecNtNtCsiqiOkcJdymw_7similar5types6DiffOpE8grow_oneBP_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.oj)
          to label %_RNvXs0_NtNtCsiqiOkcJdymw_7similar10algorithms4hookINtB5_12NoFinishHookQINtNtB7_7compact7CompactINtNtB9_4text12TextDiffSideeEB1v_INtNtB7_7replace7ReplaceNtNtB7_7capture7CaptureEEENtB5_8DiffHook6insertCskXhPDodhyTq_6mdtest.exit182.i84 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i88.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !1048

_RNvXs0_NtNtCsiqiOkcJdymw_7similar10algorithms4hookINtB5_12NoFinishHookQINtNtB7_7compact7CompactINtNtB9_4text12TextDiffSideeEB1v_INtNtB7_7replace7ReplaceNtNtB7_7capture7CaptureEEENtB5_8DiffHook6insertCskXhPDodhyTq_6mdtest.exit182.i84: ; preds = %bb.ee, %bb.ed
  %i.pc = load ptr, ptr %i.ol, align 8, !alias.scope !1052, !noalias !1048, !nonnull !3, !noundef !3
  %i.pd = getelementptr inbounds nuw [40 x i8], ptr %i.pc, i64 %i.oy ; 4 uses
  store i64 2, ptr %i.pd, align 8, !noalias !1048
  %.sroa.412.0..sroa_idx.i85 = getelementptr inbounds nuw i8, ptr %i.pd, i64 8
  store i64 %.pre-phi881, ptr %.sroa.412.0..sroa_idx.i85, align 8, !noalias !1048
  %.sroa.513.0..sroa_idx.i86 = getelementptr inbounds nuw i8, ptr %i.pd, i64 16
  store i64 %.pre-phi883, ptr %.sroa.513.0..sroa_idx.i86, align 8, !noalias !1048
  %.sroa.614.0..sroa_idx.i87 = getelementptr inbounds nuw i8, ptr %i.pd, i64 24
  store i64 %i.oz, ptr %.sroa.614.0..sroa_idx.i87, align 8, !noalias !1048
  %i.pe = add i64 %i.oy, 1
  store i64 %i.pe, ptr %i.ok, align 8, !alias.scope !1052, !noalias !1048
  br label %_RINvNtNtCsiqiOkcJdymw_7similar10algorithms5myers27maybe_emit_small_side_exactINtNtB4_5utils12OffsetLookupjEB1d_INtNtB4_4hook12NoFinishHookQINtNtB4_7compact7CompactINtNtB6_4text12TextDiffSideeEB2B_INtNtB4_7replace7ReplaceNtNtB4_7capture7CaptureEEEECskXhPDodhyTq_6mdtest.exit.thread302

_RINvNtNtCsiqiOkcJdymw_7similar10algorithms5myers27maybe_emit_small_side_exactINtNtB4_5utils12OffsetLookupjEB1d_INtNtB4_4hook12NoFinishHookQINtNtB4_7compact7CompactINtNtB6_4text12TextDiffSideeEB2B_INtNtB4_7replace7ReplaceNtNtB4_7capture7CaptureEEEECskXhPDodhyTq_6mdtest.exit.thread302: ; preds = %_RNvXs0_NtNtCsiqiOkcJdymw_7similar10algorithms4hookINtB5_12NoFinishHookQINtNtB7_7compact7CompactINtNtB9_4text12TextDiffSideeEB1v_INtNtB7_7replace7ReplaceNtNtB7_7capture7CaptureEEENtB5_8DiffHook6deleteCskXhPDodhyTq_6mdtest.exit181.i99, %bb.ec, %_RNvXs0_NtNtCsiqiOkcJdymw_7similar10algorithms4hookINtB5_12NoFinishHookQINtNtB7_7compact7CompactINtNtB9_4text12TextDiffSideeEB1v_INtNtB7_7replace7ReplaceNtNtB7_7capture7CaptureEEENtB5_8DiffHook6insertCskXhPDodhyTq_6mdtest.exit182.i84
  call fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VechEECskXhPDodhyTq_6mdtest(ptr noalias noundef align 8 dereferenceable(24) %i.b), !noalias !1048
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !1048
  br label %bb.av

bb.ef:                                            ; preds = %bb.eh, %bb.dz
  %i.pf = mul i64 %.sroa.09.0509.i, %i.nx         ; 4 uses
  %i.pg = add i64 %.sroa.09.0509.i, %.sroa.0.0    ; 2 uses
  %i.ph = add i64 %.sroa.039.0508.i, %.sroa.0188.0 ; 7 uses
  %i.pi = sub i64 %i.ph, %i.o                     ; 3 uses
  %i.pj = icmp ult i64 %i.pi, %i.q
  br i1 %i.pj, label %bb.ei, label %.invoke.i104

.invoke.i104:                                     ; preds = %bb.gl, %bb.gj, %bb.gh, %bb.gg, %bb.ge, %bb.eo, %bb.em, %bb.el, %bb.ek, %bb.ei, %bb.ef, %bb.fn, %bb.fl, %bb.fk, %bb.fj, %bb.fh, %bb.fa, %bb.ey, %bb.ex, %bb.ew, %bb.eu, %bb.ft, %bb.fq, %bb.fw, %bb.fv, %bb.gq, %bb.gp
  %i.pk = phi i64 [ %i.rr, %bb.fa ], [ %.reass.i141, %bb.gp ], [ %.reass486.i, %bb.gq ], [ %i.sy, %bb.fn ], [ %i.pi, %bb.ef ], [ %i.uf, %bb.fw ], [ %i.q, %bb.fq ], [ %i.ty, %bb.fv ], [ %i.w, %bb.ft ], [ %i.rb, %bb.eu ], [ %i.rf, %bb.ew ], [ %i.rj, %bb.ey ], [ %i.rh, %bb.ex ], [ %i.sg, %bb.fh ], [ %i.sk, %bb.fj ], [ %i.sq, %bb.fl ], [ %i.sm, %bb.fk ], [ %i.pt, %bb.ek ], [ %i.pv, %bb.el ], [ %i.ql, %bb.eo ], [ %i.pp, %bb.ei ], [ %i.qa, %bb.em ], [ %i.vc, %bb.gg ], [ %.reass.us.i144, %bb.ge ], [ %i.vv, %bb.gl ], [ %i.vg, %bb.gh ], [ %i.vm, %bb.gj ]
  %i.pl = phi i64 [ %.pre745.i.a, %bb.fa ], [ %i.q, %bb.gp ], [ %i.w, %bb.gq ], [ %.pre743.i, %bb.fn ], [ %i.q, %bb.ef ], [ %i.ua, %bb.fw ], [ %i.q, %bb.fq ], [ %i.ua, %bb.fv ], [ %i.w, %bb.ft ], [ %i.q, %bb.eu ], [ %.pre745.i.a, %bb.ew ], [ %.pre745.i.a, %bb.ey ], [ %.pre745.i.a, %bb.ex ], [ %i.w, %bb.fh ], [ %.pre743.i, %bb.fj ], [ %.pre743.i, %bb.fl ], [ %.pre743.i, %bb.fk ], [ %.pre741.i, %bb.ek ], [ %.pre741.i, %bb.el ], [ %.pre741.i, %bb.eo ], [ %i.w, %bb.ei ], [ %.pre741.i, %bb.em ], [ %i.ve, %bb.gg ], [ %i.q, %bb.ge ], [ %i.vu, %bb.gl ], [ %i.ve, %bb.gh ], [ %i.vn, %bb.gj ]
  %i.pm = phi ptr [ @62, %bb.fa ], [ @73, %bb.gp ], [ @74, %bb.gq ], [ @68, %bb.fn ], [ @51, %bb.ef ], [ @72, %bb.fw ], [ @69, %bb.fq ], [ @71, %bb.fv ], [ @70, %bb.ft ], [ @57, %bb.eu ], [ @59, %bb.ew ], [ @60, %bb.ey ], [ @61, %bb.ex ], [ @64, %bb.fh ], [ @65, %bb.fj ], [ @66, %bb.fl ], [ @67, %bb.fk ], [ @53, %bb.ek ], [ @55, %bb.el ], [ @56, %bb.eo ], [ @52, %bb.ei ], [ @54, %bb.em ], [ @75, %bb.gg ], [ @73, %bb.ge ], [ @78, %bb.gl ], [ @76, %bb.gh ], [ @77, %bb.gj ]
  invoke void @_RNvNtCs4NRVxsYgnAr_4core9panicking18panic_bounds_check(i64 noundef %i.pk, i64 noundef %i.pl, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.pm) #14
          to label %.cont.i105 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i88.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !1048

.cont.i105:                                       ; preds = %.invoke.i104
  unreachable

bb.eg:                                            ; preds = %bb.dz
  %i.pn = invoke noundef zeroext i1 @_RNvNtCsiqiOkcJdymw_7similar16deadline_support17deadline_exceeded(i64 %9, i32 noundef range(i32 -1, 1000000000) %10)
          to label %bb.eh unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i88.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !1048

bb.eh:                                            ; preds = %bb.eg
  br i1 %i.pn, label %.loopexit24.i125, label %bb.ef

bb.ei:                                            ; preds = %bb.ef
  %i.po = getelementptr inbounds nuw [8 x i8], ptr %i.s, i64 %i.pi ; 2 uses
  %i.pp = sub i64 %i.pg, %i.u                     ; 3 uses
  %i.pq = icmp ult i64 %i.pp, %i.w
  br i1 %i.pq, label %bb.ej, label %.invoke.i104

bb.ej:                                            ; preds = %bb.ei
  %i.pr = getelementptr inbounds nuw [8 x i8], ptr %i.y, i64 %i.pp ; 2 uses
  %.val210.i106 = load i64, ptr %i.po, align 8, !noalias !1048, !noundef !3
  %.val211.i107 = load i64, ptr %i.pr, align 8, !noalias !1048, !noundef !3
  %i.ps = icmp eq i64 %.val210.i106, %.val211.i107
  %.pre.i108 = load ptr, ptr %i.oh, align 8, !noalias !1048 ; 4 uses
  %.pre741.i = load i64, ptr %i.oi, align 8, !noalias !1048 ; 8 uses
  br i1 %i.ps, label %bb.ek, label %._crit_edge747.i

._crit_edge747.i:                                 ; preds = %bb.ej
  %.pre748.i = add nuw i64 %.sroa.09.0509.i, 1
  %.pre749.i = mul i64 %.pre748.i, %i.nx
  br label %bb.el

bb.ek:                                            ; preds = %bb.ej
  %i.pt = add i64 %i.pf, %.sroa.039.0508.i        ; 3 uses
  %i.pu = icmp ult i64 %i.pt, %.pre741.i
  br i1 %i.pu, label %bb.em, label %.invoke.i104

bb.el:                                            ; preds = %bb.en, %._crit_edge747.i
  %.pre-phi750.i = phi i64 [ %.pre749.i, %._crit_edge747.i ], [ %i.py, %bb.en ] ; 3 uses
  %i.pv = add i64 %.pre-phi750.i, %.sroa.039.0508.i ; 3 uses
  %i.pw = icmp ult i64 %i.pv, %.pre741.i
  br i1 %i.pw, label %bb.eo, label %.invoke.i104

bb.em:                                            ; preds = %bb.ek
  %i.px = add nuw i64 %.sroa.09.0509.i, 1
  %i.py = mul i64 %i.px, %i.nx                    ; 2 uses
  %i.pz = add nuw i64 %.sroa.039.0508.i, 1
  %i.qa = add i64 %i.pz, %i.py                    ; 3 uses
  %i.qb = icmp ult i64 %i.qa, %.pre741.i
  br i1 %i.qb, label %bb.en, label %.invoke.i104

bb.en:                                            ; preds = %bb.em
  %i.qc = getelementptr inbounds nuw i8, ptr %.pre.i108, i64 %i.pt
  %i.qd = load i8, ptr %i.qc, align 1, !noalias !1048, !noundef !3
  %i.qe = getelementptr inbounds nuw i8, ptr %.pre.i108, i64 %i.qa
  %i.qf = load i8, ptr %i.qe, align 1, !noalias !1048, !noundef !3
  %i.qg = add i8 %i.qf, 1
  %i.qh = icmp eq i8 %i.qd, %i.qg
  br i1 %i.qh, label %.preheader.i132, label %bb.el

.preheader.i132:                                  ; preds = %bb.en
  %i.qi = icmp ult i64 %.sroa.09.0509.i, %i.fj
  %i.qj = icmp ult i64 %.sroa.039.0508.i, %i.fk
  %or.cond177494.i = select i1 %i.qi, i1 %i.qj, i1 false
  br i1 %or.cond177494.i, label %.lr.ph497.i, label %._crit_edge498.i

bb.eo:                                            ; preds = %bb.el
  %i.qk = add i64 %.sroa.039.0508.i, 1            ; 3 uses
  %i.ql = add i64 %i.qk, %i.pf                    ; 3 uses
  %i.qm = icmp ult i64 %i.ql, %.pre741.i
  br i1 %i.qm, label %bb.ep, label %.invoke.i104

bb.ep:                                            ; preds = %bb.eo
  %i.qn = getelementptr inbounds nuw i8, ptr %.pre.i108, i64 %i.pv
  %i.qo = load i8, ptr %i.qn, align 1, !noalias !1048, !noundef !3
  %i.qp = getelementptr inbounds nuw i8, ptr %.pre.i108, i64 %i.ql
  %i.qq = load i8, ptr %i.qp, align 1, !noalias !1048, !noundef !3
  %.not164.i109 = icmp ult i8 %i.qo, %i.qq
  br i1 %.not164.i109, label %.preheader25.i127, label %.preheader30.i110

.preheader30.i110:                                ; preds = %bb.ep
  %umax.i111 = call i64 @llvm.umax.i64(i64 %.sroa.09.0509.i, i64 %i.fj) ; 3 uses
  %exitcond.not.i1131508.not = icmp ult i64 %.sroa.09.0509.i, %i.fj
  br i1 %exitcond.not.i1131508.not, label %.lr.ph1510, label %._crit_edge1511

.preheader25.i127:                                ; preds = %bb.ep
  %i.qr = icmp ult i64 %.sroa.039.0508.i, %i.fk
  br i1 %i.qr, label %.lr.ph489.i, label %._crit_edge.i128

.lr.ph489.i:                                      ; preds = %.preheader25.i127
  %i.qs = add i64 %.pre-phi750.i, 1
  %i.qt = add i64 %i.pf, 1
  br label %bb.eq

bb.eq:                                            ; preds = %bb.fc, %.lr.ph489.i
  %.sroa.039.1488.i = phi i64 [ %.sroa.039.0508.i, %.lr.ph489.i ], [ %i.ry, %bb.fc ] ; 9 uses
  %i.qu = and i64 %.sroa.039.1488.i, 1023
  %i.qv = icmp eq i64 %i.qu, 0
  %or.cond173.i129 = and i1 %.sroa.05.0.not510.i, %i.qv
  br i1 %or.cond173.i129, label %bb.es, label %bb.eu

._crit_edge.i128:                                 ; preds = %bb.fc, %bb.fb, %bb.ez, %.preheader25.i127
  %.sroa.039.1.lcssa.i = phi i64 [ %.sroa.039.0508.i, %.preheader25.i127 ], [ %i.fk, %bb.fc ], [ %.sroa.039.1488.i, %bb.fb ], [ %.sroa.039.1488.i, %bb.ez ] ; 3 uses
  %i.qw = sub nuw i64 %.sroa.039.1.lcssa.i, %.sroa.039.0508.i ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val51) ]
  %i.qx = load i64, ptr %i.ok, align 8, !alias.scope !1053, !noalias !1048, !noundef !3 ; 3 uses
  %i.qy = load i64, ptr %i.oj, align 8, !range !6, !alias.scope !1053, !noalias !1048, !noundef !3
  %i.qz = icmp eq i64 %i.qx, %i.qy
  br i1 %i.qz, label %bb.er, label %_RNvXs0_NtNtCsiqiOkcJdymw_7similar10algorithms4hookINtB5_12NoFinishHookQINtNtB7_7compact7CompactINtNtB9_4text12TextDiffSideeEB1v_INtNtB7_7replace7ReplaceNtNtB7_7capture7CaptureEEENtB5_8DiffHook5equalCskXhPDodhyTq_6mdtest.exit.i118

bb.er:                                            ; preds = %._crit_edge.i128
  invoke void @_RNvMs3_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecNtNtCsiqiOkcJdymw_7similar5types6DiffOpE8grow_oneBP_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.oj)
          to label %_RNvXs0_NtNtCsiqiOkcJdymw_7similar10algorithms4hookINtB5_12NoFinishHookQINtNtB7_7compact7CompactINtNtB9_4text12TextDiffSideeEB1v_INtNtB7_7replace7ReplaceNtNtB7_7capture7CaptureEEENtB5_8DiffHook5equalCskXhPDodhyTq_6mdtest.exit.i118 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i88.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !1048

bb.es:                                            ; preds = %bb.eq
  %i.ra = invoke noundef zeroext i1 @_RNvNtCsiqiOkcJdymw_7similar16deadline_support17deadline_exceeded(i64 %9, i32 noundef range(i32 -1, 1000000000) %10)
          to label %bb.et unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i88.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !1048

bb.et:                                            ; preds = %bb.es
  br i1 %i.ra, label %.loopexit24.i125, label %bb.eu

bb.eu:                                            ; preds = %bb.et, %bb.eq
  %i.rb = add i64 %.sroa.039.1488.i, %invariant.op.i92 ; 3 uses
  %i.rc = icmp ult i64 %i.rb, %i.q
  br i1 %i.rc, label %bb.ev, label %.invoke.i104

bb.ev:                                            ; preds = %bb.eu
  %i.rd = getelementptr inbounds nuw [8 x i8], ptr %i.s, i64 %i.rb
  %.val208.i130 = load i64, ptr %i.rd, align 8, !noalias !1048, !noundef !3
  %.val209.i131 = load i64, ptr %i.pr, align 8, !noalias !1048, !noundef !3
  %i.re = icmp eq i64 %.val208.i130, %.val209.i131
  %.pre744.i.a = load ptr, ptr %i.oh, align 8, !noalias !1048 ; 4 uses
  %.pre745.i.a = load i64, ptr %i.oi, align 8, !noalias !1048 ; 8 uses
  br i1 %i.re, label %bb.ew, label %bb.ex

bb.ew:                                            ; preds = %bb.ev
  %i.rf = add i64 %.sroa.039.1488.i, %i.pf        ; 3 uses
  %i.rg = icmp ult i64 %i.rf, %.pre745.i.a
  br i1 %i.rg, label %bb.ey, label %.invoke.i104

bb.ex:                                            ; preds = %bb.ez, %bb.ev
  %i.rh = add i64 %.sroa.039.1488.i, %.pre-phi750.i ; 3 uses
  %i.ri = icmp ult i64 %i.rh, %.pre745.i.a
  br i1 %i.ri, label %bb.fa, label %.invoke.i104

bb.ey:                                            ; preds = %bb.ew
  %i.rj = add i64 %i.qs, %.sroa.039.1488.i        ; 3 uses
  %i.rk = icmp ult i64 %i.rj, %.pre745.i.a
  br i1 %i.rk, label %bb.ez, label %.invoke.i104

bb.ez:                                            ; preds = %bb.ey
  %i.rl = getelementptr inbounds nuw i8, ptr %.pre744.i.a, i64 %i.rf
  %i.rm = load i8, ptr %i.rl, align 1, !noalias !1048, !noundef !3
  %i.rn = getelementptr inbounds nuw i8, ptr %.pre744.i.a, i64 %i.rj
  %i.ro = load i8, ptr %i.rn, align 1, !noalias !1048, !noundef !3
  %i.rp = add i8 %i.ro, 1
  %i.rq = icmp eq i8 %i.rm, %i.rp
  br i1 %i.rq, label %._crit_edge.i128, label %bb.ex

bb.fa:                                            ; preds = %bb.ex
  %i.rr = add i64 %i.qt, %.sroa.039.1488.i        ; 3 uses
  %i.rs = icmp ult i64 %i.rr, %.pre745.i.a
  br i1 %i.rs, label %bb.fb, label %.invoke.i104

bb.fb:                                            ; preds = %bb.fa
  %i.rt = getelementptr inbounds nuw i8, ptr %.pre744.i.a, i64 %i.rh
  %i.ru = load i8, ptr %i.rt, align 1, !noalias !1048, !noundef !3
  %i.rv = getelementptr inbounds nuw i8, ptr %.pre744.i.a, i64 %i.rr
  %i.rw = load i8, ptr %i.rv, align 1, !noalias !1048, !noundef !3
  %i.rx = icmp ult i8 %i.ru, %i.rw
  br i1 %i.rx, label %bb.fc, label %._crit_edge.i128

bb.fc:                                            ; preds = %bb.fb
  %i.ry = add nuw i64 %.sroa.039.1488.i, 1        ; 2 uses
  %i.rz = icmp ult i64 %i.ry, %i.fk
  br i1 %i.rz, label %bb.eq, label %._crit_edge.i128

bb.fd:                                            ; preds = %bb.fo
  %exitcond.not.i113 = icmp eq i64 %.pre-phi752.i, %umax.i111
  br i1 %exitcond.not.i113, label %._crit_edge1511, label %.lr.ph1510

.lr.ph1510:                                       ; preds = %.preheader30.i110, %bb.fd
  %.sroa.09.1.i1121509 = phi i64 [ %.pre-phi752.i, %bb.fd ], [ %.sroa.09.0509.i, %.preheader30.i110 ] ; 6 uses
  br i1 %or.cond170.i103, label %bb.ff, label %bb.fh

._crit_edge1511:                                  ; preds = %bb.fd, %bb.fm, %bb.fo, %.preheader30.i110
  %.sroa.09.1.lcssa.i117 = phi i64 [ %umax.i111, %.preheader30.i110 ], [ %umax.i111, %bb.fd ], [ %.sroa.09.1.i1121509, %bb.fm ], [ %.sroa.09.1.i1121509, %bb.fo ] ; 3 uses
  %i.sa = sub nuw i64 %.sroa.09.1.lcssa.i117, %.sroa.09.0509.i ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val51) ]
  %i.sb = load i64, ptr %i.ok, align 8, !alias.scope !1054, !noalias !1048, !noundef !3 ; 3 uses
  %i.sc = load i64, ptr %i.oj, align 8, !range !6, !alias.scope !1054, !noalias !1048, !noundef !3
  %i.sd = icmp eq i64 %i.sb, %i.sc
  br i1 %i.sd, label %bb.fe, label %_RNvXs0_NtNtCsiqiOkcJdymw_7similar10algorithms4hookINtB5_12NoFinishHookQINtNtB7_7compact7CompactINtNtB9_4text12TextDiffSideeEB1v_INtNtB7_7replace7ReplaceNtNtB7_7capture7CaptureEEENtB5_8DiffHook5equalCskXhPDodhyTq_6mdtest.exit.i118

bb.fe:                                            ; preds = %._crit_edge1511
  invoke void @_RNvMs3_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecNtNtCsiqiOkcJdymw_7similar5types6DiffOpE8grow_oneBP_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.oj)
          to label %_RNvXs0_NtNtCsiqiOkcJdymw_7similar10algorithms4hookINtB5_12NoFinishHookQINtNtB7_7compact7CompactINtNtB9_4text12TextDiffSideeEB1v_INtNtB7_7replace7ReplaceNtNtB7_7capture7CaptureEEENtB5_8DiffHook5equalCskXhPDodhyTq_6mdtest.exit.i118 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i88.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !1048

bb.ff:                                            ; preds = %.lr.ph1510
  %i.se = invoke noundef zeroext i1 @_RNvNtCsiqiOkcJdymw_7similar16deadline_support17deadline_exceeded(i64 %9, i32 noundef range(i32 -1, 1000000000) %10)
          to label %bb.fg unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i88.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !1048

bb.fg:                                            ; preds = %bb.ff
  br i1 %i.se, label %.loopexit24.i125, label %bb.fh

bb.fh:                                            ; preds = %bb.fg, %.lr.ph1510
  %i.sf = mul i64 %.sroa.09.1.i1121509, %i.nx     ; 2 uses
  %i.sg = add i64 %.sroa.09.1.i1121509, %invariant.op485.i ; 3 uses
  %i.sh = icmp ult i64 %i.sg, %i.w
  br i1 %i.sh, label %bb.fi, label %.invoke.i104

bb.fi:                                            ; preds = %bb.fh
  %i.si = getelementptr inbounds nuw [8 x i8], ptr %i.y, i64 %i.sg
  %.val206.i114 = load i64, ptr %i.po, align 8, !noalias !1048, !noundef !3
  %.val207.i115 = load i64, ptr %i.si, align 8, !noalias !1048, !noundef !3
  %i.sj = icmp eq i64 %.val206.i114, %.val207.i115
  %.pre742.i = load ptr, ptr %i.oh, align 8, !noalias !1048 ; 4 uses
  %.pre743.i = load i64, ptr %i.oi, align 8, !noalias !1048 ; 8 uses
  br i1 %i.sj, label %bb.fj, label %._crit_edge746.i

._crit_edge746.i:                                 ; preds = %bb.fi
  %.pre751.i = add i64 %.sroa.09.1.i1121509, 1    ; 2 uses
  %.pre753.i = mul i64 %.pre751.i, %i.nx
  br label %bb.fk

bb.fj:                                            ; preds = %bb.fi
  %i.sk = add i64 %i.sf, %.sroa.039.0508.i        ; 3 uses
  %i.sl = icmp ult i64 %i.sk, %.pre743.i
  br i1 %i.sl, label %bb.fl, label %.invoke.i104

bb.fk:                                            ; preds = %bb.fm, %._crit_edge746.i
  %.pre-phi754.i.a = phi i64 [ %.pre753.i, %._crit_edge746.i ], [ %i.sp, %bb.fm ]
  %.pre-phi752.i = phi i64 [ %.pre751.i, %._crit_edge746.i ], [ %i.so, %bb.fm ] ; 2 uses
  %i.sm = add i64 %.pre-phi754.i.a, %.sroa.039.0508.i ; 3 uses
  %i.sn = icmp ult i64 %i.sm, %.pre743.i
  br i1 %i.sn, label %bb.fn, label %.invoke.i104

bb.fl:                                            ; preds = %bb.fj
  %i.so = add i64 %.sroa.09.1.i1121509, 1         ; 2 uses
  %i.sp = mul i64 %i.so, %i.nx                    ; 2 uses
  %i.sq = add i64 %i.sp, %i.qk                    ; 3 uses
  %i.sr = icmp ult i64 %i.sq, %.pre743.i
  br i1 %i.sr, label %bb.fm, label %.invoke.i104

bb.fm:                                            ; preds = %bb.fl
  %i.ss = getelementptr inbounds nuw i8, ptr %.pre742.i, i64 %i.sk
  %i.st = load i8, ptr %i.ss, align 1, !noalias !1048, !noundef !3
  %i.su = getelementptr inbounds nuw i8, ptr %.pre742.i, i64 %i.sq
  %i.sv = load i8, ptr %i.su, align 1, !noalias !1048, !noundef !3
  %i.sw = add i8 %i.sv, 1
  %i.sx = icmp eq i8 %i.st, %i.sw
  br i1 %i.sx, label %._crit_edge1511, label %bb.fk

bb.fn:                                            ; preds = %bb.fk
  %i.sy = add i64 %i.sf, %i.qk                    ; 3 uses
  %i.sz = icmp ult i64 %i.sy, %.pre743.i
  br i1 %i.sz, label %bb.fo, label %.invoke.i104

bb.fo:                                            ; preds = %bb.fn
  %i.ta = getelementptr inbounds nuw i8, ptr %.pre742.i, i64 %i.sm
  %i.tb = load i8, ptr %i.ta, align 1, !noalias !1048, !noundef !3
  %i.tc = getelementptr inbounds nuw i8, ptr %.pre742.i, i64 %i.sy
  %i.td = load i8, ptr %i.tc, align 1, !noalias !1048, !noundef !3
  %.not167.i116 = icmp ult i8 %i.tb, %i.td
  br i1 %.not167.i116, label %._crit_edge1511, label %bb.fd

_RNvXs0_NtNtCsiqiOkcJdymw_7similar10algorithms4hookINtB5_12NoFinishHookQINtNtB7_7compact7CompactINtNtB9_4text12TextDiffSideeEB1v_INtNtB7_7replace7ReplaceNtNtB7_7capture7CaptureEEENtB5_8DiffHook5equalCskXhPDodhyTq_6mdtest.exit.i118: ; preds = %bb.fp, %._crit_edge498.i, %bb.fe, %._crit_edge1511, %bb.er, %._crit_edge.i128
  %.sink1039.i = phi i64 [ %i.tk, %._crit_edge498.i ], [ %i.qx, %._crit_edge.i128 ], [ %i.tk, %bb.fp ], [ %i.qx, %bb.er ], [ %i.sb, %bb.fe ], [ %i.sb, %._crit_edge1511 ] ; 3 uses
  %.sink1036.i = phi i64 [ 0, %._crit_edge498.i ], [ 2, %._crit_edge.i128 ], [ 0, %bb.fp ], [ 2, %bb.er ], [ 1, %bb.fe ], [ 1, %._crit_edge1511 ]
  %.sink1033.i = phi i64 [ %i.ph, %._crit_edge498.i ], [ %i.ph, %._crit_edge.i128 ], [ %i.ph, %bb.fp ], [ %i.ph, %bb.er ], [ %i.sa, %bb.fe ], [ %i.sa, %._crit_edge1511 ]
  %.sink.i119 = phi i64 [ %i.tj, %._crit_edge498.i ], [ %i.qw, %._crit_edge.i128 ], [ %i.tj, %bb.fp ], [ %i.qw, %bb.er ], [ %i.ph, %bb.fe ], [ %i.ph, %._crit_edge1511 ]
  %.sroa.039.3.i = phi i64 [ %.sroa.039.4.lcssa.i, %._crit_edge498.i ], [ %.sroa.039.1.lcssa.i, %._crit_edge.i128 ], [ %.sroa.039.4.lcssa.i, %bb.fp ], [ %.sroa.039.1.lcssa.i, %bb.er ], [ %.sroa.039.0508.i, %bb.fe ], [ %.sroa.039.0508.i, %._crit_edge1511 ] ; 5 uses
  %.sroa.09.3.i120 = phi i64 [ %.sroa.09.4.lcssa.i133, %._crit_edge498.i ], [ %.sroa.09.0509.i, %._crit_edge.i128 ], [ %.sroa.09.4.lcssa.i133, %bb.fp ], [ %.sroa.09.0509.i, %bb.er ], [ %.sroa.09.1.lcssa.i117, %bb.fe ], [ %.sroa.09.1.lcssa.i117, %._crit_edge1511 ] ; 5 uses
  %i.te = load ptr, ptr %i.ol, align 8, !noalias !1048, !nonnull !3, !noundef !3
  %i.tf = getelementptr inbounds nuw [40 x i8], ptr %i.te, i64 %.sink1039.i ; 4 uses
  store i64 %.sink1036.i, ptr %i.tf, align 8, !noalias !1048
  %.sroa.417.0..sroa_idx.i121 = getelementptr inbounds nuw i8, ptr %i.tf, i64 8
  store i64 %i.pg, ptr %.sroa.417.0..sroa_idx.i121, align 8, !noalias !1048
  %.sroa.518.0..sroa_idx.i122 = getelementptr inbounds nuw i8, ptr %i.tf, i64 16
  store i64 %.sink1033.i, ptr %.sroa.518.0..sroa_idx.i122, align 8, !noalias !1048
  %.sroa.619.0..sroa_idx.i123 = getelementptr inbounds nuw i8, ptr %i.tf, i64 24
  store i64 %.sink.i119, ptr %.sroa.619.0..sroa_idx.i123, align 8, !noalias !1048
  %i.tg = add i64 %.sink1039.i, 1                 ; 4 uses
  store i64 %i.tg, ptr %i.ok, align 8, !noalias !1048
  %i.th = icmp ult i64 %.sroa.09.3.i120, %i.fj    ; 2 uses
  %i.ti = icmp ult i64 %.sroa.039.3.i, %i.fk      ; 3 uses
  %or.cond.i124 = select i1 %i.th, i1 %i.ti, i1 false
  br i1 %or.cond.i124, label %bb.dz, label %._crit_edge512.i

._crit_edge498.i:                                 ; preds = %bb.fy, %bb.fx, %bb.fu, %.preheader.i132
  %.sroa.039.4.lcssa.i = phi i64 [ %.sroa.039.0508.i, %.preheader.i132 ], [ %i.ue, %bb.fy ], [ %.sroa.039.4495.i, %bb.fu ], [ %.sroa.039.4495.i, %bb.fx ] ; 2 uses
  %.sroa.09.4.lcssa.i133 = phi i64 [ %.sroa.09.0509.i, %.preheader.i132 ], [ %i.uc, %bb.fy ], [ %.sroa.09.4496.i, %bb.fu ], [ %.sroa.09.4496.i, %bb.fx ] ; 3 uses
  %i.tj = sub i64 %.sroa.09.4.lcssa.i133, %.sroa.09.0509.i ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val51) ]
  %i.tk = load i64, ptr %i.ok, align 8, !alias.scope !1055, !noalias !1048, !noundef !3 ; 3 uses
  %i.tl = load i64, ptr %i.oj, align 8, !range !6, !alias.scope !1055, !noalias !1048, !noundef !3
  %i.tm = icmp eq i64 %i.tk, %i.tl
  br i1 %i.tm, label %bb.fp, label %_RNvXs0_NtNtCsiqiOkcJdymw_7similar10algorithms4hookINtB5_12NoFinishHookQINtNtB7_7compact7CompactINtNtB9_4text12TextDiffSideeEB1v_INtNtB7_7replace7ReplaceNtNtB7_7capture7CaptureEEENtB5_8DiffHook5equalCskXhPDodhyTq_6mdtest.exit.i118

bb.fp:                                            ; preds = %._crit_edge498.i
  invoke void @_RNvMs3_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecNtNtCsiqiOkcJdymw_7similar5types6DiffOpE8grow_oneBP_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.oj)
          to label %_RNvXs0_NtNtCsiqiOkcJdymw_7similar10algorithms4hookINtB5_12NoFinishHookQINtNtB7_7compact7CompactINtNtB9_4text12TextDiffSideeEB1v_INtNtB7_7replace7ReplaceNtNtB7_7capture7CaptureEEENtB5_8DiffHook5equalCskXhPDodhyTq_6mdtest.exit.i118 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i88.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !1048

.lr.ph497.i:                                      ; preds = %.preheader.i132, %bb.fy
  %.sroa.09.4496.i = phi i64 [ %i.uc, %bb.fy ], [ %.sroa.09.0509.i, %.preheader.i132 ] ; 5 uses
  %.sroa.039.4495.i = phi i64 [ %i.ue, %bb.fy ], [ %.sroa.039.0508.i, %.preheader.i132 ] ; 6 uses
  %i.tn = and i64 %.sroa.039.4495.i, 1023
  %i.to = icmp eq i64 %i.tn, 0
  %or.cond180.i134 = select i1 %.sroa.05.0.not510.i, i1 %i.to, i1 false
  br i1 %or.cond180.i134, label %bb.fr, label %bb.fq

bb.fq:                                            ; preds = %bb.fs, %.lr.ph497.i
  %i.tp = mul i64 %.sroa.09.4496.i, %i.nx
  %i.tq = add i64 %.sroa.039.4495.i, %invariant.op.i92 ; 2 uses
  %i.tr = icmp ult i64 %i.tq, %i.q
  br i1 %i.tr, label %bb.ft, label %.invoke.i104

bb.fr:                                            ; preds = %.lr.ph497.i
  %i.ts = invoke noundef zeroext i1 @_RNvNtCsiqiOkcJdymw_7similar16deadline_support17deadline_exceeded(i64 %9, i32 noundef range(i32 -1, 1000000000) %10)
          to label %bb.fs unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i88.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !1048

bb.fs:                                            ; preds = %bb.fr
  br i1 %i.ts, label %.loopexit24.i125, label %bb.fq

bb.ft:                                            ; preds = %bb.fq
  %i.tt = add i64 %.sroa.09.4496.i, %invariant.op485.i ; 2 uses
  %i.tu = icmp ult i64 %i.tt, %i.w
  br i1 %i.tu, label %bb.fu, label %.invoke.i104

bb.fu:                                            ; preds = %bb.ft
  %i.tv = getelementptr inbounds nuw [8 x i8], ptr %i.s, i64 %i.tq
  %i.tw = getelementptr inbounds nuw [8 x i8], ptr %i.y, i64 %i.tt
  %.val204.i135 = load i64, ptr %i.tv, align 8, !noalias !1048, !noundef !3
  %.val205.i136 = load i64, ptr %i.tw, align 8, !noalias !1048, !noundef !3
  %i.tx = icmp eq i64 %.val204.i135, %.val205.i136
  br i1 %i.tx, label %bb.fv, label %._crit_edge498.i

bb.fv:                                            ; preds = %bb.fu
  %i.ty = add i64 %i.tp, %.sroa.039.4495.i        ; 3 uses
  %i.tz = load ptr, ptr %i.oh, align 8, !noalias !1048, !nonnull !3, !noundef !3 ; 2 uses
  %i.ua = load i64, ptr %i.oi, align 8, !noalias !1048, !noundef !3 ; 4 uses
  %i.ub = icmp ult i64 %i.ty, %i.ua
  br i1 %i.ub, label %bb.fw, label %.invoke.i104

bb.fw:                                            ; preds = %bb.fv
  %i.uc = add nuw i64 %.sroa.09.4496.i, 1         ; 4 uses
  %i.ud = mul i64 %i.uc, %i.nx
  %i.ue = add nuw i64 %.sroa.039.4495.i, 1        ; 4 uses
  %i.uf = add i64 %i.ue, %i.ud                    ; 3 uses
  %i.ug = icmp ult i64 %i.uf, %i.ua
  br i1 %i.ug, label %bb.fx, label %.invoke.i104

bb.fx:                                            ; preds = %bb.fw
  %i.uh = getelementptr inbounds nuw i8, ptr %i.tz, i64 %i.ty
  %i.ui = load i8, ptr %i.uh, align 1, !noalias !1048, !noundef !3
  %i.uj = getelementptr inbounds nuw i8, ptr %i.tz, i64 %i.uf
  %i.uk = load i8, ptr %i.uj, align 1, !noalias !1048, !noundef !3
  %i.ul = add i8 %i.uk, 1
  %i.um = icmp eq i8 %i.ui, %i.ul
  br i1 %i.um, label %bb.fy, label %._crit_edge498.i

bb.fy:                                            ; preds = %bb.fx
  %i.un = icmp ult i64 %i.uc, %i.fj
  %i.uo = icmp ult i64 %i.ue, %i.fk
  %or.cond177.i137 = and i1 %i.un, %i.uo
  br i1 %or.cond177.i137, label %.lr.ph497.i, label %._crit_edge498.i

.loopexit24.i125:                                 ; preds = %bb.gb, %bb.gd, %bb.eh, %bb.fg, %bb.et, %bb.fs, %bb.go
  invoke void @_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCskXhPDodhyTq_6mdtest(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.b)
          to label %_RINvNtNtCsiqiOkcJdymw_7similar10algorithms5myers27maybe_emit_small_side_exactINtNtB4_5utils12OffsetLookupjEB1d_INtNtB4_4hook12NoFinishHookQINtNtB4_7compact7CompactINtNtB6_4text12TextDiffSideeEB2B_INtNtB4_7replace7ReplaceNtNtB4_7capture7CaptureEEEECskXhPDodhyTq_6mdtest.exit unwind label %bb.fz, !noalias !1048

bb.fz:                                            ; preds = %.loopexit24.i125
  %i.up = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCskXhPDodhyTq_6mdtest(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.b)
          to label %common.resume unwind label %bb.ga, !noalias !1048

bb.ga:                                            ; preds = %bb.fz
  %i.uq = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #13, !noalias !1048
  unreachable

bb.gb:                                            ; preds = %.lr.ph484.split.i
  br i1 %i.on, label %.loopexit24.i125, label %.lr.ph.i138

.lr.ph.i138:                                      ; preds = %bb.gb
  %i.ur = mul i64 %i.om, %i.nx                    ; 2 uses
  %i.us = mul i64 %.sroa.0102.0483.i, %i.nx       ; 2 uses
  %.reass486.i = add i64 %i.om, %invariant.op485.i ; 3 uses
  %i.ut = icmp ult i64 %.reass486.i, %i.w
  %i.uu = getelementptr inbounds nuw [8 x i8], ptr %i.y, i64 %.reass486.i
  %.fr.i139 = freeze i1 %i.ut
  br i1 %.fr.i139, label %.lr.ph.split.us.i142, label %.lr.ph.split.i140

.lr.ph.split.us.i142:                             ; preds = %.lr.ph.i138, %bb.gm
  %.sroa.0105.0432.us.i143 = phi i64 [ %i.uv, %bb.gm ], [ %i.fk, %.lr.ph.i138 ] ; 3 uses
  %i.uv = add i64 %.sroa.0105.0432.us.i143, -1    ; 6 uses
  %i.uw = and i64 %i.uv, 1023
  %i.ux = icmp eq i64 %i.uw, 0
  br i1 %i.ux, label %bb.gc, label %bb.ge

bb.gc:                                            ; preds = %.lr.ph.split.us.i142
  %i.uy = invoke noundef zeroext i1 @_RNvNtCsiqiOkcJdymw_7similar16deadline_support17deadline_exceeded(i64 %9, i32 noundef range(i32 -1, 1000000000) %10)
          to label %bb.gd unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i88.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !1048

bb.gd:                                            ; preds = %bb.gc
  br i1 %i.uy, label %.loopexit24.i125, label %bb.ge

bb.ge:                                            ; preds = %bb.gd, %.lr.ph.split.us.i142
end_hunk_7
begin_hunk_8_@_RINvNtNtCsiqiOkcJdymw_7similar10algorithms5myers7conquerINtNtB4_5utils12OffsetLookupjEBS_INtNtB4_4hook12NoFinishHookQINtNtB4_7compact7CompactINtNtB6_4text12TextDiffSideeEB2f_INtNtB4_7replace7ReplaceNtNtB4_7capture7CaptureEEEECskXhPDodhyTq_6mdtest:bb.a
bb.gm:                                            ; preds = %bb.gl
  %i.vx = getelementptr inbounds nuw i8, ptr %i.vt, i64 %i.vv
  store i8 %.sroa.04.0.us.i148, ptr %i.vx, align 1, !noalias !1048
  %.not168.us.i149 = icmp eq i64 %i.uv, 0
  br i1 %.not168.us.i149, label %..loopexit39_crit_edge.split.us.i150, label %.lr.ph.split.us.i142

..loopexit39_crit_edge.split.us.i150:             ; preds = %bb.gm
  %.not.i151 = icmp eq i64 %i.om, 0
  br i1 %.not.i151, label %.lr.ph511.i, label %.lr.ph484.split.i

.lr.ph.split.i140:                                ; preds = %.lr.ph.i138
  %i.vy = add i64 %i.fk, -1                       ; 2 uses
  %i.vz = and i64 %i.vy, 1023
  %i.wa = icmp eq i64 %i.vz, 0
  br i1 %i.wa, label %bb.gn, label %bb.gp

bb.gn:                                            ; preds = %.lr.ph.split.i140
  %i.wb = invoke noundef zeroext i1 @_RNvNtCsiqiOkcJdymw_7similar16deadline_support17deadline_exceeded(i64 %9, i32 noundef range(i32 -1, 1000000000) %10)
          to label %bb.go unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i88.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !1048

bb.go:                                            ; preds = %bb.gn
  br i1 %i.wb, label %.loopexit24.i125, label %bb.gp

bb.gp:                                            ; preds = %bb.go, %.lr.ph.split.i140
  %.reass.i141 = add i64 %invariant.op.i92, %i.vy ; 2 uses
  %i.wc = icmp ult i64 %.reass.i141, %i.q
  br i1 %i.wc, label %bb.gq, label %.invoke.i104

bb.gq:                                            ; preds = %bb.gp
  br label %.invoke.i104

bb.gr:                                            ; preds = %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i88.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp
  %i.wd = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #13, !noalias !1048
  unreachable

_RINvNtNtCsiqiOkcJdymw_7similar10algorithms5myers27maybe_emit_small_side_exactINtNtB4_5utils12OffsetLookupjEB1d_INtNtB4_4hook12NoFinishHookQINtNtB4_7compact7CompactINtNtB6_4text12TextDiffSideeEB2B_INtNtB4_7replace7ReplaceNtNtB4_7capture7CaptureEEEECskXhPDodhyTq_6mdtest.exit: ; preds = %.loopexit24.i125
  call void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCskXhPDodhyTq_6mdtest(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.b), !noalias !1048
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !1048
  br label %_RINvNtNtCsiqiOkcJdymw_7similar10algorithms5myers27maybe_emit_small_side_exactINtNtB4_5utils12OffsetLookupjEB1d_INtNtB4_4hook12NoFinishHookQINtNtB4_7compact7CompactINtNtB6_4text12TextDiffSideeEB2B_INtNtB4_7replace7ReplaceNtNtB4_7capture7CaptureEEEECskXhPDodhyTq_6mdtest.exit.thread

_RINvNtNtCsiqiOkcJdymw_7similar10algorithms5myers27maybe_emit_small_side_exactINtNtB4_5utils12OffsetLookupjEB1d_INtNtB4_4hook12NoFinishHookQINtNtB4_7compact7CompactINtNtB6_4text12TextDiffSideeEB2B_INtNtB4_7replace7ReplaceNtNtB4_7capture7CaptureEEEECskXhPDodhyTq_6mdtest.exit.thread: ; preds = %bb.az, %bb.dw, %bb.bc, %bb.ba, %bb.ay, %.sink.split.i, %_RINvNtNtCsiqiOkcJdymw_7similar10algorithms5myers27maybe_emit_small_side_exactINtNtB4_5utils12OffsetLookupjEB1d_INtNtB4_4hook12NoFinishHookQINtNtB4_7compact7CompactINtNtB6_4text12TextDiffSideeEB2B_INtNtB4_7replace7ReplaceNtNtB4_7capture7CaptureEEEECskXhPDodhyTq_6mdtest.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  call fastcc void @_RINvNtNtCsiqiOkcJdymw_7similar10algorithms5myers17find_middle_snakeINtNtB4_5utils12OffsetLookupjEB13_ECskXhPDodhyTq_6mdtest(ptr noalias noundef align 8 captures(none) dereferenceable(24) %i.g, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) %1, i64 noundef %.sroa.0.0, i64 noundef %i.l, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) %4, i64 noundef %.sroa.0188.0, i64 noundef %i.m, ptr noalias noundef align 8 dereferenceable(32) %7, ptr noalias noundef align 8 dereferenceable(32) %8, i64 %9, i32 noundef %10)
  %i.we = load i64, ptr %i.g, align 8, !range !8, !noundef !3
  %i.wf = trunc nuw i64 %i.we to i1
  br i1 %i.wf, label %bb.gs, label %bb.gt

bb.gs:                                            ; preds = %_RINvNtNtCsiqiOkcJdymw_7similar10algorithms5myers27maybe_emit_small_side_exactINtNtB4_5utils12OffsetLookupjEB1d_INtNtB4_4hook12NoFinishHookQINtNtB4_7compact7CompactINtNtB6_4text12TextDiffSideeEB2B_INtNtB4_7replace7ReplaceNtNtB4_7capture7CaptureEEEECskXhPDodhyTq_6mdtest.exit.thread
  %i.wg = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %i.wh = load i64, ptr %i.wg, align 8, !noundef !3 ; 2 uses
  %i.wi = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  %i.wj = load i64, ptr %i.wi, align 8, !noundef !3 ; 2 uses
  call fastcc void @_RINvNtNtCsiqiOkcJdymw_7similar10algorithms5myers7conquerINtNtB4_5utils12OffsetLookupjEBS_INtNtB4_4hook12NoFinishHookQINtNtB4_7compact7CompactINtNtB6_4text12TextDiffSideeEB2f_INtNtB4_7replace7ReplaceNtNtB4_7capture7CaptureEEEECskXhPDodhyTq_6mdtest(ptr noalias noundef align 8 dereferenceable(8) %0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) %1, i64 noundef %.sroa.0.0, i64 noundef %i.wh, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) %4, i64 noundef %.sroa.0188.0, i64 noundef %i.wj, ptr noalias noundef align 8 dereferenceable(32) %7, ptr noalias noundef align 8 dereferenceable(32) %8, i64 %9, i32 noundef %10)
  call fastcc void @_RINvNtNtCsiqiOkcJdymw_7similar10algorithms5myers7conquerINtNtB4_5utils12OffsetLookupjEBS_INtNtB4_4hook12NoFinishHookQINtNtB4_7compact7CompactINtNtB6_4text12TextDiffSideeEB2f_INtNtB4_7replace7ReplaceNtNtB4_7capture7CaptureEEEECskXhPDodhyTq_6mdtest(ptr noalias noundef align 8 dereferenceable(8) %0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) %1, i64 noundef %i.wh, i64 noundef %i.l, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) %4, i64 noundef %i.wj, i64 noundef %i.m, ptr noalias noundef align 8 dereferenceable(32) %7, ptr noalias noundef align 8 dereferenceable(32) %8, i64 %9, i32 noundef %10)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  br label %bb.av

bb.gt:                                            ; preds = %_RINvNtNtCsiqiOkcJdymw_7similar10algorithms5myers27maybe_emit_small_side_exactINtNtB4_5utils12OffsetLookupjEB1d_INtNtB4_4hook12NoFinishHookQINtNtB4_7compact7CompactINtNtB6_4text12TextDiffSideeEB2B_INtNtB4_7replace7ReplaceNtNtB4_7capture7CaptureEEEECskXhPDodhyTq_6mdtest.exit.thread
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  %i.wk = sub nuw i64 %i.l, %.sroa.0.0
  call void @llvm.experimental.noalias.scope.decl(metadata !1056)
  call void @llvm.experimental.noalias.scope.decl(metadata !1057)
  %i.wl = load ptr, ptr %0, align 8, !alias.scope !1058, !nonnull !3, !align !5, !noundef !3 ; 3 uses
  %i.wm = getelementptr inbounds nuw i8, ptr %i.wl, i64 120 ; 4 uses
  %i.wn = getelementptr inbounds nuw i8, ptr %i.wl, i64 136 ; 3 uses
  %i.wo = load i64, ptr %i.wn, align 8, !alias.scope !1059, !noalias !1058, !noundef !3 ; 4 uses
  %i.wp = load i64, ptr %i.wm, align 8, !range !6, !alias.scope !1059, !noalias !1058, !noundef !3
  %i.wq = icmp eq i64 %i.wo, %i.wp
  br i1 %i.wq, label %bb.gu, label %_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCsiqiOkcJdymw_7similar5types6DiffOpE8push_mutCskXhPDodhyTq_6mdtest.exit152

bb.gu:                                            ; preds = %bb.gt
  call void @_RNvMs3_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecNtNtCsiqiOkcJdymw_7similar5types6DiffOpE8grow_oneBP_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.wm), !noalias !1060
  br label %_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCsiqiOkcJdymw_7similar5types6DiffOpE8push_mutCskXhPDodhyTq_6mdtest.exit152

_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCsiqiOkcJdymw_7similar5types6DiffOpE8push_mutCskXhPDodhyTq_6mdtest.exit152: ; preds = %bb.gt, %bb.gu
  %i.wr = getelementptr inbounds nuw i8, ptr %i.wl, i64 128 ; 2 uses
  %i.ws = load ptr, ptr %i.wr, align 8, !alias.scope !1059, !noalias !1058, !nonnull !3, !noundef !3
  %i.wt = getelementptr inbounds nuw [40 x i8], ptr %i.ws, i64 %i.wo ; 4 uses
  store i64 1, ptr %i.wt, align 8, !noalias !1058
  %.sroa.4239.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.wt, i64 8
  store i64 %.sroa.0.0, ptr %.sroa.4239.0..sroa_idx, align 8, !noalias !1058
  %.sroa.5240.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.wt, i64 16
  store i64 %i.wk, ptr %.sroa.5240.0..sroa_idx, align 8, !noalias !1058
  %.sroa.6241.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.wt, i64 24
  store i64 %.sroa.0188.0, ptr %.sroa.6241.0..sroa_idx, align 8, !noalias !1058
  %i.wu = add i64 %i.wo, 1                        ; 3 uses
  store i64 %i.wu, ptr %i.wn, align 8, !alias.scope !1059, !noalias !1058
  %i.wv = sub nuw i64 %i.m, %.sroa.0188.0
  %i.ww = load i64, ptr %i.wm, align 8, !range !6, !alias.scope !1061, !noalias !1062, !noundef !3
  %i.wx = icmp eq i64 %i.wu, %i.ww
  br i1 %i.wx, label %bb.gv, label %_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCsiqiOkcJdymw_7similar5types6DiffOpE8push_mutCskXhPDodhyTq_6mdtest.exit153

bb.gv:                                            ; preds = %_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCsiqiOkcJdymw_7similar5types6DiffOpE8push_mutCskXhPDodhyTq_6mdtest.exit152
  call void @_RNvMs3_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecNtNtCsiqiOkcJdymw_7similar5types6DiffOpE8grow_oneBP_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.wm), !noalias !1063
  br label %_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCsiqiOkcJdymw_7similar5types6DiffOpE8push_mutCskXhPDodhyTq_6mdtest.exit153

_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCsiqiOkcJdymw_7similar5types6DiffOpE8push_mutCskXhPDodhyTq_6mdtest.exit153: ; preds = %_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCsiqiOkcJdymw_7similar5types6DiffOpE8push_mutCskXhPDodhyTq_6mdtest.exit152, %bb.gv
  %i.wy = load ptr, ptr %i.wr, align 8, !alias.scope !1061, !noalias !1062, !nonnull !3, !noundef !3
  %i.wz = getelementptr inbounds nuw [40 x i8], ptr %i.wy, i64 %i.wu ; 4 uses
  store i64 2, ptr %i.wz, align 8, !noalias !1062
  %.sroa.4254.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.wz, i64 8
  store i64 %.sroa.0.0, ptr %.sroa.4254.0..sroa_idx, align 8, !noalias !1062
  %.sroa.5255.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.wz, i64 16
  store i64 %.sroa.0188.0, ptr %.sroa.5255.0..sroa_idx, align 8, !noalias !1062
  %.sroa.6256.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.wz, i64 24
  store i64 %i.wv, ptr %.sroa.6256.0..sroa_idx, align 8, !noalias !1062
  %i.xa = add i64 %i.wo, 2
  store i64 %i.xa, ptr %i.wn, align 8, !alias.scope !1061, !noalias !1062
  br label %bb.av

.thread:                                          ; preds = %bb.au
  %i.xb = sub nuw i64 %i.m, %.sroa.0188.0
  call void @llvm.experimental.noalias.scope.decl(metadata !1064)
  call void @llvm.experimental.noalias.scope.decl(metadata !1065)
  %i.xc = load ptr, ptr %0, align 8, !alias.scope !1066, !nonnull !3, !align !5, !noundef !3 ; 3 uses
  %i.xd = getelementptr inbounds nuw i8, ptr %i.xc, i64 120 ; 2 uses
  %i.xe = getelementptr inbounds nuw i8, ptr %i.xc, i64 136 ; 2 uses
  %i.xf = load i64, ptr %i.xe, align 8, !alias.scope !1067, !noalias !1066, !noundef !3 ; 3 uses
  %i.xg = load i64, ptr %i.xd, align 8, !range !6, !alias.scope !1067, !noalias !1066, !noundef !3
  %i.xh = icmp eq i64 %i.xf, %i.xg
  br i1 %i.xh, label %bb.gw, label %_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCsiqiOkcJdymw_7similar5types6DiffOpE8push_mutCskXhPDodhyTq_6mdtest.exit154

bb.gw:                                            ; preds = %.thread
  call void @_RNvMs3_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecNtNtCsiqiOkcJdymw_7similar5types6DiffOpE8grow_oneBP_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.xd), !noalias !1068
  br label %_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCsiqiOkcJdymw_7similar5types6DiffOpE8push_mutCskXhPDodhyTq_6mdtest.exit154

_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCsiqiOkcJdymw_7similar5types6DiffOpE8push_mutCskXhPDodhyTq_6mdtest.exit154: ; preds = %.thread, %bb.gw
  %i.xi = getelementptr inbounds nuw i8, ptr %i.xc, i64 128
  %i.xj = load ptr, ptr %i.xi, align 8, !alias.scope !1067, !noalias !1066, !nonnull !3, !noundef !3
  %i.xk = getelementptr inbounds nuw [40 x i8], ptr %i.xj, i64 %i.xf ; 4 uses
  store i64 2, ptr %i.xk, align 8, !noalias !1066
  %.sroa.4259.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.xk, i64 8
  store i64 %.sroa.0.0, ptr %.sroa.4259.0..sroa_idx, align 8, !noalias !1066
  %.sroa.5260.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.xk, i64 16
  store i64 %.sroa.0188.0, ptr %.sroa.5260.0..sroa_idx, align 8, !noalias !1066
  %.sroa.6261.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.xk, i64 24
  store i64 %i.xb, ptr %.sroa.6261.0..sroa_idx, align 8, !noalias !1066
  %i.xl = add i64 %i.xf, 1
  store i64 %i.xl, ptr %i.xe, align 8, !alias.scope !1067, !noalias !1066
  br label %bb.av

bb.gx:                                            ; preds = %bb.av
  call void @llvm.experimental.noalias.scope.decl(metadata !1069)
  call void @llvm.experimental.noalias.scope.decl(metadata !1070)
  %i.xm = load ptr, ptr %0, align 8, !alias.scope !1071, !nonnull !3, !align !5, !noundef !3 ; 3 uses
  %i.xn = getelementptr inbounds nuw i8, ptr %i.xm, i64 120 ; 2 uses
  %i.xo = getelementptr inbounds nuw i8, ptr %i.xm, i64 136 ; 2 uses
  %i.xp = load i64, ptr %i.xo, align 8, !alias.scope !1072, !noalias !1071, !noundef !3 ; 3 uses
  %i.xq = load i64, ptr %i.xn, align 8, !range !6, !alias.scope !1072, !noalias !1071, !noundef !3
  %i.xr = icmp eq i64 %i.xp, %i.xq
  br i1 %i.xr, label %bb.gy, label %_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCsiqiOkcJdymw_7similar5types6DiffOpE8push_mutCskXhPDodhyTq_6mdtest.exit155

bb.gy:                                            ; preds = %bb.gx
  call void @_RNvMs3_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecNtNtCsiqiOkcJdymw_7similar5types6DiffOpE8grow_oneBP_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.xn), !noalias !1073
  br label %_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCsiqiOkcJdymw_7similar5types6DiffOpE8push_mutCskXhPDodhyTq_6mdtest.exit155

_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCsiqiOkcJdymw_7similar5types6DiffOpE8push_mutCskXhPDodhyTq_6mdtest.exit155: ; preds = %bb.gx, %bb.gy
  %i.xs = getelementptr inbounds nuw i8, ptr %i.xm, i64 128
  %i.xt = load ptr, ptr %i.xs, align 8, !alias.scope !1072, !noalias !1071, !nonnull !3, !noundef !3
  %i.xu = getelementptr inbounds nuw [40 x i8], ptr %i.xt, i64 %i.xp ; 4 uses
  store i64 0, ptr %i.xu, align 8, !noalias !1071
  %.sroa.4229.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.xu, i64 8
  store i64 %i.l, ptr %.sroa.4229.0..sroa_idx, align 8, !noalias !1071
  %.sroa.5230.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.xu, i64 16
  store i64 %i.m, ptr %.sroa.5230.0..sroa_idx, align 8, !noalias !1071
  %.sroa.6231.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.xu, i64 24
  store i64 %i.k, ptr %.sroa.6231.0..sroa_idx, align 8, !noalias !1071
  %i.xv = add i64 %i.xp, 1
  store i64 %i.xv, ptr %i.xo, align 8, !alias.scope !1072, !noalias !1071
  br label %bb.gz

bb.gz:                                            ; preds = %bb.av, %_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCsiqiOkcJdymw_7similar5types6DiffOpE8push_mutCskXhPDodhyTq_6mdtest.exit155
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtNtCsiqiOkcJdymw_7similar10algorithms5myers7conquerINtNtB4_5utils12OffsetLookupmEBS_INtNtB4_4hook12NoFinishHookQQINtNtB4_7compact7CompactBS_BS_INtNtB4_7replace7ReplaceNtNtB4_7capture7CaptureEEEECskXhPDodhyTq_6mdtest(ptr noalias noundef nonnull align 8 dereferenceable(8) %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %1, i64 noundef %2, i64 noundef %3, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %4, i64 noundef %5, i64 noundef %6, ptr noalias noundef nonnull align 8 dereferenceable(32) %7, ptr noalias noundef nonnull align 8 dereferenceable(32) %8, i64 %9, i32 noundef range(i32 -1, 1000000000) %10) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = alloca [24 x i8], align 8                ; 11 uses
  %i.c = alloca [24 x i8], align 8                ; 6 uses
  %i.d = alloca [24 x i8], align 8                ; 11 uses
  %i.e = alloca [32 x i8], align 8                ; 6 uses
  %i.f = alloca [32 x i8], align 8                ; 6 uses
  %i.g = alloca [24 x i8], align 8                ; 7 uses
  %i.h = tail call noundef i64 @_RINvNtNtCsiqiOkcJdymw_7similar10algorithms5utils17common_prefix_lenINtB2_12OffsetLookupmEB13_ECskXhPDodhyTq_6mdtest(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %1, i64 noundef %2, i64 noundef %3, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %4, i64 noundef %5, i64 noundef %6) ; 4 uses
  %.not = icmp eq i64 %i.h, 0
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCsiqiOkcJdymw_7similar5types6DiffOpE8push_mutCskXhPDodhyTq_6mdtest.exit, %bb.a
  %i.i = add i64 %i.h, %2                         ; 2 uses
  %i.j = add i64 %i.h, %5                         ; 2 uses
  %i.k = tail call noundef i64 @_RINvNtNtCsiqiOkcJdymw_7similar10algorithms5utils17common_suffix_lenINtB2_12OffsetLookupmEB13_ECskXhPDodhyTq_6mdtest(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %1, i64 noundef %i.i, i64 noundef %3, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %4, i64 noundef %i.j, i64 noundef %6) ; 4 uses
  %i.l = sub i64 %3, %i.k                         ; 9 uses
  %i.m = sub i64 %6, %i.k                         ; 9 uses
  %i.n = getelementptr inbounds nuw i8, ptr %4, i64 24
  %i.o = load i64, ptr %i.n, align 8              ; 8 uses
  %i.p = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.q = load i64, ptr %i.p, align 8              ; 27 uses
  %i.r = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.s = load ptr, ptr %i.r, align 8, !nonnull !3 ; 11 uses
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.u = load i64, ptr %i.t, align 8              ; 5 uses
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.w = load i64, ptr %i.v, align 8              ; 23 uses
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.y = load ptr, ptr %i.x, align 8, !nonnull !3 ; 10 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.f, i64 8 ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %i.ab = getelementptr inbounds nuw i8, ptr %i.f, i64 24
  %i.ac = getelementptr inbounds nuw i8, ptr %i.e, i64 8 ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  %i.ae = getelementptr inbounds nuw i8, ptr %i.e, i64 24
  br label %bb.e

bb.c:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1275)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1276)
  %i.af = load ptr, ptr %0, align 8, !alias.scope !1277, !nonnull !3, !align !5, !noundef !3
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1278)
  %i.ag = load ptr, ptr %i.af, align 8, !alias.scope !1278, !noalias !1277, !nonnull !3, !align !5, !noundef !3 ; 3 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 120 ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ag, i64 136 ; 2 uses
  %i.aj = load i64, ptr %i.ai, align 8, !alias.scope !1279, !noalias !1280, !noundef !3 ; 3 uses
  %i.ak = load i64, ptr %i.ah, align 8, !range !6, !alias.scope !1279, !noalias !1280, !noundef !3
  %i.al = icmp eq i64 %i.aj, %i.ak
  br i1 %i.al, label %bb.d, label %_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCsiqiOkcJdymw_7similar5types6DiffOpE8push_mutCskXhPDodhyTq_6mdtest.exit

bb.d:                                             ; preds = %bb.c
  tail call void @_RNvMs3_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecNtNtCsiqiOkcJdymw_7similar5types6DiffOpE8grow_oneBP_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.ah), !noalias !1281
  br label %_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCsiqiOkcJdymw_7similar5types6DiffOpE8push_mutCskXhPDodhyTq_6mdtest.exit

_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCsiqiOkcJdymw_7similar5types6DiffOpE8push_mutCskXhPDodhyTq_6mdtest.exit: ; preds = %bb.c, %bb.d
  %i.am = getelementptr inbounds nuw i8, ptr %i.ag, i64 128
  %i.an = load ptr, ptr %i.am, align 8, !alias.scope !1279, !noalias !1280, !nonnull !3, !noundef !3
  %i.ao = getelementptr inbounds nuw [40 x i8], ptr %i.an, i64 %i.aj ; 4 uses
  store i64 0, ptr %i.ao, align 8, !noalias !1280
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ao, i64 8
  store i64 %2, ptr %.sroa.4.0..sroa_idx, align 8, !noalias !1280
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ao, i64 16
  store i64 %5, ptr %.sroa.5.0..sroa_idx, align 8, !noalias !1280
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ao, i64 24
  store i64 %i.h, ptr %.sroa.6.0..sroa_idx, align 8, !noalias !1280
  %i.ap = add i64 %i.aj, 1
  store i64 %i.ap, ptr %i.ai, align 8, !alias.scope !1279, !noalias !1280
  br label %bb.b

bb.e:                                             ; preds = %_RINvNtNtCsiqiOkcJdymw_7similar10algorithms5myers21try_emit_front_anchorINtNtB4_5utils12OffsetLookupmEB17_INtNtB4_4hook12NoFinishHookQQINtNtB4_7compact7CompactB17_B17_INtNtB4_7replace7ReplaceNtNtB4_7capture7CaptureEEEECskXhPDodhyTq_6mdtest.exit, %bb.b
  %.sroa.0195.0 = phi i64 [ %i.j, %bb.b ], [ %.sroa.0195.2, %_RINvNtNtCsiqiOkcJdymw_7similar10algorithms5myers21try_emit_front_anchorINtNtB4_5utils12OffsetLookupmEB17_INtNtB4_4hook12NoFinishHookQQINtNtB4_7compact7CompactB17_B17_INtNtB4_7replace7ReplaceNtNtB4_7capture7CaptureEEEECskXhPDodhyTq_6mdtest.exit ] ; 36 uses
  %.sroa.0.0 = phi i64 [ %i.i, %bb.b ], [ %.sroa.0.2, %_RINvNtNtCsiqiOkcJdymw_7similar10algorithms5myers21try_emit_front_anchorINtNtB4_5utils12OffsetLookupmEB17_INtNtB4_4hook12NoFinishHookQQINtNtB4_7compact7CompactB17_B17_INtNtB4_7replace7ReplaceNtNtB4_7capture7CaptureEEEECskXhPDodhyTq_6mdtest.exit ] ; 33 uses
  %i.aq = icmp ult i64 %.sroa.0.0, %i.l           ; 2 uses
  %i.ar = icmp ult i64 %.sroa.0195.0, %i.m        ; 3 uses
  %or.cond312 = select i1 %i.aq, i1 %i.ar, i1 false
  br i1 %or.cond312, label %bb.g, label %bb.f

bb.f:                                             ; preds = %_RINvNtNtCsiqiOkcJdymw_7similar10algorithms5myers21try_emit_front_anchorINtNtB4_5utils12OffsetLookupmEB17_INtNtB4_4hook12NoFinishHookQQINtNtB4_7compact7CompactB17_B17_INtNtB4_7replace7ReplaceNtNtB4_7capture7CaptureEEEECskXhPDodhyTq_6mdtest.exit, %bb.e
  br i1 %i.aq, label %bb.at, label %bb.au

bb.g:                                             ; preds = %bb.e
  %i.as = sub nuw i64 %i.l, %.sroa.0.0            ; 5 uses
  %i.at = sub nuw i64 %i.m, %.sroa.0195.0         ; 6 uses
  %i.au = icmp ult i64 %i.as, 97
  %i.av = icmp ult i64 %i.at, 97
  %or.cond.i = or i1 %i.av, %i.au
  br i1 %or.cond.i, label %_RINvNtNtCsiqiOkcJdymw_7similar10algorithms5myers21try_emit_front_anchorINtNtB4_5utils12OffsetLookupmEB17_INtNtB4_4hook12NoFinishHookQQINtNtB4_7compact7CompactB17_B17_INtNtB4_7replace7ReplaceNtNtB4_7capture7CaptureEEEECskXhPDodhyTq_6mdtest.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %.sroa.0.0.i53 = call noundef i64 @llvm.umin.i64(i64 %i.at, i64 %i.as) ; 2 uses
  %.sroa.0.0.i54 = call noundef i64 @llvm.umax.i64(i64 %i.at, i64 %i.as)
  %i.aw = shl nuw i64 %.sroa.0.0.i53, 1
  %i.ax = icmp slt i64 %.sroa.0.0.i53, 0
  br i1 %i.ax, label %bb.i, label %bb.j, !prof !7

bb.i:                                             ; preds = %bb.h
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %.sroa.052.0.i = phi i64 [ -1, %bb.i ], [ %i.aw, %bb.h ]
  %i.ay = icmp ult i64 %.sroa.0.0.i54, %.sroa.052.0.i
  br i1 %i.ay, label %_RINvNtNtCsiqiOkcJdymw_7similar10algorithms5myers21try_emit_front_anchorINtNtB4_5utils12OffsetLookupmEB17_INtNtB4_4hook12NoFinishHookQQINtNtB4_7compact7CompactB17_B17_INtNtB4_7replace7ReplaceNtNtB4_7capture7CaptureEEEECskXhPDodhyTq_6mdtest.exit, label %bb.k

bb.k:                                             ; preds = %bb.j
  %.not.i = icmp ule i64 %i.at, %i.as
  %i.az = icmp ule i64 %i.as, %i.at
  %.not.i.fr = freeze i1 %.not.i
  %i.ba = sub i64 %.sroa.0195.0, %i.o             ; 2 uses
  %i.bb = icmp ult i64 %i.ba, %i.q
  %i.bc = getelementptr inbounds nuw [4 x i8], ptr %i.s, i64 %i.ba
  br label %bb.l

.loopexit:                                        ; preds = %.outer, %bb.z, %bb.o, %bb.y
  %.sroa.525.2.i.ph.lcssa485 = phi i64 [ %.sroa.525.2.i.ph636, %bb.o ], [ %.sroa.525.2.i.ph636, %bb.z ], [ %.sroa.525.2.i.ph636, %bb.y ], [ %.sroa.525.3.i, %.outer ] ; 2 uses
  %.sroa.023.1.i.ph.lcssa478 = phi i64 [ %.sroa.023.1.i.ph637, %bb.o ], [ %.sroa.023.1.i.ph637, %bb.z ], [ %.sroa.023.1.i.ph637, %bb.y ], [ %.sroa.023.2.i, %.outer ] ; 2 uses
  %.sroa.9.2.i.ph.lcssa471 = phi i64 [ %.sroa.9.2.i.ph638, %bb.o ], [ %.sroa.9.2.i.ph638, %bb.z ], [ %.sroa.9.2.i.ph638, %bb.y ], [ %.sroa.9.3.i, %.outer ] ; 2 uses
  %.sroa.12.2.i.ph.lcssa464 = phi i64 [ %.sroa.12.2.i.ph639, %bb.o ], [ %.sroa.12.2.i.ph639, %bb.z ], [ %.sroa.12.2.i.ph639, %bb.y ], [ %.sroa.12.3.i, %.outer ] ; 2 uses
  %.not.i57 = icmp ugt i64 %spec.select313, 4
  %or.cond318 = or i1 %i.bd, %.not.i57
  br i1 %or.cond318, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k, %.loopexit
  %.sroa.12.0.i644 = phi i64 [ undef, %bb.k ], [ %.sroa.12.2.i.ph.lcssa464, %.loopexit ]
  %.sroa.9.0.i643 = phi i64 [ undef, %bb.k ], [ %.sroa.9.2.i.ph.lcssa471, %.loopexit ]
  %.sroa.023.0.i642 = phi i64 [ 0, %bb.k ], [ %.sroa.023.1.i.ph.lcssa478, %.loopexit ]
  %.sroa.525.0.i641 = phi i64 [ undef, %bb.k ], [ %.sroa.525.2.i.ph.lcssa485, %.loopexit ]
  %.sroa.0228.0640 = phi i64 [ 0, %bb.k ], [ %spec.select313, %.loopexit ] ; 11 uses
  %i.bd = icmp eq i64 %.sroa.0228.0640, 4         ; 2 uses
  %i.be = add nuw nsw i64 %.sroa.0228.0640, 1
  %spec.select313 = select i1 %i.bd, i64 4, i64 %i.be ; 2 uses
  %i.bf = icmp eq i64 %.sroa.0228.0640, 0
  %i.bg = add i64 %.sroa.0228.0640, %.sroa.0.0    ; 2 uses
  %i.bh = sub i64 %i.bg, %i.u                     ; 5 uses
  %i.bi = icmp ult i64 %i.bh, %i.w                ; 2 uses
  %i.bj = getelementptr inbounds nuw [4 x i8], ptr %i.y, i64 %i.bh ; 2 uses
  %i.bk = sub i64 %i.l, %i.bg
  br label %.lr.ph

bb.m:                                             ; preds = %.loopexit
  %i.bl = trunc nuw i64 %.sroa.023.1.i.ph.lcssa478 to i1
  br i1 %i.bl, label %.loopexit395, label %_RINvNtNtCsiqiOkcJdymw_7similar10algorithms5myers21try_emit_front_anchorINtNtB4_5utils12OffsetLookupmEB17_INtNtB4_4hook12NoFinishHookQQINtNtB4_7compact7CompactB17_B17_INtNtB4_7replace7ReplaceNtNtB4_7capture7CaptureEEEECskXhPDodhyTq_6mdtest.exit

.loopexit395:                                     ; preds = %bb.aa, %bb.m
  %.sroa.525.1.i = phi i64 [ %.sroa.525.2.i.ph.lcssa485, %bb.m ], [ %.sroa.0228.0640, %bb.aa ] ; 4 uses
  %.sroa.9.1.i = phi i64 [ %.sroa.9.2.i.ph.lcssa471, %bb.m ], [ %.us-phi548, %bb.aa ] ; 4 uses
  %.sroa.12.1.i = phi i64 [ %.sroa.12.2.i.ph.lcssa464, %bb.m ], [ %.sroa.01.0.i.lcssa, %bb.aa ] ; 3 uses
  %i.bm = icmp eq i64 %.sroa.525.1.i, 0
  %i.bn = icmp eq i64 %.sroa.9.1.i, 0             ; 2 uses
  br i1 %i.bm, label %bb.ai, label %bb.aj

.lr.ph.split.split:                               ; preds = %.lr.ph.split, %bb.o
  %.sroa.0229.0523 = phi i64 [ %spec.select315, %bb.o ], [ %.sroa.0229.0.ph635, %.lr.ph.split ] ; 3 uses
  %i.bo = icmp eq i64 %.sroa.0229.0523, 4         ; 3 uses
  %i.bp = add nuw nsw i64 %.sroa.0229.0523, 1
  %spec.select315 = select i1 %i.bo, i64 4, i64 %i.bp ; 3 uses
  %i.bq = call noundef zeroext i1 @_RNvNtCsiqiOkcJdymw_7similar16deadline_support17deadline_exceeded(i64 %9, i32 noundef range(i32 -1, 1000000000) %10), !noalias !1282
  br i1 %i.bq, label %_RINvNtNtCsiqiOkcJdymw_7similar10algorithms5myers21try_emit_front_anchorINtNtB4_5utils12OffsetLookupmEB17_INtNtB4_4hook12NoFinishHookQQINtNtB4_7compact7CompactB17_B17_INtNtB4_7replace7ReplaceNtNtB4_7capture7CaptureEEEECskXhPDodhyTq_6mdtest.exit, label %bb.n

bb.n:                                             ; preds = %.lr.ph.split.split
  %.not647 = icmp eq i64 %.sroa.0229.0523, 0
  br i1 %.not647, label %bb.p, label %bb.o

bb.o:                                             ; preds = %bb.n, %_RNvXs3_NtNtCsiqiOkcJdymw_7similar10algorithms5utilsINtB5_12OffsetLookupmEINtNtNtCs4NRVxsYgnAr_4core3ops5index5IndexjE5indexCskXhPDodhyTq_6mdtest.exit30
  %.not.i59 = icmp ugt i64 %spec.select315, 4
  %or.cond319 = select i1 %i.bo, i1 true, i1 %.not.i59
  br i1 %or.cond319, label %.loopexit, label %.lr.ph.split.split

bb.p:                                             ; preds = %bb.n
  br i1 %i.bb, label %_RNvXs3_NtNtCsiqiOkcJdymw_7similar10algorithms5utilsINtB5_12OffsetLookupmEINtNtNtCs4NRVxsYgnAr_4core3ops5index5IndexjE5indexCskXhPDodhyTq_6mdtest.exit31, label %.split.loopexit1078

.split.loopexit1078:                              ; preds = %bb.p
  %i.br = sub i64 %.sroa.0195.0, %i.o
  br label %.split

.split:                                           ; preds = %bb.x, %.split.loopexit1078
  %.us-phi = phi i64 [ %i.br, %.split.loopexit1078 ], [ %i.ci, %bb.x ]
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking18panic_bounds_check(i64 noundef %.us-phi, i64 noundef %i.q, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @79) #14, !noalias !1283
  unreachable

_RNvXs3_NtNtCsiqiOkcJdymw_7similar10algorithms5utilsINtB5_12OffsetLookupmEINtNtNtCs4NRVxsYgnAr_4core3ops5index5IndexjE5indexCskXhPDodhyTq_6mdtest.exit31: ; preds = %bb.p
  br i1 %i.bi, label %_RNvXs3_NtNtCsiqiOkcJdymw_7similar10algorithms5utilsINtB5_12OffsetLookupmEINtNtNtCs4NRVxsYgnAr_4core3ops5index5IndexjE5indexCskXhPDodhyTq_6mdtest.exit30, label %.split533

.split533:                                        ; preds = %_RNvXs3_NtNtCsiqiOkcJdymw_7similar10algorithms5utilsINtB5_12OffsetLookupmEINtNtNtCs4NRVxsYgnAr_4core3ops5index5IndexjE5indexCskXhPDodhyTq_6mdtest.exit31, %_RNvXs3_NtNtCsiqiOkcJdymw_7similar10algorithms5utilsINtB5_12OffsetLookupmEINtNtNtCs4NRVxsYgnAr_4core3ops5index5IndexjE5indexCskXhPDodhyTq_6mdtest.exit31.us
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking18panic_bounds_check(i64 noundef %i.bh, i64 noundef %i.w, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @80) #14, !noalias !1284
  unreachable

_RNvXs3_NtNtCsiqiOkcJdymw_7similar10algorithms5utilsINtB5_12OffsetLookupmEINtNtNtCs4NRVxsYgnAr_4core3ops5index5IndexjE5indexCskXhPDodhyTq_6mdtest.exit30: ; preds = %_RNvXs3_NtNtCsiqiOkcJdymw_7similar10algorithms5utilsINtB5_12OffsetLookupmEINtNtNtCs4NRVxsYgnAr_4core3ops5index5IndexjE5indexCskXhPDodhyTq_6mdtest.exit31
  %.val49 = load i32, ptr %i.bc, align 4, !noundef !3
  %.val50 = load i32, ptr %i.bj, align 4, !noundef !3
  %.not316 = icmp eq i32 %.val49, %.val50
  br i1 %.not316, label %.split537, label %bb.o

.split537.loopexit:                               ; preds = %_RNvXs3_NtNtCsiqiOkcJdymw_7similar10algorithms5utilsINtB5_12OffsetLookupmEINtNtNtCs4NRVxsYgnAr_4core3ops5index5IndexjE5indexCskXhPDodhyTq_6mdtest.exit30.us
  %.pre878 = sub i64 %i.m, %i.ch
  br label %.split537

.split537:                                        ; preds = %_RNvXs3_NtNtCsiqiOkcJdymw_7similar10algorithms5utilsINtB5_12OffsetLookupmEINtNtNtCs4NRVxsYgnAr_4core3ops5index5IndexjE5indexCskXhPDodhyTq_6mdtest.exit30, %.split537.loopexit
  %.pre-phi = phi i64 [ %.pre878, %.split537.loopexit ], [ %i.at, %_RNvXs3_NtNtCsiqiOkcJdymw_7similar10algorithms5utilsINtB5_12OffsetLookupmEINtNtNtCs4NRVxsYgnAr_4core3ops5index5IndexjE5indexCskXhPDodhyTq_6mdtest.exit30 ]
  %.us-phi543 = phi i64 [ %i.ch, %.split537.loopexit ], [ %.sroa.0195.0, %_RNvXs3_NtNtCsiqiOkcJdymw_7similar10algorithms5utilsINtB5_12OffsetLookupmEINtNtNtCs4NRVxsYgnAr_4core3ops5index5IndexjE5indexCskXhPDodhyTq_6mdtest.exit30 ]
  %.us-phi546 = phi i1 [ %i.ce, %.split537.loopexit ], [ %i.bo, %_RNvXs3_NtNtCsiqiOkcJdymw_7similar10algorithms5utilsINtB5_12OffsetLookupmEINtNtNtCs4NRVxsYgnAr_4core3ops5index5IndexjE5indexCskXhPDodhyTq_6mdtest.exit30 ]
  %.us-phi547 = phi i64 [ %spec.select315.us, %.split537.loopexit ], [ %spec.select315, %_RNvXs3_NtNtCsiqiOkcJdymw_7similar10algorithms5utilsINtB5_12OffsetLookupmEINtNtNtCs4NRVxsYgnAr_4core3ops5index5IndexjE5indexCskXhPDodhyTq_6mdtest.exit30 ] ; 2 uses
  %.us-phi548 = phi i64 [ %.sroa.0229.0523.us, %.split537.loopexit ], [ 0, %_RNvXs3_NtNtCsiqiOkcJdymw_7similar10algorithms5utilsINtB5_12OffsetLookupmEINtNtNtCs4NRVxsYgnAr_4core3ops5index5IndexjE5indexCskXhPDodhyTq_6mdtest.exit30 ] ; 6 uses
  %.sroa.0.0.i63 = call noundef i64 @llvm.umin.i64(i64 %.pre-phi, i64 %i.bk) ; 3 uses
  %.not648 = icmp eq i64 %.sroa.0.0.i63, 0
  br i1 %.not648, label %.outer, label %.lr.ph632

.lr.ph632:                                        ; preds = %.split537
  %i.bs = sub i64 %.us-phi543, %i.o               ; 2 uses
  br label %bb.q

bb.q:                                             ; preds = %.lr.ph632, %bb.v
  %.sroa.01.0.i631 = phi i64 [ 0, %.lr.ph632 ], [ %i.cc, %bb.v ] ; 5 uses
  %i.bt = and i64 %.sroa.01.0.i631, 1023
  %i.bu = icmp eq i64 %i.bt, 0
  br i1 %i.bu, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  %i.bv = call noundef zeroext i1 @_RNvNtCsiqiOkcJdymw_7similar16deadline_support17deadline_exceeded(i64 %9, i32 noundef range(i32 -1, 1000000000) %10), !noalias !1282
  br i1 %i.bv, label %_RINvNtNtCsiqiOkcJdymw_7similar10algorithms5myers21try_emit_front_anchorINtNtB4_5utils12OffsetLookupmEB17_INtNtB4_4hook12NoFinishHookQQINtNtB4_7compact7CompactB17_B17_INtNtB4_7replace7ReplaceNtNtB4_7capture7CaptureEEEECskXhPDodhyTq_6mdtest.exit, label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.q
  %i.bw = add nuw i64 %i.bs, %.sroa.01.0.i631     ; 2 uses
  %i.bx = icmp ult i64 %i.bw, %i.q
  br i1 %i.bx, label %_RNvXs3_NtNtCsiqiOkcJdymw_7similar10algorithms5utilsINtB5_12OffsetLookupmEINtNtNtCs4NRVxsYgnAr_4core3ops5index5IndexjE5indexCskXhPDodhyTq_6mdtest.exit29, label %bb.t

bb.t:                                             ; preds = %bb.s
  %umax = call i64 @llvm.umax.i64(i64 %i.q, i64 %i.bs)
end_hunk_8
begin_hunk_9_@_RINvNtNtCsiqiOkcJdymw_7similar10algorithms5myers7conquerINtNtB4_5utils12OffsetLookupmEBS_INtNtB4_4hook12NoFinishHookQQINtNtB4_7compact7CompactBS_BS_INtNtB4_7replace7ReplaceNtNtB4_7capture7CaptureEEEECskXhPDodhyTq_6mdtest:bb.a
  store i64 %.sroa.9.1.i, ptr %.sroa.6273.0..sroa_idx, align 8, !noalias !1297
  %i.dy = add i64 %i.ds, 1
  store i64 %i.dy, ptr %i.dr, align 8, !alias.scope !1296, !noalias !1297
  br label %bb.ak

bb.ao:                                            ; preds = %bb.aj
  call void @llvm.experimental.noalias.scope.decl(metadata !1299)
  call void @llvm.experimental.noalias.scope.decl(metadata !1300), !noalias !1288
  %i.dz = load ptr, ptr %0, align 8, !alias.scope !1301, !noalias !1288, !nonnull !3, !align !5, !noundef !3 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1302), !noalias !1288
  %i.ea = load ptr, ptr %i.dz, align 8, !alias.scope !1302, !noalias !1303, !nonnull !3, !align !5, !noundef !3 ; 3 uses
  %i.eb = getelementptr inbounds nuw i8, ptr %i.ea, i64 120 ; 2 uses
  %i.ec = getelementptr inbounds nuw i8, ptr %i.ea, i64 136 ; 2 uses
  %i.ed = load i64, ptr %i.ec, align 8, !alias.scope !1304, !noalias !1305, !noundef !3 ; 3 uses
  %i.ee = load i64, ptr %i.eb, align 8, !range !6, !alias.scope !1304, !noalias !1305, !noundef !3
  %i.ef = icmp eq i64 %i.ed, %i.ee
  br i1 %i.ef, label %bb.ap, label %_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCsiqiOkcJdymw_7similar5types6DiffOpE8push_mutCskXhPDodhyTq_6mdtest.exit68

bb.ap:                                            ; preds = %bb.ao
  call void @_RNvMs3_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecNtNtCsiqiOkcJdymw_7similar5types6DiffOpE8grow_oneBP_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.eb), !noalias !1306
  br label %_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCsiqiOkcJdymw_7similar5types6DiffOpE8push_mutCskXhPDodhyTq_6mdtest.exit68

_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCsiqiOkcJdymw_7similar5types6DiffOpE8push_mutCskXhPDodhyTq_6mdtest.exit68: ; preds = %bb.ao, %bb.ap
  %i.eg = getelementptr inbounds nuw i8, ptr %i.ea, i64 128
  %i.eh = load ptr, ptr %i.eg, align 8, !alias.scope !1304, !noalias !1305, !nonnull !3, !noundef !3
  %i.ei = getelementptr inbounds nuw [40 x i8], ptr %i.eh, i64 %i.ed ; 4 uses
  store i64 1, ptr %i.ei, align 8, !noalias !1305
  %.sroa.4256.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ei, i64 8
  store i64 %.sroa.0.0, ptr %.sroa.4256.0..sroa_idx, align 8, !noalias !1305
  %.sroa.5257.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ei, i64 16
  store i64 %.sroa.525.1.i, ptr %.sroa.5257.0..sroa_idx, align 8, !noalias !1305
  %.sroa.6258.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ei, i64 24
  store i64 %.sroa.0195.0, ptr %.sroa.6258.0..sroa_idx, align 8, !noalias !1305
  %i.ej = add i64 %i.ed, 1
  store i64 %i.ej, ptr %i.ec, align 8, !alias.scope !1304, !noalias !1305
  br label %bb.ak

bb.aq:                                            ; preds = %bb.aj
  call void @llvm.experimental.noalias.scope.decl(metadata !1307)
  call void @llvm.experimental.noalias.scope.decl(metadata !1308), !noalias !1288
  %i.ek = load ptr, ptr %0, align 8, !alias.scope !1309, !noalias !1288, !nonnull !3, !align !5, !noundef !3 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1310), !noalias !1288
  %i.el = load ptr, ptr %i.ek, align 8, !alias.scope !1310, !noalias !1311, !nonnull !3, !align !5, !noundef !3 ; 3 uses
  %i.em = getelementptr inbounds nuw i8, ptr %i.el, i64 120 ; 4 uses
  %i.en = getelementptr inbounds nuw i8, ptr %i.el, i64 136 ; 3 uses
  %i.eo = load i64, ptr %i.en, align 8, !alias.scope !1312, !noalias !1313, !noundef !3 ; 4 uses
  %i.ep = load i64, ptr %i.em, align 8, !range !6, !alias.scope !1312, !noalias !1313, !noundef !3
  %i.eq = icmp eq i64 %i.eo, %i.ep
  br i1 %i.eq, label %bb.ar, label %_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCsiqiOkcJdymw_7similar5types6DiffOpE8push_mutCskXhPDodhyTq_6mdtest.exit69

bb.ar:                                            ; preds = %bb.aq
  call void @_RNvMs3_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecNtNtCsiqiOkcJdymw_7similar5types6DiffOpE8grow_oneBP_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.em), !noalias !1314
  br label %_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCsiqiOkcJdymw_7similar5types6DiffOpE8push_mutCskXhPDodhyTq_6mdtest.exit69

_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCsiqiOkcJdymw_7similar5types6DiffOpE8push_mutCskXhPDodhyTq_6mdtest.exit69: ; preds = %bb.aq, %bb.ar
  %i.er = getelementptr inbounds nuw i8, ptr %i.el, i64 128 ; 2 uses
  %i.es = load ptr, ptr %i.er, align 8, !alias.scope !1312, !noalias !1313, !nonnull !3, !noundef !3
  %i.et = getelementptr inbounds nuw [40 x i8], ptr %i.es, i64 %i.eo ; 4 uses
  store i64 1, ptr %i.et, align 8, !noalias !1313
  %.sroa.4276.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.et, i64 8
  store i64 %.sroa.0.0, ptr %.sroa.4276.0..sroa_idx, align 8, !noalias !1313
  %.sroa.5277.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.et, i64 16
  store i64 %.sroa.525.1.i, ptr %.sroa.5277.0..sroa_idx, align 8, !noalias !1313
  %.sroa.6278.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.et, i64 24
  store i64 %.sroa.0195.0, ptr %.sroa.6278.0..sroa_idx, align 8, !noalias !1313
  %i.eu = add i64 %i.eo, 1                        ; 3 uses
  store i64 %i.eu, ptr %i.en, align 8, !alias.scope !1312, !noalias !1313
  %i.ev = load i64, ptr %i.em, align 8, !range !6, !alias.scope !1315, !noalias !1313, !noundef !3
  %i.ew = icmp eq i64 %i.eu, %i.ev
  br i1 %i.ew, label %bb.as, label %_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCsiqiOkcJdymw_7similar5types6DiffOpE8push_mutCskXhPDodhyTq_6mdtest.exit70

bb.as:                                            ; preds = %_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCsiqiOkcJdymw_7similar5types6DiffOpE8push_mutCskXhPDodhyTq_6mdtest.exit69
  call void @_RNvMs3_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecNtNtCsiqiOkcJdymw_7similar5types6DiffOpE8grow_oneBP_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.em), !noalias !1316
  br label %_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCsiqiOkcJdymw_7similar5types6DiffOpE8push_mutCskXhPDodhyTq_6mdtest.exit70

_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCsiqiOkcJdymw_7similar5types6DiffOpE8push_mutCskXhPDodhyTq_6mdtest.exit70: ; preds = %_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCsiqiOkcJdymw_7similar5types6DiffOpE8push_mutCskXhPDodhyTq_6mdtest.exit69, %bb.as
  %i.ex = load ptr, ptr %i.er, align 8, !alias.scope !1315, !noalias !1313, !nonnull !3, !noundef !3
  %i.ey = getelementptr inbounds nuw [40 x i8], ptr %i.ex, i64 %i.eu ; 4 uses
  store i64 2, ptr %i.ey, align 8, !noalias !1313
  %.sroa.4281.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ey, i64 8
  store i64 %.sroa.0.0, ptr %.sroa.4281.0..sroa_idx, align 8, !noalias !1313
  %.sroa.5282.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ey, i64 16
  store i64 %.sroa.0195.0, ptr %.sroa.5282.0..sroa_idx, align 8, !noalias !1313
  %.sroa.6283.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ey, i64 24
  store i64 %.sroa.9.1.i, ptr %.sroa.6283.0..sroa_idx, align 8, !noalias !1313
  %i.ez = add i64 %i.eo, 2
  store i64 %i.ez, ptr %i.en, align 8, !alias.scope !1315, !noalias !1313
  br label %bb.ak

_RINvNtNtCsiqiOkcJdymw_7similar10algorithms5myers21try_emit_front_anchorINtNtB4_5utils12OffsetLookupmEB17_INtNtB4_4hook12NoFinishHookQQINtNtB4_7compact7CompactB17_B17_INtNtB4_7replace7ReplaceNtNtB4_7capture7CaptureEEEECskXhPDodhyTq_6mdtest.exit: ; preds = %.lr.ph.split.split.us, %.lr.ph.split.split, %.lr.ph.split.us, %bb.r, %bb.g, %bb.j, %bb.m, %_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCsiqiOkcJdymw_7similar5types6DiffOpE8push_mutCskXhPDodhyTq_6mdtest.exit66
  %.sroa.0195.2 = phi i64 [ %.sroa.0195.0, %bb.g ], [ %.sroa.0195.0, %bb.j ], [ %.sroa.0195.0, %bb.m ], [ %i.do, %_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCsiqiOkcJdymw_7similar5types6DiffOpE8push_mutCskXhPDodhyTq_6mdtest.exit66 ], [ %.sroa.0195.0, %.lr.ph.split.split ], [ %.sroa.0195.0, %.lr.ph.split.us ], [ %.sroa.0195.0, %bb.r ], [ %.sroa.0195.0, %.lr.ph.split.split.us ] ; 2 uses
  %.sroa.0.2 = phi i64 [ %.sroa.0.0, %bb.g ], [ %.sroa.0.0, %bb.j ], [ %.sroa.0.0, %bb.m ], [ %i.dn, %_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCsiqiOkcJdymw_7similar5types6DiffOpE8push_mutCskXhPDodhyTq_6mdtest.exit66 ], [ %.sroa.0.0, %.lr.ph.split.split ], [ %.sroa.0.0, %.lr.ph.split.us ], [ %.sroa.0.0, %bb.r ], [ %.sroa.0.0, %.lr.ph.split.split.us ] ; 2 uses
  %i.fa = icmp eq i64 %.sroa.0.2, %.sroa.0.0
  %i.fb = icmp eq i64 %.sroa.0195.2, %.sroa.0195.0
  %or.cond = select i1 %i.fa, i1 %i.fb, i1 false
  br i1 %or.cond, label %bb.f, label %bb.e

bb.at:                                            ; preds = %bb.f
  br i1 %i.ar, label %bb.ay, label %bb.aw

bb.au:                                            ; preds = %bb.f
  br i1 %i.ar, label %.thread, label %bb.av

bb.av:                                            ; preds = %.sink.split.i.thread, %_RINvNtNtCsiqiOkcJdymw_7similar10algorithms5myers27maybe_emit_small_side_exactINtNtB4_5utils12OffsetLookupmEB1d_INtNtB4_4hook12NoFinishHookQQINtNtB4_7compact7CompactB1d_B1d_INtNtB4_7replace7ReplaceNtNtB4_7capture7CaptureEEEECskXhPDodhyTq_6mdtest.exit.thread309, %_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCsiqiOkcJdymw_7similar5types6DiffOpE8push_mutCskXhPDodhyTq_6mdtest.exit71, %_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCsiqiOkcJdymw_7similar5types6DiffOpE8push_mutCskXhPDodhyTq_6mdtest.exit161, %_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCsiqiOkcJdymw_7similar5types6DiffOpE8push_mutCskXhPDodhyTq_6mdtest.exit160, %bb.gs, %bb.au
  %.not26 = icmp eq i64 %i.k, 0
  br i1 %.not26, label %bb.gz, label %bb.gx

bb.aw:                                            ; preds = %bb.at
  %i.fc = sub nuw i64 %i.l, %.sroa.0.0
  call void @llvm.experimental.noalias.scope.decl(metadata !1317)
  call void @llvm.experimental.noalias.scope.decl(metadata !1318)
  %i.fd = load ptr, ptr %0, align 8, !alias.scope !1319, !nonnull !3, !align !5, !noundef !3
  call void @llvm.experimental.noalias.scope.decl(metadata !1320)
  %i.fe = load ptr, ptr %i.fd, align 8, !alias.scope !1320, !noalias !1319, !nonnull !3, !align !5, !noundef !3 ; 3 uses
  %i.ff = getelementptr inbounds nuw i8, ptr %i.fe, i64 120 ; 2 uses
  %i.fg = getelementptr inbounds nuw i8, ptr %i.fe, i64 136 ; 2 uses
  %i.fh = load i64, ptr %i.fg, align 8, !alias.scope !1321, !noalias !1322, !noundef !3 ; 3 uses
  %i.fi = load i64, ptr %i.ff, align 8, !range !6, !alias.scope !1321, !noalias !1322, !noundef !3
  %i.fj = icmp eq i64 %i.fh, %i.fi
  br i1 %i.fj, label %bb.ax, label %_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCsiqiOkcJdymw_7similar5types6DiffOpE8push_mutCskXhPDodhyTq_6mdtest.exit71

bb.ax:                                            ; preds = %bb.aw
  call void @_RNvMs3_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecNtNtCsiqiOkcJdymw_7similar5types6DiffOpE8grow_oneBP_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.ff), !noalias !1323
  br label %_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCsiqiOkcJdymw_7similar5types6DiffOpE8push_mutCskXhPDodhyTq_6mdtest.exit71

_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCsiqiOkcJdymw_7similar5types6DiffOpE8push_mutCskXhPDodhyTq_6mdtest.exit71: ; preds = %bb.aw, %bb.ax
  %i.fk = getelementptr inbounds nuw i8, ptr %i.fe, i64 128
  %i.fl = load ptr, ptr %i.fk, align 8, !alias.scope !1321, !noalias !1322, !nonnull !3, !noundef !3
  %i.fm = getelementptr inbounds nuw [40 x i8], ptr %i.fl, i64 %i.fh ; 4 uses
  store i64 1, ptr %i.fm, align 8, !noalias !1322
  %.sroa.4251.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.fm, i64 8
  store i64 %.sroa.0.0, ptr %.sroa.4251.0..sroa_idx, align 8, !noalias !1322
  %.sroa.5252.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.fm, i64 16
  store i64 %i.fc, ptr %.sroa.5252.0..sroa_idx, align 8, !noalias !1322
  %.sroa.6253.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.fm, i64 24
  store i64 %.sroa.0195.0, ptr %.sroa.6253.0..sroa_idx, align 8, !noalias !1322
  %i.fn = add i64 %i.fh, 1
  store i64 %i.fn, ptr %i.fg, align 8, !alias.scope !1321, !noalias !1322
  br label %bb.av

bb.ay:                                            ; preds = %bb.at
  %i.fo = call noundef zeroext i1 @_RNvNtCsiqiOkcJdymw_7similar16deadline_support17deadline_exceeded(i64 %9, i32 noundef range(i32 -1, 1000000000) %10), !noalias !1324
  br i1 %i.fo, label %_RINvNtNtCsiqiOkcJdymw_7similar10algorithms5myers27maybe_emit_small_side_exactINtNtB4_5utils12OffsetLookupmEB1d_INtNtB4_4hook12NoFinishHookQQINtNtB4_7compact7CompactB1d_B1d_INtNtB4_7replace7ReplaceNtNtB4_7capture7CaptureEEEECskXhPDodhyTq_6mdtest.exit.thread, label %bb.az

bb.az:                                            ; preds = %bb.ay
  %i.fp = sub nuw i64 %i.l, %.sroa.0.0            ; 22 uses
  %i.fq = sub nuw i64 %i.m, %.sroa.0195.0         ; 22 uses
  %i.fr = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %i.fp, i64 %i.fq) ; 2 uses
  %i.fs = extractvalue { i64, i1 } %i.fr, 1
  br i1 %i.fs, label %_RINvNtNtCsiqiOkcJdymw_7similar10algorithms5myers27maybe_emit_small_side_exactINtNtB4_5utils12OffsetLookupmEB1d_INtNtB4_4hook12NoFinishHookQQINtNtB4_7compact7CompactB1d_B1d_INtNtB4_7replace7ReplaceNtNtB4_7capture7CaptureEEEECskXhPDodhyTq_6mdtest.exit.thread, label %bb.ba, !prof !7

bb.ba:                                            ; preds = %bb.az
  %i.ft = extractvalue { i64, i1 } %i.fr, 0
  %.sroa.0.0.i73 = call noundef i64 @llvm.umax.i64(i64 %i.fq, i64 %i.fp)
  %.sroa.0.0.i72 = call noundef i64 @llvm.umin.i64(i64 %i.fq, i64 %i.fp)
  %i.fu = add i64 %.sroa.0.0.i72, -65
  %or.cond.i27 = icmp ult i64 %i.fu, -64
  %i.fv = icmp ult i64 %.sroa.0.0.i73, 512
  %or.cond1.i = or i1 %i.fv, %or.cond.i27
  %i.fw = icmp ugt i64 %i.ft, 64000000
  %or.cond3.i = select i1 %or.cond1.i, i1 true, i1 %i.fw
  br i1 %or.cond3.i, label %_RINvNtNtCsiqiOkcJdymw_7similar10algorithms5myers27maybe_emit_small_side_exactINtNtB4_5utils12OffsetLookupmEB1d_INtNtB4_4hook12NoFinishHookQQINtNtB4_7compact7CompactB1d_B1d_INtNtB4_7replace7ReplaceNtNtB4_7capture7CaptureEEEECskXhPDodhyTq_6mdtest.exit.thread, label %bb.bb

bb.bb:                                            ; preds = %bb.ba
  %.not.i28 = icmp ugt i64 %i.fp, %i.fq
  %.val51 = load ptr, ptr %0, align 8             ; 20 uses
  %i.fx = call noundef zeroext i1 @_RNvNtCsiqiOkcJdymw_7similar16deadline_support17deadline_exceeded(i64 %9, i32 noundef range(i32 -1, 1000000000) %10), !noalias !3 ; 2 uses
  br i1 %.not.i28, label %bb.bc, label %bb.dw

bb.bc:                                            ; preds = %bb.bb
  br i1 %i.fx, label %_RINvNtNtCsiqiOkcJdymw_7similar10algorithms5myers27maybe_emit_small_side_exactINtNtB4_5utils12OffsetLookupmEB1d_INtNtB4_4hook12NoFinishHookQQINtNtB4_7compact7CompactB1d_B1d_INtNtB4_7replace7ReplaceNtNtB4_7capture7CaptureEEEECskXhPDodhyTq_6mdtest.exit.thread, label %bb.bd

bb.bd:                                            ; preds = %bb.bc
  %i.fy = add i64 %i.fp, 1                        ; 11 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !1325
  %i.fz = add nuw i64 %i.fq, 1
  %i.ga = mul i64 %i.fy, %i.fz                    ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1326)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !1327
  call void @_RNvMs4_NtCscdodAO9FK5_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCskXhPDodhyTq_6mdtest(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.c, i64 noundef %i.ga, i1 noundef zeroext true, i64 noundef 1, i64 noundef 1), !noalias !1327
  %i.gb = load i64, ptr %i.c, align 8, !range !8, !noalias !1327, !noundef !3
  %i.gc = trunc nuw i64 %i.gb to i1
  %i.gd = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.ge = load i64, ptr %i.gd, align 8, !range !9, !noalias !1327, !noundef !3 ; 2 uses
  %i.gf = getelementptr inbounds nuw i8, ptr %i.c, i64 16 ; 2 uses
  br i1 %i.gc, label %bb.be, label %.lr.ph469.i, !prof !7

bb.be:                                            ; preds = %bb.bd
  %i.gg = load i64, ptr %i.gf, align 8, !noalias !1327
  call void @_RNvNtCscdodAO9FK5_5alloc7raw_vec12handle_error(i64 noundef %i.ge, i64 %i.gg) #14, !noalias !1327
  unreachable

.lr.ph469.i:                                      ; preds = %bb.bd
  %i.gh = load ptr, ptr %i.gf, align 8, !noalias !1327, !nonnull !3, !noundef !3
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !1327
  store i64 %i.ge, ptr %i.d, align 8, !alias.scope !1326, !noalias !1325
  %i.gi = getelementptr inbounds nuw i8, ptr %i.d, i64 8 ; 7 uses
  store ptr %i.gh, ptr %i.gi, align 8, !alias.scope !1326, !noalias !1325
  %i.gj = getelementptr inbounds nuw i8, ptr %i.d, i64 16 ; 7 uses
  store i64 %i.ga, ptr %i.gj, align 8, !alias.scope !1326, !noalias !1325
  %invariant.op470.i = sub i64 %.sroa.0195.0, %i.o ; 3 uses
  %invariant.op.i = sub i64 %.sroa.0.0, %i.u      ; 3 uses
  br label %.lr.ph469.split.i

.lr.ph469.split.i:                                ; preds = %.lr.ph469.i, %..loopexit39_crit_edge.split.us.i
  %.sroa.0102.0468.i = phi i64 [ %i.gk, %..loopexit39_crit_edge.split.us.i ], [ %i.fq, %.lr.ph469.i ] ; 2 uses
  %i.gk = add i64 %.sroa.0102.0468.i, -1          ; 4 uses
  %i.gl = invoke noundef zeroext i1 @_RNvNtCsiqiOkcJdymw_7similar16deadline_support17deadline_exceeded(i64 %9, i32 noundef range(i32 -1, 1000000000) %10)
          to label %bb.dh unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !1325

._crit_edge496.i:                                 ; preds = %bb.cu
  br i1 %i.ma, label %bb.bf, label %bb.bh

.lr.ph495.i:                                      ; preds = %..loopexit39_crit_edge.split.us.i, %bb.cu
  %.sroa.05.0.not494.i = phi i1 [ false, %bb.cu ], [ true, %..loopexit39_crit_edge.split.us.i ] ; 3 uses
  %.sroa.09.0493.i = phi i64 [ %.sroa.09.3.i, %bb.cu ], [ 0, %..loopexit39_crit_edge.split.us.i ] ; 12 uses
  %.sroa.038.0492.i = phi i64 [ %.sroa.038.3.i, %bb.cu ], [ 0, %..loopexit39_crit_edge.split.us.i ] ; 17 uses
  %i.gm = and i64 %.sroa.038.0492.i, 1023
  %i.gn = icmp eq i64 %i.gm, 0
  %or.cond170.i = select i1 %.sroa.05.0.not494.i, i1 %i.gn, i1 false ; 2 uses
  br i1 %or.cond170.i, label %bb.bl, label %bb.bk

bb.bf:                                            ; preds = %._crit_edge496.i
  %i.go = add i64 %.sroa.038.3.i, %.sroa.0.0      ; 2 uses
  %i.gp = sub nuw i64 %i.fp, %.sroa.038.3.i
  %i.gq = add i64 %.sroa.09.3.i, %.sroa.0195.0    ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val51) ]
  %i.gr = load ptr, ptr %.val51, align 8, !alias.scope !1328, !noalias !1329, !nonnull !3, !align !5, !noundef !3 ; 3 uses
  %i.gs = getelementptr inbounds nuw i8, ptr %i.gr, i64 120 ; 2 uses
  %i.gt = getelementptr inbounds nuw i8, ptr %i.gr, i64 136 ; 2 uses
  %i.gu = load i64, ptr %i.gt, align 8, !alias.scope !1330, !noalias !1325, !noundef !3 ; 3 uses
  %i.gv = load i64, ptr %i.gs, align 8, !range !6, !alias.scope !1330, !noalias !1325, !noundef !3
  %i.gw = icmp eq i64 %i.gu, %i.gv
  br i1 %i.gw, label %bb.bg, label %_RNvXs0_NtNtCsiqiOkcJdymw_7similar10algorithms4hookINtB5_12NoFinishHookQQINtNtB7_7compact7CompactINtNtB7_5utils12OffsetLookupmEB1w_INtNtB7_7replace7ReplaceNtNtB7_7capture7CaptureEEENtB5_8DiffHook6deleteCskXhPDodhyTq_6mdtest.exit181.i

bb.bg:                                            ; preds = %bb.bf
  invoke void @_RNvMs3_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecNtNtCsiqiOkcJdymw_7similar5types6DiffOpE8grow_oneBP_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.gs)
          to label %_RNvXs0_NtNtCsiqiOkcJdymw_7similar10algorithms4hookINtB5_12NoFinishHookQQINtNtB7_7compact7CompactINtNtB7_5utils12OffsetLookupmEB1w_INtNtB7_7replace7ReplaceNtNtB7_7capture7CaptureEEENtB5_8DiffHook6deleteCskXhPDodhyTq_6mdtest.exit181.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !1325

_RNvXs0_NtNtCsiqiOkcJdymw_7similar10algorithms4hookINtB5_12NoFinishHookQQINtNtB7_7compact7CompactINtNtB7_5utils12OffsetLookupmEB1w_INtNtB7_7replace7ReplaceNtNtB7_7capture7CaptureEEENtB5_8DiffHook6deleteCskXhPDodhyTq_6mdtest.exit181.i: ; preds = %bb.bg, %bb.bf
  %i.gx = getelementptr inbounds nuw i8, ptr %i.gr, i64 128
  %i.gy = load ptr, ptr %i.gx, align 8, !alias.scope !1330, !noalias !1325, !nonnull !3, !noundef !3
  %i.gz = getelementptr inbounds nuw [40 x i8], ptr %i.gy, i64 %i.gu ; 4 uses
  store i64 1, ptr %i.gz, align 8, !noalias !1325
  %.sroa.42.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.gz, i64 8
  store i64 %i.go, ptr %.sroa.42.0..sroa_idx.i, align 8, !noalias !1325
  %.sroa.53.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.gz, i64 16
  store i64 %i.gp, ptr %.sroa.53.0..sroa_idx.i, align 8, !noalias !1325
  %.sroa.64.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.gz, i64 24
  store i64 %i.gq, ptr %.sroa.64.0..sroa_idx.i, align 8, !noalias !1325
  %i.ha = add i64 %i.gu, 1
  store i64 %i.ha, ptr %i.gt, align 8, !alias.scope !1330, !noalias !1325
  br i1 %i.lz, label %bb.bi, label %.sink.split.i.thread

bb.bh:                                            ; preds = %._crit_edge496.i
  br i1 %i.lz, label %._crit_edge880, label %.sink.split.i.thread

._crit_edge880:                                   ; preds = %bb.bh
  %.pre881 = add i64 %.sroa.038.3.i, %.sroa.0.0
  %.pre883 = add i64 %.sroa.09.3.i, %.sroa.0195.0
  br label %bb.bi

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %bb.di, %bb.bl, %bb.bw, %bb.cj, %bb.cv, %bb.cx, %bb.bx, %bb.ck, %.lr.ph469.split.i, %bb.dt, %.invoke.i, %bb.bj, %bb.bg
  %lpad.loopexit.split-lp1548 = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VechEECskXhPDodhyTq_6mdtest(ptr noalias noundef align 8 dereferenceable(24) %i.d) #15
          to label %common.resume unwind label %bb.dv, !noalias !1325

bb.bi:                                            ; preds = %._crit_edge880, %_RNvXs0_NtNtCsiqiOkcJdymw_7similar10algorithms4hookINtB5_12NoFinishHookQQINtNtB7_7compact7CompactINtNtB7_5utils12OffsetLookupmEB1w_INtNtB7_7replace7ReplaceNtNtB7_7capture7CaptureEEENtB5_8DiffHook6deleteCskXhPDodhyTq_6mdtest.exit181.i
  %.pre-phi884 = phi i64 [ %.pre883, %._crit_edge880 ], [ %i.gq, %_RNvXs0_NtNtCsiqiOkcJdymw_7similar10algorithms4hookINtB5_12NoFinishHookQQINtNtB7_7compact7CompactINtNtB7_5utils12OffsetLookupmEB1w_INtNtB7_7replace7ReplaceNtNtB7_7capture7CaptureEEENtB5_8DiffHook6deleteCskXhPDodhyTq_6mdtest.exit181.i ]
  %.pre-phi882 = phi i64 [ %.pre881, %._crit_edge880 ], [ %i.go, %_RNvXs0_NtNtCsiqiOkcJdymw_7similar10algorithms4hookINtB5_12NoFinishHookQQINtNtB7_7compact7CompactINtNtB7_5utils12OffsetLookupmEB1w_INtNtB7_7replace7ReplaceNtNtB7_7capture7CaptureEEENtB5_8DiffHook6deleteCskXhPDodhyTq_6mdtest.exit181.i ]
  %i.hb = sub nuw i64 %i.fq, %.sroa.09.3.i
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val51) ]
  %i.hc = load ptr, ptr %.val51, align 8, !alias.scope !1331, !noalias !1332, !nonnull !3, !align !5, !noundef !3 ; 3 uses
  %i.hd = getelementptr inbounds nuw i8, ptr %i.hc, i64 120 ; 2 uses
  %i.he = getelementptr inbounds nuw i8, ptr %i.hc, i64 136 ; 2 uses
  %i.hf = load i64, ptr %i.he, align 8, !alias.scope !1333, !noalias !1325, !noundef !3 ; 3 uses
  %i.hg = load i64, ptr %i.hd, align 8, !range !6, !alias.scope !1333, !noalias !1325, !noundef !3
  %i.hh = icmp eq i64 %i.hf, %i.hg
  br i1 %i.hh, label %bb.bj, label %_RNvXs0_NtNtCsiqiOkcJdymw_7similar10algorithms4hookINtB5_12NoFinishHookQQINtNtB7_7compact7CompactINtNtB7_5utils12OffsetLookupmEB1w_INtNtB7_7replace7ReplaceNtNtB7_7capture7CaptureEEENtB5_8DiffHook6insertCskXhPDodhyTq_6mdtest.exit182.i

bb.bj:                                            ; preds = %bb.bi
  invoke void @_RNvMs3_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecNtNtCsiqiOkcJdymw_7similar5types6DiffOpE8grow_oneBP_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.hd)
          to label %_RNvXs0_NtNtCsiqiOkcJdymw_7similar10algorithms4hookINtB5_12NoFinishHookQQINtNtB7_7compact7CompactINtNtB7_5utils12OffsetLookupmEB1w_INtNtB7_7replace7ReplaceNtNtB7_7capture7CaptureEEENtB5_8DiffHook6insertCskXhPDodhyTq_6mdtest.exit182.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !1325

_RNvXs0_NtNtCsiqiOkcJdymw_7similar10algorithms4hookINtB5_12NoFinishHookQQINtNtB7_7compact7CompactINtNtB7_5utils12OffsetLookupmEB1w_INtNtB7_7replace7ReplaceNtNtB7_7capture7CaptureEEENtB5_8DiffHook6insertCskXhPDodhyTq_6mdtest.exit182.i: ; preds = %bb.bj, %bb.bi
  %i.hi = getelementptr inbounds nuw i8, ptr %i.hc, i64 128
  %i.hj = load ptr, ptr %i.hi, align 8, !alias.scope !1333, !noalias !1325, !nonnull !3, !noundef !3
  %i.hk = getelementptr inbounds nuw [40 x i8], ptr %i.hj, i64 %i.hf ; 4 uses
  store i64 2, ptr %i.hk, align 8, !noalias !1325
  %.sroa.412.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.hk, i64 8
  store i64 %.pre-phi882, ptr %.sroa.412.0..sroa_idx.i, align 8, !noalias !1325
  %.sroa.513.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.hk, i64 16
  store i64 %.pre-phi884, ptr %.sroa.513.0..sroa_idx.i, align 8, !noalias !1325
  %.sroa.614.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.hk, i64 24
  store i64 %i.hb, ptr %.sroa.614.0..sroa_idx.i, align 8, !noalias !1325
  %i.hl = add i64 %i.hf, 1
  store i64 %i.hl, ptr %i.he, align 8, !alias.scope !1333, !noalias !1325
  br label %.sink.split.i.thread

.sink.split.i.thread:                             ; preds = %_RNvXs0_NtNtCsiqiOkcJdymw_7similar10algorithms4hookINtB5_12NoFinishHookQQINtNtB7_7compact7CompactINtNtB7_5utils12OffsetLookupmEB1w_INtNtB7_7replace7ReplaceNtNtB7_7capture7CaptureEEENtB5_8DiffHook6deleteCskXhPDodhyTq_6mdtest.exit181.i, %bb.bh, %_RNvXs0_NtNtCsiqiOkcJdymw_7similar10algorithms4hookINtB5_12NoFinishHookQQINtNtB7_7compact7CompactINtNtB7_5utils12OffsetLookupmEB1w_INtNtB7_7replace7ReplaceNtNtB7_7capture7CaptureEEENtB5_8DiffHook6insertCskXhPDodhyTq_6mdtest.exit182.i
  call fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VechEECskXhPDodhyTq_6mdtest(ptr noalias noundef align 8 dereferenceable(24) %i.d), !noalias !1325
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !1325
  br label %bb.av

.sink.split.i:                                    ; preds = %.loopexit24.i
  call void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCskXhPDodhyTq_6mdtest(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.d), !noalias !1325
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !1325
  br label %_RINvNtNtCsiqiOkcJdymw_7similar10algorithms5myers27maybe_emit_small_side_exactINtNtB4_5utils12OffsetLookupmEB1d_INtNtB4_4hook12NoFinishHookQQINtNtB4_7compact7CompactB1d_B1d_INtNtB4_7replace7ReplaceNtNtB4_7capture7CaptureEEEECskXhPDodhyTq_6mdtest.exit.thread

bb.bk:                                            ; preds = %bb.bm, %.lr.ph495.i
  %i.hm = mul i64 %.sroa.09.0493.i, %i.fy         ; 4 uses
  %i.hn = add i64 %.sroa.038.0492.i, %.sroa.0.0   ; 4 uses
  %i.ho = add i64 %.sroa.09.0493.i, %.sroa.0195.0 ; 4 uses
  %i.hp = sub i64 %i.ho, %i.o                     ; 3 uses
  %i.hq = icmp ult i64 %i.hp, %i.q
  br i1 %i.hq, label %bb.bn, label %.invoke.i

.invoke.i:                                        ; preds = %bb.dr, %bb.dp, %bb.dn, %bb.dm, %bb.dk, %bb.bt, %bb.br, %bb.bq, %bb.bp, %bb.bn, %bb.bk, %bb.cs, %bb.cq, %bb.cp, %bb.co, %bb.cm, %bb.cf, %bb.cd, %bb.cc, %bb.cb, %bb.bz, %bb.cz, %bb.cw, %bb.dc, %bb.db, %bb.du, %.lr.ph.split.i
  %i.hr = phi i64 [ %i.kf, %bb.cf ], [ %.reass.i, %bb.du ], [ %.reass.i, %.lr.ph.split.i ], [ %i.lt, %bb.cs ], [ %i.hp, %bb.bk ], [ %i.ne, %bb.dc ], [ %i.q, %bb.cw ], [ %i.mx, %bb.db ], [ %i.w, %bb.cz ], [ %i.jp, %bb.bz ], [ %i.jt, %bb.cb ], [ %i.jx, %bb.cd ], [ %i.jv, %bb.cc ], [ %i.lb, %bb.cm ], [ %i.lf, %bb.co ], [ %i.ll, %bb.cq ], [ %i.lh, %bb.cp ], [ %i.ia, %bb.bp ], [ %i.ic, %bb.bq ], [ %i.is, %bb.bt ], [ %i.hw, %bb.bn ], [ %i.ih, %bb.br ], [ %i.ob, %bb.dm ], [ %.reass.us.i, %bb.dk ], [ %i.ou, %bb.dr ], [ %i.of, %bb.dn ], [ %i.ol, %bb.dp ]
  %i.hs = phi i64 [ %.pre729.i.a, %bb.cf ], [ %i.q, %bb.du ], [ %i.q, %.lr.ph.split.i ], [ %.pre727.i, %bb.cs ], [ %i.q, %bb.bk ], [ %i.mz, %bb.dc ], [ %i.q, %bb.cw ], [ %i.mz, %bb.db ], [ %i.w, %bb.cz ], [ %i.w, %bb.bz ], [ %.pre729.i.a, %bb.cb ], [ %.pre729.i.a, %bb.cd ], [ %.pre729.i.a, %bb.cc ], [ %i.q, %bb.cm ], [ %.pre727.i, %bb.co ], [ %.pre727.i, %bb.cq ], [ %.pre727.i, %bb.cp ], [ %.pre725.i, %bb.bp ], [ %.pre725.i, %bb.bq ], [ %.pre725.i, %bb.bt ], [ %i.w, %bb.bn ], [ %.pre725.i, %bb.br ], [ %i.od, %bb.dm ], [ %i.w, %bb.dk ], [ %i.ot, %bb.dr ], [ %i.od, %bb.dn ], [ %i.om, %bb.dp ]
  %i.ht = phi ptr [ @34, %bb.cf ], [ @45, %bb.du ], [ @45, %.lr.ph.split.i ], [ @40, %bb.cs ], [ @23, %bb.bk ], [ @44, %bb.dc ], [ @41, %bb.cw ], [ @43, %bb.db ], [ @42, %bb.cz ], [ @30, %bb.bz ], [ @31, %bb.cb ], [ @32, %bb.cd ], [ @33, %bb.cc ], [ @35, %bb.cm ], [ @37, %bb.co ], [ @38, %bb.cq ], [ @39, %bb.cp ], [ @25, %bb.bp ], [ @27, %bb.bq ], [ @28, %bb.bt ], [ @24, %bb.bn ], [ @26, %bb.br ], [ @47, %bb.dm ], [ @46, %bb.dk ], [ @50, %bb.dr ], [ @48, %bb.dn ], [ @49, %bb.dp ]
  invoke void @_RNvNtCs4NRVxsYgnAr_4core9panicking18panic_bounds_check(i64 noundef %i.hr, i64 noundef %i.hs, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.ht) #14
          to label %.cont.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !1325

.cont.i:                                          ; preds = %.invoke.i
  unreachable

bb.bl:                                            ; preds = %.lr.ph495.i
  %i.hu = invoke noundef zeroext i1 @_RNvNtCsiqiOkcJdymw_7similar16deadline_support17deadline_exceeded(i64 %9, i32 noundef range(i32 -1, 1000000000) %10)
          to label %bb.bm unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !1325

bb.bm:                                            ; preds = %bb.bl
  br i1 %i.hu, label %.loopexit24.i, label %bb.bk

bb.bn:                                            ; preds = %bb.bk
  %i.hv = getelementptr inbounds nuw [4 x i8], ptr %i.s, i64 %i.hp ; 2 uses
  %i.hw = sub i64 %i.hn, %i.u                     ; 3 uses
  %i.hx = icmp ult i64 %i.hw, %i.w
  br i1 %i.hx, label %bb.bo, label %.invoke.i

bb.bo:                                            ; preds = %bb.bn
  %i.hy = getelementptr inbounds nuw [4 x i8], ptr %i.y, i64 %i.hw ; 2 uses
  %.val210.i = load i32, ptr %i.hv, align 4, !noalias !1325, !noundef !3
  %.val211.i = load i32, ptr %i.hy, align 4, !noalias !1325, !noundef !3
  %i.hz = icmp eq i32 %.val210.i, %.val211.i
  %.pre.i = load ptr, ptr %i.gi, align 8, !noalias !1325 ; 4 uses
  %.pre725.i = load i64, ptr %i.gj, align 8, !noalias !1325 ; 8 uses
  br i1 %i.hz, label %bb.bp, label %._crit_edge731.i

._crit_edge731.i:                                 ; preds = %bb.bo
  %.pre732.i = add nuw i64 %.sroa.09.0493.i, 1
  %.pre733.i = mul i64 %.pre732.i, %i.fy
  br label %bb.bq

bb.bp:                                            ; preds = %bb.bo
  %i.ia = add i64 %i.hm, %.sroa.038.0492.i        ; 3 uses
  %i.ib = icmp ult i64 %i.ia, %.pre725.i
  br i1 %i.ib, label %bb.br, label %.invoke.i

bb.bq:                                            ; preds = %bb.bs, %._crit_edge731.i
  %.pre-phi734.i = phi i64 [ %.pre733.i, %._crit_edge731.i ], [ %i.if, %bb.bs ] ; 3 uses
  %i.ic = add i64 %.pre-phi734.i, %.sroa.038.0492.i ; 3 uses
  %i.id = icmp ult i64 %i.ic, %.pre725.i
  br i1 %i.id, label %bb.bt, label %.invoke.i

bb.br:                                            ; preds = %bb.bp
  %i.ie = add nuw i64 %.sroa.09.0493.i, 1
  %i.if = mul i64 %i.ie, %i.fy                    ; 2 uses
  %i.ig = add nuw i64 %.sroa.038.0492.i, 1
  %i.ih = add i64 %i.ig, %i.if                    ; 3 uses
  %i.ii = icmp ult i64 %i.ih, %.pre725.i
  br i1 %i.ii, label %bb.bs, label %.invoke.i

bb.bs:                                            ; preds = %bb.br
  %i.ij = getelementptr inbounds nuw i8, ptr %.pre.i, i64 %i.ia
  %i.ik = load i8, ptr %i.ij, align 1, !noalias !1325, !noundef !3
  %i.il = getelementptr inbounds nuw i8, ptr %.pre.i, i64 %i.ih
  %i.im = load i8, ptr %i.il, align 1, !noalias !1325, !noundef !3
  %i.in = add i8 %i.im, 1
  %i.io = icmp eq i8 %i.ik, %i.in
  br i1 %i.io, label %.preheader.i, label %bb.bq

.preheader.i:                                     ; preds = %bb.bs
  %i.ip = icmp ult i64 %.sroa.09.0493.i, %i.fq
  %i.iq = icmp ult i64 %.sroa.038.0492.i, %i.fp
  %or.cond177478.i = select i1 %i.ip, i1 %i.iq, i1 false
  br i1 %or.cond177478.i, label %.lr.ph481.i, label %._crit_edge482.i

bb.bt:                                            ; preds = %bb.bq
  %i.ir = add nuw i64 %.sroa.038.0492.i, 1        ; 3 uses
  %i.is = add i64 %i.ir, %i.hm                    ; 3 uses
  %i.it = icmp ult i64 %i.is, %.pre725.i
  br i1 %i.it, label %bb.bu, label %.invoke.i

bb.bu:                                            ; preds = %bb.bt
  %i.iu = getelementptr inbounds nuw i8, ptr %.pre.i, i64 %i.ic
  %i.iv = load i8, ptr %i.iu, align 1, !noalias !1325, !noundef !3
  %i.iw = getelementptr inbounds nuw i8, ptr %.pre.i, i64 %i.is
  %i.ix = load i8, ptr %i.iw, align 1, !noalias !1325, !noundef !3
  %.not164.i = icmp ult i8 %i.iv, %i.ix
  br i1 %.not164.i, label %.preheader25.i, label %.preheader30.i

.preheader30.i:                                   ; preds = %bb.bu
  %umax.i = call i64 @llvm.umax.i64(i64 %.sroa.09.0493.i, i64 %i.fq) ; 3 uses
  %exitcond.not.i1505.not = icmp ult i64 %.sroa.09.0493.i, %i.fq
  br i1 %exitcond.not.i1505.not, label %.lr.ph1507, label %._crit_edge1508

.preheader25.i:                                   ; preds = %bb.bu
  %i.iy = icmp ult i64 %.sroa.038.0492.i, %i.fp
  br i1 %i.iy, label %.lr.ph473.i, label %._crit_edge.i

.lr.ph473.i:                                      ; preds = %.preheader25.i
  %i.iz = add i64 %.pre-phi734.i, 1
  %i.ja = add i64 %i.hm, 1
  br label %bb.bv

bb.bv:                                            ; preds = %bb.ch, %.lr.ph473.i
  %.sroa.038.1472.i = phi i64 [ %.sroa.038.0492.i, %.lr.ph473.i ], [ %i.km, %bb.ch ] ; 9 uses
  %i.jb = and i64 %.sroa.038.1472.i, 1023
  %i.jc = icmp eq i64 %i.jb, 0
  %or.cond173.i = and i1 %.sroa.05.0.not494.i, %i.jc
  br i1 %or.cond173.i, label %bb.bx, label %bb.bz

._crit_edge.i:                                    ; preds = %bb.ch, %bb.cg, %bb.ce, %.preheader25.i
  %.sroa.038.1.lcssa.i = phi i64 [ %.sroa.038.0492.i, %.preheader25.i ], [ %i.fp, %bb.ch ], [ %.sroa.038.1472.i, %bb.cg ], [ %.sroa.038.1472.i, %bb.ce ] ; 2 uses
  %i.jd = sub nuw i64 %.sroa.038.1.lcssa.i, %.sroa.038.0492.i
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val51) ]
  %i.je = load ptr, ptr %.val51, align 8, !alias.scope !1334, !noalias !1335, !nonnull !3, !align !5, !noundef !3 ; 3 uses
  %i.jf = getelementptr inbounds nuw i8, ptr %i.je, i64 120 ; 2 uses
  %i.jg = getelementptr inbounds nuw i8, ptr %i.je, i64 136 ; 2 uses
  %i.jh = load i64, ptr %i.jg, align 8, !alias.scope !1336, !noalias !1325, !noundef !3 ; 3 uses
  %i.ji = load i64, ptr %i.jf, align 8, !range !6, !alias.scope !1336, !noalias !1325, !noundef !3
  %i.jj = icmp eq i64 %i.jh, %i.ji
  br i1 %i.jj, label %bb.bw, label %_RNvXs0_NtNtCsiqiOkcJdymw_7similar10algorithms4hookINtB5_12NoFinishHookQQINtNtB7_7compact7CompactINtNtB7_5utils12OffsetLookupmEB1w_INtNtB7_7replace7ReplaceNtNtB7_7capture7CaptureEEENtB5_8DiffHook6deleteCskXhPDodhyTq_6mdtest.exit.i

bb.bw:                                            ; preds = %._crit_edge.i
  invoke void @_RNvMs3_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecNtNtCsiqiOkcJdymw_7similar5types6DiffOpE8grow_oneBP_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.jf)
          to label %_RNvXs0_NtNtCsiqiOkcJdymw_7similar10algorithms4hookINtB5_12NoFinishHookQQINtNtB7_7compact7CompactINtNtB7_5utils12OffsetLookupmEB1w_INtNtB7_7replace7ReplaceNtNtB7_7capture7CaptureEEENtB5_8DiffHook6deleteCskXhPDodhyTq_6mdtest.exit.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !1325

_RNvXs0_NtNtCsiqiOkcJdymw_7similar10algorithms4hookINtB5_12NoFinishHookQQINtNtB7_7compact7CompactINtNtB7_5utils12OffsetLookupmEB1w_INtNtB7_7replace7ReplaceNtNtB7_7capture7CaptureEEENtB5_8DiffHook6deleteCskXhPDodhyTq_6mdtest.exit.i: ; preds = %bb.bw, %._crit_edge.i
  %i.jk = getelementptr inbounds nuw i8, ptr %i.je, i64 128
  %i.jl = load ptr, ptr %i.jk, align 8, !alias.scope !1336, !noalias !1325, !nonnull !3, !noundef !3
  %i.jm = getelementptr inbounds nuw [40 x i8], ptr %i.jl, i64 %i.jh ; 4 uses
  store i64 1, ptr %i.jm, align 8, !noalias !1325
  %.sroa.47.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.jm, i64 8
  store i64 %i.hn, ptr %.sroa.47.0..sroa_idx.i, align 8, !noalias !1325
  %.sroa.58.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.jm, i64 16
  store i64 %i.jd, ptr %.sroa.58.0..sroa_idx.i, align 8, !noalias !1325
  %.sroa.69.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.jm, i64 24
  store i64 %i.ho, ptr %.sroa.69.0..sroa_idx.i, align 8, !noalias !1325
  %i.jn = add i64 %i.jh, 1
  store i64 %i.jn, ptr %i.jg, align 8, !alias.scope !1336, !noalias !1325
  br label %bb.cu

bb.bx:                                            ; preds = %bb.bv
  %i.jo = invoke noundef zeroext i1 @_RNvNtCsiqiOkcJdymw_7similar16deadline_support17deadline_exceeded(i64 %9, i32 noundef range(i32 -1, 1000000000) %10)
          to label %bb.by unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !1325

bb.by:                                            ; preds = %bb.bx
  br i1 %i.jo, label %.loopexit24.i, label %bb.bz

bb.bz:                                            ; preds = %bb.by, %bb.bv
  %i.jp = add i64 %.sroa.038.1472.i, %invariant.op.i ; 3 uses
  %i.jq = icmp ult i64 %i.jp, %i.w
  br i1 %i.jq, label %bb.ca, label %.invoke.i

bb.ca:                                            ; preds = %bb.bz
  %i.jr = getelementptr inbounds nuw [4 x i8], ptr %i.y, i64 %i.jp
  %.val208.i = load i32, ptr %i.hv, align 4, !noalias !1325, !noundef !3
  %.val209.i = load i32, ptr %i.jr, align 4, !noalias !1325, !noundef !3
  %i.js = icmp eq i32 %.val208.i, %.val209.i
  %.pre728.i.a = load ptr, ptr %i.gi, align 8, !noalias !1325 ; 4 uses
  %.pre729.i.a = load i64, ptr %i.gj, align 8, !noalias !1325 ; 8 uses
  br i1 %i.js, label %bb.cb, label %bb.cc

bb.cb:                                            ; preds = %bb.ca
  %i.jt = add i64 %.sroa.038.1472.i, %i.hm        ; 3 uses
  %i.ju = icmp ult i64 %i.jt, %.pre729.i.a
  br i1 %i.ju, label %bb.cd, label %.invoke.i

bb.cc:                                            ; preds = %bb.ce, %bb.ca
  %i.jv = add i64 %.sroa.038.1472.i, %.pre-phi734.i ; 3 uses
  %i.jw = icmp ult i64 %i.jv, %.pre729.i.a
  br i1 %i.jw, label %bb.cf, label %.invoke.i

bb.cd:                                            ; preds = %bb.cb
  %i.jx = add i64 %i.iz, %.sroa.038.1472.i        ; 3 uses
  %i.jy = icmp ult i64 %i.jx, %.pre729.i.a
  br i1 %i.jy, label %bb.ce, label %.invoke.i

bb.ce:                                            ; preds = %bb.cd
  %i.jz = getelementptr inbounds nuw i8, ptr %.pre728.i.a, i64 %i.jt
  %i.ka = load i8, ptr %i.jz, align 1, !noalias !1325, !noundef !3
  %i.kb = getelementptr inbounds nuw i8, ptr %.pre728.i.a, i64 %i.jx
  %i.kc = load i8, ptr %i.kb, align 1, !noalias !1325, !noundef !3
  %i.kd = add i8 %i.kc, 1
  %i.ke = icmp eq i8 %i.ka, %i.kd
  br i1 %i.ke, label %._crit_edge.i, label %bb.cc

bb.cf:                                            ; preds = %bb.cc
  %i.kf = add i64 %i.ja, %.sroa.038.1472.i        ; 3 uses
  %i.kg = icmp ult i64 %i.kf, %.pre729.i.a
  br i1 %i.kg, label %bb.cg, label %.invoke.i

bb.cg:                                            ; preds = %bb.cf
  %i.kh = getelementptr inbounds nuw i8, ptr %.pre728.i.a, i64 %i.jv
  %i.ki = load i8, ptr %i.kh, align 1, !noalias !1325, !noundef !3
  %i.kj = getelementptr inbounds nuw i8, ptr %.pre728.i.a, i64 %i.kf
  %i.kk = load i8, ptr %i.kj, align 1, !noalias !1325, !noundef !3
  %i.kl = icmp ult i8 %i.ki, %i.kk
  br i1 %i.kl, label %bb.ch, label %._crit_edge.i

bb.ch:                                            ; preds = %bb.cg
  %i.km = add nuw i64 %.sroa.038.1472.i, 1        ; 2 uses
  %i.kn = icmp ult i64 %i.km, %i.fp
  br i1 %i.kn, label %bb.bv, label %._crit_edge.i

bb.ci:                                            ; preds = %bb.ct
  %exitcond.not.i = icmp eq i64 %.pre-phi736.i, %umax.i
  br i1 %exitcond.not.i, label %._crit_edge1508, label %.lr.ph1507

.lr.ph1507:                                       ; preds = %.preheader30.i, %bb.ci
  %.sroa.09.1.i1506 = phi i64 [ %.pre-phi736.i, %bb.ci ], [ %.sroa.09.0493.i, %.preheader30.i ] ; 6 uses
  br i1 %or.cond170.i, label %bb.ck, label %bb.cm

._crit_edge1508:                                  ; preds = %bb.ci, %bb.cr, %bb.ct, %.preheader30.i
  %.sroa.09.1.lcssa.i = phi i64 [ %umax.i, %.preheader30.i ], [ %umax.i, %bb.ci ], [ %.sroa.09.1.i1506, %bb.cr ], [ %.sroa.09.1.i1506, %bb.ct ] ; 2 uses
  %i.ko = sub i64 %.sroa.09.1.lcssa.i, %.sroa.09.0493.i
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val51) ]
  %i.kp = load ptr, ptr %.val51, align 8, !alias.scope !1337, !noalias !1338, !nonnull !3, !align !5, !noundef !3 ; 3 uses
  %i.kq = getelementptr inbounds nuw i8, ptr %i.kp, i64 120 ; 2 uses
  %i.kr = getelementptr inbounds nuw i8, ptr %i.kp, i64 136 ; 2 uses
  %i.ks = load i64, ptr %i.kr, align 8, !alias.scope !1339, !noalias !1325, !noundef !3 ; 3 uses
  %i.kt = load i64, ptr %i.kq, align 8, !range !6, !alias.scope !1339, !noalias !1325, !noundef !3
  %i.ku = icmp eq i64 %i.ks, %i.kt
  br i1 %i.ku, label %bb.cj, label %_RNvXs0_NtNtCsiqiOkcJdymw_7similar10algorithms4hookINtB5_12NoFinishHookQQINtNtB7_7compact7CompactINtNtB7_5utils12OffsetLookupmEB1w_INtNtB7_7replace7ReplaceNtNtB7_7capture7CaptureEEENtB5_8DiffHook6insertCskXhPDodhyTq_6mdtest.exit.i

bb.cj:                                            ; preds = %._crit_edge1508
  invoke void @_RNvMs3_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecNtNtCsiqiOkcJdymw_7similar5types6DiffOpE8grow_oneBP_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.kq)
          to label %_RNvXs0_NtNtCsiqiOkcJdymw_7similar10algorithms4hookINtB5_12NoFinishHookQQINtNtB7_7compact7CompactINtNtB7_5utils12OffsetLookupmEB1w_INtNtB7_7replace7ReplaceNtNtB7_7capture7CaptureEEENtB5_8DiffHook6insertCskXhPDodhyTq_6mdtest.exit.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !1325

_RNvXs0_NtNtCsiqiOkcJdymw_7similar10algorithms4hookINtB5_12NoFinishHookQQINtNtB7_7compact7CompactINtNtB7_5utils12OffsetLookupmEB1w_INtNtB7_7replace7ReplaceNtNtB7_7capture7CaptureEEENtB5_8DiffHook6insertCskXhPDodhyTq_6mdtest.exit.i: ; preds = %bb.cj, %._crit_edge1508
  %i.kv = getelementptr inbounds nuw i8, ptr %i.kp, i64 128
  %i.kw = load ptr, ptr %i.kv, align 8, !alias.scope !1339, !noalias !1325, !nonnull !3, !noundef !3
  %i.kx = getelementptr inbounds nuw [40 x i8], ptr %i.kw, i64 %i.ks ; 4 uses
  store i64 2, ptr %i.kx, align 8, !noalias !1325
  %.sroa.417.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.kx, i64 8
  store i64 %i.hn, ptr %.sroa.417.0..sroa_idx.i, align 8, !noalias !1325
  %.sroa.518.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.kx, i64 16
  store i64 %i.ho, ptr %.sroa.518.0..sroa_idx.i, align 8, !noalias !1325
  %.sroa.619.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.kx, i64 24
  store i64 %i.ko, ptr %.sroa.619.0..sroa_idx.i, align 8, !noalias !1325
  %i.ky = add i64 %i.ks, 1
  store i64 %i.ky, ptr %i.kr, align 8, !alias.scope !1339, !noalias !1325
  br label %bb.cu

bb.ck:                                            ; preds = %.lr.ph1507
  %i.kz = invoke noundef zeroext i1 @_RNvNtCsiqiOkcJdymw_7similar16deadline_support17deadline_exceeded(i64 %9, i32 noundef range(i32 -1, 1000000000) %10)
          to label %bb.cl unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !1325

bb.cl:                                            ; preds = %bb.ck
  br i1 %i.kz, label %.loopexit24.i, label %bb.cm

bb.cm:                                            ; preds = %bb.cl, %.lr.ph1507
  %i.la = mul i64 %.sroa.09.1.i1506, %i.fy        ; 2 uses
  %i.lb = add i64 %.sroa.09.1.i1506, %invariant.op470.i ; 3 uses
  %i.lc = icmp ult i64 %i.lb, %i.q
  br i1 %i.lc, label %bb.cn, label %.invoke.i

bb.cn:                                            ; preds = %bb.cm
  %i.ld = getelementptr inbounds nuw [4 x i8], ptr %i.s, i64 %i.lb
  %.val206.i = load i32, ptr %i.ld, align 4, !noalias !1325, !noundef !3
  %.val207.i = load i32, ptr %i.hy, align 4, !noalias !1325, !noundef !3
  %i.le = icmp eq i32 %.val206.i, %.val207.i
  %.pre726.i = load ptr, ptr %i.gi, align 8, !noalias !1325 ; 4 uses
  %.pre727.i = load i64, ptr %i.gj, align 8, !noalias !1325 ; 8 uses
  br i1 %i.le, label %bb.co, label %._crit_edge730.i

._crit_edge730.i:                                 ; preds = %bb.cn
  %.pre735.i = add i64 %.sroa.09.1.i1506, 1       ; 2 uses
  %.pre737.i = mul i64 %.pre735.i, %i.fy
  br label %bb.cp

bb.co:                                            ; preds = %bb.cn
  %i.lf = add i64 %i.la, %.sroa.038.0492.i        ; 3 uses
  %i.lg = icmp ult i64 %i.lf, %.pre727.i
  br i1 %i.lg, label %bb.cq, label %.invoke.i

bb.cp:                                            ; preds = %bb.cr, %._crit_edge730.i
  %.pre-phi738.i.a = phi i64 [ %.pre737.i, %._crit_edge730.i ], [ %i.lk, %bb.cr ]
  %.pre-phi736.i = phi i64 [ %.pre735.i, %._crit_edge730.i ], [ %i.lj, %bb.cr ] ; 2 uses
  %i.lh = add i64 %.pre-phi738.i.a, %.sroa.038.0492.i ; 3 uses
  %i.li = icmp ult i64 %i.lh, %.pre727.i
  br i1 %i.li, label %bb.cs, label %.invoke.i

bb.cq:                                            ; preds = %bb.co
  %i.lj = add i64 %.sroa.09.1.i1506, 1            ; 2 uses
  %i.lk = mul i64 %i.lj, %i.fy                    ; 2 uses
  %i.ll = add i64 %i.lk, %i.ir                    ; 3 uses
  %i.lm = icmp ult i64 %i.ll, %.pre727.i
  br i1 %i.lm, label %bb.cr, label %.invoke.i

bb.cr:                                            ; preds = %bb.cq
  %i.ln = getelementptr inbounds nuw i8, ptr %.pre726.i, i64 %i.lf
  %i.lo = load i8, ptr %i.ln, align 1, !noalias !1325, !noundef !3
  %i.lp = getelementptr inbounds nuw i8, ptr %.pre726.i, i64 %i.ll
  %i.lq = load i8, ptr %i.lp, align 1, !noalias !1325, !noundef !3
  %i.lr = add i8 %i.lq, 1
  %i.ls = icmp eq i8 %i.lo, %i.lr
  br i1 %i.ls, label %._crit_edge1508, label %bb.cp

bb.cs:                                            ; preds = %bb.cp
  %i.lt = add i64 %i.la, %i.ir                    ; 3 uses
  %i.lu = icmp ult i64 %i.lt, %.pre727.i
  br i1 %i.lu, label %bb.ct, label %.invoke.i

bb.ct:                                            ; preds = %bb.cs
  %i.lv = getelementptr inbounds nuw i8, ptr %.pre726.i, i64 %i.lh
  %i.lw = load i8, ptr %i.lv, align 1, !noalias !1325, !noundef !3
  %i.lx = getelementptr inbounds nuw i8, ptr %.pre726.i, i64 %i.lt
  %i.ly = load i8, ptr %i.lx, align 1, !noalias !1325, !noundef !3
  %.not167.i = icmp ult i8 %i.lw, %i.ly
  br i1 %.not167.i, label %._crit_edge1508, label %bb.ci

bb.cu:                                            ; preds = %_RNvXs0_NtNtCsiqiOkcJdymw_7similar10algorithms4hookINtB5_12NoFinishHookQQINtNtB7_7compact7CompactINtNtB7_5utils12OffsetLookupmEB1w_INtNtB7_7replace7ReplaceNtNtB7_7capture7CaptureEEENtB5_8DiffHook5equalCskXhPDodhyTq_6mdtest.exit.i, %_RNvXs0_NtNtCsiqiOkcJdymw_7similar10algorithms4hookINtB5_12NoFinishHookQQINtNtB7_7compact7CompactINtNtB7_5utils12OffsetLookupmEB1w_INtNtB7_7replace7ReplaceNtNtB7_7capture7CaptureEEENtB5_8DiffHook6insertCskXhPDodhyTq_6mdtest.exit.i, %_RNvXs0_NtNtCsiqiOkcJdymw_7similar10algorithms4hookINtB5_12NoFinishHookQQINtNtB7_7compact7CompactINtNtB7_5utils12OffsetLookupmEB1w_INtNtB7_7replace7ReplaceNtNtB7_7capture7CaptureEEENtB5_8DiffHook6deleteCskXhPDodhyTq_6mdtest.exit.i
  %.sroa.038.3.i = phi i64 [ %.sroa.038.0492.i, %_RNvXs0_NtNtCsiqiOkcJdymw_7similar10algorithms4hookINtB5_12NoFinishHookQQINtNtB7_7compact7CompactINtNtB7_5utils12OffsetLookupmEB1w_INtNtB7_7replace7ReplaceNtNtB7_7capture7CaptureEEENtB5_8DiffHook6insertCskXhPDodhyTq_6mdtest.exit.i ], [ %.sroa.038.1.lcssa.i, %_RNvXs0_NtNtCsiqiOkcJdymw_7similar10algorithms4hookINtB5_12NoFinishHookQQINtNtB7_7compact7CompactINtNtB7_5utils12OffsetLookupmEB1w_INtNtB7_7replace7ReplaceNtNtB7_7capture7CaptureEEENtB5_8DiffHook6deleteCskXhPDodhyTq_6mdtest.exit.i ], [ %.sroa.038.4.lcssa.i, %_RNvXs0_NtNtCsiqiOkcJdymw_7similar10algorithms4hookINtB5_12NoFinishHookQQINtNtB7_7compact7CompactINtNtB7_5utils12OffsetLookupmEB1w_INtNtB7_7replace7ReplaceNtNtB7_7capture7CaptureEEENtB5_8DiffHook5equalCskXhPDodhyTq_6mdtest.exit.i ] ; 5 uses
  %.sroa.09.3.i = phi i64 [ %.sroa.09.1.lcssa.i, %_RNvXs0_NtNtCsiqiOkcJdymw_7similar10algorithms4hookINtB5_12NoFinishHookQQINtNtB7_7compact7CompactINtNtB7_5utils12OffsetLookupmEB1w_INtNtB7_7replace7ReplaceNtNtB7_7capture7CaptureEEENtB5_8DiffHook6insertCskXhPDodhyTq_6mdtest.exit.i ], [ %.sroa.09.0493.i, %_RNvXs0_NtNtCsiqiOkcJdymw_7similar10algorithms4hookINtB5_12NoFinishHookQQINtNtB7_7compact7CompactINtNtB7_5utils12OffsetLookupmEB1w_INtNtB7_7replace7ReplaceNtNtB7_7capture7CaptureEEENtB5_8DiffHook6deleteCskXhPDodhyTq_6mdtest.exit.i ], [ %.sroa.09.4.lcssa.i, %_RNvXs0_NtNtCsiqiOkcJdymw_7similar10algorithms4hookINtB5_12NoFinishHookQQINtNtB7_7compact7CompactINtNtB7_5utils12OffsetLookupmEB1w_INtNtB7_7replace7ReplaceNtNtB7_7capture7CaptureEEENtB5_8DiffHook5equalCskXhPDodhyTq_6mdtest.exit.i ] ; 5 uses
  %i.lz = icmp ult i64 %.sroa.09.3.i, %i.fq       ; 3 uses
  %i.ma = icmp ult i64 %.sroa.038.3.i, %i.fp      ; 2 uses
  %or.cond.i75 = select i1 %i.lz, i1 %i.ma, i1 false
  br i1 %or.cond.i75, label %.lr.ph495.i, label %._crit_edge496.i

._crit_edge482.i:                                 ; preds = %bb.de, %bb.dd, %bb.da, %.preheader.i
  %.sroa.038.4.lcssa.i = phi i64 [ %.sroa.038.0492.i, %.preheader.i ], [ %i.nd, %bb.de ], [ %.sroa.038.4479.i, %bb.da ], [ %.sroa.038.4479.i, %bb.dd ] ; 2 uses
  %.sroa.09.4.lcssa.i = phi i64 [ %.sroa.09.0493.i, %.preheader.i ], [ %i.nb, %bb.de ], [ %.sroa.09.4480.i, %bb.da ], [ %.sroa.09.4480.i, %bb.dd ]
  %i.mb = sub nuw i64 %.sroa.038.4.lcssa.i, %.sroa.038.0492.i
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val51) ]
  %i.mc = load ptr, ptr %.val51, align 8, !alias.scope !1340, !noalias !1341, !nonnull !3, !align !5, !noundef !3 ; 3 uses
  %i.md = getelementptr inbounds nuw i8, ptr %i.mc, i64 120 ; 2 uses
  %i.me = getelementptr inbounds nuw i8, ptr %i.mc, i64 136 ; 2 uses
  %i.mf = load i64, ptr %i.me, align 8, !alias.scope !1342, !noalias !1325, !noundef !3 ; 3 uses
  %i.mg = load i64, ptr %i.md, align 8, !range !6, !alias.scope !1342, !noalias !1325, !noundef !3
  %i.mh = icmp eq i64 %i.mf, %i.mg
  br i1 %i.mh, label %bb.cv, label %_RNvXs0_NtNtCsiqiOkcJdymw_7similar10algorithms4hookINtB5_12NoFinishHookQQINtNtB7_7compact7CompactINtNtB7_5utils12OffsetLookupmEB1w_INtNtB7_7replace7ReplaceNtNtB7_7capture7CaptureEEENtB5_8DiffHook5equalCskXhPDodhyTq_6mdtest.exit.i

bb.cv:                                            ; preds = %._crit_edge482.i
  invoke void @_RNvMs3_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecNtNtCsiqiOkcJdymw_7similar5types6DiffOpE8grow_oneBP_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.md)
          to label %_RNvXs0_NtNtCsiqiOkcJdymw_7similar10algorithms4hookINtB5_12NoFinishHookQQINtNtB7_7compact7CompactINtNtB7_5utils12OffsetLookupmEB1w_INtNtB7_7replace7ReplaceNtNtB7_7capture7CaptureEEENtB5_8DiffHook5equalCskXhPDodhyTq_6mdtest.exit.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !1325

_RNvXs0_NtNtCsiqiOkcJdymw_7similar10algorithms4hookINtB5_12NoFinishHookQQINtNtB7_7compact7CompactINtNtB7_5utils12OffsetLookupmEB1w_INtNtB7_7replace7ReplaceNtNtB7_7capture7CaptureEEENtB5_8DiffHook5equalCskXhPDodhyTq_6mdtest.exit.i: ; preds = %bb.cv, %._crit_edge482.i
  %i.mi = getelementptr inbounds nuw i8, ptr %i.mc, i64 128
  %i.mj = load ptr, ptr %i.mi, align 8, !alias.scope !1342, !noalias !1325, !nonnull !3, !noundef !3
  %i.mk = getelementptr inbounds nuw [40 x i8], ptr %i.mj, i64 %i.mf ; 4 uses
  store i64 0, ptr %i.mk, align 8, !noalias !1325
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.mk, i64 8
  store i64 %i.hn, ptr %.sroa.4.0..sroa_idx.i, align 8, !noalias !1325
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.mk, i64 16
  store i64 %i.ho, ptr %.sroa.5.0..sroa_idx.i, align 8, !noalias !1325
  %.sroa.6.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.mk, i64 24
  store i64 %i.mb, ptr %.sroa.6.0..sroa_idx.i, align 8, !noalias !1325
  %i.ml = add i64 %i.mf, 1
  store i64 %i.ml, ptr %i.me, align 8, !alias.scope !1342, !noalias !1325
  br label %bb.cu

.lr.ph481.i:                                      ; preds = %.preheader.i, %bb.de
  %.sroa.09.4480.i = phi i64 [ %i.nb, %bb.de ], [ %.sroa.09.0493.i, %.preheader.i ] ; 5 uses
  %.sroa.038.4479.i = phi i64 [ %i.nd, %bb.de ], [ %.sroa.038.0492.i, %.preheader.i ] ; 6 uses
  %i.mm = and i64 %.sroa.038.4479.i, 1023
  %i.mn = icmp eq i64 %i.mm, 0
  %or.cond180.i = select i1 %.sroa.05.0.not494.i, i1 %i.mn, i1 false
  br i1 %or.cond180.i, label %bb.cx, label %bb.cw

bb.cw:                                            ; preds = %bb.cy, %.lr.ph481.i
  %i.mo = mul i64 %.sroa.09.4480.i, %i.fy
  %i.mp = add i64 %.sroa.09.4480.i, %invariant.op470.i ; 2 uses
  %i.mq = icmp ult i64 %i.mp, %i.q
  br i1 %i.mq, label %bb.cz, label %.invoke.i

bb.cx:                                            ; preds = %.lr.ph481.i
  %i.mr = invoke noundef zeroext i1 @_RNvNtCsiqiOkcJdymw_7similar16deadline_support17deadline_exceeded(i64 %9, i32 noundef range(i32 -1, 1000000000) %10)
          to label %bb.cy unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !1325

bb.cy:                                            ; preds = %bb.cx
  br i1 %i.mr, label %.loopexit24.i, label %bb.cw

bb.cz:                                            ; preds = %bb.cw
  %i.ms = add i64 %.sroa.038.4479.i, %invariant.op.i ; 2 uses
  %i.mt = icmp ult i64 %i.ms, %i.w
  br i1 %i.mt, label %bb.da, label %.invoke.i

bb.da:                                            ; preds = %bb.cz
  %i.mu = getelementptr inbounds nuw [4 x i8], ptr %i.s, i64 %i.mp
  %i.mv = getelementptr inbounds nuw [4 x i8], ptr %i.y, i64 %i.ms
  %.val204.i = load i32, ptr %i.mu, align 4, !noalias !1325, !noundef !3
  %.val205.i = load i32, ptr %i.mv, align 4, !noalias !1325, !noundef !3
  %i.mw = icmp eq i32 %.val204.i, %.val205.i
  br i1 %i.mw, label %bb.db, label %._crit_edge482.i

bb.db:                                            ; preds = %bb.da
  %i.mx = add i64 %i.mo, %.sroa.038.4479.i        ; 3 uses
  %i.my = load ptr, ptr %i.gi, align 8, !noalias !1325, !nonnull !3, !noundef !3 ; 2 uses
  %i.mz = load i64, ptr %i.gj, align 8, !noalias !1325, !noundef !3 ; 4 uses
  %i.na = icmp ult i64 %i.mx, %i.mz
  br i1 %i.na, label %bb.dc, label %.invoke.i

bb.dc:                                            ; preds = %bb.db
  %i.nb = add nuw i64 %.sroa.09.4480.i, 1         ; 4 uses
  %i.nc = mul i64 %i.nb, %i.fy
  %i.nd = add nuw i64 %.sroa.038.4479.i, 1        ; 4 uses
  %i.ne = add i64 %i.nd, %i.nc                    ; 3 uses
  %i.nf = icmp ult i64 %i.ne, %i.mz
  br i1 %i.nf, label %bb.dd, label %.invoke.i

bb.dd:                                            ; preds = %bb.dc
  %i.ng = getelementptr inbounds nuw i8, ptr %i.my, i64 %i.mx
  %i.nh = load i8, ptr %i.ng, align 1, !noalias !1325, !noundef !3
  %i.ni = getelementptr inbounds nuw i8, ptr %i.my, i64 %i.ne
  %i.nj = load i8, ptr %i.ni, align 1, !noalias !1325, !noundef !3
  %i.nk = add i8 %i.nj, 1
  %i.nl = icmp eq i8 %i.nh, %i.nk
  br i1 %i.nl, label %bb.de, label %._crit_edge482.i

bb.de:                                            ; preds = %bb.dd
  %i.nm = icmp ult i64 %i.nb, %i.fq
  %i.nn = icmp ult i64 %i.nd, %i.fp
  %or.cond177.i = and i1 %i.nm, %i.nn
  br i1 %or.cond177.i, label %.lr.ph481.i, label %._crit_edge482.i

.loopexit24.i:                                    ; preds = %bb.dh, %bb.dj, %bb.bm, %bb.cl, %bb.by, %bb.cy, %bb.du
  invoke void @_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCskXhPDodhyTq_6mdtest(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.d)
          to label %.sink.split.i unwind label %bb.df, !noalias !1325

bb.df:                                            ; preds = %.loopexit24.i
  %i.no = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCskXhPDodhyTq_6mdtest(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.d)
          to label %common.resume unwind label %bb.dg, !noalias !1325

bb.dg:                                            ; preds = %bb.df
  %i.np = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #13, !noalias !1325
  unreachable

common.resume:                                    ; preds = %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i88.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %bb.fz, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %bb.df
  %common.resume.op = phi { ptr, i32 } [ %lpad.loopexit.split-lp1548, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ], [ %i.no, %bb.df ], [ %i.wr, %bb.fz ], [ %lpad.loopexit.split-lp1593, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i88.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ]
  resume { ptr, i32 } %common.resume.op

bb.dh:                                            ; preds = %.lr.ph469.split.i
  br i1 %i.gl, label %.loopexit24.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.dh
  %i.nq = mul i64 %i.gk, %i.fy                    ; 2 uses
  %i.nr = mul i64 %.sroa.0102.0468.i, %i.fy       ; 2 uses
  %.reass.i = add i64 %i.gk, %invariant.op470.i   ; 4 uses
  %i.ns = icmp ult i64 %.reass.i, %i.q
  %i.nt = getelementptr inbounds nuw [4 x i8], ptr %i.s, i64 %.reass.i
  %.fr.i = freeze i1 %i.ns
  br i1 %.fr.i, label %.lr.ph.split.us.i, label %.lr.ph.split.i

.lr.ph.split.us.i:                                ; preds = %.lr.ph.i, %bb.ds
  %.sroa.0105.0432.us.i = phi i64 [ %i.nu, %bb.ds ], [ %i.fp, %.lr.ph.i ] ; 3 uses
  %i.nu = add i64 %.sroa.0105.0432.us.i, -1       ; 6 uses
  %i.nv = and i64 %i.nu, 1023
  %i.nw = icmp eq i64 %i.nv, 0
  br i1 %i.nw, label %bb.di, label %bb.dk

bb.di:                                            ; preds = %.lr.ph.split.us.i
  %i.nx = invoke noundef zeroext i1 @_RNvNtCsiqiOkcJdymw_7similar16deadline_support17deadline_exceeded(i64 %9, i32 noundef range(i32 -1, 1000000000) %10)
          to label %bb.dj unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !1325

bb.dj:                                            ; preds = %bb.di
  br i1 %i.nx, label %.loopexit24.i, label %bb.dk

bb.dk:                                            ; preds = %bb.dj, %.lr.ph.split.us.i
  %.reass.us.i = add i64 %i.nu, %invariant.op.i   ; 3 uses
  %i.ny = icmp ult i64 %.reass.us.i, %i.w
  br i1 %i.ny, label %bb.dl, label %.invoke.i

bb.dl:                                            ; preds = %bb.dk
  %i.nz = getelementptr inbounds nuw [4 x i8], ptr %i.y, i64 %.reass.us.i
  %.val.us.i = load i32, ptr %i.nt, align 4, !noalias !1325, !noundef !3
  %.val203.us.i = load i32, ptr %i.nz, align 4, !noalias !1325, !noundef !3
  %i.oa = icmp eq i32 %.val.us.i, %.val203.us.i
  br i1 %i.oa, label %bb.dp, label %bb.dm

bb.dm:                                            ; preds = %bb.dl
  %i.ob = add i64 %i.nu, %i.nr                    ; 3 uses
  %i.oc = load ptr, ptr %i.gi, align 8, !noalias !1325, !nonnull !3, !noundef !3 ; 3 uses
  %i.od = load i64, ptr %i.gj, align 8, !noalias !1325, !noundef !3 ; 5 uses
  %i.oe = icmp ult i64 %i.ob, %i.od
  br i1 %i.oe, label %bb.dn, label %.invoke.i

bb.dn:                                            ; preds = %bb.dm
  %i.of = add i64 %.sroa.0105.0432.us.i, %i.nq    ; 3 uses
  %i.og = icmp ult i64 %i.of, %i.od
  br i1 %i.og, label %bb.do, label %.invoke.i

bb.do:                                            ; preds = %bb.dn
  %i.oh = getelementptr inbounds nuw i8, ptr %i.oc, i64 %i.ob
  %i.oi = load i8, ptr %i.oh, align 1, !noalias !1325, !noundef !3
  %i.oj = getelementptr inbounds nuw i8, ptr %i.oc, i64 %i.of
  %i.ok = load i8, ptr %i.oj, align 1, !noalias !1325, !noundef !3
  %.sroa.0.0.i.us.i = call noundef i8 @llvm.umax.i8(i8 %i.ok, i8 %i.oi)
  br label %bb.dr

bb.dp:                                            ; preds = %bb.dl
  %i.ol = add i64 %.sroa.0105.0432.us.i, %i.nr    ; 3 uses
  %i.om = load i64, ptr %i.gj, align 8, !noalias !1325, !noundef !3 ; 3 uses
  %i.on = icmp ult i64 %i.ol, %i.om
  br i1 %i.on, label %bb.dq, label %.invoke.i

bb.dq:                                            ; preds = %bb.dp
  %i.oo = load ptr, ptr %i.gi, align 8, !noalias !1325, !nonnull !3, !noundef !3 ; 2 uses
  %i.op = getelementptr inbounds nuw i8, ptr %i.oo, i64 %i.ol
  %i.oq = load i8, ptr %i.op, align 1, !noalias !1325, !noundef !3
  %i.or = add i8 %i.oq, 1
  br label %bb.dr

bb.dr:                                            ; preds = %bb.dq, %bb.do
  %i.os = phi ptr [ %i.oo, %bb.dq ], [ %i.oc, %bb.do ]
  %i.ot = phi i64 [ %i.om, %bb.dq ], [ %i.od, %bb.do ] ; 2 uses
  %.sroa.04.0.us.i = phi i8 [ %i.or, %bb.dq ], [ %.sroa.0.0.i.us.i, %bb.do ]
  %i.ou = add i64 %i.nu, %i.nq                    ; 3 uses
  %i.ov = icmp ult i64 %i.ou, %i.ot
  br i1 %i.ov, label %bb.ds, label %.invoke.i

bb.ds:                                            ; preds = %bb.dr
  %i.ow = getelementptr inbounds nuw i8, ptr %i.os, i64 %i.ou
  store i8 %.sroa.04.0.us.i, ptr %i.ow, align 1, !noalias !1325
  %.not168.us.i = icmp eq i64 %i.nu, 0
  br i1 %.not168.us.i, label %..loopexit39_crit_edge.split.us.i, label %.lr.ph.split.us.i

..loopexit39_crit_edge.split.us.i:                ; preds = %bb.ds
  %.not.i76 = icmp eq i64 %i.gk, 0
  br i1 %.not.i76, label %.lr.ph495.i, label %.lr.ph469.split.i

.lr.ph.split.i:                                   ; preds = %.lr.ph.i
  %i.ox = and i64 %i.fp, 1023
  %i.oy = icmp eq i64 %i.ox, 1
  br i1 %i.oy, label %bb.dt, label %.invoke.i

bb.dt:                                            ; preds = %.lr.ph.split.i
  %i.oz = invoke noundef zeroext i1 @_RNvNtCsiqiOkcJdymw_7similar16deadline_support17deadline_exceeded(i64 %9, i32 noundef range(i32 -1, 1000000000) %10)
          to label %bb.du unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !1325

bb.du:                                            ; preds = %bb.dt
  br i1 %i.oz, label %.loopexit24.i, label %.invoke.i

bb.dv:                                            ; preds = %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp
  %i.pa = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #13, !noalias !1325
  unreachable

bb.dw:                                            ; preds = %bb.bb
  br i1 %i.fx, label %_RINvNtNtCsiqiOkcJdymw_7similar10algorithms5myers27maybe_emit_small_side_exactINtNtB4_5utils12OffsetLookupmEB1d_INtNtB4_4hook12NoFinishHookQQINtNtB4_7compact7CompactB1d_B1d_INtNtB4_7replace7ReplaceNtNtB4_7capture7CaptureEEEECskXhPDodhyTq_6mdtest.exit.thread, label %bb.dx

bb.dx:                                            ; preds = %bb.dw
  %i.pb = add i64 %i.fq, 1                        ; 11 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !1343
  %i.pc = add i64 %i.fp, 1
  %i.pd = mul i64 %i.pc, %i.pb                    ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1344)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !1345
  call void @_RNvMs4_NtCscdodAO9FK5_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCskXhPDodhyTq_6mdtest(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, i64 noundef %i.pd, i1 noundef zeroext true, i64 noundef 1, i64 noundef 1), !noalias !1345
  %i.pe = load i64, ptr %i.a, align 8, !range !8, !noalias !1345, !noundef !3
  %i.pf = trunc nuw i64 %i.pe to i1
  %i.pg = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.ph = load i64, ptr %i.pg, align 8, !range !9, !noalias !1345, !noundef !3 ; 2 uses
  %i.pi = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  br i1 %i.pf, label %bb.dy, label %.lr.ph484.i, !prof !7

bb.dy:                                            ; preds = %bb.dx
  %i.pj = load i64, ptr %i.pi, align 8, !noalias !1345
  call void @_RNvNtCscdodAO9FK5_5alloc7raw_vec12handle_error(i64 noundef %i.ph, i64 %i.pj) #14, !noalias !1345
  unreachable

.lr.ph484.i:                                      ; preds = %bb.dx
  %i.pk = load ptr, ptr %i.pi, align 8, !noalias !1345, !nonnull !3, !noundef !3
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !1345
  store i64 %i.ph, ptr %i.b, align 8, !alias.scope !1344, !noalias !1343
  %i.pl = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 7 uses
  store ptr %i.pk, ptr %i.pl, align 8, !alias.scope !1344, !noalias !1343
  %i.pm = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 7 uses
  store i64 %i.pd, ptr %i.pm, align 8, !alias.scope !1344, !noalias !1343
  %invariant.op.i92 = sub i64 %.sroa.0195.0, %i.o ; 4 uses
  %invariant.op485.i = sub i64 %.sroa.0.0, %i.u   ; 3 uses
  br label %.lr.ph484.split.i

.lr.ph484.split.i:                                ; preds = %.lr.ph484.i, %..loopexit39_crit_edge.split.us.i157
  %.sroa.0102.0483.i = phi i64 [ %i.pn, %..loopexit39_crit_edge.split.us.i157 ], [ %i.fp, %.lr.ph484.i ] ; 2 uses
  %i.pn = add i64 %.sroa.0102.0483.i, -1          ; 4 uses
  %i.po = invoke noundef zeroext i1 @_RNvNtCsiqiOkcJdymw_7similar16deadline_support17deadline_exceeded(i64 %9, i32 noundef range(i32 -1, 1000000000) %10)
          to label %bb.gb unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i88.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !1343

._crit_edge512.i:                                 ; preds = %bb.fo
  br i1 %i.vc, label %bb.dz, label %bb.eb

.lr.ph511.i:                                      ; preds = %..loopexit39_crit_edge.split.us.i157, %bb.fo
  %.sroa.05.0.not510.i = phi i1 [ false, %bb.fo ], [ true, %..loopexit39_crit_edge.split.us.i157 ] ; 3 uses
  %.sroa.09.0509.i = phi i64 [ %.sroa.09.3.i122, %bb.fo ], [ 0, %..loopexit39_crit_edge.split.us.i157 ] ; 13 uses
  %.sroa.039.0508.i = phi i64 [ %.sroa.039.3.i, %bb.fo ], [ 0, %..loopexit39_crit_edge.split.us.i157 ] ; 16 uses
  %i.pp = and i64 %.sroa.039.0508.i, 1023
  %i.pq = icmp eq i64 %i.pp, 0
  %or.cond170.i103 = select i1 %.sroa.05.0.not510.i, i1 %i.pq, i1 false ; 2 uses
  br i1 %or.cond170.i103, label %bb.ef, label %bb.ee

bb.dz:                                            ; preds = %._crit_edge512.i
  %i.pr = add i64 %.sroa.09.3.i122, %.sroa.0.0    ; 2 uses
  %i.ps = sub nuw i64 %i.fp, %.sroa.09.3.i122
  %i.pt = add i64 %.sroa.039.3.i, %.sroa.0195.0   ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val51) ]
  %i.pu = load ptr, ptr %.val51, align 8, !alias.scope !1346, !noalias !1347, !nonnull !3, !align !5, !noundef !3 ; 3 uses
  %i.pv = getelementptr inbounds nuw i8, ptr %i.pu, i64 120 ; 2 uses
  %i.pw = getelementptr inbounds nuw i8, ptr %i.pu, i64 136 ; 2 uses
  %i.px = load i64, ptr %i.pw, align 8, !alias.scope !1348, !noalias !1343, !noundef !3 ; 3 uses
  %i.py = load i64, ptr %i.pv, align 8, !range !6, !alias.scope !1348, !noalias !1343, !noundef !3
  %i.pz = icmp eq i64 %i.px, %i.py
  br i1 %i.pz, label %bb.ea, label %_RNvXs0_NtNtCsiqiOkcJdymw_7similar10algorithms4hookINtB5_12NoFinishHookQQINtNtB7_7compact7CompactINtNtB7_5utils12OffsetLookupmEB1w_INtNtB7_7replace7ReplaceNtNtB7_7capture7CaptureEEENtB5_8DiffHook6deleteCskXhPDodhyTq_6mdtest.exit181.i99

bb.ea:                                            ; preds = %bb.dz
  invoke void @_RNvMs3_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecNtNtCsiqiOkcJdymw_7similar5types6DiffOpE8grow_oneBP_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.pv)
          to label %_RNvXs0_NtNtCsiqiOkcJdymw_7similar10algorithms4hookINtB5_12NoFinishHookQQINtNtB7_7compact7CompactINtNtB7_5utils12OffsetLookupmEB1w_INtNtB7_7replace7ReplaceNtNtB7_7capture7CaptureEEENtB5_8DiffHook6deleteCskXhPDodhyTq_6mdtest.exit181.i99 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i88.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !1343

_RNvXs0_NtNtCsiqiOkcJdymw_7similar10algorithms4hookINtB5_12NoFinishHookQQINtNtB7_7compact7CompactINtNtB7_5utils12OffsetLookupmEB1w_INtNtB7_7replace7ReplaceNtNtB7_7capture7CaptureEEENtB5_8DiffHook6deleteCskXhPDodhyTq_6mdtest.exit181.i99: ; preds = %bb.ea, %bb.dz
  %i.qa = getelementptr inbounds nuw i8, ptr %i.pu, i64 128
  %i.qb = load ptr, ptr %i.qa, align 8, !alias.scope !1348, !noalias !1343, !nonnull !3, !noundef !3
  %i.qc = getelementptr inbounds nuw [40 x i8], ptr %i.qb, i64 %i.px ; 4 uses
  store i64 1, ptr %i.qc, align 8, !noalias !1343
  %.sroa.42.0..sroa_idx.i100 = getelementptr inbounds nuw i8, ptr %i.qc, i64 8
  store i64 %i.pr, ptr %.sroa.42.0..sroa_idx.i100, align 8, !noalias !1343
  %.sroa.53.0..sroa_idx.i101 = getelementptr inbounds nuw i8, ptr %i.qc, i64 16
  store i64 %i.ps, ptr %.sroa.53.0..sroa_idx.i101, align 8, !noalias !1343
  %.sroa.64.0..sroa_idx.i102 = getelementptr inbounds nuw i8, ptr %i.qc, i64 24
  store i64 %i.pt, ptr %.sroa.64.0..sroa_idx.i102, align 8, !noalias !1343
  %i.qd = add i64 %i.px, 1
  store i64 %i.qd, ptr %i.pw, align 8, !alias.scope !1348, !noalias !1343
  br i1 %i.vd, label %bb.ec, label %_RINvNtNtCsiqiOkcJdymw_7similar10algorithms5myers27maybe_emit_small_side_exactINtNtB4_5utils12OffsetLookupmEB1d_INtNtB4_4hook12NoFinishHookQQINtNtB4_7compact7CompactB1d_B1d_INtNtB4_7replace7ReplaceNtNtB4_7capture7CaptureEEEECskXhPDodhyTq_6mdtest.exit.thread309

bb.eb:                                            ; preds = %._crit_edge512.i
  br i1 %i.vd, label %._crit_edge879, label %_RINvNtNtCsiqiOkcJdymw_7similar10algorithms5myers27maybe_emit_small_side_exactINtNtB4_5utils12OffsetLookupmEB1d_INtNtB4_4hook12NoFinishHookQQINtNtB4_7compact7CompactB1d_B1d_INtNtB4_7replace7ReplaceNtNtB4_7capture7CaptureEEEECskXhPDodhyTq_6mdtest.exit.thread309

._crit_edge879:                                   ; preds = %bb.eb
  %.pre885 = add i64 %.sroa.09.3.i122, %.sroa.0.0
  %.pre887 = add i64 %.sroa.039.3.i, %.sroa.0195.0
  br label %bb.ec

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i88.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %bb.gc, %bb.ef, %bb.eq, %bb.fd, %bb.fp, %bb.fr, %bb.er, %bb.fe, %.lr.ph484.split.i, %bb.gn, %.invoke.i104, %bb.ed, %bb.ea
  %lpad.loopexit.split-lp1593 = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VechEECskXhPDodhyTq_6mdtest(ptr noalias noundef align 8 dereferenceable(24) %i.b) #15
          to label %common.resume unwind label %bb.gr, !noalias !1343

bb.ec:                                            ; preds = %._crit_edge879, %_RNvXs0_NtNtCsiqiOkcJdymw_7similar10algorithms4hookINtB5_12NoFinishHookQQINtNtB7_7compact7CompactINtNtB7_5utils12OffsetLookupmEB1w_INtNtB7_7replace7ReplaceNtNtB7_7capture7CaptureEEENtB5_8DiffHook6deleteCskXhPDodhyTq_6mdtest.exit181.i99
  %.pre-phi888 = phi i64 [ %.pre887, %._crit_edge879 ], [ %i.pt, %_RNvXs0_NtNtCsiqiOkcJdymw_7similar10algorithms4hookINtB5_12NoFinishHookQQINtNtB7_7compact7CompactINtNtB7_5utils12OffsetLookupmEB1w_INtNtB7_7replace7ReplaceNtNtB7_7capture7CaptureEEENtB5_8DiffHook6deleteCskXhPDodhyTq_6mdtest.exit181.i99 ]
  %.pre-phi886 = phi i64 [ %.pre885, %._crit_edge879 ], [ %i.pr, %_RNvXs0_NtNtCsiqiOkcJdymw_7similar10algorithms4hookINtB5_12NoFinishHookQQINtNtB7_7compact7CompactINtNtB7_5utils12OffsetLookupmEB1w_INtNtB7_7replace7ReplaceNtNtB7_7capture7CaptureEEENtB5_8DiffHook6deleteCskXhPDodhyTq_6mdtest.exit181.i99 ]
  %i.qe = sub nuw i64 %i.fq, %.sroa.039.3.i
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val51) ]
  %i.qf = load ptr, ptr %.val51, align 8, !alias.scope !1349, !noalias !1350, !nonnull !3, !align !5, !noundef !3 ; 3 uses
  %i.qg = getelementptr inbounds nuw i8, ptr %i.qf, i64 120 ; 2 uses
  %i.qh = getelementptr inbounds nuw i8, ptr %i.qf, i64 136 ; 2 uses
  %i.qi = load i64, ptr %i.qh, align 8, !alias.scope !1351, !noalias !1343, !noundef !3 ; 3 uses
  %i.qj = load i64, ptr %i.qg, align 8, !range !6, !alias.scope !1351, !noalias !1343, !noundef !3
  %i.qk = icmp eq i64 %i.qi, %i.qj
  br i1 %i.qk, label %bb.ed, label %_RNvXs0_NtNtCsiqiOkcJdymw_7similar10algorithms4hookINtB5_12NoFinishHookQQINtNtB7_7compact7CompactINtNtB7_5utils12OffsetLookupmEB1w_INtNtB7_7replace7ReplaceNtNtB7_7capture7CaptureEEENtB5_8DiffHook6insertCskXhPDodhyTq_6mdtest.exit182.i84

bb.ed:                                            ; preds = %bb.ec
  invoke void @_RNvMs3_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecNtNtCsiqiOkcJdymw_7similar5types6DiffOpE8grow_oneBP_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.qg)
          to label %_RNvXs0_NtNtCsiqiOkcJdymw_7similar10algorithms4hookINtB5_12NoFinishHookQQINtNtB7_7compact7CompactINtNtB7_5utils12OffsetLookupmEB1w_INtNtB7_7replace7ReplaceNtNtB7_7capture7CaptureEEENtB5_8DiffHook6insertCskXhPDodhyTq_6mdtest.exit182.i84 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i88.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !1343

_RNvXs0_NtNtCsiqiOkcJdymw_7similar10algorithms4hookINtB5_12NoFinishHookQQINtNtB7_7compact7CompactINtNtB7_5utils12OffsetLookupmEB1w_INtNtB7_7replace7ReplaceNtNtB7_7capture7CaptureEEENtB5_8DiffHook6insertCskXhPDodhyTq_6mdtest.exit182.i84: ; preds = %bb.ed, %bb.ec
  %i.ql = getelementptr inbounds nuw i8, ptr %i.qf, i64 128
  %i.qm = load ptr, ptr %i.ql, align 8, !alias.scope !1351, !noalias !1343, !nonnull !3, !noundef !3
  %i.qn = getelementptr inbounds nuw [40 x i8], ptr %i.qm, i64 %i.qi ; 4 uses
  store i64 2, ptr %i.qn, align 8, !noalias !1343
  %.sroa.412.0..sroa_idx.i85 = getelementptr inbounds nuw i8, ptr %i.qn, i64 8
  store i64 %.pre-phi886, ptr %.sroa.412.0..sroa_idx.i85, align 8, !noalias !1343
  %.sroa.513.0..sroa_idx.i86 = getelementptr inbounds nuw i8, ptr %i.qn, i64 16
  store i64 %.pre-phi888, ptr %.sroa.513.0..sroa_idx.i86, align 8, !noalias !1343
  %.sroa.614.0..sroa_idx.i87 = getelementptr inbounds nuw i8, ptr %i.qn, i64 24
  store i64 %i.qe, ptr %.sroa.614.0..sroa_idx.i87, align 8, !noalias !1343
  %i.qo = add i64 %i.qi, 1
  store i64 %i.qo, ptr %i.qh, align 8, !alias.scope !1351, !noalias !1343
  br label %_RINvNtNtCsiqiOkcJdymw_7similar10algorithms5myers27maybe_emit_small_side_exactINtNtB4_5utils12OffsetLookupmEB1d_INtNtB4_4hook12NoFinishHookQQINtNtB4_7compact7CompactB1d_B1d_INtNtB4_7replace7ReplaceNtNtB4_7capture7CaptureEEEECskXhPDodhyTq_6mdtest.exit.thread309

_RINvNtNtCsiqiOkcJdymw_7similar10algorithms5myers27maybe_emit_small_side_exactINtNtB4_5utils12OffsetLookupmEB1d_INtNtB4_4hook12NoFinishHookQQINtNtB4_7compact7CompactB1d_B1d_INtNtB4_7replace7ReplaceNtNtB4_7capture7CaptureEEEECskXhPDodhyTq_6mdtest.exit.thread309: ; preds = %_RNvXs0_NtNtCsiqiOkcJdymw_7similar10algorithms4hookINtB5_12NoFinishHookQQINtNtB7_7compact7CompactINtNtB7_5utils12OffsetLookupmEB1w_INtNtB7_7replace7ReplaceNtNtB7_7capture7CaptureEEENtB5_8DiffHook6deleteCskXhPDodhyTq_6mdtest.exit181.i99, %bb.eb, %_RNvXs0_NtNtCsiqiOkcJdymw_7similar10algorithms4hookINtB5_12NoFinishHookQQINtNtB7_7compact7CompactINtNtB7_5utils12OffsetLookupmEB1w_INtNtB7_7replace7ReplaceNtNtB7_7capture7CaptureEEENtB5_8DiffHook6insertCskXhPDodhyTq_6mdtest.exit182.i84
  call fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VechEECskXhPDodhyTq_6mdtest(ptr noalias noundef align 8 dereferenceable(24) %i.b), !noalias !1343
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !1343
  br label %bb.av

bb.ee:                                            ; preds = %bb.eg, %.lr.ph511.i
  %i.qp = mul i64 %.sroa.09.0509.i, %i.pb         ; 4 uses
  %i.qq = add i64 %.sroa.09.0509.i, %.sroa.0.0    ; 4 uses
  %i.qr = add i64 %.sroa.039.0508.i, %.sroa.0195.0 ; 4 uses
  %i.qs = sub i64 %i.qr, %i.o                     ; 3 uses
  %i.qt = icmp ult i64 %i.qs, %i.q
  br i1 %i.qt, label %bb.eh, label %.invoke.i104

.invoke.i104:                                     ; preds = %bb.gl, %bb.gj, %bb.gh, %bb.gg, %bb.ge, %bb.en, %bb.el, %bb.ek, %bb.ej, %bb.eh, %bb.ee, %bb.fm, %bb.fk, %bb.fj, %bb.fi, %bb.fg, %bb.ez, %bb.ex, %bb.ew, %bb.ev, %bb.et, %bb.ft, %bb.fq, %bb.fw, %bb.fv, %bb.gq, %bb.gp
  %i.qu = phi i64 [ %i.ti, %bb.ez ], [ %.reass.i148, %bb.gp ], [ %.reass486.i, %bb.gq ], [ %i.uw, %bb.fm ], [ %i.qs, %bb.ee ], [ %i.wh, %bb.fw ], [ %i.q, %bb.fq ], [ %i.wa, %bb.fv ], [ %i.w, %bb.ft ], [ %i.ss, %bb.et ], [ %i.sw, %bb.ev ], [ %i.ta, %bb.ex ], [ %i.sy, %bb.ew ], [ %i.ue, %bb.fg ], [ %i.ui, %bb.fi ], [ %i.uo, %bb.fk ], [ %i.uk, %bb.fj ], [ %i.rd, %bb.ej ], [ %i.rf, %bb.ek ], [ %i.rv, %bb.en ], [ %i.qz, %bb.eh ], [ %i.rk, %bb.el ], [ %i.xe, %bb.gg ], [ %.reass.us.i151, %bb.ge ], [ %i.xx, %bb.gl ], [ %i.xi, %bb.gh ], [ %i.xo, %bb.gj ]
  %i.qv = phi i64 [ %.pre745.i.a, %bb.ez ], [ %i.q, %bb.gp ], [ %i.w, %bb.gq ], [ %.pre743.i, %bb.fm ], [ %i.q, %bb.ee ], [ %i.wc, %bb.fw ], [ %i.q, %bb.fq ], [ %i.wc, %bb.fv ], [ %i.w, %bb.ft ], [ %i.q, %bb.et ], [ %.pre745.i.a, %bb.ev ], [ %.pre745.i.a, %bb.ex ], [ %.pre745.i.a, %bb.ew ], [ %i.w, %bb.fg ], [ %.pre743.i, %bb.fi ], [ %.pre743.i, %bb.fk ], [ %.pre743.i, %bb.fj ], [ %.pre741.i, %bb.ej ], [ %.pre741.i, %bb.ek ], [ %.pre741.i, %bb.en ], [ %i.w, %bb.eh ], [ %.pre741.i, %bb.el ], [ %i.xg, %bb.gg ], [ %i.q, %bb.ge ], [ %i.xw, %bb.gl ], [ %i.xg, %bb.gh ], [ %i.xp, %bb.gj ]
  %i.qw = phi ptr [ @62, %bb.ez ], [ @73, %bb.gp ], [ @74, %bb.gq ], [ @68, %bb.fm ], [ @51, %bb.ee ], [ @72, %bb.fw ], [ @69, %bb.fq ], [ @71, %bb.fv ], [ @70, %bb.ft ], [ @57, %bb.et ], [ @59, %bb.ev ], [ @60, %bb.ex ], [ @61, %bb.ew ], [ @64, %bb.fg ], [ @65, %bb.fi ], [ @66, %bb.fk ], [ @67, %bb.fj ], [ @53, %bb.ej ], [ @55, %bb.ek ], [ @56, %bb.en ], [ @52, %bb.eh ], [ @54, %bb.el ], [ @75, %bb.gg ], [ @73, %bb.ge ], [ @78, %bb.gl ], [ @76, %bb.gh ], [ @77, %bb.gj ]
  invoke void @_RNvNtCs4NRVxsYgnAr_4core9panicking18panic_bounds_check(i64 noundef %i.qu, i64 noundef %i.qv, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.qw) #14
          to label %.cont.i105 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i88.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !1343

.cont.i105:                                       ; preds = %.invoke.i104
  unreachable

bb.ef:                                            ; preds = %.lr.ph511.i
  %i.qx = invoke noundef zeroext i1 @_RNvNtCsiqiOkcJdymw_7similar16deadline_support17deadline_exceeded(i64 %9, i32 noundef range(i32 -1, 1000000000) %10)
          to label %bb.eg unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i88.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !1343

bb.eg:                                            ; preds = %bb.ef
  br i1 %i.qx, label %.loopexit24.i124, label %bb.ee

bb.eh:                                            ; preds = %bb.ee
  %i.qy = getelementptr inbounds nuw [4 x i8], ptr %i.s, i64 %i.qs ; 2 uses
  %i.qz = sub i64 %i.qq, %i.u                     ; 3 uses
  %i.ra = icmp ult i64 %i.qz, %i.w
  br i1 %i.ra, label %bb.ei, label %.invoke.i104

bb.ei:                                            ; preds = %bb.eh
  %i.rb = getelementptr inbounds nuw [4 x i8], ptr %i.y, i64 %i.qz ; 2 uses
  %.val210.i106 = load i32, ptr %i.qy, align 4, !noalias !1343, !noundef !3
  %.val211.i107 = load i32, ptr %i.rb, align 4, !noalias !1343, !noundef !3
  %i.rc = icmp eq i32 %.val210.i106, %.val211.i107
  %.pre.i108 = load ptr, ptr %i.pl, align 8, !noalias !1343 ; 4 uses
  %.pre741.i = load i64, ptr %i.pm, align 8, !noalias !1343 ; 8 uses
  br i1 %i.rc, label %bb.ej, label %._crit_edge747.i

._crit_edge747.i:                                 ; preds = %bb.ei
  %.pre748.i = add nuw i64 %.sroa.09.0509.i, 1
  %.pre749.i = mul i64 %.pre748.i, %i.pb
  br label %bb.ek

bb.ej:                                            ; preds = %bb.ei
  %i.rd = add i64 %i.qp, %.sroa.039.0508.i        ; 3 uses
  %i.re = icmp ult i64 %i.rd, %.pre741.i
  br i1 %i.re, label %bb.el, label %.invoke.i104

bb.ek:                                            ; preds = %bb.em, %._crit_edge747.i
  %.pre-phi750.i = phi i64 [ %.pre749.i, %._crit_edge747.i ], [ %i.ri, %bb.em ] ; 3 uses
  %i.rf = add i64 %.pre-phi750.i, %.sroa.039.0508.i ; 3 uses
  %i.rg = icmp ult i64 %i.rf, %.pre741.i
  br i1 %i.rg, label %bb.en, label %.invoke.i104

bb.el:                                            ; preds = %bb.ej
  %i.rh = add nuw i64 %.sroa.09.0509.i, 1
  %i.ri = mul i64 %i.rh, %i.pb                    ; 2 uses
  %i.rj = add nuw i64 %.sroa.039.0508.i, 1
  %i.rk = add i64 %i.rj, %i.ri                    ; 3 uses
  %i.rl = icmp ult i64 %i.rk, %.pre741.i
  br i1 %i.rl, label %bb.em, label %.invoke.i104

bb.em:                                            ; preds = %bb.el
  %i.rm = getelementptr inbounds nuw i8, ptr %.pre.i108, i64 %i.rd
  %i.rn = load i8, ptr %i.rm, align 1, !noalias !1343, !noundef !3
  %i.ro = getelementptr inbounds nuw i8, ptr %.pre.i108, i64 %i.rk
  %i.rp = load i8, ptr %i.ro, align 1, !noalias !1343, !noundef !3
  %i.rq = add i8 %i.rp, 1
  %i.rr = icmp eq i8 %i.rn, %i.rq
  br i1 %i.rr, label %.preheader.i135, label %bb.ek

.preheader.i135:                                  ; preds = %bb.em
  %i.rs = icmp ult i64 %.sroa.09.0509.i, %i.fp
  %i.rt = icmp ult i64 %.sroa.039.0508.i, %i.fq
  %or.cond177494.i = select i1 %i.rs, i1 %i.rt, i1 false
  br i1 %or.cond177494.i, label %.lr.ph497.i, label %._crit_edge498.i

bb.en:                                            ; preds = %bb.ek
  %i.ru = add i64 %.sroa.039.0508.i, 1            ; 3 uses
  %i.rv = add i64 %i.ru, %i.qp                    ; 3 uses
  %i.rw = icmp ult i64 %i.rv, %.pre741.i
  br i1 %i.rw, label %bb.eo, label %.invoke.i104

bb.eo:                                            ; preds = %bb.en
  %i.rx = getelementptr inbounds nuw i8, ptr %.pre.i108, i64 %i.rf
  %i.ry = load i8, ptr %i.rx, align 1, !noalias !1343, !noundef !3
  %i.rz = getelementptr inbounds nuw i8, ptr %.pre.i108, i64 %i.rv
  %i.sa = load i8, ptr %i.rz, align 1, !noalias !1343, !noundef !3
  %.not164.i109 = icmp ult i8 %i.ry, %i.sa
  br i1 %.not164.i109, label %.preheader25.i126, label %.preheader30.i110

.preheader30.i110:                                ; preds = %bb.eo
  %umax.i111 = call i64 @llvm.umax.i64(i64 %.sroa.09.0509.i, i64 %i.fp) ; 3 uses
  %exitcond.not.i1131497.not = icmp ult i64 %.sroa.09.0509.i, %i.fp
  br i1 %exitcond.not.i1131497.not, label %.lr.ph1499, label %._crit_edge1500

.preheader25.i126:                                ; preds = %bb.eo
  %i.sb = icmp ult i64 %.sroa.039.0508.i, %i.fq
  br i1 %i.sb, label %.lr.ph489.i, label %._crit_edge.i127

.lr.ph489.i:                                      ; preds = %.preheader25.i126
  %i.sc = add i64 %.pre-phi750.i, 1
  %i.sd = add i64 %i.qp, 1
  br label %bb.ep

bb.ep:                                            ; preds = %bb.fb, %.lr.ph489.i
  %.sroa.039.1488.i = phi i64 [ %.sroa.039.0508.i, %.lr.ph489.i ], [ %i.tp, %bb.fb ] ; 9 uses
  %i.se = and i64 %.sroa.039.1488.i, 1023
  %i.sf = icmp eq i64 %i.se, 0
  %or.cond173.i132 = and i1 %.sroa.05.0.not510.i, %i.sf
  br i1 %or.cond173.i132, label %bb.er, label %bb.et

._crit_edge.i127:                                 ; preds = %bb.fb, %bb.fa, %bb.ey, %.preheader25.i126
  %.sroa.039.1.lcssa.i = phi i64 [ %.sroa.039.0508.i, %.preheader25.i126 ], [ %i.fq, %bb.fb ], [ %.sroa.039.1488.i, %bb.fa ], [ %.sroa.039.1488.i, %bb.ey ] ; 2 uses
  %i.sg = sub nuw i64 %.sroa.039.1.lcssa.i, %.sroa.039.0508.i
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val51) ]
  %i.sh = load ptr, ptr %.val51, align 8, !alias.scope !1352, !noalias !1353, !nonnull !3, !align !5, !noundef !3 ; 3 uses
  %i.si = getelementptr inbounds nuw i8, ptr %i.sh, i64 120 ; 2 uses
  %i.sj = getelementptr inbounds nuw i8, ptr %i.sh, i64 136 ; 2 uses
  %i.sk = load i64, ptr %i.sj, align 8, !alias.scope !1354, !noalias !1343, !noundef !3 ; 3 uses
  %i.sl = load i64, ptr %i.si, align 8, !range !6, !alias.scope !1354, !noalias !1343, !noundef !3
  %i.sm = icmp eq i64 %i.sk, %i.sl
  br i1 %i.sm, label %bb.eq, label %_RNvXs0_NtNtCsiqiOkcJdymw_7similar10algorithms4hookINtB5_12NoFinishHookQQINtNtB7_7compact7CompactINtNtB7_5utils12OffsetLookupmEB1w_INtNtB7_7replace7ReplaceNtNtB7_7capture7CaptureEEENtB5_8DiffHook6insertCskXhPDodhyTq_6mdtest.exit.i128

bb.eq:                                            ; preds = %._crit_edge.i127
  invoke void @_RNvMs3_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecNtNtCsiqiOkcJdymw_7similar5types6DiffOpE8grow_oneBP_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.si)
          to label %_RNvXs0_NtNtCsiqiOkcJdymw_7similar10algorithms4hookINtB5_12NoFinishHookQQINtNtB7_7compact7CompactINtNtB7_5utils12OffsetLookupmEB1w_INtNtB7_7replace7ReplaceNtNtB7_7capture7CaptureEEENtB5_8DiffHook6insertCskXhPDodhyTq_6mdtest.exit.i128 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i88.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !1343

_RNvXs0_NtNtCsiqiOkcJdymw_7similar10algorithms4hookINtB5_12NoFinishHookQQINtNtB7_7compact7CompactINtNtB7_5utils12OffsetLookupmEB1w_INtNtB7_7replace7ReplaceNtNtB7_7capture7CaptureEEENtB5_8DiffHook6insertCskXhPDodhyTq_6mdtest.exit.i128: ; preds = %bb.eq, %._crit_edge.i127
  %i.sn = getelementptr inbounds nuw i8, ptr %i.sh, i64 128
  %i.so = load ptr, ptr %i.sn, align 8, !alias.scope !1354, !noalias !1343, !nonnull !3, !noundef !3
  %i.sp = getelementptr inbounds nuw [40 x i8], ptr %i.so, i64 %i.sk ; 4 uses
  store i64 2, ptr %i.sp, align 8, !noalias !1343
  %.sroa.417.0..sroa_idx.i129 = getelementptr inbounds nuw i8, ptr %i.sp, i64 8
  store i64 %i.qq, ptr %.sroa.417.0..sroa_idx.i129, align 8, !noalias !1343
  %.sroa.518.0..sroa_idx.i130 = getelementptr inbounds nuw i8, ptr %i.sp, i64 16
  store i64 %i.qr, ptr %.sroa.518.0..sroa_idx.i130, align 8, !noalias !1343
  %.sroa.619.0..sroa_idx.i131 = getelementptr inbounds nuw i8, ptr %i.sp, i64 24
  store i64 %i.sg, ptr %.sroa.619.0..sroa_idx.i131, align 8, !noalias !1343
  %i.sq = add i64 %i.sk, 1
  store i64 %i.sq, ptr %i.sj, align 8, !alias.scope !1354, !noalias !1343
  br label %bb.fo

bb.er:                                            ; preds = %bb.ep
  %i.sr = invoke noundef zeroext i1 @_RNvNtCsiqiOkcJdymw_7similar16deadline_support17deadline_exceeded(i64 %9, i32 noundef range(i32 -1, 1000000000) %10)
          to label %bb.es unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i88.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !1343

bb.es:                                            ; preds = %bb.er
  br i1 %i.sr, label %.loopexit24.i124, label %bb.et

bb.et:                                            ; preds = %bb.es, %bb.ep
  %i.ss = add i64 %.sroa.039.1488.i, %invariant.op.i92 ; 3 uses
  %i.st = icmp ult i64 %i.ss, %i.q
  br i1 %i.st, label %bb.eu, label %.invoke.i104

bb.eu:                                            ; preds = %bb.et
  %i.su = getelementptr inbounds nuw [4 x i8], ptr %i.s, i64 %i.ss
  %.val208.i133 = load i32, ptr %i.su, align 4, !noalias !1343, !noundef !3
  %.val209.i134 = load i32, ptr %i.rb, align 4, !noalias !1343, !noundef !3
  %i.sv = icmp eq i32 %.val208.i133, %.val209.i134
  %.pre744.i.a = load ptr, ptr %i.pl, align 8, !noalias !1343 ; 4 uses
  %.pre745.i.a = load i64, ptr %i.pm, align 8, !noalias !1343 ; 8 uses
  br i1 %i.sv, label %bb.ev, label %bb.ew

bb.ev:                                            ; preds = %bb.eu
  %i.sw = add i64 %.sroa.039.1488.i, %i.qp        ; 3 uses
  %i.sx = icmp ult i64 %i.sw, %.pre745.i.a
  br i1 %i.sx, label %bb.ex, label %.invoke.i104

bb.ew:                                            ; preds = %bb.ey, %bb.eu
  %i.sy = add i64 %.sroa.039.1488.i, %.pre-phi750.i ; 3 uses
  %i.sz = icmp ult i64 %i.sy, %.pre745.i.a
  br i1 %i.sz, label %bb.ez, label %.invoke.i104

bb.ex:                                            ; preds = %bb.ev
  %i.ta = add i64 %i.sc, %.sroa.039.1488.i        ; 3 uses
  %i.tb = icmp ult i64 %i.ta, %.pre745.i.a
  br i1 %i.tb, label %bb.ey, label %.invoke.i104

bb.ey:                                            ; preds = %bb.ex
  %i.tc = getelementptr inbounds nuw i8, ptr %.pre744.i.a, i64 %i.sw
  %i.td = load i8, ptr %i.tc, align 1, !noalias !1343, !noundef !3
  %i.te = getelementptr inbounds nuw i8, ptr %.pre744.i.a, i64 %i.ta
  %i.tf = load i8, ptr %i.te, align 1, !noalias !1343, !noundef !3
  %i.tg = add i8 %i.tf, 1
  %i.th = icmp eq i8 %i.td, %i.tg
  br i1 %i.th, label %._crit_edge.i127, label %bb.ew

bb.ez:                                            ; preds = %bb.ew
  %i.ti = add i64 %i.sd, %.sroa.039.1488.i        ; 3 uses
  %i.tj = icmp ult i64 %i.ti, %.pre745.i.a
  br i1 %i.tj, label %bb.fa, label %.invoke.i104

bb.fa:                                            ; preds = %bb.ez
  %i.tk = getelementptr inbounds nuw i8, ptr %.pre744.i.a, i64 %i.sy
  %i.tl = load i8, ptr %i.tk, align 1, !noalias !1343, !noundef !3
  %i.tm = getelementptr inbounds nuw i8, ptr %.pre744.i.a, i64 %i.ti
  %i.tn = load i8, ptr %i.tm, align 1, !noalias !1343, !noundef !3
  %i.to = icmp ult i8 %i.tl, %i.tn
  br i1 %i.to, label %bb.fb, label %._crit_edge.i127

bb.fb:                                            ; preds = %bb.fa
  %i.tp = add nuw i64 %.sroa.039.1488.i, 1        ; 2 uses
  %i.tq = icmp ult i64 %i.tp, %i.fq
  br i1 %i.tq, label %bb.ep, label %._crit_edge.i127

bb.fc:                                            ; preds = %bb.fn
  %exitcond.not.i113 = icmp eq i64 %.pre-phi752.i, %umax.i111
  br i1 %exitcond.not.i113, label %._crit_edge1500, label %.lr.ph1499

.lr.ph1499:                                       ; preds = %.preheader30.i110, %bb.fc
  %.sroa.09.1.i1121498 = phi i64 [ %.pre-phi752.i, %bb.fc ], [ %.sroa.09.0509.i, %.preheader30.i110 ] ; 6 uses
  br i1 %or.cond170.i103, label %bb.fe, label %bb.fg

._crit_edge1500:                                  ; preds = %bb.fc, %bb.fl, %bb.fn, %.preheader30.i110
  %.sroa.09.1.lcssa.i117 = phi i64 [ %umax.i111, %.preheader30.i110 ], [ %umax.i111, %bb.fc ], [ %.sroa.09.1.i1121498, %bb.fl ], [ %.sroa.09.1.i1121498, %bb.fn ] ; 2 uses
  %i.tr = sub nuw i64 %.sroa.09.1.lcssa.i117, %.sroa.09.0509.i
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val51) ]
  %i.ts = load ptr, ptr %.val51, align 8, !alias.scope !1355, !noalias !1356, !nonnull !3, !align !5, !noundef !3 ; 3 uses
  %i.tt = getelementptr inbounds nuw i8, ptr %i.ts, i64 120 ; 2 uses
  %i.tu = getelementptr inbounds nuw i8, ptr %i.ts, i64 136 ; 2 uses
  %i.tv = load i64, ptr %i.tu, align 8, !alias.scope !1357, !noalias !1343, !noundef !3 ; 3 uses
  %i.tw = load i64, ptr %i.tt, align 8, !range !6, !alias.scope !1357, !noalias !1343, !noundef !3
  %i.tx = icmp eq i64 %i.tv, %i.tw
  br i1 %i.tx, label %bb.fd, label %_RNvXs0_NtNtCsiqiOkcJdymw_7similar10algorithms4hookINtB5_12NoFinishHookQQINtNtB7_7compact7CompactINtNtB7_5utils12OffsetLookupmEB1w_INtNtB7_7replace7ReplaceNtNtB7_7capture7CaptureEEENtB5_8DiffHook6deleteCskXhPDodhyTq_6mdtest.exit.i118

bb.fd:                                            ; preds = %._crit_edge1500
  invoke void @_RNvMs3_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecNtNtCsiqiOkcJdymw_7similar5types6DiffOpE8grow_oneBP_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.tt)
          to label %_RNvXs0_NtNtCsiqiOkcJdymw_7similar10algorithms4hookINtB5_12NoFinishHookQQINtNtB7_7compact7CompactINtNtB7_5utils12OffsetLookupmEB1w_INtNtB7_7replace7ReplaceNtNtB7_7capture7CaptureEEENtB5_8DiffHook6deleteCskXhPDodhyTq_6mdtest.exit.i118 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i88.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !1343

_RNvXs0_NtNtCsiqiOkcJdymw_7similar10algorithms4hookINtB5_12NoFinishHookQQINtNtB7_7compact7CompactINtNtB7_5utils12OffsetLookupmEB1w_INtNtB7_7replace7ReplaceNtNtB7_7capture7CaptureEEENtB5_8DiffHook6deleteCskXhPDodhyTq_6mdtest.exit.i118: ; preds = %bb.fd, %._crit_edge1500
  %i.ty = getelementptr inbounds nuw i8, ptr %i.ts, i64 128
  %i.tz = load ptr, ptr %i.ty, align 8, !alias.scope !1357, !noalias !1343, !nonnull !3, !noundef !3
  %i.ua = getelementptr inbounds nuw [40 x i8], ptr %i.tz, i64 %i.tv ; 4 uses
  store i64 1, ptr %i.ua, align 8, !noalias !1343
  %.sroa.47.0..sroa_idx.i119 = getelementptr inbounds nuw i8, ptr %i.ua, i64 8
  store i64 %i.qq, ptr %.sroa.47.0..sroa_idx.i119, align 8, !noalias !1343
  %.sroa.58.0..sroa_idx.i120 = getelementptr inbounds nuw i8, ptr %i.ua, i64 16
  store i64 %i.tr, ptr %.sroa.58.0..sroa_idx.i120, align 8, !noalias !1343
  %.sroa.69.0..sroa_idx.i121 = getelementptr inbounds nuw i8, ptr %i.ua, i64 24
  store i64 %i.qr, ptr %.sroa.69.0..sroa_idx.i121, align 8, !noalias !1343
  %i.ub = add i64 %i.tv, 1
  store i64 %i.ub, ptr %i.tu, align 8, !alias.scope !1357, !noalias !1343
  br label %bb.fo

bb.fe:                                            ; preds = %.lr.ph1499
  %i.uc = invoke noundef zeroext i1 @_RNvNtCsiqiOkcJdymw_7similar16deadline_support17deadline_exceeded(i64 %9, i32 noundef range(i32 -1, 1000000000) %10)
          to label %bb.ff unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i88.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !1343

bb.ff:                                            ; preds = %bb.fe
  br i1 %i.uc, label %.loopexit24.i124, label %bb.fg

bb.fg:                                            ; preds = %bb.ff, %.lr.ph1499
  %i.ud = mul i64 %.sroa.09.1.i1121498, %i.pb     ; 2 uses
  %i.ue = add i64 %.sroa.09.1.i1121498, %invariant.op485.i ; 3 uses
  %i.uf = icmp ult i64 %i.ue, %i.w
  br i1 %i.uf, label %bb.fh, label %.invoke.i104

bb.fh:                                            ; preds = %bb.fg
  %i.ug = getelementptr inbounds nuw [4 x i8], ptr %i.y, i64 %i.ue
  %.val206.i114 = load i32, ptr %i.qy, align 4, !noalias !1343, !noundef !3
  %.val207.i115 = load i32, ptr %i.ug, align 4, !noalias !1343, !noundef !3
  %i.uh = icmp eq i32 %.val206.i114, %.val207.i115
  %.pre742.i = load ptr, ptr %i.pl, align 8, !noalias !1343 ; 4 uses
  %.pre743.i = load i64, ptr %i.pm, align 8, !noalias !1343 ; 8 uses
  br i1 %i.uh, label %bb.fi, label %._crit_edge746.i

._crit_edge746.i:                                 ; preds = %bb.fh
  %.pre751.i = add i64 %.sroa.09.1.i1121498, 1    ; 2 uses
  %.pre753.i = mul i64 %.pre751.i, %i.pb
  br label %bb.fj

bb.fi:                                            ; preds = %bb.fh
  %i.ui = add i64 %i.ud, %.sroa.039.0508.i        ; 3 uses
  %i.uj = icmp ult i64 %i.ui, %.pre743.i
  br i1 %i.uj, label %bb.fk, label %.invoke.i104

bb.fj:                                            ; preds = %bb.fl, %._crit_edge746.i
  %.pre-phi754.i.a = phi i64 [ %.pre753.i, %._crit_edge746.i ], [ %i.un, %bb.fl ]
  %.pre-phi752.i = phi i64 [ %.pre751.i, %._crit_edge746.i ], [ %i.um, %bb.fl ] ; 2 uses
  %i.uk = add i64 %.pre-phi754.i.a, %.sroa.039.0508.i ; 3 uses
  %i.ul = icmp ult i64 %i.uk, %.pre743.i
  br i1 %i.ul, label %bb.fm, label %.invoke.i104

bb.fk:                                            ; preds = %bb.fi
  %i.um = add i64 %.sroa.09.1.i1121498, 1         ; 2 uses
  %i.un = mul i64 %i.um, %i.pb                    ; 2 uses
  %i.uo = add i64 %i.un, %i.ru                    ; 3 uses
  %i.up = icmp ult i64 %i.uo, %.pre743.i
  br i1 %i.up, label %bb.fl, label %.invoke.i104

bb.fl:                                            ; preds = %bb.fk
  %i.uq = getelementptr inbounds nuw i8, ptr %.pre742.i, i64 %i.ui
  %i.ur = load i8, ptr %i.uq, align 1, !noalias !1343, !noundef !3
  %i.us = getelementptr inbounds nuw i8, ptr %.pre742.i, i64 %i.uo
  %i.ut = load i8, ptr %i.us, align 1, !noalias !1343, !noundef !3
  %i.uu = add i8 %i.ut, 1
  %i.uv = icmp eq i8 %i.ur, %i.uu
  br i1 %i.uv, label %._crit_edge1500, label %bb.fj

bb.fm:                                            ; preds = %bb.fj
  %i.uw = add i64 %i.ud, %i.ru                    ; 3 uses
  %i.ux = icmp ult i64 %i.uw, %.pre743.i
  br i1 %i.ux, label %bb.fn, label %.invoke.i104

bb.fn:                                            ; preds = %bb.fm
  %i.uy = getelementptr inbounds nuw i8, ptr %.pre742.i, i64 %i.uk
  %i.uz = load i8, ptr %i.uy, align 1, !noalias !1343, !noundef !3
  %i.va = getelementptr inbounds nuw i8, ptr %.pre742.i, i64 %i.uw
  %i.vb = load i8, ptr %i.va, align 1, !noalias !1343, !noundef !3
  %.not167.i116 = icmp ult i8 %i.uz, %i.vb
  br i1 %.not167.i116, label %._crit_edge1500, label %bb.fc

bb.fo:                                            ; preds = %_RNvXs0_NtNtCsiqiOkcJdymw_7similar10algorithms4hookINtB5_12NoFinishHookQQINtNtB7_7compact7CompactINtNtB7_5utils12OffsetLookupmEB1w_INtNtB7_7replace7ReplaceNtNtB7_7capture7CaptureEEENtB5_8DiffHook5equalCskXhPDodhyTq_6mdtest.exit.i137, %_RNvXs0_NtNtCsiqiOkcJdymw_7similar10algorithms4hookINtB5_12NoFinishHookQQINtNtB7_7compact7CompactINtNtB7_5utils12OffsetLookupmEB1w_INtNtB7_7replace7ReplaceNtNtB7_7capture7CaptureEEENtB5_8DiffHook6deleteCskXhPDodhyTq_6mdtest.exit.i118, %_RNvXs0_NtNtCsiqiOkcJdymw_7similar10algorithms4hookINtB5_12NoFinishHookQQINtNtB7_7compact7CompactINtNtB7_5utils12OffsetLookupmEB1w_INtNtB7_7replace7ReplaceNtNtB7_7capture7CaptureEEENtB5_8DiffHook6insertCskXhPDodhyTq_6mdtest.exit.i128
  %.sroa.039.3.i = phi i64 [ %.sroa.039.0508.i, %_RNvXs0_NtNtCsiqiOkcJdymw_7similar10algorithms4hookINtB5_12NoFinishHookQQINtNtB7_7compact7CompactINtNtB7_5utils12OffsetLookupmEB1w_INtNtB7_7replace7ReplaceNtNtB7_7capture7CaptureEEENtB5_8DiffHook6deleteCskXhPDodhyTq_6mdtest.exit.i118 ], [ %.sroa.039.1.lcssa.i, %_RNvXs0_NtNtCsiqiOkcJdymw_7similar10algorithms4hookINtB5_12NoFinishHookQQINtNtB7_7compact7CompactINtNtB7_5utils12OffsetLookupmEB1w_INtNtB7_7replace7ReplaceNtNtB7_7capture7CaptureEEENtB5_8DiffHook6insertCskXhPDodhyTq_6mdtest.exit.i128 ], [ %.sroa.039.4.lcssa.i, %_RNvXs0_NtNtCsiqiOkcJdymw_7similar10algorithms4hookINtB5_12NoFinishHookQQINtNtB7_7compact7CompactINtNtB7_5utils12OffsetLookupmEB1w_INtNtB7_7replace7ReplaceNtNtB7_7capture7CaptureEEENtB5_8DiffHook5equalCskXhPDodhyTq_6mdtest.exit.i137 ] ; 5 uses
  %.sroa.09.3.i122 = phi i64 [ %.sroa.09.1.lcssa.i117, %_RNvXs0_NtNtCsiqiOkcJdymw_7similar10algorithms4hookINtB5_12NoFinishHookQQINtNtB7_7compact7CompactINtNtB7_5utils12OffsetLookupmEB1w_INtNtB7_7replace7ReplaceNtNtB7_7capture7CaptureEEENtB5_8DiffHook6deleteCskXhPDodhyTq_6mdtest.exit.i118 ], [ %.sroa.09.0509.i, %_RNvXs0_NtNtCsiqiOkcJdymw_7similar10algorithms4hookINtB5_12NoFinishHookQQINtNtB7_7compact7CompactINtNtB7_5utils12OffsetLookupmEB1w_INtNtB7_7replace7ReplaceNtNtB7_7capture7CaptureEEENtB5_8DiffHook6insertCskXhPDodhyTq_6mdtest.exit.i128 ], [ %.sroa.09.4.lcssa.i136, %_RNvXs0_NtNtCsiqiOkcJdymw_7similar10algorithms4hookINtB5_12NoFinishHookQQINtNtB7_7compact7CompactINtNtB7_5utils12OffsetLookupmEB1w_INtNtB7_7replace7ReplaceNtNtB7_7capture7CaptureEEENtB5_8DiffHook5equalCskXhPDodhyTq_6mdtest.exit.i137 ] ; 5 uses
  %i.vc = icmp ult i64 %.sroa.09.3.i122, %i.fp    ; 2 uses
  %i.vd = icmp ult i64 %.sroa.039.3.i, %i.fq      ; 3 uses
  %or.cond.i123 = select i1 %i.vc, i1 %i.vd, i1 false
  br i1 %or.cond.i123, label %.lr.ph511.i, label %._crit_edge512.i

._crit_edge498.i:                                 ; preds = %bb.fy, %bb.fx, %bb.fu, %.preheader.i135
  %.sroa.039.4.lcssa.i = phi i64 [ %.sroa.039.0508.i, %.preheader.i135 ], [ %i.wg, %bb.fy ], [ %.sroa.039.4495.i, %bb.fu ], [ %.sroa.039.4495.i, %bb.fx ]
  %.sroa.09.4.lcssa.i136 = phi i64 [ %.sroa.09.0509.i, %.preheader.i135 ], [ %i.we, %bb.fy ], [ %.sroa.09.4496.i, %bb.fu ], [ %.sroa.09.4496.i, %bb.fx ] ; 2 uses
  %i.ve = sub i64 %.sroa.09.4.lcssa.i136, %.sroa.09.0509.i
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val51) ]
  %i.vf = load ptr, ptr %.val51, align 8, !alias.scope !1358, !noalias !1359, !nonnull !3, !align !5, !noundef !3 ; 3 uses
  %i.vg = getelementptr inbounds nuw i8, ptr %i.vf, i64 120 ; 2 uses
  %i.vh = getelementptr inbounds nuw i8, ptr %i.vf, i64 136 ; 2 uses
  %i.vi = load i64, ptr %i.vh, align 8, !alias.scope !1360, !noalias !1343, !noundef !3 ; 3 uses
  %i.vj = load i64, ptr %i.vg, align 8, !range !6, !alias.scope !1360, !noalias !1343, !noundef !3
  %i.vk = icmp eq i64 %i.vi, %i.vj
  br i1 %i.vk, label %bb.fp, label %_RNvXs0_NtNtCsiqiOkcJdymw_7similar10algorithms4hookINtB5_12NoFinishHookQQINtNtB7_7compact7CompactINtNtB7_5utils12OffsetLookupmEB1w_INtNtB7_7replace7ReplaceNtNtB7_7capture7CaptureEEENtB5_8DiffHook5equalCskXhPDodhyTq_6mdtest.exit.i137

bb.fp:                                            ; preds = %._crit_edge498.i
  invoke void @_RNvMs3_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecNtNtCsiqiOkcJdymw_7similar5types6DiffOpE8grow_oneBP_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.vg)
          to label %_RNvXs0_NtNtCsiqiOkcJdymw_7similar10algorithms4hookINtB5_12NoFinishHookQQINtNtB7_7compact7CompactINtNtB7_5utils12OffsetLookupmEB1w_INtNtB7_7replace7ReplaceNtNtB7_7capture7CaptureEEENtB5_8DiffHook5equalCskXhPDodhyTq_6mdtest.exit.i137 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i88.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !1343

_RNvXs0_NtNtCsiqiOkcJdymw_7similar10algorithms4hookINtB5_12NoFinishHookQQINtNtB7_7compact7CompactINtNtB7_5utils12OffsetLookupmEB1w_INtNtB7_7replace7ReplaceNtNtB7_7capture7CaptureEEENtB5_8DiffHook5equalCskXhPDodhyTq_6mdtest.exit.i137: ; preds = %bb.fp, %._crit_edge498.i
  %i.vl = getelementptr inbounds nuw i8, ptr %i.vf, i64 128
  %i.vm = load ptr, ptr %i.vl, align 8, !alias.scope !1360, !noalias !1343, !nonnull !3, !noundef !3
  %i.vn = getelementptr inbounds nuw [40 x i8], ptr %i.vm, i64 %i.vi ; 4 uses
  store i64 0, ptr %i.vn, align 8, !noalias !1343
  %.sroa.4.0..sroa_idx.i138 = getelementptr inbounds nuw i8, ptr %i.vn, i64 8
  store i64 %i.qq, ptr %.sroa.4.0..sroa_idx.i138, align 8, !noalias !1343
  %.sroa.5.0..sroa_idx.i139 = getelementptr inbounds nuw i8, ptr %i.vn, i64 16
  store i64 %i.qr, ptr %.sroa.5.0..sroa_idx.i139, align 8, !noalias !1343
  %.sroa.6.0..sroa_idx.i140 = getelementptr inbounds nuw i8, ptr %i.vn, i64 24
  store i64 %i.ve, ptr %.sroa.6.0..sroa_idx.i140, align 8, !noalias !1343
  %i.vo = add i64 %i.vi, 1
  store i64 %i.vo, ptr %i.vh, align 8, !alias.scope !1360, !noalias !1343
  br label %bb.fo

.lr.ph497.i:                                      ; preds = %.preheader.i135, %bb.fy
  %.sroa.09.4496.i = phi i64 [ %i.we, %bb.fy ], [ %.sroa.09.0509.i, %.preheader.i135 ] ; 5 uses
  %.sroa.039.4495.i = phi i64 [ %i.wg, %bb.fy ], [ %.sroa.039.0508.i, %.preheader.i135 ] ; 6 uses
  %i.vp = and i64 %.sroa.039.4495.i, 1023
  %i.vq = icmp eq i64 %i.vp, 0
  %or.cond180.i141 = select i1 %.sroa.05.0.not510.i, i1 %i.vq, i1 false
  br i1 %or.cond180.i141, label %bb.fr, label %bb.fq

bb.fq:                                            ; preds = %bb.fs, %.lr.ph497.i
  %i.vr = mul i64 %.sroa.09.4496.i, %i.pb
  %i.vs = add i64 %.sroa.039.4495.i, %invariant.op.i92 ; 2 uses
  %i.vt = icmp ult i64 %i.vs, %i.q
  br i1 %i.vt, label %bb.ft, label %.invoke.i104

bb.fr:                                            ; preds = %.lr.ph497.i
  %i.vu = invoke noundef zeroext i1 @_RNvNtCsiqiOkcJdymw_7similar16deadline_support17deadline_exceeded(i64 %9, i32 noundef range(i32 -1, 1000000000) %10)
          to label %bb.fs unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i88.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !1343

bb.fs:                                            ; preds = %bb.fr
  br i1 %i.vu, label %.loopexit24.i124, label %bb.fq

bb.ft:                                            ; preds = %bb.fq
  %i.vv = add i64 %.sroa.09.4496.i, %invariant.op485.i ; 2 uses
  %i.vw = icmp ult i64 %i.vv, %i.w
  br i1 %i.vw, label %bb.fu, label %.invoke.i104

bb.fu:                                            ; preds = %bb.ft
  %i.vx = getelementptr inbounds nuw [4 x i8], ptr %i.s, i64 %i.vs
  %i.vy = getelementptr inbounds nuw [4 x i8], ptr %i.y, i64 %i.vv
  %.val204.i142 = load i32, ptr %i.vx, align 4, !noalias !1343, !noundef !3
  %.val205.i143 = load i32, ptr %i.vy, align 4, !noalias !1343, !noundef !3
  %i.vz = icmp eq i32 %.val204.i142, %.val205.i143
  br i1 %i.vz, label %bb.fv, label %._crit_edge498.i

bb.fv:                                            ; preds = %bb.fu
  %i.wa = add i64 %i.vr, %.sroa.039.4495.i        ; 3 uses
  %i.wb = load ptr, ptr %i.pl, align 8, !noalias !1343, !nonnull !3, !noundef !3 ; 2 uses
  %i.wc = load i64, ptr %i.pm, align 8, !noalias !1343, !noundef !3 ; 4 uses
  %i.wd = icmp ult i64 %i.wa, %i.wc
  br i1 %i.wd, label %bb.fw, label %.invoke.i104

bb.fw:                                            ; preds = %bb.fv
  %i.we = add nuw i64 %.sroa.09.4496.i, 1         ; 4 uses
  %i.wf = mul i64 %i.we, %i.pb
  %i.wg = add nuw i64 %.sroa.039.4495.i, 1        ; 4 uses
  %i.wh = add i64 %i.wg, %i.wf                    ; 3 uses
  %i.wi = icmp ult i64 %i.wh, %i.wc
  br i1 %i.wi, label %bb.fx, label %.invoke.i104

bb.fx:                                            ; preds = %bb.fw
  %i.wj = getelementptr inbounds nuw i8, ptr %i.wb, i64 %i.wa
  %i.wk = load i8, ptr %i.wj, align 1, !noalias !1343, !noundef !3
  %i.wl = getelementptr inbounds nuw i8, ptr %i.wb, i64 %i.wh
  %i.wm = load i8, ptr %i.wl, align 1, !noalias !1343, !noundef !3
  %i.wn = add i8 %i.wm, 1
  %i.wo = icmp eq i8 %i.wk, %i.wn
  br i1 %i.wo, label %bb.fy, label %._crit_edge498.i

bb.fy:                                            ; preds = %bb.fx
  %i.wp = icmp ult i64 %i.we, %i.fp
  %i.wq = icmp ult i64 %i.wg, %i.fq
  %or.cond177.i144 = and i1 %i.wp, %i.wq
  br i1 %or.cond177.i144, label %.lr.ph497.i, label %._crit_edge498.i

.loopexit24.i124:                                 ; preds = %bb.gb, %bb.gd, %bb.eg, %bb.ff, %bb.es, %bb.fs, %bb.go
  invoke void @_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCskXhPDodhyTq_6mdtest(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.b)
          to label %_RINvNtNtCsiqiOkcJdymw_7similar10algorithms5myers27maybe_emit_small_side_exactINtNtB4_5utils12OffsetLookupmEB1d_INtNtB4_4hook12NoFinishHookQQINtNtB4_7compact7CompactB1d_B1d_INtNtB4_7replace7ReplaceNtNtB4_7capture7CaptureEEEECskXhPDodhyTq_6mdtest.exit unwind label %bb.fz, !noalias !1343

bb.fz:                                            ; preds = %.loopexit24.i124
  %i.wr = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCskXhPDodhyTq_6mdtest(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.b)
          to label %common.resume unwind label %bb.ga, !noalias !1343

bb.ga:                                            ; preds = %bb.fz
  %i.ws = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #13, !noalias !1343
  unreachable

bb.gb:                                            ; preds = %.lr.ph484.split.i
  br i1 %i.po, label %.loopexit24.i124, label %.lr.ph.i145

.lr.ph.i145:                                      ; preds = %bb.gb
  %i.wt = mul i64 %i.pn, %i.pb                    ; 2 uses
  %i.wu = mul i64 %.sroa.0102.0483.i, %i.pb       ; 2 uses
  %.reass486.i = add i64 %i.pn, %invariant.op485.i ; 3 uses
  %i.wv = icmp ult i64 %.reass486.i, %i.w
  %i.ww = getelementptr inbounds nuw [4 x i8], ptr %i.y, i64 %.reass486.i
  %.fr.i146 = freeze i1 %i.wv
  br i1 %.fr.i146, label %.lr.ph.split.us.i149, label %.lr.ph.split.i147

.lr.ph.split.us.i149:                             ; preds = %.lr.ph.i145, %bb.gm
  %.sroa.0105.0432.us.i150 = phi i64 [ %i.wx, %bb.gm ], [ %i.fq, %.lr.ph.i145 ] ; 3 uses
  %i.wx = add i64 %.sroa.0105.0432.us.i150, -1    ; 6 uses
  %i.wy = and i64 %i.wx, 1023
  %i.wz = icmp eq i64 %i.wy, 0
  br i1 %i.wz, label %bb.gc, label %bb.ge

bb.gc:                                            ; preds = %.lr.ph.split.us.i149
  %i.xa = invoke noundef zeroext i1 @_RNvNtCsiqiOkcJdymw_7similar16deadline_support17deadline_exceeded(i64 %9, i32 noundef range(i32 -1, 1000000000) %10)
          to label %bb.gd unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i88.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !1343

bb.gd:                                            ; preds = %bb.gc
end_hunk_9
begin_hunk_10_@_RINvNtNtCsiqiOkcJdymw_7similar10algorithms5myers7conquerINtNtB4_5utils12OffsetLookupmEBS_INtNtB4_4hook12NoFinishHookQQINtNtB4_7compact7CompactBS_BS_INtNtB4_7replace7ReplaceNtNtB4_7capture7CaptureEEEECskXhPDodhyTq_6mdtest:bb.a
  %i.yb = and i64 %i.ya, 1023
  %i.yc = icmp eq i64 %i.yb, 0
  br i1 %i.yc, label %bb.gn, label %bb.gp

bb.gn:                                            ; preds = %.lr.ph.split.i147
  %i.yd = invoke noundef zeroext i1 @_RNvNtCsiqiOkcJdymw_7similar16deadline_support17deadline_exceeded(i64 %9, i32 noundef range(i32 -1, 1000000000) %10)
          to label %bb.go unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i88.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !1343

bb.go:                                            ; preds = %bb.gn
  br i1 %i.yd, label %.loopexit24.i124, label %bb.gp

bb.gp:                                            ; preds = %bb.go, %.lr.ph.split.i147
  %.reass.i148 = add i64 %invariant.op.i92, %i.ya ; 2 uses
  %i.ye = icmp ult i64 %.reass.i148, %i.q
  br i1 %i.ye, label %bb.gq, label %.invoke.i104

bb.gq:                                            ; preds = %bb.gp
  br label %.invoke.i104

bb.gr:                                            ; preds = %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i88.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp
  %i.yf = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #13, !noalias !1343
  unreachable

_RINvNtNtCsiqiOkcJdymw_7similar10algorithms5myers27maybe_emit_small_side_exactINtNtB4_5utils12OffsetLookupmEB1d_INtNtB4_4hook12NoFinishHookQQINtNtB4_7compact7CompactB1d_B1d_INtNtB4_7replace7ReplaceNtNtB4_7capture7CaptureEEEECskXhPDodhyTq_6mdtest.exit: ; preds = %.loopexit24.i124
  call void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCskXhPDodhyTq_6mdtest(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.b), !noalias !1343
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !1343
  br label %_RINvNtNtCsiqiOkcJdymw_7similar10algorithms5myers27maybe_emit_small_side_exactINtNtB4_5utils12OffsetLookupmEB1d_INtNtB4_4hook12NoFinishHookQQINtNtB4_7compact7CompactB1d_B1d_INtNtB4_7replace7ReplaceNtNtB4_7capture7CaptureEEEECskXhPDodhyTq_6mdtest.exit.thread

_RINvNtNtCsiqiOkcJdymw_7similar10algorithms5myers27maybe_emit_small_side_exactINtNtB4_5utils12OffsetLookupmEB1d_INtNtB4_4hook12NoFinishHookQQINtNtB4_7compact7CompactB1d_B1d_INtNtB4_7replace7ReplaceNtNtB4_7capture7CaptureEEEECskXhPDodhyTq_6mdtest.exit.thread: ; preds = %bb.az, %bb.dw, %bb.bc, %bb.ba, %bb.ay, %.sink.split.i, %_RINvNtNtCsiqiOkcJdymw_7similar10algorithms5myers27maybe_emit_small_side_exactINtNtB4_5utils12OffsetLookupmEB1d_INtNtB4_4hook12NoFinishHookQQINtNtB4_7compact7CompactB1d_B1d_INtNtB4_7replace7ReplaceNtNtB4_7capture7CaptureEEEECskXhPDodhyTq_6mdtest.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  call fastcc void @_RINvNtNtCsiqiOkcJdymw_7similar10algorithms5myers17find_middle_snakeINtNtB4_5utils12OffsetLookupmEB13_ECskXhPDodhyTq_6mdtest(ptr noalias noundef align 8 captures(none) dereferenceable(24) %i.g, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) %1, i64 noundef %.sroa.0.0, i64 noundef %i.l, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) %4, i64 noundef %.sroa.0195.0, i64 noundef %i.m, ptr noalias noundef align 8 dereferenceable(32) %7, ptr noalias noundef align 8 dereferenceable(32) %8, i64 %9, i32 noundef %10)
  %i.yg = load i64, ptr %i.g, align 8, !range !8, !noundef !3
  %i.yh = trunc nuw i64 %i.yg to i1
  br i1 %i.yh, label %bb.gs, label %bb.gt

bb.gs:                                            ; preds = %_RINvNtNtCsiqiOkcJdymw_7similar10algorithms5myers27maybe_emit_small_side_exactINtNtB4_5utils12OffsetLookupmEB1d_INtNtB4_4hook12NoFinishHookQQINtNtB4_7compact7CompactB1d_B1d_INtNtB4_7replace7ReplaceNtNtB4_7capture7CaptureEEEECskXhPDodhyTq_6mdtest.exit.thread
  %i.yi = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %i.yj = load i64, ptr %i.yi, align 8, !noundef !3 ; 2 uses
  %i.yk = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  %i.yl = load i64, ptr %i.yk, align 8, !noundef !3 ; 2 uses
  call fastcc void @_RINvNtNtCsiqiOkcJdymw_7similar10algorithms5myers7conquerINtNtB4_5utils12OffsetLookupmEBS_INtNtB4_4hook12NoFinishHookQQINtNtB4_7compact7CompactBS_BS_INtNtB4_7replace7ReplaceNtNtB4_7capture7CaptureEEEECskXhPDodhyTq_6mdtest(ptr noalias noundef align 8 dereferenceable(8) %0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) %1, i64 noundef %.sroa.0.0, i64 noundef %i.yj, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) %4, i64 noundef %.sroa.0195.0, i64 noundef %i.yl, ptr noalias noundef align 8 dereferenceable(32) %7, ptr noalias noundef align 8 dereferenceable(32) %8, i64 %9, i32 noundef %10)
  call fastcc void @_RINvNtNtCsiqiOkcJdymw_7similar10algorithms5myers7conquerINtNtB4_5utils12OffsetLookupmEBS_INtNtB4_4hook12NoFinishHookQQINtNtB4_7compact7CompactBS_BS_INtNtB4_7replace7ReplaceNtNtB4_7capture7CaptureEEEECskXhPDodhyTq_6mdtest(ptr noalias noundef align 8 dereferenceable(8) %0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) %1, i64 noundef %i.yj, i64 noundef %i.l, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) %4, i64 noundef %i.yl, i64 noundef %i.m, ptr noalias noundef align 8 dereferenceable(32) %7, ptr noalias noundef align 8 dereferenceable(32) %8, i64 %9, i32 noundef %10)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  br label %bb.av

bb.gt:                                            ; preds = %_RINvNtNtCsiqiOkcJdymw_7similar10algorithms5myers27maybe_emit_small_side_exactINtNtB4_5utils12OffsetLookupmEB1d_INtNtB4_4hook12NoFinishHookQQINtNtB4_7compact7CompactB1d_B1d_INtNtB4_7replace7ReplaceNtNtB4_7capture7CaptureEEEECskXhPDodhyTq_6mdtest.exit.thread
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  %i.ym = sub nuw i64 %i.l, %.sroa.0.0
  call void @llvm.experimental.noalias.scope.decl(metadata !1361)
  call void @llvm.experimental.noalias.scope.decl(metadata !1362)
  %i.yn = load ptr, ptr %0, align 8, !alias.scope !1363, !nonnull !3, !align !5, !noundef !3 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1364)
  %i.yo = load ptr, ptr %i.yn, align 8, !alias.scope !1364, !noalias !1363, !nonnull !3, !align !5, !noundef !3 ; 3 uses
  %i.yp = getelementptr inbounds nuw i8, ptr %i.yo, i64 120 ; 2 uses
  %i.yq = getelementptr inbounds nuw i8, ptr %i.yo, i64 136 ; 2 uses
  %i.yr = load i64, ptr %i.yq, align 8, !alias.scope !1365, !noalias !1366, !noundef !3 ; 3 uses
  %i.ys = load i64, ptr %i.yp, align 8, !range !6, !alias.scope !1365, !noalias !1366, !noundef !3
  %i.yt = icmp eq i64 %i.yr, %i.ys
  br i1 %i.yt, label %bb.gu, label %_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCsiqiOkcJdymw_7similar5types6DiffOpE8push_mutCskXhPDodhyTq_6mdtest.exit159

bb.gu:                                            ; preds = %bb.gt
  call void @_RNvMs3_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecNtNtCsiqiOkcJdymw_7similar5types6DiffOpE8grow_oneBP_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.yp), !noalias !1367
  br label %_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCsiqiOkcJdymw_7similar5types6DiffOpE8push_mutCskXhPDodhyTq_6mdtest.exit159

_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCsiqiOkcJdymw_7similar5types6DiffOpE8push_mutCskXhPDodhyTq_6mdtest.exit159: ; preds = %bb.gt, %bb.gu
  %i.yu = getelementptr inbounds nuw i8, ptr %i.yo, i64 128
  %i.yv = load ptr, ptr %i.yu, align 8, !alias.scope !1365, !noalias !1366, !nonnull !3, !noundef !3
  %i.yw = getelementptr inbounds nuw [40 x i8], ptr %i.yv, i64 %i.yr ; 4 uses
  store i64 1, ptr %i.yw, align 8, !noalias !1366
  %.sroa.4246.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.yw, i64 8
  store i64 %.sroa.0.0, ptr %.sroa.4246.0..sroa_idx, align 8, !noalias !1366
  %.sroa.5247.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.yw, i64 16
  store i64 %i.ym, ptr %.sroa.5247.0..sroa_idx, align 8, !noalias !1366
  %.sroa.6248.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.yw, i64 24
  store i64 %.sroa.0195.0, ptr %.sroa.6248.0..sroa_idx, align 8, !noalias !1366
  %i.yx = add i64 %i.yr, 1
  store i64 %i.yx, ptr %i.yq, align 8, !alias.scope !1365, !noalias !1366
  %i.yy = sub nuw i64 %i.m, %.sroa.0195.0
  call void @llvm.experimental.noalias.scope.decl(metadata !1368)
  %i.yz = load ptr, ptr %i.yn, align 8, !alias.scope !1368, !noalias !1369, !nonnull !3, !align !5, !noundef !3 ; 3 uses
  %i.za = getelementptr inbounds nuw i8, ptr %i.yz, i64 120 ; 2 uses
  %i.zb = getelementptr inbounds nuw i8, ptr %i.yz, i64 136 ; 2 uses
  %i.zc = load i64, ptr %i.zb, align 8, !alias.scope !1370, !noalias !1371, !noundef !3 ; 3 uses
  %i.zd = load i64, ptr %i.za, align 8, !range !6, !alias.scope !1370, !noalias !1371, !noundef !3
  %i.ze = icmp eq i64 %i.zc, %i.zd
  br i1 %i.ze, label %bb.gv, label %_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCsiqiOkcJdymw_7similar5types6DiffOpE8push_mutCskXhPDodhyTq_6mdtest.exit160

bb.gv:                                            ; preds = %_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCsiqiOkcJdymw_7similar5types6DiffOpE8push_mutCskXhPDodhyTq_6mdtest.exit159
  call void @_RNvMs3_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecNtNtCsiqiOkcJdymw_7similar5types6DiffOpE8grow_oneBP_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.za), !noalias !1372
  br label %_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCsiqiOkcJdymw_7similar5types6DiffOpE8push_mutCskXhPDodhyTq_6mdtest.exit160

_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCsiqiOkcJdymw_7similar5types6DiffOpE8push_mutCskXhPDodhyTq_6mdtest.exit160: ; preds = %_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCsiqiOkcJdymw_7similar5types6DiffOpE8push_mutCskXhPDodhyTq_6mdtest.exit159, %bb.gv
  %i.zf = getelementptr inbounds nuw i8, ptr %i.yz, i64 128
  %i.zg = load ptr, ptr %i.zf, align 8, !alias.scope !1370, !noalias !1371, !nonnull !3, !noundef !3
  %i.zh = getelementptr inbounds nuw [40 x i8], ptr %i.zg, i64 %i.zc ; 4 uses
  store i64 2, ptr %i.zh, align 8, !noalias !1371
  %.sroa.4261.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.zh, i64 8
  store i64 %.sroa.0.0, ptr %.sroa.4261.0..sroa_idx, align 8, !noalias !1371
  %.sroa.5262.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.zh, i64 16
  store i64 %.sroa.0195.0, ptr %.sroa.5262.0..sroa_idx, align 8, !noalias !1371
  %.sroa.6263.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.zh, i64 24
  store i64 %i.yy, ptr %.sroa.6263.0..sroa_idx, align 8, !noalias !1371
  %i.zi = add i64 %i.zc, 1
  store i64 %i.zi, ptr %i.zb, align 8, !alias.scope !1370, !noalias !1371
  br label %bb.av

.thread:                                          ; preds = %bb.au
  %i.zj = sub nuw i64 %i.m, %.sroa.0195.0
  call void @llvm.experimental.noalias.scope.decl(metadata !1373)
  call void @llvm.experimental.noalias.scope.decl(metadata !1374)
  %i.zk = load ptr, ptr %0, align 8, !alias.scope !1375, !nonnull !3, !align !5, !noundef !3
  call void @llvm.experimental.noalias.scope.decl(metadata !1376)
  %i.zl = load ptr, ptr %i.zk, align 8, !alias.scope !1376, !noalias !1375, !nonnull !3, !align !5, !noundef !3 ; 3 uses
  %i.zm = getelementptr inbounds nuw i8, ptr %i.zl, i64 120 ; 2 uses
  %i.zn = getelementptr inbounds nuw i8, ptr %i.zl, i64 136 ; 2 uses
  %i.zo = load i64, ptr %i.zn, align 8, !alias.scope !1377, !noalias !1378, !noundef !3 ; 3 uses
  %i.zp = load i64, ptr %i.zm, align 8, !range !6, !alias.scope !1377, !noalias !1378, !noundef !3
  %i.zq = icmp eq i64 %i.zo, %i.zp
  br i1 %i.zq, label %bb.gw, label %_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCsiqiOkcJdymw_7similar5types6DiffOpE8push_mutCskXhPDodhyTq_6mdtest.exit161

bb.gw:                                            ; preds = %.thread
  call void @_RNvMs3_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecNtNtCsiqiOkcJdymw_7similar5types6DiffOpE8grow_oneBP_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.zm), !noalias !1379
  br label %_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCsiqiOkcJdymw_7similar5types6DiffOpE8push_mutCskXhPDodhyTq_6mdtest.exit161

_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCsiqiOkcJdymw_7similar5types6DiffOpE8push_mutCskXhPDodhyTq_6mdtest.exit161: ; preds = %.thread, %bb.gw
  %i.zr = getelementptr inbounds nuw i8, ptr %i.zl, i64 128
  %i.zs = load ptr, ptr %i.zr, align 8, !alias.scope !1377, !noalias !1378, !nonnull !3, !noundef !3
  %i.zt = getelementptr inbounds nuw [40 x i8], ptr %i.zs, i64 %i.zo ; 4 uses
  store i64 2, ptr %i.zt, align 8, !noalias !1378
  %.sroa.4266.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.zt, i64 8
  store i64 %.sroa.0.0, ptr %.sroa.4266.0..sroa_idx, align 8, !noalias !1378
  %.sroa.5267.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.zt, i64 16
  store i64 %.sroa.0195.0, ptr %.sroa.5267.0..sroa_idx, align 8, !noalias !1378
  %.sroa.6268.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.zt, i64 24
  store i64 %i.zj, ptr %.sroa.6268.0..sroa_idx, align 8, !noalias !1378
  %i.zu = add i64 %i.zo, 1
  store i64 %i.zu, ptr %i.zn, align 8, !alias.scope !1377, !noalias !1378
  br label %bb.av

bb.gx:                                            ; preds = %bb.av
  call void @llvm.experimental.noalias.scope.decl(metadata !1380)
  call void @llvm.experimental.noalias.scope.decl(metadata !1381)
  %i.zv = load ptr, ptr %0, align 8, !alias.scope !1382, !nonnull !3, !align !5, !noundef !3
  call void @llvm.experimental.noalias.scope.decl(metadata !1383)
  %i.zw = load ptr, ptr %i.zv, align 8, !alias.scope !1383, !noalias !1382, !nonnull !3, !align !5, !noundef !3 ; 3 uses
  %i.zx = getelementptr inbounds nuw i8, ptr %i.zw, i64 120 ; 2 uses
  %i.zy = getelementptr inbounds nuw i8, ptr %i.zw, i64 136 ; 2 uses
  %i.zz = load i64, ptr %i.zy, align 8, !alias.scope !1384, !noalias !1385, !noundef !3 ; 3 uses
  %i.aaa = load i64, ptr %i.zx, align 8, !range !6, !alias.scope !1384, !noalias !1385, !noundef !3
  %i.aab = icmp eq i64 %i.zz, %i.aaa
  br i1 %i.aab, label %bb.gy, label %_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCsiqiOkcJdymw_7similar5types6DiffOpE8push_mutCskXhPDodhyTq_6mdtest.exit162

bb.gy:                                            ; preds = %bb.gx
  call void @_RNvMs3_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecNtNtCsiqiOkcJdymw_7similar5types6DiffOpE8grow_oneBP_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.zx), !noalias !1386
  br label %_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCsiqiOkcJdymw_7similar5types6DiffOpE8push_mutCskXhPDodhyTq_6mdtest.exit162

_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCsiqiOkcJdymw_7similar5types6DiffOpE8push_mutCskXhPDodhyTq_6mdtest.exit162: ; preds = %bb.gx, %bb.gy
  %i.aac = getelementptr inbounds nuw i8, ptr %i.zw, i64 128
  %i.aad = load ptr, ptr %i.aac, align 8, !alias.scope !1384, !noalias !1385, !nonnull !3, !noundef !3
  %i.aae = getelementptr inbounds nuw [40 x i8], ptr %i.aad, i64 %i.zz ; 4 uses
  store i64 0, ptr %i.aae, align 8, !noalias !1385
  %.sroa.4236.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.aae, i64 8
  store i64 %i.l, ptr %.sroa.4236.0..sroa_idx, align 8, !noalias !1385
  %.sroa.5237.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.aae, i64 16
  store i64 %i.m, ptr %.sroa.5237.0..sroa_idx, align 8, !noalias !1385
  %.sroa.6238.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.aae, i64 24
  store i64 %i.k, ptr %.sroa.6238.0..sroa_idx, align 8, !noalias !1385
  %i.aaf = add i64 %i.zz, 1
  store i64 %i.aaf, ptr %i.zy, align 8, !alias.scope !1384, !noalias !1385
  br label %bb.gz

bb.gz:                                            ; preds = %bb.av, %_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCsiqiOkcJdymw_7similar5types6DiffOpE8push_mutCskXhPDodhyTq_6mdtest.exit162
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtNtCsiqiOkcJdymw_7similar10algorithms5myers7conquerINtNtB4_5utils12OffsetLookupmEBS_INtNtB4_7compact7CompactBS_BS_INtNtB4_7replace7ReplaceNtNtB4_7capture7CaptureEEECskXhPDodhyTq_6mdtest(ptr noalias noundef nonnull align 8 dereferenceable(160) %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %1, i64 noundef %2, i64 noundef %3, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %4, i64 noundef %5, i64 noundef %6, ptr noalias noundef nonnull align 8 dereferenceable(32) %7, ptr noalias noundef nonnull align 8 dereferenceable(32) %8, i64 %9, i32 noundef range(i32 -1, 1000000000) %10) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = alloca [24 x i8], align 8                ; 11 uses
  %i.c = alloca [24 x i8], align 8                ; 6 uses
  %i.d = alloca [24 x i8], align 8                ; 11 uses
  %i.e = alloca [32 x i8], align 8                ; 6 uses
  %i.f = alloca [32 x i8], align 8                ; 6 uses
  %i.g = alloca [24 x i8], align 8                ; 7 uses
  %i.h = tail call noundef i64 @_RINvNtNtCsiqiOkcJdymw_7similar10algorithms5utils17common_prefix_lenINtB2_12OffsetLookupmEB13_ECskXhPDodhyTq_6mdtest(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %1, i64 noundef %2, i64 noundef %3, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %4, i64 noundef %5, i64 noundef %6) ; 4 uses
  %.not = icmp eq i64 %i.h, 0
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCsiqiOkcJdymw_7similar5types6DiffOpE8push_mutCskXhPDodhyTq_6mdtest.exit, %bb.a
  %i.i = add i64 %i.h, %2                         ; 2 uses
  %i.j = add i64 %i.h, %5                         ; 2 uses
  %i.k = tail call noundef i64 @_RINvNtNtCsiqiOkcJdymw_7similar10algorithms5utils17common_suffix_lenINtB2_12OffsetLookupmEB13_ECskXhPDodhyTq_6mdtest(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %1, i64 noundef %i.i, i64 noundef %3, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %4, i64 noundef %i.j, i64 noundef %6) ; 4 uses
  %i.l = sub i64 %3, %i.k                         ; 9 uses
  %i.m = sub i64 %6, %i.k                         ; 9 uses
  %i.n = getelementptr inbounds nuw i8, ptr %4, i64 24
  %i.o = load i64, ptr %i.n, align 8              ; 8 uses
  %i.p = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.q = load i64, ptr %i.p, align 8              ; 27 uses
  %i.r = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.s = load ptr, ptr %i.r, align 8, !nonnull !3 ; 11 uses
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.u = load i64, ptr %i.t, align 8              ; 5 uses
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.w = load i64, ptr %i.v, align 8              ; 23 uses
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.y = load ptr, ptr %i.x, align 8, !nonnull !3 ; 10 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.f, i64 8 ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %i.ab = getelementptr inbounds nuw i8, ptr %i.f, i64 24
  %i.ac = getelementptr inbounds nuw i8, ptr %i.e, i64 8 ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  %i.ae = getelementptr inbounds nuw i8, ptr %i.e, i64 24
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 120 ; 37 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 136 ; 25 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 128 ; 14 uses
  br label %bb.e

bb.c:                                             ; preds = %bb.a
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 120 ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 136 ; 2 uses
  %i.ak = load i64, ptr %i.aj, align 8, !alias.scope !1465, !noundef !3 ; 3 uses
  %i.al = load i64, ptr %i.ai, align 8, !range !6, !alias.scope !1465, !noundef !3
  %i.am = icmp eq i64 %i.ak, %i.al
  br i1 %i.am, label %bb.d, label %_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCsiqiOkcJdymw_7similar5types6DiffOpE8push_mutCskXhPDodhyTq_6mdtest.exit

bb.d:                                             ; preds = %bb.c
  tail call void @_RNvMs3_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecNtNtCsiqiOkcJdymw_7similar5types6DiffOpE8grow_oneBP_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.ai), !noalias !1466
  br label %_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCsiqiOkcJdymw_7similar5types6DiffOpE8push_mutCskXhPDodhyTq_6mdtest.exit

_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCsiqiOkcJdymw_7similar5types6DiffOpE8push_mutCskXhPDodhyTq_6mdtest.exit: ; preds = %bb.c, %bb.d
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.ao = load ptr, ptr %i.an, align 8, !alias.scope !1465, !nonnull !3, !noundef !3
  %i.ap = getelementptr inbounds nuw [40 x i8], ptr %i.ao, i64 %i.ak ; 4 uses
  store i64 0, ptr %i.ap, align 8
  %.sroa.4232.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ap, i64 8
  store i64 %2, ptr %.sroa.4232.0..sroa_idx, align 8
  %.sroa.5233.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ap, i64 16
  store i64 %5, ptr %.sroa.5233.0..sroa_idx, align 8
  %.sroa.6234.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ap, i64 24
  store i64 %i.h, ptr %.sroa.6234.0..sroa_idx, align 8
  %i.aq = add i64 %i.ak, 1
  store i64 %i.aq, ptr %i.aj, align 8, !alias.scope !1465
  br label %bb.b

bb.e:                                             ; preds = %_RINvNtNtCsiqiOkcJdymw_7similar10algorithms5myers21try_emit_front_anchorINtNtB4_5utils12OffsetLookupmEB17_INtNtB4_7compact7CompactB17_B17_INtNtB4_7replace7ReplaceNtNtB4_7capture7CaptureEEECskXhPDodhyTq_6mdtest.exit, %bb.b
  %.sroa.0186.0 = phi i64 [ %i.j, %bb.b ], [ %.sroa.0186.2, %_RINvNtNtCsiqiOkcJdymw_7similar10algorithms5myers21try_emit_front_anchorINtNtB4_5utils12OffsetLookupmEB17_INtNtB4_7compact7CompactB17_B17_INtNtB4_7replace7ReplaceNtNtB4_7capture7CaptureEEECskXhPDodhyTq_6mdtest.exit ] ; 39 uses
  %.sroa.0.0 = phi i64 [ %i.i, %bb.b ], [ %.sroa.0.2, %_RINvNtNtCsiqiOkcJdymw_7similar10algorithms5myers21try_emit_front_anchorINtNtB4_5utils12OffsetLookupmEB17_INtNtB4_7compact7CompactB17_B17_INtNtB4_7replace7ReplaceNtNtB4_7capture7CaptureEEECskXhPDodhyTq_6mdtest.exit ] ; 31 uses
  %i.ar = icmp ult i64 %.sroa.0.0, %i.l           ; 2 uses
  %i.as = icmp ult i64 %.sroa.0186.0, %i.m        ; 3 uses
  %or.cond303 = select i1 %i.ar, i1 %i.as, i1 false
  br i1 %or.cond303, label %bb.g, label %bb.f

bb.f:                                             ; preds = %_RINvNtNtCsiqiOkcJdymw_7similar10algorithms5myers21try_emit_front_anchorINtNtB4_5utils12OffsetLookupmEB17_INtNtB4_7compact7CompactB17_B17_INtNtB4_7replace7ReplaceNtNtB4_7capture7CaptureEEECskXhPDodhyTq_6mdtest.exit, %bb.e
  br i1 %i.ar, label %bb.aq, label %bb.ar

bb.g:                                             ; preds = %bb.e
  %i.at = sub nuw i64 %i.l, %.sroa.0.0            ; 5 uses
  %i.au = sub nuw i64 %i.m, %.sroa.0186.0         ; 6 uses
  %i.av = icmp ult i64 %i.at, 97
  %i.aw = icmp ult i64 %i.au, 97
  %or.cond.i = or i1 %i.aw, %i.av
  br i1 %or.cond.i, label %_RINvNtNtCsiqiOkcJdymw_7similar10algorithms5myers21try_emit_front_anchorINtNtB4_5utils12OffsetLookupmEB17_INtNtB4_7compact7CompactB17_B17_INtNtB4_7replace7ReplaceNtNtB4_7capture7CaptureEEECskXhPDodhyTq_6mdtest.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %.sroa.0.0.i51 = call noundef i64 @llvm.umin.i64(i64 %i.au, i64 %i.at) ; 2 uses
  %.sroa.0.0.i52 = call noundef i64 @llvm.umax.i64(i64 %i.au, i64 %i.at)
  %i.ax = shl nuw i64 %.sroa.0.0.i51, 1
  %i.ay = icmp slt i64 %.sroa.0.0.i51, 0
  br i1 %i.ay, label %bb.i, label %bb.j, !prof !7

bb.i:                                             ; preds = %bb.h
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %.sroa.052.0.i = phi i64 [ -1, %bb.i ], [ %i.ax, %bb.h ]
  %i.az = icmp ult i64 %.sroa.0.0.i52, %.sroa.052.0.i
  br i1 %i.az, label %_RINvNtNtCsiqiOkcJdymw_7similar10algorithms5myers21try_emit_front_anchorINtNtB4_5utils12OffsetLookupmEB17_INtNtB4_7compact7CompactB17_B17_INtNtB4_7replace7ReplaceNtNtB4_7capture7CaptureEEECskXhPDodhyTq_6mdtest.exit, label %bb.k

bb.k:                                             ; preds = %bb.j
  %.not.i = icmp ule i64 %i.au, %i.at
  %i.ba = icmp ule i64 %i.at, %i.au
  %.not.i.fr = freeze i1 %.not.i
  %i.bb = sub i64 %.sroa.0186.0, %i.o             ; 2 uses
  %i.bc = icmp ult i64 %i.bb, %i.q
  %i.bd = getelementptr inbounds nuw [4 x i8], ptr %i.s, i64 %i.bb
  br label %bb.l

.loopexit:                                        ; preds = %.outer, %bb.z, %bb.o, %bb.y
  %.sroa.525.2.i.ph.lcssa476 = phi i64 [ %.sroa.525.2.i.ph627, %bb.o ], [ %.sroa.525.2.i.ph627, %bb.z ], [ %.sroa.525.2.i.ph627, %bb.y ], [ %.sroa.525.3.i, %.outer ] ; 2 uses
  %.sroa.023.1.i.ph.lcssa469 = phi i64 [ %.sroa.023.1.i.ph628, %bb.o ], [ %.sroa.023.1.i.ph628, %bb.z ], [ %.sroa.023.1.i.ph628, %bb.y ], [ %.sroa.023.2.i, %.outer ] ; 2 uses
  %.sroa.9.2.i.ph.lcssa462 = phi i64 [ %.sroa.9.2.i.ph629, %bb.o ], [ %.sroa.9.2.i.ph629, %bb.z ], [ %.sroa.9.2.i.ph629, %bb.y ], [ %.sroa.9.3.i, %.outer ] ; 2 uses
  %.sroa.12.2.i.ph.lcssa455 = phi i64 [ %.sroa.12.2.i.ph630, %bb.o ], [ %.sroa.12.2.i.ph630, %bb.z ], [ %.sroa.12.2.i.ph630, %bb.y ], [ %.sroa.12.3.i, %.outer ] ; 2 uses
  %.not.i55 = icmp ugt i64 %spec.select304, 4
  %or.cond309 = or i1 %i.be, %.not.i55
  br i1 %or.cond309, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k, %.loopexit
  %.sroa.12.0.i635 = phi i64 [ undef, %bb.k ], [ %.sroa.12.2.i.ph.lcssa455, %.loopexit ]
  %.sroa.9.0.i634 = phi i64 [ undef, %bb.k ], [ %.sroa.9.2.i.ph.lcssa462, %.loopexit ]
  %.sroa.023.0.i633 = phi i64 [ 0, %bb.k ], [ %.sroa.023.1.i.ph.lcssa469, %.loopexit ]
  %.sroa.525.0.i632 = phi i64 [ undef, %bb.k ], [ %.sroa.525.2.i.ph.lcssa476, %.loopexit ]
  %.sroa.0219.0631 = phi i64 [ 0, %bb.k ], [ %spec.select304, %.loopexit ] ; 11 uses
  %i.be = icmp eq i64 %.sroa.0219.0631, 4         ; 2 uses
  %i.bf = add nuw nsw i64 %.sroa.0219.0631, 1
  %spec.select304 = select i1 %i.be, i64 4, i64 %i.bf ; 2 uses
  %i.bg = icmp eq i64 %.sroa.0219.0631, 0
  %i.bh = add i64 %.sroa.0219.0631, %.sroa.0.0    ; 2 uses
  %i.bi = sub i64 %i.bh, %i.u                     ; 5 uses
  %i.bj = icmp ult i64 %i.bi, %i.w                ; 2 uses
  %i.bk = getelementptr inbounds nuw [4 x i8], ptr %i.y, i64 %i.bi ; 2 uses
  %i.bl = sub i64 %i.l, %i.bh
  br label %.lr.ph

bb.m:                                             ; preds = %.loopexit
  %i.bm = trunc nuw i64 %.sroa.023.1.i.ph.lcssa469 to i1
  br i1 %i.bm, label %.loopexit386, label %_RINvNtNtCsiqiOkcJdymw_7similar10algorithms5myers21try_emit_front_anchorINtNtB4_5utils12OffsetLookupmEB17_INtNtB4_7compact7CompactB17_B17_INtNtB4_7replace7ReplaceNtNtB4_7capture7CaptureEEECskXhPDodhyTq_6mdtest.exit

.loopexit386:                                     ; preds = %bb.aa, %bb.m
  %.sroa.525.1.i = phi i64 [ %.sroa.525.2.i.ph.lcssa476, %bb.m ], [ %.sroa.0219.0631, %bb.aa ] ; 5 uses
  %.sroa.9.1.i = phi i64 [ %.sroa.9.2.i.ph.lcssa462, %bb.m ], [ %.us-phi539, %bb.aa ] ; 6 uses
  %.sroa.12.1.i = phi i64 [ %.sroa.12.2.i.ph.lcssa455, %bb.m ], [ %.sroa.01.0.i.lcssa, %bb.aa ] ; 3 uses
  %i.bn = icmp eq i64 %.sroa.525.1.i, 0
  %i.bo = icmp eq i64 %.sroa.9.1.i, 0             ; 2 uses
  %.pre = load i64, ptr %i.ag, align 8, !noalias !1467 ; 10 uses
  br i1 %i.bn, label %bb.ai, label %bb.aj

.lr.ph.split.split:                               ; preds = %.lr.ph.split, %bb.o
  %.sroa.0220.0514 = phi i64 [ %spec.select306, %bb.o ], [ %.sroa.0220.0.ph626, %.lr.ph.split ] ; 3 uses
  %i.bp = icmp eq i64 %.sroa.0220.0514, 4         ; 3 uses
  %i.bq = add nuw nsw i64 %.sroa.0220.0514, 1
  %spec.select306 = select i1 %i.bp, i64 4, i64 %i.bq ; 3 uses
  %i.br = call noundef zeroext i1 @_RNvNtCsiqiOkcJdymw_7similar16deadline_support17deadline_exceeded(i64 %9, i32 noundef range(i32 -1, 1000000000) %10), !noalias !1468
  br i1 %i.br, label %_RINvNtNtCsiqiOkcJdymw_7similar10algorithms5myers21try_emit_front_anchorINtNtB4_5utils12OffsetLookupmEB17_INtNtB4_7compact7CompactB17_B17_INtNtB4_7replace7ReplaceNtNtB4_7capture7CaptureEEECskXhPDodhyTq_6mdtest.exit, label %bb.n

bb.n:                                             ; preds = %.lr.ph.split.split
  %.not638 = icmp eq i64 %.sroa.0220.0514, 0
  br i1 %.not638, label %bb.p, label %bb.o

bb.o:                                             ; preds = %bb.n, %_RNvXs3_NtNtCsiqiOkcJdymw_7similar10algorithms5utilsINtB5_12OffsetLookupmEINtNtNtCs4NRVxsYgnAr_4core3ops5index5IndexjE5indexCskXhPDodhyTq_6mdtest.exit30
  %.not.i57 = icmp ugt i64 %spec.select306, 4
  %or.cond310 = select i1 %i.bp, i1 true, i1 %.not.i57
  br i1 %or.cond310, label %.loopexit, label %.lr.ph.split.split

bb.p:                                             ; preds = %bb.n
  br i1 %i.bc, label %_RNvXs3_NtNtCsiqiOkcJdymw_7similar10algorithms5utilsINtB5_12OffsetLookupmEINtNtNtCs4NRVxsYgnAr_4core3ops5index5IndexjE5indexCskXhPDodhyTq_6mdtest.exit31, label %.split.loopexit1081

.split.loopexit1081:                              ; preds = %bb.p
  %i.bs = sub i64 %.sroa.0186.0, %i.o
  br label %.split

.split:                                           ; preds = %bb.x, %.split.loopexit1081
  %.us-phi = phi i64 [ %i.bs, %.split.loopexit1081 ], [ %i.cj, %bb.x ]
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking18panic_bounds_check(i64 noundef %.us-phi, i64 noundef %i.q, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @79) #14, !noalias !1469
  unreachable

_RNvXs3_NtNtCsiqiOkcJdymw_7similar10algorithms5utilsINtB5_12OffsetLookupmEINtNtNtCs4NRVxsYgnAr_4core3ops5index5IndexjE5indexCskXhPDodhyTq_6mdtest.exit31: ; preds = %bb.p
  br i1 %i.bj, label %_RNvXs3_NtNtCsiqiOkcJdymw_7similar10algorithms5utilsINtB5_12OffsetLookupmEINtNtNtCs4NRVxsYgnAr_4core3ops5index5IndexjE5indexCskXhPDodhyTq_6mdtest.exit30, label %.split524

.split524:                                        ; preds = %_RNvXs3_NtNtCsiqiOkcJdymw_7similar10algorithms5utilsINtB5_12OffsetLookupmEINtNtNtCs4NRVxsYgnAr_4core3ops5index5IndexjE5indexCskXhPDodhyTq_6mdtest.exit31, %_RNvXs3_NtNtCsiqiOkcJdymw_7similar10algorithms5utilsINtB5_12OffsetLookupmEINtNtNtCs4NRVxsYgnAr_4core3ops5index5IndexjE5indexCskXhPDodhyTq_6mdtest.exit31.us
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking18panic_bounds_check(i64 noundef %i.bi, i64 noundef %i.w, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @80) #14, !noalias !1470
  unreachable

_RNvXs3_NtNtCsiqiOkcJdymw_7similar10algorithms5utilsINtB5_12OffsetLookupmEINtNtNtCs4NRVxsYgnAr_4core3ops5index5IndexjE5indexCskXhPDodhyTq_6mdtest.exit30: ; preds = %_RNvXs3_NtNtCsiqiOkcJdymw_7similar10algorithms5utilsINtB5_12OffsetLookupmEINtNtNtCs4NRVxsYgnAr_4core3ops5index5IndexjE5indexCskXhPDodhyTq_6mdtest.exit31
  %.val49 = load i32, ptr %i.bd, align 4, !noundef !3
  %.val50 = load i32, ptr %i.bk, align 4, !noundef !3
  %.not307 = icmp eq i32 %.val49, %.val50
  br i1 %.not307, label %.split528, label %bb.o

.split528.loopexit:                               ; preds = %_RNvXs3_NtNtCsiqiOkcJdymw_7similar10algorithms5utilsINtB5_12OffsetLookupmEINtNtNtCs4NRVxsYgnAr_4core3ops5index5IndexjE5indexCskXhPDodhyTq_6mdtest.exit30.us
  %.pre869 = sub i64 %i.m, %i.ci
  br label %.split528

.split528:                                        ; preds = %_RNvXs3_NtNtCsiqiOkcJdymw_7similar10algorithms5utilsINtB5_12OffsetLookupmEINtNtNtCs4NRVxsYgnAr_4core3ops5index5IndexjE5indexCskXhPDodhyTq_6mdtest.exit30, %.split528.loopexit
  %.pre-phi = phi i64 [ %.pre869, %.split528.loopexit ], [ %i.au, %_RNvXs3_NtNtCsiqiOkcJdymw_7similar10algorithms5utilsINtB5_12OffsetLookupmEINtNtNtCs4NRVxsYgnAr_4core3ops5index5IndexjE5indexCskXhPDodhyTq_6mdtest.exit30 ]
  %.us-phi534 = phi i64 [ %i.ci, %.split528.loopexit ], [ %.sroa.0186.0, %_RNvXs3_NtNtCsiqiOkcJdymw_7similar10algorithms5utilsINtB5_12OffsetLookupmEINtNtNtCs4NRVxsYgnAr_4core3ops5index5IndexjE5indexCskXhPDodhyTq_6mdtest.exit30 ]
  %.us-phi537 = phi i1 [ %i.cf, %.split528.loopexit ], [ %i.bp, %_RNvXs3_NtNtCsiqiOkcJdymw_7similar10algorithms5utilsINtB5_12OffsetLookupmEINtNtNtCs4NRVxsYgnAr_4core3ops5index5IndexjE5indexCskXhPDodhyTq_6mdtest.exit30 ]
  %.us-phi538 = phi i64 [ %spec.select306.us, %.split528.loopexit ], [ %spec.select306, %_RNvXs3_NtNtCsiqiOkcJdymw_7similar10algorithms5utilsINtB5_12OffsetLookupmEINtNtNtCs4NRVxsYgnAr_4core3ops5index5IndexjE5indexCskXhPDodhyTq_6mdtest.exit30 ] ; 2 uses
  %.us-phi539 = phi i64 [ %.sroa.0220.0514.us, %.split528.loopexit ], [ 0, %_RNvXs3_NtNtCsiqiOkcJdymw_7similar10algorithms5utilsINtB5_12OffsetLookupmEINtNtNtCs4NRVxsYgnAr_4core3ops5index5IndexjE5indexCskXhPDodhyTq_6mdtest.exit30 ] ; 6 uses
  %.sroa.0.0.i61 = call noundef i64 @llvm.umin.i64(i64 %.pre-phi, i64 %i.bl) ; 3 uses
  %.not639 = icmp eq i64 %.sroa.0.0.i61, 0
  br i1 %.not639, label %.outer, label %.lr.ph623

.lr.ph623:                                        ; preds = %.split528
  %i.bt = sub i64 %.us-phi534, %i.o               ; 2 uses
  br label %bb.q

bb.q:                                             ; preds = %.lr.ph623, %bb.v
  %.sroa.01.0.i622 = phi i64 [ 0, %.lr.ph623 ], [ %i.cd, %bb.v ] ; 5 uses
  %i.bu = and i64 %.sroa.01.0.i622, 1023
  %i.bv = icmp eq i64 %i.bu, 0
  br i1 %i.bv, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  %i.bw = call noundef zeroext i1 @_RNvNtCsiqiOkcJdymw_7similar16deadline_support17deadline_exceeded(i64 %9, i32 noundef range(i32 -1, 1000000000) %10), !noalias !1468
  br i1 %i.bw, label %_RINvNtNtCsiqiOkcJdymw_7similar10algorithms5myers21try_emit_front_anchorINtNtB4_5utils12OffsetLookupmEB17_INtNtB4_7compact7CompactB17_B17_INtNtB4_7replace7ReplaceNtNtB4_7capture7CaptureEEECskXhPDodhyTq_6mdtest.exit, label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.q
  %i.bx = add nuw i64 %i.bt, %.sroa.01.0.i622     ; 2 uses
  %i.by = icmp ult i64 %i.bx, %i.q
  br i1 %i.by, label %_RNvXs3_NtNtCsiqiOkcJdymw_7similar10algorithms5utilsINtB5_12OffsetLookupmEINtNtNtCs4NRVxsYgnAr_4core3ops5index5IndexjE5indexCskXhPDodhyTq_6mdtest.exit29, label %bb.t

bb.t:                                             ; preds = %bb.s
  %umax = call i64 @llvm.umax.i64(i64 %i.q, i64 %i.bt)
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking18panic_bounds_check(i64 noundef %umax, i64 noundef %i.q, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @81) #14, !noalias !1471
end_hunk_10
begin_hunk_11_@_RINvNtNtCsiqiOkcJdymw_7similar10algorithms5myers7conquerINtNtB4_5utils12OffsetLookupmEBS_INtNtB4_7compact7CompactBS_BS_INtNtB4_7replace7ReplaceNtNtB4_7capture7CaptureEEECskXhPDodhyTq_6mdtest:bb.a
  br label %.outer

bb.ai:                                            ; preds = %.loopexit386
  br i1 %i.bo, label %bb.ak, label %bb.am

bb.aj:                                            ; preds = %.loopexit386
  %i.db = load i64, ptr %i.af, align 8, !range !6, !noalias !1467, !noundef !3
  %i.dc = icmp eq i64 %.pre, %i.db                ; 2 uses
  br i1 %i.bo, label %bb.an, label %bb.ao

.sink.split.sink.split:                           ; preds = %_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCsiqiOkcJdymw_7similar5types6DiffOpE8push_mutCskXhPDodhyTq_6mdtest.exit67, %bb.an, %bb.am
  %.pre.sink.ph = phi i64 [ %.pre, %bb.an ], [ %.pre, %bb.am ], [ %i.du, %_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCsiqiOkcJdymw_7similar5types6DiffOpE8push_mutCskXhPDodhyTq_6mdtest.exit67 ]
  %.sink1262.ph = phi i64 [ 1, %bb.an ], [ 2, %bb.am ], [ 2, %_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCsiqiOkcJdymw_7similar5types6DiffOpE8push_mutCskXhPDodhyTq_6mdtest.exit67 ]
  %.sroa.0186.0.sink.ph = phi i64 [ %.sroa.525.1.i, %bb.an ], [ %.sroa.0186.0, %bb.am ], [ %.sroa.0186.0, %_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCsiqiOkcJdymw_7similar5types6DiffOpE8push_mutCskXhPDodhyTq_6mdtest.exit67 ]
  %.sroa.9.1.i.sink.ph = phi i64 [ %.sroa.0186.0, %bb.an ], [ %.sroa.9.1.i, %bb.am ], [ %.sroa.9.1.i, %_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCsiqiOkcJdymw_7similar5types6DiffOpE8push_mutCskXhPDodhyTq_6mdtest.exit67 ]
  %.sink1259.ph = phi i64 [ 1, %bb.an ], [ 1, %bb.am ], [ 2, %_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCsiqiOkcJdymw_7similar5types6DiffOpE8push_mutCskXhPDodhyTq_6mdtest.exit67 ]
  call void @_RNvMs3_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecNtNtCsiqiOkcJdymw_7similar5types6DiffOpE8grow_oneBP_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.af), !noalias !1467
  br label %.sink.split

.sink.split:                                      ; preds = %.sink.split.sink.split, %_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCsiqiOkcJdymw_7similar5types6DiffOpE8push_mutCskXhPDodhyTq_6mdtest.exit67, %bb.an, %bb.am
  %.pre.sink = phi i64 [ %.pre, %bb.an ], [ %i.du, %_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCsiqiOkcJdymw_7similar5types6DiffOpE8push_mutCskXhPDodhyTq_6mdtest.exit67 ], [ %.pre, %bb.am ], [ %.pre.sink.ph, %.sink.split.sink.split ]
  %.sink1262 = phi i64 [ 1, %bb.an ], [ 2, %_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCsiqiOkcJdymw_7similar5types6DiffOpE8push_mutCskXhPDodhyTq_6mdtest.exit67 ], [ 2, %bb.am ], [ %.sink1262.ph, %.sink.split.sink.split ]
  %.sroa.0186.0.sink = phi i64 [ %.sroa.525.1.i, %bb.an ], [ %.sroa.0186.0, %_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCsiqiOkcJdymw_7similar5types6DiffOpE8push_mutCskXhPDodhyTq_6mdtest.exit67 ], [ %.sroa.0186.0, %bb.am ], [ %.sroa.0186.0.sink.ph, %.sink.split.sink.split ]
  %.sroa.9.1.i.sink = phi i64 [ %.sroa.0186.0, %bb.an ], [ %.sroa.9.1.i, %_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCsiqiOkcJdymw_7similar5types6DiffOpE8push_mutCskXhPDodhyTq_6mdtest.exit67 ], [ %.sroa.9.1.i, %bb.am ], [ %.sroa.9.1.i.sink.ph, %.sink.split.sink.split ]
  %.sink1259 = phi i64 [ 1, %bb.an ], [ 2, %_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCsiqiOkcJdymw_7similar5types6DiffOpE8push_mutCskXhPDodhyTq_6mdtest.exit67 ], [ 1, %bb.am ], [ %.sink1259.ph, %.sink.split.sink.split ]
  %i.dd = load ptr, ptr %i.ah, align 8, !noalias !1467, !nonnull !3, !noundef !3
  %i.de = getelementptr inbounds nuw [40 x i8], ptr %i.dd, i64 %.pre.sink ; 4 uses
  store i64 %.sink1262, ptr %i.de, align 8, !noalias !1467
  %.sroa.4252.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.de, i64 8
  store i64 %.sroa.0.0, ptr %.sroa.4252.0..sroa_idx, align 8, !noalias !1467
  %.sroa.5253.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.de, i64 16
  store i64 %.sroa.0186.0.sink, ptr %.sroa.5253.0..sroa_idx, align 8, !noalias !1467
  %.sroa.6254.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.de, i64 24
  store i64 %.sroa.9.1.i.sink, ptr %.sroa.6254.0..sroa_idx, align 8, !noalias !1467
  %i.df = add i64 %.pre, %.sink1259               ; 2 uses
  store i64 %i.df, ptr %i.ag, align 8, !noalias !1467
  br label %bb.ak

bb.ak:                                            ; preds = %.sink.split, %bb.ai
  %i.dg = phi i64 [ %.pre, %bb.ai ], [ %i.df, %.sink.split ] ; 3 uses
  %i.dh = add i64 %.sroa.525.1.i, %.sroa.0.0      ; 2 uses
  %i.di = add i64 %.sroa.9.1.i, %.sroa.0186.0     ; 2 uses
  %i.dj = load i64, ptr %i.af, align 8, !range !6, !alias.scope !1474, !noalias !1467, !noundef !3
  %i.dk = icmp eq i64 %i.dg, %i.dj
  br i1 %i.dk, label %bb.al, label %_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCsiqiOkcJdymw_7similar5types6DiffOpE8push_mutCskXhPDodhyTq_6mdtest.exit64

bb.al:                                            ; preds = %bb.ak
  call void @_RNvMs3_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecNtNtCsiqiOkcJdymw_7similar5types6DiffOpE8grow_oneBP_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.af), !noalias !1475
  br label %_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCsiqiOkcJdymw_7similar5types6DiffOpE8push_mutCskXhPDodhyTq_6mdtest.exit64

_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCsiqiOkcJdymw_7similar5types6DiffOpE8push_mutCskXhPDodhyTq_6mdtest.exit64: ; preds = %bb.ak, %bb.al
  %i.dl = load ptr, ptr %i.ah, align 8, !alias.scope !1474, !noalias !1467, !nonnull !3, !noundef !3
  %i.dm = getelementptr inbounds nuw [40 x i8], ptr %i.dl, i64 %i.dg ; 4 uses
  store i64 0, ptr %i.dm, align 8, !noalias !1467
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.dm, i64 8
  store i64 %i.dh, ptr %.sroa.4.0..sroa_idx, align 8, !noalias !1467
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.dm, i64 16
  store i64 %i.di, ptr %.sroa.5.0..sroa_idx, align 8, !noalias !1467
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.dm, i64 24
  store i64 %.sroa.12.1.i, ptr %.sroa.6.0..sroa_idx, align 8, !noalias !1467
  %i.dn = add i64 %i.dg, 1
  store i64 %i.dn, ptr %i.ag, align 8, !alias.scope !1474, !noalias !1467
  %i.do = add i64 %i.dh, %.sroa.12.1.i
  %i.dp = add i64 %i.di, %.sroa.12.1.i
  br label %_RINvNtNtCsiqiOkcJdymw_7similar10algorithms5myers21try_emit_front_anchorINtNtB4_5utils12OffsetLookupmEB17_INtNtB4_7compact7CompactB17_B17_INtNtB4_7replace7ReplaceNtNtB4_7capture7CaptureEEECskXhPDodhyTq_6mdtest.exit

bb.am:                                            ; preds = %bb.ai
  %i.dq = load i64, ptr %i.af, align 8, !range !6, !alias.scope !1476, !noalias !1467, !noundef !3
  %i.dr = icmp eq i64 %.pre, %i.dq
  br i1 %i.dr, label %.sink.split.sink.split, label %.sink.split

bb.an:                                            ; preds = %bb.aj
  br i1 %i.dc, label %.sink.split.sink.split, label %.sink.split

bb.ao:                                            ; preds = %bb.aj
  br i1 %i.dc, label %bb.ap, label %_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCsiqiOkcJdymw_7similar5types6DiffOpE8push_mutCskXhPDodhyTq_6mdtest.exit67

bb.ap:                                            ; preds = %bb.ao
  call void @_RNvMs3_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecNtNtCsiqiOkcJdymw_7similar5types6DiffOpE8grow_oneBP_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.af), !noalias !1477
  br label %_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCsiqiOkcJdymw_7similar5types6DiffOpE8push_mutCskXhPDodhyTq_6mdtest.exit67

_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCsiqiOkcJdymw_7similar5types6DiffOpE8push_mutCskXhPDodhyTq_6mdtest.exit67: ; preds = %bb.ao, %bb.ap
  %i.ds = load ptr, ptr %i.ah, align 8, !alias.scope !1478, !noalias !1467, !nonnull !3, !noundef !3
  %i.dt = getelementptr inbounds nuw [40 x i8], ptr %i.ds, i64 %.pre ; 4 uses
  store i64 1, ptr %i.dt, align 8, !noalias !1467
  %.sroa.4267.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.dt, i64 8
  store i64 %.sroa.0.0, ptr %.sroa.4267.0..sroa_idx, align 8, !noalias !1467
  %.sroa.5268.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.dt, i64 16
  store i64 %.sroa.525.1.i, ptr %.sroa.5268.0..sroa_idx, align 8, !noalias !1467
  %.sroa.6269.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.dt, i64 24
  store i64 %.sroa.0186.0, ptr %.sroa.6269.0..sroa_idx, align 8, !noalias !1467
  %i.du = add i64 %.pre, 1                        ; 4 uses
  store i64 %i.du, ptr %i.ag, align 8, !alias.scope !1478, !noalias !1467
  %i.dv = load i64, ptr %i.af, align 8, !range !6, !alias.scope !1479, !noalias !1467, !noundef !3
  %i.dw = icmp eq i64 %i.du, %i.dv
  br i1 %i.dw, label %.sink.split.sink.split, label %.sink.split

_RINvNtNtCsiqiOkcJdymw_7similar10algorithms5myers21try_emit_front_anchorINtNtB4_5utils12OffsetLookupmEB17_INtNtB4_7compact7CompactB17_B17_INtNtB4_7replace7ReplaceNtNtB4_7capture7CaptureEEECskXhPDodhyTq_6mdtest.exit: ; preds = %.lr.ph.split.split.us, %.lr.ph.split.split, %.lr.ph.split.us, %bb.r, %bb.g, %bb.j, %bb.m, %_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCsiqiOkcJdymw_7similar5types6DiffOpE8push_mutCskXhPDodhyTq_6mdtest.exit64
  %.sroa.0186.2 = phi i64 [ %.sroa.0186.0, %bb.g ], [ %.sroa.0186.0, %bb.j ], [ %.sroa.0186.0, %bb.m ], [ %i.dp, %_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCsiqiOkcJdymw_7similar5types6DiffOpE8push_mutCskXhPDodhyTq_6mdtest.exit64 ], [ %.sroa.0186.0, %.lr.ph.split.split ], [ %.sroa.0186.0, %.lr.ph.split.us ], [ %.sroa.0186.0, %bb.r ], [ %.sroa.0186.0, %.lr.ph.split.split.us ] ; 2 uses
  %.sroa.0.2 = phi i64 [ %.sroa.0.0, %bb.g ], [ %.sroa.0.0, %bb.j ], [ %.sroa.0.0, %bb.m ], [ %i.do, %_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCsiqiOkcJdymw_7similar5types6DiffOpE8push_mutCskXhPDodhyTq_6mdtest.exit64 ], [ %.sroa.0.0, %.lr.ph.split.split ], [ %.sroa.0.0, %.lr.ph.split.us ], [ %.sroa.0.0, %bb.r ], [ %.sroa.0.0, %.lr.ph.split.split.us ] ; 2 uses
  %i.dx = icmp eq i64 %.sroa.0.2, %.sroa.0.0
  %i.dy = icmp eq i64 %.sroa.0186.2, %.sroa.0186.0
  %or.cond = select i1 %i.dx, i1 %i.dy, i1 false
  br i1 %or.cond, label %bb.f, label %bb.e

bb.aq:                                            ; preds = %bb.f
  br i1 %i.as, label %bb.av, label %bb.at

bb.ar:                                            ; preds = %bb.f
  br i1 %i.as, label %.thread, label %bb.as

bb.as:                                            ; preds = %.sink.split.i.thread, %_RINvNtNtCsiqiOkcJdymw_7similar10algorithms5myers27maybe_emit_small_side_exactINtNtB4_5utils12OffsetLookupmEB1d_INtNtB4_7compact7CompactB1d_B1d_INtNtB4_7replace7ReplaceNtNtB4_7capture7CaptureEEECskXhPDodhyTq_6mdtest.exit.thread300, %_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCsiqiOkcJdymw_7similar5types6DiffOpE8push_mutCskXhPDodhyTq_6mdtest.exit69, %_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCsiqiOkcJdymw_7similar5types6DiffOpE8push_mutCskXhPDodhyTq_6mdtest.exit152, %_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCsiqiOkcJdymw_7similar5types6DiffOpE8push_mutCskXhPDodhyTq_6mdtest.exit151, %bb.gn, %bb.ar
  %.not26 = icmp eq i64 %i.k, 0
  br i1 %.not26, label %bb.gu, label %bb.gs

bb.at:                                            ; preds = %bb.aq
  %i.dz = sub nuw i64 %i.l, %.sroa.0.0
  %i.ea = load i64, ptr %i.ag, align 8, !alias.scope !1480, !noundef !3 ; 3 uses
  %i.eb = load i64, ptr %i.af, align 8, !range !6, !alias.scope !1480, !noundef !3
  %i.ec = icmp eq i64 %i.ea, %i.eb
  br i1 %i.ec, label %bb.au, label %_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCsiqiOkcJdymw_7similar5types6DiffOpE8push_mutCskXhPDodhyTq_6mdtest.exit69

bb.au:                                            ; preds = %bb.at
  call void @_RNvMs3_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecNtNtCsiqiOkcJdymw_7similar5types6DiffOpE8grow_oneBP_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.af), !noalias !1481
  br label %_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCsiqiOkcJdymw_7similar5types6DiffOpE8push_mutCskXhPDodhyTq_6mdtest.exit69

_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCsiqiOkcJdymw_7similar5types6DiffOpE8push_mutCskXhPDodhyTq_6mdtest.exit69: ; preds = %bb.at, %bb.au
  %i.ed = load ptr, ptr %i.ah, align 8, !alias.scope !1480, !nonnull !3, !noundef !3
  %i.ee = getelementptr inbounds nuw [40 x i8], ptr %i.ed, i64 %i.ea ; 4 uses
  store i64 1, ptr %i.ee, align 8
  %.sroa.4242.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ee, i64 8
  store i64 %.sroa.0.0, ptr %.sroa.4242.0..sroa_idx, align 8
  %.sroa.5243.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ee, i64 16
  store i64 %i.dz, ptr %.sroa.5243.0..sroa_idx, align 8
  %.sroa.6244.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ee, i64 24
  store i64 %.sroa.0186.0, ptr %.sroa.6244.0..sroa_idx, align 8
  %i.ef = add i64 %i.ea, 1
  store i64 %i.ef, ptr %i.ag, align 8, !alias.scope !1480
  br label %bb.as

bb.av:                                            ; preds = %bb.aq
  %i.eg = call noundef zeroext i1 @_RNvNtCsiqiOkcJdymw_7similar16deadline_support17deadline_exceeded(i64 %9, i32 noundef range(i32 -1, 1000000000) %10), !noalias !1482
  br i1 %i.eg, label %_RINvNtNtCsiqiOkcJdymw_7similar10algorithms5myers27maybe_emit_small_side_exactINtNtB4_5utils12OffsetLookupmEB1d_INtNtB4_7compact7CompactB1d_B1d_INtNtB4_7replace7ReplaceNtNtB4_7capture7CaptureEEECskXhPDodhyTq_6mdtest.exit.thread, label %bb.aw

bb.aw:                                            ; preds = %bb.av
  %i.eh = sub nuw i64 %i.l, %.sroa.0.0            ; 22 uses
  %i.ei = sub nuw i64 %i.m, %.sroa.0186.0         ; 22 uses
  %i.ej = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %i.eh, i64 %i.ei) ; 2 uses
  %i.ek = extractvalue { i64, i1 } %i.ej, 1
  br i1 %i.ek, label %_RINvNtNtCsiqiOkcJdymw_7similar10algorithms5myers27maybe_emit_small_side_exactINtNtB4_5utils12OffsetLookupmEB1d_INtNtB4_7compact7CompactB1d_B1d_INtNtB4_7replace7ReplaceNtNtB4_7capture7CaptureEEECskXhPDodhyTq_6mdtest.exit.thread, label %bb.ax, !prof !7

bb.ax:                                            ; preds = %bb.aw
  %i.el = extractvalue { i64, i1 } %i.ej, 0
  %.sroa.0.0.i71 = call noundef i64 @llvm.umax.i64(i64 %i.ei, i64 %i.eh)
  %.sroa.0.0.i70 = call noundef i64 @llvm.umin.i64(i64 %i.ei, i64 %i.eh)
  %i.em = add i64 %.sroa.0.0.i70, -65
  %or.cond.i27 = icmp ult i64 %i.em, -64
  %i.en = icmp ult i64 %.sroa.0.0.i71, 512
  %or.cond1.i = or i1 %i.en, %or.cond.i27
  %i.eo = icmp ugt i64 %i.el, 64000000
  %or.cond3.i = select i1 %or.cond1.i, i1 true, i1 %i.eo
  br i1 %or.cond3.i, label %_RINvNtNtCsiqiOkcJdymw_7similar10algorithms5myers27maybe_emit_small_side_exactINtNtB4_5utils12OffsetLookupmEB1d_INtNtB4_7compact7CompactB1d_B1d_INtNtB4_7replace7ReplaceNtNtB4_7capture7CaptureEEECskXhPDodhyTq_6mdtest.exit.thread, label %bb.ay

bb.ay:                                            ; preds = %bb.ax
  %.not.i28 = icmp ugt i64 %i.eh, %i.ei
  br i1 %.not.i28, label %bb.az, label %bb.ds

bb.az:                                            ; preds = %bb.ay
  call void @llvm.experimental.noalias.scope.decl(metadata !1483)
  %i.ep = call noundef zeroext i1 @_RNvNtCsiqiOkcJdymw_7similar16deadline_support17deadline_exceeded(i64 %9, i32 noundef range(i32 -1, 1000000000) %10), !noalias !1484
  br i1 %i.ep, label %_RINvNtNtCsiqiOkcJdymw_7similar10algorithms5myers27maybe_emit_small_side_exactINtNtB4_5utils12OffsetLookupmEB1d_INtNtB4_7compact7CompactB1d_B1d_INtNtB4_7replace7ReplaceNtNtB4_7capture7CaptureEEECskXhPDodhyTq_6mdtest.exit.thread, label %bb.ba

bb.ba:                                            ; preds = %bb.az
  %i.eq = add i64 %i.eh, 1                        ; 11 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !1484
  %i.er = add nuw i64 %i.ei, 1
  %i.es = mul i64 %i.eq, %i.er                    ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1485)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !1486
  call void @_RNvMs4_NtCscdodAO9FK5_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCskXhPDodhyTq_6mdtest(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.c, i64 noundef %i.es, i1 noundef zeroext true, i64 noundef 1, i64 noundef 1), !noalias !1487
  %i.et = load i64, ptr %i.c, align 8, !range !8, !noalias !1486, !noundef !3
  %i.eu = trunc nuw i64 %i.et to i1
  %i.ev = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.ew = load i64, ptr %i.ev, align 8, !range !9, !noalias !1486, !noundef !3 ; 2 uses
  %i.ex = getelementptr inbounds nuw i8, ptr %i.c, i64 16 ; 2 uses
  br i1 %i.eu, label %bb.bb, label %.lr.ph687.i, !prof !7

bb.bb:                                            ; preds = %bb.ba
  %i.ey = load i64, ptr %i.ex, align 8, !noalias !1486
  call void @_RNvNtCscdodAO9FK5_5alloc7raw_vec12handle_error(i64 noundef %i.ew, i64 %i.ey) #14, !noalias !1487
  unreachable

.lr.ph687.i:                                      ; preds = %bb.ba
  %i.ez = load ptr, ptr %i.ex, align 8, !noalias !1486, !nonnull !3, !noundef !3
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !1486
  store i64 %i.ew, ptr %i.d, align 8, !alias.scope !1485, !noalias !1484
  %i.fa = getelementptr inbounds nuw i8, ptr %i.d, i64 8 ; 7 uses
  store ptr %i.ez, ptr %i.fa, align 8, !alias.scope !1485, !noalias !1484
  %i.fb = getelementptr inbounds nuw i8, ptr %i.d, i64 16 ; 7 uses
  store i64 %i.es, ptr %i.fb, align 8, !alias.scope !1485, !noalias !1484
  %invariant.op688.i = sub i64 %.sroa.0186.0, %i.o ; 3 uses
  %invariant.op.i = sub i64 %.sroa.0.0, %i.u      ; 3 uses
  br label %.lr.ph687.split.i

.lr.ph687.split.i:                                ; preds = %.lr.ph687.i, %..loopexit257_crit_edge.split.us.i
  %.sroa.0102.0686.i = phi i64 [ %i.fc, %..loopexit257_crit_edge.split.us.i ], [ %i.ei, %.lr.ph687.i ] ; 2 uses
  %i.fc = add i64 %.sroa.0102.0686.i, -1          ; 4 uses
  %i.fd = invoke noundef zeroext i1 @_RNvNtCsiqiOkcJdymw_7similar16deadline_support17deadline_exceeded(i64 %9, i32 noundef range(i32 -1, 1000000000) %10)
          to label %bb.dd unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !1488

._crit_edge714.i:                                 ; preds = %_RNvXs1_NtNtCsiqiOkcJdymw_7similar10algorithms7compactINtB5_7CompactINtNtB7_5utils12OffsetLookupmEB13_INtNtB7_7replace7ReplaceNtNtB7_7capture7CaptureEENtNtB7_4hook8DiffHook5equalCskXhPDodhyTq_6mdtest.exit.i
  br i1 %i.jy, label %bb.bc, label %bb.be

.lr.ph713.i:                                      ; preds = %..loopexit257_crit_edge.split.us.i, %_RNvXs1_NtNtCsiqiOkcJdymw_7similar10algorithms7compactINtB5_7CompactINtNtB7_5utils12OffsetLookupmEB13_INtNtB7_7replace7ReplaceNtNtB7_7capture7CaptureEENtNtB7_4hook8DiffHook5equalCskXhPDodhyTq_6mdtest.exit.i
  %.sroa.05.0.not712.i = phi i1 [ false, %_RNvXs1_NtNtCsiqiOkcJdymw_7similar10algorithms7compactINtB5_7CompactINtNtB7_5utils12OffsetLookupmEB13_INtNtB7_7replace7ReplaceNtNtB7_7capture7CaptureEENtNtB7_4hook8DiffHook5equalCskXhPDodhyTq_6mdtest.exit.i ], [ true, %..loopexit257_crit_edge.split.us.i ] ; 3 uses
  %.sroa.09.0711.i = phi i64 [ %.sroa.09.3.i, %_RNvXs1_NtNtCsiqiOkcJdymw_7similar10algorithms7compactINtB5_7CompactINtNtB7_5utils12OffsetLookupmEB13_INtNtB7_7replace7ReplaceNtNtB7_7capture7CaptureEENtNtB7_4hook8DiffHook5equalCskXhPDodhyTq_6mdtest.exit.i ], [ 0, %..loopexit257_crit_edge.split.us.i ] ; 13 uses
  %.sroa.038.0710.i = phi i64 [ %.sroa.038.3.i, %_RNvXs1_NtNtCsiqiOkcJdymw_7similar10algorithms7compactINtB5_7CompactINtNtB7_5utils12OffsetLookupmEB13_INtNtB7_7replace7ReplaceNtNtB7_7capture7CaptureEENtNtB7_4hook8DiffHook5equalCskXhPDodhyTq_6mdtest.exit.i ], [ 0, %..loopexit257_crit_edge.split.us.i ] ; 18 uses
  %i.fe = and i64 %.sroa.038.0710.i, 1023
  %i.ff = icmp eq i64 %i.fe, 0
  %or.cond170.i = select i1 %.sroa.05.0.not712.i, i1 %i.ff, i1 false ; 2 uses
  br i1 %or.cond170.i, label %bb.bi, label %bb.bh

bb.bc:                                            ; preds = %._crit_edge714.i
  %i.fg = add i64 %.sroa.038.3.i, %.sroa.0.0      ; 2 uses
  %i.fh = sub nuw i64 %i.eh, %.sroa.038.3.i
  %i.fi = add i64 %.sroa.09.3.i, %.sroa.0186.0    ; 2 uses
  %i.fj = load i64, ptr %i.af, align 8, !range !6, !alias.scope !1489, !noundef !3
  %i.fk = icmp eq i64 %i.jw, %i.fj
  br i1 %i.fk, label %bb.bd, label %_RNvXs1_NtNtCsiqiOkcJdymw_7similar10algorithms7compactINtB5_7CompactINtNtB7_5utils12OffsetLookupmEB13_INtNtB7_7replace7ReplaceNtNtB7_7capture7CaptureEENtNtB7_4hook8DiffHook6deleteCskXhPDodhyTq_6mdtest.exit181.i

bb.bd:                                            ; preds = %bb.bc
  invoke void @_RNvMs3_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecNtNtCsiqiOkcJdymw_7similar5types6DiffOpE8grow_oneBP_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.af)
          to label %_RNvXs1_NtNtCsiqiOkcJdymw_7similar10algorithms7compactINtB5_7CompactINtNtB7_5utils12OffsetLookupmEB13_INtNtB7_7replace7ReplaceNtNtB7_7capture7CaptureEENtNtB7_4hook8DiffHook6deleteCskXhPDodhyTq_6mdtest.exit181.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !1488

_RNvXs1_NtNtCsiqiOkcJdymw_7similar10algorithms7compactINtB5_7CompactINtNtB7_5utils12OffsetLookupmEB13_INtNtB7_7replace7ReplaceNtNtB7_7capture7CaptureEENtNtB7_4hook8DiffHook6deleteCskXhPDodhyTq_6mdtest.exit181.i: ; preds = %bb.bd, %bb.bc
  %i.fl = load ptr, ptr %i.ah, align 8, !alias.scope !1489, !nonnull !3, !noundef !3
  %i.fm = getelementptr inbounds nuw [40 x i8], ptr %i.fl, i64 %i.jw ; 4 uses
  store i64 1, ptr %i.fm, align 8, !noalias !1488
  %.sroa.4225.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.fm, i64 8
  store i64 %i.fg, ptr %.sroa.4225.0..sroa_idx.i, align 8, !noalias !1488
  %.sroa.5226.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.fm, i64 16
  store i64 %i.fh, ptr %.sroa.5226.0..sroa_idx.i, align 8, !noalias !1488
  %.sroa.6227.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.fm, i64 24
  store i64 %i.fi, ptr %.sroa.6227.0..sroa_idx.i, align 8, !noalias !1488
  %i.fn = add i64 %.sink1244.i, 2                 ; 2 uses
  store i64 %i.fn, ptr %i.ag, align 8, !alias.scope !1489
  br i1 %i.jx, label %bb.bf, label %.sink.split.i.thread

bb.be:                                            ; preds = %._crit_edge714.i
  br i1 %i.jx, label %._crit_edge871, label %.sink.split.i.thread

._crit_edge871:                                   ; preds = %bb.be
  %.pre872 = add i64 %.sroa.038.3.i, %.sroa.0.0
  %.pre874 = add i64 %.sroa.09.3.i, %.sroa.0186.0
  br label %bb.bf

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %bb.de, %bb.bi, %bb.bt, %bb.cg, %bb.cr, %bb.ct, %bb.bu, %bb.ch, %.lr.ph687.split.i, %bb.dp, %.invoke.i, %bb.bg, %bb.bd
  %lpad.loopexit.split-lp1563 = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VechEECskXhPDodhyTq_6mdtest(ptr noalias noundef align 8 dereferenceable(24) %i.d) #15
          to label %common.resume unwind label %bb.dr, !noalias !1488

bb.bf:                                            ; preds = %._crit_edge871, %_RNvXs1_NtNtCsiqiOkcJdymw_7similar10algorithms7compactINtB5_7CompactINtNtB7_5utils12OffsetLookupmEB13_INtNtB7_7replace7ReplaceNtNtB7_7capture7CaptureEENtNtB7_4hook8DiffHook6deleteCskXhPDodhyTq_6mdtest.exit181.i
  %.pre-phi875 = phi i64 [ %.pre874, %._crit_edge871 ], [ %i.fi, %_RNvXs1_NtNtCsiqiOkcJdymw_7similar10algorithms7compactINtB5_7CompactINtNtB7_5utils12OffsetLookupmEB13_INtNtB7_7replace7ReplaceNtNtB7_7capture7CaptureEENtNtB7_4hook8DiffHook6deleteCskXhPDodhyTq_6mdtest.exit181.i ]
  %.pre-phi873 = phi i64 [ %.pre872, %._crit_edge871 ], [ %i.fg, %_RNvXs1_NtNtCsiqiOkcJdymw_7similar10algorithms7compactINtB5_7CompactINtNtB7_5utils12OffsetLookupmEB13_INtNtB7_7replace7ReplaceNtNtB7_7capture7CaptureEENtNtB7_4hook8DiffHook6deleteCskXhPDodhyTq_6mdtest.exit181.i ]
  %i.fo = phi i64 [ %i.jw, %._crit_edge871 ], [ %i.fn, %_RNvXs1_NtNtCsiqiOkcJdymw_7similar10algorithms7compactINtB5_7CompactINtNtB7_5utils12OffsetLookupmEB13_INtNtB7_7replace7ReplaceNtNtB7_7capture7CaptureEENtNtB7_4hook8DiffHook6deleteCskXhPDodhyTq_6mdtest.exit181.i ] ; 3 uses
  %i.fp = sub nuw i64 %i.ei, %.sroa.09.3.i
  %i.fq = load i64, ptr %i.af, align 8, !range !6, !alias.scope !1490, !noundef !3
  %i.fr = icmp eq i64 %i.fo, %i.fq
  br i1 %i.fr, label %bb.bg, label %_RNvXs1_NtNtCsiqiOkcJdymw_7similar10algorithms7compactINtB5_7CompactINtNtB7_5utils12OffsetLookupmEB13_INtNtB7_7replace7ReplaceNtNtB7_7capture7CaptureEENtNtB7_4hook8DiffHook6insertCskXhPDodhyTq_6mdtest.exit182.i

bb.bg:                                            ; preds = %bb.bf
  invoke void @_RNvMs3_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecNtNtCsiqiOkcJdymw_7similar5types6DiffOpE8grow_oneBP_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.af)
          to label %_RNvXs1_NtNtCsiqiOkcJdymw_7similar10algorithms7compactINtB5_7CompactINtNtB7_5utils12OffsetLookupmEB13_INtNtB7_7replace7ReplaceNtNtB7_7capture7CaptureEENtNtB7_4hook8DiffHook6insertCskXhPDodhyTq_6mdtest.exit182.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !1488

_RNvXs1_NtNtCsiqiOkcJdymw_7similar10algorithms7compactINtB5_7CompactINtNtB7_5utils12OffsetLookupmEB13_INtNtB7_7replace7ReplaceNtNtB7_7capture7CaptureEENtNtB7_4hook8DiffHook6insertCskXhPDodhyTq_6mdtest.exit182.i: ; preds = %bb.bg, %bb.bf
  %i.fs = load ptr, ptr %i.ah, align 8, !alias.scope !1490, !nonnull !3, !noundef !3
  %i.ft = getelementptr inbounds nuw [40 x i8], ptr %i.fs, i64 %i.fo ; 4 uses
  store i64 2, ptr %i.ft, align 8, !noalias !1488
  %.sroa.4235.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ft, i64 8
  store i64 %.pre-phi873, ptr %.sroa.4235.0..sroa_idx.i, align 8, !noalias !1488
  %.sroa.5236.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ft, i64 16
  store i64 %.pre-phi875, ptr %.sroa.5236.0..sroa_idx.i, align 8, !noalias !1488
  %.sroa.6237.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ft, i64 24
  store i64 %i.fp, ptr %.sroa.6237.0..sroa_idx.i, align 8, !noalias !1488
  %i.fu = add i64 %i.fo, 1
  store i64 %i.fu, ptr %i.ag, align 8, !alias.scope !1490
  br label %.sink.split.i.thread

.sink.split.i.thread:                             ; preds = %_RNvXs1_NtNtCsiqiOkcJdymw_7similar10algorithms7compactINtB5_7CompactINtNtB7_5utils12OffsetLookupmEB13_INtNtB7_7replace7ReplaceNtNtB7_7capture7CaptureEENtNtB7_4hook8DiffHook6deleteCskXhPDodhyTq_6mdtest.exit181.i, %bb.be, %_RNvXs1_NtNtCsiqiOkcJdymw_7similar10algorithms7compactINtB5_7CompactINtNtB7_5utils12OffsetLookupmEB13_INtNtB7_7replace7ReplaceNtNtB7_7capture7CaptureEENtNtB7_4hook8DiffHook6insertCskXhPDodhyTq_6mdtest.exit182.i
  call fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VechEECskXhPDodhyTq_6mdtest(ptr noalias noundef align 8 dereferenceable(24) %i.d), !noalias !1488
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !1484
  br label %bb.as

.sink.split.i:                                    ; preds = %.loopexit242.i
  call void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCskXhPDodhyTq_6mdtest(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.d), !noalias !1488
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !1484
  br label %_RINvNtNtCsiqiOkcJdymw_7similar10algorithms5myers27maybe_emit_small_side_exactINtNtB4_5utils12OffsetLookupmEB1d_INtNtB4_7compact7CompactB1d_B1d_INtNtB4_7replace7ReplaceNtNtB4_7capture7CaptureEEECskXhPDodhyTq_6mdtest.exit.thread

bb.bh:                                            ; preds = %bb.bj, %.lr.ph713.i
  %i.fv = mul i64 %.sroa.09.0711.i, %i.eq         ; 4 uses
  %i.fw = add i64 %.sroa.038.0710.i, %.sroa.0.0   ; 2 uses
  %i.fx = add i64 %.sroa.09.0711.i, %.sroa.0186.0 ; 7 uses
  %i.fy = sub i64 %i.fx, %i.o                     ; 3 uses
  %i.fz = icmp ult i64 %i.fy, %i.q
  br i1 %i.fz, label %bb.bk, label %.invoke.i

.invoke.i:                                        ; preds = %bb.dn, %bb.dl, %bb.dj, %bb.di, %bb.dg, %bb.bq, %bb.bo, %bb.bn, %bb.bm, %bb.bk, %bb.bh, %bb.cp, %bb.cn, %bb.cm, %bb.cl, %bb.cj, %bb.cc, %bb.ca, %bb.bz, %bb.by, %bb.bw, %bb.cv, %bb.cs, %bb.cy, %bb.cx, %bb.dq, %.lr.ph.split.i
  %i.ga = phi i64 [ %i.ih, %bb.cc ], [ %.reass.i, %bb.dq ], [ %.reass.i, %.lr.ph.split.i ], [ %i.jo, %bb.cp ], [ %i.fy, %bb.bh ], [ %i.kv, %bb.cy ], [ %i.q, %bb.cs ], [ %i.ko, %bb.cx ], [ %i.w, %bb.cv ], [ %i.hr, %bb.bw ], [ %i.hv, %bb.by ], [ %i.hz, %bb.ca ], [ %i.hx, %bb.bz ], [ %i.iw, %bb.cj ], [ %i.ja, %bb.cl ], [ %i.jg, %bb.cn ], [ %i.jc, %bb.cm ], [ %i.gj, %bb.bm ], [ %i.gl, %bb.bn ], [ %i.hb, %bb.bq ], [ %i.gf, %bb.bk ], [ %i.gq, %bb.bo ], [ %i.ls, %bb.di ], [ %.reass.us.i, %bb.dg ], [ %i.ml, %bb.dn ], [ %i.lw, %bb.dj ], [ %i.mc, %bb.dl ]
  %i.gb = phi i64 [ %.pre947.i.a, %bb.cc ], [ %i.q, %bb.dq ], [ %i.q, %.lr.ph.split.i ], [ %.pre945.i, %bb.cp ], [ %i.q, %bb.bh ], [ %i.kq, %bb.cy ], [ %i.q, %bb.cs ], [ %i.kq, %bb.cx ], [ %i.w, %bb.cv ], [ %i.w, %bb.bw ], [ %.pre947.i.a, %bb.by ], [ %.pre947.i.a, %bb.ca ], [ %.pre947.i.a, %bb.bz ], [ %i.q, %bb.cj ], [ %.pre945.i, %bb.cl ], [ %.pre945.i, %bb.cn ], [ %.pre945.i, %bb.cm ], [ %.pre943.i, %bb.bm ], [ %.pre943.i, %bb.bn ], [ %.pre943.i, %bb.bq ], [ %i.w, %bb.bk ], [ %.pre943.i, %bb.bo ], [ %i.lu, %bb.di ], [ %i.w, %bb.dg ], [ %i.mk, %bb.dn ], [ %i.lu, %bb.dj ], [ %i.md, %bb.dl ]
  %i.gc = phi ptr [ @34, %bb.cc ], [ @45, %bb.dq ], [ @45, %.lr.ph.split.i ], [ @40, %bb.cp ], [ @23, %bb.bh ], [ @44, %bb.cy ], [ @41, %bb.cs ], [ @43, %bb.cx ], [ @42, %bb.cv ], [ @30, %bb.bw ], [ @31, %bb.by ], [ @32, %bb.ca ], [ @33, %bb.bz ], [ @35, %bb.cj ], [ @37, %bb.cl ], [ @38, %bb.cn ], [ @39, %bb.cm ], [ @25, %bb.bm ], [ @27, %bb.bn ], [ @28, %bb.bq ], [ @24, %bb.bk ], [ @26, %bb.bo ], [ @47, %bb.di ], [ @46, %bb.dg ], [ @50, %bb.dn ], [ @48, %bb.dj ], [ @49, %bb.dl ]
  invoke void @_RNvNtCs4NRVxsYgnAr_4core9panicking18panic_bounds_check(i64 noundef %i.ga, i64 noundef %i.gb, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.gc) #14
          to label %.cont.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !1488

.cont.i:                                          ; preds = %.invoke.i
  unreachable

bb.bi:                                            ; preds = %.lr.ph713.i
  %i.gd = invoke noundef zeroext i1 @_RNvNtCsiqiOkcJdymw_7similar16deadline_support17deadline_exceeded(i64 %9, i32 noundef range(i32 -1, 1000000000) %10)
          to label %bb.bj unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !1488

bb.bj:                                            ; preds = %bb.bi
  br i1 %i.gd, label %.loopexit242.i, label %bb.bh

bb.bk:                                            ; preds = %bb.bh
  %i.ge = getelementptr inbounds nuw [4 x i8], ptr %i.s, i64 %i.fy ; 2 uses
  %i.gf = sub i64 %i.fw, %i.u                     ; 3 uses
  %i.gg = icmp ult i64 %i.gf, %i.w
  br i1 %i.gg, label %bb.bl, label %.invoke.i

bb.bl:                                            ; preds = %bb.bk
  %i.gh = getelementptr inbounds nuw [4 x i8], ptr %i.y, i64 %i.gf ; 2 uses
  %.val208.i = load i32, ptr %i.ge, align 4, !noalias !1488, !noundef !3
  %.val209.i = load i32, ptr %i.gh, align 4, !noalias !1488, !noundef !3
  %i.gi = icmp eq i32 %.val208.i, %.val209.i
  %.pre.i = load ptr, ptr %i.fa, align 8, !noalias !1484 ; 4 uses
  %.pre943.i = load i64, ptr %i.fb, align 8, !noalias !1484 ; 8 uses
  br i1 %i.gi, label %bb.bm, label %._crit_edge949.i

._crit_edge949.i:                                 ; preds = %bb.bl
  %.pre950.i = add nuw i64 %.sroa.09.0711.i, 1
  %.pre951.i = mul i64 %.pre950.i, %i.eq
  br label %bb.bn

bb.bm:                                            ; preds = %bb.bl
  %i.gj = add i64 %i.fv, %.sroa.038.0710.i        ; 3 uses
  %i.gk = icmp ult i64 %i.gj, %.pre943.i
  br i1 %i.gk, label %bb.bo, label %.invoke.i

bb.bn:                                            ; preds = %bb.bp, %._crit_edge949.i
  %.pre-phi952.i = phi i64 [ %.pre951.i, %._crit_edge949.i ], [ %i.go, %bb.bp ] ; 3 uses
  %i.gl = add i64 %.pre-phi952.i, %.sroa.038.0710.i ; 3 uses
  %i.gm = icmp ult i64 %i.gl, %.pre943.i
  br i1 %i.gm, label %bb.bq, label %.invoke.i

bb.bo:                                            ; preds = %bb.bm
  %i.gn = add nuw i64 %.sroa.09.0711.i, 1
  %i.go = mul i64 %i.gn, %i.eq                    ; 2 uses
  %i.gp = add nuw i64 %.sroa.038.0710.i, 1
  %i.gq = add i64 %i.gp, %i.go                    ; 3 uses
  %i.gr = icmp ult i64 %i.gq, %.pre943.i
  br i1 %i.gr, label %bb.bp, label %.invoke.i

bb.bp:                                            ; preds = %bb.bo
  %i.gs = getelementptr inbounds nuw i8, ptr %.pre.i, i64 %i.gj
  %i.gt = load i8, ptr %i.gs, align 1, !noalias !1488, !noundef !3
  %i.gu = getelementptr inbounds nuw i8, ptr %.pre.i, i64 %i.gq
  %i.gv = load i8, ptr %i.gu, align 1, !noalias !1488, !noundef !3
  %i.gw = add i8 %i.gv, 1
  %i.gx = icmp eq i8 %i.gt, %i.gw
  br i1 %i.gx, label %.preheader.i, label %bb.bn

.preheader.i:                                     ; preds = %bb.bp
  %i.gy = icmp ult i64 %.sroa.09.0711.i, %i.ei
  %i.gz = icmp ult i64 %.sroa.038.0710.i, %i.eh
  %or.cond177696.i = select i1 %i.gy, i1 %i.gz, i1 false
  br i1 %or.cond177696.i, label %.lr.ph699.i, label %._crit_edge700.i

bb.bq:                                            ; preds = %bb.bn
  %i.ha = add i64 %.sroa.038.0710.i, 1            ; 3 uses
  %i.hb = add i64 %i.ha, %i.fv                    ; 3 uses
  %i.hc = icmp ult i64 %i.hb, %.pre943.i
  br i1 %i.hc, label %bb.br, label %.invoke.i

bb.br:                                            ; preds = %bb.bq
  %i.hd = getelementptr inbounds nuw i8, ptr %.pre.i, i64 %i.gl
  %i.he = load i8, ptr %i.hd, align 1, !noalias !1488, !noundef !3
  %i.hf = getelementptr inbounds nuw i8, ptr %.pre.i, i64 %i.hb
  %i.hg = load i8, ptr %i.hf, align 1, !noalias !1488, !noundef !3
  %.not164.i = icmp ult i8 %i.he, %i.hg
  br i1 %.not164.i, label %.preheader243.i, label %.preheader248.i

.preheader248.i:                                  ; preds = %bb.br
  %umax.i = call i64 @llvm.umax.i64(i64 %.sroa.09.0711.i, i64 %i.ei) ; 3 uses
  %exitcond.not.i1519.not = icmp ult i64 %.sroa.09.0711.i, %i.ei
  br i1 %exitcond.not.i1519.not, label %.lr.ph1521, label %._crit_edge1522

.preheader243.i:                                  ; preds = %bb.br
  %i.hh = icmp ult i64 %.sroa.038.0710.i, %i.eh
  br i1 %i.hh, label %.lr.ph691.i, label %._crit_edge.i

.lr.ph691.i:                                      ; preds = %.preheader243.i
  %i.hi = add i64 %.pre-phi952.i, 1
  %i.hj = add i64 %i.fv, 1
  br label %bb.bs

bb.bs:                                            ; preds = %bb.ce, %.lr.ph691.i
  %.sroa.038.1690.i = phi i64 [ %.sroa.038.0710.i, %.lr.ph691.i ], [ %i.io, %bb.ce ] ; 9 uses
  %i.hk = and i64 %.sroa.038.1690.i, 1023
  %i.hl = icmp eq i64 %i.hk, 0
  %or.cond173.i = and i1 %.sroa.05.0.not712.i, %i.hl
  br i1 %or.cond173.i, label %bb.bu, label %bb.bw

._crit_edge.i:                                    ; preds = %bb.ce, %bb.cd, %bb.cb, %.preheader243.i
  %.sroa.038.1.lcssa.i = phi i64 [ %.sroa.038.0710.i, %.preheader243.i ], [ %i.eh, %bb.ce ], [ %.sroa.038.1690.i, %bb.cd ], [ %.sroa.038.1690.i, %bb.cb ] ; 3 uses
  %i.hm = sub nuw i64 %.sroa.038.1.lcssa.i, %.sroa.038.0710.i ; 2 uses
  %i.hn = load i64, ptr %i.ag, align 8, !alias.scope !1491, !noundef !3 ; 3 uses
  %i.ho = load i64, ptr %i.af, align 8, !range !6, !alias.scope !1491, !noundef !3
  %i.hp = icmp eq i64 %i.hn, %i.ho
  br i1 %i.hp, label %bb.bt, label %_RNvXs1_NtNtCsiqiOkcJdymw_7similar10algorithms7compactINtB5_7CompactINtNtB7_5utils12OffsetLookupmEB13_INtNtB7_7replace7ReplaceNtNtB7_7capture7CaptureEENtNtB7_4hook8DiffHook5equalCskXhPDodhyTq_6mdtest.exit.i

bb.bt:                                            ; preds = %._crit_edge.i
  invoke void @_RNvMs3_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecNtNtCsiqiOkcJdymw_7similar5types6DiffOpE8grow_oneBP_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.af)
          to label %_RNvXs1_NtNtCsiqiOkcJdymw_7similar10algorithms7compactINtB5_7CompactINtNtB7_5utils12OffsetLookupmEB13_INtNtB7_7replace7ReplaceNtNtB7_7capture7CaptureEENtNtB7_4hook8DiffHook5equalCskXhPDodhyTq_6mdtest.exit.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !1488

bb.bu:                                            ; preds = %bb.bs
  %i.hq = invoke noundef zeroext i1 @_RNvNtCsiqiOkcJdymw_7similar16deadline_support17deadline_exceeded(i64 %9, i32 noundef range(i32 -1, 1000000000) %10)
          to label %bb.bv unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !1488

bb.bv:                                            ; preds = %bb.bu
  br i1 %i.hq, label %.loopexit242.i, label %bb.bw

bb.bw:                                            ; preds = %bb.bv, %bb.bs
  %i.hr = add i64 %.sroa.038.1690.i, %invariant.op.i ; 3 uses
  %i.hs = icmp ult i64 %i.hr, %i.w
  br i1 %i.hs, label %bb.bx, label %.invoke.i

bb.bx:                                            ; preds = %bb.bw
  %i.ht = getelementptr inbounds nuw [4 x i8], ptr %i.y, i64 %i.hr
  %.val206.i = load i32, ptr %i.ge, align 4, !noalias !1488, !noundef !3
  %.val207.i = load i32, ptr %i.ht, align 4, !noalias !1488, !noundef !3
  %i.hu = icmp eq i32 %.val206.i, %.val207.i
  %.pre946.i.a = load ptr, ptr %i.fa, align 8, !noalias !1484 ; 4 uses
  %.pre947.i.a = load i64, ptr %i.fb, align 8, !noalias !1484 ; 8 uses
  br i1 %i.hu, label %bb.by, label %bb.bz

bb.by:                                            ; preds = %bb.bx
  %i.hv = add i64 %.sroa.038.1690.i, %i.fv        ; 3 uses
  %i.hw = icmp ult i64 %i.hv, %.pre947.i.a
  br i1 %i.hw, label %bb.ca, label %.invoke.i

bb.bz:                                            ; preds = %bb.cb, %bb.bx
  %i.hx = add i64 %.sroa.038.1690.i, %.pre-phi952.i ; 3 uses
  %i.hy = icmp ult i64 %i.hx, %.pre947.i.a
  br i1 %i.hy, label %bb.cc, label %.invoke.i

bb.ca:                                            ; preds = %bb.by
  %i.hz = add i64 %i.hi, %.sroa.038.1690.i        ; 3 uses
  %i.ia = icmp ult i64 %i.hz, %.pre947.i.a
  br i1 %i.ia, label %bb.cb, label %.invoke.i

bb.cb:                                            ; preds = %bb.ca
  %i.ib = getelementptr inbounds nuw i8, ptr %.pre946.i.a, i64 %i.hv
  %i.ic = load i8, ptr %i.ib, align 1, !noalias !1488, !noundef !3
  %i.id = getelementptr inbounds nuw i8, ptr %.pre946.i.a, i64 %i.hz
  %i.ie = load i8, ptr %i.id, align 1, !noalias !1488, !noundef !3
  %i.if = add i8 %i.ie, 1
  %i.ig = icmp eq i8 %i.ic, %i.if
  br i1 %i.ig, label %._crit_edge.i, label %bb.bz

bb.cc:                                            ; preds = %bb.bz
  %i.ih = add i64 %i.hj, %.sroa.038.1690.i        ; 3 uses
  %i.ii = icmp ult i64 %i.ih, %.pre947.i.a
  br i1 %i.ii, label %bb.cd, label %.invoke.i

bb.cd:                                            ; preds = %bb.cc
  %i.ij = getelementptr inbounds nuw i8, ptr %.pre946.i.a, i64 %i.hx
  %i.ik = load i8, ptr %i.ij, align 1, !noalias !1488, !noundef !3
  %i.il = getelementptr inbounds nuw i8, ptr %.pre946.i.a, i64 %i.ih
  %i.im = load i8, ptr %i.il, align 1, !noalias !1488, !noundef !3
  %i.in = icmp ult i8 %i.ik, %i.im
  br i1 %i.in, label %bb.ce, label %._crit_edge.i

bb.ce:                                            ; preds = %bb.cd
  %i.io = add nuw i64 %.sroa.038.1690.i, 1        ; 2 uses
  %i.ip = icmp ult i64 %i.io, %i.eh
  br i1 %i.ip, label %bb.bs, label %._crit_edge.i

bb.cf:                                            ; preds = %bb.cq
  %exitcond.not.i = icmp eq i64 %.pre-phi954.i, %umax.i
  br i1 %exitcond.not.i, label %._crit_edge1522, label %.lr.ph1521

.lr.ph1521:                                       ; preds = %.preheader248.i, %bb.cf
  %.sroa.09.1.i1520 = phi i64 [ %.pre-phi954.i, %bb.cf ], [ %.sroa.09.0711.i, %.preheader248.i ] ; 6 uses
  br i1 %or.cond170.i, label %bb.ch, label %bb.cj

._crit_edge1522:                                  ; preds = %bb.cf, %bb.co, %bb.cq, %.preheader248.i
  %.sroa.09.1.lcssa.i = phi i64 [ %umax.i, %.preheader248.i ], [ %umax.i, %bb.cf ], [ %.sroa.09.1.i1520, %bb.co ], [ %.sroa.09.1.i1520, %bb.cq ] ; 3 uses
  %i.iq = sub i64 %.sroa.09.1.lcssa.i, %.sroa.09.0711.i ; 2 uses
  %i.ir = load i64, ptr %i.ag, align 8, !alias.scope !1492, !noundef !3 ; 3 uses
  %i.is = load i64, ptr %i.af, align 8, !range !6, !alias.scope !1492, !noundef !3
  %i.it = icmp eq i64 %i.ir, %i.is
  br i1 %i.it, label %bb.cg, label %_RNvXs1_NtNtCsiqiOkcJdymw_7similar10algorithms7compactINtB5_7CompactINtNtB7_5utils12OffsetLookupmEB13_INtNtB7_7replace7ReplaceNtNtB7_7capture7CaptureEENtNtB7_4hook8DiffHook5equalCskXhPDodhyTq_6mdtest.exit.i

bb.cg:                                            ; preds = %._crit_edge1522
  invoke void @_RNvMs3_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecNtNtCsiqiOkcJdymw_7similar5types6DiffOpE8grow_oneBP_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.af)
          to label %_RNvXs1_NtNtCsiqiOkcJdymw_7similar10algorithms7compactINtB5_7CompactINtNtB7_5utils12OffsetLookupmEB13_INtNtB7_7replace7ReplaceNtNtB7_7capture7CaptureEENtNtB7_4hook8DiffHook5equalCskXhPDodhyTq_6mdtest.exit.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !1488

bb.ch:                                            ; preds = %.lr.ph1521
  %i.iu = invoke noundef zeroext i1 @_RNvNtCsiqiOkcJdymw_7similar16deadline_support17deadline_exceeded(i64 %9, i32 noundef range(i32 -1, 1000000000) %10)
          to label %bb.ci unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !1488

bb.ci:                                            ; preds = %bb.ch
  br i1 %i.iu, label %.loopexit242.i, label %bb.cj

bb.cj:                                            ; preds = %bb.ci, %.lr.ph1521
  %i.iv = mul i64 %.sroa.09.1.i1520, %i.eq        ; 2 uses
  %i.iw = add i64 %.sroa.09.1.i1520, %invariant.op688.i ; 3 uses
  %i.ix = icmp ult i64 %i.iw, %i.q
  br i1 %i.ix, label %bb.ck, label %.invoke.i

bb.ck:                                            ; preds = %bb.cj
  %i.iy = getelementptr inbounds nuw [4 x i8], ptr %i.s, i64 %i.iw
  %.val204.i = load i32, ptr %i.iy, align 4, !noalias !1488, !noundef !3
  %.val205.i = load i32, ptr %i.gh, align 4, !noalias !1488, !noundef !3
  %i.iz = icmp eq i32 %.val204.i, %.val205.i
  %.pre944.i = load ptr, ptr %i.fa, align 8, !noalias !1484 ; 4 uses
  %.pre945.i = load i64, ptr %i.fb, align 8, !noalias !1484 ; 8 uses
  br i1 %i.iz, label %bb.cl, label %._crit_edge948.i

._crit_edge948.i:                                 ; preds = %bb.ck
  %.pre953.i = add i64 %.sroa.09.1.i1520, 1       ; 2 uses
  %.pre955.i = mul i64 %.pre953.i, %i.eq
  br label %bb.cm

bb.cl:                                            ; preds = %bb.ck
  %i.ja = add i64 %i.iv, %.sroa.038.0710.i        ; 3 uses
  %i.jb = icmp ult i64 %i.ja, %.pre945.i
  br i1 %i.jb, label %bb.cn, label %.invoke.i

bb.cm:                                            ; preds = %bb.co, %._crit_edge948.i
  %.pre-phi956.i.a = phi i64 [ %.pre955.i, %._crit_edge948.i ], [ %i.jf, %bb.co ]
  %.pre-phi954.i = phi i64 [ %.pre953.i, %._crit_edge948.i ], [ %i.je, %bb.co ] ; 2 uses
  %i.jc = add i64 %.pre-phi956.i.a, %.sroa.038.0710.i ; 3 uses
  %i.jd = icmp ult i64 %i.jc, %.pre945.i
  br i1 %i.jd, label %bb.cp, label %.invoke.i

bb.cn:                                            ; preds = %bb.cl
  %i.je = add i64 %.sroa.09.1.i1520, 1            ; 2 uses
  %i.jf = mul i64 %i.je, %i.eq                    ; 2 uses
  %i.jg = add i64 %i.jf, %i.ha                    ; 3 uses
  %i.jh = icmp ult i64 %i.jg, %.pre945.i
  br i1 %i.jh, label %bb.co, label %.invoke.i

bb.co:                                            ; preds = %bb.cn
  %i.ji = getelementptr inbounds nuw i8, ptr %.pre944.i, i64 %i.ja
  %i.jj = load i8, ptr %i.ji, align 1, !noalias !1488, !noundef !3
  %i.jk = getelementptr inbounds nuw i8, ptr %.pre944.i, i64 %i.jg
  %i.jl = load i8, ptr %i.jk, align 1, !noalias !1488, !noundef !3
  %i.jm = add i8 %i.jl, 1
  %i.jn = icmp eq i8 %i.jj, %i.jm
  br i1 %i.jn, label %._crit_edge1522, label %bb.cm

bb.cp:                                            ; preds = %bb.cm
  %i.jo = add i64 %i.iv, %i.ha                    ; 3 uses
  %i.jp = icmp ult i64 %i.jo, %.pre945.i
  br i1 %i.jp, label %bb.cq, label %.invoke.i

bb.cq:                                            ; preds = %bb.cp
  %i.jq = getelementptr inbounds nuw i8, ptr %.pre944.i, i64 %i.jc
  %i.jr = load i8, ptr %i.jq, align 1, !noalias !1488, !noundef !3
  %i.js = getelementptr inbounds nuw i8, ptr %.pre944.i, i64 %i.jo
  %i.jt = load i8, ptr %i.js, align 1, !noalias !1488, !noundef !3
  %.not167.i = icmp ult i8 %i.jr, %i.jt
  br i1 %.not167.i, label %._crit_edge1522, label %bb.cf

_RNvXs1_NtNtCsiqiOkcJdymw_7similar10algorithms7compactINtB5_7CompactINtNtB7_5utils12OffsetLookupmEB13_INtNtB7_7replace7ReplaceNtNtB7_7capture7CaptureEENtNtB7_4hook8DiffHook5equalCskXhPDodhyTq_6mdtest.exit.i: ; preds = %bb.cr, %._crit_edge700.i, %bb.cg, %._crit_edge1522, %bb.bt, %._crit_edge.i
  %.sink1244.i = phi i64 [ %i.hn, %bb.bt ], [ %i.ka, %bb.cr ], [ %i.ka, %._crit_edge700.i ], [ %i.hn, %._crit_edge.i ], [ %i.ir, %._crit_edge1522 ], [ %i.ir, %bb.cg ] ; 3 uses
  %.sink1241.i = phi i64 [ 1, %bb.bt ], [ 0, %bb.cr ], [ 0, %._crit_edge700.i ], [ 1, %._crit_edge.i ], [ 2, %._crit_edge1522 ], [ 2, %bb.cg ]
  %.sink1238.i = phi i64 [ %i.hm, %bb.bt ], [ %i.fx, %bb.cr ], [ %i.fx, %._crit_edge700.i ], [ %i.hm, %._crit_edge.i ], [ %i.fx, %._crit_edge1522 ], [ %i.fx, %bb.cg ]
  %.sink.i = phi i64 [ %i.fx, %bb.bt ], [ %i.jz, %bb.cr ], [ %i.jz, %._crit_edge700.i ], [ %i.fx, %._crit_edge.i ], [ %i.iq, %._crit_edge1522 ], [ %i.iq, %bb.cg ]
  %.sroa.038.3.i = phi i64 [ %.sroa.038.1.lcssa.i, %bb.bt ], [ %.sroa.038.4.lcssa.i, %bb.cr ], [ %.sroa.038.4.lcssa.i, %._crit_edge700.i ], [ %.sroa.038.1.lcssa.i, %._crit_edge.i ], [ %.sroa.038.0710.i, %._crit_edge1522 ], [ %.sroa.038.0710.i, %bb.cg ] ; 5 uses
  %.sroa.09.3.i = phi i64 [ %.sroa.09.0711.i, %bb.bt ], [ %.sroa.09.4.lcssa.i, %bb.cr ], [ %.sroa.09.4.lcssa.i, %._crit_edge700.i ], [ %.sroa.09.0711.i, %._crit_edge.i ], [ %.sroa.09.1.lcssa.i, %._crit_edge1522 ], [ %.sroa.09.1.lcssa.i, %bb.cg ] ; 5 uses
  %i.ju = load ptr, ptr %i.ah, align 8, !alias.scope !1483, !nonnull !3, !noundef !3
  %i.jv = getelementptr inbounds nuw [40 x i8], ptr %i.ju, i64 %.sink1244.i ; 4 uses
  store i64 %.sink1241.i, ptr %i.jv, align 8, !noalias !1488
  %.sroa.4230.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.jv, i64 8
  store i64 %i.fw, ptr %.sroa.4230.0..sroa_idx.i, align 8, !noalias !1488
  %.sroa.5231.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.jv, i64 16
  store i64 %.sink1238.i, ptr %.sroa.5231.0..sroa_idx.i, align 8, !noalias !1488
  %.sroa.6232.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.jv, i64 24
  store i64 %.sink.i, ptr %.sroa.6232.0..sroa_idx.i, align 8, !noalias !1488
  %i.jw = add i64 %.sink1244.i, 1                 ; 4 uses
  store i64 %i.jw, ptr %i.ag, align 8, !alias.scope !1483
  %i.jx = icmp ult i64 %.sroa.09.3.i, %i.ei       ; 3 uses
  %i.jy = icmp ult i64 %.sroa.038.3.i, %i.eh      ; 2 uses
  %or.cond.i73 = select i1 %i.jx, i1 %i.jy, i1 false
  br i1 %or.cond.i73, label %.lr.ph713.i, label %._crit_edge714.i

._crit_edge700.i:                                 ; preds = %bb.da, %bb.cz, %bb.cw, %.preheader.i
  %.sroa.038.4.lcssa.i = phi i64 [ %.sroa.038.0710.i, %.preheader.i ], [ %i.ku, %bb.da ], [ %.sroa.038.4697.i, %bb.cw ], [ %.sroa.038.4697.i, %bb.cz ] ; 3 uses
  %.sroa.09.4.lcssa.i = phi i64 [ %.sroa.09.0711.i, %.preheader.i ], [ %i.ks, %bb.da ], [ %.sroa.09.4698.i, %bb.cw ], [ %.sroa.09.4698.i, %bb.cz ] ; 2 uses
  %i.jz = sub nuw i64 %.sroa.038.4.lcssa.i, %.sroa.038.0710.i ; 2 uses
  %i.ka = load i64, ptr %i.ag, align 8, !alias.scope !1493, !noundef !3 ; 3 uses
  %i.kb = load i64, ptr %i.af, align 8, !range !6, !alias.scope !1493, !noundef !3
  %i.kc = icmp eq i64 %i.ka, %i.kb
  br i1 %i.kc, label %bb.cr, label %_RNvXs1_NtNtCsiqiOkcJdymw_7similar10algorithms7compactINtB5_7CompactINtNtB7_5utils12OffsetLookupmEB13_INtNtB7_7replace7ReplaceNtNtB7_7capture7CaptureEENtNtB7_4hook8DiffHook5equalCskXhPDodhyTq_6mdtest.exit.i

bb.cr:                                            ; preds = %._crit_edge700.i
  invoke void @_RNvMs3_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecNtNtCsiqiOkcJdymw_7similar5types6DiffOpE8grow_oneBP_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.af)
          to label %_RNvXs1_NtNtCsiqiOkcJdymw_7similar10algorithms7compactINtB5_7CompactINtNtB7_5utils12OffsetLookupmEB13_INtNtB7_7replace7ReplaceNtNtB7_7capture7CaptureEENtNtB7_4hook8DiffHook5equalCskXhPDodhyTq_6mdtest.exit.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !1488

.lr.ph699.i:                                      ; preds = %.preheader.i, %bb.da
  %.sroa.09.4698.i = phi i64 [ %i.ks, %bb.da ], [ %.sroa.09.0711.i, %.preheader.i ] ; 5 uses
  %.sroa.038.4697.i = phi i64 [ %i.ku, %bb.da ], [ %.sroa.038.0710.i, %.preheader.i ] ; 6 uses
  %i.kd = and i64 %.sroa.038.4697.i, 1023
  %i.ke = icmp eq i64 %i.kd, 0
  %or.cond180.i = select i1 %.sroa.05.0.not712.i, i1 %i.ke, i1 false
  br i1 %or.cond180.i, label %bb.ct, label %bb.cs

bb.cs:                                            ; preds = %bb.cu, %.lr.ph699.i
  %i.kf = mul i64 %.sroa.09.4698.i, %i.eq
  %i.kg = add i64 %.sroa.09.4698.i, %invariant.op688.i ; 2 uses
  %i.kh = icmp ult i64 %i.kg, %i.q
  br i1 %i.kh, label %bb.cv, label %.invoke.i

bb.ct:                                            ; preds = %.lr.ph699.i
  %i.ki = invoke noundef zeroext i1 @_RNvNtCsiqiOkcJdymw_7similar16deadline_support17deadline_exceeded(i64 %9, i32 noundef range(i32 -1, 1000000000) %10)
          to label %bb.cu unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !1488

bb.cu:                                            ; preds = %bb.ct
  br i1 %i.ki, label %.loopexit242.i, label %bb.cs

bb.cv:                                            ; preds = %bb.cs
  %i.kj = add i64 %.sroa.038.4697.i, %invariant.op.i ; 2 uses
  %i.kk = icmp ult i64 %i.kj, %i.w
  br i1 %i.kk, label %bb.cw, label %.invoke.i

bb.cw:                                            ; preds = %bb.cv
  %i.kl = getelementptr inbounds nuw [4 x i8], ptr %i.s, i64 %i.kg
  %i.km = getelementptr inbounds nuw [4 x i8], ptr %i.y, i64 %i.kj
  %.val202.i = load i32, ptr %i.kl, align 4, !noalias !1488, !noundef !3
  %.val203.i = load i32, ptr %i.km, align 4, !noalias !1488, !noundef !3
  %i.kn = icmp eq i32 %.val202.i, %.val203.i
  br i1 %i.kn, label %bb.cx, label %._crit_edge700.i

bb.cx:                                            ; preds = %bb.cw
  %i.ko = add i64 %i.kf, %.sroa.038.4697.i        ; 3 uses
  %i.kp = load ptr, ptr %i.fa, align 8, !noalias !1484, !nonnull !3, !noundef !3 ; 2 uses
  %i.kq = load i64, ptr %i.fb, align 8, !noalias !1484, !noundef !3 ; 4 uses
  %i.kr = icmp ult i64 %i.ko, %i.kq
  br i1 %i.kr, label %bb.cy, label %.invoke.i

bb.cy:                                            ; preds = %bb.cx
  %i.ks = add nuw i64 %.sroa.09.4698.i, 1         ; 4 uses
  %i.kt = mul i64 %i.ks, %i.eq
  %i.ku = add nuw i64 %.sroa.038.4697.i, 1        ; 4 uses
  %i.kv = add i64 %i.ku, %i.kt                    ; 3 uses
  %i.kw = icmp ult i64 %i.kv, %i.kq
  br i1 %i.kw, label %bb.cz, label %.invoke.i

bb.cz:                                            ; preds = %bb.cy
  %i.kx = getelementptr inbounds nuw i8, ptr %i.kp, i64 %i.ko
  %i.ky = load i8, ptr %i.kx, align 1, !noalias !1488, !noundef !3
  %i.kz = getelementptr inbounds nuw i8, ptr %i.kp, i64 %i.kv
  %i.la = load i8, ptr %i.kz, align 1, !noalias !1488, !noundef !3
  %i.lb = add i8 %i.la, 1
  %i.lc = icmp eq i8 %i.ky, %i.lb
  br i1 %i.lc, label %bb.da, label %._crit_edge700.i

bb.da:                                            ; preds = %bb.cz
  %i.ld = icmp ult i64 %i.ks, %i.ei
  %i.le = icmp ult i64 %i.ku, %i.eh
  %or.cond177.i = and i1 %i.ld, %i.le
  br i1 %or.cond177.i, label %.lr.ph699.i, label %._crit_edge700.i

.loopexit242.i:                                   ; preds = %bb.dd, %bb.df, %bb.bj, %bb.ci, %bb.bv, %bb.cu, %bb.dq
  invoke void @_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCskXhPDodhyTq_6mdtest(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.d)
          to label %.sink.split.i unwind label %bb.db, !noalias !1488

bb.db:                                            ; preds = %.loopexit242.i
  %i.lf = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCskXhPDodhyTq_6mdtest(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.d)
          to label %common.resume unwind label %bb.dc, !noalias !1488

bb.dc:                                            ; preds = %bb.db
  %i.lg = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #13, !noalias !1488
  unreachable

common.resume:                                    ; preds = %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i86.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %bb.fu, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %bb.db
  %common.resume.op = phi { ptr, i32 } [ %lpad.loopexit.split-lp1563, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ], [ %i.lf, %bb.db ], [ %i.ti, %bb.fu ], [ %lpad.loopexit.split-lp1609, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i86.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ]
  resume { ptr, i32 } %common.resume.op

bb.dd:                                            ; preds = %.lr.ph687.split.i
  br i1 %i.fd, label %.loopexit242.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.dd
  %i.lh = mul i64 %i.fc, %i.eq                    ; 2 uses
  %i.li = mul i64 %.sroa.0102.0686.i, %i.eq       ; 2 uses
  %.reass.i = add i64 %i.fc, %invariant.op688.i   ; 4 uses
  %i.lj = icmp ult i64 %.reass.i, %i.q
  %i.lk = getelementptr inbounds nuw [4 x i8], ptr %i.s, i64 %.reass.i
  %.fr.i = freeze i1 %i.lj
  br i1 %.fr.i, label %.lr.ph.split.us.i, label %.lr.ph.split.i

.lr.ph.split.us.i:                                ; preds = %.lr.ph.i, %bb.do
  %.sroa.0105.0650.us.i = phi i64 [ %i.ll, %bb.do ], [ %i.eh, %.lr.ph.i ] ; 3 uses
  %i.ll = add i64 %.sroa.0105.0650.us.i, -1       ; 6 uses
  %i.lm = and i64 %i.ll, 1023
  %i.ln = icmp eq i64 %i.lm, 0
  br i1 %i.ln, label %bb.de, label %bb.dg

bb.de:                                            ; preds = %.lr.ph.split.us.i
  %i.lo = invoke noundef zeroext i1 @_RNvNtCsiqiOkcJdymw_7similar16deadline_support17deadline_exceeded(i64 %9, i32 noundef range(i32 -1, 1000000000) %10)
          to label %bb.df unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !1488

bb.df:                                            ; preds = %bb.de
  br i1 %i.lo, label %.loopexit242.i, label %bb.dg

bb.dg:                                            ; preds = %bb.df, %.lr.ph.split.us.i
  %.reass.us.i = add i64 %i.ll, %invariant.op.i   ; 3 uses
  %i.lp = icmp ult i64 %.reass.us.i, %i.w
  br i1 %i.lp, label %bb.dh, label %.invoke.i

bb.dh:                                            ; preds = %bb.dg
  %i.lq = getelementptr inbounds nuw [4 x i8], ptr %i.y, i64 %.reass.us.i
  %.val.us.i = load i32, ptr %i.lk, align 4, !noalias !1488, !noundef !3
  %.val201.us.i = load i32, ptr %i.lq, align 4, !noalias !1488, !noundef !3
  %i.lr = icmp eq i32 %.val.us.i, %.val201.us.i
  br i1 %i.lr, label %bb.dl, label %bb.di

bb.di:                                            ; preds = %bb.dh
  %i.ls = add i64 %i.ll, %i.li                    ; 3 uses
  %i.lt = load ptr, ptr %i.fa, align 8, !noalias !1484, !nonnull !3, !noundef !3 ; 3 uses
  %i.lu = load i64, ptr %i.fb, align 8, !noalias !1484, !noundef !3 ; 5 uses
  %i.lv = icmp ult i64 %i.ls, %i.lu
  br i1 %i.lv, label %bb.dj, label %.invoke.i

bb.dj:                                            ; preds = %bb.di
  %i.lw = add i64 %.sroa.0105.0650.us.i, %i.lh    ; 3 uses
  %i.lx = icmp ult i64 %i.lw, %i.lu
  br i1 %i.lx, label %bb.dk, label %.invoke.i

bb.dk:                                            ; preds = %bb.dj
  %i.ly = getelementptr inbounds nuw i8, ptr %i.lt, i64 %i.ls
  %i.lz = load i8, ptr %i.ly, align 1, !noalias !1488, !noundef !3
  %i.ma = getelementptr inbounds nuw i8, ptr %i.lt, i64 %i.lw
  %i.mb = load i8, ptr %i.ma, align 1, !noalias !1488, !noundef !3
  %.sroa.0.0.i.us.i = call noundef i8 @llvm.umax.i8(i8 %i.mb, i8 %i.lz)
  br label %bb.dn

bb.dl:                                            ; preds = %bb.dh
  %i.mc = add i64 %.sroa.0105.0650.us.i, %i.li    ; 3 uses
  %i.md = load i64, ptr %i.fb, align 8, !noalias !1484, !noundef !3 ; 3 uses
  %i.me = icmp ult i64 %i.mc, %i.md
  br i1 %i.me, label %bb.dm, label %.invoke.i

bb.dm:                                            ; preds = %bb.dl
  %i.mf = load ptr, ptr %i.fa, align 8, !noalias !1484, !nonnull !3, !noundef !3 ; 2 uses
  %i.mg = getelementptr inbounds nuw i8, ptr %i.mf, i64 %i.mc
  %i.mh = load i8, ptr %i.mg, align 1, !noalias !1488, !noundef !3
  %i.mi = add i8 %i.mh, 1
  br label %bb.dn

bb.dn:                                            ; preds = %bb.dm, %bb.dk
  %i.mj = phi ptr [ %i.mf, %bb.dm ], [ %i.lt, %bb.dk ]
  %i.mk = phi i64 [ %i.md, %bb.dm ], [ %i.lu, %bb.dk ] ; 2 uses
  %.sroa.04.0.us.i = phi i8 [ %i.mi, %bb.dm ], [ %.sroa.0.0.i.us.i, %bb.dk ]
  %i.ml = add i64 %i.ll, %i.lh                    ; 3 uses
  %i.mm = icmp ult i64 %i.ml, %i.mk
  br i1 %i.mm, label %bb.do, label %.invoke.i

bb.do:                                            ; preds = %bb.dn
  %i.mn = getelementptr inbounds nuw i8, ptr %i.mj, i64 %i.ml
  store i8 %.sroa.04.0.us.i, ptr %i.mn, align 1, !noalias !1488
  %.not168.us.i = icmp eq i64 %i.ll, 0
  br i1 %.not168.us.i, label %..loopexit257_crit_edge.split.us.i, label %.lr.ph.split.us.i

..loopexit257_crit_edge.split.us.i:               ; preds = %bb.do
  %.not.i74 = icmp eq i64 %i.fc, 0
  br i1 %.not.i74, label %.lr.ph713.i, label %.lr.ph687.split.i

.lr.ph.split.i:                                   ; preds = %.lr.ph.i
  %i.mo = and i64 %i.eh, 1023
  %i.mp = icmp eq i64 %i.mo, 1
  br i1 %i.mp, label %bb.dp, label %.invoke.i

bb.dp:                                            ; preds = %.lr.ph.split.i
  %i.mq = invoke noundef zeroext i1 @_RNvNtCsiqiOkcJdymw_7similar16deadline_support17deadline_exceeded(i64 %9, i32 noundef range(i32 -1, 1000000000) %10)
          to label %bb.dq unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !1488

bb.dq:                                            ; preds = %bb.dp
  br i1 %i.mq, label %.loopexit242.i, label %.invoke.i

bb.dr:                                            ; preds = %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp
  %i.mr = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #13, !noalias !1488
  unreachable

bb.ds:                                            ; preds = %bb.ay
  call void @llvm.experimental.noalias.scope.decl(metadata !1494)
  %i.ms = call noundef zeroext i1 @_RNvNtCsiqiOkcJdymw_7similar16deadline_support17deadline_exceeded(i64 %9, i32 noundef range(i32 -1, 1000000000) %10), !noalias !1495
  br i1 %i.ms, label %_RINvNtNtCsiqiOkcJdymw_7similar10algorithms5myers27maybe_emit_small_side_exactINtNtB4_5utils12OffsetLookupmEB1d_INtNtB4_7compact7CompactB1d_B1d_INtNtB4_7replace7ReplaceNtNtB4_7capture7CaptureEEECskXhPDodhyTq_6mdtest.exit.thread, label %bb.dt

bb.dt:                                            ; preds = %bb.ds
  %i.mt = add i64 %i.ei, 1                        ; 11 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !1495
  %i.mu = add i64 %i.eh, 1
  %i.mv = mul i64 %i.mu, %i.mt                    ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1496)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !1497
  call void @_RNvMs4_NtCscdodAO9FK5_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCskXhPDodhyTq_6mdtest(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, i64 noundef %i.mv, i1 noundef zeroext true, i64 noundef 1, i64 noundef 1), !noalias !1498
  %i.mw = load i64, ptr %i.a, align 8, !range !8, !noalias !1497, !noundef !3
  %i.mx = trunc nuw i64 %i.mw to i1
  %i.my = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.mz = load i64, ptr %i.my, align 8, !range !9, !noalias !1497, !noundef !3 ; 2 uses
  %i.na = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  br i1 %i.mx, label %bb.du, label %.lr.ph702.i, !prof !7

bb.du:                                            ; preds = %bb.dt
  %i.nb = load i64, ptr %i.na, align 8, !noalias !1497
  call void @_RNvNtCscdodAO9FK5_5alloc7raw_vec12handle_error(i64 noundef %i.mz, i64 %i.nb) #14, !noalias !1498
  unreachable

.lr.ph702.i:                                      ; preds = %bb.dt
  %i.nc = load ptr, ptr %i.na, align 8, !noalias !1497, !nonnull !3, !noundef !3
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !1497
  store i64 %i.mz, ptr %i.b, align 8, !alias.scope !1496, !noalias !1495
  %i.nd = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 7 uses
  store ptr %i.nc, ptr %i.nd, align 8, !alias.scope !1496, !noalias !1495
  %i.ne = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 7 uses
  store i64 %i.mv, ptr %i.ne, align 8, !alias.scope !1496, !noalias !1495
  %invariant.op.i90 = sub i64 %.sroa.0186.0, %i.o ; 4 uses
  %invariant.op703.i = sub i64 %.sroa.0.0, %i.u   ; 3 uses
  br label %.lr.ph702.split.i

.lr.ph702.split.i:                                ; preds = %.lr.ph702.i, %..loopexit257_crit_edge.split.us.i148
  %.sroa.0102.0701.i = phi i64 [ %i.nf, %..loopexit257_crit_edge.split.us.i148 ], [ %i.eh, %.lr.ph702.i ] ; 2 uses
  %i.nf = add i64 %.sroa.0102.0701.i, -1          ; 4 uses
  %i.ng = invoke noundef zeroext i1 @_RNvNtCsiqiOkcJdymw_7similar16deadline_support17deadline_exceeded(i64 %9, i32 noundef range(i32 -1, 1000000000) %10)
          to label %bb.fw unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i86.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !1499

._crit_edge730.i:                                 ; preds = %_RNvXs1_NtNtCsiqiOkcJdymw_7similar10algorithms7compactINtB5_7CompactINtNtB7_5utils12OffsetLookupmEB13_INtNtB7_7replace7ReplaceNtNtB7_7capture7CaptureEENtNtB7_4hook8DiffHook5equalCskXhPDodhyTq_6mdtest.exit.i116
  br i1 %i.sa, label %bb.dv, label %bb.dx

.lr.ph729.i:                                      ; preds = %..loopexit257_crit_edge.split.us.i148, %_RNvXs1_NtNtCsiqiOkcJdymw_7similar10algorithms7compactINtB5_7CompactINtNtB7_5utils12OffsetLookupmEB13_INtNtB7_7replace7ReplaceNtNtB7_7capture7CaptureEENtNtB7_4hook8DiffHook5equalCskXhPDodhyTq_6mdtest.exit.i116
  %.sroa.05.0.not728.i = phi i1 [ false, %_RNvXs1_NtNtCsiqiOkcJdymw_7similar10algorithms7compactINtB5_7CompactINtNtB7_5utils12OffsetLookupmEB13_INtNtB7_7replace7ReplaceNtNtB7_7capture7CaptureEENtNtB7_4hook8DiffHook5equalCskXhPDodhyTq_6mdtest.exit.i116 ], [ true, %..loopexit257_crit_edge.split.us.i148 ] ; 3 uses
  %.sroa.09.0727.i = phi i64 [ %.sroa.09.3.i118, %_RNvXs1_NtNtCsiqiOkcJdymw_7similar10algorithms7compactINtB5_7CompactINtNtB7_5utils12OffsetLookupmEB13_INtNtB7_7replace7ReplaceNtNtB7_7capture7CaptureEENtNtB7_4hook8DiffHook5equalCskXhPDodhyTq_6mdtest.exit.i116 ], [ 0, %..loopexit257_crit_edge.split.us.i148 ] ; 14 uses
  %.sroa.039.0726.i = phi i64 [ %.sroa.039.3.i, %_RNvXs1_NtNtCsiqiOkcJdymw_7similar10algorithms7compactINtB5_7CompactINtNtB7_5utils12OffsetLookupmEB13_INtNtB7_7replace7ReplaceNtNtB7_7capture7CaptureEENtNtB7_4hook8DiffHook5equalCskXhPDodhyTq_6mdtest.exit.i116 ], [ 0, %..loopexit257_crit_edge.split.us.i148 ] ; 17 uses
  %i.nh = and i64 %.sroa.039.0726.i, 1023
  %i.ni = icmp eq i64 %i.nh, 0
  %or.cond170.i101 = select i1 %.sroa.05.0.not728.i, i1 %i.ni, i1 false ; 2 uses
  br i1 %or.cond170.i101, label %bb.eb, label %bb.ea

bb.dv:                                            ; preds = %._crit_edge730.i
  %i.nj = add i64 %.sroa.09.3.i118, %.sroa.0.0    ; 2 uses
  %i.nk = sub nuw i64 %i.eh, %.sroa.09.3.i118
  %i.nl = add i64 %.sroa.039.3.i, %.sroa.0186.0   ; 2 uses
  %i.nm = load i64, ptr %i.af, align 8, !range !6, !alias.scope !1500, !noundef !3
  %i.nn = icmp eq i64 %i.rz, %i.nm
  br i1 %i.nn, label %bb.dw, label %_RNvXs1_NtNtCsiqiOkcJdymw_7similar10algorithms7compactINtB5_7CompactINtNtB7_5utils12OffsetLookupmEB13_INtNtB7_7replace7ReplaceNtNtB7_7capture7CaptureEENtNtB7_4hook8DiffHook6deleteCskXhPDodhyTq_6mdtest.exit181.i97

bb.dw:                                            ; preds = %bb.dv
  invoke void @_RNvMs3_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecNtNtCsiqiOkcJdymw_7similar5types6DiffOpE8grow_oneBP_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.af)
          to label %_RNvXs1_NtNtCsiqiOkcJdymw_7similar10algorithms7compactINtB5_7CompactINtNtB7_5utils12OffsetLookupmEB13_INtNtB7_7replace7ReplaceNtNtB7_7capture7CaptureEENtNtB7_4hook8DiffHook6deleteCskXhPDodhyTq_6mdtest.exit181.i97 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i86.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !1499

_RNvXs1_NtNtCsiqiOkcJdymw_7similar10algorithms7compactINtB5_7CompactINtNtB7_5utils12OffsetLookupmEB13_INtNtB7_7replace7ReplaceNtNtB7_7capture7CaptureEENtNtB7_4hook8DiffHook6deleteCskXhPDodhyTq_6mdtest.exit181.i97: ; preds = %bb.dw, %bb.dv
  %i.no = load ptr, ptr %i.ah, align 8, !alias.scope !1500, !nonnull !3, !noundef !3
  %i.np = getelementptr inbounds nuw [40 x i8], ptr %i.no, i64 %i.rz ; 4 uses
  store i64 1, ptr %i.np, align 8, !noalias !1499
  %.sroa.4225.0..sroa_idx.i98 = getelementptr inbounds nuw i8, ptr %i.np, i64 8
  store i64 %i.nj, ptr %.sroa.4225.0..sroa_idx.i98, align 8, !noalias !1499
  %.sroa.5226.0..sroa_idx.i99 = getelementptr inbounds nuw i8, ptr %i.np, i64 16
  store i64 %i.nk, ptr %.sroa.5226.0..sroa_idx.i99, align 8, !noalias !1499
  %.sroa.6227.0..sroa_idx.i100 = getelementptr inbounds nuw i8, ptr %i.np, i64 24
  store i64 %i.nl, ptr %.sroa.6227.0..sroa_idx.i100, align 8, !noalias !1499
  %i.nq = add i64 %.sink1257.i, 2                 ; 2 uses
  store i64 %i.nq, ptr %i.ag, align 8, !alias.scope !1500
  br i1 %i.sb, label %bb.dy, label %_RINvNtNtCsiqiOkcJdymw_7similar10algorithms5myers27maybe_emit_small_side_exactINtNtB4_5utils12OffsetLookupmEB1d_INtNtB4_7compact7CompactB1d_B1d_INtNtB4_7replace7ReplaceNtNtB4_7capture7CaptureEEECskXhPDodhyTq_6mdtest.exit.thread300

bb.dx:                                            ; preds = %._crit_edge730.i
  br i1 %i.sb, label %._crit_edge870, label %_RINvNtNtCsiqiOkcJdymw_7similar10algorithms5myers27maybe_emit_small_side_exactINtNtB4_5utils12OffsetLookupmEB1d_INtNtB4_7compact7CompactB1d_B1d_INtNtB4_7replace7ReplaceNtNtB4_7capture7CaptureEEECskXhPDodhyTq_6mdtest.exit.thread300

._crit_edge870:                                   ; preds = %bb.dx
  %.pre876 = add i64 %.sroa.09.3.i118, %.sroa.0.0
  %.pre878 = add i64 %.sroa.039.3.i, %.sroa.0186.0
  br label %bb.dy

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i86.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %bb.fx, %bb.eb, %bb.em, %bb.ez, %bb.fk, %bb.fm, %bb.en, %bb.fa, %.lr.ph702.split.i, %bb.gi, %.invoke.i102, %bb.dz, %bb.dw
  %lpad.loopexit.split-lp1609 = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VechEECskXhPDodhyTq_6mdtest(ptr noalias noundef align 8 dereferenceable(24) %i.b) #15
          to label %common.resume unwind label %bb.gm, !noalias !1499

bb.dy:                                            ; preds = %._crit_edge870, %_RNvXs1_NtNtCsiqiOkcJdymw_7similar10algorithms7compactINtB5_7CompactINtNtB7_5utils12OffsetLookupmEB13_INtNtB7_7replace7ReplaceNtNtB7_7capture7CaptureEENtNtB7_4hook8DiffHook6deleteCskXhPDodhyTq_6mdtest.exit181.i97
  %.pre-phi879 = phi i64 [ %.pre878, %._crit_edge870 ], [ %i.nl, %_RNvXs1_NtNtCsiqiOkcJdymw_7similar10algorithms7compactINtB5_7CompactINtNtB7_5utils12OffsetLookupmEB13_INtNtB7_7replace7ReplaceNtNtB7_7capture7CaptureEENtNtB7_4hook8DiffHook6deleteCskXhPDodhyTq_6mdtest.exit181.i97 ]
  %.pre-phi877 = phi i64 [ %.pre876, %._crit_edge870 ], [ %i.nj, %_RNvXs1_NtNtCsiqiOkcJdymw_7similar10algorithms7compactINtB5_7CompactINtNtB7_5utils12OffsetLookupmEB13_INtNtB7_7replace7ReplaceNtNtB7_7capture7CaptureEENtNtB7_4hook8DiffHook6deleteCskXhPDodhyTq_6mdtest.exit181.i97 ]
  %i.nr = phi i64 [ %i.rz, %._crit_edge870 ], [ %i.nq, %_RNvXs1_NtNtCsiqiOkcJdymw_7similar10algorithms7compactINtB5_7CompactINtNtB7_5utils12OffsetLookupmEB13_INtNtB7_7replace7ReplaceNtNtB7_7capture7CaptureEENtNtB7_4hook8DiffHook6deleteCskXhPDodhyTq_6mdtest.exit181.i97 ] ; 3 uses
  %i.ns = sub nuw i64 %i.ei, %.sroa.039.3.i
  %i.nt = load i64, ptr %i.af, align 8, !range !6, !alias.scope !1501, !noundef !3
  %i.nu = icmp eq i64 %i.nr, %i.nt
  br i1 %i.nu, label %bb.dz, label %_RNvXs1_NtNtCsiqiOkcJdymw_7similar10algorithms7compactINtB5_7CompactINtNtB7_5utils12OffsetLookupmEB13_INtNtB7_7replace7ReplaceNtNtB7_7capture7CaptureEENtNtB7_4hook8DiffHook6insertCskXhPDodhyTq_6mdtest.exit182.i82

bb.dz:                                            ; preds = %bb.dy
  invoke void @_RNvMs3_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecNtNtCsiqiOkcJdymw_7similar5types6DiffOpE8grow_oneBP_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.af)
          to label %_RNvXs1_NtNtCsiqiOkcJdymw_7similar10algorithms7compactINtB5_7CompactINtNtB7_5utils12OffsetLookupmEB13_INtNtB7_7replace7ReplaceNtNtB7_7capture7CaptureEENtNtB7_4hook8DiffHook6insertCskXhPDodhyTq_6mdtest.exit182.i82 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i86.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !1499

_RNvXs1_NtNtCsiqiOkcJdymw_7similar10algorithms7compactINtB5_7CompactINtNtB7_5utils12OffsetLookupmEB13_INtNtB7_7replace7ReplaceNtNtB7_7capture7CaptureEENtNtB7_4hook8DiffHook6insertCskXhPDodhyTq_6mdtest.exit182.i82: ; preds = %bb.dz, %bb.dy
  %i.nv = load ptr, ptr %i.ah, align 8, !alias.scope !1501, !nonnull !3, !noundef !3
  %i.nw = getelementptr inbounds nuw [40 x i8], ptr %i.nv, i64 %i.nr ; 4 uses
  store i64 2, ptr %i.nw, align 8, !noalias !1499
  %.sroa.4235.0..sroa_idx.i83 = getelementptr inbounds nuw i8, ptr %i.nw, i64 8
  store i64 %.pre-phi877, ptr %.sroa.4235.0..sroa_idx.i83, align 8, !noalias !1499
  %.sroa.5236.0..sroa_idx.i84 = getelementptr inbounds nuw i8, ptr %i.nw, i64 16
  store i64 %.pre-phi879, ptr %.sroa.5236.0..sroa_idx.i84, align 8, !noalias !1499
  %.sroa.6237.0..sroa_idx.i85 = getelementptr inbounds nuw i8, ptr %i.nw, i64 24
  store i64 %i.ns, ptr %.sroa.6237.0..sroa_idx.i85, align 8, !noalias !1499
  %i.nx = add i64 %i.nr, 1
  store i64 %i.nx, ptr %i.ag, align 8, !alias.scope !1501
  br label %_RINvNtNtCsiqiOkcJdymw_7similar10algorithms5myers27maybe_emit_small_side_exactINtNtB4_5utils12OffsetLookupmEB1d_INtNtB4_7compact7CompactB1d_B1d_INtNtB4_7replace7ReplaceNtNtB4_7capture7CaptureEEECskXhPDodhyTq_6mdtest.exit.thread300

_RINvNtNtCsiqiOkcJdymw_7similar10algorithms5myers27maybe_emit_small_side_exactINtNtB4_5utils12OffsetLookupmEB1d_INtNtB4_7compact7CompactB1d_B1d_INtNtB4_7replace7ReplaceNtNtB4_7capture7CaptureEEECskXhPDodhyTq_6mdtest.exit.thread300: ; preds = %_RNvXs1_NtNtCsiqiOkcJdymw_7similar10algorithms7compactINtB5_7CompactINtNtB7_5utils12OffsetLookupmEB13_INtNtB7_7replace7ReplaceNtNtB7_7capture7CaptureEENtNtB7_4hook8DiffHook6deleteCskXhPDodhyTq_6mdtest.exit181.i97, %bb.dx, %_RNvXs1_NtNtCsiqiOkcJdymw_7similar10algorithms7compactINtB5_7CompactINtNtB7_5utils12OffsetLookupmEB13_INtNtB7_7replace7ReplaceNtNtB7_7capture7CaptureEENtNtB7_4hook8DiffHook6insertCskXhPDodhyTq_6mdtest.exit182.i82
  call fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VechEECskXhPDodhyTq_6mdtest(ptr noalias noundef align 8 dereferenceable(24) %i.b), !noalias !1499
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !1495
  br label %bb.as

bb.ea:                                            ; preds = %bb.ec, %.lr.ph729.i
  %i.ny = mul i64 %.sroa.09.0727.i, %i.mt         ; 4 uses
  %i.nz = add i64 %.sroa.09.0727.i, %.sroa.0.0    ; 2 uses
  %i.oa = add i64 %.sroa.039.0726.i, %.sroa.0186.0 ; 7 uses
  %i.ob = sub i64 %i.oa, %i.o                     ; 3 uses
  %i.oc = icmp ult i64 %i.ob, %i.q
  br i1 %i.oc, label %bb.ed, label %.invoke.i102

.invoke.i102:                                     ; preds = %bb.gg, %bb.ge, %bb.gc, %bb.gb, %bb.fz, %bb.ej, %bb.eh, %bb.eg, %bb.ef, %bb.ed, %bb.ea, %bb.fi, %bb.fg, %bb.ff, %bb.fe, %bb.fc, %bb.ev, %bb.et, %bb.es, %bb.er, %bb.ep, %bb.fo, %bb.fl, %bb.fr, %bb.fq, %bb.gl, %bb.gk
  %i.od = phi i64 [ %i.qk, %bb.ev ], [ %.reass.i139, %bb.gk ], [ %.reass704.i, %bb.gl ], [ %i.rr, %bb.fi ], [ %i.ob, %bb.ea ], [ %i.sy, %bb.fr ], [ %i.q, %bb.fl ], [ %i.sr, %bb.fq ], [ %i.w, %bb.fo ], [ %i.pu, %bb.ep ], [ %i.py, %bb.er ], [ %i.qc, %bb.et ], [ %i.qa, %bb.es ], [ %i.qz, %bb.fc ], [ %i.rd, %bb.fe ], [ %i.rj, %bb.fg ], [ %i.rf, %bb.ff ], [ %i.om, %bb.ef ], [ %i.oo, %bb.eg ], [ %i.pe, %bb.ej ], [ %i.oi, %bb.ed ], [ %i.ot, %bb.eh ], [ %i.tv, %bb.gb ], [ %.reass.us.i142, %bb.fz ], [ %i.uo, %bb.gg ], [ %i.tz, %bb.gc ], [ %i.uf, %bb.ge ]
  %i.oe = phi i64 [ %.pre963.i.a, %bb.ev ], [ %i.q, %bb.gk ], [ %i.w, %bb.gl ], [ %.pre961.i, %bb.fi ], [ %i.q, %bb.ea ], [ %i.st, %bb.fr ], [ %i.q, %bb.fl ], [ %i.st, %bb.fq ], [ %i.w, %bb.fo ], [ %i.q, %bb.ep ], [ %.pre963.i.a, %bb.er ], [ %.pre963.i.a, %bb.et ], [ %.pre963.i.a, %bb.es ], [ %i.w, %bb.fc ], [ %.pre961.i, %bb.fe ], [ %.pre961.i, %bb.fg ], [ %.pre961.i, %bb.ff ], [ %.pre959.i, %bb.ef ], [ %.pre959.i, %bb.eg ], [ %.pre959.i, %bb.ej ], [ %i.w, %bb.ed ], [ %.pre959.i, %bb.eh ], [ %i.tx, %bb.gb ], [ %i.q, %bb.fz ], [ %i.un, %bb.gg ], [ %i.tx, %bb.gc ], [ %i.ug, %bb.ge ]
  %i.of = phi ptr [ @62, %bb.ev ], [ @73, %bb.gk ], [ @74, %bb.gl ], [ @68, %bb.fi ], [ @51, %bb.ea ], [ @72, %bb.fr ], [ @69, %bb.fl ], [ @71, %bb.fq ], [ @70, %bb.fo ], [ @57, %bb.ep ], [ @59, %bb.er ], [ @60, %bb.et ], [ @61, %bb.es ], [ @64, %bb.fc ], [ @65, %bb.fe ], [ @66, %bb.fg ], [ @67, %bb.ff ], [ @53, %bb.ef ], [ @55, %bb.eg ], [ @56, %bb.ej ], [ @52, %bb.ed ], [ @54, %bb.eh ], [ @75, %bb.gb ], [ @73, %bb.fz ], [ @78, %bb.gg ], [ @76, %bb.gc ], [ @77, %bb.ge ]
  invoke void @_RNvNtCs4NRVxsYgnAr_4core9panicking18panic_bounds_check(i64 noundef %i.od, i64 noundef %i.oe, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.of) #14
          to label %.cont.i103 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i86.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !1499

.cont.i103:                                       ; preds = %.invoke.i102
  unreachable

bb.eb:                                            ; preds = %.lr.ph729.i
  %i.og = invoke noundef zeroext i1 @_RNvNtCsiqiOkcJdymw_7similar16deadline_support17deadline_exceeded(i64 %9, i32 noundef range(i32 -1, 1000000000) %10)
          to label %bb.ec unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i86.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !1499

bb.ec:                                            ; preds = %bb.eb
  br i1 %i.og, label %.loopexit242.i123, label %bb.ea

bb.ed:                                            ; preds = %bb.ea
  %i.oh = getelementptr inbounds nuw [4 x i8], ptr %i.s, i64 %i.ob ; 2 uses
  %i.oi = sub i64 %i.nz, %i.u                     ; 3 uses
  %i.oj = icmp ult i64 %i.oi, %i.w
  br i1 %i.oj, label %bb.ee, label %.invoke.i102

bb.ee:                                            ; preds = %bb.ed
  %i.ok = getelementptr inbounds nuw [4 x i8], ptr %i.y, i64 %i.oi ; 2 uses
  %.val208.i104 = load i32, ptr %i.oh, align 4, !noalias !1499, !noundef !3
  %.val209.i105 = load i32, ptr %i.ok, align 4, !noalias !1499, !noundef !3
  %i.ol = icmp eq i32 %.val208.i104, %.val209.i105
  %.pre.i106 = load ptr, ptr %i.nd, align 8, !noalias !1495 ; 4 uses
  %.pre959.i = load i64, ptr %i.ne, align 8, !noalias !1495 ; 8 uses
  br i1 %i.ol, label %bb.ef, label %._crit_edge965.i

._crit_edge965.i:                                 ; preds = %bb.ee
  %.pre966.i = add nuw i64 %.sroa.09.0727.i, 1
  %.pre967.i = mul i64 %.pre966.i, %i.mt
  br label %bb.eg

bb.ef:                                            ; preds = %bb.ee
  %i.om = add i64 %i.ny, %.sroa.039.0726.i        ; 3 uses
  %i.on = icmp ult i64 %i.om, %.pre959.i
  br i1 %i.on, label %bb.eh, label %.invoke.i102

bb.eg:                                            ; preds = %bb.ei, %._crit_edge965.i
  %.pre-phi968.i = phi i64 [ %.pre967.i, %._crit_edge965.i ], [ %i.or, %bb.ei ] ; 3 uses
  %i.oo = add i64 %.pre-phi968.i, %.sroa.039.0726.i ; 3 uses
  %i.op = icmp ult i64 %i.oo, %.pre959.i
  br i1 %i.op, label %bb.ej, label %.invoke.i102

bb.eh:                                            ; preds = %bb.ef
  %i.oq = add nuw i64 %.sroa.09.0727.i, 1
  %i.or = mul i64 %i.oq, %i.mt                    ; 2 uses
  %i.os = add nuw i64 %.sroa.039.0726.i, 1
  %i.ot = add i64 %i.os, %i.or                    ; 3 uses
  %i.ou = icmp ult i64 %i.ot, %.pre959.i
  br i1 %i.ou, label %bb.ei, label %.invoke.i102

bb.ei:                                            ; preds = %bb.eh
  %i.ov = getelementptr inbounds nuw i8, ptr %.pre.i106, i64 %i.om
  %i.ow = load i8, ptr %i.ov, align 1, !noalias !1499, !noundef !3
  %i.ox = getelementptr inbounds nuw i8, ptr %.pre.i106, i64 %i.ot
  %i.oy = load i8, ptr %i.ox, align 1, !noalias !1499, !noundef !3
  %i.oz = add i8 %i.oy, 1
  %i.pa = icmp eq i8 %i.ow, %i.oz
  br i1 %i.pa, label %.preheader.i130, label %bb.eg

.preheader.i130:                                  ; preds = %bb.ei
  %i.pb = icmp ult i64 %.sroa.09.0727.i, %i.eh
  %i.pc = icmp ult i64 %.sroa.039.0726.i, %i.ei
  %or.cond177712.i = select i1 %i.pb, i1 %i.pc, i1 false
  br i1 %or.cond177712.i, label %.lr.ph715.i, label %._crit_edge716.i

bb.ej:                                            ; preds = %bb.eg
  %i.pd = add i64 %.sroa.039.0726.i, 1            ; 3 uses
  %i.pe = add i64 %i.pd, %i.ny                    ; 3 uses
  %i.pf = icmp ult i64 %i.pe, %.pre959.i
  br i1 %i.pf, label %bb.ek, label %.invoke.i102

bb.ek:                                            ; preds = %bb.ej
  %i.pg = getelementptr inbounds nuw i8, ptr %.pre.i106, i64 %i.oo
  %i.ph = load i8, ptr %i.pg, align 1, !noalias !1499, !noundef !3
  %i.pi = getelementptr inbounds nuw i8, ptr %.pre.i106, i64 %i.pe
  %i.pj = load i8, ptr %i.pi, align 1, !noalias !1499, !noundef !3
  %.not164.i107 = icmp ult i8 %i.ph, %i.pj
  br i1 %.not164.i107, label %.preheader243.i125, label %.preheader248.i108

.preheader248.i108:                               ; preds = %bb.ek
  %umax.i109 = call i64 @llvm.umax.i64(i64 %.sroa.09.0727.i, i64 %i.eh) ; 3 uses
  %exitcond.not.i1111511.not = icmp ult i64 %.sroa.09.0727.i, %i.eh
  br i1 %exitcond.not.i1111511.not, label %.lr.ph1513, label %._crit_edge1514

.preheader243.i125:                               ; preds = %bb.ek
  %i.pk = icmp ult i64 %.sroa.039.0726.i, %i.ei
  br i1 %i.pk, label %.lr.ph707.i, label %._crit_edge.i126

.lr.ph707.i:                                      ; preds = %.preheader243.i125
  %i.pl = add i64 %.pre-phi968.i, 1
  %i.pm = add i64 %i.ny, 1
  br label %bb.el

bb.el:                                            ; preds = %bb.ex, %.lr.ph707.i
  %.sroa.039.1706.i = phi i64 [ %.sroa.039.0726.i, %.lr.ph707.i ], [ %i.qr, %bb.ex ] ; 9 uses
  %i.pn = and i64 %.sroa.039.1706.i, 1023
  %i.po = icmp eq i64 %i.pn, 0
  %or.cond173.i127 = and i1 %.sroa.05.0.not728.i, %i.po
  br i1 %or.cond173.i127, label %bb.en, label %bb.ep

._crit_edge.i126:                                 ; preds = %bb.ex, %bb.ew, %bb.eu, %.preheader243.i125
  %.sroa.039.1.lcssa.i = phi i64 [ %.sroa.039.0726.i, %.preheader243.i125 ], [ %i.ei, %bb.ex ], [ %.sroa.039.1706.i, %bb.ew ], [ %.sroa.039.1706.i, %bb.eu ] ; 3 uses
  %i.pp = sub nuw i64 %.sroa.039.1.lcssa.i, %.sroa.039.0726.i ; 2 uses
  %i.pq = load i64, ptr %i.ag, align 8, !alias.scope !1502, !noundef !3 ; 3 uses
  %i.pr = load i64, ptr %i.af, align 8, !range !6, !alias.scope !1502, !noundef !3
  %i.ps = icmp eq i64 %i.pq, %i.pr
  br i1 %i.ps, label %bb.em, label %_RNvXs1_NtNtCsiqiOkcJdymw_7similar10algorithms7compactINtB5_7CompactINtNtB7_5utils12OffsetLookupmEB13_INtNtB7_7replace7ReplaceNtNtB7_7capture7CaptureEENtNtB7_4hook8DiffHook5equalCskXhPDodhyTq_6mdtest.exit.i116

bb.em:                                            ; preds = %._crit_edge.i126
  invoke void @_RNvMs3_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecNtNtCsiqiOkcJdymw_7similar5types6DiffOpE8grow_oneBP_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.af)
          to label %_RNvXs1_NtNtCsiqiOkcJdymw_7similar10algorithms7compactINtB5_7CompactINtNtB7_5utils12OffsetLookupmEB13_INtNtB7_7replace7ReplaceNtNtB7_7capture7CaptureEENtNtB7_4hook8DiffHook5equalCskXhPDodhyTq_6mdtest.exit.i116 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i86.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !1499

bb.en:                                            ; preds = %bb.el
  %i.pt = invoke noundef zeroext i1 @_RNvNtCsiqiOkcJdymw_7similar16deadline_support17deadline_exceeded(i64 %9, i32 noundef range(i32 -1, 1000000000) %10)
          to label %bb.eo unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i86.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !1499

bb.eo:                                            ; preds = %bb.en
  br i1 %i.pt, label %.loopexit242.i123, label %bb.ep

bb.ep:                                            ; preds = %bb.eo, %bb.el
  %i.pu = add i64 %.sroa.039.1706.i, %invariant.op.i90 ; 3 uses
  %i.pv = icmp ult i64 %i.pu, %i.q
  br i1 %i.pv, label %bb.eq, label %.invoke.i102

bb.eq:                                            ; preds = %bb.ep
  %i.pw = getelementptr inbounds nuw [4 x i8], ptr %i.s, i64 %i.pu
  %.val206.i128 = load i32, ptr %i.pw, align 4, !noalias !1499, !noundef !3
  %.val207.i129 = load i32, ptr %i.ok, align 4, !noalias !1499, !noundef !3
  %i.px = icmp eq i32 %.val206.i128, %.val207.i129
  %.pre962.i.a = load ptr, ptr %i.nd, align 8, !noalias !1495 ; 4 uses
  %.pre963.i.a = load i64, ptr %i.ne, align 8, !noalias !1495 ; 8 uses
  br i1 %i.px, label %bb.er, label %bb.es

bb.er:                                            ; preds = %bb.eq
  %i.py = add i64 %.sroa.039.1706.i, %i.ny        ; 3 uses
  %i.pz = icmp ult i64 %i.py, %.pre963.i.a
  br i1 %i.pz, label %bb.et, label %.invoke.i102

bb.es:                                            ; preds = %bb.eu, %bb.eq
  %i.qa = add i64 %.sroa.039.1706.i, %.pre-phi968.i ; 3 uses
  %i.qb = icmp ult i64 %i.qa, %.pre963.i.a
  br i1 %i.qb, label %bb.ev, label %.invoke.i102

bb.et:                                            ; preds = %bb.er
  %i.qc = add i64 %i.pl, %.sroa.039.1706.i        ; 3 uses
  %i.qd = icmp ult i64 %i.qc, %.pre963.i.a
  br i1 %i.qd, label %bb.eu, label %.invoke.i102

bb.eu:                                            ; preds = %bb.et
  %i.qe = getelementptr inbounds nuw i8, ptr %.pre962.i.a, i64 %i.py
  %i.qf = load i8, ptr %i.qe, align 1, !noalias !1499, !noundef !3
  %i.qg = getelementptr inbounds nuw i8, ptr %.pre962.i.a, i64 %i.qc
  %i.qh = load i8, ptr %i.qg, align 1, !noalias !1499, !noundef !3
  %i.qi = add i8 %i.qh, 1
  %i.qj = icmp eq i8 %i.qf, %i.qi
  br i1 %i.qj, label %._crit_edge.i126, label %bb.es

bb.ev:                                            ; preds = %bb.es
  %i.qk = add i64 %i.pm, %.sroa.039.1706.i        ; 3 uses
  %i.ql = icmp ult i64 %i.qk, %.pre963.i.a
  br i1 %i.ql, label %bb.ew, label %.invoke.i102

bb.ew:                                            ; preds = %bb.ev
  %i.qm = getelementptr inbounds nuw i8, ptr %.pre962.i.a, i64 %i.qa
  %i.qn = load i8, ptr %i.qm, align 1, !noalias !1499, !noundef !3
  %i.qo = getelementptr inbounds nuw i8, ptr %.pre962.i.a, i64 %i.qk
  %i.qp = load i8, ptr %i.qo, align 1, !noalias !1499, !noundef !3
  %i.qq = icmp ult i8 %i.qn, %i.qp
  br i1 %i.qq, label %bb.ex, label %._crit_edge.i126

bb.ex:                                            ; preds = %bb.ew
  %i.qr = add nuw i64 %.sroa.039.1706.i, 1        ; 2 uses
  %i.qs = icmp ult i64 %i.qr, %i.ei
  br i1 %i.qs, label %bb.el, label %._crit_edge.i126

bb.ey:                                            ; preds = %bb.fj
  %exitcond.not.i111 = icmp eq i64 %.pre-phi970.i, %umax.i109
  br i1 %exitcond.not.i111, label %._crit_edge1514, label %.lr.ph1513

.lr.ph1513:                                       ; preds = %.preheader248.i108, %bb.ey
  %.sroa.09.1.i1101512 = phi i64 [ %.pre-phi970.i, %bb.ey ], [ %.sroa.09.0727.i, %.preheader248.i108 ] ; 6 uses
  br i1 %or.cond170.i101, label %bb.fa, label %bb.fc

._crit_edge1514:                                  ; preds = %bb.ey, %bb.fh, %bb.fj, %.preheader248.i108
  %.sroa.09.1.lcssa.i115 = phi i64 [ %umax.i109, %.preheader248.i108 ], [ %umax.i109, %bb.ey ], [ %.sroa.09.1.i1101512, %bb.fh ], [ %.sroa.09.1.i1101512, %bb.fj ] ; 3 uses
  %i.qt = sub nuw i64 %.sroa.09.1.lcssa.i115, %.sroa.09.0727.i ; 2 uses
  %i.qu = load i64, ptr %i.ag, align 8, !alias.scope !1503, !noundef !3 ; 3 uses
  %i.qv = load i64, ptr %i.af, align 8, !range !6, !alias.scope !1503, !noundef !3
  %i.qw = icmp eq i64 %i.qu, %i.qv
  br i1 %i.qw, label %bb.ez, label %_RNvXs1_NtNtCsiqiOkcJdymw_7similar10algorithms7compactINtB5_7CompactINtNtB7_5utils12OffsetLookupmEB13_INtNtB7_7replace7ReplaceNtNtB7_7capture7CaptureEENtNtB7_4hook8DiffHook5equalCskXhPDodhyTq_6mdtest.exit.i116

bb.ez:                                            ; preds = %._crit_edge1514
  invoke void @_RNvMs3_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecNtNtCsiqiOkcJdymw_7similar5types6DiffOpE8grow_oneBP_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.af)
          to label %_RNvXs1_NtNtCsiqiOkcJdymw_7similar10algorithms7compactINtB5_7CompactINtNtB7_5utils12OffsetLookupmEB13_INtNtB7_7replace7ReplaceNtNtB7_7capture7CaptureEENtNtB7_4hook8DiffHook5equalCskXhPDodhyTq_6mdtest.exit.i116 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i86.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !1499

bb.fa:                                            ; preds = %.lr.ph1513
  %i.qx = invoke noundef zeroext i1 @_RNvNtCsiqiOkcJdymw_7similar16deadline_support17deadline_exceeded(i64 %9, i32 noundef range(i32 -1, 1000000000) %10)
          to label %bb.fb unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i86.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !1499

bb.fb:                                            ; preds = %bb.fa
  br i1 %i.qx, label %.loopexit242.i123, label %bb.fc

bb.fc:                                            ; preds = %bb.fb, %.lr.ph1513
  %i.qy = mul i64 %.sroa.09.1.i1101512, %i.mt     ; 2 uses
  %i.qz = add i64 %.sroa.09.1.i1101512, %invariant.op703.i ; 3 uses
  %i.ra = icmp ult i64 %i.qz, %i.w
  br i1 %i.ra, label %bb.fd, label %.invoke.i102

bb.fd:                                            ; preds = %bb.fc
  %i.rb = getelementptr inbounds nuw [4 x i8], ptr %i.y, i64 %i.qz
  %.val204.i112 = load i32, ptr %i.oh, align 4, !noalias !1499, !noundef !3
  %.val205.i113 = load i32, ptr %i.rb, align 4, !noalias !1499, !noundef !3
  %i.rc = icmp eq i32 %.val204.i112, %.val205.i113
  %.pre960.i = load ptr, ptr %i.nd, align 8, !noalias !1495 ; 4 uses
  %.pre961.i = load i64, ptr %i.ne, align 8, !noalias !1495 ; 8 uses
  br i1 %i.rc, label %bb.fe, label %._crit_edge964.i

._crit_edge964.i:                                 ; preds = %bb.fd
  %.pre969.i = add i64 %.sroa.09.1.i1101512, 1    ; 2 uses
  %.pre971.i = mul i64 %.pre969.i, %i.mt
  br label %bb.ff

bb.fe:                                            ; preds = %bb.fd
  %i.rd = add i64 %i.qy, %.sroa.039.0726.i        ; 3 uses
  %i.re = icmp ult i64 %i.rd, %.pre961.i
  br i1 %i.re, label %bb.fg, label %.invoke.i102

bb.ff:                                            ; preds = %bb.fh, %._crit_edge964.i
  %.pre-phi972.i.a = phi i64 [ %.pre971.i, %._crit_edge964.i ], [ %i.ri, %bb.fh ]
  %.pre-phi970.i = phi i64 [ %.pre969.i, %._crit_edge964.i ], [ %i.rh, %bb.fh ] ; 2 uses
  %i.rf = add i64 %.pre-phi972.i.a, %.sroa.039.0726.i ; 3 uses
  %i.rg = icmp ult i64 %i.rf, %.pre961.i
  br i1 %i.rg, label %bb.fi, label %.invoke.i102

bb.fg:                                            ; preds = %bb.fe
  %i.rh = add i64 %.sroa.09.1.i1101512, 1         ; 2 uses
  %i.ri = mul i64 %i.rh, %i.mt                    ; 2 uses
  %i.rj = add i64 %i.ri, %i.pd                    ; 3 uses
  %i.rk = icmp ult i64 %i.rj, %.pre961.i
  br i1 %i.rk, label %bb.fh, label %.invoke.i102

bb.fh:                                            ; preds = %bb.fg
  %i.rl = getelementptr inbounds nuw i8, ptr %.pre960.i, i64 %i.rd
  %i.rm = load i8, ptr %i.rl, align 1, !noalias !1499, !noundef !3
  %i.rn = getelementptr inbounds nuw i8, ptr %.pre960.i, i64 %i.rj
  %i.ro = load i8, ptr %i.rn, align 1, !noalias !1499, !noundef !3
  %i.rp = add i8 %i.ro, 1
  %i.rq = icmp eq i8 %i.rm, %i.rp
  br i1 %i.rq, label %._crit_edge1514, label %bb.ff

bb.fi:                                            ; preds = %bb.ff
  %i.rr = add i64 %i.qy, %i.pd                    ; 3 uses
  %i.rs = icmp ult i64 %i.rr, %.pre961.i
  br i1 %i.rs, label %bb.fj, label %.invoke.i102

bb.fj:                                            ; preds = %bb.fi
  %i.rt = getelementptr inbounds nuw i8, ptr %.pre960.i, i64 %i.rf
  %i.ru = load i8, ptr %i.rt, align 1, !noalias !1499, !noundef !3
  %i.rv = getelementptr inbounds nuw i8, ptr %.pre960.i, i64 %i.rr
  %i.rw = load i8, ptr %i.rv, align 1, !noalias !1499, !noundef !3
  %.not167.i114 = icmp ult i8 %i.ru, %i.rw
  br i1 %.not167.i114, label %._crit_edge1514, label %bb.ey

_RNvXs1_NtNtCsiqiOkcJdymw_7similar10algorithms7compactINtB5_7CompactINtNtB7_5utils12OffsetLookupmEB13_INtNtB7_7replace7ReplaceNtNtB7_7capture7CaptureEENtNtB7_4hook8DiffHook5equalCskXhPDodhyTq_6mdtest.exit.i116: ; preds = %bb.fk, %._crit_edge716.i, %bb.ez, %._crit_edge1514, %bb.em, %._crit_edge.i126
  %.sink1257.i = phi i64 [ %i.sd, %bb.fk ], [ %i.pq, %bb.em ], [ %i.sd, %._crit_edge716.i ], [ %i.pq, %._crit_edge.i126 ], [ %i.qu, %._crit_edge1514 ], [ %i.qu, %bb.ez ] ; 3 uses
  %.sink1254.i = phi i64 [ 0, %bb.fk ], [ 2, %bb.em ], [ 0, %._crit_edge716.i ], [ 2, %._crit_edge.i126 ], [ 1, %._crit_edge1514 ], [ 1, %bb.ez ]
  %.sink1251.i = phi i64 [ %i.oa, %bb.fk ], [ %i.oa, %bb.em ], [ %i.oa, %._crit_edge716.i ], [ %i.oa, %._crit_edge.i126 ], [ %i.qt, %._crit_edge1514 ], [ %i.qt, %bb.ez ]
  %.sink.i117 = phi i64 [ %i.sc, %bb.fk ], [ %i.pp, %bb.em ], [ %i.sc, %._crit_edge716.i ], [ %i.pp, %._crit_edge.i126 ], [ %i.oa, %._crit_edge1514 ], [ %i.oa, %bb.ez ]
  %.sroa.039.3.i = phi i64 [ %.sroa.039.4.lcssa.i, %bb.fk ], [ %.sroa.039.1.lcssa.i, %bb.em ], [ %.sroa.039.4.lcssa.i, %._crit_edge716.i ], [ %.sroa.039.1.lcssa.i, %._crit_edge.i126 ], [ %.sroa.039.0726.i, %._crit_edge1514 ], [ %.sroa.039.0726.i, %bb.ez ] ; 5 uses
  %.sroa.09.3.i118 = phi i64 [ %.sroa.09.4.lcssa.i131, %bb.fk ], [ %.sroa.09.0727.i, %bb.em ], [ %.sroa.09.4.lcssa.i131, %._crit_edge716.i ], [ %.sroa.09.0727.i, %._crit_edge.i126 ], [ %.sroa.09.1.lcssa.i115, %._crit_edge1514 ], [ %.sroa.09.1.lcssa.i115, %bb.ez ] ; 5 uses
  %i.rx = load ptr, ptr %i.ah, align 8, !alias.scope !1494, !nonnull !3, !noundef !3
  %i.ry = getelementptr inbounds nuw [40 x i8], ptr %i.rx, i64 %.sink1257.i ; 4 uses
  store i64 %.sink1254.i, ptr %i.ry, align 8, !noalias !1499
  %.sroa.4230.0..sroa_idx.i119 = getelementptr inbounds nuw i8, ptr %i.ry, i64 8
  store i64 %i.nz, ptr %.sroa.4230.0..sroa_idx.i119, align 8, !noalias !1499
  %.sroa.5231.0..sroa_idx.i120 = getelementptr inbounds nuw i8, ptr %i.ry, i64 16
  store i64 %.sink1251.i, ptr %.sroa.5231.0..sroa_idx.i120, align 8, !noalias !1499
  %.sroa.6232.0..sroa_idx.i121 = getelementptr inbounds nuw i8, ptr %i.ry, i64 24
  store i64 %.sink.i117, ptr %.sroa.6232.0..sroa_idx.i121, align 8, !noalias !1499
  %i.rz = add i64 %.sink1257.i, 1                 ; 4 uses
  store i64 %i.rz, ptr %i.ag, align 8, !alias.scope !1494
  %i.sa = icmp ult i64 %.sroa.09.3.i118, %i.eh    ; 2 uses
  %i.sb = icmp ult i64 %.sroa.039.3.i, %i.ei      ; 3 uses
  %or.cond.i122 = select i1 %i.sa, i1 %i.sb, i1 false
  br i1 %or.cond.i122, label %.lr.ph729.i, label %._crit_edge730.i

._crit_edge716.i:                                 ; preds = %bb.ft, %bb.fs, %bb.fp, %.preheader.i130
  %.sroa.039.4.lcssa.i = phi i64 [ %.sroa.039.0726.i, %.preheader.i130 ], [ %i.sx, %bb.ft ], [ %.sroa.039.4713.i, %bb.fp ], [ %.sroa.039.4713.i, %bb.fs ] ; 2 uses
  %.sroa.09.4.lcssa.i131 = phi i64 [ %.sroa.09.0727.i, %.preheader.i130 ], [ %i.sv, %bb.ft ], [ %.sroa.09.4714.i, %bb.fp ], [ %.sroa.09.4714.i, %bb.fs ] ; 3 uses
  %i.sc = sub i64 %.sroa.09.4.lcssa.i131, %.sroa.09.0727.i ; 2 uses
  %i.sd = load i64, ptr %i.ag, align 8, !alias.scope !1504, !noundef !3 ; 3 uses
  %i.se = load i64, ptr %i.af, align 8, !range !6, !alias.scope !1504, !noundef !3
  %i.sf = icmp eq i64 %i.sd, %i.se
  br i1 %i.sf, label %bb.fk, label %_RNvXs1_NtNtCsiqiOkcJdymw_7similar10algorithms7compactINtB5_7CompactINtNtB7_5utils12OffsetLookupmEB13_INtNtB7_7replace7ReplaceNtNtB7_7capture7CaptureEENtNtB7_4hook8DiffHook5equalCskXhPDodhyTq_6mdtest.exit.i116

bb.fk:                                            ; preds = %._crit_edge716.i
  invoke void @_RNvMs3_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecNtNtCsiqiOkcJdymw_7similar5types6DiffOpE8grow_oneBP_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.af)
          to label %_RNvXs1_NtNtCsiqiOkcJdymw_7similar10algorithms7compactINtB5_7CompactINtNtB7_5utils12OffsetLookupmEB13_INtNtB7_7replace7ReplaceNtNtB7_7capture7CaptureEENtNtB7_4hook8DiffHook5equalCskXhPDodhyTq_6mdtest.exit.i116 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i86.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !1499

.lr.ph715.i:                                      ; preds = %.preheader.i130, %bb.ft
  %.sroa.09.4714.i = phi i64 [ %i.sv, %bb.ft ], [ %.sroa.09.0727.i, %.preheader.i130 ] ; 5 uses
  %.sroa.039.4713.i = phi i64 [ %i.sx, %bb.ft ], [ %.sroa.039.0726.i, %.preheader.i130 ] ; 6 uses
  %i.sg = and i64 %.sroa.039.4713.i, 1023
  %i.sh = icmp eq i64 %i.sg, 0
  %or.cond180.i132 = select i1 %.sroa.05.0.not728.i, i1 %i.sh, i1 false
  br i1 %or.cond180.i132, label %bb.fm, label %bb.fl

bb.fl:                                            ; preds = %bb.fn, %.lr.ph715.i
  %i.si = mul i64 %.sroa.09.4714.i, %i.mt
  %i.sj = add i64 %.sroa.039.4713.i, %invariant.op.i90 ; 2 uses
  %i.sk = icmp ult i64 %i.sj, %i.q
  br i1 %i.sk, label %bb.fo, label %.invoke.i102

bb.fm:                                            ; preds = %.lr.ph715.i
  %i.sl = invoke noundef zeroext i1 @_RNvNtCsiqiOkcJdymw_7similar16deadline_support17deadline_exceeded(i64 %9, i32 noundef range(i32 -1, 1000000000) %10)
          to label %bb.fn unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i86.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !1499

bb.fn:                                            ; preds = %bb.fm
  br i1 %i.sl, label %.loopexit242.i123, label %bb.fl

bb.fo:                                            ; preds = %bb.fl
  %i.sm = add i64 %.sroa.09.4714.i, %invariant.op703.i ; 2 uses
  %i.sn = icmp ult i64 %i.sm, %i.w
  br i1 %i.sn, label %bb.fp, label %.invoke.i102

bb.fp:                                            ; preds = %bb.fo
  %i.so = getelementptr inbounds nuw [4 x i8], ptr %i.s, i64 %i.sj
  %i.sp = getelementptr inbounds nuw [4 x i8], ptr %i.y, i64 %i.sm
  %.val202.i133 = load i32, ptr %i.so, align 4, !noalias !1499, !noundef !3
  %.val203.i134 = load i32, ptr %i.sp, align 4, !noalias !1499, !noundef !3
  %i.sq = icmp eq i32 %.val202.i133, %.val203.i134
  br i1 %i.sq, label %bb.fq, label %._crit_edge716.i

bb.fq:                                            ; preds = %bb.fp
  %i.sr = add i64 %i.si, %.sroa.039.4713.i        ; 3 uses
  %i.ss = load ptr, ptr %i.nd, align 8, !noalias !1495, !nonnull !3, !noundef !3 ; 2 uses
  %i.st = load i64, ptr %i.ne, align 8, !noalias !1495, !noundef !3 ; 4 uses
  %i.su = icmp ult i64 %i.sr, %i.st
  br i1 %i.su, label %bb.fr, label %.invoke.i102

bb.fr:                                            ; preds = %bb.fq
  %i.sv = add nuw i64 %.sroa.09.4714.i, 1         ; 4 uses
  %i.sw = mul i64 %i.sv, %i.mt
  %i.sx = add nuw i64 %.sroa.039.4713.i, 1        ; 4 uses
  %i.sy = add i64 %i.sx, %i.sw                    ; 3 uses
  %i.sz = icmp ult i64 %i.sy, %i.st
  br i1 %i.sz, label %bb.fs, label %.invoke.i102

bb.fs:                                            ; preds = %bb.fr
  %i.ta = getelementptr inbounds nuw i8, ptr %i.ss, i64 %i.sr
  %i.tb = load i8, ptr %i.ta, align 1, !noalias !1499, !noundef !3
  %i.tc = getelementptr inbounds nuw i8, ptr %i.ss, i64 %i.sy
  %i.td = load i8, ptr %i.tc, align 1, !noalias !1499, !noundef !3
  %i.te = add i8 %i.td, 1
  %i.tf = icmp eq i8 %i.tb, %i.te
  br i1 %i.tf, label %bb.ft, label %._crit_edge716.i

bb.ft:                                            ; preds = %bb.fs
  %i.tg = icmp ult i64 %i.sv, %i.eh
  %i.th = icmp ult i64 %i.sx, %i.ei
  %or.cond177.i135 = and i1 %i.tg, %i.th
  br i1 %or.cond177.i135, label %.lr.ph715.i, label %._crit_edge716.i

.loopexit242.i123:                                ; preds = %bb.fw, %bb.fy, %bb.ec, %bb.fb, %bb.eo, %bb.fn, %bb.gj
  invoke void @_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCskXhPDodhyTq_6mdtest(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.b)
          to label %_RINvNtNtCsiqiOkcJdymw_7similar10algorithms5myers27maybe_emit_small_side_exactINtNtB4_5utils12OffsetLookupmEB1d_INtNtB4_7compact7CompactB1d_B1d_INtNtB4_7replace7ReplaceNtNtB4_7capture7CaptureEEECskXhPDodhyTq_6mdtest.exit unwind label %bb.fu, !noalias !1499

bb.fu:                                            ; preds = %.loopexit242.i123
  %i.ti = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCskXhPDodhyTq_6mdtest(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.b)
          to label %common.resume unwind label %bb.fv, !noalias !1499

bb.fv:                                            ; preds = %bb.fu
  %i.tj = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #13, !noalias !1499
  unreachable

bb.fw:                                            ; preds = %.lr.ph702.split.i
  br i1 %i.ng, label %.loopexit242.i123, label %.lr.ph.i136

.lr.ph.i136:                                      ; preds = %bb.fw
  %i.tk = mul i64 %i.nf, %i.mt                    ; 2 uses
  %i.tl = mul i64 %.sroa.0102.0701.i, %i.mt       ; 2 uses
  %.reass704.i = add i64 %i.nf, %invariant.op703.i ; 3 uses
  %i.tm = icmp ult i64 %.reass704.i, %i.w
  %i.tn = getelementptr inbounds nuw [4 x i8], ptr %i.y, i64 %.reass704.i
  %.fr.i137 = freeze i1 %i.tm
  br i1 %.fr.i137, label %.lr.ph.split.us.i140, label %.lr.ph.split.i138

.lr.ph.split.us.i140:                             ; preds = %.lr.ph.i136, %bb.gh
  %.sroa.0105.0650.us.i141 = phi i64 [ %i.to, %bb.gh ], [ %i.ei, %.lr.ph.i136 ] ; 3 uses
  %i.to = add i64 %.sroa.0105.0650.us.i141, -1    ; 6 uses
  %i.tp = and i64 %i.to, 1023
  %i.tq = icmp eq i64 %i.tp, 0
  br i1 %i.tq, label %bb.fx, label %bb.fz

bb.fx:                                            ; preds = %.lr.ph.split.us.i140
  %i.tr = invoke noundef zeroext i1 @_RNvNtCsiqiOkcJdymw_7similar16deadline_support17deadline_exceeded(i64 %9, i32 noundef range(i32 -1, 1000000000) %10)
          to label %bb.fy unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i86.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !1499

bb.fy:                                            ; preds = %bb.fx
  br i1 %i.tr, label %.loopexit242.i123, label %bb.fz

bb.fz:                                            ; preds = %bb.fy, %.lr.ph.split.us.i140
  %.reass.us.i142 = add i64 %i.to, %invariant.op.i90 ; 3 uses
end_hunk_11
