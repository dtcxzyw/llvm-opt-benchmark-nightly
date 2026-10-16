Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/qdrant-rs/original/qdrant.qdrant.3f8cc1c7dccbb09-cgu.114?download=true
inline.NumInlined: 605
inline.NumDeleted: 263
begin_hunk_0_@_RINvXss_NtNtNtCshMzyYDJGtjv_3api4grpc6qdrant23points_update_operationNtB6_13UpdateVectorsNtNtCs4J2qyOfMFpM_5prost7message7Message11merge_fieldQQNtNtNtCsgOCJwUSa4vG_5tonic5codec6buffer9DecodeBufECsl8OoimOLbh_6qdrant:bb.a

bb.m:                                             ; preds = %bb.l
  %i.o = landingpad { ptr, i32 }
          cleanup
  %.val.i13 = load ptr, ptr %i.b, align 8, !noalias !1090, !nonnull !7, !noundef !7
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCs4J2qyOfMFpM_5prost5error11DecodeErrorECsl8OoimOLbh_6qdrant(ptr nonnull %.val.i13) #19
          to label %common.resume unwind label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.p = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #18
  unreachable

_RNCINvXss_NtNtNtCshMzyYDJGtjv_3api4grpc6qdrant23points_update_operationNtB8_13UpdateVectorsNtNtCs4J2qyOfMFpM_5prost7message7Message11merge_fieldQQNtNtNtCsgOCJwUSa4vG_5tonic5codec6buffer9DecodeBufEs_0Csl8OoimOLbh_6qdrant.exit: ; preds = %bb.l
  %i.q = load ptr, ptr %i.b, align 8, !noalias !1090, !nonnull !7, !align !17, !noundef !7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %bb.k

bb.o:                                             ; preds = %_RINvMNtCskKLDkoKarTP_4core6optionINtB3_6OptionNtNtNtCshMzyYDJGtjv_3api4grpc6qdrant6FilterE18get_or_insert_withNvYBI_NtNtB5_7default7Default7defaultECsl8OoimOLbh_6qdrant.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %i.k, ptr %i.a, align 8, !noalias !1091
  invoke void @_RNvMNtCs4J2qyOfMFpM_5prost5errorNtB2_11DecodeError4push(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.a, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @31, i64 noundef 13, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @19, i64 noundef 13)
          to label %_RNCINvXss_NtNtNtCshMzyYDJGtjv_3api4grpc6qdrant23points_update_operationNtB8_13UpdateVectorsNtNtCs4J2qyOfMFpM_5prost7message7Message11merge_fieldQQNtNtNtCsgOCJwUSa4vG_5tonic5codec6buffer9DecodeBufEs0_0Csl8OoimOLbh_6qdrant.exit unwind label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.r = landingpad { ptr, i32 }
          cleanup
  %.val.i14 = load ptr, ptr %i.a, align 8, !noalias !1091, !nonnull !7, !noundef !7
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCs4J2qyOfMFpM_5prost5error11DecodeErrorECsl8OoimOLbh_6qdrant(ptr nonnull %.val.i14) #19
          to label %common.resume unwind label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.s = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #18
  unreachable

_RNCINvXss_NtNtNtCshMzyYDJGtjv_3api4grpc6qdrant23points_update_operationNtB8_13UpdateVectorsNtNtCs4J2qyOfMFpM_5prost7message7Message11merge_fieldQQNtNtNtCsgOCJwUSa4vG_5tonic5codec6buffer9DecodeBufEs0_0Csl8OoimOLbh_6qdrant.exit: ; preds = %bb.o
  %i.t = load ptr, ptr %i.a, align 8, !noalias !1091, !nonnull !7, !align !17, !noundef !7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.k
}

; Function Attrs: nonlazybind uwtable
define hidden noundef align 8 ptr @_RINvXsy_NtNtNtCshMzyYDJGtjv_3api4grpc6qdrant23points_update_operationNtB6_13DeleteVectorsNtNtCs4J2qyOfMFpM_5prost7message7Message11merge_fieldQQNtNtNtCsgOCJwUSa4vG_5tonic5codec6buffer9DecodeBufECsl8OoimOLbh_6qdrant(ptr noalias nofree noundef align 8 dereferenceable(176) %0, i32 noundef %1, i8 noundef range(i8 0, 6) %2, ptr noalias nofree noundef align 8 dereferenceable(8) %3) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 6 uses
  %i.b = alloca [8 x i8], align 8                 ; 6 uses
  %i.c = alloca [8 x i8], align 8                 ; 6 uses
  switch i32 %1, label %bb.b [
    i32 1, label %bb.c
    i32 2, label %bb.e
    i32 3, label %bb.g
  ]

bb.b:                                             ; preds = %bb.a
  %i.d = tail call noundef align 8 ptr @_RINvNtCs4J2qyOfMFpM_5prost8encoding10skip_fieldQQNtNtNtCsgOCJwUSa4vG_5tonic5codec6buffer9DecodeBufECsl8OoimOLbh_6qdrant(i8 noundef %2, i32 noundef %1, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %3)
  br label %bb.l

bb.c:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 3 uses
  %i.f = load i64, ptr %i.e, align 8, !range !21, !alias.scope !1104, !noundef !7
  %.not.i = icmp eq i64 %i.f, -3
  br i1 %.not.i, label %bb.d, label %_RINvMNtCskKLDkoKarTP_4core6optionINtB3_6OptionNtNtNtCshMzyYDJGtjv_3api4grpc6qdrant14PointsSelectorE18get_or_insert_withNvYBI_NtNtB5_7default7Default7defaultECsl8OoimOLbh_6qdrant.exit

bb.d:                                             ; preds = %bb.c
  store i64 -2, ptr %i.e, align 8, !alias.scope !1104
  br label %_RINvMNtCskKLDkoKarTP_4core6optionINtB3_6OptionNtNtNtCshMzyYDJGtjv_3api4grpc6qdrant14PointsSelectorE18get_or_insert_withNvYBI_NtNtB5_7default7Default7defaultECsl8OoimOLbh_6qdrant.exit

_RINvMNtCskKLDkoKarTP_4core6optionINtB3_6OptionNtNtNtCshMzyYDJGtjv_3api4grpc6qdrant14PointsSelectorE18get_or_insert_withNvYBI_NtNtB5_7default7Default7defaultECsl8OoimOLbh_6qdrant.exit: ; preds = %bb.c, %bb.d
  %i.g = tail call noundef align 8 ptr @_RINvNtNtCs4J2qyOfMFpM_5prost8encoding7message5mergeNtNtNtCshMzyYDJGtjv_3api4grpc6qdrant14PointsSelectorQQNtNtNtCsgOCJwUSa4vG_5tonic5codec6buffer9DecodeBufECsl8OoimOLbh_6qdrant(i8 noundef %2, ptr noalias nofree noundef nonnull align 8 dereferenceable(104) %i.e, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %3) ; 2 uses
  %.not8 = icmp eq ptr %i.g, null
  br i1 %.not8, label %bb.l, label %bb.i

