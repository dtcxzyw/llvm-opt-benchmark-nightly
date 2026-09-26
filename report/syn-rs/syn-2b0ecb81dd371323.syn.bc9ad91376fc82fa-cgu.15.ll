Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/syn-rs/original/syn-2b0ecb81dd371323.syn.bc9ad91376fc82fa-cgu.15?download=true
inline.NumInlined: 554
inline.NumDeleted: 211
begin_hunk_0_@_RINvXsa_NtCs6et67aoV1xO_11proc_macro28fallbackNtB6_11TokenStreamINtNtNtNtCsj6eKBz9Db1c_4core4iter6traits7collect6ExtendNtB8_9TokenTreeE6extendINtNtNtB17_7sources4once4OnceB1T_EECsgbWeKYPjk8w_3syn:bb.a
  br i1 %.not9.i.i, label %_RINvYINtNtNtNtCsj6eKBz9Db1c_4core4iter7sources4once4OnceNtCs6et67aoV1xO_11proc_macro29TokenTreeENtNtNtBa_6traits8iterator8Iterator4folduNCINvNvB1w_8for_each4callBS_NCINvXsa_NtBU_8fallbackNtB2L_11TokenStreamINtNtB1A_7collect6ExtendBS_E6extendB3_E0E0ECsgbWeKYPjk8w_3syn.exit.i, label %bb.o

bb.n:                                             ; preds = %bb.o
  %i.au = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtNtNtB4_4iter7sources4once4OnceNtCs6et67aoV1xO_11proc_macro29TokenTreeEECsgbWeKYPjk8w_3syn(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.d) #18
          to label %.body.thread15 unwind label %bb.p, !noalias !1078

bb.o:                                             ; preds = %bb.m
  %i.av = getelementptr inbounds nuw i8, ptr %i.at, i64 16
  %.sroa.47.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !1081
  %i.aw = getelementptr inbounds nuw i8, ptr %1, i64 4
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(28) %.sroa.47.0..sroa_idx.i.i, ptr noundef nonnull align 4 dereferenceable(28) %i.aw, i64 28, i1 false)
  store i32 %.sroa.02.0.copyload38.i.i, ptr %i.a, align 8, !noalias !1082
  invoke void @_RNvNtCs6et67aoV1xO_11proc_macro28fallback26push_token_from_proc_macro(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.av, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(32) %i.a)
          to label %_RINvYINtNtNtNtCsj6eKBz9Db1c_4core4iter7sources4once4OnceNtCs6et67aoV1xO_11proc_macro29TokenTreeENtNtNtBa_6traits8iterator8Iterator4folduNCINvNvB1w_8for_each4callBS_NCINvXsa_NtBU_8fallbackNtB2L_11TokenStreamINtNtB1A_7collect6ExtendBS_E6extendB3_E0E0ECsgbWeKYPjk8w_3syn.exit.loopexit.i unwind label %bb.n, !noalias !1082

bb.p:                                             ; preds = %bb.n
  %i.ax = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #17, !noalias !1078
  unreachable

_RINvYINtNtNtNtCsj6eKBz9Db1c_4core4iter7sources4once4OnceNtCs6et67aoV1xO_11proc_macro29TokenTreeENtNtNtBa_6traits8iterator8Iterator4folduNCINvNvB1w_8for_each4callBS_NCINvXsa_NtBU_8fallbackNtB2L_11TokenStreamINtNtB1A_7collect6ExtendBS_E6extendB3_E0E0ECsgbWeKYPjk8w_3syn.exit.loopexit.i: ; preds = %bb.o
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !1081
  store i32 -1, ptr %i.d, align 8, !alias.scope !1079, !noalias !1083
  br label %_RINvYINtNtNtNtCsj6eKBz9Db1c_4core4iter7sources4once4OnceNtCs6et67aoV1xO_11proc_macro29TokenTreeENtNtNtBa_6traits8iterator8Iterator4folduNCINvNvB1w_8for_each4callBS_NCINvXsa_NtBU_8fallbackNtB2L_11TokenStreamINtNtB1A_7collect6ExtendBS_E6extendB3_E0E0ECsgbWeKYPjk8w_3syn.exit.i

_RINvYINtNtNtNtCsj6eKBz9Db1c_4core4iter7sources4once4OnceNtCs6et67aoV1xO_11proc_macro29TokenTreeENtNtNtBa_6traits8iterator8Iterator4folduNCINvNvB1w_8for_each4callBS_NCINvXsa_NtBU_8fallbackNtB2L_11TokenStreamINtNtB1A_7collect6ExtendBS_E6extendB3_E0E0ECsgbWeKYPjk8w_3syn.exit.i: ; preds = %_RINvYINtNtNtNtCsj6eKBz9Db1c_4core4iter7sources4once4OnceNtCs6et67aoV1xO_11proc_macro29TokenTreeENtNtNtBa_6traits8iterator8Iterator4folduNCINvNvB1w_8for_each4callBS_NCINvXsa_NtBU_8fallbackNtB2L_11TokenStreamINtNtB1A_7collect6ExtendBS_E6extendB3_E0E0ECsgbWeKYPjk8w_3syn.exit.loopexit.i, %bb.m
  call fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtNtNtB4_4iter7sources4once4OnceNtCs6et67aoV1xO_11proc_macro29TokenTreeEECsgbWeKYPjk8w_3syn(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.d)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  ret void

