inline.NumInlined: 585
inline.NumDeleted: 338
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 5
loop-unroll.NumUnrolled: 6
begin_hunk_0_@_RNvNtNtCscxmO3cvmuC8_9uu_base3211base_common11fast_encode18fast_encode_buffer:bb.a
  store i64 0, ptr %i.c, align 8
  %i.aa = getelementptr inbounds nuw i8, ptr %i.c, i64 8 ; 3 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.z, i8 0, i64 16, i1 false)
  store ptr inttoptr (i64 1 to ptr), ptr %i.aa, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.ab = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store i64 0, ptr %i.b, align 8
  %i.ac = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 3 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ab, i8 0, i64 16, i1 false)
  store ptr inttoptr (i64 1 to ptr), ptr %i.ac, align 8
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.ae = load ptr, ptr %i.ad, align 8, !nonnull !4, !noundef !4 ; 2 uses
  %i.af = add i64 %i.l, -1                        ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %0, ptr %i.a, align 8
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr %i.d, ptr %.sroa.2.0..sroa_idx, align 8
  %.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr %i.f, ptr %.sroa.3.0..sroa_idx, align 8
  %.sroa.413.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store ptr %i.c, ptr %.sroa.413.0..sroa_idx, align 8
  %i.ag = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  store ptr %i.f, ptr %i.ag, align 8
  %.sroa.428.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  store ptr %3, ptr %.sroa.428.0..sroa_idx, align 8
  %.sroa.529.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 48
  store ptr %4, ptr %.sroa.529.0..sroa_idx, align 8
  %.sroa.630.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 56
  store ptr %i.b, ptr %.sroa.630.0..sroa_idx, align 8
  %.sroa.731.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 64
  store ptr %i.e, ptr %.sroa.731.0..sroa_idx, align 8
  %.sroa.832.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 72
  store ptr %1, ptr %.sroa.832.0..sroa_idx, align 8
  %.sroa.933.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 80
  store ptr %2, ptr %.sroa.933.0..sroa_idx, align 8
  %.sroa.1034.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 88
  store ptr %i.g, ptr %.sroa.1034.0..sroa_idx, align 8
  %i.ah = icmp samesign eq i64 %i.x, 0
  br i1 %i.ah, label %_RINvXs5_NtNtNtCs6JMX4GRUq9U_4core4iter8adapters7step_byINtB6_6StepByINtNtB8_9enumerate9EnumerateINtNtNtBc_5slice4iter4IterhEEEINtB6_10StepByImplB14_E9spec_folduNCINvNtB8_10filter_map15filter_map_foldTjRhERShuNCNvNtNtCscxmO3cvmuC8_9uu_base3211base_common11fast_encode18fast_encode_buffer0NCINvNvNtNtNtBa_6traits8iterator8Iterator8for_each4callB3g_NCB3m_s_0E0E0EB3s_.exit, label %bb.f

_RINvXs5_NtNtNtCs6JMX4GRUq9U_4core4iter8adapters7step_byINtB6_6StepByINtNtB8_9enumerate9EnumerateINtNtNtBc_5slice4iter4IterhEEEINtB6_10StepByImplB14_E9spec_folduNCINvNtB8_10filter_map15filter_map_foldTjRhERShuNCNvNtNtCscxmO3cvmuC8_9uu_base3211base_common11fast_encode18fast_encode_buffer0NCINvNvNtNtNtBa_6traits8iterator8Iterator8for_each4callB3g_NCB3m_s_0E0E0EB3s_.exit: ; preds = %.lr.ph.i.i, %bb.f, %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.ai = call fastcc { ptr, i64 } @_RNvMs4_NtNtCs7tKScEop1B6_5alloc11collections9vec_dequeINtB5_8VecDequehE15make_contiguousCscxmO3cvmuC8_9uu_base32(ptr noalias nofree noundef align 8 dereferenceable(32) %i.c) #23 ; 2 uses
  %i.aj = extractvalue { ptr, i64 } %i.ai, 0
  %i.ak = extractvalue { ptr, i64 } %i.ai, 1
  %i.al = getelementptr inbounds nuw i8, ptr %4, i64 40
  %i.am = load ptr, ptr %i.al, align 8, !invariant.load !4, !nonnull !4
  %i.an = call { ptr, ptr } %i.am(ptr noundef nonnull %3, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.aj, i64 noundef %i.ak, ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.b) #25 ; 2 uses
  %i.ao = extractvalue { ptr, ptr } %i.an, 0      ; 2 uses
  %.not35 = icmp eq ptr %i.ao, null
  br i1 %.not35, label %bb.k, label %bb.j

bb.h:                                             ; preds = %bb.d
  store i64 -1, ptr %i.e, align 8
  br label %bb.g

bb.i:                                             ; preds = %bb.d
  store i64 0, ptr %i.e, align 8
  %.sroa.01.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  store ptr inttoptr (i64 1 to ptr), ptr %.sroa.01.sroa.4.0..sroa_idx, align 8
  %.sroa.01.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  store i64 0, ptr %.sroa.01.sroa.5.0..sroa_idx, align 8
  %.sroa.42.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 24
  store i64 %6, ptr %.sroa.42.0..sroa_idx, align 8
  br label %bb.g

bb.j:                                             ; preds = %_RINvXs5_NtNtNtCs6JMX4GRUq9U_4core4iter8adapters7step_byINtB6_6StepByINtNtB8_9enumerate9EnumerateINtNtNtBc_5slice4iter4IterhEEEINtB6_10StepByImplB14_E9spec_folduNCINvNtB8_10filter_map15filter_map_foldTjRhERShuNCNvNtNtCscxmO3cvmuC8_9uu_base3211base_common11fast_encode18fast_encode_buffer0NCINvNvNtNtNtBa_6traits8iterator8Iterator8for_each4callB3g_NCB3m_s_0E0E0EB3s_.exit
  %i.ap = extractvalue { ptr, ptr } %i.an, 1      ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.ap) ]
  br label %bb.q

bb.k:                                             ; preds = %_RINvXs5_NtNtNtCs6JMX4GRUq9U_4core4iter8adapters7step_byINtB6_6StepByINtNtB8_9enumerate9EnumerateINtNtNtBc_5slice4iter4IterhEEEINtB6_10StepByImplB14_E9spec_folduNCINvNtB8_10filter_map15filter_map_foldTjRhERShuNCNvNtNtCscxmO3cvmuC8_9uu_base3211base_common11fast_encode18fast_encode_buffer0NCINvNvNtNtNtBa_6traits8iterator8Iterator8for_each4callB3g_NCB3m_s_0E0E0EB3s_.exit
  %i.aq = load i64, ptr %i.h, align 8
  %i.ar = icmp eq i64 %i.aq, 0
  %.sroa.026.0 = select i1 %i.m, i1 %i.ar, i1 false
  %i.as = getelementptr inbounds nuw i8, ptr %2, i64 56
  %.val40 = load ptr, ptr %i.as, align 8
  %i.at = call fastcc noundef ptr @_RNvNtNtCscxmO3cvmuC8_9uu_base3211base_common11fast_encode15write_to_output(ptr noalias nofree noundef align 8 dereferenceable(32) %i.e, ptr noalias nofree noundef align 8 dereferenceable(32) %i.b, ptr noundef nonnull %1, ptr %.val40, i1 noundef zeroext true, i1 noundef zeroext %.sroa.026.0) #23 ; 2 uses
  %.not36 = icmp eq ptr %i.at, null
  br i1 %.not36, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.au = call { ptr, ptr } @_RNvXsf_NtNtCsh036I4OHgIr_6uucore4mods5errorINtNtCs7tKScEop1B6_5alloc5boxed3BoxDNtB5_6UErrorEL_EINtNtCs6JMX4GRUq9U_4core7convert4FromNtNtNtB1A_2io5error5ErrorE4from(ptr noundef nonnull %i.at) #23 ; 2 uses
  %i.av = extractvalue { ptr, ptr } %i.au, 0
  %i.aw = extractvalue { ptr, ptr } %i.au, 1
  br label %bb.q

