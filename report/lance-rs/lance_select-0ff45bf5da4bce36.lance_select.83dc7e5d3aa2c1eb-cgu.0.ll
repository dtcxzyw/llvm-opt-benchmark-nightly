Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/lance-rs/original/lance_select-0ff45bf5da4bce36.lance_select.83dc7e5d3aa2c1eb-cgu.0?download=true
inline.NumInlined: 2541
inline.NumDeleted: 1173
loop-unroll.NumCompletelyUnrolled: 5
loop-unroll.NumRuntimeUnrolled: 60
loop-unroll.NumUnrolled: 66
begin_hunk_0_@_RNvMs7_NtCsbjTsVCnQnhv_12lance_select6resultNtB5_15IndexExprResult9serialize:bb.a

bb.gc:                                            ; preds = %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VechEECsbjTsVCnQnhv_12lance_select.exit.i94.i
  %i.mn = getelementptr inbounds nuw i8, ptr %i.q, i64 32
  %.val4.i96.i = load ptr, ptr %i.mn, align 8, !alias.scope !3474, !noalias !3456, !nonnull !4, !noundef !4
  %i.mo = shl nuw i64 %.val3.i95.i, 2
  call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.val4.i96.i, i64 noundef %i.mo, i64 noundef range(i64 1, -9223372036854775807) 4) #36, !noalias !3475
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VeclEECsbjTsVCnQnhv_12lance_select.exit7.i97.i

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VeclEECsbjTsVCnQnhv_12lance_select.exit7.i97.i: ; preds = %bb.gc, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VechEECsbjTsVCnQnhv_12lance_select.exit.i94.i
  %i.mp = getelementptr inbounds nuw i8, ptr %i.q, i64 48 ; 2 uses
  %i.mq = load i64, ptr %i.mp, align 8, !range !12, !alias.scope !3476, !noalias !3456, !noundef !4
  %i.mr = icmp eq i64 %i.mq, 0
  br i1 %i.mr, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtCs4ytUTZt2Gw9_11arrow_array7builder21generic_bytes_builder18GenericByteBuilderINtNtBI_5types17GenericBinaryTypelEEECsbjTsVCnQnhv_12lance_select.exit99.i, label %bb.gd

bb.gd:                                            ; preds = %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VeclEECsbjTsVCnQnhv_12lance_select.exit7.i97.i
  invoke void @_RNvXs6_NtNtCs4YAKbnGhBJc_12arrow_buffer6buffer7mutableNtB5_13MutableBufferNtNtNtCscI6d9CVNmLh_4core3ops4drop4Drop4drop(ptr noalias noundef nonnull align 8 dereferenceable(56) %i.mp)
          to label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtCs4ytUTZt2Gw9_11arrow_array7builder21generic_bytes_builder18GenericByteBuilderINtNtBI_5types17GenericBinaryTypelEEECsbjTsVCnQnhv_12lance_select.exit99.i unwind label %bb.eo, !noalias !3457

bb.ge:                                            ; preds = %bb.es, %.thread.i4, %bb.gk, %bb.gf, %bb.fo, %bb.fh
  %i.ms = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #39, !noalias !3457
  unreachable

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync3ArcDNtNtCs4ytUTZt2Gw9_11arrow_array5array5ArrayEL_EECsbjTsVCnQnhv_12lance_select.exit.i: ; preds = %bb.fo, %.body.i13
  call void @llvm.experimental.noalias.scope.decl(metadata !3477)
  call void @llvm.experimental.noalias.scope.decl(metadata !3478)
  %i.mt = load ptr, ptr %i.l, align 8, !alias.scope !3479, !noalias !3456, !nonnull !4, !noundef !4
  %i.mu = atomicrmw add ptr %i.mt, i64 -1 release, align 8, !noalias !3480
  %i.mv = icmp eq i64 %i.mu, 1
  br i1 %i.mv, label %bb.gf, label %.body67.i

bb.gf:                                            ; preds = %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync3ArcDNtNtCs4ytUTZt2Gw9_11arrow_array5array5ArrayEL_EECsbjTsVCnQnhv_12lance_select.exit.i
  fence acquire
  invoke void @_RNvMsn_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcDNtNtCs4ytUTZt2Gw9_11arrow_array5array5ArrayEL_E9drop_slowBL_(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.l)
          to label %.body67.i unwind label %bb.ge, !noalias !3457

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtCs4ytUTZt2Gw9_11arrow_array7builder21generic_bytes_builder18GenericByteBuilderINtNtBI_5types17GenericBinaryTypelEEECsbjTsVCnQnhv_12lance_select.exit99.i: ; preds = %bb.gd, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VeclEECsbjTsVCnQnhv_12lance_select.exit7.i97.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q), !noalias !3456
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t), !noalias !3456
  br label %_RNvMs7_NtCsbjTsVCnQnhv_12lance_select6resultNtB5_15IndexExprResult23serialize_three_variant.exit

bb.gg:                                            ; preds = %_RNvMs4_NtCs40k4W9msRzi_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsbjTsVCnQnhv_12lance_select.exit.i7
  %lpad.thr_comm.split-lp.i9 = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %.val.i10 = load i64, ptr %i.p, align 8, !noalias !3456 ; 2 uses
  %i.mw = icmp eq i64 %.val.i10, 0
  br i1 %i.mw, label %.thread116.i, label %bb.gh

bb.gh:                                            ; preds = %bb.gg
  %.val72.i = load ptr, ptr %i.kg, align 8, !noalias !3456, !nonnull !4, !noundef !4
  call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.val72.i, i64 noundef %.val.i10, i64 noundef range(i64 1, -9223372036854775807) 1) #36, !noalias !3457
  br label %.thread116.i

bb.gi:                                            ; preds = %bb.ey
  unreachable

bb.gj:                                            ; preds = %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtCs4ytUTZt2Gw9_11arrow_array7builder21generic_bytes_builder18GenericByteBuilderINtNtBI_5types17GenericBinaryTypelEEECsbjTsVCnQnhv_12lance_select.exit37
  call void @llvm.experimental.noalias.scope.decl(metadata !3481)
  call void @llvm.experimental.noalias.scope.decl(metadata !3482)
  %i.mx = load ptr, ptr %i.t, align 8, !alias.scope !3483, !noalias !3456, !nonnull !4, !noundef !4
  %i.my = atomicrmw add ptr %i.mx, i64 -1 release, align 8, !noalias !3484
  %i.mz = icmp eq i64 %i.my, 1
  br i1 %i.mz, label %bb.gk, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync3ArcDNtNtCs4ytUTZt2Gw9_11arrow_array5array5ArrayEL_EECsbjTsVCnQnhv_12lance_select.exit103.i

bb.gk:                                            ; preds = %bb.gj
  fence acquire
  invoke void @_RNvMsn_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcDNtNtCs4ytUTZt2Gw9_11arrow_array5array5ArrayEL_E9drop_slowBL_(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.t)
          to label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync3ArcDNtNtCs4ytUTZt2Gw9_11arrow_array5array5ArrayEL_EECsbjTsVCnQnhv_12lance_select.exit103.i unwind label %bb.ge, !noalias !3457

.thread.i4:                                       ; preds = %bb.el, %bb.ei, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync3ArcDNtNtCs4ytUTZt2Gw9_11arrow_array5array5ArrayEL_EECsbjTsVCnQnhv_12lance_select.exit103.i
  %.pn63.pn.pn110.i = phi { ptr, i32 } [ %.pn63.pn.i, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync3ArcDNtNtCs4ytUTZt2Gw9_11arrow_array5array5ArrayEL_EECsbjTsVCnQnhv_12lance_select.exit103.i ], [ %i.jd, %bb.ei ], [ %i.jl, %bb.el ]
  invoke void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtCs4ytUTZt2Gw9_11arrow_array5array10byte_array16GenericByteArrayINtNtBI_5types17GenericBinaryTypelEEECsbjTsVCnQnhv_12lance_select(ptr noalias noundef nonnull align 8 dereferenceable(120) %i.u) #38
          to label %common.resume unwind label %bb.ge, !noalias !3457

_RNvMs7_NtCsbjTsVCnQnhv_12lance_select6resultNtB5_15IndexExprResult23serialize_three_variant.exit: ; preds = %bb.ef, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtCs4ytUTZt2Gw9_11arrow_array7builder21generic_bytes_builder18GenericByteBuilderINtNtBI_5types17GenericBinaryTypelEEECsbjTsVCnQnhv_12lance_select.exit.i25, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtCs4ytUTZt2Gw9_11arrow_array7builder21generic_bytes_builder18GenericByteBuilderINtNtBI_5types17GenericBinaryTypelEEECsbjTsVCnQnhv_12lance_select.exit99.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u), !noalias !3456
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p)
  br label %bb.gl

bb.gl:                                            ; preds = %_RNvMs7_NtCsbjTsVCnQnhv_12lance_select6resultNtB5_15IndexExprResult23serialize_three_variant.exit, %_RNvMs7_NtCsbjTsVCnQnhv_12lance_select6resultNtB5_15IndexExprResult18serialize_standard.exit
  ret void
}

