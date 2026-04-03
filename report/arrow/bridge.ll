begin_hunk_0
  %5 = alloca %"class.arrow::internal::FnOnce", align 8 ; 6 uses
  %6 = alloca %"class.std::__shared_ptr.192", align 8 ; 6 uses
  %7 = alloca %"class.std::unique_ptr.530", align 8 ; 7 uses
  %8 = alloca %"struct.arrow::Future<std::optional<arrow::internal::Empty>>::WrapResultOnComplete::Callback", align 8 ; 11 uses
  %9 = alloca %"class.arrow::internal::FnOnce", align 8 ; 6 uses
  %10 = alloca %"struct.arrow::Future<std::optional<arrow::internal::Empty>>::WrapResultOnComplete::Callback", align 8 ; 15 uses
  %11 = alloca %"class.std::__shared_ptr.192", align 8 ; 6 uses
end_hunk_0
begin_hunk_1

_ZN5arrow6FutureINS_8internal5EmptyEEC2ERKS3_.exit.i.i: ; preds = %bb.av, %bb.au, %_ZZN5arrow19VisitAsyncGeneratorISt10shared_ptrINS_11RecordBatchEENS_12_GLOBAL__N_113AsyncProducerEEENS_6FutureINS_8internal5EmptyEEESt8functionIFNS6_IT_EEvEET0_EN8LoopBodyC2EOSG_.exit.i.i
  %i.dm = phi ptr [ %i.cy, %_ZZN5arrow19VisitAsyncGeneratorISt10shared_ptrINS_11RecordBatchEENS_12_GLOBAL__N_113AsyncProducerEEENS_6FutureINS_8internal5EmptyEEESt8functionIFNS6_IT_EEvEET0_EN8LoopBodyC2EOSG_.exit.i.i ], [ %i.cy, %bb.au ], [ %.pre7.i.i, %bb.av ] ; 4 uses
  %i.dn = phi ptr [ %i.cw, %_ZZN5arrow19VisitAsyncGeneratorISt10shared_ptrINS_11RecordBatchEENS_12_GLOBAL__N_113AsyncProducerEEENS_6FutureINS_8internal5EmptyEEESt8functionIFNS6_IT_EEvEET0_EN8LoopBodyC2EOSG_.exit.i.i ], [ %i.cw, %bb.au ], [ %.pre.i.i, %bb.av ] ; 3 uses
  %.val.i.i = load ptr, ptr %13, align 8, !tbaa !875, !noalias !926
  call void @llvm.lifetime.start.p0(ptr nonnull %9), !noalias !926
  call void @llvm.lifetime.start.p0(ptr nonnull %10), !noalias !926
  %i.do = getelementptr inbounds nuw i8, ptr %10, i64 24
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %10, i8 0, i64 24, i1 false), !noalias !926
  store ptr %i.dn, ptr %i.do, align 8, !tbaa !910, !noalias !926
  %.not.i.i.not.i.i.i.i.i.i = icmp eq ptr %i.dm, null ; 3 uses
  br i1 %.not.i.i.not.i.i.i.i.i.i, label %_ZZN5arrow4LoopIZNS_19VisitAsyncGeneratorISt10shared_ptrINS_11RecordBatchEENS_12_GLOBAL__N_113AsyncProducerEEENS_6FutureINS_8internal5EmptyEEESt8functionIFNS7_IT_EEvEET0_E8LoopBodySt8optionalIS9_ES9_EENS7_IT1_EESC_EN8CallbackC2EOSM_.exit.i.i.i, label %bb.aw

bb.aw:                                            ; preds = %_ZN5arrow6FutureINS_8internal5EmptyEEC2ERKS3_.exit.i.i
end_hunk_1
begin_hunk_2

_ZZN5arrow4LoopIZNS_19VisitAsyncGeneratorISt10shared_ptrINS_11RecordBatchEENS_12_GLOBAL__N_113AsyncProducerEEENS_6FutureINS_8internal5EmptyEEESt8functionIFNS7_IT_EEvEET0_E8LoopBodySt8optionalIS9_ES9_EENS7_IT1_EESC_EN8CallbackC2EOSM_.exit.i.i.i: ; preds = %bb.aw, %_ZN5arrow6FutureINS_8internal5EmptyEEC2ERKS3_.exit.i.i
  %i.dr = getelementptr inbounds nuw i8, ptr %10, i64 32
  %i.ds = load ptr, ptr %i.da, align 8, !tbaa !912, !noalias !926 ; 3 uses
  store ptr %i.ds, ptr %i.dr, align 8, !tbaa !912, !noalias !926
  %i.dt = getelementptr inbounds nuw i8, ptr %10, i64 40 ; 2 uses
  %i.du = load ptr, ptr %i.db, align 8, !tbaa !918, !noalias !926 ; 2 uses
  store ptr %i.du, ptr %i.dt, align 8, !tbaa !918, !noalias !926
  %i.dv = getelementptr inbounds nuw i8, ptr %10, i64 48
