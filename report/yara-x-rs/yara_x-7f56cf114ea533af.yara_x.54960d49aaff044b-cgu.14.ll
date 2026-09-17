Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/yara-x-rs/original/yara_x-7f56cf114ea533af.yara_x.54960d49aaff044b-cgu.14?download=true
inline.NumInlined: 3742
inline.NumDeleted: 1475
loop-unroll.NumCompletelyUnrolled: 12
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 13
begin_hunk_0_@_RNvMsX_NtNtNtCs7gfv9tzbXmh_6yara_x7modules6protos7sandboxNtB5_3Sms33generated_message_descriptor_data:bb.a
  %i.l = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %bb.i, %bb.e
  %eh.lpad-body = phi { ptr, i32 } [ %i.t, %bb.i ], [ %i.l, %bb.e ]
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtNtNtCsg2CeFYmfPbl_8protobuf7reflect5oneof9generated28GeneratedOneofDescriptorDataEECs7gfv9tzbXmh_6yara_x(ptr noalias nofree noundef align 8 dereferenceable(24) %i.b) #31
          to label %bb.c unwind label %bb.l

bb.f:                                             ; preds = %bb.d
  store ptr @_RNvYNCNvMsX_NtNtNtCs7gfv9tzbXmh_6yara_x7modules6protos7sandboxNtBa_3Sms33generated_message_descriptor_data0INtNtNtCskKLDkoKarTP_4core3ops8function6FnOnceTRBY_EE9call_onceBg_, ptr %i.j, align 8
  %.sroa.424.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  store ptr @_RNvYNCNvMsX_NtNtNtCs7gfv9tzbXmh_6yara_x7modules6protos7sandboxNtBa_3Sms33generated_message_descriptor_datas_0INtNtNtCskKLDkoKarTP_4core3ops8function6FnOnceTQBY_EE9call_onceBg_, ptr %.sroa.424.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  store ptr @_RNvYNCNvMsX_NtNtNtCs7gfv9tzbXmh_6yara_x7modules6protos7sandboxNtBa_3Sms33generated_message_descriptor_datas_0INtNtNtCskKLDkoKarTP_4core3ops8function6FnOnceTQBY_EE9call_onceBg_, ptr %.sroa.5.0..sroa_idx, align 8
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.j, i64 24
  store ptr @_RNvYNCNvMsX_NtNtNtCs7gfv9tzbXmh_6yara_x7modules6protos7sandboxNtBa_3Sms33generated_message_descriptor_datas_0INtNtNtCskKLDkoKarTP_4core3ops8function6FnOnceTQBY_EE9call_onceBg_, ptr %.sroa.6.0..sroa_idx, align 8
  store i64 0, ptr %i.d, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store ptr %i.j, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx36 = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  store ptr @130, ptr %.sroa.5.0..sroa_idx36, align 8
  %.sroa.6.0..sroa_idx37 = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  store ptr @131, ptr %.sroa.6.0..sroa_idx37, align 8
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 32
  store i64 11, ptr %.sroa.7.0..sroa_idx, align 8
  store i64 1, ptr %i.g, align 8, !alias.scope !5423, !noalias !5424
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  tail call void @_RNvCsbkii2mvYdKU_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #33
  %i.m = tail call noundef align 8 dereferenceable_or_null(32) ptr @_RNvCsbkii2mvYdKU_7___rustc12___rust_alloc(i64 noundef 32, i64 noundef 8) #33 ; 6 uses
  %i.n = icmp eq ptr %i.m, null
  br i1 %i.n, label %.invoke, label %bb.g, !prof !24

.invoke:                                          ; preds = %bb.d, %bb.f
  invoke void @_RNvNtCsexYYUdYSQU6_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 32) #35
          to label %.cont unwind label %bb.e

.cont:                                            ; preds = %.invoke
  unreachable