; Function Attrs: nonlazybind uwtable
define void @_RNvMs_NtCsbjTsVCnQnhv_12lance_select4maskNtB4_11RowAddrMask10also_allow(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([32 x i8]) align 8 captures(none) dereferenceable(32) %0, ptr noalias noundef readonly align 8 captures(none) dead_on_return dereferenceable(32) %1, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 4 uses
  %i.b = alloca [24 x i8], align 8                ; 6 uses
  %i.c = load i64, ptr %1, align 8, !range !7, !noundef !4
  %i.d = trunc nuw i64 %i.c to i1
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  br i1 %i.d, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.a, ptr noundef nonnull align 8 dereferenceable(24) %i.e, i64 24, i1 false)
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @_RNvXsg_NtCsbjTsVCnQnhv_12lance_select4maskNtB5_14RowAddrTreeMapNtNtNtCscI6d9CVNmLh_4core3ops5arith3Sub3sub(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.f, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.a, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %2)
  store i64 1, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.g

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.b, ptr noundef nonnull align 8 dereferenceable(24) %i.e, i64 24, i1 false)
  invoke void @_RNvXsa_NtCsbjTsVCnQnhv_12lance_select4maskNtB5_14RowAddrTreeMapNtNtNtCscI6d9CVNmLh_4core3ops3bit11BitOrAssign12bitor_assign(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.b, ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(24) %2)
          to label %_RNvXs8_NtCsbjTsVCnQnhv_12lance_select4maskNtB5_14RowAddrTreeMapNtNtNtCscI6d9CVNmLh_4core3ops3bit5BitOr5bitor.exit unwind label %bb.d, !noalias !3489

bb.d:                                             ; preds = %bb.c
  %i.g = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCsbjTsVCnQnhv_12lance_select4mask14RowAddrTreeMapEBF_(ptr noalias noundef align 8 dereferenceable(24) %i.b) #38
          to label %bb.f unwind label %bb.e, !noalias !3490

bb.e:                                             ; preds = %bb.d
  %i.h = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #39, !noalias !3491
  unreachable

bb.f:                                             ; preds = %bb.d
  resume { ptr, i32 } %i.g

_RNvXs8_NtCsbjTsVCnQnhv_12lance_select4maskNtB5_14RowAddrTreeMapNtNtNtCscI6d9CVNmLh_4core3ops3bit5BitOr5bitor.exit: ; preds = %bb.c
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.i, ptr noundef nonnull align 8 dereferenceable(24) %i.b, i64 24, i1 false)
  store i64 0, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %bb.g

bb.g:                                             ; preds = %_RNvXs8_NtCsbjTsVCnQnhv_12lance_select4maskNtB5_14RowAddrTreeMapNtNtNtCscI6d9CVNmLh_4core3ops3bit5BitOr5bitor.exit, %bb.b
  ret void
}

; Function Attrs: nonlazybind uwtable
define void @_RNvMs_NtCsbjTsVCnQnhv_12lance_select4maskNtB4_11RowAddrMask10also_block(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([32 x i8]) align 8 captures(none) dereferenceable(32) %0, ptr noalias noundef readonly align 8 captures(none) dead_on_return dereferenceable(32) %1, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = alloca [24 x i8], align 8                ; 4 uses
  %i.c = load i64, ptr %1, align 8, !range !7, !noundef !4
  %i.d = trunc nuw i64 %i.c to i1
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  br i1 %i.d, label %bb.b, label %bb.f

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.a, ptr noundef nonnull align 8 dereferenceable(24) %i.e, i64 24, i1 false)
  invoke void @_RNvXsa_NtCsbjTsVCnQnhv_12lance_select4maskNtB5_14RowAddrTreeMapNtNtNtCscI6d9CVNmLh_4core3ops3bit11BitOrAssign12bitor_assign(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.a, ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(24) %2)
          to label %_RNvXs8_NtCsbjTsVCnQnhv_12lance_select4maskNtB5_14RowAddrTreeMapNtNtNtCscI6d9CVNmLh_4core3ops3bit5BitOr5bitor.exit unwind label %bb.c, !noalias !3496

bb.c:                                             ; preds = %bb.b
  %i.f = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCsbjTsVCnQnhv_12lance_select4mask14RowAddrTreeMapEBF_(ptr noalias noundef align 8 dereferenceable(24) %i.a) #38
          to label %bb.e unwind label %bb.d, !noalias !3497

bb.d:                                             ; preds = %bb.c
  %i.g = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #39, !noalias !3498
  unreachable

bb.e:                                             ; preds = %bb.c
  resume { ptr, i32 } %i.f

_RNvXs8_NtCsbjTsVCnQnhv_12lance_select4maskNtB5_14RowAddrTreeMapNtNtNtCscI6d9CVNmLh_4core3ops3bit5BitOr5bitor.exit: ; preds = %bb.b
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.h, ptr noundef nonnull align 8 dereferenceable(24) %i.a, i64 24, i1 false)
  store i64 1, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.g

bb.f:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.b, ptr noundef nonnull align 8 dereferenceable(24) %i.e, i64 24, i1 false)
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @_RNvXsg_NtCsbjTsVCnQnhv_12lance_select4maskNtB5_14RowAddrTreeMapNtNtNtCscI6d9CVNmLh_4core3ops5arith3Sub3sub(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.i, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.b, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %2)
  store i64 0, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %_RNvXs8_NtCsbjTsVCnQnhv_12lance_select4maskNtB5_14RowAddrTreeMapNtNtNtCscI6d9CVNmLh_4core3ops3bit5BitOr5bitor.exit
  ret void
}

; Function Attrs: nonlazybind uwtable
define void @_RNvMs_NtCsbjTsVCnQnhv_12lance_select4maskNtB4_11RowAddrMask10from_arrow(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([56 x i8]) align 8 captures(none) dereferenceable(56) %0, ptr noalias noundef readonly align 8 captures(none) dereferenceable(120) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = alloca [24 x i8], align 8                ; 9 uses
  %i.c = alloca [72 x i8], align 8                ; 13 uses
  %i.d = alloca [64 x i8], align 8                ; 10 uses
  %i.e = alloca [8 x i8], align 8                 ; 3 uses
  %i.f = alloca [8 x i8], align 8                 ; 4 uses
  %i.g = alloca [64 x i8], align 8                ; 10 uses
  %i.h = alloca [8 x i8], align 8                 ; 3 uses
  %i.i = alloca [8 x i8], align 8                 ; 4 uses
  %.sroa.2 = alloca [24 x i8], align 8            ; 2 uses
  %i.j = alloca [32 x i8], align 8                ; 10 uses
  %i.k = alloca [56 x i8], align 8                ; 9 uses
  %.sroa.635.sroa.0 = alloca [7 x i8], align 1    ; 7 uses
  %.sroa.737.sroa.5 = alloca [16 x i8], align 8   ; 7 uses
  %i.l = alloca [56 x i8], align 8                ; 8 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 1
  %i.n = getelementptr inbounds nuw i8, ptr %i.l, i64 40
  %i.o = alloca [32 x i8], align 8                ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3531)
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.q = load ptr, ptr %i.p, align 8, !alias.scope !3532, !noundef !4
  %.not.i.i = icmp eq ptr %i.q, null              ; 2 uses
  br i1 %.not.i.i, label %_RNvYINtNtNtCs4ytUTZt2Gw9_11arrow_array5array10byte_array16GenericByteArrayINtNtB9_5types17GenericBinaryTypelEENtB7_5Array7is_nullCsbjTsVCnQnhv_12lance_select.exit.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 104
  %i.s = load i64, ptr %i.r, align 8, !alias.scope !3531, !noundef !4 ; 2 uses
  %.not233 = icmp eq i64 %i.s, 0
  br i1 %.not233, label %bb.c, label %_RNvYINtNtNtCs4ytUTZt2Gw9_11arrow_array5array10byte_array16GenericByteArrayINtNtB9_5types17GenericBinaryTypelEENtB7_5Array7is_nullCsbjTsVCnQnhv_12lance_select.exit, !prof !6

bb.c:                                             ; preds = %bb.b
  tail call void @_RNvNtCscI6d9CVNmLh_4core9panicking5panic(ptr noalias noundef nonnull readonly captures(address, read_provenance) @205, i64 noundef 36, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @207) #37, !noalias !3531
  unreachable

