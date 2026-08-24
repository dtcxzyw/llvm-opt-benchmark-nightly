Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/duckdb/original/ub_duckdb_variant_cast?download=true
inline.NumInlined: 6391
inline.NumDeleted: 1307
loop-unroll.NumCompletelyUnrolled: 99
loop-unroll.NumRuntimeUnrolled: 20
loop-unroll.NumUnrolled: 119
begin_hunk_0_@_ZN6duckdbL15CastFromVARIANTERNS_6VectorES1_mRNS_14CastParametersE:bb.a
}

declare void @_ZN6duckdb13BoundCastInfoC1EPFbRNS_6VectorES2_mRNS_14CastParametersEENS_10unique_ptrINS_13BoundCastDataESt14default_deleteIS8_ELb1EEEPFNS7_INS_18FunctionLocalStateES9_ISC_ELb1EEERNS_24CastLocalStateParametersEE(ptr noundef nonnull align 8 dereferenceable(24), ptr noundef, ptr noundef, ptr noundef) unnamed_addr #1

declare i32 @__gxx_personality_v0(...)

declare noundef zeroext i1 @_ZN6duckdb12DefaultCasts17TryVectorNullCastERNS_6VectorES2_mRNS_14CastParametersE(ptr noundef nonnull align 8 dereferenceable(104), ptr noundef nonnull align 8 dereferenceable(104), i64 noundef, ptr noundef nonnull align 8 dereferenceable(57)) #1

; Function Attrs: mustprogress uwtable
define void @_ZN6duckdb7variant17InitializeOffsetsERNS_9DataChunkEm(ptr noundef nonnull align 8 dereferenceable(72) %0, i64 noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call noundef nonnull align 8 dereferenceable(104) ptr @_ZN6duckdb6vectorINS_6VectorELb1ESaIS1_EEixEm(ptr noundef nonnull align 8 dereferenceable(72) %0, i64 noundef 0) ; 2 uses
  tail call void @_ZN6duckdb14ConstantVector16VerifyVectorTypeIjEEvRKNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(104) %i.a)
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !81
  %i.d = tail call noundef nonnull align 8 dereferenceable(104) ptr @_ZN6duckdb6vectorINS_6VectorELb1ESaIS1_EEixEm(ptr noundef nonnull align 8 dereferenceable(72) %0, i64 noundef 1) ; 2 uses
  tail call void @_ZN6duckdb14ConstantVector16VerifyVectorTypeIjEEvRKNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(104) %i.d)
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 32
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !81
  %i.g = tail call noundef nonnull align 8 dereferenceable(104) ptr @_ZN6duckdb6vectorINS_6VectorELb1ESaIS1_EEixEm(ptr noundef nonnull align 8 dereferenceable(72) %0, i64 noundef 2) ; 2 uses
  tail call void @_ZN6duckdb14ConstantVector16VerifyVectorTypeIjEEvRKNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(104) %i.g)
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 32
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !81
  %i.j = tail call noundef nonnull align 8 dereferenceable(104) ptr @_ZN6duckdb6vectorINS_6VectorELb1ESaIS1_EEixEm(ptr noundef nonnull align 8 dereferenceable(72) %0, i64 noundef 3) ; 2 uses
  tail call void @_ZN6duckdb14ConstantVector16VerifyVectorTypeIjEEvRKNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(104) %i.j)
  %.not = icmp eq i64 %1, 0
  br i1 %.not, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.a
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 32
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !81
  %i.m = shl nuw i64 %1, 2                        ; 4 uses
  tail call void @llvm.memset.p0.i64(ptr align 4 %i.c, i8 0, i64 %i.m, i1 false), !tbaa !3
  tail call void @llvm.memset.p0.i64(ptr align 4 %i.f, i8 0, i64 %i.m, i1 false), !tbaa !3
  tail call void @llvm.memset.p0.i64(ptr align 4 %i.i, i8 0, i64 %i.m, i1 false), !tbaa !3
  tail call void @llvm.memset.p0.i64(ptr align 4 %i.l, i8 0, i64 %i.m, i1 false), !tbaa !3
  br label %._crit_edge

._crit_edge:                                      ; preds = %.lr.ph.preheader, %bb.a
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #2

; Function Attrs: mustprogress uwtable
define void @_ZN6duckdb12DefaultCasts21ImplicitToVariantCastERNS_13BindCastInputERKNS_11LogicalTypeES5_(ptr dead_on_unwind noalias nonnull writable sret(%"struct.duckdb::BoundCastInfo") align 8 %0, ptr nofree noundef nonnull readnone align 8 captures(none) dereferenceable(32) %1, ptr nofree noundef nonnull readnone align 8 captures(none) dereferenceable(24) %2, ptr nofree noundef nonnull readnone align 8 captures(none) dereferenceable(24) %3) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"class.duckdb::unique_ptr", align 8 ; 4 uses
  store ptr null, ptr %4, align 8, !tbaa !18
  invoke void @_ZN6duckdb13BoundCastInfoC1EPFbRNS_6VectorES2_mRNS_14CastParametersEENS_10unique_ptrINS_13BoundCastDataESt14default_deleteIS8_ELb1EEEPFNS7_INS_18FunctionLocalStateES9_ISC_ELb1EEERNS_24CastLocalStateParametersEE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull @_ZN6duckdb7variantL13CastToVARIANTERNS_6VectorES2_mRNS_14CastParametersE, ptr noundef nonnull %4, ptr noundef null)
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.a = load ptr, ptr %4, align 8, !tbaa !21     ; 3 uses
  %.not.i = icmp eq ptr %i.a, null
  br i1 %.not.i, label %_ZNSt10unique_ptrIN6duckdb13BoundCastDataESt14default_deleteIS1_EED2Ev.exit, label %_ZNKSt14default_deleteIN6duckdb13BoundCastDataEEclEPS1_.exit.i