bb.g:                                             ; preds = %bb.f
  store ptr @_RNvYNCNvMsX_NtNtNtCs7gfv9tzbXmh_6yara_x7modules6protos7sandboxNtBa_3Sms33generated_message_descriptor_datas0_0INtNtNtCskKLDkoKarTP_4core3ops8function6FnOnceTRBY_EE9call_onceBg_, ptr %i.m, align 8
  %.sroa.426.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  store ptr @_RNvYNCNvMsX_NtNtNtCs7gfv9tzbXmh_6yara_x7modules6protos7sandboxNtBa_3Sms33generated_message_descriptor_datas1_0INtNtNtCskKLDkoKarTP_4core3ops8function6FnOnceTQBY_EE9call_onceBg_, ptr %.sroa.426.0..sroa_idx, align 8
  %.sroa.527.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.m, i64 16
  store ptr @_RNvYNCNvMsX_NtNtNtCs7gfv9tzbXmh_6yara_x7modules6protos7sandboxNtBa_3Sms33generated_message_descriptor_datas1_0INtNtNtCskKLDkoKarTP_4core3ops8function6FnOnceTQBY_EE9call_onceBg_, ptr %.sroa.527.0..sroa_idx, align 8
  %.sroa.628.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.m, i64 24
  store ptr @_RNvYNCNvMsX_NtNtNtCs7gfv9tzbXmh_6yara_x7modules6protos7sandboxNtBa_3Sms33generated_message_descriptor_datas1_0INtNtNtCskKLDkoKarTP_4core3ops8function6FnOnceTQBY_EE9call_onceBg_, ptr %.sroa.628.0..sroa_idx, align 8
  %i.o = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store ptr @132, ptr %i.o, align 8
  %i.p = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  store i64 4, ptr %i.p, align 8
  store i64 0, ptr %i.a, align 8
  %.sroa.48.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr %i.m, ptr %.sroa.48.0..sroa_idx, align 8
  %.sroa.59.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr @130, ptr %.sroa.59.0..sroa_idx, align 8
  %i.q = load i64, ptr %i.g, align 8, !alias.scope !5425, !noalias !5426, !noundef !6 ; 3 uses
  %i.r = load i64, ptr %i.c, align 8, !range !13, !alias.scope !5425, !noalias !5426, !noundef !6
  %i.s = icmp eq i64 %i.q, %i.r
  br i1 %i.s, label %bb.h, label %bb.k

bb.h:                                             ; preds = %bb.g
  invoke void @_RNvMs4_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecNtNtNtCsg2CeFYmfPbl_8protobuf7reflect3acc13FieldAccessorE8grow_oneBS_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.c)
          to label %bb.k unwind label %bb.i, !noalias !5426

bb.i:                                             ; preds = %bb.h
  %i.t = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsg2CeFYmfPbl_8protobuf7reflect3acc13FieldAccessorECs7gfv9tzbXmh_6yara_x(ptr noalias nofree noundef nonnull readonly align 8 dereferenceable(40) %i.a) #31
          to label %.body unwind label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.u = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #32, !noalias !5426
  unreachable

bb.k:                                             ; preds = %bb.h, %bb.g
  %i.v = load ptr, ptr %i.f, align 8, !alias.scope !5425, !noalias !5426, !nonnull !6, !noundef !6
  %i.w = getelementptr inbounds nuw [40 x i8], ptr %i.v, i64 %i.q
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.w, ptr noundef nonnull readonly align 8 dereferenceable(40) %i.a, i64 40, i1 false)
  %i.x = add i64 %i.q, 1
  store i64 %i.x, ptr %i.g, align 8, !alias.scope !5425, !noalias !5426
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.c, i64 24, i1 false)
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.y, ptr noundef nonnull align 8 dereferenceable(24) %i.b, i64 24, i1 false)
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 48
  store ptr @134, ptr %i.z, align 8
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 56
  store i64 3, ptr %i.aa, align 8
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 64
  store ptr inttoptr (i64 1 to ptr), ptr %i.ab, align 8
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 72
  store ptr @133, ptr %i.ac, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  ret void

bb.l:                                             ; preds = %.body, %bb.c
  %i.ad = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #32
  unreachable

bb.m:                                             ; preds = %bb.c
  resume { ptr, i32 } %eh.lpad-body
}