_RNvYINtNtNtCs4ytUTZt2Gw9_11arrow_array5array10byte_array16GenericByteArrayINtNtB9_5types17GenericBinaryTypelEENtB7_5Array7is_nullCsbjTsVCnQnhv_12lance_select.exit: ; preds = %bb.b
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 80
  %i.u = load ptr, ptr %i.t, align 8, !alias.scope !3531, !noundef !4
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 96
  %i.w = load i64, ptr %i.v, align 8, !alias.scope !3531, !noundef !4 ; 2 uses
  %i.x = lshr i64 %i.w, 3
  %i.y = getelementptr inbounds nuw i8, ptr %i.u, i64 %i.x
  %i.z = load i8, ptr %i.y, align 1, !noalias !3531, !noundef !4
  %i.aa = trunc i64 %i.w to i8
  %i.ab = and i8 %i.aa, 7
  %i.ac = xor i8 %i.z, -1
  %i.ad = lshr i8 %i.ac, %i.ab
  %i.ae = trunc i8 %i.ad to i1
  br i1 %i.ae, label %.thread, label %_RNvYINtNtNtCs4ytUTZt2Gw9_11arrow_array5array10byte_array16GenericByteArrayINtNtB9_5types17GenericBinaryTypelEENtB7_5Array7is_nullCsbjTsVCnQnhv_12lance_select.exit.thread

.thread:                                          ; preds = %_RNvYINtNtNtCs4ytUTZt2Gw9_11arrow_array5array10byte_array16GenericByteArrayINtNtB9_5types17GenericBinaryTypelEENtB7_5Array7is_nullCsbjTsVCnQnhv_12lance_select.exit
  store i64 0, ptr %i.o, align 8
  %.sroa.482.0..sroa_idx202 = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.635.sroa.0)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.737.sroa.5)
  br label %bb.g

_RNvYINtNtNtCs4ytUTZt2Gw9_11arrow_array5array10byte_array16GenericByteArrayINtNtB9_5types17GenericBinaryTypelEENtB7_5Array7is_nullCsbjTsVCnQnhv_12lance_select.exit.thread: ; preds = %bb.a, %_RNvYINtNtNtCs4ytUTZt2Gw9_11arrow_array5array10byte_array16GenericByteArrayINtNtB9_5types17GenericBinaryTypelEENtB7_5Array7is_nullCsbjTsVCnQnhv_12lance_select.exit
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3533)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i)
  store i64 0, ptr %i.i, align 8, !noalias !3533
  %i.af = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.ag = load i64, ptr %i.af, align 8, !alias.scope !3533, !noundef !4 ; 2 uses
  %i.ah = lshr i64 %i.ag, 2
  %i.ai = add nsw i64 %i.ah, -1                   ; 2 uses
  %.not234 = icmp eq i64 %i.ai, 0
  br i1 %.not234, label %bb.d, label %_RNvMs_NtNtCs4ytUTZt2Gw9_11arrow_array5array10byte_arrayINtB4_16GenericByteArrayINtNtB8_5types17GenericBinaryTypelEE5valueCsbjTsVCnQnhv_12lance_select.exit, !prof !6

bb.d:                                             ; preds = %_RNvYINtNtNtCs4ytUTZt2Gw9_11arrow_array5array10byte_array16GenericByteArrayINtNtB9_5types17GenericBinaryTypelEENtB7_5Array7is_nullCsbjTsVCnQnhv_12lance_select.exit.thread
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !3533
  store i64 0, ptr %i.h, align 8, !noalias !3533
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !3533
  store ptr %i.i, ptr %i.g, align 8, !noalias !3533
  %.sroa.42.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  store ptr @_RNvXsi_NtNtNtCscI6d9CVNmLh_4core3fmt3num3impjNtB9_7Display3fmt, ptr %.sroa.42.0..sroa_idx.i, align 8, !noalias !3533
  %i.aj = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  store ptr @141, ptr %i.aj, align 8, !noalias !3533
  %.sroa.46.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.g, i64 24
  store ptr @_RNvXs1i_NtCscI6d9CVNmLh_4core3fmtReNtB6_7Display3fmtCsbjTsVCnQnhv_12lance_select, ptr %.sroa.46.0..sroa_idx.i, align 8, !noalias !3533
  %i.ak = getelementptr inbounds nuw i8, ptr %i.g, i64 32
  store ptr @143, ptr %i.ak, align 8, !noalias !3533
  %.sroa.410.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.g, i64 40
  store ptr @_RNvXs1i_NtCscI6d9CVNmLh_4core3fmtReNtB6_7Display3fmtCsbjTsVCnQnhv_12lance_select, ptr %.sroa.410.0..sroa_idx.i, align 8, !noalias !3533
  %i.al = getelementptr inbounds nuw i8, ptr %i.g, i64 48
  store ptr %i.h, ptr %i.al, align 8, !noalias !3533
  %.sroa.414.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.g, i64 56
  store ptr @_RNvXsi_NtNtNtCscI6d9CVNmLh_4core3fmt3num3impjNtB9_7Display3fmt, ptr %.sroa.414.0..sroa_idx.i, align 8, !noalias !3533
  call void @_RNvNtCscI6d9CVNmLh_4core9panicking9panic_fmt(ptr noundef nonnull @144, ptr noundef nonnull %i.g, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @145) #37, !noalias !3533
  unreachable

_RNvMs_NtNtCs4ytUTZt2Gw9_11arrow_array5array10byte_arrayINtB4_16GenericByteArrayINtNtB8_5types17GenericBinaryTypelEE5valueCsbjTsVCnQnhv_12lance_select.exit: ; preds = %_RNvYINtNtNtCs4ytUTZt2Gw9_11arrow_array5array10byte_array16GenericByteArrayINtNtB9_5types17GenericBinaryTypelEENtB7_5Array7is_nullCsbjTsVCnQnhv_12lance_select.exit.thread
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3534)
  %i.am = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.an = load ptr, ptr %i.am, align 8, !alias.scope !3535, !noundef !4 ; 2 uses
  %i.ao = icmp ugt i64 %i.ag, 7
  tail call void @llvm.assume(i1 %i.ao)
  %i.ap = getelementptr inbounds nuw i8, ptr %i.an, i64 4
  %i.aq = load i32, ptr %i.ap, align 4, !noalias !3535, !noundef !4
  %i.ar = load i32, ptr %i.an, align 4, !noalias !3535, !noundef !4 ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.at = load ptr, ptr %i.as, align 8, !alias.scope !3535, !noundef !4
  %i.au = sext i32 %i.ar to i64
  %i.av = getelementptr inbounds i8, ptr %i.at, i64 %i.au
  %i.aw = sub i32 %i.aq, %i.ar                    ; 2 uses
  %i.ax = icmp sgt i32 %i.aw, -1
  %i.ay = zext nneg i32 %i.aw to i64
  tail call void @llvm.assume(i1 %i.ax)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  call fastcc void @_RINvMs6_NtCsbjTsVCnQnhv_12lance_select4maskNtB6_14RowAddrTreeMap16deserialize_fromRShEB8_(ptr noalias noundef align 8 captures(none) dereferenceable(56) %i.l, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.av, i64 noundef %i.ay)
  %.sroa.011.0.copyload = load i8, ptr %i.l, align 8 ; 2 uses
  %.sroa.613.sroa.5.0..sroa.613.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  %.sroa.613.sroa.5.0.copyload = load i64, ptr %.sroa.613.sroa.5.0..sroa.613.0..sroa_idx.sroa_idx, align 8 ; 2 uses
  %.sroa.613.sroa.7.0..sroa.613.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.l, i64 16
  %.sroa.613.sroa.7.sroa.0.0.copyload = load i64, ptr %.sroa.613.sroa.7.0..sroa.613.0..sroa_idx.sroa_idx, align 8 ; 4 uses
  %.sroa.613.sroa.7.sroa.6.0..sroa.613.sroa.7.0..sroa.613.0..sroa_idx.sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.l, i64 24
  %.sroa.613.sroa.7.sroa.6.0.copyload = load i64, ptr %.sroa.613.sroa.7.sroa.6.0..sroa.613.sroa.7.0..sroa.613.0..sroa_idx.sroa_idx.sroa_idx, align 8 ; 4 uses
  %.not = icmp eq i8 %.sroa.011.0.copyload, -1
  br i1 %.not, label %bb.f, label %bb.e

bb.e:                                             ; preds = %_RNvMs_NtNtCs4ytUTZt2Gw9_11arrow_array5array10byte_arrayINtB4_16GenericByteArrayINtNtB8_5types17GenericBinaryTypelEE5valueCsbjTsVCnQnhv_12lance_select.exit
  %.sroa.715.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.l, i64 32
  %.sroa.715.sroa.0.0.copyload = load i64, ptr %.sroa.715.0..sroa_idx, align 8
  %.sroa.496.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %.sroa.496.0..sroa_idx, ptr noundef nonnull align 1 dereferenceable(7) %i.m, i64 7, i1 false)
  %.sroa.9101.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 40
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.9101.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(16) %i.n, i64 16, i1 false)
  store i8 %.sroa.011.0.copyload, ptr %0, align 8
  %.sroa.597.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.sroa.613.sroa.5.0.copyload, ptr %.sroa.597.0..sroa_idx, align 8
  %.sroa.698.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %.sroa.613.sroa.7.sroa.0.0.copyload, ptr %.sroa.698.0..sroa_idx, align 8
  %.sroa.799.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 %.sroa.613.sroa.7.sroa.6.0.copyload, ptr %.sroa.799.0..sroa_idx, align 8
  %.sroa.8100.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i64 %.sroa.715.sroa.0.0.copyload, ptr %.sroa.8100.0..sroa_idx, align 8
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsbjTsVCnQnhv_12lance_select4mask14RowAddrTreeMapEEB11_.exit