_ZNKSt14default_deleteIN6duckdb13BoundCastDataEEclEPS1_.exit.i: ; preds = %bb.b
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !22
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.d = load ptr, ptr %i.c, align 8
  call void %i.d(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.a) #24, !inline_history !82
  br label %_ZNSt10unique_ptrIN6duckdb13BoundCastDataESt14default_deleteIS1_EED2Ev.exit

_ZNSt10unique_ptrIN6duckdb13BoundCastDataESt14default_deleteIS1_EED2Ev.exit: ; preds = %bb.b, %_ZNKSt14default_deleteIN6duckdb13BoundCastDataEEclEPS1_.exit.i
  ret void

bb.c:                                             ; preds = %bb.a
  %i.e = landingpad { ptr, i32 }
          cleanup
  %i.f = load ptr, ptr %4, align 8, !tbaa !21     ; 3 uses
  %.not.i1 = icmp eq ptr %i.f, null
  br i1 %.not.i1, label %_ZNSt10unique_ptrIN6duckdb13BoundCastDataESt14default_deleteIS1_EED2Ev.exit3, label %_ZNKSt14default_deleteIN6duckdb13BoundCastDataEEclEPS1_.exit.i2

_ZNKSt14default_deleteIN6duckdb13BoundCastDataEEclEPS1_.exit.i2: ; preds = %bb.c
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !22
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %i.i = load ptr, ptr %i.h, align 8
  call void %i.i(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.f) #24, !inline_history !82
  br label %_ZNSt10unique_ptrIN6duckdb13BoundCastDataESt14default_deleteIS1_EED2Ev.exit3

_ZNSt10unique_ptrIN6duckdb13BoundCastDataESt14default_deleteIS1_EED2Ev.exit3: ; preds = %bb.c, %_ZNKSt14default_deleteIN6duckdb13BoundCastDataEEclEPS1_.exit.i2
  resume { ptr, i32 } %i.e
}

; Function Attrs: mustprogress uwtable
define internal noundef zeroext i1 @_ZN6duckdb7variantL13CastToVARIANTERNS_6VectorES2_mRNS_14CastParametersE(ptr noundef nonnull align 8 dereferenceable(104) %0, ptr noundef nonnull align 8 dereferenceable(104) %1, i64 noundef %2, ptr nofree nonnull readnone align 8 captures(none) %3) #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"class.duckdb::DataChunk", align 8 ; 17 uses
  %5 = alloca %"class.duckdb::vector.115", align 8 ; 12 uses
  %6 = alloca [4 x %"struct.duckdb::LogicalType"], align 8 ; 17 uses
  %7 = alloca %"class.duckdb::OwningStringMap", align 8 ; 15 uses
  %8 = alloca %"struct.duckdb::SelectionVector", align 8 ; 11 uses
  %9 = alloca %"struct.duckdb::variant::ToVariantSourceData", align 8 ; 13 uses
  %10 = alloca %"struct.duckdb::VariantVectorData", align 8 ; 5 uses
  %11 = alloca %"struct.duckdb::variant::ToVariantGlobalResultData", align 8 ; 8 uses
  %12 = alloca %"struct.duckdb::VariantVectorData", align 8 ; 5 uses
  %13 = alloca %"struct.duckdb::variant::ToVariantGlobalResultData", align 8 ; 8 uses
  %.not = icmp eq i64 %2, 0
  br i1 %.not, label %bb.bs, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #24
  call void @_ZN6duckdb9DataChunkC1Ev(ptr noundef nonnull align 8 dereferenceable(72) %4)
  %i.a = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZN6duckdb9Allocator16DefaultAllocatorEv()
          to label %bb.c unwind label %bb.t

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #24
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #24
  invoke void @_ZN6duckdb11LogicalTypeC1ENS_13LogicalTypeIdE(ptr noundef nonnull align 8 dereferenceable(24) %6, i8 noundef zeroext 30)
          to label %bb.d unwind label %.thread

.thread:                                          ; preds = %bb.c
  %i.b = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit138

bb.d:                                             ; preds = %bb.c
  %i.c = getelementptr inbounds nuw i8, ptr %6, i64 24 ; 3 uses
  invoke void @_ZN6duckdb11LogicalTypeC1ENS_13LogicalTypeIdE(ptr noundef nonnull align 8 dereferenceable(24) %i.c, i8 noundef zeroext 30)
          to label %bb.e unwind label %bb.u

bb.e:                                             ; preds = %bb.d
  %i.d = getelementptr inbounds nuw i8, ptr %6, i64 48 ; 3 uses
  invoke void @_ZN6duckdb11LogicalTypeC1ENS_13LogicalTypeIdE(ptr noundef nonnull align 8 dereferenceable(24) %i.d, i8 noundef zeroext 30)
          to label %bb.f unwind label %bb.u

