Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/cli-wrapper-mpxtable?download=true
inline.NumInlined: 281
inline.NumDeleted: 152
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@_ZN11MPXTableSet9DoExecuteEN4lldb10SBDebuggerEPPcRNS0_21SBCommandReturnObjectE
define linkonce_odr hidden noundef zeroext i1 @_ZN11MPXTableSet9DoExecuteEN4lldb10SBDebuggerEPPcRNS0_21SBCommandReturnObjectE(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr nofree noundef align 8 dereferenceable(16) %1, ptr noundef %2, ptr noundef nonnull align 8 dereferenceable(8) %3) unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = alloca [3 x ptr], align 16               ; 6 uses
  %4 = alloca %"class.lldb::SBTarget", align 8    ; 6 uses
  %i.b = alloca i32, align 4                      ; 4 uses
  %5 = alloca %"class.lldb::SBError", align 8     ; 6 uses
  %i.c = alloca i64, align 8                      ; 4 uses
  %i.d = alloca i64, align 8                      ; 4 uses
  %6 = alloca %"class.lldb::SBDebugger", align 8  ; 3 uses
  %i.e = alloca ptr, align 8                      ; 6 uses
  %.not = icmp eq ptr %2, null
  br i1 %.not, label %bb.p, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #14
  %i.f = load ptr, ptr %2, align 8, !tbaa !14     ; 2 uses
  %.not2022 = icmp eq ptr %i.f, null
  br i1 %.not2022, label %._crit_edge.thread, label %.lr.ph

.lr.ph:                                           ; preds = %bb.b, %.lr.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %.lr.ph ], [ 0, %bb.b ] ; 2 uses
  %i.g = phi ptr [ %i.j, %.lr.ph ], [ %i.f, %bb.b ]
  %.01723 = phi ptr [ %i.i, %.lr.ph ], [ %2, %bb.b ]
  %i.h = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %indvars.iv
  store ptr %i.g, ptr %i.h, align 8, !tbaa !14
  %i.i = getelementptr inbounds nuw i8, ptr %.01723, i64 8 ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !14   ; 2 uses
  %.not20 = icmp eq ptr %i.j, null
  br i1 %.not20, label %._crit_edge, label %.lr.ph, !llvm.loop !45

._crit_edge:                                      ; preds = %.lr.ph
  %i.k = icmp eq i64 %indvars.iv.next, 3
  br i1 %i.k, label %bb.c, label %._crit_edge.thread

._crit_edge.thread:                               ; preds = %bb.b, %._crit_edge
  tail call void @_ZN4lldb21SBCommandReturnObject8SetErrorEPKc(ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull @.str.29) #14
  br label %bb.o

bb.c:                                             ; preds = %._crit_edge
  %i.l = tail call noundef zeroext i1 @_ZNK4lldb10SBDebugger7IsValidEv(ptr noundef nonnull align 8 dereferenceable(16) %1) #14
  br i1 %i.l, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void @_ZN4lldb21SBCommandReturnObject8SetErrorEPKc(ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull @.str.7) #14
  br label %bb.o

bb.e:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #14
  call void @_ZN4lldb8SBTargetC1Ev(ptr noundef nonnull align 8 dereferenceable(16) %4) #14
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #14
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #14
  call void @_ZN4lldb7SBErrorC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %5) #14
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #14
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #14
  call void @_ZN4lldb10SBDebuggerC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(16) %6, ptr noundef nonnull align 8 dereferenceable(16) %1) #14
  %i.m = load ptr, ptr %i.a, align 16, !tbaa !14
  %i.n = call fastcc noundef zeroext i1 @_ZL11GetInitInfoN4lldb10SBDebuggerERNS_8SBTargetERN4llvm6Triple8ArchTypeERmPcS7_RNS_21SBCommandReturnObjectERNS_7SBErrorE(ptr nofree noundef align 8 dereferenceable(16) %6, ptr noundef nonnull align 8 dereferenceable(16) %4, ptr noundef nonnull align 4 dereferenceable(4) %i.b, ptr noundef nonnull align 8 dereferenceable(8) %i.c, ptr noundef %i.m, ptr noundef nonnull align 8 dereferenceable(8) %i.d, ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull align 8 dereferenceable(8) %5)
  call void @_ZN4lldb10SBDebuggerD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %6) #14
  br i1 %i.n, label %bb.f, label %bb.n

bb.f:                                             ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #14
  %i.o = tail call ptr @__errno_location() #18    ; 5 uses
  store i32 0, ptr %i.o, align 4, !tbaa !12
  %i.p = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !14   ; 3 uses
  %i.r = call i64 @__isoc23_strtoul(ptr noundef %i.q, ptr noundef nonnull %i.e, i32 noundef 16) #14
  %i.s = load ptr, ptr %i.e, align 8, !tbaa !14
  %i.t = icmp eq ptr %i.s, %i.q
  br i1 %i.t, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.u = load i32, ptr %i.o, align 4, !tbaa !12
  %i.v = icmp eq i32 %i.u, 34
  br i1 %i.v, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g, %bb.f
  call void @_ZN4lldb21SBCommandReturnObject8SetErrorEPKc(ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull @.str.30) #14
  store i32 0, ptr %i.o, align 4, !tbaa !12
  br label %bb.m