bb.f:                                             ; preds = %_RNvMs_NtNtCs4ytUTZt2Gw9_11arrow_array5array10byte_arrayINtB4_16GenericByteArrayINtNtB8_5types17GenericBinaryTypelEE5valueCsbjTsVCnQnhv_12lance_select.exit
  store i64 1, ptr %i.o, align 8
  %.sroa.482.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.o, i64 8 ; 3 uses
  store i64 %.sroa.613.sroa.5.0.copyload, ptr %.sroa.482.0..sroa_idx, align 8
  %.sroa.583.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.o, i64 16
  store i64 %.sroa.613.sroa.7.sroa.0.0.copyload, ptr %.sroa.583.0..sroa_idx, align 8
  %.sroa.6.0..sroa_idx84 = getelementptr inbounds nuw i8, ptr %i.o, i64 24
  store i64 %.sroa.613.sroa.7.sroa.6.0.copyload, ptr %.sroa.6.0..sroa_idx84, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.635.sroa.0)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.737.sroa.5)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3536)
  br i1 %.not.i.i, label %_RNvYINtNtNtCs4ytUTZt2Gw9_11arrow_array5array10byte_array16GenericByteArrayINtNtB9_5types17GenericBinaryTypelEENtB7_5Array7is_nullCsbjTsVCnQnhv_12lance_select.exit182.thread, label %._crit_edge

._crit_edge:                                      ; preds = %bb.f
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %1, i64 104
  %.pre = load i64, ptr %.phi.trans.insert, align 8, !alias.scope !3536
  br label %bb.g

bb.g:                                             ; preds = %._crit_edge, %.thread
  %i.az = phi i64 [ %i.s, %.thread ], [ %.pre, %._crit_edge ]
  %.sroa.482.0..sroa_idx211 = phi ptr [ %.sroa.482.0..sroa_idx202, %.thread ], [ %.sroa.482.0..sroa_idx, %._crit_edge ] ; 2 uses
  %.sroa.7.sroa.5.0209 = phi i64 [ 0, %.thread ], [ 1, %._crit_edge ] ; 2 uses
  %.sroa.7.sroa.8.sroa.8.sroa.0.0207 = phi i64 [ undef, %.thread ], [ %.sroa.613.sroa.7.sroa.0.0.copyload, %._crit_edge ]
  %.sroa.7.sroa.8.sroa.8.sroa.8.0205 = phi i64 [ undef, %.thread ], [ %.sroa.613.sroa.7.sroa.6.0.copyload, %._crit_edge ]
  %i.ba = icmp ugt i64 %i.az, 1
  br i1 %i.ba, label %_RNvYINtNtNtCs4ytUTZt2Gw9_11arrow_array5array10byte_array16GenericByteArrayINtNtB9_5types17GenericBinaryTypelEENtB7_5Array7is_nullCsbjTsVCnQnhv_12lance_select.exit182, label %bb.h, !prof !13

bb.h:                                             ; preds = %bb.g
  invoke void @_RNvNtCscI6d9CVNmLh_4core9panicking5panic(ptr noalias noundef nonnull readonly captures(address, read_provenance) @205, i64 noundef 36, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @207) #37
          to label %.noexc unwind label %bb.y

.noexc:                                           ; preds = %bb.h
  unreachable

_RNvYINtNtNtCs4ytUTZt2Gw9_11arrow_array5array10byte_array16GenericByteArrayINtNtB9_5types17GenericBinaryTypelEENtB7_5Array7is_nullCsbjTsVCnQnhv_12lance_select.exit182: ; preds = %bb.g
  %i.bb = getelementptr inbounds nuw i8, ptr %1, i64 80
  %i.bc = load ptr, ptr %i.bb, align 8, !alias.scope !3536, !noundef !4
  %i.bd = getelementptr inbounds nuw i8, ptr %1, i64 96
  %i.be = load i64, ptr %i.bd, align 8, !alias.scope !3536, !noundef !4
  %i.bf = add i64 %i.be, 1                        ; 2 uses
  %i.bg = lshr i64 %i.bf, 3
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bc, i64 %i.bg
  %i.bi = load i8, ptr %i.bh, align 1, !noalias !3536, !noundef !4
  %i.bj = trunc i64 %i.bf to i8
  %i.bk = and i8 %i.bj, 7
  %i.bl = xor i8 %i.bi, -1
  %i.bm = lshr i8 %i.bl, %i.bk
  %i.bn = trunc i8 %i.bm to i1
  br i1 %i.bn, label %bb.r, label %_RNvYINtNtNtCs4ytUTZt2Gw9_11arrow_array5array10byte_array16GenericByteArrayINtNtB9_5types17GenericBinaryTypelEENtB7_5Array7is_nullCsbjTsVCnQnhv_12lance_select.exit182._RNvYINtNtNtCs4ytUTZt2Gw9_11arrow_array5array10byte_array16GenericByteArrayINtNtB9_5types17GenericBinaryTypelEENtB7_5Array7is_nullCsbjTsVCnQnhv_12lance_select.exit182.thread_crit_edge

_RNvYINtNtNtCs4ytUTZt2Gw9_11arrow_array5array10byte_array16GenericByteArrayINtNtB9_5types17GenericBinaryTypelEENtB7_5Array7is_nullCsbjTsVCnQnhv_12lance_select.exit182._RNvYINtNtNtCs4ytUTZt2Gw9_11arrow_array5array10byte_array16GenericByteArrayINtNtB9_5types17GenericBinaryTypelEENtB7_5Array7is_nullCsbjTsVCnQnhv_12lance_select.exit182.thread_crit_edge: ; preds = %_RNvYINtNtNtCs4ytUTZt2Gw9_11arrow_array5array10byte_array16GenericByteArrayINtNtB9_5types17GenericBinaryTypelEENtB7_5Array7is_nullCsbjTsVCnQnhv_12lance_select.exit182
  %.phi.trans.insert235 = getelementptr inbounds nuw i8, ptr %1, i64 40
  %.pre236 = load i64, ptr %.phi.trans.insert235, align 8, !alias.scope !3537
  %.pre237 = lshr i64 %.pre236, 2
  %.pre238 = add nsw i64 %.pre237, -1
  br label %_RNvYINtNtNtCs4ytUTZt2Gw9_11arrow_array5array10byte_array16GenericByteArrayINtNtB9_5types17GenericBinaryTypelEENtB7_5Array7is_nullCsbjTsVCnQnhv_12lance_select.exit182.thread

