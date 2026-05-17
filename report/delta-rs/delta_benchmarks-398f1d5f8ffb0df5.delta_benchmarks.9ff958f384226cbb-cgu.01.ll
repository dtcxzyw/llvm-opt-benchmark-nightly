inline.NumInlined: 8088
inline.NumDeleted: 2392
begin_hunk_0_@_RNvXsBG_NtCs4lawaffTVVK_9sqlparser3astNtB6_10ExportDataNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone:bb.a
  %.sroa.0.0 = phi i64 [ %.sroa.0.0.copyload, %bb.h ], [ -9223372036854775808, %bb.d ]
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.d, i64 24, i1 false)
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 48
  store ptr %i.i, ptr %i.t, align 8
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 %.sroa.0.0, ptr %i.u, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.5.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.5, i64 16, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.5)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  ret void

bb.g:                                             ; preds = %bb.e
  %i.v = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxNtNtNtCs4lawaffTVVK_9sqlparser3ast5query5QueryEECsdJxlLsGgtXr_16delta_benchmarks(ptr noalias noundef align 8 dereferenceable(8) %i.c) #23
          to label %.body unwind label %bb.i

bb.h:                                             ; preds = %bb.e
  %.sroa.0.0.copyload = load i64, ptr %i.a, align 8, !noalias !12674
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.5, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.4.0..sroa_idx, i64 16, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !12665
  br label %bb.f

bb.i:                                             ; preds = %bb.g, %.body
  %i.w = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #22
  unreachable

bb.j:                                             ; preds = %.body
  resume { ptr, i32 } %.pn
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @_RNvXsBQ_NtCs4lawaffTVVK_9sqlparser3astNtB6_10CreateUserNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone(ptr dead_on_unwind noalias noundef nonnull writable writeonly align 8 captures(none) dereferenceable(136) %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(136) %1) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 4 uses
  %i.b = alloca [24 x i8], align 8                ; 4 uses
  %i.c = alloca [32 x i8], align 8                ; 6 uses
  %i.d = alloca [64 x i8], align 8                ; 7 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 128
  %i.f = load i8, ptr %i.e, align 8, !range !2711, !noundef !3
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 129
  %i.h = load i8, ptr %i.g, align 1, !range !2711, !noundef !3
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  call void @_RNvXs4_NtCs6Po7BT7Nknu_5alloc6stringNtB5_6StringNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.d, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %1)
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.j = load i32, ptr %i.i, align 8, !range !7691, !noundef !3
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.l = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.l, ptr noundef nonnull align 8 dereferenceable(32) %i.k, i64 32, i1 false)
  %i.m = getelementptr inbounds nuw i8, ptr %i.d, i64 56
  store i32 %i.j, ptr %i.m, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 64
  invoke void @_RNvXsa_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VecNtNtNtNtCs4lawaffTVVK_9sqlparser3ast7helpers17key_value_options14KeyValueOptionENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCsdJxlLsGgtXr_16delta_benchmarks(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.b, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.n)
          to label %bb.c unwind label %bb.b

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtNtCs4lawaffTVVK_9sqlparser3ast7helpers17key_value_options15KeyValueOptionsECsdJxlLsGgtXr_16delta_benchmarks.exit: ; preds = %bb.d, %bb.b
  %.pn = phi { ptr, i32 } [ %i.o, %bb.b ], [ %i.v, %bb.d ]
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsdJxlLsGgtXr_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(64) %i.d)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs4lawaffTVVK_9sqlparser3ast5IdentECsdJxlLsGgtXr_16delta_benchmarks.exit unwind label %bb.f

bb.b:                                             ; preds = %bb.a
  %i.o = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtNtCs4lawaffTVVK_9sqlparser3ast7helpers17key_value_options15KeyValueOptionsECsdJxlLsGgtXr_16delta_benchmarks.exit

bb.c:                                             ; preds = %bb.a
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 88
  %i.q = load i8, ptr %i.p, align 8, !range !2711, !noundef !3
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.c, ptr noundef nonnull align 8 dereferenceable(24) %i.b, i64 24, i1 false)
  %i.r = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  store i8 %i.q, ptr %i.r, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 130
  %i.t = load i8, ptr %i.s, align 2, !range !2711, !noundef !3
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 96
  invoke void @_RNvXsa_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VecNtNtNtNtCs4lawaffTVVK_9sqlparser3ast7helpers17key_value_options14KeyValueOptionENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCsdJxlLsGgtXr_16delta_benchmarks(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.a, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.u)
          to label %bb.e unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.v = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtNtNtCs4lawaffTVVK_9sqlparser3ast7helpers17key_value_options14KeyValueOptionEECsdJxlLsGgtXr_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.c)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtNtCs4lawaffTVVK_9sqlparser3ast7helpers17key_value_options15KeyValueOptionsECsdJxlLsGgtXr_16delta_benchmarks.exit unwind label %bb.f

bb.e:                                             ; preds = %bb.c
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 120
  %i.x = load i8, ptr %i.w, align 8, !range !2711, !noundef !3
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 96
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.y, ptr noundef nonnull align 8 dereferenceable(24) %i.a, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 128
  store i8 %i.f, ptr %i.z, align 8
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 129
  store i8 %i.h, ptr %i.aa, align 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %0, ptr noundef nonnull align 8 dereferenceable(64) %i.d, i64 64, i1 false)
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 64
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.ab, ptr noundef nonnull align 8 dereferenceable(32) %i.c, i64 32, i1 false)
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 130
  store i8 %i.t, ptr %i.ac, align 2
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 120
  store i8 %i.x, ptr %.sroa.4.0..sroa_idx, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  ret void

bb.f:                                             ; preds = %bb.d, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtNtCs4lawaffTVVK_9sqlparser3ast7helpers17key_value_options15KeyValueOptionsECsdJxlLsGgtXr_16delta_benchmarks.exit
  %i.ad = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #22
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs4lawaffTVVK_9sqlparser3ast5IdentECsdJxlLsGgtXr_16delta_benchmarks.exit: ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtNtCs4lawaffTVVK_9sqlparser3ast7helpers17key_value_options15KeyValueOptionsECsdJxlLsGgtXr_16delta_benchmarks.exit
  resume { ptr, i32 } %.pn
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc { ptr, ptr } @_RNvXsBw_NtCs4lawaffTVVK_9sqlparser3astNtB6_8MemberOfNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone(ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(16) %0) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [328 x i8], align 8               ; 4 uses
  %i.b = alloca [328 x i8], align 8               ; 4 uses
  %i.c = alloca [8 x i8], align 8                 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !12675)
  %i.d = tail call noundef nonnull align 8 ptr @_RNvMs_NtCs6Po7BT7Nknu_5alloc5boxedINtB4_3BoxNtNtCs4lawaffTVVK_9sqlparser3ast4ExprE13new_uninit_inCsdJxlLsGgtXr_16delta_benchmarks(), !noalias !12675, !inline_history !11024 ; 4 uses
  %i.e = load ptr, ptr %0, align 8, !alias.scope !12675, !nonnull !3, !noundef !3
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !12678
  invoke fastcc void @_RNvXs6H_NtCs4lawaffTVVK_9sqlparser3astNtB6_4ExprNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone(ptr noalias noundef align 8 captures(none) dereferenceable(328) %i.b, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(328) %i.e) #28
          to label %_RNvXsd_NtCs6Po7BT7Nknu_5alloc5boxedINtB5_3BoxNtNtCs4lawaffTVVK_9sqlparser3ast4ExprENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCsdJxlLsGgtXr_16delta_benchmarks.exit unwind label %bb.b, !inline_history !11028

common.resume:                                    ; preds = %.body, %bb.b
  %common.resume.op = phi { ptr, i32 } [ %i.f, %bb.b ], [ %eh.lpad-body, %.body ]
  resume { ptr, i32 } %common.resume.op

bb.b:                                             ; preds = %bb.a
  %i.f = landingpad { ptr, i32 }
          cleanup
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %i.d, i64 noundef 328, i64 noundef 8) #24, !noalias !12675
  br label %common.resume

_RNvXsd_NtCs6Po7BT7Nknu_5alloc5boxedINtB5_3BoxNtNtCs4lawaffTVVK_9sqlparser3ast4ExprENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCsdJxlLsGgtXr_16delta_benchmarks.exit: ; preds = %bb.a
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(328) %i.d, ptr noundef nonnull align 8 dereferenceable(328) %i.b, i64 328, i1 false), !noalias !12678
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !12678
  store ptr %i.d, ptr %i.c, align 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !12681)
  %i.g = invoke noundef nonnull align 8 ptr @_RNvMs_NtCs6Po7BT7Nknu_5alloc5boxedINtB4_3BoxNtNtCs4lawaffTVVK_9sqlparser3ast4ExprE13new_uninit_inCsdJxlLsGgtXr_16delta_benchmarks()
          to label %.noexc unwind label %bb.d, !inline_history !11024 ; 3 uses

.noexc:                                           ; preds = %_RNvXsd_NtCs6Po7BT7Nknu_5alloc5boxedINtB5_3BoxNtNtCs4lawaffTVVK_9sqlparser3ast4ExprENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCsdJxlLsGgtXr_16delta_benchmarks.exit
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.i = load ptr, ptr %i.h, align 8, !alias.scope !12681, !nonnull !3, !noundef !3
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !12684
  invoke fastcc void @_RNvXs6H_NtCs4lawaffTVVK_9sqlparser3astNtB6_4ExprNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone(ptr noalias noundef align 8 captures(none) dereferenceable(328) %i.a, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(328) %i.i) #28
          to label %bb.e unwind label %bb.c, !inline_history !11028

bb.c:                                             ; preds = %.noexc
  %i.j = landingpad { ptr, i32 }
          cleanup
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %i.g, i64 noundef 328, i64 noundef 8) #24, !noalias !12681
  br label %.body

bb.d:                                             ; preds = %_RNvXsd_NtCs6Po7BT7Nknu_5alloc5boxedINtB5_3BoxNtNtCs4lawaffTVVK_9sqlparser3ast4ExprENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCsdJxlLsGgtXr_16delta_benchmarks.exit
  %i.k = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %bb.c, %bb.d
  %eh.lpad-body = phi { ptr, i32 } [ %i.k, %bb.d ], [ %i.j, %bb.c ]
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxNtNtCs4lawaffTVVK_9sqlparser3ast4ExprEECsdJxlLsGgtXr_16delta_benchmarks(ptr noalias noundef align 8 dereferenceable(8) %i.c) #23
          to label %common.resume unwind label %bb.f

bb.e:                                             ; preds = %.noexc
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(328) %i.g, ptr noundef nonnull align 8 dereferenceable(328) %i.a, i64 328, i1 false), !noalias !12684
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !12684
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  %i.l = insertvalue { ptr, ptr } poison, ptr %i.d, 0
  %i.m = insertvalue { ptr, ptr } %i.l, ptr %i.g, 1
  ret { ptr, ptr } %i.m

bb.f:                                             ; preds = %.body
  %i.n = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #22
  unreachable
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @_RNvXsCU_NtCs4lawaffTVVK_9sqlparser3astNtB6_15VacuumStatementNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone(ptr dead_on_unwind noalias noundef nonnull writable writeonly align 8 captures(none) dereferenceable(80) %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(80) %1) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [48 x i8], align 8                ; 5 uses
  %.sroa.5 = alloca [40 x i8], align 8            ; 4 uses
  %i.b = alloca [24 x i8], align 8                ; 6 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 72
  %2 = load <4 x i8>, ptr %i.c, align 8
  %3 = getelementptr inbounds nuw i8, ptr %1, i64 76
  %4 = load i8, ptr %3, align 4, !range !2711, !noundef !3
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.d = load i64, ptr %1, align 8, !range !43, !noundef !3
  %.not = icmp eq i64 %i.d, -9223372036854775808
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.g = load ptr, ptr %i.f, align 8, !alias.scope !12687, !noalias !12690, !nonnull !3, !noundef !3
  %i.h = load i64, ptr %i.e, align 8, !alias.scope !12687, !noalias !12690, !noundef !3
  call fastcc void @_RINvXNvMNtCs6Po7BT7Nknu_5alloc5sliceSp9to_vec_inNtNtCs4lawaffTVVK_9sqlparser3ast14ObjectNamePartNtB3_10ConvertVec6to_vecNtNtB8_5alloc6GlobalECsdJxlLsGgtXr_16delta_benchmarks(ptr noalias noundef align 8 captures(none) dereferenceable(24) %i.b, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) %i.g, i64 noundef %i.h) #28
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  store i64 -9223372036854775808, ptr %i.b, align 8
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.5)
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %i.j = load i64, ptr %i.i, align 8, !range !2380, !noundef !3
  %.not4 = icmp eq i64 %i.j, -9223372036854775787
  br i1 %.not4, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  invoke fastcc void @_RNvXsl_NtNtCs4lawaffTVVK_9sqlparser3ast5valueNtB5_5ValueNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone(ptr noalias noundef align 8 captures(none) dereferenceable(48) %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.i)
          to label %bb.h unwind label %bb.g

bb.f:                                             ; preds = %bb.d, %bb.h
  %.sroa.0.0 = phi i64 [ %.sroa.0.0.copyload1, %bb.h ], [ -9223372036854775787, %bb.d ]
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 77
  %i.l = load i8, ptr %i.k, align 1, !range !2711, !noundef !3
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 72
  store <4 x i8> %2, ptr %i.m, align 8
  %5 = getelementptr inbounds nuw i8, ptr %0, i64 76
  store i8 %4, ptr %5, align 4
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.b, i64 24, i1 false)
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 %.sroa.0.0, ptr %i.n, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.5.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.5, i64 40, i1 false)
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 77
  store i8 %i.l, ptr %i.o, align 1
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.5)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  ret void

bb.g:                                             ; preds = %bb.e
  %i.p = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtCs4lawaffTVVK_9sqlparser3ast10ObjectNameEECsdJxlLsGgtXr_16delta_benchmarks(ptr noalias noundef align 8 dereferenceable(24) %i.b) #23
          to label %bb.j unwind label %bb.i

bb.h:                                             ; preds = %bb.e
  %.sroa.0.0.copyload1 = load i64, ptr %i.a, align 8
  %.sroa.5.0..sroa_idx2 = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.5, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.5.0..sroa_idx2, i64 40, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.f

bb.i:                                             ; preds = %bb.g
  %i.q = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #22
  unreachable

bb.j:                                             ; preds = %bb.g
  resume { ptr, i32 } %i.p
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @_RNvXsD_NtCs4lawaffTVVK_9sqlparser9tokenizerNtB5_10WhitespaceNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone(ptr dead_on_unwind noalias noundef nonnull writable writeonly align 8 captures(none) dereferenceable(48) %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %1) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 4 uses
  %i.b = alloca [24 x i8], align 8                ; 5 uses
  %i.c = load i64, ptr %1, align 8, !range !3696, !noundef !3 ; 3 uses
  %i.d = icmp ne i64 %i.c, -9223372036854775805
  tail call void @llvm.assume(i1 %i.d)
  %i.e = xor i64 %i.c, -9223372036854775808
  %i.f = icmp slt i64 %i.c, 0
  %i.g = select i1 %i.f, i64 %i.e, i64 3
  switch i64 %i.g, label %bb.b [
    i64 0, label %bb.c
    i64 1, label %bb.d
    i64 2, label %bb.e
    i64 3, label %bb.f
    i64 4, label %bb.g
  ]

bb.b:                                             ; preds = %bb.a
  unreachable

bb.c:                                             ; preds = %bb.a
  store i64 -9223372036854775808, ptr %0, align 8
  br label %bb.h

bb.d:                                             ; preds = %bb.a
  store i64 -9223372036854775807, ptr %0, align 8
  br label %bb.h

bb.e:                                             ; preds = %bb.a
  store i64 -9223372036854775806, ptr %0, align 8
  br label %bb.h

bb.f:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 24
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @_RNvXs4_NtCs6Po7BT7Nknu_5alloc6stringNtB5_6StringNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.b, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %1)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  invoke void @_RNvXs4_NtCs6Po7BT7Nknu_5alloc6stringNtB5_6StringNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.h)
          to label %bb.j unwind label %bb.i

bb.g:                                             ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call void @_RNvXs4_NtCs6Po7BT7Nknu_5alloc6stringNtB5_6StringNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.j, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.i)
  store i64 -9223372036854775804, ptr %0, align 8
  br label %bb.h

bb.h:                                             ; preds = %bb.j, %bb.g, %bb.e, %bb.d, %bb.c
  ret void

bb.i:                                             ; preds = %bb.f
  %i.k = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsdJxlLsGgtXr_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.b)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECsdJxlLsGgtXr_16delta_benchmarks.exit unwind label %bb.k

bb.j:                                             ; preds = %bb.f
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.b, i64 24, i1 false)
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.l, ptr noundef nonnull align 8 dereferenceable(24) %i.a, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %bb.h

bb.k:                                             ; preds = %bb.i
  %i.m = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #22
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECsdJxlLsGgtXr_16delta_benchmarks.exit: ; preds = %bb.i
  resume { ptr, i32 } %i.k
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @_RNvXsF_NtNtCs4lawaffTVVK_9sqlparser3ast5valueNtB5_13DateTimeFieldNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone(ptr dead_on_unwind noalias noundef nonnull writable writeonly align 8 captures(none) dereferenceable(72) %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(72) %1) unnamed_addr #1 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 5 uses
  %.sroa.4 = alloca [48 x i8], align 8            ; 3 uses
  %.sroa.03 = alloca [56 x i8], align 8           ; 5 uses
  %i.b = load i64, ptr %1, align 8, !range !2835, !noundef !3
  switch i64 %i.b, label %default.unreachable7 [
    i64 0, label %bb.b
    i64 1, label %bb.c
    i64 2, label %bb.d
    i64 3, label %bb.e
    i64 4, label %bb.f
    i64 5, label %bb.g
    i64 6, label %bb.h
    i64 7, label %bb.i
    i64 8, label %bb.j
    i64 9, label %bb.k
    i64 10, label %bb.l
    i64 11, label %bb.m
    i64 12, label %bb.n
    i64 13, label %bb.o
    i64 14, label %bb.p
    i64 15, label %bb.q
    i64 16, label %bb.r
    i64 17, label %bb.s
    i64 18, label %bb.t
    i64 19, label %bb.u
    i64 20, label %bb.v
    i64 21, label %bb.w
    i64 22, label %bb.x
    i64 23, label %bb.y
    i64 24, label %bb.z
    i64 25, label %bb.aa
    i64 26, label %bb.ab
    i64 27, label %bb.ac
    i64 28, label %bb.ad
    i64 29, label %bb.ae
    i64 30, label %bb.af
    i64 31, label %bb.ag
    i64 32, label %bb.ah
    i64 33, label %bb.ai
    i64 34, label %bb.aj
    i64 35, label %bb.ak
    i64 36, label %bb.al
    i64 37, label %bb.am
    i64 38, label %bb.an
    i64 39, label %bb.ao
    i64 40, label %bb.ap
    i64 41, label %bb.aq
    i64 42, label %bb.ar
    i64 43, label %bb.as
  ]

default.unreachable7:                             ; preds = %bb.a
  unreachable

bb.b:                                             ; preds = %bb.a
  store i64 0, ptr %0, align 8
  br label %bb.at

bb.c:                                             ; preds = %bb.a
  store i64 1, ptr %0, align 8
  br label %bb.at

bb.d:                                             ; preds = %bb.a
  store i64 2, ptr %0, align 8
  br label %bb.at

bb.e:                                             ; preds = %bb.a
  store i64 3, ptr %0, align 8
  br label %bb.at

bb.f:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.d = load i64, ptr %i.c, align 8, !range !43, !noundef !3
  %.not = icmp eq i64 %i.d, -9223372036854775808
  br i1 %.not, label %bb.av, label %bb.au

bb.g:                                             ; preds = %bb.a
  store i64 5, ptr %0, align 8
  br label %bb.at

bb.h:                                             ; preds = %bb.a
  store i64 6, ptr %0, align 8
  br label %bb.at

bb.i:                                             ; preds = %bb.a
  store i64 7, ptr %0, align 8
  br label %bb.at
end_hunk_0
begin_hunk_1_@_RNvXsa_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VecNtNtCs4lawaffTVVK_9sqlparser3ast6ActionENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCsdJxlLsGgtXr_16delta_benchmarks:bb.a
  %i.as = load i8, ptr %i.ar, align 1, !range !4101, !alias.scope !15013, !noalias !15016, !noundef !3
  br label %_RNvXsf9_NtCs4lawaffTVVK_9sqlparser3astNtB6_6ActionNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit

bb.m:                                             ; preds = %bb.d
  %i.at = getelementptr inbounds nuw i8, ptr %.sroa.012.053, i64 1
  %i.au = load i8, ptr %i.at, align 1, !range !7748, !alias.scope !15013, !noalias !15016, !noundef !3
  br label %_RNvXsf9_NtCs4lawaffTVVK_9sqlparser3astNtB6_6ActionNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit

bb.n:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.510.i)
  %i.av = getelementptr inbounds nuw i8, ptr %.sroa.012.053, i64 8 ; 2 uses
  %i.aw = load i64, ptr %i.av, align 8, !range !43, !alias.scope !15013, !noalias !15016, !noundef !3
  %.not21.i = icmp eq i64 %i.aw, -9223372036854775808
  br i1 %.not21.i, label %bb.u, label %bb.t

bb.o:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !15030
  %i.ax = getelementptr inbounds nuw i8, ptr %.sroa.012.053, i64 24
  %i.ay = getelementptr inbounds nuw i8, ptr %.sroa.012.053, i64 16
  %i.az = load ptr, ptr %i.ay, align 8, !alias.scope !15034, !noalias !15037, !nonnull !3, !noundef !3
  %i.ba = load i64, ptr %i.ax, align 8, !alias.scope !15034, !noalias !15037, !noundef !3
  invoke fastcc void @_RINvXNvMNtCs6Po7BT7Nknu_5alloc5sliceSp9to_vec_inNtNtCs4lawaffTVVK_9sqlparser3ast14ObjectNamePartNtB3_10ConvertVec6to_vecNtNtB8_5alloc6GlobalECsdJxlLsGgtXr_16delta_benchmarks(ptr noalias noundef align 8 captures(none) dereferenceable(24) %i.b, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) %i.az, i64 noundef %i.ba) #28
          to label %.noexc3 unwind label %bb.aa, !inline_history !15028

.noexc3:                                          ; preds = %bb.o
  %.sroa.033.0.copyload = load i64, ptr %i.b, align 8, !noalias !15039
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.56, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.434.0..sroa_idx, i64 16, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !15030
  br label %_RNvXsf9_NtCs4lawaffTVVK_9sqlparser3astNtB6_6ActionNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit

bb.p:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.514.i)
  %i.bb = getelementptr inbounds nuw i8, ptr %.sroa.012.053, i64 8 ; 2 uses
  %i.bc = load i64, ptr %i.bb, align 8, !range !43, !alias.scope !15013, !noalias !15016, !noundef !3
  %.not20.i = icmp eq i64 %i.bc, -9223372036854775808
  br i1 %.not20.i, label %bb.w, label %bb.v

bb.q:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.518.i)
  %i.bd = getelementptr inbounds nuw i8, ptr %.sroa.012.053, i64 8 ; 2 uses
  %i.be = load i64, ptr %i.bd, align 8, !range !43, !alias.scope !15013, !noalias !15016, !noundef !3
  %.not.i1 = icmp eq i64 %i.be, -9223372036854775808
  br i1 %.not.i1, label %bb.y, label %bb.x

bb.r:                                             ; preds = %bb.j
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !15040
  invoke void @_RNvXsa_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VecNtNtCs4lawaffTVVK_9sqlparser3ast5IdentENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCsdJxlLsGgtXr_16delta_benchmarks(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.d, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.ao)
          to label %.noexc4 unwind label %bb.aa, !inline_history !15041

.noexc4:                                          ; preds = %bb.r
  %.sroa.03.0.copyload.i = load i64, ptr %i.d, align 8, !noalias !15040
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.5.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.5.0..sroa_idx.i, i64 16, i1 false), !noalias !15040
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !15040
  br label %bb.s

bb.s:                                             ; preds = %.noexc4, %bb.j
  %.sroa.03.0.i = phi i64 [ %.sroa.03.0.copyload.i, %.noexc4 ], [ -9223372036854775808, %bb.j ]
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.56, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.5.i, i64 16, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.5.i)
  br label %_RNvXsf9_NtCs4lawaffTVVK_9sqlparser3astNtB6_6ActionNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit

bb.t:                                             ; preds = %bb.n
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !15040
  invoke void @_RNvXsa_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VecNtNtCs4lawaffTVVK_9sqlparser3ast5IdentENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCsdJxlLsGgtXr_16delta_benchmarks(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.e, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.av)
          to label %.noexc5 unwind label %bb.aa, !inline_history !15041

.noexc5:                                          ; preds = %bb.t
  %.sroa.08.0.copyload.i = load i64, ptr %i.e, align 8, !noalias !15040
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.510.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.510.0..sroa_idx.i, i64 16, i1 false), !noalias !15040
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !15040
  br label %bb.u

bb.u:                                             ; preds = %.noexc5, %bb.n
  %.sroa.08.0.i = phi i64 [ %.sroa.08.0.copyload.i, %.noexc5 ], [ -9223372036854775808, %bb.n ]
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.56, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.510.i, i64 16, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.510.i)
  br label %_RNvXsf9_NtCs4lawaffTVVK_9sqlparser3astNtB6_6ActionNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit

bb.v:                                             ; preds = %bb.p
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !15040
  invoke void @_RNvXsa_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VecNtNtCs4lawaffTVVK_9sqlparser3ast5IdentENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCsdJxlLsGgtXr_16delta_benchmarks(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.f, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.bb)
          to label %.noexc6 unwind label %bb.aa, !inline_history !15041

.noexc6:                                          ; preds = %bb.v
  %.sroa.012.0.copyload.i = load i64, ptr %i.f, align 8, !noalias !15040
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.514.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.514.0..sroa_idx.i, i64 16, i1 false), !noalias !15040
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !15040
  br label %bb.w

bb.w:                                             ; preds = %.noexc6, %bb.p
  %.sroa.012.0.i = phi i64 [ %.sroa.012.0.copyload.i, %.noexc6 ], [ -9223372036854775808, %bb.p ]
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.56, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.514.i, i64 16, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.514.i)
  br label %_RNvXsf9_NtCs4lawaffTVVK_9sqlparser3astNtB6_6ActionNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit

bb.x:                                             ; preds = %bb.q
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !15040
  invoke void @_RNvXsa_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VecNtNtCs4lawaffTVVK_9sqlparser3ast5IdentENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCsdJxlLsGgtXr_16delta_benchmarks(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.g, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.bd)
          to label %.noexc7 unwind label %bb.aa, !inline_history !15041

.noexc7:                                          ; preds = %bb.x
  %.sroa.016.0.copyload.i = load i64, ptr %i.g, align 8, !noalias !15040
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.518.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.518.0..sroa_idx.i, i64 16, i1 false), !noalias !15040
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !15040
  br label %bb.y

bb.y:                                             ; preds = %.noexc7, %bb.q
  %.sroa.016.0.i = phi i64 [ %.sroa.016.0.copyload.i, %.noexc7 ], [ -9223372036854775808, %bb.q ]
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.56, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.518.i, i64 16, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.518.i)
  br label %_RNvXsf9_NtCs4lawaffTVVK_9sqlparser3astNtB6_6ActionNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit

_RNvXsf9_NtCs4lawaffTVVK_9sqlparser3astNtB6_6ActionNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit: ; preds = %bb.d, %bb.d, %bb.d, %bb.d, %bb.d, %bb.d, %bb.d, %bb.d, %bb.d, %bb.d, %bb.d, %bb.d, %bb.d, %bb.d, %bb.d, %bb.d, %bb.d, %bb.d, %bb.d, %bb.d, %bb.d, %bb.d, %bb.d, %bb.d, %bb.d, %bb.d, %bb.m, %bb.l, %bb.i, %bb.h, %bb.f, %bb.y, %bb.w, %bb.u, %bb.s, %.noexc3, %bb.k, %.noexc, %bb.e, %bb.d
  %.sroa.43.1 = phi i8 [ %.sroa.43.052, %bb.d ], [ %.val.i2, %bb.e ], [ %i.au, %bb.m ], [ %.sroa.43.052, %bb.d ], [ %.sroa.43.052, %bb.d ], [ %.sroa.43.052, %bb.d ], [ %.sroa.43.052, %bb.d ], [ %.sroa.43.052, %bb.d ], [ %.sroa.43.052, %bb.d ], [ %.sroa.43.052, %.noexc ], [ %.sroa.43.052, %bb.d ], [ %.sroa.43.052, %bb.d ], [ %.sroa.43.052, %bb.d ], [ %i.af, %bb.f ], [ %i.al, %bb.h ], [ %.sroa.43.052, %bb.d ], [ %.sroa.43.052, %bb.d ], [ %.sroa.43.052, %bb.d ], [ %.sroa.43.052, %bb.s ], [ %.val28.i, %bb.k ], [ %.sroa.43.052, %bb.d ], [ %.sroa.43.052, %bb.d ], [ %i.an, %bb.i ], [ %i.as, %bb.l ], [ %.sroa.43.052, %bb.d ], [ %.sroa.43.052, %bb.d ], [ %.sroa.43.052, %bb.d ], [ %.sroa.43.052, %bb.d ], [ %.sroa.43.052, %bb.d ], [ %.sroa.43.052, %bb.d ], [ %.sroa.43.052, %bb.u ], [ %.sroa.43.052, %bb.d ], [ %.sroa.43.052, %bb.d ], [ %.sroa.43.052, %.noexc3 ], [ %.sroa.43.052, %bb.w ], [ %.sroa.43.052, %bb.d ], [ %.sroa.43.052, %bb.d ], [ %.sroa.43.052, %bb.d ], [ %.sroa.43.052, %bb.y ], [ %.sroa.43.052, %bb.d ] ; 2 uses
  %.sroa.5014.1 = phi i64 [ %.sroa.5014.054, %bb.d ], [ %.sroa.5014.054, %bb.e ], [ %.sroa.5014.054, %bb.m ], [ %.sroa.5014.054, %bb.d ], [ %.sroa.5014.054, %bb.d ], [ %.sroa.5014.054, %bb.d ], [ %.sroa.5014.054, %bb.d ], [ %.sroa.5014.054, %bb.d ], [ %.sroa.5014.054, %bb.d ], [ %.sroa.031.0.copyload, %.noexc ], [ %.sroa.5014.054, %bb.d ], [ %.sroa.5014.054, %bb.d ], [ %.sroa.5014.054, %bb.d ], [ %.sroa.5014.054, %bb.f ], [ %.sroa.5014.054, %bb.h ], [ %.sroa.5014.054, %bb.d ], [ %.sroa.5014.054, %bb.d ], [ %.sroa.5014.054, %bb.d ], [ %.sroa.03.0.i, %bb.s ], [ %.sroa.5014.054, %bb.k ], [ %.sroa.5014.054, %bb.d ], [ %.sroa.5014.054, %bb.d ], [ %.sroa.5014.054, %bb.i ], [ %.sroa.5014.054, %bb.l ], [ %.sroa.5014.054, %bb.d ], [ %.sroa.5014.054, %bb.d ], [ %.sroa.5014.054, %bb.d ], [ %.sroa.5014.054, %bb.d ], [ %.sroa.5014.054, %bb.d ], [ %.sroa.5014.054, %bb.d ], [ %.sroa.08.0.i, %bb.u ], [ %.sroa.5014.054, %bb.d ], [ %.sroa.5014.054, %bb.d ], [ %.sroa.033.0.copyload, %.noexc3 ], [ %.sroa.012.0.i, %bb.w ], [ %.sroa.5014.054, %bb.d ], [ %.sroa.5014.054, %bb.d ], [ %.sroa.5014.054, %bb.d ], [ %.sroa.016.0.i, %bb.y ], [ %.sroa.5014.054, %bb.d ] ; 2 uses
  %i.bf = getelementptr inbounds nuw [32 x i8], ptr %i.s, i64 %.sroa.7.050 ; 4 uses
  store i8 %i.ac, ptr %i.bf, align 8, !noalias !15042
  %.sroa.427.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bf, i64 1
  store i8 %.sroa.43.1, ptr %.sroa.427.0..sroa_idx, align 1, !noalias !15042
  %.sroa.629.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bf, i64 8
  store i64 %.sroa.5014.1, ptr %.sroa.629.0..sroa_idx, align 8, !noalias !15042
  %.sroa.730.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bf, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.730.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.56, i64 16, i1 false)
  %i.bg = icmp eq i64 %i.y, 0
  br i1 %i.bg, label %_RINvXNvMNtCs6Po7BT7Nknu_5alloc5sliceSp9to_vec_inNtNtCs4lawaffTVVK_9sqlparser3ast6ActionNtB3_10ConvertVec6to_vecNtNtB8_5alloc6GlobalECsdJxlLsGgtXr_16delta_benchmarks.exit, label %bb.c

bb.z:                                             ; preds = %bb.aa
  %i.bh = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #22, !noalias !15042, !inline_history !15043
  unreachable

bb.aa:                                            ; preds = %bb.r, %bb.t, %bb.v, %bb.x, %bb.o, %bb.g
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  store i64 %.sroa.7.050, ptr %i.v, align 8, !noalias !15042
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtCs4lawaffTVVK_9sqlparser3ast6ActionEECsdJxlLsGgtXr_16delta_benchmarks(ptr noalias noundef align 8 dereferenceable(24) %i.h) #23
          to label %bb.ab unwind label %bb.z, !noalias !15042, !inline_history !15043

bb.ab:                                            ; preds = %bb.aa
  resume { ptr, i32 } %lpad.loopexit

_RINvXNvMNtCs6Po7BT7Nknu_5alloc5sliceSp9to_vec_inNtNtCs4lawaffTVVK_9sqlparser3ast6ActionNtB3_10ConvertVec6to_vecNtNtB8_5alloc6GlobalECsdJxlLsGgtXr_16delta_benchmarks.exit: ; preds = %_RNvXsf9_NtCs4lawaffTVVK_9sqlparser3astNtB6_6ActionNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit, %bb.c, %_RNvMs4_NtCs6Po7BT7Nknu_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsdJxlLsGgtXr_16delta_benchmarks.exit
  store i64 %i.l, ptr %i.v, align 8, !noalias !15009
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.h, i64 24, i1 false), !noalias !15044
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !15009
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXsa_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VecNtNtCs4lawaffTVVK_9sqlparser3ast7DeclareENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCsdJxlLsGgtXr_16delta_benchmarks(ptr dead_on_unwind noalias noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias noundef readonly align 8 captures(none) dereferenceable(24) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [328 x i8], align 8               ; 4 uses
  %i.b = alloca [328 x i8], align 8               ; 4 uses
  %i.c = alloca [328 x i8], align 8               ; 4 uses
  %i.d = alloca [328 x i8], align 8               ; 4 uses
  %i.e = alloca [328 x i8], align 8               ; 4 uses
  %i.f = alloca [24 x i8], align 8                ; 6 uses
  %i.g = alloca [1400 x i8], align 8              ; 4 uses
  %i.h = alloca [56 x i8], align 8                ; 4 uses
  %i.i = alloca [56 x i8], align 8                ; 7 uses
  %i.j = alloca [24 x i8], align 8                ; 5 uses
  %.sroa.558 = alloca [24 x i8], align 8          ; 4 uses
  %.sroa.659 = alloca [56 x i8], align 8          ; 4 uses
  %i.k = alloca [24 x i8], align 8                ; 7 uses
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.n = load ptr, ptr %i.m, align 8, !nonnull !3, !noundef !3 ; 2 uses
  %i.o = load i64, ptr %i.l, align 8, !noundef !3 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k), !noalias !15045
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !15045
  call void @_RNvMs4_NtCs6Po7BT7Nknu_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsdJxlLsGgtXr_16delta_benchmarks(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.f, i64 noundef range(i64 0, 82351536043346213) %i.o, i1 noundef zeroext false, i64 noundef 8, i64 noundef 112), !noalias !15045
  %i.p = load i64, ptr %i.f, align 8, !range !4, !noalias !15045, !noundef !3
  %i.q = trunc nuw i64 %i.p to i1
  %i.r = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %i.s = load i64, ptr %i.r, align 8, !range !43, !noalias !15045, !noundef !3 ; 5 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.f, i64 16 ; 2 uses
  br i1 %i.q, label %bb.b, label %_RNvMs4_NtCs6Po7BT7Nknu_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsdJxlLsGgtXr_16delta_benchmarks.exit, !prof !10

bb.b:                                             ; preds = %bb.a
  %i.u = load i64, ptr %i.t, align 8, !noalias !15045
  tail call void @_RNvNtCs6Po7BT7Nknu_5alloc7raw_vec12handle_error(i64 noundef %i.s, i64 %i.u) #21, !noalias !15045
  unreachable

_RNvMs4_NtCs6Po7BT7Nknu_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsdJxlLsGgtXr_16delta_benchmarks.exit: ; preds = %bb.a
  %i.v = load ptr, ptr %i.t, align 8, !noalias !15045, !nonnull !3, !noundef !3 ; 2 uses
  %i.w = icmp ule i64 %i.o, %i.s
  tail call void @llvm.assume(i1 %i.w), !noalias !15045
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !15045
  store i64 %i.s, ptr %i.k, align 8, !noalias !15045
  %i.x = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  store ptr %i.v, ptr %i.x, align 8, !noalias !15045
  %i.y = getelementptr inbounds nuw i8, ptr %i.k, i64 16 ; 3 uses
  store i64 0, ptr %i.y, align 8, !noalias !15045
  %i.z = getelementptr inbounds nuw [112 x i8], ptr %i.n, i64 %i.o
  %i.aa = icmp eq i64 %i.s, 0
  br i1 %i.aa, label %_RINvXNvMNtCs6Po7BT7Nknu_5alloc5sliceSp9to_vec_inNtNtCs4lawaffTVVK_9sqlparser3ast7DeclareNtB3_10ConvertVec6to_vecNtNtB8_5alloc6GlobalECsdJxlLsGgtXr_16delta_benchmarks.exit, label %.lr.ph

.lr.ph:                                           ; preds = %_RNvMs4_NtCs6Po7BT7Nknu_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsdJxlLsGgtXr_16delta_benchmarks.exit, %bb.z
  %.sroa.669.0117 = phi ptr [ %.sroa.669.1, %bb.z ], [ undef, %_RNvMs4_NtCs6Po7BT7Nknu_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsdJxlLsGgtXr_16delta_benchmarks.exit ]
  %.sroa.028.0116 = phi ptr [ %i.ad, %bb.z ], [ %i.n, %_RNvMs4_NtCs6Po7BT7Nknu_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsdJxlLsGgtXr_16delta_benchmarks.exit ] ; 9 uses
  %.sroa.7.0115 = phi i64 [ %i.ae, %bb.z ], [ 0, %_RNvMs4_NtCs6Po7BT7Nknu_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsdJxlLsGgtXr_16delta_benchmarks.exit ] ; 3 uses
  %.sroa.10.0114 = phi i64 [ %i.ab, %bb.z ], [ %i.s, %_RNvMs4_NtCs6Po7BT7Nknu_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsdJxlLsGgtXr_16delta_benchmarks.exit ]
  %i.ab = add i64 %.sroa.10.0114, -1              ; 2 uses
  %i.ac = icmp eq ptr %.sroa.028.0116, %i.z
  br i1 %i.ac, label %_RINvXNvMNtCs6Po7BT7Nknu_5alloc5sliceSp9to_vec_inNtNtCs4lawaffTVVK_9sqlparser3ast7DeclareNtB3_10ConvertVec6to_vecNtNtB8_5alloc6GlobalECsdJxlLsGgtXr_16delta_benchmarks.exit, label %bb.c

.loopexit:                                        ; preds = %bb.c
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %bb.ab

bb.c:                                             ; preds = %.lr.ph
  %i.ad = getelementptr inbounds nuw i8, ptr %.sroa.028.0116, i64 112
  %i.ae = add nuw nsw i64 %.sroa.7.0115, 1
  tail call void @llvm.experimental.noalias.scope.decl(metadata !15049)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j), !noalias !15052
  %i.af = getelementptr inbounds nuw i8, ptr %.sroa.028.0116, i64 16
  invoke void @_RNvXsa_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VecNtNtCs4lawaffTVVK_9sqlparser3ast5IdentENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCsdJxlLsGgtXr_16delta_benchmarks(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.j, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.af)
          to label %.noexc unwind label %.loopexit, !inline_history !15054

.noexc:                                           ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !noalias !15052
  %i.ag = getelementptr inbounds nuw i8, ptr %.sroa.028.0116, i64 40 ; 2 uses
  %i.ah = load i8, ptr %i.ag, align 8, !range !1208, !alias.scope !15049, !noalias !15055, !noundef !3
  %.not.i1 = icmp eq i8 %i.ah, 116
  br i1 %.not.i1, label %bb.e, label %bb.d

bb.d:                                             ; preds = %.noexc
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !15052
  invoke fastcc void @_RNvXsh_NtNtCs4lawaffTVVK_9sqlparser3ast9data_typeNtB5_8DataTypeNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone(ptr noalias noundef align 8 captures(none) dereferenceable(56) %i.h, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(56) %i.ag)
          to label %bb.h unwind label %bb.g, !noalias !15055, !inline_history !15054

bb.e:                                             ; preds = %.noexc
  store i8 116, ptr %i.i, align 8, !noalias !15052
  br label %bb.f

bb.f:                                             ; preds = %bb.h, %bb.e
  %i.ai = load i64, ptr %.sroa.028.0116, align 8, !range !158, !alias.scope !15049, !noalias !15055, !noundef !3 ; 4 uses
  %.not3.i = icmp eq i64 %i.ai, 5
  br i1 %.not3.i, label %_RNvXsaD_NtCs4lawaffTVVK_9sqlparser3astNtB6_17DeclareAssignmentNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i, label %bb.i

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtNtCs4lawaffTVVK_9sqlparser3ast9data_type8DataTypeEECsdJxlLsGgtXr_16delta_benchmarks.exit.i: ; preds = %.body6, %bb.t, %bb.g
  %.pn.pn.i = phi { ptr, i32 } [ %i.aj, %bb.g ], [ %.pn.i, %bb.t ], [ %.pn.i, %.body6 ]
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtCs4lawaffTVVK_9sqlparser3ast5IdentEECsdJxlLsGgtXr_16delta_benchmarks(ptr noalias noundef align 8 dereferenceable(24) %i.j) #23
          to label %bb.ab unwind label %bb.y, !noalias !15055, !inline_history !15054

bb.g:                                             ; preds = %bb.d
  %i.aj = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtNtCs4lawaffTVVK_9sqlparser3ast9data_type8DataTypeEECsdJxlLsGgtXr_16delta_benchmarks.exit.i

bb.h:                                             ; preds = %bb.d
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.i, ptr noundef nonnull align 8 dereferenceable(56) %i.h, i64 56, i1 false), !noalias !15052
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !15052
  br label %bb.f

bb.i:                                             ; preds = %bb.f
  %i.ak = getelementptr inbounds nuw i8, ptr %.sroa.028.0116, i64 8 ; 5 uses
  switch i64 %i.ai, label %default.unreachable [
    i64 0, label %bb.j
    i64 1, label %bb.l
    i64 2, label %bb.n
    i64 3, label %bb.p
    i64 4, label %bb.r
  ]

default.unreachable:                              ; preds = %bb.i
  unreachable

bb.j:                                             ; preds = %bb.i
  tail call void @llvm.experimental.noalias.scope.decl(metadata !15056)
  %i.al = invoke noundef nonnull align 8 ptr @_RNvMs_NtCs6Po7BT7Nknu_5alloc5boxedINtB4_3BoxNtNtCs4lawaffTVVK_9sqlparser3ast4ExprE13new_uninit_inCsdJxlLsGgtXr_16delta_benchmarks()
          to label %.noexc24 unwind label %bb.u, !inline_history !15059 ; 3 uses

.noexc24:                                         ; preds = %bb.j
  %i.am = load ptr, ptr %i.ak, align 8, !alias.scope !15056, !noalias !15055, !nonnull !3, !noundef !3
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !15060
  invoke fastcc void @_RNvXs6H_NtCs4lawaffTVVK_9sqlparser3astNtB6_4ExprNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone(ptr noalias noundef align 8 captures(none) dereferenceable(328) %i.a, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(328) %i.am) #28
          to label %.noexc.i unwind label %bb.k, !noalias !15063, !inline_history !15064

bb.k:                                             ; preds = %.noexc24
  %i.an = landingpad { ptr, i32 }
          cleanup
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %i.al, i64 noundef 328, i64 noundef 8) #24, !noalias !15063, !inline_history !15059
  br label %.body6

.noexc.i:                                         ; preds = %.noexc24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(328) %i.al, ptr noundef nonnull align 8 dereferenceable(328) %i.a, i64 328, i1 false), !noalias !15060
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !15060
  br label %_RNvXsaD_NtCs4lawaffTVVK_9sqlparser3astNtB6_17DeclareAssignmentNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i

bb.l:                                             ; preds = %bb.i
  tail call void @llvm.experimental.noalias.scope.decl(metadata !15065)
  %i.ao = invoke noundef nonnull align 8 ptr @_RNvMs_NtCs6Po7BT7Nknu_5alloc5boxedINtB4_3BoxNtNtCs4lawaffTVVK_9sqlparser3ast4ExprE13new_uninit_inCsdJxlLsGgtXr_16delta_benchmarks()
          to label %.noexc19 unwind label %bb.u, !inline_history !15059 ; 3 uses

.noexc19:                                         ; preds = %bb.l
  %i.ap = load ptr, ptr %i.ak, align 8, !alias.scope !15065, !noalias !15055, !nonnull !3, !noundef !3
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !15068
  invoke fastcc void @_RNvXs6H_NtCs4lawaffTVVK_9sqlparser3astNtB6_4ExprNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone(ptr noalias noundef align 8 captures(none) dereferenceable(328) %i.b, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(328) %i.ap) #28
          to label %.noexc10.i unwind label %bb.m, !noalias !15071, !inline_history !15064

bb.m:                                             ; preds = %.noexc19
  %i.aq = landingpad { ptr, i32 }
          cleanup
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %i.ao, i64 noundef 328, i64 noundef 8) #24, !noalias !15071, !inline_history !15059
  br label %.body6

.noexc10.i:                                       ; preds = %.noexc19
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(328) %i.ao, ptr noundef nonnull align 8 dereferenceable(328) %i.b, i64 328, i1 false), !noalias !15068
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !15068
  br label %_RNvXsaD_NtCs4lawaffTVVK_9sqlparser3astNtB6_17DeclareAssignmentNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i

bb.n:                                             ; preds = %bb.i
  tail call void @llvm.experimental.noalias.scope.decl(metadata !15072)
  %i.ar = invoke noundef nonnull align 8 ptr @_RNvMs_NtCs6Po7BT7Nknu_5alloc5boxedINtB4_3BoxNtNtCs4lawaffTVVK_9sqlparser3ast4ExprE13new_uninit_inCsdJxlLsGgtXr_16delta_benchmarks()
          to label %.noexc14 unwind label %bb.u, !inline_history !15059 ; 3 uses

.noexc14:                                         ; preds = %bb.n
  %i.as = load ptr, ptr %i.ak, align 8, !alias.scope !15072, !noalias !15055, !nonnull !3, !noundef !3
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !15075
  invoke fastcc void @_RNvXs6H_NtCs4lawaffTVVK_9sqlparser3astNtB6_4ExprNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone(ptr noalias noundef align 8 captures(none) dereferenceable(328) %i.c, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(328) %i.as) #28
          to label %.noexc11.i unwind label %bb.o, !noalias !15078, !inline_history !15064

bb.o:                                             ; preds = %.noexc14
  %i.at = landingpad { ptr, i32 }
          cleanup
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %i.ar, i64 noundef 328, i64 noundef 8) #24, !noalias !15078, !inline_history !15059
  br label %.body6

.noexc11.i:                                       ; preds = %.noexc14
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(328) %i.ar, ptr noundef nonnull align 8 dereferenceable(328) %i.c, i64 328, i1 false), !noalias !15075
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !15075
  br label %_RNvXsaD_NtCs4lawaffTVVK_9sqlparser3astNtB6_17DeclareAssignmentNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i

bb.p:                                             ; preds = %bb.i
  tail call void @llvm.experimental.noalias.scope.decl(metadata !15079)
  %i.au = invoke noundef nonnull align 8 ptr @_RNvMs_NtCs6Po7BT7Nknu_5alloc5boxedINtB4_3BoxNtNtCs4lawaffTVVK_9sqlparser3ast4ExprE13new_uninit_inCsdJxlLsGgtXr_16delta_benchmarks()
          to label %.noexc9 unwind label %bb.u, !inline_history !15059 ; 3 uses

.noexc9:                                          ; preds = %bb.p
  %i.av = load ptr, ptr %i.ak, align 8, !alias.scope !15079, !noalias !15055, !nonnull !3, !noundef !3
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !15082
  invoke fastcc void @_RNvXs6H_NtCs4lawaffTVVK_9sqlparser3astNtB6_4ExprNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone(ptr noalias noundef align 8 captures(none) dereferenceable(328) %i.d, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(328) %i.av) #28
          to label %.noexc12.i unwind label %bb.q, !noalias !15085, !inline_history !15064

bb.q:                                             ; preds = %.noexc9
  %i.aw = landingpad { ptr, i32 }
          cleanup
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %i.au, i64 noundef 328, i64 noundef 8) #24, !noalias !15085, !inline_history !15059
  br label %.body6

.noexc12.i:                                       ; preds = %.noexc9
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(328) %i.au, ptr noundef nonnull align 8 dereferenceable(328) %i.d, i64 328, i1 false), !noalias !15082
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !15082
  br label %_RNvXsaD_NtCs4lawaffTVVK_9sqlparser3astNtB6_17DeclareAssignmentNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i

bb.r:                                             ; preds = %bb.i
  tail call void @llvm.experimental.noalias.scope.decl(metadata !15086)
  %i.ax = invoke noundef nonnull align 8 ptr @_RNvMs_NtCs6Po7BT7Nknu_5alloc5boxedINtB4_3BoxNtNtCs4lawaffTVVK_9sqlparser3ast4ExprE13new_uninit_inCsdJxlLsGgtXr_16delta_benchmarks()
          to label %.noexc5 unwind label %bb.u, !inline_history !15059 ; 3 uses

.noexc5:                                          ; preds = %bb.r
  %i.ay = load ptr, ptr %i.ak, align 8, !alias.scope !15086, !noalias !15055, !nonnull !3, !noundef !3
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !15089
  invoke fastcc void @_RNvXs6H_NtCs4lawaffTVVK_9sqlparser3astNtB6_4ExprNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone(ptr noalias noundef align 8 captures(none) dereferenceable(328) %i.e, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(328) %i.ay) #28
          to label %.noexc13.i unwind label %bb.s, !noalias !15092, !inline_history !15064

bb.s:                                             ; preds = %.noexc5
  %i.az = landingpad { ptr, i32 }
          cleanup
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %i.ax, i64 noundef 328, i64 noundef 8) #24, !noalias !15092, !inline_history !15059
  br label %.body6

.noexc13.i:                                       ; preds = %.noexc5
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(328) %i.ax, ptr noundef nonnull align 8 dereferenceable(328) %i.e, i64 328, i1 false), !noalias !15089
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !15089
  br label %_RNvXsaD_NtCs4lawaffTVVK_9sqlparser3astNtB6_17DeclareAssignmentNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i

_RNvXsaD_NtCs4lawaffTVVK_9sqlparser3astNtB6_17DeclareAssignmentNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i: ; preds = %.noexc.i, %.noexc10.i, %.noexc11.i, %.noexc12.i, %.noexc13.i, %bb.f
  %.sroa.669.1 = phi ptr [ %.sroa.669.0117, %bb.f ], [ %i.al, %.noexc.i ], [ %i.ao, %.noexc10.i ], [ %i.ar, %.noexc11.i ], [ %i.au, %.noexc12.i ], [ %i.ax, %.noexc13.i ] ; 3 uses
  %2 = getelementptr inbounds nuw i8, ptr %.sroa.028.0116, i64 108
  %3 = load i8, ptr %2, align 4, !range !7748, !alias.scope !15049, !noalias !15055, !noundef !3
  %i.ba = getelementptr inbounds nuw i8, ptr %.sroa.028.0116, i64 104
  %4 = load <4 x i8>, ptr %i.ba, align 8, !alias.scope !15049, !noalias !15055
  %i.bb = getelementptr inbounds nuw i8, ptr %.sroa.028.0116, i64 96 ; 2 uses
  %i.bc = load ptr, ptr %i.bb, align 8, !alias.scope !15049, !noalias !15055, !align !1750, !noundef !3
  %.not5.i = icmp eq ptr %i.bc, null
  br i1 %.not5.i, label %bb.z, label %bb.w

.body6:                                           ; preds = %bb.s, %bb.o, %bb.u, %bb.k, %bb.m, %bb.q, %.body.i
  %.pn.i = phi { ptr, i32 } [ %eh.lpad-body.i, %.body.i ], [ %i.az, %bb.s ], [ %i.aw, %bb.q ], [ %i.at, %bb.o ], [ %i.aq, %bb.m ], [ %i.bf, %bb.u ], [ %i.an, %bb.k ] ; 2 uses
  %i.bd = load i8, ptr %i.i, align 8, !range !1208, !alias.scope !15093, !noalias !15052, !noundef !3
  %i.be = icmp eq i8 %i.bd, 116
  br i1 %i.be, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtNtCs4lawaffTVVK_9sqlparser3ast9data_type8DataTypeEECsdJxlLsGgtXr_16delta_benchmarks.exit.i, label %bb.t

bb.t:                                             ; preds = %.body6
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs4lawaffTVVK_9sqlparser3ast9data_type8DataTypeECsdJxlLsGgtXr_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(56) %i.i)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtNtCs4lawaffTVVK_9sqlparser3ast9data_type8DataTypeEECsdJxlLsGgtXr_16delta_benchmarks.exit.i unwind label %bb.y, !noalias !15055, !inline_history !15096

bb.u:                                             ; preds = %bb.j, %bb.l, %bb.n, %bb.p, %bb.r
  %i.bf = landingpad { ptr, i32 }
          cleanup
  br label %.body6

