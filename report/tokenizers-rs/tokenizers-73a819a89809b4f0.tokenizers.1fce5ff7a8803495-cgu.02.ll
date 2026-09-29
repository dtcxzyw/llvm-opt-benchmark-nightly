Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/tokenizers-rs/original/tokenizers-73a819a89809b4f0.tokenizers.1fce5ff7a8803495-cgu.02?download=true
inline.NumInlined: 1144
inline.NumDeleted: 636
begin_hunk_0_@_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueTINtNtCscdodAO9FK5_5alloc3vec3VecmEIBD_NtNtBH_6string6StringEIBD_TjjEEEECs2JiOgHzbbc7_10tokenizers:bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 24
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecNtNtBG_6string6StringEECs2JiOgHzbbc7_10tokenizers(ptr noalias noundef align 8 dereferenceable(24) %i.d) #24
          to label %.body2 unwind label %bb.l

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecmEECs2JiOgHzbbc7_10tokenizers.exit: ; preds = %bb.c
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  invoke void @_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtB7_6string6StringENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.e)
          to label %bb.g unwind label %bb.f

bb.f:                                             ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecmEECs2JiOgHzbbc7_10tokenizers.exit
  %i.f = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecNtNtB7_6string6StringENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.e)
          to label %.body2 unwind label %bb.h

bb.g:                                             ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecmEECs2JiOgHzbbc7_10tokenizers.exit
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecNtNtB7_6string6StringENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.e)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecNtNtBG_6string6StringEECs2JiOgHzbbc7_10tokenizers.exit unwind label %bb.i

bb.h:                                             ; preds = %bb.f
  %i.g = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #23
  unreachable

.body2:                                           ; preds = %bb.i, %bb.f, %.body
  %.pn = phi { ptr, i32 } [ %eh.lpad-body, %.body ], [ %i.i, %bb.i ], [ %i.f, %bb.f ]
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 48
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecTjjEEECs2JiOgHzbbc7_10tokenizers(ptr noalias noundef align 8 dereferenceable(24) %i.h) #24
          to label %common.resume unwind label %bb.l

bb.i:                                             ; preds = %bb.g
  %i.i = landingpad { ptr, i32 }
          cleanup
  br label %.body2

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecNtNtBG_6string6StringEECs2JiOgHzbbc7_10tokenizers.exit: ; preds = %bb.g
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 3 uses
  invoke void @_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VecTjjEENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.j)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecTjjEEECs2JiOgHzbbc7_10tokenizers.exit unwind label %bb.j

bb.j:                                             ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecNtNtBG_6string6StringEECs2JiOgHzbbc7_10tokenizers.exit
  %i.k = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecTjjEENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.j)
          to label %common.resume unwind label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.l = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #23
  unreachable

common.resume:                                    ; preds = %.body2, %bb.j
  %common.resume.op = phi { ptr, i32 } [ %i.k, %bb.j ], [ %.pn, %.body2 ]
  resume { ptr, i32 } %common.resume.op

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecTjjEEECs2JiOgHzbbc7_10tokenizers.exit: ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecNtNtBG_6string6StringEECs2JiOgHzbbc7_10tokenizers.exit
  tail call void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecTjjEENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.j)
  ret void

bb.l:                                             ; preds = %.body2, %.body
  %i.m = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #23
  unreachable
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueTNtNtCscdodAO9FK5_5alloc6string6StringBC_EECs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  invoke void @_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull align 8 dereferenceable(24) %0)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VechEECs2JiOgHzbbc7_10tokenizers.exit.i unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull align 8 dereferenceable(24) %0)
          to label %.body unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.b = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #23
  unreachable

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VechEECs2JiOgHzbbc7_10tokenizers.exit.i: ; preds = %bb.a
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull align 8 dereferenceable(24) %0)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECs2JiOgHzbbc7_10tokenizers.exit unwind label %bb.d

bb.d:                                             ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VechEECs2JiOgHzbbc7_10tokenizers.exit.i
  %i.c = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %bb.b, %bb.d
  %eh.lpad-body = phi { ptr, i32 } [ %i.c, %bb.d ], [ %i.a, %bb.b ]
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 24
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECs2JiOgHzbbc7_10tokenizers(ptr noalias noundef align 8 dereferenceable(24) %i.d) #24
          to label %common.resume unwind label %bb.g

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECs2JiOgHzbbc7_10tokenizers.exit: ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VechEECs2JiOgHzbbc7_10tokenizers.exit.i
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  invoke void @_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.e)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECs2JiOgHzbbc7_10tokenizers.exit3 unwind label %bb.e

bb.e:                                             ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECs2JiOgHzbbc7_10tokenizers.exit
  %i.f = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.e)
          to label %common.resume unwind label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.g = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #23
  unreachable

common.resume:                                    ; preds = %.body, %bb.e
  %common.resume.op = phi { ptr, i32 } [ %i.f, %bb.e ], [ %eh.lpad-body, %.body ]
  resume { ptr, i32 } %common.resume.op

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECs2JiOgHzbbc7_10tokenizers.exit3: ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECs2JiOgHzbbc7_10tokenizers.exit
  tail call void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.e)
  ret void

bb.g:                                             ; preds = %.body
  %i.h = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #23
  unreachable
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueTNtNtCscdodAO9FK5_5alloc6string6StringdEECs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull align 8 dereferenceable(32) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  invoke void @_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull align 8 dereferenceable(24) %0)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECs2JiOgHzbbc7_10tokenizers.exit unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull align 8 dereferenceable(24) %0)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc7raw_vec6RawVechEECs2JiOgHzbbc7_10tokenizers.exit.i.i unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.b = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #23
  unreachable

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc7raw_vec6RawVechEECs2JiOgHzbbc7_10tokenizers.exit.i.i: ; preds = %bb.b
  resume { ptr, i32 } %i.a

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECs2JiOgHzbbc7_10tokenizers.exit: ; preds = %bb.a
  tail call void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull align 8 dereferenceable(24) %0)
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueTNtNtNtCsboAIIHEtPkY_10serde_core7private7content7ContentBC_EECs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull align 8 dereferenceable(64) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCsboAIIHEtPkY_10serde_core7private7content7ContentECs2JiOgHzbbc7_10tokenizers(ptr noalias noundef align 8 dereferenceable(32) %0)
          to label %bb.c unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = landingpad { ptr, i32 }
          cleanup
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 32
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCsboAIIHEtPkY_10serde_core7private7content7ContentECs2JiOgHzbbc7_10tokenizers(ptr noalias noundef align 8 dereferenceable(32) %i.b) #24
          to label %bb.e unwind label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 32
  tail call fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCsboAIIHEtPkY_10serde_core7private7content7ContentECs2JiOgHzbbc7_10tokenizers(ptr noalias noundef align 8 dereferenceable(32) %i.c)
  ret void

bb.d:                                             ; preds = %bb.b
  %i.d = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #23
  unreachable

bb.e:                                             ; preds = %bb.b
  resume { ptr, i32 } %i.a
}

; Function Attrs: nofree norecurse nosync nounwind nonlazybind memory(readwrite, target_mem: none) uwtable
define hidden void @_RINvXs0_NtNtNtCs4NRVxsYgnAr_4core4iter6traits8iteratorQINtNtNtCscdodAO9FK5_5alloc3vec9into_iter8IntoIterTjjEENtB6_8Iterator4folduNCINvNvB1J_8for_each4callB1E_NCINvMsj_BW_INtBW_3VecB1E_E14extend_trustedBQ_E0E0ECs2JiOgHzbbc7_10tokenizers(ptr noalias nofree noundef align 8 captures(none) dereferenceable(32) %0, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %1) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !70)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !71)
  %.sroa.0.0.copyload.i = load ptr, ptr %1, align 8, !alias.scope !71, !noalias !70 ; 2 uses
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.sroa.4.0.copyload.i = load i64, ptr %.sroa.4.0..sroa_idx.i, align 8, !alias.scope !71, !noalias !70 ; 6 uses
  %.sroa.6.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.sroa.6.0.copyload.i = load ptr, ptr %.sroa.6.0..sroa_idx.i, align 8, !alias.scope !71, !noalias !70 ; 5 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !72)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = load ptr, ptr %i.a, align 8, !alias.scope !73, !noalias !74, !nonnull !6, !noundef !6 ; 3 uses
  %2 = ptrtoaddr ptr %i.b to i64                  ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %.promoted.i.i = load ptr, ptr %i.c, align 8, !alias.scope !73, !noalias !74 ; 9 uses
  %.promoted.i.i6 = ptrtoaddr ptr %.promoted.i.i to i64 ; 2 uses
  %.not6.i.i = icmp eq ptr %.promoted.i.i, %i.b
  br i1 %.not6.i.i, label %_RINvXs2_NtNtNtCs4NRVxsYgnAr_4core4iter6traits8iteratorQINtNtNtCscdodAO9FK5_5alloc3vec9into_iter8IntoIterTjjEENtB6_15IteratorRefSpec9spec_folduNCINvNvNtB6_8Iterator8for_each4callB1E_NCINvMsj_BW_INtBW_3VecB1E_E14extend_trustedBQ_E0E0ECs2JiOgHzbbc7_10tokenizers.exit, label %.lr.ph.i.i.preheader