_RNvYINtNtNtCs4ytUTZt2Gw9_11arrow_array5array10byte_array16GenericByteArrayINtNtB9_5types17GenericBinaryTypelEENtB7_5Array7is_nullCsbjTsVCnQnhv_12lance_select.exit182.thread: ; preds = %_RNvYINtNtNtCs4ytUTZt2Gw9_11arrow_array5array10byte_array16GenericByteArrayINtNtB9_5types17GenericBinaryTypelEENtB7_5Array7is_nullCsbjTsVCnQnhv_12lance_select.exit182._RNvYINtNtNtCs4ytUTZt2Gw9_11arrow_array5array10byte_array16GenericByteArrayINtNtB9_5types17GenericBinaryTypelEENtB7_5Array7is_nullCsbjTsVCnQnhv_12lance_select.exit182.thread_crit_edge, %bb.f
  %.pre-phi239 = phi i64 [ %.pre238, %_RNvYINtNtNtCs4ytUTZt2Gw9_11arrow_array5array10byte_array16GenericByteArrayINtNtB9_5types17GenericBinaryTypelEENtB7_5Array7is_nullCsbjTsVCnQnhv_12lance_select.exit182._RNvYINtNtNtCs4ytUTZt2Gw9_11arrow_array5array10byte_array16GenericByteArrayINtNtB9_5types17GenericBinaryTypelEENtB7_5Array7is_nullCsbjTsVCnQnhv_12lance_select.exit182.thread_crit_edge ], [ %i.ai, %bb.f ] ; 2 uses
  %.sroa.7.sroa.8.sroa.8.sroa.8.0206230 = phi i64 [ %.sroa.7.sroa.8.sroa.8.sroa.8.0205, %_RNvYINtNtNtCs4ytUTZt2Gw9_11arrow_array5array10byte_array16GenericByteArrayINtNtB9_5types17GenericBinaryTypelEENtB7_5Array7is_nullCsbjTsVCnQnhv_12lance_select.exit182._RNvYINtNtNtCs4ytUTZt2Gw9_11arrow_array5array10byte_array16GenericByteArrayINtNtB9_5types17GenericBinaryTypelEENtB7_5Array7is_nullCsbjTsVCnQnhv_12lance_select.exit182.thread_crit_edge ], [ %.sroa.613.sroa.7.sroa.6.0.copyload, %bb.f ]
  %.sroa.7.sroa.8.sroa.8.sroa.0.0208229 = phi i64 [ %.sroa.7.sroa.8.sroa.8.sroa.0.0207, %_RNvYINtNtNtCs4ytUTZt2Gw9_11arrow_array5array10byte_array16GenericByteArrayINtNtB9_5types17GenericBinaryTypelEENtB7_5Array7is_nullCsbjTsVCnQnhv_12lance_select.exit182._RNvYINtNtNtCs4ytUTZt2Gw9_11arrow_array5array10byte_array16GenericByteArrayINtNtB9_5types17GenericBinaryTypelEENtB7_5Array7is_nullCsbjTsVCnQnhv_12lance_select.exit182.thread_crit_edge ], [ %.sroa.613.sroa.7.sroa.0.0.copyload, %bb.f ] ; 2 uses
  %.sroa.7.sroa.5.0210227 = phi i64 [ %.sroa.7.sroa.5.0209, %_RNvYINtNtNtCs4ytUTZt2Gw9_11arrow_array5array10byte_array16GenericByteArrayINtNtB9_5types17GenericBinaryTypelEENtB7_5Array7is_nullCsbjTsVCnQnhv_12lance_select.exit182._RNvYINtNtNtCs4ytUTZt2Gw9_11arrow_array5array10byte_array16GenericByteArrayINtNtB9_5types17GenericBinaryTypelEENtB7_5Array7is_nullCsbjTsVCnQnhv_12lance_select.exit182.thread_crit_edge ], [ 1, %bb.f ] ; 2 uses
  %.sroa.482.0..sroa_idx212225 = phi ptr [ %.sroa.482.0..sroa_idx211, %_RNvYINtNtNtCs4ytUTZt2Gw9_11arrow_array5array10byte_array16GenericByteArrayINtNtB9_5types17GenericBinaryTypelEENtB7_5Array7is_nullCsbjTsVCnQnhv_12lance_select.exit182._RNvYINtNtNtCs4ytUTZt2Gw9_11arrow_array5array10byte_array16GenericByteArrayINtNtB9_5types17GenericBinaryTypelEENtB7_5Array7is_nullCsbjTsVCnQnhv_12lance_select.exit182.thread_crit_edge ], [ %.sroa.482.0..sroa_idx, %bb.f ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3537)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  store i64 1, ptr %i.f, align 8, !noalias !3537
  %i.bo = icmp ugt i64 %.pre-phi239, 1
  br i1 %i.bo, label %bb.j, label %bb.i, !prof !13

bb.i:                                             ; preds = %_RNvYINtNtNtCs4ytUTZt2Gw9_11arrow_array5array10byte_array16GenericByteArrayINtNtB9_5types17GenericBinaryTypelEENtB7_5Array7is_nullCsbjTsVCnQnhv_12lance_select.exit182.thread
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !3537
  store i64 %.pre-phi239, ptr %i.e, align 8, !noalias !3537
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !3537
  store ptr %i.f, ptr %i.d, align 8, !noalias !3537
  %.sroa.42.0..sroa_idx.i183 = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store ptr @_RNvXsi_NtNtNtCscI6d9CVNmLh_4core3fmt3num3impjNtB9_7Display3fmt, ptr %.sroa.42.0..sroa_idx.i183, align 8, !noalias !3537
  %i.bp = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  store ptr @141, ptr %i.bp, align 8, !noalias !3537
  %.sroa.46.0..sroa_idx.i184 = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  store ptr @_RNvXs1i_NtCscI6d9CVNmLh_4core3fmtReNtB6_7Display3fmtCsbjTsVCnQnhv_12lance_select, ptr %.sroa.46.0..sroa_idx.i184, align 8, !noalias !3537
  %i.bq = getelementptr inbounds nuw i8, ptr %i.d, i64 32
  store ptr @143, ptr %i.bq, align 8, !noalias !3537
  %.sroa.410.0..sroa_idx.i185 = getelementptr inbounds nuw i8, ptr %i.d, i64 40
  store ptr @_RNvXs1i_NtCscI6d9CVNmLh_4core3fmtReNtB6_7Display3fmtCsbjTsVCnQnhv_12lance_select, ptr %.sroa.410.0..sroa_idx.i185, align 8, !noalias !3537
  %i.br = getelementptr inbounds nuw i8, ptr %i.d, i64 48
  store ptr %i.e, ptr %i.br, align 8, !noalias !3537
  %.sroa.414.0..sroa_idx.i186 = getelementptr inbounds nuw i8, ptr %i.d, i64 56
  store ptr @_RNvXsi_NtNtNtCscI6d9CVNmLh_4core3fmt3num3impjNtB9_7Display3fmt, ptr %.sroa.414.0..sroa_idx.i186, align 8, !noalias !3537
  invoke void @_RNvNtCscI6d9CVNmLh_4core9panicking9panic_fmt(ptr noundef nonnull @144, ptr noundef nonnull %i.d, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @145) #37
          to label %.noexc187 unwind label %bb.y

.noexc187:                                        ; preds = %bb.i
  unreachable

bb.j:                                             ; preds = %_RNvYINtNtNtCs4ytUTZt2Gw9_11arrow_array5array10byte_array16GenericByteArrayINtNtB9_5types17GenericBinaryTypelEENtB7_5Array7is_nullCsbjTsVCnQnhv_12lance_select.exit182.thread
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3538)
  %i.bs = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.bt = load ptr, ptr %i.bs, align 8, !alias.scope !3539, !noundef !4 ; 2 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bt, i64 8
  %i.bv = load i32, ptr %i.bu, align 4, !noalias !3539, !noundef !4
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bt, i64 4
  %i.bx = load i32, ptr %i.bw, align 4, !noalias !3539, !noundef !4 ; 2 uses
  %i.by = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.bz = load ptr, ptr %i.by, align 8, !alias.scope !3539, !noundef !4
  %i.ca = sext i32 %i.bx to i64
  %i.cb = getelementptr inbounds i8, ptr %i.bz, i64 %i.ca
  %i.cc = sub i32 %i.bv, %i.bx                    ; 2 uses
  %i.cd = icmp sgt i32 %i.cc, -1
  %i.ce = zext nneg i32 %i.cc to i64
  tail call void @llvm.assume(i1 %i.cd)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  invoke fastcc void @_RINvMs6_NtCsbjTsVCnQnhv_12lance_select4maskNtB6_14RowAddrTreeMap16deserialize_fromRShEB8_(ptr noalias noundef align 8 captures(none) dereferenceable(56) %i.k, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.cb, i64 noundef %i.ce)
          to label %bb.k unwind label %bb.y

bb.k:                                             ; preds = %bb.j
  %.sroa.033.0.copyload = load i8, ptr %i.k, align 8 ; 2 uses
  %.sroa.635.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.k, i64 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %.sroa.635.sroa.0, ptr noundef nonnull align 1 dereferenceable(7) %.sroa.635.0..sroa_idx, i64 7, i1 false)
  %.sroa.635.sroa.5.0..sroa.635.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  %.sroa.635.sroa.5.0.copyload = load i64, ptr %.sroa.635.sroa.5.0..sroa.635.0..sroa_idx.sroa_idx, align 8 ; 3 uses
  %.sroa.635.sroa.7.0..sroa.635.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.k, i64 16
  %.sroa.635.sroa.7.sroa.0.0.copyload = load i64, ptr %.sroa.635.sroa.7.0..sroa.635.0..sroa_idx.sroa_idx, align 8 ; 3 uses
  %.sroa.635.sroa.7.sroa.6.0..sroa.635.sroa.7.0..sroa.635.0..sroa_idx.sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.k, i64 24 ; 2 uses
  %i.cf = load <2 x i64>, ptr %.sroa.635.sroa.7.sroa.6.0..sroa.635.sroa.7.0..sroa.635.0..sroa_idx.sroa_idx.sroa_idx, align 8
  %.sroa.635.sroa.7.sroa.6.0.copyload = load i64, ptr %.sroa.635.sroa.7.sroa.6.0..sroa.635.sroa.7.0..sroa.635.0..sroa_idx.sroa_idx.sroa_idx, align 8 ; 2 uses
  %.sroa.737.sroa.5.0..sroa.737.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.k, i64 40
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.737.sroa.5, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.737.sroa.5.0..sroa.737.0..sroa_idx.sroa_idx, i64 16, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k)
  %.not179 = icmp eq i8 %.sroa.033.0.copyload, -1
  br i1 %.not179, label %.thread243, label %bb.l

