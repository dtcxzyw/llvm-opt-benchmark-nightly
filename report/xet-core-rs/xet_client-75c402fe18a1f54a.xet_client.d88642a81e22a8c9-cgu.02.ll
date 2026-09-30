Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/xet-core-rs/original/xet_client-75c402fe18a1f54a.xet_client.d88642a81e22a8c9-cgu.02?download=true
inline.NumInlined: 1874
inline.NumDeleted: 671
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0_@_RNCNCNCINvMs0_NtNtCsiAynQAjgDuT_10xet_client10cas_client13retry_wrapperNtBc_12RetryWrapper15run_and_processTNtNtCslc8SwK8fohf_5bytes5bytes5BytesINtNtCsexYYUdYSQU6_5alloc3vec3VecmEENCNCNCNvXs0_NtBe_13remote_clientNtB34_12RemoteClientNtNtBe_9interface6Client18get_file_term_data0s_00NCB2W_s_0NCNCB2W_s0_00NCB2W_s0_0E000Bg_:bb.a
  %i.zm = trunc nuw i64 %i.zl to i1
  br i1 %i.zm, label %bb.ib, label %bb.ia

bb.ia:                                            ; preds = %bb.ic, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCsexYYUdYSQU6_5alloc3vec9into_iter8IntoIterNtNtNtCsiAynQAjgDuT_10xet_client10cas_client9multipart13MultipartPartEEB1v_.exit146.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.w), !noalias !1459
  call void @llvm.lifetime.start.p0(ptr nonnull %i.v), !noalias !1459
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.v, ptr noundef nonnull align 8 dereferenceable(24) %i.ai, i64 24, i1 false), !noalias !1459
  invoke void @_RNvXsE_NtCslc8SwK8fohf_5bytes5bytesNtB5_5BytesINtNtCskKLDkoKarTP_4core7convert4FromINtNtCsexYYUdYSQU6_5alloc3vec3VechEE4from(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(address) dereferenceable(32) %i.w, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.v)
          to label %bb.im unwind label %bb.il, !noalias !1460

bb.ib:                                            ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCsexYYUdYSQU6_5alloc3vec9into_iter8IntoIterNtNtNtCsiAynQAjgDuT_10xet_client10cas_client9multipart13MultipartPartEEB1v_.exit146.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aa), !noalias !1459
  %i.zn = load i64, ptr %i.yi, align 8, !noalias !1459, !noundef !9 ; 2 uses
  store i64 %i.zn, ptr %i.aa, align 8, !noalias !1459
  %.val116.i = load i64, ptr %i.yx, align 8, !noalias !1459, !noundef !9 ; 3 uses
  %i.zo = icmp sgt i64 %.val116.i, -1
  call void @llvm.assume(i1 %i.zo)
  %.not65.i = icmp eq i64 %i.zn, %.val116.i
  br i1 %.not65.i, label %bb.ic, label %bb.id

bb.ic:                                            ; preds = %bb.ib
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aa), !noalias !1459
  br label %bb.ia

bb.id:                                            ; preds = %bb.ib
  call void @llvm.lifetime.start.p0(ptr nonnull %i.z), !noalias !1459
  call void @llvm.lifetime.start.p0(ptr nonnull %i.y), !noalias !1459
  store i64 %.val116.i, ptr %i.y, align 8, !noalias !1459
  call void @llvm.lifetime.start.p0(ptr nonnull %i.x), !noalias !1459
  store ptr %i.aa, ptr %i.x, align 8, !noalias !1459
  %.sroa.5276.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.x, i64 8
  store ptr @_RNvXsi_NtNtNtCskKLDkoKarTP_4core3fmt3num3impjNtB9_7Display3fmt, ptr %.sroa.5276.0..sroa_idx.i, align 8, !noalias !1459
  %i.zp = getelementptr inbounds nuw i8, ptr %i.x, i64 16
  store ptr %i.y, ptr %i.zp, align 8, !noalias !1459
  %.sroa.5278.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.x, i64 24
  store ptr @_RNvXsi_NtNtNtCskKLDkoKarTP_4core3fmt3num3impjNtB9_7Display3fmt, ptr %.sroa.5278.0..sroa_idx.i, align 8, !noalias !1459
  invoke fastcc void @_RNvNtCsexYYUdYSQU6_5alloc3fmt6format(ptr noalias nofree noundef align 8 captures(address) dereferenceable(24) %i.z, ptr noundef nonnull @22, ptr noundef nonnull %i.x)
          to label %bb.if unwind label %bb.ie, !noalias !1460

bb.ie:                                            ; preds = %bb.id
  %i.zq = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.x), !noalias !1459
  call void @llvm.lifetime.end.p0(ptr nonnull %i.y), !noalias !1459
  call void @llvm.lifetime.end.p0(ptr nonnull %i.z), !noalias !1459
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aa), !noalias !1459
  br label %bb.ik

bb.if:                                            ; preds = %bb.id
  call void @llvm.lifetime.end.p0(ptr nonnull %i.x), !noalias !1459
  call void @llvm.lifetime.end.p0(ptr nonnull %i.y), !noalias !1459
  %.sroa.0341.0.copyload.i = load i64, ptr %i.z, align 8, !alias.scope !1489, !noalias !1459
  %.sroa.5.0..sroa_idx.i120 = getelementptr inbounds nuw i8, ptr %i.z, i64 8
  %.sroa.5.0.copyload.i121 = load i32, ptr %.sroa.5.0..sroa_idx.i120, align 8, !alias.scope !1489, !noalias !1459
  %.sroa.6342.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.z, i64 12
  %.sroa.6342.0.copyload.i = load i32, ptr %.sroa.6342.0..sroa_idx.i, align 4, !alias.scope !1489, !noalias !1459
  %.sroa.7.0..sroa_idx.i122 = getelementptr inbounds nuw i8, ptr %i.z, i64 16
  %.sroa.7.0.copyload.i123 = load i64, ptr %.sroa.7.0..sroa_idx.i122, align 8, !alias.scope !1489, !noalias !1459
  call void @llvm.lifetime.end.p0(ptr nonnull %i.z), !noalias !1459
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aa), !noalias !1459
  br label %bb.ig