.lr.ph.i.i.preheader:                             ; preds = %bb.a
  %i.d = add i64 %2, -16
  %i.e = sub i64 %i.d, %.promoted.i.i6            ; 2 uses
  %i.f = lshr i64 %i.e, 4
  %i.g = add nuw nsw i64 %i.f, 1                  ; 2 uses
  %min.iters.check = icmp ult i64 %i.e, 272
  br i1 %min.iters.check, label %.lr.ph.i.i.preheader12, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i.i.preheader
  %i.h = shl i64 %.sroa.4.0.copyload.i, 4         ; 2 uses
  %scevgep = getelementptr i8, ptr %.sroa.6.0.copyload.i, i64 %i.h
  %3 = add i64 %2, -16
  %4 = sub i64 %3, %.promoted.i.i6
  %i.i = and i64 %4, -16                          ; 2 uses
  %i.j = getelementptr i8, ptr %.sroa.6.0.copyload.i, i64 %i.h
  %i.k = getelementptr i8, ptr %i.j, i64 %i.i
  %scevgep7 = getelementptr i8, ptr %i.k, i64 16
  %i.l = getelementptr i8, ptr %.promoted.i.i, i64 %i.i
  %scevgep8 = getelementptr i8, ptr %i.l, i64 16
  %bound0 = icmp ult ptr %scevgep, %scevgep8
  %bound1 = icmp ult ptr %.promoted.i.i, %scevgep7
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.i.i.preheader12, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.g, 2305843009213693950      ; 4 uses
  %i.m = add i64 %.sroa.4.0.copyload.i, %n.vec    ; 2 uses
  %i.n = shl i64 %n.vec, 4
  %i.o = getelementptr i8, ptr %.promoted.i.i, i64 %i.n ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.p = add i64 %.sroa.4.0.copyload.i, %index    ; 2 uses
  %i.q = shl i64 %index, 4                        ; 2 uses
  %next.gep = getelementptr i8, ptr %.promoted.i.i, i64 %i.q
  %i.r = getelementptr i8, ptr %.promoted.i.i, i64 %i.q
  %next.gep9 = getelementptr i8, ptr %i.r, i64 16
  %wide.load = load <2 x i64>, ptr %next.gep, align 8, !alias.scope !75, !noalias !76
  %wide.load10 = load <2 x i64>, ptr %next.gep9, align 8, !alias.scope !75, !noalias !76
  %i.s = getelementptr inbounds nuw [16 x i8], ptr %.sroa.6.0.copyload.i, i64 %i.p
  %i.t = getelementptr [16 x i8], ptr %.sroa.6.0.copyload.i, i64 %i.p
  %i.u = getelementptr i8, ptr %i.t, i64 16
  store <2 x i64> %wide.load, ptr %i.s, align 8, !alias.scope !77, !noalias !78
  store <2 x i64> %wide.load10, ptr %i.u, align 8, !alias.scope !77, !noalias !78
  %index.next = add nuw i64 %index, 2             ; 2 uses
  %i.v = icmp eq i64 %index.next, %n.vec
  br i1 %i.v, label %middle.block, label %vector.body, !llvm.loop !68

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.g, %n.vec
  br i1 %cmp.n, label %._crit_edge.i.i, label %.lr.ph.i.i.preheader12

.lr.ph.i.i.preheader12:                           ; preds = %vector.memcheck, %.lr.ph.i.i.preheader, %middle.block
  %.ph = phi i64 [ %.sroa.4.0.copyload.i, %vector.memcheck ], [ %.sroa.4.0.copyload.i, %.lr.ph.i.i.preheader ], [ %i.m, %middle.block ]
  %.ph13 = phi ptr [ %.promoted.i.i, %vector.memcheck ], [ %.promoted.i.i, %.lr.ph.i.i.preheader ], [ %i.o, %middle.block ]
  br label %.lr.ph.i.i

._crit_edge.i.i:                                  ; preds = %.lr.ph.i.i, %middle.block
  %.lcssa5 = phi ptr [ %i.o, %middle.block ], [ %i.y, %.lr.ph.i.i ]
  %.lcssa = phi i64 [ %i.m, %middle.block ], [ %i.ab, %.lr.ph.i.i ]
  store ptr %.lcssa5, ptr %i.c, align 8, !alias.scope !73, !noalias !74
  br label %_RINvXs2_NtNtNtCs4NRVxsYgnAr_4core4iter6traits8iteratorQINtNtNtCscdodAO9FK5_5alloc3vec9into_iter8IntoIterTjjEENtB6_15IteratorRefSpec9spec_folduNCINvNvNtB6_8Iterator8for_each4callB1E_NCINvMsj_BW_INtBW_3VecB1E_E14extend_trustedBQ_E0E0ECs2JiOgHzbbc7_10tokenizers.exit

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.preheader12, %.lr.ph.i.i
  %i.w = phi i64 [ %i.ab, %.lr.ph.i.i ], [ %.ph, %.lr.ph.i.i.preheader12 ] ; 2 uses
  %i.x = phi ptr [ %i.y, %.lr.ph.i.i ], [ %.ph13, %.lr.ph.i.i.preheader12 ] ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 16 ; 3 uses
  %i.z = getelementptr inbounds nuw [16 x i8], ptr %.sroa.6.0.copyload.i, i64 %i.w
  %i.aa = load <2 x i64>, ptr %i.x, align 8, !noalias !76
  store <2 x i64> %i.aa, ptr %i.z, align 8, !noalias !81
  %i.ab = add i64 %i.w, 1                         ; 2 uses
  %.not.i.i = icmp eq ptr %i.y, %i.b
  br i1 %.not.i.i, label %._crit_edge.i.i, label %.lr.ph.i.i, !llvm.loop !69

_RINvXs2_NtNtNtCs4NRVxsYgnAr_4core4iter6traits8iteratorQINtNtNtCscdodAO9FK5_5alloc3vec9into_iter8IntoIterTjjEENtB6_15IteratorRefSpec9spec_folduNCINvNvNtB6_8Iterator8for_each4callB1E_NCINvMsj_BW_INtBW_3VecB1E_E14extend_trustedBQ_E0E0ECs2JiOgHzbbc7_10tokenizers.exit: ; preds = %bb.a, %._crit_edge.i.i
  %.val3.i.i = phi i64 [ %.lcssa, %._crit_edge.i.i ], [ %.sroa.4.0.copyload.i, %bb.a ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.copyload.i) ]
  store i64 %.val3.i.i, ptr %.sroa.0.0.copyload.i, align 8, !noalias !76
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind nonlazybind memory(readwrite, target_mem: none) uwtable
define hidden { i64, i64 } @_RINvXs0_NtNtNtCs4NRVxsYgnAr_4core4iter6traits8iteratorQINtNtNtCscdodAO9FK5_5alloc3vec9into_iter8IntoItercENtB6_8Iterator8try_foldjNCINvNvXs_NtNtBa_8adapters4takeINtB2e_4TakepEB1G_8try_fold5checkcjINtNtNtBc_3ops9try_trait17NeverShortCircuitjENCINvMB3b_B38_10wrap_mut_2jcNCINvNtB2g_3map8map_foldcjjNCINvMs0_NtNtCs2JiOgHzbbc7_10tokenizers9tokenizer10normalizerNtB4T_16NormalizedString15transform_rangeINtNtB3d_5range5RangejEINtNtB2g_5chain5ChainINtB4o_3MapINtNtB2g_9enumerate9EnumerateNtNtNtBc_3str4iter5CharsENCNvB4P_7prepend0EINtNtNtBa_7sources4once4OnceTciEEEE0NCINvXsK_NtB8_5accumjNtB9a_3Sum3sumIB77_IB2A_BQ_EB4K_EE0E0E0E0INtNtB3d_12control_flow11ControlFlowB38_jEEB4X_(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0, i64 noundef %1, ptr noalias nofree noundef align 8 captures(none) dereferenceable(8) %2) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %.val = load ptr, ptr %0, align 8, !nonnull !6, !align !8, !noundef !6 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !87)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !88)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !89)
  %i.a = getelementptr inbounds nuw i8, ptr %.val, i64 24
  %i.b = load ptr, ptr %i.a, align 8, !alias.scope !88, !noalias !90, !nonnull !6, !noundef !6
  %i.c = getelementptr inbounds nuw i8, ptr %.val, i64 8 ; 2 uses
  %.promoted.i.i = load ptr, ptr %i.c, align 8, !alias.scope !88, !noalias !90
  %.promoted10.i.i = load i64, ptr %2, align 8, !alias.scope !90, !noalias !88
  br label %bb.b