end_hunk_2
begin_hunk_3
  store <4 x ptr> zeroinitializer, ptr %i.db, align 8, !tbaa !235, !noalias !926
  call void @llvm.lifetime.start.p0(ptr nonnull %8), !noalias !926
  %i.eb = invoke noalias noundef nonnull dereferenceable(80) ptr @_Znwm(i64 noundef 80) #36
          to label %.noexc.i.i.i unwind label %bb.az, !noalias !926 ; 10 uses

.noexc.i.i.i:                                     ; preds = %_ZZN5arrow4LoopIZNS_19VisitAsyncGeneratorISt10shared_ptrINS_11RecordBatchEENS_12_GLOBAL__N_113AsyncProducerEEENS_6FutureINS_8internal5EmptyEEESt8functionIFNS7_IT_EEvEET0_E8LoopBodySt8optionalIS9_ES9_EENS7_IT1_EESC_EN8CallbackC2EOSM_.exit.i.i.i
  %i.ec = getelementptr inbounds nuw i8, ptr %8, i64 24
end_hunk_3
begin_hunk_4
  br i1 %.not.i.i.not.i.i.i.i.i.i, label %.critedge, label %_ZN5arrow6FutureISt8optionalINS_8internal5EmptyEEE20WrapResultOnComplete8CallbackIZNS_4LoopIZNS_19VisitAsyncGeneratorISt10shared_ptrINS_11RecordBatchEENS_12_GLOBAL__N_113AsyncProducerEEENS0_IS3_EESt8functionIFNS0_IT_EEvEET0_E8LoopBodyS4_S3_EENS0_IT1_EESH_E8CallbackEC2EOSQ_.exit.i.i.i.i.a

_ZN5arrow6FutureISt8optionalINS_8internal5EmptyEEE20WrapResultOnComplete8CallbackIZNS_4LoopIZNS_19VisitAsyncGeneratorISt10shared_ptrINS_11RecordBatchEENS_12_GLOBAL__N_113AsyncProducerEEENS0_IS3_EESt8functionIFNS0_IT_EEvEET0_E8LoopBodyS4_S3_EENS0_IT1_EESH_E8CallbackEC2EOSQ_.exit.i.i.i.i.a: ; preds = %.noexc.i.i.i
  %i.ed = getelementptr inbounds nuw i8, ptr %10, i64 16
  %i.ee = getelementptr inbounds nuw i8, ptr %8, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %8, ptr noundef nonnull align 8 dereferenceable(72) %10, i64 16, i1 false), !tbaa.struct !547, !noalias !926
  store ptr %i.dm, ptr %i.ee, align 8, !tbaa !543, !noalias !926
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ed, i8 0, i64 16, i1 false), !noalias !926
  br label %.critedge

.critedge:                                        ; preds = %_ZN5arrow6FutureISt8optionalINS_8internal5EmptyEEE20WrapResultOnComplete8CallbackIZNS_4LoopIZNS_19VisitAsyncGeneratorISt10shared_ptrINS_11RecordBatchEENS_12_GLOBAL__N_113AsyncProducerEEENS0_IS3_EESt8functionIFNS0_IT_EEvEET0_E8LoopBodyS4_S3_EENS0_IT1_EESH_E8CallbackEC2EOSQ_.exit.i.i.i.i.a, %.noexc.i.i.i
  %i.ef = getelementptr inbounds nuw i8, ptr %8, i64 32
  store ptr %i.ds, ptr %i.ef, align 8, !tbaa !912, !noalias !926
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.dt, i8 0, i64 32, i1 false), !noalias !926
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN5arrow8internal6FnOnceIFvRKNS_10FutureImplEEE6FnImplINS_6FutureISt8optionalINS0_5EmptyEEE20WrapResultOnComplete8CallbackIZNS_4LoopIZNS_19VisitAsyncGeneratorISt10shared_ptrINS_11RecordBatchEENS_12_GLOBAL__N_113AsyncProducerEEENS8_ISA_EESt8functionIFNS8_IT_EEvEET0_E8LoopBodySB_SA_EENS8_IT1_EESO_E8CallbackEEEE, i64 16), ptr %i.eb, align 8, !tbaa !83, !noalias !926
  %i.eg = getelementptr inbounds nuw i8, ptr %i.eb, i64 8 ; 2 uses
  %i.eh = getelementptr inbounds nuw i8, ptr %i.eb, i64 32
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.eg, i8 0, i64 24, i1 false), !noalias !926
  store ptr %i.dn, ptr %i.eh, align 8, !tbaa !910, !noalias !926
  br i1 %.not.i.i.not.i.i.i.i.i.i, label %bb.ax, label %25

