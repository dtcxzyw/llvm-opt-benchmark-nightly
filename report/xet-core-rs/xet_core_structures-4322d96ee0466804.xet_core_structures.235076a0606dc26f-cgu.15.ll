Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/xet-core-rs/original/xet_core_structures-4322d96ee0466804.xet_core_structures.235076a0606dc26f-cgu.15?download=true
inline.NumInlined: 267
inline.NumDeleted: 115
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumRuntimeUnrolled: 8
loop-unroll.NumUnrolled: 10
begin_hunk_0_@_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCs31YAwBA1AlL_19xet_core_structures10merklehash19merkle_hash_subtree15CHRMergeBuffersEBH_:bb.a
  unreachable

.body19:                                          ; preds = %bb.u, %bb.r, %.body15
  %.pn6 = phi { ptr, i32 } [ %.pn4, %.body15 ], [ %i.x, %bb.u ], [ %i.u, %bb.r ]
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 120
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecTNtNtNtCs31YAwBA1AlL_19xet_core_structures10merklehash9data_hash8DataHashyEEEB1f_(ptr noalias nofree noundef align 8 dereferenceable(24) %i.w) #17
          to label %common.resume unwind label %bb.x

bb.u:                                             ; preds = %bb.s
  %i.x = landingpad { ptr, i32 }
          cleanup
  br label %.body19

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecTNtNtNtCs31YAwBA1AlL_19xet_core_structures10merklehash9data_hash8DataHashyEEEB1f_.exit21: ; preds = %bb.s
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 120 ; 3 uses
  invoke void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecTNtNtNtCs31YAwBA1AlL_19xet_core_structures10merklehash9data_hash8DataHashyEENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropBM_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.y)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecTNtNtNtCs31YAwBA1AlL_19xet_core_structures10merklehash9data_hash8DataHashyEEEB1f_.exit23 unwind label %bb.v

bb.v:                                             ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecTNtNtNtCs31YAwBA1AlL_19xet_core_structures10merklehash9data_hash8DataHashyEEEB1f_.exit21
  %i.z = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecTNtNtNtCs31YAwBA1AlL_19xet_core_structures10merklehash9data_hash8DataHashyEENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropBT_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.y)
          to label %common.resume unwind label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.aa = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #16
  unreachable

common.resume:                                    ; preds = %.body19, %bb.v
  %common.resume.op = phi { ptr, i32 } [ %i.z, %bb.v ], [ %.pn6, %.body19 ]
  resume { ptr, i32 } %common.resume.op

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecTNtNtNtCs31YAwBA1AlL_19xet_core_structures10merklehash9data_hash8DataHashyEEEB1f_.exit23: ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecTNtNtNtCs31YAwBA1AlL_19xet_core_structures10merklehash9data_hash8DataHashyEEEB1f_.exit21
  tail call void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecTNtNtNtCs31YAwBA1AlL_19xet_core_structures10merklehash9data_hash8DataHashyEENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropBT_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.y)
  ret void

bb.x:                                             ; preds = %.body19, %.body15, %.body12, %.body9, %.body
  %i.ab = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #16
  unreachable
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCs31YAwBA1AlL_19xet_core_structures10merklehash19merkle_hash_subtree17MerkleHashSubtreeEBH_(ptr noalias nofree noundef nonnull align 8 dereferenceable(104) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  invoke void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecTNtNtNtCs31YAwBA1AlL_19xet_core_structures10merklehash9data_hash8DataHashyEENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropBM_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0)
          to label %bb.c unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecTNtNtNtCs31YAwBA1AlL_19xet_core_structures10merklehash9data_hash8DataHashyEENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropBT_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0)
          to label %.body unwind label %bb.d

bb.c:                                             ; preds = %bb.a
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecTNtNtNtCs31YAwBA1AlL_19xet_core_structures10merklehash9data_hash8DataHashyEENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropBT_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecTNtNtNtCs31YAwBA1AlL_19xet_core_structures10merklehash9data_hash8DataHashyEEEB1f_.exit unwind label %bb.e

bb.d:                                             ; preds = %bb.b
  %i.b = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #16
  unreachable

bb.e:                                             ; preds = %bb.c
  %i.c = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %bb.b, %bb.e
  %eh.lpad-body = phi { ptr, i32 } [ %i.c, %bb.e ], [ %i.a, %bb.b ]
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 24
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecTjjEEECs31YAwBA1AlL_19xet_core_structures(ptr noalias nofree noundef align 8 dereferenceable(24) %i.d) #17
          to label %.body4 unwind label %bb.p

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecTNtNtNtCs31YAwBA1AlL_19xet_core_structures10merklehash9data_hash8DataHashyEEEB1f_.exit: ; preds = %bb.c
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  invoke void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecTjjEENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs31YAwBA1AlL_19xet_core_structures(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.e)
          to label %bb.g unwind label %bb.f

bb.f:                                             ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecTNtNtNtCs31YAwBA1AlL_19xet_core_structures10merklehash9data_hash8DataHashyEEEB1f_.exit
  %i.f = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecTjjEENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs31YAwBA1AlL_19xet_core_structures(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.e)
          to label %.body4 unwind label %bb.h

bb.g:                                             ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecTNtNtNtCs31YAwBA1AlL_19xet_core_structures10merklehash9data_hash8DataHashyEEEB1f_.exit
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecTjjEENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs31YAwBA1AlL_19xet_core_structures(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.e)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecTjjEEECs31YAwBA1AlL_19xet_core_structures.exit unwind label %bb.i

bb.h:                                             ; preds = %bb.f
  %i.g = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #16
  unreachable

.body4:                                           ; preds = %bb.i, %bb.f, %.body
  %.pn = phi { ptr, i32 } [ %eh.lpad-body, %.body ], [ %i.i, %bb.i ], [ %i.f, %bb.f ]
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 48
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecjEECs31YAwBA1AlL_19xet_core_structures(ptr noalias nofree noundef align 8 dereferenceable(24) %i.h) #17
          to label %.body6 unwind label %bb.p

bb.i:                                             ; preds = %bb.g
  %i.i = landingpad { ptr, i32 }
          cleanup
  br label %.body4

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecTjjEEECs31YAwBA1AlL_19xet_core_structures.exit: ; preds = %bb.g
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 3 uses
  invoke void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecjENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs31YAwBA1AlL_19xet_core_structures(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.j)
          to label %bb.k unwind label %bb.j

bb.j:                                             ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecTjjEEECs31YAwBA1AlL_19xet_core_structures.exit
  %i.k = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecjENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs31YAwBA1AlL_19xet_core_structures(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.j)
          to label %.body6 unwind label %bb.l

bb.k:                                             ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecTjjEEECs31YAwBA1AlL_19xet_core_structures.exit
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecjENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs31YAwBA1AlL_19xet_core_structures(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.j)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecjEECs31YAwBA1AlL_19xet_core_structures.exit unwind label %bb.m

bb.l:                                             ; preds = %bb.j
  %i.l = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #16
  unreachable

.body6:                                           ; preds = %bb.m, %bb.j, %.body4
  %.pn2 = phi { ptr, i32 } [ %.pn, %.body4 ], [ %i.n, %bb.m ], [ %i.k, %bb.j ]
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 72
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecjEECs31YAwBA1AlL_19xet_core_structures(ptr noalias nofree noundef align 8 dereferenceable(24) %i.m) #17
          to label %common.resume unwind label %bb.p

bb.m:                                             ; preds = %bb.k
  %i.n = landingpad { ptr, i32 }
          cleanup
  br label %.body6

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecjEECs31YAwBA1AlL_19xet_core_structures.exit: ; preds = %bb.k
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 3 uses
  invoke void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecjENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs31YAwBA1AlL_19xet_core_structures(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.o)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecjEECs31YAwBA1AlL_19xet_core_structures.exit9 unwind label %bb.n

bb.n:                                             ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecjEECs31YAwBA1AlL_19xet_core_structures.exit
  %i.p = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecjENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs31YAwBA1AlL_19xet_core_structures(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.o)
          to label %common.resume unwind label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.q = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #16
  unreachable

common.resume:                                    ; preds = %.body6, %bb.n
  %common.resume.op = phi { ptr, i32 } [ %i.p, %bb.n ], [ %.pn2, %.body6 ]
  resume { ptr, i32 } %common.resume.op

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecjEECs31YAwBA1AlL_19xet_core_structures.exit9: ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecjEECs31YAwBA1AlL_19xet_core_structures.exit
  tail call void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecjENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs31YAwBA1AlL_19xet_core_structures(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.o)
  ret void

bb.p:                                             ; preds = %.body6, %.body4, %.body
  %i.r = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #16
  unreachable
}

; Function Attrs: noinline nonlazybind uwtable
define void @_RINvNtNtNtCskKLDkoKarTP_4core5slice4sort8unstable7ipnsortTRyRTmmEENCINvMB6_SBT_20sort_unstable_by_keyBU_NCINvMs2_NtNtCs31YAwBA1AlL_19xet_core_structures14metadata_shard12shard_formatNtB1N_12MDBShardInfo26convert_and_save_xorb_infoINtNtCsexYYUdYSQU6_5alloc3vec3VechEE0E0EB1R_(ptr noalias nofree noundef nonnull align 8 %0, i64 noundef range(i64 0, 576460752303423488) %1, ptr noalias nofree noundef align 8 dereferenceable(8) %2) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = icmp samesign ult i64 %1, 2
  br i1 %i.a, label %_RNvMNtCskKLDkoKarTP_4core5sliceSTRyRTmmEE7reverseCs31YAwBA1AlL_19xet_core_structures.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.val5 = load ptr, ptr %i.b, align 8, !nonnull !4, !align !5, !noundef !4
  %.val6 = load ptr, ptr %0, align 8, !nonnull !4, !align !5, !noundef !4
  tail call void @llvm.experimental.noalias.scope.decl(metadata !28)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !29)
  %i.c = load i64, ptr %.val5, align 8, !alias.scope !28, !noalias !29, !noundef !4 ; 3 uses
  %i.d = load i64, ptr %.val6, align 8, !alias.scope !29, !noalias !28, !noundef !4
  %i.e = icmp ult i64 %i.c, %i.d                  ; 2 uses
  %.not21 = icmp eq i64 %1, 2                     ; 2 uses
  br i1 %i.e, label %.preheader, label %.preheader11

.preheader11:                                     ; preds = %bb.b
  br i1 %.not21, label %_RINvNtNtNtCskKLDkoKarTP_4core5slice4sort6shared17find_existing_runTRyRTmmEENCINvMB6_SB12_20sort_unstable_by_keyB13_NCINvMs2_NtNtCs31YAwBA1AlL_19xet_core_structures14metadata_shard12shard_formatNtB1Y_12MDBShardInfo26convert_and_save_xorb_infoINtNtCsexYYUdYSQU6_5alloc3vec3VechEE0E0EB22_.exit, label %.lr.ph

.preheader:                                       ; preds = %bb.b
  br i1 %.not21, label %_RINvNtNtNtCskKLDkoKarTP_4core5slice4sort6shared17find_existing_runTRyRTmmEENCINvMB6_SB12_20sort_unstable_by_keyB13_NCINvMs2_NtNtCs31YAwBA1AlL_19xet_core_structures14metadata_shard12shard_formatNtB1Y_12MDBShardInfo26convert_and_save_xorb_infoINtNtCsexYYUdYSQU6_5alloc3vec3VechEE0E0EB22_.exit, label %.lr.ph17

.lr.ph:                                           ; preds = %.preheader11, %bb.c
  %i.f = phi i64 [ %i.h, %bb.c ], [ %i.c, %.preheader11 ]
  %.sroa.01.0.i13 = phi i64 [ %i.j, %bb.c ], [ 2, %.preheader11 ] ; 3 uses
  %i.g = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %.sroa.01.0.i13
  %.val3 = load ptr, ptr %i.g, align 8, !nonnull !4, !align !5, !noundef !4
  %i.h = load i64, ptr %.val3, align 8, !alias.scope !30, !noalias !31, !noundef !4 ; 2 uses
  %i.i = icmp ult i64 %i.h, %i.f
  br i1 %i.i, label %_RINvNtNtNtCskKLDkoKarTP_4core5slice4sort6shared17find_existing_runTRyRTmmEENCINvMB6_SB12_20sort_unstable_by_keyB13_NCINvMs2_NtNtCs31YAwBA1AlL_19xet_core_structures14metadata_shard12shard_formatNtB1Y_12MDBShardInfo26convert_and_save_xorb_infoINtNtCsexYYUdYSQU6_5alloc3vec3VechEE0E0EB22_.exit, label %bb.c

bb.c:                                             ; preds = %.lr.ph
  %i.j = add nuw nsw i64 %.sroa.01.0.i13, 1       ; 2 uses
  %exitcond.not = icmp eq i64 %i.j, %1
  br i1 %exitcond.not, label %_RINvNtNtNtCskKLDkoKarTP_4core5slice4sort6shared17find_existing_runTRyRTmmEENCINvMB6_SB12_20sort_unstable_by_keyB13_NCINvMs2_NtNtCs31YAwBA1AlL_19xet_core_structures14metadata_shard12shard_formatNtB1Y_12MDBShardInfo26convert_and_save_xorb_infoINtNtCsexYYUdYSQU6_5alloc3vec3VechEE0E0EB22_.exit.thread, label %.lr.ph

.lr.ph17:                                         ; preds = %.preheader, %bb.d
  %i.k = phi i64 [ %i.m, %bb.d ], [ %i.c, %.preheader ]
  %.sroa.01.1.i16 = phi i64 [ %i.o, %bb.d ], [ 2, %.preheader ] ; 3 uses
  %i.l = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %.sroa.01.1.i16
  %.val = load ptr, ptr %i.l, align 8, !nonnull !4, !align !5, !noundef !4
  %i.m = load i64, ptr %.val, align 8, !alias.scope !32, !noalias !33, !noundef !4 ; 2 uses
  %i.n = icmp ult i64 %i.m, %i.k
  br i1 %i.n, label %bb.d, label %_RINvNtNtNtCskKLDkoKarTP_4core5slice4sort6shared17find_existing_runTRyRTmmEENCINvMB6_SB12_20sort_unstable_by_keyB13_NCINvMs2_NtNtCs31YAwBA1AlL_19xet_core_structures14metadata_shard12shard_formatNtB1Y_12MDBShardInfo26convert_and_save_xorb_infoINtNtCsexYYUdYSQU6_5alloc3vec3VechEE0E0EB22_.exit

bb.d:                                             ; preds = %.lr.ph17
  %i.o = add nuw nsw i64 %.sroa.01.1.i16, 1       ; 2 uses
  %exitcond24.not = icmp eq i64 %i.o, %1
  br i1 %exitcond24.not, label %_RINvNtNtNtCskKLDkoKarTP_4core5slice4sort6shared17find_existing_runTRyRTmmEENCINvMB6_SB12_20sort_unstable_by_keyB13_NCINvMs2_NtNtCs31YAwBA1AlL_19xet_core_structures14metadata_shard12shard_formatNtB1Y_12MDBShardInfo26convert_and_save_xorb_infoINtNtCsexYYUdYSQU6_5alloc3vec3VechEE0E0EB22_.exit.thread, label %.lr.ph17

_RINvNtNtNtCskKLDkoKarTP_4core5slice4sort6shared17find_existing_runTRyRTmmEENCINvMB6_SB12_20sort_unstable_by_keyB13_NCINvMs2_NtNtCs31YAwBA1AlL_19xet_core_structures14metadata_shard12shard_formatNtB1Y_12MDBShardInfo26convert_and_save_xorb_infoINtNtCsexYYUdYSQU6_5alloc3vec3VechEE0E0EB22_.exit: ; preds = %.lr.ph, %.lr.ph17, %.preheader11, %.preheader
  %.sroa.0.0.i = phi i64 [ 2, %.preheader11 ], [ 2, %.preheader ], [ %.sroa.01.1.i16, %.lr.ph17 ], [ %.sroa.01.0.i13, %.lr.ph ] ; 2 uses
  %i.p = icmp samesign ule i64 %.sroa.0.0.i, %1
  tail call void @llvm.assume(i1 %i.p)
  %i.q = icmp eq i64 %.sroa.0.0.i, %1
  br i1 %i.q, label %_RINvNtNtNtCskKLDkoKarTP_4core5slice4sort6shared17find_existing_runTRyRTmmEENCINvMB6_SB12_20sort_unstable_by_keyB13_NCINvMs2_NtNtCs31YAwBA1AlL_19xet_core_structures14metadata_shard12shard_formatNtB1Y_12MDBShardInfo26convert_and_save_xorb_infoINtNtCsexYYUdYSQU6_5alloc3vec3VechEE0E0EB22_.exit.thread, label %bb.e

_RINvNtNtNtCskKLDkoKarTP_4core5slice4sort6shared17find_existing_runTRyRTmmEENCINvMB6_SB12_20sort_unstable_by_keyB13_NCINvMs2_NtNtCs31YAwBA1AlL_19xet_core_structures14metadata_shard12shard_formatNtB1Y_12MDBShardInfo26convert_and_save_xorb_infoINtNtCsexYYUdYSQU6_5alloc3vec3VechEE0E0EB22_.exit.thread: ; preds = %bb.c, %bb.d, %_RINvNtNtNtCskKLDkoKarTP_4core5slice4sort6shared17find_existing_runTRyRTmmEENCINvMB6_SB12_20sort_unstable_by_keyB13_NCINvMs2_NtNtCs31YAwBA1AlL_19xet_core_structures14metadata_shard12shard_formatNtB1Y_12MDBShardInfo26convert_and_save_xorb_infoINtNtCsexYYUdYSQU6_5alloc3vec3VechEE0E0EB22_.exit
  br i1 %i.e, label %_RNvMNtCskKLDkoKarTP_4core5sliceSTRyRTmmEE12split_at_mutCs31YAwBA1AlL_19xet_core_structures.exit11.preheader.i.i, label %_RNvMNtCskKLDkoKarTP_4core5sliceSTRyRTmmEE7reverseCs31YAwBA1AlL_19xet_core_structures.exit

bb.e:                                             ; preds = %_RINvNtNtNtCskKLDkoKarTP_4core5slice4sort6shared17find_existing_runTRyRTmmEENCINvMB6_SB12_20sort_unstable_by_keyB13_NCINvMs2_NtNtCs31YAwBA1AlL_19xet_core_structures14metadata_shard12shard_formatNtB1Y_12MDBShardInfo26convert_and_save_xorb_infoINtNtCsexYYUdYSQU6_5alloc3vec3VechEE0E0EB22_.exit
  %i.r = or i64 %1, 1
  %i.s = tail call range(i64 5, 64) i64 @llvm.ctlz.i64(i64 %i.r, i1 true)
  %i.t = trunc nuw nsw i64 %i.s to i32
  %i.u = shl nuw nsw i32 %i.t, 1
  %i.v = xor i32 %i.u, 126
  tail call void @_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort8unstable9quicksort9quicksortTRyRTmmEENCINvMB8_SB17_20sort_unstable_by_keyB18_NCINvMs2_NtNtCs31YAwBA1AlL_19xet_core_structures14metadata_shard12shard_formatNtB23_12MDBShardInfo26convert_and_save_xorb_infoINtNtCsexYYUdYSQU6_5alloc3vec3VechEE0E0EB27_(ptr noalias nofree noundef nonnull align 8 %0, i64 noundef %1, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(16) null, i32 noundef %i.v, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %2)
  br label %_RNvMNtCskKLDkoKarTP_4core5sliceSTRyRTmmEE7reverseCs31YAwBA1AlL_19xet_core_structures.exit

_RNvMNtCskKLDkoKarTP_4core5sliceSTRyRTmmEE7reverseCs31YAwBA1AlL_19xet_core_structures.exit.loopexit.unr-lcssa: ; preds = %_RNvMNtCskKLDkoKarTP_4core5sliceSTRyRTmmEE12split_at_mutCs31YAwBA1AlL_19xet_core_structures.exit11.i.i
  %i.w = and i64 %1, 2
  %lcmp.mod.not = icmp eq i64 %i.w, 0
  br i1 %lcmp.mod.not, label %_RNvMNtCskKLDkoKarTP_4core5sliceSTRyRTmmEE7reverseCs31YAwBA1AlL_19xet_core_structures.exit, label %_RNvMNtCskKLDkoKarTP_4core5sliceSTRyRTmmEE12split_at_mutCs31YAwBA1AlL_19xet_core_structures.exit11.i.i.epil.preheader

_RNvMNtCskKLDkoKarTP_4core5sliceSTRyRTmmEE12split_at_mutCs31YAwBA1AlL_19xet_core_structures.exit11.i.i.epil.preheader: ; preds = %_RNvMNtCskKLDkoKarTP_4core5sliceSTRyRTmmEE7reverseCs31YAwBA1AlL_19xet_core_structures.exit.loopexit.unr-lcssa, %_RNvMNtCskKLDkoKarTP_4core5sliceSTRyRTmmEE12split_at_mutCs31YAwBA1AlL_19xet_core_structures.exit11.preheader.i.i
  %.sroa.0.016.i.i.epil.init = phi i64 [ 0, %_RNvMNtCskKLDkoKarTP_4core5sliceSTRyRTmmEE12split_at_mutCs31YAwBA1AlL_19xet_core_structures.exit11.preheader.i.i ], [ %i.an, %_RNvMNtCskKLDkoKarTP_4core5sliceSTRyRTmmEE7reverseCs31YAwBA1AlL_19xet_core_structures.exit.loopexit.unr-lcssa ] ; 2 uses
  %lcmp.mod47 = trunc i64 %i.ab to i1
  tail call void @llvm.assume(i1 %lcmp.mod47)
  %i.x = xor i64 %.sroa.0.016.i.i.epil.init, -1
  %i.y = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %.sroa.0.016.i.i.epil.init ; 2 uses
  %i.z = getelementptr [16 x i8], ptr %i.ac, i64 %i.x ; 2 uses
  %i.aa = load <2 x ptr>, ptr %i.y, align 8, !alias.scope !34, !noalias !35
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.y, ptr noundef nonnull align 8 dereferenceable(16) %i.z, i64 16, i1 false), !alias.scope !36
  store <2 x ptr> %i.aa, ptr %i.z, align 8, !alias.scope !37, !noalias !38
  br label %_RNvMNtCskKLDkoKarTP_4core5sliceSTRyRTmmEE7reverseCs31YAwBA1AlL_19xet_core_structures.exit

_RNvMNtCskKLDkoKarTP_4core5sliceSTRyRTmmEE7reverseCs31YAwBA1AlL_19xet_core_structures.exit: ; preds = %_RNvMNtCskKLDkoKarTP_4core5sliceSTRyRTmmEE12split_at_mutCs31YAwBA1AlL_19xet_core_structures.exit11.i.i.epil.preheader, %_RNvMNtCskKLDkoKarTP_4core5sliceSTRyRTmmEE7reverseCs31YAwBA1AlL_19xet_core_structures.exit.loopexit.unr-lcssa, %bb.a, %_RINvNtNtNtCskKLDkoKarTP_4core5slice4sort6shared17find_existing_runTRyRTmmEENCINvMB6_SB12_20sort_unstable_by_keyB13_NCINvMs2_NtNtCs31YAwBA1AlL_19xet_core_structures14metadata_shard12shard_formatNtB1Y_12MDBShardInfo26convert_and_save_xorb_infoINtNtCsexYYUdYSQU6_5alloc3vec3VechEE0E0EB22_.exit.thread, %bb.e
  ret void