bb.b:                                             ; preds = %_RNCINvNvXs_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters4takeINtB9_4TakepENtNtNtBd_6traits8iterator8Iterator8try_fold5checkcjINtNtNtBf_3ops9try_trait17NeverShortCircuitjENCINvMB1W_B1T_10wrap_mut_2jcNCINvNtBb_3map8map_foldcjjNCINvMs0_NtNtCs2JiOgHzbbc7_10tokenizers9tokenizer10normalizerNtB3D_16NormalizedString15transform_rangeINtNtB1Y_5range5RangejEINtNtBb_5chain5ChainINtB39_3MapINtNtBb_9enumerate9EnumerateNtNtNtBf_3str4iter5CharsENCNvB3z_7prepend0EINtNtNtBd_7sources4once4OnceTciEEEE0NCINvXsK_NtB18_5accumjNtB7S_3Sum3sumIB5Q_IBS_QINtNtNtCscdodAO9FK5_5alloc3vec9into_iter8IntoItercEEB3u_EE0E0E0E0B3H_.exit.i.i, %bb.a
  %i.d = phi i64 [ %.promoted10.i.i, %bb.a ], [ %i.h, %_RNCINvNvXs_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters4takeINtB9_4TakepENtNtNtBd_6traits8iterator8Iterator8try_fold5checkcjINtNtNtBf_3ops9try_trait17NeverShortCircuitjENCINvMB1W_B1T_10wrap_mut_2jcNCINvNtBb_3map8map_foldcjjNCINvMs0_NtNtCs2JiOgHzbbc7_10tokenizers9tokenizer10normalizerNtB3D_16NormalizedString15transform_rangeINtNtB1Y_5range5RangejEINtNtBb_5chain5ChainINtB39_3MapINtNtBb_9enumerate9EnumerateNtNtNtBf_3str4iter5CharsENCNvB3z_7prepend0EINtNtNtBd_7sources4once4OnceTciEEEE0NCINvXsK_NtB18_5accumjNtB7S_3Sum3sumIB5Q_IBS_QINtNtNtCscdodAO9FK5_5alloc3vec9into_iter8IntoItercEEB3u_EE0E0E0E0B3H_.exit.i.i ]
  %i.e = phi ptr [ %.promoted.i.i, %bb.a ], [ %i.g, %_RNCINvNvXs_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters4takeINtB9_4TakepENtNtNtBd_6traits8iterator8Iterator8try_fold5checkcjINtNtNtBf_3ops9try_trait17NeverShortCircuitjENCINvMB1W_B1T_10wrap_mut_2jcNCINvNtBb_3map8map_foldcjjNCINvMs0_NtNtCs2JiOgHzbbc7_10tokenizers9tokenizer10normalizerNtB3D_16NormalizedString15transform_rangeINtNtB1Y_5range5RangejEINtNtBb_5chain5ChainINtB39_3MapINtNtBb_9enumerate9EnumerateNtNtNtBf_3str4iter5CharsENCNvB3z_7prepend0EINtNtNtBd_7sources4once4OnceTciEEEE0NCINvXsK_NtB18_5accumjNtB7S_3Sum3sumIB5Q_IBS_QINtNtNtCscdodAO9FK5_5alloc3vec9into_iter8IntoItercEEB3u_EE0E0E0E0B3H_.exit.i.i ] ; 3 uses
  %.sroa.0.0.i.i = phi i64 [ %1, %bb.a ], [ %i.l, %_RNCINvNvXs_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters4takeINtB9_4TakepENtNtNtBd_6traits8iterator8Iterator8try_fold5checkcjINtNtNtBf_3ops9try_trait17NeverShortCircuitjENCINvMB1W_B1T_10wrap_mut_2jcNCINvNtBb_3map8map_foldcjjNCINvMs0_NtNtCs2JiOgHzbbc7_10tokenizers9tokenizer10normalizerNtB3D_16NormalizedString15transform_rangeINtNtB1Y_5range5RangejEINtNtBb_5chain5ChainINtB39_3MapINtNtBb_9enumerate9EnumerateNtNtNtBf_3str4iter5CharsENCNvB3z_7prepend0EINtNtNtBd_7sources4once4OnceTciEEEE0NCINvXsK_NtB18_5accumjNtB7S_3Sum3sumIB5Q_IBS_QINtNtNtCscdodAO9FK5_5alloc3vec9into_iter8IntoItercEEB3u_EE0E0E0E0B3H_.exit.i.i ] ; 2 uses
  %.not.i.i = icmp eq ptr %i.e, %i.b
  br i1 %.not.i.i, label %_RINvXs2_NtNtNtCs4NRVxsYgnAr_4core4iter6traits8iteratorQINtNtNtCscdodAO9FK5_5alloc3vec9into_iter8IntoItercENtB6_15IteratorRefSpec13spec_try_foldjNCINvNvXs_NtNtBa_8adapters4takeINtB2s_4TakepENtB6_8Iterator8try_fold5checkcjINtNtNtBc_3ops9try_trait17NeverShortCircuitjENCINvMB3z_B3w_10wrap_mut_2jcNCINvNtB2u_3map8map_foldcjjNCINvMs0_NtNtCs2JiOgHzbbc7_10tokenizers9tokenizer10normalizerNtB5h_16NormalizedString15transform_rangeINtNtB3B_5range5RangejEINtNtB2u_5chain5ChainINtB4M_3MapINtNtB2u_9enumerate9EnumerateNtNtNtBc_3str4iter5CharsENCNvB5d_7prepend0EINtNtNtBa_7sources4once4OnceTciEEEE0NCINvXsK_NtB8_5accumjNtB9y_3Sum3sumIB7v_IB2O_BQ_EB58_EE0E0E0E0INtNtB3B_12control_flow11ControlFlowB3w_jEEB5l_.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = load i32, ptr %i.e, align 4, !range !12, !noalias !91, !noundef !6 ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.e, i64 4 ; 2 uses
  store ptr %i.g, ptr %i.c, align 8, !alias.scope !88, !noalias !90
  %i.h = add i64 %i.d, -1                         ; 3 uses
  store i64 %i.h, ptr %2, align 8, !alias.scope !90, !noalias !88
  %i.i = icmp samesign ult i32 %i.f, 128
  br i1 %i.i, label %_RNCINvNvXs_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters4takeINtB9_4TakepENtNtNtBd_6traits8iterator8Iterator8try_fold5checkcjINtNtNtBf_3ops9try_trait17NeverShortCircuitjENCINvMB1W_B1T_10wrap_mut_2jcNCINvNtBb_3map8map_foldcjjNCINvMs0_NtNtCs2JiOgHzbbc7_10tokenizers9tokenizer10normalizerNtB3D_16NormalizedString15transform_rangeINtNtB1Y_5range5RangejEINtNtBb_5chain5ChainINtB39_3MapINtNtBb_9enumerate9EnumerateNtNtNtBf_3str4iter5CharsENCNvB3z_7prepend0EINtNtNtBd_7sources4once4OnceTciEEEE0NCINvXsK_NtB18_5accumjNtB7S_3Sum3sumIB5Q_IBS_QINtNtNtCscdodAO9FK5_5alloc3vec9into_iter8IntoItercEEB3u_EE0E0E0E0B3H_.exit.i.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.j = icmp samesign ult i32 %i.f, 2048
  br i1 %i.j, label %_RNCINvNvXs_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters4takeINtB9_4TakepENtNtNtBd_6traits8iterator8Iterator8try_fold5checkcjINtNtNtBf_3ops9try_trait17NeverShortCircuitjENCINvMB1W_B1T_10wrap_mut_2jcNCINvNtBb_3map8map_foldcjjNCINvMs0_NtNtCs2JiOgHzbbc7_10tokenizers9tokenizer10normalizerNtB3D_16NormalizedString15transform_rangeINtNtB1Y_5range5RangejEINtNtBb_5chain5ChainINtB39_3MapINtNtBb_9enumerate9EnumerateNtNtNtBf_3str4iter5CharsENCNvB3z_7prepend0EINtNtNtBd_7sources4once4OnceTciEEEE0NCINvXsK_NtB18_5accumjNtB7S_3Sum3sumIB5Q_IBS_QINtNtNtCscdodAO9FK5_5alloc3vec9into_iter8IntoItercEEB3u_EE0E0E0E0B3H_.exit.i.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.k = icmp samesign ult i32 %i.f, 65536
  %..i.i.i.i.i.i = select i1 %i.k, i64 3, i64 4
  br label %_RNCINvNvXs_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters4takeINtB9_4TakepENtNtNtBd_6traits8iterator8Iterator8try_fold5checkcjINtNtNtBf_3ops9try_trait17NeverShortCircuitjENCINvMB1W_B1T_10wrap_mut_2jcNCINvNtBb_3map8map_foldcjjNCINvMs0_NtNtCs2JiOgHzbbc7_10tokenizers9tokenizer10normalizerNtB3D_16NormalizedString15transform_rangeINtNtB1Y_5range5RangejEINtNtBb_5chain5ChainINtB39_3MapINtNtBb_9enumerate9EnumerateNtNtNtBf_3str4iter5CharsENCNvB3z_7prepend0EINtNtNtBd_7sources4once4OnceTciEEEE0NCINvXsK_NtB18_5accumjNtB7S_3Sum3sumIB5Q_IBS_QINtNtNtCscdodAO9FK5_5alloc3vec9into_iter8IntoItercEEB3u_EE0E0E0E0B3H_.exit.i.i

_RNCINvNvXs_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters4takeINtB9_4TakepENtNtNtBd_6traits8iterator8Iterator8try_fold5checkcjINtNtNtBf_3ops9try_trait17NeverShortCircuitjENCINvMB1W_B1T_10wrap_mut_2jcNCINvNtBb_3map8map_foldcjjNCINvMs0_NtNtCs2JiOgHzbbc7_10tokenizers9tokenizer10normalizerNtB3D_16NormalizedString15transform_rangeINtNtB1Y_5range5RangejEINtNtBb_5chain5ChainINtB39_3MapINtNtBb_9enumerate9EnumerateNtNtNtBf_3str4iter5CharsENCNvB3z_7prepend0EINtNtNtBd_7sources4once4OnceTciEEEE0NCINvXsK_NtB18_5accumjNtB7S_3Sum3sumIB5Q_IBS_QINtNtNtCscdodAO9FK5_5alloc3vec9into_iter8IntoItercEEB3u_EE0E0E0E0B3H_.exit.i.i: ; preds = %bb.e, %bb.d, %bb.c
  %.sroa.0.0.i.i.i.i.i.i = phi i64 [ 2, %bb.d ], [ %..i.i.i.i.i.i, %bb.e ], [ 1, %bb.c ]
  %i.l = add i64 %.sroa.0.0.i.i.i.i.i.i, %.sroa.0.0.i.i ; 2 uses
  %i.m = icmp eq i64 %i.h, 0
  br i1 %i.m, label %_RINvXs2_NtNtNtCs4NRVxsYgnAr_4core4iter6traits8iteratorQINtNtNtCscdodAO9FK5_5alloc3vec9into_iter8IntoItercENtB6_15IteratorRefSpec13spec_try_foldjNCINvNvXs_NtNtBa_8adapters4takeINtB2s_4TakepENtB6_8Iterator8try_fold5checkcjINtNtNtBc_3ops9try_trait17NeverShortCircuitjENCINvMB3z_B3w_10wrap_mut_2jcNCINvNtB2u_3map8map_foldcjjNCINvMs0_NtNtCs2JiOgHzbbc7_10tokenizers9tokenizer10normalizerNtB5h_16NormalizedString15transform_rangeINtNtB3B_5range5RangejEINtNtB2u_5chain5ChainINtB4M_3MapINtNtB2u_9enumerate9EnumerateNtNtNtBc_3str4iter5CharsENCNvB5d_7prepend0EINtNtNtBa_7sources4once4OnceTciEEEE0NCINvXsK_NtB8_5accumjNtB9y_3Sum3sumIB7v_IB2O_BQ_EB58_EE0E0E0E0INtNtB3B_12control_flow11ControlFlowB3w_jEEB5l_.exit, label %bb.b