bb.m:                                             ; preds = %bb.k
  %.val47 = load i64, ptr %i.b, align 8, !range !40, !noundef !4 ; 2 uses
  %i.ax = icmp eq i64 %.val47, 0
  br i1 %i.ax, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtNtCs7tKScEop1B6_5alloc11collections9vec_deque8VecDequehEECscxmO3cvmuC8_9uu_base32.exit, label %bb.n

bb.n:                                             ; preds = %bb.m
  %.val48 = load ptr, ptr %i.ac, align 8, !nonnull !4, !noundef !4
  call void @_RNvCsjSVV5GABoor_7___rustc14___rust_dealloc(ptr noundef nonnull %.val48, i64 noundef %.val47, i64 noundef range(i64 1, -9223372036854775807) 1) #23
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtNtCs7tKScEop1B6_5alloc11collections9vec_deque8VecDequehEECscxmO3cvmuC8_9uu_base32.exit

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtNtCs7tKScEop1B6_5alloc11collections9vec_deque8VecDequehEECscxmO3cvmuC8_9uu_base32.exit: ; preds = %bb.m, %bb.n
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %.val45 = load i64, ptr %i.c, align 8, !range !40, !noundef !4 ; 2 uses
  %i.ay = icmp eq i64 %.val45, 0
  br i1 %i.ay, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtNtCs7tKScEop1B6_5alloc11collections9vec_deque8VecDequehEECscxmO3cvmuC8_9uu_base32.exit53, label %bb.o

bb.o:                                             ; preds = %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtNtCs7tKScEop1B6_5alloc11collections9vec_deque8VecDequehEECscxmO3cvmuC8_9uu_base32.exit
  %.val46 = load ptr, ptr %i.aa, align 8, !nonnull !4, !noundef !4
  call void @_RNvCsjSVV5GABoor_7___rustc14___rust_dealloc(ptr noundef nonnull %.val46, i64 noundef %.val45, i64 noundef range(i64 1, -9223372036854775807) 1) #23
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtNtCs7tKScEop1B6_5alloc11collections9vec_deque8VecDequehEECscxmO3cvmuC8_9uu_base32.exit53

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtNtCs7tKScEop1B6_5alloc11collections9vec_deque8VecDequehEECscxmO3cvmuC8_9uu_base32.exit53: ; preds = %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtNtCs7tKScEop1B6_5alloc11collections9vec_deque8VecDequehEECscxmO3cvmuC8_9uu_base32.exit, %bb.o
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  %.val51 = load i64, ptr %i.e, align 8, !range !126, !noundef !4 ; 2 uses
  %i.az = icmp sgt i64 %.val51, 0
  br i1 %i.az, label %bb.p, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCscxmO3cvmuC8_9uu_base3211base_common11fast_encode12LineWrappingEEB13_.exit

bb.p:                                             ; preds = %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtNtCs7tKScEop1B6_5alloc11collections9vec_deque8VecDequehEECscxmO3cvmuC8_9uu_base32.exit53
  %i.ba = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %.val52 = load ptr, ptr %i.ba, align 8, !nonnull !4, !noundef !4
  call void @_RNvCsjSVV5GABoor_7___rustc14___rust_dealloc(ptr noundef nonnull %.val52, i64 noundef %.val51, i64 noundef range(i64 1, -9223372036854775807) 1) #23
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCscxmO3cvmuC8_9uu_base3211base_common11fast_encode12LineWrappingEEB13_.exit

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCscxmO3cvmuC8_9uu_base3211base_common11fast_encode12LineWrappingEEB13_.exit: ; preds = %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtNtCs7tKScEop1B6_5alloc11collections9vec_deque8VecDequehEECscxmO3cvmuC8_9uu_base32.exit53, %bb.p
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  %.val38 = load i64, ptr %0, align 8, !range !40, !noundef !4 ; 2 uses
  %i.bb = icmp eq i64 %.val38, 0
  br i1 %i.bb, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtCs7tKScEop1B6_5alloc3vec3VechEECscxmO3cvmuC8_9uu_base32.exit, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtCs7tKScEop1B6_5alloc3vec3VechEECscxmO3cvmuC8_9uu_base32.exit.sink.split

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtCs7tKScEop1B6_5alloc3vec3VechEECscxmO3cvmuC8_9uu_base32.exit.sink.split: ; preds = %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCscxmO3cvmuC8_9uu_base3211base_common11fast_encode12LineWrappingEEB13_.exit, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCscxmO3cvmuC8_9uu_base3211base_common11fast_encode12LineWrappingEEB13_.exit58
  %.val.sink = phi i64 [ %.val, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCscxmO3cvmuC8_9uu_base3211base_common11fast_encode12LineWrappingEEB13_.exit58 ], [ %.val38, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCscxmO3cvmuC8_9uu_base3211base_common11fast_encode12LineWrappingEEB13_.exit ]
  %.sroa.4.0.ph = phi ptr [ %.sroa.4.1, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCscxmO3cvmuC8_9uu_base3211base_common11fast_encode12LineWrappingEEB13_.exit58 ], [ undef, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCscxmO3cvmuC8_9uu_base3211base_common11fast_encode12LineWrappingEEB13_.exit ]
  %.sroa.0.0.ph = phi ptr [ %.sroa.0.1, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCscxmO3cvmuC8_9uu_base3211base_common11fast_encode12LineWrappingEEB13_.exit58 ], [ null, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCscxmO3cvmuC8_9uu_base3211base_common11fast_encode12LineWrappingEEB13_.exit ]
  %.val37 = load ptr, ptr %i.ad, align 8, !nonnull !4, !noundef !4
  call void @_RNvCsjSVV5GABoor_7___rustc14___rust_dealloc(ptr noundef nonnull %.val37, i64 noundef %.val.sink, i64 noundef range(i64 1, -9223372036854775807) 1) #23
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtCs7tKScEop1B6_5alloc3vec3VechEECscxmO3cvmuC8_9uu_base32.exit

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtCs7tKScEop1B6_5alloc3vec3VechEECscxmO3cvmuC8_9uu_base32.exit: ; preds = %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtCs7tKScEop1B6_5alloc3vec3VechEECscxmO3cvmuC8_9uu_base32.exit.sink.split, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCscxmO3cvmuC8_9uu_base3211base_common11fast_encode12LineWrappingEEB13_.exit58, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCscxmO3cvmuC8_9uu_base3211base_common11fast_encode12LineWrappingEEB13_.exit
  %.sroa.4.0 = phi ptr [ %.sroa.4.1, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCscxmO3cvmuC8_9uu_base3211base_common11fast_encode12LineWrappingEEB13_.exit58 ], [ undef, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCscxmO3cvmuC8_9uu_base3211base_common11fast_encode12LineWrappingEEB13_.exit ], [ %.sroa.4.0.ph, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtCs7tKScEop1B6_5alloc3vec3VechEECscxmO3cvmuC8_9uu_base32.exit.sink.split ]
  %.sroa.0.0 = phi ptr [ %.sroa.0.1, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCscxmO3cvmuC8_9uu_base3211base_common11fast_encode12LineWrappingEEB13_.exit58 ], [ null, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCscxmO3cvmuC8_9uu_base3211base_common11fast_encode12LineWrappingEEB13_.exit ], [ %.sroa.0.0.ph, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtCs7tKScEop1B6_5alloc3vec3VechEECscxmO3cvmuC8_9uu_base32.exit.sink.split ]
  %i.bc = insertvalue { ptr, ptr } poison, ptr %.sroa.0.0, 0
  %i.bd = insertvalue { ptr, ptr } %i.bc, ptr %.sroa.4.0, 1
  ret { ptr, ptr } %i.bd