_RNvMNtCskKLDkoKarTP_4core5sliceSTRyRTmmEE12split_at_mutCs31YAwBA1AlL_19xet_core_structures.exit11.preheader.i.i: ; preds = %_RINvNtNtNtCskKLDkoKarTP_4core5slice4sort6shared17find_existing_runTRyRTmmEENCINvMB6_SB12_20sort_unstable_by_keyB13_NCINvMs2_NtNtCs31YAwBA1AlL_19xet_core_structures14metadata_shard12shard_formatNtB1Y_12MDBShardInfo26convert_and_save_xorb_infoINtNtCsexYYUdYSQU6_5alloc3vec3VechEE0E0EB22_.exit.thread
  %i.ab = lshr i64 %1, 1                          ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !38)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !35)
  %i.ac = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %1 ; 3 uses
  %i.ad = icmp eq i64 %i.ab, 1
  br i1 %i.ad, label %_RNvMNtCskKLDkoKarTP_4core5sliceSTRyRTmmEE12split_at_mutCs31YAwBA1AlL_19xet_core_structures.exit11.i.i.epil.preheader, label %_RNvMNtCskKLDkoKarTP_4core5sliceSTRyRTmmEE12split_at_mutCs31YAwBA1AlL_19xet_core_structures.exit11.preheader.i.i.new

_RNvMNtCskKLDkoKarTP_4core5sliceSTRyRTmmEE12split_at_mutCs31YAwBA1AlL_19xet_core_structures.exit11.preheader.i.i.new: ; preds = %_RNvMNtCskKLDkoKarTP_4core5sliceSTRyRTmmEE12split_at_mutCs31YAwBA1AlL_19xet_core_structures.exit11.preheader.i.i
  %unroll_iter = and i64 %i.ab, 288230376151711742
  br label %_RNvMNtCskKLDkoKarTP_4core5sliceSTRyRTmmEE12split_at_mutCs31YAwBA1AlL_19xet_core_structures.exit11.i.i

_RNvMNtCskKLDkoKarTP_4core5sliceSTRyRTmmEE12split_at_mutCs31YAwBA1AlL_19xet_core_structures.exit11.i.i: ; preds = %_RNvMNtCskKLDkoKarTP_4core5sliceSTRyRTmmEE12split_at_mutCs31YAwBA1AlL_19xet_core_structures.exit11.i.i, %_RNvMNtCskKLDkoKarTP_4core5sliceSTRyRTmmEE12split_at_mutCs31YAwBA1AlL_19xet_core_structures.exit11.preheader.i.i.new
  %.sroa.0.016.i.i = phi i64 [ 0, %_RNvMNtCskKLDkoKarTP_4core5sliceSTRyRTmmEE12split_at_mutCs31YAwBA1AlL_19xet_core_structures.exit11.preheader.i.i.new ], [ %i.an, %_RNvMNtCskKLDkoKarTP_4core5sliceSTRyRTmmEE12split_at_mutCs31YAwBA1AlL_19xet_core_structures.exit11.i.i ] ; 5 uses
  %niter = phi i64 [ 0, %_RNvMNtCskKLDkoKarTP_4core5sliceSTRyRTmmEE12split_at_mutCs31YAwBA1AlL_19xet_core_structures.exit11.preheader.i.i.new ], [ %niter.next.1, %_RNvMNtCskKLDkoKarTP_4core5sliceSTRyRTmmEE12split_at_mutCs31YAwBA1AlL_19xet_core_structures.exit11.i.i ]
  %i.ae = xor i64 %.sroa.0.016.i.i, -1
  %i.af = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %.sroa.0.016.i.i ; 2 uses
  %i.ag = getelementptr [16 x i8], ptr %i.ac, i64 %i.ae ; 2 uses
  %i.ah = load <2 x ptr>, ptr %i.af, align 8, !alias.scope !34, !noalias !35
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.af, ptr noundef nonnull align 8 dereferenceable(16) %i.ag, i64 16, i1 false), !alias.scope !36
  store <2 x ptr> %i.ah, ptr %i.ag, align 8, !alias.scope !37, !noalias !38
  %i.ai = xor i64 %.sroa.0.016.i.i, -2
  %i.aj = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %.sroa.0.016.i.i
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 16 ; 2 uses
  %i.al = getelementptr [16 x i8], ptr %i.ac, i64 %i.ai ; 2 uses
  %i.am = load <2 x ptr>, ptr %i.ak, align 8, !alias.scope !34, !noalias !35
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ak, ptr noundef nonnull align 8 dereferenceable(16) %i.al, i64 16, i1 false), !alias.scope !36
  store <2 x ptr> %i.am, ptr %i.al, align 8, !alias.scope !37, !noalias !38
  %i.an = add nuw nsw i64 %.sroa.0.016.i.i, 2     ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %_RNvMNtCskKLDkoKarTP_4core5sliceSTRyRTmmEE7reverseCs31YAwBA1AlL_19xet_core_structures.exit.loopexit.unr-lcssa, label %_RNvMNtCskKLDkoKarTP_4core5sliceSTRyRTmmEE12split_at_mutCs31YAwBA1AlL_19xet_core_structures.exit11.i.i
}

; Function Attrs: noinline nonlazybind uwtable
define void @_RINvNtNtNtCskKLDkoKarTP_4core5slice4sort8unstable7ipnsortTRyRTmmEENCINvMB6_SBT_20sort_unstable_by_keyBU_NCINvMs2_NtNtCs31YAwBA1AlL_19xet_core_structures14metadata_shard12shard_formatNtB1N_12MDBShardInfo26convert_and_save_xorb_infoINtNtNtNtCsexYYUdYSQU6_5alloc2io8buffered9bufwriter9BufWriterQINtNtNtB1R_10merklehash9data_hash11HashedWriteNtNtCsG258MDvU3F_3std2fs4FileEEE0E0EB1R_(ptr noalias nofree noundef nonnull align 8 %0, i64 noundef range(i64 0, 576460752303423488) %1, ptr noalias nofree noundef align 8 dereferenceable(8) %2) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = icmp samesign ult i64 %1, 2
  br i1 %i.a, label %_RNvMNtCskKLDkoKarTP_4core5sliceSTRyRTmmEE7reverseCs31YAwBA1AlL_19xet_core_structures.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.val5 = load ptr, ptr %i.b, align 8, !nonnull !4, !align !5, !noundef !4
  %.val6 = load ptr, ptr %0, align 8, !nonnull !4, !align !5, !noundef !4
  tail call void @llvm.experimental.noalias.scope.decl(metadata !53)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !54)
  %i.c = load i64, ptr %.val5, align 8, !alias.scope !53, !noalias !54, !noundef !4 ; 3 uses
  %i.d = load i64, ptr %.val6, align 8, !alias.scope !54, !noalias !53, !noundef !4
  %i.e = icmp ult i64 %i.c, %i.d                  ; 2 uses
  %.not21 = icmp eq i64 %1, 2                     ; 2 uses
  br i1 %i.e, label %.preheader, label %.preheader11

.preheader11:                                     ; preds = %bb.b
  br i1 %.not21, label %_RINvNtNtNtCskKLDkoKarTP_4core5slice4sort6shared17find_existing_runTRyRTmmEENCINvMB6_SB12_20sort_unstable_by_keyB13_NCINvMs2_NtNtCs31YAwBA1AlL_19xet_core_structures14metadata_shard12shard_formatNtB1Y_12MDBShardInfo26convert_and_save_xorb_infoINtNtNtNtCsexYYUdYSQU6_5alloc2io8buffered9bufwriter9BufWriterQINtNtNtB22_10merklehash9data_hash11HashedWriteNtNtCsG258MDvU3F_3std2fs4FileEEE0E0EB22_.exit, label %.lr.ph

.preheader:                                       ; preds = %bb.b
  br i1 %.not21, label %_RINvNtNtNtCskKLDkoKarTP_4core5slice4sort6shared17find_existing_runTRyRTmmEENCINvMB6_SB12_20sort_unstable_by_keyB13_NCINvMs2_NtNtCs31YAwBA1AlL_19xet_core_structures14metadata_shard12shard_formatNtB1Y_12MDBShardInfo26convert_and_save_xorb_infoINtNtNtNtCsexYYUdYSQU6_5alloc2io8buffered9bufwriter9BufWriterQINtNtNtB22_10merklehash9data_hash11HashedWriteNtNtCsG258MDvU3F_3std2fs4FileEEE0E0EB22_.exit, label %.lr.ph17

.lr.ph:                                           ; preds = %.preheader11, %bb.c
  %i.f = phi i64 [ %i.h, %bb.c ], [ %i.c, %.preheader11 ]
  %.sroa.01.0.i13 = phi i64 [ %i.j, %bb.c ], [ 2, %.preheader11 ] ; 3 uses
  %i.g = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %.sroa.01.0.i13
  %.val3 = load ptr, ptr %i.g, align 8, !nonnull !4, !align !5, !noundef !4
  %i.h = load i64, ptr %.val3, align 8, !alias.scope !55, !noalias !56, !noundef !4 ; 2 uses
  %i.i = icmp ult i64 %i.h, %i.f
  br i1 %i.i, label %_RINvNtNtNtCskKLDkoKarTP_4core5slice4sort6shared17find_existing_runTRyRTmmEENCINvMB6_SB12_20sort_unstable_by_keyB13_NCINvMs2_NtNtCs31YAwBA1AlL_19xet_core_structures14metadata_shard12shard_formatNtB1Y_12MDBShardInfo26convert_and_save_xorb_infoINtNtNtNtCsexYYUdYSQU6_5alloc2io8buffered9bufwriter9BufWriterQINtNtNtB22_10merklehash9data_hash11HashedWriteNtNtCsG258MDvU3F_3std2fs4FileEEE0E0EB22_.exit, label %bb.c

bb.c:                                             ; preds = %.lr.ph
  %i.j = add nuw nsw i64 %.sroa.01.0.i13, 1       ; 2 uses
  %exitcond.not = icmp eq i64 %i.j, %1
  br i1 %exitcond.not, label %_RINvNtNtNtCskKLDkoKarTP_4core5slice4sort6shared17find_existing_runTRyRTmmEENCINvMB6_SB12_20sort_unstable_by_keyB13_NCINvMs2_NtNtCs31YAwBA1AlL_19xet_core_structures14metadata_shard12shard_formatNtB1Y_12MDBShardInfo26convert_and_save_xorb_infoINtNtNtNtCsexYYUdYSQU6_5alloc2io8buffered9bufwriter9BufWriterQINtNtNtB22_10merklehash9data_hash11HashedWriteNtNtCsG258MDvU3F_3std2fs4FileEEE0E0EB22_.exit.thread, label %.lr.ph

.lr.ph17:                                         ; preds = %.preheader, %bb.d
  %i.k = phi i64 [ %i.m, %bb.d ], [ %i.c, %.preheader ]
  %.sroa.01.1.i16 = phi i64 [ %i.o, %bb.d ], [ 2, %.preheader ] ; 3 uses
  %i.l = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %.sroa.01.1.i16
  %.val = load ptr, ptr %i.l, align 8, !nonnull !4, !align !5, !noundef !4
  %i.m = load i64, ptr %.val, align 8, !alias.scope !57, !noalias !58, !noundef !4 ; 2 uses
  %i.n = icmp ult i64 %i.m, %i.k
  br i1 %i.n, label %bb.d, label %_RINvNtNtNtCskKLDkoKarTP_4core5slice4sort6shared17find_existing_runTRyRTmmEENCINvMB6_SB12_20sort_unstable_by_keyB13_NCINvMs2_NtNtCs31YAwBA1AlL_19xet_core_structures14metadata_shard12shard_formatNtB1Y_12MDBShardInfo26convert_and_save_xorb_infoINtNtNtNtCsexYYUdYSQU6_5alloc2io8buffered9bufwriter9BufWriterQINtNtNtB22_10merklehash9data_hash11HashedWriteNtNtCsG258MDvU3F_3std2fs4FileEEE0E0EB22_.exit

bb.d:                                             ; preds = %.lr.ph17
  %i.o = add nuw nsw i64 %.sroa.01.1.i16, 1       ; 2 uses
  %exitcond24.not = icmp eq i64 %i.o, %1
  br i1 %exitcond24.not, label %_RINvNtNtNtCskKLDkoKarTP_4core5slice4sort6shared17find_existing_runTRyRTmmEENCINvMB6_SB12_20sort_unstable_by_keyB13_NCINvMs2_NtNtCs31YAwBA1AlL_19xet_core_structures14metadata_shard12shard_formatNtB1Y_12MDBShardInfo26convert_and_save_xorb_infoINtNtNtNtCsexYYUdYSQU6_5alloc2io8buffered9bufwriter9BufWriterQINtNtNtB22_10merklehash9data_hash11HashedWriteNtNtCsG258MDvU3F_3std2fs4FileEEE0E0EB22_.exit.thread, label %.lr.ph17

_RINvNtNtNtCskKLDkoKarTP_4core5slice4sort6shared17find_existing_runTRyRTmmEENCINvMB6_SB12_20sort_unstable_by_keyB13_NCINvMs2_NtNtCs31YAwBA1AlL_19xet_core_structures14metadata_shard12shard_formatNtB1Y_12MDBShardInfo26convert_and_save_xorb_infoINtNtNtNtCsexYYUdYSQU6_5alloc2io8buffered9bufwriter9BufWriterQINtNtNtB22_10merklehash9data_hash11HashedWriteNtNtCsG258MDvU3F_3std2fs4FileEEE0E0EB22_.exit: ; preds = %.lr.ph, %.lr.ph17, %.preheader11, %.preheader
  %.sroa.0.0.i = phi i64 [ 2, %.preheader11 ], [ 2, %.preheader ], [ %.sroa.01.1.i16, %.lr.ph17 ], [ %.sroa.01.0.i13, %.lr.ph ] ; 2 uses
  %i.p = icmp samesign ule i64 %.sroa.0.0.i, %1
  tail call void @llvm.assume(i1 %i.p)
  %i.q = icmp eq i64 %.sroa.0.0.i, %1
  br i1 %i.q, label %_RINvNtNtNtCskKLDkoKarTP_4core5slice4sort6shared17find_existing_runTRyRTmmEENCINvMB6_SB12_20sort_unstable_by_keyB13_NCINvMs2_NtNtCs31YAwBA1AlL_19xet_core_structures14metadata_shard12shard_formatNtB1Y_12MDBShardInfo26convert_and_save_xorb_infoINtNtNtNtCsexYYUdYSQU6_5alloc2io8buffered9bufwriter9BufWriterQINtNtNtB22_10merklehash9data_hash11HashedWriteNtNtCsG258MDvU3F_3std2fs4FileEEE0E0EB22_.exit.thread, label %bb.e

_RINvNtNtNtCskKLDkoKarTP_4core5slice4sort6shared17find_existing_runTRyRTmmEENCINvMB6_SB12_20sort_unstable_by_keyB13_NCINvMs2_NtNtCs31YAwBA1AlL_19xet_core_structures14metadata_shard12shard_formatNtB1Y_12MDBShardInfo26convert_and_save_xorb_infoINtNtNtNtCsexYYUdYSQU6_5alloc2io8buffered9bufwriter9BufWriterQINtNtNtB22_10merklehash9data_hash11HashedWriteNtNtCsG258MDvU3F_3std2fs4FileEEE0E0EB22_.exit.thread: ; preds = %bb.c, %bb.d, %_RINvNtNtNtCskKLDkoKarTP_4core5slice4sort6shared17find_existing_runTRyRTmmEENCINvMB6_SB12_20sort_unstable_by_keyB13_NCINvMs2_NtNtCs31YAwBA1AlL_19xet_core_structures14metadata_shard12shard_formatNtB1Y_12MDBShardInfo26convert_and_save_xorb_infoINtNtNtNtCsexYYUdYSQU6_5alloc2io8buffered9bufwriter9BufWriterQINtNtNtB22_10merklehash9data_hash11HashedWriteNtNtCsG258MDvU3F_3std2fs4FileEEE0E0EB22_.exit
  br i1 %i.e, label %_RNvMNtCskKLDkoKarTP_4core5sliceSTRyRTmmEE12split_at_mutCs31YAwBA1AlL_19xet_core_structures.exit11.preheader.i.i, label %_RNvMNtCskKLDkoKarTP_4core5sliceSTRyRTmmEE7reverseCs31YAwBA1AlL_19xet_core_structures.exit

bb.e:                                             ; preds = %_RINvNtNtNtCskKLDkoKarTP_4core5slice4sort6shared17find_existing_runTRyRTmmEENCINvMB6_SB12_20sort_unstable_by_keyB13_NCINvMs2_NtNtCs31YAwBA1AlL_19xet_core_structures14metadata_shard12shard_formatNtB1Y_12MDBShardInfo26convert_and_save_xorb_infoINtNtNtNtCsexYYUdYSQU6_5alloc2io8buffered9bufwriter9BufWriterQINtNtNtB22_10merklehash9data_hash11HashedWriteNtNtCsG258MDvU3F_3std2fs4FileEEE0E0EB22_.exit
  %i.r = or i64 %1, 1
  %i.s = tail call range(i64 5, 64) i64 @llvm.ctlz.i64(i64 %i.r, i1 true)
  %i.t = trunc nuw nsw i64 %i.s to i32
  %i.u = shl nuw nsw i32 %i.t, 1
  %i.v = xor i32 %i.u, 126
  tail call void @_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort8unstable9quicksort9quicksortTRyRTmmEENCINvMB8_SB17_20sort_unstable_by_keyB18_NCINvMs2_NtNtCs31YAwBA1AlL_19xet_core_structures14metadata_shard12shard_formatNtB23_12MDBShardInfo26convert_and_save_xorb_infoINtNtNtNtCsexYYUdYSQU6_5alloc2io8buffered9bufwriter9BufWriterQINtNtNtB27_10merklehash9data_hash11HashedWriteNtNtCsG258MDvU3F_3std2fs4FileEEE0E0EB27_(ptr noalias nofree noundef nonnull align 8 %0, i64 noundef %1, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(16) null, i32 noundef %i.v, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %2)
  br label %_RNvMNtCskKLDkoKarTP_4core5sliceSTRyRTmmEE7reverseCs31YAwBA1AlL_19xet_core_structures.exit

_RNvMNtCskKLDkoKarTP_4core5sliceSTRyRTmmEE7reverseCs31YAwBA1AlL_19xet_core_structures.exit.loopexit.unr-lcssa: ; preds = %_RNvMNtCskKLDkoKarTP_4core5sliceSTRyRTmmEE12split_at_mutCs31YAwBA1AlL_19xet_core_structures.exit11.i.i
  %i.w = and i64 %1, 2
  %lcmp.mod.not = icmp eq i64 %i.w, 0
  br i1 %lcmp.mod.not, label %_RNvMNtCskKLDkoKarTP_4core5sliceSTRyRTmmEE7reverseCs31YAwBA1AlL_19xet_core_structures.exit, label %_RNvMNtCskKLDkoKarTP_4core5sliceSTRyRTmmEE12split_at_mutCs31YAwBA1AlL_19xet_core_structures.exit11.i.i.epil.preheader

_RNvMNtCskKLDkoKarTP_4core5sliceSTRyRTmmEE12split_at_mutCs31YAwBA1AlL_19xet_core_structures.exit11.i.i.epil.preheader: ; preds = %_RNvMNtCskKLDkoKarTP_4core5sliceSTRyRTmmEE7reverseCs31YAwBA1AlL_19xet_core_structures.exit.loopexit.unr-lcssa, %_RNvMNtCskKLDkoKarTP_4core5sliceSTRyRTmmEE12split_at_mutCs31YAwBA1AlL_19xet_core_structures.exit11.preheader.i.i
  %.sroa.0.016.i.i.epil.init = phi i64 [ 0, %_RNvMNtCskKLDkoKarTP_4core5sliceSTRyRTmmEE12split_at_mutCs31YAwBA1AlL_19xet_core_structures.exit11.preheader.i.i ], [ %i.an, %_RNvMNtCskKLDkoKarTP_4core5sliceSTRyRTmmEE7reverseCs31YAwBA1AlL_19xet_core_structures.exit.loopexit.unr-lcssa ] ; 2 uses
  %lcmp.mod47 = trunc i64 %i.ab to i1
  tail call void @llvm.assume(i1 %lcmp.mod47)
  %i.x = xor i64 %.sroa.0.016.i.i.epil.init, -1
  %i.y = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %.sroa.0.016.i.i.epil.init ; 2 uses
  %i.z = getelementptr [16 x i8], ptr %i.ac, i64 %i.x ; 2 uses
  %i.aa = load <2 x ptr>, ptr %i.y, align 8, !alias.scope !59, !noalias !60
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.y, ptr noundef nonnull align 8 dereferenceable(16) %i.z, i64 16, i1 false), !alias.scope !61
  store <2 x ptr> %i.aa, ptr %i.z, align 8, !alias.scope !62, !noalias !63
  br label %_RNvMNtCskKLDkoKarTP_4core5sliceSTRyRTmmEE7reverseCs31YAwBA1AlL_19xet_core_structures.exit

_RNvMNtCskKLDkoKarTP_4core5sliceSTRyRTmmEE7reverseCs31YAwBA1AlL_19xet_core_structures.exit: ; preds = %_RNvMNtCskKLDkoKarTP_4core5sliceSTRyRTmmEE12split_at_mutCs31YAwBA1AlL_19xet_core_structures.exit11.i.i.epil.preheader, %_RNvMNtCskKLDkoKarTP_4core5sliceSTRyRTmmEE7reverseCs31YAwBA1AlL_19xet_core_structures.exit.loopexit.unr-lcssa, %bb.a, %_RINvNtNtNtCskKLDkoKarTP_4core5slice4sort6shared17find_existing_runTRyRTmmEENCINvMB6_SB12_20sort_unstable_by_keyB13_NCINvMs2_NtNtCs31YAwBA1AlL_19xet_core_structures14metadata_shard12shard_formatNtB1Y_12MDBShardInfo26convert_and_save_xorb_infoINtNtNtNtCsexYYUdYSQU6_5alloc2io8buffered9bufwriter9BufWriterQINtNtNtB22_10merklehash9data_hash11HashedWriteNtNtCsG258MDvU3F_3std2fs4FileEEE0E0EB22_.exit.thread, %bb.e
  ret void

_RNvMNtCskKLDkoKarTP_4core5sliceSTRyRTmmEE12split_at_mutCs31YAwBA1AlL_19xet_core_structures.exit11.preheader.i.i: ; preds = %_RINvNtNtNtCskKLDkoKarTP_4core5slice4sort6shared17find_existing_runTRyRTmmEENCINvMB6_SB12_20sort_unstable_by_keyB13_NCINvMs2_NtNtCs31YAwBA1AlL_19xet_core_structures14metadata_shard12shard_formatNtB1Y_12MDBShardInfo26convert_and_save_xorb_infoINtNtNtNtCsexYYUdYSQU6_5alloc2io8buffered9bufwriter9BufWriterQINtNtNtB22_10merklehash9data_hash11HashedWriteNtNtCsG258MDvU3F_3std2fs4FileEEE0E0EB22_.exit.thread
  %i.ab = lshr i64 %1, 1                          ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !63)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !60)
  %i.ac = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %1 ; 3 uses
  %i.ad = icmp eq i64 %i.ab, 1
  br i1 %i.ad, label %_RNvMNtCskKLDkoKarTP_4core5sliceSTRyRTmmEE12split_at_mutCs31YAwBA1AlL_19xet_core_structures.exit11.i.i.epil.preheader, label %_RNvMNtCskKLDkoKarTP_4core5sliceSTRyRTmmEE12split_at_mutCs31YAwBA1AlL_19xet_core_structures.exit11.preheader.i.i.new