bb.f:                                             ; preds = %bb.e
  %i.e = getelementptr inbounds nuw i8, ptr %6, i64 72 ; 3 uses
  invoke void @_ZN6duckdb11LogicalTypeC1ENS_13LogicalTypeIdE(ptr noundef nonnull align 8 dereferenceable(24) %i.e, i8 noundef zeroext 30)
          to label %bb.g unwind label %bb.u

bb.g:                                             ; preds = %bb.f
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %5, i8 0, i64 24, i1 false)
  %i.f = invoke noalias noundef nonnull dereferenceable(96) ptr @_Znwm(i64 noundef 96) #27
          to label %.noexc124 unwind label %.body125.thread ; 8 uses

.noexc124:                                        ; preds = %bb.g
  store ptr %i.f, ptr %5, align 8, !tbaa !83
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 96
  %i.h = getelementptr inbounds nuw i8, ptr %5, i64 16
  store ptr %i.g, ptr %i.h, align 8, !tbaa !86
  invoke void @_ZN6duckdb11LogicalTypeC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(24) %i.f, ptr noundef nonnull align 8 dereferenceable(24) %6)
          to label %_ZSt10_ConstructIN6duckdb11LogicalTypeEJRKS1_EEvPT_DpOT0_.exit.i.i.i.i.i unwind label %bb.h

_ZSt10_ConstructIN6duckdb11LogicalTypeEJRKS1_EEvPT_DpOT0_.exit.i.i.i.i.i: ; preds = %.noexc124
  %i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 24 ; 2 uses
  invoke void @_ZN6duckdb11LogicalTypeC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(24) %i.i, ptr noundef nonnull align 8 dereferenceable(24) %i.c)
          to label %_ZSt10_ConstructIN6duckdb11LogicalTypeEJRKS1_EEvPT_DpOT0_.exit.i.i.i.i.i.1 unwind label %.thread167

_ZSt10_ConstructIN6duckdb11LogicalTypeEJRKS1_EEvPT_DpOT0_.exit.i.i.i.i.i.1: ; preds = %_ZSt10_ConstructIN6duckdb11LogicalTypeEJRKS1_EEvPT_DpOT0_.exit.i.i.i.i.i
  %i.j = getelementptr inbounds nuw i8, ptr %i.f, i64 48 ; 2 uses
  invoke void @_ZN6duckdb11LogicalTypeC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(24) %i.j, ptr noundef nonnull align 8 dereferenceable(24) %i.d)
          to label %_ZSt10_ConstructIN6duckdb11LogicalTypeEJRKS1_EEvPT_DpOT0_.exit.i.i.i.i.i.2 unwind label %.thread167

_ZSt10_ConstructIN6duckdb11LogicalTypeEJRKS1_EEvPT_DpOT0_.exit.i.i.i.i.i.2: ; preds = %_ZSt10_ConstructIN6duckdb11LogicalTypeEJRKS1_EEvPT_DpOT0_.exit.i.i.i.i.i.1
  %i.k = getelementptr inbounds nuw i8, ptr %i.f, i64 72 ; 2 uses
  invoke void @_ZN6duckdb11LogicalTypeC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(24) %i.k, ptr noundef nonnull align 8 dereferenceable(24) %i.e)
          to label %_ZSt10_ConstructIN6duckdb11LogicalTypeEJRKS1_EEvPT_DpOT0_.exit.i.i.i.i.i.3 unwind label %.thread167

_ZSt10_ConstructIN6duckdb11LogicalTypeEJRKS1_EEvPT_DpOT0_.exit.i.i.i.i.i.3: ; preds = %_ZSt10_ConstructIN6duckdb11LogicalTypeEJRKS1_EEvPT_DpOT0_.exit.i.i.i.i.i.2
  %i.l = getelementptr inbounds nuw i8, ptr %i.f, i64 96
  %i.m = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 2 uses
  store ptr %i.l, ptr %i.m, align 8, !tbaa !87
  invoke void @_ZN6duckdb9DataChunk10InitializeERNS_9AllocatorERKNS_6vectorINS_11LogicalTypeELb1ESaIS4_EEEm(ptr noundef nonnull align 8 dereferenceable(72) %4, ptr noundef nonnull align 8 dereferenceable(32) %i.a, ptr noundef nonnull align 8 dereferenceable(24) %5, i64 noundef %2)
          to label %bb.m unwind label %bb.w

.thread167:                                       ; preds = %_ZSt10_ConstructIN6duckdb11LogicalTypeEJRKS1_EEvPT_DpOT0_.exit.i.i.i.i.i, %_ZSt10_ConstructIN6duckdb11LogicalTypeEJRKS1_EEvPT_DpOT0_.exit.i.i.i.i.i.1, %_ZSt10_ConstructIN6duckdb11LogicalTypeEJRKS1_EEvPT_DpOT0_.exit.i.i.i.i.i.2
  %.016.i.i.i.i.i.lcssa.ph = phi ptr [ %i.k, %_ZSt10_ConstructIN6duckdb11LogicalTypeEJRKS1_EEvPT_DpOT0_.exit.i.i.i.i.i.2 ], [ %i.j, %_ZSt10_ConstructIN6duckdb11LogicalTypeEJRKS1_EEvPT_DpOT0_.exit.i.i.i.i.i.1 ], [ %i.i, %_ZSt10_ConstructIN6duckdb11LogicalTypeEJRKS1_EEvPT_DpOT0_.exit.i.i.i.i.i ]
  %lpad.thr_comm = landingpad { ptr, i32 }
          catch ptr null
  %i.n = extractvalue { ptr, i32 } %lpad.thr_comm, 0
  %i.o = call ptr @__cxa_begin_catch(ptr %i.n) #24 ; 0 uses
  br label %.lr.ph.i.i.i.i.i.i.i