bb.q:                                             ; preds = %bb.l, %bb.j
  %.sroa.4.1 = phi ptr [ %i.ap, %bb.j ], [ %i.aw, %bb.l ] ; 2 uses
  %.sroa.0.1 = phi ptr [ %i.ao, %bb.j ], [ %i.av, %bb.l ] ; 2 uses
  %.val43 = load i64, ptr %i.b, align 8, !range !40, !noundef !4 ; 2 uses
  %i.be = icmp eq i64 %.val43, 0
  br i1 %i.be, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtNtCs7tKScEop1B6_5alloc11collections9vec_deque8VecDequehEECscxmO3cvmuC8_9uu_base32.exit54, label %bb.r

bb.r:                                             ; preds = %bb.q
  %.val44 = load ptr, ptr %i.ac, align 8, !nonnull !4, !noundef !4
  call void @_RNvCsjSVV5GABoor_7___rustc14___rust_dealloc(ptr noundef nonnull %.val44, i64 noundef %.val43, i64 noundef range(i64 1, -9223372036854775807) 1) #23
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtNtCs7tKScEop1B6_5alloc11collections9vec_deque8VecDequehEECscxmO3cvmuC8_9uu_base32.exit54

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtNtCs7tKScEop1B6_5alloc11collections9vec_deque8VecDequehEECscxmO3cvmuC8_9uu_base32.exit54: ; preds = %bb.q, %bb.r
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %.val41 = load i64, ptr %i.c, align 8, !range !40, !noundef !4 ; 2 uses
  %i.bf = icmp eq i64 %.val41, 0
  br i1 %i.bf, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtNtCs7tKScEop1B6_5alloc11collections9vec_deque8VecDequehEECscxmO3cvmuC8_9uu_base32.exit55, label %bb.s

bb.s:                                             ; preds = %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtNtCs7tKScEop1B6_5alloc11collections9vec_deque8VecDequehEECscxmO3cvmuC8_9uu_base32.exit54
  %.val42 = load ptr, ptr %i.aa, align 8, !nonnull !4, !noundef !4
  call void @_RNvCsjSVV5GABoor_7___rustc14___rust_dealloc(ptr noundef nonnull %.val42, i64 noundef %.val41, i64 noundef range(i64 1, -9223372036854775807) 1) #23
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtNtCs7tKScEop1B6_5alloc11collections9vec_deque8VecDequehEECscxmO3cvmuC8_9uu_base32.exit55

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtNtCs7tKScEop1B6_5alloc11collections9vec_deque8VecDequehEECscxmO3cvmuC8_9uu_base32.exit55: ; preds = %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtNtCs7tKScEop1B6_5alloc11collections9vec_deque8VecDequehEECscxmO3cvmuC8_9uu_base32.exit54, %bb.s
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  %.val49 = load i64, ptr %i.e, align 8, !range !126, !noundef !4 ; 2 uses
  %i.bg = icmp sgt i64 %.val49, 0
  br i1 %i.bg, label %bb.t, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCscxmO3cvmuC8_9uu_base3211base_common11fast_encode12LineWrappingEEB13_.exit58

bb.t:                                             ; preds = %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtNtCs7tKScEop1B6_5alloc11collections9vec_deque8VecDequehEECscxmO3cvmuC8_9uu_base32.exit55
  %i.bh = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %.val50 = load ptr, ptr %i.bh, align 8, !nonnull !4, !noundef !4
  call void @_RNvCsjSVV5GABoor_7___rustc14___rust_dealloc(ptr noundef nonnull %.val50, i64 noundef %.val49, i64 noundef range(i64 1, -9223372036854775807) 1) #23
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCscxmO3cvmuC8_9uu_base3211base_common11fast_encode12LineWrappingEEB13_.exit58

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCscxmO3cvmuC8_9uu_base3211base_common11fast_encode12LineWrappingEEB13_.exit58: ; preds = %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtNtCs7tKScEop1B6_5alloc11collections9vec_deque8VecDequehEECscxmO3cvmuC8_9uu_base32.exit55, %bb.t
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  %.val = load i64, ptr %0, align 8, !range !40, !noundef !4 ; 2 uses
  %i.bi = icmp eq i64 %.val, 0
  br i1 %i.bi, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtCs7tKScEop1B6_5alloc3vec3VechEECscxmO3cvmuC8_9uu_base32.exit, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtCs7tKScEop1B6_5alloc3vec3VechEECscxmO3cvmuC8_9uu_base32.exit.sink.split
}

; Function Attrs: nounwind nonlazybind uwtable
define { ptr, ptr } @_RNvNtNtCscxmO3cvmuC8_9uu_base3211base_common11fast_encode18fast_encode_stream(ptr noundef nonnull %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(136) %1, ptr noundef nonnull %2, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(80) %3, ptr noundef nonnull %4, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(80) %5, i64 noundef range(i64 0, 2) %6, i64 %7) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 4 uses
  %i.b = alloca [24 x i8], align 8                ; 2 uses
  %i.c = alloca [8 x i8], align 8                 ; 4 uses
  %i.d = alloca [16 x i8], align 8                ; 10 uses
  %i.e = alloca [24 x i8], align 8                ; 12 uses
  %i.f = alloca [32 x i8], align 8                ; 14 uses
  %i.g = alloca [32 x i8], align 8                ; 17 uses
  %i.h = getelementptr inbounds nuw i8, ptr %5, i64 48
  %i.i = load ptr, ptr %i.h, align 8, !invariant.load !4, !nonnull !4
  %i.j = tail call noundef i64 %i.i(ptr noundef nonnull %4) #25
  %i.k = shl i64 %i.j, 10                         ; 16 uses
  %.not = icmp eq i64 %i.k, 0
  br i1 %.not, label %bb.b, label %bb.c, !prof !283

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvNtCs6JMX4GRUq9U_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @98, i64 noundef 46, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @100) #24
  unreachable

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  %i.l = trunc nuw i64 %6 to i1                   ; 2 uses
  br i1 %i.l, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.m = icmp eq i64 %7, 0
  br i1 %i.m, label %bb.g, label %bb.h

bb.e:                                             ; preds = %bb.c
  store i64 0, ptr %i.g, align 8
  %.sroa.012.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  store ptr inttoptr (i64 1 to ptr), ptr %.sroa.012.sroa.4.0..sroa_idx, align 8
  %.sroa.012.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  store i64 0, ptr %.sroa.012.sroa.5.0..sroa_idx, align 8
  %.sroa.413.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 24
  store i64 76, ptr %.sroa.413.0..sroa_idx, align 8
  br label %bb.f

bb.f:                                             ; preds = %bb.h, %bb.g, %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  %i.n = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  store i64 0, ptr %i.f, align 8
  %i.o = getelementptr inbounds nuw i8, ptr %i.f, i64 8 ; 3 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.n, i8 0, i64 16, i1 false)
  store ptr inttoptr (i64 1 to ptr), ptr %i.o, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  %.not.i = icmp slt i64 %i.k, 0
  br i1 %.not.i, label %bb.i, label %_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator8allocate.exit.i, !prof !451

_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator8allocate.exit.i: ; preds = %bb.f
  tail call void @_RNvCsjSVV5GABoor_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #23, !noalias !967
  %i.p = tail call noundef ptr @_RNvCsjSVV5GABoor_7___rustc12___rust_alloc(i64 noundef range(i64 0, -9223372036854775808) %i.k, i64 noundef range(i64 1, 9) 1) #23, !noalias !967 ; 3 uses
  %i.q = icmp eq ptr %i.p, null
  br i1 %i.q, label %bb.i, label %bb.j

bb.g:                                             ; preds = %bb.d
  store i64 -1, ptr %i.g, align 8
  br label %bb.f

bb.h:                                             ; preds = %bb.d
  store i64 0, ptr %i.g, align 8
  %.sroa.07.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  store ptr inttoptr (i64 1 to ptr), ptr %.sroa.07.sroa.4.0..sroa_idx, align 8
  %.sroa.07.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  store i64 0, ptr %.sroa.07.sroa.5.0..sroa_idx, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 24
  store i64 %7, ptr %.sroa.4.0..sroa_idx, align 8
  br label %bb.f