bb.i:                                             ; preds = %bb.g
  %i.w = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.x = load ptr, ptr %i.w, align 16, !tbaa !14
  %i.y = call i64 @__isoc23_strtoul(ptr noundef %i.x, ptr noundef nonnull %i.e, i32 noundef 16) #14
  %i.z = load ptr, ptr %i.e, align 8, !tbaa !14
  %i.aa = icmp eq ptr %i.z, %i.q
  br i1 %i.aa, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ab = load i32, ptr %i.o, align 4, !tbaa !12
  %i.ac = icmp eq i32 %i.ab, 34
  br i1 %i.ac, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j, %bb.i
  call void @_ZN4lldb21SBCommandReturnObject8SetErrorEPKc(ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull @.str.31) #14
  store i32 0, ptr %i.o, align 4, !tbaa !12
  br label %bb.m

bb.l:                                             ; preds = %bb.j
  %i.ad = load i64, ptr %i.c, align 8, !tbaa !16
  %i.ae = load i64, ptr %i.d, align 8, !tbaa !16
  %i.af = load i32, ptr %i.b, align 4, !tbaa !18
  %i.ag = call fastcc noundef zeroext i1 @_ZL10SetBTEntrymmmmRN4lldb8SBTargetEN4llvm6Triple8ArchTypeERNS_21SBCommandReturnObjectERNS_7SBErrorE(i64 noundef %i.ad, i64 noundef %i.ae, i64 noundef %i.r, i64 noundef %i.y, ptr noundef nonnull align 8 dereferenceable(16) %4, i32 noundef %i.af, ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull align 8 dereferenceable(8) %5)
  br label %bb.m

bb.m:                                             ; preds = %bb.k, %bb.l, %bb.h
  %.1 = phi i1 [ false, %bb.h ], [ false, %bb.k ], [ %i.ag, %bb.l ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #14
  br label %bb.n

bb.n:                                             ; preds = %bb.e, %bb.m
  %.2 = phi i1 [ %.1, %bb.m ], [ false, %bb.e ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #14
  call void @_ZN4lldb7SBErrorD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %5) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #14
  call void @_ZN4lldb8SBTargetD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %4) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #14
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.d, %._crit_edge.thread
  %.3 = phi i1 [ false, %._crit_edge.thread ], [ %.2, %bb.n ], [ false, %bb.d ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #14
  br label %bb.q

bb.p:                                             ; preds = %bb.a
  tail call void @_ZN4lldb21SBCommandReturnObject8SetErrorEPKc(ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull @.str.8) #14
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.o
  %.4 = phi i1 [ %.3, %bb.o ], [ false, %bb.p ]
  ret i1 %.4
}

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(none)
declare ptr @__errno_location() local_unnamed_addr #11

; Function Attrs: nounwind
declare i64 @__isoc23_strtoul(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc noundef zeroext i1 @_ZL10SetBTEntrymmmmRN4lldb8SBTargetEN4llvm6Triple8ArchTypeERNS_21SBCommandReturnObjectERNS_7SBErrorE(i64 noundef %0, i64 noundef %1, i64 noundef %2, i64 noundef %3, ptr noundef nonnull align 8 dereferenceable(16) %4, i32 noundef %5, ptr noundef nonnull align 8 dereferenceable(8) %6, ptr noundef nonnull align 8 dereferenceable(8) %7) unnamed_addr #0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 4 uses
  %i.b = alloca i64, align 8                      ; 7 uses
  %8 = alloca %"class.std::vector", align 8       ; 13 uses
  %9 = alloca %"class.lldb::SBProcess", align 8   ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #14
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #14
  %i.c = call fastcc noundef zeroext i1 @_ZL14GetBTEntryAddrmmRN4lldb8SBTargetEN4llvm6Triple8ArchTypeERmS5_RNS_21SBCommandReturnObjectERNS_7SBErrorE(i64 noundef %0, i64 noundef %1, ptr noundef nonnull align 8 dereferenceable(16) %4, i32 noundef %5, ptr noundef nonnull align 8 dereferenceable(8) %i.b, ptr noundef nonnull align 8 dereferenceable(8) %i.a, ptr noundef nonnull align 8 dereferenceable(8) %6, ptr noundef nonnull align 8 dereferenceable(8) %7)
  br i1 %i.c, label %bb.b, label %bb.u

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #14
  %i.d = load i64, ptr %i.b, align 8, !tbaa !16   ; 3 uses
  %i.e = shl i64 %i.d, 1                          ; 5 uses
  %i.f = icmp slt i64 %i.e, 0
  br i1 %i.f, label %bb.c, label %_ZNSt6vectorIhSaIhEE17_S_check_init_lenEmRKS0_.exit.i

bb.c:                                             ; preds = %bb.b
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.23) #17
  unreachable