.body.thread15:                                   ; preds = %bb.n, %.body.thread
  %eh.lpad-body13 = phi { ptr, i32 } [ %eh.lpad-body14, %.body.thread ], [ %i.au, %bb.n ]
  resume { ptr, i32 } %eh.lpad-body13

.body.thread:                                     ; preds = %bb.l, %bb.f, %.body.thread19
  %eh.lpad-body14 = phi { ptr, i32 } [ %lpad.thr_comm, %.body.thread19 ], [ %i.as, %bb.l ], [ %i.x, %bb.f ]
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtNtNtB4_4iter7sources4once4OnceNtCs6et67aoV1xO_11proc_macro29TokenTreeEECsgbWeKYPjk8w_3syn(ptr noalias nofree noundef align 8 dereferenceable(32) %1) #18
          to label %.body.thread15 unwind label %bb.q

bb.q:                                             ; preds = %.body.thread
  %i.ay = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #17
  unreachable
}

; Function Attrs: nonlazybind uwtable
define hidden { i8, i1 } @_RNvMNtCsgbWeKYPjk8w_3syn5fixupNtB2_12FixupContext23rightmost_subexpression(i1 noundef zeroext %0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(168) %1) unnamed_addr #0 {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1088)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1089)
  br i1 %0, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.d, %bb.c, %bb.a
  %i.a = tail call noundef i8 @_RNvMNtCsgbWeKYPjk8w_3syn10precedenceNtB2_10Precedence2of(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(168) %1)
  br label %_RNvMNtCsgbWeKYPjk8w_3syn5fixupNtB2_12FixupContext34rightmost_subexpression_precedence.exit

bb.c:                                             ; preds = %bb.a
  %i.b = load i64, ptr %1, align 8, !range !19, !alias.scope !1090, !noundef !6 ; 2 uses
  %i.c = icmp ne i64 %i.b, -9223372036854775777
  tail call void @llvm.assume(i1 %i.c)
  %i.d = icmp eq i64 %i.b, -9223372036854775800
  br i1 %i.d, label %bb.d, label %bb.b

bb.d:                                             ; preds = %bb.c
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.f = load ptr, ptr %i.e, align 8, !alias.scope !1090, !nonnull !6, !noundef !6
  %i.g = tail call noundef zeroext i1 @_RNvNtCsgbWeKYPjk8w_3syn8classify29trailing_unparameterized_path(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(248) %i.f), !noalias !1090
  br i1 %i.g, label %_RNvMNtCsgbWeKYPjk8w_3syn5fixupNtB2_12FixupContext34rightmost_subexpression_precedence.exit, label %bb.b

_RNvMNtCsgbWeKYPjk8w_3syn5fixupNtB2_12FixupContext34rightmost_subexpression_precedence.exit: ; preds = %bb.b, %bb.d
  %.sroa.0.0.i.i = phi i8 [ %i.a, %bb.b ], [ 0, %bb.d ]
  %i.h = insertvalue { i8, i1 } poison, i8 %.sroa.0.0.i.i, 0
  %i.i = insertvalue { i8, i1 } %i.h, i1 %0, 1
  ret { i8, i1 } %i.i
}

; Function Attrs: nonlazybind uwtable
define hidden { i8, i1 } @_RNvMNtCsgbWeKYPjk8w_3syn5fixupNtB2_12FixupContext31leftmost_subexpression_with_dot(i1 noundef zeroext %0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(168) %1) unnamed_addr #0 {
bb.a:
  %i.a = tail call noundef i8 @_RNvMNtCsgbWeKYPjk8w_3syn10precedenceNtB2_10Precedence2of(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(168) %1)
  %i.b = insertvalue { i8, i1 } poison, i8 %i.a, 0
  %i.c = insertvalue { i8, i1 } %i.b, i1 false, 1
  ret { i8, i1 } %i.c
}

; Function Attrs: nonlazybind uwtable
define hidden noundef range(i8 0, 16) i8 @_RNvMNtCsgbWeKYPjk8w_3syn5fixupNtB2_12FixupContext34rightmost_subexpression_precedence(i1 noundef zeroext %0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(168) %1) unnamed_addr #0 {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1093)
  br i1 %0, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.d, %bb.c, %bb.a
  %i.a = tail call noundef i8 @_RNvMNtCsgbWeKYPjk8w_3syn10precedenceNtB2_10Precedence2of(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(168) %1)
  br label %_RNvMNtCsgbWeKYPjk8w_3syn5fixupNtB2_12FixupContext10precedence.exit

bb.c:                                             ; preds = %bb.a
  %i.b = load i64, ptr %1, align 8, !range !19, !alias.scope !1093, !noundef !6 ; 2 uses
  %i.c = icmp ne i64 %i.b, -9223372036854775777
  tail call void @llvm.assume(i1 %i.c)
  %i.d = icmp eq i64 %i.b, -9223372036854775800
  br i1 %i.d, label %bb.d, label %bb.b