_RINvXs2_NtNtNtCs4NRVxsYgnAr_4core4iter6traits8iteratorQINtNtNtCscdodAO9FK5_5alloc3vec9into_iter8IntoItercENtB6_15IteratorRefSpec13spec_try_foldjNCINvNvXs_NtNtBa_8adapters4takeINtB2s_4TakepENtB6_8Iterator8try_fold5checkcjINtNtNtBc_3ops9try_trait17NeverShortCircuitjENCINvMB3z_B3w_10wrap_mut_2jcNCINvNtB2u_3map8map_foldcjjNCINvMs0_NtNtCs2JiOgHzbbc7_10tokenizers9tokenizer10normalizerNtB5h_16NormalizedString15transform_rangeINtNtB3B_5range5RangejEINtNtB2u_5chain5ChainINtB4M_3MapINtNtB2u_9enumerate9EnumerateNtNtNtBc_3str4iter5CharsENCNvB5d_7prepend0EINtNtNtBa_7sources4once4OnceTciEEEE0NCINvXsK_NtB8_5accumjNtB9y_3Sum3sumIB7v_IB2O_BQ_EB58_EE0E0E0E0INtNtB3B_12control_flow11ControlFlowB3w_jEEB5l_.exit: ; preds = %bb.b, %_RNCINvNvXs_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters4takeINtB9_4TakepENtNtNtBd_6traits8iterator8Iterator8try_fold5checkcjINtNtNtBf_3ops9try_trait17NeverShortCircuitjENCINvMB1W_B1T_10wrap_mut_2jcNCINvNtBb_3map8map_foldcjjNCINvMs0_NtNtCs2JiOgHzbbc7_10tokenizers9tokenizer10normalizerNtB3D_16NormalizedString15transform_rangeINtNtB1Y_5range5RangejEINtNtBb_5chain5ChainINtB39_3MapINtNtBb_9enumerate9EnumerateNtNtNtBf_3str4iter5CharsENCNvB3z_7prepend0EINtNtNtBd_7sources4once4OnceTciEEEE0NCINvXsK_NtB18_5accumjNtB7S_3Sum3sumIB5Q_IBS_QINtNtNtCscdodAO9FK5_5alloc3vec9into_iter8IntoItercEEB3u_EE0E0E0E0B3H_.exit.i.i
  %.pn9.i.i = phi i64 [ %.sroa.0.0.i.i, %bb.b ], [ %i.l, %_RNCINvNvXs_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters4takeINtB9_4TakepENtNtNtBd_6traits8iterator8Iterator8try_fold5checkcjINtNtNtBf_3ops9try_trait17NeverShortCircuitjENCINvMB1W_B1T_10wrap_mut_2jcNCINvNtBb_3map8map_foldcjjNCINvMs0_NtNtCs2JiOgHzbbc7_10tokenizers9tokenizer10normalizerNtB3D_16NormalizedString15transform_rangeINtNtB1Y_5range5RangejEINtNtBb_5chain5ChainINtB39_3MapINtNtBb_9enumerate9EnumerateNtNtNtBf_3str4iter5CharsENCNvB3z_7prepend0EINtNtNtBd_7sources4once4OnceTciEEEE0NCINvXsK_NtB18_5accumjNtB7S_3Sum3sumIB5Q_IBS_QINtNtNtCscdodAO9FK5_5alloc3vec9into_iter8IntoItercEEB3u_EE0E0E0E0B3H_.exit.i.i ]
  %.sroa.02.0.i.i = phi i64 [ 0, %bb.b ], [ 1, %_RNCINvNvXs_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters4takeINtB9_4TakepENtNtNtBd_6traits8iterator8Iterator8try_fold5checkcjINtNtNtBf_3ops9try_trait17NeverShortCircuitjENCINvMB1W_B1T_10wrap_mut_2jcNCINvNtBb_3map8map_foldcjjNCINvMs0_NtNtCs2JiOgHzbbc7_10tokenizers9tokenizer10normalizerNtB3D_16NormalizedString15transform_rangeINtNtB1Y_5range5RangejEINtNtBb_5chain5ChainINtB39_3MapINtNtBb_9enumerate9EnumerateNtNtNtBf_3str4iter5CharsENCNvB3z_7prepend0EINtNtNtBd_7sources4once4OnceTciEEEE0NCINvXsK_NtB18_5accumjNtB7S_3Sum3sumIB5Q_IBS_QINtNtNtCscdodAO9FK5_5alloc3vec9into_iter8IntoItercEEB3u_EE0E0E0E0B3H_.exit.i.i ]
  %i.n = insertvalue { i64, i64 } poison, i64 %.sroa.02.0.i.i, 0
  %i.o = insertvalue { i64, i64 } %i.n, i64 %.pn9.i.i, 1
  ret { i64, i64 } %i.o
}

; Function Attrs: nofree norecurse nosync nounwind nonlazybind memory(readwrite, target_mem: none) uwtable
define hidden { i64, i64 } @_RINvXs0_NtNtNtCs4NRVxsYgnAr_4core4iter6traits8iteratorQINtNtNtCscdodAO9FK5_5alloc3vec9into_iter8IntoItercENtB6_8Iterator8try_foldjNCINvNvXs_NtNtBa_8adapters4takeINtB2e_4TakepEB1G_8try_fold5checkcjINtNtNtBc_3ops9try_trait17NeverShortCircuitjENCINvMB3b_B38_10wrap_mut_2jcNCINvNtB2g_3map8map_foldcjjNCINvMs0_NtNtCs2JiOgHzbbc7_10tokenizers9tokenizer10normalizerNtB4T_16NormalizedString15transform_rangeINtNtB3d_5range9RangeFromjEINtNtB2g_5chain5ChainINtNtNtBa_7sources4once4OnceTciEEINtB4o_3MapNtNtNtBc_3str4iter5CharsNCNvB4P_6append0EEE0NCINvXsK_NtB8_5accumjNtB8J_3Sum3sumIB7I_IB2A_BQ_EB4K_EE0E0E0E0INtNtB3d_12control_flow11ControlFlowB38_jEEB4X_(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0, i64 noundef %1, ptr noalias nofree noundef align 8 captures(none) dereferenceable(8) %2) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %.val = load ptr, ptr %0, align 8, !nonnull !6, !align !8, !noundef !6 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !97)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !98)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !99)
  %i.a = getelementptr inbounds nuw i8, ptr %.val, i64 24
  %i.b = load ptr, ptr %i.a, align 8, !alias.scope !98, !noalias !100, !nonnull !6, !noundef !6
  %i.c = getelementptr inbounds nuw i8, ptr %.val, i64 8 ; 2 uses
  %.promoted.i.i = load ptr, ptr %i.c, align 8, !alias.scope !98, !noalias !100
  %.promoted10.i.i = load i64, ptr %2, align 8, !alias.scope !100, !noalias !98
  br label %bb.b

