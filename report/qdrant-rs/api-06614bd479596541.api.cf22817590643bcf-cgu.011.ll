Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/qdrant-rs/original/api-06614bd479596541.api.cf22817590643bcf-cgu.011?download=true
inline.NumInlined: 319
inline.NumDeleted: 191
begin_hunk_0_@_RNvXs1p_NtNtCshMzyYDJGtjv_3api4grpc11conversionsNtNtCs607s0NAIaWN_7segment5types14FieldConditionINtNtCskKLDkoKarTP_4core7convert7TryFromNtNtB8_6qdrant14FieldConditionE8try_from:bb.a
  %.sroa.03.0.copyload = load i64, ptr %i.r, align 8 ; 3 uses
  %.sroa.75.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 152
  %.sroa.75.sroa.0.0.copyload = load i64, ptr %.sroa.75.0..sroa_idx, align 8
  %.sroa.75.sroa.6.0..sroa.75.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 160
  %.sroa.75.sroa.6.0.copyload = load i64, ptr %.sroa.75.sroa.6.0..sroa.75.0..sroa_idx.sroa_idx, align 8 ; 2 uses
  %.sroa.75.sroa.7.0..sroa.75.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 168
  %.sroa.75.sroa.7.0.copyload = load i64, ptr %.sroa.75.sroa.7.0..sroa.75.0..sroa_idx.sroa_idx, align 8
  %.sroa.75.sroa.8.0..sroa.75.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 176
  %.sroa.75.sroa.8.0.copyload = load i64, ptr %.sroa.75.sroa.8.0..sroa.75.0..sroa_idx.sroa_idx, align 8 ; 2 uses
  %.sroa.75.sroa.9.0..sroa.75.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 184
  %.sroa.75.sroa.9.0.copyload = load i64, ptr %.sroa.75.sroa.9.0..sroa.75.0..sroa_idx.sroa_idx, align 8
  %.sroa.75.sroa.10.0..sroa.75.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 192
  %.sroa.75.sroa.10.0.copyload = load i64, ptr %.sroa.75.sroa.10.0..sroa.75.0..sroa_idx.sroa_idx, align 8 ; 2 uses
  %.sroa.75.sroa.11.0..sroa.75.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 200
  %.sroa.75.sroa.11.0.copyload = load i64, ptr %.sroa.75.sroa.11.0..sroa.75.0..sroa_idx.sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j)
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 328
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.j, ptr noundef nonnull align 8 dereferenceable(48) %i.s, i64 48, i1 false)
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 208
  %.sroa.07.0.copyload = load i64, ptr %i.t, align 8 ; 2 uses
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 216
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 408
  %i.v = load i8, ptr %i.u, align 8, !range !162, !noundef !5
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 409
  %i.x = load i8, ptr %i.w, align 1, !range !162, !noundef !5
  %.not.i = icmp eq i64 %.sroa.0.0.copyload158, 2
  br i1 %.not.i, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.y = trunc nuw i64 %.sroa.0.0.copyload158 to i1
  %i.z = trunc nuw i64 %.sroa.8160.0.copyload to i1
  %or.cond.i.i.i = select i1 %i.y, i1 %i.z, i1 false
  br i1 %or.cond.i.i.i, label %bb.c, label %.invoke

bb.c:                                             ; preds = %bb.b
  %i.aa = inttoptr i64 %.sroa.6.0.copyload to ptr
  br label %bb.e

bb.d:                                             ; preds = %bb.p, %bb.h
  %.sroa.096.1.ph = phi i8 [ 1, %bb.h ], [ %.sroa.096.4, %bb.p ]
  %lpad.thr_comm.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %.thread

bb.e:                                             ; preds = %bb.c, %bb.a
  %.sroa.10171.1.ph = phi double [ undef, %bb.a ], [ %.sroa.7159.0.copyload, %bb.c ]
  %.sroa.7170.0.ph = phi ptr [ undef, %bb.a ], [ %i.aa, %bb.c ]
  %.sroa.0168.0.ph = phi i64 [ 0, %bb.a ], [ 1, %bb.c ]
  %i.ab = phi <2 x double> [ undef, %bb.a ], [ %i.p, %bb.c ]
  switch i64 %.sroa.0163.0.copyload, label %bb.f [
    i64 2, label %bb.g
    i64 0, label %.invoke
  ]

.invoke:                                          ; preds = %bb.e, %bb.b
  %i.ac = phi ptr [ @101, %bb.b ], [ @102, %bb.e ]
  %i.ad = phi i64 [ 29, %bb.b ], [ 24, %bb.e ]
  %i.ae = invoke noundef nonnull align 8 ptr @_RINvMs1_NtCsgOCJwUSa4vG_5tonic6statusNtB6_6Status3newReECshMzyYDJGtjv_3api(i8 noundef 3, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.ac, i64 noundef %i.ad)
          to label %_RINvMNtCskKLDkoKarTP_4core6optionINtB3_6OptionNtNtNtCshMzyYDJGtjv_3api4grpc6qdrant14GeoBoundingBoxE11map_or_elseINtNtB5_6result6ResultIBw_NtNtCs607s0NAIaWN_7segment5types14GeoBoundingBoxENtNtCsgOCJwUSa4vG_5tonic6status6StatusENCNvXs1p_NtBM_11conversionsNtB2e_14FieldConditionINtNtB5_7convert7TryFromNtBK_14FieldConditionE8try_from0NCB3E_s_0EBO_.exit unwind label %bb.am

bb.f:                                             ; preds = %bb.e
  %i.af = fpext float %.sroa.8166.0.copyload to double
  %i.ag = inttoptr i64 %.sroa.6164.0.copyload to ptr
  br label %bb.g