bb.d:                                             ; preds = %bb.c
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.f = load ptr, ptr %i.e, align 8, !alias.scope !1093, !nonnull !6, !noundef !6
  %i.g = tail call noundef zeroext i1 @_RNvNtCsgbWeKYPjk8w_3syn8classify29trailing_unparameterized_path(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(248) %i.f), !noalias !1093
  br i1 %i.g, label %_RNvMNtCsgbWeKYPjk8w_3syn5fixupNtB2_12FixupContext10precedence.exit, label %bb.b

_RNvMNtCsgbWeKYPjk8w_3syn5fixupNtB2_12FixupContext10precedence.exit: ; preds = %bb.b, %bb.d
  %.sroa.0.0.i = phi i8 [ %i.a, %bb.b ], [ 0, %bb.d ]
  ret i8 %.sroa.0.0.i
}

; Function Attrs: nonlazybind uwtable
define hidden { i8, i1 } @_RNvMNtCsgbWeKYPjk8w_3syn5fixupNtB2_12FixupContext36leftmost_subexpression_with_operator(i1 noundef zeroext %0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(168) %1, i1 noundef zeroext %2) unnamed_addr #0 {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1098)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1099)
  br i1 %2, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.d, %bb.c, %bb.a
  %i.a = tail call noundef i8 @_RNvMNtCsgbWeKYPjk8w_3syn10precedenceNtB2_10Precedence2of(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(168) %1)
  br label %_RNvMNtCsgbWeKYPjk8w_3syn5fixupNtB2_12FixupContext33leftmost_subexpression_precedence.exit

bb.c:                                             ; preds = %bb.a
  %i.b = load i64, ptr %1, align 8, !range !19, !alias.scope !1100, !noundef !6 ; 2 uses
  %i.c = icmp ne i64 %i.b, -9223372036854775777
  tail call void @llvm.assume(i1 %i.c)
  %i.d = icmp eq i64 %i.b, -9223372036854775800
  br i1 %i.d, label %bb.d, label %bb.b

bb.d:                                             ; preds = %bb.c
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.f = load ptr, ptr %i.e, align 8, !alias.scope !1100, !nonnull !6, !noundef !6
  %i.g = tail call noundef zeroext i1 @_RNvNtCsgbWeKYPjk8w_3syn8classify29trailing_unparameterized_path(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(248) %i.f), !noalias !1100
  br i1 %i.g, label %_RNvMNtCsgbWeKYPjk8w_3syn5fixupNtB2_12FixupContext33leftmost_subexpression_precedence.exit, label %bb.b

_RNvMNtCsgbWeKYPjk8w_3syn5fixupNtB2_12FixupContext33leftmost_subexpression_precedence.exit: ; preds = %bb.b, %bb.d
  %.sroa.0.0.i.i = phi i8 [ %i.a, %bb.b ], [ 0, %bb.d ]
  %i.h = insertvalue { i8, i1 } poison, i8 %.sroa.0.0.i.i, 0
  %i.i = insertvalue { i8, i1 } %i.h, i1 %2, 1
  ret { i8, i1 } %i.i
}

; Function Attrs: noinline nonlazybind uwtable
define void @_RNvMs6_NtCs4wP2HXfJTCR_5alloc2rcINtB5_2RcINtNtCsj6eKBz9Db1c_4core4cell4CellNtNtCsgbWeKYPjk8w_3syn5parse10UnexpectedEE9drop_slowB1f_(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !6, !noundef !6 ; 6 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.c = load i8, ptr %i.b, align 8, !range !7, !alias.scope !1110, !noundef !6
  %switch.i.i = icmp samesign ult i8 %i.c, 2
  br i1 %switch.i.i, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_4cell4CellNtNtCsgbWeKYPjk8w_3syn5parse10UnexpectedEEBX_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 24 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1111)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1112)
  %i.e = load ptr, ptr %i.d, align 8, !alias.scope !1113, !nonnull !6, !noundef !6 ; 2 uses
  %i.f = load i64, ptr %i.e, align 8, !noalias !1113, !noundef !6
  %i.g = add i64 %i.f, -1                         ; 2 uses
  store i64 %i.g, ptr %i.e, align 8, !noalias !1113
  %i.h = icmp eq i64 %i.g, 0
  br i1 %i.h, label %bb.c, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_4cell4CellNtNtCsgbWeKYPjk8w_3syn5parse10UnexpectedEEBX_.exit

bb.c:                                             ; preds = %bb.b
  invoke void @_RNvMs6_NtCs4wP2HXfJTCR_5alloc2rcINtB5_2RcINtNtCsj6eKBz9Db1c_4core4cell4CellNtNtCsgbWeKYPjk8w_3syn5parse10UnexpectedEE9drop_slowB1f_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.d) #21
          to label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_4cell4CellNtNtCsgbWeKYPjk8w_3syn5parse10UnexpectedEEBX_.exit unwind label %bb.d, !inline_history !1109