bb.h:                                             ; preds = %.noexc124
  %lpad.thr_comm.split-lp = landingpad { ptr, i32 }
          catch ptr null
  %i.p = extractvalue { ptr, i32 } %lpad.thr_comm.split-lp, 0
  %i.q = call ptr @__cxa_begin_catch(ptr %i.p) #24 ; 0 uses
  br label %_ZSt8_DestroyIPN6duckdb11LogicalTypeEEvT_S3_.exit.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i:                             ; preds = %.thread167, %.lr.ph.i.i.i.i.i.i.i
  %.05.i.i.i.i.i.i.i = phi ptr [ %i.r, %.lr.ph.i.i.i.i.i.i.i ], [ %i.f, %.thread167 ] ; 2 uses
  call void @_ZN6duckdb11LogicalTypeD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %.05.i.i.i.i.i.i.i) #24
  %i.r = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i.i.i, i64 24 ; 2 uses
  %.not.i.i.i.i.i.i.i122 = icmp eq ptr %i.r, %.016.i.i.i.i.i.lcssa.ph
  br i1 %.not.i.i.i.i.i.i.i122, label %_ZSt8_DestroyIPN6duckdb11LogicalTypeEEvT_S3_.exit.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i, !llvm.loop !88

_ZSt8_DestroyIPN6duckdb11LogicalTypeEEvT_S3_.exit.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i, %bb.h
  invoke void @__cxa_rethrow() #26
          to label %bb.k unwind label %bb.i

bb.i:                                             ; preds = %_ZSt8_DestroyIPN6duckdb11LogicalTypeEEvT_S3_.exit.i.i.i.i.i
  %i.s = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  invoke void @__cxa_end_catch()
          to label %.body125 unwind label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.t = landingpad { ptr, i32 }
          catch ptr null
  %i.u = extractvalue { ptr, i32 } %i.t, 0
  call void @__clang_call_terminate(ptr %i.u) #28
  unreachable

bb.k:                                             ; preds = %_ZSt8_DestroyIPN6duckdb11LogicalTypeEEvT_S3_.exit.i.i.i.i.i
  unreachable

.body125.thread:                                  ; preds = %bb.g
  %i.v = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body125:                                         ; preds = %bb.i
  %.pr = load ptr, ptr %5, align 8, !tbaa !83     ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %.pr, null
  br i1 %.not.i.i.i.i, label %.body, label %bb.l

bb.l:                                             ; preds = %.body125
  call void @_ZdlPv(ptr noundef nonnull %.pr) #25
  br label %.body

bb.m:                                             ; preds = %_ZSt10_ConstructIN6duckdb11LogicalTypeEJRKS1_EEvPT_DpOT0_.exit.i.i.i.i.i.3
  %i.w = load ptr, ptr %5, align 8, !tbaa !83     ; 3 uses
  %i.x = load ptr, ptr %i.m, align 8, !tbaa !87   ; 2 uses
  %.not4.i.i.i = icmp eq ptr %i.w, %i.x
  br i1 %.not4.i.i.i, label %_ZSt8_DestroyIPN6duckdb11LogicalTypeES1_EvT_S3_RSaIT0_E.exit.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.m, %.lr.ph.i.i.i
  %.05.i.i.i = phi ptr [ %i.y, %.lr.ph.i.i.i ], [ %i.w, %bb.m ] ; 2 uses
  call void @_ZN6duckdb11LogicalTypeD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %.05.i.i.i) #24
  %i.y = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 24 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.y, %i.x
  br i1 %.not.i.i.i, label %_ZSt8_DestroyIPN6duckdb11LogicalTypeES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i, label %.lr.ph.i.i.i, !llvm.loop !88

_ZSt8_DestroyIPN6duckdb11LogicalTypeES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i: ; preds = %.lr.ph.i.i.i
  %.pr.i = load ptr, ptr %5, align 8, !tbaa !83
  br label %_ZSt8_DestroyIPN6duckdb11LogicalTypeES1_EvT_S3_RSaIT0_E.exit.i

_ZSt8_DestroyIPN6duckdb11LogicalTypeES1_EvT_S3_RSaIT0_E.exit.i: ; preds = %_ZSt8_DestroyIPN6duckdb11LogicalTypeES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i, %bb.m
  %i.z = phi ptr [ %.pr.i, %_ZSt8_DestroyIPN6duckdb11LogicalTypeES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i ], [ %i.w, %bb.m ] ; 2 uses
  %.not.i.i1.i = icmp eq ptr %i.z, null
  br i1 %.not.i.i1.i, label %_ZNSt6vectorIN6duckdb11LogicalTypeESaIS1_EED2Ev.exit, label %bb.n

bb.n:                                             ; preds = %_ZSt8_DestroyIPN6duckdb11LogicalTypeES1_EvT_S3_RSaIT0_E.exit.i
  call void @_ZdlPv(ptr noundef nonnull %i.z) #25
  br label %_ZNSt6vectorIN6duckdb11LogicalTypeESaIS1_EED2Ev.exit