bb.ig:                                            ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCsexYYUdYSQU6_5alloc3vec9into_iter8IntoIterNtNtNtCsiAynQAjgDuT_10xet_client10cas_client9multipart13MultipartPartEEB1v_.exit170.i, %bb.if
  %.sroa.32.0.i = phi i64 [ undef, %bb.if ], [ %i.abr, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCsexYYUdYSQU6_5alloc3vec9into_iter8IntoIterNtNtNtCsiAynQAjgDuT_10xet_client10cas_client9multipart13MultipartPartEEB1v_.exit170.i ]
  %.sroa.30.0.i = phi i64 [ %.sroa.7.0.copyload.i123, %bb.if ], [ %i.abq, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCsexYYUdYSQU6_5alloc3vec9into_iter8IntoIterNtNtNtCsiAynQAjgDuT_10xet_client10cas_client9multipart13MultipartPartEEB1v_.exit170.i ]
  %.sroa.29.0.i = phi i32 [ %.sroa.6342.0.copyload.i, %bb.if ], [ %i.abp, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCsexYYUdYSQU6_5alloc3vec9into_iter8IntoIterNtNtNtCsiAynQAjgDuT_10xet_client10cas_client9multipart13MultipartPartEEB1v_.exit170.i ]
  %.sroa.27.0.i = phi i32 [ %.sroa.5.0.copyload.i121, %bb.if ], [ %i.abo, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCsexYYUdYSQU6_5alloc3vec9into_iter8IntoIterNtNtNtCsiAynQAjgDuT_10xet_client10cas_client9multipart13MultipartPartEEB1v_.exit170.i ]
  %.sroa.23.0.i = phi i64 [ %.sroa.0341.0.copyload.i, %bb.if ], [ %4, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCsexYYUdYSQU6_5alloc3vec9into_iter8IntoIterNtNtNtCsiAynQAjgDuT_10xet_client10cas_client9multipart13MultipartPartEEB1v_.exit170.i ]
  %.sroa.17.0.i = phi i64 [ 29, %bb.if ], [ %3, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCsexYYUdYSQU6_5alloc3vec9into_iter8IntoIterNtNtNtCsiAynQAjgDuT_10xet_client10cas_client9multipart13MultipartPartEEB1v_.exit170.i ]
  invoke void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecmENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsiAynQAjgDuT_10xet_client(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.ah)
          to label %bb.ii unwind label %bb.ih, !noalias !1460

bb.ih:                                            ; preds = %bb.ig
  %i.zr = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecmENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsiAynQAjgDuT_10xet_client(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.ah)
          to label %.thread483.i unwind label %bb.ij, !noalias !1460

bb.ii:                                            ; preds = %bb.ig
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecmENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsiAynQAjgDuT_10xet_client(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.ah)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecmEECsiAynQAjgDuT_10xet_client.exit.i unwind label %bb.hx, !noalias !1460

bb.ij:                                            ; preds = %bb.ih
  %i.zs = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #19, !noalias !1460
  unreachable

bb.ik:                                            ; preds = %bb.il, %bb.ie, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCsexYYUdYSQU6_5alloc3vec9into_iter8IntoIterNtNtNtCsiAynQAjgDuT_10xet_client10cas_client9multipart13MultipartPartEEB1v_.exit.i
  %.sroa.026.1.i = phi i1 [ false, %bb.il ], [ true, %bb.ie ], [ true, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCsexYYUdYSQU6_5alloc3vec9into_iter8IntoIterNtNtNtCsiAynQAjgDuT_10xet_client10cas_client9multipart13MultipartPartEEB1v_.exit.i ]
  %.pn90.pn.pn.i = phi { ptr, i32 } [ %i.zt, %bb.il ], [ %i.zq, %bb.ie ], [ %.pn90.i, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCsexYYUdYSQU6_5alloc3vec9into_iter8IntoIterNtNtNtCsiAynQAjgDuT_10xet_client10cas_client9multipart13MultipartPartEEB1v_.exit.i ] ; 2 uses
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecmEECsiAynQAjgDuT_10xet_client(ptr noalias nofree noundef align 8 dereferenceable(24) %i.ah) #18
          to label %bb.hw unwind label %bb.jh, !noalias !1460

bb.il:                                            ; preds = %bb.ia
  %i.zt = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.v), !noalias !1459
  call void @llvm.lifetime.end.p0(ptr nonnull %i.w), !noalias !1459
  br label %bb.ik

bb.im:                                            ; preds = %bb.ia
  call void @llvm.lifetime.end.p0(ptr nonnull %i.v), !noalias !1459
  %.sroa.0412.0.copyload.i = load i64, ptr %i.ah, align 8, !noalias !1459
  %i.zu = load <2 x i64>, ptr %i.yy, align 8, !noalias !1459
  %.sroa.0404.0.copyload.i = load i64, ptr %i.w, align 8, !noalias !1459
  %.sroa.5405.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.w, i64 8
  %.sroa.5405.0.copyload.i = load i64, ptr %.sroa.5405.0..sroa_idx.i, align 8, !noalias !1459
  %.sroa.6406.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.w, i64 16
  %.sroa.6406.0.copyload.i = load i64, ptr %.sroa.6406.0..sroa_idx.i, align 8, !noalias !1459
  %.sroa.7407.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.w, i64 24
  %.sroa.7407.0.copyload.i = load i32, ptr %.sroa.7407.0..sroa_idx.i, align 8, !noalias !1459
  %.sroa.8408.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.w, i64 28
  %.sroa.8408.0.copyload.i = load i32, ptr %.sroa.8408.0..sroa_idx.i, align 4, !noalias !1459
  call void @llvm.lifetime.end.p0(ptr nonnull %i.w), !noalias !1459
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ah), !noalias !1459
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ai), !noalias !1459
  call void @llvm.lifetime.end.p0(ptr nonnull %i.al), !noalias !1459
  br label %bb.in