bb.d:                                             ; preds = %bb.c
  %i.i = landingpad { ptr, i32 }
          cleanup
  tail call fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc2rc4WeakINtNtB4_4cell4CellNtNtCsgbWeKYPjk8w_3syn5parse10UnexpectedERNtNtBG_5alloc6GlobalEEB1u_(ptr nonnull %i.a) #18
  resume { ptr, i32 } %i.i

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_4cell4CellNtNtCsgbWeKYPjk8w_3syn5parse10UnexpectedEEBX_.exit: ; preds = %bb.c, %bb.b, %bb.a
  %i.j = icmp eq ptr %i.a, inttoptr (i64 -1 to ptr)
  br i1 %i.j, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc2rc4WeakINtNtB4_4cell4CellNtNtCsgbWeKYPjk8w_3syn5parse10UnexpectedERNtNtBG_5alloc6GlobalEEB1u_.exit, label %bb.e

bb.e:                                             ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_4cell4CellNtNtCsgbWeKYPjk8w_3syn5parse10UnexpectedEEBX_.exit
  %i.k = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  %i.l = load i64, ptr %i.k, align 8, !noundef !6
  %i.m = add i64 %i.l, -1                         ; 2 uses
  store i64 %i.m, ptr %i.k, align 8
  %i.n = icmp eq i64 %i.m, 0
  br i1 %i.n, label %bb.f, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc2rc4WeakINtNtB4_4cell4CellNtNtCsgbWeKYPjk8w_3syn5parse10UnexpectedERNtNtBG_5alloc6GlobalEEB1u_.exit

bb.f:                                             ; preds = %bb.e
  tail call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %i.a, i64 noundef 32, i64 noundef 8) #16
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc2rc4WeakINtNtB4_4cell4CellNtNtCsgbWeKYPjk8w_3syn5parse10UnexpectedERNtNtBG_5alloc6GlobalEEB1u_.exit

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc2rc4WeakINtNtB4_4cell4CellNtNtCsgbWeKYPjk8w_3syn5parse10UnexpectedERNtNtBG_5alloc6GlobalEEB1u_.exit: ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_4cell4CellNtNtCsgbWeKYPjk8w_3syn5parse10UnexpectedEEBX_.exit, %bb.e, %bb.f
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden noundef nonnull align 8 ptr @_RNvMs_NtCs4wP2HXfJTCR_5alloc5boxedINtB4_3BoxNtNtCsgbWeKYPjk8w_3syn2ty4TypeE13new_uninit_inBK_() unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  tail call void @_RNvCshxk5dXoXnx9_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #16
  %i.a = tail call noalias noundef align 8 dereferenceable_or_null(248) ptr @_RNvCshxk5dXoXnx9_7___rustc12___rust_alloc(i64 noundef 248, i64 noundef range(i64 1, -9223372036854775807) 8) #16 ; 2 uses
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %bb.b, label %bb.c, !prof !22

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvNtCs4wP2HXfJTCR_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 248) #22
  unreachable

bb.c:                                             ; preds = %bb.a
  ret ptr %i.a
}

; Function Attrs: nonlazybind uwtable
define hidden noundef nonnull align 8 ptr @_RNvMs_NtCs4wP2HXfJTCR_5alloc5boxedINtB4_3BoxNtNtCsgbWeKYPjk8w_3syn2ty8NamedArgE13new_uninit_inBK_() unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  tail call void @_RNvCshxk5dXoXnx9_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #16
  %i.a = tail call noalias noundef align 8 dereferenceable_or_null(304) ptr @_RNvCshxk5dXoXnx9_7___rustc12___rust_alloc(i64 noundef 304, i64 noundef range(i64 1, -9223372036854775807) 8) #16 ; 2 uses
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %bb.b, label %bb.c, !prof !22

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvNtCs4wP2HXfJTCR_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 304) #22
  unreachable

bb.c:                                             ; preds = %bb.a
  ret ptr %i.a
}

; Function Attrs: nonlazybind uwtable
define hidden noundef nonnull align 8 ptr @_RNvMs_NtCs4wP2HXfJTCR_5alloc5boxedINtB4_3BoxNtNtCsgbWeKYPjk8w_3syn3lit10LitIntReprE13new_uninit_inBK_() unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  tail call void @_RNvCshxk5dXoXnx9_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #16
  %i.a = tail call noalias noundef align 8 dereferenceable_or_null(56) ptr @_RNvCshxk5dXoXnx9_7___rustc12___rust_alloc(i64 noundef 56, i64 noundef range(i64 1, -9223372036854775807) 8) #16 ; 2 uses
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %bb.b, label %bb.c, !prof !22

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvNtCs4wP2HXfJTCR_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 56) #22
  unreachable

bb.c:                                             ; preds = %bb.a
  ret ptr %i.a
}