bb.v:                                             ; preds = %bb.w
  %i.bg = landingpad { ptr, i32 }
          cleanup
  br label %.body.i

.body.i:                                          ; preds = %bb.x, %bb.v
  %eh.lpad-body.i = phi { ptr, i32 } [ %i.bg, %bb.v ], [ %i.bj, %bb.x ]
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtCs4lawaffTVVK_9sqlparser3ast17DeclareAssignmentEECsdJxlLsGgtXr_16delta_benchmarks(i64 %i.ai, ptr %.sroa.669.1) #23
          to label %.body6 unwind label %bb.y, !noalias !15055, !inline_history !15054

bb.w:                                             ; preds = %_RNvXsaD_NtCs4lawaffTVVK_9sqlparser3astNtB6_17DeclareAssignmentNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i
  tail call void @llvm.experimental.noalias.scope.decl(metadata !15097), !noalias !15100
  %i.bh = invoke noundef nonnull align 8 ptr @_RNvMs_NtCs6Po7BT7Nknu_5alloc5boxedINtB4_3BoxNtNtNtCs4lawaffTVVK_9sqlparser3ast5query5QueryE13new_uninit_inCsdJxlLsGgtXr_16delta_benchmarks()
          to label %.noexc15.i unwind label %bb.v, !noalias !15055, !inline_history !15101 ; 3 uses

.noexc15.i:                                       ; preds = %bb.w
  %i.bi = load ptr, ptr %i.bb, align 8, !alias.scope !15102, !noalias !15055, !nonnull !3, !noundef !3
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !15103
  invoke fastcc void @_RNvXs1t_NtNtCs4lawaffTVVK_9sqlparser3ast5queryNtB6_5QueryNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone(ptr noalias noundef align 8 captures(none) dereferenceable(1400) %i.g, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(1400) %i.bi) #28
          to label %_RNvXsd_NtCs6Po7BT7Nknu_5alloc5boxedINtB5_3BoxNtNtNtCs4lawaffTVVK_9sqlparser3ast5query5QueryENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCsdJxlLsGgtXr_16delta_benchmarks.exit.i unwind label %bb.x, !noalias !15106, !inline_history !15107

bb.x:                                             ; preds = %.noexc15.i
  %i.bj = landingpad { ptr, i32 }
          cleanup
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %i.bh, i64 noundef 1400, i64 noundef 8) #24, !noalias !15106, !inline_history !15101
  br label %.body.i

_RNvXsd_NtCs6Po7BT7Nknu_5alloc5boxedINtB5_3BoxNtNtNtCs4lawaffTVVK_9sqlparser3ast5query5QueryENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCsdJxlLsGgtXr_16delta_benchmarks.exit.i: ; preds = %.noexc15.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1400) %i.bh, ptr noundef nonnull align 8 dereferenceable(1400) %i.g, i64 1400, i1 false), !noalias !15108
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !15103
  br label %bb.z

bb.y:                                             ; preds = %.body.i, %bb.t, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtNtCs4lawaffTVVK_9sqlparser3ast9data_type8DataTypeEECsdJxlLsGgtXr_16delta_benchmarks.exit.i
  %i.bk = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #22, !noalias !15055, !inline_history !15054
  unreachable

bb.z:                                             ; preds = %_RNvXsd_NtCs6Po7BT7Nknu_5alloc5boxedINtB5_3BoxNtNtNtCs4lawaffTVVK_9sqlparser3ast5query5QueryENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCsdJxlLsGgtXr_16delta_benchmarks.exit.i, %_RNvXsaD_NtCs4lawaffTVVK_9sqlparser3astNtB6_17DeclareAssignmentNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i
  %.sroa.01.0.i = phi ptr [ null, %_RNvXsaD_NtCs4lawaffTVVK_9sqlparser3astNtB6_17DeclareAssignmentNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i ], [ %i.bh, %_RNvXsd_NtCs6Po7BT7Nknu_5alloc5boxedINtB5_3BoxNtNtNtCs4lawaffTVVK_9sqlparser3ast5query5QueryENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCsdJxlLsGgtXr_16delta_benchmarks.exit.i ]
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.558)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.558, ptr noundef nonnull align 8 dereferenceable(24) %i.j, i64 24, i1 false), !noalias !15100
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.659)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %.sroa.659, ptr noundef nonnull align 8 dereferenceable(56) %i.i, i64 56, i1 false), !noalias !15100
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !15052
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !noalias !15052
  %i.bl = getelementptr inbounds nuw [112 x i8], ptr %i.v, i64 %.sroa.7.0115 ; 7 uses
  store i64 %i.ai, ptr %i.bl, align 8, !noalias !15100
  %.sroa.457.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bl, i64 8
  store ptr %.sroa.669.1, ptr %.sroa.457.0..sroa_idx, align 8, !noalias !15100
  %.sroa.558.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bl, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.558.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.558, i64 24, i1 false), !noalias !15100
  %.sroa.659.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bl, i64 40
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %.sroa.659.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(56) %.sroa.659, i64 56, i1 false), !noalias !15100
  %.sroa.760.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bl, i64 96
  store ptr %.sroa.01.0.i, ptr %.sroa.760.0..sroa_idx, align 8, !noalias !15100
  %.sroa.861.0..sroa_idx.a = getelementptr inbounds nuw i8, ptr %i.bl, i64 104
  store <4 x i8> %4, ptr %.sroa.861.0..sroa_idx.a, align 8, !noalias !15100
  %.sroa.1265.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bl, i64 108
  store i8 %3, ptr %.sroa.1265.0..sroa_idx, align 4, !noalias !15100
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.558)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.659)
  %i.bm = icmp eq i64 %i.ab, 0
  br i1 %i.bm, label %_RINvXNvMNtCs6Po7BT7Nknu_5alloc5sliceSp9to_vec_inNtNtCs4lawaffTVVK_9sqlparser3ast7DeclareNtB3_10ConvertVec6to_vecNtNtB8_5alloc6GlobalECsdJxlLsGgtXr_16delta_benchmarks.exit, label %.lr.ph

bb.aa:                                            ; preds = %bb.ab
  %i.bn = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #22, !noalias !15100, !inline_history !15109
  unreachable

bb.ab:                                            ; preds = %.loopexit, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtNtCs4lawaffTVVK_9sqlparser3ast9data_type8DataTypeEECsdJxlLsGgtXr_16delta_benchmarks.exit.i
  %eh.lpad-body = phi { ptr, i32 } [ %.pn.pn.i, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtNtCs4lawaffTVVK_9sqlparser3ast9data_type8DataTypeEECsdJxlLsGgtXr_16delta_benchmarks.exit.i ], [ %lpad.loopexit, %.loopexit ]
  store i64 %.sroa.7.0115, ptr %i.y, align 8, !noalias !15100
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtCs4lawaffTVVK_9sqlparser3ast7DeclareEECsdJxlLsGgtXr_16delta_benchmarks(ptr noalias noundef align 8 dereferenceable(24) %i.k) #23
          to label %bb.ac unwind label %bb.aa, !noalias !15100, !inline_history !15109

bb.ac:                                            ; preds = %bb.ab
  resume { ptr, i32 } %eh.lpad-body

_RINvXNvMNtCs6Po7BT7Nknu_5alloc5sliceSp9to_vec_inNtNtCs4lawaffTVVK_9sqlparser3ast7DeclareNtB3_10ConvertVec6to_vecNtNtB8_5alloc6GlobalECsdJxlLsGgtXr_16delta_benchmarks.exit: ; preds = %bb.z, %.lr.ph, %_RNvMs4_NtCs6Po7BT7Nknu_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsdJxlLsGgtXr_16delta_benchmarks.exit
  store i64 %i.o, ptr %i.y, align 8, !noalias !15045
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.k, i64 24, i1 false), !noalias !15110
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !noalias !15045
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXsa_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VecNtNtCs4lawaffTVVK_9sqlparser3ast7GranteeENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCsdJxlLsGgtXr_16delta_benchmarks(ptr dead_on_unwind noalias noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias noundef readonly align 8 captures(none) dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !nonnull !3, !noundef !3
  %i.d = load i64, ptr %i.a, align 8, !noundef !3
  tail call fastcc void @_RINvXNvMNtCs6Po7BT7Nknu_5alloc5sliceSp9to_vec_inNtNtCs4lawaffTVVK_9sqlparser3ast7GranteeNtB3_10ConvertVec6to_vecNtNtB8_5alloc6GlobalECsdJxlLsGgtXr_16delta_benchmarks(ptr noalias noundef align 8 captures(none) dereferenceable(24) %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) %i.c, i64 noundef %i.d) #28
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXsa_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VecNtNtCs4lawaffTVVK_9sqlparser3ast8CaseWhenENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCsdJxlLsGgtXr_16delta_benchmarks(ptr dead_on_unwind noalias noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias noundef readonly align 8 captures(none) dereferenceable(24) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = alloca [328 x i8], align 8               ; 4 uses
  %i.c = alloca [328 x i8], align 8               ; 5 uses
  %i.d = alloca [656 x i8], align 8               ; 3 uses
  %i.e = alloca [24 x i8], align 8                ; 7 uses
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.h = load ptr, ptr %i.g, align 8, !nonnull !3, !noundef !3 ; 2 uses
  %i.i = load i64, ptr %i.f, align 8, !noundef !3 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !15111
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !15111
  call void @_RNvMs4_NtCs6Po7BT7Nknu_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsdJxlLsGgtXr_16delta_benchmarks(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, i64 noundef range(i64 0, 14060018348863988) %i.i, i1 noundef zeroext false, i64 noundef 8, i64 noundef 656), !noalias !15111
  %i.j = load i64, ptr %i.a, align 8, !range !4, !noalias !15111, !noundef !3
  %i.k = trunc nuw i64 %i.j to i1
  %i.l = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.m = load i64, ptr %i.l, align 8, !range !43, !noalias !15111, !noundef !3 ; 5 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  br i1 %i.k, label %bb.b, label %_RNvMs4_NtCs6Po7BT7Nknu_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsdJxlLsGgtXr_16delta_benchmarks.exit, !prof !10

bb.b:                                             ; preds = %bb.a
  %i.o = load i64, ptr %i.n, align 8, !noalias !15111
  tail call void @_RNvNtCs6Po7BT7Nknu_5alloc7raw_vec12handle_error(i64 noundef %i.m, i64 %i.o) #21, !noalias !15111
  unreachable

_RNvMs4_NtCs6Po7BT7Nknu_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsdJxlLsGgtXr_16delta_benchmarks.exit: ; preds = %bb.a
  %i.p = load ptr, ptr %i.n, align 8, !noalias !15111, !nonnull !3, !noundef !3 ; 2 uses
  %i.q = icmp ule i64 %i.i, %i.m
  tail call void @llvm.assume(i1 %i.q), !noalias !15111
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !15111
  store i64 %i.m, ptr %i.e, align 8, !noalias !15111
  %i.r = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  store ptr %i.p, ptr %i.r, align 8, !noalias !15111
  %i.s = getelementptr inbounds nuw i8, ptr %i.e, i64 16 ; 2 uses
  %i.t = getelementptr inbounds nuw [656 x i8], ptr %i.h, i64 %i.i
  %i.u = icmp eq i64 %i.m, 0
  br i1 %i.u, label %_RINvXNvMNtCs6Po7BT7Nknu_5alloc5sliceSp9to_vec_inNtNtCs4lawaffTVVK_9sqlparser3ast8CaseWhenNtB3_10ConvertVec6to_vecNtNtB8_5alloc6GlobalECsdJxlLsGgtXr_16delta_benchmarks.exit, label %.lr.ph

.lr.ph:                                           ; preds = %_RNvMs4_NtCs6Po7BT7Nknu_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsdJxlLsGgtXr_16delta_benchmarks.exit
  %i.v = getelementptr inbounds nuw i8, ptr %i.d, i64 328
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph, %bb.g
  %.sroa.10.014 = phi i64 [ %i.m, %.lr.ph ], [ %i.w, %bb.g ]
  %.sroa.01.013 = phi ptr [ %i.h, %.lr.ph ], [ %i.y, %bb.g ] ; 4 uses
  %.sroa.7.012 = phi i64 [ 0, %.lr.ph ], [ %i.z, %bb.g ] ; 3 uses
  %i.w = add i64 %.sroa.10.014, -1                ; 2 uses
  %i.x = icmp eq ptr %.sroa.01.013, %i.t
  br i1 %i.x, label %_RINvXNvMNtCs6Po7BT7Nknu_5alloc5sliceSp9to_vec_inNtNtCs4lawaffTVVK_9sqlparser3ast8CaseWhenNtB3_10ConvertVec6to_vecNtNtB8_5alloc6GlobalECsdJxlLsGgtXr_16delta_benchmarks.exit, label %bb.d

.loopexit:                                        ; preds = %bb.d
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %bb.i

bb.d:                                             ; preds = %bb.c
  %i.y = getelementptr inbounds nuw i8, ptr %.sroa.01.013, i64 656
  %i.z = add nuw nsw i64 %.sroa.7.012, 1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !15115
  invoke fastcc void @_RNvXs6H_NtCs4lawaffTVVK_9sqlparser3astNtB6_4ExprNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone(ptr noalias noundef align 8 captures(none) dereferenceable(328) %i.c, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(656) %.sroa.01.013) #28
          to label %.noexc unwind label %.loopexit, !inline_history !15119

.noexc:                                           ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !15115
  %i.aa = getelementptr inbounds nuw i8, ptr %.sroa.01.013, i64 328
  invoke fastcc void @_RNvXs6H_NtCs4lawaffTVVK_9sqlparser3astNtB6_4ExprNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone(ptr noalias noundef align 8 captures(none) dereferenceable(328) %i.b, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(328) %i.aa)
          to label %bb.g unwind label %bb.e, !noalias !15120, !inline_history !15119

bb.e:                                             ; preds = %.noexc
  %i.ab = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs4lawaffTVVK_9sqlparser3ast4ExprECsdJxlLsGgtXr_16delta_benchmarks(ptr noalias noundef align 8 dereferenceable(328) %i.c) #23
          to label %bb.i unwind label %bb.f, !noalias !15120, !inline_history !15119

bb.f:                                             ; preds = %bb.e
  %i.ac = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #22, !noalias !15120, !inline_history !15119
  unreachable

bb.g:                                             ; preds = %.noexc
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(656) %i.d, ptr noundef nonnull align 8 dereferenceable(328) %i.c, i64 328, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(328) %i.v, ptr noundef nonnull align 8 dereferenceable(328) %i.b, i64 328, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !15115
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !15115
  %i.ad = getelementptr inbounds nuw [656 x i8], ptr %i.p, i64 %.sroa.7.012
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(656) %i.ad, ptr noundef nonnull align 8 dereferenceable(656) %i.d, i64 656, i1 false)
  %i.ae = icmp eq i64 %i.w, 0
  br i1 %i.ae, label %_RINvXNvMNtCs6Po7BT7Nknu_5alloc5sliceSp9to_vec_inNtNtCs4lawaffTVVK_9sqlparser3ast8CaseWhenNtB3_10ConvertVec6to_vecNtNtB8_5alloc6GlobalECsdJxlLsGgtXr_16delta_benchmarks.exit, label %bb.c

bb.h:                                             ; preds = %bb.i
  %i.af = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #22, !noalias !15121, !inline_history !15122
  unreachable

bb.i:                                             ; preds = %.loopexit, %bb.e
  %eh.lpad-body = phi { ptr, i32 } [ %i.ab, %bb.e ], [ %lpad.loopexit, %.loopexit ]
  store i64 %.sroa.7.012, ptr %i.s, align 8, !noalias !15121
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtCs4lawaffTVVK_9sqlparser3ast8CaseWhenEECsdJxlLsGgtXr_16delta_benchmarks(ptr noalias noundef align 8 dereferenceable(24) %i.e) #23
          to label %bb.j unwind label %bb.h, !noalias !15121, !inline_history !15122

bb.j:                                             ; preds = %bb.i
  resume { ptr, i32 } %eh.lpad-body

_RINvXNvMNtCs6Po7BT7Nknu_5alloc5sliceSp9to_vec_inNtNtCs4lawaffTVVK_9sqlparser3ast8CaseWhenNtB3_10ConvertVec6to_vecNtNtB8_5alloc6GlobalECsdJxlLsGgtXr_16delta_benchmarks.exit: ; preds = %bb.g, %bb.c, %_RNvMs4_NtCs6Po7BT7Nknu_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsdJxlLsGgtXr_16delta_benchmarks.exit
  store i64 %i.i, ptr %i.s, align 8, !noalias !15111
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.e, i64 24, i1 false), !noalias !15123
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !15111
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXsa_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VecNtNtCs4lawaffTVVK_9sqlparser3ast8MacroArgENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCsdJxlLsGgtXr_16delta_benchmarks(ptr dead_on_unwind noalias noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias noundef readonly align 8 captures(none) dereferenceable(24) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = alloca [328 x i8], align 8               ; 5 uses
  %.sroa.5.i = alloca [320 x i8], align 8         ; 4 uses
  %i.c = alloca [64 x i8], align 8                ; 7 uses
  %.sroa.414 = alloca [320 x i8], align 8         ; 4 uses
  %.sroa.515 = alloca [64 x i8], align 8          ; 4 uses
  %i.d = alloca [24 x i8], align 8                ; 7 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.g = load ptr, ptr %i.f, align 8, !nonnull !3, !noundef !3 ; 2 uses
  %i.h = load i64, ptr %i.e, align 8, !noundef !3 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !15124
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !15124
  call void @_RNvMs4_NtCs6Po7BT7Nknu_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsdJxlLsGgtXr_16delta_benchmarks(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, i64 noundef range(i64 0, 23529010298098918) %i.h, i1 noundef zeroext false, i64 noundef 8, i64 noundef 392), !noalias !15124
  %i.i = load i64, ptr %i.a, align 8, !range !4, !noalias !15124, !noundef !3
  %i.j = trunc nuw i64 %i.i to i1
  %i.k = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.l = load i64, ptr %i.k, align 8, !range !43, !noalias !15124, !noundef !3 ; 5 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  br i1 %i.j, label %bb.b, label %_RNvMs4_NtCs6Po7BT7Nknu_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsdJxlLsGgtXr_16delta_benchmarks.exit, !prof !10

bb.b:                                             ; preds = %bb.a
  %i.n = load i64, ptr %i.m, align 8, !noalias !15124
  tail call void @_RNvNtCs6Po7BT7Nknu_5alloc7raw_vec12handle_error(i64 noundef %i.l, i64 %i.n) #21, !noalias !15124
  unreachable

_RNvMs4_NtCs6Po7BT7Nknu_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsdJxlLsGgtXr_16delta_benchmarks.exit: ; preds = %bb.a
  %i.o = load ptr, ptr %i.m, align 8, !noalias !15124, !nonnull !3, !noundef !3 ; 2 uses
  %i.p = icmp ule i64 %i.h, %i.l
  tail call void @llvm.assume(i1 %i.p), !noalias !15124
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !15124
  store i64 %i.l, ptr %i.d, align 8, !noalias !15124
  %i.q = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store ptr %i.o, ptr %i.q, align 8, !noalias !15124
  %i.r = getelementptr inbounds nuw i8, ptr %i.d, i64 16 ; 2 uses
  %i.s = getelementptr inbounds nuw [392 x i8], ptr %i.g, i64 %i.h
  %i.t = icmp eq i64 %i.l, 0
  br i1 %i.t, label %_RINvXNvMNtCs6Po7BT7Nknu_5alloc5sliceSp9to_vec_inNtNtCs4lawaffTVVK_9sqlparser3ast8MacroArgNtB3_10ConvertVec6to_vecNtNtB8_5alloc6GlobalECsdJxlLsGgtXr_16delta_benchmarks.exit, label %.lr.ph

.lr.ph:                                           ; preds = %_RNvMs4_NtCs6Po7BT7Nknu_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsdJxlLsGgtXr_16delta_benchmarks.exit
  %i.u = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  %i.v = getelementptr inbounds nuw i8, ptr %i.c, i64 56
  %.sroa.5.0..sroa_idx2.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  br label %bb.c

end_hunk_1
begin_hunk_2_@_RNvXsc5_NtCs4lawaffTVVK_9sqlparser3astNtB6_9StatementNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone:bb.a
  %i.ml = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.ml, ptr noundef nonnull align 8 dereferenceable(64) %i.kp, i64 64, i1 false)
  store i64 10, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.kp)
  br label %bb.ed

bb.j:                                             ; preds = %bb.a
  %i.mm = getelementptr inbounds nuw i8, ptr %1, i64 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ko)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !15998)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !16001)
  call void @_RNvXs4_NtCs6Po7BT7Nknu_5alloc6stringNtB5_6StringNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(64) %i.ko, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(64) %i.mm)
  %i.mn = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.mo = load i32, ptr %i.mn, align 8, !range !7691, !alias.scope !16001, !noalias !15998, !noundef !3
  %i.mp = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.mq = getelementptr inbounds nuw i8, ptr %i.ko, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.mq, ptr noundef nonnull readonly align 8 dereferenceable(32) %i.mp, i64 32, i1 false), !alias.scope !16003
  %i.mr = getelementptr inbounds nuw i8, ptr %i.ko, i64 56
  store i32 %i.mo, ptr %i.mr, align 8, !alias.scope !15998, !noalias !16001
  %i.ms = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.ms, ptr noundef nonnull align 8 dereferenceable(64) %i.ko, i64 64, i1 false)
  store i64 11, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ko)
  br label %bb.ed

bb.k:                                             ; preds = %bb.a
  %i.mt = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.mu = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.mv = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.mw = load i8, ptr %i.mv, align 8, !range !2711, !noundef !3
  %i.mx = getelementptr inbounds nuw i8, ptr %1, i64 41
  %i.my = load i8, ptr %i.mx, align 1, !range !2711, !noundef !3
  call void @llvm.lifetime.start.p0(ptr nonnull %i.kn)
  call void @_RNvXs4_NtCs6Po7BT7Nknu_5alloc6stringNtB5_6StringNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.kn, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.mt)
  %i.mz = getelementptr inbounds nuw i8, ptr %1, i64 42
  %i.na = load i8, ptr %i.mz, align 2, !range !12106, !noundef !3
  %i.nb = invoke fastcc noundef nonnull align 8 ptr @_RNvXsd_NtCs6Po7BT7Nknu_5alloc5boxedINtB5_3BoxNtNtNtCs4lawaffTVVK_9sqlparser3ast5query5QueryENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCsdJxlLsGgtXr_16delta_benchmarks(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.mu)
          to label %bb.eq unwind label %bb.ep

bb.l:                                             ; preds = %bb.a
  %i.nc = getelementptr inbounds nuw i8, ptr %1, i64 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.km)
  call fastcc void @_RNvXs9l_NtCs4lawaffTVVK_9sqlparser3astNtB6_13CaseStatementNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone(ptr noalias noundef align 8 captures(none) dereferenceable(1232) %i.km, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(1232) %i.nc) #28
  %i.nd = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1232) %i.nd, ptr noundef nonnull align 8 dereferenceable(1232) %i.km, i64 1232, i1 false)
  store i64 13, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.km)
  br label %bb.ed

bb.m:                                             ; preds = %bb.a
  %i.ne = getelementptr inbounds nuw i8, ptr %1, i64 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.kl)
  call fastcc void @_RNvXs9v_NtCs4lawaffTVVK_9sqlparser3astNtB6_11IfStatementNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone(ptr noalias noundef align 8 captures(none) dereferenceable(1520) %i.kl, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(1520) %i.ne) #28
  %i.nf = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1520) %i.nf, ptr noundef nonnull align 8 dereferenceable(1520) %i.kl, i64 1520, i1 false)
  store i64 14, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.kl)
  br label %bb.ed

bb.n:                                             ; preds = %bb.a
  %i.ng = getelementptr inbounds nuw i8, ptr %1, i64 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.kk)
  call fastcc void @_RNvXs9P_NtCs4lawaffTVVK_9sqlparser3astNtB6_25ConditionalStatementBlockNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone(ptr noalias noundef align 8 captures(none) dereferenceable(704) %i.kk, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(704) %i.ng) #28, !noalias !3
  %i.nh = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(704) %i.nh, ptr noundef nonnull align 8 dereferenceable(704) %i.kk, i64 704, i1 false)
  store i64 15, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.kk)
  br label %bb.ed

bb.o:                                             ; preds = %bb.a
  %i.ni = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.nj = load i64, ptr %i.ni, align 8, !range !155, !alias.scope !16004, !noalias !16007, !noundef !3
  %.not.i = icmp eq i64 %i.nj, 2
  br i1 %.not.i, label %_RNvXsaj_NtCs4lawaffTVVK_9sqlparser3astNtB6_14RaiseStatementNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit, label %bb.p

bb.p:                                             ; preds = %bb.o
  call fastcc void @_RNvXsat_NtCs4lawaffTVVK_9sqlparser3astNtB6_19RaiseStatementValueNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone(ptr noalias noundef align 8 captures(none) dereferenceable(336) %i.s, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(336) %i.ni) #28, !inline_history !16009
  %.sroa.0.0.copyload.i = load i64, ptr %i.s, align 8
  br label %_RNvXsaj_NtCs4lawaffTVVK_9sqlparser3astNtB6_14RaiseStatementNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit

_RNvXsaj_NtCs4lawaffTVVK_9sqlparser3astNtB6_14RaiseStatementNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit: ; preds = %bb.o, %bb.p
  %.sroa.0.0.i = phi i64 [ %.sroa.0.0.copyload.i, %bb.p ], [ 2, %bb.o ]
  %i.nk = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.sroa.0.0.i, ptr %i.nk, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(328) %.sroa.4.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(328) %i.kj, i64 328, i1 false)
  store i64 16, ptr %0, align 8
  br label %bb.ed

bb.q:                                             ; preds = %bb.a
  %i.nl = getelementptr inbounds nuw i8, ptr %1, i64 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ki)
  call fastcc void @_RNvXsin_NtCs4lawaffTVVK_9sqlparser3astNtB6_8FunctionNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone(ptr noalias noundef align 8 captures(none) dereferenceable(328) %i.ki, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(328) %i.nl) #28
  %i.nm = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(328) %i.nm, ptr noundef nonnull align 8 dereferenceable(328) %i.ki, i64 328, i1 false)
  store i64 17, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ki)
  br label %bb.ed

bb.r:                                             ; preds = %bb.a
  %i.nn = getelementptr inbounds nuw i8, ptr %1, i64 112
  %i.no = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.np = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.nq = getelementptr inbounds nuw i8, ptr %1, i64 88
  call void @llvm.lifetime.start.p0(ptr nonnull %i.kh)
  call fastcc void @_RNvXspw_NtCs4lawaffTVVK_9sqlparser3astNtB6_10CopySourceNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone(ptr noalias noundef align 8 captures(none) dereferenceable(48) %i.kh, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.nn) #28
  %i.nr = getelementptr inbounds nuw i8, ptr %1, i64 160
  %i.ns = load i8, ptr %i.nr, align 8, !range !2711, !noundef !3
  call void @llvm.lifetime.start.p0(ptr nonnull %i.kg)
  invoke fastcc void @_RNvXspG_NtCs4lawaffTVVK_9sqlparser3astNtB6_10CopyTargetNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone(ptr noalias noundef align 8 captures(none) dereferenceable(32) %i.kg, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.no)
          to label %bb.es unwind label %bb.er