_ZNSt6vectorIhSaIhEE17_S_check_init_lenEmRKS0_.exit.i: ; preds = %bb.b
  %.not.i.i.i.i = icmp eq i64 %i.e, 0
  br i1 %.not.i.i.i.i, label %_ZNSt12_Vector_baseIhSaIhEEC2EmRKS0_.exit.thread.i, label %bb.d

_ZNSt12_Vector_baseIhSaIhEEC2EmRKS0_.exit.thread.i: ; preds = %_ZNSt6vectorIhSaIhEE17_S_check_init_lenEmRKS0_.exit.i
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %8, i8 0, i64 24, i1 false)
  br label %_ZNSt6vectorIhSaIhEEC2EmRKS0_.exit

bb.d:                                             ; preds = %_ZNSt6vectorIhSaIhEE17_S_check_init_lenEmRKS0_.exit.i
  %i.g = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.e) #15 ; 5 uses
  store ptr %i.g, ptr %8, align 8, !tbaa !21
  %i.h = getelementptr i8, ptr %i.g, i64 %i.e     ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %8, i64 16
  store ptr %i.h, ptr %i.i, align 8, !tbaa !22
  store i8 0, ptr %i.g, align 1, !tbaa !11
  %i.j = getelementptr inbounds nuw i8, ptr %i.g, i64 1
  %i.k = add nsw i64 %i.e, -1
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %i.j, i8 0, i64 %i.k, i1 false)
  br label %_ZNSt6vectorIhSaIhEEC2EmRKS0_.exit

_ZNSt6vectorIhSaIhEEC2EmRKS0_.exit:               ; preds = %_ZNSt12_Vector_baseIhSaIhEEC2EmRKS0_.exit.thread.i, %bb.d
  %i.l = phi ptr [ null, %_ZNSt12_Vector_baseIhSaIhEEC2EmRKS0_.exit.thread.i ], [ %i.g, %bb.d ]
  %.0.i.i.i.i.i = phi ptr [ null, %_ZNSt12_Vector_baseIhSaIhEEC2EmRKS0_.exit.thread.i ], [ %i.h, %bb.d ]
  %i.m = getelementptr inbounds nuw i8, ptr %8, i64 8
  store ptr %.0.i.i.i.i.i, ptr %i.m, align 8, !tbaa !23
  %.not.i = icmp eq i64 %i.d, 0
  br i1 %.not.i, label %_ZL8uIntToU8mm.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %_ZNSt6vectorIhSaIhEEC2EmRKS0_.exit, %_ZNSt6vectorIhSaIhEE9push_backEOh.exit.i
  %.sroa.1049.0 = phi ptr [ %.sroa.1049.1, %_ZNSt6vectorIhSaIhEE9push_backEOh.exit.i ], [ null, %_ZNSt6vectorIhSaIhEEC2EmRKS0_.exit ]
  %.sroa.045.0 = phi ptr [ %.sroa.045.1, %_ZNSt6vectorIhSaIhEE9push_backEOh.exit.i ], [ null, %_ZNSt6vectorIhSaIhEEC2EmRKS0_.exit ] ; 5 uses
  %i.n = phi ptr [ %i.ae, %_ZNSt6vectorIhSaIhEE9push_backEOh.exit.i ], [ null, %_ZNSt6vectorIhSaIhEEC2EmRKS0_.exit ] ; 3 uses
  %i.o = phi ptr [ %.sroa.748.0, %_ZNSt6vectorIhSaIhEE9push_backEOh.exit.i ], [ null, %_ZNSt6vectorIhSaIhEEC2EmRKS0_.exit ] ; 3 uses
  %.07.i = phi i64 [ %i.af, %_ZNSt6vectorIhSaIhEE9push_backEOh.exit.i ], [ 0, %_ZNSt6vectorIhSaIhEEC2EmRKS0_.exit ] ; 2 uses
  %i.p = shl i64 %.07.i, 3
  %i.q = lshr i64 %2, %i.p
  %i.r = trunc i64 %i.q to i8                     ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.o, %i.n
  br i1 %.not.i.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %.lr.ph.i
  store i8 %i.r, ptr %i.o, align 1, !tbaa !11, !noalias !51
  br label %_ZNSt6vectorIhSaIhEE9push_backEOh.exit.i

bb.f:                                             ; preds = %.lr.ph.i
  %i.s = ptrtoint ptr %i.n to i64
  %i.t = ptrtoint ptr %.sroa.045.0 to i64
  %i.u = sub i64 %i.s, %i.t                       ; 8 uses
  %i.v = icmp eq i64 %i.u, 9223372036854775807
  br i1 %i.v, label %bb.g, label %_ZNKSt6vectorIhSaIhEE12_M_check_lenEmPKc.exit.i.i.i.i

bb.g:                                             ; preds = %bb.f
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.32) #17, !noalias !51
  unreachable