_RNvMNtCskKLDkoKarTP_4core5sliceSTRyRTmmEE12split_at_mutCs31YAwBA1AlL_19xet_core_structures.exit11.preheader.i.i.new: ; preds = %_RNvMNtCskKLDkoKarTP_4core5sliceSTRyRTmmEE12split_at_mutCs31YAwBA1AlL_19xet_core_structures.exit11.preheader.i.i
  %unroll_iter = and i64 %i.ab, 288230376151711742
  br label %_RNvMNtCskKLDkoKarTP_4core5sliceSTRyRTmmEE12split_at_mutCs31YAwBA1AlL_19xet_core_structures.exit11.i.i

_RNvMNtCskKLDkoKarTP_4core5sliceSTRyRTmmEE12split_at_mutCs31YAwBA1AlL_19xet_core_structures.exit11.i.i: ; preds = %_RNvMNtCskKLDkoKarTP_4core5sliceSTRyRTmmEE12split_at_mutCs31YAwBA1AlL_19xet_core_structures.exit11.i.i, %_RNvMNtCskKLDkoKarTP_4core5sliceSTRyRTmmEE12split_at_mutCs31YAwBA1AlL_19xet_core_structures.exit11.preheader.i.i.new
  %.sroa.0.016.i.i = phi i64 [ 0, %_RNvMNtCskKLDkoKarTP_4core5sliceSTRyRTmmEE12split_at_mutCs31YAwBA1AlL_19xet_core_structures.exit11.preheader.i.i.new ], [ %i.an, %_RNvMNtCskKLDkoKarTP_4core5sliceSTRyRTmmEE12split_at_mutCs31YAwBA1AlL_19xet_core_structures.exit11.i.i ] ; 5 uses
  %niter = phi i64 [ 0, %_RNvMNtCskKLDkoKarTP_4core5sliceSTRyRTmmEE12split_at_mutCs31YAwBA1AlL_19xet_core_structures.exit11.preheader.i.i.new ], [ %niter.next.1, %_RNvMNtCskKLDkoKarTP_4core5sliceSTRyRTmmEE12split_at_mutCs31YAwBA1AlL_19xet_core_structures.exit11.i.i ]
  %i.ae = xor i64 %.sroa.0.016.i.i, -1
  %i.af = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %.sroa.0.016.i.i ; 2 uses
  %i.ag = getelementptr [16 x i8], ptr %i.ac, i64 %i.ae ; 2 uses
  %i.ah = load <2 x ptr>, ptr %i.af, align 8, !alias.scope !59, !noalias !60
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.af, ptr noundef nonnull align 8 dereferenceable(16) %i.ag, i64 16, i1 false), !alias.scope !61
  store <2 x ptr> %i.ah, ptr %i.ag, align 8, !alias.scope !62, !noalias !63
  %i.ai = xor i64 %.sroa.0.016.i.i, -2
  %i.aj = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %.sroa.0.016.i.i
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 16 ; 2 uses
  %i.al = getelementptr [16 x i8], ptr %i.ac, i64 %i.ai ; 2 uses
  %i.am = load <2 x ptr>, ptr %i.ak, align 8, !alias.scope !59, !noalias !60
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ak, ptr noundef nonnull align 8 dereferenceable(16) %i.al, i64 16, i1 false), !alias.scope !61
  store <2 x ptr> %i.am, ptr %i.al, align 8, !alias.scope !62, !noalias !63
  %i.an = add nuw nsw i64 %.sroa.0.016.i.i, 2     ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %_RNvMNtCskKLDkoKarTP_4core5sliceSTRyRTmmEE7reverseCs31YAwBA1AlL_19xet_core_structures.exit.loopexit.unr-lcssa, label %_RNvMNtCskKLDkoKarTP_4core5sliceSTRyRTmmEE12split_at_mutCs31YAwBA1AlL_19xet_core_structures.exit11.i.i
}

; Function Attrs: noinline nonlazybind uwtable
define void @_RINvNtNtNtCskKLDkoKarTP_4core5slice4sort8unstable7ipnsortTyTmmEENCINvMB6_SBT_20sort_unstable_by_keyyNCINvNtNtCs31YAwBA1AlL_19xet_core_structures14metadata_shard14set_operations13set_operationINtNtNtNtCsexYYUdYSQU6_5alloc2io8buffered9bufreader9BufReaderNtNtCsG258MDvU3F_3std2fs4FileEINtNtB38_9bufwriter9BufWriterQINtNtNtB1J_10merklehash9data_hash11HashedWriteB42_EEEs2_0E0EB1J_(ptr noalias nofree noundef nonnull align 8 %0, i64 noundef range(i64 0, 576460752303423488) %1, ptr noalias nofree noundef align 8 dereferenceable(8) %2) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = icmp samesign ult i64 %1, 2
  br i1 %i.a, label %_RNvMNtCskKLDkoKarTP_4core5sliceSTyTmmEE7reverseCs31YAwBA1AlL_19xet_core_structures.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.val5 = load i64, ptr %i.b, align 8, !noundef !4 ; 3 uses
  %.val6 = load i64, ptr %0, align 8, !noundef !4
  %i.c = icmp ult i64 %.val5, %.val6              ; 2 uses
  %.not21 = icmp eq i64 %1, 2                     ; 2 uses
  br i1 %i.c, label %.preheader, label %.preheader11

.preheader11:                                     ; preds = %bb.b
  br i1 %.not21, label %_RINvNtNtNtCskKLDkoKarTP_4core5slice4sort6shared17find_existing_runTyTmmEENCINvMB6_SB12_20sort_unstable_by_keyyNCINvNtNtCs31YAwBA1AlL_19xet_core_structures14metadata_shard14set_operations13set_operationINtNtNtNtCsexYYUdYSQU6_5alloc2io8buffered9bufreader9BufReaderNtNtCsG258MDvU3F_3std2fs4FileEINtNtB3i_9bufwriter9BufWriterQINtNtNtB1T_10merklehash9data_hash11HashedWriteB4c_EEEs2_0E0EB1T_.exit, label %.lr.ph

.preheader:                                       ; preds = %bb.b
  br i1 %.not21, label %_RINvNtNtNtCskKLDkoKarTP_4core5slice4sort6shared17find_existing_runTyTmmEENCINvMB6_SB12_20sort_unstable_by_keyyNCINvNtNtCs31YAwBA1AlL_19xet_core_structures14metadata_shard14set_operations13set_operationINtNtNtNtCsexYYUdYSQU6_5alloc2io8buffered9bufreader9BufReaderNtNtCsG258MDvU3F_3std2fs4FileEINtNtB3i_9bufwriter9BufWriterQINtNtNtB1T_10merklehash9data_hash11HashedWriteB4c_EEEs2_0E0EB1T_.exit, label %.lr.ph17

.lr.ph:                                           ; preds = %.preheader11, %bb.c
  %.val4 = phi i64 [ %.val3, %bb.c ], [ %.val5, %.preheader11 ]
  %.sroa.01.0.i13 = phi i64 [ %i.f, %bb.c ], [ 2, %.preheader11 ] ; 3 uses
  %i.d = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %.sroa.01.0.i13
  %.val3 = load i64, ptr %i.d, align 8, !noundef !4 ; 2 uses
  %i.e = icmp ult i64 %.val3, %.val4
  br i1 %i.e, label %_RINvNtNtNtCskKLDkoKarTP_4core5slice4sort6shared17find_existing_runTyTmmEENCINvMB6_SB12_20sort_unstable_by_keyyNCINvNtNtCs31YAwBA1AlL_19xet_core_structures14metadata_shard14set_operations13set_operationINtNtNtNtCsexYYUdYSQU6_5alloc2io8buffered9bufreader9BufReaderNtNtCsG258MDvU3F_3std2fs4FileEINtNtB3i_9bufwriter9BufWriterQINtNtNtB1T_10merklehash9data_hash11HashedWriteB4c_EEEs2_0E0EB1T_.exit, label %bb.c

bb.c:                                             ; preds = %.lr.ph
  %i.f = add nuw nsw i64 %.sroa.01.0.i13, 1       ; 2 uses
  %exitcond.not = icmp eq i64 %i.f, %1
  br i1 %exitcond.not, label %_RINvNtNtNtCskKLDkoKarTP_4core5slice4sort6shared17find_existing_runTyTmmEENCINvMB6_SB12_20sort_unstable_by_keyyNCINvNtNtCs31YAwBA1AlL_19xet_core_structures14metadata_shard14set_operations13set_operationINtNtNtNtCsexYYUdYSQU6_5alloc2io8buffered9bufreader9BufReaderNtNtCsG258MDvU3F_3std2fs4FileEINtNtB3i_9bufwriter9BufWriterQINtNtNtB1T_10merklehash9data_hash11HashedWriteB4c_EEEs2_0E0EB1T_.exit.thread, label %.lr.ph

.lr.ph17:                                         ; preds = %.preheader, %bb.d
  %.val2 = phi i64 [ %.val, %bb.d ], [ %.val5, %.preheader ]
  %.sroa.01.1.i16 = phi i64 [ %i.i, %bb.d ], [ 2, %.preheader ] ; 3 uses
  %i.g = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %.sroa.01.1.i16
  %.val = load i64, ptr %i.g, align 8, !noundef !4 ; 2 uses
  %i.h = icmp ult i64 %.val, %.val2
  br i1 %i.h, label %bb.d, label %_RINvNtNtNtCskKLDkoKarTP_4core5slice4sort6shared17find_existing_runTyTmmEENCINvMB6_SB12_20sort_unstable_by_keyyNCINvNtNtCs31YAwBA1AlL_19xet_core_structures14metadata_shard14set_operations13set_operationINtNtNtNtCsexYYUdYSQU6_5alloc2io8buffered9bufreader9BufReaderNtNtCsG258MDvU3F_3std2fs4FileEINtNtB3i_9bufwriter9BufWriterQINtNtNtB1T_10merklehash9data_hash11HashedWriteB4c_EEEs2_0E0EB1T_.exit

bb.d:                                             ; preds = %.lr.ph17
  %i.i = add nuw nsw i64 %.sroa.01.1.i16, 1       ; 2 uses
  %exitcond24.not = icmp eq i64 %i.i, %1
  br i1 %exitcond24.not, label %_RINvNtNtNtCskKLDkoKarTP_4core5slice4sort6shared17find_existing_runTyTmmEENCINvMB6_SB12_20sort_unstable_by_keyyNCINvNtNtCs31YAwBA1AlL_19xet_core_structures14metadata_shard14set_operations13set_operationINtNtNtNtCsexYYUdYSQU6_5alloc2io8buffered9bufreader9BufReaderNtNtCsG258MDvU3F_3std2fs4FileEINtNtB3i_9bufwriter9BufWriterQINtNtNtB1T_10merklehash9data_hash11HashedWriteB4c_EEEs2_0E0EB1T_.exit.thread, label %.lr.ph17

_RINvNtNtNtCskKLDkoKarTP_4core5slice4sort6shared17find_existing_runTyTmmEENCINvMB6_SB12_20sort_unstable_by_keyyNCINvNtNtCs31YAwBA1AlL_19xet_core_structures14metadata_shard14set_operations13set_operationINtNtNtNtCsexYYUdYSQU6_5alloc2io8buffered9bufreader9BufReaderNtNtCsG258MDvU3F_3std2fs4FileEINtNtB3i_9bufwriter9BufWriterQINtNtNtB1T_10merklehash9data_hash11HashedWriteB4c_EEEs2_0E0EB1T_.exit: ; preds = %.lr.ph, %.lr.ph17, %.preheader11, %.preheader
  %.sroa.0.0.i = phi i64 [ 2, %.preheader11 ], [ 2, %.preheader ], [ %.sroa.01.1.i16, %.lr.ph17 ], [ %.sroa.01.0.i13, %.lr.ph ] ; 2 uses
  %i.j = icmp samesign ule i64 %.sroa.0.0.i, %1
  tail call void @llvm.assume(i1 %i.j)
  %i.k = icmp eq i64 %.sroa.0.0.i, %1
  br i1 %i.k, label %_RINvNtNtNtCskKLDkoKarTP_4core5slice4sort6shared17find_existing_runTyTmmEENCINvMB6_SB12_20sort_unstable_by_keyyNCINvNtNtCs31YAwBA1AlL_19xet_core_structures14metadata_shard14set_operations13set_operationINtNtNtNtCsexYYUdYSQU6_5alloc2io8buffered9bufreader9BufReaderNtNtCsG258MDvU3F_3std2fs4FileEINtNtB3i_9bufwriter9BufWriterQINtNtNtB1T_10merklehash9data_hash11HashedWriteB4c_EEEs2_0E0EB1T_.exit.thread, label %bb.e

_RINvNtNtNtCskKLDkoKarTP_4core5slice4sort6shared17find_existing_runTyTmmEENCINvMB6_SB12_20sort_unstable_by_keyyNCINvNtNtCs31YAwBA1AlL_19xet_core_structures14metadata_shard14set_operations13set_operationINtNtNtNtCsexYYUdYSQU6_5alloc2io8buffered9bufreader9BufReaderNtNtCsG258MDvU3F_3std2fs4FileEINtNtB3i_9bufwriter9BufWriterQINtNtNtB1T_10merklehash9data_hash11HashedWriteB4c_EEEs2_0E0EB1T_.exit.thread: ; preds = %bb.c, %bb.d, %_RINvNtNtNtCskKLDkoKarTP_4core5slice4sort6shared17find_existing_runTyTmmEENCINvMB6_SB12_20sort_unstable_by_keyyNCINvNtNtCs31YAwBA1AlL_19xet_core_structures14metadata_shard14set_operations13set_operationINtNtNtNtCsexYYUdYSQU6_5alloc2io8buffered9bufreader9BufReaderNtNtCsG258MDvU3F_3std2fs4FileEINtNtB3i_9bufwriter9BufWriterQINtNtNtB1T_10merklehash9data_hash11HashedWriteB4c_EEEs2_0E0EB1T_.exit
  br i1 %i.c, label %.lr.ph.preheader.i.i, label %_RNvMNtCskKLDkoKarTP_4core5sliceSTyTmmEE7reverseCs31YAwBA1AlL_19xet_core_structures.exit

bb.e:                                             ; preds = %_RINvNtNtNtCskKLDkoKarTP_4core5slice4sort6shared17find_existing_runTyTmmEENCINvMB6_SB12_20sort_unstable_by_keyyNCINvNtNtCs31YAwBA1AlL_19xet_core_structures14metadata_shard14set_operations13set_operationINtNtNtNtCsexYYUdYSQU6_5alloc2io8buffered9bufreader9BufReaderNtNtCsG258MDvU3F_3std2fs4FileEINtNtB3i_9bufwriter9BufWriterQINtNtNtB1T_10merklehash9data_hash11HashedWriteB4c_EEEs2_0E0EB1T_.exit
  %i.l = or i64 %1, 1
  %i.m = tail call range(i64 5, 64) i64 @llvm.ctlz.i64(i64 %i.l, i1 true)
  %i.n = trunc nuw nsw i64 %i.m to i32
  %i.o = shl nuw nsw i32 %i.n, 1
  %i.p = xor i32 %i.o, 126
  tail call void @_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort8unstable9quicksort9quicksortTyTmmEENCINvMB8_SB17_20sort_unstable_by_keyyNCINvNtNtCs31YAwBA1AlL_19xet_core_structures14metadata_shard14set_operations13set_operationINtNtNtNtCsexYYUdYSQU6_5alloc2io8buffered9bufreader9BufReaderNtNtCsG258MDvU3F_3std2fs4FileEINtNtB3n_9bufwriter9BufWriterQINtNtNtB1Y_10merklehash9data_hash11HashedWriteB4h_EEEs2_0E0EB1Y_(ptr noalias nofree noundef nonnull align 8 %0, i64 noundef %1, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(16) null, i32 noundef %i.p, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %2)
  br label %_RNvMNtCskKLDkoKarTP_4core5sliceSTyTmmEE7reverseCs31YAwBA1AlL_19xet_core_structures.exit

_RNvMNtCskKLDkoKarTP_4core5sliceSTyTmmEE7reverseCs31YAwBA1AlL_19xet_core_structures.exit: ; preds = %_RINvNtCskKLDkoKarTP_4core10intrinsics25typed_swap_nonoverlappingTyTmmEEECs31YAwBA1AlL_19xet_core_structures.exit.i.i, %bb.a, %_RINvNtNtNtCskKLDkoKarTP_4core5slice4sort6shared17find_existing_runTyTmmEENCINvMB6_SB12_20sort_unstable_by_keyyNCINvNtNtCs31YAwBA1AlL_19xet_core_structures14metadata_shard14set_operations13set_operationINtNtNtNtCsexYYUdYSQU6_5alloc2io8buffered9bufreader9BufReaderNtNtCsG258MDvU3F_3std2fs4FileEINtNtB3i_9bufwriter9BufWriterQINtNtNtB1T_10merklehash9data_hash11HashedWriteB4c_EEEs2_0E0EB1T_.exit.thread, %bb.e
  ret void

.lr.ph.preheader.i.i:                             ; preds = %_RINvNtNtNtCskKLDkoKarTP_4core5slice4sort6shared17find_existing_runTyTmmEENCINvMB6_SB12_20sort_unstable_by_keyyNCINvNtNtCs31YAwBA1AlL_19xet_core_structures14metadata_shard14set_operations13set_operationINtNtNtNtCsexYYUdYSQU6_5alloc2io8buffered9bufreader9BufReaderNtNtCsG258MDvU3F_3std2fs4FileEINtNtB3i_9bufwriter9BufWriterQINtNtNtB1T_10merklehash9data_hash11HashedWriteB4c_EEEs2_0E0EB1T_.exit.thread
  %i.q = lshr i64 %1, 1
  %i.r = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %1
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %_RINvNtCskKLDkoKarTP_4core10intrinsics25typed_swap_nonoverlappingTyTmmEEECs31YAwBA1AlL_19xet_core_structures.exit.i.i, %.lr.ph.preheader.i.i
  %.sroa.0.017.i.i = phi i64 [ %i.w, %_RINvNtCskKLDkoKarTP_4core10intrinsics25typed_swap_nonoverlappingTyTmmEEECs31YAwBA1AlL_19xet_core_structures.exit.i.i ], [ 0, %.lr.ph.preheader.i.i ] ; 3 uses
  %i.s = xor i64 %.sroa.0.017.i.i, -1
  %i.t = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %.sroa.0.017.i.i
  %i.u = getelementptr [16 x i8], ptr %i.r, i64 %i.s
  invoke void @_RINvNvNtCskKLDkoKarTP_4core3ptr25swap_nonoverlapping_bytes26swap_nonoverlapping_chunksKj8_ECs31YAwBA1AlL_19xet_core_structures(ptr noundef nonnull %i.t, ptr noundef nonnull %i.u, i64 noundef 2)
          to label %_RINvNtCskKLDkoKarTP_4core10intrinsics25typed_swap_nonoverlappingTyTmmEEECs31YAwBA1AlL_19xet_core_structures.exit.i.i unwind label %bb.f

bb.f:                                             ; preds = %.lr.ph.i.i
  %i.v = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking19panic_cannot_unwind() #16
  unreachable

_RINvNtCskKLDkoKarTP_4core10intrinsics25typed_swap_nonoverlappingTyTmmEEECs31YAwBA1AlL_19xet_core_structures.exit.i.i: ; preds = %.lr.ph.i.i
  %i.w = add nuw nsw i64 %.sroa.0.017.i.i, 1      ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %i.w, %i.q
  br i1 %exitcond.not.i.i, label %_RNvMNtCskKLDkoKarTP_4core5sliceSTyTmmEE7reverseCs31YAwBA1AlL_19xet_core_structures.exit, label %.lr.ph.i.i
}

; Function Attrs: noinline nonlazybind uwtable
define void @_RINvNtNtNtCskKLDkoKarTP_4core5slice4sort8unstable7ipnsortjNvYjNtNtB8_3cmp10PartialOrd2ltECs31YAwBA1AlL_19xet_core_structures(ptr noalias nofree noundef nonnull align 8 %0, i64 noundef range(i64 0, 1152921504606846976) %1, ptr noalias nofree noundef nonnull %2) unnamed_addr #1 {
bb.a:
  %i.a = icmp samesign ult i64 %1, 2
  br i1 %i.a, label %_RNvMNtCskKLDkoKarTP_4core5sliceSj7reverseCs31YAwBA1AlL_19xet_core_structures.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val5 = load i64, ptr %i.b, align 8, !alias.scope !74, !noalias !75, !noundef !4 ; 3 uses
  %.val6 = load i64, ptr %0, align 8, !alias.scope !75, !noalias !74, !noundef !4
  %i.c = icmp ult i64 %.val5, %.val6              ; 2 uses
  %.not21 = icmp eq i64 %1, 2                     ; 2 uses
  br i1 %i.c, label %.preheader, label %.preheader11

.preheader11:                                     ; preds = %bb.b
  br i1 %.not21, label %_RINvNtNtNtCskKLDkoKarTP_4core5slice4sort6shared17find_existing_runjNvYjNtNtB8_3cmp10PartialOrd2ltECs31YAwBA1AlL_19xet_core_structures.exit, label %.lr.ph

.preheader:                                       ; preds = %bb.b
  br i1 %.not21, label %_RINvNtNtNtCskKLDkoKarTP_4core5slice4sort6shared17find_existing_runjNvYjNtNtB8_3cmp10PartialOrd2ltECs31YAwBA1AlL_19xet_core_structures.exit, label %.lr.ph17

.lr.ph:                                           ; preds = %.preheader11, %bb.c
  %.val4 = phi i64 [ %.val3, %bb.c ], [ %.val5, %.preheader11 ]
  %.sroa.01.0.i13 = phi i64 [ %i.f, %bb.c ], [ 2, %.preheader11 ] ; 3 uses
  %i.d = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.sroa.01.0.i13
  %.val3 = load i64, ptr %i.d, align 8, !alias.scope !74, !noalias !75, !noundef !4 ; 2 uses
  %i.e = icmp ult i64 %.val3, %.val4
  br i1 %i.e, label %_RINvNtNtNtCskKLDkoKarTP_4core5slice4sort6shared17find_existing_runjNvYjNtNtB8_3cmp10PartialOrd2ltECs31YAwBA1AlL_19xet_core_structures.exit, label %bb.c

bb.c:                                             ; preds = %.lr.ph
  %i.f = add nuw nsw i64 %.sroa.01.0.i13, 1       ; 2 uses
  %exitcond.not = icmp eq i64 %i.f, %1
  br i1 %exitcond.not, label %_RINvNtNtNtCskKLDkoKarTP_4core5slice4sort6shared17find_existing_runjNvYjNtNtB8_3cmp10PartialOrd2ltECs31YAwBA1AlL_19xet_core_structures.exit.thread, label %.lr.ph

.lr.ph17:                                         ; preds = %.preheader, %bb.d
  %.val2 = phi i64 [ %.val, %bb.d ], [ %.val5, %.preheader ]
  %.sroa.01.1.i16 = phi i64 [ %i.i, %bb.d ], [ 2, %.preheader ] ; 3 uses
  %i.g = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.sroa.01.1.i16
  %.val = load i64, ptr %i.g, align 8, !alias.scope !74, !noalias !75, !noundef !4 ; 2 uses
  %i.h = icmp ult i64 %.val, %.val2
  br i1 %i.h, label %bb.d, label %_RINvNtNtNtCskKLDkoKarTP_4core5slice4sort6shared17find_existing_runjNvYjNtNtB8_3cmp10PartialOrd2ltECs31YAwBA1AlL_19xet_core_structures.exit

bb.d:                                             ; preds = %.lr.ph17
  %i.i = add nuw nsw i64 %.sroa.01.1.i16, 1       ; 2 uses
  %exitcond24.not = icmp eq i64 %i.i, %1
  br i1 %exitcond24.not, label %_RINvNtNtNtCskKLDkoKarTP_4core5slice4sort6shared17find_existing_runjNvYjNtNtB8_3cmp10PartialOrd2ltECs31YAwBA1AlL_19xet_core_structures.exit.thread, label %.lr.ph17