bb.g:                                             ; preds = %bb.e, %bb.f
  %.sroa.12177.1.ph = phi double [ undef, %bb.e ], [ %i.af, %bb.f ]
  %.sroa.10176.1.ph = phi double [ undef, %bb.e ], [ %.sroa.7165.0.copyload, %bb.f ]
  %.sroa.7175.0.ph = phi ptr [ undef, %bb.e ], [ %i.ag, %bb.f ]
  %.sroa.0173.0.ph = phi i64 [ 0, %bb.e ], [ 1, %bb.f ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.11)
  %.sroa.0181.0.copyload = load i64, ptr %i.j, align 8 ; 2 uses
  %.not.i147 = icmp eq i64 %.sroa.0181.0.copyload, -1
  br i1 %.not.i147, label %_RINvMNtCskKLDkoKarTP_4core6optionINtB3_6OptionNtNtNtCshMzyYDJGtjv_3api4grpc6qdrant10GeoPolygonE11map_or_elseINtNtB5_6result6ResultIBw_NtNtCs607s0NAIaWN_7segment5types10GeoPolygonENtNtCsgOCJwUSa4vG_5tonic6status6StatusENCNvXs1p_NtBM_11conversionsNtB2a_14FieldConditionINtNtB5_7convert7TryFromNtBK_14FieldConditionE8try_froms2_0NCB3w_s3_0EBO_.exit.thread, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ah = getelementptr inbounds nuw i8, ptr %1, i64 336
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !308
  store i64 %.sroa.0181.0.copyload, ptr %i.c, align 8, !noalias !312
  %.sroa.5183.0..sroa_idx184 = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.5183.0..sroa_idx184, ptr noundef nonnull align 8 dereferenceable(40) %i.ah, i64 40, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !313
  invoke void @_RNvXs1v_NtNtCshMzyYDJGtjv_3api4grpc11conversionsNtNtCs607s0NAIaWN_7segment5types10GeoPolygonINtNtCskKLDkoKarTP_4core7convert7TryFromNtNtB8_6qdrant10GeoPolygonE8try_from(ptr noalias nofree noundef nonnull sret([48 x i8]) align 8 captures(none) dereferenceable(48) %i.b, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(48) %i.c)
          to label %.noexc148 unwind label %bb.d

.noexc148:                                        ; preds = %bb.h
  %i.ai = load i64, ptr %i.b, align 8, !range !4, !noalias !313, !noundef !5 ; 2 uses
  %i.aj = icmp eq i64 %i.ai, -1
  %i.ak = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.al = load ptr, ptr %i.ak, align 8, !noalias !317 ; 2 uses
  br i1 %i.aj, label %bb.i, label %_RINvMNtCskKLDkoKarTP_4core6optionINtB3_6OptionNtNtNtCshMzyYDJGtjv_3api4grpc6qdrant10GeoPolygonE11map_or_elseINtNtB5_6result6ResultIBw_NtNtCs607s0NAIaWN_7segment5types10GeoPolygonENtNtCsgOCJwUSa4vG_5tonic6status6StatusENCNvXs1p_NtBM_11conversionsNtB2a_14FieldConditionINtNtB5_7convert7TryFromNtBK_14FieldConditionE8try_froms2_0NCB3w_s3_0EBO_.exit

_RINvMNtCskKLDkoKarTP_4core6optionINtB3_6OptionNtNtNtCshMzyYDJGtjv_3api4grpc6qdrant10GeoPolygonE11map_or_elseINtNtB5_6result6ResultIBw_NtNtCs607s0NAIaWN_7segment5types10GeoPolygonENtNtCsgOCJwUSa4vG_5tonic6status6StatusENCNvXs1p_NtBM_11conversionsNtB2a_14FieldConditionINtNtB5_7convert7TryFromNtBK_14FieldConditionE8try_froms2_0NCB3w_s3_0EBO_.exit: ; preds = %.noexc148
  %.sroa.11.0..sroa_idx180 = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.11, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.11.0..sroa_idx180, i64 32, i1 false), !noalias !317
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !313
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !308
  br label %_RINvMNtCskKLDkoKarTP_4core6optionINtB3_6OptionNtNtNtCshMzyYDJGtjv_3api4grpc6qdrant10GeoPolygonE11map_or_elseINtNtB5_6result6ResultIBw_NtNtCs607s0NAIaWN_7segment5types10GeoPolygonENtNtCsgOCJwUSa4vG_5tonic6status6StatusENCNvXs1p_NtBM_11conversionsNtB2a_14FieldConditionINtNtB5_7convert7TryFromNtBK_14FieldConditionE8try_froms2_0NCB3w_s3_0EBO_.exit.thread

bb.i:                                             ; preds = %.noexc148
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !313
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !308
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.11)
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.al, ptr %i.am, align 8
  store i64 2, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  br label %bb.aj