bb.s:                                             ; preds = %bb.a
  %i.nt = getelementptr inbounds nuw i8, ptr %1, i64 456
  %i.nu = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.nv = getelementptr inbounds nuw i8, ptr %1, i64 168
  %i.nw = getelementptr inbounds nuw i8, ptr %1, i64 200
  %.val387 = load i8, ptr %i.nt, align 8, !range !2711, !noundef !3
  call void @llvm.lifetime.start.p0(ptr nonnull %i.kc)
  %i.nx = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.ny = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.nz = load ptr, ptr %i.ny, align 8, !alias.scope !16010, !noalias !16013, !nonnull !3, !noundef !3
  %i.oa = load i64, ptr %i.nx, align 8, !alias.scope !16010, !noalias !16013, !noundef !3
  call fastcc void @_RINvXNvMNtCs6Po7BT7Nknu_5alloc5sliceSp9to_vec_inNtNtCs4lawaffTVVK_9sqlparser3ast14ObjectNamePartNtB3_10ConvertVec6to_vecNtNtB8_5alloc6GlobalECsdJxlLsGgtXr_16delta_benchmarks(ptr noalias noundef align 8 captures(none) dereferenceable(24) %i.kc, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) %i.nz, i64 noundef %i.oa) #28, !noalias !3
  call void @llvm.lifetime.start.p0(ptr nonnull %i.kb)
  %i.ob = getelementptr inbounds nuw i8, ptr %1, i64 232 ; 2 uses
  %i.oc = load i64, ptr %i.ob, align 8, !range !43, !noundef !3
  %.not346 = icmp eq i64 %i.oc, -9223372036854775808
  br i1 %.not346, label %bb.fc, label %bb.fb

bb.t:                                             ; preds = %bb.a
  %i.od = getelementptr inbounds nuw i8, ptr %1, i64 8
  call void @_RNvXs4_NtCs6Po7BT7Nknu_5alloc6stringNtB5_6StringNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %.sroa.0.i, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(64) %i.od)
  %i.oe = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.of = load i32, ptr %i.oe, align 8, !range !7691, !alias.scope !16017, !noalias !16020, !noundef !3
  %i.og = getelementptr inbounds nuw i8, ptr %1, i64 32
  %.sroa.0.24..sroa_idx.i = getelementptr inbounds nuw i8, ptr %.sroa.0.i, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.0.24..sroa_idx.i, ptr noundef nonnull readonly align 8 dereferenceable(32) %i.og, i64 32, i1 false)
  %i.oh = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.oh, ptr noundef nonnull align 8 dereferenceable(56) %.sroa.0.i, i64 56, i1 false)
  %.sroa.4640.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 64
  store i32 %i.of, ptr %.sroa.4640.0..sroa_idx, align 8
  store i64 20, ptr %0, align 8
  br label %bb.ed

bb.u:                                             ; preds = %bb.a
  %i.oi = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.oj = load i64, ptr %i.oi, align 8, !range !43, !alias.scope !16022, !noalias !16025, !noundef !3
  %.not.i419 = icmp eq i64 %i.oj, -9223372036854775808
  br i1 %.not.i419, label %_RNvXshT_NtCs4lawaffTVVK_9sqlparser3astNtB6_11CloseCursorNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit, label %bb.v

bb.v:                                             ; preds = %bb.u
  call void @_RNvXs4_NtCs6Po7BT7Nknu_5alloc6stringNtB5_6StringNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %.sroa.0.i418, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(64) %i.oi)
  %i.ok = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.ol = load i32, ptr %i.ok, align 8, !range !7691, !alias.scope !16022, !noalias !16025, !noundef !3
  %i.om = getelementptr inbounds nuw i8, ptr %1, i64 32
  %.sroa.0.24..sroa_idx.i420 = getelementptr inbounds nuw i8, ptr %.sroa.0.i418, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.0.24..sroa_idx.i420, ptr noundef nonnull readonly align 8 dereferenceable(32) %i.om, i64 32, i1 false)
  %.sroa.0642.0.copyload643 = load i64, ptr %.sroa.0.i418, align 8
  br label %_RNvXshT_NtCs4lawaffTVVK_9sqlparser3astNtB6_11CloseCursorNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit

_RNvXshT_NtCs4lawaffTVVK_9sqlparser3astNtB6_11CloseCursorNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit: ; preds = %bb.u, %bb.v
  %.sroa.0642.0 = phi i64 [ %.sroa.0642.0.copyload643, %bb.v ], [ -9223372036854775808, %bb.u ]
  %.sroa.5645.0 = phi i32 [ %i.ol, %bb.v ], [ undef, %bb.u ]
  %i.on = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.sroa.0642.0, ptr %i.on, align 8
  %.sroa.5644.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %.sroa.5644.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(48) %i.jr, i64 48, i1 false)
  %.sroa.5645.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 64
  store i32 %.sroa.5645.0, ptr %.sroa.5645.0..sroa_idx, align 8
  store i64 21, ptr %0, align 8
  br label %bb.ed

bb.w:                                             ; preds = %bb.a
  %i.oo = getelementptr inbounds nuw i8, ptr %1, i64 40
  call void @llvm.lifetime.start.p0(ptr nonnull %i.jq)
  call fastcc void @_RNvXs5p_NtNtCs4lawaffTVVK_9sqlparser3ast5queryNtB6_14TableWithJoinsNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone(ptr noalias noundef align 8 captures(none) dereferenceable(640) %i.jq, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(640) %i.oo) #28
  call void @llvm.lifetime.start.p0(ptr nonnull %i.jp)
  %i.op = getelementptr inbounds nuw i8, ptr %1, i64 1352
  %i.oq = getelementptr inbounds nuw i8, ptr %1, i64 1344
  %i.or = load ptr, ptr %i.oq, align 8, !alias.scope !16027, !noalias !16030, !nonnull !3, !noundef !3
  %i.os = load i64, ptr %i.op, align 8, !alias.scope !16027, !noalias !16030, !noundef !3
  invoke fastcc void @_RINvXNvMNtCs6Po7BT7Nknu_5alloc5sliceSp9to_vec_inNtNtCs4lawaffTVVK_9sqlparser3ast10AssignmentNtB3_10ConvertVec6to_vecNtNtB8_5alloc6GlobalECsdJxlLsGgtXr_16delta_benchmarks(ptr noalias noundef nonnull align 8 captures(none) dereferenceable(24) %i.jp, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) %i.or, i64 noundef %i.os) #28
          to label %_RNvXsa_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VecNtNtCs4lawaffTVVK_9sqlparser3ast10AssignmentENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCsdJxlLsGgtXr_16delta_benchmarks.exit unwind label %bb.hg, !inline_history !10191

bb.x:                                             ; preds = %bb.a
  %i.ot = getelementptr inbounds nuw i8, ptr %1, i64 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.jl)
  call fastcc void @_RNvXsb_NtNtCs4lawaffTVVK_9sqlparser3ast3dmlNtB5_6DeleteNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone(ptr noalias noundef align 8 captures(none) dereferenceable(784) %i.jl, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(784) %i.ot) #28
  %i.ou = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(784) %i.ou, ptr noundef nonnull align 8 dereferenceable(784) %i.jl, i64 784, i1 false)
  store i64 23, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.jl)
  br label %bb.ed

bb.y:                                             ; preds = %bb.a
  %i.ov = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.ow = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.ox = getelementptr inbounds nuw i8, ptr %1, i64 88
  %i.oy = getelementptr inbounds nuw i8, ptr %1, i64 304
  %2 = load <4 x i8>, ptr %i.oy, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.jk)
  %i.oz = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.pa = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.pb = load ptr, ptr %i.pa, align 8, !alias.scope !16032, !noalias !16035, !nonnull !3, !noundef !3
  %i.pc = load i64, ptr %i.oz, align 8, !alias.scope !16032, !noalias !16035, !noundef !3
  call fastcc void @_RINvXNvMNtCs6Po7BT7Nknu_5alloc5sliceSp9to_vec_inNtNtCs4lawaffTVVK_9sqlparser3ast14ObjectNamePartNtB3_10ConvertVec6to_vecNtNtB8_5alloc6GlobalECsdJxlLsGgtXr_16delta_benchmarks(ptr noalias noundef align 8 captures(none) dereferenceable(24) %i.jk, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) %i.pb, i64 noundef %i.pc) #28, !noalias !3
  %i.pd = getelementptr inbounds nuw i8, ptr %1, i64 308
  %i.pe = load i8, ptr %i.pd, align 4, !range !2711, !noundef !3
  call void @llvm.lifetime.start.p0(ptr nonnull %i.jj)
  invoke void @_RNvXsa_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VecNtNtNtCs4lawaffTVVK_9sqlparser3ast3ddl13ViewColumnDefENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCsdJxlLsGgtXr_16delta_benchmarks(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.jj, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.ov)
          to label %bb.ie unwind label %bb.id

bb.z:                                             ; preds = %bb.a
  %i.pf = getelementptr inbounds nuw i8, ptr %1, i64 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.jd)
  call fastcc void @_RNvXs8w_NtNtCs4lawaffTVVK_9sqlparser3ast3ddlNtB6_11CreateTableNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone(ptr noalias noundef align 8 captures(none) dereferenceable(2280) %i.jd, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(2280) %i.pf) #28
  %i.pg = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(2280) %i.pg, ptr noundef nonnull align 8 dereferenceable(2280) %i.jd, i64 2280, i1 false)
  store i64 25, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.jd)
  br label %bb.ed

bb.aa:                                            ; preds = %bb.a
  %i.ph = getelementptr inbounds nuw i8, ptr %1, i64 32
  call void @llvm.lifetime.start.p0(ptr nonnull %i.jc)
  %i.pi = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.pj = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.pk = load ptr, ptr %i.pj, align 8, !alias.scope !16039, !noalias !16042, !nonnull !3, !noundef !3
  %i.pl = load i64, ptr %i.pi, align 8, !alias.scope !16039, !noalias !16042, !noundef !3
  call fastcc void @_RINvXNvMNtCs6Po7BT7Nknu_5alloc5sliceSp9to_vec_inNtNtCs4lawaffTVVK_9sqlparser3ast14ObjectNamePartNtB3_10ConvertVec6to_vecNtNtB8_5alloc6GlobalECsdJxlLsGgtXr_16delta_benchmarks(ptr noalias noundef align 8 captures(none) dereferenceable(24) %i.jc, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) %i.pk, i64 noundef %i.pl) #28, !noalias !3
  %i.pm = getelementptr inbounds nuw i8, ptr %1, i64 120
  %i.pn = load i8, ptr %i.pm, align 8, !range !2711, !noundef !3
  call void @llvm.lifetime.start.p0(ptr nonnull %i.jb)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !16046)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !16049)
  invoke void @_RNvXs4_NtCs6Po7BT7Nknu_5alloc6stringNtB5_6StringNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(64) %i.jb, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(64) %i.ph)
          to label %bb.jf unwind label %bb.je

bb.ab:                                            ; preds = %bb.a
  %i.po = getelementptr inbounds nuw i8, ptr %1, i64 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.iz)
  call fastcc void @_RNvXs8m_NtNtCs4lawaffTVVK_9sqlparser3ast3ddlNtB6_11CreateIndexNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone(ptr noalias noundef align 8 captures(none) dereferenceable(568) %i.iz, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(568) %i.po) #28
  %i.pp = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(568) %i.pp, ptr noundef nonnull align 8 dereferenceable(568) %i.iz, i64 568, i1 false)
  store i64 27, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.iz)
  br label %bb.ed

bb.ac:                                            ; preds = %bb.a
  %i.pq = getelementptr inbounds nuw i8, ptr %1, i64 1016
  %i.pr = getelementptr inbounds nuw i8, ptr %1, i64 1040
  %i.ps = getelementptr inbounds nuw i8, ptr %1, i64 1064
  %i.pt = getelementptr inbounds nuw i8, ptr %1, i64 1088
  %i.pu = getelementptr inbounds nuw i8, ptr %1, i64 1112
  call void @llvm.lifetime.start.p0(ptr nonnull %i.iy)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !16051)
  %i.pv = getelementptr inbounds nuw i8, ptr %1, i64 1008
  %i.pw = getelementptr inbounds nuw i8, ptr %1, i64 1000
  %i.px = load ptr, ptr %i.pw, align 8, !alias.scope !16051, !noalias !16054, !nonnull !3, !noundef !3
  %i.py = load i64, ptr %i.pv, align 8, !alias.scope !16051, !noalias !16054, !noundef !3
  call fastcc void @_RINvXNvMNtCs6Po7BT7Nknu_5alloc5sliceSp9to_vec_inNtNtCs4lawaffTVVK_9sqlparser3ast10ObjectNameNtB3_10ConvertVec6to_vecNtNtB8_5alloc6GlobalECsdJxlLsGgtXr_16delta_benchmarks(ptr noalias noundef nonnull align 8 captures(none) dereferenceable(24) %i.iy, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) %i.px, i64 noundef %i.py) #28, !noalias !16051, !inline_history !11215
  %i.pz = getelementptr inbounds nuw i8, ptr %1, i64 1160
  %i.qa = load <4 x i8>, ptr %i.pz, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ix)
  %i.qb = getelementptr inbounds nuw i8, ptr %1, i64 664 ; 2 uses
  %i.qc = load i64, ptr %i.qb, align 8, !range !172, !noundef !3 ; 2 uses
  %.not311 = icmp eq i64 %i.qc, 70
  br i1 %.not311, label %bb.jk, label %bb.ji

bb.ad:                                            ; preds = %bb.a
  %i.qd = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.qe = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.qf = getelementptr inbounds nuw i8, ptr %1, i64 224
  %i.qg = load i8, ptr %i.qf, align 8, !range !2711, !noundef !3
  %i.qh = getelementptr inbounds nuw i8, ptr %1, i64 226
  %i.qi = load i8, ptr %i.qh, align 2, !range !7944, !noundef !3
  %i.qj = getelementptr inbounds nuw i8, ptr %1, i64 225
  %i.qk = load i8, ptr %i.qj, align 1, !range !2711, !noundef !3
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ip)
  %i.ql = getelementptr inbounds nuw i8, ptr %1, i64 96 ; 2 uses
  %i.qm = load i64, ptr %i.ql, align 8, !range !43, !noundef !3
  %.not306 = icmp eq i64 %i.qm, -9223372036854775808
  br i1 %.not306, label %bb.ku, label %bb.kt

bb.ae:                                            ; preds = %bb.a
  %i.qn = getelementptr inbounds nuw i8, ptr %1, i64 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.il)
  call fastcc void @_RNvXsny_NtCs4lawaffTVVK_9sqlparser3astNtB6_21CreateServerStatementNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone(ptr noalias noundef align 8 captures(none) dereferenceable(208) %i.il, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(208) %i.qn) #28
  %i.qo = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(208) %i.qo, ptr noundef nonnull align 8 dereferenceable(208) %i.il, i64 208, i1 false)
  store i64 30, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.il)
  br label %bb.ed

bb.af:                                            ; preds = %bb.a
  %i.qp = getelementptr inbounds nuw i8, ptr %1, i64 664
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ik)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !16056)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !16059)
  call void @_RNvXs4_NtCs6Po7BT7Nknu_5alloc6stringNtB5_6StringNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(64) %i.ik, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(64) %i.qp)
  %i.qq = getelementptr inbounds nuw i8, ptr %1, i64 720
  %i.qr = load i32, ptr %i.qq, align 8, !range !7691, !alias.scope !16059, !noalias !16056, !noundef !3
  %i.qs = getelementptr inbounds nuw i8, ptr %1, i64 688
  %i.qt = getelementptr inbounds nuw i8, ptr %i.ik, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.qt, ptr noundef nonnull readonly align 8 dereferenceable(32) %i.qs, i64 32, i1 false), !alias.scope !16061
  %i.qu = getelementptr inbounds nuw i8, ptr %i.ik, i64 56
  store i32 %i.qr, ptr %i.qu, align 8, !alias.scope !16056, !noalias !16059
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ij)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r), !noalias !16062
  %i.qv = getelementptr inbounds nuw i8, ptr %1, i64 744
  %i.qw = getelementptr inbounds nuw i8, ptr %1, i64 736
  %i.qx = load ptr, ptr %i.qw, align 8, !alias.scope !16066, !noalias !16069, !nonnull !3, !noundef !3
  %i.qy = load i64, ptr %i.qv, align 8, !alias.scope !16066, !noalias !16069, !noundef !3
  invoke fastcc void @_RINvXNvMNtCs6Po7BT7Nknu_5alloc5sliceSp9to_vec_inNtNtCs4lawaffTVVK_9sqlparser3ast14ObjectNamePartNtB3_10ConvertVec6to_vecNtNtB8_5alloc6GlobalECsdJxlLsGgtXr_16delta_benchmarks(ptr noalias noundef align 8 captures(none) dereferenceable(24) %i.r, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) %i.qx, i64 noundef %i.qy) #28
          to label %bb.lj unwind label %bb.li, !inline_history !7679

bb.ag:                                            ; preds = %bb.a
  %i.qz = getelementptr inbounds nuw i8, ptr %1, i64 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ig)
  call fastcc void @_RNvXs90_NtNtCs4lawaffTVVK_9sqlparser3ast3ddlNtB6_15CreateConnectorNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone(ptr noalias noundef align 8 captures(none) dereferenceable(176) %i.ig, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(176) %i.qz) #28
  %i.ra = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(176) %i.ra, ptr noundef nonnull align 8 dereferenceable(176) %i.ig, i64 176, i1 false)
  store i64 32, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ig)
  br label %bb.ed

bb.ah:                                            ; preds = %bb.a
  %i.rb = getelementptr inbounds nuw i8, ptr %1, i64 192
  call void @llvm.lifetime.start.p0(ptr nonnull %i.if)
  %i.rc = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.rd = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.re = load ptr, ptr %i.rd, align 8, !alias.scope !16071, !noalias !16074, !nonnull !3, !noundef !3
  %i.rf = load i64, ptr %i.rc, align 8, !alias.scope !16071, !noalias !16074, !noundef !3
  call fastcc void @_RINvXNvMNtCs6Po7BT7Nknu_5alloc5sliceSp9to_vec_inNtNtCs4lawaffTVVK_9sqlparser3ast14ObjectNamePartNtB3_10ConvertVec6to_vecNtNtB8_5alloc6GlobalECsdJxlLsGgtXr_16delta_benchmarks(ptr noalias noundef align 8 captures(none) dereferenceable(24) %i.if, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) %i.re, i64 noundef %i.rf) #28, !noalias !3
  %i.rg = getelementptr inbounds nuw i8, ptr %1, i64 280
  %i.rh = load i8, ptr %i.rg, align 8, !range !2711, !noundef !3
  %i.ri = getelementptr inbounds nuw i8, ptr %1, i64 281
  %i.rj = load i8, ptr %i.ri, align 1, !range !2711, !noundef !3
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ie)
  %i.rk = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.rl = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.rm = load ptr, ptr %i.rl, align 8, !alias.scope !16078, !noalias !16081, !nonnull !3, !noundef !3
  %i.rn = load i64, ptr %i.rk, align 8, !alias.scope !16078, !noalias !16081, !noundef !3
  invoke fastcc void @_RINvXNvMNtCs6Po7BT7Nknu_5alloc5sliceSp9to_vec_inNtNtNtCs4lawaffTVVK_9sqlparser3ast3ddl19AlterTableOperationNtB3_10ConvertVec6to_vecNtNtB8_5alloc6GlobalECsdJxlLsGgtXr_16delta_benchmarks(ptr noalias noundef nonnull align 8 captures(none) dereferenceable(24) %i.ie, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) %i.rm, i64 noundef %i.rn) #28
          to label %_RNvXsa_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VecNtNtNtCs4lawaffTVVK_9sqlparser3ast3ddl19AlterTableOperationENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCsdJxlLsGgtXr_16delta_benchmarks.exit unwind label %bb.mb, !inline_history !12001

bb.ai:                                            ; preds = %bb.a
  %i.ro = getelementptr inbounds nuw i8, ptr %1, i64 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ib)
  call fastcc void @_RNvXs9u_NtNtCs4lawaffTVVK_9sqlparser3ast3ddlNtB6_11AlterSchemaNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone(ptr noalias noundef align 8 captures(none) dereferenceable(56) %i.ib, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(56) %i.ro) #28
  %i.rp = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.rp, ptr noundef nonnull align 8 dereferenceable(56) %i.ib, i64 56, i1 false)
  store i64 34, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ib)
  br label %bb.ed

bb.aj:                                            ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ia)
  %i.rq = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.rr = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.rs = load ptr, ptr %i.rr, align 8, !alias.scope !16083, !noalias !16086, !nonnull !3, !noundef !3
  %i.rt = load i64, ptr %i.rq, align 8, !alias.scope !16083, !noalias !16086, !noundef !3
  call fastcc void @_RINvXNvMNtCs6Po7BT7Nknu_5alloc5sliceSp9to_vec_inNtNtCs4lawaffTVVK_9sqlparser3ast14ObjectNamePartNtB3_10ConvertVec6to_vecNtNtB8_5alloc6GlobalECsdJxlLsGgtXr_16delta_benchmarks(ptr noalias noundef align 8 captures(none) dereferenceable(24) %i.ia, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) %i.rs, i64 noundef %i.rt) #28, !noalias !3
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q), !noalias !16090
  %i.ru = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.rv = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.rw = load ptr, ptr %i.rv, align 8, !alias.scope !16094, !noalias !16099, !nonnull !3, !noundef !3
  %i.rx = load i64, ptr %i.ru, align 8, !alias.scope !16094, !noalias !16099, !noundef !3
  invoke fastcc void @_RINvXNvMNtCs6Po7BT7Nknu_5alloc5sliceSp9to_vec_inNtNtCs4lawaffTVVK_9sqlparser3ast14ObjectNamePartNtB3_10ConvertVec6to_vecNtNtB8_5alloc6GlobalECsdJxlLsGgtXr_16delta_benchmarks(ptr noalias noundef nonnull align 8 captures(none) dereferenceable(24) %i.q, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) %i.rw, i64 noundef %i.rx) #28
          to label %_RNvXs3X_NtCs4lawaffTVVK_9sqlparser3astNtB6_10ObjectNameNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit unwind label %bb.mq, !inline_history !16102

bb.ak:                                            ; preds = %bb.a
  %i.ry = getelementptr inbounds nuw i8, ptr %1, i64 32
  call void @llvm.lifetime.start.p0(ptr nonnull %i.hz)
  %i.rz = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.sa = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.sb = load ptr, ptr %i.sa, align 8, !alias.scope !16103, !noalias !16106, !nonnull !3, !noundef !3
  %i.sc = load i64, ptr %i.rz, align 8, !alias.scope !16103, !noalias !16106, !noundef !3
  call fastcc void @_RINvXNvMNtCs6Po7BT7Nknu_5alloc5sliceSp9to_vec_inNtNtCs4lawaffTVVK_9sqlparser3ast14ObjectNamePartNtB3_10ConvertVec6to_vecNtNtB8_5alloc6GlobalECsdJxlLsGgtXr_16delta_benchmarks(ptr noalias noundef align 8 captures(none) dereferenceable(24) %i.hz, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) %i.sb, i64 noundef %i.sc) #28, !noalias !3
  call void @llvm.lifetime.start.p0(ptr nonnull %i.hy)
  invoke void @_RNvXsa_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VecNtNtCs4lawaffTVVK_9sqlparser3ast5IdentENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCsdJxlLsGgtXr_16delta_benchmarks(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.hy, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.ry)
          to label %bb.mt unwind label %bb.ms

bb.al:                                            ; preds = %bb.a
  %i.sd = getelementptr inbounds nuw i8, ptr %1, i64 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.hv)
  call fastcc void @_RNvXs2d_NtNtCs4lawaffTVVK_9sqlparser3ast3ddlNtB6_9AlterTypeNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone(ptr noalias noundef align 8 captures(none) dereferenceable(168) %i.hv, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(168) %i.sd) #28
  %i.se = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(168) %i.se, ptr noundef nonnull align 8 dereferenceable(168) %i.hv, i64 168, i1 false)
  store i64 37, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.hv)
  br label %bb.ed

bb.am:                                            ; preds = %bb.a
  %i.sf = getelementptr inbounds nuw i8, ptr %1, i64 384
  %i.sg = getelementptr inbounds nuw i8, ptr %1, i64 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.hu)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !16110)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !16113)
  call void @_RNvXs4_NtCs6Po7BT7Nknu_5alloc6stringNtB5_6StringNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(64) %i.hu, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(64) %i.sf)
end_hunk_2
begin_hunk_3_@_RNvXsc5_NtCs4lawaffTVVK_9sqlparser3astNtB6_9StatementNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone:bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !16209)
  call void @_RNvXs4_NtCs6Po7BT7Nknu_5alloc6stringNtB5_6StringNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(64) %i.gx, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(64) %i.xp)
  %i.xq = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.xr = load i32, ptr %i.xq, align 8, !range !7691, !alias.scope !16209, !noalias !16206, !noundef !3
  %i.xs = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.xt = getelementptr inbounds nuw i8, ptr %i.gx, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.xt, ptr noundef nonnull readonly align 8 dereferenceable(32) %i.xs, i64 32, i1 false), !alias.scope !16211
  %i.xu = getelementptr inbounds nuw i8, ptr %i.gx, i64 56
  store i32 %i.xr, ptr %i.xu, align 8, !alias.scope !16206, !noalias !16209
  %i.xv = getelementptr inbounds nuw i8, ptr %1, i64 200
  %i.xw = load i8, ptr %i.xv, align 8, !range !2711, !noundef !3
  %i.xx = getelementptr inbounds nuw i8, ptr %1, i64 201
  %i.xy = load i8, ptr %i.xx, align 1, !range !2711, !noundef !3
  call void @llvm.lifetime.start.p0(ptr nonnull %i.gw)
  %i.xz = getelementptr inbounds nuw i8, ptr %1, i64 72 ; 2 uses
  %i.ya = load i64, ptr %i.xz, align 8, !range !43, !noundef !3
  %.not266 = icmp eq i64 %i.ya, -9223372036854775808
  br i1 %.not266, label %bb.op, label %bb.oo

bb.bc:                                            ; preds = %bb.a
  %i.yb = getelementptr inbounds nuw i8, ptr %1, i64 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.gv)
  call void @_RNvXsa_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VecNtNtCs4lawaffTVVK_9sqlparser3ast5IdentENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCsdJxlLsGgtXr_16delta_benchmarks(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.gv, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.yb)
  %i.yc = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.yd = load i8, ptr %i.yc, align 8, !range !2711, !noundef !3
  %i.ye = getelementptr inbounds nuw i8, ptr %1, i64 33
  %i.yf = load i8, ptr %i.ye, align 1, !range !742, !noundef !3
  %i.yg = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.yg, ptr noundef nonnull align 8 dereferenceable(24) %i.gv, i64 24, i1 false)
  %i.yh = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i8 %i.yd, ptr %i.yh, align 8
  %i.yi = getelementptr inbounds nuw i8, ptr %0, i64 33
  store i8 %i.yf, ptr %i.yi, align 1
  store i64 54, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.gv)
  br label %bb.ed

