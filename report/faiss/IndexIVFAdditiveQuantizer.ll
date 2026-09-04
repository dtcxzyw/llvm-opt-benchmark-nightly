Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/faiss/original/IndexIVFAdditiveQuantizer?download=true
inline.NumInlined: 404
inline.NumDeleted: 131
loop-unroll.NumRuntimeUnrolled: 3
loop-unroll.NumUnrolled: 3
begin_hunk_0_@_ZN5faiss12_GLOBAL__N_124AQInvertedListScannerLUTILb0ELNS_17AdditiveQuantizer13Search_type_tE6EED2Ev:bb.a
  %.not.i.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorIfSaIfEED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !59
  %i.e = ptrtoint ptr %i.d to i64
  %i.f = ptrtoint ptr %i.b to i64
  %i.g = sub i64 %i.e, %i.f
  tail call void @_ZdlPvm(ptr noundef nonnull %i.b, i64 noundef %i.g) #28
  br label %_ZNSt6vectorIfSaIfEED2Ev.exit

_ZNSt6vectorIfSaIfEED2Ev.exit:                    ; preds = %bb.a, %bb.b
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !58   ; 3 uses
  %.not.i.i.i1 = icmp eq ptr %i.i, null
  br i1 %.not.i.i.i1, label %_ZNSt6vectorIfSaIfEED2Ev.exit2, label %bb.c

bb.c:                                             ; preds = %_ZNSt6vectorIfSaIfEED2Ev.exit
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !59
  %i.l = ptrtoint ptr %i.k to i64
  %i.m = ptrtoint ptr %i.i to i64
  %i.n = sub i64 %i.l, %i.m
  tail call void @_ZdlPvm(ptr noundef nonnull %i.i, i64 noundef %i.n) #28
  br label %_ZNSt6vectorIfSaIfEED2Ev.exit2

_ZNSt6vectorIfSaIfEED2Ev.exit2:                   ; preds = %_ZNSt6vectorIfSaIfEED2Ev.exit, %bb.c
  store ptr getelementptr inbounds nuw inrange(-16, 72) (i8, ptr @_ZTVN5faiss12_GLOBAL__N_121AQInvertedListScannerE, i64 16), ptr %0, align 8, !tbaa !10
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !58   ; 3 uses
  %.not.i.i.i.i = icmp eq ptr %i.p, null
  br i1 %.not.i.i.i.i, label %_ZN5faiss12_GLOBAL__N_121AQInvertedListScannerD2Ev.exit, label %bb.d

bb.d:                                             ; preds = %_ZNSt6vectorIfSaIfEED2Ev.exit2
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !59
  %i.s = ptrtoint ptr %i.r to i64
  %i.t = ptrtoint ptr %i.p to i64
  %i.u = sub i64 %i.s, %i.t
  tail call void @_ZdlPvm(ptr noundef nonnull %i.p, i64 noundef %i.u) #28, !inline_history !136
  br label %_ZN5faiss12_GLOBAL__N_121AQInvertedListScannerD2Ev.exit

_ZN5faiss12_GLOBAL__N_121AQInvertedListScannerD2Ev.exit: ; preds = %_ZNSt6vectorIfSaIfEED2Ev.exit2, %bb.d
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define internal void @_ZN5faiss12_GLOBAL__N_124AQInvertedListScannerLUTILb0ELNS_17AdditiveQuantizer13Search_type_tE6EED0Ev(ptr noundef nonnull align 8 dereferenceable(148) initializes((0, 8)) %0) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 72) (i8, ptr @_ZTVN5faiss12_GLOBAL__N_124AQInvertedListScannerLUTILb0ELNS_17AdditiveQuantizer13Search_type_tE6EEE, i64 16), ptr %0, align 8, !tbaa !10
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !58   ; 3 uses
  %.not.i.i.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i.i.i, label %_ZNSt6vectorIfSaIfEED2Ev.exit.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !59
  %i.e = ptrtoint ptr %i.d to i64
  %i.f = ptrtoint ptr %i.b to i64
  %i.g = sub i64 %i.e, %i.f
  tail call void @_ZdlPvm(ptr noundef nonnull %i.b, i64 noundef %i.g) #28, !inline_history !187
  br label %_ZNSt6vectorIfSaIfEED2Ev.exit.i

_ZNSt6vectorIfSaIfEED2Ev.exit.i:                  ; preds = %bb.b, %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !58   ; 3 uses
  %.not.i.i.i1.i = icmp eq ptr %i.i, null
  br i1 %.not.i.i.i1.i, label %_ZNSt6vectorIfSaIfEED2Ev.exit2.i, label %bb.c

bb.c:                                             ; preds = %_ZNSt6vectorIfSaIfEED2Ev.exit.i
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !59
  %i.l = ptrtoint ptr %i.k to i64
  %i.m = ptrtoint ptr %i.i to i64
  %i.n = sub i64 %i.l, %i.m
  tail call void @_ZdlPvm(ptr noundef nonnull %i.i, i64 noundef %i.n) #28, !inline_history !187
  br label %_ZNSt6vectorIfSaIfEED2Ev.exit2.i

_ZNSt6vectorIfSaIfEED2Ev.exit2.i:                 ; preds = %bb.c, %_ZNSt6vectorIfSaIfEED2Ev.exit.i
  store ptr getelementptr inbounds nuw inrange(-16, 72) (i8, ptr @_ZTVN5faiss12_GLOBAL__N_121AQInvertedListScannerE, i64 16), ptr %0, align 8, !tbaa !10
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !58   ; 3 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.p, null
  br i1 %.not.i.i.i.i.i, label %_ZN5faiss12_GLOBAL__N_124AQInvertedListScannerLUTILb0ELNS_17AdditiveQuantizer13Search_type_tE6EED2Ev.exit, label %bb.d

bb.d:                                             ; preds = %_ZNSt6vectorIfSaIfEED2Ev.exit2.i
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !59
  %i.s = ptrtoint ptr %i.r to i64
  %i.t = ptrtoint ptr %i.p to i64
  %i.u = sub i64 %i.s, %i.t
  tail call void @_ZdlPvm(ptr noundef nonnull %i.p, i64 noundef %i.u) #28, !inline_history !188
  br label %_ZN5faiss12_GLOBAL__N_124AQInvertedListScannerLUTILb0ELNS_17AdditiveQuantizer13Search_type_tE6EED2Ev.exit

_ZN5faiss12_GLOBAL__N_124AQInvertedListScannerLUTILb0ELNS_17AdditiveQuantizer13Search_type_tE6EED2Ev.exit: ; preds = %_ZNSt6vectorIfSaIfEED2Ev.exit2.i, %bb.d
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 152) #28
  ret void
}