bb.e:                                             ; preds = %bb.a
  %i.h = load i64, ptr %0, align 8, !range !14, !alias.scope !1105, !noundef !7
  %.not.i9 = icmp eq i64 %i.h, -1
  br i1 %.not.i9, label %bb.f, label %_RINvMNtCskKLDkoKarTP_4core6optionINtB3_6OptionNtNtNtCshMzyYDJGtjv_3api4grpc6qdrant15VectorsSelectorE18get_or_insert_withNvYBI_NtNtB5_7default7Default7defaultECsl8OoimOLbh_6qdrant.exit

bb.f:                                             ; preds = %bb.e
  store i64 0, ptr %0, align 8, !alias.scope !1105
  %.sroa.48.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.48.0..sroa_idx.i, align 8, !alias.scope !1105
  %.sroa.59.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 0, ptr %.sroa.59.0..sroa_idx.i, align 8, !alias.scope !1105
  br label %_RINvMNtCskKLDkoKarTP_4core6optionINtB3_6OptionNtNtNtCshMzyYDJGtjv_3api4grpc6qdrant15VectorsSelectorE18get_or_insert_withNvYBI_NtNtB5_7default7Default7defaultECsl8OoimOLbh_6qdrant.exit

_RINvMNtCskKLDkoKarTP_4core6optionINtB3_6OptionNtNtNtCshMzyYDJGtjv_3api4grpc6qdrant15VectorsSelectorE18get_or_insert_withNvYBI_NtNtB5_7default7Default7defaultECsl8OoimOLbh_6qdrant.exit: ; preds = %bb.e, %bb.f
  %i.i = tail call noundef align 8 ptr @_RINvNtNtCs4J2qyOfMFpM_5prost8encoding7message5mergeNtNtNtCshMzyYDJGtjv_3api4grpc6qdrant15VectorsSelectorQQNtNtNtCsgOCJwUSa4vG_5tonic5codec6buffer9DecodeBufECsl8OoimOLbh_6qdrant(i8 noundef %2, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %3) ; 2 uses
  %.not7 = icmp eq ptr %i.i, null
  br i1 %.not7, label %bb.l, label %bb.m

bb.g:                                             ; preds = %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  %i.k = load i64, ptr %i.j, align 8, !range !14, !alias.scope !1106, !noundef !7
  %.not.i10 = icmp eq i64 %i.k, -1
  br i1 %.not.i10, label %bb.h, label %_RINvMNtCskKLDkoKarTP_4core6optionINtB3_6OptionNtNtNtCshMzyYDJGtjv_3api4grpc6qdrant16ShardKeySelectorE18get_or_insert_withNvYBI_NtNtB5_7default7Default7defaultECsl8OoimOLbh_6qdrant.exit

bb.h:                                             ; preds = %bb.g
  store i64 0, ptr %i.j, align 8, !alias.scope !1106
  %.sroa.48.0..sroa_idx.i11 = getelementptr inbounds nuw i8, ptr %0, i64 32
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.48.0..sroa_idx.i11, align 8, !alias.scope !1106
  %.sroa.59.0..sroa_idx.i12 = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i64 0, ptr %.sroa.59.0..sroa_idx.i12, align 8, !alias.scope !1106
  %.sroa.610.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 48
  store i64 -3, ptr %.sroa.610.0..sroa_idx.i, align 8, !alias.scope !1106
  br label %_RINvMNtCskKLDkoKarTP_4core6optionINtB3_6OptionNtNtNtCshMzyYDJGtjv_3api4grpc6qdrant16ShardKeySelectorE18get_or_insert_withNvYBI_NtNtB5_7default7Default7defaultECsl8OoimOLbh_6qdrant.exit

_RINvMNtCskKLDkoKarTP_4core6optionINtB3_6OptionNtNtNtCshMzyYDJGtjv_3api4grpc6qdrant16ShardKeySelectorE18get_or_insert_withNvYBI_NtNtB5_7default7Default7defaultECsl8OoimOLbh_6qdrant.exit: ; preds = %bb.g, %bb.h
  %i.l = tail call noundef align 8 ptr @_RINvNtNtCs4J2qyOfMFpM_5prost8encoding7message5mergeNtNtNtCshMzyYDJGtjv_3api4grpc6qdrant16ShardKeySelectorQQNtNtNtCsgOCJwUSa4vG_5tonic5codec6buffer9DecodeBufECsl8OoimOLbh_6qdrant(i8 noundef %2, ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %i.j, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %3) ; 2 uses
  %.not = icmp eq ptr %i.l, null
  br i1 %.not, label %bb.l, label %bb.p

bb.i:                                             ; preds = %_RINvMNtCskKLDkoKarTP_4core6optionINtB3_6OptionNtNtNtCshMzyYDJGtjv_3api4grpc6qdrant14PointsSelectorE18get_or_insert_withNvYBI_NtNtB5_7default7Default7defaultECsl8OoimOLbh_6qdrant.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store ptr %i.g, ptr %i.c, align 8, !noalias !1107
  invoke void @_RNvMNtCs4J2qyOfMFpM_5prost5errorNtB2_11DecodeError4push(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.c, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @32, i64 noundef 13, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @25, i64 noundef 15)
          to label %_RNCINvXsy_NtNtNtCshMzyYDJGtjv_3api4grpc6qdrant23points_update_operationNtB8_13DeleteVectorsNtNtCs4J2qyOfMFpM_5prost7message7Message11merge_fieldQQNtNtNtCsgOCJwUSa4vG_5tonic5codec6buffer9DecodeBufE0Csl8OoimOLbh_6qdrant.exit unwind label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.m = landingpad { ptr, i32 }
          cleanup
  %.val.i = load ptr, ptr %i.c, align 8, !noalias !1107, !nonnull !7, !noundef !7
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCs4J2qyOfMFpM_5prost5error11DecodeErrorECsl8OoimOLbh_6qdrant(ptr nonnull %.val.i) #19
          to label %common.resume unwind label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.n = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #18
  unreachable

common.resume:                                    ; preds = %bb.q, %bb.n, %bb.j
  %common.resume.op = phi { ptr, i32 } [ %i.p, %bb.n ], [ %i.m, %bb.j ], [ %i.s, %bb.q ]
  resume { ptr, i32 } %common.resume.op

_RNCINvXsy_NtNtNtCshMzyYDJGtjv_3api4grpc6qdrant23points_update_operationNtB8_13DeleteVectorsNtNtCs4J2qyOfMFpM_5prost7message7Message11merge_fieldQQNtNtNtCsgOCJwUSa4vG_5tonic5codec6buffer9DecodeBufE0Csl8OoimOLbh_6qdrant.exit: ; preds = %bb.i
  %i.o = load ptr, ptr %i.c, align 8, !noalias !1107, !nonnull !7, !align !17, !noundef !7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  br label %bb.l

