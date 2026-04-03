begin_hunk_0
          cleanup
  br label %bb.y

.critedge:                                        ; preds = %.noexc30, %.noexc27, %.noexc34, %.noexc33, %.noexc35, %.noexc32, %.noexc31, %.noexc28, %.thread, %_ZN9rapidjson15GenericDocumentINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEES4_E6StringEPKcjb.exit, %_ZN9rapidjson15GenericDocumentINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEES4_E3KeyEPKcjb.exit
  %i.cs = load ptr, ptr %i.a, align 8, !nonnull !14, !align !133
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.cs, ptr noundef nonnull align 8 dereferenceable(32) %4, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #29
end_hunk_0
begin_hunk_1
  %i.fx = fcmp ogt double %.0.i, 0x7FEFFFFFFFFFFFFF
  br i1 %i.fx, label %3, label %_ZN9rapidjson8internal21StrtodNormalPrecisionEdi.exit.thread

3:                                                ; preds = %_ZN9rapidjson8internal21StrtodNormalPrecisionEdi.exit
  %4 = getelementptr inbounds nuw i8, ptr %0, i64 48
  store i32 13, ptr %4, align 8
  %5 = getelementptr inbounds nuw i8, ptr %0, i64 56
  store i64 %i.c, ptr %5, align 8
  br label %.critedge201

bb.al:                                            ; preds = %bb.ba, %bb.ay, %bb.av, %bb.ar
  %i.fy = landingpad { ptr, i32 }
          cleanup
end_hunk_1
begin_hunk_2
  %.pre.i = load ptr, ptr %i.ge, align 8
  br label %.thread442

.thread442:                                       ; preds = %_ZN9rapidjson8internal21StrtodNormalPrecisionEdi.exit.thread, %.noexc
  %i.gl = phi ptr [ %i.gf, %_ZN9rapidjson8internal21StrtodNormalPrecisionEdi.exit.thread ], [ %.pre.i, %.noexc ] ; 3 uses
  %i.gm = getelementptr inbounds nuw i8, ptr %i.gl, i64 16
  store ptr %i.gm, ptr %i.ge, align 8
  %i.gn = getelementptr inbounds nuw i8, ptr %i.gl, i64 8
  store i64 150307637563490304, ptr %i.gn, align 8
  store double %i.gb, ptr %i.gl, align 8
  br label %.critedge201

bb.ao:                                            ; preds = %_ZN9rapidjson13GenericReaderINS_4UTF8IcEES2_NS_12CrtAllocatorEE7ConsumeINS4_12NumberStreamINS_25GenericInsituStringStreamIS2_EEcLb0ELb0EEEEEbRT_NSA_2ChE.exit203
end_hunk_2
begin_hunk_3
  store i16 %i.ix, ptr %i.iy, align 2
  br label %.critedge201

.critedge201:                                     ; preds = %_ZN9rapidjson15GenericDocumentINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEES4_E6Uint64Em.exit, %_ZN9rapidjson15GenericDocumentINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEES4_E3IntEi.exit, %_ZN9rapidjson15GenericDocumentINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEES4_E4UintEj.exit, %3, %.thread442, %bb.at, %.sink.split.i.i, %bb.af, %bb.ae, %bb.r, %bb.l
  %.sroa.0.23 = phi ptr [ %i.by, %bb.r ], [ %i.er, %bb.ae ], [ %.sroa.0.29, %bb.l ], [ %.sroa.0.14634, %bb.af ], [ %.sroa.0.22, %.sink.split.i.i ], [ %.sroa.0.22, %bb.at ], [ %.sroa.0.22652, %.thread442 ], [ %.sroa.0.22652, %3 ], [ %.sroa.0.22, %_ZN9rapidjson15GenericDocumentINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEES4_E4UintEj.exit ], [ %.sroa.0.22, %_ZN9rapidjson15GenericDocumentINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEES4_E3IntEi.exit ], [ %.sroa.0.22, %_ZN9rapidjson15GenericDocumentINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEES4_E6Uint64Em.exit ]
  store ptr %.sroa.0.23, ptr %1, align 8
  store ptr %.sroa.87.0.copyload, ptr %.sroa.87.0..sroa_idx, align 8
  store ptr %.sroa.87347.0.copyload, ptr %.sroa.87347.0..sroa_idx, align 8
end_hunk_3