_RINvNtNtNtCskKLDkoKarTP_4core5slice4sort6shared17find_existing_runjNvYjNtNtB8_3cmp10PartialOrd2ltECs31YAwBA1AlL_19xet_core_structures.exit: ; preds = %.lr.ph, %.lr.ph17, %.preheader11, %.preheader
  %.sroa.0.0.i = phi i64 [ 2, %.preheader11 ], [ 2, %.preheader ], [ %.sroa.01.1.i16, %.lr.ph17 ], [ %.sroa.01.0.i13, %.lr.ph ] ; 2 uses
  %i.j = icmp samesign ule i64 %.sroa.0.0.i, %1
  tail call void @llvm.assume(i1 %i.j)
  %i.k = icmp eq i64 %.sroa.0.0.i, %1
  br i1 %i.k, label %_RINvNtNtNtCskKLDkoKarTP_4core5slice4sort6shared17find_existing_runjNvYjNtNtB8_3cmp10PartialOrd2ltECs31YAwBA1AlL_19xet_core_structures.exit.thread, label %bb.e

_RINvNtNtNtCskKLDkoKarTP_4core5slice4sort6shared17find_existing_runjNvYjNtNtB8_3cmp10PartialOrd2ltECs31YAwBA1AlL_19xet_core_structures.exit.thread: ; preds = %bb.c, %bb.d, %_RINvNtNtNtCskKLDkoKarTP_4core5slice4sort6shared17find_existing_runjNvYjNtNtB8_3cmp10PartialOrd2ltECs31YAwBA1AlL_19xet_core_structures.exit
  br i1 %i.c, label %_RNvMNtCskKLDkoKarTP_4core5sliceSj12split_at_mutCs31YAwBA1AlL_19xet_core_structures.exit11.preheader.i.i, label %_RNvMNtCskKLDkoKarTP_4core5sliceSj7reverseCs31YAwBA1AlL_19xet_core_structures.exit

bb.e:                                             ; preds = %_RINvNtNtNtCskKLDkoKarTP_4core5slice4sort6shared17find_existing_runjNvYjNtNtB8_3cmp10PartialOrd2ltECs31YAwBA1AlL_19xet_core_structures.exit
  %i.l = or i64 %1, 1
  %i.m = tail call range(i64 4, 64) i64 @llvm.ctlz.i64(i64 %i.l, i1 true)
  %i.n = trunc nuw nsw i64 %i.m to i32
  %i.o = shl nuw nsw i32 %i.n, 1
  %i.p = xor i32 %i.o, 126
  tail call void @_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort8unstable9quicksort9quicksortjNvYjNtNtBa_3cmp10PartialOrd2ltECs31YAwBA1AlL_19xet_core_structures(ptr noalias nofree noundef nonnull align 8 %0, i64 noundef %1, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(8) null, i32 noundef %i.p, ptr noalias nofree noundef nonnull %2)
  br label %_RNvMNtCskKLDkoKarTP_4core5sliceSj7reverseCs31YAwBA1AlL_19xet_core_structures.exit

_RNvMNtCskKLDkoKarTP_4core5sliceSj7reverseCs31YAwBA1AlL_19xet_core_structures.exit: ; preds = %_RNvMNtCskKLDkoKarTP_4core5sliceSj12split_at_mutCs31YAwBA1AlL_19xet_core_structures.exit11.i.i, %middle.block, %bb.a, %_RINvNtNtNtCskKLDkoKarTP_4core5slice4sort6shared17find_existing_runjNvYjNtNtB8_3cmp10PartialOrd2ltECs31YAwBA1AlL_19xet_core_structures.exit.thread, %bb.e
  ret void

_RNvMNtCskKLDkoKarTP_4core5sliceSj12split_at_mutCs31YAwBA1AlL_19xet_core_structures.exit11.preheader.i.i: ; preds = %_RINvNtNtNtCskKLDkoKarTP_4core5slice4sort6shared17find_existing_runjNvYjNtNtB8_3cmp10PartialOrd2ltECs31YAwBA1AlL_19xet_core_structures.exit.thread
  %i.q = lshr i64 %1, 1                           ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !76)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !77)
  %i.r = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %1 ; 2 uses
  %min.iters.check = icmp samesign ult i64 %1, 8
  br i1 %min.iters.check, label %_RNvMNtCskKLDkoKarTP_4core5sliceSj12split_at_mutCs31YAwBA1AlL_19xet_core_structures.exit11.i.i.preheader, label %vector.ph

vector.ph:                                        ; preds = %_RNvMNtCskKLDkoKarTP_4core5sliceSj12split_at_mutCs31YAwBA1AlL_19xet_core_structures.exit11.preheader.i.i
  %n.vec = and i64 %i.q, 576460752303423484       ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.s = xor i64 %index, -1
  %i.t = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %index ; 3 uses
  %i.u = getelementptr [8 x i8], ptr %i.r, i64 %i.s ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.t, i64 16 ; 2 uses
  %wide.load = load <2 x i64>, ptr %i.t, align 8, !alias.scope !78, !noalias !77
  %wide.load39 = load <2 x i64>, ptr %i.v, align 8, !alias.scope !78, !noalias !77
  %i.w = getelementptr i8, ptr %i.u, i64 -8       ; 2 uses
  %i.x = getelementptr i8, ptr %i.u, i64 -24      ; 2 uses
  %wide.load40 = load <2 x i64>, ptr %i.w, align 8, !alias.scope !79, !noalias !76
  %wide.load41 = load <2 x i64>, ptr %i.x, align 8, !alias.scope !79, !noalias !76
  %reverse = shufflevector <2 x i64> %wide.load40, <2 x i64> poison, <2 x i32> <i32 1, i32 0>
  %reverse42 = shufflevector <2 x i64> %wide.load41, <2 x i64> poison, <2 x i32> <i32 1, i32 0>
  store <2 x i64> %reverse, ptr %i.t, align 8, !alias.scope !78, !noalias !77
  store <2 x i64> %reverse42, ptr %i.v, align 8, !alias.scope !78, !noalias !77
  %reverse43 = shufflevector <2 x i64> %wide.load, <2 x i64> poison, <2 x i32> <i32 1, i32 0>
  %reverse44 = shufflevector <2 x i64> %wide.load39, <2 x i64> poison, <2 x i32> <i32 1, i32 0>
  store <2 x i64> %reverse43, ptr %i.w, align 8, !alias.scope !79, !noalias !76
  store <2 x i64> %reverse44, ptr %i.x, align 8, !alias.scope !79, !noalias !76
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.y = icmp eq i64 %index.next, %n.vec
  br i1 %i.y, label %middle.block, label %vector.body, !llvm.loop !72

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.q, %n.vec
  br i1 %cmp.n, label %_RNvMNtCskKLDkoKarTP_4core5sliceSj7reverseCs31YAwBA1AlL_19xet_core_structures.exit, label %_RNvMNtCskKLDkoKarTP_4core5sliceSj12split_at_mutCs31YAwBA1AlL_19xet_core_structures.exit11.i.i.preheader

_RNvMNtCskKLDkoKarTP_4core5sliceSj12split_at_mutCs31YAwBA1AlL_19xet_core_structures.exit11.i.i.preheader: ; preds = %_RNvMNtCskKLDkoKarTP_4core5sliceSj12split_at_mutCs31YAwBA1AlL_19xet_core_structures.exit11.preheader.i.i, %middle.block
  %.sroa.0.016.i.i.ph = phi i64 [ 0, %_RNvMNtCskKLDkoKarTP_4core5sliceSj12split_at_mutCs31YAwBA1AlL_19xet_core_structures.exit11.preheader.i.i ], [ %n.vec, %middle.block ]
  br label %_RNvMNtCskKLDkoKarTP_4core5sliceSj12split_at_mutCs31YAwBA1AlL_19xet_core_structures.exit11.i.i

_RNvMNtCskKLDkoKarTP_4core5sliceSj12split_at_mutCs31YAwBA1AlL_19xet_core_structures.exit11.i.i: ; preds = %_RNvMNtCskKLDkoKarTP_4core5sliceSj12split_at_mutCs31YAwBA1AlL_19xet_core_structures.exit11.i.i.preheader, %_RNvMNtCskKLDkoKarTP_4core5sliceSj12split_at_mutCs31YAwBA1AlL_19xet_core_structures.exit11.i.i
  %.sroa.0.016.i.i = phi i64 [ %i.ae, %_RNvMNtCskKLDkoKarTP_4core5sliceSj12split_at_mutCs31YAwBA1AlL_19xet_core_structures.exit11.i.i ], [ %.sroa.0.016.i.i.ph, %_RNvMNtCskKLDkoKarTP_4core5sliceSj12split_at_mutCs31YAwBA1AlL_19xet_core_structures.exit11.i.i.preheader ] ; 3 uses
  %i.z = xor i64 %.sroa.0.016.i.i, -1
  %i.aa = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.sroa.0.016.i.i ; 2 uses
  %i.ab = getelementptr [8 x i8], ptr %i.r, i64 %i.z ; 2 uses
  %i.ac = load i64, ptr %i.aa, align 8, !alias.scope !78, !noalias !77, !noundef !4
  %i.ad = load i64, ptr %i.ab, align 8, !alias.scope !79, !noalias !76
  store i64 %i.ad, ptr %i.aa, align 8, !alias.scope !78, !noalias !77
  store i64 %i.ac, ptr %i.ab, align 8, !alias.scope !79, !noalias !76
  %i.ae = add nuw nsw i64 %.sroa.0.016.i.i, 1     ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %i.ae, %i.q
  br i1 %exitcond.not.i.i, label %_RNvMNtCskKLDkoKarTP_4core5sliceSj7reverseCs31YAwBA1AlL_19xet_core_structures.exit, label %_RNvMNtCskKLDkoKarTP_4core5sliceSj12split_at_mutCs31YAwBA1AlL_19xet_core_structures.exit11.i.i, !llvm.loop !73
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable5drift4sortTNtNtNtCs31YAwBA1AlL_19xet_core_structures10merklehash9data_hash8DataHashINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtB13_14metadata_shard12xorb_structs11MDBXorbInfoEENCINvMNtB2c_5sliceSBW_7sort_byNCINvXs1o_NtNtNtB2c_11collections5btree3mapINtB4c_8BTreeMapBX_B27_EINtNtNtNtBa_4iter6traits7collect12FromIteratorBW_E9from_iterINtNtNtB5e_8adapters3map3MapINtNtB6a_6filter6FilterINtB4c_4IterBX_B27_ENCNvMNtB2J_15shard_in_memoryNtB7j_16MDBInMemoryShard10difference0ENCB7g_s_0EE0E0EB13_(ptr noalias nofree noundef nonnull align 8 %0, i64 noundef range(i64 0, 230584300921369396) %1, ptr noalias nofree noundef nonnull align 8 %2, i64 noundef range(i64 0, 230584300921369396) %3, i1 noundef zeroext %4, ptr noalias nofree noundef align 8 dereferenceable(8) %5) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [66 x i8], align 1                ; 4 uses
  %i.b = alloca [528 x i8], align 8               ; 4 uses
  %i.c = icmp samesign ult i64 %1, 2
  br i1 %i.c, label %bb.ac, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = udiv i64 4611686018427387904, %1
  %i.e = urem i64 4611686018427387904, %1
  %.not = icmp ne i64 %i.e, 0
  %i.f = zext i1 %.not to i64
  %.sroa.0.0 = add nuw nsw i64 %i.d, %i.f         ; 2 uses
  %i.g = icmp samesign ult i64 %1, 4097
  br i1 %i.g, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.h = tail call noundef i64 @_RNvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable5drift11sqrt_approx(i64 noundef %1)
  br label %bb.e

bb.d:                                             ; preds = %bb.b
  %i.i = lshr i64 %1, 1
  %i.j = sub nuw nsw i64 %1, %i.i
  %..i = tail call noundef i64 @llvm.umin.i64(i64 %i.j, i64 64)
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %.sroa.01.0 = phi i64 [ %..i, %bb.d ], [ %i.h, %bb.c ] ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %.not5.i75 = icmp ugt i64 %.sroa.01.0, 2
  %.not5.i80 = icmp ugt i64 %.sroa.01.0, 2
  br label %bb.f

bb.f:                                             ; preds = %bb.y, %bb.e
  %.sroa.023.0 = phi i64 [ 1, %bb.e ], [ %.sroa.018.0, %bb.y ] ; 3 uses
  %.sroa.09.0 = phi i64 [ 0, %bb.e ], [ %i.cf, %bb.y ] ; 6 uses
  %.sroa.02.0 = phi i64 [ 0, %bb.e ], [ %i.cd, %bb.y ] ; 3 uses
  %i.k = icmp ult i64 %.sroa.09.0, %1             ; 2 uses
  br i1 %i.k, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f, %_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable5drift10create_runTNtNtNtCs31YAwBA1AlL_19xet_core_structures10merklehash9data_hash8DataHashINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtB1a_14metadata_shard12xorb_structs11MDBXorbInfoEENCINvMNtB2j_5sliceSB13_7sort_byNCINvXs1o_NtNtNtB2j_11collections5btree3mapINtB4k_8BTreeMapB14_B2e_EINtNtNtNtBa_4iter6traits7collect12FromIteratorB13_E9from_iterINtNtNtB5n_8adapters3map3MapINtNtB6k_6filter6FilterINtB4k_4IterB14_B2e_ENCNvMNtB2Q_15shard_in_memoryNtB7u_16MDBInMemoryShard10difference0ENCB7r_s_0EE0E0EB1a_.exit
  %.sroa.021.0 = phi i8 [ %i.aw, %_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable5drift10create_runTNtNtNtCs31YAwBA1AlL_19xet_core_structures10merklehash9data_hash8DataHashINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtB1a_14metadata_shard12xorb_structs11MDBXorbInfoEENCINvMNtB2j_5sliceSB13_7sort_byNCINvXs1o_NtNtNtB2j_11collections5btree3mapINtB4k_8BTreeMapB14_B2e_EINtNtNtNtBa_4iter6traits7collect12FromIteratorB13_E9from_iterINtNtNtB5n_8adapters3map3MapINtNtB6k_6filter6FilterINtB4k_4IterB14_B2e_ENCNvMNtB2Q_15shard_in_memoryNtB7u_16MDBInMemoryShard10difference0ENCB7r_s_0EE0E0EB1a_.exit ], [ 0, %bb.f ] ; 2 uses
  %.sroa.018.0 = phi i64 [ %.sroa.0.0.i32, %_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable5drift10create_runTNtNtNtCs31YAwBA1AlL_19xet_core_structures10merklehash9data_hash8DataHashINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtB1a_14metadata_shard12xorb_structs11MDBXorbInfoEENCINvMNtB2j_5sliceSB13_7sort_byNCINvXs1o_NtNtNtB2j_11collections5btree3mapINtB4k_8BTreeMapB14_B2e_EINtNtNtNtBa_4iter6traits7collect12FromIteratorB13_E9from_iterINtNtNtB5n_8adapters3map3MapINtNtB6k_6filter6FilterINtB4k_4IterB14_B2e_ENCNvMNtB2Q_15shard_in_memoryNtB7u_16MDBInMemoryShard10difference0ENCB7r_s_0EE0E0EB1a_.exit ], [ 1, %bb.f ] ; 2 uses
  %i.l = icmp ugt i64 %.sroa.02.0, 1
  br i1 %i.l, label %.lr.ph55, label %._crit_edge

bb.h:                                             ; preds = %bb.f
  %i.m = sub nuw nsw i64 %1, %.sroa.09.0          ; 11 uses
  %i.n = getelementptr inbounds nuw [40 x i8], ptr %0, i64 %.sroa.09.0 ; 9 uses
  %.not.i31 = icmp ult i64 %i.m, %.sroa.01.0
  br i1 %.not.i31, label %bb.i, label %bb.j

bb.i:                                             ; preds = %_RINvNtNtNtCskKLDkoKarTP_4core5slice4sort6shared17find_existing_runTNtNtNtCs31YAwBA1AlL_19xet_core_structures10merklehash9data_hash8DataHashINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtB19_14metadata_shard12xorb_structs11MDBXorbInfoEENCINvMNtB2i_5sliceSB12_7sort_byNCINvXs1o_NtNtNtB2i_11collections5btree3mapINtB4j_8BTreeMapB13_B2d_EINtNtNtNtB8_4iter6traits7collect12FromIteratorB12_E9from_iterINtNtNtB5m_8adapters3map3MapINtNtB6j_6filter6FilterINtB4j_4IterB13_B2d_ENCNvMNtB2P_15shard_in_memoryNtB7t_16MDBInMemoryShard10difference0ENCB7q_s_0EE0E0EB19_.exit.i.thread78, %_RINvNtNtNtCskKLDkoKarTP_4core5slice4sort6shared17find_existing_runTNtNtNtCs31YAwBA1AlL_19xet_core_structures10merklehash9data_hash8DataHashINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtB19_14metadata_shard12xorb_structs11MDBXorbInfoEENCINvMNtB2i_5sliceSB12_7sort_byNCINvXs1o_NtNtNtB2i_11collections5btree3mapINtB4j_8BTreeMapB13_B2d_EINtNtNtNtB8_4iter6traits7collect12FromIteratorB12_E9from_iterINtNtNtB5m_8adapters3map3MapINtNtB6j_6filter6FilterINtB4j_4IterB13_B2d_ENCNvMNtB2P_15shard_in_memoryNtB7t_16MDBInMemoryShard10difference0ENCB7q_s_0EE0E0EB19_.exit.i.thread, %_RINvNtNtNtCskKLDkoKarTP_4core5slice4sort6shared17find_existing_runTNtNtNtCs31YAwBA1AlL_19xet_core_structures10merklehash9data_hash8DataHashINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtB19_14metadata_shard12xorb_structs11MDBXorbInfoEENCINvMNtB2i_5sliceSB12_7sort_byNCINvXs1o_NtNtNtB2i_11collections5btree3mapINtB4j_8BTreeMapB13_B2d_EINtNtNtNtB8_4iter6traits7collect12FromIteratorB12_E9from_iterINtNtNtB5m_8adapters3map3MapINtNtB6j_6filter6FilterINtB4j_4IterB13_B2d_ENCNvMNtB2P_15shard_in_memoryNtB7t_16MDBInMemoryShard10difference0ENCB7q_s_0EE0E0EB19_.exit.i, %bb.h
  br i1 %4, label %bb.p, label %bb.o

bb.j:                                             ; preds = %bb.h
  %i.o = icmp samesign ult i64 %i.m, 2
  br i1 %i.o, label %_RNvMNtCskKLDkoKarTP_4core5sliceSTNtNtNtCs31YAwBA1AlL_19xet_core_structures10merklehash9data_hash8DataHashINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtBB_14metadata_shard12xorb_structs11MDBXorbInfoEE7reverseBB_.exit, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.p = getelementptr inbounds nuw i8, ptr %i.n, i64 40
  %i.q = tail call noundef range(i8 -1, 2) i8 @_RNvXs9_NtNtCs31YAwBA1AlL_19xet_core_structures10merklehash9data_hashNtB5_8DataHashNtNtCskKLDkoKarTP_4core3cmp3Ord3cmp(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %i.p, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %i.n), !noalias !85
  %i.r = icmp ne i8 %i.q, -1                      ; 2 uses
  %.not62 = icmp eq i64 %i.m, 2                   ; 2 uses
  br i1 %i.r, label %.preheader43, label %.preheader

.preheader43:                                     ; preds = %bb.k
  br i1 %.not62, label %_RINvNtNtNtCskKLDkoKarTP_4core5slice4sort6shared17find_existing_runTNtNtNtCs31YAwBA1AlL_19xet_core_structures10merklehash9data_hash8DataHashINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtB19_14metadata_shard12xorb_structs11MDBXorbInfoEENCINvMNtB2i_5sliceSB12_7sort_byNCINvXs1o_NtNtNtB2i_11collections5btree3mapINtB4j_8BTreeMapB13_B2d_EINtNtNtNtB8_4iter6traits7collect12FromIteratorB12_E9from_iterINtNtNtB5m_8adapters3map3MapINtNtB6j_6filter6FilterINtB4j_4IterB13_B2d_ENCNvMNtB2P_15shard_in_memoryNtB7t_16MDBInMemoryShard10difference0ENCB7q_s_0EE0E0EB19_.exit.i.thread, label %.lr.ph

.preheader:                                       ; preds = %bb.k
  br i1 %.not62, label %_RINvNtNtNtCskKLDkoKarTP_4core5slice4sort6shared17find_existing_runTNtNtNtCs31YAwBA1AlL_19xet_core_structures10merklehash9data_hash8DataHashINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtB19_14metadata_shard12xorb_structs11MDBXorbInfoEENCINvMNtB2i_5sliceSB12_7sort_byNCINvXs1o_NtNtNtB2i_11collections5btree3mapINtB4j_8BTreeMapB13_B2d_EINtNtNtNtB8_4iter6traits7collect12FromIteratorB12_E9from_iterINtNtNtB5m_8adapters3map3MapINtNtB6j_6filter6FilterINtB4j_4IterB13_B2d_ENCNvMNtB2P_15shard_in_memoryNtB7t_16MDBInMemoryShard10difference0ENCB7q_s_0EE0E0EB19_.exit.i.thread78, label %.lr.ph49

.lr.ph:                                           ; preds = %.preheader43, %bb.l
  %.sroa.01.0.i.i45 = phi i64 [ %i.v, %bb.l ], [ 2, %.preheader43 ] ; 4 uses
  %i.s = getelementptr inbounds nuw [40 x i8], ptr %i.n, i64 %.sroa.01.0.i.i45
  %6 = getelementptr [40 x i8], ptr %i.n, i64 %.sroa.01.0.i.i45
  %7 = getelementptr i8, ptr %6, i64 -40
  %i.t = tail call noundef range(i8 -1, 2) i8 @_RNvXs9_NtNtCs31YAwBA1AlL_19xet_core_structures10merklehash9data_hashNtB5_8DataHashNtNtCskKLDkoKarTP_4core3cmp3Ord3cmp(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %i.s, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %7), !noalias !85
  %i.u = icmp eq i8 %i.t, -1
  br i1 %i.u, label %_RINvNtNtNtCskKLDkoKarTP_4core5slice4sort6shared17find_existing_runTNtNtNtCs31YAwBA1AlL_19xet_core_structures10merklehash9data_hash8DataHashINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtB19_14metadata_shard12xorb_structs11MDBXorbInfoEENCINvMNtB2i_5sliceSB12_7sort_byNCINvXs1o_NtNtNtB2i_11collections5btree3mapINtB4j_8BTreeMapB13_B2d_EINtNtNtNtB8_4iter6traits7collect12FromIteratorB12_E9from_iterINtNtNtB5m_8adapters3map3MapINtNtB6j_6filter6FilterINtB4j_4IterB13_B2d_ENCNvMNtB2P_15shard_in_memoryNtB7t_16MDBInMemoryShard10difference0ENCB7q_s_0EE0E0EB19_.exit.i, label %bb.l

bb.l:                                             ; preds = %.lr.ph
  %i.v = add nuw i64 %.sroa.01.0.i.i45, 1         ; 2 uses
  %exitcond.not = icmp eq i64 %i.v, %i.m
  br i1 %exitcond.not, label %_RINvNtNtNtCskKLDkoKarTP_4core5slice4sort6shared17find_existing_runTNtNtNtCs31YAwBA1AlL_19xet_core_structures10merklehash9data_hash8DataHashINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtB19_14metadata_shard12xorb_structs11MDBXorbInfoEENCINvMNtB2i_5sliceSB12_7sort_byNCINvXs1o_NtNtNtB2i_11collections5btree3mapINtB4j_8BTreeMapB13_B2d_EINtNtNtNtB8_4iter6traits7collect12FromIteratorB12_E9from_iterINtNtNtB5m_8adapters3map3MapINtNtB6j_6filter6FilterINtB4j_4IterB13_B2d_ENCNvMNtB2P_15shard_in_memoryNtB7t_16MDBInMemoryShard10difference0ENCB7q_s_0EE0E0EB19_.exit.i, label %.lr.ph