bb.i:                                             ; preds = %bb.f, %_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator8allocate.exit.i
  %.sroa.4115.0.ph = phi i64 [ 1, %_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator8allocate.exit.i ], [ 0, %bb.f ]
  tail call void @_RNvNtCs7tKScEop1B6_5alloc7raw_vec12handle_error(i64 noundef %.sroa.4115.0.ph, i64 %i.k) #26
  unreachable

bb.j:                                             ; preds = %_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator8allocate.exit.i
  store i64 %i.k, ptr %i.e, align 8
  %i.r = getelementptr inbounds nuw i8, ptr %i.e, i64 8 ; 6 uses
  store ptr %i.p, ptr %i.r, align 8
  %i.s = getelementptr inbounds nuw i8, ptr %i.e, i64 16 ; 6 uses
  store i64 0, ptr %i.s, align 8
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 88
  %i.u = load ptr, ptr %i.t, align 8, !invariant.load !4, !nonnull !4 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  call void %i.u(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.d, ptr noundef nonnull %0) #25
  %i.v = load ptr, ptr %i.d, align 8, !noundef !4 ; 2 uses
  %i.w = icmp eq ptr %i.v, null
  br i1 %i.w, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.j
  %i.x = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.y = getelementptr inbounds nuw i8, ptr %5, i64 40
  %.val89 = load ptr, ptr %i.y, align 8           ; 3 uses
  %i.z = icmp eq i64 %7, 0
  %.sroa.042.0 = select i1 %i.l, i1 %i.z, i1 false ; 3 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %3, i64 56
  %.val91 = load ptr, ptr %i.aa, align 8          ; 3 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %1, i64 96
  %i.ac = load ptr, ptr %i.ab, align 8, !nonnull !4
  br label %bb.n

._crit_edge:                                      ; preds = %bb.al, %bb.j
  %i.ad = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.ae = load ptr, ptr %i.ad, align 8, !nonnull !4, !noundef !4 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store ptr %i.ae, ptr %i.c, align 8
  call void @_RNvNtCscxmO3cvmuC8_9uu_base3211base_common17format_read_error(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.b, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.c) #23
  call void @_RNvCsjSVV5GABoor_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #23, !noalias !970
  %i.af = call noundef align 8 dereferenceable_or_null(32) ptr @_RNvCsjSVV5GABoor_7___rustc12___rust_alloc(i64 noundef range(i64 0, -9223372036854775808) 32, i64 noundef range(i64 1, 9) 8) #23, !noalias !970 ; 4 uses
  %i.ag = icmp eq ptr %i.af, null
  br i1 %i.ag, label %bb.k, label %_RNvNtCs7tKScEop1B6_5alloc5boxed14box_new_uninit.exit, !prof !443

bb.k:                                             ; preds = %._crit_edge
  call void @_RNvNtCs7tKScEop1B6_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 32) #26, !noalias !970
  unreachable

_RNvNtCs7tKScEop1B6_5alloc5boxed14box_new_uninit.exit: ; preds = %._crit_edge
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.af, ptr noundef nonnull align 8 dereferenceable(24) %i.b, i64 24, i1 false)
  %.sroa.4118.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.af, i64 24
  store i32 1, ptr %.sroa.4118.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !973
  %i.ah = ptrtoint ptr %i.ae to i64               ; 2 uses
  %i.ai = and i64 %i.ah, 3
  switch i64 %i.ai, label %default.unreachable [
    i64 2, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECscxmO3cvmuC8_9uu_base32.exit
    i64 3, label %bb.l
    i64 0, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECscxmO3cvmuC8_9uu_base32.exit
    i64 1, label %bb.m
  ], !prof !133

default.unreachable:                              ; preds = %_RNvNtCs7tKScEop1B6_5alloc5boxed14box_new_uninit.exit
  unreachable

bb.l:                                             ; preds = %_RNvNtCs7tKScEop1B6_5alloc5boxed14box_new_uninit.exit
  %i.aj = icmp ult ptr %i.ae, inttoptr (i64 188978561024 to ptr)
  %i.ak = and i64 %i.ah, 1095216660480
  %i.al = icmp ne i64 %i.ak, 1095216660480
  call void @llvm.assume(i1 %i.aj)
  call void @llvm.assume(i1 %i.al)
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECscxmO3cvmuC8_9uu_base32.exit

bb.m:                                             ; preds = %_RNvNtCs7tKScEop1B6_5alloc5boxed14box_new_uninit.exit
  %i.am = getelementptr i8, ptr %i.ae, i64 -1     ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.am) ]
  %i.an = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  store ptr %i.am, ptr %i.an, align 8, !alias.scope !976, !noalias !973
  store i8 3, ptr %i.a, align 8, !alias.scope !976, !noalias !973
  call void @_RNvXsd_NtNtCs6JMX4GRUq9U_4core2io5errorNtB5_11CustomOwnerNtNtNtB9_3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.an) #23, !noalias !973
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECscxmO3cvmuC8_9uu_base32.exit

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECscxmO3cvmuC8_9uu_base32.exit: ; preds = %_RNvNtCs7tKScEop1B6_5alloc5boxed14box_new_uninit.exit, %_RNvNtCs7tKScEop1B6_5alloc5boxed14box_new_uninit.exit, %bb.l, %bb.m
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !973
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  br label %bb.w

bb.n:                                             ; preds = %.lr.ph, %bb.al
  %i.ao = phi i64 [ 0, %.lr.ph ], [ %i.cw, %bb.al ] ; 2 uses
  %i.ap = phi ptr [ %i.p, %.lr.ph ], [ %i.cx, %bb.al ] ; 3 uses
  %i.aq = phi i64 [ 0, %.lr.ph ], [ %i.cy, %bb.al ] ; 7 uses
  %i.ar = phi ptr [ %i.v, %.lr.ph ], [ %i.cz, %bb.al ] ; 3 uses
  %i.as = load i64, ptr %i.x, align 8, !noundef !4 ; 6 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  %i.at = icmp eq i64 %i.as, 0
  br i1 %i.at, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  %i.au = load ptr, ptr %i.r, align 8, !nonnull !4, !noundef !4 ; 2 uses
  %i.av = call { ptr, ptr } %.val89(ptr noundef nonnull %4, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.au, i64 noundef %i.ao, ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.f) #25 ; 2 uses
  %i.aw = extractvalue { ptr, ptr } %i.av, 0      ; 2 uses
  %.not83 = icmp eq ptr %i.aw, null
  br i1 %.not83, label %bb.r, label %bb.q

bb.p:                                             ; preds = %bb.n
  %i.ax = icmp sgt i64 %i.aq, -1
  call void @llvm.assume(i1 %i.ax)
  %i.ay = icmp eq i64 %i.aq, 0
  br i1 %i.ay, label %bb.af, label %bb.z

bb.q:                                             ; preds = %bb.o
  %i.az = extractvalue { ptr, ptr } %i.av, 1      ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.az) ]
  br label %bb.w

bb.r:                                             ; preds = %bb.o
  %i.ba = call fastcc noundef ptr @_RNvNtNtCscxmO3cvmuC8_9uu_base3211base_common11fast_encode15write_to_output(ptr noalias nofree noundef align 8 dereferenceable(32) %i.g, ptr noalias nofree noundef align 8 dereferenceable(32) %i.f, ptr noundef nonnull %2, ptr %.val91, i1 noundef zeroext true, i1 noundef zeroext %.sroa.042.0) #23 ; 2 uses
  %.not84 = icmp eq ptr %i.ba, null
  br i1 %.not84, label %bb.t, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.bb = call { ptr, ptr } @_RNvXsf_NtNtCsh036I4OHgIr_6uucore4mods5errorINtNtCs7tKScEop1B6_5alloc5boxed3BoxDNtB5_6UErrorEL_EINtNtCs6JMX4GRUq9U_4core7convert4FromNtNtNtB1A_2io5error5ErrorE4from(ptr noundef nonnull %i.ba) #23 ; 2 uses
  %i.bc = extractvalue { ptr, ptr } %i.bb, 0
  %i.bd = extractvalue { ptr, ptr } %i.bb, 1
  br label %bb.w