bb.b:                                             ; preds = %_RNCINvNvXs_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters4takeINtB9_4TakepENtNtNtBd_6traits8iterator8Iterator8try_fold5checkcjINtNtNtBf_3ops9try_trait17NeverShortCircuitjENCINvMB1W_B1T_10wrap_mut_2jcNCINvNtBb_3map8map_foldcjjNCINvMs0_NtNtCs2JiOgHzbbc7_10tokenizers9tokenizer10normalizerNtB3D_16NormalizedString15transform_rangeINtNtB1Y_5range9RangeFromjEINtNtBb_5chain5ChainINtNtNtBd_7sources4once4OnceTciEEINtB39_3MapNtNtNtBf_3str4iter5CharsNCNvB3z_6append0EEE0NCINvXsK_NtB18_5accumjNtB7s_3Sum3sumIB6r_IBS_QINtNtNtCscdodAO9FK5_5alloc3vec9into_iter8IntoItercEEB3u_EE0E0E0E0B3H_.exit.i.i, %bb.a
  %i.d = phi i64 [ %.promoted10.i.i, %bb.a ], [ %i.h, %_RNCINvNvXs_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters4takeINtB9_4TakepENtNtNtBd_6traits8iterator8Iterator8try_fold5checkcjINtNtNtBf_3ops9try_trait17NeverShortCircuitjENCINvMB1W_B1T_10wrap_mut_2jcNCINvNtBb_3map8map_foldcjjNCINvMs0_NtNtCs2JiOgHzbbc7_10tokenizers9tokenizer10normalizerNtB3D_16NormalizedString15transform_rangeINtNtB1Y_5range9RangeFromjEINtNtBb_5chain5ChainINtNtNtBd_7sources4once4OnceTciEEINtB39_3MapNtNtNtBf_3str4iter5CharsNCNvB3z_6append0EEE0NCINvXsK_NtB18_5accumjNtB7s_3Sum3sumIB6r_IBS_QINtNtNtCscdodAO9FK5_5alloc3vec9into_iter8IntoItercEEB3u_EE0E0E0E0B3H_.exit.i.i ]
  %i.e = phi ptr [ %.promoted.i.i, %bb.a ], [ %i.g, %_RNCINvNvXs_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters4takeINtB9_4TakepENtNtNtBd_6traits8iterator8Iterator8try_fold5checkcjINtNtNtBf_3ops9try_trait17NeverShortCircuitjENCINvMB1W_B1T_10wrap_mut_2jcNCINvNtBb_3map8map_foldcjjNCINvMs0_NtNtCs2JiOgHzbbc7_10tokenizers9tokenizer10normalizerNtB3D_16NormalizedString15transform_rangeINtNtB1Y_5range9RangeFromjEINtNtBb_5chain5ChainINtNtNtBd_7sources4once4OnceTciEEINtB39_3MapNtNtNtBf_3str4iter5CharsNCNvB3z_6append0EEE0NCINvXsK_NtB18_5accumjNtB7s_3Sum3sumIB6r_IBS_QINtNtNtCscdodAO9FK5_5alloc3vec9into_iter8IntoItercEEB3u_EE0E0E0E0B3H_.exit.i.i ] ; 3 uses
  %.sroa.0.0.i.i = phi i64 [ %1, %bb.a ], [ %i.l, %_RNCINvNvXs_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters4takeINtB9_4TakepENtNtNtBd_6traits8iterator8Iterator8try_fold5checkcjINtNtNtBf_3ops9try_trait17NeverShortCircuitjENCINvMB1W_B1T_10wrap_mut_2jcNCINvNtBb_3map8map_foldcjjNCINvMs0_NtNtCs2JiOgHzbbc7_10tokenizers9tokenizer10normalizerNtB3D_16NormalizedString15transform_rangeINtNtB1Y_5range9RangeFromjEINtNtBb_5chain5ChainINtNtNtBd_7sources4once4OnceTciEEINtB39_3MapNtNtNtBf_3str4iter5CharsNCNvB3z_6append0EEE0NCINvXsK_NtB18_5accumjNtB7s_3Sum3sumIB6r_IBS_QINtNtNtCscdodAO9FK5_5alloc3vec9into_iter8IntoItercEEB3u_EE0E0E0E0B3H_.exit.i.i ] ; 2 uses
  %.not.i.i = icmp eq ptr %i.e, %i.b
  br i1 %.not.i.i, label %_RINvXs2_NtNtNtCs4NRVxsYgnAr_4core4iter6traits8iteratorQINtNtNtCscdodAO9FK5_5alloc3vec9into_iter8IntoItercENtB6_15IteratorRefSpec13spec_try_foldjNCINvNvXs_NtNtBa_8adapters4takeINtB2s_4TakepENtB6_8Iterator8try_fold5checkcjINtNtNtBc_3ops9try_trait17NeverShortCircuitjENCINvMB3z_B3w_10wrap_mut_2jcNCINvNtB2u_3map8map_foldcjjNCINvMs0_NtNtCs2JiOgHzbbc7_10tokenizers9tokenizer10normalizerNtB5h_16NormalizedString15transform_rangeINtNtB3B_5range9RangeFromjEINtNtB2u_5chain5ChainINtNtNtBa_7sources4once4OnceTciEEINtB4M_3MapNtNtNtBc_3str4iter5CharsNCNvB5d_6append0EEE0NCINvXsK_NtB8_5accumjNtB97_3Sum3sumIB86_IB2O_BQ_EB58_EE0E0E0E0INtNtB3B_12control_flow11ControlFlowB3w_jEEB5l_.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = load i32, ptr %i.e, align 4, !range !12, !noalias !101, !noundef !6 ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.e, i64 4 ; 2 uses
  store ptr %i.g, ptr %i.c, align 8, !alias.scope !98, !noalias !100
  %i.h = add i64 %i.d, -1                         ; 3 uses
  store i64 %i.h, ptr %2, align 8, !alias.scope !100, !noalias !98
  %i.i = icmp samesign ult i32 %i.f, 128
  br i1 %i.i, label %_RNCINvNvXs_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters4takeINtB9_4TakepENtNtNtBd_6traits8iterator8Iterator8try_fold5checkcjINtNtNtBf_3ops9try_trait17NeverShortCircuitjENCINvMB1W_B1T_10wrap_mut_2jcNCINvNtBb_3map8map_foldcjjNCINvMs0_NtNtCs2JiOgHzbbc7_10tokenizers9tokenizer10normalizerNtB3D_16NormalizedString15transform_rangeINtNtB1Y_5range9RangeFromjEINtNtBb_5chain5ChainINtNtNtBd_7sources4once4OnceTciEEINtB39_3MapNtNtNtBf_3str4iter5CharsNCNvB3z_6append0EEE0NCINvXsK_NtB18_5accumjNtB7s_3Sum3sumIB6r_IBS_QINtNtNtCscdodAO9FK5_5alloc3vec9into_iter8IntoItercEEB3u_EE0E0E0E0B3H_.exit.i.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.j = icmp samesign ult i32 %i.f, 2048
  br i1 %i.j, label %_RNCINvNvXs_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters4takeINtB9_4TakepENtNtNtBd_6traits8iterator8Iterator8try_fold5checkcjINtNtNtBf_3ops9try_trait17NeverShortCircuitjENCINvMB1W_B1T_10wrap_mut_2jcNCINvNtBb_3map8map_foldcjjNCINvMs0_NtNtCs2JiOgHzbbc7_10tokenizers9tokenizer10normalizerNtB3D_16NormalizedString15transform_rangeINtNtB1Y_5range9RangeFromjEINtNtBb_5chain5ChainINtNtNtBd_7sources4once4OnceTciEEINtB39_3MapNtNtNtBf_3str4iter5CharsNCNvB3z_6append0EEE0NCINvXsK_NtB18_5accumjNtB7s_3Sum3sumIB6r_IBS_QINtNtNtCscdodAO9FK5_5alloc3vec9into_iter8IntoItercEEB3u_EE0E0E0E0B3H_.exit.i.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.k = icmp samesign ult i32 %i.f, 65536
  %..i.i.i.i.i.i = select i1 %i.k, i64 3, i64 4
  br label %_RNCINvNvXs_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters4takeINtB9_4TakepENtNtNtBd_6traits8iterator8Iterator8try_fold5checkcjINtNtNtBf_3ops9try_trait17NeverShortCircuitjENCINvMB1W_B1T_10wrap_mut_2jcNCINvNtBb_3map8map_foldcjjNCINvMs0_NtNtCs2JiOgHzbbc7_10tokenizers9tokenizer10normalizerNtB3D_16NormalizedString15transform_rangeINtNtB1Y_5range9RangeFromjEINtNtBb_5chain5ChainINtNtNtBd_7sources4once4OnceTciEEINtB39_3MapNtNtNtBf_3str4iter5CharsNCNvB3z_6append0EEE0NCINvXsK_NtB18_5accumjNtB7s_3Sum3sumIB6r_IBS_QINtNtNtCscdodAO9FK5_5alloc3vec9into_iter8IntoItercEEB3u_EE0E0E0E0B3H_.exit.i.i

_RNCINvNvXs_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters4takeINtB9_4TakepENtNtNtBd_6traits8iterator8Iterator8try_fold5checkcjINtNtNtBf_3ops9try_trait17NeverShortCircuitjENCINvMB1W_B1T_10wrap_mut_2jcNCINvNtBb_3map8map_foldcjjNCINvMs0_NtNtCs2JiOgHzbbc7_10tokenizers9tokenizer10normalizerNtB3D_16NormalizedString15transform_rangeINtNtB1Y_5range9RangeFromjEINtNtBb_5chain5ChainINtNtNtBd_7sources4once4OnceTciEEINtB39_3MapNtNtNtBf_3str4iter5CharsNCNvB3z_6append0EEE0NCINvXsK_NtB18_5accumjNtB7s_3Sum3sumIB6r_IBS_QINtNtNtCscdodAO9FK5_5alloc3vec9into_iter8IntoItercEEB3u_EE0E0E0E0B3H_.exit.i.i: ; preds = %bb.e, %bb.d, %bb.c
  %.sroa.0.0.i.i.i.i.i.i = phi i64 [ 2, %bb.d ], [ %..i.i.i.i.i.i, %bb.e ], [ 1, %bb.c ]
  %i.l = add i64 %.sroa.0.0.i.i.i.i.i.i, %.sroa.0.0.i.i ; 2 uses
  %i.m = icmp eq i64 %i.h, 0
  br i1 %i.m, label %_RINvXs2_NtNtNtCs4NRVxsYgnAr_4core4iter6traits8iteratorQINtNtNtCscdodAO9FK5_5alloc3vec9into_iter8IntoItercENtB6_15IteratorRefSpec13spec_try_foldjNCINvNvXs_NtNtBa_8adapters4takeINtB2s_4TakepENtB6_8Iterator8try_fold5checkcjINtNtNtBc_3ops9try_trait17NeverShortCircuitjENCINvMB3z_B3w_10wrap_mut_2jcNCINvNtB2u_3map8map_foldcjjNCINvMs0_NtNtCs2JiOgHzbbc7_10tokenizers9tokenizer10normalizerNtB5h_16NormalizedString15transform_rangeINtNtB3B_5range9RangeFromjEINtNtB2u_5chain5ChainINtNtNtBa_7sources4once4OnceTciEEINtB4M_3MapNtNtNtBc_3str4iter5CharsNCNvB5d_6append0EEE0NCINvXsK_NtB8_5accumjNtB97_3Sum3sumIB86_IB2O_BQ_EB58_EE0E0E0E0INtNtB3B_12control_flow11ControlFlowB3w_jEEB5l_.exit, label %bb.b

