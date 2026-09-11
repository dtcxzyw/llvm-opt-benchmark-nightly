Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/grpc/original/ssl_lib?download=true
inline.NumInlined: 1559
inline.NumDeleted: 734
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0_@_ZN4bssl6VectorINS_10ALPSConfigEE9MaybeGrowEv:bb.a

bb.g:                                             ; preds = %.thread
  %i.k = load i64, ptr %i.a, align 8, !tbaa !246  ; 2 uses
  %i.l = load ptr, ptr %0, align 8, !tbaa !245    ; 2 uses
  %i.m = getelementptr inbounds nuw [32 x i8], ptr %i.l, i64 %i.k
  %i.n = tail call noundef ptr @_ZSt16__do_uninit_copyISt13move_iteratorIPN4bssl10ALPSConfigEES3_ET0_T_S6_S5_(ptr %i.l, ptr %i.m, ptr noundef nonnull %i.j) ; 0 uses
  %i.o = load ptr, ptr %0, align 8, !tbaa !245    ; 2 uses
  %i.p = load i64, ptr %i.a, align 8, !tbaa !246  ; 2 uses
  %.not7.i.i.i.i = icmp eq i64 %i.p, 0
  br i1 %.not7.i.i.i.i, label %_ZN4bssl6VectorINS_10ALPSConfigEE5clearEv.exit, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.g, %_ZSt8_DestroyIN4bssl10ALPSConfigEEvPT_.exit.i.i.i.i
  %.09.i.i.i.i = phi i64 [ %i.y, %_ZSt8_DestroyIN4bssl10ALPSConfigEEvPT_.exit.i.i.i.i ], [ %i.p, %bb.g ]
  %.048.i.i.i.i = phi ptr [ %i.x, %_ZSt8_DestroyIN4bssl10ALPSConfigEEvPT_.exit.i.i.i.i ], [ %i.o, %bb.g ] ; 3 uses
  %i.q = getelementptr inbounds nuw i8, ptr %.048.i.i.i.i, i64 16
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !18
  invoke void @OPENSSL_free(ptr noundef %i.r)
          to label %_ZN4bssl5ArrayIhED2Ev.exit.i.i.i.i.i.i unwind label %bb.h

bb.h:                                             ; preds = %.lr.ph.i.i.i.i
  %i.s = landingpad { ptr, i32 }
          catch ptr null
  %i.t = extractvalue { ptr, i32 } %i.s, 0
  tail call void @__clang_call_terminate(ptr %i.t) #26
  unreachable

_ZN4bssl5ArrayIhED2Ev.exit.i.i.i.i.i.i:           ; preds = %.lr.ph.i.i.i.i
  %i.u = load ptr, ptr %.048.i.i.i.i, align 8, !tbaa !18
  invoke void @OPENSSL_free(ptr noundef %i.u)
          to label %_ZSt8_DestroyIN4bssl10ALPSConfigEEvPT_.exit.i.i.i.i unwind label %bb.i

bb.i:                                             ; preds = %_ZN4bssl5ArrayIhED2Ev.exit.i.i.i.i.i.i
  %i.v = landingpad { ptr, i32 }
          catch ptr null
  %i.w = extractvalue { ptr, i32 } %i.v, 0
  tail call void @__clang_call_terminate(ptr %i.w) #26
  unreachable

_ZSt8_DestroyIN4bssl10ALPSConfigEEvPT_.exit.i.i.i.i: ; preds = %_ZN4bssl5ArrayIhED2Ev.exit.i.i.i.i.i.i
  %i.x = getelementptr inbounds nuw i8, ptr %.048.i.i.i.i, i64 32
  %i.y = add i64 %.09.i.i.i.i, -1                 ; 2 uses
  %.not.i.i.i.i = icmp eq i64 %i.y, 0
  br i1 %.not.i.i.i.i, label %_ZSt9destroy_nIPN4bssl10ALPSConfigEmET_S3_T0_.exit.loopexit.i, label %.lr.ph.i.i.i.i, !llvm.loop !0

_ZSt9destroy_nIPN4bssl10ALPSConfigEmET_S3_T0_.exit.loopexit.i: ; preds = %_ZSt8_DestroyIN4bssl10ALPSConfigEEvPT_.exit.i.i.i.i
  %.pre.i = load ptr, ptr %0, align 8, !tbaa !245
  br label %_ZN4bssl6VectorINS_10ALPSConfigEE5clearEv.exit

_ZN4bssl6VectorINS_10ALPSConfigEE5clearEv.exit:   ; preds = %bb.g, %_ZSt9destroy_nIPN4bssl10ALPSConfigEmET_S3_T0_.exit.loopexit.i
  %i.z = phi ptr [ %.pre.i, %_ZSt9destroy_nIPN4bssl10ALPSConfigEmET_S3_T0_.exit.loopexit.i ], [ %i.o, %bb.g ]
  tail call void @OPENSSL_free(ptr noundef %i.z)
  store ptr %i.j, ptr %0, align 8, !tbaa !245
  store i64 %i.k, ptr %i.a, align 8, !tbaa !246
  store i64 %.0812, ptr %i.c, align 8, !tbaa !514
  br label %bb.j

bb.j:                                             ; preds = %bb.d, %bb.f, %.thread, %_ZN4bssl6VectorINS_10ALPSConfigEE5clearEv.exit, %bb.a
  %.2 = phi i1 [ true, %bb.a ], [ false, %bb.d ], [ false, %bb.f ], [ false, %.thread ], [ true, %_ZN4bssl6VectorINS_10ALPSConfigEE5clearEv.exit ]
  ret i1 %.2
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden noundef ptr @_ZSt16__do_uninit_copyISt13move_iteratorIPN4bssl10ALPSConfigEES3_ET0_T_S6_S5_(ptr %0, ptr %1, ptr noundef %2) local_unnamed_addr #0 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %.not14 = icmp eq ptr %0, %1
  br i1 %.not14, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %bb.c
  %.016 = phi ptr [ %i.m, %bb.c ], [ %2, %bb.a ]  ; 9 uses
  %.sroa.08.015 = phi ptr [ %i.l, %bb.c ], [ %0, %bb.a ] ; 6 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.016, i8 0, i64 16, i1 false)
  invoke void @OPENSSL_free(ptr noundef null)
          to label %.noexc unwind label %bb.d

.noexc:                                           ; preds = %.lr.ph
  %i.a = getelementptr inbounds nuw i8, ptr %.016, i64 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.016, i8 0, i64 16, i1 false)
  %i.b = load ptr, ptr %.sroa.08.015, align 8, !tbaa !18
  store ptr %i.b, ptr %.016, align 8, !tbaa !14
  %i.c = getelementptr inbounds nuw i8, ptr %.sroa.08.015, i64 8
  %i.d = load i64, ptr %i.c, align 8, !tbaa !19
  store i64 %i.d, ptr %i.a, align 8, !tbaa !16
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.08.015, i8 0, i64 16, i1 false)
  %i.e = getelementptr inbounds nuw i8, ptr %.016, i64 16 ; 3 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.e, i8 0, i64 16, i1 false)
  invoke void @OPENSSL_free(ptr noundef null)
          to label %bb.c unwind label %bb.b

bb.b:                                             ; preds = %.noexc
  %i.f = landingpad { ptr, i32 }
          catch ptr null
  tail call void @_ZN4bssl5ArrayIhED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(32) %.016) #25
  br label %.body