bb.t:                                             ; preds = %bb.r
  %.val86 = load i64, ptr %i.e, align 8, !range !40, !noundef !4 ; 2 uses
  %i.be = icmp eq i64 %.val86, 0
  br i1 %i.be, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtCs7tKScEop1B6_5alloc3vec3VechEECscxmO3cvmuC8_9uu_base32.exit, label %bb.u

bb.u:                                             ; preds = %bb.t
  call void @_RNvCsjSVV5GABoor_7___rustc14___rust_dealloc(ptr noundef nonnull %i.au, i64 noundef %.val86, i64 noundef range(i64 1, -9223372036854775807) 1) #23
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtCs7tKScEop1B6_5alloc3vec3VechEECscxmO3cvmuC8_9uu_base32.exit

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtCs7tKScEop1B6_5alloc3vec3VechEECscxmO3cvmuC8_9uu_base32.exit: ; preds = %bb.t, %bb.u
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  %.val95 = load i64, ptr %i.f, align 8, !range !40, !noundef !4 ; 2 uses
  %i.bf = icmp eq i64 %.val95, 0
  br i1 %i.bf, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtNtCs7tKScEop1B6_5alloc11collections9vec_deque8VecDequehEECscxmO3cvmuC8_9uu_base32.exit, label %bb.v

bb.v:                                             ; preds = %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtCs7tKScEop1B6_5alloc3vec3VechEECscxmO3cvmuC8_9uu_base32.exit
  %.val96 = load ptr, ptr %i.o, align 8, !nonnull !4, !noundef !4
  call void @_RNvCsjSVV5GABoor_7___rustc14___rust_dealloc(ptr noundef nonnull %.val96, i64 noundef %.val95, i64 noundef range(i64 1, -9223372036854775807) 1) #23
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtNtCs7tKScEop1B6_5alloc11collections9vec_deque8VecDequehEECscxmO3cvmuC8_9uu_base32.exit

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtNtCs7tKScEop1B6_5alloc11collections9vec_deque8VecDequehEECscxmO3cvmuC8_9uu_base32.exit: ; preds = %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtCs7tKScEop1B6_5alloc3vec3VechEECscxmO3cvmuC8_9uu_base32.exit, %bb.v
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  %.val99 = load i64, ptr %i.g, align 8, !range !126, !noundef !4 ; 2 uses
  %i.bg = icmp sgt i64 %.val99, 0
  br i1 %i.bg, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCscxmO3cvmuC8_9uu_base3211base_common11fast_encode12LineWrappingEEB13_.exit105.sink.split, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCscxmO3cvmuC8_9uu_base3211base_common11fast_encode12LineWrappingEEB13_.exit105

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCscxmO3cvmuC8_9uu_base3211base_common11fast_encode12LineWrappingEEB13_.exit105.sink.split: ; preds = %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtNtCs7tKScEop1B6_5alloc11collections9vec_deque8VecDequehEECscxmO3cvmuC8_9uu_base32.exit, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtNtCs7tKScEop1B6_5alloc11collections9vec_deque8VecDequehEECscxmO3cvmuC8_9uu_base32.exit102
  %.val99.sink = phi i64 [ %.val97, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtNtCs7tKScEop1B6_5alloc11collections9vec_deque8VecDequehEECscxmO3cvmuC8_9uu_base32.exit102 ], [ %.val99, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtNtCs7tKScEop1B6_5alloc11collections9vec_deque8VecDequehEECscxmO3cvmuC8_9uu_base32.exit ]
  %.sroa.9.0.ph = phi ptr [ %.sroa.9.1, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtNtCs7tKScEop1B6_5alloc11collections9vec_deque8VecDequehEECscxmO3cvmuC8_9uu_base32.exit102 ], [ undef, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtNtCs7tKScEop1B6_5alloc11collections9vec_deque8VecDequehEECscxmO3cvmuC8_9uu_base32.exit ]
  %.sroa.06.0.ph = phi ptr [ %.sroa.06.1, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtNtCs7tKScEop1B6_5alloc11collections9vec_deque8VecDequehEECscxmO3cvmuC8_9uu_base32.exit102 ], [ null, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtNtCs7tKScEop1B6_5alloc11collections9vec_deque8VecDequehEECscxmO3cvmuC8_9uu_base32.exit ]
  %i.bh = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %.val100 = load ptr, ptr %i.bh, align 8, !nonnull !4, !noundef !4
  call void @_RNvCsjSVV5GABoor_7___rustc14___rust_dealloc(ptr noundef nonnull %.val100, i64 noundef %.val99.sink, i64 noundef range(i64 1, -9223372036854775807) 1) #23
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCscxmO3cvmuC8_9uu_base3211base_common11fast_encode12LineWrappingEEB13_.exit105

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCscxmO3cvmuC8_9uu_base3211base_common11fast_encode12LineWrappingEEB13_.exit105: ; preds = %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCscxmO3cvmuC8_9uu_base3211base_common11fast_encode12LineWrappingEEB13_.exit105.sink.split, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtNtCs7tKScEop1B6_5alloc11collections9vec_deque8VecDequehEECscxmO3cvmuC8_9uu_base32.exit, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtNtCs7tKScEop1B6_5alloc11collections9vec_deque8VecDequehEECscxmO3cvmuC8_9uu_base32.exit102
  %.sroa.9.0 = phi ptr [ undef, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtNtCs7tKScEop1B6_5alloc11collections9vec_deque8VecDequehEECscxmO3cvmuC8_9uu_base32.exit ], [ %.sroa.9.1, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtNtCs7tKScEop1B6_5alloc11collections9vec_deque8VecDequehEECscxmO3cvmuC8_9uu_base32.exit102 ], [ %.sroa.9.0.ph, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCscxmO3cvmuC8_9uu_base3211base_common11fast_encode12LineWrappingEEB13_.exit105.sink.split ]
  %.sroa.06.0 = phi ptr [ null, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtNtCs7tKScEop1B6_5alloc11collections9vec_deque8VecDequehEECscxmO3cvmuC8_9uu_base32.exit ], [ %.sroa.06.1, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtNtCs7tKScEop1B6_5alloc11collections9vec_deque8VecDequehEECscxmO3cvmuC8_9uu_base32.exit102 ], [ %.sroa.06.0.ph, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCscxmO3cvmuC8_9uu_base3211base_common11fast_encode12LineWrappingEEB13_.exit105.sink.split ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  %i.bi = insertvalue { ptr, ptr } poison, ptr %.sroa.06.0, 0
  %i.bj = insertvalue { ptr, ptr } %i.bi, ptr %.sroa.9.0, 1
  ret { ptr, ptr } %i.bj

bb.w:                                             ; preds = %bb.an, %bb.ap, %bb.ae, %bb.ac, %bb.s, %bb.q, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECscxmO3cvmuC8_9uu_base32.exit
  %.sroa.9.1 = phi ptr [ @27, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECscxmO3cvmuC8_9uu_base32.exit ], [ %i.az, %bb.q ], [ %i.bd, %bb.s ], [ %i.ci, %bb.ae ], [ %i.ce, %bb.ac ], [ %i.dk, %bb.an ], [ %i.dq, %bb.ap ] ; 2 uses
  %.sroa.06.1 = phi ptr [ %i.af, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECscxmO3cvmuC8_9uu_base32.exit ], [ %i.aw, %bb.q ], [ %i.bc, %bb.s ], [ %i.ch, %bb.ae ], [ %i.cd, %bb.ac ], [ %i.cv, %bb.an ], [ %i.dp, %bb.ap ] ; 2 uses
  %.val = load i64, ptr %i.e, align 8, !range !40, !noundef !4 ; 2 uses
  %i.bk = icmp eq i64 %.val, 0
  br i1 %i.bk, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtCs7tKScEop1B6_5alloc3vec3VechEECscxmO3cvmuC8_9uu_base32.exit101, label %bb.x

bb.x:                                             ; preds = %bb.w
  %.val85 = load ptr, ptr %i.r, align 8, !nonnull !4, !noundef !4
  call void @_RNvCsjSVV5GABoor_7___rustc14___rust_dealloc(ptr noundef nonnull %.val85, i64 noundef %.val, i64 noundef range(i64 1, -9223372036854775807) 1) #23
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtCs7tKScEop1B6_5alloc3vec3VechEECscxmO3cvmuC8_9uu_base32.exit101

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtCs7tKScEop1B6_5alloc3vec3VechEECscxmO3cvmuC8_9uu_base32.exit101: ; preds = %bb.w, %bb.x
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  %.val93 = load i64, ptr %i.f, align 8, !range !40, !noundef !4 ; 2 uses
  %i.bl = icmp eq i64 %.val93, 0
  br i1 %i.bl, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtNtCs7tKScEop1B6_5alloc11collections9vec_deque8VecDequehEECscxmO3cvmuC8_9uu_base32.exit102, label %bb.y

bb.y:                                             ; preds = %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtCs7tKScEop1B6_5alloc3vec3VechEECscxmO3cvmuC8_9uu_base32.exit101
  %.val94 = load ptr, ptr %i.o, align 8, !nonnull !4, !noundef !4
  call void @_RNvCsjSVV5GABoor_7___rustc14___rust_dealloc(ptr noundef nonnull %.val94, i64 noundef %.val93, i64 noundef range(i64 1, -9223372036854775807) 1) #23
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtNtCs7tKScEop1B6_5alloc11collections9vec_deque8VecDequehEECscxmO3cvmuC8_9uu_base32.exit102

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtNtCs7tKScEop1B6_5alloc11collections9vec_deque8VecDequehEECscxmO3cvmuC8_9uu_base32.exit102: ; preds = %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtCs7tKScEop1B6_5alloc3vec3VechEECscxmO3cvmuC8_9uu_base32.exit101, %bb.y
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  %.val97 = load i64, ptr %i.g, align 8, !range !126, !noundef !4 ; 2 uses
  %i.bm = icmp sgt i64 %.val97, 0
  br i1 %i.bm, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCscxmO3cvmuC8_9uu_base3211base_common11fast_encode12LineWrappingEEB13_.exit105.sink.split, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCscxmO3cvmuC8_9uu_base3211base_common11fast_encode12LineWrappingEEB13_.exit105

bb.z:                                             ; preds = %bb.p
  %i.bn = sub nsw i64 %i.k, %i.aq
  %..i = call noundef i64 @llvm.umin.i64(i64 %i.as, i64 %i.bn) ; 6 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !979)
  %i.bo = load i64, ptr %i.e, align 8, !range !40, !alias.scope !982, !noundef !4
  %i.bp = sub nsw i64 %i.bo, %i.aq
  %i.bq = icmp ugt i64 %..i, %i.bp
  br i1 %i.bq, label %_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VechE7reserveCscxmO3cvmuC8_9uu_base32.exit.thread.i, label %_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VechE7reserveCscxmO3cvmuC8_9uu_base32.exit.i, !prof !283