; Function Attrs: nonlazybind uwtable
define hidden noundef range(i8 36, 49) i8 @_RNvMs_NtCsg2CeFYmfPbl_8protobuf15enum_or_unknownINtB4_13EnumOrUnknownNtNtNtNtCs7gfv9tzbXmh_6yara_x7modules6protos5macho10DeviceTypeE6unwrapB1d_(ptr noalias nofree noundef readonly align 4 captures(none) dereferenceable(4) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [4 x i8], align 4                 ; 3 uses
  %i.b = load i32, ptr %0, align 4, !noundef !6   ; 2 uses
  %switch.tableidx = add i32 %i.b, -36            ; 3 uses
  %i.c = icmp ult i32 %switch.tableidx, 13
  %switch.maskindex = trunc i32 %switch.tableidx to i16
  %switch.shifted = lshr i16 6147, %switch.maskindex
  %switch.lobit = trunc i16 %switch.shifted to i1
  %or.cond = select i1 %i.c, i1 %switch.lobit, i1 false
  br i1 %or.cond, label %switch.lookup, label %.critedge

.critedge:                                        ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i32 %i.b, ptr %i.a, align 4
  call void @_RNvNtCskKLDkoKarTP_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @9, i64 noundef 43, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @10, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @136) #36
  unreachable

switch.lookup:                                    ; preds = %bb.a
  %i.d = zext nneg i32 %switch.tableidx to i64
  %switch.gep = getelementptr inbounds nuw i8, ptr @switch.table._RNvMs_NtCsg2CeFYmfPbl_8protobuf15enum_or_unknownINtB4_13EnumOrUnknownNtNtNtNtCs7gfv9tzbXmh_6yara_x7modules6protos5macho10DeviceTypeE6unwrapB1d_, i64 %i.d
  %switch.load = load i8, ptr %switch.gep, align 1
  ret i8 %switch.load
}

; Function Attrs: nonlazybind uwtable
define { ptr, i64 } @_RNvMs_NtNtCs7gfv9tzbXmh_6yara_x5teddy7genericNtB4_7Pattern11low_nybbles(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(16) %0, i64 noundef %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5433)
  %.not.i.i = icmp slt i64 %1, 0
  br i1 %.not.i.i, label %bb.e, label %bb.b, !prof !20

bb.b:                                             ; preds = %bb.a
  %i.b = icmp eq i64 %1, 0                        ; 2 uses
  br i1 %i.b, label %_RINvXs1_NtNtCsexYYUdYSQU6_5alloc3vec14spec_from_elemhNtB6_12SpecFromElem9from_elemNtNtBa_5alloc6GlobalECs7gfv9tzbXmh_6yara_x.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call void @_RNvCsbkii2mvYdKU_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #33, !noalias !5434
  %i.c = tail call noundef ptr @_RNvCsbkii2mvYdKU_7___rustc19___rust_alloc_zeroed(i64 noundef range(i64 1, -9223372036854775808) %1, i64 noundef range(i64 1, -9223372036854775807) 1) #33, !noalias !5434 ; 2 uses
  %i.d = icmp eq ptr %i.c, null
  br i1 %i.d, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.e = ptrtoint ptr %i.c to i64
  br label %_RINvXs1_NtNtCsexYYUdYSQU6_5alloc3vec14spec_from_elemhNtB6_12SpecFromElem9from_elemNtNtBa_5alloc6GlobalECs7gfv9tzbXmh_6yara_x.exit

bb.e:                                             ; preds = %bb.c, %bb.a
  %.sroa.4.0.ph.i = phi i64 [ 1, %bb.c ], [ 0, %bb.a ]
  tail call void @_RNvNtCsexYYUdYSQU6_5alloc7raw_vec12handle_error(i64 noundef %.sroa.4.0.ph.i, i64 %1) #35, !noalias !5433
  unreachable