bb.l:                                             ; preds = %_RNCINvXsy_NtNtNtCshMzyYDJGtjv_3api4grpc6qdrant23points_update_operationNtB8_13DeleteVectorsNtNtCs4J2qyOfMFpM_5prost7message7Message11merge_fieldQQNtNtNtCsgOCJwUSa4vG_5tonic5codec6buffer9DecodeBufEs0_0Csl8OoimOLbh_6qdrant.exit, %_RINvMNtCskKLDkoKarTP_4core6optionINtB3_6OptionNtNtNtCshMzyYDJGtjv_3api4grpc6qdrant16ShardKeySelectorE18get_or_insert_withNvYBI_NtNtB5_7default7Default7defaultECsl8OoimOLbh_6qdrant.exit, %_RNCINvXsy_NtNtNtCshMzyYDJGtjv_3api4grpc6qdrant23points_update_operationNtB8_13DeleteVectorsNtNtCs4J2qyOfMFpM_5prost7message7Message11merge_fieldQQNtNtNtCsgOCJwUSa4vG_5tonic5codec6buffer9DecodeBufEs_0Csl8OoimOLbh_6qdrant.exit, %_RINvMNtCskKLDkoKarTP_4core6optionINtB3_6OptionNtNtNtCshMzyYDJGtjv_3api4grpc6qdrant15VectorsSelectorE18get_or_insert_withNvYBI_NtNtB5_7default7Default7defaultECsl8OoimOLbh_6qdrant.exit, %_RNCINvXsy_NtNtNtCshMzyYDJGtjv_3api4grpc6qdrant23points_update_operationNtB8_13DeleteVectorsNtNtCs4J2qyOfMFpM_5prost7message7Message11merge_fieldQQNtNtNtCsgOCJwUSa4vG_5tonic5codec6buffer9DecodeBufE0Csl8OoimOLbh_6qdrant.exit, %_RINvMNtCskKLDkoKarTP_4core6optionINtB3_6OptionNtNtNtCshMzyYDJGtjv_3api4grpc6qdrant14PointsSelectorE18get_or_insert_withNvYBI_NtNtB5_7default7Default7defaultECsl8OoimOLbh_6qdrant.exit, %bb.b
  %.sroa.0.1 = phi ptr [ %i.d, %bb.b ], [ null, %_RINvMNtCskKLDkoKarTP_4core6optionINtB3_6OptionNtNtNtCshMzyYDJGtjv_3api4grpc6qdrant15VectorsSelectorE18get_or_insert_withNvYBI_NtNtB5_7default7Default7defaultECsl8OoimOLbh_6qdrant.exit ], [ null, %_RINvMNtCskKLDkoKarTP_4core6optionINtB3_6OptionNtNtNtCshMzyYDJGtjv_3api4grpc6qdrant14PointsSelectorE18get_or_insert_withNvYBI_NtNtB5_7default7Default7defaultECsl8OoimOLbh_6qdrant.exit ], [ %i.o, %_RNCINvXsy_NtNtNtCshMzyYDJGtjv_3api4grpc6qdrant23points_update_operationNtB8_13DeleteVectorsNtNtCs4J2qyOfMFpM_5prost7message7Message11merge_fieldQQNtNtNtCsgOCJwUSa4vG_5tonic5codec6buffer9DecodeBufE0Csl8OoimOLbh_6qdrant.exit ], [ %i.r, %_RNCINvXsy_NtNtNtCshMzyYDJGtjv_3api4grpc6qdrant23points_update_operationNtB8_13DeleteVectorsNtNtCs4J2qyOfMFpM_5prost7message7Message11merge_fieldQQNtNtNtCsgOCJwUSa4vG_5tonic5codec6buffer9DecodeBufEs_0Csl8OoimOLbh_6qdrant.exit ], [ %i.u, %_RNCINvXsy_NtNtNtCshMzyYDJGtjv_3api4grpc6qdrant23points_update_operationNtB8_13DeleteVectorsNtNtCs4J2qyOfMFpM_5prost7message7Message11merge_fieldQQNtNtNtCsgOCJwUSa4vG_5tonic5codec6buffer9DecodeBufEs0_0Csl8OoimOLbh_6qdrant.exit ], [ null, %_RINvMNtCskKLDkoKarTP_4core6optionINtB3_6OptionNtNtNtCshMzyYDJGtjv_3api4grpc6qdrant16ShardKeySelectorE18get_or_insert_withNvYBI_NtNtB5_7default7Default7defaultECsl8OoimOLbh_6qdrant.exit ]
  ret ptr %.sroa.0.1

bb.m:                                             ; preds = %_RINvMNtCskKLDkoKarTP_4core6optionINtB3_6OptionNtNtNtCshMzyYDJGtjv_3api4grpc6qdrant15VectorsSelectorE18get_or_insert_withNvYBI_NtNtB5_7default7Default7defaultECsl8OoimOLbh_6qdrant.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store ptr %i.i, ptr %i.b, align 8, !noalias !1108
  invoke void @_RNvMNtCs4J2qyOfMFpM_5prost5errorNtB2_11DecodeError4push(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.b, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @32, i64 noundef 13, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @33, i64 noundef 7)
          to label %_RNCINvXsy_NtNtNtCshMzyYDJGtjv_3api4grpc6qdrant23points_update_operationNtB8_13DeleteVectorsNtNtCs4J2qyOfMFpM_5prost7message7Message11merge_fieldQQNtNtNtCsgOCJwUSa4vG_5tonic5codec6buffer9DecodeBufEs_0Csl8OoimOLbh_6qdrant.exit unwind label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.p = landingpad { ptr, i32 }
          cleanup
  %.val.i13 = load ptr, ptr %i.b, align 8, !noalias !1108, !nonnull !7, !noundef !7
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCs4J2qyOfMFpM_5prost5error11DecodeErrorECsl8OoimOLbh_6qdrant(ptr nonnull %.val.i13) #19
          to label %common.resume unwind label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.q = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #18
  unreachable

_RNCINvXsy_NtNtNtCshMzyYDJGtjv_3api4grpc6qdrant23points_update_operationNtB8_13DeleteVectorsNtNtCs4J2qyOfMFpM_5prost7message7Message11merge_fieldQQNtNtNtCsgOCJwUSa4vG_5tonic5codec6buffer9DecodeBufEs_0Csl8OoimOLbh_6qdrant.exit: ; preds = %bb.m
  %i.r = load ptr, ptr %i.b, align 8, !noalias !1108, !nonnull !7, !align !17, !noundef !7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %bb.l

bb.p:                                             ; preds = %_RINvMNtCskKLDkoKarTP_4core6optionINtB3_6OptionNtNtNtCshMzyYDJGtjv_3api4grpc6qdrant16ShardKeySelectorE18get_or_insert_withNvYBI_NtNtB5_7default7Default7defaultECsl8OoimOLbh_6qdrant.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %i.l, ptr %i.a, align 8, !noalias !1109
  invoke void @_RNvMNtCs4J2qyOfMFpM_5prost5errorNtB2_11DecodeError4push(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.a, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @32, i64 noundef 13, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @21, i64 noundef 18)
          to label %_RNCINvXsy_NtNtNtCshMzyYDJGtjv_3api4grpc6qdrant23points_update_operationNtB8_13DeleteVectorsNtNtCs4J2qyOfMFpM_5prost7message7Message11merge_fieldQQNtNtNtCsgOCJwUSa4vG_5tonic5codec6buffer9DecodeBufEs0_0Csl8OoimOLbh_6qdrant.exit unwind label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.s = landingpad { ptr, i32 }
          cleanup
  %.val.i14 = load ptr, ptr %i.a, align 8, !noalias !1109, !nonnull !7, !noundef !7
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCs4J2qyOfMFpM_5prost5error11DecodeErrorECsl8OoimOLbh_6qdrant(ptr nonnull %.val.i14) #19
          to label %common.resume unwind label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.t = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #18
  unreachable