_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VechE7reserveCscxmO3cvmuC8_9uu_base32.exit.thread.i: ; preds = %bb.z
  call fastcc void @_RINvNvMs2_NtCs7tKScEop1B6_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECscxmO3cvmuC8_9uu_base32(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.e, i64 noundef %i.aq, i64 noundef %..i, i64 noundef 1, i64 noundef 1) #23
  %i.br = load i64, ptr %i.s, align 8, !alias.scope !979, !noundef !4 ; 2 uses
  %i.bs = icmp sgt i64 %i.br, -1
  call void @llvm.assume(i1 %i.bs)
  %.pre = load ptr, ptr %i.r, align 8, !alias.scope !979
  br label %bb.aa

_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VechE7reserveCscxmO3cvmuC8_9uu_base32.exit.i: ; preds = %bb.z
  %.not.i106 = icmp eq i64 %i.k, %i.aq
  br i1 %.not.i106, label %_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VechE15append_elementsCscxmO3cvmuC8_9uu_base32.exit, label %bb.aa

bb.aa:                                            ; preds = %_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VechE7reserveCscxmO3cvmuC8_9uu_base32.exit.i, %_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VechE7reserveCscxmO3cvmuC8_9uu_base32.exit.thread.i
  %i.bt = phi ptr [ %.pre, %_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VechE7reserveCscxmO3cvmuC8_9uu_base32.exit.thread.i ], [ %i.ap, %_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VechE7reserveCscxmO3cvmuC8_9uu_base32.exit.i ] ; 2 uses
  %i.bu = phi i64 [ %i.br, %_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VechE7reserveCscxmO3cvmuC8_9uu_base32.exit.thread.i ], [ %i.aq, %_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VechE7reserveCscxmO3cvmuC8_9uu_base32.exit.i ] ; 2 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bt, i64 %i.bu
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.bv, ptr nonnull readonly align 1 %i.ar, i64 %..i, i1 false), !noalias !979
  br label %_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VechE15append_elementsCscxmO3cvmuC8_9uu_base32.exit

_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VechE15append_elementsCscxmO3cvmuC8_9uu_base32.exit: ; preds = %_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VechE7reserveCscxmO3cvmuC8_9uu_base32.exit.i, %bb.aa
  %i.bw = phi ptr [ %i.bt, %bb.aa ], [ %i.ap, %_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VechE7reserveCscxmO3cvmuC8_9uu_base32.exit.i ]
  %i.bx = phi i64 [ %i.bu, %bb.aa ], [ %i.k, %_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VechE7reserveCscxmO3cvmuC8_9uu_base32.exit.i ]
  %i.by = add i64 %i.bx, %..i                     ; 5 uses
  store i64 %i.by, ptr %i.s, align 8, !alias.scope !979
  %i.bz = icmp sgt i64 %i.by, -1
  call void @llvm.assume(i1 %i.bz)
  %i.ca = icmp eq i64 %i.by, %i.k
  br i1 %i.ca, label %bb.ab, label %bb.af

bb.ab:                                            ; preds = %_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VechE15append_elementsCscxmO3cvmuC8_9uu_base32.exit
  %i.cb = load ptr, ptr %i.r, align 8, !nonnull !4, !noundef !4 ; 2 uses
  %i.cc = call { ptr, ptr } %.val89(ptr noundef nonnull %4, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.cb, i64 noundef range(i64 0, -9223372036854775808) %i.k, ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.f) #25, !inline_history !985 ; 2 uses
  %i.cd = extractvalue { ptr, ptr } %i.cc, 0      ; 2 uses
  %.not76 = icmp eq ptr %i.cd, null
  br i1 %.not76, label %bb.ad, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.ce = extractvalue { ptr, ptr } %i.cc, 1      ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.ce) ]
  br label %bb.w

bb.ad:                                            ; preds = %bb.ab
  store i64 0, ptr %i.s, align 8
  %i.cf = call fastcc noundef ptr @_RNvNtNtCscxmO3cvmuC8_9uu_base3211base_common11fast_encode15write_to_output(ptr noalias nofree noundef align 8 dereferenceable(32) %i.g, ptr noalias nofree noundef align 8 dereferenceable(32) %i.f, ptr noundef nonnull %2, ptr %.val91, i1 noundef zeroext false, i1 noundef zeroext %.sroa.042.0) #23 ; 2 uses
  %.not77 = icmp eq ptr %i.cf, null
  br i1 %.not77, label %bb.af, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.cg = call { ptr, ptr } @_RNvXsf_NtNtCsh036I4OHgIr_6uucore4mods5errorINtNtCs7tKScEop1B6_5alloc5boxed3BoxDNtB5_6UErrorEL_EINtNtCs6JMX4GRUq9U_4core7convert4FromNtNtNtB1A_2io5error5ErrorE4from(ptr noundef nonnull %i.cf) #23 ; 2 uses
  %i.ch = extractvalue { ptr, ptr } %i.cg, 0
  %i.ci = extractvalue { ptr, ptr } %i.cg, 1
  br label %bb.w