_ZNKSt6vectorIhSaIhEE12_M_check_lenEmPKc.exit.i.i.i.i: ; preds = %bb.f
  %.sroa.speculated.i.i.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.u, i64 1)
  %i.w = add i64 %.sroa.speculated.i.i.i.i.i, %i.u ; 2 uses
  %i.x = icmp ult i64 %i.w, %i.u
  %i.y = tail call i64 @llvm.umin.i64(i64 %i.w, i64 9223372036854775807)
  %i.z = select i1 %i.x, i64 9223372036854775807, i64 %i.y ; 3 uses
  %.not.i.i.i.i.i = icmp ne i64 %i.z, 0
  tail call void @llvm.assume(i1 %.not.i.i.i.i.i)
  %i.aa = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.z) #15, !noalias !51 ; 4 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 %i.u ; 2 uses
  store i8 %i.r, ptr %i.ab, align 1, !tbaa !11, !noalias !51
  %i.ac = icmp sgt i64 %i.u, 0
  br i1 %i.ac, label %bb.h, label %_ZNSt6vectorIhSaIhEE11_S_relocateEPhS2_S2_RS0_.exit16.i.i.i.i

bb.h:                                             ; preds = %_ZNKSt6vectorIhSaIhEE12_M_check_lenEmPKc.exit.i.i.i.i
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.aa, ptr align 1 %.sroa.045.0, i64 %i.u, i1 false), !noalias !51
  br label %_ZNSt6vectorIhSaIhEE11_S_relocateEPhS2_S2_RS0_.exit16.i.i.i.i

_ZNSt6vectorIhSaIhEE11_S_relocateEPhS2_S2_RS0_.exit16.i.i.i.i: ; preds = %bb.h, %_ZNKSt6vectorIhSaIhEE12_M_check_lenEmPKc.exit.i.i.i.i
  %.not.i17.i.i.i.i = icmp eq ptr %.sroa.045.0, null
  br i1 %.not.i17.i.i.i.i, label %_ZNSt6vectorIhSaIhEE17_M_realloc_insertIJhEEEvN9__gnu_cxx17__normal_iteratorIPhS1_EEDpOT_.exit.i.i.i, label %bb.i

bb.i:                                             ; preds = %_ZNSt6vectorIhSaIhEE11_S_relocateEPhS2_S2_RS0_.exit16.i.i.i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %.sroa.045.0, i64 noundef %i.u) #16, !noalias !51
  br label %_ZNSt6vectorIhSaIhEE17_M_realloc_insertIJhEEEvN9__gnu_cxx17__normal_iteratorIPhS1_EEDpOT_.exit.i.i.i

_ZNSt6vectorIhSaIhEE17_M_realloc_insertIJhEEEvN9__gnu_cxx17__normal_iteratorIPhS1_EEDpOT_.exit.i.i.i: ; preds = %bb.i, %_ZNSt6vectorIhSaIhEE11_S_relocateEPhS2_S2_RS0_.exit16.i.i.i.i
  %i.ad = getelementptr inbounds nuw i8, ptr %i.aa, i64 %i.z ; 2 uses
  br label %_ZNSt6vectorIhSaIhEE9push_backEOh.exit.i

_ZNSt6vectorIhSaIhEE9push_backEOh.exit.i:         ; preds = %_ZNSt6vectorIhSaIhEE17_M_realloc_insertIJhEEEvN9__gnu_cxx17__normal_iteratorIPhS1_EEDpOT_.exit.i.i.i, %bb.e
  %.sroa.1049.1 = phi ptr [ %i.ad, %_ZNSt6vectorIhSaIhEE17_M_realloc_insertIJhEEEvN9__gnu_cxx17__normal_iteratorIPhS1_EEDpOT_.exit.i.i.i ], [ %.sroa.1049.0, %bb.e ] ; 2 uses
  %.pn = phi ptr [ %i.ab, %_ZNSt6vectorIhSaIhEE17_M_realloc_insertIJhEEEvN9__gnu_cxx17__normal_iteratorIPhS1_EEDpOT_.exit.i.i.i ], [ %i.o, %bb.e ]
  %.sroa.045.1 = phi ptr [ %i.aa, %_ZNSt6vectorIhSaIhEE17_M_realloc_insertIJhEEEvN9__gnu_cxx17__normal_iteratorIPhS1_EEDpOT_.exit.i.i.i ], [ %.sroa.045.0, %bb.e ] ; 2 uses
  %i.ae = phi ptr [ %i.ad, %_ZNSt6vectorIhSaIhEE17_M_realloc_insertIJhEEEvN9__gnu_cxx17__normal_iteratorIPhS1_EEDpOT_.exit.i.i.i ], [ %i.n, %bb.e ]
  %.sroa.748.0 = getelementptr inbounds nuw i8, ptr %.pn, i64 1 ; 2 uses
  %i.af = add nuw i64 %.07.i, 1                   ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.af, %i.d
  br i1 %exitcond.not.i, label %_ZL8uIntToU8mm.exit.loopexit, label %.lr.ph.i, !llvm.loop !48

_ZL8uIntToU8mm.exit.loopexit:                     ; preds = %_ZNSt6vectorIhSaIhEE9push_backEOh.exit.i
  %.pre = load ptr, ptr %8, align 8, !tbaa !14
  %i.ag = ptrtoint ptr %.sroa.1049.1 to i64
  br label %_ZL8uIntToU8mm.exit