_RINvXs2_NtNtNtCs4NRVxsYgnAr_4core4iter6traits8iteratorQINtNtNtCscdodAO9FK5_5alloc3vec9into_iter8IntoItercENtB6_15IteratorRefSpec13spec_try_foldjNCINvNvXs_NtNtBa_8adapters4takeINtB2s_4TakepENtB6_8Iterator8try_fold5checkcjINtNtNtBc_3ops9try_trait17NeverShortCircuitjENCINvMB3z_B3w_10wrap_mut_2jcNCINvNtB2u_3map8map_foldcjjNCINvMs0_NtNtCs2JiOgHzbbc7_10tokenizers9tokenizer10normalizerNtB5h_16NormalizedString15transform_rangeINtNtB3B_5range9RangeFromjEINtNtB2u_5chain5ChainINtNtNtBa_7sources4once4OnceTciEEINtB4M_3MapNtNtNtBc_3str4iter5CharsNCNvB5d_6append0EEE0NCINvXsK_NtB8_5accumjNtB97_3Sum3sumIB86_IB2O_BQ_EB58_EE0E0E0E0INtNtB3B_12control_flow11ControlFlowB3w_jEEB5l_.exit: ; preds = %bb.b, %_RNCINvNvXs_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters4takeINtB9_4TakepENtNtNtBd_6traits8iterator8Iterator8try_fold5checkcjINtNtNtBf_3ops9try_trait17NeverShortCircuitjENCINvMB1W_B1T_10wrap_mut_2jcNCINvNtBb_3map8map_foldcjjNCINvMs0_NtNtCs2JiOgHzbbc7_10tokenizers9tokenizer10normalizerNtB3D_16NormalizedString15transform_rangeINtNtB1Y_5range9RangeFromjEINtNtBb_5chain5ChainINtNtNtBd_7sources4once4OnceTciEEINtB39_3MapNtNtNtBf_3str4iter5CharsNCNvB3z_6append0EEE0NCINvXsK_NtB18_5accumjNtB7s_3Sum3sumIB6r_IBS_QINtNtNtCscdodAO9FK5_5alloc3vec9into_iter8IntoItercEEB3u_EE0E0E0E0B3H_.exit.i.i
  %.pn9.i.i = phi i64 [ %.sroa.0.0.i.i, %bb.b ], [ %i.l, %_RNCINvNvXs_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters4takeINtB9_4TakepENtNtNtBd_6traits8iterator8Iterator8try_fold5checkcjINtNtNtBf_3ops9try_trait17NeverShortCircuitjENCINvMB1W_B1T_10wrap_mut_2jcNCINvNtBb_3map8map_foldcjjNCINvMs0_NtNtCs2JiOgHzbbc7_10tokenizers9tokenizer10normalizerNtB3D_16NormalizedString15transform_rangeINtNtB1Y_5range9RangeFromjEINtNtBb_5chain5ChainINtNtNtBd_7sources4once4OnceTciEEINtB39_3MapNtNtNtBf_3str4iter5CharsNCNvB3z_6append0EEE0NCINvXsK_NtB18_5accumjNtB7s_3Sum3sumIB6r_IBS_QINtNtNtCscdodAO9FK5_5alloc3vec9into_iter8IntoItercEEB3u_EE0E0E0E0B3H_.exit.i.i ]
  %.sroa.02.0.i.i = phi i64 [ 0, %bb.b ], [ 1, %_RNCINvNvXs_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters4takeINtB9_4TakepENtNtNtBd_6traits8iterator8Iterator8try_fold5checkcjINtNtNtBf_3ops9try_trait17NeverShortCircuitjENCINvMB1W_B1T_10wrap_mut_2jcNCINvNtBb_3map8map_foldcjjNCINvMs0_NtNtCs2JiOgHzbbc7_10tokenizers9tokenizer10normalizerNtB3D_16NormalizedString15transform_rangeINtNtB1Y_5range9RangeFromjEINtNtBb_5chain5ChainINtNtNtBd_7sources4once4OnceTciEEINtB39_3MapNtNtNtBf_3str4iter5CharsNCNvB3z_6append0EEE0NCINvXsK_NtB18_5accumjNtB7s_3Sum3sumIB6r_IBS_QINtNtNtCscdodAO9FK5_5alloc3vec9into_iter8IntoItercEEB3u_EE0E0E0E0B3H_.exit.i.i ]
  %i.n = insertvalue { i64, i64 } poison, i64 %.sroa.02.0.i.i, 0
  %i.o = insertvalue { i64, i64 } %i.n, i64 %.pn9.i.i, 1
  ret { i64, i64 } %i.o
}

; Function Attrs: nofree norecurse nosync nounwind nonlazybind memory(readwrite, target_mem: none) uwtable
define hidden { i64, i64 } @_RINvXs0_NtNtNtCs4NRVxsYgnAr_4core4iter6traits8iteratorQINtNtNtCscdodAO9FK5_5alloc3vec9into_iter8IntoItercENtB6_8Iterator8try_foldjNCINvNvXs_NtNtBa_8adapters4takeINtB2e_4TakepEB1G_8try_fold5checkcjINtNtNtBc_3ops9try_trait17NeverShortCircuitjENCINvMB3b_B38_10wrap_mut_2jcNCINvNtB2g_3map8map_foldcjjNCINvMs0_NtNtCs2JiOgHzbbc7_10tokenizers9tokenizer10normalizerNtB4T_16NormalizedString15transform_rangeNtNtB3d_5range9RangeFullINtB4o_3MapNtNtNtBc_3str4iter5CharsNCNvB4P_6appends_0EE0NCINvXsK_NtB8_5accumjNtB7P_3Sum3sumIB6N_IB2A_BQ_EB4K_EE0E0E0E0INtNtB3d_12control_flow11ControlFlowB38_jEEB4X_(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0, i64 noundef %1, ptr noalias nofree noundef align 8 captures(none) dereferenceable(8) %2) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %.val = load ptr, ptr %0, align 8, !nonnull !6, !align !8, !noundef !6 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !107)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !108)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !109)
  %i.a = getelementptr inbounds nuw i8, ptr %.val, i64 24
  %i.b = load ptr, ptr %i.a, align 8, !alias.scope !108, !noalias !110, !nonnull !6, !noundef !6
  %i.c = getelementptr inbounds nuw i8, ptr %.val, i64 8 ; 2 uses
  %.promoted.i.i = load ptr, ptr %i.c, align 8, !alias.scope !108, !noalias !110
  %.promoted10.i.i = load i64, ptr %2, align 8, !alias.scope !110, !noalias !108
  br label %bb.b

bb.b:                                             ; preds = %_RNCINvNvXs_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters4takeINtB9_4TakepENtNtNtBd_6traits8iterator8Iterator8try_fold5checkcjINtNtNtBf_3ops9try_trait17NeverShortCircuitjENCINvMB1W_B1T_10wrap_mut_2jcNCINvNtBb_3map8map_foldcjjNCINvMs0_NtNtCs2JiOgHzbbc7_10tokenizers9tokenizer10normalizerNtB3D_16NormalizedString15transform_rangeNtNtB1Y_5range9RangeFullINtB39_3MapNtNtNtBf_3str4iter5CharsNCNvB3z_6appends_0EE0NCINvXsK_NtB18_5accumjNtB6z_3Sum3sumIB5x_IBS_QINtNtNtCscdodAO9FK5_5alloc3vec9into_iter8IntoItercEEB3u_EE0E0E0E0B3H_.exit.i.i, %bb.a
  %i.d = phi i64 [ %.promoted10.i.i, %bb.a ], [ %i.h, %_RNCINvNvXs_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters4takeINtB9_4TakepENtNtNtBd_6traits8iterator8Iterator8try_fold5checkcjINtNtNtBf_3ops9try_trait17NeverShortCircuitjENCINvMB1W_B1T_10wrap_mut_2jcNCINvNtBb_3map8map_foldcjjNCINvMs0_NtNtCs2JiOgHzbbc7_10tokenizers9tokenizer10normalizerNtB3D_16NormalizedString15transform_rangeNtNtB1Y_5range9RangeFullINtB39_3MapNtNtNtBf_3str4iter5CharsNCNvB3z_6appends_0EE0NCINvXsK_NtB18_5accumjNtB6z_3Sum3sumIB5x_IBS_QINtNtNtCscdodAO9FK5_5alloc3vec9into_iter8IntoItercEEB3u_EE0E0E0E0B3H_.exit.i.i ]
  %i.e = phi ptr [ %.promoted.i.i, %bb.a ], [ %i.g, %_RNCINvNvXs_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters4takeINtB9_4TakepENtNtNtBd_6traits8iterator8Iterator8try_fold5checkcjINtNtNtBf_3ops9try_trait17NeverShortCircuitjENCINvMB1W_B1T_10wrap_mut_2jcNCINvNtBb_3map8map_foldcjjNCINvMs0_NtNtCs2JiOgHzbbc7_10tokenizers9tokenizer10normalizerNtB3D_16NormalizedString15transform_rangeNtNtB1Y_5range9RangeFullINtB39_3MapNtNtNtBf_3str4iter5CharsNCNvB3z_6appends_0EE0NCINvXsK_NtB18_5accumjNtB6z_3Sum3sumIB5x_IBS_QINtNtNtCscdodAO9FK5_5alloc3vec9into_iter8IntoItercEEB3u_EE0E0E0E0B3H_.exit.i.i ] ; 3 uses
  %.sroa.0.0.i.i = phi i64 [ %1, %bb.a ], [ %i.l, %_RNCINvNvXs_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters4takeINtB9_4TakepENtNtNtBd_6traits8iterator8Iterator8try_fold5checkcjINtNtNtBf_3ops9try_trait17NeverShortCircuitjENCINvMB1W_B1T_10wrap_mut_2jcNCINvNtBb_3map8map_foldcjjNCINvMs0_NtNtCs2JiOgHzbbc7_10tokenizers9tokenizer10normalizerNtB3D_16NormalizedString15transform_rangeNtNtB1Y_5range9RangeFullINtB39_3MapNtNtNtBf_3str4iter5CharsNCNvB3z_6appends_0EE0NCINvXsK_NtB18_5accumjNtB6z_3Sum3sumIB5x_IBS_QINtNtNtCscdodAO9FK5_5alloc3vec9into_iter8IntoItercEEB3u_EE0E0E0E0B3H_.exit.i.i ] ; 2 uses
  %.not.i.i = icmp eq ptr %i.e, %i.b
  br i1 %.not.i.i, label %_RINvXs2_NtNtNtCs4NRVxsYgnAr_4core4iter6traits8iteratorQINtNtNtCscdodAO9FK5_5alloc3vec9into_iter8IntoItercENtB6_15IteratorRefSpec13spec_try_foldjNCINvNvXs_NtNtBa_8adapters4takeINtB2s_4TakepENtB6_8Iterator8try_fold5checkcjINtNtNtBc_3ops9try_trait17NeverShortCircuitjENCINvMB3z_B3w_10wrap_mut_2jcNCINvNtB2u_3map8map_foldcjjNCINvMs0_NtNtCs2JiOgHzbbc7_10tokenizers9tokenizer10normalizerNtB5h_16NormalizedString15transform_rangeNtNtB3B_5range9RangeFullINtB4M_3MapNtNtNtBc_3str4iter5CharsNCNvB5d_6appends_0EE0NCINvXsK_NtB8_5accumjNtB8d_3Sum3sumIB7b_IB2O_BQ_EB58_EE0E0E0E0INtNtB3B_12control_flow11ControlFlowB3w_jEEB5l_.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = load i32, ptr %i.e, align 4, !range !12, !noalias !111, !noundef !6 ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.e, i64 4 ; 2 uses
  store ptr %i.g, ptr %i.c, align 8, !alias.scope !108, !noalias !110
  %i.h = add i64 %i.d, -1                         ; 3 uses