bb.in:                                            ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VechEECsiAynQAjgDuT_10xet_client.exit209.i, %bb.im
  %i.zv = phi ptr [ %i.xq, %bb.im ], [ %i.aoj, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VechEECsiAynQAjgDuT_10xet_client.exit209.i ] ; 5 uses
  %i.zw = phi ptr [ %i.xr, %bb.im ], [ %i.aok, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VechEECsiAynQAjgDuT_10xet_client.exit209.i ] ; 5 uses
  %.sroa.30.1.i = phi i64 [ %.sroa.0412.0.copyload.i, %bb.im ], [ %.sroa.30.6.i, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VechEECsiAynQAjgDuT_10xet_client.exit209.i ] ; 2 uses
  %.sroa.29.1.i = phi i32 [ %.sroa.8408.0.copyload.i, %bb.im ], [ %.sroa.29.6.i, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VechEECsiAynQAjgDuT_10xet_client.exit209.i ] ; 2 uses
  %.sroa.27.1.i = phi i32 [ %.sroa.7407.0.copyload.i, %bb.im ], [ %.sroa.27.6.i, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VechEECsiAynQAjgDuT_10xet_client.exit209.i ] ; 2 uses
  %.sroa.23.1.i = phi i64 [ %.sroa.6406.0.copyload.i, %bb.im ], [ %.sroa.23.6.i, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VechEECsiAynQAjgDuT_10xet_client.exit209.i ] ; 2 uses
  %.sroa.17.1.i = phi i64 [ %.sroa.5405.0.copyload.i, %bb.im ], [ %.sroa.17.6.i, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VechEECsiAynQAjgDuT_10xet_client.exit209.i ] ; 2 uses
  %.sroa.9304.1.i = phi i64 [ %.sroa.0404.0.copyload.i, %bb.im ], [ %.sroa.9304.6.i, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VechEECsiAynQAjgDuT_10xet_client.exit209.i ] ; 2 uses
  %.sroa.0303.1.i = phi i64 [ 0, %bb.im ], [ %.sroa.0303.6.i, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VechEECsiAynQAjgDuT_10xet_client.exit209.i ] ; 2 uses
  %i.zx = phi <2 x i64> [ %i.zu, %bb.im ], [ %i.arh, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VechEECsiAynQAjgDuT_10xet_client.exit209.i ] ; 2 uses
  %i.zy = getelementptr inbounds nuw i8, ptr %1, i64 616 ; 3 uses
  invoke void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsiAynQAjgDuT_10xet_client(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.zy)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VechEECsiAynQAjgDuT_10xet_client.exit.i.i112 unwind label %bb.io, !noalias !1460

bb.io:                                            ; preds = %bb.in
  %i.zz = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsiAynQAjgDuT_10xet_client(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.zy)
          to label %.body150.i unwind label %bb.ip, !noalias !1460

bb.ip:                                            ; preds = %bb.io
  %i.aaa = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #19, !noalias !1460
  unreachable

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VechEECsiAynQAjgDuT_10xet_client.exit.i.i112: ; preds = %bb.in
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsiAynQAjgDuT_10xet_client(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.zy)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECsiAynQAjgDuT_10xet_client.exit.i113 unwind label %bb.pa, !noalias !1460

bb.iq:                                            ; preds = %_RNvXs4_NtNtCsexYYUdYSQU6_5alloc3vec9into_iterINtB5_8IntoIterNtNtNtCsiAynQAjgDuT_10xet_client10cas_client9multipart13MultipartPartENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4nextB12_.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.af), !noalias !1459
  store ptr %.sroa.0258.0.copyload259.i, ptr %i.af, align 8, !noalias !1459
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.9260.0..sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.9260.i, i64 40, i1 false), !noalias !1459
  %.val112.i = load i64, ptr %i.zd, align 8, !noalias !1459, !noundef !9 ; 2 uses
  %i.aab = add i64 %.val112.i, %.sroa.0.0575.i    ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ac), !noalias !1459
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ab), !noalias !1459
  %.val117.i = load ptr, ptr %.sroa.9260.0..sroa_idx.i, align 8, !noalias !1459, !noundef !9
  store ptr %.val117.i, ptr %i.ab, align 8, !alias.scope !1490, !noalias !1491
  store i64 %.val112.i, ptr %i.ze, align 8, !alias.scope !1490, !noalias !1491
  store i64 0, ptr %i.zf, align 8, !alias.scope !1490, !noalias !1491
  invoke void @_RINvNtNtCs31YAwBA1AlL_19xet_core_structures11xorb_object17xorb_chunk_format18deserialize_chunksINtNtNtCskKLDkoKarTP_4core2io6cursor6CursorRShEECsiAynQAjgDuT_10xet_client(ptr noalias nofree noundef nonnull sret([48 x i8]) align 8 captures(none) dereferenceable(48) %i.ac, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.ab)
          to label %bb.is unwind label %bb.ir, !noalias !1460

bb.ir:                                            ; preds = %bb.iq
  %i.aac = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ac), !noalias !1459
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ab), !noalias !1459
  br label %bb.ji

bb.is:                                            ; preds = %bb.iq
  call void @llvm.experimental.noalias.scope.decl(metadata !1492)
  %i.aad = load i64, ptr %i.ac, align 8, !range !11, !alias.scope !1493, !noalias !1494, !noundef !9 ; 2 uses
  %i.aae = icmp eq i64 %i.aad, -1
  %i.aaf = load <2 x i64>, ptr %.sroa.9268.8..sroa_idx.i, align 8, !alias.scope !1495, !noalias !1459 ; 5 uses
  %i.aag = load <2 x i32>, ptr %.sroa.9268.sroa.9.0..sroa.9268.8..sroa_idx.sroa_idx.i, align 8, !alias.scope !1495, !noalias !1459 ; 3 uses
  %i.aah = load <2 x i64>, ptr %.sroa.9268.sroa.13.0..sroa.9268.8..sroa_idx.sroa_idx.i, align 8, !alias.scope !1495, !noalias !1459 ; 5 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ac), !noalias !1459
  br i1 %i.aae, label %bb.jj, label %bb.iu

bb.it:                                            ; preds = %bb.iu
  %i.aai = landingpad { ptr, i32 }
          cleanup
  br label %bb.jg

bb.iu:                                            ; preds = %bb.is
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ae), !noalias !1459
  store i64 %i.aad, ptr %i.ae, align 8, !noalias !1459
  store <2 x i64> %i.aaf, ptr %.sroa.2.0..sroa_idx.i119, align 8, !noalias !1459
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ad), !noalias !1459
  store <2 x i32> %i.aag, ptr %i.ad, align 8, !noalias !1459
  store <2 x i64> %i.aah, ptr %.sroa.2.sroa.6.16..sroa_idx.i, align 8, !noalias !1459
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ab), !noalias !1459
  %i.aaj = extractelement <2 x i64> %i.aaf, i64 0
  %i.aak = inttoptr i64 %i.aaj to ptr
  %i.aal = extractelement <2 x i64> %i.aah, i64 0
  %.val121.cast.i = inttoptr i64 %i.aal to ptr
  %i.aam = extractelement <2 x i64> %i.aaf, i64 1
  %i.aan = extractelement <2 x i64> %i.aah, i64 1
  invoke void @_RNvNtNtCs31YAwBA1AlL_19xet_core_structures11xorb_object17xorb_chunk_format20append_chunk_segment(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.ai, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.ah, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.aak, i64 noundef %i.aam, ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) %.val121.cast.i, i64 noundef %i.aan)
          to label %bb.iv unwind label %bb.it, !noalias !1460