_ZL8uIntToU8mm.exit:                              ; preds = %_ZL8uIntToU8mm.exit.loopexit, %_ZNSt6vectorIhSaIhEEC2EmRKS0_.exit
  %i.ah = phi ptr [ %i.l, %_ZNSt6vectorIhSaIhEEC2EmRKS0_.exit ], [ %.pre, %_ZL8uIntToU8mm.exit.loopexit ]
  %.sroa.1049.2 = phi i64 [ 0, %_ZNSt6vectorIhSaIhEEC2EmRKS0_.exit ], [ %i.ag, %_ZL8uIntToU8mm.exit.loopexit ]
  %.sroa.748.1 = phi ptr [ null, %_ZNSt6vectorIhSaIhEEC2EmRKS0_.exit ], [ %.sroa.748.0, %_ZL8uIntToU8mm.exit.loopexit ]
  %.sroa.045.2 = phi ptr [ null, %_ZNSt6vectorIhSaIhEEC2EmRKS0_.exit ], [ %.sroa.045.1, %_ZL8uIntToU8mm.exit.loopexit ] ; 4 uses
  call void @_ZNSt6vectorIhSaIhEE15_M_range_insertIN9__gnu_cxx17__normal_iteratorIPhS1_EEEEvS6_T_S7_St20forward_iterator_tag(ptr noundef nonnull align 8 dereferenceable(24) %8, ptr %i.ah, ptr %.sroa.045.2, ptr %.sroa.748.1)
  %i.ai = xor i64 %3, -1
  %i.aj = load i64, ptr %i.b, align 8, !tbaa !16  ; 2 uses
  %.not.i20 = icmp eq i64 %i.aj, 0
  br i1 %.not.i20, label %_ZL8uIntToU8mm.exit32, label %.lr.ph.i21

.lr.ph.i21:                                       ; preds = %_ZL8uIntToU8mm.exit, %_ZNSt6vectorIhSaIhEE9push_backEOh.exit.i24
  %.sroa.040.0 = phi ptr [ %.sroa.040.1, %_ZNSt6vectorIhSaIhEE9push_backEOh.exit.i24 ], [ null, %_ZL8uIntToU8mm.exit ] ; 5 uses
  %.sroa.10.0 = phi ptr [ %.sroa.10.1, %_ZNSt6vectorIhSaIhEE9push_backEOh.exit.i24 ], [ null, %_ZL8uIntToU8mm.exit ]
  %i.ak = phi ptr [ %i.bb, %_ZNSt6vectorIhSaIhEE9push_backEOh.exit.i24 ], [ null, %_ZL8uIntToU8mm.exit ] ; 3 uses
  %i.al = phi ptr [ %.sroa.7.0, %_ZNSt6vectorIhSaIhEE9push_backEOh.exit.i24 ], [ null, %_ZL8uIntToU8mm.exit ] ; 3 uses
  %.07.i22 = phi i64 [ %i.bc, %_ZNSt6vectorIhSaIhEE9push_backEOh.exit.i24 ], [ 0, %_ZL8uIntToU8mm.exit ] ; 2 uses
  %i.am = shl i64 %.07.i22, 3
  %i.an = lshr i64 %i.ai, %i.am
  %i.ao = trunc i64 %i.an to i8                   ; 2 uses
  %.not.i.i.i23 = icmp eq ptr %i.al, %i.ak
  br i1 %.not.i.i.i23, label %bb.k, label %bb.j

bb.j:                                             ; preds = %.lr.ph.i21
  store i8 %i.ao, ptr %i.al, align 1, !tbaa !11, !noalias !52
  br label %_ZNSt6vectorIhSaIhEE9push_backEOh.exit.i24

bb.k:                                             ; preds = %.lr.ph.i21
  %i.ap = ptrtoint ptr %i.ak to i64
  %i.aq = ptrtoint ptr %.sroa.040.0 to i64
  %i.ar = sub i64 %i.ap, %i.aq                    ; 8 uses
  %i.as = icmp eq i64 %i.ar, 9223372036854775807
  br i1 %i.as, label %bb.l, label %_ZNKSt6vectorIhSaIhEE12_M_check_lenEmPKc.exit.i.i.i.i26

bb.l:                                             ; preds = %bb.k
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.32) #17, !noalias !52
  unreachable

_ZNKSt6vectorIhSaIhEE12_M_check_lenEmPKc.exit.i.i.i.i26: ; preds = %bb.k
  %.sroa.speculated.i.i.i.i.i27 = call i64 @llvm.umax.i64(i64 %i.ar, i64 1)
  %i.at = add i64 %.sroa.speculated.i.i.i.i.i27, %i.ar ; 2 uses
  %i.au = icmp ult i64 %i.at, %i.ar
  %i.av = call i64 @llvm.umin.i64(i64 %i.at, i64 9223372036854775807)
  %i.aw = select i1 %i.au, i64 9223372036854775807, i64 %i.av ; 3 uses
  %.not.i.i.i.i.i28 = icmp ne i64 %i.aw, 0
  call void @llvm.assume(i1 %.not.i.i.i.i.i28)
  %i.ax = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.aw) #15, !noalias !52 ; 4 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 %i.ar ; 2 uses
  store i8 %i.ao, ptr %i.ay, align 1, !tbaa !11, !noalias !52
  %i.az = icmp sgt i64 %i.ar, 0
  br i1 %i.az, label %bb.m, label %_ZNSt6vectorIhSaIhEE11_S_relocateEPhS2_S2_RS0_.exit16.i.i.i.i29