_RINvMNtCskKLDkoKarTP_4core6optionINtB3_6OptionNtNtNtCshMzyYDJGtjv_3api4grpc6qdrant10GeoPolygonE11map_or_elseINtNtB5_6result6ResultIBw_NtNtCs607s0NAIaWN_7segment5types10GeoPolygonENtNtCsgOCJwUSa4vG_5tonic6status6StatusENCNvXs1p_NtBM_11conversionsNtB2a_14FieldConditionINtNtB5_7convert7TryFromNtBK_14FieldConditionE8try_froms2_0NCB3w_s3_0EBO_.exit.thread: ; preds = %bb.g, %_RINvMNtCskKLDkoKarTP_4core6optionINtB3_6OptionNtNtNtCshMzyYDJGtjv_3api4grpc6qdrant10GeoPolygonE11map_or_elseINtNtB5_6result6ResultIBw_NtNtCs607s0NAIaWN_7segment5types10GeoPolygonENtNtCsgOCJwUSa4vG_5tonic6status6StatusENCNvXs1p_NtBM_11conversionsNtB2a_14FieldConditionINtNtB5_7convert7TryFromNtBK_14FieldConditionE8try_froms2_0NCB3w_s3_0EBO_.exit
  %.sroa.0178.1254 = phi i64 [ %i.ai, %_RINvMNtCskKLDkoKarTP_4core6optionINtB3_6OptionNtNtNtCshMzyYDJGtjv_3api4grpc6qdrant10GeoPolygonE11map_or_elseINtNtB5_6result6ResultIBw_NtNtCs607s0NAIaWN_7segment5types10GeoPolygonENtNtCsgOCJwUSa4vG_5tonic6status6StatusENCNvXs1p_NtBM_11conversionsNtB2a_14FieldConditionINtNtB5_7convert7TryFromNtBK_14FieldConditionE8try_froms2_0NCB3w_s3_0EBO_.exit ], [ -1, %bb.g ]
  %.sroa.8179.1253 = phi ptr [ %i.al, %_RINvMNtCskKLDkoKarTP_4core6optionINtB3_6OptionNtNtNtCshMzyYDJGtjv_3api4grpc6qdrant10GeoPolygonE11map_or_elseINtNtB5_6result6ResultIBw_NtNtCs607s0NAIaWN_7segment5types10GeoPolygonENtNtCsgOCJwUSa4vG_5tonic6status6StatusENCNvXs1p_NtBM_11conversionsNtB2a_14FieldConditionINtNtB5_7convert7TryFromNtBK_14FieldConditionE8try_froms2_0NCB3w_s3_0EBO_.exit ], [ undef, %bb.g ]
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.5.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.11, i64 32, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.11)
  store i64 %.sroa.0178.1254, ptr %i.i, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  store ptr %.sroa.8179.1253, ptr %.sroa.4.0..sroa_idx, align 8
  %.not = icmp eq i64 %.sroa.0.0.copyload, 2
  br i1 %.not, label %bb.j, label %bb.q

bb.j:                                             ; preds = %_RINvMNtCskKLDkoKarTP_4core6optionINtB3_6OptionNtNtNtCshMzyYDJGtjv_3api4grpc6qdrant10GeoPolygonE11map_or_elseINtNtB5_6result6ResultIBw_NtNtCs607s0NAIaWN_7segment5types10GeoPolygonENtNtCsgOCJwUSa4vG_5tonic6status6StatusENCNvXs1p_NtBM_11conversionsNtB2a_14FieldConditionINtNtB5_7convert7TryFromNtBK_14FieldConditionE8try_froms2_0NCB3w_s3_0EBO_.exit.thread
  %.not128 = icmp eq i64 %.sroa.07.0.copyload, 2
  br i1 %.not128, label %bb.o, label %bb.k

bb.k:                                             ; preds = %bb.j
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  store i64 %.sroa.07.0.copyload, ptr %i.e, align 8
  %.sroa.8.0..sroa_idx9 = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(88) %.sroa.8.0..sroa_idx9, ptr noundef nonnull align 8 dereferenceable(88) %.sroa.8.0..sroa_idx, i64 88, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  invoke void @_RNvXs1D_NtNtCshMzyYDJGtjv_3api4grpc11conversionsNtNtCs607s0NAIaWN_7segment5types14RangeInterfaceINtNtCskKLDkoKarTP_4core7convert7TryFromNtNtB8_6qdrant13DatetimeRangeE8try_from(ptr noalias nofree noundef nonnull sret([64 x i8]) align 8 captures(none) dereferenceable(64) %i.d, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(96) %i.e)
          to label %bb.m unwind label %bb.l

bb.l:                                             ; preds = %bb.w, %bb.o, %bb.k
  %.sroa.096.3 = phi i8 [ 0, %bb.w ], [ 1, %bb.o ], [ 1, %bb.k ]
  %i.an = landingpad { ptr, i32 }
          cleanup
  br label %bb.ai

bb.m:                                             ; preds = %bb.k
  %.sroa.052.0.copyload = load i64, ptr %i.d, align 8 ; 2 uses
  %.sroa.654.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %.sroa.654.0.copyload = load ptr, ptr %.sroa.654.0..sroa_idx, align 8 ; 3 uses
  %.sroa.757.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %.sroa.757.sroa.0.0.copyload = load i64, ptr %.sroa.757.0..sroa_idx, align 8
  %.sroa.757.sroa.5.0..sroa.757.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  %.sroa.757.sroa.5.0.copyload = load double, ptr %.sroa.757.sroa.5.0..sroa.757.0..sroa_idx.sroa_idx, align 8
  %.sroa.757.sroa.6.0..sroa.757.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 32
  %.sroa.757.sroa.6.0.copyload = load i64, ptr %.sroa.757.sroa.6.0..sroa.757.0..sroa_idx.sroa_idx, align 8
  %.sroa.757.sroa.7.0..sroa.757.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 40
  %.sroa.757.sroa.7.0.copyload = load double, ptr %.sroa.757.sroa.7.0..sroa.757.0..sroa_idx.sroa_idx, align 8
  %.sroa.757.sroa.8.0..sroa.757.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 48
  %.sroa.757.sroa.8.0.copyload = load i64, ptr %.sroa.757.sroa.8.0..sroa.757.0..sroa_idx.sroa_idx, align 8
  %.sroa.757.sroa.9.0..sroa.757.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 56
  %.sroa.757.sroa.9.0.copyload = load double, ptr %.sroa.757.sroa.9.0..sroa.757.0..sroa_idx.sroa_idx, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  %i.ao = icmp eq i64 %.sroa.052.0.copyload, -1
  br i1 %i.ao, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.654.0.copyload) ]
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sroa.654.0.copyload, ptr %i.ap, align 8
  store i64 2, ptr %0, align 8
  br label %bb.p