25:                                               ; preds = %.critedge
  %26 = getelementptr inbounds nuw i8, ptr %8, i64 16
  %27 = getelementptr inbounds nuw i8, ptr %i.eb, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.eg, ptr noundef nonnull align 8 dereferenceable(72) %8, i64 16, i1 false), !tbaa.struct !547, !noalias !926
  store ptr %i.dm, ptr %27, align 8, !tbaa !543, !noalias !926
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %26, i8 0, i64 16, i1 false), !noalias !926
  br label %bb.ax

bb.ax:                                            ; preds = %25, %.critedge
  %i.ei = getelementptr inbounds nuw i8, ptr %8, i64 40
  %i.ej = getelementptr inbounds nuw i8, ptr %i.eb, i64 40
  store ptr %i.ds, ptr %i.ej, align 8, !tbaa !912, !noalias !926
end_hunk_4
begin_hunk_5

bb.t:                                             ; preds = %bb.s
  %.not44.i = icmp eq i64 %i.am, 0
  br i1 %.not44.i, label %_ZN5arrow8internal13ParseUnsignedEPKcmPh.exit.a, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.ap = icmp ugt i8 %i.ao, 25
  br i1 %i.ap, label %_ZN5arrow8internal8ParseHexIhEEbPKcmPT_.exit.thread, label %bb.v, !prof !164

bb.v:                                             ; preds = %bb.u
  %5 = load i8, ptr %i.aj, align 1, !tbaa !39
  %6 = add i8 %5, -48                             ; 2 uses
  %i.aq = mul nuw i8 %i.ao, 10                    ; 4 uses
  %i.ar = add i8 %6, %i.aq                        ; 2 uses
  %.not45.i = icmp eq i64 %i.am, 1
  %.not48.i = icmp ult i8 %6, 10
  %or.cond.not.i = and i1 %.not45.i, %.not48.i    ; 2 uses
  %7 = icmp uge i8 %i.ar, %i.aq
  %.46.i = tail call i8 @llvm.umax.i8(i8 %i.ar, i8 %i.aq)
  %.237.i = select i1 %or.cond.not.i, i8 %.46.i, i8 %i.aq, !prof !2460
  %cond2.i = select i1 %or.cond.not.i, i1 %7, i1 false, !prof !2460
  br i1 %cond2.i, label %_ZN5arrow8internal13ParseUnsignedEPKcmPh.exit.a, label %_ZN5arrow8internal8ParseHexIhEEbPKcmPT_.exit.thread, !prof !2295

_ZN5arrow8internal13ParseUnsignedEPKcmPh.exit.a:  ; preds = %bb.v, %bb.t, %bb.r
  %.133 = phi i8 [ %i.ah, %bb.r ], [ %i.ao, %bb.t ], [ %.237.i, %bb.v ] ; 4 uses
  br i1 %i.ab, label %bb.w, label %bb.x

_ZN5arrow8internal13ParseUnsignedEPKcmPh.exit.thread38: ; preds = %bb.q
end_hunk_5
begin_hunk_6
  store i8 %storemerge.sink, ptr %4, align 1, !tbaa !39
  br label %_ZN5arrow8internal8ParseHexIhEEbPKcmPT_.exit.thread

_ZN5arrow8internal8ParseHexIhEEbPKcmPT_.exit.thread: ; preds = %bb.g, %bb.k, %_ZN5arrow8internal8ParseHexIhEEbPKcmPT_.exit.thread.sink.split, %bb.d, %bb.v, %bb.u, %bb.s, %.critedge, %bb.x, %bb.w, %bb.o, %bb.a
  %.022 = phi i1 [ false, %bb.o ], [ false, %bb.d ], [ false, %bb.a ], [ false, %bb.v ], [ false, %bb.x ], [ true, %_ZN5arrow8internal8ParseHexIhEEbPKcmPT_.exit.thread.sink.split ], [ false, %bb.w ], [ false, %.critedge ], [ false, %bb.s ], [ false, %bb.u ], [ false, %bb.k ], [ false, %bb.g ]
  ret i1 %.022
}