bb.bd:                                            ; preds = %bb.a
  %i.yj = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.yk = getelementptr inbounds nuw i8, ptr %1, i64 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.gu)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !16212)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !16215)
  call void @_RNvXs4_NtCs6Po7BT7Nknu_5alloc6stringNtB5_6StringNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(64) %i.gu, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(64) %i.yj)
  %i.yl = getelementptr inbounds nuw i8, ptr %1, i64 120
  %i.ym = load i32, ptr %i.yl, align 8, !range !7691, !alias.scope !16215, !noalias !16212, !noundef !3
  %i.yn = getelementptr inbounds nuw i8, ptr %1, i64 88
  %i.yo = getelementptr inbounds nuw i8, ptr %i.gu, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.yo, ptr noundef nonnull readonly align 8 dereferenceable(32) %i.yn, i64 32, i1 false), !alias.scope !16217
  %i.yp = getelementptr inbounds nuw i8, ptr %i.gu, i64 56
  store i32 %i.ym, ptr %i.yp, align 8, !alias.scope !16212, !noalias !16215
  call void @llvm.lifetime.start.p0(ptr nonnull %i.gt)
  invoke fastcc void @_RNvXseP_NtCs4lawaffTVVK_9sqlparser3astNtB6_14FetchDirectionNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone(ptr noalias noundef align 8 captures(none) dereferenceable(56) %i.gt, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(56) %i.yk)
          to label %bb.pb unwind label %bb.oz

bb.be:                                            ; preds = %bb.a
  %i.yq = getelementptr inbounds nuw i8, ptr %1, i64 59
  %.val394 = load i8, ptr %i.yq, align 1, !range !16218, !noundef !3
  %i.yr = getelementptr inbounds nuw i8, ptr %1, i64 58
  %i.ys = load i8, ptr %i.yr, align 2, !range !7944, !noundef !3
  call void @llvm.lifetime.start.p0(ptr nonnull %i.gs)
  %i.yt = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 2 uses
  %i.yu = load i64, ptr %i.yt, align 8, !range !43, !noundef !3
  %.not261 = icmp eq i64 %i.yu, -9223372036854775808
  br i1 %.not261, label %bb.pg, label %bb.pf

bb.bf:                                            ; preds = %bb.a
  %i.yv = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val395 = load i8, ptr %i.yv, align 8, !range !7748, !noundef !3
  %i.yw = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i8 %.val395, ptr %i.yw, align 8
  store i64 57, ptr %0, align 8
  br label %bb.ed

bb.bg:                                            ; preds = %bb.a
  %i.yx = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.yy = load i64, ptr %i.yx, align 8, !range !223, !noundef !3
  %.not259 = icmp eq i64 %i.yy, 73
  br i1 %.not259, label %bb.pl, label %bb.pk

bb.bh:                                            ; preds = %bb.a
  %i.yz = getelementptr inbounds nuw i8, ptr %1, i64 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.gp)
  call void @_RNvXsa_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VecNtNtCs4lawaffTVVK_9sqlparser3ast5IdentENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCsdJxlLsGgtXr_16delta_benchmarks(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.gp, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.yz)
  %i.za = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.za, ptr noundef nonnull align 8 dereferenceable(24) %i.gp, i64 24, i1 false)
  store i64 59, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.gp)
  br label %bb.ed

bb.bi:                                            ; preds = %bb.a
  %i.zb = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.zc = load i64, ptr %i.zb, align 8, !range !223, !noundef !3
  %.not258 = icmp eq i64 %i.zc, 73
  br i1 %.not258, label %bb.pn, label %bb.pm

bb.bj:                                            ; preds = %bb.a
  %i.zd = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.ze = load i64, ptr %i.zd, align 8, !range !223, !noundef !3
  %.not257 = icmp eq i64 %i.ze, 73
  br i1 %.not257, label %bb.pp, label %bb.po

bb.bk:                                            ; preds = %bb.a
  %i.zf = getelementptr inbounds nuw i8, ptr %1, i64 32
  %.val396 = load i8, ptr %i.zf, align 8, !range !742, !noundef !3
  call void @llvm.lifetime.start.p0(ptr nonnull %i.gm)
  %i.zg = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.zh = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.zi = load ptr, ptr %i.zh, align 8, !alias.scope !16219, !noalias !16222, !nonnull !3, !noundef !3
  %i.zj = load i64, ptr %i.zg, align 8, !alias.scope !16219, !noalias !16222, !noundef !3
  call fastcc void @_RINvXNvMNtCs6Po7BT7Nknu_5alloc5sliceSp9to_vec_inNtNtCs4lawaffTVVK_9sqlparser3ast14ObjectNamePartNtB3_10ConvertVec6to_vecNtNtB8_5alloc6GlobalECsdJxlLsGgtXr_16delta_benchmarks(ptr noalias noundef align 8 captures(none) dereferenceable(24) %i.gm, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) %i.zi, i64 noundef %i.zj) #28, !noalias !3
  %i.zk = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i8 %.val396, ptr %i.zk, align 8
  %i.zl = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.zl, ptr noundef nonnull align 8 dereferenceable(24) %i.gm, i64 24, i1 false)
  store i64 62, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.gm)
  br label %bb.ed

bb.bl:                                            ; preds = %bb.a
  %i.zm = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.zn = getelementptr inbounds nuw i8, ptr %1, i64 800
  %i.zo = load i8, ptr %i.zn, align 8, !range !2711, !noundef !3
  %i.zp = getelementptr inbounds nuw i8, ptr %1, i64 801
  %i.zq = load i8, ptr %i.zp, align 1, !range !2711, !noundef !3
  call void @llvm.lifetime.start.p0(ptr nonnull %i.gl)
  call fastcc void @_RNvXsxo_NtCs4lawaffTVVK_9sqlparser3astNtB6_20ShowStatementOptionsNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone(ptr noalias noundef align 8 captures(none) dereferenceable(792) %i.gl, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(792) %i.zm) #28
  %i.zr = getelementptr inbounds nuw i8, ptr %0, i64 800
  store i8 %i.zo, ptr %i.zr, align 8
  %i.zs = getelementptr inbounds nuw i8, ptr %0, i64 801
  store i8 %i.zq, ptr %i.zs, align 1
  %i.zt = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(792) %i.zt, ptr noundef nonnull align 8 dereferenceable(792) %i.gl, i64 792, i1 false)
  store i64 63, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.gl)
  br label %bb.ed

bb.bm:                                            ; preds = %bb.a
  %i.zu = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.zv = getelementptr inbounds nuw i8, ptr %1, i64 800
  %i.zw = load i8, ptr %i.zv, align 8, !range !2711, !noundef !3
  %i.zx = getelementptr inbounds nuw i8, ptr %1, i64 801
  %i.zy = load i8, ptr %i.zx, align 1, !range !2711, !noundef !3
  call void @llvm.lifetime.start.p0(ptr nonnull %i.gk)
  call fastcc void @_RNvXsxo_NtCs4lawaffTVVK_9sqlparser3astNtB6_20ShowStatementOptionsNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone(ptr noalias noundef align 8 captures(none) dereferenceable(792) %i.gk, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(792) %i.zu) #28
  %i.zz = getelementptr inbounds nuw i8, ptr %0, i64 800
  store i8 %i.zw, ptr %i.zz, align 8
  %i.aaa = getelementptr inbounds nuw i8, ptr %0, i64 801
  store i8 %i.zy, ptr %i.aaa, align 1
  %i.aab = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(792) %i.aab, ptr noundef nonnull align 8 dereferenceable(792) %i.gk, i64 792, i1 false)
  store i64 64, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.gk)
  br label %bb.ed

bb.bn:                                            ; preds = %bb.a
  %i.aac = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.aad = getelementptr inbounds nuw i8, ptr %1, i64 800
  %i.aae = load i8, ptr %i.aad, align 8, !range !2711, !noundef !3
  %i.aaf = getelementptr inbounds nuw i8, ptr %1, i64 801
  %i.aag = load i8, ptr %i.aaf, align 1, !range !2711, !noundef !3
  call void @llvm.lifetime.start.p0(ptr nonnull %i.gj)
  call fastcc void @_RNvXsxo_NtCs4lawaffTVVK_9sqlparser3astNtB6_20ShowStatementOptionsNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone(ptr noalias noundef align 8 captures(none) dereferenceable(792) %i.gj, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(792) %i.aac) #28
  %i.aah = getelementptr inbounds nuw i8, ptr %0, i64 800
  store i8 %i.aae, ptr %i.aah, align 8
  %i.aai = getelementptr inbounds nuw i8, ptr %0, i64 801
  store i8 %i.aag, ptr %i.aai, align 1
  %i.aaj = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(792) %i.aaj, ptr noundef nonnull align 8 dereferenceable(792) %i.gj, i64 792, i1 false)
  store i64 65, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.gj)
  br label %bb.ed

bb.bo:                                            ; preds = %bb.a
  %i.aak = getelementptr inbounds nuw i8, ptr %1, i64 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.gi)
  call fastcc void @_RNvXsy2_NtCs4lawaffTVVK_9sqlparser3astNtB6_11ShowCharsetNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone(ptr noalias noundef align 8 captures(none) dereferenceable(336) %i.gi, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(336) %i.aak) #28
  %i.aal = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(336) %i.aal, ptr noundef nonnull align 8 dereferenceable(336) %i.gi, i64 336, i1 false)
  store i64 66, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.gi)
  br label %bb.ed

bb.bp:                                            ; preds = %bb.a
  %i.aam = getelementptr inbounds nuw i8, ptr %1, i64 8
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0646)
  %i.aan = getelementptr inbounds nuw i8, ptr %1, i64 800
  %i.aao = load i8, ptr %i.aan, align 8, !range !2711, !alias.scope !16226, !noalias !16229, !noundef !3
  call fastcc void @_RNvXsxo_NtCs4lawaffTVVK_9sqlparser3astNtB6_20ShowStatementOptionsNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone(ptr noalias noundef align 8 captures(none) dereferenceable(792) %.sroa.0646, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(800) %i.aam) #28, !noalias !3
  %i.aap = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(792) %i.aap, ptr noundef nonnull align 8 dereferenceable(792) %.sroa.0646, i64 792, i1 false)
  %.sroa.4647.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 800
  store i8 %i.aao, ptr %.sroa.4647.0..sroa_idx, align 8
  store i64 67, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0646)
  br label %bb.ed

bb.bq:                                            ; preds = %bb.a
  %i.aaq = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.aar = getelementptr inbounds nuw i8, ptr %1, i64 800
  %3 = getelementptr inbounds nuw i8, ptr %1, i64 804
  %4 = load i8, ptr %3, align 4, !range !2711, !noundef !3
  call void @llvm.lifetime.start.p0(ptr nonnull %i.gh)
  %i.aas = getelementptr inbounds nuw i8, ptr %0, i64 800
  %5 = load <4 x i8>, ptr %i.aar, align 8
  call fastcc void @_RNvXsxo_NtCs4lawaffTVVK_9sqlparser3astNtB6_20ShowStatementOptionsNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone(ptr noalias noundef align 8 captures(none) dereferenceable(792) %i.gh, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(792) %i.aaq) #28
  store <4 x i8> %5, ptr %i.aas, align 8
  %6 = getelementptr inbounds nuw i8, ptr %0, i64 804
  store i8 %4, ptr %6, align 4
  %i.aat = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(792) %i.aat, ptr noundef nonnull align 8 dereferenceable(792) %i.gh, i64 792, i1 false)
  store i64 68, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.gh)
  br label %bb.ed

bb.br:                                            ; preds = %bb.a
  %i.aau = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.aav = getelementptr inbounds nuw i8, ptr %1, i64 800
  %i.aaw = load i8, ptr %i.aav, align 8, !range !2711, !noundef !3
  %i.aax = getelementptr inbounds nuw i8, ptr %1, i64 801
  %i.aay = load i8, ptr %i.aax, align 1, !range !2711, !noundef !3
  call void @llvm.lifetime.start.p0(ptr nonnull %i.gg)
  call fastcc void @_RNvXsxo_NtCs4lawaffTVVK_9sqlparser3astNtB6_20ShowStatementOptionsNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone(ptr noalias noundef align 8 captures(none) dereferenceable(792) %i.gg, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(792) %i.aau) #28
  %i.aaz = getelementptr inbounds nuw i8, ptr %0, i64 800
  store i8 %i.aaw, ptr %i.aaz, align 8
  %i.aba = getelementptr inbounds nuw i8, ptr %0, i64 801
  store i8 %i.aay, ptr %i.aba, align 1
  %i.abb = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(792) %i.abb, ptr noundef nonnull align 8 dereferenceable(792) %i.gg, i64 792, i1 false)
  store i64 69, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.gg)
  br label %bb.ed

bb.bs:                                            ; preds = %bb.a
  %i.abc = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.abd = load i64, ptr %i.abc, align 8, !range !223, !noundef !3
  %.not256 = icmp eq i64 %i.abd, 73
  br i1 %.not256, label %bb.pr, label %bb.pq

bb.bt:                                            ; preds = %bb.a
  %i.abe = getelementptr inbounds nuw i8, ptr %1, i64 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ge)
  call fastcc void @_RNvXsH_NtNtCs4lawaffTVVK_9sqlparser3ast3dclNtB5_3UseNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone(ptr noalias noundef align 8 captures(none) dereferenceable(32) %i.ge, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.abe) #28
  %i.abf = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.abf, ptr noundef nonnull align 8 dereferenceable(32) %i.ge, i64 32, i1 false)
  store i64 71, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ge)
  br label %bb.ed

bb.bu:                                            ; preds = %bb.a
  %i.abg = getelementptr inbounds nuw i8, ptr %1, i64 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.gd)
  call void @_RNvXsa_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VecNtNtCs4lawaffTVVK_9sqlparser3ast15TransactionModeENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCsdJxlLsGgtXr_16delta_benchmarks(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.gd, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.abg)
  %i.abh = getelementptr inbounds nuw i8, ptr %1, i64 80
  %i.abi = load i8, ptr %i.abh, align 8, !range !2711, !noundef !3
  %i.abj = getelementptr inbounds nuw i8, ptr %1, i64 82
  %i.abk = load i8, ptr %i.abj, align 2, !range !7944, !noundef !3
  %i.abl = getelementptr inbounds nuw i8, ptr %1, i64 83
  %i.abm = load i8, ptr %i.abl, align 1, !range !742, !noundef !3
  call void @llvm.lifetime.start.p0(ptr nonnull %i.gc)
  %i.abn = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.abo = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.abp = load ptr, ptr %i.abo, align 8, !alias.scope !16231, !noalias !16234, !nonnull !3, !noundef !3
  %i.abq = load i64, ptr %i.abn, align 8, !alias.scope !16231, !noalias !16234, !noundef !3
  invoke fastcc void @_RINvXNvMNtCs6Po7BT7Nknu_5alloc5sliceSp9to_vec_inNtNtCs4lawaffTVVK_9sqlparser3ast9StatementNtB3_10ConvertVec6to_vecNtNtB8_5alloc6GlobalECsdJxlLsGgtXr_16delta_benchmarks(ptr noalias noundef nonnull align 8 captures(none) dereferenceable(24) %i.gc, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) %i.abp, i64 noundef %i.abq) #28
          to label %_RNvXsa_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VecNtNtCs4lawaffTVVK_9sqlparser3ast9StatementENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCsdJxlLsGgtXr_16delta_benchmarks.exit unwind label %bb.pt, !inline_history !16236

bb.bv:                                            ; preds = %bb.a
  %i.abr = getelementptr inbounds nuw i8, ptr %1, i64 57
  %.val397 = load i8, ptr %i.abr, align 1, !range !12070, !noundef !3
  call void @llvm.lifetime.start.p0(ptr nonnull %i.gb)
  %i.abs = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.abt = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.abu = load ptr, ptr %i.abt, align 8, !alias.scope !16237, !noalias !16240, !nonnull !3, !noundef !3
  %i.abv = load i64, ptr %i.abs, align 8, !alias.scope !16237, !noalias !16240, !noundef !3
  call fastcc void @_RINvXNvMNtCs6Po7BT7Nknu_5alloc5sliceSp9to_vec_inNtNtCs4lawaffTVVK_9sqlparser3ast14ObjectNamePartNtB3_10ConvertVec6to_vecNtNtB8_5alloc6GlobalECsdJxlLsGgtXr_16delta_benchmarks(ptr noalias noundef align 8 captures(none) dereferenceable(24) %i.gb, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) %i.abu, i64 noundef %i.abv) #28, !noalias !3
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.576)
  %i.abw = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 2 uses
  %i.abx = load i64, ptr %i.abw, align 8, !range !43, !noundef !3
  %.not250 = icmp eq i64 %i.abx, -9223372036854775808
  br i1 %.not250, label %bb.pz, label %bb.py

bb.bw:                                            ; preds = %bb.a
  %i.aby = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.abz = load i8, ptr %i.aby, align 8, !range !2711, !noundef !3
  %i.aca = getelementptr inbounds nuw i8, ptr %1, i64 9
  %i.acb = load i8, ptr %i.aca, align 1, !range !2711, !noundef !3
  %i.acc = getelementptr inbounds nuw i8, ptr %1, i64 10
  %i.acd = load i8, ptr %i.acc, align 2, !range !742, !noundef !3
  %i.ace = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i8 %i.abz, ptr %i.ace, align 8
  %i.acf = getelementptr inbounds nuw i8, ptr %0, i64 9
  store i8 %i.acb, ptr %i.acf, align 1
  %i.acg = getelementptr inbounds nuw i8, ptr %0, i64 10
  store i8 %i.acd, ptr %i.acg, align 2
  store i64 74, ptr %0, align 8
  br label %bb.ed

bb.bx:                                            ; preds = %bb.a
  %i.ach = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.aci = load i8, ptr %i.ach, align 8, !range !2711, !noundef !3
  %i.acj = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.ack = load i64, ptr %i.acj, align 8, !range !43, !noundef !3
  %.not248 = icmp eq i64 %i.ack, -9223372036854775808
  br i1 %.not248, label %bb.qd, label %bb.qc

bb.by:                                            ; preds = %bb.a
  %i.acl = getelementptr inbounds nuw i8, ptr %1, i64 408
  call void @llvm.lifetime.start.p0(ptr nonnull %i.fz)
  call fastcc void @_RNvXsuO_NtCs4lawaffTVVK_9sqlparser3astNtB6_10SchemaNameNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone(ptr noalias noundef align 8 captures(none) dereferenceable(88) %i.fz, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(88) %i.acl) #28
  %i.acm = getelementptr inbounds nuw i8, ptr %1, i64 496
  %i.acn = load i8, ptr %i.acm, align 8, !range !2711, !noundef !3
  call void @llvm.lifetime.start.p0(ptr nonnull %i.fy)
  %i.aco = getelementptr inbounds nuw i8, ptr %1, i64 336
  %i.acp = load i64, ptr %i.aco, align 8, !range !43, !noundef !3
  %.not240 = icmp eq i64 %i.acp, -9223372036854775808
  br i1 %.not240, label %bb.qf, label %bb.qe

bb.bz:                                            ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.fv)
  %i.acq = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.acr = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.acs = load ptr, ptr %i.acr, align 8, !alias.scope !16244, !noalias !16247, !nonnull !3, !noundef !3
  %i.act = load i64, ptr %i.acq, align 8, !alias.scope !16244, !noalias !16247, !noundef !3
  call fastcc void @_RINvXNvMNtCs6Po7BT7Nknu_5alloc5sliceSp9to_vec_inNtNtCs4lawaffTVVK_9sqlparser3ast14ObjectNamePartNtB3_10ConvertVec6to_vecNtNtB8_5alloc6GlobalECsdJxlLsGgtXr_16delta_benchmarks(ptr noalias noundef align 8 captures(none) dereferenceable(24) %i.fv, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) %i.acs, i64 noundef %i.act) #28, !noalias !3
  %i.acu = getelementptr inbounds nuw i8, ptr %1, i64 328
  %i.acv = load i8, ptr %i.acu, align 8, !range !2711, !noundef !3
  call void @llvm.lifetime.start.p0(ptr nonnull %i.fu)
  %i.acw = getelementptr inbounds nuw i8, ptr %1, i64 64 ; 2 uses
  %i.acx = load i64, ptr %i.acw, align 8, !range !43, !noundef !3
  %.not216 = icmp eq i64 %i.acx, -9223372036854775808
  br i1 %.not216, label %bb.qz, label %bb.qy

bb.ca:                                            ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.fk)
  call fastcc void @_RNvXs8Q_NtNtCs4lawaffTVVK_9sqlparser3ast3ddlNtB6_14CreateFunctionNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone(ptr noalias noundef align 8 captures(none) dereferenceable(2688) %i.fk, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(2688) %1) #28
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(2688) %0, ptr noundef nonnull align 8 dereferenceable(2688) %i.fk, i64 2688, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.fk)
  br label %bb.ed

bb.cb:                                            ; preds = %bb.a
  %i.acy = getelementptr inbounds nuw i8, ptr %1, i64 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.fj)
  call fastcc void @_RNvXs9E_NtNtCs4lawaffTVVK_9sqlparser3ast3ddlNtB6_13CreateTriggerNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone(ptr noalias noundef align 8 captures(none) dereferenceable(720) %i.fj, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(720) %i.acy) #28
  %i.acz = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(720) %i.acz, ptr noundef nonnull align 8 dereferenceable(720) %i.fj, i64 720, i1 false)
  store i64 79, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.fj)
  br label %bb.ed

bb.cc:                                            ; preds = %bb.a
  %i.ada = getelementptr inbounds nuw i8, ptr %1, i64 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.fi)
  call fastcc void @_RNvXs9O_NtNtCs4lawaffTVVK_9sqlparser3ast3ddlNtB6_11DropTriggerNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone(ptr noalias noundef align 8 captures(none) dereferenceable(56) %i.fi, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(56) %i.ada) #28
  %i.adb = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.adb, ptr noundef nonnull align 8 dereferenceable(56) %i.fi, i64 56, i1 false)
  store i64 80, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.fi)
  br label %bb.ed

bb.cd:                                            ; preds = %bb.a
  %i.adc = getelementptr inbounds nuw i8, ptr %1, i64 120
  %i.add = getelementptr inbounds nuw i8, ptr %1, i64 320
  %i.ade = load i8, ptr %i.add, align 8, !range !2711, !noundef !3
  call void @llvm.lifetime.start.p0(ptr nonnull %i.fh)
  %i.adf = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.adg = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.adh = load ptr, ptr %i.adg, align 8, !alias.scope !16251, !noalias !16254, !nonnull !3, !noundef !3
  %i.adi = load i64, ptr %i.adf, align 8, !alias.scope !16251, !noalias !16254, !noundef !3
  call fastcc void @_RINvXNvMNtCs6Po7BT7Nknu_5alloc5sliceSp9to_vec_inNtNtCs4lawaffTVVK_9sqlparser3ast14ObjectNamePartNtB3_10ConvertVec6to_vecNtNtB8_5alloc6GlobalECsdJxlLsGgtXr_16delta_benchmarks(ptr noalias noundef align 8 captures(none) dereferenceable(24) %i.fh, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) %i.adh, i64 noundef %i.adi) #28, !noalias !3
  call void @llvm.lifetime.start.p0(ptr nonnull %i.fg)
  %i.adj = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 2 uses
  %i.adk = load i64, ptr %i.adj, align 8, !range !43, !noundef !3
  %.not211 = icmp eq i64 %i.adk, -9223372036854775808
  br i1 %.not211, label %bb.tk, label %bb.tj

bb.ce:                                            ; preds = %bb.a
  %i.adl = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.adm = getelementptr inbounds nuw i8, ptr %1, i64 384
  %i.adn = load i8, ptr %i.adm, align 8, !range !2711, !noundef !3
  %i.ado = getelementptr inbounds nuw i8, ptr %1, i64 385
  %i.adp = load i8, ptr %i.ado, align 1, !range !2711, !noundef !3
  call void @llvm.lifetime.start.p0(ptr nonnull %i.fd)
  %i.adq = getelementptr inbounds nuw i8, ptr %1, i64 352
  %i.adr = getelementptr inbounds nuw i8, ptr %1, i64 344
  %i.ads = load ptr, ptr %i.adr, align 8, !alias.scope !16258, !noalias !16261, !nonnull !3, !noundef !3
  %i.adt = load i64, ptr %i.adq, align 8, !alias.scope !16258, !noalias !16261, !noundef !3
  call fastcc void @_RINvXNvMNtCs6Po7BT7Nknu_5alloc5sliceSp9to_vec_inNtNtCs4lawaffTVVK_9sqlparser3ast14ObjectNamePartNtB3_10ConvertVec6to_vecNtNtB8_5alloc6GlobalECsdJxlLsGgtXr_16delta_benchmarks(ptr noalias noundef align 8 captures(none) dereferenceable(24) %i.fd, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) %i.ads, i64 noundef %i.adt) #28, !noalias !3
  call void @llvm.lifetime.start.p0(ptr nonnull %i.fc)
  %i.adu = getelementptr inbounds nuw i8, ptr %1, i64 360 ; 2 uses
  %i.adv = load i64, ptr %i.adu, align 8, !range !43, !noundef !3
  %.not208 = icmp eq i64 %i.adv, -9223372036854775808
  br i1 %.not208, label %bb.ty, label %bb.tx

bb.cf:                                            ; preds = %bb.a
  %i.adw = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.adx = getelementptr inbounds nuw i8, ptr %1, i64 200
  %i.ady = getelementptr inbounds nuw i8, ptr %1, i64 232
  %i.adz = getelementptr inbounds nuw i8, ptr %1, i64 288
  %i.aea = load i8, ptr %i.adz, align 8, !range !2711, !noundef !3
  %i.aeb = getelementptr inbounds nuw i8, ptr %1, i64 289
  %i.aec = load i8, ptr %i.aeb, align 1, !range !2711, !noundef !3
  %i.aed = getelementptr inbounds nuw i8, ptr %1, i64 290
  %i.aee = load i8, ptr %i.aed, align 2, !range !2711, !noundef !3
  call void @llvm.lifetime.start.p0(ptr nonnull %i.fa)
  %i.aef = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.aeg = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.aeh = load ptr, ptr %i.aeg, align 8, !alias.scope !16265, !noalias !16268, !nonnull !3, !noundef !3
  %i.aei = load i64, ptr %i.aef, align 8, !alias.scope !16265, !noalias !16268, !noundef !3
  call fastcc void @_RINvXNvMNtCs6Po7BT7Nknu_5alloc5sliceSp9to_vec_inNtNtCs4lawaffTVVK_9sqlparser3ast14ObjectNamePartNtB3_10ConvertVec6to_vecNtNtB8_5alloc6GlobalECsdJxlLsGgtXr_16delta_benchmarks(ptr noalias noundef align 8 captures(none) dereferenceable(24) %i.fa, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) %i.aeh, i64 noundef %i.aei) #28, !noalias !3
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ez)
  invoke fastcc void @_RNvXs3_NtNtNtCs4lawaffTVVK_9sqlparser3ast7helpers17stmt_data_loadingNtB5_17StageParamsObjectNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone(ptr noalias noundef align 8 captures(none) dereferenceable(136) %i.ez, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(136) %i.adw)
          to label %bb.uh unwind label %bb.ug