_RINvXs1_NtNtCsexYYUdYSQU6_5alloc3vec14spec_from_elemhNtB6_12SpecFromElem9from_elemNtNtBa_5alloc6GlobalECs7gfv9tzbXmh_6yara_x.exit: ; preds = %bb.b, %bb.d
  %.sroa.10.0.i = phi i64 [ %i.e, %bb.d ], [ 1, %bb.b ]
  %i.f = inttoptr i64 %.sroa.10.0.i to ptr
  store i64 %1, ptr %i.a, align 8, !alias.scope !5433
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr %i.f, ptr %i.g, align 8, !alias.scope !5433
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store i64 %1, ptr %i.h, align 8, !alias.scope !5433
  %i.i = call { ptr, i64 } @_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VechE16into_boxed_sliceCs7gfv9tzbXmh_6yara_x(ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.a) ; 3 uses
  %i.j = extractvalue { ptr, i64 } %i.i, 0        ; 8 uses
  %i.k = extractvalue { ptr, i64 } %i.i, 1        ; 6 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.l = load ptr, ptr %0, align 8, !nonnull !6, !noundef !6 ; 5 uses
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.n = load i64, ptr %i.m, align 8, !noundef !6 ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.l, i64 %i.n
  br i1 %i.b, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %_RINvXs1_NtNtCsexYYUdYSQU6_5alloc3vec14spec_from_elemhNtB6_12SpecFromElem9from_elemNtNtBa_5alloc6GlobalECs7gfv9tzbXmh_6yara_x.exit
  %i.p = ptrtoaddr ptr %i.l to i64
  %i.q = ptrtoaddr ptr %i.j to i64
  %i.r = add nsw i64 %1, -1
  %i.s = call i64 @llvm.umin.i64(i64 %i.k, i64 %i.r)
  %i.t = freeze i64 %i.s
  %i.u = call i64 @llvm.umin.i64(i64 %i.t, i64 %i.n)
  %i.v = add i64 %i.u, 1                          ; 3 uses
  %min.iters.check = icmp ult i64 %i.v, 33
  %i.w = sub i64 %i.p, %i.q
  %diff.check = icmp ugt i64 %i.w, -32
  %or.cond = select i1 %min.iters.check, i1 true, i1 %diff.check
  br i1 %or.cond, label %.lr.ph.preheader31, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.preheader
  %i.x = and i64 %i.v, 31                         ; 2 uses
  %i.y = icmp eq i64 %i.x, 0
  %i.z = select i1 %i.y, i64 32, i64 %i.x
  %n.vec = sub i64 %i.v, %i.z                     ; 4 uses
  %2 = getelementptr i8, ptr %i.l, i64 %n.vec
  %i.aa = sub i64 %1, %n.vec
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.j) ]
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %next.gep = getelementptr i8, ptr %i.l, i64 %index ; 2 uses
  %i.ab = getelementptr i8, ptr %next.gep, i64 16
  %wide.load = load <16 x i8>, ptr %next.gep, align 1
  %wide.load28 = load <16 x i8>, ptr %i.ab, align 1
  %i.ac = and <16 x i8> %wide.load, splat (i8 15)
  %i.ad = and <16 x i8> %wide.load28, splat (i8 15)
  %i.ae = getelementptr inbounds nuw i8, ptr %i.j, i64 %index ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 16
  store <16 x i8> %i.ac, ptr %i.ae, align 1
  store <16 x i8> %i.ad, ptr %i.af, align 1
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.ag = icmp eq i64 %index.next, %n.vec
  br i1 %i.ag, label %.lr.ph.preheader31, label %vector.body, !llvm.loop !5431

.lr.ph.preheader31:                               ; preds = %vector.body, %.lr.ph.preheader
  %.sroa.012.022.ph = phi ptr [ %i.l, %.lr.ph.preheader ], [ %2, %vector.body ]
  %.sroa.7.021.ph = phi i64 [ %1, %.lr.ph.preheader ], [ %i.aa, %vector.body ]
  %.sroa.10.020.ph = phi i64 [ 0, %.lr.ph.preheader ], [ %n.vec, %vector.body ]
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader31, %bb.h
  %.sroa.012.022 = phi ptr [ %i.am, %bb.h ], [ %.sroa.012.022.ph, %.lr.ph.preheader31 ] ; 3 uses
  %.sroa.7.021 = phi i64 [ %i.ah, %bb.h ], [ %.sroa.7.021.ph, %.lr.ph.preheader31 ]
  %.sroa.10.020 = phi i64 [ %i.al, %bb.h ], [ %.sroa.10.020.ph, %.lr.ph.preheader31 ] ; 3 uses
  %i.ah = add nsw i64 %.sroa.7.021, -1            ; 2 uses
  %i.ai = icmp eq ptr %.sroa.012.022, %i.o
  br i1 %i.ai, label %._crit_edge, label %bb.g

