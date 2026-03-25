begin_hunk_0
  %3 = alloca [24 x i8], align 8                  ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %3, i8 14, i64 24, i1 false)
  %4 = trunc i64 %1 to i32
  %5 = icmp sgt i32 %4, 2146764484
  br i1 %5, label %bb.a, label %6

6:                                                ; preds = %2
  %7 = trunc i64 %1 to i32
end_hunk_0
begin_hunk_1
  store i64 %2, ptr %6, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %4), !noalias !577
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %4, i8 14, i64 24, i1 false), !noalias !577
  %7 = trunc i64 %1 to i32                        ; 2 uses
  %8 = icmp sgt i32 %7, 2146764484
  br i1 %8, label %13, label %9

9:                                                ; preds = %3
  %10 = add nsw i32 %7, 719163
  %11 = invoke noundef i32 @_RNvMNtNtCshmPyUV8PP35_6chrono5naive4dateNtB2_9NaiveDate25from_num_days_from_ce_opt(i32 noundef %10)
          to label %.noexc.i unwind label %bb.a, !noalias !577 ; 3 uses

.noexc.i:                                         ; preds = %9
  %.not.i.i = icmp eq i32 %11, 0
  br i1 %.not.i.i, label %13, label %12

bb.a:                                             ; preds = %9
  %i.a = landingpad { ptr, i32 }
end_hunk_1
begin_hunk_2
bb.c:                                             ; preds = %bb.a
  resume { ptr, i32 } %i.a

12:                                               ; preds = %.noexc.i
  call fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsfYVtenZkBsn_12arrow_schema8datatype8DataTypeECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef align 8 dereferenceable(24) %4), !noalias !577
  call void @llvm.lifetime.end.p0(ptr nonnull %4), !noalias !577
  call void @llvm.lifetime.start.p0(ptr nonnull %5)
  store i32 %11, ptr %5, align 4
  %.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %5, i64 4
  store i32 0, ptr %.sroa.3.0..sroa_idx, align 4
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %5, i64 8
  store i32 0, ptr %.sroa.4.0..sroa_idx, align 4
  call void @_RNvXs2_NtNtCs1N9T06jgEdt_11arrow_array8timezone7privateNtB5_2TzNtNtCshmPyUV8PP35_6chrono6offset8TimeZone24offset_from_utc_datetime(ptr noalias noundef nonnull sret([12 x i8]) align 4 captures(none) dereferenceable(12) %0, ptr noalias noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(8) %6, ptr noalias noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(12) %5)
  %.sroa.412.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 12
  store i32 %11, ptr %.sroa.412.0..sroa_idx, align 4
  %.sroa.513.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i32 0, ptr %.sroa.513.0..sroa_idx, align 4
  %.sroa.614.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 20
end_hunk_2
begin_hunk_3
  call void @llvm.lifetime.end.p0(ptr nonnull %5)
  br label %bb.d

13:                                               ; preds = %3, %.noexc.i
  call fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsfYVtenZkBsn_12arrow_schema8datatype8DataTypeECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef align 8 dereferenceable(24) %4), !noalias !577
  call void @llvm.lifetime.end.p0(ptr nonnull %4), !noalias !577
  store i16 2, ptr %0, align 4
  br label %bb.d

bb.d:                                             ; preds = %13, %12
  ret void
}

end_hunk_3