; Function Attrs: nonlazybind uwtable
define hidden noundef nonnull align 8 ptr @_RNvMs_NtCs4wP2HXfJTCR_5alloc5boxedINtB4_3BoxNtNtCsgbWeKYPjk8w_3syn3lit12LitFloatReprE13new_uninit_inBK_() unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  tail call void @_RNvCshxk5dXoXnx9_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #16
  %i.a = tail call noalias noundef align 8 dereferenceable_or_null(56) ptr @_RNvCshxk5dXoXnx9_7___rustc12___rust_alloc(i64 noundef 56, i64 noundef range(i64 1, -9223372036854775807) 8) #16 ; 2 uses
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %bb.b, label %bb.c, !prof !22

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvNtCs4wP2HXfJTCR_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 56) #22
  unreachable

bb.c:                                             ; preds = %bb.a
  ret ptr %i.a
}

; Function Attrs: nonlazybind uwtable
define hidden noundef nonnull align 8 ptr @_RNvMs_NtCs4wP2HXfJTCR_5alloc5boxedINtB4_3BoxNtNtCsgbWeKYPjk8w_3syn3lit7LitReprE13new_uninit_inBK_() unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  tail call void @_RNvCshxk5dXoXnx9_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #16
  %i.a = tail call noalias noundef align 8 dereferenceable_or_null(40) ptr @_RNvCshxk5dXoXnx9_7___rustc12___rust_alloc(i64 noundef 40, i64 noundef range(i64 1, -9223372036854775807) 8) #16 ; 2 uses
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %bb.b, label %bb.c, !prof !22

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvNtCs4wP2HXfJTCR_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 40) #22
  unreachable

bb.c:                                             ; preds = %bb.a
  ret ptr %i.a
}

; Function Attrs: nonlazybind uwtable
define hidden noundef nonnull align 8 ptr @_RNvMs_NtCs4wP2HXfJTCR_5alloc5boxedINtB4_3BoxNtNtCsgbWeKYPjk8w_3syn4data5FieldE13new_uninit_inBK_() unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  tail call void @_RNvCshxk5dXoXnx9_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #16
  %i.a = tail call noalias noundef align 8 dereferenceable_or_null(512) ptr @_RNvCshxk5dXoXnx9_7___rustc12___rust_alloc(i64 noundef 512, i64 noundef range(i64 1, -9223372036854775807) 8) #16 ; 2 uses
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %bb.b, label %bb.c, !prof !22

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvNtCs4wP2HXfJTCR_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 512) #22
  unreachable

bb.c:                                             ; preds = %bb.a
  ret ptr %i.a
}

; Function Attrs: nonlazybind uwtable
define hidden noundef nonnull align 8 ptr @_RNvMs_NtCs4wP2HXfJTCR_5alloc5boxedINtB4_3BoxNtNtCsgbWeKYPjk8w_3syn4data7VariantE13new_uninit_inBK_() unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  tail call void @_RNvCshxk5dXoXnx9_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #16
  %i.a = tail call noalias noundef align 8 dereferenceable_or_null(280) ptr @_RNvCshxk5dXoXnx9_7___rustc12___rust_alloc(i64 noundef 280, i64 noundef range(i64 1, -9223372036854775807) 8) #16 ; 2 uses
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %bb.b, label %bb.c, !prof !22

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvNtCs4wP2HXfJTCR_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 280) #22
  unreachable

bb.c:                                             ; preds = %bb.a
  ret ptr %i.a
}

; Function Attrs: nonlazybind uwtable
define hidden noundef nonnull align 8 ptr @_RNvMs_NtCs4wP2HXfJTCR_5alloc5boxedINtB4_3BoxNtNtCsgbWeKYPjk8w_3syn4expr10FieldValueE13new_uninit_inBK_() unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  tail call void @_RNvCshxk5dXoXnx9_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #16
  %i.a = tail call noalias noundef align 8 dereferenceable_or_null(224) ptr @_RNvCshxk5dXoXnx9_7___rustc12___rust_alloc(i64 noundef 224, i64 noundef range(i64 1, -9223372036854775807) 8) #16 ; 2 uses
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %bb.b, label %bb.c, !prof !22

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvNtCs4wP2HXfJTCR_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 224) #22
  unreachable

bb.c:                                             ; preds = %bb.a
  ret ptr %i.a
}

; Function Attrs: nonlazybind uwtable
define hidden noundef nonnull align 8 ptr @_RNvMs_NtCs4wP2HXfJTCR_5alloc5boxedINtB4_3BoxNtNtCsgbWeKYPjk8w_3syn4expr4ExprE13new_uninit_inBK_() unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  tail call void @_RNvCshxk5dXoXnx9_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #16
  %i.a = tail call noalias noundef align 8 dereferenceable_or_null(168) ptr @_RNvCshxk5dXoXnx9_7___rustc12___rust_alloc(i64 noundef 168, i64 noundef range(i64 1, -9223372036854775807) 8) #16 ; 2 uses
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %bb.b, label %bb.c, !prof !22

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvNtCs4wP2HXfJTCR_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 168) #22
  unreachable

bb.c:                                             ; preds = %bb.a
  ret ptr %i.a
}