bb.iv:                                            ; preds = %bb.iu
  invoke void @_RNvMNtNtCsiAynQAjgDuT_10xet_client10cas_client24progress_tracked_streamsNtB2_22StreamProgressReporter15report_progress(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.zg, i64 noundef %i.aab)
          to label %bb.ix unwind label %bb.iw, !noalias !1460

bb.iw:                                            ; preds = %bb.iv
  %i.aao = landingpad { ptr, i32 }
          cleanup
  br label %bb.jg

bb.ix:                                            ; preds = %bb.iv
  invoke void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecmENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsiAynQAjgDuT_10xet_client(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.ad)
          to label %bb.iz unwind label %bb.iy, !noalias !1460

bb.iy:                                            ; preds = %bb.ix
  %i.aap = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecmENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsiAynQAjgDuT_10xet_client(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.ad)
          to label %.body158.i unwind label %bb.ja, !noalias !1460

bb.iz:                                            ; preds = %bb.ix
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecmENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsiAynQAjgDuT_10xet_client(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.ad)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecmEECsiAynQAjgDuT_10xet_client.exit160.i unwind label %bb.jb, !noalias !1460

bb.ja:                                            ; preds = %bb.iy
  %i.aaq = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #19, !noalias !1460
  unreachable

.body158.i:                                       ; preds = %bb.jg, %bb.jb, %bb.iy
  %.pn80.i = phi { ptr, i32 } [ %.pn78.i, %bb.jg ], [ %i.aar, %bb.jb ], [ %i.aap, %bb.iy ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ad), !noalias !1459
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VechEECsiAynQAjgDuT_10xet_client(ptr noalias nofree noundef align 8 dereferenceable(24) %i.ae) #18
          to label %.body162.i unwind label %bb.jh, !noalias !1460

bb.jb:                                            ; preds = %bb.iz
  %i.aar = landingpad { ptr, i32 }
          cleanup
  br label %.body158.i

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecmEECsiAynQAjgDuT_10xet_client.exit160.i: ; preds = %bb.iz
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ad), !noalias !1459
  invoke void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsiAynQAjgDuT_10xet_client(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.ae)
          to label %bb.jd unwind label %bb.jc, !noalias !1460

bb.jc:                                            ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecmEECsiAynQAjgDuT_10xet_client.exit160.i
  %i.aas = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsiAynQAjgDuT_10xet_client(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.ae)
          to label %.body162.i unwind label %bb.je, !noalias !1460

bb.jd:                                            ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecmEECsiAynQAjgDuT_10xet_client.exit160.i
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsiAynQAjgDuT_10xet_client(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.ae)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VechEECsiAynQAjgDuT_10xet_client.exit.i unwind label %bb.jf, !noalias !1460

bb.je:                                            ; preds = %bb.jc
  %i.aat = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #19, !noalias !1460
  unreachable

.body162.i:                                       ; preds = %bb.jf, %bb.jc, %.body158.i
  %.pn82.i = phi { ptr, i32 } [ %.pn80.i, %.body158.i ], [ %i.aau, %bb.jf ], [ %i.aas, %bb.jc ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ae), !noalias !1459
  br label %bb.ji

bb.jf:                                            ; preds = %bb.jd
  %i.aau = landingpad { ptr, i32 }
          cleanup
  br label %.body162.i

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VechEECsiAynQAjgDuT_10xet_client.exit.i: ; preds = %bb.jd
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ae), !noalias !1459
  call void @llvm.experimental.noalias.scope.decl(metadata !1496)
  call void @llvm.experimental.noalias.scope.decl(metadata !1497)
  call void @llvm.experimental.noalias.scope.decl(metadata !1498)
  %i.aav = load ptr, ptr %i.af, align 8, !alias.scope !1499, !noalias !1459, !nonnull !9, !align !10, !noundef !9
  %i.aaw = getelementptr inbounds nuw i8, ptr %i.aav, i64 32
  %i.aax = load ptr, ptr %i.aaw, align 8, !noalias !1500, !nonnull !9, !noundef !9
  %i.aay = load ptr, ptr %.sroa.9260.0..sroa_idx.i, align 8, !alias.scope !1499, !noalias !1459, !noundef !9
  %i.aaz = load i64, ptr %i.zd, align 8, !alias.scope !1499, !noalias !1459, !noundef !9
  invoke void %i.aax(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.zh, ptr noundef %i.aay, i64 noundef %i.aaz)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsiAynQAjgDuT_10xet_client10cas_client9multipart13MultipartPartEBH_.exit.i unwind label %.loopexit.i, !noalias !1460, !inline_history !1295

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsiAynQAjgDuT_10xet_client10cas_client9multipart13MultipartPartEBH_.exit166.i: ; preds = %bb.ji, %.loopexit.split-lp.i, %.loopexit.i
  %.pn87.i = phi { ptr, i32 } [ %.pn84.pn.i, %bb.ji ], [ %lpad.loopexit.i, %.loopexit.i ], [ %lpad.loopexit.split-lp.i, %.loopexit.split-lp.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.af), !noalias !1459
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.9260.i)
  invoke void @_RNvXse_NtNtCsexYYUdYSQU6_5alloc3vec9into_iterINtB5_8IntoIterNtNtNtCsiAynQAjgDuT_10xet_client10cas_client9multipart13MultipartPartENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropB12_(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.ag)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCsexYYUdYSQU6_5alloc3vec9into_iter8IntoIterNtNtNtCsiAynQAjgDuT_10xet_client10cas_client9multipart13MultipartPartEEB1v_.exit.i unwind label %bb.jh, !noalias !1460

.loopexit.i:                                      ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VechEECsiAynQAjgDuT_10xet_client.exit.i
  %lpad.loopexit.i = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsiAynQAjgDuT_10xet_client10cas_client9multipart13MultipartPartEBH_.exit166.i