.lr.ph49:                                         ; preds = %.preheader, %bb.m
  %.sroa.01.1.i.i48 = phi i64 [ %i.z, %bb.m ], [ 2, %.preheader ] ; 4 uses
  %i.w = getelementptr inbounds nuw [40 x i8], ptr %i.n, i64 %.sroa.01.1.i.i48
  %8 = getelementptr [40 x i8], ptr %i.n, i64 %.sroa.01.1.i.i48
  %9 = getelementptr i8, ptr %8, i64 -40
  %i.x = tail call noundef range(i8 -1, 2) i8 @_RNvXs9_NtNtCs31YAwBA1AlL_19xet_core_structures10merklehash9data_hashNtB5_8DataHashNtNtCskKLDkoKarTP_4core3cmp3Ord3cmp(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %i.w, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %9), !noalias !85
  %i.y = icmp eq i8 %i.x, -1
  br i1 %i.y, label %bb.m, label %_RINvNtNtNtCskKLDkoKarTP_4core5slice4sort6shared17find_existing_runTNtNtNtCs31YAwBA1AlL_19xet_core_structures10merklehash9data_hash8DataHashINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtB19_14metadata_shard12xorb_structs11MDBXorbInfoEENCINvMNtB2i_5sliceSB12_7sort_byNCINvXs1o_NtNtNtB2i_11collections5btree3mapINtB4j_8BTreeMapB13_B2d_EINtNtNtNtB8_4iter6traits7collect12FromIteratorB12_E9from_iterINtNtNtB5m_8adapters3map3MapINtNtB6j_6filter6FilterINtB4j_4IterB13_B2d_ENCNvMNtB2P_15shard_in_memoryNtB7t_16MDBInMemoryShard10difference0ENCB7q_s_0EE0E0EB19_.exit.i

bb.m:                                             ; preds = %.lr.ph49
  %i.z = add nuw i64 %.sroa.01.1.i.i48, 1         ; 2 uses
  %exitcond65.not = icmp eq i64 %i.z, %i.m
  br i1 %exitcond65.not, label %_RINvNtNtNtCskKLDkoKarTP_4core5slice4sort6shared17find_existing_runTNtNtNtCs31YAwBA1AlL_19xet_core_structures10merklehash9data_hash8DataHashINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtB19_14metadata_shard12xorb_structs11MDBXorbInfoEENCINvMNtB2i_5sliceSB12_7sort_byNCINvXs1o_NtNtNtB2i_11collections5btree3mapINtB4j_8BTreeMapB13_B2d_EINtNtNtNtB8_4iter6traits7collect12FromIteratorB12_E9from_iterINtNtNtB5m_8adapters3map3MapINtNtB6j_6filter6FilterINtB4j_4IterB13_B2d_ENCNvMNtB2P_15shard_in_memoryNtB7t_16MDBInMemoryShard10difference0ENCB7q_s_0EE0E0EB19_.exit.i, label %.lr.ph49

_RINvNtNtNtCskKLDkoKarTP_4core5slice4sort6shared17find_existing_runTNtNtNtCs31YAwBA1AlL_19xet_core_structures10merklehash9data_hash8DataHashINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtB19_14metadata_shard12xorb_structs11MDBXorbInfoEENCINvMNtB2i_5sliceSB12_7sort_byNCINvXs1o_NtNtNtB2i_11collections5btree3mapINtB4j_8BTreeMapB13_B2d_EINtNtNtNtB8_4iter6traits7collect12FromIteratorB12_E9from_iterINtNtNtB5m_8adapters3map3MapINtNtB6j_6filter6FilterINtB4j_4IterB13_B2d_ENCNvMNtB2P_15shard_in_memoryNtB7t_16MDBInMemoryShard10difference0ENCB7q_s_0EE0E0EB19_.exit.i: ; preds = %bb.m, %.lr.ph49, %bb.l, %.lr.ph
  %.sroa.0.0.i.i = phi i64 [ %.sroa.01.0.i.i45, %.lr.ph ], [ %i.m, %bb.l ], [ %.sroa.01.1.i.i48, %.lr.ph49 ], [ %i.m, %bb.m ] ; 5 uses
  %i.aa = icmp samesign ule i64 %.sroa.0.0.i.i, %i.m
  tail call void @llvm.assume(i1 %i.aa)
  %.not5.i = icmp ult i64 %.sroa.0.0.i.i, %.sroa.01.0
  br i1 %.not5.i, label %bb.i, label %bb.n

_RINvNtNtNtCskKLDkoKarTP_4core5slice4sort6shared17find_existing_runTNtNtNtCs31YAwBA1AlL_19xet_core_structures10merklehash9data_hash8DataHashINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtB19_14metadata_shard12xorb_structs11MDBXorbInfoEENCINvMNtB2i_5sliceSB12_7sort_byNCINvXs1o_NtNtNtB2i_11collections5btree3mapINtB4j_8BTreeMapB13_B2d_EINtNtNtNtB8_4iter6traits7collect12FromIteratorB12_E9from_iterINtNtNtB5m_8adapters3map3MapINtNtB6j_6filter6FilterINtB4j_4IterB13_B2d_ENCNvMNtB2P_15shard_in_memoryNtB7t_16MDBInMemoryShard10difference0ENCB7q_s_0EE0E0EB19_.exit.i.thread78: ; preds = %.preheader
  br i1 %.not5.i80, label %bb.i, label %.lr.ph.preheader.i.i

_RINvNtNtNtCskKLDkoKarTP_4core5slice4sort6shared17find_existing_runTNtNtNtCs31YAwBA1AlL_19xet_core_structures10merklehash9data_hash8DataHashINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtB19_14metadata_shard12xorb_structs11MDBXorbInfoEENCINvMNtB2i_5sliceSB12_7sort_byNCINvXs1o_NtNtNtB2i_11collections5btree3mapINtB4j_8BTreeMapB13_B2d_EINtNtNtNtB8_4iter6traits7collect12FromIteratorB12_E9from_iterINtNtNtB5m_8adapters3map3MapINtNtB6j_6filter6FilterINtB4j_4IterB13_B2d_ENCNvMNtB2P_15shard_in_memoryNtB7t_16MDBInMemoryShard10difference0ENCB7q_s_0EE0E0EB19_.exit.i.thread: ; preds = %.preheader43
  br i1 %.not5.i75, label %bb.i, label %_RNvMNtCskKLDkoKarTP_4core5sliceSTNtNtNtCs31YAwBA1AlL_19xet_core_structures10merklehash9data_hash8DataHashINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtBB_14metadata_shard12xorb_structs11MDBXorbInfoEE7reverseBB_.exit

bb.n:                                             ; preds = %_RINvNtNtNtCskKLDkoKarTP_4core5slice4sort6shared17find_existing_runTNtNtNtCs31YAwBA1AlL_19xet_core_structures10merklehash9data_hash8DataHashINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtB19_14metadata_shard12xorb_structs11MDBXorbInfoEENCINvMNtB2i_5sliceSB12_7sort_byNCINvXs1o_NtNtNtB2i_11collections5btree3mapINtB4j_8BTreeMapB13_B2d_EINtNtNtNtB8_4iter6traits7collect12FromIteratorB12_E9from_iterINtNtNtB5m_8adapters3map3MapINtNtB6j_6filter6FilterINtB4j_4IterB13_B2d_ENCNvMNtB2P_15shard_in_memoryNtB7t_16MDBInMemoryShard10difference0ENCB7q_s_0EE0E0EB19_.exit.i
  %i.ab = lshr i64 %.sroa.0.0.i.i, 1              ; 2 uses
  %.not.i.i = icmp eq i64 %i.ab, 0
  %or.cond = or i1 %i.r, %.not.i.i
  br i1 %or.cond, label %_RNvMNtCskKLDkoKarTP_4core5sliceSTNtNtNtCs31YAwBA1AlL_19xet_core_structures10merklehash9data_hash8DataHashINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtBB_14metadata_shard12xorb_structs11MDBXorbInfoEE7reverseBB_.exit, label %.lr.ph.preheader.i.i

bb.o:                                             ; preds = %bb.i
  %..i34 = tail call noundef i64 @llvm.umin.i64(i64 range(i64 0, 230584300921369396) %i.m, i64 %.sroa.01.0)
  %i.ac = shl nuw nsw i64 %..i34, 1
  br label %_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable5drift10create_runTNtNtNtCs31YAwBA1AlL_19xet_core_structures10merklehash9data_hash8DataHashINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtB1a_14metadata_shard12xorb_structs11MDBXorbInfoEENCINvMNtB2j_5sliceSB13_7sort_byNCINvXs1o_NtNtNtB2j_11collections5btree3mapINtB4k_8BTreeMapB14_B2e_EINtNtNtNtBa_4iter6traits7collect12FromIteratorB13_E9from_iterINtNtNtB5n_8adapters3map3MapINtNtB6k_6filter6FilterINtB4k_4IterB14_B2e_ENCNvMNtB2Q_15shard_in_memoryNtB7u_16MDBInMemoryShard10difference0ENCB7r_s_0EE0E0EB1a_.exit

bb.p:                                             ; preds = %bb.i
  %..i33 = tail call noundef i64 @llvm.umin.i64(i64 range(i64 0, 230584300921369396) %i.m, i64 32) ; 2 uses
  tail call void @_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable9quicksort9quicksortTNtNtNtCs31YAwBA1AlL_19xet_core_structures10merklehash9data_hash8DataHashINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtB1c_14metadata_shard12xorb_structs11MDBXorbInfoEENCINvMNtB2l_5sliceSB15_7sort_byNCINvXs1o_NtNtNtB2l_11collections5btree3mapINtB4m_8BTreeMapB16_B2g_EINtNtNtNtBa_4iter6traits7collect12FromIteratorB15_E9from_iterINtNtNtB5p_8adapters3map3MapINtNtB6m_6filter6FilterINtB4m_4IterB16_B2g_ENCNvMNtB2S_15shard_in_memoryNtB7w_16MDBInMemoryShard10difference0ENCB7t_s_0EE0E0EB1c_(ptr noalias nofree noundef nonnull align 8 %i.n, i64 noundef %..i33, ptr noalias nofree noundef nonnull align 8 %2, i64 noundef range(i64 0, 230584300921369396) %3, i32 noundef 0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(40) null, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %5) #18, !inline_history !83
  %i.ad = shl nuw nsw i64 %..i33, 1
  %i.ae = or disjoint i64 %i.ad, 1
  br label %_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable5drift10create_runTNtNtNtCs31YAwBA1AlL_19xet_core_structures10merklehash9data_hash8DataHashINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtB1a_14metadata_shard12xorb_structs11MDBXorbInfoEENCINvMNtB2j_5sliceSB13_7sort_byNCINvXs1o_NtNtNtB2j_11collections5btree3mapINtB4k_8BTreeMapB14_B2e_EINtNtNtNtBa_4iter6traits7collect12FromIteratorB13_E9from_iterINtNtNtB5n_8adapters3map3MapINtNtB6k_6filter6FilterINtB4k_4IterB14_B2e_ENCNvMNtB2Q_15shard_in_memoryNtB7u_16MDBInMemoryShard10difference0ENCB7r_s_0EE0E0EB1a_.exit

_RNvMNtCskKLDkoKarTP_4core5sliceSTNtNtNtCs31YAwBA1AlL_19xet_core_structures10merklehash9data_hash8DataHashINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtBB_14metadata_shard12xorb_structs11MDBXorbInfoEE7reverseBB_.exit: ; preds = %_RINvNtCskKLDkoKarTP_4core10intrinsics25typed_swap_nonoverlappingTNtNtNtCs31YAwBA1AlL_19xet_core_structures10merklehash9data_hash8DataHashINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtB17_14metadata_shard12xorb_structs11MDBXorbInfoEEEB17_.exit.i.i, %_RINvNtNtNtCskKLDkoKarTP_4core5slice4sort6shared17find_existing_runTNtNtNtCs31YAwBA1AlL_19xet_core_structures10merklehash9data_hash8DataHashINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtB19_14metadata_shard12xorb_structs11MDBXorbInfoEENCINvMNtB2i_5sliceSB12_7sort_byNCINvXs1o_NtNtNtB2i_11collections5btree3mapINtB4j_8BTreeMapB13_B2d_EINtNtNtNtB8_4iter6traits7collect12FromIteratorB12_E9from_iterINtNtNtB5m_8adapters3map3MapINtNtB6j_6filter6FilterINtB4j_4IterB13_B2d_ENCNvMNtB2P_15shard_in_memoryNtB7t_16MDBInMemoryShard10difference0ENCB7q_s_0EE0E0EB19_.exit.i.thread, %bb.j, %bb.n
  %.sroa.0.0.i.i3942 = phi i64 [ %i.m, %bb.j ], [ %.sroa.0.0.i.i, %bb.n ], [ 2, %_RINvNtNtNtCskKLDkoKarTP_4core5slice4sort6shared17find_existing_runTNtNtNtCs31YAwBA1AlL_19xet_core_structures10merklehash9data_hash8DataHashINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtB19_14metadata_shard12xorb_structs11MDBXorbInfoEENCINvMNtB2i_5sliceSB12_7sort_byNCINvXs1o_NtNtNtB2i_11collections5btree3mapINtB4j_8BTreeMapB13_B2d_EINtNtNtNtB8_4iter6traits7collect12FromIteratorB12_E9from_iterINtNtNtB5m_8adapters3map3MapINtNtB6j_6filter6FilterINtB4j_4IterB13_B2d_ENCNvMNtB2P_15shard_in_memoryNtB7t_16MDBInMemoryShard10difference0ENCB7q_s_0EE0E0EB19_.exit.i.thread ], [ %.sroa.0.0.i.i768387, %_RINvNtCskKLDkoKarTP_4core10intrinsics25typed_swap_nonoverlappingTNtNtNtCs31YAwBA1AlL_19xet_core_structures10merklehash9data_hash8DataHashINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtB17_14metadata_shard12xorb_structs11MDBXorbInfoEEEB17_.exit.i.i ]
  %i.af = shl nuw nsw i64 %.sroa.0.0.i.i3942, 1
  %i.ag = or disjoint i64 %i.af, 1
  br label %_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable5drift10create_runTNtNtNtCs31YAwBA1AlL_19xet_core_structures10merklehash9data_hash8DataHashINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtB1a_14metadata_shard12xorb_structs11MDBXorbInfoEENCINvMNtB2j_5sliceSB13_7sort_byNCINvXs1o_NtNtNtB2j_11collections5btree3mapINtB4k_8BTreeMapB14_B2e_EINtNtNtNtBa_4iter6traits7collect12FromIteratorB13_E9from_iterINtNtNtB5n_8adapters3map3MapINtNtB6k_6filter6FilterINtB4k_4IterB14_B2e_ENCNvMNtB2Q_15shard_in_memoryNtB7u_16MDBInMemoryShard10difference0ENCB7r_s_0EE0E0EB1a_.exit

.lr.ph.preheader.i.i:                             ; preds = %bb.n, %_RINvNtNtNtCskKLDkoKarTP_4core5slice4sort6shared17find_existing_runTNtNtNtCs31YAwBA1AlL_19xet_core_structures10merklehash9data_hash8DataHashINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtB19_14metadata_shard12xorb_structs11MDBXorbInfoEENCINvMNtB2i_5sliceSB12_7sort_byNCINvXs1o_NtNtNtB2i_11collections5btree3mapINtB4j_8BTreeMapB13_B2d_EINtNtNtNtB8_4iter6traits7collect12FromIteratorB12_E9from_iterINtNtNtB5m_8adapters3map3MapINtNtB6j_6filter6FilterINtB4j_4IterB13_B2d_ENCNvMNtB2P_15shard_in_memoryNtB7t_16MDBInMemoryShard10difference0ENCB7q_s_0EE0E0EB19_.exit.i.thread78
  %i.ah = phi i64 [ %i.ab, %bb.n ], [ 1, %_RINvNtNtNtCskKLDkoKarTP_4core5slice4sort6shared17find_existing_runTNtNtNtCs31YAwBA1AlL_19xet_core_structures10merklehash9data_hash8DataHashINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtB19_14metadata_shard12xorb_structs11MDBXorbInfoEENCINvMNtB2i_5sliceSB12_7sort_byNCINvXs1o_NtNtNtB2i_11collections5btree3mapINtB4j_8BTreeMapB13_B2d_EINtNtNtNtB8_4iter6traits7collect12FromIteratorB12_E9from_iterINtNtNtB5m_8adapters3map3MapINtNtB6j_6filter6FilterINtB4j_4IterB13_B2d_ENCNvMNtB2P_15shard_in_memoryNtB7t_16MDBInMemoryShard10difference0ENCB7q_s_0EE0E0EB19_.exit.i.thread78 ]
  %.sroa.0.0.i.i768387 = phi i64 [ %.sroa.0.0.i.i, %bb.n ], [ 2, %_RINvNtNtNtCskKLDkoKarTP_4core5slice4sort6shared17find_existing_runTNtNtNtCs31YAwBA1AlL_19xet_core_structures10merklehash9data_hash8DataHashINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtB19_14metadata_shard12xorb_structs11MDBXorbInfoEENCINvMNtB2i_5sliceSB12_7sort_byNCINvXs1o_NtNtNtB2i_11collections5btree3mapINtB4j_8BTreeMapB13_B2d_EINtNtNtNtB8_4iter6traits7collect12FromIteratorB12_E9from_iterINtNtNtB5m_8adapters3map3MapINtNtB6j_6filter6FilterINtB4j_4IterB13_B2d_ENCNvMNtB2P_15shard_in_memoryNtB7t_16MDBInMemoryShard10difference0ENCB7q_s_0EE0E0EB19_.exit.i.thread78 ] ; 2 uses
  %i.ai = getelementptr inbounds nuw [40 x i8], ptr %i.n, i64 %.sroa.0.0.i.i768387
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %_RINvNtCskKLDkoKarTP_4core10intrinsics25typed_swap_nonoverlappingTNtNtNtCs31YAwBA1AlL_19xet_core_structures10merklehash9data_hash8DataHashINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtB17_14metadata_shard12xorb_structs11MDBXorbInfoEEEB17_.exit.i.i, %.lr.ph.preheader.i.i
  %.sroa.0.017.i.i = phi i64 [ %i.an, %_RINvNtCskKLDkoKarTP_4core10intrinsics25typed_swap_nonoverlappingTNtNtNtCs31YAwBA1AlL_19xet_core_structures10merklehash9data_hash8DataHashINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtB17_14metadata_shard12xorb_structs11MDBXorbInfoEEEB17_.exit.i.i ], [ 0, %.lr.ph.preheader.i.i ] ; 3 uses
  %i.aj = xor i64 %.sroa.0.017.i.i, -1
  %i.ak = getelementptr inbounds nuw [40 x i8], ptr %i.n, i64 %.sroa.0.017.i.i
  %i.al = getelementptr [40 x i8], ptr %i.ai, i64 %i.aj
  invoke void @_RINvNvNtCskKLDkoKarTP_4core3ptr25swap_nonoverlapping_bytes26swap_nonoverlapping_chunksKj8_ECs31YAwBA1AlL_19xet_core_structures(ptr noundef nonnull %i.ak, ptr noundef nonnull %i.al, i64 noundef 5)
          to label %_RINvNtCskKLDkoKarTP_4core10intrinsics25typed_swap_nonoverlappingTNtNtNtCs31YAwBA1AlL_19xet_core_structures10merklehash9data_hash8DataHashINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtB17_14metadata_shard12xorb_structs11MDBXorbInfoEEEB17_.exit.i.i unwind label %bb.q, !noalias !85

bb.q:                                             ; preds = %.lr.ph.i.i
  %i.am = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking19panic_cannot_unwind() #16, !noalias !85
  unreachable

_RINvNtCskKLDkoKarTP_4core10intrinsics25typed_swap_nonoverlappingTNtNtNtCs31YAwBA1AlL_19xet_core_structures10merklehash9data_hash8DataHashINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtB17_14metadata_shard12xorb_structs11MDBXorbInfoEEEB17_.exit.i.i: ; preds = %.lr.ph.i.i
  %i.an = add nuw nsw i64 %.sroa.0.017.i.i, 1     ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %i.an, %i.ah
  br i1 %exitcond.not.i.i, label %_RNvMNtCskKLDkoKarTP_4core5sliceSTNtNtNtCs31YAwBA1AlL_19xet_core_structures10merklehash9data_hash8DataHashINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtBB_14metadata_shard12xorb_structs11MDBXorbInfoEE7reverseBB_.exit, label %.lr.ph.i.i

_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable5drift10create_runTNtNtNtCs31YAwBA1AlL_19xet_core_structures10merklehash9data_hash8DataHashINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtB1a_14metadata_shard12xorb_structs11MDBXorbInfoEENCINvMNtB2j_5sliceSB13_7sort_byNCINvXs1o_NtNtNtB2j_11collections5btree3mapINtB4k_8BTreeMapB14_B2e_EINtNtNtNtBa_4iter6traits7collect12FromIteratorB13_E9from_iterINtNtNtB5n_8adapters3map3MapINtNtB6k_6filter6FilterINtB4k_4IterB14_B2e_ENCNvMNtB2Q_15shard_in_memoryNtB7u_16MDBInMemoryShard10difference0ENCB7r_s_0EE0E0EB1a_.exit: ; preds = %bb.o, %bb.p, %_RNvMNtCskKLDkoKarTP_4core5sliceSTNtNtNtCs31YAwBA1AlL_19xet_core_structures10merklehash9data_hash8DataHashINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtBB_14metadata_shard12xorb_structs11MDBXorbInfoEE7reverseBB_.exit
  %.sroa.0.0.i32 = phi i64 [ %i.ag, %_RNvMNtCskKLDkoKarTP_4core5sliceSTNtNtNtCs31YAwBA1AlL_19xet_core_structures10merklehash9data_hash8DataHashINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtBB_14metadata_shard12xorb_structs11MDBXorbInfoEE7reverseBB_.exit ], [ %i.ae, %bb.p ], [ %i.ac, %bb.o ] ; 2 uses
  %i.ao = lshr i64 %.sroa.023.0, 1
  %i.ap = lshr i64 %.sroa.0.0.i32, 1
  %factor = shl nuw nsw i64 %.sroa.09.0, 1        ; 2 uses
  %i.aq = sub nsw i64 %factor, %i.ao
  %i.ar = add nuw nsw i64 %i.ap, %factor
  %i.as = mul i64 %i.aq, %.sroa.0.0
  %i.at = mul i64 %i.ar, %.sroa.0.0
  %i.au = xor i64 %i.at, %i.as
  %i.av = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.au, i1 false)
  %i.aw = trunc nuw nsw i64 %i.av to i8
  br label %bb.g