bb.o:                                             ; preds = %bb.m, %bb.j, %bb.q
  %.sroa.564.sroa.7.0 = phi double [ %.sroa.517.0.i.i, %bb.q ], [ undef, %bb.j ], [ %.sroa.757.sroa.9.0.copyload, %bb.m ]
  %.sroa.564.sroa.6.0 = phi i64 [ %.sroa.7.sroa.10.0.copyload, %bb.q ], [ undef, %bb.j ], [ %.sroa.757.sroa.8.0.copyload, %bb.m ]
  %.sroa.564.sroa.5.0 = phi double [ %.sroa.515.0.i.i, %bb.q ], [ undef, %bb.j ], [ %.sroa.757.sroa.7.0.copyload, %bb.m ]
  %.sroa.564.sroa.4.0 = phi i64 [ %.sroa.7.sroa.8.0.copyload, %bb.q ], [ undef, %bb.j ], [ %.sroa.757.sroa.6.0.copyload, %bb.m ]
  %.sroa.564.sroa.3.0 = phi double [ %.sroa.513.0.i.i, %bb.q ], [ undef, %bb.j ], [ %.sroa.757.sroa.5.0.copyload, %bb.m ]
  %.sroa.564.sroa.0.0 = phi i64 [ %.sroa.7.sroa.6.0.copyload, %bb.q ], [ undef, %bb.j ], [ %.sroa.757.sroa.0.0.copyload, %bb.m ]
  %.sroa.461.0 = phi ptr [ %3, %bb.q ], [ undef, %bb.j ], [ %.sroa.654.0.copyload, %bb.m ]
  %.sroa.059.0 = phi i64 [ %.sroa.0.0.copyload, %bb.q ], [ -1, %bb.j ], [ %.sroa.052.0.copyload, %bb.m ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  %i.aq = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  %i.ar = load ptr, ptr %i.aq, align 8, !nonnull !5, !noundef !5
  %i.as = getelementptr inbounds nuw i8, ptr %i.l, i64 16
  %i.at = load i64, ptr %i.as, align 8, !noundef !5
  invoke void @_RNvNtNtCshMzyYDJGtjv_3api11conversions4json20json_path_from_proto(ptr noalias nofree noundef nonnull sret([48 x i8]) align 8 captures(none) dereferenceable(48) %i.g, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.ar, i64 noundef %i.at)
          to label %bb.r unwind label %bb.l

bb.p:                                             ; preds = %bb.ac, %bb.n
  %.sroa.096.4 = phi i8 [ %.sroa.096.5, %bb.ac ], [ 1, %bb.n ] ; 2 uses
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs607s0NAIaWN_7segment5types10GeoPolygonEECshMzyYDJGtjv_3api(ptr noalias nofree noundef align 8 dereferenceable(48) %i.i)
          to label %bb.ad unwind label %bb.d

bb.q:                                             ; preds = %_RINvMNtCskKLDkoKarTP_4core6optionINtB3_6OptionNtNtNtCshMzyYDJGtjv_3api4grpc6qdrant10GeoPolygonE11map_or_elseINtNtB5_6result6ResultIBw_NtNtCs607s0NAIaWN_7segment5types10GeoPolygonENtNtCsgOCJwUSa4vG_5tonic6status6StatusENCNvXs1p_NtBM_11conversionsNtB2a_14FieldConditionINtNtB5_7convert7TryFromNtBK_14FieldConditionE8try_froms2_0NCB3w_s3_0EBO_.exit.thread
  %i.au = trunc nuw i64 %.sroa.0.0.copyload to i1
  %i.av = trunc nuw i64 %.sroa.7.sroa.6.0.copyload to i1
  %.sroa.513.0.i.i = select i1 %i.av, double %.sroa.7.sroa.7.0.copyload, double undef
  %i.aw = trunc nuw i64 %.sroa.7.sroa.8.0.copyload to i1
  %.sroa.515.0.i.i = select i1 %i.aw, double %.sroa.7.sroa.9.0.copyload, double undef
  %i.ax = trunc nuw i64 %.sroa.7.sroa.10.0.copyload to i1
  %.sroa.517.0.i.i = select i1 %i.ax, double %.sroa.7.sroa.11.0.copyload, double undef
  %2 = inttoptr i64 %.sroa.7.sroa.0.0.copyload283 to ptr
  %3 = select i1 %i.au, ptr %2, ptr undef
  br label %bb.o

bb.r:                                             ; preds = %bb.o
  %i.ay = load i64, ptr %i.g, align 8, !range !4, !noundef !5 ; 2 uses
  %i.az = icmp eq i64 %i.ay, -1
  %i.ba = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %i.bb = load ptr, ptr %i.ba, align 8            ; 2 uses
  br i1 %i.az, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.bb, ptr %i.bc, align 8
  store i64 2, ptr %0, align 8
  br label %bb.ac

bb.t:                                             ; preds = %bb.r
  %.sroa.5122.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  %.sroa.581.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.581.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.5122.0..sroa_idx, i64 32, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  store i64 %i.ay, ptr %i.h, align 8
  %.sroa.480.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  store ptr %i.bb, ptr %.sroa.480.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.f, ptr noundef nonnull align 8 dereferenceable(32) %i.k, i64 32, i1 false)
  call void @llvm.experimental.noalias.scope.decl(metadata !318)
  %i.bd = load i8, ptr %i.f, align 8, !range !17, !alias.scope !318, !noalias !321, !noundef !5
  %.not.i154 = icmp eq i8 %i.bd, -2
  br i1 %.not.i154, label %_RINvMNtCskKLDkoKarTP_4core6optionINtB3_6OptionNtNtNtCshMzyYDJGtjv_3api4grpc6qdrant5MatchE11map_or_elseINtNtB5_6result6ResultIBw_NtNtCs607s0NAIaWN_7segment5types5MatchENtNtCsgOCJwUSa4vG_5tonic6status6StatusENCNvXs1p_NtBM_11conversionsNtB24_14FieldConditionINtNtB5_7convert7TryFromNtBK_14FieldConditionE8try_froms4_0NCB3k_s5_0EBO_.exit.thread, label %bb.u