.loopexit.split-lp.i:                             ; preds = %bb.jj
  %lpad.loopexit.split-lp.i = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsiAynQAjgDuT_10xet_client10cas_client9multipart13MultipartPartEBH_.exit166.i

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsiAynQAjgDuT_10xet_client10cas_client9multipart13MultipartPartEBH_.exit.i: ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VechEECsiAynQAjgDuT_10xet_client.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.af), !noalias !1459
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.9260.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.9260.i)
  %i.aba = load ptr, ptr %.sroa.8254.0..sroa_idx.i, align 8, !alias.scope !1501, !noalias !1487, !nonnull !9, !noundef !9
  %i.abb = load ptr, ptr %.sroa.6252.0..sroa_idx.i, align 8, !alias.scope !1501, !noalias !1487, !nonnull !9, !noundef !9 ; 2 uses
  %i.abc = icmp eq ptr %i.abb, %i.aba
  br i1 %i.abc, label %_RNvXs4_NtNtCsexYYUdYSQU6_5alloc3vec9into_iterINtB5_8IntoIterNtNtNtCsiAynQAjgDuT_10xet_client10cas_client9multipart13MultipartPartENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4nextB12_.exit.thread.i, label %_RNvXs4_NtNtCsexYYUdYSQU6_5alloc3vec9into_iterINtB5_8IntoIterNtNtNtCsiAynQAjgDuT_10xet_client10cas_client9multipart13MultipartPartENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4nextB12_.exit.i

bb.jg:                                            ; preds = %bb.iw, %bb.it
  %.pn78.i = phi { ptr, i32 } [ %i.aao, %bb.iw ], [ %i.aai, %bb.it ]
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecmEECsiAynQAjgDuT_10xet_client(ptr noalias nofree noundef align 8 dereferenceable(24) %i.ad) #18
          to label %.body158.i unwind label %bb.jh, !noalias !1460

bb.jh:                                            ; preds = %bb.pr, %bb.pq, %bb.po, %bb.pn, %bb.pe, %.body185.i, %bb.jp, %bb.ji, %bb.jg, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsiAynQAjgDuT_10xet_client10cas_client9multipart13MultipartPartEBH_.exit166.i, %.body158.i, %bb.ik, %bb.hv, %bb.hj, %.loopexit.split-lp545.i
  %i.abd = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #19, !noalias !1460
  unreachable

bb.ji:                                            ; preds = %.body162.i, %bb.ir
  %.pn84.pn.i = phi { ptr, i32 } [ %i.aac, %bb.ir ], [ %.pn82.i, %.body162.i ]
  call void @llvm.experimental.noalias.scope.decl(metadata !1502)
  call void @llvm.experimental.noalias.scope.decl(metadata !1503)
  call void @llvm.experimental.noalias.scope.decl(metadata !1504)
  %i.abe = load ptr, ptr %i.af, align 8, !alias.scope !1505, !noalias !1459, !nonnull !9, !align !10, !noundef !9
  %i.abf = getelementptr inbounds nuw i8, ptr %i.abe, i64 32
  %i.abg = load ptr, ptr %i.abf, align 8, !noalias !1506, !nonnull !9, !noundef !9
  %i.abh = load ptr, ptr %.sroa.9260.0..sroa_idx.i, align 8, !alias.scope !1505, !noalias !1459, !noundef !9
  %i.abi = load i64, ptr %i.zd, align 8, !alias.scope !1505, !noalias !1459, !noundef !9
  invoke void %i.abg(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.zh, ptr noundef %i.abh, i64 noundef %i.abi)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsiAynQAjgDuT_10xet_client10cas_client9multipart13MultipartPartEBH_.exit166.i unwind label %bb.jh, !noalias !1460, !inline_history !1295

bb.jj:                                            ; preds = %bb.is
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ab), !noalias !1459
  call void @llvm.experimental.noalias.scope.decl(metadata !1507)
  call void @llvm.experimental.noalias.scope.decl(metadata !1508)
  call void @llvm.experimental.noalias.scope.decl(metadata !1509)
  %i.abj = load ptr, ptr %i.af, align 8, !alias.scope !1510, !noalias !1459, !nonnull !9, !align !10, !noundef !9
  %i.abk = getelementptr inbounds nuw i8, ptr %i.abj, i64 32
  %i.abl = load ptr, ptr %i.abk, align 8, !noalias !1511, !nonnull !9, !noundef !9
  %i.abm = load ptr, ptr %.sroa.9260.0..sroa_idx.i, align 8, !alias.scope !1510, !noalias !1459, !noundef !9
  %i.abn = load i64, ptr %i.zd, align 8, !alias.scope !1510, !noalias !1459, !noundef !9
  invoke void %i.abl(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.zh, ptr noundef %i.abm, i64 noundef %i.abn)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsiAynQAjgDuT_10xet_client10cas_client9multipart13MultipartPartEBH_.exit168.i unwind label %.loopexit.split-lp.i, !noalias !1460, !inline_history !1295

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsiAynQAjgDuT_10xet_client10cas_client9multipart13MultipartPartEBH_.exit168.i: ; preds = %bb.jj
  call void @llvm.lifetime.end.p0(ptr nonnull %i.af), !noalias !1459
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.9260.i)
  invoke void @_RNvXse_NtNtCsexYYUdYSQU6_5alloc3vec9into_iterINtB5_8IntoIterNtNtNtCsiAynQAjgDuT_10xet_client10cas_client9multipart13MultipartPartENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropB12_(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.ag)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCsexYYUdYSQU6_5alloc3vec9into_iter8IntoIterNtNtNtCsiAynQAjgDuT_10xet_client10cas_client9multipart13MultipartPartEEB1v_.exit170.i unwind label %bb.hz, !noalias !1460

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCsexYYUdYSQU6_5alloc3vec9into_iter8IntoIterNtNtNtCsiAynQAjgDuT_10xet_client10cas_client9multipart13MultipartPartEEB1v_.exit170.i: ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsiAynQAjgDuT_10xet_client10cas_client9multipart13MultipartPartEBH_.exit168.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ag), !noalias !1459
  %3 = extractelement <2 x i64> %i.aaf, i64 0
  %4 = extractelement <2 x i64> %i.aaf, i64 1
  %i.abo = extractelement <2 x i32> %i.aag, i64 0
  %i.abp = extractelement <2 x i32> %i.aag, i64 1
  %i.abq = extractelement <2 x i64> %i.aah, i64 0
  %i.abr = extractelement <2 x i64> %i.aah, i64 1
  br label %bb.ig

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecmEECsiAynQAjgDuT_10xet_client.exit.i: ; preds = %bb.ii
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ah), !noalias !1459
  invoke void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsiAynQAjgDuT_10xet_client(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.ai)
          to label %bb.jl unwind label %bb.jk, !noalias !1460

bb.jk:                                            ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecmEECsiAynQAjgDuT_10xet_client.exit.i
  %i.abs = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsiAynQAjgDuT_10xet_client(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.ai)
          to label %.thread526.i unwind label %bb.jm, !noalias !1460

bb.jl:                                            ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecmEECsiAynQAjgDuT_10xet_client.exit.i
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsiAynQAjgDuT_10xet_client(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.ai)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VechEECsiAynQAjgDuT_10xet_client.exit175.i unwind label %bb.jn, !noalias !1460