declare noundef float @_ZNK5faiss17AdditiveQuantizer22compute_1_distance_LUTILb0ELNS0_13Search_type_tE6EEEfPKhPKf(ptr noundef nonnull align 8 dereferenceable(412), ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress uwtable
define void @_ZN5faiss25IndexIVFResidualQuantizerC2EPNS_5IndexEmmRKSt6vectorImSaImEENS_10MetricTypeENS_17AdditiveQuantizer13Search_type_tEb(ptr noundef nonnull align 8 dereferenceable(800) initializes((0, 8), (40, 48)) %0, ptr noundef %1, i64 noundef %2, i64 noundef %3, ptr noundef nonnull align 8 dereferenceable(24) %4, i32 noundef %5, i32 noundef %6, i1 noundef zeroext %7) unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 336) (i8, ptr @_ZTVN5faiss25IndexIVFResidualQuantizerE, i64 16), ptr %0, align 8, !tbaa !10
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN5faiss25IndexIVFResidualQuantizerE, i64 368), ptr %i.a, align 8, !tbaa !10
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 296 ; 2 uses
  tail call void @_ZN5faiss8IndexIVFC2EPNS_5IndexEmmmNS_10MetricTypeEb(ptr noundef nonnull align 8 dereferenceable(292) %0, ptr noundef %1, i64 noundef %2, i64 noundef %3, i64 noundef 0, i32 noundef %5, i1 noundef zeroext %7)
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 280
  store ptr %i.b, ptr %i.c, align 8, !tbaa !64
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 288
  store i32 0, ptr %i.d, align 8, !tbaa !125
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 272
  store i8 1, ptr %i.e, align 8, !tbaa !55
  store ptr getelementptr inbounds nuw inrange(-16, 336) (i8, ptr @_ZTVN5faiss25IndexIVFResidualQuantizerE, i64 16), ptr %0, align 8, !tbaa !10
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN5faiss25IndexIVFResidualQuantizerE, i64 368), ptr %i.a, align 8, !tbaa !10
  invoke void @_ZN5faiss17ResidualQuantizerC1EmRKSt6vectorImSaImEENS_17AdditiveQuantizer13Search_type_tE(ptr noundef nonnull align 8 dereferenceable(504) %i.b, i64 noundef %2, ptr noundef nonnull align 8 dereferenceable(24) %4, i32 noundef %6)
          to label %bb.b unwind label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 312
  %i.g = load i64, ptr %i.f, align 8, !tbaa !137  ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 168
  store i64 %i.g, ptr %i.h, align 8, !tbaa !65
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 152
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !121  ; 2 uses
  %.not = icmp eq ptr %i.j, null
  br i1 %.not, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  store i64 %i.g, ptr %i.k, align 8, !tbaa !139
  br label %bb.e

bb.d:                                             ; preds = %bb.a
  %i.l = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN5faiss8IndexIVFD2Ev(ptr noundef nonnull align 8 dead_on_return(273) dereferenceable(292) %0) #12
  resume { ptr, i32 } %i.l

bb.e:                                             ; preds = %bb.c, %bb.b
  ret void
}

declare void @_ZN5faiss17ResidualQuantizerC1EmRKSt6vectorImSaImEENS_17AdditiveQuantizer13Search_type_tE(ptr noundef nonnull align 8 dereferenceable(504), i64 noundef, ptr noundef nonnull align 8 dereferenceable(24), i32 noundef) unnamed_addr #1

; Function Attrs: mustprogress uwtable
define void @_ZN5faiss25IndexIVFResidualQuantizerC2Ev(ptr noundef nonnull align 8 dereferenceable(800) initializes((0, 8), (40, 48)) %0) unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 336) (i8, ptr @_ZTVN5faiss25IndexIVFResidualQuantizerE, i64 16), ptr %0, align 8, !tbaa !10
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN5faiss25IndexIVFResidualQuantizerE, i64 368), ptr %i.a, align 8, !tbaa !10
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 296 ; 2 uses
  tail call void @_ZN5faiss8IndexIVFC2Ev(ptr noundef nonnull align 8 dereferenceable(292) %0)
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 280
  store ptr %i.b, ptr %i.c, align 8, !tbaa !64
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 288
  store i32 0, ptr %i.d, align 8, !tbaa !125
  store ptr getelementptr inbounds nuw inrange(-16, 336) (i8, ptr @_ZTVN5faiss25IndexIVFResidualQuantizerE, i64 16), ptr %0, align 8, !tbaa !10
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN5faiss25IndexIVFResidualQuantizerE, i64 368), ptr %i.a, align 8, !tbaa !10
  invoke void @_ZN5faiss17ResidualQuantizerC1Ev(ptr noundef nonnull align 8 dereferenceable(504) %i.b)
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %bb.a
  ret void

bb.c:                                             ; preds = %bb.a
  %i.e = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN5faiss8IndexIVFD2Ev(ptr noundef nonnull align 8 dead_on_return(273) dereferenceable(292) %0) #12
  resume { ptr, i32 } %i.e
}

declare void @_ZN5faiss17ResidualQuantizerC1Ev(ptr noundef nonnull align 8 dereferenceable(504)) unnamed_addr #1

; Function Attrs: mustprogress uwtable
define void @_ZN5faiss25IndexIVFResidualQuantizerC2EPNS_5IndexEmmmmNS_10MetricTypeENS_17AdditiveQuantizer13Search_type_tEb(ptr noundef nonnull align 8 dereferenceable(800) %0, ptr noundef %1, i64 noundef %2, i64 noundef %3, i64 noundef %4, i64 noundef %5, i32 noundef %6, i32 noundef %7, i1 noundef zeroext %8) unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %9 = alloca %"class.std::vector.5", align 8     ; 12 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #12
  %i.a = icmp ugt i64 %4, 1152921504606846975
  br i1 %i.a, label %.noexc, label %_ZNSt6vectorImSaImEE17_S_check_init_lenEmRKS0_.exit.i

.noexc:                                           ; preds = %bb.a
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.5) #29
  unreachable

_ZNSt6vectorImSaImEE17_S_check_init_lenEmRKS0_.exit.i: ; preds = %bb.a
  %.not.i.i.i.i = icmp eq i64 %4, 0
  br i1 %.not.i.i.i.i, label %_ZNSt12_Vector_baseImSaImEEC2EmRKS0_.exit.thread.i, label %.noexc11