bb.f:                                             ; preds = %bb.i
  %i.aj = landingpad { ptr, i32 }
          cleanup
  %i.ak = icmp eq i64 %i.k, 0
  br i1 %i.ak, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc5boxed3BoxShEECs7gfv9tzbXmh_6yara_x.exit, label %_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator10deallocate.exit.i.i

_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator10deallocate.exit.i.i: ; preds = %bb.f
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.j) ]
  call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %i.j, i64 noundef %i.k, i64 noundef 1) #33
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc5boxed3BoxShEECs7gfv9tzbXmh_6yara_x.exit

bb.g:                                             ; preds = %.lr.ph
  %exitcond.not = icmp eq i64 %.sroa.10.020, %i.k
  br i1 %exitcond.not, label %bb.i, label %bb.h

._crit_edge:                                      ; preds = %.lr.ph, %bb.h, %_RINvXs1_NtNtCsexYYUdYSQU6_5alloc3vec14spec_from_elemhNtB6_12SpecFromElem9from_elemNtNtBa_5alloc6GlobalECs7gfv9tzbXmh_6yara_x.exit
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.j) ]
  ret { ptr, i64 } %i.i

bb.h:                                             ; preds = %bb.g
  %i.al = add nuw i64 %.sroa.10.020, 1
  %i.am = getelementptr inbounds nuw i8, ptr %.sroa.012.022, i64 1
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.j) ]
  %i.an = load i8, ptr %.sroa.012.022, align 1, !noundef !6
  %i.ao = and i8 %i.an, 15
  %i.ap = getelementptr inbounds nuw i8, ptr %i.j, i64 %.sroa.10.020
  store i8 %i.ao, ptr %i.ap, align 1
  %i.aq = icmp eq i64 %i.ah, 0
  br i1 %i.aq, label %._crit_edge, label %.lr.ph, !llvm.loop !5432

bb.i:                                             ; preds = %bb.g
  invoke void @_RNvNtCskKLDkoKarTP_4core9panicking18panic_bounds_check(i64 noundef %i.k, i64 noundef %i.k, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @138) #35
          to label %bb.j unwind label %bb.f

bb.j:                                             ; preds = %bb.i
  unreachable

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc5boxed3BoxShEECs7gfv9tzbXmh_6yara_x.exit: ; preds = %_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator10deallocate.exit.i.i, %bb.f
  resume { ptr, i32 } %i.aj
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RNvMs_NtNtNtCs7gfv9tzbXmh_6yara_x7modules3elf6parserNtB4_9ElfParser10parse_name(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef range(i64 0, -9223372036854775808) %2, ptr noalias nofree noundef readonly align 8 captures(address_is_null) dereferenceable_or_null(56) %3, i32 noundef %4) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [40 x i8], align 8                ; 7 uses
  %i.b = alloca [40 x i8], align 8                ; 7 uses
  %i.c = alloca [24 x i8], align 8                ; 10 uses
  %i.d = alloca [8 x i8], align 8                 ; 6 uses
  %.not = icmp eq ptr %3, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.f = load i64, ptr %i.e, align 8, !noundef !6 ; 3 uses
  %i.g = icmp ult i64 %2, %i.f
  br i1 %i.g, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b, %bb.a
  store i64 -1, ptr %0, align 8
  br label %bb.t