bb.cg:                                            ; preds = %bb.a
  %i.aej = getelementptr inbounds nuw i8, ptr %1, i64 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ev)
  call fastcc void @_RNvXs6H_NtCs4lawaffTVVK_9sqlparser3astNtB6_4ExprNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone(ptr noalias noundef align 8 captures(none) dereferenceable(328) %i.ev, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(328) %i.aej) #28
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.599)
  %i.aek = getelementptr inbounds nuw i8, ptr %1, i64 336 ; 2 uses
  %i.ael = load i64, ptr %i.aek, align 8, !range !69, !noundef !3
  %.not201 = icmp eq i64 %i.ael, 69
  br i1 %.not201, label %bb.ut, label %bb.us

bb.ch:                                            ; preds = %bb.a
  %i.aem = getelementptr inbounds nuw i8, ptr %1, i64 88 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.eu)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !16272)
  %i.aen = load i64, ptr %i.aem, align 8, !range !43, !alias.scope !16275, !noalias !16272, !noundef !3
  %.not.i424 = icmp eq i64 %i.aen, -9223372036854775808
  br i1 %.not.i424, label %bb.cj, label %bb.ci

bb.ci:                                            ; preds = %bb.ch
  call void @_RNvXsa_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VecNtNtCs4lawaffTVVK_9sqlparser3ast6ActionENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCsdJxlLsGgtXr_16delta_benchmarks(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.eu, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.aem), !noalias !3
  br label %_RNvXseF_NtCs4lawaffTVVK_9sqlparser3astNtB6_10PrivilegesNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit

bb.cj:                                            ; preds = %bb.ch
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.eu, ptr noundef nonnull readonly align 8 dereferenceable(24) %i.aem, i64 24, i1 false), !alias.scope !16277
  br label %_RNvXseF_NtCs4lawaffTVVK_9sqlparser3astNtB6_10PrivilegesNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit

_RNvXseF_NtCs4lawaffTVVK_9sqlparser3astNtB6_10PrivilegesNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit: ; preds = %bb.ci, %bb.cj
  call void @llvm.lifetime.start.p0(ptr nonnull %i.et)
  %i.aeo = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.aep = load i64, ptr %i.aeo, align 8, !range !3563, !noundef !3
  %.not192 = icmp eq i64 %i.aep, 28
  br i1 %.not192, label %bb.ux, label %bb.uw

bb.ck:                                            ; preds = %bb.a
  %i.aeq = getelementptr inbounds nuw i8, ptr %1, i64 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.eq)
  call fastcc void @_RNvXsgV_NtCs4lawaffTVVK_9sqlparser3astNtB6_13DenyStatementNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone(ptr noalias noundef align 8 captures(none) dereferenceable(176) %i.eq, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(176) %i.aeq) #28
  %i.aer = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(176) %i.aer, ptr noundef nonnull align 8 dereferenceable(176) %i.eq, i64 176, i1 false)
  store i64 86, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.eq)
  br label %bb.ed

bb.cl:                                            ; preds = %bb.a
  %i.aes = getelementptr inbounds nuw i8, ptr %1, i64 88 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ep)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !16278)
  %i.aet = load i64, ptr %i.aes, align 8, !range !43, !alias.scope !16281, !noalias !16278, !noundef !3
  %.not.i425 = icmp eq i64 %i.aet, -9223372036854775808
  br i1 %.not.i425, label %bb.cn, label %bb.cm

bb.cm:                                            ; preds = %bb.cl
  call void @_RNvXsa_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VecNtNtCs4lawaffTVVK_9sqlparser3ast6ActionENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCsdJxlLsGgtXr_16delta_benchmarks(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.ep, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.aes), !noalias !3
  br label %_RNvXseF_NtCs4lawaffTVVK_9sqlparser3astNtB6_10PrivilegesNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit426

bb.cn:                                            ; preds = %bb.cl
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ep, ptr noundef nonnull readonly align 8 dereferenceable(24) %i.aes, i64 24, i1 false), !alias.scope !16283
  br label %_RNvXseF_NtCs4lawaffTVVK_9sqlparser3astNtB6_10PrivilegesNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit426

_RNvXseF_NtCs4lawaffTVVK_9sqlparser3astNtB6_10PrivilegesNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit426: ; preds = %bb.cm, %bb.cn
  call void @llvm.lifetime.start.p0(ptr nonnull %i.eo)
  %i.aeu = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.aev = load i64, ptr %i.aeu, align 8, !range !3563, !noundef !3
  %.not185 = icmp eq i64 %i.aev, 28
  br i1 %.not185, label %bb.vp, label %bb.vo

bb.co:                                            ; preds = %bb.a
  %i.aew = getelementptr inbounds nuw i8, ptr %1, i64 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.em)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !16284)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !16287)
  call void @_RNvXs4_NtCs6Po7BT7Nknu_5alloc6stringNtB5_6StringNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(64) %i.em, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(64) %i.aew)
  %i.aex = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.aey = load i32, ptr %i.aex, align 8, !range !7691, !alias.scope !16287, !noalias !16284, !noundef !3
  %i.aez = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.afa = getelementptr inbounds nuw i8, ptr %i.em, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.afa, ptr noundef nonnull readonly align 8 dereferenceable(32) %i.aez, i64 32, i1 false), !alias.scope !16289
  %i.afb = getelementptr inbounds nuw i8, ptr %i.em, i64 56
  store i32 %i.aey, ptr %i.afb, align 8, !alias.scope !16284, !noalias !16287
  %i.afc = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.afd = load i8, ptr %i.afc, align 8, !range !2711, !noundef !3
  %i.afe = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.afe, ptr noundef nonnull align 8 dereferenceable(64) %i.em, i64 64, i1 false)
  %i.aff = getelementptr inbounds nuw i8, ptr %0, i64 72
  store i8 %i.afd, ptr %i.aff, align 8
  store i64 88, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.em)
  br label %bb.ed

bb.cp:                                            ; preds = %bb.a
  %i.afg = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.afh = getelementptr inbounds nuw i8, ptr %1, i64 32
  call void @llvm.lifetime.start.p0(ptr nonnull %i.el)
  %i.afi = getelementptr inbounds nuw i8, ptr %1, i64 80
  %i.afj = load i64, ptr %i.afi, align 8, !range !43, !noundef !3
  %.not181 = icmp eq i64 %i.afj, -9223372036854775808
  br i1 %.not181, label %bb.wb, label %bb.wa

bb.cq:                                            ; preds = %bb.a
  %i.afk = getelementptr inbounds nuw i8, ptr %1, i64 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.eh)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !16290)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !16293)
  call void @_RNvXs4_NtCs6Po7BT7Nknu_5alloc6stringNtB5_6StringNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(64) %i.eh, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(64) %i.afk)
  %i.afl = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.afm = load i32, ptr %i.afl, align 8, !range !7691, !alias.scope !16293, !noalias !16290, !noundef !3
  %i.afn = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.afo = getelementptr inbounds nuw i8, ptr %i.eh, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.afo, ptr noundef nonnull readonly align 8 dereferenceable(32) %i.afn, i64 32, i1 false), !alias.scope !16295
  %i.afp = getelementptr inbounds nuw i8, ptr %i.eh, i64 56
  store i32 %i.afm, ptr %i.afp, align 8, !alias.scope !16290, !noalias !16293
  call void @llvm.lifetime.start.p0(ptr nonnull %i.eg)
  %i.afq = getelementptr inbounds nuw i8, ptr %1, i64 88
  %i.afr = getelementptr inbounds nuw i8, ptr %1, i64 80
  %i.afs = load ptr, ptr %i.afr, align 8, !alias.scope !16296, !noalias !16299, !nonnull !3, !noundef !3
  %i.aft = load i64, ptr %i.afq, align 8, !alias.scope !16296, !noalias !16299, !noundef !3
  invoke fastcc void @_RINvXNvMNtCs6Po7BT7Nknu_5alloc5sliceSp9to_vec_inNtNtNtCs4lawaffTVVK_9sqlparser3ast9data_type8DataTypeNtB3_10ConvertVec6to_vecNtNtB8_5alloc6GlobalECsdJxlLsGgtXr_16delta_benchmarks(ptr noalias noundef nonnull align 8 captures(none) dereferenceable(24) %i.eg, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) %i.afs, i64 noundef %i.aft) #28
          to label %_RNvXsa_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VecNtNtNtCs4lawaffTVVK_9sqlparser3ast9data_type8DataTypeENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCsdJxlLsGgtXr_16delta_benchmarks.exit unwind label %bb.wl, !inline_history !16301

bb.cr:                                            ; preds = %bb.a
  %i.afu = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.afv = load i8, ptr %i.afu, align 8, !range !7748, !noundef !3
  %i.afw = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.afx = load i64, ptr %i.afw, align 8, !noundef !3
  %i.afy = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i8 %i.afv, ptr %i.afy, align 8
  %i.afz = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.afx, ptr %i.afz, align 8
  store i64 91, ptr %0, align 8
  br label %bb.ed

bb.cs:                                            ; preds = %bb.a
  %i.aga = getelementptr inbounds nuw i8, ptr %1, i64 33
  %.val401 = load i8, ptr %i.aga, align 1, !range !7944, !noundef !3
  %i.agb = getelementptr inbounds nuw i8, ptr %1, i64 34
  %i.agc = load i8, ptr %i.agb, align 2, !range !7944, !noundef !3
  %i.agd = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.age = load i8, ptr %i.agd, align 8, !range !2711, !noundef !3
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ef)
  %i.agf = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.agg = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.agh = load ptr, ptr %i.agg, align 8, !alias.scope !16302, !noalias !16305, !nonnull !3, !noundef !3
  %i.agi = load i64, ptr %i.agf, align 8, !alias.scope !16302, !noalias !16305, !noundef !3
  call fastcc void @_RINvXNvMNtCs6Po7BT7Nknu_5alloc5sliceSp9to_vec_inNtNtCs4lawaffTVVK_9sqlparser3ast14ObjectNamePartNtB3_10ConvertVec6to_vecNtNtB8_5alloc6GlobalECsdJxlLsGgtXr_16delta_benchmarks(ptr noalias noundef align 8 captures(none) dereferenceable(24) %i.ef, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) %i.agh, i64 noundef %i.agi) #28, !noalias !3
  %i.agj = getelementptr inbounds nuw i8, ptr %0, i64 33
  store i8 %.val401, ptr %i.agj, align 1
  %i.agk = getelementptr inbounds nuw i8, ptr %0, i64 34
  store i8 %i.agc, ptr %i.agk, align 2
  %i.agl = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i8 %i.age, ptr %i.agl, align 8
  %i.agm = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.agm, ptr noundef nonnull align 8 dereferenceable(24) %i.ef, i64 24, i1 false)
  store i64 92, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ef)
  br label %bb.ed

bb.ct:                                            ; preds = %bb.a
  %7 = getelementptr inbounds nuw i8, ptr %1, i64 46
  %i.agn = getelementptr inbounds nuw i8, ptr %1, i64 32
  %.val400 = load i8, ptr %7, align 2, !range !7944, !noundef !3
  %i.ago = getelementptr inbounds nuw i8, ptr %1, i64 42
  %8 = load <4 x i8>, ptr %i.ago, align 2
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ee)
  %i.agp = tail call fastcc noundef nonnull align 8 ptr @_RNvXsd_NtCs6Po7BT7Nknu_5alloc5boxedINtB5_3BoxNtNtCs4lawaffTVVK_9sqlparser3ast9StatementENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCsdJxlLsGgtXr_16delta_benchmarks(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.agn) #28 ; 2 uses
  store ptr %i.agp, ptr %i.ee, align 8
  %i.agq = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.agr = load i8, ptr %i.agq, align 8, !range !7944, !noundef !3 ; 2 uses
  %.not175 = icmp eq i8 %i.agr, 2
  %i.ags = getelementptr inbounds nuw i8, ptr %1, i64 41
  %.val416 = load i8, ptr %i.ags, align 1
  %.sroa.5106.0 = select i1 %.not175, i8 undef, i8 %.val416
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.5109)
  %i.agt = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.agu = load i64, ptr %i.agt, align 8, !range !43, !noundef !3
  %.not176 = icmp eq i64 %i.agu, -9223372036854775808
  br i1 %.not176, label %bb.wq, label %bb.wp

bb.cu:                                            ; preds = %bb.a
  %i.agv = getelementptr inbounds nuw i8, ptr %1, i64 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ed)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !16309)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !16312)
  call void @_RNvXs4_NtCs6Po7BT7Nknu_5alloc6stringNtB5_6StringNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(64) %i.ed, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(64) %i.agv)
  %i.agw = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.agx = load i32, ptr %i.agw, align 8, !range !7691, !alias.scope !16312, !noalias !16309, !noundef !3
  %i.agy = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.agz = getelementptr inbounds nuw i8, ptr %i.ed, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.agz, ptr noundef nonnull readonly align 8 dereferenceable(32) %i.agy, i64 32, i1 false), !alias.scope !16314
  %i.aha = getelementptr inbounds nuw i8, ptr %i.ed, i64 56
  store i32 %i.agx, ptr %i.aha, align 8, !alias.scope !16309, !noalias !16312
  %i.ahb = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.ahb, ptr noundef nonnull align 8 dereferenceable(64) %i.ed, i64 64, i1 false)
  store i64 94, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ed)
  br label %bb.ed

bb.cv:                                            ; preds = %bb.a
  %i.ahc = getelementptr inbounds nuw i8, ptr %1, i64 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ec)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !16315)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !16318)
  call void @_RNvXs4_NtCs6Po7BT7Nknu_5alloc6stringNtB5_6StringNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(64) %i.ec, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(64) %i.ahc)
  %i.ahd = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.ahe = load i32, ptr %i.ahd, align 8, !range !7691, !alias.scope !16318, !noalias !16315, !noundef !3
  %i.ahf = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.ahg = getelementptr inbounds nuw i8, ptr %i.ec, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.ahg, ptr noundef nonnull readonly align 8 dereferenceable(32) %i.ahf, i64 32, i1 false), !alias.scope !16320
  %i.ahh = getelementptr inbounds nuw i8, ptr %i.ec, i64 56
  store i32 %i.ahe, ptr %i.ahh, align 8, !alias.scope !16315, !noalias !16318
  %i.ahi = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.ahi, ptr noundef nonnull align 8 dereferenceable(64) %i.ec, i64 64, i1 false)
  store i64 95, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ec)
  br label %bb.ed

bb.cw:                                            ; preds = %bb.a
  %i.ahj = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.ahk = getelementptr inbounds nuw i8, ptr %1, i64 624
  %i.ahl = getelementptr inbounds nuw i8, ptr %1, i64 1240
  %i.ahm = getelementptr inbounds nuw i8, ptr %1, i64 1328
  %i.ahn = load i8, ptr %i.ahm, align 8, !range !2711, !noundef !3
  call void @llvm.lifetime.start.p0(ptr nonnull %i.eb)
  call fastcc void @_RNvXs71_NtNtCs4lawaffTVVK_9sqlparser3ast5queryNtB6_11TableFactorNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone(ptr noalias noundef align 8 captures(none) dereferenceable(616) %i.eb, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(616) %i.ahj) #28
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ea)
  invoke fastcc void @_RNvXs71_NtNtCs4lawaffTVVK_9sqlparser3ast5queryNtB6_11TableFactorNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone(ptr noalias noundef align 8 captures(none) dereferenceable(616) %i.ea, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(616) %i.ahk)
          to label %bb.wu unwind label %bb.wt

bb.cx:                                            ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.dx)
  %i.aho = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.ahp = load i64, ptr %i.aho, align 8, !range !43, !noundef !3
  %.not165 = icmp eq i64 %i.ahp, -9223372036854775808
  br i1 %.not165, label %bb.xg, label %bb.xf

bb.cy:                                            ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.du)
  %i.ahq = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.ahr = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.ahs = load ptr, ptr %i.ahr, align 8, !alias.scope !16321, !noalias !16324, !nonnull !3, !noundef !3
  %i.aht = load i64, ptr %i.ahq, align 8, !alias.scope !16321, !noalias !16324, !noundef !3
  call fastcc void @_RINvXNvMNtCs6Po7BT7Nknu_5alloc5sliceSp9to_vec_inNtNtCs4lawaffTVVK_9sqlparser3ast14ObjectNamePartNtB3_10ConvertVec6to_vecNtNtB8_5alloc6GlobalECsdJxlLsGgtXr_16delta_benchmarks(ptr noalias noundef align 8 captures(none) dereferenceable(24) %i.du, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) %i.ahs, i64 noundef %i.aht) #28, !noalias !3
  %i.ahu = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.ahv = load i8, ptr %i.ahu, align 8, !range !2711, !noundef !3
  %i.ahw = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ahw, ptr noundef nonnull align 8 dereferenceable(24) %i.du, i64 24, i1 false)
  %i.ahx = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i8 %i.ahv, ptr %i.ahx, align 8
  store i64 98, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.du)
  br label %bb.ed

bb.cz:                                            ; preds = %bb.a
  %i.ahy = getelementptr inbounds nuw i8, ptr %1, i64 136
  %i.ahz = load i8, ptr %i.ahy, align 8, !range !2711, !noundef !3
  %i.aia = getelementptr inbounds nuw i8, ptr %1, i64 137
  %i.aib = load i8, ptr %i.aia, align 1, !range !2711, !noundef !3
  call void @llvm.lifetime.start.p0(ptr nonnull %i.dt)
  %i.aic = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.aid = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.aie = load ptr, ptr %i.aid, align 8, !alias.scope !16328, !noalias !16331, !nonnull !3, !noundef !3
  %i.aif = load i64, ptr %i.aic, align 8, !alias.scope !16328, !noalias !16331, !noundef !3
  call fastcc void @_RINvXNvMNtCs6Po7BT7Nknu_5alloc5sliceSp9to_vec_inNtNtCs4lawaffTVVK_9sqlparser3ast14ObjectNamePartNtB3_10ConvertVec6to_vecNtNtB8_5alloc6GlobalECsdJxlLsGgtXr_16delta_benchmarks(ptr noalias noundef align 8 captures(none) dereferenceable(24) %i.dt, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) %i.aie, i64 noundef %i.aif) #28, !noalias !3
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ds)
  %i.aig = getelementptr inbounds nuw i8, ptr %1, i64 80 ; 2 uses
  %i.aih = load i8, ptr %i.aig, align 8, !range !1208, !noundef !3
  %.not160 = icmp eq i8 %i.aih, 116
  br i1 %.not160, label %bb.xr, label %bb.xq

bb.da:                                            ; preds = %bb.a
  %i.aii = getelementptr inbounds nuw i8, ptr %1, i64 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.dq)
  call fastcc void @_RNvXs8G_NtNtCs4lawaffTVVK_9sqlparser3ast3ddlNtB6_12CreateDomainNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone(ptr noalias noundef align 8 captures(none) dereferenceable(496) %i.dq, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(496) %i.aii) #28
  %i.aij = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(496) %i.aij, ptr noundef nonnull align 8 dereferenceable(496) %i.dq, i64 496, i1 false)
  store i64 100, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.dq)
  br label %bb.ed

bb.db:                                            ; preds = %bb.a
  %i.aik = getelementptr inbounds nuw i8, ptr %1, i64 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.dp)
  %i.ail = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.aim = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.ain = load ptr, ptr %i.aim, align 8, !alias.scope !16335, !noalias !16338, !nonnull !3, !noundef !3
  %i.aio = load i64, ptr %i.ail, align 8, !alias.scope !16335, !noalias !16338, !noundef !3
  call fastcc void @_RINvXNvMNtCs6Po7BT7Nknu_5alloc5sliceSp9to_vec_inNtNtCs4lawaffTVVK_9sqlparser3ast14ObjectNamePartNtB3_10ConvertVec6to_vecNtNtB8_5alloc6GlobalECsdJxlLsGgtXr_16delta_benchmarks(ptr noalias noundef align 8 captures(none) dereferenceable(24) %i.dp, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) %i.ain, i64 noundef %i.aio) #28, !noalias !3
  call void @llvm.lifetime.start.p0(ptr nonnull %i.do)
  invoke fastcc void @_RNvXs7y_NtNtCs4lawaffTVVK_9sqlparser3ast3ddlNtB6_29UserDefinedTypeRepresentationNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone(ptr noalias noundef align 8 captures(none) dereferenceable(32) %i.do, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.aik)
          to label %bb.yd unwind label %bb.yc

bb.dc:                                            ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.dn)
  %i.aip = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.aiq = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.air = load ptr, ptr %i.aiq, align 8, !alias.scope !16342, !noalias !16345, !nonnull !3, !noundef !3
  %i.ais = load i64, ptr %i.aip, align 8, !alias.scope !16342, !noalias !16345, !noundef !3
  call fastcc void @_RINvXNvMNtCs6Po7BT7Nknu_5alloc5sliceSp9to_vec_inNtNtCs4lawaffTVVK_9sqlparser3ast14ObjectNamePartNtB3_10ConvertVec6to_vecNtNtB8_5alloc6GlobalECsdJxlLsGgtXr_16delta_benchmarks(ptr noalias noundef align 8 captures(none) dereferenceable(24) %i.dn, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) %i.air, i64 noundef %i.ais) #28, !noalias !3
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.5122)
  %i.ait = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 2 uses
  %i.aiu = load i64, ptr %i.ait, align 8, !range !2380, !noundef !3
  %.not159 = icmp eq i64 %i.aiu, -9223372036854775787
  br i1 %.not159, label %bb.yf, label %bb.ye

bb.dd:                                            ; preds = %bb.a
  %i.aiv = getelementptr inbounds nuw i8, ptr %1, i64 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.dm)
  call void @_RNvXsa_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VecNtNtCs4lawaffTVVK_9sqlparser3ast9LockTableENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCsdJxlLsGgtXr_16delta_benchmarks(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.dm, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.aiv)
  %i.aiw = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.aiw, ptr noundef nonnull align 8 dereferenceable(24) %i.dm, i64 24, i1 false)
  store i64 103, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.dm)
  br label %bb.ed

bb.de:                                            ; preds = %bb.a
  store i64 104, ptr %0, align 8
  br label %bb.ed

bb.df:                                            ; preds = %bb.a
  %i.aix = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.aiy = getelementptr inbounds nuw i8, ptr %1, i64 96
  %i.aiz = getelementptr inbounds nuw i8, ptr %1, i64 168 ; 2 uses
  %i.aja = load ptr, ptr %i.aiz, align 8, !align !1750, !noundef !3
  %.not151 = icmp eq ptr %i.aja, null
  br i1 %.not151, label %bb.yj, label %bb.yi

bb.dg:                                            ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.dg)
  %i.ajb = getelementptr inbounds nuw i8, ptr %1, i64 688
  %i.ajc = getelementptr inbounds nuw i8, ptr %1, i64 680
  %i.ajd = load ptr, ptr %i.ajc, align 8, !alias.scope !16349, !noalias !16352, !nonnull !3, !noundef !3
  %i.aje = load i64, ptr %i.ajb, align 8, !alias.scope !16349, !noalias !16352, !noundef !3
  call fastcc void @_RINvXNvMNtCs6Po7BT7Nknu_5alloc5sliceSp9to_vec_inNtNtCs4lawaffTVVK_9sqlparser3ast14ObjectNamePartNtB3_10ConvertVec6to_vecNtNtB8_5alloc6GlobalECsdJxlLsGgtXr_16delta_benchmarks(ptr noalias noundef align 8 captures(none) dereferenceable(24) %i.dg, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) %i.ajd, i64 noundef %i.aje) #28, !noalias !3
  call void @llvm.lifetime.start.p0(ptr nonnull %i.df)
  %i.ajf = getelementptr inbounds nuw i8, ptr %1, i64 696 ; 2 uses
  %i.ajg = load i64, ptr %i.ajf, align 8, !range !43, !noundef !3
  %.not145 = icmp eq i64 %i.ajg, -9223372036854775808
  br i1 %.not145, label %bb.ze, label %bb.zd

bb.dh:                                            ; preds = %bb.a
  %i.ajh = getelementptr inbounds nuw i8, ptr %1, i64 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.dd)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !16356)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !16359)
  call void @_RNvXs4_NtCs6Po7BT7Nknu_5alloc6stringNtB5_6StringNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(64) %i.dd, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(64) %i.ajh)
  %i.aji = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.ajj = load i32, ptr %i.aji, align 8, !range !7691, !alias.scope !16359, !noalias !16356, !noundef !3
  %i.ajk = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.ajl = getelementptr inbounds nuw i8, ptr %i.dd, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.ajl, ptr noundef nonnull readonly align 8 dereferenceable(32) %i.ajk, i64 32, i1 false), !alias.scope !16361
  %i.ajm = getelementptr inbounds nuw i8, ptr %i.dd, i64 56
  store i32 %i.ajj, ptr %i.ajm, align 8, !alias.scope !16356, !noalias !16359
  %i.ajn = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.ajn, ptr noundef nonnull align 8 dereferenceable(64) %i.dd, i64 64, i1 false)
  store i64 107, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.dd)
  br label %bb.ed

bb.di:                                            ; preds = %bb.a
  %i.ajo = getelementptr inbounds nuw i8, ptr %1, i64 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.dc)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !16362)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !16365)
end_hunk_3
begin_hunk_4_@_RNvXsc5_NtCs4lawaffTVVK_9sqlparser3astNtB6_9StatementNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone:bb.a

_RNvXsa_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VecNtNtNtCs4lawaffTVVK_9sqlparser3ast5query10SelectItemENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCsdJxlLsGgtXr_16delta_benchmarks.exit: ; preds = %bb.hs
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.jm, ptr noundef nonnull align 8 dereferenceable(24) %i.bw, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bw)
  br label %bb.hu

bb.hy:                                            ; preds = %bb.hz
  %i.aqv = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtNtCs4lawaffTVVK_9sqlparser3ast5query10SelectItemEEECsdJxlLsGgtXr_16delta_benchmarks(ptr noalias noundef align 8 dereferenceable(24) %i.jm) #23
          to label %bb.hv unwind label %bb.ee

bb.hz:                                            ; preds = %bb.hu
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bv)
  invoke fastcc void @_RNvXs6H_NtCs4lawaffTVVK_9sqlparser3astNtB6_4ExprNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone(ptr noalias noundef align 8 captures(none) dereferenceable(328) %i.bv, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(328) %i.aqq)
          to label %bb.ib unwind label %bb.hy

bb.ia:                                            ; preds = %bb.hu, %bb.ib
  %.sroa.09.0 = phi i64 [ %.sroa.09.0.copyload10, %bb.ib ], [ 69, %bb.hu ]
  %i.aqw = getelementptr inbounds nuw i8, ptr %0, i64 40
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(640) %i.aqw, ptr noundef nonnull align 8 dereferenceable(640) %i.jq, i64 640, i1 false)
  %i.aqx = getelementptr inbounds nuw i8, ptr %0, i64 1336
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.aqx, ptr noundef nonnull align 8 dereferenceable(24) %i.jp, i64 24, i1 false)
  %i.aqy = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.aqy, ptr noundef nonnull align 8 dereferenceable(32) %i.jo, i64 32, i1 false)
  %i.aqz = getelementptr inbounds nuw i8, ptr %0, i64 680
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(328) %i.aqz, ptr noundef nonnull align 8 dereferenceable(328) %i.jn, i64 328, i1 false)
  %i.ara = getelementptr inbounds nuw i8, ptr %0, i64 1360
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ara, ptr noundef nonnull align 8 dereferenceable(24) %i.jm, i64 24, i1 false)
  %i.arb = getelementptr inbounds nuw i8, ptr %0, i64 1384
  store i8 %i.aqp, ptr %i.arb, align 8
  %i.arc = getelementptr inbounds nuw i8, ptr %0, i64 1008
  store i64 %.sroa.09.0, ptr %i.arc, align 8
  %.sroa.511.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 1016
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(320) %.sroa.511.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(320) %.sroa.511, i64 320, i1 false)
  store i64 22, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.511)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.jm)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.jn)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.jo)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.jp)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.jq)
  br label %bb.ed