_ZNSt6vectorIN6duckdb11LogicalTypeESaIS1_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPN6duckdb11LogicalTypeES1_EvT_S3_RSaIT0_E.exit.i, %bb.n
  %i.aa = getelementptr inbounds nuw i8, ptr %6, i64 72
  call void @_ZN6duckdb11LogicalTypeD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %i.aa) #24
  %i.ab = getelementptr inbounds nuw i8, ptr %6, i64 48
  call void @_ZN6duckdb11LogicalTypeD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %i.ab) #24
  %i.ac = getelementptr inbounds nuw i8, ptr %6, i64 24
  call void @_ZN6duckdb11LogicalTypeD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %i.ac) #24
  call void @_ZN6duckdb11LogicalTypeD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %6) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #24
  %i.ad = getelementptr inbounds nuw i8, ptr %4, i64 24 ; 3 uses
  store i64 %2, ptr %i.ad, align 8, !tbaa !89
  %i.ae = invoke noundef nonnull align 8 dereferenceable(104) ptr @_ZN6duckdb13VariantVector7GetKeysERNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(104) %1)
          to label %bb.o unwind label %bb.x

bb.o:                                             ; preds = %_ZNSt6vectorIN6duckdb11LogicalTypeESaIS1_EED2Ev.exit
  %i.af = invoke noundef nonnull align 8 dereferenceable(104) ptr @_ZN6duckdb10ListVector8GetEntryERNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(104) %i.ae)
          to label %bb.p unwind label %bb.y       ; 3 uses

bb.p:                                             ; preds = %bb.o
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #24
  %i.ag = invoke noundef nonnull align 8 dereferenceable(144) ptr @_ZN6duckdb12StringVector15GetStringBufferERNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(104) %i.af)
          to label %bb.q unwind label %bb.z

bb.q:                                             ; preds = %bb.p
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 80
  store ptr %i.ah, ptr %7, align 8, !tbaa !103
  %i.ai = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 3 uses
  store i32 0, ptr %i.ai, align 8, !tbaa !105
  %i.aj = getelementptr inbounds nuw i8, ptr %7, i64 24
  store ptr null, ptr %i.aj, align 8, !tbaa !110
  %i.ak = getelementptr inbounds nuw i8, ptr %7, i64 32
  store ptr %i.ai, ptr %i.ak, align 8, !tbaa !111
  %i.al = getelementptr inbounds nuw i8, ptr %7, i64 40
  store ptr %i.ai, ptr %i.al, align 8, !tbaa !112
  %i.am = getelementptr inbounds nuw i8, ptr %7, i64 48
  store i64 0, ptr %i.am, align 8, !tbaa !113
  %i.an = getelementptr inbounds nuw i8, ptr %7, i64 56
  store i32 1, ptr %i.an, align 8, !tbaa !114
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #24
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %8, i8 0, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #24
  store ptr %0, ptr %9, align 8, !tbaa !122
  %i.ao = getelementptr inbounds nuw i8, ptr %9, i64 8 ; 3 uses
  invoke void @_ZN6duckdb19UnifiedVectorFormatC1Ev(ptr noundef nonnull align 8 dereferenceable(73) %i.ao)
          to label %.noexc unwind label %bb.aa

.noexc:                                           ; preds = %bb.q
  %i.ap = getelementptr inbounds nuw i8, ptr %9, i64 88
  store i64 %2, ptr %i.ap, align 8, !tbaa !123
  %i.aq = getelementptr inbounds nuw i8, ptr %9, i64 96
  store ptr null, ptr %i.aq, align 8, !tbaa !128
  %i.ar = load ptr, ptr %9, align 8, !tbaa !129, !nonnull !130, !align !131
  invoke void @_ZN6duckdb6Vector15ToUnifiedFormatEmRNS_19UnifiedVectorFormatE(ptr noundef nonnull align 8 dereferenceable(104) %i.ar, i64 noundef %2, ptr noundef nonnull align 8 dereferenceable(73) %i.ao)
          to label %_ZN6duckdb7variant19ToVariantSourceDataC2ERNS_6VectorEm.exit unwind label %bb.r

bb.r:                                             ; preds = %.noexc
  %i.as = landingpad { ptr, i32 }
          cleanup
  call void @_ZN6duckdb19UnifiedVectorFormatD2Ev(ptr noundef nonnull align 8 dead_on_return(73) dereferenceable(73) %i.ao) #24
  br label %.body80

_ZN6duckdb7variant19ToVariantSourceDataC2ERNS_6VectorEm.exit: ; preds = %.noexc
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #24
  invoke void @_ZN6duckdb17VariantVectorDataC1ERNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(88) %10, ptr noundef nonnull align 8 dereferenceable(104) %1)
          to label %bb.s unwind label %bb.ab

bb.s:                                             ; preds = %_ZN6duckdb7variant19ToVariantSourceDataC2ERNS_6VectorEm.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #24
  store ptr %10, ptr %11, align 8, !tbaa !132
  %i.at = getelementptr inbounds nuw i8, ptr %11, i64 8
  store ptr %4, ptr %i.at, align 8, !tbaa !134
  %i.au = getelementptr inbounds nuw i8, ptr %11, i64 16
  store ptr %7, ptr %i.au, align 8, !tbaa !136
  %i.av = getelementptr inbounds nuw i8, ptr %11, i64 24
  store ptr %8, ptr %i.av, align 8, !tbaa !138
  invoke void @_ZN6duckdb7variant17InitializeOffsetsERNS_9DataChunkEm(ptr noundef nonnull align 8 dereferenceable(72) %4, i64 noundef range(i64 1, 0) %2)
          to label %.noexc82 unwind label %bb.ac