.lr.ph55:                                         ; preds = %bb.g, %_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable5drift13logical_mergeTNtNtNtCs31YAwBA1AlL_19xet_core_structures10merklehash9data_hash8DataHashINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtB1d_14metadata_shard12xorb_structs11MDBXorbInfoEENCINvMNtB2m_5sliceSB16_7sort_byNCINvXs1o_NtNtNtB2m_11collections5btree3mapINtB4n_8BTreeMapB17_B2h_EINtNtNtNtBa_4iter6traits7collect12FromIteratorB16_E9from_iterINtNtNtB5q_8adapters3map3MapINtNtB6n_6filter6FilterINtB4n_4IterB17_B2h_ENCNvMNtB2T_15shard_in_memoryNtB7x_16MDBInMemoryShard10difference0ENCB7u_s_0EE0E0EB1d_.exit
  %.sroa.02.154 = phi i64 [ %i.ax, %_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable5drift13logical_mergeTNtNtNtCs31YAwBA1AlL_19xet_core_structures10merklehash9data_hash8DataHashINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtB1d_14metadata_shard12xorb_structs11MDBXorbInfoEENCINvMNtB2m_5sliceSB16_7sort_byNCINvXs1o_NtNtNtB2m_11collections5btree3mapINtB4n_8BTreeMapB17_B2h_EINtNtNtNtBa_4iter6traits7collect12FromIteratorB16_E9from_iterINtNtNtB5q_8adapters3map3MapINtNtB6n_6filter6FilterINtB4n_4IterB17_B2h_ENCNvMNtB2T_15shard_in_memoryNtB7x_16MDBInMemoryShard10difference0ENCB7u_s_0EE0E0EB1d_.exit ], [ %.sroa.02.0, %bb.g ] ; 2 uses
  %.sroa.023.153 = phi i64 [ %.sroa.0.0.i, %_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable5drift13logical_mergeTNtNtNtCs31YAwBA1AlL_19xet_core_structures10merklehash9data_hash8DataHashINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtB1d_14metadata_shard12xorb_structs11MDBXorbInfoEENCINvMNtB2m_5sliceSB16_7sort_byNCINvXs1o_NtNtNtB2m_11collections5btree3mapINtB4n_8BTreeMapB17_B2h_EINtNtNtNtBa_4iter6traits7collect12FromIteratorB16_E9from_iterINtNtNtB5q_8adapters3map3MapINtNtB6n_6filter6FilterINtB4n_4IterB17_B2h_ENCNvMNtB2T_15shard_in_memoryNtB7x_16MDBInMemoryShard10difference0ENCB7u_s_0EE0E0EB1d_.exit ], [ %.sroa.023.0, %bb.g ] ; 4 uses
  %i.ax = add i64 %.sroa.02.154, -1               ; 4 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.ax
  %i.az = load i8, ptr %i.ay, align 1, !noundef !4
  %.not28 = icmp ult i8 %i.az, %.sroa.021.0
  br i1 %.not28, label %._crit_edge, label %bb.r

._crit_edge:                                      ; preds = %_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable5drift13logical_mergeTNtNtNtCs31YAwBA1AlL_19xet_core_structures10merklehash9data_hash8DataHashINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtB1d_14metadata_shard12xorb_structs11MDBXorbInfoEENCINvMNtB2m_5sliceSB16_7sort_byNCINvXs1o_NtNtNtB2m_11collections5btree3mapINtB4n_8BTreeMapB17_B2h_EINtNtNtNtBa_4iter6traits7collect12FromIteratorB16_E9from_iterINtNtNtB5q_8adapters3map3MapINtNtB6n_6filter6FilterINtB4n_4IterB17_B2h_ENCNvMNtB2T_15shard_in_memoryNtB7x_16MDBInMemoryShard10difference0ENCB7u_s_0EE0E0EB1d_.exit, %.lr.ph55, %bb.g
  %.sroa.023.1.lcssa = phi i64 [ %.sroa.023.0, %bb.g ], [ %.sroa.023.153, %.lr.ph55 ], [ %.sroa.0.0.i, %_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable5drift13logical_mergeTNtNtNtCs31YAwBA1AlL_19xet_core_structures10merklehash9data_hash8DataHashINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtB1d_14metadata_shard12xorb_structs11MDBXorbInfoEENCINvMNtB2m_5sliceSB16_7sort_byNCINvXs1o_NtNtNtB2m_11collections5btree3mapINtB4n_8BTreeMapB17_B2h_EINtNtNtNtBa_4iter6traits7collect12FromIteratorB16_E9from_iterINtNtNtB5q_8adapters3map3MapINtNtB6n_6filter6FilterINtB4n_4IterB17_B2h_ENCNvMNtB2T_15shard_in_memoryNtB7x_16MDBInMemoryShard10difference0ENCB7u_s_0EE0E0EB1d_.exit ] ; 2 uses
  %.sroa.02.1.lcssa = phi i64 [ %.sroa.02.0, %bb.g ], [ %.sroa.02.154, %.lr.ph55 ], [ 1, %_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable5drift13logical_mergeTNtNtNtCs31YAwBA1AlL_19xet_core_structures10merklehash9data_hash8DataHashINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtB1d_14metadata_shard12xorb_structs11MDBXorbInfoEENCINvMNtB2m_5sliceSB16_7sort_byNCINvXs1o_NtNtNtB2m_11collections5btree3mapINtB4n_8BTreeMapB17_B2h_EINtNtNtNtBa_4iter6traits7collect12FromIteratorB16_E9from_iterINtNtNtB5q_8adapters3map3MapINtNtB6n_6filter6FilterINtB4n_4IterB17_B2h_ENCNvMNtB2T_15shard_in_memoryNtB7x_16MDBInMemoryShard10difference0ENCB7u_s_0EE0E0EB1d_.exit ] ; 3 uses
  %i.ba = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %.sroa.02.1.lcssa
  store i64 %.sroa.023.1.lcssa, ptr %i.ba, align 8
  %i.bb = getelementptr inbounds nuw i8, ptr %i.a, i64 %.sroa.02.1.lcssa
  store i8 %.sroa.021.0, ptr %i.bb, align 1
  br i1 %i.k, label %bb.y, label %bb.z

bb.r:                                             ; preds = %.lr.ph55
  %i.bc = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %i.ax
  %i.bd = load i64, ptr %i.bc, align 8, !noundef !4 ; 3 uses
  %i.be = lshr i64 %i.bd, 1                       ; 5 uses
  %i.bf = lshr i64 %.sroa.023.153, 1              ; 3 uses
  %i.bg = add nuw i64 %i.be, %i.bf                ; 5 uses
  %i.bh = sub i64 %.sroa.09.0, %i.bg
  %i.bi = getelementptr inbounds nuw [40 x i8], ptr %0, i64 %i.bh ; 3 uses
  %i.bj = icmp samesign ugt i64 %i.bg, %3
  %i.bk = trunc i64 %.sroa.023.153 to i1
  %i.bl = or i64 %i.bd, %.sroa.023.153
  %i.bm = trunc i64 %i.bl to i1
  %or.cond3.i = or i1 %i.bj, %i.bm
  br i1 %or.cond3.i, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
  %i.bn = trunc i64 %i.bd to i1
  br i1 %i.bn, label %bb.u, label %bb.v

bb.t:                                             ; preds = %bb.r
  %i.bo = shl nuw nsw i64 %i.bg, 1
  br label %_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable5drift13logical_mergeTNtNtNtCs31YAwBA1AlL_19xet_core_structures10merklehash9data_hash8DataHashINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtB1d_14metadata_shard12xorb_structs11MDBXorbInfoEENCINvMNtB2m_5sliceSB16_7sort_byNCINvXs1o_NtNtNtB2m_11collections5btree3mapINtB4n_8BTreeMapB17_B2h_EINtNtNtNtBa_4iter6traits7collect12FromIteratorB16_E9from_iterINtNtNtB5q_8adapters3map3MapINtNtB6n_6filter6FilterINtB4n_4IterB17_B2h_ENCNvMNtB2T_15shard_in_memoryNtB7x_16MDBInMemoryShard10difference0ENCB7u_s_0EE0E0EB1d_.exit

bb.u:                                             ; preds = %bb.v, %bb.s
  br i1 %i.bk, label %bb.x, label %bb.w

bb.v:                                             ; preds = %bb.s
  %i.bp = or i64 %i.be, 1
  %i.bq = tail call range(i64 6, 64) i64 @llvm.ctlz.i64(i64 %i.bp, i1 true)
  %i.br = trunc nuw nsw i64 %i.bq to i32
  %i.bs = shl nuw nsw i32 %i.br, 1
  %i.bt = xor i32 %i.bs, 126
  tail call void @_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable9quicksort9quicksortTNtNtNtCs31YAwBA1AlL_19xet_core_structures10merklehash9data_hash8DataHashINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtB1c_14metadata_shard12xorb_structs11MDBXorbInfoEENCINvMNtB2l_5sliceSB15_7sort_byNCINvXs1o_NtNtNtB2l_11collections5btree3mapINtB4m_8BTreeMapB16_B2g_EINtNtNtNtBa_4iter6traits7collect12FromIteratorB15_E9from_iterINtNtNtB5p_8adapters3map3MapINtNtB6m_6filter6FilterINtB4m_4IterB16_B2g_ENCNvMNtB2S_15shard_in_memoryNtB7w_16MDBInMemoryShard10difference0ENCB7t_s_0EE0E0EB1c_(ptr noalias nofree noundef nonnull align 8 %i.bi, i64 noundef range(i64 0, 230584300921369396) %i.be, ptr noalias nofree noundef nonnull align 8 %2, i64 noundef range(i64 0, 230584300921369396) %3, i32 noundef %i.bt, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(40) null, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %5) #18, !inline_history !84
  br label %bb.u

bb.w:                                             ; preds = %bb.u
  %i.bu = getelementptr inbounds nuw [40 x i8], ptr %i.bi, i64 %i.be
  %i.bv = or i64 %i.bf, 1
  %i.bw = tail call range(i64 6, 64) i64 @llvm.ctlz.i64(i64 %i.bv, i1 true)
  %i.bx = trunc nuw nsw i64 %i.bw to i32
  %i.by = shl nuw nsw i32 %i.bx, 1
  %i.bz = xor i32 %i.by, 126
  tail call void @_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable9quicksort9quicksortTNtNtNtCs31YAwBA1AlL_19xet_core_structures10merklehash9data_hash8DataHashINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtB1c_14metadata_shard12xorb_structs11MDBXorbInfoEENCINvMNtB2l_5sliceSB15_7sort_byNCINvXs1o_NtNtNtB2l_11collections5btree3mapINtB4m_8BTreeMapB16_B2g_EINtNtNtNtBa_4iter6traits7collect12FromIteratorB15_E9from_iterINtNtNtB5p_8adapters3map3MapINtNtB6m_6filter6FilterINtB4m_4IterB16_B2g_ENCNvMNtB2S_15shard_in_memoryNtB7w_16MDBInMemoryShard10difference0ENCB7t_s_0EE0E0EB1c_(ptr noalias nofree noundef nonnull align 8 %i.bu, i64 noundef range(i64 0, 230584300921369396) %i.bf, ptr noalias nofree noundef nonnull align 8 %2, i64 noundef range(i64 0, 230584300921369396) %3, i32 noundef %i.bz, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(40) null, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %5) #18, !inline_history !84
  br label %bb.x

bb.x:                                             ; preds = %bb.w, %bb.u
  tail call void @_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable5merge5mergeTNtNtNtCs31YAwBA1AlL_19xet_core_structures10merklehash9data_hash8DataHashINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtB14_14metadata_shard12xorb_structs11MDBXorbInfoEENCINvMNtB2d_5sliceSBX_7sort_byNCINvXs1o_NtNtNtB2d_11collections5btree3mapINtB4d_8BTreeMapBY_B28_EINtNtNtNtBa_4iter6traits7collect12FromIteratorBX_E9from_iterINtNtNtB5f_8adapters3map3MapINtNtB6b_6filter6FilterINtB4d_4IterBY_B28_ENCNvMNtB2K_15shard_in_memoryNtB7k_16MDBInMemoryShard10difference0ENCB7h_s_0EE0E0EB14_(ptr noalias nofree noundef nonnull align 8 %i.bi, i64 noundef range(i64 0, 230584300921369396) %i.bg, ptr noalias nofree noundef nonnull align 8 %2, i64 noundef range(i64 0, 230584300921369396) %3, i64 noundef %i.be, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %5)
  %i.ca = shl nuw nsw i64 %i.bg, 1
  %i.cb = or disjoint i64 %i.ca, 1
  br label %_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable5drift13logical_mergeTNtNtNtCs31YAwBA1AlL_19xet_core_structures10merklehash9data_hash8DataHashINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtB1d_14metadata_shard12xorb_structs11MDBXorbInfoEENCINvMNtB2m_5sliceSB16_7sort_byNCINvXs1o_NtNtNtB2m_11collections5btree3mapINtB4n_8BTreeMapB17_B2h_EINtNtNtNtBa_4iter6traits7collect12FromIteratorB16_E9from_iterINtNtNtB5q_8adapters3map3MapINtNtB6n_6filter6FilterINtB4n_4IterB17_B2h_ENCNvMNtB2T_15shard_in_memoryNtB7x_16MDBInMemoryShard10difference0ENCB7u_s_0EE0E0EB1d_.exit

_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable5drift13logical_mergeTNtNtNtCs31YAwBA1AlL_19xet_core_structures10merklehash9data_hash8DataHashINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtB1d_14metadata_shard12xorb_structs11MDBXorbInfoEENCINvMNtB2m_5sliceSB16_7sort_byNCINvXs1o_NtNtNtB2m_11collections5btree3mapINtB4n_8BTreeMapB17_B2h_EINtNtNtNtBa_4iter6traits7collect12FromIteratorB16_E9from_iterINtNtNtB5q_8adapters3map3MapINtNtB6n_6filter6FilterINtB4n_4IterB17_B2h_ENCNvMNtB2T_15shard_in_memoryNtB7x_16MDBInMemoryShard10difference0ENCB7u_s_0EE0E0EB1d_.exit: ; preds = %bb.t, %bb.x
  %.sroa.0.0.i = phi i64 [ %i.cb, %bb.x ], [ %i.bo, %bb.t ] ; 2 uses
  %i.cc = icmp ugt i64 %i.ax, 1
  br i1 %i.cc, label %.lr.ph55, label %._crit_edge

bb.y:                                             ; preds = %._crit_edge
  %i.cd = add nuw nsw i64 %.sroa.02.1.lcssa, 1
  %i.ce = lshr i64 %.sroa.018.0, 1
  %i.cf = add nuw i64 %i.ce, %.sroa.09.0
  br label %bb.f

bb.z:                                             ; preds = %._crit_edge
  %i.cg = and i64 %.sroa.023.1.lcssa, 1
  %.not30 = icmp eq i64 %i.cg, 0
  br i1 %.not30, label %bb.aa, label %bb.ab

bb.aa:                                            ; preds = %bb.z
  %i.ch = or i64 %1, 1
  %i.ci = tail call range(i64 6, 64) i64 @llvm.ctlz.i64(i64 %i.ch, i1 true)
  %i.cj = trunc nuw nsw i64 %i.ci to i32
  %i.ck = shl nuw nsw i32 %i.cj, 1
  %i.cl = xor i32 %i.ck, 126
  tail call void @_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable9quicksort9quicksortTNtNtNtCs31YAwBA1AlL_19xet_core_structures10merklehash9data_hash8DataHashINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtB1c_14metadata_shard12xorb_structs11MDBXorbInfoEENCINvMNtB2l_5sliceSB15_7sort_byNCINvXs1o_NtNtNtB2l_11collections5btree3mapINtB4m_8BTreeMapB16_B2g_EINtNtNtNtBa_4iter6traits7collect12FromIteratorB15_E9from_iterINtNtNtB5p_8adapters3map3MapINtNtB6m_6filter6FilterINtB4m_4IterB16_B2g_ENCNvMNtB2S_15shard_in_memoryNtB7w_16MDBInMemoryShard10difference0ENCB7t_s_0EE0E0EB1c_(ptr noalias nofree noundef nonnull align 8 %0, i64 noundef range(i64 0, 230584300921369396) %1, ptr noalias nofree noundef nonnull align 8 %2, i64 noundef range(i64 0, 230584300921369396) %3, i32 noundef %i.cl, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(40) null, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %5) #18, !inline_history !84
  br label %bb.ab

bb.ab:                                            ; preds = %bb.z, %bb.aa
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %bb.ac

bb.ac:                                            ; preds = %bb.a, %bb.ab
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable5drift4sortTNtNtNtCs31YAwBA1AlL_19xet_core_structures10merklehash9data_hash8DataHashNtNtNtB13_14metadata_shard12file_structs11MDBFileInfoENCINvMNtCsexYYUdYSQU6_5alloc5sliceSBW_7sort_byNCINvXs1o_NtNtNtB37_11collections5btree3mapINtB3T_8BTreeMapBX_B27_EINtNtNtNtBa_4iter6traits7collect12FromIteratorBW_E9from_iterINtNtNtB4V_8adapters3map3MapINtNtB5R_6filter6FilterINtB3T_4IterBX_B27_ENCNvMNtB2b_15shard_in_memoryNtB70_16MDBInMemoryShard10differences0_0ENCB6X_s1_0EE0E0EB13_(ptr noalias nofree noundef nonnull align 8 %0, i64 noundef range(i64 0, 50127021939428130) %1, ptr noalias nofree noundef nonnull align 8 %2, i64 noundef range(i64 0, 50127021939428130) %3, i1 noundef zeroext %4, ptr noalias nofree noundef align 8 dereferenceable(8) %5) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [66 x i8], align 1                ; 4 uses
  %i.b = alloca [528 x i8], align 8               ; 4 uses
  %i.c = icmp samesign ult i64 %1, 2
  br i1 %i.c, label %bb.ac, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = udiv i64 4611686018427387904, %1
  %i.e = urem i64 4611686018427387904, %1
  %.not = icmp ne i64 %i.e, 0
  %i.f = zext i1 %.not to i64
  %.sroa.0.0 = add nuw nsw i64 %i.d, %i.f         ; 2 uses
  %i.g = icmp samesign ult i64 %1, 4097
  br i1 %i.g, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.h = tail call noundef i64 @_RNvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable5drift11sqrt_approx(i64 noundef %1)
  br label %bb.e

bb.d:                                             ; preds = %bb.b
  %i.i = lshr i64 %1, 1
  %i.j = sub nuw nsw i64 %1, %i.i
  %..i = tail call noundef i64 @llvm.umin.i64(i64 %i.j, i64 64)
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %.sroa.01.0 = phi i64 [ %..i, %bb.d ], [ %i.h, %bb.c ] ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %.not5.i75 = icmp ugt i64 %.sroa.01.0, 2
  %.not5.i80 = icmp ugt i64 %.sroa.01.0, 2
  br label %bb.f

bb.f:                                             ; preds = %bb.y, %bb.e
  %.sroa.023.0 = phi i64 [ 1, %bb.e ], [ %.sroa.018.0, %bb.y ] ; 3 uses
  %.sroa.09.0 = phi i64 [ 0, %bb.e ], [ %i.cf, %bb.y ] ; 6 uses
  %.sroa.02.0 = phi i64 [ 0, %bb.e ], [ %i.cd, %bb.y ] ; 3 uses
  %i.k = icmp ult i64 %.sroa.09.0, %1             ; 2 uses
  br i1 %i.k, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f, %_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable5drift10create_runTNtNtNtCs31YAwBA1AlL_19xet_core_structures10merklehash9data_hash8DataHashNtNtNtB1a_14metadata_shard12file_structs11MDBFileInfoENCINvMNtCsexYYUdYSQU6_5alloc5sliceSB13_7sort_byNCINvXs1o_NtNtNtB3e_11collections5btree3mapINtB41_8BTreeMapB14_B2e_EINtNtNtNtBa_4iter6traits7collect12FromIteratorB13_E9from_iterINtNtNtB54_8adapters3map3MapINtNtB61_6filter6FilterINtB41_4IterB14_B2e_ENCNvMNtB2i_15shard_in_memoryNtB7b_16MDBInMemoryShard10differences0_0ENCB78_s1_0EE0E0EB1a_.exit
  %.sroa.021.0 = phi i8 [ %i.aw, %_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable5drift10create_runTNtNtNtCs31YAwBA1AlL_19xet_core_structures10merklehash9data_hash8DataHashNtNtNtB1a_14metadata_shard12file_structs11MDBFileInfoENCINvMNtCsexYYUdYSQU6_5alloc5sliceSB13_7sort_byNCINvXs1o_NtNtNtB3e_11collections5btree3mapINtB41_8BTreeMapB14_B2e_EINtNtNtNtBa_4iter6traits7collect12FromIteratorB13_E9from_iterINtNtNtB54_8adapters3map3MapINtNtB61_6filter6FilterINtB41_4IterB14_B2e_ENCNvMNtB2i_15shard_in_memoryNtB7b_16MDBInMemoryShard10differences0_0ENCB78_s1_0EE0E0EB1a_.exit ], [ 0, %bb.f ] ; 2 uses
  %.sroa.018.0 = phi i64 [ %.sroa.0.0.i32, %_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable5drift10create_runTNtNtNtCs31YAwBA1AlL_19xet_core_structures10merklehash9data_hash8DataHashNtNtNtB1a_14metadata_shard12file_structs11MDBFileInfoENCINvMNtCsexYYUdYSQU6_5alloc5sliceSB13_7sort_byNCINvXs1o_NtNtNtB3e_11collections5btree3mapINtB41_8BTreeMapB14_B2e_EINtNtNtNtBa_4iter6traits7collect12FromIteratorB13_E9from_iterINtNtNtB54_8adapters3map3MapINtNtB61_6filter6FilterINtB41_4IterB14_B2e_ENCNvMNtB2i_15shard_in_memoryNtB7b_16MDBInMemoryShard10differences0_0ENCB78_s1_0EE0E0EB1a_.exit ], [ 1, %bb.f ] ; 2 uses
  %i.l = icmp ugt i64 %.sroa.02.0, 1
  br i1 %i.l, label %.lr.ph55, label %._crit_edge

bb.h:                                             ; preds = %bb.f
  %i.m = sub nuw nsw i64 %1, %.sroa.09.0          ; 11 uses
  %i.n = getelementptr inbounds nuw [184 x i8], ptr %0, i64 %.sroa.09.0 ; 9 uses
  %.not.i31 = icmp ult i64 %i.m, %.sroa.01.0
  br i1 %.not.i31, label %bb.i, label %bb.j

bb.i:                                             ; preds = %_RINvNtNtNtCskKLDkoKarTP_4core5slice4sort6shared17find_existing_runTNtNtNtCs31YAwBA1AlL_19xet_core_structures10merklehash9data_hash8DataHashNtNtNtB19_14metadata_shard12file_structs11MDBFileInfoENCINvMNtCsexYYUdYSQU6_5alloc5sliceSB12_7sort_byNCINvXs1o_NtNtNtB3d_11collections5btree3mapINtB40_8BTreeMapB13_B2d_EINtNtNtNtB8_4iter6traits7collect12FromIteratorB12_E9from_iterINtNtNtB53_8adapters3map3MapINtNtB60_6filter6FilterINtB40_4IterB13_B2d_ENCNvMNtB2h_15shard_in_memoryNtB7a_16MDBInMemoryShard10differences0_0ENCB77_s1_0EE0E0EB19_.exit.i.thread78, %_RINvNtNtNtCskKLDkoKarTP_4core5slice4sort6shared17find_existing_runTNtNtNtCs31YAwBA1AlL_19xet_core_structures10merklehash9data_hash8DataHashNtNtNtB19_14metadata_shard12file_structs11MDBFileInfoENCINvMNtCsexYYUdYSQU6_5alloc5sliceSB12_7sort_byNCINvXs1o_NtNtNtB3d_11collections5btree3mapINtB40_8BTreeMapB13_B2d_EINtNtNtNtB8_4iter6traits7collect12FromIteratorB12_E9from_iterINtNtNtB53_8adapters3map3MapINtNtB60_6filter6FilterINtB40_4IterB13_B2d_ENCNvMNtB2h_15shard_in_memoryNtB7a_16MDBInMemoryShard10differences0_0ENCB77_s1_0EE0E0EB19_.exit.i.thread, %_RINvNtNtNtCskKLDkoKarTP_4core5slice4sort6shared17find_existing_runTNtNtNtCs31YAwBA1AlL_19xet_core_structures10merklehash9data_hash8DataHashNtNtNtB19_14metadata_shard12file_structs11MDBFileInfoENCINvMNtCsexYYUdYSQU6_5alloc5sliceSB12_7sort_byNCINvXs1o_NtNtNtB3d_11collections5btree3mapINtB40_8BTreeMapB13_B2d_EINtNtNtNtB8_4iter6traits7collect12FromIteratorB12_E9from_iterINtNtNtB53_8adapters3map3MapINtNtB60_6filter6FilterINtB40_4IterB13_B2d_ENCNvMNtB2h_15shard_in_memoryNtB7a_16MDBInMemoryShard10differences0_0ENCB77_s1_0EE0E0EB19_.exit.i, %bb.h
  br i1 %4, label %bb.p, label %bb.o