_ZNSt12_Vector_baseImSaImEEC2EmRKS0_.exit.thread.i: ; preds = %_ZNSt6vectorImSaImEE17_S_check_init_lenEmRKS0_.exit.i
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %9, i8 0, i64 24, i1 false)
  br label %.loopexit

.noexc11:                                         ; preds = %_ZNSt6vectorImSaImEE17_S_check_init_lenEmRKS0_.exit.i
  %i.b = shl nuw nsw i64 %4, 3                    ; 3 uses
  %i.c = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.b) #30 ; 7 uses
  store ptr %i.c, ptr %9, align 8, !tbaa !68
  %i.d = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %4
  %i.e = getelementptr inbounds nuw i8, ptr %9, i64 16
  store ptr %i.d, ptr %i.e, align 8, !tbaa !191
  %i.f = getelementptr inbounds nuw i8, ptr %i.c, i64 %i.b ; 3 uses
  %i.g = add nsw i64 %i.b, -8                     ; 2 uses
  %i.h = lshr exact i64 %i.g, 3
  %i.i = add nuw nsw i64 %i.h, 1
  %xtraiter = and i64 %i.i, 7                     ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i.i.i.i.i.i.i.i.preheader, label %vector.body

vector.body:                                      ; preds = %.noexc11, %vector.body
  %.06.i.i.i.i.i.i.i.i.i.prol = phi ptr [ %10, %vector.body ], [ %i.c, %.noexc11 ] ; 2 uses
  %prol.iter = phi i64 [ %index.next, %vector.body ], [ 0, %.noexc11 ]
  store i64 %5, ptr %.06.i.i.i.i.i.i.i.i.i.prol, align 8, !tbaa !18
  %10 = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i.i.i.i.i.i.prol, i64 8 ; 2 uses
  %index.next = add i64 %prol.iter, 1             ; 2 uses
  %i.j = icmp eq i64 %index.next, %xtraiter
  br i1 %i.j, label %.lr.ph.i.i.i.i.i.i.i.i.i.preheader, label %vector.body, !llvm.loop !189

.lr.ph.i.i.i.i.i.i.i.i.i.preheader:               ; preds = %vector.body, %.noexc11
  %.06.i.i.i.i.i.i.i.i.i.ph = phi ptr [ %i.c, %.noexc11 ], [ %10, %vector.body ]
  %11 = icmp ult i64 %i.g, 56
  br i1 %11, label %.loopexit, label %.lr.ph.i.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i.i:                         ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.preheader, %.lr.ph.i.i.i.i.i.i.i.i.i
  %.06.i.i.i.i.i.i.i.i.i = phi ptr [ %i.k, %.lr.ph.i.i.i.i.i.i.i.i.i ], [ %.06.i.i.i.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.i.i.i.preheader ] ; 9 uses
  store i64 %5, ptr %.06.i.i.i.i.i.i.i.i.i, align 8, !tbaa !18
  %12 = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i.i.i.i.i.i, i64 8
  store i64 %5, ptr %12, align 8, !tbaa !18
  %13 = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i.i.i.i.i.i, i64 16
  store i64 %5, ptr %13, align 8, !tbaa !18
  %14 = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i.i.i.i.i.i, i64 24
  store i64 %5, ptr %14, align 8, !tbaa !18
  %15 = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i.i.i.i.i.i, i64 32
  store i64 %5, ptr %15, align 8, !tbaa !18
  %16 = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i.i.i.i.i.i, i64 40
  store i64 %5, ptr %16, align 8, !tbaa !18
  %17 = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i.i.i.i.i.i, i64 48
  store i64 %5, ptr %17, align 8, !tbaa !18
  %18 = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i.i.i.i.i.i, i64 56
  store i64 %5, ptr %18, align 8, !tbaa !18
  %i.k = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i.i.i.i.i.i, i64 64 ; 2 uses
  %.not.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.k, %i.f
  br i1 %.not.i.i.i.i.i.i.i.i.i, label %.loopexit, label %.lr.ph.i.i.i.i.i.i.i.i.i, !llvm.loop !190

.loopexit:                                        ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.preheader, %.lr.ph.i.i.i.i.i.i.i.i.i, %_ZNSt12_Vector_baseImSaImEEC2EmRKS0_.exit.thread.i
  %i.l = phi ptr [ null, %_ZNSt12_Vector_baseImSaImEEC2EmRKS0_.exit.thread.i ], [ %i.c, %.lr.ph.i.i.i.i.i.i.i.i.i ], [ %i.c, %.lr.ph.i.i.i.i.i.i.i.i.i.preheader ]
  %.0.i.i.i.i.i.i.i = phi ptr [ null, %_ZNSt12_Vector_baseImSaImEEC2EmRKS0_.exit.thread.i ], [ %i.f, %.lr.ph.i.i.i.i.i.i.i.i.i ], [ %i.f, %.lr.ph.i.i.i.i.i.i.i.i.i.preheader ]
  %i.m = getelementptr inbounds nuw i8, ptr %9, i64 8
  store ptr %.0.i.i.i.i.i.i.i, ptr %i.m, align 8, !tbaa !192
  store ptr getelementptr inbounds nuw inrange(-16, 336) (i8, ptr @_ZTVN5faiss25IndexIVFResidualQuantizerE, i64 16), ptr %0, align 8, !tbaa !10
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN5faiss25IndexIVFResidualQuantizerE, i64 368), ptr %i.n, align 8, !tbaa !10
  invoke void @_ZN5faiss8IndexIVFC2EPNS_5IndexEmmmNS_10MetricTypeEb(ptr noundef nonnull align 8 dereferenceable(800) %0, ptr noundef %1, i64 noundef %2, i64 noundef %3, i64 noundef 0, i32 noundef %6, i1 noundef zeroext %8)
          to label %.noexc12 unwind label %bb.f

.noexc12:                                         ; preds = %.loopexit
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 296 ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 280
  store ptr %i.o, ptr %i.p, align 8, !tbaa !64
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 288
  store i32 0, ptr %i.q, align 8, !tbaa !125
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 272
  store i8 1, ptr %i.r, align 8, !tbaa !55
  store ptr getelementptr inbounds nuw inrange(-16, 336) (i8, ptr @_ZTVN5faiss25IndexIVFResidualQuantizerE, i64 16), ptr %0, align 8, !tbaa !10
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN5faiss25IndexIVFResidualQuantizerE, i64 368), ptr %i.n, align 8, !tbaa !10
  invoke void @_ZN5faiss17ResidualQuantizerC1EmRKSt6vectorImSaImEENS_17AdditiveQuantizer13Search_type_tE(ptr noundef nonnull align 8 dereferenceable(504) %i.o, i64 noundef %2, ptr noundef nonnull align 8 dereferenceable(24) %9, i32 noundef %7)
          to label %bb.b unwind label %bb.d