bb.l:                                             ; preds = %bb.k
  %.sroa.4164.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %.sroa.4164.0..sroa_idx, ptr noundef nonnull align 1 dereferenceable(7) %.sroa.635.sroa.0, i64 7, i1 false)
  %.sroa.9169.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 40
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.9169.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.737.sroa.5, i64 16, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.635.sroa.0)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.737.sroa.5)
  store i8 %.sroa.033.0.copyload, ptr %0, align 8
  %.sroa.5165.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.sroa.635.sroa.5.0.copyload, ptr %.sroa.5165.0..sroa_idx, align 8
  %.sroa.6166.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %.sroa.635.sroa.7.sroa.0.0.copyload, ptr %.sroa.6166.0..sroa_idx, align 8
  %.sroa.7167.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store <2 x i64> %i.cf, ptr %.sroa.7167.0..sroa_idx, align 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3540)
  %i.cg = icmp eq i64 %.sroa.7.sroa.5.0210227, 0
  br i1 %i.cg, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsbjTsVCnQnhv_12lance_select4mask14RowAddrTreeMapEEB11_.exit, label %bb.m

bb.m:                                             ; preds = %bb.l
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3541)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3542)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3543)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !3544
  %.sroa.06.0.copyload.i.i.i.i = load ptr, ptr %.sroa.482.0..sroa_idx212225, align 8, !alias.scope !3544 ; 3 uses
  %.not.i.i.i.i = icmp eq ptr %.sroa.06.0.copyload.i.i.i.i, null
  br i1 %.not.i.i.i.i, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  %.sroa.414.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store ptr null, ptr %.sroa.414.0..sroa_idx.i.i.i.i, align 8, !noalias !3544
  %.sroa.414.sroa.4.0..sroa.414.0..sroa_idx.sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  store ptr %.sroa.06.0.copyload.i.i.i.i, ptr %.sroa.414.sroa.4.0..sroa.414.0..sroa_idx.sroa_idx.i.i.i.i, align 8, !noalias !3544
  %.sroa.414.sroa.5.0..sroa.414.0..sroa_idx.sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  store i64 %.sroa.7.sroa.8.sroa.8.sroa.0.0208229, ptr %.sroa.414.sroa.5.0..sroa.414.0..sroa_idx.sroa_idx.i.i.i.i, align 8, !noalias !3544
  %.sroa.616.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 40
  store ptr null, ptr %.sroa.616.0..sroa_idx.i.i.i.i, align 8, !noalias !3544
  %.sroa.616.sroa.4.0..sroa.616.0..sroa_idx.sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 48
  store ptr %.sroa.06.0.copyload.i.i.i.i, ptr %.sroa.616.sroa.4.0..sroa.616.0..sroa_idx.sroa_idx.i.i.i.i, align 8, !noalias !3544
  %.sroa.616.sroa.5.0..sroa.616.0..sroa_idx.sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 56
  store i64 %.sroa.7.sroa.8.sroa.8.sroa.0.0208229, ptr %.sroa.616.sroa.5.0..sroa.616.0..sroa_idx.sroa_idx.i.i.i.i, align 8, !noalias !3544
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m
  %.sink31.i.i.i.i = phi i64 [ 1, %bb.n ], [ 0, %bb.m ] ; 2 uses
  %.sroa.58.0.copyload.sink.i.i.i.i = phi i64 [ %.sroa.7.sroa.8.sroa.8.sroa.8.0206230, %bb.n ], [ 0, %bb.m ]
  store i64 %.sink31.i.i.i.i, ptr %i.c, align 8, !noalias !3544
  %i.ch = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  store i64 %.sink31.i.i.i.i, ptr %i.ch, align 8, !noalias !3544
  %i.ci = getelementptr inbounds nuw i8, ptr %i.c, i64 64
  store i64 %.sroa.58.0.copyload.sink.i.i.i.i, ptr %i.ci, align 8, !noalias !3544
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !3545
  call fastcc void @_RNvMsz_NtNtNtCs40k4W9msRzi_5alloc11collections5btree3mapINtB5_8IntoItermNtNtCsbjTsVCnQnhv_12lance_select4mask16RowAddrSelectionE10dying_nextB1c_(ptr noalias noundef align 8 captures(none) dereferenceable(24) %i.b, ptr noalias noundef nonnull align 8 dereferenceable(72) %i.c), !noalias !3544
  %i.cj = load ptr, ptr %i.b, align 8, !noalias !3545, !noundef !4 ; 2 uses
  %.not5.i.i.i.i.i.i = icmp eq ptr %i.cj, null
  br i1 %.not5.i.i.i.i.i.i, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCsbjTsVCnQnhv_12lance_select4mask14RowAddrTreeMapEBF_.exit.i, label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %bb.o
  %.sroa.43.0..sroa_idx.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  br label %bb.p

bb.p:                                             ; preds = %_RNvMsT_NtNtNtCs40k4W9msRzi_5alloc11collections5btree4nodeINtB5_6HandleINtB5_7NodeRefNtNtB5_6marker5DyingmNtNtCsbjTsVCnQnhv_12lance_select4mask16RowAddrSelectionNtB1m_14LeafOrInternalENtB1m_2KVE12drop_key_valB1J_.exit.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i
  %i.ck = phi ptr [ %i.cj, %.lr.ph.i.i.i.i.i.i ], [ %i.cp, %_RNvMsT_NtNtNtCs40k4W9msRzi_5alloc11collections5btree4nodeINtB5_6HandleINtB5_7NodeRefNtNtB5_6marker5DyingmNtNtCsbjTsVCnQnhv_12lance_select4mask16RowAddrSelectionNtB1m_14LeafOrInternalENtB1m_2KVE12drop_key_valB1J_.exit.i.i.i.i.i.i ]
  %.sroa.43.0.copyload.i.i.i.i.i.i = load i64, ptr %.sroa.43.0..sroa_idx.i.i.i.i.i.i, align 8, !noalias !3545
  %i.cl = getelementptr inbounds nuw i8, ptr %i.ck, i64 8
  %i.cm = getelementptr inbounds nuw [24 x i8], ptr %i.cl, i64 %.sroa.43.0.copyload.i.i.i.i.i.i ; 2 uses
  %i.cn = load i64, ptr %i.cm, align 8, !range !9, !alias.scope !3546, !noalias !3545, !noundef !4
  %i.co = icmp eq i64 %i.cn, -1
  br i1 %i.co, label %_RNvMsT_NtNtNtCs40k4W9msRzi_5alloc11collections5btree4nodeINtB5_6HandleINtB5_7NodeRefNtNtB5_6marker5DyingmNtNtCsbjTsVCnQnhv_12lance_select4mask16RowAddrSelectionNtB1m_14LeafOrInternalENtB1m_2KVE12drop_key_valB1J_.exit.i.i.i.i.i.i, label %bb.q

bb.q:                                             ; preds = %bb.p
  tail call fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VecNtNtNtCs1akgR21QTtx_7roaring6bitmap9container9ContainerEECsbjTsVCnQnhv_12lance_select(ptr noalias noundef nonnull readonly align 8 dereferenceable(24) %i.cm), !noalias !3545
  br label %_RNvMsT_NtNtNtCs40k4W9msRzi_5alloc11collections5btree4nodeINtB5_6HandleINtB5_7NodeRefNtNtB5_6marker5DyingmNtNtCsbjTsVCnQnhv_12lance_select4mask16RowAddrSelectionNtB1m_14LeafOrInternalENtB1m_2KVE12drop_key_valB1J_.exit.i.i.i.i.i.i

_RNvMsT_NtNtNtCs40k4W9msRzi_5alloc11collections5btree4nodeINtB5_6HandleINtB5_7NodeRefNtNtB5_6marker5DyingmNtNtCsbjTsVCnQnhv_12lance_select4mask16RowAddrSelectionNtB1m_14LeafOrInternalENtB1m_2KVE12drop_key_valB1J_.exit.i.i.i.i.i.i: ; preds = %bb.q, %bb.p
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !3545
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !3545
  call fastcc void @_RNvMsz_NtNtNtCs40k4W9msRzi_5alloc11collections5btree3mapINtB5_8IntoItermNtNtCsbjTsVCnQnhv_12lance_select4mask16RowAddrSelectionE10dying_nextB1c_(ptr noalias noundef align 8 captures(none) dereferenceable(24) %i.b, ptr noalias noundef nonnull align 8 dereferenceable(72) %i.c), !noalias !3544
  %i.cp = load ptr, ptr %i.b, align 8, !noalias !3545, !noundef !4 ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.cp, null
  br i1 %.not.i.i.i.i.i.i, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCsbjTsVCnQnhv_12lance_select4mask14RowAddrTreeMapEBF_.exit.i, label %bb.p

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCsbjTsVCnQnhv_12lance_select4mask14RowAddrTreeMapEBF_.exit.i: ; preds = %_RNvMsT_NtNtNtCs40k4W9msRzi_5alloc11collections5btree4nodeINtB5_6HandleINtB5_7NodeRefNtNtB5_6marker5DyingmNtNtCsbjTsVCnQnhv_12lance_select4mask16RowAddrSelectionNtB1m_14LeafOrInternalENtB1m_2KVE12drop_key_valB1J_.exit.i.i.i.i.i.i, %bb.o
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !3545
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !3544
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsbjTsVCnQnhv_12lance_select4mask14RowAddrTreeMapEEB11_.exit