bb.m:                                             ; preds = %_ZNKSt6vectorIhSaIhEE12_M_check_lenEmPKc.exit.i.i.i.i26
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.ax, ptr align 1 %.sroa.040.0, i64 %i.ar, i1 false), !noalias !52
  br label %_ZNSt6vectorIhSaIhEE11_S_relocateEPhS2_S2_RS0_.exit16.i.i.i.i29

_ZNSt6vectorIhSaIhEE11_S_relocateEPhS2_S2_RS0_.exit16.i.i.i.i29: ; preds = %bb.m, %_ZNKSt6vectorIhSaIhEE12_M_check_lenEmPKc.exit.i.i.i.i26
  %.not.i17.i.i.i.i30 = icmp eq ptr %.sroa.040.0, null
  br i1 %.not.i17.i.i.i.i30, label %_ZNSt6vectorIhSaIhEE17_M_realloc_insertIJhEEEvN9__gnu_cxx17__normal_iteratorIPhS1_EEDpOT_.exit.i.i.i31, label %bb.n

bb.n:                                             ; preds = %_ZNSt6vectorIhSaIhEE11_S_relocateEPhS2_S2_RS0_.exit16.i.i.i.i29
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.040.0, i64 noundef %i.ar) #16, !noalias !52
  br label %_ZNSt6vectorIhSaIhEE17_M_realloc_insertIJhEEEvN9__gnu_cxx17__normal_iteratorIPhS1_EEDpOT_.exit.i.i.i31

_ZNSt6vectorIhSaIhEE17_M_realloc_insertIJhEEEvN9__gnu_cxx17__normal_iteratorIPhS1_EEDpOT_.exit.i.i.i31: ; preds = %bb.n, %_ZNSt6vectorIhSaIhEE11_S_relocateEPhS2_S2_RS0_.exit16.i.i.i.i29
  %i.ba = getelementptr inbounds nuw i8, ptr %i.ax, i64 %i.aw ; 2 uses
  br label %_ZNSt6vectorIhSaIhEE9push_backEOh.exit.i24

_ZNSt6vectorIhSaIhEE9push_backEOh.exit.i24:       ; preds = %_ZNSt6vectorIhSaIhEE17_M_realloc_insertIJhEEEvN9__gnu_cxx17__normal_iteratorIPhS1_EEDpOT_.exit.i.i.i31, %bb.j
  %.sroa.040.1 = phi ptr [ %i.ax, %_ZNSt6vectorIhSaIhEE17_M_realloc_insertIJhEEEvN9__gnu_cxx17__normal_iteratorIPhS1_EEDpOT_.exit.i.i.i31 ], [ %.sroa.040.0, %bb.j ] ; 2 uses
  %.pn51 = phi ptr [ %i.ay, %_ZNSt6vectorIhSaIhEE17_M_realloc_insertIJhEEEvN9__gnu_cxx17__normal_iteratorIPhS1_EEDpOT_.exit.i.i.i31 ], [ %i.al, %bb.j ]
  %.sroa.10.1 = phi ptr [ %i.ba, %_ZNSt6vectorIhSaIhEE17_M_realloc_insertIJhEEEvN9__gnu_cxx17__normal_iteratorIPhS1_EEDpOT_.exit.i.i.i31 ], [ %.sroa.10.0, %bb.j ] ; 2 uses
  %i.bb = phi ptr [ %i.ba, %_ZNSt6vectorIhSaIhEE17_M_realloc_insertIJhEEEvN9__gnu_cxx17__normal_iteratorIPhS1_EEDpOT_.exit.i.i.i31 ], [ %i.ak, %bb.j ]
  %.sroa.7.0 = getelementptr inbounds nuw i8, ptr %.pn51, i64 1 ; 2 uses
  %i.bc = add nuw i64 %.07.i22, 1                 ; 2 uses
  %exitcond.not.i25 = icmp eq i64 %i.bc, %i.aj
  br i1 %exitcond.not.i25, label %_ZL8uIntToU8mm.exit32.loopexit, label %.lr.ph.i21, !llvm.loop !48

_ZL8uIntToU8mm.exit32.loopexit:                   ; preds = %_ZNSt6vectorIhSaIhEE9push_backEOh.exit.i24
  %.pre52 = load i64, ptr %i.b, align 8, !tbaa !16
  %i.bd = ptrtoint ptr %.sroa.10.1 to i64
  br label %_ZL8uIntToU8mm.exit32