bb.jm:                                            ; preds = %bb.jk
  %i.abt = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #19, !noalias !1460
  unreachable

.thread526.i:                                     ; preds = %bb.jp, %bb.jn, %bb.jk, %bb.hw
  %.pn96.ph.i = phi { ptr, i32 } [ %.pn90.pn.pn.i, %bb.hw ], [ %.pn94486.i, %bb.jp ], [ %i.abu, %bb.jn ], [ %i.abs, %bb.jk ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ai), !noalias !1459
  br label %bb.jq

bb.jn:                                            ; preds = %bb.jl
  %i.abu = landingpad { ptr, i32 }
          cleanup
  br label %.thread526.i

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VechEECsiAynQAjgDuT_10xet_client.exit175.i: ; preds = %bb.jl
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ai), !noalias !1459
  br label %bb.jo

bb.jo:                                            ; preds = %bb.jr, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VechEECsiAynQAjgDuT_10xet_client.exit175.i
  %.sroa.32.2.i = phi i64 [ %.sroa.32.0.i, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VechEECsiAynQAjgDuT_10xet_client.exit175.i ], [ %.sroa.6247.sroa.8.0.copyload.i, %bb.jr ]
  %.sroa.30.2.i = phi i64 [ %.sroa.30.0.i, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VechEECsiAynQAjgDuT_10xet_client.exit175.i ], [ %.sroa.6247.sroa.7.0.copyload.i, %bb.jr ]
  %.sroa.29.2.i = phi i32 [ %.sroa.29.0.i, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VechEECsiAynQAjgDuT_10xet_client.exit175.i ], [ %.sroa.6247.sroa.0.sroa.11.0.copyload.i, %bb.jr ]
  %.sroa.27.2.i = phi i32 [ %.sroa.27.0.i, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VechEECsiAynQAjgDuT_10xet_client.exit175.i ], [ %.sroa.6247.sroa.0.sroa.9.0.copyload.i, %bb.jr ]
  %.sroa.23.2.i = phi i64 [ %.sroa.23.0.i, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VechEECsiAynQAjgDuT_10xet_client.exit175.i ], [ %.sroa.6247.sroa.0.sroa.0.0.copyload358.i, %bb.jr ]
  %.sroa.17.2.i = phi i64 [ %.sroa.17.0.i, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VechEECsiAynQAjgDuT_10xet_client.exit175.i ], [ %i.ye, %bb.jr ]
  %.sroa.9304.2.i = phi i64 [ 1, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VechEECsiAynQAjgDuT_10xet_client.exit175.i ], [ 0, %bb.jr ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.al), !noalias !1459
  br label %bb.jt

bb.jp:                                            ; preds = %.thread483.i, %bb.hw
  %.pn94486.i = phi { ptr, i32 } [ %eh.lpad-body.i, %.thread483.i ], [ %.pn90.pn.pn.i, %bb.hw ]
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VechEECsiAynQAjgDuT_10xet_client(ptr noalias nofree noundef align 8 dereferenceable(24) %i.ai) #18
          to label %.thread526.i unwind label %bb.jh, !noalias !1460

bb.jq:                                            ; preds = %.thread526.i, %bb.hv, %bb.hr
  %.pn98.pn.i = phi { ptr, i32 } [ %.pn96.ph.i, %.thread526.i ], [ %i.ys, %bb.hv ], [ %i.yd, %bb.hr ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.al), !noalias !1459
  br label %.loopexit.split-lp545.i

bb.jr:                                            ; preds = %bb.hs
  %.sroa.6247.sroa.0.sroa.9.0.copyload.i = load i32, ptr %.sroa.6247.sroa.0.sroa.7.0..sroa_idx359.i, align 8, !alias.scope !1482, !noalias !1459
  %.sroa.6247.sroa.0.sroa.11.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ak, i64 20
  %.sroa.6247.sroa.0.sroa.11.0.copyload.i = load i32, ptr %.sroa.6247.sroa.0.sroa.11.0..sroa_idx.i, align 4, !alias.scope !1482, !noalias !1459
  %.sroa.6247.sroa.7.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ak, i64 24
  %.sroa.6247.sroa.7.0.copyload.i = load i64, ptr %.sroa.6247.sroa.7.0..sroa_idx.i, align 8, !alias.scope !1482, !noalias !1459
  %.sroa.6247.sroa.8.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ak, i64 32
  %.sroa.6247.sroa.8.0.copyload.i = load i64, ptr %.sroa.6247.sroa.8.0..sroa_idx.i, align 8, !alias.scope !1482, !noalias !1459
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ak), !noalias !1459
  br label %bb.jo

bb.js:                                            ; preds = %bb.hp
  %.sroa.10215.sroa.0.0.copyload.i = load ptr, ptr %i.ya, align 8, !noalias !1512
  %.sroa.10215.sroa.10.0..sroa.10215.0..sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %.sroa.10215.sroa.10.0.copyload.i = load ptr, ptr %.sroa.10215.sroa.10.0..sroa.10215.0..sroa_idx.sroa_idx.i, align 8, !noalias !1512
  %.sroa.10215.sroa.11.0..sroa.10215.0..sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.h, i64 24
  %.sroa.10215.sroa.11.sroa.0.0.copyload.i = load i32, ptr %.sroa.10215.sroa.11.0..sroa.10215.0..sroa_idx.sroa_idx.i, align 8, !noalias !1512
  %.sroa.10215.sroa.11.sroa.10.0..sroa.10215.sroa.11.0..sroa.10215.0..sroa_idx.sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.h, i64 28
  %.sroa.10215.sroa.11.sroa.10.0.copyload.i = load i32, ptr %.sroa.10215.sroa.11.sroa.10.0..sroa.10215.sroa.11.0..sroa.10215.0..sroa_idx.sroa_idx.sroa_idx.i, align 4, !noalias !1512
  %.sroa.10215.sroa.11.sroa.12.0..sroa.10215.sroa.11.0..sroa.10215.0..sroa_idx.sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.h, i64 32
  %.sroa.10215.sroa.11.sroa.12.0.copyload.i = load i64, ptr %.sroa.10215.sroa.11.sroa.12.0..sroa.10215.sroa.11.0..sroa.10215.0..sroa_idx.sroa_idx.sroa_idx.i, align 8, !noalias !1512
  %.sroa.13.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.h, i64 40
  %.sroa.13.0.copyload.i = load i64, ptr %.sroa.13.0..sroa_idx.i, align 8, !noalias !1512
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !1477
  %i.abv = ptrtoint ptr %.sroa.10215.sroa.0.0.copyload.i to i64
  %i.abw = ptrtoint ptr %.sroa.10215.sroa.10.0.copyload.i to i64
  br label %bb.jt