_RNCINvXsy_NtNtNtCshMzyYDJGtjv_3api4grpc6qdrant23points_update_operationNtB8_13DeleteVectorsNtNtCs4J2qyOfMFpM_5prost7message7Message11merge_fieldQQNtNtNtCsgOCJwUSa4vG_5tonic5codec6buffer9DecodeBufEs0_0Csl8OoimOLbh_6qdrant.exit: ; preds = %bb.p
  %i.u = load ptr, ptr %i.a, align 8, !noalias !1109, !nonnull !7, !align !17, !noundef !7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.l
}

; Function Attrs: cold nonlazybind uwtable
define hidden void @_RNvMs2_NtNtNtCsdZqrmKseQ0Z_14regex_automata4util4pool5innerINtB5_4PoolNtNtNtBb_4meta5regex5CacheINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDINtNtNtCskKLDkoKarTP_4core3ops8function2FnuEp6OutputB16_NtNtNtB2d_5panic11unwind_safe13RefUnwindSafeNtNtB2d_6marker4SendNtB3K_4SyncNtB32_10UnwindSafeEL_EE8get_slowCsl8OoimOLbh_6qdrant(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([32 x i8]) align 8 captures(none) dereferenceable(32) %0, ptr noundef nonnull align 8 %1, i64 noundef %2, i64 noundef %3) unnamed_addr #2 personality ptr @rust_eh_personality {
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
  %i.i = load i64, ptr %i.h, align 8, !noundef !7 ; 3 uses
  %i.j = icmp ult i64 %i.i, 144115188075855872
  tail call void @llvm.assume(i1 %i.j)
  %i.k = icmp eq i64 %i.i, 0
  br i1 %i.k, label %bb.g, label %bb.h

bb.d:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 24
  call void @_RNvXsv_NtCsexYYUdYSQU6_5alloc5boxedINtB5_3BoxDINtNtNtCskKLDkoKarTP_4core3ops8function2FnuEp6OutputNtNtNtCsdZqrmKseQ0Z_14regex_automata4meta5regex5CacheNtNtNtBP_5panic11unwind_safe13RefUnwindSafeNtNtBP_6marker4SendNtB38_4SyncNtB2r_10UnwindSafeEL_EIBJ_uE4callCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull sret([1400 x i8]) align 8 captures(address) dereferenceable(1400) %i.d, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.l)
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 48 ; 4 uses
  %i.n = load i64, ptr %i.m, align 8, !range !22, !alias.scope !1118, !noundef !7
  %i.o = icmp eq i64 %i.n, -1
  br i1 %i.o, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCsdZqrmKseQ0Z_14regex_automata4meta5regex5CacheEECsl8OoimOLbh_6qdrant.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsdZqrmKseQ0Z_14regex_automata4meta5regex5CacheECsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull align 8 dereferenceable(1400) %i.m)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCsdZqrmKseQ0Z_14regex_automata4meta5regex5CacheEECsl8OoimOLbh_6qdrant.exit unwind label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.p = landingpad { ptr, i32 }
          cleanup
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1400) %i.m, ptr noundef nonnull align 8 dereferenceable(1400) %i.d, i64 1400, i1 false)
  br label %common.resume

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCsdZqrmKseQ0Z_14regex_automata4meta5regex5CacheEECsl8OoimOLbh_6qdrant.exit: ; preds = %bb.d, %bb.e
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
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsG258MDvU3F_3std4sync6poison5mutex10MutexGuardINtNtCsexYYUdYSQU6_5alloc3vec3VecINtNtB1A_5boxed3BoxNtNtNtCsdZqrmKseQ0Z_14regex_automata4meta5regex5CacheEEEECsl8OoimOLbh_6qdrant.exit22

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsG258MDvU3F_3std4sync6poison5mutex10MutexGuardINtNtCsexYYUdYSQU6_5alloc3vec3VecINtNtB1A_5boxed3BoxNtNtNtCsdZqrmKseQ0Z_14regex_automata4meta5regex5CacheEEEECsl8OoimOLbh_6qdrant.exit22: ; preds = %bb.v, %_RNvMNtNtCsG258MDvU3F_3std4sync6poisonNtB2_4Flag4done.exit.i.i21, %bb.r, %_RNvMNtCsexYYUdYSQU6_5alloc5boxedINtB2_3BoxNtNtNtCsdZqrmKseQ0Z_14regex_automata4meta5regex5CacheE3newCsl8OoimOLbh_6qdrant.exit9, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCsdZqrmKseQ0Z_14regex_automata4meta5regex5CacheEECsl8OoimOLbh_6qdrant.exit
  ret void

common.resume:                                    ; preds = %10, %bb.f, %bb.t
  %common.resume.op = phi { ptr, i32 } [ %i.bj, %bb.t ], [ %i.p, %bb.f ], [ %11, %10 ]
  resume { ptr, i32 } %common.resume.op

bb.g:                                             ; preds = %bb.c
  tail call void @_RNvNtNtCskKLDkoKarTP_4core9panicking11panic_const23panic_const_rem_by_zero(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @41) #21
  unreachable

bb.h:                                             ; preds = %bb.c
  %4 = urem i64 %2, %i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.v = load ptr, ptr %i.u, align 8, !nonnull !7, !noundef !7
  %i.w = getelementptr inbounds nuw [64 x i8], ptr %i.v, i64 %4
  call void @_RNvMs5_NtNtNtCsG258MDvU3F_3std4sync6poison5mutexINtB5_5MutexINtNtCsexYYUdYSQU6_5alloc3vec3VecINtNtB11_5boxed3BoxNtNtNtCsdZqrmKseQ0Z_14regex_automata4meta5regex5CacheEEE8try_lockCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.c, ptr noundef nonnull align 8 %i.w)
  %i.x = load i64, ptr %i.c, align 8, !range !9, !noundef !7
  %i.y = trunc nuw i64 %i.x to i1
  br i1 %i.y, label %bb.w, label %bb.i

bb.i:                                             ; preds = %bb.h
  %5 = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.z = load ptr, ptr %5, align 8, !nonnull !7, !align !17, !noundef !7 ; 9 uses
  %6 = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %i.aa = load i8, ptr %6, align 8, !range !18, !noundef !7 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  %i.ab = getelementptr inbounds nuw i8, ptr %i.z, i64 24 ; 2 uses
  %i.ac = load i64, ptr %i.ab, align 8, !noundef !7 ; 3 uses
  %i.ad = icmp eq i64 %i.ac, 0
  br i1 %i.ad, label %bb.j, label %bb.n

bb.j:                                             ; preds = %bb.i
  %i.ae = getelementptr inbounds nuw i8, ptr %i.z, i64 4
  %i.af = trunc nuw i8 %i.aa to i1
  br i1 %i.af, label %_RNvMNtNtCsG258MDvU3F_3std4sync6poisonNtB2_4Flag4done.exit.i.i, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ag = load atomic i64, ptr @_RNvNtNtCsG258MDvU3F_3std9panicking11panic_count18GLOBAL_PANIC_COUNT monotonic, align 8
  %i.ah = and i64 %i.ag, 9223372036854775807
  %i.ai = icmp eq i64 %i.ah, 0
  br i1 %i.ai, label %_RNvMNtNtCsG258MDvU3F_3std4sync6poisonNtB2_4Flag4done.exit.i.i, label %.noexc19, !prof !12