bb.ib:                                            ; preds = %bb.hz
  %.sroa.09.0.copyload10 = load i64, ptr %i.bv, align 8
  %.sroa.511.0..sroa_idx12 = getelementptr inbounds nuw i8, ptr %i.bv, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(320) %.sroa.511, ptr noundef nonnull align 8 dereferenceable(320) %.sroa.511.0..sroa_idx12, i64 320, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bv)
  br label %bb.ia

bb.ic:                                            ; preds = %bb.if, %bb.id
  %.pn329.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn329.pn.pn.pn.pn, %bb.if ], [ %i.ard, %bb.id ]
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs4lawaffTVVK_9sqlparser3ast10ObjectNameECsdJxlLsGgtXr_16delta_benchmarks(ptr noalias noundef align 8 dereferenceable(24) %i.jk) #23
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECsdJxlLsGgtXr_16delta_benchmarks.exit unwind label %bb.ee

bb.id:                                            ; preds = %bb.y
  %i.ard = landingpad { ptr, i32 }
          cleanup
  br label %bb.ic

bb.ie:                                            ; preds = %bb.y
  %i.are = getelementptr inbounds nuw i8, ptr %1, i64 296
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ji)
  %i.arf = invoke fastcc noundef nonnull align 8 ptr @_RNvXsd_NtCs6Po7BT7Nknu_5alloc5boxedINtB5_3BoxNtNtNtCs4lawaffTVVK_9sqlparser3ast5query5QueryENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCsdJxlLsGgtXr_16delta_benchmarks(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.are)
          to label %bb.ih unwind label %bb.ig     ; 2 uses

bb.if:                                            ; preds = %bb.ii, %bb.ig
  %.pn329.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn329.pn.pn.pn, %bb.ii ], [ %i.arg, %bb.ig ]
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtNtCs4lawaffTVVK_9sqlparser3ast3ddl13ViewColumnDefEECsdJxlLsGgtXr_16delta_benchmarks(ptr noalias noundef align 8 dereferenceable(24) %i.jj) #23
          to label %bb.ic unwind label %bb.ee

bb.ig:                                            ; preds = %bb.ie
  %i.arg = landingpad { ptr, i32 }
          cleanup
  br label %bb.if

bb.ih:                                            ; preds = %bb.ie
  store ptr %i.arf, ptr %i.ji, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.jh)
  invoke fastcc void @_RNvXsb7_NtCs4lawaffTVVK_9sqlparser3astNtB6_18CreateTableOptionsNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone(ptr noalias noundef align 8 captures(none) dereferenceable(32) %i.jh, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.ow)
          to label %bb.ik unwind label %bb.ij

bb.ii:                                            ; preds = %bb.il, %bb.ij
  %.pn329.pn.pn.pn = phi { ptr, i32 } [ %.pn329.pn.pn, %bb.il ], [ %i.arh, %bb.ij ]
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxNtNtNtCs4lawaffTVVK_9sqlparser3ast5query5QueryEECsdJxlLsGgtXr_16delta_benchmarks(ptr noalias noundef align 8 dereferenceable(8) %i.ji) #23
          to label %bb.if unwind label %bb.ee

bb.ij:                                            ; preds = %bb.ih
  %i.arh = landingpad { ptr, i32 }
          cleanup
  br label %bb.ii

bb.ik:                                            ; preds = %bb.ih
  call void @llvm.lifetime.start.p0(ptr nonnull %i.jg)
  invoke void @_RNvXsa_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VecNtNtCs4lawaffTVVK_9sqlparser3ast5IdentENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCsdJxlLsGgtXr_16delta_benchmarks(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.jg, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.ox)
          to label %bb.in unwind label %bb.im

bb.il:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtCs6Po7BT7Nknu_5alloc6string6StringEECsdJxlLsGgtXr_16delta_benchmarks.exit455, %bb.im
  %.pn329.pn.pn = phi { ptr, i32 } [ %.pn329.pn, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtCs6Po7BT7Nknu_5alloc6string6StringEECsdJxlLsGgtXr_16delta_benchmarks.exit455 ], [ %i.ari, %bb.im ]
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs4lawaffTVVK_9sqlparser3ast18CreateTableOptionsECsdJxlLsGgtXr_16delta_benchmarks(ptr noalias noundef align 8 dereferenceable(32) %i.jh) #23
          to label %bb.ii unwind label %bb.ee

bb.im:                                            ; preds = %bb.ik
  %i.ari = landingpad { ptr, i32 }
          cleanup
  br label %bb.il

bb.in:                                            ; preds = %bb.ik
  call void @llvm.lifetime.start.p0(ptr nonnull %i.jf)
  %i.arj = getelementptr inbounds nuw i8, ptr %1, i64 112 ; 2 uses
  %i.ark = load i64, ptr %i.arj, align 8, !range !43, !noundef !3
  %.not326 = icmp eq i64 %i.ark, -9223372036854775808
  br i1 %.not326, label %bb.ip, label %bb.io

bb.io:                                            ; preds = %bb.in
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bu)
  invoke void @_RNvXs4_NtCs6Po7BT7Nknu_5alloc6stringNtB5_6StringNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.bu, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.arj)
          to label %bb.is unwind label %bb.ir

bb.ip:                                            ; preds = %bb.in
  store i64 -9223372036854775808, ptr %i.jf, align 8
  br label %bb.iq

bb.iq:                                            ; preds = %bb.is, %bb.ip
  %i.arl = getelementptr inbounds nuw i8, ptr %1, i64 309
  %i.arm = load i8, ptr %i.arl, align 1, !range !2711, !noundef !3
  %i.arn = getelementptr inbounds nuw i8, ptr %1, i64 310
  %i.aro = load i8, ptr %i.arn, align 2, !range !2711, !noundef !3
  %i.arp = getelementptr inbounds nuw i8, ptr %1, i64 311
  %i.arq = load i8, ptr %i.arp, align 1, !range !2711, !noundef !3
  call void @llvm.lifetime.start.p0(ptr nonnull %i.je)
  %i.arr = getelementptr inbounds nuw i8, ptr %1, i64 136
  %i.ars = load i64, ptr %i.arr, align 8, !range !43, !noundef !3
  %.not327 = icmp eq i64 %i.ars, -9223372036854775808
  br i1 %.not327, label %bb.iu, label %bb.it

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtCs6Po7BT7Nknu_5alloc6string6StringEECsdJxlLsGgtXr_16delta_benchmarks.exit455: ; preds = %bb.iw, %bb.ix, %bb.ir
  %.pn329.pn = phi { ptr, i32 } [ %i.art, %bb.ir ], [ %.pn329, %bb.ix ], [ %.pn329, %bb.iw ]
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtCs4lawaffTVVK_9sqlparser3ast5IdentEECsdJxlLsGgtXr_16delta_benchmarks(ptr noalias noundef align 8 dereferenceable(24) %i.jg) #23
          to label %bb.il unwind label %bb.ee

bb.ir:                                            ; preds = %bb.io
  %i.art = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtCs6Po7BT7Nknu_5alloc6string6StringEECsdJxlLsGgtXr_16delta_benchmarks.exit455

bb.is:                                            ; preds = %bb.io
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.jf, ptr noundef nonnull align 8 dereferenceable(24) %i.bu, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bu)
  br label %bb.iq

bb.it:                                            ; preds = %bb.iq
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l), !noalias !16448
  %i.aru = getelementptr inbounds nuw i8, ptr %1, i64 152
  %i.arv = getelementptr inbounds nuw i8, ptr %1, i64 144
  %i.arw = load ptr, ptr %i.arv, align 8, !alias.scope !16452, !noalias !16455, !nonnull !3, !noundef !3
  %i.arx = load i64, ptr %i.aru, align 8, !alias.scope !16452, !noalias !16455, !noundef !3
  invoke fastcc void @_RINvXNvMNtCs6Po7BT7Nknu_5alloc5sliceSp9to_vec_inNtNtCs4lawaffTVVK_9sqlparser3ast14ObjectNamePartNtB3_10ConvertVec6to_vecNtNtB8_5alloc6GlobalECsdJxlLsGgtXr_16delta_benchmarks(ptr noalias noundef align 8 captures(none) dereferenceable(24) %i.l, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) %i.arw, i64 noundef %i.arx) #28
          to label %bb.iz unwind label %bb.iy, !inline_history !7679

bb.iu:                                            ; preds = %bb.iq
  store i64 -9223372036854775808, ptr %i.je, align 8
  br label %bb.iv

bb.iv:                                            ; preds = %bb.iz, %bb.iu
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.515)
  %i.ary = getelementptr inbounds nuw i8, ptr %1, i64 160 ; 2 uses
  %i.arz = load i64, ptr %i.ary, align 8, !range !1036, !noundef !3
  %.not328 = icmp eq i64 %i.arz, -9223372036854775806
  br i1 %.not328, label %bb.jb, label %bb.ja

bb.iw:                                            ; preds = %bb.jc, %bb.iy
  %.pn329 = phi { ptr, i32 } [ %i.asq, %bb.jc ], [ %i.asc, %bb.iy ] ; 2 uses
  %i.asa = load i64, ptr %i.jf, align 8, !range !43, !alias.scope !16457, !noundef !3
  %i.asb = icmp eq i64 %i.asa, -9223372036854775808
  br i1 %i.asb, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtCs6Po7BT7Nknu_5alloc6string6StringEECsdJxlLsGgtXr_16delta_benchmarks.exit455, label %bb.ix

bb.ix:                                            ; preds = %bb.iw
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsdJxlLsGgtXr_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.jf)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtCs6Po7BT7Nknu_5alloc6string6StringEECsdJxlLsGgtXr_16delta_benchmarks.exit455 unwind label %bb.ee

bb.iy:                                            ; preds = %bb.it
  %i.asc = landingpad { ptr, i32 }
          cleanup
  br label %bb.iw

bb.iz:                                            ; preds = %bb.it
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.je, ptr noundef nonnull align 8 dereferenceable(24) %i.l, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l), !noalias !16448
  br label %bb.iv

bb.ja:                                            ; preds = %bb.iv
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bt)
  invoke fastcc void @_RNvXsw6_NtCs4lawaffTVVK_9sqlparser3astNtB6_16CreateViewParamsNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone(ptr noalias noundef align 8 captures(none) dereferenceable(136) %i.bt, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(136) %i.ary)
          to label %bb.jd unwind label %bb.jc

bb.jb:                                            ; preds = %bb.iv, %bb.jd
  %.sroa.013.0 = phi i64 [ %.sroa.013.0.copyload14, %bb.jd ], [ -9223372036854775806, %bb.iv ]
  %i.asd = getelementptr inbounds nuw i8, ptr %0, i64 304
  store <4 x i8> %2, ptr %i.asd, align 8
  %i.ase = getelementptr inbounds nuw i8, ptr %0, i64 40
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ase, ptr noundef nonnull align 8 dereferenceable(24) %i.jk, i64 24, i1 false)
  %i.asf = getelementptr inbounds nuw i8, ptr %0, i64 308
  store i8 %i.pe, ptr %i.asf, align 4
  %i.asg = getelementptr inbounds nuw i8, ptr %0, i64 64
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.asg, ptr noundef nonnull align 8 dereferenceable(24) %i.jj, i64 24, i1 false)
  %i.ash = getelementptr inbounds nuw i8, ptr %0, i64 296
  store ptr %i.arf, ptr %i.ash, align 8
  %i.asi = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.asi, ptr noundef nonnull align 8 dereferenceable(32) %i.jh, i64 32, i1 false)
  %i.asj = getelementptr inbounds nuw i8, ptr %0, i64 88
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.asj, ptr noundef nonnull align 8 dereferenceable(24) %i.jg, i64 24, i1 false)
  %i.ask = getelementptr inbounds nuw i8, ptr %0, i64 112
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ask, ptr noundef nonnull align 8 dereferenceable(24) %i.jf, i64 24, i1 false)
  %i.asl = getelementptr inbounds nuw i8, ptr %0, i64 309
  store i8 %i.arm, ptr %i.asl, align 1
  %i.asm = getelementptr inbounds nuw i8, ptr %0, i64 310
  store i8 %i.aro, ptr %i.asm, align 2
  %i.asn = getelementptr inbounds nuw i8, ptr %0, i64 311
  store i8 %i.arq, ptr %i.asn, align 1
  %i.aso = getelementptr inbounds nuw i8, ptr %0, i64 136
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.aso, ptr noundef nonnull align 8 dereferenceable(24) %i.je, i64 24, i1 false)
  %i.asp = getelementptr inbounds nuw i8, ptr %0, i64 160
  store i64 %.sroa.013.0, ptr %i.asp, align 8
  %.sroa.515.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 168
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(128) %.sroa.515.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(128) %.sroa.515, i64 128, i1 false)
  store i64 24, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.515)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.je)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.jf)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.jg)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.jh)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ji)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.jj)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.jk)
  br label %bb.ed

bb.jc:                                            ; preds = %bb.ja
  %i.asq = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtCs4lawaffTVVK_9sqlparser3ast10ObjectNameEECsdJxlLsGgtXr_16delta_benchmarks(ptr noalias noundef align 8 dereferenceable(24) %i.je) #23
          to label %bb.iw unwind label %bb.ee

bb.jd:                                            ; preds = %bb.ja
  %.sroa.013.0.copyload14 = load i64, ptr %i.bt, align 8
  %.sroa.515.0..sroa_idx16 = getelementptr inbounds nuw i8, ptr %i.bt, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(128) %.sroa.515, ptr noundef nonnull align 8 dereferenceable(128) %.sroa.515.0..sroa_idx16, i64 128, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bt)
  br label %bb.jb

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs4lawaffTVVK_9sqlparser3ast5IdentECsdJxlLsGgtXr_16delta_benchmarks.exit: ; preds = %bb.jg, %bb.je
  %.pn324 = phi { ptr, i32 } [ %i.asr, %bb.je ], [ %i.asy, %bb.jg ]
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs4lawaffTVVK_9sqlparser3ast10ObjectNameECsdJxlLsGgtXr_16delta_benchmarks(ptr noalias noundef align 8 dereferenceable(24) %i.jc) #23
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECsdJxlLsGgtXr_16delta_benchmarks.exit unwind label %bb.ee

bb.je:                                            ; preds = %bb.aa
  %i.asr = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs4lawaffTVVK_9sqlparser3ast5IdentECsdJxlLsGgtXr_16delta_benchmarks.exit

bb.jf:                                            ; preds = %bb.aa
  %i.ass = getelementptr inbounds nuw i8, ptr %1, i64 88
  %i.ast = load i32, ptr %i.ass, align 8, !range !7691, !alias.scope !16049, !noalias !16046, !noundef !3
  %i.asu = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.asv = getelementptr inbounds nuw i8, ptr %i.jb, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.asv, ptr noundef nonnull readonly align 8 dereferenceable(32) %i.asu, i64 32, i1 false), !alias.scope !16460
  %i.asw = getelementptr inbounds nuw i8, ptr %i.jb, i64 56
  store i32 %i.ast, ptr %i.asw, align 8, !alias.scope !16046, !noalias !16049
  %i.asx = getelementptr inbounds nuw i8, ptr %1, i64 96
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ja)
  invoke void @_RNvXsa_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VecNtNtCs4lawaffTVVK_9sqlparser3ast5IdentENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCsdJxlLsGgtXr_16delta_benchmarks(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.ja, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.asx)
          to label %bb.jh unwind label %bb.jg

bb.jg:                                            ; preds = %bb.jf
  %i.asy = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsdJxlLsGgtXr_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(64) %i.jb)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs4lawaffTVVK_9sqlparser3ast5IdentECsdJxlLsGgtXr_16delta_benchmarks.exit unwind label %bb.ee

bb.jh:                                            ; preds = %bb.jf
  %i.asz = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.asz, ptr noundef nonnull align 8 dereferenceable(24) %i.jc, i64 24, i1 false)
  %i.ata = getelementptr inbounds nuw i8, ptr %0, i64 120
  store i8 %i.pn, ptr %i.ata, align 8
  %i.atb = getelementptr inbounds nuw i8, ptr %0, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.atb, ptr noundef nonnull align 8 dereferenceable(64) %i.jb, i64 64, i1 false)
  %i.atc = getelementptr inbounds nuw i8, ptr %0, i64 96
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.atc, ptr noundef nonnull align 8 dereferenceable(24) %i.ja, i64 24, i1 false)
  store i64 26, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ja)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.jb)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.jc)
  br label %bb.ed

bb.ji:                                            ; preds = %bb.ac
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.5654)
  %i.atd = icmp eq i64 %i.qc, 69
  br i1 %i.atd, label %_RNvXs9b_NtCs4lawaffTVVK_9sqlparser3astNtB6_8PasswordNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit, label %bb.jj

bb.jj:                                            ; preds = %bb.ji
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k), !noalias !16461
  invoke fastcc void @_RNvXs6H_NtCs4lawaffTVVK_9sqlparser3astNtB6_4ExprNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone(ptr noalias noundef align 8 captures(none) dereferenceable(328) %i.k, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(328) %i.qb) #28
          to label %.noexc457 unwind label %bb.jm, !inline_history !16465

.noexc457:                                        ; preds = %bb.jj
  %.sroa.0652.0.copyload653 = load i64, ptr %i.k, align 8, !noalias !16466
  %.sroa.5654.0..sroa_idx655 = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(320) %.sroa.5654, ptr noundef nonnull align 8 dereferenceable(320) %.sroa.5654.0..sroa_idx655, i64 320, i1 false), !noalias !16466
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !noalias !16461
  br label %_RNvXs9b_NtCs4lawaffTVVK_9sqlparser3astNtB6_8PasswordNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit

bb.jk:                                            ; preds = %bb.ac
  store i64 70, ptr %i.ix, align 8
  br label %bb.jl

bb.jl:                                            ; preds = %_RNvXs9b_NtCs4lawaffTVVK_9sqlparser3astNtB6_8PasswordNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit, %bb.jk
  %i.ate = phi i1 [ %i.atk, %_RNvXs9b_NtCs4lawaffTVVK_9sqlparser3astNtB6_8PasswordNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit ], [ true, %bb.jk ]
  %i.atf = getelementptr inbounds nuw i8, ptr %1, i64 1164
  %i.atg = load <4 x i8>, ptr %i.atf, align 4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.iw)
  %i.ath = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.ati = load i64, ptr %i.ath, align 8, !range !69, !noundef !3
  %.not312 = icmp eq i64 %i.ati, 69
  br i1 %.not312, label %bb.jo, label %bb.jn

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtCs4lawaffTVVK_9sqlparser3ast8PasswordEECsdJxlLsGgtXr_16delta_benchmarks.exit: ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtCs4lawaffTVVK_9sqlparser3ast4ExprEECsdJxlLsGgtXr_16delta_benchmarks.exit460, %bb.jq, %bb.jm
  %.pn315.pn.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %i.atj, %bb.jm ], [ %.pn315.pn.pn.pn.pn.pn.pn, %bb.jq ], [ %.pn315.pn.pn.pn.pn.pn.pn, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtCs4lawaffTVVK_9sqlparser3ast4ExprEECsdJxlLsGgtXr_16delta_benchmarks.exit460 ]
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtCs4lawaffTVVK_9sqlparser3ast10ObjectNameEECsdJxlLsGgtXr_16delta_benchmarks(ptr noalias noundef align 8 dereferenceable(24) %i.iy) #23
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECsdJxlLsGgtXr_16delta_benchmarks.exit unwind label %bb.ee

bb.jm:                                            ; preds = %bb.jj
  %i.atj = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtCs4lawaffTVVK_9sqlparser3ast8PasswordEECsdJxlLsGgtXr_16delta_benchmarks.exit

_RNvXs9b_NtCs4lawaffTVVK_9sqlparser3astNtB6_8PasswordNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit: ; preds = %.noexc457, %bb.ji
  %.sroa.0652.0 = phi i64 [ %.sroa.0652.0.copyload653, %.noexc457 ], [ 69, %bb.ji ] ; 2 uses
  store i64 %.sroa.0652.0, ptr %i.ix, align 8
  %.sroa.5654.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ix, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(320) %.sroa.5654.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(320) %.sroa.5654, i64 320, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.5654)
  %i.atk = icmp samesign ugt i64 %.sroa.0652.0, 68
  br label %bb.jl

bb.jn:                                            ; preds = %bb.jl
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bs)
  invoke fastcc void @_RNvXs6H_NtCs4lawaffTVVK_9sqlparser3astNtB6_4ExprNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone(ptr noalias noundef align 8 captures(none) dereferenceable(328) %i.bs, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(328) %i.ath)
          to label %bb.js unwind label %bb.jr

bb.jo:                                            ; preds = %bb.jl
  store i64 69, ptr %i.iw, align 8
  br label %bb.jp

bb.jp:                                            ; preds = %bb.js, %bb.jo
  call void @llvm.lifetime.start.p0(ptr nonnull %i.iv)
  %i.atl = getelementptr inbounds nuw i8, ptr %1, i64 336 ; 2 uses
  %i.atm = load i64, ptr %i.atl, align 8, !range !69, !noundef !3
  %.not313 = icmp eq i64 %i.atm, 69
  br i1 %.not313, label %bb.ju, label %bb.jt

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtCs4lawaffTVVK_9sqlparser3ast4ExprEECsdJxlLsGgtXr_16delta_benchmarks.exit460: ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtCs4lawaffTVVK_9sqlparser3ast4ExprEECsdJxlLsGgtXr_16delta_benchmarks.exit462, %bb.jw, %bb.jr
  %.pn315.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %i.atn, %bb.jr ], [ %.pn315.pn.pn.pn.pn.pn, %bb.jw ], [ %.pn315.pn.pn.pn.pn.pn, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtCs4lawaffTVVK_9sqlparser3ast4ExprEECsdJxlLsGgtXr_16delta_benchmarks.exit462 ] ; 2 uses
  br i1 %i.ate, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtCs4lawaffTVVK_9sqlparser3ast8PasswordEECsdJxlLsGgtXr_16delta_benchmarks.exit, label %bb.jq

bb.jq:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtCs4lawaffTVVK_9sqlparser3ast4ExprEECsdJxlLsGgtXr_16delta_benchmarks.exit460
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs4lawaffTVVK_9sqlparser3ast4ExprECsdJxlLsGgtXr_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(328) %i.ix)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtCs4lawaffTVVK_9sqlparser3ast8PasswordEECsdJxlLsGgtXr_16delta_benchmarks.exit unwind label %bb.ee, !inline_history !16467

bb.jr:                                            ; preds = %bb.jn
  %i.atn = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtCs4lawaffTVVK_9sqlparser3ast4ExprEECsdJxlLsGgtXr_16delta_benchmarks.exit460

bb.js:                                            ; preds = %bb.jn
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(328) %i.iw, ptr noundef nonnull align 8 dereferenceable(328) %i.bs, i64 328, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bs)
  br label %bb.jp

bb.jt:                                            ; preds = %bb.jp
  call void @llvm.lifetime.start.p0(ptr nonnull %i.br)
  invoke fastcc void @_RNvXs6H_NtCs4lawaffTVVK_9sqlparser3astNtB6_4ExprNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone(ptr noalias noundef align 8 captures(none) dereferenceable(328) %i.br, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(328) %i.atl)
          to label %bb.jy unwind label %bb.jx

bb.ju:                                            ; preds = %bb.jp
  store i64 69, ptr %i.iv, align 8
  br label %bb.jv

bb.jv:                                            ; preds = %bb.jy, %bb.ju
  call void @llvm.lifetime.start.p0(ptr nonnull %i.iu)
  invoke void @_RNvXsa_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VecNtNtCs4lawaffTVVK_9sqlparser3ast5IdentENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCsdJxlLsGgtXr_16delta_benchmarks(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.iu, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.pq)
          to label %bb.kc unwind label %bb.kb

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtCs4lawaffTVVK_9sqlparser3ast4ExprEECsdJxlLsGgtXr_16delta_benchmarks.exit462: ; preds = %bb.jz, %bb.ka, %bb.jx
  %.pn315.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %i.atq, %bb.jx ], [ %.pn315.pn.pn.pn.pn, %bb.ka ], [ %.pn315.pn.pn.pn.pn, %bb.jz ] ; 2 uses
  %i.ato = load i64, ptr %i.iw, align 8, !range !69, !alias.scope !16468, !noundef !3
  %i.atp = icmp eq i64 %i.ato, 69
  br i1 %i.atp, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtCs4lawaffTVVK_9sqlparser3ast4ExprEECsdJxlLsGgtXr_16delta_benchmarks.exit460, label %bb.jw

bb.jw:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtCs4lawaffTVVK_9sqlparser3ast4ExprEECsdJxlLsGgtXr_16delta_benchmarks.exit462
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs4lawaffTVVK_9sqlparser3ast4ExprECsdJxlLsGgtXr_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(328) %i.iw)
end_hunk_4
begin_hunk_5_@_RNvXsc5_NtCs4lawaffTVVK_9sqlparser3astNtB6_9StatementNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone:bb.a
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs4lawaffTVVK_9sqlparser3ast12GrantObjectsECsdJxlLsGgtXr_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(56) %i.eo)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtCs4lawaffTVVK_9sqlparser3ast12GrantObjectsEECsdJxlLsGgtXr_16delta_benchmarks.exit580 unwind label %bb.ee, !inline_history !3567

bb.vv:                                            ; preds = %bb.vq
  %i.bns = landingpad { ptr, i32 }
          cleanup
  br label %bb.vt

_RNvXsa_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VecNtNtCs4lawaffTVVK_9sqlparser3ast7GranteeENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCsdJxlLsGgtXr_16delta_benchmarks.exit688: ; preds = %bb.vq
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.5680)
  %i.bnt = getelementptr inbounds nuw i8, ptr %1, i64 112 ; 2 uses
  %i.bnu = load i64, ptr %i.bnt, align 8, !range !43, !noundef !3
  %.not186 = icmp eq i64 %i.bnu, -9223372036854775808
  br i1 %.not186, label %bb.vx, label %bb.vw

bb.vw:                                            ; preds = %_RNvXsa_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VecNtNtCs4lawaffTVVK_9sqlparser3ast7GranteeENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCsdJxlLsGgtXr_16delta_benchmarks.exit688
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ae)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !16741)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !16744)
  invoke void @_RNvXs4_NtCs6Po7BT7Nknu_5alloc6stringNtB5_6StringNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(64) %i.ae, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(64) %i.bnt)
          to label %bb.vz unwind label %bb.vy