bb.d:                                             ; preds = %bb.b
  %i.h = sub nuw nsw i64 %2, %i.f
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 %i.f
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  %i.j = tail call noundef i64 @_RINvNtCsgkljs906P5b_3nom5bytes4takemRShINtNtB4_5error5ErrorBy_EECs7gfv9tzbXmh_6yara_x(i32 noundef %4)
  store i64 %i.j, ptr %i.d, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !5453
  call void @_RINvXsf_NtCsgkljs906P5b_3nom8internalNCINvNtNtB8_5bytes8complete4takemRShINtNtB8_5error5ErrorB16_EE0INtB6_6ParserB16_E7processINtB6_7OutputMNtB6_4EmitB2e_NtB6_9StreamingEECs7gfv9tzbXmh_6yara_x(ptr noalias nofree noundef nonnull sret([40 x i8]) align 8 captures(none) dereferenceable(40) %i.b, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.d, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.i, i64 noundef range(i64 0, -9223372036854775808) %i.h), !noalias !5454
  %i.k = load i64, ptr %i.b, align 8, !range !17, !noalias !5453, !noundef !6
  %i.l = trunc nuw i64 %i.k to i1
  br i1 %i.l, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !5453
  br label %bb.h

bb.f:                                             ; preds = %bb.d
  %i.m = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %.sroa.044.0.copyload.i = load ptr, ptr %i.m, align 8, !noalias !5453, !nonnull !6, !noundef !6
  %.sroa.445.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %.sroa.445.0.copyload.i = load i64, ptr %.sroa.445.0..sroa_idx.i, align 8, !noalias !5453
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !5453
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !5453
  %i.n = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  call void @_RINvXsf_NtCsgkljs906P5b_3nom8internalNCINvNtNtB8_5bytes8complete9take_tillNCNvMs_NtNtNtCs7gfv9tzbXmh_6yara_x7modules3elf6parserNtB1h_9ElfParser10parse_name0RShINtNtB8_5error5ErrorB2u_EE0INtB6_6ParserB2u_E7processINtB6_7OutputMNtB6_4EmitB3C_NtB6_9StreamingEEB1n_(ptr noalias nofree noundef nonnull sret([40 x i8]) align 8 captures(none) dereferenceable(40) %i.a, ptr noalias nofree noundef nonnull %i.n, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.sroa.044.0.copyload.i, i64 noundef %.sroa.445.0.copyload.i), !noalias !5454
  %i.o = load i64, ptr %i.a, align 8, !range !17, !noalias !5453, !noundef !6
  %i.p = trunc nuw i64 %i.o to i1
  br i1 %i.p, label %bb.g, label %bb.i

bb.g:                                             ; preds = %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !5453
  br label %bb.h

bb.h:                                             ; preds = %bb.e, %bb.g
  store i64 -1, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  br label %bb.t

bb.i:                                             ; preds = %bb.f
  %.sroa.562.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  %.sroa.562.0.copyload.i = load ptr, ptr %.sroa.562.0..sroa_idx.i, align 8, !noalias !5453, !nonnull !6, !noundef !6
  %.sroa.663.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  %.sroa.663.0.copyload.i = load i64, ptr %.sroa.663.0..sroa_idx.i, align 8, !noalias !5453
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !5453
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @_RNvMNtCsexYYUdYSQU6_5alloc6stringNtB2_6String15from_utf8_lossy(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.c, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.sroa.562.0.copyload.i, i64 noundef %.sroa.663.0.copyload.i)
  %i.q = getelementptr inbounds nuw i8, ptr %i.c, i64 8 ; 3 uses
  %i.r = load ptr, ptr %i.q, align 8, !nonnull !6
  %i.s = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %i.t = load i64, ptr %i.s, align 8              ; 7 uses
  %.not.i = icmp slt i64 %i.t, 0
  br i1 %.not.i, label %bb.m, label %bb.j, !prof !20

bb.j:                                             ; preds = %bb.i
  %i.u = icmp eq i64 %i.t, 0
  br i1 %i.u, label %_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs7gfv9tzbXmh_6yara_x.exit.thread52, label %bb.k

bb.k:                                             ; preds = %bb.j
  call void @_RNvCsbkii2mvYdKU_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #33, !noalias !5455
  %i.v = call noundef ptr @_RNvCsbkii2mvYdKU_7___rustc12___rust_alloc(i64 noundef range(i64 0, -9223372036854775808) %i.t, i64 noundef range(i64 1, -9223372036854775807) 1) #33, !noalias !5455 ; 3 uses
  %i.w = icmp eq ptr %i.v, null
  br i1 %i.w, label %bb.m, label %bb.s