bb.b:                                             ; preds = %.noexc12
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 312
  %i.t = load i64, ptr %i.s, align 8, !tbaa !137  ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 168
  store i64 %i.t, ptr %i.u, align 8, !tbaa !65
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 152
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !121  ; 2 uses
  %.not.i = icmp eq ptr %i.w, null
  br i1 %.not.i, label %_ZN5faiss25IndexIVFResidualQuantizerC2EPNS_5IndexEmmRKSt6vectorImSaImEENS_10MetricTypeENS_17AdditiveQuantizer13Search_type_tEb.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 16
  store i64 %i.t, ptr %i.x, align 8, !tbaa !139
  br label %_ZN5faiss25IndexIVFResidualQuantizerC2EPNS_5IndexEmmRKSt6vectorImSaImEENS_10MetricTypeENS_17AdditiveQuantizer13Search_type_tEb.exit

bb.d:                                             ; preds = %.noexc12
  %i.y = landingpad { ptr, i32 }
          cleanup
  call void @_ZN5faiss8IndexIVFD2Ev(ptr noundef nonnull align 8 dead_on_return(273) dereferenceable(800) %0) #12
  %.pre = load ptr, ptr %9, align 8, !tbaa !68
  br label %.body

_ZN5faiss25IndexIVFResidualQuantizerC2EPNS_5IndexEmmRKSt6vectorImSaImEENS_10MetricTypeENS_17AdditiveQuantizer13Search_type_tEb.exit: ; preds = %bb.c, %bb.b
  %i.z = load ptr, ptr %9, align 8, !tbaa !68     ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.z, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorImSaImEED2Ev.exit, label %bb.e

bb.e:                                             ; preds = %_ZN5faiss25IndexIVFResidualQuantizerC2EPNS_5IndexEmmRKSt6vectorImSaImEENS_10MetricTypeENS_17AdditiveQuantizer13Search_type_tEb.exit
  %i.aa = getelementptr inbounds nuw i8, ptr %9, i64 16
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !191
  %i.ac = ptrtoint ptr %i.ab to i64
  %i.ad = ptrtoint ptr %i.z to i64
  %i.ae = sub i64 %i.ac, %i.ad
  call void @_ZdlPvm(ptr noundef nonnull %i.z, i64 noundef %i.ae) #28
  br label %_ZNSt6vectorImSaImEED2Ev.exit

_ZNSt6vectorImSaImEED2Ev.exit:                    ; preds = %_ZN5faiss25IndexIVFResidualQuantizerC2EPNS_5IndexEmmRKSt6vectorImSaImEENS_10MetricTypeENS_17AdditiveQuantizer13Search_type_tEb.exit, %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #12
  ret void

bb.f:                                             ; preds = %.loopexit
  %i.af = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %bb.d, %bb.f
  %i.ag = phi ptr [ %i.l, %bb.f ], [ %.pre, %bb.d ] ; 3 uses
  %eh.lpad-body = phi { ptr, i32 } [ %i.af, %bb.f ], [ %i.y, %bb.d ]
  %.not.i.i.i13 = icmp eq ptr %i.ag, null
  br i1 %.not.i.i.i13, label %_ZNSt6vectorImSaImEED2Ev.exit14, label %bb.g

bb.g:                                             ; preds = %.body
  %i.ah = getelementptr inbounds nuw i8, ptr %9, i64 16
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !191
  %i.aj = ptrtoint ptr %i.ai to i64
  %i.ak = ptrtoint ptr %i.ag to i64
  %i.al = sub i64 %i.aj, %i.ak
  call void @_ZdlPvm(ptr noundef nonnull %i.ag, i64 noundef %i.al) #28
  br label %_ZNSt6vectorImSaImEED2Ev.exit14

_ZNSt6vectorImSaImEED2Ev.exit14:                  ; preds = %bb.g, %.body
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #12
  resume { ptr, i32 } %eh.lpad-body
}

; Function Attrs: mustprogress nounwind uwtable
define void @_ZN5faiss25IndexIVFResidualQuantizerD2Ev(ptr noundef nonnull align 8 dead_on_return(800) dereferenceable(800) initializes((0, 8), (40, 48)) %0) unnamed_addr #0 align 2 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 336) (i8, ptr @_ZTVN5faiss25IndexIVFResidualQuantizerE, i64 16), ptr %0, align 8, !tbaa !10
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 40
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN5faiss25IndexIVFResidualQuantizerE, i64 368), ptr %i.a, align 8, !tbaa !10
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 296
  tail call void @_ZN5faiss17AdditiveQuantizerD2Ev(ptr noundef nonnull align 8 dead_on_return(504) dereferenceable(504) %i.b) #12
  tail call void @_ZN5faiss8IndexIVFD2Ev(ptr noundef nonnull align 8 dead_on_return(273) dereferenceable(292) %0) #12
  ret void
}

; Function Attrs: nounwind
declare void @_ZN5faiss17AdditiveQuantizerD2Ev(ptr noundef nonnull align 8 dead_on_return(412) dereferenceable(412)) unnamed_addr #19

; Function Attrs: mustprogress uwtable
define void @_ZN5faiss28IndexIVFLocalSearchQuantizerC2EPNS_5IndexEmmmmNS_10MetricTypeENS_17AdditiveQuantizer13Search_type_tEb(ptr noundef nonnull align 8 dereferenceable(800) initializes((0, 8), (40, 48)) %0, ptr noundef %1, i64 noundef %2, i64 noundef %3, i64 noundef %4, i64 noundef %5, i32 noundef %6, i32 noundef %7, i1 noundef zeroext %8) unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 336) (i8, ptr @_ZTVN5faiss28IndexIVFLocalSearchQuantizerE, i64 16), ptr %0, align 8, !tbaa !10
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN5faiss28IndexIVFLocalSearchQuantizerE, i64 368), ptr %i.a, align 8, !tbaa !10
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 296 ; 2 uses
  tail call void @_ZN5faiss8IndexIVFC2EPNS_5IndexEmmmNS_10MetricTypeEb(ptr noundef nonnull align 8 dereferenceable(292) %0, ptr noundef %1, i64 noundef %2, i64 noundef %3, i64 noundef 0, i32 noundef %6, i1 noundef zeroext %8)
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 280
  store ptr %i.b, ptr %i.c, align 8, !tbaa !64
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 288
  store i32 0, ptr %i.d, align 8, !tbaa !125
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 272
  store i8 1, ptr %i.e, align 8, !tbaa !55
  store ptr getelementptr inbounds nuw inrange(-16, 336) (i8, ptr @_ZTVN5faiss28IndexIVFLocalSearchQuantizerE, i64 16), ptr %0, align 8, !tbaa !10
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN5faiss28IndexIVFLocalSearchQuantizerE, i64 368), ptr %i.a, align 8, !tbaa !10
  invoke void @_ZN5faiss20LocalSearchQuantizerC1EmmmNS_17AdditiveQuantizer13Search_type_tE(ptr noundef nonnull align 8 dereferenceable(497) %i.b, i64 noundef %2, i64 noundef %4, i64 noundef %5, i32 noundef %7)
          to label %bb.b unwind label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 312
  %i.g = load i64, ptr %i.f, align 8, !tbaa !137  ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 168
  store i64 %i.g, ptr %i.h, align 8, !tbaa !65
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 152
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !121  ; 2 uses
  %.not = icmp eq ptr %i.j, null
  br i1 %.not, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  store i64 %i.g, ptr %i.k, align 8, !tbaa !139
  br label %bb.e