bb.c:                                             ; preds = %.noexc
  %i.g = getelementptr inbounds nuw i8, ptr %.016, i64 24
  %i.h = getelementptr inbounds nuw i8, ptr %.sroa.08.015, i64 16 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.e, i8 0, i64 16, i1 false)
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !18
  store ptr %i.i, ptr %i.e, align 8, !tbaa !14
  %i.j = getelementptr inbounds nuw i8, ptr %.sroa.08.015, i64 24
  %i.k = load i64, ptr %i.j, align 8, !tbaa !19
  store i64 %i.k, ptr %i.g, align 8, !tbaa !16
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.h, i8 0, i64 16, i1 false)
  %i.l = getelementptr inbounds nuw i8, ptr %.sroa.08.015, i64 32 ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %.016, i64 32 ; 2 uses
  %.not = icmp eq ptr %i.l, %1
  br i1 %.not, label %._crit_edge, label %.lr.ph, !llvm.loop !515

bb.d:                                             ; preds = %.lr.ph
  %i.n = landingpad { ptr, i32 }
          catch ptr null
  br label %.body

.body:                                            ; preds = %bb.b, %bb.d
  %eh.lpad-body = phi { ptr, i32 } [ %i.n, %bb.d ], [ %i.f, %bb.b ]
  %i.o = extractvalue { ptr, i32 } %eh.lpad-body, 0
  %i.p = tail call ptr @__cxa_begin_catch(ptr %i.o) #25 ; 0 uses
  invoke void @_ZSt8_DestroyIPN4bssl10ALPSConfigEEvT_S3_(ptr noundef %2, ptr noundef nonnull %.016)
          to label %bb.e unwind label %bb.f

bb.e:                                             ; preds = %.body
  invoke void @__cxa_rethrow() #29
          to label %bb.i unwind label %bb.f

._crit_edge:                                      ; preds = %bb.c, %bb.a
  %.0.lcssa = phi ptr [ %2, %bb.a ], [ %i.m, %bb.c ]
  ret ptr %.0.lcssa

bb.f:                                             ; preds = %bb.e, %.body
  %i.q = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %bb.g unwind label %bb.h

bb.g:                                             ; preds = %bb.f
  resume { ptr, i32 } %i.q

bb.h:                                             ; preds = %bb.f
  %i.r = landingpad { ptr, i32 }
          catch ptr null
  %i.s = extractvalue { ptr, i32 } %i.r, 0
  tail call void @__clang_call_terminate(ptr %i.s) #26
  unreachable

bb.i:                                             ; preds = %bb.e
  unreachable
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr hidden void @_ZSt8_DestroyIPN4bssl10ALPSConfigEEvT_S3_(ptr noundef %0, ptr noundef %1) local_unnamed_addr #21 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %.not4.i = icmp eq ptr %0, %1
  br i1 %.not4.i, label %_ZNSt12_Destroy_auxILb0EE9__destroyIPN4bssl10ALPSConfigEEEvT_S5_.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.a, %_ZSt8_DestroyIN4bssl10ALPSConfigEEvPT_.exit.i
  %.05.i = phi ptr [ %i.h, %_ZSt8_DestroyIN4bssl10ALPSConfigEEvPT_.exit.i ], [ %0, %bb.a ] ; 3 uses
  %i.a = getelementptr inbounds nuw i8, ptr %.05.i, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !18
  invoke void @OPENSSL_free(ptr noundef %i.b)
          to label %_ZN4bssl5ArrayIhED2Ev.exit.i.i.i unwind label %bb.b

bb.b:                                             ; preds = %.lr.ph.i
  %i.c = landingpad { ptr, i32 }
          catch ptr null
  %i.d = extractvalue { ptr, i32 } %i.c, 0
  tail call void @__clang_call_terminate(ptr %i.d) #26
  unreachable

_ZN4bssl5ArrayIhED2Ev.exit.i.i.i:                 ; preds = %.lr.ph.i
  %i.e = load ptr, ptr %.05.i, align 8, !tbaa !18
  invoke void @OPENSSL_free(ptr noundef %i.e)
          to label %_ZSt8_DestroyIN4bssl10ALPSConfigEEvPT_.exit.i unwind label %bb.c

bb.c:                                             ; preds = %_ZN4bssl5ArrayIhED2Ev.exit.i.i.i
  %i.f = landingpad { ptr, i32 }
          catch ptr null
  %i.g = extractvalue { ptr, i32 } %i.f, 0
  tail call void @__clang_call_terminate(ptr %i.g) #26
  unreachable

_ZSt8_DestroyIN4bssl10ALPSConfigEEvPT_.exit.i:    ; preds = %_ZN4bssl5ArrayIhED2Ev.exit.i.i.i
  %i.h = getelementptr inbounds nuw i8, ptr %.05.i, i64 32 ; 2 uses
  %.not.i = icmp eq ptr %i.h, %1
  br i1 %.not.i, label %_ZNSt12_Destroy_auxILb0EE9__destroyIPN4bssl10ALPSConfigEEEvT_S5_.exit, label %.lr.ph.i, !llvm.loop !516

_ZNSt12_Destroy_auxILb0EE9__destroyIPN4bssl10ALPSConfigEEEvT_S5_.exit: ; preds = %_ZSt8_DestroyIN4bssl10ALPSConfigEEvPT_.exit.i, %bb.a
  ret void
}

declare void @__cxa_rethrow() local_unnamed_addr

declare void @__cxa_end_catch() local_unnamed_addr

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZN4bssl6VectorINS_18CertCompressionAlgEE9MaybeGrowEv(ptr noundef nonnull align 8 dereferenceable(24) %0) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !385
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.d = load i64, ptr %i.c, align 8, !tbaa !518  ; 5 uses
  %i.e = icmp ult i64 %i.b, %i.d
  br i1 %i.e, label %bb.h, label %bb.b

bb.b:                                             ; preds = %bb.a
  %.not = icmp eq i64 %i.d, 0
  br i1 %.not, label %.thread, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = icmp slt i64 %i.d, 0
  br i1 %i.f, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  tail call void @ERR_put_error(i32 noundef 16, i32 noundef 0, i32 noundef 69, ptr noundef nonnull @.str.37, i32 noundef 317)
  br label %bb.h

bb.e:                                             ; preds = %bb.c
  %i.g = shl nuw nsw i64 %i.d, 1
  %i.h = icmp samesign ugt i64 %i.d, 384307168202282325
  br i1 %i.h, label %bb.f, label %.thread

bb.f:                                             ; preds = %bb.e
  tail call void @ERR_put_error(i32 noundef 16, i32 noundef 0, i32 noundef 69, ptr noundef nonnull @.str.37, i32 noundef 323)
  br label %bb.h

.thread:                                          ; preds = %bb.b, %bb.e
  %.0812 = phi i64 [ %i.g, %bb.e ], [ 16, %bb.b ] ; 2 uses
  %i.i = mul nuw i64 %.0812, 24
  %i.j = tail call ptr @OPENSSL_malloc(i64 noundef %i.i) ; 3 uses
  %.not13 = icmp eq ptr %i.j, null
  br i1 %.not13, label %bb.h, label %bb.g