; Function Attrs: nonlazybind uwtable
define hidden noundef nonnull align 8 ptr @_RNvMs_NtCs4wP2HXfJTCR_5alloc5boxedINtB4_3BoxNtNtCsgbWeKYPjk8w_3syn4path11PathSegmentE13new_uninit_inBK_() unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  tail call void @_RNvCshxk5dXoXnx9_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #16
  %i.a = tail call noalias noundef align 8 dereferenceable_or_null(88) ptr @_RNvCshxk5dXoXnx9_7___rustc12___rust_alloc(i64 noundef 88, i64 noundef range(i64 1, -9223372036854775807) 8) #16 ; 2 uses
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %bb.b, label %bb.c, !prof !22

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvNtCs4wP2HXfJTCR_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 88) #22
  unreachable

bb.c:                                             ; preds = %bb.a
  ret ptr %i.a
}

; Function Attrs: nonlazybind uwtable
define hidden noundef nonnull align 8 ptr @_RNvMs_NtCs4wP2HXfJTCR_5alloc5boxedINtB4_3BoxNtNtCsgbWeKYPjk8w_3syn4path15GenericArgumentE13new_uninit_inBK_() unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  tail call void @_RNvCshxk5dXoXnx9_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #16
  %i.a = tail call noalias noundef align 8 dereferenceable_or_null(336) ptr @_RNvCshxk5dXoXnx9_7___rustc12___rust_alloc(i64 noundef 336, i64 noundef range(i64 1, -9223372036854775807) 8) #16 ; 2 uses
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %bb.b, label %bb.c, !prof !22

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvNtCs4wP2HXfJTCR_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 336) #22
  unreachable

bb.c:                                             ; preds = %bb.a
  ret ptr %i.a
}

; Function Attrs: nonlazybind uwtable
define hidden noundef nonnull align 8 ptr @_RNvMs_NtCs4wP2HXfJTCR_5alloc5boxedINtB4_3BoxNtNtCsgbWeKYPjk8w_3syn8generics12GenericParamE13new_uninit_inBK_() unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  tail call void @_RNvCshxk5dXoXnx9_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #16
  %i.a = tail call noalias noundef align 8 dereferenceable_or_null(480) ptr @_RNvCshxk5dXoXnx9_7___rustc12___rust_alloc(i64 noundef 480, i64 noundef range(i64 1, -9223372036854775807) 8) #16 ; 2 uses
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %bb.b, label %bb.c, !prof !22

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvNtCs4wP2HXfJTCR_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 480) #22
  unreachable

bb.c:                                             ; preds = %bb.a
  ret ptr %i.a
}

; Function Attrs: nonlazybind uwtable
define hidden noundef nonnull align 8 ptr @_RNvMs_NtCs4wP2HXfJTCR_5alloc5boxedINtB4_3BoxNtNtCsgbWeKYPjk8w_3syn8generics14TypeParamBoundE13new_uninit_inBK_() unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  tail call void @_RNvCshxk5dXoXnx9_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #16
  %i.a = tail call noalias noundef align 8 dereferenceable_or_null(120) ptr @_RNvCshxk5dXoXnx9_7___rustc12___rust_alloc(i64 noundef 120, i64 noundef range(i64 1, -9223372036854775807) 8) #16 ; 2 uses
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %bb.b, label %bb.c, !prof !22

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvNtCs4wP2HXfJTCR_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 120) #22
  unreachable

bb.c:                                             ; preds = %bb.a
  ret ptr %i.a
}

; Function Attrs: nonlazybind uwtable
define hidden noundef nonnull align 8 ptr @_RNvMs_NtCs4wP2HXfJTCR_5alloc5boxedINtB4_3BoxNtNtCsgbWeKYPjk8w_3syn8generics14WherePredicateE13new_uninit_inBK_() unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  tail call void @_RNvCshxk5dXoXnx9_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #16
  %i.a = tail call noalias noundef align 8 dereferenceable_or_null(360) ptr @_RNvCshxk5dXoXnx9_7___rustc12___rust_alloc(i64 noundef 360, i64 noundef range(i64 1, -9223372036854775807) 8) #16 ; 2 uses
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %bb.b, label %bb.c, !prof !22

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvNtCs4wP2HXfJTCR_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 360) #22
  unreachable

bb.c:                                             ; preds = %bb.a
  ret ptr %i.a
}

; Function Attrs: nonlazybind uwtable
define hidden noundef nonnull align 8 ptr @_RNvMs_NtCs4wP2HXfJTCR_5alloc5boxedINtB4_3BoxNtNtCsgbWeKYPjk8w_3syn8lifetime8LifetimeE13new_uninit_inBK_() unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  tail call void @_RNvCshxk5dXoXnx9_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #16
  %i.a = tail call noalias noundef align 8 dereferenceable_or_null(32) ptr @_RNvCshxk5dXoXnx9_7___rustc12___rust_alloc(i64 noundef 32, i64 noundef range(i64 1, -9223372036854775807) 8) #16 ; 2 uses
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %bb.b, label %bb.c, !prof !22

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvNtCs4wP2HXfJTCR_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 32) #22
  unreachable