.noexc19:                                         ; preds = %bb.k
  %i.aj = tail call noundef zeroext i1 @_RNvNtNtCsG258MDvU3F_3std9panicking11panic_count17is_zero_slow_path() #20
  br i1 %i.aj, label %_RNvMNtNtCsG258MDvU3F_3std4sync6poisonNtB2_4Flag4done.exit.i.i, label %bb.l

bb.l:                                             ; preds = %.noexc19
  store atomic i8 1, ptr %i.ae monotonic, align 4
  br label %_RNvMNtNtCsG258MDvU3F_3std4sync6poisonNtB2_4Flag4done.exit.i.i

_RNvMNtNtCsG258MDvU3F_3std4sync6poisonNtB2_4Flag4done.exit.i.i: ; preds = %bb.l, %.noexc19, %bb.k, %bb.j
  %i.ak = atomicrmw xchg ptr %i.z, i32 0 release, align 4
  %i.al = icmp eq i32 %i.ak, 2
  br i1 %i.al, label %bb.m, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsG258MDvU3F_3std4sync6poison5mutex10MutexGuardINtNtCsexYYUdYSQU6_5alloc3vec3VecINtNtB1A_5boxed3BoxNtNtNtCsdZqrmKseQ0Z_14regex_automata4meta5regex5CacheEEEECsl8OoimOLbh_6qdrant.exit, !prof !8

bb.m:                                             ; preds = %_RNvMNtNtCsG258MDvU3F_3std4sync6poisonNtB2_4Flag4done.exit.i.i
  tail call void @_RNvMNtNtNtNtCsG258MDvU3F_3std3sys4sync5mutex5futexNtB2_5Mutex4wake(ptr noundef nonnull align 4 %i.z)
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsG258MDvU3F_3std4sync6poison5mutex10MutexGuardINtNtCsexYYUdYSQU6_5alloc3vec3VecINtNtB1A_5boxed3BoxNtNtNtCsdZqrmKseQ0Z_14regex_automata4meta5regex5CacheEEEECsl8OoimOLbh_6qdrant.exit

bb.n:                                             ; preds = %bb.i
  %i.am = getelementptr inbounds nuw i8, ptr %i.z, i64 8
  %i.an = add nsw i64 %i.ac, -1                   ; 3 uses
  store i64 %i.an, ptr %i.ab, align 8
  %i.ao = load i64, ptr %i.am, align 8, !range !13, !noundef !7
  %i.ap = icmp samesign ult i64 %i.an, %i.ao
  tail call void @llvm.assume(i1 %i.ap)
  %i.aq = getelementptr inbounds nuw i8, ptr %i.z, i64 16
  %i.ar = load ptr, ptr %i.aq, align 8, !nonnull !7, !noundef !7
  %i.as = icmp ult i64 %i.ac, 1152921504606846977
  tail call void @llvm.assume(i1 %i.as)
  %i.at = getelementptr inbounds nuw [8 x i8], ptr %i.ar, i64 %i.an
  %i.au = load ptr, ptr %i.at, align 8, !nonnull !7, !align !17, !noundef !7
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %1, ptr %i.av, align 8
  store i64 0, ptr %0, align 8
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.au, ptr %i.aw, align 8
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i8 0, ptr %i.ax, align 8
  %i.ay = getelementptr inbounds nuw i8, ptr %i.z, i64 4
  %i.az = trunc nuw i8 %i.aa to i1
  br i1 %i.az, label %_RNvMNtNtCsG258MDvU3F_3std4sync6poisonNtB2_4Flag4done.exit.i.i21, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.ba = load atomic i64, ptr @_RNvNtNtCsG258MDvU3F_3std9panicking11panic_count18GLOBAL_PANIC_COUNT monotonic, align 8
  %i.bb = and i64 %i.ba, 9223372036854775807
  %i.bc = icmp eq i64 %i.bb, 0
  br i1 %i.bc, label %_RNvMNtNtCsG258MDvU3F_3std4sync6poisonNtB2_4Flag4done.exit.i.i21, label %bb.p, !prof !12

bb.p:                                             ; preds = %bb.o
  %i.bd = tail call noundef zeroext i1 @_RNvNtNtCsG258MDvU3F_3std9panicking11panic_count17is_zero_slow_path() #20
  br i1 %i.bd, label %_RNvMNtNtCsG258MDvU3F_3std4sync6poisonNtB2_4Flag4done.exit.i.i21, label %bb.q

bb.q:                                             ; preds = %bb.p
  store atomic i8 1, ptr %i.ay monotonic, align 4
  br label %_RNvMNtNtCsG258MDvU3F_3std4sync6poisonNtB2_4Flag4done.exit.i.i21

_RNvMNtNtCsG258MDvU3F_3std4sync6poisonNtB2_4Flag4done.exit.i.i21: ; preds = %bb.q, %bb.p, %bb.o, %bb.n
  %i.be = atomicrmw xchg ptr %i.z, i32 0 release, align 4
  %i.bf = icmp eq i32 %i.be, 2
  br i1 %i.bf, label %bb.r, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsG258MDvU3F_3std4sync6poison5mutex10MutexGuardINtNtCsexYYUdYSQU6_5alloc3vec3VecINtNtB1A_5boxed3BoxNtNtNtCsdZqrmKseQ0Z_14regex_automata4meta5regex5CacheEEEECsl8OoimOLbh_6qdrant.exit22, !prof !8

bb.r:                                             ; preds = %_RNvMNtNtCsG258MDvU3F_3std4sync6poisonNtB2_4Flag4done.exit.i.i21
  tail call void @_RNvMNtNtNtNtCsG258MDvU3F_3std3sys4sync5mutex5futexNtB2_5Mutex4wake(ptr noundef nonnull align 4 %i.z)
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsG258MDvU3F_3std4sync6poison5mutex10MutexGuardINtNtCsexYYUdYSQU6_5alloc3vec3VecINtNtB1A_5boxed3BoxNtNtNtCsdZqrmKseQ0Z_14regex_automata4meta5regex5CacheEEEECsl8OoimOLbh_6qdrant.exit22

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsG258MDvU3F_3std4sync6poison5mutex10MutexGuardINtNtCsexYYUdYSQU6_5alloc3vec3VecINtNtB1A_5boxed3BoxNtNtNtCsdZqrmKseQ0Z_14regex_automata4meta5regex5CacheEEEECsl8OoimOLbh_6qdrant.exit: ; preds = %bb.m, %_RNvMNtNtCsG258MDvU3F_3std4sync6poisonNtB2_4Flag4done.exit.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.bg = getelementptr inbounds nuw i8, ptr %1, i64 24
  call void @_RNvXsv_NtCsexYYUdYSQU6_5alloc5boxedINtB5_3BoxDINtNtNtCskKLDkoKarTP_4core3ops8function2FnuEp6OutputNtNtNtCsdZqrmKseQ0Z_14regex_automata4meta5regex5CacheNtNtNtBP_5panic11unwind_safe13RefUnwindSafeNtNtBP_6marker4SendNtB38_4SyncNtB2r_10UnwindSafeEL_EIBJ_uE4callCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull sret([1400 x i8]) align 8 captures(address) dereferenceable(1400) %i.b, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.bg)
  call void @_RNvCsbkii2mvYdKU_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #16, !noalias !1119
  %i.bh = call noundef align 8 dereferenceable_or_null(1400) ptr @_RNvCsbkii2mvYdKU_7___rustc12___rust_alloc(i64 noundef range(i64 0, 1401) 1400, i64 noundef range(i64 1, 9) 8) #16, !noalias !1119 ; 3 uses
  %i.bi = icmp eq ptr %i.bh, null
  br i1 %i.bi, label %bb.s, label %bb.v, !prof !6