end_hunk_6
begin_hunk_7
  %i.b = load ptr, ptr %1, align 8, !tbaa !521    ; 2 uses
  %i.c = load i64, ptr %i.b, align 8, !tbaa !392  ; 2 uses
  %i.d = icmp sgt i64 %i.c, 0
  br i1 %i.d, label %_ZN5arrow6StatusD2Ev.exit, label %.critedge15

_ZN5arrow6StatusD2Ev.exit:                        ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 16
end_hunk_7
begin_hunk_8
  store ptr %i.n, ptr %0, align 8, !tbaa !77
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #33
  %i.o = icmp eq ptr %i.n, null
  br i1 %i.o, label %_ZN5arrow6StatusD2Ev.exit19, label %bb.b

_ZN5arrow6StatusD2Ev.exit19:                      ; preds = %_ZN5arrow6StatusD2Ev.exit
  %i.p = load i32, ptr %i.a, align 4, !tbaa !3
  %i.q = sext i32 %i.p to i64
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #33
  br label %.critedge15

bb.b:                                             ; preds = %_ZN5arrow6StatusD2Ev.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #33
  br label %bb.c

.critedge15:                                      ; preds = %_ZN5arrow6StatusD2Ev.exit19, %bb.a
  %.112 = phi i64 [ %i.q, %_ZN5arrow6StatusD2Ev.exit19 ], [ 0, %bb.a ]
  call fastcc void @_ZN5arrow12_GLOBAL__N_113ArrayImporter12ImportBufferEilb(ptr dead_on_unwind noalias writable align 8 %0, ptr noundef nonnull align 8 dereferenceable(113) %1, i32 noundef 2, i64 noundef %.112, i1 noundef zeroext false)
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %.critedge15
  ret void
}

end_hunk_8
begin_hunk_9
; Function Attrs: mustprogress uwtable
define internal fastcc void @_ZN5arrow12_GLOBAL__N_113ArrayImporter24ImportStringValuesBufferIlEENS_6StatusEiil(ptr dead_on_unwind noalias nonnull writable align 8 %0, ptr noundef nonnull readonly align 8 captures(none) dereferenceable(113) %1) unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 4 uses
  %2 = alloca %"class.arrow::Status", align 8     ; 4 uses
  %i.b = load ptr, ptr %1, align 8, !tbaa !521    ; 2 uses
  %i.c = load i64, ptr %i.b, align 8, !tbaa !392  ; 2 uses
end_hunk_9
begin_hunk_10
  store ptr %i.n, ptr %0, align 8, !tbaa !77
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #33
  %i.o = icmp eq ptr %i.n, null
  %3 = load i64, ptr %i.a, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #33
  br i1 %i.o, label %bb.b, label %bb.c

bb.b:                                             ; preds = %_ZN5arrow6StatusD2Ev.exit, %bb.a
  %.112 = phi i64 [ %3, %_ZN5arrow6StatusD2Ev.exit ], [ 0, %bb.a ]
  call fastcc void @_ZN5arrow12_GLOBAL__N_113ArrayImporter12ImportBufferEilb(ptr dead_on_unwind noalias writable align 8 %0, ptr noundef nonnull align 8 dereferenceable(113) %1, i32 noundef 2, i64 noundef %.112, i1 noundef zeroext false)
  br label %bb.c

bb.c:                                             ; preds = %_ZN5arrow6StatusD2Ev.exit, %bb.b
  ret void
}

end_hunk_10
begin_hunk_11
!2457 = distinct !{!2457, !"_ZSt18__allocate_guardedISaISt23_Sp_counted_ptr_inplaceIN5arrow7MapTypeESaIvELN9__gnu_cxx12_Lock_policyE2EEEESt15__allocated_ptrIT_ERS9_"}
!2458 = !{!2454, !2454, i64 0}
!2459 = distinct !{!2459, !127}
!2460 = !{!"branch_weights", i32 4000000, i32 4001}
!2461 = !{!"branch_weights", !"expected", i32 2182155, i32 2145301493}
!2462 = !{!2463}
!2463 = distinct !{!2463, !2464, !"_ZN5arrow8internal12JoinToStringIJRA58_KcEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_: argument 0"}
end_hunk_11