bb.c:                                             ; preds = %bb.a
  ret ptr %i.a
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc noundef nonnull ptr @_RNvNtCs4wP2HXfJTCR_5alloc5boxed14box_new_uninit(i64 noundef range(i64 48, 249) %0) unnamed_addr #3 {
bb.a:
  tail call void @_RNvCshxk5dXoXnx9_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #16
  %i.a = tail call noundef align 8 ptr @_RNvCshxk5dXoXnx9_7___rustc12___rust_alloc(i64 noundef %0, i64 noundef 8) #16 ; 2 uses
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %bb.b, label %bb.c, !prof !22

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvNtCs4wP2HXfJTCR_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef %0) #22
  unreachable

bb.c:                                             ; preds = %bb.a
  ret ptr %i.a
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvNtCsgbWeKYPjk8w_3syn5group11parse_group(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([48 x i8]) align 8 captures(none) dereferenceable(48) initializes((0, 32)) %0, ptr noundef nonnull align 8 %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [1 x i8], align 1                 ; 4 uses
  %i.b = alloca [56 x i8], align 8                ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i8 3, ptr %i.a, align 1, !noalias !1116
  call void @_RINvMs9_NtCsgbWeKYPjk8w_3syn5parseNtB6_11ParseBuffer4stepNCNvNtB8_5group15parse_delimited0TNtNtCs6et67aoV1xO_11proc_macro25extra9DelimSpanBw_EEB8_(ptr noalias nofree noundef nonnull sret([56 x i8]) align 8 captures(none) dereferenceable(56) %i.b, ptr noundef nonnull align 8 %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) dereferenceable(1) %i.a, ptr noundef nonnull align 8 %1)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.c = load i64, ptr %i.b, align 8, !range !17, !noundef !6
  %i.d = trunc nuw i64 %i.c to i1
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 2 uses
  br i1 %i.d, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.f, ptr noundef nonnull align 8 dereferenceable(24) %i.e, i64 24, i1 false)
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %.sroa.02.0.copyload = load i32, ptr %i.e, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.h, ptr noundef nonnull align 8 dereferenceable(32) %i.g, i64 32, i1 false)
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i32 %.sroa.02.0.copyload, ptr %.sroa.4.0..sroa_idx, align 8
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.sink = phi i64 [ 1, %bb.b ], [ 0, %bb.c ]
  store i64 %.sink, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  ret void
}

; Function Attrs: nonlazybind uwtable
define void @_RNvNtCsgbWeKYPjk8w_3syn5group12parse_braces(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([56 x i8]) align 8 captures(none) dereferenceable(56) initializes((0, 32)) %0, ptr noundef nonnull align 8 %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [1 x i8], align 1                 ; 4 uses
  %i.b = alloca [48 x i8], align 8                ; 5 uses
  %i.c = alloca [56 x i8], align 8                ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i8 1, ptr %i.a, align 1, !noalias !1119
  call void @_RINvMs9_NtCsgbWeKYPjk8w_3syn5parseNtB6_11ParseBuffer4stepNCNvNtB8_5group15parse_delimited0TNtNtCs6et67aoV1xO_11proc_macro25extra9DelimSpanBw_EEB8_(ptr noalias nofree noundef nonnull sret([56 x i8]) align 8 captures(none) dereferenceable(56) %i.c, ptr noundef nonnull align 8 %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) dereferenceable(1) %i.a, ptr noundef nonnull align 8 %1)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.d = load i64, ptr %i.c, align 8, !range !17, !noundef !6
  %i.e = trunc nuw i64 %i.d to i1
  %i.f = getelementptr inbounds nuw i8, ptr %i.c, i64 8 ; 2 uses
  br i1 %i.e, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.g, ptr noundef nonnull align 8 dereferenceable(24) %i.f, i64 24, i1 false)
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(12) %i.h, ptr noundef nonnull align 8 dereferenceable(12) %i.f, i64 12, i1 false)
  %i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.b, ptr noundef nonnull align 8 dereferenceable(32) %i.i, i64 32, i1 false)
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.j, ptr noundef nonnull align 8 dereferenceable(48) %i.b, i64 48, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.sink = phi i64 [ 1, %bb.b ], [ 0, %bb.c ]
  store i64 %.sink, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  ret void
}