bb.g:                                             ; preds = %.thread
  %i.k = load i64, ptr %i.a, align 8, !tbaa !385  ; 3 uses
  %i.l = load ptr, ptr %0, align 8, !tbaa !205    ; 3 uses
  %.idx = mul nuw nsw i64 %i.k, 24
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 %.idx
  %.not11.i.i.i.i = icmp eq i64 %i.k, 0
  br i1 %.not11.i.i.i.i, label %_ZSt18uninitialized_moveIPN4bssl18CertCompressionAlgES2_ET0_T_S4_S3_.exit, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.g, %.lr.ph.i.i.i.i
  %.013.i.i.i.i = phi ptr [ %i.o, %.lr.ph.i.i.i.i ], [ %i.j, %bb.g ] ; 2 uses
  %.sroa.08.012.i.i.i.i = phi ptr [ %i.n, %.lr.ph.i.i.i.i ], [ %i.l, %bb.g ] ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.013.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.08.012.i.i.i.i, i64 24, i1 false), !tbaa.struct !519
  %i.n = getelementptr inbounds nuw i8, ptr %.sroa.08.012.i.i.i.i, i64 24 ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i, i64 24
  %.not.i.i.i.i.3 = icmp eq ptr %i.n, %i.m
  br i1 %.not.i.i.i.i.3, label %_ZSt18uninitialized_moveIPN4bssl18CertCompressionAlgES2_ET0_T_S4_S3_.exit.loopexit, label %.lr.ph.i.i.i.i, !llvm.loop !517

_ZSt18uninitialized_moveIPN4bssl18CertCompressionAlgES2_ET0_T_S4_S3_.exit.loopexit: ; preds = %.lr.ph.i.i.i.i
  %.pre = load ptr, ptr %0, align 8, !tbaa !205
  br label %_ZSt18uninitialized_moveIPN4bssl18CertCompressionAlgES2_ET0_T_S4_S3_.exit

_ZSt18uninitialized_moveIPN4bssl18CertCompressionAlgES2_ET0_T_S4_S3_.exit: ; preds = %_ZSt18uninitialized_moveIPN4bssl18CertCompressionAlgES2_ET0_T_S4_S3_.exit.loopexit, %bb.g
  %i.p = phi ptr [ %.pre, %_ZSt18uninitialized_moveIPN4bssl18CertCompressionAlgES2_ET0_T_S4_S3_.exit.loopexit ], [ %i.l, %bb.g ]
  tail call void @OPENSSL_free(ptr noundef %i.p)
  store ptr %i.j, ptr %0, align 8, !tbaa !205
  store i64 %i.k, ptr %i.a, align 8, !tbaa !385
  store i64 %.0812, ptr %i.c, align 8, !tbaa !518
  br label %bb.h

bb.h:                                             ; preds = %bb.d, %bb.f, %.thread, %_ZSt18uninitialized_moveIPN4bssl18CertCompressionAlgES2_ET0_T_S4_S3_.exit, %bb.a
  %.2 = phi i1 [ true, %bb.a ], [ false, %bb.d ], [ false, %bb.f ], [ false, %.thread ], [ true, %_ZSt18uninitialized_moveIPN4bssl18CertCompressionAlgES2_ET0_T_S4_S3_.exit ]
  ret i1 %.2
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #22

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #22

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smax.i64(i64, i64) #22

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i32 @bcmp(ptr captures(none), ptr captures(none), i64) local_unnamed_addr #23

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #24

attributes #0 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "warn-stack-size"="25344" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "warn-stack-size"="25344" }
attributes #4 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "warn-stack-size"="25344" }
attributes #6 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "warn-stack-size"="25344" }
attributes #8 = { mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "warn-stack-size"="25344" }
attributes #9 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "warn-stack-size"="25344" }
attributes #10 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "warn-stack-size"="25344" }
attributes #11 = { inlinehint mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "warn-stack-size"="25344" }
attributes #12 = { noinline noreturn nounwind uwtable "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { cold nofree noreturn }
attributes #14 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "warn-stack-size"="25344" }
attributes #15 = { cold nofree noreturn nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #16 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "warn-stack-size"="25344" }
attributes #17 = { mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "warn-stack-size"="25344" }
attributes #18 = { mustprogress nofree nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "warn-stack-size"="25344" }
attributes #19 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #20 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #21 = { inlinehint mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "warn-stack-size"="25344" }
attributes #22 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #23 = { nocallback nofree nosync nounwind willreturn memory(argmem: read) }
attributes #24 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #25 = { nounwind }
attributes #26 = { noreturn nounwind }
attributes #27 = { nounwind memory(none) }
attributes #28 = { nounwind willreturn memory(read) }
attributes #29 = { noreturn }

!llvm.module.flags = !{!1, !2, !3, !4, !5}
!llvm.ident = !{!6}
!llvm.errno.tbaa = !{!11}