bb.d:                                             ; preds = %bb.a
  %i.l = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN5faiss8IndexIVFD2Ev(ptr noundef nonnull align 8 dead_on_return(273) dereferenceable(292) %0) #12
  resume { ptr, i32 } %i.l

bb.e:                                             ; preds = %bb.c, %bb.b
  ret void
}

declare void @_ZN5faiss20LocalSearchQuantizerC1EmmmNS_17AdditiveQuantizer13Search_type_tE(ptr noundef nonnull align 8 dereferenceable(497), i64 noundef, i64 noundef, i64 noundef, i32 noundef) unnamed_addr #1

; Function Attrs: mustprogress uwtable
define void @_ZN5faiss28IndexIVFLocalSearchQuantizerC2Ev(ptr noundef nonnull align 8 dereferenceable(800) initializes((0, 8), (40, 48)) %0) unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 336) (i8, ptr @_ZTVN5faiss28IndexIVFLocalSearchQuantizerE, i64 16), ptr %0, align 8, !tbaa !10
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN5faiss28IndexIVFLocalSearchQuantizerE, i64 368), ptr %i.a, align 8, !tbaa !10
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 296 ; 2 uses
  tail call void @_ZN5faiss8IndexIVFC2Ev(ptr noundef nonnull align 8 dereferenceable(292) %0)
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 280
  store ptr %i.b, ptr %i.c, align 8, !tbaa !64
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 288
  store i32 0, ptr %i.d, align 8, !tbaa !125
  store ptr getelementptr inbounds nuw inrange(-16, 336) (i8, ptr @_ZTVN5faiss28IndexIVFLocalSearchQuantizerE, i64 16), ptr %0, align 8, !tbaa !10
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN5faiss28IndexIVFLocalSearchQuantizerE, i64 368), ptr %i.a, align 8, !tbaa !10
  invoke void @_ZN5faiss20LocalSearchQuantizerC1Ev(ptr noundef nonnull align 8 dereferenceable(497) %i.b)
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %bb.a
  ret void

bb.c:                                             ; preds = %bb.a
  %i.e = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN5faiss8IndexIVFD2Ev(ptr noundef nonnull align 8 dead_on_return(273) dereferenceable(292) %0) #12
  resume { ptr, i32 } %i.e
}

declare void @_ZN5faiss20LocalSearchQuantizerC1Ev(ptr noundef nonnull align 8 dereferenceable(497)) unnamed_addr #1

; Function Attrs: mustprogress nounwind uwtable
define void @_ZN5faiss28IndexIVFLocalSearchQuantizerD2Ev(ptr noundef nonnull align 8 dead_on_return(800) dereferenceable(800) initializes((0, 8), (40, 48)) %0) unnamed_addr #0 align 2 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 336) (i8, ptr @_ZTVN5faiss28IndexIVFLocalSearchQuantizerE, i64 16), ptr %0, align 8, !tbaa !10
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 40
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN5faiss28IndexIVFLocalSearchQuantizerE, i64 368), ptr %i.a, align 8, !tbaa !10
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 296
  tail call void @_ZN5faiss20LocalSearchQuantizerD1Ev(ptr noundef nonnull align 8 dead_on_return(497) dereferenceable(497) %i.b) #12
  tail call void @_ZN5faiss8IndexIVFD2Ev(ptr noundef nonnull align 8 dead_on_return(273) dereferenceable(292) %0) #12
  ret void
}

; Function Attrs: nounwind
declare void @_ZN5faiss20LocalSearchQuantizerD1Ev(ptr noundef nonnull align 8 dead_on_return(497) dereferenceable(497)) unnamed_addr #19

; Function Attrs: mustprogress uwtable
define void @_ZN5faiss32IndexIVFProductResidualQuantizerC2EPNS_5IndexEmmmmmNS_10MetricTypeENS_17AdditiveQuantizer13Search_type_tEb(ptr noundef nonnull align 8 dereferenceable(744) initializes((0, 8), (40, 48)) %0, ptr noundef %1, i64 noundef %2, i64 noundef %3, i64 noundef %4, i64 noundef %5, i64 noundef %6, i32 noundef %7, i32 noundef %8, i1 noundef zeroext %9) unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 336) (i8, ptr @_ZTVN5faiss32IndexIVFProductResidualQuantizerE, i64 16), ptr %0, align 8, !tbaa !10
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN5faiss32IndexIVFProductResidualQuantizerE, i64 368), ptr %i.a, align 8, !tbaa !10
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 296 ; 2 uses
  tail call void @_ZN5faiss8IndexIVFC2EPNS_5IndexEmmmNS_10MetricTypeEb(ptr noundef nonnull align 8 dereferenceable(292) %0, ptr noundef %1, i64 noundef %2, i64 noundef %3, i64 noundef 0, i32 noundef %7, i1 noundef zeroext %9)
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 280
end_hunk_0
begin_hunk_1_@llvm.umax.i64
attributes #27 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #28 = { builtin nounwind }
attributes #29 = { noreturn }
attributes #30 = { builtin allocsize(0) }
attributes #31 = { noreturn nounwind }
attributes #32 = { cold nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}
!llvm.errno.tbaa = !{!8}