.noexc82:                                         ; preds = %bb.s
  %i.aw = invoke noundef zeroext i1 @_ZN6duckdb7variant16ConvertToVariantILb0ELb0EEEbRNS0_19ToVariantSourceDataERNS0_25ToVariantGlobalResultDataEmNS_12optional_ptrIKNS_15SelectionVectorELb1EEES9_b(ptr noundef nonnull align 8 dereferenceable(104) %9, ptr noundef nonnull align 8 dereferenceable(32) %11, i64 noundef range(i64 1, 0) %2, ptr null, ptr null, i1 noundef zeroext true)
          to label %_ZN6duckdb7variantL21GatherOffsetsAndSizesERNS0_19ToVariantSourceDataERNS0_25ToVariantGlobalResultDataEm.exit unwind label %bb.ac

bb.t:                                             ; preds = %bb.b
  %i.ax = landingpad { ptr, i32 }
          cleanup
  br label %bb.br

bb.u:                                             ; preds = %bb.f, %bb.e, %bb.d
  %.038 = phi ptr [ %i.e, %bb.f ], [ %i.d, %bb.e ], [ %i.c, %bb.d ]
  %i.ay = landingpad { ptr, i32 }
          cleanup
  br label %bb.v

bb.v:                                             ; preds = %bb.u, %bb.v
  %i.az = phi ptr [ %.038, %bb.u ], [ %i.ba, %bb.v ]
  %i.ba = getelementptr inbounds i8, ptr %i.az, i64 -24 ; 3 uses
  call void @_ZN6duckdb11LogicalTypeD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %i.ba) #24
  %i.bb = icmp eq ptr %i.ba, %6
  br i1 %i.bb, label %.loopexit138, label %bb.v

bb.w:                                             ; preds = %_ZSt10_ConstructIN6duckdb11LogicalTypeEJRKS1_EEvPT_DpOT0_.exit.i.i.i.i.i.3
  %i.bc = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt6vectorIN6duckdb11LogicalTypeESaIS1_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %5) #24
  br label %.body

.body:                                            ; preds = %.body125.thread, %bb.l, %.body125, %bb.w
  %.pn = phi { ptr, i32 } [ %i.bc, %bb.w ], [ %i.s, %.body125 ], [ %i.s, %bb.l ], [ %i.v, %.body125.thread ]
  %i.bd = getelementptr inbounds nuw i8, ptr %6, i64 72
  call void @_ZN6duckdb11LogicalTypeD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %i.bd) #24
  %i.be = getelementptr inbounds nuw i8, ptr %6, i64 48
  call void @_ZN6duckdb11LogicalTypeD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %i.be) #24
  %i.bf = getelementptr inbounds nuw i8, ptr %6, i64 24
  call void @_ZN6duckdb11LogicalTypeD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %i.bf) #24
  call void @_ZN6duckdb11LogicalTypeD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %6) #24
  br label %.loopexit138

.loopexit138:                                     ; preds = %bb.v, %.body, %.thread
  %.pn.pn = phi { ptr, i32 } [ %.pn, %.body ], [ %i.b, %.thread ], [ %i.ay, %bb.v ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #24
  br label %bb.br

bb.x:                                             ; preds = %_ZNSt6vectorIN6duckdb11LogicalTypeESaIS1_EED2Ev.exit
  %i.bg = landingpad { ptr, i32 }
          cleanup
  br label %bb.br

bb.y:                                             ; preds = %bb.o
  %i.bh = landingpad { ptr, i32 }
          cleanup
  br label %bb.br

bb.z:                                             ; preds = %bb.p
  %i.bi = landingpad { ptr, i32 }
          cleanup
  br label %bb.bq

bb.aa:                                            ; preds = %bb.q
  %i.bj = landingpad { ptr, i32 }
          cleanup
  br label %.body80

bb.ab:                                            ; preds = %_ZN6duckdb7variant19ToVariantSourceDataC2ERNS_6VectorEm.exit
  %i.bk = landingpad { ptr, i32 }
          cleanup
  br label %bb.af

bb.ac:                                            ; preds = %.noexc82, %bb.s
  %i.bl = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #24
  br label %bb.af

_ZN6duckdb7variantL21GatherOffsetsAndSizesERNS0_19ToVariantSourceDataERNS0_25ToVariantGlobalResultDataEm.exit: ; preds = %.noexc82
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #24
  br i1 %i.aw, label %bb.ad, label %bb.ax

bb.ad:                                            ; preds = %_ZN6duckdb7variantL21GatherOffsetsAndSizesERNS0_19ToVariantSourceDataERNS0_25ToVariantGlobalResultDataEm.exit
  %i.bm = invoke noundef nonnull align 8 dereferenceable(104) ptr @_ZN6duckdb13VariantVector7GetKeysERNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(104) %1)
          to label %.noexc84 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 5 uses

.noexc84:                                         ; preds = %bb.ad
  %i.bn = load i8, ptr %i.bm, align 8, !tbaa !38
  %i.bo = icmp eq i8 %i.bn, 3
  br i1 %i.bo, label %tailrecurse.i.i, label %_ZN6duckdb10ListVector7GetDataERNS_6VectorE.exit.i