bb.s:                                             ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsG258MDvU3F_3std4sync6poison5mutex10MutexGuardINtNtCsexYYUdYSQU6_5alloc3vec3VecINtNtB1A_5boxed3BoxNtNtNtCsdZqrmKseQ0Z_14regex_automata4meta5regex5CacheEEEECsl8OoimOLbh_6qdrant.exit
  invoke void @_RNvNtCsexYYUdYSQU6_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 1400) #17
          to label %.noexc23 unwind label %bb.t

.noexc23:                                         ; preds = %bb.s
  unreachable

bb.t:                                             ; preds = %bb.s
  %i.bj = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsdZqrmKseQ0Z_14regex_automata4meta5regex5CacheECsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull align 8 dereferenceable(1400) %i.b) #19
          to label %common.resume unwind label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.bk = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #18
  unreachable

bb.v:                                             ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsG258MDvU3F_3std4sync6poison5mutex10MutexGuardINtNtCsexYYUdYSQU6_5alloc3vec3VecINtNtB1A_5boxed3BoxNtNtNtCsdZqrmKseQ0Z_14regex_automata4meta5regex5CacheEEEECsl8OoimOLbh_6qdrant.exit
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1400) %i.bh, ptr noundef nonnull align 8 dereferenceable(1400) %i.b, i64 1400, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %i.bl = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %1, ptr %i.bl, align 8
  store i64 0, ptr %0, align 8
  %i.bm = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.bh, ptr %i.bm, align 8
  %i.bn = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i8 0, ptr %i.bn, align 8
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsG258MDvU3F_3std4sync6poison5mutex10MutexGuardINtNtCsexYYUdYSQU6_5alloc3vec3VecINtNtB1A_5boxed3BoxNtNtNtCsdZqrmKseQ0Z_14regex_automata4meta5regex5CacheEEEECsl8OoimOLbh_6qdrant.exit22

bb.w:                                             ; preds = %bb.h
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1120)
  %7 = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %.val.i25 = load ptr, ptr %7, align 8, !alias.scope !1120 ; 4 uses
  %8 = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %.val3.i26 = load i8, ptr %8, align 8, !range !1121, !alias.scope !1120, !noundef !7 ; 2 uses
  %.not.i.i27 = icmp eq i8 %.val3.i26, 2
  br i1 %.not.i.i27, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultINtNtNtNtCsG258MDvU3F_3std4sync6poison5mutex10MutexGuardINtNtCsexYYUdYSQU6_5alloc3vec3VecINtNtB1W_5boxed3BoxNtNtNtCsdZqrmKseQ0Z_14regex_automata4meta5regex5CacheEEEINtB12_12TryLockErrorBX_EEECsl8OoimOLbh_6qdrant.exit32, label %bb.x

bb.x:                                             ; preds = %bb.w
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i25) ]
  %i.bo = getelementptr inbounds nuw i8, ptr %.val.i25, i64 4
  %i.bp = trunc nuw i8 %.val3.i26 to i1
  br i1 %i.bp, label %_RNvMNtNtCsG258MDvU3F_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i.i.i28, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.bq = load atomic i64, ptr @_RNvNtNtCsG258MDvU3F_3std9panicking11panic_count18GLOBAL_PANIC_COUNT monotonic, align 8, !noalias !1120
  %i.br = and i64 %i.bq, 9223372036854775807
  %i.bs = icmp eq i64 %i.br, 0
  br i1 %i.bs, label %_RNvMNtNtCsG258MDvU3F_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i.i.i28, label %bb.z, !prof !12

bb.z:                                             ; preds = %bb.y
  %i.bt = tail call noundef zeroext i1 @_RNvNtNtCsG258MDvU3F_3std9panicking11panic_count17is_zero_slow_path() #20, !noalias !1120
  br i1 %i.bt, label %_RNvMNtNtCsG258MDvU3F_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i.i.i28, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  store atomic i8 1, ptr %i.bo monotonic, align 1, !noalias !1120
  br label %_RNvMNtNtCsG258MDvU3F_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i.i.i28

_RNvMNtNtCsG258MDvU3F_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i.i.i28: ; preds = %bb.aa, %bb.z, %bb.y, %bb.x
  %i.bu = atomicrmw xchg ptr %.val.i25, i32 0 release, align 4, !noalias !1120
  %i.bv = icmp eq i32 %i.bu, 2
  br i1 %i.bv, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsG258MDvU3F_3std4sync6poison5mutex10MutexGuardINtNtCsexYYUdYSQU6_5alloc3vec3VecINtNtB1A_5boxed3BoxNtNtNtCsdZqrmKseQ0Z_14regex_automata4meta5regex5CacheEEEECsl8OoimOLbh_6qdrant.exit.sink.split.i29, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultINtNtNtNtCsG258MDvU3F_3std4sync6poison5mutex10MutexGuardINtNtCsexYYUdYSQU6_5alloc3vec3VecINtNtB1W_5boxed3BoxNtNtNtCsdZqrmKseQ0Z_14regex_automata4meta5regex5CacheEEEINtB12_12TryLockErrorBX_EEECsl8OoimOLbh_6qdrant.exit32, !prof !8

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsG258MDvU3F_3std4sync6poison5mutex10MutexGuardINtNtCsexYYUdYSQU6_5alloc3vec3VecINtNtB1A_5boxed3BoxNtNtNtCsdZqrmKseQ0Z_14regex_automata4meta5regex5CacheEEEECsl8OoimOLbh_6qdrant.exit.sink.split.i29: ; preds = %_RNvMNtNtCsG258MDvU3F_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i.i.i28
  tail call void @_RNvMNtNtNtNtCsG258MDvU3F_3std3sys4sync5mutex5futexNtB2_5Mutex4wake(ptr noundef nonnull align 4 %.val.i25), !noalias !1120
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultINtNtNtNtCsG258MDvU3F_3std4sync6poison5mutex10MutexGuardINtNtCsexYYUdYSQU6_5alloc3vec3VecINtNtB1W_5boxed3BoxNtNtNtCsdZqrmKseQ0Z_14regex_automata4meta5regex5CacheEEEINtB12_12TryLockErrorBX_EEECsl8OoimOLbh_6qdrant.exit32

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultINtNtNtNtCsG258MDvU3F_3std4sync6poison5mutex10MutexGuardINtNtCsexYYUdYSQU6_5alloc3vec3VecINtNtB1W_5boxed3BoxNtNtNtCsdZqrmKseQ0Z_14regex_automata4meta5regex5CacheEEEINtB12_12TryLockErrorBX_EEECsl8OoimOLbh_6qdrant.exit32: ; preds = %bb.w, %_RNvMNtNtCsG258MDvU3F_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i.i.i28, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsG258MDvU3F_3std4sync6poison5mutex10MutexGuardINtNtCsexYYUdYSQU6_5alloc3vec3VecINtNtB1A_5boxed3BoxNtNtNtCsdZqrmKseQ0Z_14regex_automata4meta5regex5CacheEEEECsl8OoimOLbh_6qdrant.exit.sink.split.i29
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.bw = getelementptr inbounds nuw i8, ptr %1, i64 24
  call void @_RNvXsv_NtCsexYYUdYSQU6_5alloc5boxedINtB5_3BoxDINtNtNtCskKLDkoKarTP_4core3ops8function2FnuEp6OutputNtNtNtCsdZqrmKseQ0Z_14regex_automata4meta5regex5CacheNtNtNtBP_5panic11unwind_safe13RefUnwindSafeNtNtBP_6marker4SendNtB38_4SyncNtB2r_10UnwindSafeEL_EIBJ_uE4callCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull sret([1400 x i8]) align 8 captures(address) dereferenceable(1400) %i.a, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.bw)
  call void @_RNvCsbkii2mvYdKU_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #16, !noalias !1122
  %i.bx = call noundef align 8 dereferenceable_or_null(1400) ptr @_RNvCsbkii2mvYdKU_7___rustc12___rust_alloc(i64 noundef range(i64 0, 1401) 1400, i64 noundef range(i64 1, 9) 8) #16, !noalias !1122 ; 3 uses
  %i.by = icmp eq ptr %i.bx, null
  br i1 %i.by, label %9, label %_RNvMNtCsexYYUdYSQU6_5alloc5boxedINtB2_3BoxNtNtNtCsdZqrmKseQ0Z_14regex_automata4meta5regex5CacheE3newCsl8OoimOLbh_6qdrant.exit9, !prof !6