bb.u:                                             ; preds = %bb.t
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !323
  invoke void @_RNvXs1H_NtNtCshMzyYDJGtjv_3api4grpc11conversionsNtNtCs607s0NAIaWN_7segment5types5MatchINtNtCskKLDkoKarTP_4core7convert7TryFromNtNtB8_6qdrant5MatchE8try_from(ptr noalias nofree noundef nonnull sret([72 x i8]) align 8 captures(none) dereferenceable(72) %i.a, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %i.f)
          to label %.noexc155 unwind label %bb.v

.noexc155:                                        ; preds = %bb.u
  %i.be = load i64, ptr %i.a, align 8, !range !160, !noalias !323, !noundef !5 ; 2 uses
  %i.bf = icmp eq i64 %i.be, -1
  %i.bg = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.bh = load ptr, ptr %i.bg, align 8, !noalias !327 ; 2 uses
  br i1 %i.bf, label %bb.w, label %_RINvMNtCskKLDkoKarTP_4core6optionINtB3_6OptionNtNtNtCshMzyYDJGtjv_3api4grpc6qdrant5MatchE11map_or_elseINtNtB5_6result6ResultIBw_NtNtCs607s0NAIaWN_7segment5types5MatchENtNtCsgOCJwUSa4vG_5tonic6status6StatusENCNvXs1p_NtBM_11conversionsNtB24_14FieldConditionINtNtB5_7convert7TryFromNtBK_14FieldConditionE8try_froms4_0NCB3k_s5_0EBO_.exit

bb.v:                                             ; preds = %bb.u
  %i.bi = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCs607s0NAIaWN_7segment9json_path8JsonPathECshMzyYDJGtjv_3api(ptr noalias nofree noundef align 8 dereferenceable(48) %i.h) #15
          to label %bb.ai unwind label %bb.ab

_RINvMNtCskKLDkoKarTP_4core6optionINtB3_6OptionNtNtNtCshMzyYDJGtjv_3api4grpc6qdrant5MatchE11map_or_elseINtNtB5_6result6ResultIBw_NtNtCs607s0NAIaWN_7segment5types5MatchENtNtCsgOCJwUSa4vG_5tonic6status6StatusENCNvXs1p_NtBM_11conversionsNtB24_14FieldConditionINtNtB5_7convert7TryFromNtBK_14FieldConditionE8try_froms4_0NCB3k_s5_0EBO_.exit: ; preds = %.noexc155
  %.sroa.11187.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %.sroa.11187, ptr noundef nonnull align 8 dereferenceable(56) %.sroa.11187.0..sroa_idx, i64 56, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !323
  br label %_RINvMNtCskKLDkoKarTP_4core6optionINtB3_6OptionNtNtNtCshMzyYDJGtjv_3api4grpc6qdrant5MatchE11map_or_elseINtNtB5_6result6ResultIBw_NtNtCs607s0NAIaWN_7segment5types5MatchENtNtCsgOCJwUSa4vG_5tonic6status6StatusENCNvXs1p_NtBM_11conversionsNtB24_14FieldConditionINtNtB5_7convert7TryFromNtBK_14FieldConditionE8try_froms4_0NCB3k_s5_0EBO_.exit.thread

bb.w:                                             ; preds = %.noexc155
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !323
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  %i.bj = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.bh, ptr %i.bj, align 8
  store i64 2, ptr %0, align 8
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCs607s0NAIaWN_7segment9json_path8JsonPathECshMzyYDJGtjv_3api(ptr noalias nofree noundef align 8 dereferenceable(48) %i.h)
          to label %bb.ac unwind label %bb.l