bb.j:                                             ; preds = %bb.h
  %i.o = icmp samesign ult i64 %i.m, 2
  br i1 %i.o, label %_RNvMNtCskKLDkoKarTP_4core5sliceSTNtNtNtCs31YAwBA1AlL_19xet_core_structures10merklehash9data_hash8DataHashNtNtNtBB_14metadata_shard12file_structs11MDBFileInfoE7reverseBB_.exit, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.p = getelementptr inbounds nuw i8, ptr %i.n, i64 184
  %i.q = tail call noundef range(i8 -1, 2) i8 @_RNvXs9_NtNtCs31YAwBA1AlL_19xet_core_structures10merklehash9data_hashNtB5_8DataHashNtNtCskKLDkoKarTP_4core3cmp3Ord3cmp(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(184) %i.p, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(184) %i.n), !noalias !91
  %i.r = icmp ne i8 %i.q, -1                      ; 2 uses
  %.not62 = icmp eq i64 %i.m, 2                   ; 2 uses
  br i1 %i.r, label %.preheader43, label %.preheader

.preheader43:                                     ; preds = %bb.k
  br i1 %.not62, label %_RINvNtNtNtCskKLDkoKarTP_4core5slice4sort6shared17find_existing_runTNtNtNtCs31YAwBA1AlL_19xet_core_structures10merklehash9data_hash8DataHashNtNtNtB19_14metadata_shard12file_structs11MDBFileInfoENCINvMNtCsexYYUdYSQU6_5alloc5sliceSB12_7sort_byNCINvXs1o_NtNtNtB3d_11collections5btree3mapINtB40_8BTreeMapB13_B2d_EINtNtNtNtB8_4iter6traits7collect12FromIteratorB12_E9from_iterINtNtNtB53_8adapters3map3MapINtNtB60_6filter6FilterINtB40_4IterB13_B2d_ENCNvMNtB2h_15shard_in_memoryNtB7a_16MDBInMemoryShard10differences0_0ENCB77_s1_0EE0E0EB19_.exit.i.thread, label %.lr.ph

.preheader:                                       ; preds = %bb.k
  br i1 %.not62, label %_RINvNtNtNtCskKLDkoKarTP_4core5slice4sort6shared17find_existing_runTNtNtNtCs31YAwBA1AlL_19xet_core_structures10merklehash9data_hash8DataHashNtNtNtB19_14metadata_shard12file_structs11MDBFileInfoENCINvMNtCsexYYUdYSQU6_5alloc5sliceSB12_7sort_byNCINvXs1o_NtNtNtB3d_11collections5btree3mapINtB40_8BTreeMapB13_B2d_EINtNtNtNtB8_4iter6traits7collect12FromIteratorB12_E9from_iterINtNtNtB53_8adapters3map3MapINtNtB60_6filter6FilterINtB40_4IterB13_B2d_ENCNvMNtB2h_15shard_in_memoryNtB7a_16MDBInMemoryShard10differences0_0ENCB77_s1_0EE0E0EB19_.exit.i.thread78, label %.lr.ph49

.lr.ph:                                           ; preds = %.preheader43, %bb.l
  %.sroa.01.0.i.i45 = phi i64 [ %i.v, %bb.l ], [ 2, %.preheader43 ] ; 4 uses
  %i.s = getelementptr inbounds nuw [184 x i8], ptr %i.n, i64 %.sroa.01.0.i.i45
  %6 = getelementptr [184 x i8], ptr %i.n, i64 %.sroa.01.0.i.i45
  %7 = getelementptr i8, ptr %6, i64 -184
  %i.t = tail call noundef range(i8 -1, 2) i8 @_RNvXs9_NtNtCs31YAwBA1AlL_19xet_core_structures10merklehash9data_hashNtB5_8DataHashNtNtCskKLDkoKarTP_4core3cmp3Ord3cmp(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(184) %i.s, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(184) %7), !noalias !91
  %i.u = icmp eq i8 %i.t, -1
  br i1 %i.u, label %_RINvNtNtNtCskKLDkoKarTP_4core5slice4sort6shared17find_existing_runTNtNtNtCs31YAwBA1AlL_19xet_core_structures10merklehash9data_hash8DataHashNtNtNtB19_14metadata_shard12file_structs11MDBFileInfoENCINvMNtCsexYYUdYSQU6_5alloc5sliceSB12_7sort_byNCINvXs1o_NtNtNtB3d_11collections5btree3mapINtB40_8BTreeMapB13_B2d_EINtNtNtNtB8_4iter6traits7collect12FromIteratorB12_E9from_iterINtNtNtB53_8adapters3map3MapINtNtB60_6filter6FilterINtB40_4IterB13_B2d_ENCNvMNtB2h_15shard_in_memoryNtB7a_16MDBInMemoryShard10differences0_0ENCB77_s1_0EE0E0EB19_.exit.i, label %bb.l

bb.l:                                             ; preds = %.lr.ph
  %i.v = add nuw i64 %.sroa.01.0.i.i45, 1         ; 2 uses
  %exitcond.not = icmp eq i64 %i.v, %i.m
  br i1 %exitcond.not, label %_RINvNtNtNtCskKLDkoKarTP_4core5slice4sort6shared17find_existing_runTNtNtNtCs31YAwBA1AlL_19xet_core_structures10merklehash9data_hash8DataHashNtNtNtB19_14metadata_shard12file_structs11MDBFileInfoENCINvMNtCsexYYUdYSQU6_5alloc5sliceSB12_7sort_byNCINvXs1o_NtNtNtB3d_11collections5btree3mapINtB40_8BTreeMapB13_B2d_EINtNtNtNtB8_4iter6traits7collect12FromIteratorB12_E9from_iterINtNtNtB53_8adapters3map3MapINtNtB60_6filter6FilterINtB40_4IterB13_B2d_ENCNvMNtB2h_15shard_in_memoryNtB7a_16MDBInMemoryShard10differences0_0ENCB77_s1_0EE0E0EB19_.exit.i, label %.lr.ph

.lr.ph49:                                         ; preds = %.preheader, %bb.m
  %.sroa.01.1.i.i48 = phi i64 [ %i.z, %bb.m ], [ 2, %.preheader ] ; 4 uses
  %i.w = getelementptr inbounds nuw [184 x i8], ptr %i.n, i64 %.sroa.01.1.i.i48
  %8 = getelementptr [184 x i8], ptr %i.n, i64 %.sroa.01.1.i.i48
  %9 = getelementptr i8, ptr %8, i64 -184
  %i.x = tail call noundef range(i8 -1, 2) i8 @_RNvXs9_NtNtCs31YAwBA1AlL_19xet_core_structures10merklehash9data_hashNtB5_8DataHashNtNtCskKLDkoKarTP_4core3cmp3Ord3cmp(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(184) %i.w, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(184) %9), !noalias !91
  %i.y = icmp eq i8 %i.x, -1
  br i1 %i.y, label %bb.m, label %_RINvNtNtNtCskKLDkoKarTP_4core5slice4sort6shared17find_existing_runTNtNtNtCs31YAwBA1AlL_19xet_core_structures10merklehash9data_hash8DataHashNtNtNtB19_14metadata_shard12file_structs11MDBFileInfoENCINvMNtCsexYYUdYSQU6_5alloc5sliceSB12_7sort_byNCINvXs1o_NtNtNtB3d_11collections5btree3mapINtB40_8BTreeMapB13_B2d_EINtNtNtNtB8_4iter6traits7collect12FromIteratorB12_E9from_iterINtNtNtB53_8adapters3map3MapINtNtB60_6filter6FilterINtB40_4IterB13_B2d_ENCNvMNtB2h_15shard_in_memoryNtB7a_16MDBInMemoryShard10differences0_0ENCB77_s1_0EE0E0EB19_.exit.i

bb.m:                                             ; preds = %.lr.ph49
  %i.z = add nuw i64 %.sroa.01.1.i.i48, 1         ; 2 uses
  %exitcond65.not = icmp eq i64 %i.z, %i.m
  br i1 %exitcond65.not, label %_RINvNtNtNtCskKLDkoKarTP_4core5slice4sort6shared17find_existing_runTNtNtNtCs31YAwBA1AlL_19xet_core_structures10merklehash9data_hash8DataHashNtNtNtB19_14metadata_shard12file_structs11MDBFileInfoENCINvMNtCsexYYUdYSQU6_5alloc5sliceSB12_7sort_byNCINvXs1o_NtNtNtB3d_11collections5btree3mapINtB40_8BTreeMapB13_B2d_EINtNtNtNtB8_4iter6traits7collect12FromIteratorB12_E9from_iterINtNtNtB53_8adapters3map3MapINtNtB60_6filter6FilterINtB40_4IterB13_B2d_ENCNvMNtB2h_15shard_in_memoryNtB7a_16MDBInMemoryShard10differences0_0ENCB77_s1_0EE0E0EB19_.exit.i, label %.lr.ph49

_RINvNtNtNtCskKLDkoKarTP_4core5slice4sort6shared17find_existing_runTNtNtNtCs31YAwBA1AlL_19xet_core_structures10merklehash9data_hash8DataHashNtNtNtB19_14metadata_shard12file_structs11MDBFileInfoENCINvMNtCsexYYUdYSQU6_5alloc5sliceSB12_7sort_byNCINvXs1o_NtNtNtB3d_11collections5btree3mapINtB40_8BTreeMapB13_B2d_EINtNtNtNtB8_4iter6traits7collect12FromIteratorB12_E9from_iterINtNtNtB53_8adapters3map3MapINtNtB60_6filter6FilterINtB40_4IterB13_B2d_ENCNvMNtB2h_15shard_in_memoryNtB7a_16MDBInMemoryShard10differences0_0ENCB77_s1_0EE0E0EB19_.exit.i: ; preds = %bb.m, %.lr.ph49, %bb.l, %.lr.ph
  %.sroa.0.0.i.i = phi i64 [ %.sroa.01.0.i.i45, %.lr.ph ], [ %i.m, %bb.l ], [ %.sroa.01.1.i.i48, %.lr.ph49 ], [ %i.m, %bb.m ] ; 5 uses
  %i.aa = icmp samesign ule i64 %.sroa.0.0.i.i, %i.m
  tail call void @llvm.assume(i1 %i.aa)
  %.not5.i = icmp ult i64 %.sroa.0.0.i.i, %.sroa.01.0
  br i1 %.not5.i, label %bb.i, label %bb.n

_RINvNtNtNtCskKLDkoKarTP_4core5slice4sort6shared17find_existing_runTNtNtNtCs31YAwBA1AlL_19xet_core_structures10merklehash9data_hash8DataHashNtNtNtB19_14metadata_shard12file_structs11MDBFileInfoENCINvMNtCsexYYUdYSQU6_5alloc5sliceSB12_7sort_byNCINvXs1o_NtNtNtB3d_11collections5btree3mapINtB40_8BTreeMapB13_B2d_EINtNtNtNtB8_4iter6traits7collect12FromIteratorB12_E9from_iterINtNtNtB53_8adapters3map3MapINtNtB60_6filter6FilterINtB40_4IterB13_B2d_ENCNvMNtB2h_15shard_in_memoryNtB7a_16MDBInMemoryShard10differences0_0ENCB77_s1_0EE0E0EB19_.exit.i.thread78: ; preds = %.preheader
  br i1 %.not5.i80, label %bb.i, label %.lr.ph.preheader.i.i

_RINvNtNtNtCskKLDkoKarTP_4core5slice4sort6shared17find_existing_runTNtNtNtCs31YAwBA1AlL_19xet_core_structures10merklehash9data_hash8DataHashNtNtNtB19_14metadata_shard12file_structs11MDBFileInfoENCINvMNtCsexYYUdYSQU6_5alloc5sliceSB12_7sort_byNCINvXs1o_NtNtNtB3d_11collections5btree3mapINtB40_8BTreeMapB13_B2d_EINtNtNtNtB8_4iter6traits7collect12FromIteratorB12_E9from_iterINtNtNtB53_8adapters3map3MapINtNtB60_6filter6FilterINtB40_4IterB13_B2d_ENCNvMNtB2h_15shard_in_memoryNtB7a_16MDBInMemoryShard10differences0_0ENCB77_s1_0EE0E0EB19_.exit.i.thread: ; preds = %.preheader43
  br i1 %.not5.i75, label %bb.i, label %_RNvMNtCskKLDkoKarTP_4core5sliceSTNtNtNtCs31YAwBA1AlL_19xet_core_structures10merklehash9data_hash8DataHashNtNtNtBB_14metadata_shard12file_structs11MDBFileInfoE7reverseBB_.exit

bb.n:                                             ; preds = %_RINvNtNtNtCskKLDkoKarTP_4core5slice4sort6shared17find_existing_runTNtNtNtCs31YAwBA1AlL_19xet_core_structures10merklehash9data_hash8DataHashNtNtNtB19_14metadata_shard12file_structs11MDBFileInfoENCINvMNtCsexYYUdYSQU6_5alloc5sliceSB12_7sort_byNCINvXs1o_NtNtNtB3d_11collections5btree3mapINtB40_8BTreeMapB13_B2d_EINtNtNtNtB8_4iter6traits7collect12FromIteratorB12_E9from_iterINtNtNtB53_8adapters3map3MapINtNtB60_6filter6FilterINtB40_4IterB13_B2d_ENCNvMNtB2h_15shard_in_memoryNtB7a_16MDBInMemoryShard10differences0_0ENCB77_s1_0EE0E0EB19_.exit.i
  %i.ab = lshr i64 %.sroa.0.0.i.i, 1              ; 2 uses
  %.not.i.i = icmp eq i64 %i.ab, 0
  %or.cond = or i1 %i.r, %.not.i.i
  br i1 %or.cond, label %_RNvMNtCskKLDkoKarTP_4core5sliceSTNtNtNtCs31YAwBA1AlL_19xet_core_structures10merklehash9data_hash8DataHashNtNtNtBB_14metadata_shard12file_structs11MDBFileInfoE7reverseBB_.exit, label %.lr.ph.preheader.i.i

bb.o:                                             ; preds = %bb.i
  %..i34 = tail call noundef i64 @llvm.umin.i64(i64 range(i64 0, 50127021939428130) %i.m, i64 %.sroa.01.0)
  %i.ac = shl nuw nsw i64 %..i34, 1
  br label %_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable5drift10create_runTNtNtNtCs31YAwBA1AlL_19xet_core_structures10merklehash9data_hash8DataHashNtNtNtB1a_14metadata_shard12file_structs11MDBFileInfoENCINvMNtCsexYYUdYSQU6_5alloc5sliceSB13_7sort_byNCINvXs1o_NtNtNtB3e_11collections5btree3mapINtB41_8BTreeMapB14_B2e_EINtNtNtNtBa_4iter6traits7collect12FromIteratorB13_E9from_iterINtNtNtB54_8adapters3map3MapINtNtB61_6filter6FilterINtB41_4IterB14_B2e_ENCNvMNtB2i_15shard_in_memoryNtB7b_16MDBInMemoryShard10differences0_0ENCB78_s1_0EE0E0EB1a_.exit

bb.p:                                             ; preds = %bb.i
  %..i33 = tail call noundef i64 @llvm.umin.i64(i64 range(i64 0, 50127021939428130) %i.m, i64 32) ; 2 uses
  tail call void @_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable9quicksort9quicksortTNtNtNtCs31YAwBA1AlL_19xet_core_structures10merklehash9data_hash8DataHashNtNtNtB1c_14metadata_shard12file_structs11MDBFileInfoENCINvMNtCsexYYUdYSQU6_5alloc5sliceSB15_7sort_byNCINvXs1o_NtNtNtB3g_11collections5btree3mapINtB43_8BTreeMapB16_B2g_EINtNtNtNtBa_4iter6traits7collect12FromIteratorB15_E9from_iterINtNtNtB56_8adapters3map3MapINtNtB63_6filter6FilterINtB43_4IterB16_B2g_ENCNvMNtB2k_15shard_in_memoryNtB7d_16MDBInMemoryShard10differences0_0ENCB7a_s1_0EE0E0EB1c_(ptr noalias nofree noundef nonnull align 8 %i.n, i64 noundef %..i33, ptr noalias nofree noundef nonnull align 8 %2, i64 noundef range(i64 0, 50127021939428130) %3, i32 noundef 0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(184) null, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %5) #18, !inline_history !89
  %i.ad = shl nuw nsw i64 %..i33, 1
  %i.ae = or disjoint i64 %i.ad, 1
  br label %_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable5drift10create_runTNtNtNtCs31YAwBA1AlL_19xet_core_structures10merklehash9data_hash8DataHashNtNtNtB1a_14metadata_shard12file_structs11MDBFileInfoENCINvMNtCsexYYUdYSQU6_5alloc5sliceSB13_7sort_byNCINvXs1o_NtNtNtB3e_11collections5btree3mapINtB41_8BTreeMapB14_B2e_EINtNtNtNtBa_4iter6traits7collect12FromIteratorB13_E9from_iterINtNtNtB54_8adapters3map3MapINtNtB61_6filter6FilterINtB41_4IterB14_B2e_ENCNvMNtB2i_15shard_in_memoryNtB7b_16MDBInMemoryShard10differences0_0ENCB78_s1_0EE0E0EB1a_.exit

_RNvMNtCskKLDkoKarTP_4core5sliceSTNtNtNtCs31YAwBA1AlL_19xet_core_structures10merklehash9data_hash8DataHashNtNtNtBB_14metadata_shard12file_structs11MDBFileInfoE7reverseBB_.exit: ; preds = %_RINvNtCskKLDkoKarTP_4core10intrinsics25typed_swap_nonoverlappingTNtNtNtCs31YAwBA1AlL_19xet_core_structures10merklehash9data_hash8DataHashNtNtNtB17_14metadata_shard12file_structs11MDBFileInfoEEB17_.exit.i.i, %_RINvNtNtNtCskKLDkoKarTP_4core5slice4sort6shared17find_existing_runTNtNtNtCs31YAwBA1AlL_19xet_core_structures10merklehash9data_hash8DataHashNtNtNtB19_14metadata_shard12file_structs11MDBFileInfoENCINvMNtCsexYYUdYSQU6_5alloc5sliceSB12_7sort_byNCINvXs1o_NtNtNtB3d_11collections5btree3mapINtB40_8BTreeMapB13_B2d_EINtNtNtNtB8_4iter6traits7collect12FromIteratorB12_E9from_iterINtNtNtB53_8adapters3map3MapINtNtB60_6filter6FilterINtB40_4IterB13_B2d_ENCNvMNtB2h_15shard_in_memoryNtB7a_16MDBInMemoryShard10differences0_0ENCB77_s1_0EE0E0EB19_.exit.i.thread, %bb.j, %bb.n
  %.sroa.0.0.i.i3942 = phi i64 [ %i.m, %bb.j ], [ %.sroa.0.0.i.i, %bb.n ], [ 2, %_RINvNtNtNtCskKLDkoKarTP_4core5slice4sort6shared17find_existing_runTNtNtNtCs31YAwBA1AlL_19xet_core_structures10merklehash9data_hash8DataHashNtNtNtB19_14metadata_shard12file_structs11MDBFileInfoENCINvMNtCsexYYUdYSQU6_5alloc5sliceSB12_7sort_byNCINvXs1o_NtNtNtB3d_11collections5btree3mapINtB40_8BTreeMapB13_B2d_EINtNtNtNtB8_4iter6traits7collect12FromIteratorB12_E9from_iterINtNtNtB53_8adapters3map3MapINtNtB60_6filter6FilterINtB40_4IterB13_B2d_ENCNvMNtB2h_15shard_in_memoryNtB7a_16MDBInMemoryShard10differences0_0ENCB77_s1_0EE0E0EB19_.exit.i.thread ], [ %.sroa.0.0.i.i768387, %_RINvNtCskKLDkoKarTP_4core10intrinsics25typed_swap_nonoverlappingTNtNtNtCs31YAwBA1AlL_19xet_core_structures10merklehash9data_hash8DataHashNtNtNtB17_14metadata_shard12file_structs11MDBFileInfoEEB17_.exit.i.i ]
  %i.af = shl nuw nsw i64 %.sroa.0.0.i.i3942, 1
  %i.ag = or disjoint i64 %i.af, 1
  br label %_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable5drift10create_runTNtNtNtCs31YAwBA1AlL_19xet_core_structures10merklehash9data_hash8DataHashNtNtNtB1a_14metadata_shard12file_structs11MDBFileInfoENCINvMNtCsexYYUdYSQU6_5alloc5sliceSB13_7sort_byNCINvXs1o_NtNtNtB3e_11collections5btree3mapINtB41_8BTreeMapB14_B2e_EINtNtNtNtBa_4iter6traits7collect12FromIteratorB13_E9from_iterINtNtNtB54_8adapters3map3MapINtNtB61_6filter6FilterINtB41_4IterB14_B2e_ENCNvMNtB2i_15shard_in_memoryNtB7b_16MDBInMemoryShard10differences0_0ENCB78_s1_0EE0E0EB1a_.exit