9:                                                ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultINtNtNtNtCsG258MDvU3F_3std4sync6poison5mutex10MutexGuardINtNtCsexYYUdYSQU6_5alloc3vec3VecINtNtB1W_5boxed3BoxNtNtNtCsdZqrmKseQ0Z_14regex_automata4meta5regex5CacheEEEINtB12_12TryLockErrorBX_EEECsl8OoimOLbh_6qdrant.exit32
  invoke void @_RNvNtCsexYYUdYSQU6_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 1400) #17
          to label %.noexc31 unwind label %10

.noexc31:                                         ; preds = %9
  unreachable

10:                                               ; preds = %9
  %11 = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsdZqrmKseQ0Z_14regex_automata4meta5regex5CacheECsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull align 8 dereferenceable(1400) %i.a) #19
          to label %common.resume unwind label %12

12:                                               ; preds = %10
  %13 = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #18
  unreachable

_RNvMNtCsexYYUdYSQU6_5alloc5boxedINtB2_3BoxNtNtNtCsdZqrmKseQ0Z_14regex_automata4meta5regex5CacheE3newCsl8OoimOLbh_6qdrant.exit9: ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultINtNtNtNtCsG258MDvU3F_3std4sync6poison5mutex10MutexGuardINtNtCsexYYUdYSQU6_5alloc3vec3VecINtNtB1W_5boxed3BoxNtNtNtCsdZqrmKseQ0Z_14regex_automata4meta5regex5CacheEEEINtB12_12TryLockErrorBX_EEECsl8OoimOLbh_6qdrant.exit32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1400) %i.bx, ptr noundef nonnull align 8 dereferenceable(1400) %i.a, i64 1400, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %14 = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %1, ptr %14, align 8
  store i64 0, ptr %0, align 8
  %15 = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.bx, ptr %15, align 8
  %16 = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i8 1, ptr %16, align 8
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsG258MDvU3F_3std4sync6poison5mutex10MutexGuardINtNtCsexYYUdYSQU6_5alloc3vec3VecINtNtB1A_5boxed3BoxNtNtNtCsdZqrmKseQ0Z_14regex_automata4meta5regex5CacheEEEECsl8OoimOLbh_6qdrant.exit22
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMs_NtCsgoPClq0H8JF_9actix_web8resourceNtB4_8Resource4nameCsl8OoimOLbh_6qdrant(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([168 x i8]) align 8 captures(none) dereferenceable(168) %0, ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(168) %1, ptr noalias nofree noundef nonnull readonly captures(none) %2, i64 noundef %3) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  invoke void @_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, i64 noundef %3, i1 noundef zeroext false, i64 noundef 1, i64 noundef 1)
          to label %bb.d unwind label %bb.c

bb.b:                                             ; preds = %.body, %bb.c
  %.pn = phi { ptr, i32 } [ %i.b, %bb.c ], [ %eh.lpad-body, %.body ]
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsgoPClq0H8JF_9actix_web8resource8ResourceECsl8OoimOLbh_6qdrant(ptr noalias nofree noundef align 8 dereferenceable(168) %1) #19
          to label %bb.o unwind label %bb.n

bb.c:                                             ; preds = %bb.e, %bb.a
  %i.b = landingpad { ptr, i32 }
          cleanup
  br label %bb.b

bb.d:                                             ; preds = %bb.a
  %i.c = load i64, ptr %i.a, align 8, !range !9, !noundef !7
  %i.d = trunc nuw i64 %i.c to i1
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.f = load i64, ptr %i.e, align 8, !range !10, !noundef !7 ; 4 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  br i1 %i.d, label %bb.e, label %bb.f, !prof !8

bb.e:                                             ; preds = %bb.d
  %i.h = load i64, ptr %i.g, align 8
  invoke void @_RNvNtCsexYYUdYSQU6_5alloc7raw_vec12handle_error(i64 noundef %i.f, i64 %i.h) #17
          to label %bb.m unwind label %bb.c

bb.f:                                             ; preds = %bb.d
  %i.i = load ptr, ptr %i.g, align 8, !nonnull !7, !noundef !7 ; 3 uses
  %i.j = icmp ule i64 %3, %i.f
  tail call void @llvm.assume(i1 %i.j)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %.not = icmp eq i64 %3, 0
  br i1 %.not, label %bb.g, label %bb.k

bb.g:                                             ; preds = %bb.k, %bb.f
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 80 ; 6 uses
  %i.l = load i64, ptr %i.k, align 8, !range !14, !alias.scope !1125, !noundef !7
  %i.m = icmp eq i64 %i.l, -1
  br i1 %i.m, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsexYYUdYSQU6_5alloc6string6StringEECsl8OoimOLbh_6qdrant.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  invoke void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.k)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECsl8OoimOLbh_6qdrant.exit.i unwind label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.n = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.k)
          to label %.body unwind label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.o = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #18
  unreachable

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECsl8OoimOLbh_6qdrant.exit.i: ; preds = %bb.h
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.k)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsexYYUdYSQU6_5alloc6string6StringEECsl8OoimOLbh_6qdrant.exit unwind label %bb.l

bb.k:                                             ; preds = %bb.f
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.i, ptr nonnull align 1 %2, i64 %3, i1 false)
  br label %bb.g