_RINvMNtCskKLDkoKarTP_4core6optionINtB3_6OptionNtNtNtCshMzyYDJGtjv_3api4grpc6qdrant5MatchE11map_or_elseINtNtB5_6result6ResultIBw_NtNtCs607s0NAIaWN_7segment5types5MatchENtNtCsgOCJwUSa4vG_5tonic6status6StatusENCNvXs1p_NtBM_11conversionsNtB24_14FieldConditionINtNtB5_7convert7TryFromNtBK_14FieldConditionE8try_froms4_0NCB3k_s5_0EBO_.exit.thread: ; preds = %bb.t, %_RINvMNtCskKLDkoKarTP_4core6optionINtB3_6OptionNtNtNtCshMzyYDJGtjv_3api4grpc6qdrant5MatchE11map_or_elseINtNtB5_6result6ResultIBw_NtNtCs607s0NAIaWN_7segment5types5MatchENtNtCsgOCJwUSa4vG_5tonic6status6StatusENCNvXs1p_NtBM_11conversionsNtB24_14FieldConditionINtNtB5_7convert7TryFromNtBK_14FieldConditionE8try_froms4_0NCB3k_s5_0EBO_.exit
  %.sroa.0185.1271 = phi i64 [ %i.be, %_RINvMNtCskKLDkoKarTP_4core6optionINtB3_6OptionNtNtNtCshMzyYDJGtjv_3api4grpc6qdrant5MatchE11map_or_elseINtNtB5_6result6ResultIBw_NtNtCs607s0NAIaWN_7segment5types5MatchENtNtCsgOCJwUSa4vG_5tonic6status6StatusENCNvXs1p_NtBM_11conversionsNtB24_14FieldConditionINtNtB5_7convert7TryFromNtBK_14FieldConditionE8try_froms4_0NCB3k_s5_0EBO_.exit ], [ -1, %bb.t ]
  %.sroa.8186.1270 = phi ptr [ %i.bh, %_RINvMNtCskKLDkoKarTP_4core6optionINtB3_6OptionNtNtNtCshMzyYDJGtjv_3api4grpc6qdrant5MatchE11map_or_elseINtNtB5_6result6ResultIBw_NtNtCs607s0NAIaWN_7segment5types5MatchENtNtCsgOCJwUSa4vG_5tonic6status6StatusENCNvXs1p_NtBM_11conversionsNtB24_14FieldConditionINtNtB5_7convert7TryFromNtBK_14FieldConditionE8try_froms4_0NCB3k_s5_0EBO_.exit ], [ undef, %bb.t ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  %.not129 = icmp eq i64 %.sroa.03.0.copyload, 2
  br i1 %.not129, label %bb.x, label %bb.aa

bb.x:                                             ; preds = %_RINvMNtCskKLDkoKarTP_4core6optionINtB3_6OptionNtNtNtCshMzyYDJGtjv_3api4grpc6qdrant5MatchE11map_or_elseINtNtB5_6result6ResultIBw_NtNtCs607s0NAIaWN_7segment5types5MatchENtNtCsgOCJwUSa4vG_5tonic6status6StatusENCNvXs1p_NtBM_11conversionsNtB24_14FieldConditionINtNtB5_7convert7TryFromNtBK_14FieldConditionE8try_froms4_0NCB3k_s5_0EBO_.exit.thread, %bb.aa
  %.sroa.594.sroa.0.0 = phi i64 [ undef, %_RINvMNtCskKLDkoKarTP_4core6optionINtB3_6OptionNtNtNtCshMzyYDJGtjv_3api4grpc6qdrant5MatchE11map_or_elseINtNtB5_6result6ResultIBw_NtNtCs607s0NAIaWN_7segment5types5MatchENtNtCsgOCJwUSa4vG_5tonic6status6StatusENCNvXs1p_NtBM_11conversionsNtB24_14FieldConditionINtNtB5_7convert7TryFromNtBK_14FieldConditionE8try_froms4_0NCB3k_s5_0EBO_.exit.thread ], [ %.sroa.5.0.i, %bb.aa ]
  %.sroa.594.sroa.4.0 = phi i64 [ undef, %_RINvMNtCskKLDkoKarTP_4core6optionINtB3_6OptionNtNtNtCshMzyYDJGtjv_3api4grpc6qdrant5MatchE11map_or_elseINtNtB5_6result6ResultIBw_NtNtCs607s0NAIaWN_7segment5types5MatchENtNtCsgOCJwUSa4vG_5tonic6status6StatusENCNvXs1p_NtBM_11conversionsNtB24_14FieldConditionINtNtB5_7convert7TryFromNtBK_14FieldConditionE8try_froms4_0NCB3k_s5_0EBO_.exit.thread ], [ %.sroa.75.sroa.6.0.copyload, %bb.aa ]
  %.sroa.594.sroa.5.0 = phi i64 [ undef, %_RINvMNtCskKLDkoKarTP_4core6optionINtB3_6OptionNtNtNtCshMzyYDJGtjv_3api4grpc6qdrant5MatchE11map_or_elseINtNtB5_6result6ResultIBw_NtNtCs607s0NAIaWN_7segment5types5MatchENtNtCsgOCJwUSa4vG_5tonic6status6StatusENCNvXs1p_NtBM_11conversionsNtB24_14FieldConditionINtNtB5_7convert7TryFromNtBK_14FieldConditionE8try_froms4_0NCB3k_s5_0EBO_.exit.thread ], [ %.sroa.513.0.i, %bb.aa ]
  %.sroa.594.sroa.6.0 = phi i64 [ undef, %_RINvMNtCskKLDkoKarTP_4core6optionINtB3_6OptionNtNtNtCshMzyYDJGtjv_3api4grpc6qdrant5MatchE11map_or_elseINtNtB5_6result6ResultIBw_NtNtCs607s0NAIaWN_7segment5types5MatchENtNtCsgOCJwUSa4vG_5tonic6status6StatusENCNvXs1p_NtBM_11conversionsNtB24_14FieldConditionINtNtB5_7convert7TryFromNtBK_14FieldConditionE8try_froms4_0NCB3k_s5_0EBO_.exit.thread ], [ %.sroa.75.sroa.8.0.copyload, %bb.aa ]
  %.sroa.594.sroa.7.0 = phi i64 [ undef, %_RINvMNtCskKLDkoKarTP_4core6optionINtB3_6OptionNtNtNtCshMzyYDJGtjv_3api4grpc6qdrant5MatchE11map_or_elseINtNtB5_6result6ResultIBw_NtNtCs607s0NAIaWN_7segment5types5MatchENtNtCsgOCJwUSa4vG_5tonic6status6StatusENCNvXs1p_NtBM_11conversionsNtB24_14FieldConditionINtNtB5_7convert7TryFromNtBK_14FieldConditionE8try_froms4_0NCB3k_s5_0EBO_.exit.thread ], [ %.sroa.515.0.i, %bb.aa ]
  %.sroa.594.sroa.8.0 = phi i64 [ undef, %_RINvMNtCskKLDkoKarTP_4core6optionINtB3_6OptionNtNtNtCshMzyYDJGtjv_3api4grpc6qdrant5MatchE11map_or_elseINtNtB5_6result6ResultIBw_NtNtCs607s0NAIaWN_7segment5types5MatchENtNtCsgOCJwUSa4vG_5tonic6status6StatusENCNvXs1p_NtBM_11conversionsNtB24_14FieldConditionINtNtB5_7convert7TryFromNtBK_14FieldConditionE8try_froms4_0NCB3k_s5_0EBO_.exit.thread ], [ %.sroa.75.sroa.10.0.copyload, %bb.aa ]
  %.sroa.594.sroa.9.0 = phi i64 [ undef, %_RINvMNtCskKLDkoKarTP_4core6optionINtB3_6OptionNtNtNtCshMzyYDJGtjv_3api4grpc6qdrant5MatchE11map_or_elseINtNtB5_6result6ResultIBw_NtNtCs607s0NAIaWN_7segment5types5MatchENtNtCsgOCJwUSa4vG_5tonic6status6StatusENCNvXs1p_NtBM_11conversionsNtB24_14FieldConditionINtNtB5_7convert7TryFromNtBK_14FieldConditionE8try_froms4_0NCB3k_s5_0EBO_.exit.thread ], [ %.sroa.517.0.i, %bb.aa ]
  %.sroa.15.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 272
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %.sroa.15.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(48) %i.h, i64 48, i1 false)
  %.sroa.16.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 320
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %.sroa.16.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(48) %i.i, i64 48, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  store i64 %.sroa.0168.0.ph, ptr %0, align 8
  %.sroa.567.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sroa.7170.0.ph, ptr %.sroa.567.0..sroa_idx, align 8
  %.sroa.668.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store double %.sroa.10171.1.ph, ptr %.sroa.668.0..sroa_idx, align 8
  %.sroa.668.sroa.5.0..sroa.668.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store <2 x double> %i.ab, ptr %.sroa.668.sroa.5.0..sroa.668.0..sroa_idx.sroa_idx, align 8
  %.sroa.769.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i64 %.sroa.0173.0.ph, ptr %.sroa.769.0..sroa_idx, align 8
  %.sroa.870.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 48
  store ptr %.sroa.7175.0.ph, ptr %.sroa.870.0..sroa_idx, align 8
  %.sroa.971.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 56
  store double %.sroa.10176.1.ph, ptr %.sroa.971.0..sroa_idx, align 8
  %.sroa.971.sroa.5.0..sroa.971.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 64
  store double %.sroa.12177.1.ph, ptr %.sroa.971.sroa.5.0..sroa.971.0..sroa_idx.sroa_idx, align 8
  %.sroa.10.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 72
  store i64 %.sroa.03.0.copyload, ptr %.sroa.10.0..sroa_idx, align 8
  %.sroa.10.sroa.5.0..sroa.10.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 80
  store i64 %.sroa.594.sroa.0.0, ptr %.sroa.10.sroa.5.0..sroa.10.0..sroa_idx.sroa_idx, align 8
  %.sroa.10.sroa.5.sroa.5.0..sroa.10.sroa.5.0..sroa.10.0..sroa_idx.sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 88
  store i64 %.sroa.594.sroa.4.0, ptr %.sroa.10.sroa.5.sroa.5.0..sroa.10.sroa.5.0..sroa.10.0..sroa_idx.sroa_idx.sroa_idx, align 8
  %.sroa.10.sroa.5.sroa.6.0..sroa.10.sroa.5.0..sroa.10.0..sroa_idx.sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 96
  store i64 %.sroa.594.sroa.5.0, ptr %.sroa.10.sroa.5.sroa.6.0..sroa.10.sroa.5.0..sroa.10.0..sroa_idx.sroa_idx.sroa_idx, align 8
  %.sroa.10.sroa.5.sroa.7.0..sroa.10.sroa.5.0..sroa.10.0..sroa_idx.sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 104
  store i64 %.sroa.594.sroa.6.0, ptr %.sroa.10.sroa.5.sroa.7.0..sroa.10.sroa.5.0..sroa.10.0..sroa_idx.sroa_idx.sroa_idx, align 8
  %.sroa.10.sroa.5.sroa.8.0..sroa.10.sroa.5.0..sroa.10.0..sroa_idx.sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 112
  store i64 %.sroa.594.sroa.7.0, ptr %.sroa.10.sroa.5.sroa.8.0..sroa.10.sroa.5.0..sroa.10.0..sroa_idx.sroa_idx.sroa_idx, align 8
  %.sroa.10.sroa.5.sroa.9.0..sroa.10.sroa.5.0..sroa.10.0..sroa_idx.sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 120
  store i64 %.sroa.594.sroa.8.0, ptr %.sroa.10.sroa.5.sroa.9.0..sroa.10.sroa.5.0..sroa.10.0..sroa_idx.sroa_idx.sroa_idx, align 8
  %.sroa.10.sroa.5.sroa.10.0..sroa.10.sroa.5.0..sroa.10.0..sroa_idx.sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 128
  store i64 %.sroa.594.sroa.9.0, ptr %.sroa.10.sroa.5.sroa.10.0..sroa.10.sroa.5.0..sroa.10.0..sroa_idx.sroa_idx.sroa_idx, align 8
  %.sroa.11.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 136
  store i64 %.sroa.059.0, ptr %.sroa.11.0..sroa_idx, align 8
  %.sroa.12.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 144
  store ptr %.sroa.461.0, ptr %.sroa.12.0..sroa_idx, align 8
  %.sroa.13.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 152
  store i64 %.sroa.564.sroa.0.0, ptr %.sroa.13.0..sroa_idx, align 8
  %.sroa.13.sroa.5.0..sroa.13.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 160
  store double %.sroa.564.sroa.3.0, ptr %.sroa.13.sroa.5.0..sroa.13.0..sroa_idx.sroa_idx, align 8
  %.sroa.13.sroa.6.0..sroa.13.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 168
  store i64 %.sroa.564.sroa.4.0, ptr %.sroa.13.sroa.6.0..sroa.13.0..sroa_idx.sroa_idx, align 8
  %.sroa.13.sroa.7.0..sroa.13.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 176
  store double %.sroa.564.sroa.5.0, ptr %.sroa.13.sroa.7.0..sroa.13.0..sroa_idx.sroa_idx, align 8
  %.sroa.13.sroa.8.0..sroa.13.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 184
  store i64 %.sroa.564.sroa.6.0, ptr %.sroa.13.sroa.8.0..sroa.13.0..sroa_idx.sroa_idx, align 8
  %.sroa.13.sroa.9.0..sroa.13.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 192
  store double %.sroa.564.sroa.7.0, ptr %.sroa.13.sroa.9.0..sroa.13.0..sroa_idx.sroa_idx, align 8
  %.sroa.14.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 200
  store i64 %.sroa.0185.1271, ptr %.sroa.14.0..sroa_idx, align 8
  %.sroa.14.sroa.5.0..sroa.14.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 208
  store ptr %.sroa.8186.1270, ptr %.sroa.14.sroa.5.0..sroa.14.0..sroa_idx.sroa_idx, align 8
  %.sroa.14.sroa.6.0..sroa.14.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 216
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %.sroa.14.sroa.6.0..sroa.14.0..sroa_idx.sroa_idx, ptr noundef nonnull align 8 dereferenceable(56) %.sroa.11187, i64 56, i1 false)
  %.sroa.17.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 368
  store i8 %i.v, ptr %.sroa.17.0..sroa_idx, align 8
  %.sroa.18.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 369
  store i8 %i.x, ptr %.sroa.18.0..sroa_idx, align 1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k)
  invoke void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCshMzyYDJGtjv_3api(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.l)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECshMzyYDJGtjv_3api.exit157 unwind label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.bk = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCshMzyYDJGtjv_3api(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.l)
          to label %common.resume unwind label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.bl = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #14
  unreachable