!0 = distinct !{!0, !247}
!1 = !{i32 7, !"Dwarf Version", i32 5}
!2 = !{i32 2, !"Debug Info Version", i32 3}
!3 = !{i32 8, !"PIC Level", i32 2}
!4 = !{i32 7, !"uwtable", i32 2}
!5 = !{i32 7, !"debug-info-assignment-tracking", i1 true}
!6 = !{!"Ubuntu clang version 24.0.0 (++20260802081851+e18c3ea02484-1~exp1~20260802082001.1761)"}
!7 = !{!"Simple C++ TBAA"}
!8 = !{!"omnipotent char", !7, i64 0}
!9 = !{!"int", !8, i64 0}
!10 = !{!"__libc_errno", !9, i64 0}
!11 = !{!10, !9, i64 0}
!12 = !{!"any pointer", !8, i64 0}
!13 = !{!"p1 omnipotent char", !12, i64 0}
!14 = !{!13, !13, i64 0}
!15 = !{!"long", !8, i64 0}
!16 = !{!15, !15, i64 0}
!17 = !{!"_ZTSN4bssl5ArrayIhEE", !13, i64 0, !15, i64 8}
!18 = !{!17, !13, i64 0}
!19 = !{!17, !15, i64 8}
!20 = !{!"p1 _ZTSN4bssl19SSL_PROTOCOL_METHODE", !12, i64 0}
!21 = !{!"p1 _ZTSN4bssl10SSL_CONFIGE", !12, i64 0}
!22 = !{!"_ZTSSt10_Head_baseILm0EPN4bssl10SSL_CONFIGELb0EE", !21, i64 0}
!23 = !{!"_ZTSSt11_Tuple_implILm0EJPN4bssl10SSL_CONFIGENS0_8internal7DeleterEEE", !22, i64 0}
!24 = !{!"_ZTSSt5tupleIJPN4bssl10SSL_CONFIGENS0_8internal7DeleterEEE", !23, i64 0}
!25 = !{!"_ZTSSt15__uniq_ptr_implIN4bssl10SSL_CONFIGENS0_8internal7DeleterEE", !24, i64 0}
!26 = !{!"_ZTSSt15__uniq_ptr_dataIN4bssl10SSL_CONFIGENS0_8internal7DeleterELb1ELb1EE", !25, i64 0}
!27 = !{!"_ZTSSt10unique_ptrIN4bssl10SSL_CONFIGENS0_8internal7DeleterEE", !26, i64 0}
!28 = !{!"short", !8, i64 0}
!29 = !{!"p1 _ZTS6bio_st", !12, i64 0}
!30 = !{!"_ZTSSt10_Head_baseILm0EP6bio_stLb0EE", !29, i64 0}
!31 = !{!"_ZTSSt11_Tuple_implILm0EJP6bio_stN4bssl8internal7DeleterEEE", !30, i64 0}
!32 = !{!"_ZTSSt5tupleIJP6bio_stN4bssl8internal7DeleterEEE", !31, i64 0}
!33 = !{!"_ZTSSt15__uniq_ptr_implI6bio_stN4bssl8internal7DeleterEE", !32, i64 0}
!34 = !{!"_ZTSSt15__uniq_ptr_dataI6bio_stN4bssl8internal7DeleterELb1ELb1EE", !33, i64 0}
!35 = !{!"_ZTSSt10unique_ptrI6bio_stN4bssl8internal7DeleterEE", !34, i64 0}
!36 = !{!"p1 _ZTSN4bssl10SSL3_STATEE", !12, i64 0}
!37 = !{!"p1 _ZTSN4bssl11DTLS1_STATEE", !12, i64 0}
!38 = !{!"p1 _ZTS14ssl_session_st", !12, i64 0}
!39 = !{!"_ZTSSt10_Head_baseILm0EP14ssl_session_stLb0EE", !38, i64 0}
!40 = !{!"_ZTSSt11_Tuple_implILm0EJP14ssl_session_stN4bssl8internal7DeleterEEE", !39, i64 0}
!41 = !{!"_ZTSSt5tupleIJP14ssl_session_stN4bssl8internal7DeleterEEE", !40, i64 0}
!42 = !{!"_ZTSSt15__uniq_ptr_implI14ssl_session_stN4bssl8internal7DeleterEE", !41, i64 0}
!43 = !{!"_ZTSSt15__uniq_ptr_dataI14ssl_session_stN4bssl8internal7DeleterELb1ELb1EE", !42, i64 0}
!44 = !{!"_ZTSSt10unique_ptrI14ssl_session_stN4bssl8internal7DeleterEE", !43, i64 0}
!45 = !{!"p1 _ZTS10ssl_ctx_st", !12, i64 0}
!46 = !{!"_ZTSSt10_Head_baseILm0EP10ssl_ctx_stLb0EE", !45, i64 0}
!47 = !{!"_ZTSSt11_Tuple_implILm0EJP10ssl_ctx_stN4bssl8internal7DeleterEEE", !46, i64 0}
!48 = !{!"_ZTSSt5tupleIJP10ssl_ctx_stN4bssl8internal7DeleterEEE", !47, i64 0}
!49 = !{!"_ZTSSt15__uniq_ptr_implI10ssl_ctx_stN4bssl8internal7DeleterEE", !48, i64 0}
!50 = !{!"_ZTSSt15__uniq_ptr_dataI10ssl_ctx_stN4bssl8internal7DeleterELb1ELb1EE", !49, i64 0}
!51 = !{!"_ZTSSt10unique_ptrI10ssl_ctx_stN4bssl8internal7DeleterEE", !50, i64 0}
!52 = !{!"p1 _ZTS13stack_st_void", !12, i64 0}
!53 = !{!"_ZTS17crypto_ex_data_st", !52, i64 0}
!54 = !{!"_ZTSSt10_Head_baseILm0EPcLb0EE", !13, i64 0}
!55 = !{!"_ZTSSt11_Tuple_implILm0EJPcN4bssl8internal7DeleterEEE", !54, i64 0}
!56 = !{!"_ZTSSt5tupleIJPcN4bssl8internal7DeleterEEE", !55, i64 0}
!57 = !{!"_ZTSSt15__uniq_ptr_implIcN4bssl8internal7DeleterEE", !56, i64 0}
!58 = !{!"_ZTSSt15__uniq_ptr_dataIcN4bssl8internal7DeleterELb1ELb1EE", !57, i64 0}
!59 = !{!"_ZTSSt10unique_ptrIcN4bssl8internal7DeleterEE", !58, i64 0}
!60 = !{!"p1 _ZTS18ssl_quic_method_st", !12, i64 0}
!61 = !{!"_ZTS22ssl_renegotiate_mode_t", !8, i64 0}
!62 = !{!"bool", !8, i64 0}
!63 = !{!"_ZTS6ssl_st", !20, i64 0, !27, i64 8, !28, i64 16, !35, i64 24, !35, i64 32, !12, i64 40, !36, i64 48, !37, i64 56, !12, i64 64, !12, i64 72, !9, i64 80, !44, i64 88, !12, i64 96, !51, i64 104, !51, i64 112, !53, i64 120, !9, i64 128, !9, i64 132, !9, i64 136, !59, i64 144, !60, i64 152, !61, i64 160, !62, i64 164, !62, i64 164, !62, i64 164, !62, i64 164}
!64 = !{!63, !36, i64 48}
!65 = !{!"_ZTSN4bssl9SSLBufferE", !13, i64 0, !28, i64 8, !28, i64 10, !28, i64 12, !8, i64 14}
!66 = !{!"_ZTSN4bssl4SpanIhEE", !13, i64 0, !15, i64 8}
!67 = !{!"_ZTSN4bssl4SpanIKhEE", !13, i64 0, !15, i64 8}
!68 = !{!"_ZTSN4bssl14ssl_shutdown_tE", !8, i64 0}
!69 = !{!"p1 _ZTS17err_save_state_st", !12, i64 0}
!70 = !{!"_ZTSSt10_Head_baseILm0EP17err_save_state_stLb0EE", !69, i64 0}
!71 = !{!"_ZTSSt11_Tuple_implILm0EJP17err_save_state_stN4bssl8internal7DeleterEEE", !70, i64 0}
!72 = !{!"_ZTSSt5tupleIJP17err_save_state_stN4bssl8internal7DeleterEEE", !71, i64 0}
!73 = !{!"_ZTSSt15__uniq_ptr_implI17err_save_state_stN4bssl8internal7DeleterEE", !72, i64 0}
!74 = !{!"_ZTSSt15__uniq_ptr_dataI17err_save_state_stN4bssl8internal7DeleterELb1ELb1EE", !73, i64 0}
!75 = !{!"_ZTSSt10unique_ptrI17err_save_state_stN4bssl8internal7DeleterEE", !74, i64 0}
!76 = !{!"_ZTS22ssl_encryption_level_t", !8, i64 0}
!77 = !{!"_ZTSN4bssl16ssl_ech_status_tE", !8, i64 0}
!78 = !{!"p1 _ZTS10buf_mem_st", !12, i64 0}
!79 = !{!"_ZTSSt10_Head_baseILm0EP10buf_mem_stLb0EE", !78, i64 0}
!80 = !{!"_ZTSSt11_Tuple_implILm0EJP10buf_mem_stN4bssl8internal7DeleterEEE", !79, i64 0}
!81 = !{!"_ZTSSt5tupleIJP10buf_mem_stN4bssl8internal7DeleterEEE", !80, i64 0}
!82 = !{!"_ZTSSt15__uniq_ptr_implI10buf_mem_stN4bssl8internal7DeleterEE", !81, i64 0}
!83 = !{!"_ZTSSt15__uniq_ptr_dataI10buf_mem_stN4bssl8internal7DeleterELb1ELb1EE", !82, i64 0}
!84 = !{!"_ZTSSt10unique_ptrI10buf_mem_stN4bssl8internal7DeleterEE", !83, i64 0}
!85 = !{!"_ZTS23ssl_early_data_reason_t", !8, i64 0}
!86 = !{!"p1 _ZTSN4bssl14SSLAEADContextE", !12, i64 0}
!87 = !{!"_ZTSSt10_Head_baseILm0EPN4bssl14SSLAEADContextELb0EE", !86, i64 0}
!88 = !{!"_ZTSSt11_Tuple_implILm0EJPN4bssl14SSLAEADContextENS0_8internal7DeleterEEE", !87, i64 0}
!89 = !{!"_ZTSSt5tupleIJPN4bssl14SSLAEADContextENS0_8internal7DeleterEEE", !88, i64 0}
!90 = !{!"_ZTSSt15__uniq_ptr_implIN4bssl14SSLAEADContextENS0_8internal7DeleterEE", !89, i64 0}
!91 = !{!"_ZTSSt15__uniq_ptr_dataIN4bssl14SSLAEADContextENS0_8internal7DeleterELb1ELb1EE", !90, i64 0}
!92 = !{!"_ZTSSt10unique_ptrIN4bssl14SSLAEADContextENS0_8internal7DeleterEE", !91, i64 0}
!93 = !{!"p1 _ZTSN4bssl13SSL_HANDSHAKEE", !12, i64 0}
!94 = !{!"_ZTSSt10_Head_baseILm0EPN4bssl13SSL_HANDSHAKEELb0EE", !93, i64 0}
!95 = !{!"_ZTSSt11_Tuple_implILm0EJPN4bssl13SSL_HANDSHAKEENS0_8internal7DeleterEEE", !94, i64 0}
!96 = !{!"_ZTSSt5tupleIJPN4bssl13SSL_HANDSHAKEENS0_8internal7DeleterEEE", !95, i64 0}
!97 = !{!"_ZTSSt15__uniq_ptr_implIN4bssl13SSL_HANDSHAKEENS0_8internal7DeleterEE", !96, i64 0}
!98 = !{!"_ZTSSt15__uniq_ptr_dataIN4bssl13SSL_HANDSHAKEENS0_8internal7DeleterELb1ELb1EE", !97, i64 0}
!99 = !{!"_ZTSSt10unique_ptrIN4bssl13SSL_HANDSHAKEENS0_8internal7DeleterEE", !98, i64 0}
!100 = !{!"_ZTSN4bssl13InplaceVectorIhLm48EEE", !8, i64 0, !8, i64 48}
!101 = !{!"_ZTSN4bssl13InplaceVectorIhLm12EEE", !8, i64 0, !8, i64 12}
!102 = !{!"p1 _ZTS26srtp_protection_profile_st", !12, i64 0}
!103 = !{!"_ZTSN4bssl10SSL3_STATEE", !15, i64 0, !15, i64 8, !8, i64 16, !8, i64 48, !65, i64 80, !65, i64 104, !66, i64 128, !15, i64 144, !67, i64 152, !8, i64 168, !68, i64 172, !68, i64 176, !75, i64 184, !9, i64 192, !9, i64 196, !76, i64 200, !76, i64 204, !28, i64 208, !28, i64 210, !8, i64 212, !8, i64 213, !8, i64 214, !77, i64 216, !62, i64 220, !62, i64 220, !62, i64 220, !62, i64 220, !62, i64 220, !62, i64 220, !62, i64 220, !62, i64 220, !62, i64 221, !62, i64 221, !62, i64 221, !62, i64 221, !62, i64 221, !62, i64 221, !84, i64 224, !84, i64 232, !84, i64 240, !9, i64 248, !9, i64 252, !85, i64 256, !92, i64 264, !92, i64 272, !99, i64 280, !100, i64 288, !100, i64 337, !100, i64 386, !101, i64 435, !101, i64 448, !8, i64 461, !44, i64 464, !17, i64 472, !17, i64 488, !59, i64 504, !8, i64 512, !17, i64 576, !102, i64 592}
!104 = !{!103, !9, i64 196}
!105 = !{!103, !68, i64 172}
!106 = !{!69, !69, i64 0}
!107 = !{!93, !93, i64 0}
!108 = !{!8, !8, i64 0}
!109 = !{!63, !20, i64 0}
!110 = !{!"_ZTSN4bssl19SSL_PROTOCOL_METHODE", !62, i64 0, !12, i64 8, !12, i64 16, !12, i64 24, !12, i64 32, !12, i64 40, !12, i64 48, !12, i64 56, !12, i64 64, !12, i64 72, !12, i64 80, !12, i64 88, !12, i64 96, !12, i64 104, !12, i64 112, !12, i64 120, !12, i64 128, !12, i64 136, !12, i64 144, !12, i64 152, !12, i64 160}
!111 = !{!110, !12, i64 64}
!112 = !{!45, !45, i64 0}
!113 = !{!"_ZTSN4bssl10RefCountedI10ssl_ctx_stEE", !9, i64 0}
!114 = !{!"p1 _ZTSN4bssl15SSL_X509_METHODE", !12, i64 0}
!115 = !{!"p1 _ZTSN4bssl23SSLCipherPreferenceListE", !12, i64 0}
!116 = !{!"_ZTSSt10_Head_baseILm0EPN4bssl23SSLCipherPreferenceListELb0EE", !115, i64 0}
!117 = !{!"_ZTSSt11_Tuple_implILm0EJPN4bssl23SSLCipherPreferenceListENS0_8internal7DeleterEEE", !116, i64 0}
!118 = !{!"_ZTSSt5tupleIJPN4bssl23SSLCipherPreferenceListENS0_8internal7DeleterEEE", !117, i64 0}
!119 = !{!"_ZTSSt15__uniq_ptr_implIN4bssl23SSLCipherPreferenceListENS0_8internal7DeleterEE", !118, i64 0}
!120 = !{!"_ZTSSt15__uniq_ptr_dataIN4bssl23SSLCipherPreferenceListENS0_8internal7DeleterELb1ELb1EE", !119, i64 0}
!121 = !{!"_ZTSSt10unique_ptrIN4bssl23SSLCipherPreferenceListENS0_8internal7DeleterEE", !120, i64 0}
!122 = !{!"p1 _ZTS13x509_store_st", !12, i64 0}
!123 = !{!"p1 _ZTS20lhash_st_SSL_SESSION", !12, i64 0}
!124 = !{!"p1 _ZTS22stack_st_CRYPTO_BUFFER", !12, i64 0}
!125 = !{!"_ZTSSt10_Head_baseILm0EP22stack_st_CRYPTO_BUFFERLb0EE", !124, i64 0}
!126 = !{!"_ZTSSt11_Tuple_implILm0EJP22stack_st_CRYPTO_BUFFERN4bssl8internal7DeleterEEE", !125, i64 0}
!127 = !{!"_ZTSSt5tupleIJP22stack_st_CRYPTO_BUFFERN4bssl8internal7DeleterEEE", !126, i64 0}
!128 = !{!"_ZTSSt15__uniq_ptr_implI22stack_st_CRYPTO_BUFFERN4bssl8internal7DeleterEE", !127, i64 0}
!129 = !{!"_ZTSSt15__uniq_ptr_dataI22stack_st_CRYPTO_BUFFERN4bssl8internal7DeleterELb1ELb1EE", !128, i64 0}
!130 = !{!"_ZTSSt10unique_ptrI22stack_st_CRYPTO_BUFFERN4bssl8internal7DeleterEE", !129, i64 0}
!131 = !{!"p1 _ZTS18stack_st_X509_NAME", !12, i64 0}
!132 = !{!"_ZTSSt22_Optional_payload_baseIN4bssl5ArrayIhEEE", !8, i64 0, !62, i64 16}
!133 = !{!"_ZTSSt17_Optional_payloadIN4bssl5ArrayIhEELb1ELb0ELb0EE", !132, i64 0}
!134 = !{!"_ZTSSt17_Optional_payloadIN4bssl5ArrayIhEELb0ELb0ELb0EE", !133, i64 0}
!135 = !{!"_ZTSSt14_Optional_baseIN4bssl5ArrayIhEELb0ELb0EE", !134, i64 0}
!136 = !{!"_ZTSSt8optionalIN4bssl5ArrayIhEEE", !135, i64 0}
!137 = !{!"p1 _ZTSN4bssl4CERTE", !12, i64 0}
!138 = !{!"_ZTSSt10_Head_baseILm0EPN4bssl4CERTELb0EE", !137, i64 0}
!139 = !{!"_ZTSSt11_Tuple_implILm0EJPN4bssl4CERTENS0_8internal7DeleterEEE", !138, i64 0}
!140 = !{!"_ZTSSt5tupleIJPN4bssl4CERTENS0_8internal7DeleterEEE", !139, i64 0}
!141 = !{!"_ZTSSt15__uniq_ptr_implIN4bssl4CERTENS0_8internal7DeleterEE", !140, i64 0}
!142 = !{!"_ZTSSt15__uniq_ptr_dataIN4bssl4CERTENS0_8internal7DeleterELb1ELb1EE", !141, i64 0}
end_hunk_0
begin_hunk_1_@llvm.experimental.noalias.scope.decl
!317 = !{!"_ZTSSt15__uniq_ptr_dataIN4bssl10spake2plus8VerifierENS0_8internal7DeleterELb1ELb1EE", !316, i64 0}
!318 = !{!"_ZTSSt10unique_ptrIN4bssl10spake2plus8VerifierENS0_8internal7DeleterEE", !317, i64 0}
!319 = !{!"_ZTSN4bssl13SSL_HANDSHAKEE", !225, i64 0, !21, i64 8, !263, i64 16, !9, i64 20, !9, i64 24, !28, i64 28, !28, i64 30, !100, i64 32, !100, i64 81, !100, i64 130, !100, i64 179, !100, i64 228, !100, i64 277, !100, i64 326, !8, i64 376, !9, i64 380, !75, i64 384, !8, i64 392, !269, i64 408, !269, i64 456, !8, i64 504, !17, i64 536, !17, i64 552, !17, i64 568, !17, i64 584, !17, i64 600, !17, i64 616, !17, i64 632, !162, i64 648, !162, i64 664, !162, i64 680, !17, i64 696, !17, i64 712, !28, i64 728, !276, i64 736, !17, i64 1440, !59, i64 1456, !130, i64 1464, !136, i64 1472, !17, i64 1496, !131, i64 1512, !17, i64 1520, !282, i64 1536, !169, i64 1544, !44, i64 1552, !44, i64 1560, !176, i64 1568, !289, i64 1576, !290, i64 1584, !17, i64 1592, !297, i64 1608, !62, i64 1616, !62, i64 1616, !62, i64 1616, !62, i64 1616, !62, i64 1616, !62, i64 1616, !62, i64 1616, !62, i64 1616, !62, i64 1617, !62, i64 1617, !62, i64 1617, !62, i64 1617, !62, i64 1617, !62, i64 1617, !62, i64 1617, !62, i64 1617, !62, i64 1618, !62, i64 1618, !62, i64 1618, !62, i64 1618, !62, i64 1618, !62, i64 1618, !62, i64 1618, !62, i64 1618, !62, i64 1619, !62, i64 1619, !62, i64 1619, !62, i64 1619, !28, i64 1620, !28, i64 1622, !28, i64 1624, !28, i64 1626, !8, i64 1628, !216, i64 1629, !8, i64 1662, !304, i64 1672, !17, i64 1680, !311, i64 1696, !318, i64 1704}
!320 = !{!63, !9, i64 128}
!321 = !{!63, !9, i64 132}
!322 = !{!101, !8, i64 12}
!323 = !{!"branch_weights", !"expected", i32 2000, i32 1}
!324 = !{!63, !37, i64 56}
!325 = !{!"_ZTSN4bssl15QueuedKeyUpdateE", !8, i64 0}
!326 = !{!"p1 _ZTSN4bssl21RecordNumberEncrypterE", !12, i64 0}
!327 = !{!"_ZTSSt10_Head_baseILm0EPN4bssl21RecordNumberEncrypterELb0EE", !326, i64 0}
!328 = !{!"_ZTSSt11_Tuple_implILm0EJPN4bssl21RecordNumberEncrypterENS0_8internal7DeleterEEE", !327, i64 0}
!329 = !{!"_ZTSSt5tupleIJPN4bssl21RecordNumberEncrypterENS0_8internal7DeleterEEE", !328, i64 0}
!330 = !{!"_ZTSSt15__uniq_ptr_implIN4bssl21RecordNumberEncrypterENS0_8internal7DeleterEE", !329, i64 0}
!331 = !{!"_ZTSSt15__uniq_ptr_dataIN4bssl21RecordNumberEncrypterENS0_8internal7DeleterELb1ELb1EE", !330, i64 0}
!332 = !{!"_ZTSSt10unique_ptrIN4bssl21RecordNumberEncrypterENS0_8internal7DeleterEE", !331, i64 0}
!333 = !{!"_ZTSSt12_Base_bitsetILm4EE", !8, i64 0}
!334 = !{!"_ZTSSt6bitsetILm256EE", !333, i64 0}
!335 = !{!"_ZTSN4bssl16DTLSReplayBitmapE", !334, i64 0, !15, i64 32}
!336 = !{!"_ZTSN4bssl13DTLSReadEpochE", !28, i64 0, !92, i64 8, !332, i64 16, !335, i64 24, !100, i64 64}
!337 = !{!"p1 _ZTSN4bssl13DTLSReadEpochE", !12, i64 0}
!338 = !{!"_ZTSSt10_Head_baseILm0EPN4bssl13DTLSReadEpochELb0EE", !337, i64 0}
!339 = !{!"_ZTSSt11_Tuple_implILm0EJPN4bssl13DTLSReadEpochENS0_8internal7DeleterEEE", !338, i64 0}
!340 = !{!"_ZTSSt5tupleIJPN4bssl13DTLSReadEpochENS0_8internal7DeleterEEE", !339, i64 0}
!341 = !{!"_ZTSSt15__uniq_ptr_implIN4bssl13DTLSReadEpochENS0_8internal7DeleterEE", !340, i64 0}
!342 = !{!"_ZTSSt15__uniq_ptr_dataIN4bssl13DTLSReadEpochENS0_8internal7DeleterELb1ELb1EE", !341, i64 0}
!343 = !{!"_ZTSSt10unique_ptrIN4bssl13DTLSReadEpochENS0_8internal7DeleterEE", !342, i64 0}
!344 = !{!"p1 _ZTSN4bssl17DTLSPrevReadEpochE", !12, i64 0}
!345 = !{!"_ZTSSt10_Head_baseILm0EPN4bssl17DTLSPrevReadEpochELb0EE", !344, i64 0}
!346 = !{!"_ZTSSt11_Tuple_implILm0EJPN4bssl17DTLSPrevReadEpochENS0_8internal7DeleterEEE", !345, i64 0}
!347 = !{!"_ZTSSt5tupleIJPN4bssl17DTLSPrevReadEpochENS0_8internal7DeleterEEE", !346, i64 0}
!348 = !{!"_ZTSSt15__uniq_ptr_implIN4bssl17DTLSPrevReadEpochENS0_8internal7DeleterEE", !347, i64 0}
!349 = !{!"_ZTSSt15__uniq_ptr_dataIN4bssl17DTLSPrevReadEpochENS0_8internal7DeleterELb1ELb1EE", !348, i64 0}
!350 = !{!"_ZTSSt10unique_ptrIN4bssl17DTLSPrevReadEpochENS0_8internal7DeleterEE", !349, i64 0}
!351 = !{!"_ZTSN4bssl16DTLSRecordNumberE", !15, i64 0}
!352 = !{!"_ZTSN4bssl14DTLSWriteEpochE", !351, i64 0, !92, i64 8, !332, i64 16, !100, i64 24}
!353 = !{!"_ZTSN4bssl13InplaceVectorISt10unique_ptrINS_14DTLSWriteEpochENS_8internal7DeleterEELm2EEE", !8, i64 0, !8, i64 16}
!354 = !{!"_ZTSN4bssl13InplaceVectorINS_19DTLSOutgoingMessageELm7EEE", !8, i64 0, !8, i64 336}
!355 = !{!"p1 _ZTSN4bssl8MRUQueueINS_14DTLSSentRecordELm32EEE", !12, i64 0}
!356 = !{!"_ZTSSt10_Head_baseILm0EPN4bssl8MRUQueueINS0_14DTLSSentRecordELm32EEELb0EE", !355, i64 0}
!357 = !{!"_ZTSSt11_Tuple_implILm0EJPN4bssl8MRUQueueINS0_14DTLSSentRecordELm32EEENS0_8internal7DeleterEEE", !356, i64 0}
!358 = !{!"_ZTSSt5tupleIJPN4bssl8MRUQueueINS0_14DTLSSentRecordELm32EEENS0_8internal7DeleterEEE", !357, i64 0}
!359 = !{!"_ZTSSt15__uniq_ptr_implIN4bssl8MRUQueueINS0_14DTLSSentRecordELm32EEENS0_8internal7DeleterEE", !358, i64 0}
!360 = !{!"_ZTSSt15__uniq_ptr_dataIN4bssl8MRUQueueINS0_14DTLSSentRecordELm32EEENS0_8internal7DeleterELb1ELb1EE", !359, i64 0}
!361 = !{!"_ZTSSt10unique_ptrIN4bssl8MRUQueueINS0_14DTLSSentRecordELm32EEENS0_8internal7DeleterEE", !360, i64 0}
!362 = !{!"_ZTSN4bssl13InplaceVectorINS_16DTLSRecordNumberELm32EEE", !8, i64 0, !8, i64 256}
!363 = !{!"_ZTSN4bssl8MRUQueueINS_16DTLSRecordNumberELm32EEE", !362, i64 0, !8, i64 264}
!364 = !{!"_ZTSN4bssl15OPENSSL_timevalE", !15, i64 0, !9, i64 8}
!365 = !{!"_ZTSN4bssl9DTLSTimerE", !364, i64 0}
!366 = !{!"_ZTSN4bssl11DTLS1_STATEE", !62, i64 0, !62, i64 0, !62, i64 0, !62, i64 0, !62, i64 0, !62, i64 0, !62, i64 0, !325, i64 0, !28, i64 2, !28, i64 4, !336, i64 8, !343, i64 128, !350, i64 136, !352, i64 144, !353, i64 224, !8, i64 248, !354, i64 304, !361, i64 648, !363, i64 656, !8, i64 928, !9, i64 932, !9, i64 936, !9, i64 940, !365, i64 944, !365, i64 960, !9, i64 976}
!367 = !{!366, !9, i64 936}
!368 = !{!161, !161, i64 0}
!369 = !{!"_ZTSN4bssl10RefCountedI14ssl_session_stEE", !9, i64 0}
!370 = !{!"p1 _ZTS7x509_st", !12, i64 0}
!371 = !{!"p1 _ZTS13stack_st_X509", !12, i64 0}
!372 = !{!"p1 _ZTS16crypto_buffer_st", !12, i64 0}
!373 = !{!"_ZTSSt10_Head_baseILm0EP16crypto_buffer_stLb0EE", !372, i64 0}
!374 = !{!"_ZTSSt11_Tuple_implILm0EJP16crypto_buffer_stN4bssl8internal7DeleterEEE", !373, i64 0}
!375 = !{!"_ZTSSt5tupleIJP16crypto_buffer_stN4bssl8internal7DeleterEEE", !374, i64 0}
!376 = !{!"_ZTSSt15__uniq_ptr_implI16crypto_buffer_stN4bssl8internal7DeleterEE", !375, i64 0}
!377 = !{!"_ZTSSt15__uniq_ptr_dataI16crypto_buffer_stN4bssl8internal7DeleterELb1ELb1EE", !376, i64 0}
!378 = !{!"_ZTSSt10unique_ptrI16crypto_buffer_stN4bssl8internal7DeleterEE", !377, i64 0}
!379 = !{!"_ZTS14ssl_session_st", !369, i64 0, !28, i64 4, !28, i64 6, !28, i64 8, !100, i64 10, !216, i64 59, !216, i64 92, !59, i64 128, !130, i64 136, !114, i64 144, !370, i64 152, !371, i64 160, !371, i64 168, !15, i64 176, !9, i64 184, !9, i64 188, !15, i64 192, !290, i64 200, !53, i64 208, !38, i64 216, !38, i64 224, !17, i64 232, !378, i64 248, !378, i64 256, !8, i64 264, !100, i64 296, !9, i64 348, !9, i64 352, !9, i64 356, !17, i64 360, !17, i64 376, !17, i64 392, !62, i64 408, !62, i64 408, !62, i64 408, !62, i64 408, !62, i64 408, !62, i64 408, !62, i64 408, !62, i64 408, !17, i64 416}
!380 = !{!379, !28, i64 6}
!381 = !{!"p1 _ZTS19stack_st_SSL_CIPHER", !12, i64 0}
!382 = !{!381, !381, i64 0}
!383 = !{!372, !372, i64 0}
!384 = !{!256, !13, i64 0}
!385 = !{!160, !15, i64 8}
!386 = !{!335, !15, i64 32}
!387 = !{!336, !28, i64 0}
!388 = !{!351, !15, i64 0}
!389 = !{!110, !12, i64 48}
!390 = !{!110, !12, i64 56}
!391 = !{i64 4664324}
!392 = !{!"_ZTS7timeval", !15, i64 0, !15, i64 8}
!393 = !{!392, !15, i64 0}
!394 = !{!113, !9, i64 0}
!395 = !{!180, !28, i64 80}
!396 = !{!180, !28, i64 82}
!397 = !{!180, !9, i64 152}
!398 = !{!180, !9, i64 156}
!399 = !{!213, !12, i64 128}
!400 = distinct !{!400, !"_ZN4bssl10MakeUniqueI10ssl_ctx_stJRPK13ssl_method_stEEESt10unique_ptrIT_NS_8internal7DeleterEEDpOT0_"}
!401 = distinct !{!401, !400, !"_ZN4bssl10MakeUniqueI10ssl_ctx_stJRPK13ssl_method_stEEESt10unique_ptrIT_NS_8internal7DeleterEEDpOT0_: argument 0"}
!402 = distinct !{!402, !"_ZN4bssl10MakeUniqueINS_4CERTEJRKPKNS_15SSL_X509_METHODEEEESt10unique_ptrIT_NS_8internal7DeleterEEDpOT0_"}
!403 = distinct !{!403, !402, !"_ZN4bssl10MakeUniqueINS_4CERTEJRKPKNS_15SSL_X509_METHODEEEESt10unique_ptrIT_NS_8internal7DeleterEEDpOT0_: argument 0"}
!404 = !{!401}
!405 = !{!114, !114, i64 0}
!406 = !{!403}
!407 = !{!213, !12, i64 120}
!408 = !{!"_ZTS13ssl_method_st", !28, i64 0, !20, i64 8, !114, i64 16}
!409 = !{!408, !28, i64 0}
!410 = distinct !{!410, !"_ZN4bssl5UpRefEP10ssl_ctx_st"}
!411 = distinct !{!411, !410, !"_ZN4bssl5UpRefEP10ssl_ctx_st: argument 0"}
!412 = distinct !{!412, !"_ZN4bssl5UpRefEP10ssl_ctx_st"}
!413 = distinct !{!413, !412, !"_ZN4bssl5UpRefEP10ssl_ctx_st: argument 0"}
!414 = !{!22, !21, i64 0}
!415 = !{!63, !9, i64 80}
!416 = !{!411}
!417 = !{!413}
!418 = distinct !{!418, !"_ZN4bssl10MakeUniqueI6ssl_stJRP10ssl_ctx_stEEESt10unique_ptrIT_NS_8internal7DeleterEEDpOT0_"}
!419 = distinct !{!419, !418, !"_ZN4bssl10MakeUniqueI6ssl_stJRP10ssl_ctx_stEEESt10unique_ptrIT_NS_8internal7DeleterEEDpOT0_: argument 0"}
!420 = distinct !{!420, !"_ZN4bssl10MakeUniqueINS_10SSL_CONFIGEJP6ssl_stEEESt10unique_ptrIT_NS_8internal7DeleterEEDpOT0_"}
!421 = distinct !{!421, !420, !"_ZN4bssl10MakeUniqueINS_10SSL_CONFIGEJP6ssl_stEEESt10unique_ptrIT_NS_8internal7DeleterEEDpOT0_: argument 0"}
!422 = distinct !{!422, !"_ZN4bssl5UpRefERKSt10unique_ptrI11evp_pkey_stNS_8internal7DeleterEE"}
!423 = distinct !{!423, !422, !"_ZN4bssl5UpRefERKSt10unique_ptrI11evp_pkey_stNS_8internal7DeleterEE: argument 0"}
!424 = distinct !{!424, !"_ZN4bssl5UpRefEP11evp_pkey_st"}
!425 = distinct !{!425, !424, !"_ZN4bssl5UpRefEP11evp_pkey_st: argument 0"}
!426 = !{!419}
!427 = !{!421}
!428 = !{!180, !12, i64 344}
!429 = !{!229, !12, i64 40}
!430 = !{!423}
!431 = !{!425, !423}
!432 = !{!213, !12, i64 88}
!433 = !{!213, !12, i64 96}
!434 = !{!103, !76, i64 204}
!435 = !{!78, !78, i64 0}
!436 = !{!"_ZTS10buf_mem_st", !15, i64 0, !13, i64 8, !15, i64 16}
!437 = !{!436, !15, i64 0}
!438 = !{ptr @_ZN4bssl20ssl_do_info_callbackEPK6ssl_stii}
!439 = distinct !{!439, !247}
!440 = !{!"_ZTSN4bssl10SSLMessageE", !62, i64 0, !8, i64 1, !256, i64 8, !256, i64 24}
!441 = !{!440, !8, i64 1}
!442 = !{!110, !12, i64 136}
!443 = !{!65, !13, i64 0}
!444 = !{!65, !28, i64 8}
!445 = !{ptr @_ZN4bssl17ssl_open_app_dataEP6ssl_stPNS_4SpanIhEEPmPhS3_}
!446 = !{!103, !8, i64 214}
!447 = distinct !{!447, !247}
!448 = !{!110, !12, i64 72}
!449 = !{!319, !263, i64 16}
!450 = !{!103, !85, i64 256}
!451 = !{!180, !177, i64 592}
!452 = distinct !{!452, !"_ZN4bssl10MakeUniqueINS_9TicketKeyEJEEESt10unique_ptrIT_NS_8internal7DeleterEEDpOT0_"}
!453 = distinct !{!453, !452, !"_ZN4bssl10MakeUniqueINS_9TicketKeyEJEEESt10unique_ptrIT_NS_8internal7DeleterEEDpOT0_: argument 0"}
!454 = !{!453}
!455 = !{!"_ZTSN4bssl9TicketKeyE", !8, i64 0, !8, i64 16, !8, i64 32, !15, i64 48}
!456 = !{!455, !15, i64 48}
!457 = !{!180, !12, i64 416}
!458 = distinct !{!458, !247}
!459 = distinct !{!459, !247}
!460 = distinct !{!460, !247}
!461 = !{!"_ZTSSt10_Head_baseILm0EP19stack_st_SSL_CIPHERLb0EE", !381, i64 0}
!462 = !{!"_ZTSSt11_Tuple_implILm0EJP19stack_st_SSL_CIPHERN4bssl8internal7DeleterEEE", !461, i64 0}
!463 = !{!"_ZTSSt5tupleIJP19stack_st_SSL_CIPHERN4bssl8internal7DeleterEEE", !462, i64 0}
!464 = !{!"_ZTSSt15__uniq_ptr_implI19stack_st_SSL_CIPHERN4bssl8internal7DeleterEE", !463, i64 0}
!465 = !{!"_ZTSSt15__uniq_ptr_dataI19stack_st_SSL_CIPHERN4bssl8internal7DeleterELb1ELb1EE", !464, i64 0}
!466 = !{!"_ZTSSt10unique_ptrI19stack_st_SSL_CIPHERN4bssl8internal7DeleterEE", !465, i64 0}
!467 = !{!"p1 bool", !12, i64 0}
!468 = !{!"_ZTSN4bssl23SSLCipherPreferenceListE", !466, i64 0, !467, i64 8}
!469 = !{!468, !467, i64 8}
!470 = !{!"_ZTS13ssl_cipher_st", !13, i64 0, !13, i64 8, !9, i64 16, !9, i64 20, !9, i64 24, !9, i64 28, !9, i64 32, !9, i64 36}
!471 = !{!470, !13, i64 0}
!472 = !{!180, !12, i64 384}
!473 = !{!180, !12, i64 392}
!474 = distinct !{!474, !247}
!475 = !{!180, !12, i64 448}
!476 = !{!180, !12, i64 456}
!477 = !{!180, !12, i64 464}
!478 = !{!180, !12, i64 472}
!479 = !{!180, !12, i64 480}
!480 = !{!180, !12, i64 488}
!481 = !{!"_ZTSN4bssl18CertCompressionAlgE", !12, i64 0, !12, i64 8, !28, i64 16}
!482 = !{!481, !28, i64 16}
!483 = distinct !{!483, !"_ZN4bssl5UpRefEP11evp_pkey_st"}
!484 = distinct !{!484, !483, !"_ZN4bssl5UpRefEP11evp_pkey_st: argument 0"}
!485 = !{!484}
!486 = distinct !{!486, !"_ZN4bssl5UpRefEP11evp_pkey_st"}
!487 = distinct !{!487, !486, !"_ZN4bssl5UpRefEP11evp_pkey_st: argument 0"}
!488 = !{!487}
!489 = !{!379, !290, i64 200}
!490 = !{!229, !12, i64 64}
!491 = !{!180, !12, i64 432}
!492 = !{!229, !12, i64 72}
!493 = !{!180, !12, i64 440}
!494 = !{!180, !12, i64 320}
!495 = !{!180, !12, i64 328}
!496 = !{!180, !12, i64 360}
!497 = !{!180, !12, i64 368}
!498 = !{!180, !62, i64 376}
!499 = !{!86, !86, i64 0}
!500 = !{!103, !15, i64 0}
!501 = !{!354, !8, i64 336}
!502 = !{!"p1 _ZTSN4bssl19DTLSIncomingMessageE", !12, i64 0}
!503 = !{!502, !502, i64 0}
!504 = !{!366, !28, i64 4}
!505 = !{!366, !28, i64 2}
!506 = !{!337, !337, i64 0}
!507 = !{!379, !28, i64 8}
!508 = !{!319, !290, i64 1584}
!509 = !{!103, !9, i64 252}
!510 = !{!39, !38, i64 0}
!511 = !{!180, !178, i64 600}
!512 = !{!180, !12, i64 608}
!513 = !{!180, !12, i64 616}
!514 = !{!228, !15, i64 16}
!515 = distinct !{!515, !247}
!516 = distinct !{!516, !247}
!517 = distinct !{!517, !247}
!518 = !{!160, !15, i64 16}
!519 = !{i64 0, i64 8, !193, i64 8, i64 8, !193, i64 16, i64 2, !233}
end_hunk_1
