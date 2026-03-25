begin_hunk_0
  %tmp.b = alloca [24 x i8], align 8              ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %tmp.b)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %tmp.b, i8 14, i64 24, i1 false)
  %2 = trunc i64 %1 to i32
  %3 = icmp sgt i32 %2, 2146764484
  br i1 %3, label %10, label %4

4:                                                ; preds = %tmp.a
  %5 = trunc i64 %1 to i32
end_hunk_0
begin_hunk_1
  store i64 %2, ptr %tmp.d, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %tmp.b), !noalias !577
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %tmp.b, i8 14, i64 24, i1 false), !noalias !577
  %3 = trunc i64 %1 to i32                        ; 2 uses
  %4 = icmp sgt i32 %3, 2146764484
  br i1 %4, label %14, label %5

5:                                                ; preds = %tmp.a
  %6 = add nsw i32 %3, 719163
  %7 = invoke noundef i32 @_RNvMNtNtCshmPyUV8PP35_6chrono5naive4dateNtB2_9NaiveDate25from_num_days_from_ce_opt(i32 noundef %6)
          to label %.noexc.i unwind label %8, !noalias !577 ; 3 uses

.noexc.i:                                         ; preds = %5
  %.not.i.i = icmp eq i32 %7, 0
  br i1 %.not.i.i, label %14, label %13

8:                                                ; preds = %5
  %9 = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsfYVtenZkBsn_12arrow_schema8datatype8DataTypeECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef align 8 dereferenceable(24) %tmp.b) #52
          to label %12 unwind label %10, !noalias !577

10:                                               ; preds = %8
  %11 = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #53, !noalias !577
  unreachable

12:                                               ; preds = %8
  resume { ptr, i32 } %9

13:                                               ; preds = %.noexc.i
  call fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsfYVtenZkBsn_12arrow_schema8datatype8DataTypeECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef align 8 dereferenceable(24) %tmp.b), !noalias !577
  call void @llvm.lifetime.end.p0(ptr nonnull %tmp.b), !noalias !577
  call void @llvm.lifetime.start.p0(ptr nonnull %tmp.c)
  store i32 %7, ptr %tmp.c, align 4
  %.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %tmp.c, i64 4
  store i32 0, ptr %.sroa.3.0..sroa_idx, align 4
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %tmp.c, i64 8
  store i32 0, ptr %.sroa.4.0..sroa_idx, align 4
  call void @_RNvXs2_NtNtCs1N9T06jgEdt_11arrow_array8timezone7privateNtB5_2TzNtNtCshmPyUV8PP35_6chrono6offset8TimeZone24offset_from_utc_datetime(ptr noalias noundef nonnull sret([12 x i8]) align 4 captures(none) dereferenceable(12) %0, ptr noalias noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(8) %tmp.d, ptr noalias noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(12) %tmp.c)
  %.sroa.412.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 12
  store i32 %7, ptr %.sroa.412.0..sroa_idx, align 4
  %.sroa.513.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i32 0, ptr %.sroa.513.0..sroa_idx, align 4
  %.sroa.614.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 20
  store i32 0, ptr %.sroa.614.0..sroa_idx, align 4
  call void @llvm.lifetime.end.p0(ptr nonnull %tmp.c)
  br label %15

14:                                               ; preds = %tmp.a, %.noexc.i
  call fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsfYVtenZkBsn_12arrow_schema8datatype8DataTypeECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef align 8 dereferenceable(24) %tmp.b), !noalias !577
  call void @llvm.lifetime.end.p0(ptr nonnull %tmp.b), !noalias !577
  store i16 2, ptr %0, align 4
  br label %15

15:                                               ; preds = %14, %13
  ret void
}

end_hunk_1