bb.af:                                            ; preds = %bb.p, %_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VechE15append_elementsCscxmO3cvmuC8_9uu_base32.exit, %bb.ad
  %i.cj = phi i64 [ %i.ao, %bb.p ], [ %i.by, %_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VechE15append_elementsCscxmO3cvmuC8_9uu_base32.exit ], [ 0, %bb.ad ] ; 4 uses
  %i.ck = phi ptr [ %i.ap, %bb.p ], [ %i.bw, %_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VechE15append_elementsCscxmO3cvmuC8_9uu_base32.exit ], [ %i.cb, %bb.ad ]
  %i.cl = phi i64 [ 0, %bb.p ], [ %i.by, %_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VechE15append_elementsCscxmO3cvmuC8_9uu_base32.exit ], [ 0, %bb.ad ]
  %.sroa.025.0 = phi i64 [ 0, %bb.p ], [ %..i, %_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VechE15append_elementsCscxmO3cvmuC8_9uu_base32.exit ], [ %..i, %bb.ad ] ; 4 uses
  %i.cm = sub nuw i64 %i.as, %.sroa.025.0         ; 3 uses
  %i.cn = urem i64 %i.cm, %i.k                    ; 2 uses
  %i.co = sub nuw i64 %i.cm, %i.cn                ; 3 uses
  %.not78 = icmp eq i64 %i.cm, %i.cn
  br i1 %.not78, label %bb.ag, label %bb.ah

bb.ag:                                            ; preds = %bb.aj, %bb.af
  %.sroa.025.1 = phi i64 [ %i.ct, %bb.aj ], [ %.sroa.025.0, %bb.af ] ; 4 uses
  %i.cp = icmp ult i64 %.sroa.025.1, %i.as
  br i1 %i.cp, label %bb.am, label %bb.al

bb.ah:                                            ; preds = %bb.af
  %i.cq = getelementptr inbounds nuw i8, ptr %i.ar, i64 %.sroa.025.0
  %i.cr = urem i64 %i.co, %i.k
  %i.cs = sub nuw nsw i64 %i.co, %i.cr
  br label %bb.ai

bb.ai:                                            ; preds = %bb.ao, %bb.ah
  %.sroa.043.0 = phi ptr [ %i.cq, %bb.ah ], [ %i.dm, %bb.ao ] ; 3 uses
  %.sroa.644.0 = phi i64 [ %i.cs, %bb.ah ], [ %i.dl, %bb.ao ] ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.043.0) ]
  %.not80 = icmp ugt i64 %i.k, %.sroa.644.0
  br i1 %.not80, label %bb.aj, label %bb.ak

bb.aj:                                            ; preds = %bb.ai
  %i.ct = add i64 %i.co, %.sroa.025.0
  br label %bb.ag

bb.ak:                                            ; preds = %bb.ai
  %i.cu = call { ptr, ptr } %.val89(ptr noundef nonnull %4, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.sroa.043.0, i64 noundef range(i64 0, -9223372036854775808) %i.k, ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.f) #25, !inline_history !985 ; 2 uses
  %i.cv = extractvalue { ptr, ptr } %i.cu, 0      ; 2 uses
  %.not81 = icmp eq ptr %i.cv, null
  br i1 %.not81, label %bb.ao, label %bb.an

bb.al:                                            ; preds = %bb.ag, %_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VechE15append_elementsCscxmO3cvmuC8_9uu_base32.exit113
  %i.cw = phi i64 [ %i.dj, %_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VechE15append_elementsCscxmO3cvmuC8_9uu_base32.exit113 ], [ %i.cj, %bb.ag ]
  %i.cx = phi ptr [ %i.dh, %_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VechE15append_elementsCscxmO3cvmuC8_9uu_base32.exit113 ], [ %i.ck, %bb.ag ]
  %i.cy = phi i64 [ %i.dj, %_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VechE15append_elementsCscxmO3cvmuC8_9uu_base32.exit113 ], [ %i.cl, %bb.ag ]
  %.sroa.025.2 = phi i64 [ %i.as, %_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VechE15append_elementsCscxmO3cvmuC8_9uu_base32.exit113 ], [ %.sroa.025.1, %bb.ag ]
  call void %i.ac(ptr noundef nonnull %0, i64 noundef %.sroa.025.2) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  call void %i.u(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.d, ptr noundef nonnull %0) #25
  %i.cz = load ptr, ptr %i.d, align 8, !noundef !4 ; 2 uses
  %i.da = icmp eq ptr %i.cz, null
  br i1 %i.da, label %._crit_edge, label %bb.n

bb.am:                                            ; preds = %bb.ag
  %i.db = getelementptr inbounds nuw i8, ptr %i.ar, i64 %.sroa.025.1
  %gepdiff = sub nuw nsw i64 %i.as, %.sroa.025.1  ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !986)
  %i.dc = load i64, ptr %i.e, align 8, !range !40, !alias.scope !989, !noundef !4
  %i.dd = sub i64 %i.dc, %i.cj
  %i.de = icmp ugt i64 %gepdiff, %i.dd
  br i1 %i.de, label %_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VechE7reserveCscxmO3cvmuC8_9uu_base32.exit.thread.i112, label %_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VechE15append_elementsCscxmO3cvmuC8_9uu_base32.exit113, !prof !283

_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VechE7reserveCscxmO3cvmuC8_9uu_base32.exit.thread.i112: ; preds = %bb.am
  call fastcc void @_RINvNvMs2_NtCs7tKScEop1B6_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECscxmO3cvmuC8_9uu_base32(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.e, i64 noundef %i.cj, i64 noundef %gepdiff, i64 noundef 1, i64 noundef 1) #23
  %i.df = load i64, ptr %i.s, align 8, !alias.scope !986, !noundef !4
  br label %_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VechE15append_elementsCscxmO3cvmuC8_9uu_base32.exit113

_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VechE15append_elementsCscxmO3cvmuC8_9uu_base32.exit113: ; preds = %bb.am, %_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VechE7reserveCscxmO3cvmuC8_9uu_base32.exit.thread.i112
  %.sink172 = phi i64 [ %i.df, %_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VechE7reserveCscxmO3cvmuC8_9uu_base32.exit.thread.i112 ], [ %i.cj, %bb.am ] ; 3 uses
  %i.dg = icmp sgt i64 %.sink172, -1
  call void @llvm.assume(i1 %i.dg)
  %i.dh = load ptr, ptr %i.r, align 8, !alias.scope !986, !nonnull !4, !noundef !4 ; 2 uses
  %i.di = getelementptr inbounds nuw i8, ptr %i.dh, i64 %.sink172
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.di, ptr nonnull readonly align 1 %i.db, i64 %gepdiff, i1 false), !noalias !986
  %i.dj = add i64 %.sink172, %gepdiff             ; 3 uses
  store i64 %i.dj, ptr %i.s, align 8, !alias.scope !986
  br label %bb.al

bb.an:                                            ; preds = %bb.ak
  %i.dk = extractvalue { ptr, ptr } %i.cu, 1      ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.dk) ]
  br label %bb.w

bb.ao:                                            ; preds = %bb.ak
  %i.dl = sub nuw i64 %.sroa.644.0, %i.k
  %i.dm = getelementptr inbounds nuw i8, ptr %.sroa.043.0, i64 %i.k
  %i.dn = call fastcc noundef ptr @_RNvNtNtCscxmO3cvmuC8_9uu_base3211base_common11fast_encode15write_to_output(ptr noalias nofree noundef align 8 dereferenceable(32) %i.g, ptr noalias nofree noundef align 8 dereferenceable(32) %i.f, ptr noundef nonnull %2, ptr %.val91, i1 noundef zeroext false, i1 noundef zeroext %.sroa.042.0) #23 ; 2 uses
  %.not82 = icmp eq ptr %i.dn, null
  br i1 %.not82, label %bb.ai, label %bb.ap