bb.jt:                                            ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VechEECsiAynQAjgDuT_10xet_client.exit204.i, %bb.js, %bb.jo
  %i.abx = phi ptr [ %i.aoj, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VechEECsiAynQAjgDuT_10xet_client.exit204.i ], [ %i.xq, %bb.jo ], [ %i.xq, %bb.js ] ; 5 uses
  %i.aby = phi ptr [ %i.aok, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VechEECsiAynQAjgDuT_10xet_client.exit204.i ], [ %i.xr, %bb.jo ], [ %i.xr, %bb.js ] ; 5 uses
  %.sroa.32.4.i = phi i64 [ undef, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VechEECsiAynQAjgDuT_10xet_client.exit204.i ], [ %.sroa.32.2.i, %bb.jo ], [ %.sroa.13.0.copyload.i, %bb.js ]
  %.sroa.30.4.i = phi i64 [ %.sroa.7346.0.copyload.i, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VechEECsiAynQAjgDuT_10xet_client.exit204.i ], [ %.sroa.30.2.i, %bb.jo ], [ %.sroa.10215.sroa.11.sroa.12.0.copyload.i, %bb.js ] ; 2 uses
  %.sroa.29.4.i = phi i32 [ %.sroa.6345.0.copyload.i, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VechEECsiAynQAjgDuT_10xet_client.exit204.i ], [ %.sroa.29.2.i, %bb.jo ], [ %.sroa.10215.sroa.11.sroa.10.0.copyload.i, %bb.js ] ; 2 uses
  %.sroa.27.4.i = phi i32 [ %.sroa.5344.0.copyload.i, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VechEECsiAynQAjgDuT_10xet_client.exit204.i ], [ %.sroa.27.2.i, %bb.jo ], [ %.sroa.10215.sroa.11.sroa.0.0.copyload.i, %bb.js ] ; 2 uses
  %.sroa.23.4.i = phi i64 [ %.sroa.0343.0.copyload.i, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VechEECsiAynQAjgDuT_10xet_client.exit204.i ], [ %.sroa.23.2.i, %bb.jo ], [ %i.abw, %bb.js ] ; 2 uses
  %.sroa.17.4.i = phi i64 [ 29, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VechEECsiAynQAjgDuT_10xet_client.exit204.i ], [ %.sroa.17.2.i, %bb.jo ], [ %i.abv, %bb.js ] ; 2 uses
  %.sroa.9304.4.i = phi i64 [ 1, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VechEECsiAynQAjgDuT_10xet_client.exit204.i ], [ %.sroa.9304.2.i, %bb.jo ], [ 1, %bb.js ] ; 2 uses
  %i.abz = getelementptr inbounds nuw i8, ptr %1, i64 616 ; 3 uses
  invoke void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsiAynQAjgDuT_10xet_client(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.abz)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VechEECsiAynQAjgDuT_10xet_client.exit.i178.i unwind label %bb.ju, !noalias !1460

bb.ju:                                            ; preds = %bb.jt
  %i.aca = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsiAynQAjgDuT_10xet_client(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.abz)
          to label %.body150.i unwind label %bb.jv, !noalias !1460

bb.jv:                                            ; preds = %bb.ju
  %i.acb = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #19, !noalias !1460
  unreachable

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VechEECsiAynQAjgDuT_10xet_client.exit.i178.i: ; preds = %bb.jt
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsiAynQAjgDuT_10xet_client(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.abz)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECsiAynQAjgDuT_10xet_client.exit182.i unwind label %bb.pa, !noalias !1460

.body185.i:                                       ; preds = %bb.oh, %.body8.i.i
  %i.acc = phi ptr [ %i.acv, %.body8.i.i ], [ %i.qd, %bb.oh ]
  %i.acd = phi ptr [ %i.acw, %.body8.i.i ], [ %i.qc, %bb.oh ]
  %i.ace = phi ptr [ %i.acy, %.body8.i.i ], [ %i.acf, %bb.oh ]
  %.pn31.i = phi { ptr, i32 } [ %.pn4.i.i, %.body8.i.i ], [ %i.apt, %bb.oh ]
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNCINvNtNtNtCs31YAwBA1AlL_19xet_core_structures11xorb_object17xorb_chunk_format17deserialize_async40deserialize_chunks_to_writer_from_streamNtNtCslc8SwK8fohf_5bytes5bytes5BytesNtNtNtB4_2io5error5ErrorINtNtNtCsiAynQAjgDuT_10xet_client10cas_client24progress_tracked_streams22DownloadProgressStreamINtNtNtCsfaw33hLWA9J_12futures_util6stream10try_stream6MapErrINtNtCs5jFM9WxmFav_14http_body_util6stream14BodyDataStreamINtNtNtB6p_11combinators7map_err6MapErrINtNtB7l_8box_body7BoxBodyB2Q_INtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtB4_5error5ErrorNtNtB4_6marker4SendNtB9i_4SyncEL_EEINvNtCsfaKIfeYzQZw_7reqwest5error6decodeB8n_EEEINvMNtNtB8s_2io5errorB3q_5otherNtB9S_5ErrorEEEINtNtB3u_6cursor6CursorQINtNtB8s_3vec3VechEEE0EB3V_(ptr noundef nonnull align 8 %i.ace) #18
          to label %bb.he unwind label %bb.jh, !noalias !1460

bb.jw:                                            ; preds = %bb.ge
  call void @llvm.lifetime.start.p0(ptr nonnull %i.u), !noalias !1459
  %.phi.trans.insert.i110 = getelementptr inbounds nuw i8, ptr %1, i64 1024 ; 11 uses
  %.pre.i = load i8, ptr %.phi.trans.insert.i110, align 8, !range !14, !noalias !1513
  %i.acf = getelementptr inbounds nuw i8, ptr %1, i64 672 ; 11 uses
  switch i8 %.pre.i, label %default.unreachable451 [
    i8 0, label %..thread31.i.i_crit_edge
    i8 1, label %bb.jy
    i8 2, label %bb.jz
    i8 3, label %bb.ka
  ]

..thread31.i.i_crit_edge:                         ; preds = %bb.jw
  %.phi.trans.insert412 = getelementptr inbounds nuw i8, ptr %1, i64 736
  %.pre413 = load ptr, ptr %.phi.trans.insert412, align 8, !noalias !1513
  br label %.thread31.i.i