_ZL8uIntToU8mm.exit32:                            ; preds = %_ZL8uIntToU8mm.exit32.loopexit, %_ZL8uIntToU8mm.exit
  %i.be = phi i64 [ 0, %_ZL8uIntToU8mm.exit ], [ %.pre52, %_ZL8uIntToU8mm.exit32.loopexit ]
  %.sroa.040.2 = phi ptr [ null, %_ZL8uIntToU8mm.exit ], [ %.sroa.040.1, %_ZL8uIntToU8mm.exit32.loopexit ] ; 4 uses
  %.sroa.7.1 = phi ptr [ null, %_ZL8uIntToU8mm.exit ], [ %.sroa.7.0, %_ZL8uIntToU8mm.exit32.loopexit ]
  %.sroa.10.2 = phi i64 [ 0, %_ZL8uIntToU8mm.exit ], [ %i.bd, %_ZL8uIntToU8mm.exit32.loopexit ]
  %i.bf = load ptr, ptr %8, align 8, !tbaa !14
  %i.bg = getelementptr inbounds i8, ptr %i.bf, i64 %i.be
  call void @_ZNSt6vectorIhSaIhEE15_M_range_insertIN9__gnu_cxx17__normal_iteratorIPhS1_EEEEvS6_T_S7_St20forward_iterator_tag(ptr noundef nonnull align 8 dereferenceable(24) %8, ptr %i.bg, ptr %.sroa.040.2, ptr %.sroa.7.1)
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #14
  call void @_ZN4lldb8SBTarget10GetProcessEv(ptr dead_on_unwind nonnull writable sret(%"class.lldb::SBProcess") align 8 %9, ptr noundef nonnull align 8 dereferenceable(16) %4) #14
  %i.bh = load i64, ptr %i.a, align 8, !tbaa !16
  %i.bi = load ptr, ptr %8, align 8, !tbaa !21
  %i.bj = load i64, ptr %i.b, align 8, !tbaa !16
  %i.bk = shl i64 %i.bj, 1                        ; 2 uses
  %i.bl = call noundef i64 @_ZN4lldb9SBProcess11WriteMemoryEmPKvmRNS_7SBErrorE(ptr noundef nonnull align 8 dereferenceable(16) %9, i64 noundef %i.bh, ptr noundef %i.bi, i64 noundef %i.bk, ptr noundef nonnull align 8 dereferenceable(8) %7) #14
  call void @_ZN4lldb9SBProcessD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %9) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #14
  %.not = icmp eq i64 %i.bl, %i.bk
  br i1 %.not, label %bb.o, label %bb.p

bb.o:                                             ; preds = %_ZL8uIntToU8mm.exit32
  %i.bm = call noundef zeroext i1 @_ZNK4lldb7SBError7SuccessEv(ptr noundef nonnull align 8 dereferenceable(8) %7) #14
  br i1 %i.bm, label %bb.q, label %bb.p

bb.p:                                             ; preds = %bb.o, %_ZL8uIntToU8mm.exit32
  call void @_ZN4lldb21SBCommandReturnObject8SetErrorEPKc(ptr noundef nonnull align 8 dereferenceable(8) %6, ptr noundef nonnull @.str.19) #14
  br label %bb.q

bb.q:                                             ; preds = %bb.o, %bb.p
  %.sink = phi i32 [ 6, %bb.p ], [ 2, %bb.o ]
  %.0 = phi i1 [ false, %bb.p ], [ true, %bb.o ]
  call void @_ZN4lldb21SBCommandReturnObject9SetStatusENS_12ReturnStatusE(ptr noundef nonnull align 8 dereferenceable(8) %6, i32 noundef %.sink) #14
  %.not.i.i.i33 = icmp eq ptr %.sroa.040.2, null
  br i1 %.not.i.i.i33, label %_ZNSt6vectorIhSaIhEED2Ev.exit, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.bn = ptrtoint ptr %.sroa.040.2 to i64
  %i.bo = sub i64 %.sroa.10.2, %i.bn
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.040.2, i64 noundef %i.bo) #16
  br label %_ZNSt6vectorIhSaIhEED2Ev.exit

_ZNSt6vectorIhSaIhEED2Ev.exit:                    ; preds = %bb.q, %bb.r
  %.not.i.i.i34 = icmp eq ptr %.sroa.045.2, null
  br i1 %.not.i.i.i34, label %_ZNSt6vectorIhSaIhEED2Ev.exit35, label %bb.s

bb.s:                                             ; preds = %_ZNSt6vectorIhSaIhEED2Ev.exit
  %i.bp = ptrtoint ptr %.sroa.045.2 to i64
  %i.bq = sub i64 %.sroa.1049.2, %i.bp
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.045.2, i64 noundef %i.bq) #16
  br label %_ZNSt6vectorIhSaIhEED2Ev.exit35