bb.r:                                             ; preds = %_RNvYINtNtNtCs4ytUTZt2Gw9_11arrow_array5array10byte_array16GenericByteArrayINtNtB9_5types17GenericBinaryTypelEENtB7_5Array7is_nullCsbjTsVCnQnhv_12lance_select.exit182
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.635.sroa.0)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.737.sroa.5)
  %i.cq = trunc nuw i64 %.sroa.7.sroa.5.0209 to i1
  %i.cr = getelementptr inbounds nuw i8, ptr %i.j, i64 8 ; 2 uses
  br i1 %i.cq, label %bb.w, label %bb.t

.thread243:                                       ; preds = %bb.k
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.635.sroa.0)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.737.sroa.5)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.2, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.482.0..sroa_idx212225, i64 24, i1 false)
  %i.cs = trunc nuw i64 %.sroa.7.sroa.5.0210227 to i1
  br i1 %i.cs, label %bb.v, label %bb.s

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsbjTsVCnQnhv_12lance_select4mask14RowAddrTreeMapEEB11_.exit: ; preds = %bb.e, %bb.l, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCsbjTsVCnQnhv_12lance_select4mask14RowAddrTreeMapEBF_.exit.i, %bb.u
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o)
  ret void

bb.s:                                             ; preds = %.thread243
  %i.ct = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  store i64 %.sroa.635.sroa.5.0.copyload, ptr %i.ct, align 8
  %.sroa.4147.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  store i64 %.sroa.635.sroa.7.sroa.0.0.copyload, ptr %.sroa.4147.0..sroa_idx, align 8
  %.sroa.5148.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.j, i64 24
  store i64 %.sroa.635.sroa.7.sroa.6.0.copyload, ptr %.sroa.5148.0..sroa_idx, align 8
  store i64 0, ptr %i.j, align 8
  br label %bb.u

bb.t:                                             ; preds = %bb.r
  store ptr null, ptr %i.cr, align 8
  %.sroa.5175.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.j, i64 24
  store i64 0, ptr %.sroa.5175.0..sroa_idx, align 8
  br label %.sink.split

.sink.split:                                      ; preds = %bb.t, %bb.w
  store i64 1, ptr %i.j, align 8
  br label %bb.u

bb.u:                                             ; preds = %.sink.split, %bb.v, %bb.s
  %i.cu = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.cu, ptr noundef nonnull align 8 dereferenceable(32) %i.j, i64 32, i1 false)
  store i8 -1, ptr %0, align 8
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsbjTsVCnQnhv_12lance_select4mask14RowAddrTreeMapEEB11_.exit

bb.v:                                             ; preds = %.thread243
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3547)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !3548
  store i64 %.sroa.635.sroa.5.0.copyload, ptr %i.a, align 8, !noalias !3549
  %.sroa.7.8..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 %.sroa.635.sroa.7.sroa.0.0.copyload, ptr %.sroa.7.8..sroa_idx, align 8, !noalias !3549
  %.sroa.8194.8..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store i64 %.sroa.635.sroa.7.sroa.6.0.copyload, ptr %.sroa.8194.8..sroa_idx, align 8, !noalias !3549
  %i.cv = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  call void @_RNvXsg_NtCsbjTsVCnQnhv_12lance_select4maskNtB5_14RowAddrTreeMapNtNtNtCscI6d9CVNmLh_4core3ops5arith3Sub3sub(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.cv, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.a, ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(24) %.sroa.2)
  store i64 0, ptr %i.j, align 8, !alias.scope !3547
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !3548
  br label %bb.u

bb.w:                                             ; preds = %bb.r
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.cr, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.482.0..sroa_idx211, i64 24, i1 false)
  br label %.sink.split

bb.x:                                             ; preds = %bb.y
  resume { ptr, i32 } %lpad.thr_comm

bb.y:                                             ; preds = %bb.j, %bb.i, %bb.h
  %lpad.thr_comm = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsbjTsVCnQnhv_12lance_select4mask14RowAddrTreeMapEEB11_(ptr noalias noundef align 8 dereferenceable(32) %i.o) #38
          to label %bb.x unwind label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.cw = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #39
  unreachable
}

; Function Attrs: nonlazybind uwtable
define void @_RNvMs_NtCsbjTsVCnQnhv_12lance_select4maskNtB4_11RowAddrMask10into_arrow(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([120 x i8]) align 8 captures(none) dereferenceable(120) %0, ptr noalias noundef readonly align 8 captures(none) dereferenceable(32) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
_RNvNtCs40k4W9msRzi_5alloc5boxed14box_new_uninit.exit:
  %i.a = alloca [32 x i8], align 8                ; 7 uses
  %i.b = alloca [8 x i8], align 8                 ; 4 uses
  %i.c = alloca [8 x i8], align 8                 ; 5 uses
  %.sroa.6.sroa.4 = alloca [96 x i8], align 8     ; 4 uses
  %i.d = alloca [64 x i8], align 8                ; 11 uses
  %i.e = alloca [8 x i8], align 8                 ; 4 uses
  %i.f = alloca [24 x i8], align 8                ; 6 uses
  %i.g = alloca [32 x i8], align 8                ; 5 uses
  %i.h = alloca [8 x i8], align 8                 ; 5 uses
  %i.i = alloca [56 x i8], align 8                ; 11 uses
  %i.j = alloca [56 x i8], align 8                ; 11 uses
  %i.k = alloca [32 x i8], align 8                ; 6 uses
  %i.l = getelementptr inbounds nuw i8, ptr %.sroa.6.sroa.4, i64 16
  %i.m = alloca [48 x i8], align 8                ; 10 uses
  %i.n = alloca [24 x i8], align 8                ; 9 uses
  %i.o = alloca [24 x i8], align 8                ; 10 uses
  %.sroa.11.sroa.8 = alloca [16 x i8], align 8    ; 6 uses
  %.sroa.6.sroa.8.sroa.7 = alloca [16 x i8], align 8 ; 5 uses
  %i.p = alloca [24 x i8], align 8                ; 6 uses
  %i.q = alloca [48 x i8], align 8                ; 6 uses
  %i.r = alloca [24 x i8], align 8                ; 9 uses
  %i.s = alloca [56 x i8], align 8                ; 6 uses
  %i.t = alloca [56 x i8], align 8                ; 6 uses
  %i.u = alloca [24 x i8], align 8                ; 12 uses
  %i.v = load i64, ptr %1, align 8, !range !7, !noundef !4
  %i.w = trunc nuw i64 %i.v to i1                 ; 3 uses
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 3 uses
  %i.y = tail call noundef i64 @_RNvMs6_NtCsbjTsVCnQnhv_12lance_select4maskNtB5_14RowAddrTreeMap15serialized_size(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.x) ; 13 uses
  %. = select i1 %i.w, i64 %i.y, i64 0            ; 2 uses
  %.149 = select i1 %i.w, i64 0, i64 %i.y
  tail call void @_RNvCs9hJ03s5DiqP_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #36
  call void @llvm.lifetime.start.p0(ptr nonnull %i.u)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3658)
  tail call void @_RNvCs9hJ03s5DiqP_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #36, !noalias !3659
  %i.z = tail call noundef align 4 dereferenceable_or_null(12) ptr @_RNvCs9hJ03s5DiqP_7___rustc12___rust_alloc(i64 noundef range(i64 0, -9223372036854775808) 12, i64 noundef range(i64 1, 9) 4) #36, !noalias !3659 ; 7 uses
  %i.aa = icmp eq ptr %i.z, null
  br i1 %i.aa, label %bb.a, label %_RNvMsF_NtCs40k4W9msRzi_5alloc3vecINtB5_3VeclE8push_mutCsbjTsVCnQnhv_12lance_select.exit27.i

bb.a:                                             ; preds = %_RNvNtCs40k4W9msRzi_5alloc5boxed14box_new_uninit.exit
  tail call void @_RNvNtCs40k4W9msRzi_5alloc7raw_vec12handle_error(i64 noundef 4, i64 12) #37, !noalias !3660
  unreachable

.loopexit.split-lp:                               ; preds = %.invoke
  %lpad.loopexit.split-lp127 = landingpad { ptr, i32 }
          cleanup
  tail call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %i.z, i64 noundef 12, i64 noundef range(i64 1, -9223372036854775807) 4) #36, !noalias !3660
  br label %common.resume