tailrecurse.i.i:                                  ; preds = %.noexc84, %.noexc86
  %.tr5.i.i = phi ptr [ %i.br, %.noexc86 ], [ %i.bm, %.noexc84 ] ; 2 uses
  invoke void @_ZN6duckdb16DictionaryVector16VerifyDictionaryERKNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(104) %.tr5.i.i)
          to label %.noexc85 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit

.noexc85:                                         ; preds = %tailrecurse.i.i
  %i.bp = getelementptr inbounds nuw i8, ptr %.tr5.i.i, i64 88
  %i.bq = invoke noundef ptr @_ZNK6duckdb10shared_ptrINS_12VectorBufferELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(16) %i.bp)
          to label %.noexc86 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit

.noexc86:                                         ; preds = %.noexc85
  %i.br = getelementptr inbounds nuw i8, ptr %i.bq, i64 48 ; 3 uses
  %i.bs = load i8, ptr %i.br, align 8, !tbaa !38
  %i.bt = icmp eq i8 %i.bs, 3
  br i1 %i.bt, label %tailrecurse.i.i, label %_ZN6duckdb10ListVector7GetDataERNS_6VectorE.exit.i

_ZN6duckdb10ListVector7GetDataERNS_6VectorE.exit.i: ; preds = %.noexc86, %.noexc84
  %.tr.lcssa.i.i = phi ptr [ %i.bm, %.noexc84 ], [ %i.br, %.noexc86 ] ; 2 uses
  invoke void @_ZN6duckdb14ConstantVector16VerifyVectorTypeINS_12list_entry_tEEEvRKNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(104) %.tr.lcssa.i.i)
          to label %.noexc87 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc87:                                         ; preds = %_ZN6duckdb10ListVector7GetDataERNS_6VectorE.exit.i
  %i.bu = getelementptr inbounds nuw i8, ptr %.tr.lcssa.i.i, i64 32
  %i.bv = load ptr, ptr %i.bu, align 8, !tbaa !81
  %i.bw = invoke noundef nonnull align 8 dereferenceable(104) ptr @_ZN6duckdb13VariantVector11GetChildrenERNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(104) %1)
          to label %.noexc88 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 5 uses

.noexc88:                                         ; preds = %.noexc87
  %i.bx = load i8, ptr %i.bw, align 8, !tbaa !38
  %i.by = icmp eq i8 %i.bx, 3
  br i1 %i.by, label %tailrecurse.i66.i, label %_ZN6duckdb10ListVector7GetDataERNS_6VectorE.exit68.i

tailrecurse.i66.i:                                ; preds = %.noexc88, %.noexc90
  %.tr5.i67.i = phi ptr [ %i.cb, %.noexc90 ], [ %i.bw, %.noexc88 ] ; 2 uses
  invoke void @_ZN6duckdb16DictionaryVector16VerifyDictionaryERKNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(104) %.tr5.i67.i)
          to label %.noexc89 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit

.noexc89:                                         ; preds = %tailrecurse.i66.i
  %i.bz = getelementptr inbounds nuw i8, ptr %.tr5.i67.i, i64 88
  %i.ca = invoke noundef ptr @_ZNK6duckdb10shared_ptrINS_12VectorBufferELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(16) %i.bz)
          to label %.noexc90 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit

.noexc90:                                         ; preds = %.noexc89
  %i.cb = getelementptr inbounds nuw i8, ptr %i.ca, i64 48 ; 3 uses
  %i.cc = load i8, ptr %i.cb, align 8, !tbaa !38
  %i.cd = icmp eq i8 %i.cc, 3
  br i1 %i.cd, label %tailrecurse.i66.i, label %_ZN6duckdb10ListVector7GetDataERNS_6VectorE.exit68.i

_ZN6duckdb10ListVector7GetDataERNS_6VectorE.exit68.i: ; preds = %.noexc90, %.noexc88
  %.tr.lcssa.i65.i = phi ptr [ %i.bw, %.noexc88 ], [ %i.cb, %.noexc90 ] ; 2 uses
  invoke void @_ZN6duckdb14ConstantVector16VerifyVectorTypeINS_12list_entry_tEEEvRKNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(104) %.tr.lcssa.i65.i)
          to label %.noexc91 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc91:                                         ; preds = %_ZN6duckdb10ListVector7GetDataERNS_6VectorE.exit68.i
  %i.ce = getelementptr inbounds nuw i8, ptr %.tr.lcssa.i65.i, i64 32
  %i.cf = load ptr, ptr %i.ce, align 8, !tbaa !81
  %i.cg = invoke noundef nonnull align 8 dereferenceable(104) ptr @_ZN6duckdb13VariantVector9GetValuesERNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(104) %1)
          to label %.noexc92 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 5 uses

.noexc92:                                         ; preds = %.noexc91
  %i.ch = load i8, ptr %i.cg, align 8, !tbaa !38
  %i.ci = icmp eq i8 %i.ch, 3
  br i1 %i.ci, label %tailrecurse.i70.i, label %_ZN6duckdb10ListVector7GetDataERNS_6VectorE.exit72.i

tailrecurse.i70.i:                                ; preds = %.noexc92, %.noexc94
  %.tr5.i71.i = phi ptr [ %i.cl, %.noexc94 ], [ %i.cg, %.noexc92 ] ; 2 uses
  invoke void @_ZN6duckdb16DictionaryVector16VerifyDictionaryERKNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(104) %.tr5.i71.i)
          to label %.noexc93 unwind label %.loopexit.split-lp.loopexit