bb.ap:                                            ; preds = %bb.ao
  %i.do = call { ptr, ptr } @_RNvXsf_NtNtCsh036I4OHgIr_6uucore4mods5errorINtNtCs7tKScEop1B6_5alloc5boxed3BoxDNtB5_6UErrorEL_EINtNtCs6JMX4GRUq9U_4core7convert4FromNtNtNtB1A_2io5error5ErrorE4from(ptr noundef nonnull %i.dn) #23 ; 2 uses
  %i.dp = extractvalue { ptr, ptr } %i.do, 0
  %i.dq = extractvalue { ptr, ptr } %i.do, 1
  br label %bb.w
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define internal void @_RNvXNtCs6JMX4GRUq9U_4core3anyNtNtNtCsgNwXemyrBWj_12clap_builder7builder10value_hint9ValueHintNtB2_3Any7type_idCscxmO3cvmuC8_9uu_base32(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([16 x i8]) align 8 captures(none) dereferenceable(16) initializes((0, 16)) %0, ptr noalias nofree readonly captures(none) %1) unnamed_addr #6 {
bb.a:
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) @7, i64 16, i1 false)
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal noundef i64 @_RNvXs1_NtNtCsh036I4OHgIr_6uucore8features8encodingNtB5_13Base58WrapperNtB5_27SupportsFastDecodeAndEncode17unpadded_multiple(ptr noalias nofree nonnull readonly captures(none) %0) unnamed_addr #7 {
bb.a:
  ret i64 9007199254740991
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal noundef i64 @_RNvXs1_NtNtCsh036I4OHgIr_6uucore8features8encodingNtB5_13Base58WrapperNtB5_27SupportsFastDecodeAndEncode23valid_decoding_multiple(ptr noalias nofree nonnull readonly captures(none) %0) unnamed_addr #7 {
bb.a:
  ret i64 1
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal { ptr, i64 } @_RNvXs1_NtNtCsh036I4OHgIr_6uucore8features8encodingNtB5_13Base58WrapperNtB5_27SupportsFastDecodeAndEncode8alphabet(ptr noalias nofree nonnull readonly captures(none) %0) unnamed_addr #7 {
bb.a:
  ret { ptr, i64 } { ptr @106, i64 58 }
}

; Function Attrs: nounwind nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXs1g_NtCs6JMX4GRUq9U_4core3fmtRNtNtCs7tKScEop1B6_5alloc6string6StringNtB6_5Debug3fmtCscxmO3cvmuC8_9uu_base32(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !4, !align !130, !noundef !4 ; 2 uses
  %i.b = getelementptr i8, ptr %i.a, i64 8
  %.val = load ptr, ptr %i.b, align 8, !nonnull !4, !noundef !4
  %i.c = getelementptr i8, ptr %i.a, i64 16
  %.val1 = load i64, ptr %i.c, align 8, !noundef !4
  %i.d = tail call noundef zeroext i1 @_RNvXsh_NtCs6JMX4GRUq9U_4core3fmteNtB5_5Debug3fmt(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.val, i64 noundef %.val1, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1) #23
  ret i1 %i.d
}

; Function Attrs: nounwind nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXs1g_NtCs6JMX4GRUq9U_4core3fmtRNtNtNtB8_2io5error5ErrorNtB6_5Debug3fmtCscxmO3cvmuC8_9uu_base32(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !4, !align !130, !noundef !4
  %i.b = tail call noundef zeroext i1 @_RNvXNtNtCs6JMX4GRUq9U_4core2io5errorNtB2_5ErrorNtNtB6_3fmt5Debug3fmt(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.a, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1) #23
  ret i1 %i.b
}

; Function Attrs: nounwind nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXs1i_NtCs6JMX4GRUq9U_4core3fmtReNtB6_7Display3fmtCscxmO3cvmuC8_9uu_base32(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(16) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !4, !noundef !4
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load i64, ptr %i.b, align 8, !noundef !4
  %i.d = tail call noundef zeroext i1 @_RNvXsi_NtCs6JMX4GRUq9U_4core3fmteNtB5_7Display3fmt(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.a, i64 noundef %i.c, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1) #23
  ret i1 %i.d
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable
define internal noundef i32 @_RNvXs2_NtNtCsh036I4OHgIr_6uucore4mods5errorNtB5_12USimpleErrorNtB5_6UError4code(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(32) %0) unnamed_addr #8 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = load i32, ptr %i.a, align 8, !noundef !4
  ret i32 %i.b
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal noundef i64 @_RNvXs2_NtNtCsh036I4OHgIr_6uucore8features8encodingNtB5_10Z85WrapperNtB5_27SupportsFastDecodeAndEncode17unpadded_multiple(ptr noalias nofree nonnull readonly captures(none) %0) unnamed_addr #7 {
bb.a:
  ret i64 4
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal noundef i64 @_RNvXs2_NtNtCsh036I4OHgIr_6uucore8features8encodingNtB5_10Z85WrapperNtB5_27SupportsFastDecodeAndEncode23valid_decoding_multiple(ptr noalias nofree nonnull readonly captures(none) %0) unnamed_addr #7 {
bb.a:
  ret i64 5
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal { ptr, i64 } @_RNvXs2_NtNtCsh036I4OHgIr_6uucore8features8encodingNtB5_10Z85WrapperNtB5_27SupportsFastDecodeAndEncode8alphabet(ptr noalias nofree nonnull readonly captures(none) %0) unnamed_addr #7 {
bb.a:
  ret { ptr, i64 } { ptr @107, i64 85 }
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable
define internal noundef i64 @_RNvXs3_NtNtCsh036I4OHgIr_6uucore8features8encodingNtB5_15EncodingWrapperNtB5_27SupportsFastDecodeAndEncode17unpadded_multiple(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(56) %0) unnamed_addr #8 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.b = load i64, ptr %i.a, align 8, !noundef !4
  ret i64 %i.b
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable
define internal noundef i64 @_RNvXs3_NtNtCsh036I4OHgIr_6uucore8features8encodingNtB5_15EncodingWrapperNtB5_27SupportsFastDecodeAndEncode23valid_decoding_multiple(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(56) %0) unnamed_addr #8 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.b = load i64, ptr %i.a, align 8, !noundef !4
  ret i64 %i.b
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable
define internal { ptr, i64 } @_RNvXs3_NtNtCsh036I4OHgIr_6uucore8features8encodingNtB5_15EncodingWrapperNtB5_27SupportsFastDecodeAndEncode8alphabet(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(56) %0) unnamed_addr #8 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = load ptr, ptr %i.a, align 8, !nonnull !4, !noundef !4
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.d = load i64, ptr %i.c, align 8, !noundef !4
  %i.e = insertvalue { ptr, i64 } poison, ptr %i.b, 0
  %i.f = insertvalue { ptr, i64 } %i.e, i64 %i.d, 1
  ret { ptr, i64 } %i.f
}

; Function Attrs: nounwind nonlazybind uwtable
define internal noundef ptr @_RNvXs4_NtNtNtCs7tKScEop1B6_5alloc2io8buffered9bufreaderINtB5_9BufReaderNtNtCs2vKOLqTMYjT_3std2fs4FileENtNtB9_4read4Read10read_exactCscxmO3cvmuC8_9uu_base32(ptr noalias nofree noundef align 8 dereferenceable(48) %0, ptr noalias nofree noundef nonnull %1, i64 noundef range(i64 0, -9223372036854775808) %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 6 uses
  %i.b = alloca [32 x i8], align 8                ; 8 uses
end_hunk_0