common.resume:                                    ; preds = %.thread.thread, %bb.af, %bb.y
  %common.resume.op = phi { ptr, i32 } [ %i.bs, %bb.af ], [ %i.bk, %bb.y ], [ %.pn135, %.thread.thread ]
  resume { ptr, i32 } %common.resume.op

bb.aa:                                            ; preds = %_RINvMNtCskKLDkoKarTP_4core6optionINtB3_6OptionNtNtNtCshMzyYDJGtjv_3api4grpc6qdrant5MatchE11map_or_elseINtNtB5_6result6ResultIBw_NtNtCs607s0NAIaWN_7segment5types5MatchENtNtCsgOCJwUSa4vG_5tonic6status6StatusENCNvXs1p_NtBM_11conversionsNtB24_14FieldConditionINtNtB5_7convert7TryFromNtBK_14FieldConditionE8try_froms4_0NCB3k_s5_0EBO_.exit.thread
  %i.bm = trunc nuw i64 %.sroa.03.0.copyload to i1
  %.sroa.5.0.i = select i1 %i.bm, i64 %.sroa.75.sroa.0.0.copyload, i64 undef
  %i.bn = trunc nuw i64 %.sroa.75.sroa.6.0.copyload to i1
  %.sroa.513.0.i = select i1 %i.bn, i64 %.sroa.75.sroa.7.0.copyload, i64 undef
  %i.bo = trunc nuw i64 %.sroa.75.sroa.8.0.copyload to i1
  %.sroa.515.0.i = select i1 %i.bo, i64 %.sroa.75.sroa.9.0.copyload, i64 undef
  %i.bp = trunc nuw i64 %.sroa.75.sroa.10.0.copyload to i1
  %.sroa.517.0.i = select i1 %i.bp, i64 %.sroa.75.sroa.11.0.copyload, i64 undef
  br label %bb.x

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECshMzyYDJGtjv_3api.exit157: ; preds = %bb.x, %bb.ae
  call void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCshMzyYDJGtjv_3api(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.l)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l)
  ret void

bb.ab:                                            ; preds = %.thread277, %bb.am, %.thread.thread, %bb.ai, %bb.v
  %i.bq = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #14
  unreachable

bb.ac:                                            ; preds = %bb.w, %bb.s
  %.sroa.096.5 = phi i8 [ 1, %bb.s ], [ 0, %bb.w ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  br label %bb.p

bb.ad:                                            ; preds = %bb.p
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j)
  %i.br = trunc nuw i8 %.sroa.096.4 to i1
  br i1 %i.br, label %bb.ah, label %bb.ae

bb.ae:                                            ; preds = %bb.ah, %bb.ad
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k)
  invoke void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCshMzyYDJGtjv_3api(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.l)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECshMzyYDJGtjv_3api.exit157 unwind label %bb.af
end_hunk_0
