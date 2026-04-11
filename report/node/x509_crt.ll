inline.NumInlined: 83
inline.NumDeleted: 27
begin_hunk_0_@mbedtls_x509_crt_parse:bb.a
  %.041114 = phi i32 [ 0, %.lr.ph ], [ %.344, %bb.j ] ; 6 uses
  %.046113 = phi i32 [ 0, %.lr.ph ], [ %.147, %bb.j ] ; 3 uses
  %.051112 = phi i64 [ %2, %.lr.ph ], [ %.152, %bb.j ]
  %.053111 = phi ptr [ %1, %.lr.ph ], [ %.154, %bb.j ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #19
  call void @mbedtls_pem_init(ptr noundef nonnull %3) #19
  %i.k = call i32 @mbedtls_pem_read_buffer(ptr noundef nonnull %3, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, ptr noundef %.053111, ptr noundef null, i64 noundef 0, ptr noundef nonnull %i.a) #19 ; 3 uses
end_hunk_0
begin_hunk_1_@mbedtls_x509_crt_parse:bb.a
  ]

bb.g:                                             ; preds = %bb.f
  %i.l = load i64, ptr %i.a, align 8, !tbaa !27   ; 2 uses
  %i.m = load ptr, ptr %3, align 8, !tbaa !45
  %i.n = load i64, ptr %i.j, align 8, !tbaa !47
  %i.o = call fastcc i32 @mbedtls_x509_crt_parse_der_internal(ptr noundef %0, ptr noundef %i.m, i64 noundef %i.n, i32 noundef 1, ptr noundef null, ptr noundef null) ; 3 uses
end_hunk_1
begin_hunk_2_@mbedtls_x509_crt_parse:bb.a

bb.h:                                             ; preds = %bb.f
  call void @mbedtls_pem_free(ptr noundef nonnull %3) #19
  %i.p = load i64, ptr %i.a, align 8, !tbaa !27
  %i.q = icmp eq i32 %.041114, 0
  %spec.select70 = select i1 %i.q, i32 %i.k, i32 %.041114
  %i.r = add nsw i32 %.039115, 1
end_hunk_2
begin_hunk_3_@mbedtls_x509_crt_parse:bb.a
  br label %bb.j, !llvm.loop !48

bb.j:                                             ; preds = %bb.g, %bb.i, %bb.h
  %.pn = phi i64 [ %i.p, %bb.h ], [ %i.l, %bb.i ], [ %i.l, %bb.g ] ; 2 uses
  %.147 = phi i32 [ %.046113, %bb.h ], [ %.046113, %bb.i ], [ 1, %bb.g ] ; 2 uses
  %.344 = phi i32 [ %spec.select70, %bb.h ], [ %spec.select71, %bb.i ], [ %.041114, %bb.g ] ; 2 uses
  %.140 = phi i32 [ %i.r, %bb.h ], [ %i.t, %bb.i ], [ %.039115, %bb.g ] ; 2 uses
  %.152 = sub i64 %.051112, %.pn                  ; 2 uses
  %.154 = getelementptr inbounds nuw i8, ptr %.053111, i64 %.pn
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #19
  %i.u = icmp ugt i64 %.152, 1
  br i1 %i.u, label %bb.f, label %.loopexit
end_hunk_3