.lr.ph.preheader.i.i:                             ; preds = %bb.n, %_RINvNtNtNtCskKLDkoKarTP_4core5slice4sort6shared17find_existing_runTNtNtNtCs31YAwBA1AlL_19xet_core_structures10merklehash9data_hash8DataHashNtNtNtB19_14metadata_shard12file_structs11MDBFileInfoENCINvMNtCsexYYUdYSQU6_5alloc5sliceSB12_7sort_byNCINvXs1o_NtNtNtB3d_11collections5btree3mapINtB40_8BTreeMapB13_B2d_EINtNtNtNtB8_4iter6traits7collect12FromIteratorB12_E9from_iterINtNtNtB53_8adapters3map3MapINtNtB60_6filter6FilterINtB40_4IterB13_B2d_ENCNvMNtB2h_15shard_in_memoryNtB7a_16MDBInMemoryShard10differences0_0ENCB77_s1_0EE0E0EB19_.exit.i.thread78
  %i.ah = phi i64 [ %i.ab, %bb.n ], [ 1, %_RINvNtNtNtCskKLDkoKarTP_4core5slice4sort6shared17find_existing_runTNtNtNtCs31YAwBA1AlL_19xet_core_structures10merklehash9data_hash8DataHashNtNtNtB19_14metadata_shard12file_structs11MDBFileInfoENCINvMNtCsexYYUdYSQU6_5alloc5sliceSB12_7sort_byNCINvXs1o_NtNtNtB3d_11collections5btree3mapINtB40_8BTreeMapB13_B2d_EINtNtNtNtB8_4iter6traits7collect12FromIteratorB12_E9from_iterINtNtNtB53_8adapters3map3MapINtNtB60_6filter6FilterINtB40_4IterB13_B2d_ENCNvMNtB2h_15shard_in_memoryNtB7a_16MDBInMemoryShard10differences0_0ENCB77_s1_0EE0E0EB19_.exit.i.thread78 ]
  %.sroa.0.0.i.i768387 = phi i64 [ %.sroa.0.0.i.i, %bb.n ], [ 2, %_RINvNtNtNtCskKLDkoKarTP_4core5slice4sort6shared17find_existing_runTNtNtNtCs31YAwBA1AlL_19xet_core_structures10merklehash9data_hash8DataHashNtNtNtB19_14metadata_shard12file_structs11MDBFileInfoENCINvMNtCsexYYUdYSQU6_5alloc5sliceSB12_7sort_byNCINvXs1o_NtNtNtB3d_11collections5btree3mapINtB40_8BTreeMapB13_B2d_EINtNtNtNtB8_4iter6traits7collect12FromIteratorB12_E9from_iterINtNtNtB53_8adapters3map3MapINtNtB60_6filter6FilterINtB40_4IterB13_B2d_ENCNvMNtB2h_15shard_in_memoryNtB7a_16MDBInMemoryShard10differences0_0ENCB77_s1_0EE0E0EB19_.exit.i.thread78 ] ; 2 uses
  %i.ai = getelementptr inbounds nuw [184 x i8], ptr %i.n, i64 %.sroa.0.0.i.i768387
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %_RINvNtCskKLDkoKarTP_4core10intrinsics25typed_swap_nonoverlappingTNtNtNtCs31YAwBA1AlL_19xet_core_structures10merklehash9data_hash8DataHashNtNtNtB17_14metadata_shard12file_structs11MDBFileInfoEEB17_.exit.i.i, %.lr.ph.preheader.i.i
  %.sroa.0.017.i.i = phi i64 [ %i.an, %_RINvNtCskKLDkoKarTP_4core10intrinsics25typed_swap_nonoverlappingTNtNtNtCs31YAwBA1AlL_19xet_core_structures10merklehash9data_hash8DataHashNtNtNtB17_14metadata_shard12file_structs11MDBFileInfoEEB17_.exit.i.i ], [ 0, %.lr.ph.preheader.i.i ] ; 3 uses
  %i.aj = xor i64 %.sroa.0.017.i.i, -1
  %i.ak = getelementptr inbounds nuw [184 x i8], ptr %i.n, i64 %.sroa.0.017.i.i
  %i.al = getelementptr [184 x i8], ptr %i.ai, i64 %i.aj
  invoke void @_RINvNvNtCskKLDkoKarTP_4core3ptr25swap_nonoverlapping_bytes26swap_nonoverlapping_chunksKj8_ECs31YAwBA1AlL_19xet_core_structures(ptr noundef nonnull %i.ak, ptr noundef nonnull %i.al, i64 noundef 23)
          to label %_RINvNtCskKLDkoKarTP_4core10intrinsics25typed_swap_nonoverlappingTNtNtNtCs31YAwBA1AlL_19xet_core_structures10merklehash9data_hash8DataHashNtNtNtB17_14metadata_shard12file_structs11MDBFileInfoEEB17_.exit.i.i unwind label %bb.q, !noalias !91

bb.q:                                             ; preds = %.lr.ph.i.i
  %i.am = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking19panic_cannot_unwind() #16, !noalias !91
  unreachable

_RINvNtCskKLDkoKarTP_4core10intrinsics25typed_swap_nonoverlappingTNtNtNtCs31YAwBA1AlL_19xet_core_structures10merklehash9data_hash8DataHashNtNtNtB17_14metadata_shard12file_structs11MDBFileInfoEEB17_.exit.i.i: ; preds = %.lr.ph.i.i
  %i.an = add nuw nsw i64 %.sroa.0.017.i.i, 1     ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %i.an, %i.ah
  br i1 %exitcond.not.i.i, label %_RNvMNtCskKLDkoKarTP_4core5sliceSTNtNtNtCs31YAwBA1AlL_19xet_core_structures10merklehash9data_hash8DataHashNtNtNtBB_14metadata_shard12file_structs11MDBFileInfoE7reverseBB_.exit, label %.lr.ph.i.i

_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable5drift10create_runTNtNtNtCs31YAwBA1AlL_19xet_core_structures10merklehash9data_hash8DataHashNtNtNtB1a_14metadata_shard12file_structs11MDBFileInfoENCINvMNtCsexYYUdYSQU6_5alloc5sliceSB13_7sort_byNCINvXs1o_NtNtNtB3e_11collections5btree3mapINtB41_8BTreeMapB14_B2e_EINtNtNtNtBa_4iter6traits7collect12FromIteratorB13_E9from_iterINtNtNtB54_8adapters3map3MapINtNtB61_6filter6FilterINtB41_4IterB14_B2e_ENCNvMNtB2i_15shard_in_memoryNtB7b_16MDBInMemoryShard10differences0_0ENCB78_s1_0EE0E0EB1a_.exit: ; preds = %bb.o, %bb.p, %_RNvMNtCskKLDkoKarTP_4core5sliceSTNtNtNtCs31YAwBA1AlL_19xet_core_structures10merklehash9data_hash8DataHashNtNtNtBB_14metadata_shard12file_structs11MDBFileInfoE7reverseBB_.exit
  %.sroa.0.0.i32 = phi i64 [ %i.ag, %_RNvMNtCskKLDkoKarTP_4core5sliceSTNtNtNtCs31YAwBA1AlL_19xet_core_structures10merklehash9data_hash8DataHashNtNtNtBB_14metadata_shard12file_structs11MDBFileInfoE7reverseBB_.exit ], [ %i.ae, %bb.p ], [ %i.ac, %bb.o ] ; 2 uses
  %i.ao = lshr i64 %.sroa.023.0, 1
  %i.ap = lshr i64 %.sroa.0.0.i32, 1
  %factor = shl nuw nsw i64 %.sroa.09.0, 1        ; 2 uses
  %i.aq = sub nsw i64 %factor, %i.ao
  %i.ar = add nuw nsw i64 %i.ap, %factor
  %i.as = mul i64 %i.aq, %.sroa.0.0
  %i.at = mul i64 %i.ar, %.sroa.0.0
  %i.au = xor i64 %i.at, %i.as
  %i.av = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.au, i1 false)
  %i.aw = trunc nuw nsw i64 %i.av to i8
  br label %bb.g

.lr.ph55:                                         ; preds = %bb.g, %_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable5drift13logical_mergeTNtNtNtCs31YAwBA1AlL_19xet_core_structures10merklehash9data_hash8DataHashNtNtNtB1d_14metadata_shard12file_structs11MDBFileInfoENCINvMNtCsexYYUdYSQU6_5alloc5sliceSB16_7sort_byNCINvXs1o_NtNtNtB3h_11collections5btree3mapINtB44_8BTreeMapB17_B2h_EINtNtNtNtBa_4iter6traits7collect12FromIteratorB16_E9from_iterINtNtNtB57_8adapters3map3MapINtNtB64_6filter6FilterINtB44_4IterB17_B2h_ENCNvMNtB2l_15shard_in_memoryNtB7e_16MDBInMemoryShard10differences0_0ENCB7b_s1_0EE0E0EB1d_.exit
  %.sroa.02.154 = phi i64 [ %i.ax, %_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable5drift13logical_mergeTNtNtNtCs31YAwBA1AlL_19xet_core_structures10merklehash9data_hash8DataHashNtNtNtB1d_14metadata_shard12file_structs11MDBFileInfoENCINvMNtCsexYYUdYSQU6_5alloc5sliceSB16_7sort_byNCINvXs1o_NtNtNtB3h_11collections5btree3mapINtB44_8BTreeMapB17_B2h_EINtNtNtNtBa_4iter6traits7collect12FromIteratorB16_E9from_iterINtNtNtB57_8adapters3map3MapINtNtB64_6filter6FilterINtB44_4IterB17_B2h_ENCNvMNtB2l_15shard_in_memoryNtB7e_16MDBInMemoryShard10differences0_0ENCB7b_s1_0EE0E0EB1d_.exit ], [ %.sroa.02.0, %bb.g ] ; 2 uses
  %.sroa.023.153 = phi i64 [ %.sroa.0.0.i, %_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable5drift13logical_mergeTNtNtNtCs31YAwBA1AlL_19xet_core_structures10merklehash9data_hash8DataHashNtNtNtB1d_14metadata_shard12file_structs11MDBFileInfoENCINvMNtCsexYYUdYSQU6_5alloc5sliceSB16_7sort_byNCINvXs1o_NtNtNtB3h_11collections5btree3mapINtB44_8BTreeMapB17_B2h_EINtNtNtNtBa_4iter6traits7collect12FromIteratorB16_E9from_iterINtNtNtB57_8adapters3map3MapINtNtB64_6filter6FilterINtB44_4IterB17_B2h_ENCNvMNtB2l_15shard_in_memoryNtB7e_16MDBInMemoryShard10differences0_0ENCB7b_s1_0EE0E0EB1d_.exit ], [ %.sroa.023.0, %bb.g ] ; 4 uses
  %i.ax = add i64 %.sroa.02.154, -1               ; 4 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.ax
  %i.az = load i8, ptr %i.ay, align 1, !noundef !4
  %.not28 = icmp ult i8 %i.az, %.sroa.021.0
  br i1 %.not28, label %._crit_edge, label %bb.r

._crit_edge:                                      ; preds = %_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable5drift13logical_mergeTNtNtNtCs31YAwBA1AlL_19xet_core_structures10merklehash9data_hash8DataHashNtNtNtB1d_14metadata_shard12file_structs11MDBFileInfoENCINvMNtCsexYYUdYSQU6_5alloc5sliceSB16_7sort_byNCINvXs1o_NtNtNtB3h_11collections5btree3mapINtB44_8BTreeMapB17_B2h_EINtNtNtNtBa_4iter6traits7collect12FromIteratorB16_E9from_iterINtNtNtB57_8adapters3map3MapINtNtB64_6filter6FilterINtB44_4IterB17_B2h_ENCNvMNtB2l_15shard_in_memoryNtB7e_16MDBInMemoryShard10differences0_0ENCB7b_s1_0EE0E0EB1d_.exit, %.lr.ph55, %bb.g
  %.sroa.023.1.lcssa = phi i64 [ %.sroa.023.0, %bb.g ], [ %.sroa.023.153, %.lr.ph55 ], [ %.sroa.0.0.i, %_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable5drift13logical_mergeTNtNtNtCs31YAwBA1AlL_19xet_core_structures10merklehash9data_hash8DataHashNtNtNtB1d_14metadata_shard12file_structs11MDBFileInfoENCINvMNtCsexYYUdYSQU6_5alloc5sliceSB16_7sort_byNCINvXs1o_NtNtNtB3h_11collections5btree3mapINtB44_8BTreeMapB17_B2h_EINtNtNtNtBa_4iter6traits7collect12FromIteratorB16_E9from_iterINtNtNtB57_8adapters3map3MapINtNtB64_6filter6FilterINtB44_4IterB17_B2h_ENCNvMNtB2l_15shard_in_memoryNtB7e_16MDBInMemoryShard10differences0_0ENCB7b_s1_0EE0E0EB1d_.exit ] ; 2 uses
  %.sroa.02.1.lcssa = phi i64 [ %.sroa.02.0, %bb.g ], [ %.sroa.02.154, %.lr.ph55 ], [ 1, %_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable5drift13logical_mergeTNtNtNtCs31YAwBA1AlL_19xet_core_structures10merklehash9data_hash8DataHashNtNtNtB1d_14metadata_shard12file_structs11MDBFileInfoENCINvMNtCsexYYUdYSQU6_5alloc5sliceSB16_7sort_byNCINvXs1o_NtNtNtB3h_11collections5btree3mapINtB44_8BTreeMapB17_B2h_EINtNtNtNtBa_4iter6traits7collect12FromIteratorB16_E9from_iterINtNtNtB57_8adapters3map3MapINtNtB64_6filter6FilterINtB44_4IterB17_B2h_ENCNvMNtB2l_15shard_in_memoryNtB7e_16MDBInMemoryShard10differences0_0ENCB7b_s1_0EE0E0EB1d_.exit ] ; 3 uses
  %i.ba = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %.sroa.02.1.lcssa
  store i64 %.sroa.023.1.lcssa, ptr %i.ba, align 8
  %i.bb = getelementptr inbounds nuw i8, ptr %i.a, i64 %.sroa.02.1.lcssa
  store i8 %.sroa.021.0, ptr %i.bb, align 1
  br i1 %i.k, label %bb.y, label %bb.z

bb.r:                                             ; preds = %.lr.ph55
  %i.bc = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %i.ax
  %i.bd = load i64, ptr %i.bc, align 8, !noundef !4 ; 3 uses
  %i.be = lshr i64 %i.bd, 1                       ; 5 uses
  %i.bf = lshr i64 %.sroa.023.153, 1              ; 3 uses
  %i.bg = add nuw i64 %i.be, %i.bf                ; 5 uses
  %i.bh = sub i64 %.sroa.09.0, %i.bg
  %i.bi = getelementptr inbounds nuw [184 x i8], ptr %0, i64 %i.bh ; 3 uses
  %i.bj = icmp samesign ugt i64 %i.bg, %3
  %i.bk = trunc i64 %.sroa.023.153 to i1
  %i.bl = or i64 %i.bd, %.sroa.023.153
  %i.bm = trunc i64 %i.bl to i1
  %or.cond3.i = or i1 %i.bj, %i.bm
  br i1 %or.cond3.i, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
  %i.bn = trunc i64 %i.bd to i1
  br i1 %i.bn, label %bb.u, label %bb.v

bb.t:                                             ; preds = %bb.r
  %i.bo = shl nuw nsw i64 %i.bg, 1
  br label %_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable5drift13logical_mergeTNtNtNtCs31YAwBA1AlL_19xet_core_structures10merklehash9data_hash8DataHashNtNtNtB1d_14metadata_shard12file_structs11MDBFileInfoENCINvMNtCsexYYUdYSQU6_5alloc5sliceSB16_7sort_byNCINvXs1o_NtNtNtB3h_11collections5btree3mapINtB44_8BTreeMapB17_B2h_EINtNtNtNtBa_4iter6traits7collect12FromIteratorB16_E9from_iterINtNtNtB57_8adapters3map3MapINtNtB64_6filter6FilterINtB44_4IterB17_B2h_ENCNvMNtB2l_15shard_in_memoryNtB7e_16MDBInMemoryShard10differences0_0ENCB7b_s1_0EE0E0EB1d_.exit

bb.u:                                             ; preds = %bb.v, %bb.s
  br i1 %i.bk, label %bb.x, label %bb.w

bb.v:                                             ; preds = %bb.s
  %i.bp = or i64 %i.be, 1
  %i.bq = tail call range(i64 8, 64) i64 @llvm.ctlz.i64(i64 %i.bp, i1 true)
  %i.br = trunc nuw nsw i64 %i.bq to i32
  %i.bs = shl nuw nsw i32 %i.br, 1
  %i.bt = xor i32 %i.bs, 126
  tail call void @_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable9quicksort9quicksortTNtNtNtCs31YAwBA1AlL_19xet_core_structures10merklehash9data_hash8DataHashNtNtNtB1c_14metadata_shard12file_structs11MDBFileInfoENCINvMNtCsexYYUdYSQU6_5alloc5sliceSB15_7sort_byNCINvXs1o_NtNtNtB3g_11collections5btree3mapINtB43_8BTreeMapB16_B2g_EINtNtNtNtBa_4iter6traits7collect12FromIteratorB15_E9from_iterINtNtNtB56_8adapters3map3MapINtNtB63_6filter6FilterINtB43_4IterB16_B2g_ENCNvMNtB2k_15shard_in_memoryNtB7d_16MDBInMemoryShard10differences0_0ENCB7a_s1_0EE0E0EB1c_(ptr noalias nofree noundef nonnull align 8 %i.bi, i64 noundef range(i64 0, 50127021939428130) %i.be, ptr noalias nofree noundef nonnull align 8 %2, i64 noundef range(i64 0, 50127021939428130) %3, i32 noundef %i.bt, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(184) null, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %5) #18, !inline_history !90
  br label %bb.u

bb.w:                                             ; preds = %bb.u
  %i.bu = getelementptr inbounds nuw [184 x i8], ptr %i.bi, i64 %i.be
  %i.bv = or i64 %i.bf, 1
  %i.bw = tail call range(i64 8, 64) i64 @llvm.ctlz.i64(i64 %i.bv, i1 true)
  %i.bx = trunc nuw nsw i64 %i.bw to i32
  %i.by = shl nuw nsw i32 %i.bx, 1
  %i.bz = xor i32 %i.by, 126
  tail call void @_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable9quicksort9quicksortTNtNtNtCs31YAwBA1AlL_19xet_core_structures10merklehash9data_hash8DataHashNtNtNtB1c_14metadata_shard12file_structs11MDBFileInfoENCINvMNtCsexYYUdYSQU6_5alloc5sliceSB15_7sort_byNCINvXs1o_NtNtNtB3g_11collections5btree3mapINtB43_8BTreeMapB16_B2g_EINtNtNtNtBa_4iter6traits7collect12FromIteratorB15_E9from_iterINtNtNtB56_8adapters3map3MapINtNtB63_6filter6FilterINtB43_4IterB16_B2g_ENCNvMNtB2k_15shard_in_memoryNtB7d_16MDBInMemoryShard10differences0_0ENCB7a_s1_0EE0E0EB1c_(ptr noalias nofree noundef nonnull align 8 %i.bu, i64 noundef range(i64 0, 50127021939428130) %i.bf, ptr noalias nofree noundef nonnull align 8 %2, i64 noundef range(i64 0, 50127021939428130) %3, i32 noundef %i.bz, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(184) null, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %5) #18, !inline_history !90
  br label %bb.x

bb.x:                                             ; preds = %bb.w, %bb.u
  tail call void @_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable5merge5mergeTNtNtNtCs31YAwBA1AlL_19xet_core_structures10merklehash9data_hash8DataHashNtNtNtB14_14metadata_shard12file_structs11MDBFileInfoENCINvMNtCsexYYUdYSQU6_5alloc5sliceSBX_7sort_byNCINvXs1o_NtNtNtB38_11collections5btree3mapINtB3U_8BTreeMapBY_B28_EINtNtNtNtBa_4iter6traits7collect12FromIteratorBX_E9from_iterINtNtNtB4W_8adapters3map3MapINtNtB5S_6filter6FilterINtB3U_4IterBY_B28_ENCNvMNtB2c_15shard_in_memoryNtB71_16MDBInMemoryShard10differences0_0ENCB6Y_s1_0EE0E0EB14_(ptr noalias nofree noundef nonnull align 8 %i.bi, i64 noundef range(i64 0, 50127021939428130) %i.bg, ptr noalias nofree noundef nonnull align 8 %2, i64 noundef range(i64 0, 50127021939428130) %3, i64 noundef %i.be, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %5)
  %i.ca = shl nuw nsw i64 %i.bg, 1
  %i.cb = or disjoint i64 %i.ca, 1
  br label %_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable5drift13logical_mergeTNtNtNtCs31YAwBA1AlL_19xet_core_structures10merklehash9data_hash8DataHashNtNtNtB1d_14metadata_shard12file_structs11MDBFileInfoENCINvMNtCsexYYUdYSQU6_5alloc5sliceSB16_7sort_byNCINvXs1o_NtNtNtB3h_11collections5btree3mapINtB44_8BTreeMapB17_B2h_EINtNtNtNtBa_4iter6traits7collect12FromIteratorB16_E9from_iterINtNtNtB57_8adapters3map3MapINtNtB64_6filter6FilterINtB44_4IterB17_B2h_ENCNvMNtB2l_15shard_in_memoryNtB7e_16MDBInMemoryShard10differences0_0ENCB7b_s1_0EE0E0EB1d_.exit

_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable5drift13logical_mergeTNtNtNtCs31YAwBA1AlL_19xet_core_structures10merklehash9data_hash8DataHashNtNtNtB1d_14metadata_shard12file_structs11MDBFileInfoENCINvMNtCsexYYUdYSQU6_5alloc5sliceSB16_7sort_byNCINvXs1o_NtNtNtB3h_11collections5btree3mapINtB44_8BTreeMapB17_B2h_EINtNtNtNtBa_4iter6traits7collect12FromIteratorB16_E9from_iterINtNtNtB57_8adapters3map3MapINtNtB64_6filter6FilterINtB44_4IterB17_B2h_ENCNvMNtB2l_15shard_in_memoryNtB7e_16MDBInMemoryShard10differences0_0ENCB7b_s1_0EE0E0EB1d_.exit: ; preds = %bb.t, %bb.x
  %.sroa.0.0.i = phi i64 [ %i.cb, %bb.x ], [ %i.bo, %bb.t ] ; 2 uses
  %i.cc = icmp ugt i64 %i.ax, 1
  br i1 %i.cc, label %.lr.ph55, label %._crit_edge

bb.y:                                             ; preds = %._crit_edge
  %i.cd = add nuw nsw i64 %.sroa.02.1.lcssa, 1
  %i.ce = lshr i64 %.sroa.018.0, 1
  %i.cf = add nuw i64 %i.ce, %.sroa.09.0
  br label %bb.f

bb.z:                                             ; preds = %._crit_edge
  %i.cg = and i64 %.sroa.023.1.lcssa, 1
  %.not30 = icmp eq i64 %i.cg, 0
  br i1 %.not30, label %bb.aa, label %bb.ab

bb.aa:                                            ; preds = %bb.z
  %i.ch = or i64 %1, 1
  %i.ci = tail call range(i64 8, 64) i64 @llvm.ctlz.i64(i64 %i.ch, i1 true)
  %i.cj = trunc nuw nsw i64 %i.ci to i32
  %i.ck = shl nuw nsw i32 %i.cj, 1
  %i.cl = xor i32 %i.ck, 126
  tail call void @_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable9quicksort9quicksortTNtNtNtCs31YAwBA1AlL_19xet_core_structures10merklehash9data_hash8DataHashNtNtNtB1c_14metadata_shard12file_structs11MDBFileInfoENCINvMNtCsexYYUdYSQU6_5alloc5sliceSB15_7sort_byNCINvXs1o_NtNtNtB3g_11collections5btree3mapINtB43_8BTreeMapB16_B2g_EINtNtNtNtBa_4iter6traits7collect12FromIteratorB15_E9from_iterINtNtNtB56_8adapters3map3MapINtNtB63_6filter6FilterINtB43_4IterB16_B2g_ENCNvMNtB2k_15shard_in_memoryNtB7d_16MDBInMemoryShard10differences0_0ENCB7a_s1_0EE0E0EB1c_(ptr noalias nofree noundef nonnull align 8 %0, i64 noundef range(i64 0, 50127021939428130) %1, ptr noalias nofree noundef nonnull align 8 %2, i64 noundef range(i64 0, 50127021939428130) %3, i32 noundef %i.cl, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(184) null, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %5) #18, !inline_history !90
  br label %bb.ab

bb.ab:                                            ; preds = %bb.z, %bb.aa
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %bb.ac

bb.ac:                                            ; preds = %bb.a, %bb.ab
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable5drift4sortTyTmmEENvYBW_NtNtBa_3cmp10PartialOrd2ltECs31YAwBA1AlL_19xet_core_structures(ptr noalias nofree noundef nonnull align 8 %0, i64 noundef range(i64 0, 576460752303423488) %1, ptr noalias nofree noundef nonnull align 8 %2, i64 noundef range(i64 0, 576460752303423488) %3, i1 noundef zeroext %4, ptr noalias nofree noundef nonnull %5) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [66 x i8], align 1                ; 4 uses
  %i.b = alloca [528 x i8], align 8               ; 4 uses
  %i.c = icmp samesign ult i64 %1, 2
  br i1 %i.c, label %bb.ad, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = udiv i64 4611686018427387904, %1
  %i.e = urem i64 4611686018427387904, %1
  %.not = icmp ne i64 %i.e, 0
  %i.f = zext i1 %.not to i64
end_hunk_0