bb.l:                                             ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECsl8OoimOLbh_6qdrant.exit.i
  %i.p = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %bb.i, %bb.l
  %eh.lpad-body = phi { ptr, i32 } [ %i.p, %bb.l ], [ %i.n, %bb.i ]
  store i64 %i.f, ptr %i.k, align 8
  %.sroa.55.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 88
  store ptr %i.i, ptr %.sroa.55.0..sroa_idx, align 8
  %.sroa.68.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 96
  store i64 %3, ptr %.sroa.68.0..sroa_idx, align 8
  br label %bb.b

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsexYYUdYSQU6_5alloc6string6StringEECsl8OoimOLbh_6qdrant.exit: ; preds = %bb.g, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECsl8OoimOLbh_6qdrant.exit.i
  store i64 %i.f, ptr %i.k, align 8
  %.sroa.55.0..sroa_idx6 = getelementptr inbounds nuw i8, ptr %1, i64 88
  store ptr %i.i, ptr %.sroa.55.0..sroa_idx6, align 8
  %.sroa.68.0..sroa_idx9 = getelementptr inbounds nuw i8, ptr %1, i64 96
  store i64 %3, ptr %.sroa.68.0..sroa_idx9, align 8
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(168) %0, ptr noundef nonnull align 8 dereferenceable(168) %1, i64 168, i1 false)
  ret void

bb.m:                                             ; preds = %bb.e
  unreachable

bb.n:                                             ; preds = %bb.b
  %i.q = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #18
  unreachable

bb.o:                                             ; preds = %bb.b
  resume { ptr, i32 } %.pn
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RNvMsr_NtCs2WNwEIJRUGR_15futures_channel4mpscINtB5_8ReceiverINtNtNtCskKLDkoKarTP_4core2io6cursor6CursorINtNtCsexYYUdYSQU6_5alloc5boxed3BoxShEEE12next_messageCsl8OoimOLbh_6qdrant(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(32) %0, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 5 uses
  %i.b = alloca [24 x i8], align 8                ; 8 uses
  %i.c = alloca [8 x i8], align 8                 ; 7 uses
  %i.d = alloca [24 x i8], align 8                ; 5 uses
  %i.e = load ptr, ptr %1, align 8, !noundef !7   ; 5 uses
  %.not = icmp eq ptr %i.e, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  call void @_RNvMs1_NtNtCs2WNwEIJRUGR_15futures_channel4mpsc5queueINtB5_5QueueINtNtNtCskKLDkoKarTP_4core2io6cursor6CursorINtNtCsexYYUdYSQU6_5alloc5boxed3BoxShEEE8pop_spinCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.d, ptr noundef nonnull align 8 %i.f)
  %i.g = load ptr, ptr %i.d, align 8, !noundef !7 ; 3 uses
  %.not5 = icmp eq ptr %i.g, null
  br i1 %.not5, label %bb.w, label %bb.e

bb.c:                                             ; preds = %bb.a
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, i8 0, i64 16, i1 false)
  br label %bb.d

bb.d:                                             ; preds = %bb.ac, %bb.c
  ret void

bb.e:                                             ; preds = %bb.b
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 8 ; 2 uses
  %i.h = load <2 x i64>, ptr %.sroa.5.0..sroa_idx, align 8
  %.sroa.5.0.copyload = load i64, ptr %.sroa.5.0..sroa_idx, align 8 ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 32
  %i.j = invoke noundef ptr @_RNvMs1_NtNtCs2WNwEIJRUGR_15futures_channel4mpsc5queueINtB5_5QueueINtNtCsexYYUdYSQU6_5alloc4sync3ArcINtNtNtNtCsG258MDvU3F_3std4sync6poison5mutex5MutexNtB7_10SenderTaskEEE8pop_spinCsl8OoimOLbh_6qdrant(ptr noundef nonnull align 8 %i.i)
          to label %.noexc unwind label %bb.ad    ; 3 uses

.noexc:                                           ; preds = %bb.e
  %.not3.i = icmp eq ptr %i.j, null
  br i1 %.not3.i, label %_RNvMsr_NtCs2WNwEIJRUGR_15futures_channel4mpscINtB5_8ReceiverINtNtNtCskKLDkoKarTP_4core2io6cursor6CursorINtNtCsexYYUdYSQU6_5alloc5boxed3BoxShEEE10unpark_oneCsl8OoimOLbh_6qdrant.exit.thread27, label %bb.f

bb.f:                                             ; preds = %.noexc
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store ptr %i.j, ptr %i.c, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  invoke void @_RNvMs5_NtNtNtCsG258MDvU3F_3std4sync6poison5mutexINtB5_5MutexNtNtCs2WNwEIJRUGR_15futures_channel4mpsc10SenderTaskE4lockCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.b, ptr noundef nonnull align 8 %i.k)
          to label %bb.i unwind label %bb.h

.body.i:                                          ; preds = %bb.o, %bb.k, %bb.h
  %.pn.i = phi { ptr, i32 } [ %i.ad, %bb.o ], [ %i.o, %bb.h ], [ %i.w, %bb.k ] ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1143)
  call void @llvm.experimental.noalias.scope.decl(metadata !1144)
  %i.l = load ptr, ptr %i.c, align 8, !alias.scope !1145, !nonnull !7, !noundef !7
  %i.m = atomicrmw sub ptr %i.l, i64 1 release, align 8, !noalias !1145
  %i.n = icmp eq i64 %i.m, 1
  br i1 %i.n, label %bb.g, label %.body

bb.g:                                             ; preds = %.body.i
  fence acquire
  invoke void @_RNvMsn_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcINtNtNtNtCsG258MDvU3F_3std4sync6poison5mutex5MutexNtNtCs2WNwEIJRUGR_15futures_channel4mpsc10SenderTaskEE9drop_slowCs3WWrd2JY12C_5hyper(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.c) #20
          to label %.body unwind label %bb.v

bb.h:                                             ; preds = %bb.t, %bb.r, %bb.f
  %i.o = landingpad { ptr, i32 }
          cleanup
  br label %.body.i

bb.i:                                             ; preds = %bb.f
  call void @llvm.experimental.noalias.scope.decl(metadata !1146)
  %i.p = load i64, ptr %i.b, align 8, !range !9, !alias.scope !1146, !noundef !7
  %i.q = trunc nuw i64 %i.p to i1
  br i1 %i.q, label %bb.j, label %bb.n, !prof !8

bb.j:                                             ; preds = %bb.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !1147
  %i.r = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.s = load ptr, ptr %i.r, align 8, !alias.scope !1146, !nonnull !7, !align !17, !noundef !7
  %i.t = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.u = load i8, ptr %i.t, align 8, !range !18, !alias.scope !1146, !noundef !7
  store ptr %i.s, ptr %i.a, align 8, !noalias !1147
  %i.v = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i8 %i.u, ptr %i.v, align 8, !noalias !1147
  invoke void @_RNvNtCskKLDkoKarTP_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @35, i64 noundef 43, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @34, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @42) #17
          to label %bb.l unwind label %bb.k, !noalias !1146

bb.k:                                             ; preds = %bb.j
  %i.w = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCsG258MDvU3F_3std4sync6poison11PoisonErrorINtNtBE_5mutex10MutexGuardNtNtCs2WNwEIJRUGR_15futures_channel4mpsc10SenderTaskEEECsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.a) #19
          to label %.body.i unwind label %bb.m, !noalias !1146

bb.l:                                             ; preds = %bb.j
  unreachable

bb.m:                                             ; preds = %bb.k
end_hunk_0