end_hunk_0
begin_hunk_1_@_RNvXse_NtNtCscdodAO9FK5_5alloc3vec9into_iterINtB5_8IntoIterTciEENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs2JiOgHzbbc7_10tokenizers:bb.a
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXse_NtNtCscdodAO9FK5_5alloc3vec9into_iterINtB5_8IntoIterTjINtNtNtCs4NRVxsYgnAr_4core3ops5range5RangejEEENtNtB12_4drop4Drop4dropCs2JiOgHzbbc7_10tokenizers(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(32) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.b = load ptr, ptr %0, align 8, !nonnull !6, !noundef !6
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.d = load i64, ptr %i.c, align 8, !noundef !6
  store i64 %i.d, ptr %i.a, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr %i.b, ptr %i.e, align 8
  call void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecTjINtNtNtCs4NRVxsYgnAr_4core3ops5range5RangejEEENtNtBS_4drop4Drop4dropCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXse_NtNtCscdodAO9FK5_5alloc3vec9into_iterINtB5_8IntoIterTjdEENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs2JiOgHzbbc7_10tokenizers(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(32) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.b = load ptr, ptr %0, align 8, !nonnull !6, !noundef !6
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.d = load i64, ptr %i.c, align 8, !noundef !6
  store i64 %i.d, ptr %i.a, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr %i.b, ptr %i.e, align 8
  call void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecTjdEENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXse_NtNtCscdodAO9FK5_5alloc3vec9into_iterINtB5_8IntoIterTjjEENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs2JiOgHzbbc7_10tokenizers(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(32) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.b = load ptr, ptr %0, align 8, !nonnull !6, !noundef !6
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.d = load i64, ptr %i.c, align 8, !noundef !6
  store i64 %i.d, ptr %i.a, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr %i.b, ptr %i.e, align 8
  call void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecTjjEENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXse_NtNtCscdodAO9FK5_5alloc3vec9into_iterINtB5_8IntoIterTmRScEENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs2JiOgHzbbc7_10tokenizers(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(32) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.b = load ptr, ptr %0, align 8, !nonnull !6, !noundef !6
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.d = load i64, ptr %i.c, align 8, !noundef !6
  store i64 %i.d, ptr %i.a, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr %i.b, ptr %i.e, align 8
  call void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecTmRScEENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXse_NtNtCscdodAO9FK5_5alloc3vec9into_iterINtB5_8IntoIterTmcEENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs2JiOgHzbbc7_10tokenizers(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(32) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.b = load ptr, ptr %0, align 8, !nonnull !6, !noundef !6
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.d = load i64, ptr %i.c, align 8, !noundef !6
  store i64 %i.d, ptr %i.a, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr %i.b, ptr %i.e, align 8
  call void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecTmcEENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXse_NtNtCscdodAO9FK5_5alloc3vec9into_iterINtB5_8IntoItercENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs2JiOgHzbbc7_10tokenizers(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(32) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.b = load ptr, ptr %0, align 8, !nonnull !6, !noundef !6
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.d = load i64, ptr %i.c, align 8, !noundef !6
  store i64 %i.d, ptr %i.a, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr %i.b, ptr %i.e, align 8
  call void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVeccENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXse_NtNtCscdodAO9FK5_5alloc3vec9into_iterINtB5_8IntoIterdENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs2JiOgHzbbc7_10tokenizers(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(32) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.b = load ptr, ptr %0, align 8, !nonnull !6, !noundef !6
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.d = load i64, ptr %i.c, align 8, !noundef !6
  store i64 %i.d, ptr %i.a, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr %i.b, ptr %i.e, align 8
  call void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecdENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXse_NtNtCscdodAO9FK5_5alloc3vec9into_iterINtB5_8IntoIterhENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs2JiOgHzbbc7_10tokenizers(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(32) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.b = load ptr, ptr %0, align 8, !nonnull !6, !noundef !6
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.d = load i64, ptr %i.c, align 8, !noundef !6
  store i64 %i.d, ptr %i.a, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr %i.b, ptr %i.e, align 8
  call void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXse_NtNtCscdodAO9FK5_5alloc3vec9into_iterINtB5_8IntoItermENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs2JiOgHzbbc7_10tokenizers(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(32) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.b = load ptr, ptr %0, align 8, !nonnull !6, !noundef !6
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.d = load i64, ptr %i.c, align 8, !noundef !6
  store i64 %i.d, ptr %i.a, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr %i.b, ptr %i.e, align 8
  call void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecmENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXsq_NtCscdodAO9FK5_5alloc6stringNtB5_6StringNtNtCs4NRVxsYgnAr_4core3fmt7Display3fmt(ptr noalias noundef readonly align 8 captures(none) dereferenceable(24) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #5 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !nonnull !6, !noundef !6
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.d = load i64, ptr %i.c, align 8, !noundef !6
  %i.e = tail call noundef zeroext i1 @_RNvXsi_NtCs4NRVxsYgnAr_4core3fmteNtB5_7Display3fmt(ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.b, i64 noundef %i.d, ptr noalias noundef nonnull align 8 dereferenceable(24) %1)
  ret i1 %i.e
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable
define hidden noundef range(i64 0, 2305843009213693952) i64 @_RNvYINtNtNtCscdodAO9FK5_5alloc3vec9into_iter8IntoIterdENtNtNtNtCs4NRVxsYgnAr_4core4iter8adapters3zip27TrustedRandomAccessNoCoerce4sizeCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef readonly align 8 captures(none) dereferenceable(32) %0) unnamed_addr #3 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val = load ptr, ptr %i.a, align 8, !nonnull !6, !noundef !6
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.val1 = load ptr, ptr %i.b, align 8, !nonnull !6, !noundef !6
  %i.c = ptrtoint ptr %.val1 to i64
  %i.d = ptrtoint ptr %.val to i64
  %i.e = sub nuw i64 %i.c, %i.d
  %i.f = lshr exact i64 %i.e, 3
  ret i64 %i.f
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable
define hidden noundef i64 @_RNvYINtNtNtCscdodAO9FK5_5alloc3vec9into_iter8IntoIterhENtNtNtNtCs4NRVxsYgnAr_4core4iter8adapters3zip27TrustedRandomAccessNoCoerce4sizeCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef readonly align 8 captures(none) dereferenceable(32) %0) unnamed_addr #3 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val = load ptr, ptr %i.a, align 8, !nonnull !6, !noundef !6
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.val1 = load ptr, ptr %i.b, align 8, !nonnull !6, !noundef !6
  %i.c = ptrtoint ptr %.val1 to i64
  %i.d = ptrtoint ptr %.val to i64
  %i.e = sub nuw i64 %i.c, %i.d
  ret i64 %i.e
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable
define hidden noundef range(i64 0, 4611686018427387904) i64 @_RNvYINtNtNtCscdodAO9FK5_5alloc3vec9into_iter8IntoItermENtNtNtNtCs4NRVxsYgnAr_4core4iter8adapters3zip27TrustedRandomAccessNoCoerce4sizeCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef readonly align 8 captures(none) dereferenceable(32) %0) unnamed_addr #3 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val = load ptr, ptr %i.a, align 8, !nonnull !6, !noundef !6
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.val1 = load ptr, ptr %i.b, align 8, !nonnull !6, !noundef !6
  %i.c = ptrtoint ptr %.val1 to i64
  %i.d = ptrtoint ptr %.val to i64
  %i.e = sub nuw i64 %i.c, %i.d
  %i.f = lshr exact i64 %i.e, 2
  ret i64 %i.f
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal { ptr, i64 } @_RNvYNtNtCs5PtHgSLqj5O_10serde_json5error5ErrorNtNtCs4NRVxsYgnAr_4core5error5Error11descriptionCs2JiOgHzbbc7_10tokenizers(ptr noalias readonly align 8 captures(none) %0) unnamed_addr #6 {
bb.a:
  ret { ptr, i64 } { ptr @66, i64 40 }
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal void @_RNvYNtNtCs5PtHgSLqj5O_10serde_json5error5ErrorNtNtCs4NRVxsYgnAr_4core5error5Error7provideCs2JiOgHzbbc7_10tokenizers(ptr noalias readonly align 8 captures(none) %0, ptr nofree nonnull readnone align 8 captures(none) %1, ptr noalias readonly align 8 captures(none) %2) unnamed_addr #6 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define internal void @_RNvYNtNtCs5PtHgSLqj5O_10serde_json5error5ErrorNtNtCs4NRVxsYgnAr_4core5error5Error7type_idCs2JiOgHzbbc7_10tokenizers(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([16 x i8]) align 8 captures(none) dereferenceable(16) initializes((0, 16)) %0, ptr noalias readonly align 8 captures(none) %1) unnamed_addr #7 {
bb.a:
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) @67, i64 16, i1 false)
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal { ptr, i64 } @_RNvYNtNtNtCs2AWtUsOyxgP_3std2io5error5ErrorNtNtCs4NRVxsYgnAr_4core5error5Error11descriptionCs2JiOgHzbbc7_10tokenizers(ptr noalias readonly align 8 captures(none) %0) unnamed_addr #6 {
bb.a:
  ret { ptr, i64 } { ptr @66, i64 40 }
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal void @_RNvYNtNtNtCs2AWtUsOyxgP_3std2io5error5ErrorNtNtCs4NRVxsYgnAr_4core5error5Error7provideCs2JiOgHzbbc7_10tokenizers(ptr noalias readonly align 8 captures(none) %0, ptr nofree nonnull readnone align 8 captures(none) %1, ptr noalias readonly align 8 captures(none) %2) unnamed_addr #6 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define internal void @_RNvYNtNtNtCs2AWtUsOyxgP_3std2io5error5ErrorNtNtCs4NRVxsYgnAr_4core5error5Error7type_idCs2JiOgHzbbc7_10tokenizers(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([16 x i8]) align 8 captures(none) dereferenceable(16) initializes((0, 16)) %0, ptr noalias readonly align 8 captures(none) %1) unnamed_addr #7 {
bb.a:
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) @68, i64 16, i1 false)
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal { ptr, i64 } @_RNvYNtNtNtCs2JiOgHzbbc7_10tokenizers6models3bpe5ErrorNtNtCs4NRVxsYgnAr_4core5error5Error11descriptionB8_(ptr noalias readonly align 8 captures(none) %0) unnamed_addr #6 {
bb.a:
  ret { ptr, i64 } { ptr @66, i64 40 }
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal void @_RNvYNtNtNtCs2JiOgHzbbc7_10tokenizers6models3bpe5ErrorNtNtCs4NRVxsYgnAr_4core5error5Error7provideB8_(ptr noalias readonly align 8 captures(none) %0, ptr nofree nonnull readnone align 8 captures(none) %1, ptr noalias readonly align 8 captures(none) %2) unnamed_addr #6 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define internal void @_RNvYNtNtNtCs2JiOgHzbbc7_10tokenizers6models3bpe5ErrorNtNtCs4NRVxsYgnAr_4core5error5Error7type_idB8_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([16 x i8]) align 8 captures(none) dereferenceable(16) initializes((0, 16)) %0, ptr noalias readonly align 8 captures(none) %1) unnamed_addr #7 {
bb.a:
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) @69, i64 16, i1 false)
  ret void
}