_ZNSt6vectorIhSaIhEED2Ev.exit35:                  ; preds = %_ZNSt6vectorIhSaIhEED2Ev.exit, %bb.s
  %i.br = load ptr, ptr %8, align 8, !tbaa !21    ; 3 uses
  %.not.i.i.i36 = icmp eq ptr %i.br, null
  br i1 %.not.i.i.i36, label %_ZNSt6vectorIhSaIhEED2Ev.exit37, label %bb.t

bb.t:                                             ; preds = %_ZNSt6vectorIhSaIhEED2Ev.exit35
  %i.bs = getelementptr inbounds nuw i8, ptr %8, i64 16
  %i.bt = load ptr, ptr %i.bs, align 8, !tbaa !22
  %i.bu = ptrtoint ptr %i.bt to i64
  %i.bv = ptrtoint ptr %i.br to i64
  %i.bw = sub i64 %i.bu, %i.bv
  call void @_ZdlPvm(ptr noundef nonnull %i.br, i64 noundef %i.bw) #16
  br label %_ZNSt6vectorIhSaIhEED2Ev.exit37

_ZNSt6vectorIhSaIhEED2Ev.exit37:                  ; preds = %_ZNSt6vectorIhSaIhEED2Ev.exit35, %bb.t
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #14
  br label %bb.u

bb.u:                                             ; preds = %bb.a, %_ZNSt6vectorIhSaIhEED2Ev.exit37
  %.1 = phi i1 [ %.0, %_ZNSt6vectorIhSaIhEED2Ev.exit37 ], [ false, %bb.a ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #14
  ret i1 %.1
}

declare noundef i64 @_ZN4lldb9SBProcess11WriteMemoryEmPKvmRNS_7SBErrorE(ptr noundef nonnull align 8 dereferenceable(16), i64 noundef, ptr noundef, i64 noundef, ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr writeonly captures(none), ptr readonly captures(none), i64, i1 immarg) #1

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt6vectorIhSaIhEE15_M_range_insertIN9__gnu_cxx17__normal_iteratorIPhS1_EEEEvS6_T_S7_St20forward_iterator_tag(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %1, ptr %2, ptr %3) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %.not60 = icmp eq ptr %2, %3
  br i1 %.not60, label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPhSt6vectorIhSaIhEEEES6_ET0_T_S8_S7_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = ptrtoint ptr %3 to i64                   ; 2 uses
  %i.b = ptrtoint ptr %2 to i64
  %i.c = sub i64 %i.a, %i.b                       ; 16 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !22
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 8 uses
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !23   ; 8 uses
  %i.h = ptrtoint ptr %i.e to i64
  %i.i = ptrtoint ptr %i.g to i64                 ; 4 uses
  %i.j = sub i64 %i.h, %i.i
  %.not = icmp ult i64 %i.j, %i.c
  br i1 %.not, label %bb.w, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.k = ptrtoint ptr %1 to i64                   ; 2 uses
  %i.l = sub i64 %i.i, %i.k                       ; 10 uses
  %i.m = icmp ugt i64 %i.l, %i.c
  br i1 %i.m, label %bb.d, label %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPhSt6vectorIhSaIhEEEElEvRT_T0_St26random_access_iterator_tag.exit

bb.d:                                             ; preds = %bb.c
  %i.n = sub i64 0, %i.c
  %i.o = getelementptr inbounds i8, ptr %i.g, i64 %i.n ; 3 uses
  %i.p = ptrtoint ptr %i.o to i64
  %i.q = icmp sgt i64 %i.c, 1                     ; 2 uses
  br i1 %i.q, label %bb.e, label %bb.f, !prof !53

bb.e:                                             ; preds = %bb.d
  tail call void @llvm.memmove.p0.p0.i64(ptr align 1 %i.g, ptr nonnull align 1 %i.o, i64 %i.c, i1 false)
  br label %_ZSt22__uninitialized_move_aIPhS0_SaIhEET0_T_S3_S2_RT1_.exit

bb.f:                                             ; preds = %bb.d
  %i.r = icmp eq i64 %i.c, 1
  br i1 %i.r, label %bb.g, label %_ZSt22__uninitialized_move_aIPhS0_SaIhEET0_T_S3_S2_RT1_.exit

bb.g:                                             ; preds = %bb.f
  %i.s = load i8, ptr %i.o, align 1, !tbaa !11
  store i8 %i.s, ptr %i.g, align 1, !tbaa !11
  br label %_ZSt22__uninitialized_move_aIPhS0_SaIhEET0_T_S3_S2_RT1_.exit

_ZSt22__uninitialized_move_aIPhS0_SaIhEET0_T_S3_S2_RT1_.exit: ; preds = %bb.e, %bb.f, %bb.g
  %i.t = load ptr, ptr %i.f, align 8, !tbaa !23
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 %i.c
  store ptr %i.u, ptr %i.f, align 8, !tbaa !23
  %i.v = sub i64 %i.p, %i.k                       ; 4 uses
  %i.w = icmp sgt i64 %i.v, 1
  br i1 %i.w, label %bb.h, label %bb.i, !prof !53

bb.h:                                             ; preds = %_ZSt22__uninitialized_move_aIPhS0_SaIhEET0_T_S3_S2_RT1_.exit
end_hunk_0