!0 = !{i32 7, !"openmp", i32 51}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 2}
!3 = !{!"Ubuntu clang version 24.0.0 (++20260804081852+44c6aed9bd9b-1~exp1~20260804202019.1766)"}
!4 = !{!"Simple C++ TBAA"}
!5 = !{!"omnipotent char", !4, i64 0}
!6 = !{!"int", !5, i64 0}
!7 = !{!"__libc_errno", !6, i64 0}
!8 = !{!7, !6, i64 0}
!9 = !{!"vtable pointer", !4, i64 0}
!10 = !{!9, !9, i64 0}
!11 = !{!"any pointer", !5, i64 0}
!12 = !{!"p1 omnipotent char", !11, i64 0}
!13 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderE", !12, i64 0}
!14 = !{!"long", !5, i64 0}
!15 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE", !13, i64 0, !14, i64 8, !5, i64 16}
!16 = !{!15, !12, i64 0}
!17 = !{!5, !5, i64 0}
!18 = !{!14, !14, i64 0}
!19 = !{!12, !12, i64 0}
!20 = !{!"p1 float", !11, i64 0}
!21 = !{!20, !20, i64 0}
!22 = !{!6, !6, i64 0}
!23 = !{!"p1 long", !11, i64 0}
!24 = !{!23, !23, i64 0}
!25 = !{!"bool", !5, i64 0}
!26 = !{!"_ZTSN5faiss10MetricTypeE", !5, i64 0}
!27 = !{!"float", !5, i64 0}
!28 = !{!"_ZTSN5faiss5IndexE", !6, i64 8, !14, i64 16, !25, i64 24, !25, i64 25, !26, i64 28, !27, i64 32}
!29 = !{i8 0, i8 2}
!30 = !{}
!31 = !{!13, !12, i64 0}
!32 = !{!15, !14, i64 8}
!33 = !{!"p1 _ZTSN5faiss5IndexE", !11, i64 0}
!34 = !{!"_ZTSN5faiss20ClusteringInitMethodE", !5, i64 0}
!35 = !{!"short", !5, i64 0}
!36 = !{!"double", !5, i64 0}
!37 = !{!"_ZTSN5faiss20ClusteringParametersE", !6, i64 0, !6, i64 4, !25, i64 8, !25, i64 9, !25, i64 10, !25, i64 11, !25, i64 12, !6, i64 16, !6, i64 20, !6, i64 24, !14, i64 32, !25, i64 40, !25, i64 41, !34, i64 42, !35, i64 44, !36, i64 48}
!38 = !{!"_ZTSN5faiss15Level1QuantizerE", !33, i64 0, !14, i64 8, !5, i64 16, !25, i64 17, !37, i64 24, !33, i64 80}
!39 = !{!"_ZTSN5faiss17IndexIVFInterfaceE", !38, i64 8, !14, i64 96, !14, i64 104}
!40 = !{!"p1 _ZTSN5faiss13InvertedListsE", !11, i64 0}
!41 = !{!"_ZTSN5faiss9DirectMap4TypeE", !5, i64 0}
!42 = !{!"_ZTSNSt12_Vector_baseIlSaIlEE17_Vector_impl_dataE", !23, i64 0, !23, i64 8, !23, i64 16}
!43 = !{!"_ZTSNSt12_Vector_baseIlSaIlEE12_Vector_implE", !42, i64 0}
!44 = !{!"_ZTSSt12_Vector_baseIlSaIlEE", !43, i64 0}
!45 = !{!"_ZTSSt6vectorIlSaIlEE", !44, i64 0}
!46 = !{!"any p2 pointer", !11, i64 0}
!47 = !{!"p2 _ZTSNSt8__detail15_Hash_node_baseE", !46, i64 0}
!48 = !{!"p1 _ZTSNSt8__detail15_Hash_node_baseE", !11, i64 0}
!49 = !{!"_ZTSNSt8__detail15_Hash_node_baseE", !48, i64 0}
!50 = !{!"_ZTSNSt8__detail20_Prime_rehash_policyE", !27, i64 0, !14, i64 8}
!51 = !{!"_ZTSSt10_HashtableIlSt4pairIKllESaIS2_ENSt8__detail10_Select1stESt8equal_toIlESt4hashIlENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb0ELb0ELb1EEEE", !47, i64 0, !14, i64 8, !49, i64 16, !14, i64 24, !50, i64 32, !48, i64 48}
!52 = !{!"_ZTSSt13unordered_mapIllSt4hashIlESt8equal_toIlESaISt4pairIKllEEE", !51, i64 0}
!53 = !{!"_ZTSN5faiss9DirectMapE", !41, i64 0, !45, i64 8, !52, i64 32}
!54 = !{!"_ZTSN5faiss8IndexIVFE", !28, i64 0, !39, i64 40, !40, i64 152, !25, i64 160, !14, i64 168, !6, i64 176, !6, i64 180, !53, i64 184, !25, i64 272}
!55 = !{!54, !25, i64 272}
!56 = !{!28, !6, i64 8}
!57 = !{!"_ZTSNSt12_Vector_baseIfSaIfEE17_Vector_impl_dataE", !20, i64 0, !20, i64 8, !20, i64 16}
!58 = !{!57, !20, i64 0}
!59 = !{!57, !20, i64 16}
!60 = !{!27, !27, i64 0}
!61 = !{!57, !20, i64 8}
!62 = !{!"p1 _ZTSN5faiss17AdditiveQuantizerE", !11, i64 0}
!63 = !{!"_ZTSN5faiss25IndexIVFAdditiveQuantizerE", !54, i64 0, !62, i64 280, !6, i64 288}
!64 = !{!63, !62, i64 280}
!65 = !{!54, !14, i64 168}
!66 = !{!"llvm.loop.mustprogress"}
!67 = !{!"_ZTSNSt12_Vector_baseImSaImEE17_Vector_impl_dataE", !23, i64 0, !23, i64 8, !23, i64 16}
!68 = !{!67, !23, i64 0}
!69 = !{!"_ZTSN5faiss9QuantizerE", !14, i64 8, !14, i64 16}
!70 = !{!"_ZTSNSt12_Vector_baseImSaImEE12_Vector_implE", !67, i64 0}
!71 = !{!"_ZTSSt12_Vector_baseImSaImEE", !70, i64 0}
!72 = !{!"_ZTSSt6vectorImSaImEE", !71, i64 0}
!73 = !{!"_ZTSNSt12_Vector_baseIfSaIfEE12_Vector_implE", !57, i64 0}
!74 = !{!"_ZTSSt12_Vector_baseIfSaIfEE", !73, i64 0}
!75 = !{!"_ZTSSt6vectorIfSaIfEE", !74, i64 0}
!76 = !{!"_ZTSNSt12_Vector_baseIhSaIhEE17_Vector_impl_dataE", !12, i64 0, !12, i64 8, !12, i64 16}
!77 = !{!"_ZTSNSt12_Vector_baseIhSaIhEE12_Vector_implE", !76, i64 0}
!78 = !{!"_ZTSSt12_Vector_baseIhSaIhEE", !77, i64 0}
!79 = !{!"_ZTSSt6vectorIhSaIhEE", !78, i64 0}
!80 = !{!"p1 _ZTSN5faiss21MaybeOwnedVectorOwnerE", !11, i64 0}
!81 = !{!"p1 _ZTSSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE", !11, i64 0}
!82 = !{!"_ZTSSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EE", !81, i64 0}
!83 = !{!"_ZTSSt12__shared_ptrIN5faiss21MaybeOwnedVectorOwnerELN9__gnu_cxx12_Lock_policyE2EE", !80, i64 0, !82, i64 8}
!84 = !{!"_ZTSSt10shared_ptrIN5faiss21MaybeOwnedVectorOwnerEE", !83, i64 0}
!85 = !{!"_ZTSN5faiss16MaybeOwnedVectorIhEE", !25, i64 0, !79, i64 8, !12, i64 32, !14, i64 40, !84, i64 48, !12, i64 64, !14, i64 72}
!86 = !{!"_ZTSN5faiss14IndexFlatCodesE", !28, i64 0, !14, i64 40, !85, i64 48}
!87 = !{!"_ZTSN5faiss9IndexFlatE", !86, i64 0}
!88 = !{!"_ZTSN5faiss11IndexFlatL2E", !87, i64 0, !75, i64 128}
!89 = !{!"_ZTSN5faiss11IndexFlat1DE", !88, i64 0, !25, i64 152, !45, i64 160}
!90 = !{!"_ZTSN5faiss17AdditiveQuantizer13Search_type_tE", !5, i64 0}
!91 = !{!"_ZTSN5faiss17AdditiveQuantizerE", !69, i64 0, !14, i64 24, !72, i64 32, !75, i64 56, !72, i64 80, !14, i64 104, !14, i64 112, !14, i64 120, !25, i64 128, !25, i64 129, !25, i64 130, !75, i64 136, !89, i64 160, !75, i64 344, !75, i64 368, !14, i64 392, !90, i64 400, !27, i64 404, !27, i64 408}
!92 = !{!28, !26, i64 28}
!93 = !{!"p1 _ZTSN5faiss10IDSelectorE", !11, i64 0}
!94 = !{!"_ZTSN5faiss19InvertedListScannerE", !14, i64 8, !25, i64 16, !25, i64 17, !93, i64 24, !14, i64 32}
!95 = !{!94, !14, i64 8}
!96 = !{!"p1 _ZTSN5faiss25IndexIVFAdditiveQuantizerE", !11, i64 0}
!97 = !{!"_ZTSN5faiss12_GLOBAL__N_121AQInvertedListScannerE", !94, i64 0, !96, i64 40, !62, i64 48, !75, i64 56, !20, i64 80, !20, i64 88}
!98 = !{!"_ZTSN5faiss12_GLOBAL__N_131AQInvertedListScannerDecompressILb1EEE", !97, i64 0, !27, i64 96}
!99 = !{!98, !27, i64 96}
!100 = !{!97, !62, i64 48}
!101 = !{!97, !96, i64 40}
!102 = !{i64 8}
!103 = !{!"_ZTSN5faiss12_GLOBAL__N_124AQInvertedListScannerLUTILb1ELNS_17AdditiveQuantizer13Search_type_tE1EEE", !97, i64 0, !75, i64 96, !75, i64 120, !27, i64 144}
!104 = !{!103, !27, i64 144}
!105 = !{!"_ZTSN5faiss12_GLOBAL__N_131AQInvertedListScannerDecompressILb0EEE", !97, i64 0, !27, i64 96}
!106 = !{!105, !27, i64 96}
!107 = !{!"_ZTSN5faiss12_GLOBAL__N_124AQInvertedListScannerLUTILb0ELNS_17AdditiveQuantizer13Search_type_tE1EEE", !97, i64 0, !75, i64 96, !75, i64 120, !27, i64 144}
!108 = !{!107, !27, i64 144}
!109 = !{!"_ZTSN5faiss12_GLOBAL__N_124AQInvertedListScannerLUTILb0ELNS_17AdditiveQuantizer13Search_type_tE2EEE", !97, i64 0, !75, i64 96, !75, i64 120, !27, i64 144}
!110 = !{!109, !27, i64 144}
!111 = !{!"_ZTSN5faiss12_GLOBAL__N_124AQInvertedListScannerLUTILb0ELNS_17AdditiveQuantizer13Search_type_tE3EEE", !97, i64 0, !75, i64 96, !75, i64 120, !27, i64 144}
!112 = !{!111, !27, i64 144}
!113 = !{!"_ZTSN5faiss12_GLOBAL__N_124AQInvertedListScannerLUTILb0ELNS_17AdditiveQuantizer13Search_type_tE4EEE", !97, i64 0, !75, i64 96, !75, i64 120, !27, i64 144}
!114 = !{!113, !27, i64 144}
!115 = !{!"_ZTSN5faiss12_GLOBAL__N_124AQInvertedListScannerLUTILb0ELNS_17AdditiveQuantizer13Search_type_tE5EEE", !97, i64 0, !75, i64 96, !75, i64 120, !27, i64 144}
!116 = !{!115, !27, i64 144}
!117 = !{!"_ZTSN5faiss12_GLOBAL__N_124AQInvertedListScannerLUTILb0ELNS_17AdditiveQuantizer13Search_type_tE7EEE", !97, i64 0, !75, i64 96, !75, i64 120, !27, i64 144}
!118 = !{!117, !27, i64 144}
!119 = !{!"_ZTSN5faiss12_GLOBAL__N_124AQInvertedListScannerLUTILb0ELNS_17AdditiveQuantizer13Search_type_tE6EEE", !97, i64 0, !75, i64 96, !75, i64 120, !27, i64 144}
!120 = !{!119, !27, i64 144}
!121 = !{!54, !40, i64 152}
!122 = !{!38, !33, i64 0}
!123 = !{!"llvm.loop.isvectorized", i32 1}
!124 = !{!"llvm.loop.unroll.runtime.disable"}
!125 = !{!63, !6, i64 288}
!126 = !{i64 2, i64 -1, i64 -1, i1 true}
!127 = !{!126}
!128 = !{!"branch_weights", !"expected", i32 1, i32 2000}
!129 = !{!"llvm.loop.unroll.disable"}
!130 = !{!97, !20, i64 80}
!131 = !{ptr @_ZN5faiss12_GLOBAL__N_121AQInvertedListScanner8set_listElf}
!132 = !{!97, !20, i64 88}
!133 = !{!69, !14, i64 8}
!134 = !{!"p1 _ZTS8_IO_FILE", !11, i64 0}
!135 = !{!134, !134, i64 0}
!136 = !{ptr @_ZN5faiss12_GLOBAL__N_121AQInvertedListScannerD2Ev}
!137 = !{!69, !14, i64 16}
!138 = !{!"_ZTSN5faiss13InvertedListsE", !14, i64 8, !14, i64 16, !25, i64 24}
!139 = !{!138, !14, i64 16}
!140 = distinct !{!140, !66}
!141 = !{!28, !25, i64 25}
!142 = !{!91, !14, i64 24}
!143 = !{!91, !90, i64 400}
!144 = !{!96, !96, i64 0}
!145 = !{!62, !62, i64 0}
!146 = !{!94, !25, i64 17}
!147 = !{!94, !14, i64 32}
!148 = !{!94, !25, i64 16}
!149 = !{!91, !14, i64 120}
!150 = distinct !{null}
!151 = distinct !{!151, !66, !123, !124}
!152 = distinct !{!152, !66, !124, !123}
!153 = !{ptr @_ZN5faiss25IndexIVFResidualQuantizerD0Ev}
!154 = !{ptr @_ZN5faiss28IndexIVFLocalSearchQuantizerD0Ev}
!155 = !{ptr @_ZN5faiss32IndexIVFProductResidualQuantizerD0Ev}
!156 = !{ptr @_ZN5faiss35IndexIVFProductLocalSearchQuantizerD0Ev}
!157 = distinct !{!157, !"LVerDomain"}
!158 = distinct !{!158, !157}
!159 = distinct !{!159, !157}
!160 = distinct !{!160, !66, !123, !124}
!161 = distinct !{!161, !129}
!162 = distinct !{!162, !66, !123}
!163 = !{!158}
!164 = !{!159}
!165 = distinct !{!165, !"LVerDomain"}
!166 = distinct !{!166, !165}
!167 = distinct !{!167, !165}
!168 = distinct !{!168, !66, !123, !124}
!169 = distinct !{!169, !129}
!170 = distinct !{!170, !66, !123}
!171 = !{!166}
!172 = !{!167}
!173 = !{ptr @_ZN5faiss12_GLOBAL__N_124AQInvertedListScannerLUTILb1ELNS_17AdditiveQuantizer13Search_type_tE1EED2Ev}
!174 = !{ptr @_ZN5faiss12_GLOBAL__N_124AQInvertedListScannerLUTILb1ELNS_17AdditiveQuantizer13Search_type_tE1EED2Ev, ptr @_ZN5faiss12_GLOBAL__N_121AQInvertedListScannerD2Ev}
!175 = !{ptr @_ZN5faiss12_GLOBAL__N_124AQInvertedListScannerLUTILb0ELNS_17AdditiveQuantizer13Search_type_tE1EED2Ev}
!176 = !{ptr @_ZN5faiss12_GLOBAL__N_124AQInvertedListScannerLUTILb0ELNS_17AdditiveQuantizer13Search_type_tE1EED2Ev, ptr @_ZN5faiss12_GLOBAL__N_121AQInvertedListScannerD2Ev}
!177 = !{ptr @_ZN5faiss12_GLOBAL__N_124AQInvertedListScannerLUTILb0ELNS_17AdditiveQuantizer13Search_type_tE2EED2Ev}
!178 = !{ptr @_ZN5faiss12_GLOBAL__N_124AQInvertedListScannerLUTILb0ELNS_17AdditiveQuantizer13Search_type_tE2EED2Ev, ptr @_ZN5faiss12_GLOBAL__N_121AQInvertedListScannerD2Ev}
!179 = !{ptr @_ZN5faiss12_GLOBAL__N_124AQInvertedListScannerLUTILb0ELNS_17AdditiveQuantizer13Search_type_tE3EED2Ev}
!180 = !{ptr @_ZN5faiss12_GLOBAL__N_124AQInvertedListScannerLUTILb0ELNS_17AdditiveQuantizer13Search_type_tE3EED2Ev, ptr @_ZN5faiss12_GLOBAL__N_121AQInvertedListScannerD2Ev}
!181 = !{ptr @_ZN5faiss12_GLOBAL__N_124AQInvertedListScannerLUTILb0ELNS_17AdditiveQuantizer13Search_type_tE4EED2Ev}
!182 = !{ptr @_ZN5faiss12_GLOBAL__N_124AQInvertedListScannerLUTILb0ELNS_17AdditiveQuantizer13Search_type_tE4EED2Ev, ptr @_ZN5faiss12_GLOBAL__N_121AQInvertedListScannerD2Ev}
!183 = !{ptr @_ZN5faiss12_GLOBAL__N_124AQInvertedListScannerLUTILb0ELNS_17AdditiveQuantizer13Search_type_tE5EED2Ev}
!184 = !{ptr @_ZN5faiss12_GLOBAL__N_124AQInvertedListScannerLUTILb0ELNS_17AdditiveQuantizer13Search_type_tE5EED2Ev, ptr @_ZN5faiss12_GLOBAL__N_121AQInvertedListScannerD2Ev}
!185 = !{ptr @_ZN5faiss12_GLOBAL__N_124AQInvertedListScannerLUTILb0ELNS_17AdditiveQuantizer13Search_type_tE7EED2Ev}
!186 = !{ptr @_ZN5faiss12_GLOBAL__N_124AQInvertedListScannerLUTILb0ELNS_17AdditiveQuantizer13Search_type_tE7EED2Ev, ptr @_ZN5faiss12_GLOBAL__N_121AQInvertedListScannerD2Ev}
!187 = !{ptr @_ZN5faiss12_GLOBAL__N_124AQInvertedListScannerLUTILb0ELNS_17AdditiveQuantizer13Search_type_tE6EED2Ev}
!188 = !{ptr @_ZN5faiss12_GLOBAL__N_124AQInvertedListScannerLUTILb0ELNS_17AdditiveQuantizer13Search_type_tE6EED2Ev, ptr @_ZN5faiss12_GLOBAL__N_121AQInvertedListScannerD2Ev}
!189 = distinct !{!189, !129}
!190 = distinct !{!190, !66}
!191 = !{!67, !23, i64 16}
!192 = !{!67, !23, i64 8}
end_hunk_1