bb.vx:                                            ; preds = %_RNvXsa_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VecNtNtCs4lawaffTVVK_9sqlparser3ast7GranteeENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCsdJxlLsGgtXr_16delta_benchmarks.exit688, %bb.vz
  %.sroa.0678.0 = phi i64 [ %.sroa.0678.0.copyload, %bb.vz ], [ -9223372036854775808, %_RNvXsa_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VecNtNtCs4lawaffTVVK_9sqlparser3ast7GranteeENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCsdJxlLsGgtXr_16delta_benchmarks.exit688 ]
  %i.bnv = getelementptr inbounds nuw i8, ptr %1, i64 176
  %i.bnw = load i8, ptr %i.bnv, align 8, !range !7944, !noundef !3
  %i.bnx = getelementptr inbounds nuw i8, ptr %0, i64 88
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.bnx, ptr noundef nonnull align 8 dereferenceable(24) %i.ep, i64 24, i1 false)
  %i.bny = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.bny, ptr noundef nonnull align 8 dereferenceable(56) %i.eo, i64 56, i1 false)
  %i.bnz = getelementptr inbounds nuw i8, ptr %0, i64 64
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.bnz, ptr noundef nonnull align 8 dereferenceable(24) %i.en, i64 24, i1 false)
  %i.boa = getelementptr inbounds nuw i8, ptr %0, i64 112
  store i64 %.sroa.0678.0, ptr %i.boa, align 8
  %.sroa.5680.0..sroa_idx681 = getelementptr inbounds nuw i8, ptr %0, i64 120
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %.sroa.5680.0..sroa_idx681, ptr noundef nonnull align 8 dereferenceable(56) %.sroa.5680, i64 56, i1 false)
  %i.bob = getelementptr inbounds nuw i8, ptr %0, i64 176
  store i8 %i.bnw, ptr %i.bob, align 8
  store i64 87, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.5680)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.en)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.eo)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ep)
  br label %bb.ed

bb.vy:                                            ; preds = %bb.vw
  %i.boc = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtCs4lawaffTVVK_9sqlparser3ast7GranteeEECsdJxlLsGgtXr_16delta_benchmarks(ptr noalias noundef align 8 dereferenceable(24) %i.en) #23
          to label %bb.vt unwind label %bb.ee

bb.vz:                                            ; preds = %bb.vw
  %i.bod = getelementptr inbounds nuw i8, ptr %1, i64 168
  %i.boe = load i32, ptr %i.bod, align 8, !range !7691, !alias.scope !16744, !noalias !16741, !noundef !3
  %i.bof = getelementptr inbounds nuw i8, ptr %1, i64 136
  %i.bog = getelementptr inbounds nuw i8, ptr %i.ae, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.bog, ptr noundef nonnull readonly align 8 dereferenceable(32) %i.bof, i64 32, i1 false), !alias.scope !16746
  %i.boh = getelementptr inbounds nuw i8, ptr %i.ae, i64 56
  store i32 %i.boe, ptr %i.boh, align 8, !alias.scope !16741, !noalias !16744
  %.sroa.0678.0.copyload = load i64, ptr %i.ae, align 8
  %.sroa.5680.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ae, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %.sroa.5680, ptr noundef nonnull align 8 dereferenceable(56) %.sroa.5680.0..sroa_idx, i64 56, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ae)
  br label %bb.vx

bb.wa:                                            ; preds = %bb.cp
  %i.boi = getelementptr inbounds nuw i8, ptr %1, i64 96
  %i.boj = getelementptr inbounds nuw i8, ptr %1, i64 88
  %i.bok = load ptr, ptr %i.boj, align 8, !alias.scope !16747, !noalias !16750, !nonnull !3, !noundef !3
  %i.bol = load i64, ptr %i.boi, align 8, !alias.scope !16747, !noalias !16750, !noundef !3
  call fastcc void @_RINvXNvMNtCs6Po7BT7Nknu_5alloc5sliceSp9to_vec_inNtNtCs4lawaffTVVK_9sqlparser3ast14ObjectNamePartNtB3_10ConvertVec6to_vecNtNtB8_5alloc6GlobalECsdJxlLsGgtXr_16delta_benchmarks(ptr noalias noundef align 8 captures(none) dereferenceable(24) %i.el, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) %i.bok, i64 noundef %i.bol) #28
  br label %bb.wc

bb.wb:                                            ; preds = %bb.cp
  store i64 -9223372036854775808, ptr %i.el, align 8
  br label %bb.wc

bb.wc:                                            ; preds = %bb.wb, %bb.wa
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ek)
  invoke void @_RNvXsa_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VecNtNtCs4lawaffTVVK_9sqlparser3ast4ExprENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCsdJxlLsGgtXr_16delta_benchmarks(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.ek, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.afg)
          to label %bb.wf unwind label %bb.we

bb.wd:                                            ; preds = %bb.wg, %bb.we
  %.pn182.pn = phi { ptr, i32 } [ %.pn182, %bb.wg ], [ %i.bom, %bb.we ]
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtCs4lawaffTVVK_9sqlparser3ast10ObjectNameEECsdJxlLsGgtXr_16delta_benchmarks(ptr noalias noundef align 8 dereferenceable(24) %i.el) #23
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECsdJxlLsGgtXr_16delta_benchmarks.exit unwind label %bb.ee

bb.we:                                            ; preds = %bb.wc
  %i.bom = landingpad { ptr, i32 }
          cleanup
  br label %bb.wd

bb.wf:                                            ; preds = %bb.wc
  %i.bon = getelementptr inbounds nuw i8, ptr %1, i64 104
  %i.boo = load i8, ptr %i.bon, align 8, !range !2711, !noundef !3
  %i.bop = getelementptr inbounds nuw i8, ptr %1, i64 105
  %i.boq = load i8, ptr %i.bop, align 1, !range !2711, !noundef !3
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ej)
  invoke void @_RNvXsa_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VecNtNtCs4lawaffTVVK_9sqlparser3ast5IdentENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCsdJxlLsGgtXr_16delta_benchmarks(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.ej, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.afh)
          to label %bb.wi unwind label %bb.wh

bb.wg:                                            ; preds = %bb.wj, %bb.wh
  %.pn182 = phi { ptr, i32 } [ %i.bow, %bb.wj ], [ %i.bor, %bb.wh ]
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtCs4lawaffTVVK_9sqlparser3ast4ExprEECsdJxlLsGgtXr_16delta_benchmarks(ptr noalias noundef align 8 dereferenceable(24) %i.ek) #23
          to label %bb.wd unwind label %bb.ee

bb.wh:                                            ; preds = %bb.wf
  %i.bor = landingpad { ptr, i32 }
          cleanup
  br label %bb.wg

bb.wi:                                            ; preds = %bb.wf
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ei)
  %i.bos = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.bot = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.bou = load ptr, ptr %i.bot, align 8, !alias.scope !16754, !noalias !16757, !nonnull !3, !noundef !3
  %i.bov = load i64, ptr %i.bos, align 8, !alias.scope !16754, !noalias !16757, !noundef !3
  invoke fastcc void @_RINvXNvMNtCs6Po7BT7Nknu_5alloc5sliceSp9to_vec_inNtNtNtCs4lawaffTVVK_9sqlparser3ast5query13ExprWithAliasNtB3_10ConvertVec6to_vecNtNtB8_5alloc6GlobalECsdJxlLsGgtXr_16delta_benchmarks(ptr noalias noundef nonnull align 8 captures(none) dereferenceable(24) %i.ei, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) %i.bou, i64 noundef %i.bov) #28
          to label %_RNvXsa_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VecNtNtNtCs4lawaffTVVK_9sqlparser3ast5query13ExprWithAliasENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCsdJxlLsGgtXr_16delta_benchmarks.exit unwind label %bb.wj, !inline_history !11406

bb.wj:                                            ; preds = %bb.wi
  %i.bow = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtCs4lawaffTVVK_9sqlparser3ast5IdentEECsdJxlLsGgtXr_16delta_benchmarks(ptr noalias noundef align 8 dereferenceable(24) %i.ej) #23
          to label %bb.wg unwind label %bb.ee

_RNvXsa_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VecNtNtNtCs4lawaffTVVK_9sqlparser3ast5query13ExprWithAliasENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCsdJxlLsGgtXr_16delta_benchmarks.exit: ; preds = %bb.wi
  %i.box = getelementptr inbounds nuw i8, ptr %1, i64 106
  %i.boy = load i8, ptr %i.box, align 2, !range !2711, !noundef !3
  %i.boz = getelementptr inbounds nuw i8, ptr %1, i64 107
  %i.bpa = load i8, ptr %i.boz, align 1, !range !2711, !noundef !3
  %i.bpb = getelementptr inbounds nuw i8, ptr %0, i64 80
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.bpb, ptr noundef nonnull align 8 dereferenceable(24) %i.el, i64 24, i1 false)
  %i.bpc = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.bpc, ptr noundef nonnull align 8 dereferenceable(24) %i.ek, i64 24, i1 false)
  %i.bpd = getelementptr inbounds nuw i8, ptr %0, i64 104
  store i8 %i.boo, ptr %i.bpd, align 8
  %i.bpe = getelementptr inbounds nuw i8, ptr %0, i64 105
  store i8 %i.boq, ptr %i.bpe, align 1
  %i.bpf = getelementptr inbounds nuw i8, ptr %0, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.bpf, ptr noundef nonnull align 8 dereferenceable(24) %i.ej, i64 24, i1 false)
  %i.bpg = getelementptr inbounds nuw i8, ptr %0, i64 56
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.bpg, ptr noundef nonnull align 8 dereferenceable(24) %i.ei, i64 24, i1 false)
  %i.bph = getelementptr inbounds nuw i8, ptr %0, i64 106
  store i8 %i.boy, ptr %i.bph, align 2
  %i.bpi = getelementptr inbounds nuw i8, ptr %0, i64 107
  store i8 %i.bpa, ptr %i.bpi, align 1
  store i64 89, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ei)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ej)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ek)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.el)
  br label %bb.ed

bb.wk:                                            ; preds = %bb.wm, %bb.wl
  %.pn179 = phi { ptr, i32 } [ %i.bpm, %bb.wm ], [ %i.bpj, %bb.wl ]
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsdJxlLsGgtXr_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(64) %i.eh)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECsdJxlLsGgtXr_16delta_benchmarks.exit unwind label %bb.ee

bb.wl:                                            ; preds = %bb.cq
  %i.bpj = landingpad { ptr, i32 }
          cleanup
  br label %bb.wk

_RNvXsa_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VecNtNtNtCs4lawaffTVVK_9sqlparser3ast9data_type8DataTypeENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCsdJxlLsGgtXr_16delta_benchmarks.exit: ; preds = %bb.cq
  %i.bpk = getelementptr inbounds nuw i8, ptr %1, i64 96
  %i.bpl = invoke fastcc noundef nonnull align 8 ptr @_RNvXsd_NtCs6Po7BT7Nknu_5alloc5boxedINtB5_3BoxNtNtCs4lawaffTVVK_9sqlparser3ast9StatementENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCsdJxlLsGgtXr_16delta_benchmarks(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.bpk)
          to label %bb.wn unwind label %bb.wm

bb.wm:                                            ; preds = %_RNvXsa_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VecNtNtNtCs4lawaffTVVK_9sqlparser3ast9data_type8DataTypeENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCsdJxlLsGgtXr_16delta_benchmarks.exit
  %i.bpm = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtNtCs4lawaffTVVK_9sqlparser3ast9data_type8DataTypeEECsdJxlLsGgtXr_16delta_benchmarks(ptr noalias noundef align 8 dereferenceable(24) %i.eg) #23
          to label %bb.wk unwind label %bb.ee

bb.wn:                                            ; preds = %_RNvXsa_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VecNtNtNtCs4lawaffTVVK_9sqlparser3ast9data_type8DataTypeENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCsdJxlLsGgtXr_16delta_benchmarks.exit
  %i.bpn = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.bpn, ptr noundef nonnull align 8 dereferenceable(64) %i.eh, i64 64, i1 false)
  %i.bpo = getelementptr inbounds nuw i8, ptr %0, i64 72
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.bpo, ptr noundef nonnull align 8 dereferenceable(24) %i.eg, i64 24, i1 false)
  %i.bpp = getelementptr inbounds nuw i8, ptr %0, i64 96
  store ptr %i.bpl, ptr %i.bpp, align 8
  store i64 90, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.eg)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.eh)
  br label %bb.ed

bb.wo:                                            ; preds = %bb.wp
  %i.bpq = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxNtNtCs4lawaffTVVK_9sqlparser3ast9StatementEECsdJxlLsGgtXr_16delta_benchmarks(ptr noalias noundef align 8 dereferenceable(8) %i.ee) #23
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECsdJxlLsGgtXr_16delta_benchmarks.exit unwind label %bb.ee

bb.wp:                                            ; preds = %bb.ct
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ad)
  invoke void @_RNvXsa_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VecNtNtCs4lawaffTVVK_9sqlparser3ast13UtilityOptionENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCsdJxlLsGgtXr_16delta_benchmarks(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.ad, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.agt)
          to label %bb.wr unwind label %bb.wo

bb.wq:                                            ; preds = %bb.ct, %bb.wr
  %.sroa.0107.0 = phi i64 [ %.sroa.0107.0.copyload108, %bb.wr ], [ -9223372036854775808, %bb.ct ]
  %9 = getelementptr inbounds nuw i8, ptr %0, i64 46
  store i8 %.val400, ptr %9, align 2
  %i.bpr = getelementptr inbounds nuw i8, ptr %0, i64 42
  store <4 x i8> %8, ptr %i.bpr, align 2
  %i.bps = getelementptr inbounds nuw i8, ptr %0, i64 32
  store ptr %i.agp, ptr %i.bps, align 8
  %i.bpt = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i8 %i.agr, ptr %i.bpt, align 8
  %i.bpu = getelementptr inbounds nuw i8, ptr %0, i64 41
  store i8 %.sroa.5106.0, ptr %i.bpu, align 1
  %i.bpv = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.sroa.0107.0, ptr %i.bpv, align 8
  %.sroa.5109.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.5109.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.5109, i64 16, i1 false)
  store i64 93, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.5109)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ee)
  br label %bb.ed

bb.wr:                                            ; preds = %bb.wp
  %.sroa.0107.0.copyload108 = load i64, ptr %i.ad, align 8
  %.sroa.5109.0..sroa_idx110 = getelementptr inbounds nuw i8, ptr %i.ad, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.5109, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.5109.0..sroa_idx110, i64 16, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ad)
  br label %bb.wq

bb.ws:                                            ; preds = %bb.wv, %bb.wt
  %.pn171.pn.pn = phi { ptr, i32 } [ %.pn171.pn, %bb.wv ], [ %i.bpw, %bb.wt ]
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs4lawaffTVVK_9sqlparser3ast5query11TableFactorECsdJxlLsGgtXr_16delta_benchmarks(ptr noalias noundef align 8 dereferenceable(616) %i.eb) #23
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECsdJxlLsGgtXr_16delta_benchmarks.exit unwind label %bb.ee

bb.wt:                                            ; preds = %bb.cw
  %i.bpw = landingpad { ptr, i32 }
          cleanup
  br label %bb.ws

bb.wu:                                            ; preds = %bb.cw
  %i.bpx = getelementptr inbounds nuw i8, ptr %1, i64 1320
  call void @llvm.lifetime.start.p0(ptr nonnull %i.dz)
  %i.bpy = invoke fastcc noundef nonnull align 8 ptr @_RNvXsd_NtCs6Po7BT7Nknu_5alloc5boxedINtB5_3BoxNtNtCs4lawaffTVVK_9sqlparser3ast4ExprENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCsdJxlLsGgtXr_16delta_benchmarks(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.bpx)
          to label %bb.wx unwind label %bb.ww     ; 2 uses

bb.wv:                                            ; preds = %bb.wy, %bb.ww
  %.pn171.pn = phi { ptr, i32 } [ %.pn171, %bb.wy ], [ %i.bpz, %bb.ww ]
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs4lawaffTVVK_9sqlparser3ast5query11TableFactorECsdJxlLsGgtXr_16delta_benchmarks(ptr noalias noundef align 8 dereferenceable(616) %i.ea) #23
          to label %bb.ws unwind label %bb.ee

bb.ww:                                            ; preds = %bb.wu
  %i.bpz = landingpad { ptr, i32 }
          cleanup
  br label %bb.wv

bb.wx:                                            ; preds = %bb.wu
  store ptr %i.bpy, ptr %i.dz, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.dy)
  invoke void @_RNvXsa_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VecNtNtCs4lawaffTVVK_9sqlparser3ast11MergeClauseENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCsdJxlLsGgtXr_16delta_benchmarks(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.dy, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.ahl)
          to label %bb.xa unwind label %bb.wz

bb.wy:                                            ; preds = %bb.xd, %bb.wz
  %.pn171 = phi { ptr, i32 } [ %i.bqj, %bb.xd ], [ %i.bqa, %bb.wz ]
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxNtNtCs4lawaffTVVK_9sqlparser3ast4ExprEECsdJxlLsGgtXr_16delta_benchmarks(ptr noalias noundef align 8 dereferenceable(8) %i.dz) #23
          to label %bb.wv unwind label %bb.ee

bb.wz:                                            ; preds = %bb.wx
  %i.bqa = landingpad { ptr, i32 }
          cleanup
  br label %bb.wy

bb.xa:                                            ; preds = %bb.wx
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.5113)
  %i.bqb = getelementptr inbounds nuw i8, ptr %1, i64 1264 ; 2 uses
  %i.bqc = load i64, ptr %i.bqb, align 8, !range !160, !noundef !3
  %.not170 = icmp eq i64 %i.bqc, -9223372036854775807
  br i1 %.not170, label %bb.xc, label %bb.xb

bb.xb:                                            ; preds = %bb.xa
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ac)
  invoke fastcc void @_RNvXsrY_NtCs4lawaffTVVK_9sqlparser3astNtB6_12OutputClauseNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone(ptr noalias noundef align 8 captures(none) dereferenceable(56) %i.ac, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(56) %i.bqb)
          to label %bb.xe unwind label %bb.xd

bb.xc:                                            ; preds = %bb.xa, %bb.xe
  %.sroa.0111.0 = phi i64 [ %.sroa.0111.0.copyload112, %bb.xe ], [ -9223372036854775807, %bb.xa ]
  %i.bqd = getelementptr inbounds nuw i8, ptr %0, i64 1328
  store i8 %i.ahn, ptr %i.bqd, align 8
  %i.bqe = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(616) %i.bqe, ptr noundef nonnull align 8 dereferenceable(616) %i.eb, i64 616, i1 false)
  %i.bqf = getelementptr inbounds nuw i8, ptr %0, i64 624
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(616) %i.bqf, ptr noundef nonnull align 8 dereferenceable(616) %i.ea, i64 616, i1 false)
  %i.bqg = getelementptr inbounds nuw i8, ptr %0, i64 1320
  store ptr %i.bpy, ptr %i.bqg, align 8
  %i.bqh = getelementptr inbounds nuw i8, ptr %0, i64 1240
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.bqh, ptr noundef nonnull align 8 dereferenceable(24) %i.dy, i64 24, i1 false)
  %i.bqi = getelementptr inbounds nuw i8, ptr %0, i64 1264
  store i64 %.sroa.0111.0, ptr %i.bqi, align 8
  %.sroa.5113.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 1272
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %.sroa.5113.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(48) %.sroa.5113, i64 48, i1 false)
  store i64 96, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.5113)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.dy)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.dz)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ea)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.eb)
  br label %bb.ed

bb.xd:                                            ; preds = %bb.xb
  %i.bqj = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtCs4lawaffTVVK_9sqlparser3ast11MergeClauseEECsdJxlLsGgtXr_16delta_benchmarks(ptr noalias noundef align 8 dereferenceable(24) %i.dy) #23
          to label %bb.wy unwind label %bb.ee

bb.xe:                                            ; preds = %bb.xb
  %.sroa.0111.0.copyload112 = load i64, ptr %i.ac, align 8
  %.sroa.5113.0..sroa_idx114 = getelementptr inbounds nuw i8, ptr %i.ac, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %.sroa.5113, ptr noundef nonnull align 8 dereferenceable(48) %.sroa.5113.0..sroa_idx114, i64 48, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ac)
  br label %bb.xc

bb.xf:                                            ; preds = %bb.cx
  %i.bqk = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.bql = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.bqm = load ptr, ptr %i.bql, align 8, !alias.scope !16759, !noalias !16762, !nonnull !3, !noundef !3
  %i.bqn = load i64, ptr %i.bqk, align 8, !alias.scope !16759, !noalias !16762, !noundef !3
  call fastcc void @_RINvXNvMNtCs6Po7BT7Nknu_5alloc5sliceSp9to_vec_inNtNtCs4lawaffTVVK_9sqlparser3ast14ObjectNamePartNtB3_10ConvertVec6to_vecNtNtB8_5alloc6GlobalECsdJxlLsGgtXr_16delta_benchmarks(ptr noalias noundef align 8 captures(none) dereferenceable(24) %i.dx, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) %i.bqm, i64 noundef %i.bqn) #28
  br label %bb.xh

bb.xg:                                            ; preds = %bb.cx
  store i64 -9223372036854775808, ptr %i.dx, align 8
  br label %bb.xh

bb.xh:                                            ; preds = %bb.xg, %bb.xf
  call void @llvm.lifetime.start.p0(ptr nonnull %i.dw)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !16766
  %i.bqo = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.bqp = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.bqq = load ptr, ptr %i.bqp, align 8, !alias.scope !16770, !noalias !16773, !nonnull !3, !noundef !3
  %i.bqr = load i64, ptr %i.bqo, align 8, !alias.scope !16770, !noalias !16773, !noundef !3
  invoke fastcc void @_RINvXNvMNtCs6Po7BT7Nknu_5alloc5sliceSp9to_vec_inNtNtCs4lawaffTVVK_9sqlparser3ast14ObjectNamePartNtB3_10ConvertVec6to_vecNtNtB8_5alloc6GlobalECsdJxlLsGgtXr_16delta_benchmarks(ptr noalias noundef align 8 captures(none) dereferenceable(24) %i.d, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) %i.bqq, i64 noundef %i.bqr) #28
          to label %bb.xk unwind label %bb.xj, !inline_history !7679

bb.xi:                                            ; preds = %bb.xl, %bb.xj
  %.pn167.pn = phi { ptr, i32 } [ %.pn167, %bb.xl ], [ %i.bqs, %bb.xj ]
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtCs4lawaffTVVK_9sqlparser3ast10ObjectNameEECsdJxlLsGgtXr_16delta_benchmarks(ptr noalias noundef align 8 dereferenceable(24) %i.dx) #23
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECsdJxlLsGgtXr_16delta_benchmarks.exit unwind label %bb.ee

bb.xj:                                            ; preds = %bb.xh
  %i.bqs = landingpad { ptr, i32 }
          cleanup
  br label %bb.xi

bb.xk:                                            ; preds = %bb.xh
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.dw, ptr noundef nonnull align 8 dereferenceable(24) %i.d, i64 24, i1 false), !noalias !16775
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !16766
  %i.bqt = getelementptr inbounds nuw i8, ptr %1, i64 88
  %i.bqu = load i8, ptr %i.bqt, align 8, !range !2711, !noundef !3
  call void @llvm.lifetime.start.p0(ptr nonnull %i.dv)
  %i.bqv = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.bqw = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.bqx = load ptr, ptr %i.bqw, align 8, !alias.scope !16776, !noalias !16779, !nonnull !3, !noundef !3
  %i.bqy = load i64, ptr %i.bqv, align 8, !alias.scope !16776, !noalias !16779, !noundef !3
  invoke fastcc void @_RINvXNvMNtCs6Po7BT7Nknu_5alloc5sliceSp9to_vec_inNtNtCs4lawaffTVVK_9sqlparser3ast9SqlOptionNtB3_10ConvertVec6to_vecNtNtB8_5alloc6GlobalECsdJxlLsGgtXr_16delta_benchmarks(ptr noalias noundef nonnull align 8 captures(none) dereferenceable(24) %i.dv, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) %i.bqx, i64 noundef %i.bqy) #28
          to label %_RNvXsa_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VecNtNtCs4lawaffTVVK_9sqlparser3ast9SqlOptionENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCsdJxlLsGgtXr_16delta_benchmarks.exit689 unwind label %bb.xm, !inline_history !11954

bb.xl:                                            ; preds = %bb.xp, %bb.xm
  %.pn167 = phi { ptr, i32 } [ %i.bri, %bb.xp ], [ %i.bqz, %bb.xm ]
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs4lawaffTVVK_9sqlparser3ast10ObjectNameECsdJxlLsGgtXr_16delta_benchmarks(ptr noalias noundef align 8 dereferenceable(24) %i.dw) #23
          to label %bb.xi unwind label %bb.ee

bb.xm:                                            ; preds = %bb.xk
  %i.bqz = landingpad { ptr, i32 }
          cleanup
  br label %bb.xl

_RNvXsa_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VecNtNtCs4lawaffTVVK_9sqlparser3ast9SqlOptionENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCsdJxlLsGgtXr_16delta_benchmarks.exit689: ; preds = %bb.xk
  %i.bra = getelementptr inbounds nuw i8, ptr %1, i64 80 ; 2 uses
  %i.brb = load ptr, ptr %i.bra, align 8, !align !1750, !noundef !3
  %.not166 = icmp eq ptr %i.brb, null
  br i1 %.not166, label %bb.xo, label %bb.xn

bb.xn:                                            ; preds = %_RNvXsa_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VecNtNtCs4lawaffTVVK_9sqlparser3ast9SqlOptionENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCsdJxlLsGgtXr_16delta_benchmarks.exit689
  %i.brc = invoke fastcc noundef nonnull align 8 ptr @_RNvXsd_NtCs6Po7BT7Nknu_5alloc5boxedINtB5_3BoxNtNtNtCs4lawaffTVVK_9sqlparser3ast5query5QueryENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCsdJxlLsGgtXr_16delta_benchmarks(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.bra)
          to label %bb.xo unwind label %bb.xp

bb.xo:                                            ; preds = %bb.xn, %_RNvXsa_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VecNtNtCs4lawaffTVVK_9sqlparser3ast9SqlOptionENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCsdJxlLsGgtXr_16delta_benchmarks.exit689
  %.sroa.0115.0 = phi ptr [ null, %_RNvXsa_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VecNtNtCs4lawaffTVVK_9sqlparser3ast9SqlOptionENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCsdJxlLsGgtXr_16delta_benchmarks.exit689 ], [ %i.brc, %bb.xn ]
  %i.brd = getelementptr inbounds nuw i8, ptr %0, i64 56
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.brd, ptr noundef nonnull align 8 dereferenceable(24) %i.dx, i64 24, i1 false)
  %i.bre = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.bre, ptr noundef nonnull align 8 dereferenceable(24) %i.dw, i64 24, i1 false)
  %i.brf = getelementptr inbounds nuw i8, ptr %0, i64 88
  store i8 %i.bqu, ptr %i.brf, align 8
  %i.brg = getelementptr inbounds nuw i8, ptr %0, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.brg, ptr noundef nonnull align 8 dereferenceable(24) %i.dv, i64 24, i1 false)
  %i.brh = getelementptr inbounds nuw i8, ptr %0, i64 80
  store ptr %.sroa.0115.0, ptr %i.brh, align 8
  store i64 97, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.dv)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.dw)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.dx)
  br label %bb.ed

bb.xp:                                            ; preds = %bb.xn
  %i.bri = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtCs4lawaffTVVK_9sqlparser3ast9SqlOptionEECsdJxlLsGgtXr_16delta_benchmarks(ptr noalias noundef align 8 dereferenceable(24) %i.dv) #23
end_hunk_5