bb.b:                                             ; preds = %_RNvMsF_NtCs40k4W9msRzi_5alloc3vecINtB5_3VeclE8push_mutCsbjTsVCnQnhv_12lance_select.exit27.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j), !noalias !3661
  store i64 1, ptr %i.j, align 8, !noalias !3661
  %i.ab = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  store i64 1, ptr %i.ab, align 8, !noalias !3661
  %i.ac = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  store ptr %i.z, ptr %i.ac, align 8, !noalias !3661
  %.sroa.42.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.j, i64 24
  store i64 12, ptr %.sroa.42.0..sroa_idx.i.i, align 8, !noalias !3661
  %.sroa.53.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.j, i64 32
  store ptr null, ptr %.sroa.53.0..sroa_idx.i.i, align 8, !noalias !3661
  %.sroa.53.sroa.4.0..sroa.53.0..sroa_idx.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.j, i64 40
  store i64 4, ptr %.sroa.53.sroa.4.0..sroa.53.0..sroa_idx.sroa_idx.i.i, align 8, !noalias !3661
  %.sroa.53.sroa.5.0..sroa.53.0..sroa_idx.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.j, i64 48
  store i64 12, ptr %.sroa.53.sroa.5.0..sroa.53.0..sroa_idx.sroa_idx.i.i, align 8, !noalias !3661
  tail call void @_RNvCs9hJ03s5DiqP_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #36, !noalias !3662
  %i.ad = tail call noundef align 8 dereferenceable_or_null(56) ptr @_RNvCs9hJ03s5DiqP_7___rustc12___rust_alloc(i64 noundef range(i64 0, -9223372036854775808) 56, i64 noundef range(i64 1, 9) 8) #36, !noalias !3662 ; 3 uses
  %i.ae = icmp eq ptr %i.ad, null
  br i1 %i.ae, label %bb.c, label %bb.f, !prof !6

bb.c:                                             ; preds = %bb.b
  invoke void @_RNvNtCs40k4W9msRzi_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 56) #37
          to label %.noexc.i.i unwind label %bb.d, !noalias !3661

.noexc.i.i:                                       ; preds = %bb.c
  unreachable

bb.d:                                             ; preds = %bb.c
  %i.af = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync8ArcInnerNtNtCs4YAKbnGhBJc_12arrow_buffer5bytes5BytesEECsbjTsVCnQnhv_12lance_select(ptr noalias noundef nonnull align 8 dereferenceable(56) %i.j) #38
          to label %common.resume unwind label %bb.e, !noalias !3661

bb.e:                                             ; preds = %bb.d
  %i.ag = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #39, !noalias !3661
  unreachable

.invoke:                                          ; preds = %_RNvMsF_NtCs40k4W9msRzi_5alloc3vecINtB5_3VeclE8push_mutCsbjTsVCnQnhv_12lance_select.exit27.i
  invoke void @_RNvNtCscI6d9CVNmLh_4core6option13expect_failed(ptr noalias noundef nonnull readonly captures(address, read_provenance) @9, i64 noundef 15, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @11) #37
          to label %.cont unwind label %.loopexit.split-lp, !noalias !3660

.cont:                                            ; preds = %.invoke
  unreachable

_RNvMsF_NtCs40k4W9msRzi_5alloc3vecINtB5_3VeclE8push_mutCsbjTsVCnQnhv_12lance_select.exit27.i: ; preds = %_RNvNtCs40k4W9msRzi_5alloc5boxed14box_new_uninit.exit
  store i32 0, ptr %i.z, align 4, !noalias !3660
  %i.ah = trunc i64 %. to i32
  %i.ai = getelementptr inbounds nuw i8, ptr %i.z, i64 4
  store i32 %i.ah, ptr %i.ai, align 4, !noalias !3660
  %i.aj = trunc i64 %i.y to i32
  %i.ak = getelementptr inbounds nuw i8, ptr %i.z, i64 8
  store i32 %i.aj, ptr %i.ak, align 4, !noalias !3660
  %i.al = icmp ult i64 %i.y, 2147483648
  br i1 %i.al, label %bb.b, label %.invoke, !prof !13

common.resume:                                    ; preds = %bb.bc, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VechEECsbjTsVCnQnhv_12lance_select.exit59.thread120, %bb.aq, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtNtCs4YAKbnGhBJc_12arrow_buffer6buffer9immutable6BufferECsbjTsVCnQnhv_12lance_select.exit.i, %bb.d, %.loopexit.split-lp
  %common.resume.op = phi { ptr, i32 } [ %.pn23.i, %bb.aq ], [ %i.af, %bb.d ], [ %.pn23.i, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtNtCs4YAKbnGhBJc_12arrow_buffer6buffer9immutable6BufferECsbjTsVCnQnhv_12lance_select.exit.i ], [ %lpad.loopexit.split-lp127, %.loopexit.split-lp ], [ %.pn.pn.pn92, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VechEECsbjTsVCnQnhv_12lance_select.exit59.thread120 ], [ %.pn.pn.pn92, %bb.bc ]
  resume { ptr, i32 } %common.resume.op

bb.f:                                             ; preds = %bb.b
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.ad, ptr noundef nonnull align 8 dereferenceable(56) %i.j, i64 56, i1 false), !noalias !3661
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !noalias !3661
  store ptr %i.ad, ptr %i.u, align 8, !alias.scope !3658
  %.sroa.437.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  store ptr %i.z, ptr %.sroa.437.0..sroa_idx.i, align 8, !alias.scope !3658
  %.sroa.538.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.u, i64 16
  store i64 12, ptr %.sroa.538.0..sroa_idx.i, align 8, !alias.scope !3658
  %i.am = icmp eq i64 %i.y, 0                     ; 3 uses
  br i1 %i.am, label %bb.j, label %bb.g

bb.g:                                             ; preds = %bb.f
  tail call void @_RNvCs9hJ03s5DiqP_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #36, !noalias !3663
  %i.an = tail call noundef ptr @_RNvCs9hJ03s5DiqP_7___rustc19___rust_alloc_zeroed(i64 noundef range(i64 1, -9223372036854775808) %i.y, i64 noundef range(i64 1, 9) 1) #36, !noalias !3663 ; 2 uses
  %i.ao = icmp eq ptr %i.an, null
  br i1 %i.ao, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ap = ptrtoint ptr %i.an to i64
  br label %bb.j

bb.i:                                             ; preds = %bb.g
  invoke void @_RNvNtCs40k4W9msRzi_5alloc7raw_vec12handle_error(i64 noundef 1, i64 %i.y) #37
          to label %.noexc unwind label %.thread

.noexc:                                           ; preds = %bb.i
  unreachable

.thread:                                          ; preds = %bb.i
  %i.aq = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VechEECsbjTsVCnQnhv_12lance_select.exit59.thread120

bb.j:                                             ; preds = %bb.h, %bb.f
  %.sroa.10.0.i = phi i64 [ %i.ap, %bb.h ], [ 1, %bb.f ]
  %i.ar = inttoptr i64 %.sroa.10.0.i to ptr       ; 8 uses
  tail call void @_RNvCs9hJ03s5DiqP_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #36
  %i.as = tail call noundef dereferenceable_or_null(2) ptr @_RNvCs9hJ03s5DiqP_7___rustc12___rust_alloc(i64 noundef range(i64 0, -9223372036854775808) 2, i64 noundef range(i64 1, 9) 1) #36 ; 8 uses
  %i.at = icmp eq ptr %i.as, null
  br i1 %i.at, label %bb.k, label %_RNvNtCs40k4W9msRzi_5alloc5boxed14box_new_uninit.exit50, !prof !6

bb.k:                                             ; preds = %bb.j
  invoke void @_RNvNtCs40k4W9msRzi_5alloc5alloc18handle_alloc_error(i64 noundef 1, i64 noundef 2) #37
          to label %.noexc49 unwind label %.thread93

.noexc49:                                         ; preds = %bb.k
  unreachable

.thread93:                                        ; preds = %bb.k
  %i.au = landingpad { ptr, i32 }
          cleanup
  br label %bb.ba

_RNvNtCs40k4W9msRzi_5alloc5boxed14box_new_uninit.exit50: ; preds = %bb.j
  store i8 0, ptr %i.as, align 1
  %i.av = getelementptr inbounds nuw i8, ptr %i.as, i64 1 ; 2 uses
  store i8 0, ptr %i.av, align 1
  br i1 %i.w, label %bb.l, label %bb.t

bb.l:                                             ; preds = %_RNvNtCs40k4W9msRzi_5alloc5boxed14box_new_uninit.exit50
  store i8 1, ptr %i.as, align 1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.t)
  invoke fastcc void @_RINvMs6_NtCsbjTsVCnQnhv_12lance_select4maskNtB6_14RowAddrTreeMap14serialize_intoQShEB8_(ptr noalias noundef align 8 captures(none) dereferenceable(56) %i.t, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.x, ptr noalias noundef nonnull %i.ar, i64 noundef %i.y)
          to label %bb.m unwind label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VecbEECsbjTsVCnQnhv_12lance_select.exit58.thread

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VecbEECsbjTsVCnQnhv_12lance_select.exit58.thread: ; preds = %bb.l, %bb.t
  %i.aw = landingpad { ptr, i32 }
          cleanup
  tail call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %i.as, i64 noundef 2, i64 noundef range(i64 1, -9223372036854775807) 1) #36
  br label %bb.ba

end_hunk_0