.noexc93:                                         ; preds = %tailrecurse.i70.i
  %i.cj = getelementptr inbounds nuw i8, ptr %.tr5.i71.i, i64 88
  %i.ck = invoke noundef ptr @_ZNK6duckdb10shared_ptrINS_12VectorBufferELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(16) %i.cj)
          to label %.noexc94 unwind label %.loopexit.split-lp.loopexit

.noexc94:                                         ; preds = %.noexc93
  %i.cl = getelementptr inbounds nuw i8, ptr %i.ck, i64 48 ; 3 uses
  %i.cm = load i8, ptr %i.cl, align 8, !tbaa !38
  %i.cn = icmp eq i8 %i.cm, 3
  br i1 %i.cn, label %tailrecurse.i70.i, label %_ZN6duckdb10ListVector7GetDataERNS_6VectorE.exit72.i

_ZN6duckdb10ListVector7GetDataERNS_6VectorE.exit72.i: ; preds = %.noexc94, %.noexc92
  %.tr.lcssa.i69.i = phi ptr [ %i.cg, %.noexc92 ], [ %i.cl, %.noexc94 ] ; 2 uses
  invoke void @_ZN6duckdb14ConstantVector16VerifyVectorTypeINS_12list_entry_tEEEvRKNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(104) %.tr.lcssa.i69.i)
          to label %.noexc95 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc95:                                         ; preds = %_ZN6duckdb10ListVector7GetDataERNS_6VectorE.exit72.i
  %i.co = getelementptr inbounds nuw i8, ptr %.tr.lcssa.i69.i, i64 32
  %i.cp = load ptr, ptr %i.co, align 8, !tbaa !81
  %i.cq = invoke noundef nonnull align 8 dereferenceable(104) ptr @_ZN6duckdb13VariantVector7GetDataERNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(104) %1)
          to label %.noexc96 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 3 uses

.noexc96:                                         ; preds = %.noexc95
  invoke void @_ZN6duckdb14ConstantVector16VerifyVectorTypeINS_8string_tEEEvRKNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(104) %i.cq)
          to label %.noexc97 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc97:                                         ; preds = %.noexc96
  %i.cr = getelementptr inbounds nuw i8, ptr %i.cq, i64 32
  %i.cs = load ptr, ptr %i.cr, align 8, !tbaa !81
  %i.ct = invoke noundef nonnull align 8 dereferenceable(104) ptr @_ZN6duckdb6vectorINS_6VectorELb1ESaIS1_EEixEm(ptr noundef nonnull align 8 dereferenceable(72) %4, i64 noundef 0)
          to label %.noexc98 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 2 uses

.noexc98:                                         ; preds = %.noexc97
  invoke void @_ZN6duckdb14ConstantVector16VerifyVectorTypeIjEEvRKNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(104) %i.ct)
          to label %.noexc99 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc99:                                         ; preds = %.noexc98
  %i.cu = getelementptr inbounds nuw i8, ptr %i.ct, i64 32
  %i.cv = load ptr, ptr %i.cu, align 8, !tbaa !81
  %i.cw = invoke noundef nonnull align 8 dereferenceable(104) ptr @_ZN6duckdb6vectorINS_6VectorELb1ESaIS1_EEixEm(ptr noundef nonnull align 8 dereferenceable(72) %4, i64 noundef 1)
          to label %.noexc100 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 2 uses

.noexc100:                                        ; preds = %.noexc99
  invoke void @_ZN6duckdb14ConstantVector16VerifyVectorTypeIjEEvRKNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(104) %i.cw)
          to label %.noexc101 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc101:                                        ; preds = %.noexc100
  %i.cx = getelementptr inbounds nuw i8, ptr %i.cw, i64 32
  %i.cy = load ptr, ptr %i.cx, align 8, !tbaa !81
  %i.cz = invoke noundef nonnull align 8 dereferenceable(104) ptr @_ZN6duckdb6vectorINS_6VectorELb1ESaIS1_EEixEm(ptr noundef nonnull align 8 dereferenceable(72) %4, i64 noundef 2)
          to label %.noexc102 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 2 uses

.noexc102:                                        ; preds = %.noexc101
  invoke void @_ZN6duckdb14ConstantVector16VerifyVectorTypeIjEEvRKNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(104) %i.cz)
          to label %.noexc103 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc103:                                        ; preds = %.noexc102
  %i.da = getelementptr inbounds nuw i8, ptr %i.cz, i64 32
  %i.db = load ptr, ptr %i.da, align 8, !tbaa !81
  %i.dc = invoke noundef nonnull align 8 dereferenceable(104) ptr @_ZN6duckdb6vectorINS_6VectorELb1ESaIS1_EEixEm(ptr noundef nonnull align 8 dereferenceable(72) %4, i64 noundef 3)
          to label %.noexc104 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 2 uses

.noexc104:                                        ; preds = %.noexc103
  invoke void @_ZN6duckdb14ConstantVector16VerifyVectorTypeIjEEvRKNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(104) %i.dc)
          to label %.noexc105 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc105:                                        ; preds = %.noexc104
  %i.dd = getelementptr inbounds nuw i8, ptr %i.dc, i64 32
  %i.de = load ptr, ptr %i.dd, align 8, !tbaa !81
  %i.df = load i64, ptr %i.ad, align 8, !tbaa !89
  %.not.i = icmp eq i64 %i.df, 0
end_hunk_0