; Function Attrs: nounwind nonlazybind uwtable
declare noundef range(i32 0, 10) i32 @rust_eh_personality(i32 noundef, i32 noundef, i64 noundef, ptr noundef, ptr noundef) unnamed_addr #8

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #9

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #9

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #9

; Function Attrs: nonlazybind uwtable
declare hidden noundef i64 @_RINvYNtNtCsiTTz6JxaXqu_5ahash12random_state11RandomStateNtNtCs4NRVxsYgnAr_4core4hash11BuildHasher8hash_oneRNtNtCscdodAO9FK5_5alloc6string6StringECs2JiOgHzbbc7_10tokenizers(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32), ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #0

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #10

; Function Attrs: nonlazybind uwtable
declare hidden noundef i64 @_RINvYNtNtCsiTTz6JxaXqu_5ahash12random_state11RandomStateNtNtCs4NRVxsYgnAr_4core4hash11BuildHasher8hash_oneReECs2JiOgHzbbc7_10tokenizers(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32), ptr noalias noundef nonnull readonly captures(address, read_provenance), i64 noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs_NtNtCscdodAO9FK5_5alloc3vec21spec_from_iter_nestedINtB6_3VechEINtB4_18SpecFromIterNestedhINtNtNtNtCs4NRVxsYgnAr_4core4iter8adapters3map3MapINtNtNtB1E_5slice4iter4IterhENCNvNtB8_3str13replace_ascii0EE9from_iterCs2JiOgHzbbc7_10tokenizers(ptr dead_on_unwind noalias noundef writable sret([24 x i8]) align 8 captures(none) dereferenceable(24), ptr noalias noundef readonly align 8 captures(address) dead_on_return dereferenceable(32)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare void @_RNvXso_NtCscdodAO9FK5_5alloc6stringRNtB5_6StringNtNtNtCs4NRVxsYgnAr_4core3str7pattern7Pattern13into_searcher(ptr dead_on_unwind noalias noundef writable sret([104 x i8]) align 8 captures(address) dereferenceable(104), ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24), ptr noalias noundef nonnull readonly captures(address, read_provenance), i64 noundef) unnamed_addr #0

; Function Attrs: cold minsize noinline noreturn nounwind nonlazybind optsize uwtable
declare void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() unnamed_addr #11

; Function Attrs: cold minsize noinline noreturn nonlazybind optsize uwtable
declare void @_RNvNtCs4NRVxsYgnAr_4core9panicking18panic_bounds_check(i64 noundef, i64 noundef, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #12

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VecINtNtCs4NRVxsYgnAr_4core6option6OptionmEENtNtNtBJ_3ops4drop4Drop4dropCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtB7_6string6StringENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCs2JiOgHzbbc7_10tokenizers9tokenizer5TokenENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropBI_(ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCs5PtHgSLqj5O_10serde_json5value5ValueENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtNtCs2JiOgHzbbc7_10tokenizers9tokenizer8encoding8EncodingENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropBK_(ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtNtCsboAIIHEtPkY_10serde_core7private7content7ContentENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VecTNtNtNtCsboAIIHEtPkY_10serde_core7private7content7ContentBF_EENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VecTTjjEbEENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VecTjjEENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VeccENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VecjENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VecmENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecINtNtCs4NRVxsYgnAr_4core6option6OptionjEENtNtNtBQ_3ops4drop4Drop4dropCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef align 8 dereferenceable(16)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecINtNtCs4NRVxsYgnAr_4core6option6OptionmEENtNtNtBQ_3ops4drop4Drop4dropCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef align 8 dereferenceable(16)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecINtNtB7_2rc2RcINtNtCs4NRVxsYgnAr_4core4cell7RefCellNtNtNtNtCs2JiOgHzbbc7_10tokenizers6models7unigram7lattice4NodeEEENtNtNtB14_3ops4drop4Drop4dropB1I_(ptr noalias noundef align 8 dereferenceable(16)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecINtNtB7_3vec3VecjEENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef align 8 dereferenceable(16)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecNtNtB7_6string6StringENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef align 8 dereferenceable(16)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecNtNtCs2JiOgHzbbc7_10tokenizers9tokenizer5TokenENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropBP_(ptr noalias noundef align 8 dereferenceable(16)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecNtNtCs5PtHgSLqj5O_10serde_json5value5ValueENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef align 8 dereferenceable(16)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecNtNtNtCs2JiOgHzbbc7_10tokenizers9tokenizer10normalizer16NormalizedStringENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropBR_(ptr noalias noundef align 8 dereferenceable(16)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecNtNtNtCs2JiOgHzbbc7_10tokenizers9tokenizer13pre_tokenizer5SplitENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropBR_(ptr noalias noundef align 8 dereferenceable(16)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecNtNtNtCs2JiOgHzbbc7_10tokenizers9tokenizer16added_vocabulary16AddedTokenWithIdENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropBR_(ptr noalias noundef align 8 dereferenceable(16)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecNtNtNtCs2JiOgHzbbc7_10tokenizers9tokenizer8encoding8EncodingENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropBR_(ptr noalias noundef align 8 dereferenceable(16)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecNtNtNtCsboAIIHEtPkY_10serde_core7private7content7ContentENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef align 8 dereferenceable(16)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecReENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef align 8 dereferenceable(16)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecRmENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef align 8 dereferenceable(16)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecTINtNtCs4NRVxsYgnAr_4core6option6OptionmETjjEEENtNtNtBR_3ops4drop4Drop4dropCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef align 8 dereferenceable(16)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecTNtNtB7_6string6StringBM_EENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef align 8 dereferenceable(16)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecTNtNtB7_6string6StringdEENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef align 8 dereferenceable(16)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecTNtNtNtCsboAIIHEtPkY_10serde_core7private7content7ContentBM_EENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef align 8 dereferenceable(16)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecTRNtNtB7_6string6StringRmEENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef align 8 dereferenceable(16)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecTRNtNtB7_6string6StringRyEENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef align 8 dereferenceable(16)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecTRTmmERmEENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef align 8 dereferenceable(16)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecTRcRjEENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef align 8 dereferenceable(16)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecTRemEENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef align 8 dereferenceable(16)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecTTTmmElEjEENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef align 8 dereferenceable(16)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecTTjjEbEENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef align 8 dereferenceable(16)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecTTmmElEENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef align 8 dereferenceable(16)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecTTmmEmEENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef align 8 dereferenceable(16)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecTciEENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef align 8 dereferenceable(16)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecTjINtNtNtCs4NRVxsYgnAr_4core3ops5range5RangejEEENtNtBS_4drop4Drop4dropCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef align 8 dereferenceable(16)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecTjdEENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef align 8 dereferenceable(16)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecTjjEENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef align 8 dereferenceable(16)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecTmRScEENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef align 8 dereferenceable(16)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecTmcEENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef align 8 dereferenceable(16)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVeccENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef align 8 dereferenceable(16)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecdENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef align 8 dereferenceable(16)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef align 8 dereferenceable(16)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecjENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef align 8 dereferenceable(16)) unnamed_addr #0

end_hunk_1