; Function Attrs: nonlazybind uwtable
define void @_RNvNtCsgbWeKYPjk8w_3syn5group12parse_parens(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([56 x i8]) align 8 captures(none) dereferenceable(56) initializes((0, 32)) %0, ptr noundef nonnull align 8 %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [1 x i8], align 1                 ; 4 uses
  %i.b = alloca [48 x i8], align 8                ; 5 uses
  %i.c = alloca [56 x i8], align 8                ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i8 0, ptr %i.a, align 1, !noalias !1122
  call void @_RINvMs9_NtCsgbWeKYPjk8w_3syn5parseNtB6_11ParseBuffer4stepNCNvNtB8_5group15parse_delimited0TNtNtCs6et67aoV1xO_11proc_macro25extra9DelimSpanBw_EEB8_(ptr noalias nofree noundef nonnull sret([56 x i8]) align 8 captures(none) dereferenceable(56) %i.c, ptr noundef nonnull align 8 %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) dereferenceable(1) %i.a, ptr noundef nonnull align 8 %1)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.d = load i64, ptr %i.c, align 8, !range !17, !noundef !6
  %i.e = trunc nuw i64 %i.d to i1
  %i.f = getelementptr inbounds nuw i8, ptr %i.c, i64 8 ; 2 uses
  br i1 %i.e, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.g, ptr noundef nonnull align 8 dereferenceable(24) %i.f, i64 24, i1 false)
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(12) %i.h, ptr noundef nonnull align 8 dereferenceable(12) %i.f, i64 12, i1 false)
  %i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.b, ptr noundef nonnull align 8 dereferenceable(32) %i.i, i64 32, i1 false)
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.j, ptr noundef nonnull align 8 dereferenceable(48) %i.b, i64 48, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.sink = phi i64 [ 1, %bb.b ], [ 0, %bb.c ]
  store i64 %.sink, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  ret void
}

; Function Attrs: nonlazybind uwtable
define void @_RNvNtCsgbWeKYPjk8w_3syn5group14parse_brackets(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([56 x i8]) align 8 captures(none) dereferenceable(56) initializes((0, 32)) %0, ptr noundef nonnull align 8 %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [1 x i8], align 1                 ; 4 uses
  %i.b = alloca [48 x i8], align 8                ; 5 uses
  %i.c = alloca [56 x i8], align 8                ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i8 2, ptr %i.a, align 1, !noalias !1125
  call void @_RINvMs9_NtCsgbWeKYPjk8w_3syn5parseNtB6_11ParseBuffer4stepNCNvNtB8_5group15parse_delimited0TNtNtCs6et67aoV1xO_11proc_macro25extra9DelimSpanBw_EEB8_(ptr noalias nofree noundef nonnull sret([56 x i8]) align 8 captures(none) dereferenceable(56) %i.c, ptr noundef nonnull align 8 %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) dereferenceable(1) %i.a, ptr noundef nonnull align 8 %1)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.d = load i64, ptr %i.c, align 8, !range !17, !noundef !6
  %i.e = trunc nuw i64 %i.d to i1
  %i.f = getelementptr inbounds nuw i8, ptr %i.c, i64 8 ; 2 uses
  br i1 %i.e, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.g, ptr noundef nonnull align 8 dereferenceable(24) %i.f, i64 24, i1 false)
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(12) %i.h, ptr noundef nonnull align 8 dereferenceable(12) %i.f, i64 12, i1 false)
  %i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.b, ptr noundef nonnull align 8 dereferenceable(32) %i.i, i64 32, i1 false)
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.j, ptr noundef nonnull align 8 dereferenceable(48) %i.b, i64 48, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.sink = phi i64 [ 1, %bb.b ], [ 0, %bb.c ]
  store i64 %.sink, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvNtNtCsgbWeKYPjk8w_3syn4path7parsing14const_argument(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([168 x i8]) align 8 captures(none) dereferenceable(168) %0, ptr noundef nonnull align 8 %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [1 x i8], align 1                 ; 4 uses
  %.sroa.0 = alloca [32 x i8], align 8            ; 4 uses
  %i.b = alloca [56 x i8], align 8                ; 7 uses
  %i.c = alloca [56 x i8], align 8                ; 4 uses
  %i.d = alloca [32 x i8], align 8                ; 4 uses
  %i.e = alloca [168 x i8], align 8               ; 7 uses
  %.sroa.614 = alloca [24 x i8], align 8          ; 6 uses
  %i.f = alloca [168 x i8], align 8               ; 7 uses
  %i.g = alloca [32 x i8], align 8                ; 8 uses
  %i.h = alloca [48 x i8], align 8                ; 4 uses
  %i.i = alloca [24 x i8], align 8                ; 7 uses
  %.sroa.044 = alloca [72 x i8], align 8          ; 3 uses
  %i.j = alloca [24 x i8], align 8                ; 2 uses
  %i.k = alloca [32 x i8], align 8                ; 5 uses
  %.sroa.58 = alloca [24 x i8], align 8           ; 6 uses
  %i.l = alloca [48 x i8], align 8                ; 7 uses
  %.sroa.6 = alloca [24 x i8], align 8            ; 6 uses
  %i.m = alloca [56 x i8], align 8                ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1154)
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.o = load i32, ptr %i.n, align 8, !noalias !1154, !noundef !6
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.m, i64 48
  store i32 %i.o, ptr %i.q, align 8, !alias.scope !1154
  %i.r = getelementptr inbounds nuw i8, ptr %i.m, i64 32
  %i.s = load <2 x ptr>, ptr %1, align 8, !noalias !1154
  store <2 x ptr> %i.s, ptr %i.r, align 8, !alias.scope !1154
  %.sroa.4.sroa.4.0..sroa.4.0..sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.m, i64 16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.m, i8 0, i64 16, i1 false), !alias.scope !1154
end_hunk_0