.thread31.i.i:                                    ; preds = %..thread31.i.i_crit_edge, %.thread.i125
  %i.acg = phi ptr [ %i.qe, %.thread.i125 ], [ %i.qd, %..thread31.i.i_crit_edge ]
  %i.ach = phi ptr [ %i.qf, %.thread.i125 ], [ %i.qc, %..thread31.i.i_crit_edge ]
  %i.aci = phi ptr [ %i.ww, %.thread.i125 ], [ %.pre413, %..thread31.i.i_crit_edge ] ; 2 uses
  %i.acj = phi ptr [ %.sroa.9287.0..sroa_idx.i, %.thread.i125 ], [ %.phi.trans.insert.i110, %..thread31.i.i_crit_edge ]
  %i.ack = phi ptr [ %i.wy, %.thread.i125 ], [ %i.acf, %..thread31.i.i_crit_edge ] ; 2 uses
  %i.acl = getelementptr inbounds nuw i8, ptr %1, i64 792
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.acl, ptr noundef nonnull align 8 dereferenceable(64) %i.ack, i64 64, i1 false), !noalias !1513
  %i.acm = getelementptr inbounds nuw i8, ptr %1, i64 744 ; 3 uses
  store i64 1, ptr %i.acm, align 8, !alias.scope !1514, !noalias !1515
  %i.acn = getelementptr inbounds nuw i8, ptr %1, i64 856 ; 2 uses
  store ptr %i.acm, ptr %i.acn, align 8, !noalias !1513
  %.sroa.712.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %1, i64 864
  store ptr %i.aci, ptr %.sroa.712.0..sroa_idx.i.i, align 8, !noalias !1513
  %.sroa.9.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %1, i64 924 ; 2 uses
  store i8 0, ptr %.sroa.9.0..sroa_idx.i.i, align 4, !noalias !1513
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.4125.i.i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.1174.sroa.0.sroa.0.i.i.i)
  %i.aco = insertelement <2 x ptr> poison, ptr %i.acm, i64 0
  %i.acp = insertelement <2 x ptr> %i.aco, ptr %i.aci, i64 1
  br label %bb.kc

bb.jx:                                            ; preds = %bb.nz, %.body.i.i
  %i.acq = phi ptr [ %i.aoj, %bb.nz ], [ %i.acz, %.body.i.i ]
  %i.acr = phi ptr [ %i.aok, %bb.nz ], [ %i.ada, %.body.i.i ]
  %i.acs = phi ptr [ %i.aol, %bb.nz ], [ %i.adb, %.body.i.i ]
  %i.act = phi ptr [ %i.aom, %bb.nz ], [ %i.adc, %.body.i.i ]
  %.pn2.i.i = phi { ptr, i32 } [ %i.aoq, %bb.nz ], [ %.pn.i.i, %.body.i.i ]
  %i.acu = getelementptr inbounds nuw i8, ptr %1, i64 744
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsfaw33hLWA9J_12futures_util6stream10try_stream15into_async_read13IntoAsyncReadINtBG_6MapErrINtNtNtCsiAynQAjgDuT_10xet_client10cas_client24progress_tracked_streams22DownloadProgressStreamIB22_INtNtCs5jFM9WxmFav_14http_body_util6stream14BodyDataStreamINtNtNtB3V_11combinators7map_err6MapErrINtNtB4R_8box_body7BoxBodyNtNtCslc8SwK8fohf_5bytes5bytes5BytesINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtB4_5error5ErrorNtNtB4_6marker4SendNtB7k_4SyncEL_EEINvNtCsfaKIfeYzQZw_7reqwest5error6decodeB6p_EEEINvMNtNtB6u_2io5errorNtNtNtB4_2io5error5Error5otherNtB7U_5ErrorEEENCNCINvNtNtNtCs31YAwBA1AlL_19xet_core_structures11xorb_object17xorb_chunk_format17deserialize_async40deserialize_chunks_to_writer_from_streamB5P_B8X_B2e_INtNtB91_6cursor6CursorQINtNtB6u_3vec3VechEEE00EEEB2l_(ptr noalias nofree noundef align 8 dereferenceable(112) %i.acu) #18
          to label %.body8.i.i unwind label %bb.og, !noalias !1516

.body8.i.i:                                       ; preds = %bb.of, %bb.oc, %bb.ob, %bb.jx
  %i.acv = phi ptr [ %i.aoj, %bb.ob ], [ %i.acq, %bb.jx ], [ %i.aoj, %bb.of ], [ %i.aoj, %bb.oc ]
  %i.acw = phi ptr [ %i.aok, %bb.ob ], [ %i.acr, %bb.jx ], [ %i.aok, %bb.of ], [ %i.aok, %bb.oc ]
  %i.acx = phi ptr [ %i.aol, %bb.ob ], [ %i.acs, %bb.jx ], [ %i.aol, %bb.of ], [ %i.aol, %bb.oc ]
  %i.acy = phi ptr [ %i.aom, %bb.ob ], [ %i.act, %bb.jx ], [ %i.aom, %bb.of ], [ %i.aom, %bb.oc ]
  %.pn4.i.i = phi { ptr, i32 } [ %i.aot, %bb.ob ], [ %.pn2.i.i, %bb.jx ], [ %i.apr, %bb.of ], [ %i.aot, %bb.oc ]
  store i8 2, ptr %i.acx, align 8, !noalias !1513
  br label %.body185.i

bb.jy:                                            ; preds = %bb.jw
  invoke void @_RNvNtNtCskKLDkoKarTP_4core9panicking11panic_const28panic_const_async_fn_resumed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @7) #22
          to label %.noexc187.i unwind label %bb.oh, !noalias !1460

.noexc187.i:                                      ; preds = %bb.jy
  unreachable

bb.jz:                                            ; preds = %bb.jw
  invoke void @_RNvNtNtCskKLDkoKarTP_4core9panicking11panic_const34panic_const_async_fn_resumed_panic(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @7) #22
          to label %.noexc188.i unwind label %bb.oh, !noalias !1460

.noexc188.i:                                      ; preds = %bb.jz
  unreachable

.body.i.i:                                        ; preds = %bb.nx, %.body36.i.i.i
  %i.acz = phi ptr [ %i.adg, %.body36.i.i.i ], [ %i.qd, %bb.nx ]
  %i.ada = phi ptr [ %i.adh, %.body36.i.i.i ], [ %i.qc, %bb.nx ]
  %i.adb = phi ptr [ %i.adi, %.body36.i.i.i ], [ %.phi.trans.insert.i110, %bb.nx ]
end_hunk_0
