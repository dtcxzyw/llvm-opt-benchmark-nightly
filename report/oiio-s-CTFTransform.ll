begin_hunk_0
  %18 = load i32, ptr %17, align 8, !tbaa !23     ; [#uses=1 type=i32]
  %19 = load i32, ptr getelementptr inbounds nuw (i8, ptr @_ZN16OpenColorIO_v2_5L28CTF_PROCESS_LIST_VERSION_2_0E, i64 8), align 8, !tbaa !23 ; [#uses=1 type=i32]
  %20 = icmp ult i32 %18, %19                     ; [#uses=1 type=i1]
  %cond.fr = freeze i1 %20                        ; [#uses=1 type=i1]
  br i1 %cond.fr, label %_ZNK16OpenColorIO_v2_510CTFVersionltERKS0_.exit.thread5, label %_ZNK16OpenColorIO_v2_510CTFVersionltERKS0_.exit.thread

_ZNK16OpenColorIO_v2_510CTFVersionltERKS0_.exit.thread5: ; preds = %4, %10, %_ZNK16OpenColorIO_v2_510CTFVersionltERKS0_.exit
  br label %_ZNK16OpenColorIO_v2_510CTFVersionltERKS0_.exit.thread
end_hunk_0
begin_hunk_1
  %28 = getelementptr inbounds nuw i8, ptr %0, i64 32 ; [#uses=1 type=ptr]
  %29 = load i32, ptr %28, align 8, !tbaa !23     ; [#uses=1 type=i32]
  %30 = load i32, ptr getelementptr inbounds nuw (i8, ptr @_ZN16OpenColorIO_v2_5L28CTF_PROCESS_LIST_VERSION_2_0E, i64 8), align 8, !tbaa !23 ; [#uses=1 type=i32]
  %31 = icmp ult i32 %29, %30                     ; [#uses=1 type=i1]
  %cond.fr = freeze i1 %31                        ; [#uses=2 type=i1]
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #28
  %spec.select = select i1 %cond.fr, ptr @_ZN16OpenColorIO_v2_5L16TAG_GAMMA_PARAMSE, ptr @_ZN16OpenColorIO_v2_5L19TAG_EXPONENT_PARAMSE ; [#uses=1 type=ptr]
  br label %32

32:                                               ; preds = %_ZNK16OpenColorIO_v2_510CTFVersionltERKS0_.exit, %_ZNK16OpenColorIO_v2_510CTFVersionltERKS0_.exit.thread140, %_ZNK16OpenColorIO_v2_510CTFVersionltERKS0_.exit.thread
  %.0.i138 = phi i1 [ false, %_ZNK16OpenColorIO_v2_510CTFVersionltERKS0_.exit.thread ], [ %cond.fr, %_ZNK16OpenColorIO_v2_510CTFVersionltERKS0_.exit ], [ true, %_ZNK16OpenColorIO_v2_510CTFVersionltERKS0_.exit.thread140 ] ; [#uses=5 type=i1]
  %33 = phi ptr [ @_ZN16OpenColorIO_v2_5L19TAG_EXPONENT_PARAMSE, %_ZNK16OpenColorIO_v2_510CTFVersionltERKS0_.exit.thread ], [ %spec.select, %_ZNK16OpenColorIO_v2_510CTFVersionltERKS0_.exit ], [ @_ZN16OpenColorIO_v2_5L16TAG_GAMMA_PARAMSE, %_ZNK16OpenColorIO_v2_510CTFVersionltERKS0_.exit.thread140 ] ; [#uses=3 type=ptr]
  %34 = getelementptr inbounds nuw i8, ptr %3, i64 16 ; [#uses=7 type=ptr]
  store ptr %34, ptr %3, align 8, !tbaa !24
end_hunk_1
begin_hunk_2

_ZNKSt9type_infoeqERKS_.exit:                     ; preds = %9
  %11 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %7, ptr noundef nonnull dereferenceable(24) @_ZTSSt19_Sp_make_shared_tag) #28 ; [#uses=1 type=i32]
  %.fr = freeze i32 %11                           ; [#uses=1 type=i32]
  %12 = icmp eq i32 %.fr, 0                       ; [#uses=1 type=i1]
  br i1 %12, label %_ZNKSt9type_infoeqERKS_.exit.thread, label %_ZNKSt9type_infoeqERKS_.exit.thread8

_ZNKSt9type_infoeqERKS_.exit.thread:              ; preds = %5, %_ZNKSt9type_infoeqERKS_.exit
end_hunk_2
begin_hunk_3

_ZNKSt9type_infoeqERKS_.exit:                     ; preds = %9
  %11 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %7, ptr noundef nonnull dereferenceable(24) @_ZTSSt19_Sp_make_shared_tag) #28 ; [#uses=1 type=i32]
  %.fr = freeze i32 %11                           ; [#uses=1 type=i32]
  %12 = icmp eq i32 %.fr, 0                       ; [#uses=1 type=i1]
  br i1 %12, label %_ZNKSt9type_infoeqERKS_.exit.thread, label %_ZNKSt9type_infoeqERKS_.exit.thread8

_ZNKSt9type_infoeqERKS_.exit.thread:              ; preds = %5, %_ZNKSt9type_infoeqERKS_.exit
end_hunk_3