bb.l:                                             ; preds = %bb.m
  %i.x = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc6borrow3CoweEECs7gfv9tzbXmh_6yara_x(ptr noalias nofree noundef align 8 dereferenceable(24) %i.c) #31
          to label %common.resume unwind label %bb.v

bb.m:                                             ; preds = %bb.i, %bb.k
  %.sroa.4.0.ph = phi i64 [ 1, %bb.k ], [ 0, %bb.i ]
  invoke void @_RNvNtCsexYYUdYSQU6_5alloc7raw_vec12handle_error(i64 noundef %.sroa.4.0.ph, i64 %i.t) #35
          to label %bb.u unwind label %bb.l

_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs7gfv9tzbXmh_6yara_x.exit.thread52: ; preds = %bb.j, %bb.s
  %i.y = phi ptr [ %i.v, %bb.s ], [ inttoptr (i64 1 to ptr), %bb.j ]
  store i64 %i.t, ptr %0, align 8
  %.sroa.431.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.y, ptr %.sroa.431.0..sroa_idx, align 8
  %.sroa.532.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.t, ptr %.sroa.532.0..sroa_idx, align 8
  %i.z = load i64, ptr %i.c, align 8, !range !8, !alias.scope !5456, !noundef !6
  %i.aa = icmp eq i64 %i.z, -1
  br i1 %i.aa, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc6borrow3CoweEECs7gfv9tzbXmh_6yara_x.exit, label %bb.n

bb.n:                                             ; preds = %_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs7gfv9tzbXmh_6yara_x.exit.thread52
  invoke void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs7gfv9tzbXmh_6yara_x(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.c)
          to label %bb.q unwind label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.ab = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %.val2.i.i.i = load i64, ptr %i.c, align 8, !alias.scope !5457 ; 2 uses
  %i.ac = icmp eq i64 %.val2.i.i.i, 0
  br i1 %i.ac, label %common.resume, label %bb.p

bb.p:                                             ; preds = %bb.o
  %.val3.i.i.i = load ptr, ptr %i.q, align 8, !alias.scope !5458, !nonnull !6, !noundef !6
  call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %.val3.i.i.i, i64 noundef %.val2.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #33, !noalias !5459
  br label %common.resume

bb.q:                                             ; preds = %bb.n
  %.val.i.i.i = load i64, ptr %i.c, align 8, !alias.scope !5457 ; 2 uses
  %i.ad = icmp eq i64 %.val.i.i.i, 0
  br i1 %i.ad, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc6borrow3CoweEECs7gfv9tzbXmh_6yara_x.exit, label %bb.r

bb.r:                                             ; preds = %bb.q
  %.val1.i.i.i = load ptr, ptr %i.q, align 8, !alias.scope !5458, !nonnull !6, !noundef !6
  call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i.i, i64 noundef %.val.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #33, !noalias !5460
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc6borrow3CoweEECs7gfv9tzbXmh_6yara_x.exit

common.resume:                                    ; preds = %bb.l, %bb.o, %bb.p
  %common.resume.op = phi { ptr, i32 } [ %i.ab, %bb.o ], [ %i.ab, %bb.p ], [ %i.x, %bb.l ]
  resume { ptr, i32 } %common.resume.op

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc6borrow3CoweEECs7gfv9tzbXmh_6yara_x.exit: ; preds = %_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs7gfv9tzbXmh_6yara_x.exit.thread52, %bb.q, %bb.r
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  br label %bb.t

bb.s:                                             ; preds = %bb.k
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.v, ptr nonnull align 1 %i.r, i64 %i.t, i1 false)
  br label %_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs7gfv9tzbXmh_6yara_x.exit.thread52

bb.t:                                             ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc6borrow3CoweEECs7gfv9tzbXmh_6yara_x.exit, %bb.h, %bb.c
  ret void

bb.u:                                             ; preds = %bb.m
  unreachable
end_hunk_0
