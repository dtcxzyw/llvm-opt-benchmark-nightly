Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/velox/original/MakeValid?download=true
inline.NumInlined: 730
inline.NumDeleted: 386
begin_hunk_0_@_ZNK4geos4geom15GeometryFactory24createGeometryCollectionINS0_8GeometryEEESt10unique_ptrINS0_18GeometryCollectionESt14default_deleteIS5_EEOSt6vectorIS4_IT_S6_ISA_EESaISC_EE:bb.a
_ZNSt12_Vector_baseISt10unique_ptrIN4geos4geom8GeometryESt14default_deleteIS3_EESaIS6_EEC2EmRKS7_.exit.thread.i.i: ; preds = %.noexc6, %_ZNSt6vectorISt10unique_ptrIN4geos4geom8GeometryESt14default_deleteIS3_EESaIS6_EE17_S_check_init_lenEmRKS7_.exit.i.i
  %i.k = phi ptr [ %i.i, %.noexc6 ], [ null, %_ZNSt6vectorISt10unique_ptrIN4geos4geom8GeometryESt14default_deleteIS3_EESaIS6_EE17_S_check_init_lenEmRKS7_.exit.i.i ]
  %i.l = phi ptr [ %.pre12.i, %.noexc6 ], [ %i.d, %_ZNSt6vectorISt10unique_ptrIN4geos4geom8GeometryESt14default_deleteIS3_EESaIS6_EE17_S_check_init_lenEmRKS7_.exit.i.i ] ; 2 uses
  %i.m = phi ptr [ %.pre.i, %.noexc6 ], [ %i.c, %_ZNSt6vectorISt10unique_ptrIN4geos4geom8GeometryESt14default_deleteIS3_EESaIS6_EE17_S_check_init_lenEmRKS7_.exit.i.i ] ; 2 uses
  %.sink.i.i = phi ptr [ %i.j, %.noexc6 ], [ null, %_ZNSt6vectorISt10unique_ptrIN4geos4geom8GeometryESt14default_deleteIS3_EESaIS6_EE17_S_check_init_lenEmRKS7_.exit.i.i ] ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %3, i64 16
  store ptr %.sink.i.i, ptr %i.o, align 8, !tbaa !20, !alias.scope !191
  store ptr %.sink.i.i, ptr %i.n, align 8, !tbaa !19, !alias.scope !191
  %.not.i = icmp eq ptr %i.m, %i.l
  br i1 %.not.i, label %_ZN4geos4geom8Geometry15toGeometryArrayIS1_EESt6vectorISt10unique_ptrIS1_St14default_deleteIS1_EESaIS7_EEOS3_IS4_IT_S5_ISA_EESaISC_EE.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %_ZNSt12_Vector_baseISt10unique_ptrIN4geos4geom8GeometryESt14default_deleteIS3_EESaIS6_EEC2EmRKS7_.exit.thread.i.i, %_ZNSt10unique_ptrIN4geos4geom8GeometryESt14default_deleteIS2_EEaSEOS5_.exit.i
  %i.p = phi ptr [ %i.y, %_ZNSt10unique_ptrIN4geos4geom8GeometryESt14default_deleteIS2_EEaSEOS5_.exit.i ], [ %i.l, %_ZNSt12_Vector_baseISt10unique_ptrIN4geos4geom8GeometryESt14default_deleteIS3_EESaIS6_EEC2EmRKS7_.exit.thread.i.i ] ; 2 uses
  %i.q = phi ptr [ %i.z, %_ZNSt10unique_ptrIN4geos4geom8GeometryESt14default_deleteIS2_EEaSEOS5_.exit.i ], [ %i.m, %_ZNSt12_Vector_baseISt10unique_ptrIN4geos4geom8GeometryESt14default_deleteIS3_EESaIS6_EEC2EmRKS7_.exit.thread.i.i ]
  %.011.i = phi i64 [ %i.aa, %_ZNSt10unique_ptrIN4geos4geom8GeometryESt14default_deleteIS2_EEaSEOS5_.exit.i ], [ 0, %_ZNSt12_Vector_baseISt10unique_ptrIN4geos4geom8GeometryESt14default_deleteIS3_EESaIS6_EEC2EmRKS7_.exit.thread.i.i ] ; 3 uses
  %i.r = getelementptr inbounds nuw [8 x i8], ptr %i.p, i64 %.011.i ; 2 uses
  %i.s = getelementptr inbounds nuw [8 x i8], ptr %i.k, i64 %.011.i ; 2 uses
  %i.t = load ptr, ptr %i.r, align 8, !tbaa !14, !noalias !191
  store ptr null, ptr %i.r, align 8, !tbaa !14, !noalias !191
  %i.u = load ptr, ptr %i.s, align 8, !tbaa !14, !noalias !191 ; 3 uses
  store ptr %i.t, ptr %i.s, align 8, !tbaa !14, !noalias !191
  %.not.i.i.i.i10.i = icmp eq ptr %i.u, null
  br i1 %.not.i.i.i.i10.i, label %_ZNSt10unique_ptrIN4geos4geom8GeometryESt14default_deleteIS2_EEaSEOS5_.exit.i, label %_ZNKSt14default_deleteIN4geos4geom8GeometryEEclEPS2_.exit.i.i.i.i.i

_ZNKSt14default_deleteIN4geos4geom8GeometryEEclEPS2_.exit.i.i.i.i.i: ; preds = %.lr.ph.i
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !13, !noalias !191
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 8
  %i.x = load ptr, ptr %i.w, align 8, !noalias !191
  tail call void %i.x(ptr noundef nonnull align 8 dereferenceable(40) %i.u) #17, !noalias !191, !inline_history !189
  %.pre13.i = load ptr, ptr %i.b, align 8, !tbaa !19, !noalias !191
  %.pre14.i = load ptr, ptr %2, align 8, !tbaa !21, !noalias !191
  br label %_ZNSt10unique_ptrIN4geos4geom8GeometryESt14default_deleteIS2_EEaSEOS5_.exit.i

_ZNSt10unique_ptrIN4geos4geom8GeometryESt14default_deleteIS2_EEaSEOS5_.exit.i: ; preds = %_ZNKSt14default_deleteIN4geos4geom8GeometryEEclEPS2_.exit.i.i.i.i.i, %.lr.ph.i
  %i.y = phi ptr [ %i.p, %.lr.ph.i ], [ %.pre14.i, %_ZNKSt14default_deleteIN4geos4geom8GeometryEEclEPS2_.exit.i.i.i.i.i ] ; 2 uses
  %i.z = phi ptr [ %i.q, %.lr.ph.i ], [ %.pre13.i, %_ZNKSt14default_deleteIN4geos4geom8GeometryEEclEPS2_.exit.i.i.i.i.i ] ; 2 uses
  %i.aa = add nuw i64 %.011.i, 1                  ; 2 uses
  %i.ab = ptrtoint ptr %i.z to i64
  %i.ac = ptrtoint ptr %i.y to i64
  %i.ad = sub i64 %i.ab, %i.ac
  %i.ae = ashr exact i64 %i.ad, 3
  %i.af = icmp ult i64 %i.aa, %i.ae
  br i1 %i.af, label %.lr.ph.i, label %_ZN4geos4geom8Geometry15toGeometryArrayIS1_EESt6vectorISt10unique_ptrIS1_St14default_deleteIS1_EESaIS7_EEOS3_IS4_IT_S5_ISA_EESaISC_EE.exit, !llvm.loop !190

_ZN4geos4geom8Geometry15toGeometryArrayIS1_EESt6vectorISt10unique_ptrIS1_St14default_deleteIS1_EESaIS7_EEOS3_IS4_IT_S5_ISA_EESaISC_EE.exit: ; preds = %_ZNSt10unique_ptrIN4geos4geom8GeometryESt14default_deleteIS2_EEaSEOS5_.exit.i, %_ZNSt12_Vector_baseISt10unique_ptrIN4geos4geom8GeometryESt14default_deleteIS3_EESaIS6_EEC2EmRKS7_.exit.thread.i.i
  invoke void @_ZN4geos4geom18GeometryCollectionC1EOSt6vectorISt10unique_ptrINS0_8GeometryESt14default_deleteIS4_EESaIS7_EERKNS0_15GeometryFactoryE(ptr noundef nonnull align 8 dereferenceable(64) %i.a, ptr noundef nonnull align 8 dereferenceable(24) %3, ptr noundef nonnull align 8 dereferenceable(45) %1)
          to label %bb.b unwind label %bb.e

bb.b:                                             ; preds = %_ZN4geos4geom8Geometry15toGeometryArrayIS1_EESt6vectorISt10unique_ptrIS1_St14default_deleteIS1_EESaIS7_EEOS3_IS4_IT_S5_ISA_EESaISC_EE.exit
  store ptr %i.a, ptr %0, align 8, !tbaa !39
  %i.ag = load ptr, ptr %3, align 8, !tbaa !21    ; 3 uses
  %i.ah = load ptr, ptr %i.n, align 8, !tbaa !19  ; 2 uses
  %.not4.i.i.i = icmp eq ptr %i.ag, %i.ah
  br i1 %.not4.i.i.i, label %_ZSt8_DestroyIPSt10unique_ptrIN4geos4geom8GeometryESt14default_deleteIS3_EES6_EvT_S8_RSaIT0_E.exit.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.b, %_ZSt8_DestroyISt10unique_ptrIN4geos4geom8GeometryESt14default_deleteIS3_EEEvPT_.exit.i.i.i
  %.05.i.i.i = phi ptr [ %i.am, %_ZSt8_DestroyISt10unique_ptrIN4geos4geom8GeometryESt14default_deleteIS3_EEEvPT_.exit.i.i.i ], [ %i.ag, %bb.b ] ; 2 uses
  %i.ai = load ptr, ptr %.05.i.i.i, align 8, !tbaa !14 ; 3 uses
  %.not.i.i.i.i.i7 = icmp eq ptr %i.ai, null
  br i1 %.not.i.i.i.i.i7, label %_ZSt8_DestroyISt10unique_ptrIN4geos4geom8GeometryESt14default_deleteIS3_EEEvPT_.exit.i.i.i, label %_ZNKSt14default_deleteIN4geos4geom8GeometryEEclEPS2_.exit.i.i.i.i.i8

_ZNKSt14default_deleteIN4geos4geom8GeometryEEclEPS2_.exit.i.i.i.i.i8: ; preds = %.lr.ph.i.i.i
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !13
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 8
  %i.al = load ptr, ptr %i.ak, align 8
  call void %i.al(ptr noundef nonnull align 8 dereferenceable(40) %i.ai) #17, !inline_history !1
  br label %_ZSt8_DestroyISt10unique_ptrIN4geos4geom8GeometryESt14default_deleteIS3_EEEvPT_.exit.i.i.i

_ZSt8_DestroyISt10unique_ptrIN4geos4geom8GeometryESt14default_deleteIS3_EEEvPT_.exit.i.i.i: ; preds = %_ZNKSt14default_deleteIN4geos4geom8GeometryEEclEPS2_.exit.i.i.i.i.i8, %.lr.ph.i.i.i
  %i.am = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.am, %i.ah
  br i1 %.not.i.i.i, label %_ZSt8_DestroyIPSt10unique_ptrIN4geos4geom8GeometryESt14default_deleteIS3_EES6_EvT_S8_RSaIT0_E.exitthread-pre-split.i, label %.lr.ph.i.i.i, !llvm.loop !0

_ZSt8_DestroyIPSt10unique_ptrIN4geos4geom8GeometryESt14default_deleteIS3_EES6_EvT_S8_RSaIT0_E.exitthread-pre-split.i: ; preds = %_ZSt8_DestroyISt10unique_ptrIN4geos4geom8GeometryESt14default_deleteIS3_EEEvPT_.exit.i.i.i
  %.pr.i = load ptr, ptr %3, align 8, !tbaa !21
  br label %_ZSt8_DestroyIPSt10unique_ptrIN4geos4geom8GeometryESt14default_deleteIS3_EES6_EvT_S8_RSaIT0_E.exit.i

_ZSt8_DestroyIPSt10unique_ptrIN4geos4geom8GeometryESt14default_deleteIS3_EES6_EvT_S8_RSaIT0_E.exit.i: ; preds = %_ZSt8_DestroyIPSt10unique_ptrIN4geos4geom8GeometryESt14default_deleteIS3_EES6_EvT_S8_RSaIT0_E.exitthread-pre-split.i, %bb.b
  %i.an = phi ptr [ %.pr.i, %_ZSt8_DestroyIPSt10unique_ptrIN4geos4geom8GeometryESt14default_deleteIS3_EES6_EvT_S8_RSaIT0_E.exitthread-pre-split.i ], [ %i.ag, %bb.b ] ; 2 uses
  %.not.i.i1.i = icmp eq ptr %i.an, null
  br i1 %.not.i.i1.i, label %_ZNSt6vectorISt10unique_ptrIN4geos4geom8GeometryESt14default_deleteIS3_EESaIS6_EED2Ev.exit, label %bb.c

bb.c:                                             ; preds = %_ZSt8_DestroyIPSt10unique_ptrIN4geos4geom8GeometryESt14default_deleteIS3_EES6_EvT_S8_RSaIT0_E.exit.i
  call void @_ZdlPv(ptr noundef nonnull %i.an) #20
  br label %_ZNSt6vectorISt10unique_ptrIN4geos4geom8GeometryESt14default_deleteIS3_EESaIS6_EED2Ev.exit

_ZNSt6vectorISt10unique_ptrIN4geos4geom8GeometryESt14default_deleteIS3_EESaIS6_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPSt10unique_ptrIN4geos4geom8GeometryESt14default_deleteIS3_EES6_EvT_S8_RSaIT0_E.exit.i, %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #17
  ret void

bb.d:                                             ; preds = %.lr.ph.preheader.i.i.i.i.i.i, %.noexc.i
  %i.ao = landingpad { ptr, i32 }
          cleanup
  br label %bb.f

bb.e:                                             ; preds = %_ZN4geos4geom8Geometry15toGeometryArrayIS1_EESt6vectorISt10unique_ptrIS1_St14default_deleteIS1_EESaIS7_EEOS3_IS4_IT_S5_ISA_EESaISC_EE.exit
  %i.ap = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt6vectorISt10unique_ptrIN4geos4geom8GeometryESt14default_deleteIS3_EESaIS6_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %3) #17
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %.pn = phi { ptr, i32 } [ %i.ap, %bb.e ], [ %i.ao, %bb.d ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #17
  call void @_ZdlPv(ptr noundef nonnull %i.a) #20
  resume { ptr, i32 } %.pn
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt6vectorISt10unique_ptrIN4geos4geom8GeometryESt14default_deleteIS3_EESaIS6_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %0) unnamed_addr #8 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !21     ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !19   ; 2 uses
  %.not4.i.i = icmp eq ptr %i.a, %i.c
  br i1 %.not4.i.i, label %_ZSt8_DestroyIPSt10unique_ptrIN4geos4geom8GeometryESt14default_deleteIS3_EES6_EvT_S8_RSaIT0_E.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.a, %_ZSt8_DestroyISt10unique_ptrIN4geos4geom8GeometryESt14default_deleteIS3_EEEvPT_.exit.i.i
  %.05.i.i = phi ptr [ %i.h, %_ZSt8_DestroyISt10unique_ptrIN4geos4geom8GeometryESt14default_deleteIS3_EEEvPT_.exit.i.i ], [ %i.a, %bb.a ] ; 2 uses
  %i.d = load ptr, ptr %.05.i.i, align 8, !tbaa !14 ; 3 uses
  %.not.i.i.i.i = icmp eq ptr %i.d, null
  br i1 %.not.i.i.i.i, label %_ZSt8_DestroyISt10unique_ptrIN4geos4geom8GeometryESt14default_deleteIS3_EEEvPT_.exit.i.i, label %_ZNKSt14default_deleteIN4geos4geom8GeometryEEclEPS2_.exit.i.i.i.i

_ZNKSt14default_deleteIN4geos4geom8GeometryEEclEPS2_.exit.i.i.i.i: ; preds = %.lr.ph.i.i
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !13
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.g = load ptr, ptr %i.f, align 8
  tail call void %i.g(ptr noundef nonnull align 8 dereferenceable(40) %i.d) #17, !inline_history !192
  br label %_ZSt8_DestroyISt10unique_ptrIN4geos4geom8GeometryESt14default_deleteIS3_EEEvPT_.exit.i.i

_ZSt8_DestroyISt10unique_ptrIN4geos4geom8GeometryESt14default_deleteIS3_EEEvPT_.exit.i.i: ; preds = %_ZNKSt14default_deleteIN4geos4geom8GeometryEEclEPS2_.exit.i.i.i.i, %.lr.ph.i.i
  %i.h = getelementptr inbounds nuw i8, ptr %.05.i.i, i64 8 ; 2 uses
  %.not.i.i = icmp eq ptr %i.h, %i.c
  br i1 %.not.i.i, label %_ZSt8_DestroyIPSt10unique_ptrIN4geos4geom8GeometryESt14default_deleteIS3_EES6_EvT_S8_RSaIT0_E.exitthread-pre-split, label %.lr.ph.i.i, !llvm.loop !0

_ZSt8_DestroyIPSt10unique_ptrIN4geos4geom8GeometryESt14default_deleteIS3_EES6_EvT_S8_RSaIT0_E.exitthread-pre-split: ; preds = %_ZSt8_DestroyISt10unique_ptrIN4geos4geom8GeometryESt14default_deleteIS3_EEEvPT_.exit.i.i
  %.pr = load ptr, ptr %0, align 8, !tbaa !21
  br label %_ZSt8_DestroyIPSt10unique_ptrIN4geos4geom8GeometryESt14default_deleteIS3_EES6_EvT_S8_RSaIT0_E.exit

_ZSt8_DestroyIPSt10unique_ptrIN4geos4geom8GeometryESt14default_deleteIS3_EES6_EvT_S8_RSaIT0_E.exit: ; preds = %_ZSt8_DestroyIPSt10unique_ptrIN4geos4geom8GeometryESt14default_deleteIS3_EES6_EvT_S8_RSaIT0_E.exitthread-pre-split, %bb.a
  %i.i = phi ptr [ %.pr, %_ZSt8_DestroyIPSt10unique_ptrIN4geos4geom8GeometryESt14default_deleteIS3_EES6_EvT_S8_RSaIT0_E.exitthread-pre-split ], [ %i.a, %bb.a ] ; 2 uses
  %.not.i.i1 = icmp eq ptr %i.i, null
  br i1 %.not.i.i1, label %_ZNSt12_Vector_baseISt10unique_ptrIN4geos4geom8GeometryESt14default_deleteIS3_EESaIS6_EED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %_ZSt8_DestroyIPSt10unique_ptrIN4geos4geom8GeometryESt14default_deleteIS3_EES6_EvT_S8_RSaIT0_E.exit
  tail call void @_ZdlPv(ptr noundef nonnull %i.i) #20
  br label %_ZNSt12_Vector_baseISt10unique_ptrIN4geos4geom8GeometryESt14default_deleteIS3_EESaIS6_EED2Ev.exit

_ZNSt12_Vector_baseISt10unique_ptrIN4geos4geom8GeometryESt14default_deleteIS3_EESaIS6_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPSt10unique_ptrIN4geos4geom8GeometryESt14default_deleteIS3_EES6_EvT_S8_RSaIT0_E.exit, %bb.b
  ret void
}

; Function Attrs: noreturn
declare void @_ZSt20__throw_length_errorPKc(ptr noundef) local_unnamed_addr #9

; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull ptr @_Znwm(i64 noundef) local_unnamed_addr #10

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPv(ptr noundef) local_unnamed_addr #11

declare void @_ZN4geos4geom18GeometryCollectionC1EOSt6vectorISt10unique_ptrINS0_8GeometryESt14default_deleteIS4_EESaIS7_EERKNS0_15GeometryFactoryE(ptr noundef nonnull align 8 dereferenceable(64), ptr noundef nonnull align 8 dereferenceable(24), ptr noundef nonnull align 8 dereferenceable(45)) unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

; Function Attrs: mustprogress uwtable
define internal fastcc void @_ZN4geos9operation5validL19extractUniquePointsEPKNS_4geom8GeometryE(ptr dead_on_unwind noalias nofree nonnull writable writeonly align 8 captures(none) %0, ptr noundef %1) unnamed_addr #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.std::vector.77", align 8    ; 10 uses
  %3 = alloca %"class.geos::util::UniqueCoordinateArrayFilter", align 8 ; 14 uses
  %4 = alloca %"class.std::vector", align 8       ; 16 uses
  %5 = alloca %"class.std::unique_ptr.38", align 8 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #17
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %2, i8 0, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #17
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN4geos4util27UniqueCoordinateArrayFilterE, i64 16), ptr %3, align 8, !tbaa !13
  %i.a = getelementptr inbounds nuw i8, ptr %3, i64 8
  store ptr %2, ptr %i.a, align 8, !tbaa !208
  %i.b = getelementptr inbounds nuw i8, ptr %3, i64 24 ; 3 uses
  store i32 0, ptr %i.b, align 8, !tbaa !209
  %i.c = getelementptr inbounds nuw i8, ptr %3, i64 32 ; 2 uses
  store ptr null, ptr %i.c, align 8, !tbaa !53
  %i.d = getelementptr inbounds nuw i8, ptr %3, i64 40
  store ptr %i.b, ptr %i.d, align 8, !tbaa !54
  %i.e = getelementptr inbounds nuw i8, ptr %3, i64 48
  store ptr %i.b, ptr %i.e, align 8, !tbaa !210
  %i.f = getelementptr inbounds nuw i8, ptr %3, i64 56
  store i64 0, ptr %i.f, align 8, !tbaa !55
  %i.g = load ptr, ptr %1, align 8, !tbaa !13
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 288
  %i.i = load ptr, ptr %i.h, align 8
  invoke void %i.i(ptr noundef nonnull align 8 dereferenceable(40) %1, ptr noundef nonnull %3)
          to label %bb.b unwind label %bb.e

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #17
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %4, i8 0, i64 24, i1 false)
  %i.j = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !59   ; 2 uses
  %i.l = load ptr, ptr %2, align 8, !tbaa !60     ; 2 uses
  %i.m = ptrtoint ptr %i.k to i64
  %i.n = ptrtoint ptr %i.l to i64
  %i.o = sub i64 %i.m, %i.n                       ; 3 uses
  %i.p = icmp ugt i64 %i.o, 9223372036854775800
  br i1 %i.p, label %.invoke, label %bb.c

.invoke:                                          ; preds = %bb.i, %bb.b
  %i.q = phi ptr [ @.str.2, %bb.b ], [ @.str, %bb.i ]
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull %i.q) #18
          to label %.cont unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.cont:                                            ; preds = %.invoke
  unreachable

bb.c:                                             ; preds = %bb.b
  %i.r = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 3 uses
  %.not48 = icmp eq ptr %i.k, %i.l
  br i1 %.not48, label %_ZNSt6vectorISt10unique_ptrIN4geos4geom8GeometryESt14default_deleteIS3_EESaIS6_EE7reserveEm.exit.thread, label %_ZNSt12_Vector_baseISt10unique_ptrIN4geos4geom8GeometryESt14default_deleteIS3_EESaIS6_EE11_M_allocateEm.exit.i

_ZNSt6vectorISt10unique_ptrIN4geos4geom8GeometryESt14default_deleteIS3_EESaIS6_EE7reserveEm.exit.thread: ; preds = %bb.c
  %6 = getelementptr inbounds nuw i8, ptr %1, i64 24
  %7 = load ptr, ptr %6, align 8, !tbaa !35
  br label %._crit_edge

_ZNSt12_Vector_baseISt10unique_ptrIN4geos4geom8GeometryESt14default_deleteIS3_EESaIS6_EE11_M_allocateEm.exit.i: ; preds = %bb.c
  %i.s = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  %i.t = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.o) #19
          to label %.noexc14 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 8 uses

.noexc14:                                         ; preds = %_ZNSt12_Vector_baseISt10unique_ptrIN4geos4geom8GeometryESt14default_deleteIS3_EESaIS6_EE11_M_allocateEm.exit.i
  %i.u = load ptr, ptr %4, align 8, !tbaa !21     ; 9 uses
  %i.v = load ptr, ptr %i.s, align 8, !tbaa !19   ; 3 uses
  %.not10.i.i.i.i.i = icmp eq ptr %i.u, %i.v
  br i1 %.not10.i.i.i.i.i, label %_ZNSt6vectorISt10unique_ptrIN4geos4geom8GeometryESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit.i, label %iter.check

iter.check:                                       ; preds = %.noexc14
  %i.w = ptrtoaddr ptr %i.v to i64
  %i.x = ptrtoaddr ptr %i.u to i64
  %i.y = add i64 %i.w, -8
  %i.z = sub i64 %i.y, %i.x                       ; 3 uses
  %i.aa = lshr i64 %i.z, 3
  %i.ab = add nuw nsw i64 %i.aa, 1                ; 5 uses
  %min.iters.check = icmp ult i64 %i.z, 24
  br i1 %min.iters.check, label %.lr.ph.i.i.i.i.i.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check49 = icmp ult i64 %i.z, 120
  br i1 %min.iters.check49, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.ac = and i64 %i.ab, 12
  %n.vec = and i64 %i.ab, 4611686018427387888     ; 4 uses
  %i.ad = shl i64 %n.vec, 3                       ; 2 uses
  %i.ae = getelementptr i8, ptr %i.t, i64 %i.ad
  %i.af = getelementptr i8, ptr %i.u, i64 %i.ad
  br label %vector.body

vector.body:                                      ; preds = %vector.ph, %vector.body
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.ag = shl i64 %index, 3                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.t, i64 %i.ag ; 4 uses
  %next.gep50 = getelementptr i8, ptr %i.u, i64 %i.ag ; 8 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !211)
  call void @llvm.experimental.noalias.scope.decl(metadata !212)
  %i.ah = getelementptr i8, ptr %next.gep50, i64 32
  %i.ai = getelementptr i8, ptr %next.gep50, i64 64
  %i.aj = getelementptr i8, ptr %next.gep50, i64 96
  %wide.load = load <4 x i64>, ptr %next.gep50, align 8, !tbaa !14, !alias.scope !212
  %wide.load51 = load <4 x i64>, ptr %i.ah, align 8, !tbaa !14, !alias.scope !212
  %wide.load52 = load <4 x i64>, ptr %i.ai, align 8, !tbaa !14, !alias.scope !212
  %wide.load53 = load <4 x i64>, ptr %i.aj, align 8, !tbaa !14, !alias.scope !212
  %i.ak = getelementptr i8, ptr %next.gep, i64 32
  %i.al = getelementptr i8, ptr %next.gep, i64 64
  %i.am = getelementptr i8, ptr %next.gep, i64 96
  store <4 x i64> %wide.load, ptr %next.gep, align 8, !tbaa !14, !alias.scope !211
  store <4 x i64> %wide.load51, ptr %i.ak, align 8, !tbaa !14, !alias.scope !211
  store <4 x i64> %wide.load52, ptr %i.al, align 8, !tbaa !14, !alias.scope !211
  store <4 x i64> %wide.load53, ptr %i.am, align 8, !tbaa !14, !alias.scope !211
  %i.an = getelementptr i8, ptr %next.gep50, i64 32
  %i.ao = getelementptr i8, ptr %next.gep50, i64 64
  %i.ap = getelementptr i8, ptr %next.gep50, i64 96
  store <4 x ptr> splat (ptr null), ptr %next.gep50, align 8, !tbaa !14, !alias.scope !212
  store <4 x ptr> splat (ptr null), ptr %i.an, align 8, !tbaa !14, !alias.scope !212
  store <4 x ptr> splat (ptr null), ptr %i.ao, align 8, !tbaa !14, !alias.scope !212
  store <4 x ptr> splat (ptr null), ptr %i.ap, align 8, !tbaa !14, !alias.scope !212
  %index.next = add nuw i64 %index, 16            ; 2 uses
  %i.aq = icmp eq i64 %index.next, %n.vec
  br i1 %i.aq, label %middle.block, label %vector.body, !llvm.loop !196

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.ab, %n.vec
  br i1 %cmp.n, label %_ZNSt6vectorISt10unique_ptrIN4geos4geom8GeometryESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit.i, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.ac, 0
  br i1 %min.epilog.iters.check, label %.lr.ph.i.i.i.i.i.preheader, label %vec.epilog.ph, !prof !25

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec55 = and i64 %i.ab, 4611686018427387900   ; 3 uses
  %i.ar = shl i64 %n.vec55, 3                     ; 2 uses
  %i.as = getelementptr i8, ptr %i.t, i64 %i.ar
  %i.at = getelementptr i8, ptr %i.u, i64 %i.ar
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index56 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next60, %vec.epilog.vector.body ] ; 2 uses
  %i.au = shl i64 %index56, 3                     ; 2 uses
  %next.gep57 = getelementptr i8, ptr %i.t, i64 %i.au
  %next.gep58 = getelementptr i8, ptr %i.u, i64 %i.au ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !211)
  call void @llvm.experimental.noalias.scope.decl(metadata !212)
  %wide.load59 = load <4 x i64>, ptr %next.gep58, align 8, !tbaa !14, !alias.scope !212
  store <4 x i64> %wide.load59, ptr %next.gep57, align 8, !tbaa !14, !alias.scope !211
  store <4 x ptr> splat (ptr null), ptr %next.gep58, align 8, !tbaa !14, !alias.scope !212
  %index.next60 = add nuw i64 %index56, 4         ; 2 uses
  %i.av = icmp eq i64 %index.next60, %n.vec55
  br i1 %i.av, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !197

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n61 = icmp eq i64 %i.ab, %n.vec55
  br i1 %cmp.n61, label %_ZNSt6vectorISt10unique_ptrIN4geos4geom8GeometryESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit.i, label %.lr.ph.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.preheader:                       ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.012.i.i.i.i.i.ph = phi ptr [ %i.t, %iter.check ], [ %i.ae, %vec.epilog.iter.check ], [ %i.as, %vec.epilog.middle.block ]
  %.0911.i.i.i.i.i.ph = phi ptr [ %i.u, %iter.check ], [ %i.af, %vec.epilog.iter.check ], [ %i.at, %vec.epilog.middle.block ]
  br label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %.lr.ph.i.i.i.i.i.preheader, %.lr.ph.i.i.i.i.i
  %.012.i.i.i.i.i = phi ptr [ %i.ay, %.lr.ph.i.i.i.i.i ], [ %.012.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.preheader ] ; 2 uses
  %.0911.i.i.i.i.i = phi ptr [ %i.ax, %.lr.ph.i.i.i.i.i ], [ %.0911.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.preheader ] ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !211)
  call void @llvm.experimental.noalias.scope.decl(metadata !212)
  %i.aw = load i64, ptr %.0911.i.i.i.i.i, align 8, !tbaa !14, !alias.scope !212
  store i64 %i.aw, ptr %.012.i.i.i.i.i, align 8, !tbaa !14, !alias.scope !211
  store ptr null, ptr %.0911.i.i.i.i.i, align 8, !tbaa !14, !alias.scope !212
  %i.ax = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i, i64 8 ; 2 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i, i64 8
  %.not.i.i.i.i.i = icmp eq ptr %i.ax, %i.v
  br i1 %.not.i.i.i.i.i, label %_ZNSt6vectorISt10unique_ptrIN4geos4geom8GeometryESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit.i, label %.lr.ph.i.i.i.i.i, !llvm.loop !198

_ZNSt6vectorISt10unique_ptrIN4geos4geom8GeometryESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit.i: ; preds = %.lr.ph.i.i.i.i.i, %middle.block, %vec.epilog.middle.block, %.noexc14
  %.not.i8.i = icmp eq ptr %i.u, null
  br i1 %.not.i8.i, label %_ZNSt12_Vector_baseISt10unique_ptrIN4geos4geom8GeometryESt14default_deleteIS3_EESaIS6_EE13_M_deallocateEPS6_m.exit.i, label %bb.d

bb.d:                                             ; preds = %_ZNSt6vectorISt10unique_ptrIN4geos4geom8GeometryESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit.i
  call void @_ZdlPv(ptr noundef nonnull %i.u) #20
  br label %_ZNSt12_Vector_baseISt10unique_ptrIN4geos4geom8GeometryESt14default_deleteIS3_EESaIS6_EE13_M_deallocateEPS6_m.exit.i

_ZNSt12_Vector_baseISt10unique_ptrIN4geos4geom8GeometryESt14default_deleteIS3_EESaIS6_EE13_M_deallocateEPS6_m.exit.i: ; preds = %_ZNSt6vectorISt10unique_ptrIN4geos4geom8GeometryESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit.i, %bb.d
  store ptr %i.t, ptr %4, align 8, !tbaa !21
  store ptr %i.t, ptr %i.s, align 8, !tbaa !19
  %i.az = getelementptr inbounds nuw i8, ptr %i.t, i64 %i.o
  store ptr %i.az, ptr %i.r, align 8, !tbaa !20
  %.pre = load ptr, ptr %2, align 8, !tbaa !213   ; 2 uses
  %.pre30 = load ptr, ptr %i.j, align 8, !tbaa !213 ; 2 uses
  %8 = getelementptr inbounds nuw i8, ptr %1, i64 24
  %9 = load ptr, ptr %8, align 8, !tbaa !35       ; 3 uses
  %.not27 = icmp eq ptr %.pre, %.pre30
  br i1 %.not27, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %_ZNSt12_Vector_baseISt10unique_ptrIN4geos4geom8GeometryESt14default_deleteIS3_EESaIS6_EE13_M_deallocateEPS6_m.exit.i
  %i.ba = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 3 uses
  br label %bb.f

._crit_edge:                                      ; preds = %_ZNSt6vectorISt10unique_ptrIN4geos4geom8GeometryESt14default_deleteIS3_EESaIS6_EE12emplace_backIJPNS2_5PointEEEEvDpOT_.exit, %_ZNSt6vectorISt10unique_ptrIN4geos4geom8GeometryESt14default_deleteIS3_EESaIS6_EE7reserveEm.exit.thread, %_ZNSt12_Vector_baseISt10unique_ptrIN4geos4geom8GeometryESt14default_deleteIS3_EESaIS6_EE13_M_deallocateEPS6_m.exit.i
  %10 = phi ptr [ %7, %_ZNSt6vectorISt10unique_ptrIN4geos4geom8GeometryESt14default_deleteIS3_EESaIS6_EE7reserveEm.exit.thread ], [ %9, %_ZNSt12_Vector_baseISt10unique_ptrIN4geos4geom8GeometryESt14default_deleteIS3_EESaIS6_EE13_M_deallocateEPS6_m.exit.i ], [ %9, %_ZNSt6vectorISt10unique_ptrIN4geos4geom8GeometryESt14default_deleteIS3_EESaIS6_EE12emplace_backIJPNS2_5PointEEEEvDpOT_.exit ]
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #17
  invoke void @_ZNK4geos4geom15GeometryFactory16createMultiPointEOSt6vectorISt10unique_ptrINS0_8GeometryESt14default_deleteIS4_EESaIS7_EE(ptr dead_on_unwind nonnull writable sret(%"class.std::unique_ptr.38") align 8 %5, ptr noundef nonnull align 8 dereferenceable(45) %10, ptr noundef nonnull align 8 dereferenceable(24) %4)
          to label %_ZNSt10unique_ptrIN4geos4geom10MultiPointESt14default_deleteIS2_EED2Ev.exit unwind label %bb.n

bb.e:                                             ; preds = %bb.a
  %i.bb = landingpad { ptr, i32 }
          cleanup
  br label %bb.o

bb.f:                                             ; preds = %.lr.ph, %_ZNSt6vectorISt10unique_ptrIN4geos4geom8GeometryESt14default_deleteIS3_EESaIS6_EE12emplace_backIJPNS2_5PointEEEEvDpOT_.exit
  %.sroa.024.028 = phi ptr [ %.pre, %.lr.ph ], [ %i.da, %_ZNSt6vectorISt10unique_ptrIN4geos4geom8GeometryESt14default_deleteIS3_EESaIS6_EE12emplace_backIJPNS2_5PointEEEEvDpOT_.exit ] ; 2 uses
  %i.bc = load ptr, ptr %.sroa.024.028, align 8, !tbaa !62
  %i.bd = invoke noundef ptr @_ZNK4geos4geom15GeometryFactory11createPointERKNS0_10CoordinateE(ptr noundef nonnull align 8 dereferenceable(45) %9, ptr noundef nonnull align 8 dereferenceable(24) %i.bc)
          to label %bb.g unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 2 uses

bb.g:                                             ; preds = %bb.f
  %i.be = load ptr, ptr %i.ba, align 8, !tbaa !19 ; 6 uses
  %i.bf = load ptr, ptr %i.r, align 8, !tbaa !20
  %.not.i = icmp eq ptr %i.be, %i.bf
  br i1 %.not.i, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  store ptr %i.bd, ptr %i.be, align 8, !tbaa !14
  %i.bg = getelementptr inbounds nuw i8, ptr %i.be, i64 8
  store ptr %i.bg, ptr %i.ba, align 8, !tbaa !19
  br label %_ZNSt6vectorISt10unique_ptrIN4geos4geom8GeometryESt14default_deleteIS3_EESaIS6_EE12emplace_backIJPNS2_5PointEEEEvDpOT_.exit

bb.i:                                             ; preds = %bb.g
  %i.bh = load ptr, ptr %4, align 8, !tbaa !21    ; 12 uses
  %i.bi = ptrtoint ptr %i.be to i64               ; 3 uses
  %i.bj = ptrtoint ptr %i.bh to i64               ; 3 uses
  %i.bk = sub i64 %i.bi, %i.bj                    ; 3 uses
  %i.bl = icmp eq i64 %i.bk, 9223372036854775800
  br i1 %i.bl, label %.invoke, label %_ZNKSt6vectorISt10unique_ptrIN4geos4geom8GeometryESt14default_deleteIS3_EESaIS6_EE12_M_check_lenEmPKc.exit.i.i

_ZNKSt6vectorISt10unique_ptrIN4geos4geom8GeometryESt14default_deleteIS3_EESaIS6_EE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.i
  %i.bm = ashr exact i64 %i.bk, 3                 ; 3 uses
  %.sroa.speculated.i.i.i = call i64 @llvm.umax.i64(i64 %i.bm, i64 1)
  %i.bn = add nsw i64 %.sroa.speculated.i.i.i, %i.bm ; 2 uses
  %i.bo = icmp ult i64 %i.bn, %i.bm
  %i.bp = call i64 @llvm.umin.i64(i64 %i.bn, i64 1152921504606846975)
  %i.bq = select i1 %i.bo, i64 1152921504606846975, i64 %i.bp ; 3 uses
  %.not.i.i.i = icmp ne i64 %i.bq, 0
  call void @llvm.assume(i1 %.not.i.i.i)
  %i.br = shl nuw nsw i64 %i.bq, 3
  %i.bs = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.br) #19
          to label %.noexc16 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 12 uses

.noexc16:                                         ; preds = %_ZNKSt6vectorISt10unique_ptrIN4geos4geom8GeometryESt14default_deleteIS3_EESaIS6_EE12_M_check_lenEmPKc.exit.i.i
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bs, i64 %i.bk
  store ptr %i.bd, ptr %i.bt, align 8, !tbaa !14
  %.not10.i.i.i.i.i.i = icmp eq ptr %i.bh, %i.be
  br i1 %.not10.i.i.i.i.i.i, label %_ZNSt6vectorISt10unique_ptrIN4geos4geom8GeometryESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22.i.i, label %iter.check85

iter.check85:                                     ; preds = %.noexc16
  %i.bu = add i64 %i.bi, -8
  %i.bv = sub i64 %i.bu, %i.bj                    ; 3 uses
  %i.bw = lshr i64 %i.bv, 3
  %i.bx = add nuw nsw i64 %i.bw, 1                ; 5 uses
  %min.iters.check67 = icmp ult i64 %i.bv, 24
  br i1 %min.iters.check67, label %.lr.ph.i.i.i.i.i.i.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %iter.check85
  %scevgep = getelementptr i8, ptr %i.bs, i64 8
  %i.by = add i64 %i.bi, -8
  %i.bz = sub i64 %i.by, %i.bj
  %i.ca = and i64 %i.bz, -8                       ; 2 uses
  %scevgep64 = getelementptr i8, ptr %scevgep, i64 %i.ca
  %scevgep65 = getelementptr i8, ptr %i.bh, i64 8
  %scevgep66 = getelementptr i8, ptr %scevgep65, i64 %i.ca
  %bound0 = icmp ult ptr %i.bs, %scevgep66
  %bound1 = icmp ult ptr %i.bh, %scevgep64
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.i.i.i.i.i.i.preheader, label %vector.main.loop.iter.check68

vector.main.loop.iter.check68:                    ; preds = %vector.memcheck
  %min.iters.check69 = icmp ult i64 %i.bv, 120
  br i1 %min.iters.check69, label %vec.epilog.ph89, label %vector.ph70

vector.ph70:                                      ; preds = %vector.main.loop.iter.check68
  %i.cb = and i64 %i.bx, 12
  %n.vec71 = and i64 %i.bx, 4611686018427387888   ; 4 uses
  %i.cc = shl i64 %n.vec71, 3                     ; 2 uses
  %i.cd = getelementptr i8, ptr %i.bs, i64 %i.cc  ; 2 uses
  %i.ce = getelementptr i8, ptr %i.bh, i64 %i.cc
  br label %vector.body72

vector.body72:                                    ; preds = %vector.ph70, %vector.body72
  %index73 = phi i64 [ 0, %vector.ph70 ], [ %index.next80, %vector.body72 ] ; 2 uses
  %i.cf = shl i64 %index73, 3                     ; 2 uses
  %next.gep74 = getelementptr i8, ptr %i.bs, i64 %i.cf ; 4 uses
  %next.gep75 = getelementptr i8, ptr %i.bh, i64 %i.cf ; 8 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !214)
  call void @llvm.experimental.noalias.scope.decl(metadata !215)
  %i.cg = getelementptr i8, ptr %next.gep75, i64 32
  %i.ch = getelementptr i8, ptr %next.gep75, i64 64
  %i.ci = getelementptr i8, ptr %next.gep75, i64 96
  %wide.load76 = load <4 x i64>, ptr %next.gep75, align 8, !tbaa !14, !alias.scope !216
  %wide.load77 = load <4 x i64>, ptr %i.cg, align 8, !tbaa !14, !alias.scope !216
  %wide.load78 = load <4 x i64>, ptr %i.ch, align 8, !tbaa !14, !alias.scope !216
  %wide.load79 = load <4 x i64>, ptr %i.ci, align 8, !tbaa !14, !alias.scope !216
  %i.cj = getelementptr i8, ptr %next.gep74, i64 32
  %i.ck = getelementptr i8, ptr %next.gep74, i64 64
  %i.cl = getelementptr i8, ptr %next.gep74, i64 96
  store <4 x i64> %wide.load76, ptr %next.gep74, align 8, !tbaa !14, !alias.scope !217, !noalias !218
  store <4 x i64> %wide.load77, ptr %i.cj, align 8, !tbaa !14, !alias.scope !217, !noalias !218
  store <4 x i64> %wide.load78, ptr %i.ck, align 8, !tbaa !14, !alias.scope !217, !noalias !218
  store <4 x i64> %wide.load79, ptr %i.cl, align 8, !tbaa !14, !alias.scope !217, !noalias !218
  %i.cm = getelementptr i8, ptr %next.gep75, i64 32
  %i.cn = getelementptr i8, ptr %next.gep75, i64 64
  %i.co = getelementptr i8, ptr %next.gep75, i64 96
  store <4 x ptr> splat (ptr null), ptr %next.gep75, align 8, !tbaa !14, !alias.scope !216
  store <4 x ptr> splat (ptr null), ptr %i.cm, align 8, !tbaa !14, !alias.scope !216
  store <4 x ptr> splat (ptr null), ptr %i.cn, align 8, !tbaa !14, !alias.scope !216
  store <4 x ptr> splat (ptr null), ptr %i.co, align 8, !tbaa !14, !alias.scope !216
  %index.next80 = add nuw i64 %index73, 16        ; 2 uses
  %i.cp = icmp eq i64 %index.next80, %n.vec71
  br i1 %i.cp, label %middle.block81, label %vector.body72, !llvm.loop !205

middle.block81:                                   ; preds = %vector.body72
  %cmp.n82 = icmp eq i64 %i.bx, %n.vec71
  br i1 %cmp.n82, label %_ZNSt6vectorISt10unique_ptrIN4geos4geom8GeometryESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22.i.i, label %vec.epilog.iter.check87

vec.epilog.iter.check87:                          ; preds = %middle.block81
  %min.epilog.iters.check88 = icmp eq i64 %i.cb, 0
  br i1 %min.epilog.iters.check88, label %.lr.ph.i.i.i.i.i.i.preheader, label %vec.epilog.ph89, !prof !25

vec.epilog.ph89:                                  ; preds = %vector.main.loop.iter.check68, %vec.epilog.iter.check87
  %vec.epilog.resume.val83 = phi i64 [ %n.vec71, %vec.epilog.iter.check87 ], [ 0, %vector.main.loop.iter.check68 ]
  %n.vec90 = and i64 %i.bx, 4611686018427387900   ; 3 uses
  %i.cq = shl i64 %n.vec90, 3                     ; 2 uses
  %i.cr = getelementptr i8, ptr %i.bs, i64 %i.cq  ; 2 uses
  %i.cs = getelementptr i8, ptr %i.bh, i64 %i.cq
  br label %vec.epilog.vector.body91

vec.epilog.vector.body91:                         ; preds = %vec.epilog.vector.body91, %vec.epilog.ph89
  %index92 = phi i64 [ %vec.epilog.resume.val83, %vec.epilog.ph89 ], [ %index.next96, %vec.epilog.vector.body91 ] ; 2 uses
  %i.ct = shl i64 %index92, 3                     ; 2 uses
  %next.gep93 = getelementptr i8, ptr %i.bs, i64 %i.ct
  %next.gep94 = getelementptr i8, ptr %i.bh, i64 %i.ct ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !214)
  call void @llvm.experimental.noalias.scope.decl(metadata !215)
  %wide.load95 = load <4 x i64>, ptr %next.gep94, align 8, !tbaa !14, !alias.scope !216
  store <4 x i64> %wide.load95, ptr %next.gep93, align 8, !tbaa !14, !alias.scope !217, !noalias !218
  store <4 x ptr> splat (ptr null), ptr %next.gep94, align 8, !tbaa !14, !alias.scope !216
  %index.next96 = add nuw i64 %index92, 4         ; 2 uses
  %i.cu = icmp eq i64 %index.next96, %n.vec90
  br i1 %i.cu, label %vec.epilog.middle.block97, label %vec.epilog.vector.body91, !llvm.loop !206

vec.epilog.middle.block97:                        ; preds = %vec.epilog.vector.body91
  %cmp.n98 = icmp eq i64 %i.bx, %n.vec90
  br i1 %cmp.n98, label %_ZNSt6vectorISt10unique_ptrIN4geos4geom8GeometryESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22.i.i, label %.lr.ph.i.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.i.preheader:                     ; preds = %iter.check85, %vector.memcheck, %vec.epilog.iter.check87, %vec.epilog.middle.block97
  %.012.i.i.i.i.i.i.ph = phi ptr [ %i.bs, %iter.check85 ], [ %i.bs, %vector.memcheck ], [ %i.cd, %vec.epilog.iter.check87 ], [ %i.cr, %vec.epilog.middle.block97 ]
  %.0911.i.i.i.i.i.i.ph = phi ptr [ %i.bh, %iter.check85 ], [ %i.bh, %vector.memcheck ], [ %i.ce, %vec.epilog.iter.check87 ], [ %i.cs, %vec.epilog.middle.block97 ]
  br label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %.lr.ph.i.i.i.i.i.i.preheader, %.lr.ph.i.i.i.i.i.i
  %.012.i.i.i.i.i.i = phi ptr [ %i.cx, %.lr.ph.i.i.i.i.i.i ], [ %.012.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.preheader ] ; 2 uses
  %.0911.i.i.i.i.i.i = phi ptr [ %i.cw, %.lr.ph.i.i.i.i.i.i ], [ %.0911.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.preheader ] ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !214)
  call void @llvm.experimental.noalias.scope.decl(metadata !215)
  %i.cv = load i64, ptr %.0911.i.i.i.i.i.i, align 8, !tbaa !14, !alias.scope !215
  store i64 %i.cv, ptr %.012.i.i.i.i.i.i, align 8, !tbaa !14, !alias.scope !214
  store ptr null, ptr %.0911.i.i.i.i.i.i, align 8, !tbaa !14, !alias.scope !215
  %i.cw = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i, i64 8 ; 2 uses
  %i.cx = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.cw, %i.be
  br i1 %.not.i.i.i.i.i.i, label %_ZNSt6vectorISt10unique_ptrIN4geos4geom8GeometryESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22.i.i, label %.lr.ph.i.i.i.i.i.i, !llvm.loop !207

_ZNSt6vectorISt10unique_ptrIN4geos4geom8GeometryESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22.i.i: ; preds = %.lr.ph.i.i.i.i.i.i, %middle.block81, %vec.epilog.middle.block97, %.noexc16
  %.0.lcssa.i.i.i.i.i.i = phi ptr [ %i.bs, %.noexc16 ], [ %i.cr, %vec.epilog.middle.block97 ], [ %i.cd, %middle.block81 ], [ %i.cx, %.lr.ph.i.i.i.i.i.i ]
  %i.cy = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i, i64 8
  %.not.i23.i.i = icmp eq ptr %i.bh, null
  br i1 %.not.i23.i.i, label %_ZNSt6vectorISt10unique_ptrIN4geos4geom8GeometryESt14default_deleteIS3_EESaIS6_EE17_M_realloc_insertIJPNS2_5PointEEEEvN9__gnu_cxx17__normal_iteratorIPS6_S8_EEDpOT_.exit.i, label %bb.j

bb.j:                                             ; preds = %_ZNSt6vectorISt10unique_ptrIN4geos4geom8GeometryESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22.i.i
  call void @_ZdlPv(ptr noundef nonnull %i.bh) #20
  br label %_ZNSt6vectorISt10unique_ptrIN4geos4geom8GeometryESt14default_deleteIS3_EESaIS6_EE17_M_realloc_insertIJPNS2_5PointEEEEvN9__gnu_cxx17__normal_iteratorIPS6_S8_EEDpOT_.exit.i

_ZNSt6vectorISt10unique_ptrIN4geos4geom8GeometryESt14default_deleteIS3_EESaIS6_EE17_M_realloc_insertIJPNS2_5PointEEEEvN9__gnu_cxx17__normal_iteratorIPS6_S8_EEDpOT_.exit.i: ; preds = %bb.j, %_ZNSt6vectorISt10unique_ptrIN4geos4geom8GeometryESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22.i.i
  store ptr %i.bs, ptr %4, align 8, !tbaa !21
  store ptr %i.cy, ptr %i.ba, align 8, !tbaa !19
  %i.cz = getelementptr inbounds nuw [8 x i8], ptr %i.bs, i64 %i.bq
  store ptr %i.cz, ptr %i.r, align 8, !tbaa !20
  br label %_ZNSt6vectorISt10unique_ptrIN4geos4geom8GeometryESt14default_deleteIS3_EESaIS6_EE12emplace_backIJPNS2_5PointEEEEvDpOT_.exit

_ZNSt6vectorISt10unique_ptrIN4geos4geom8GeometryESt14default_deleteIS3_EESaIS6_EE12emplace_backIJPNS2_5PointEEEEvDpOT_.exit: ; preds = %_ZNSt6vectorISt10unique_ptrIN4geos4geom8GeometryESt14default_deleteIS3_EESaIS6_EE17_M_realloc_insertIJPNS2_5PointEEEEvN9__gnu_cxx17__normal_iteratorIPS6_S8_EEDpOT_.exit.i, %bb.h
  %i.da = getelementptr inbounds nuw i8, ptr %.sroa.024.028, i64 8 ; 2 uses
  %.not = icmp eq ptr %i.da, %.pre30
  br i1 %.not, label %._crit_edge, label %bb.f

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %_ZNKSt6vectorISt10unique_ptrIN4geos4geom8GeometryESt14default_deleteIS3_EESaIS6_EE12_M_check_lenEmPKc.exit.i.i, %bb.f, %.invoke, %_ZNSt12_Vector_baseISt10unique_ptrIN4geos4geom8GeometryESt14default_deleteIS3_EESaIS6_EE11_M_allocateEm.exit.i
  %lpad.loopexit.split-lp101 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp

_ZNSt10unique_ptrIN4geos4geom10MultiPointESt14default_deleteIS2_EED2Ev.exit: ; preds = %._crit_edge
  %i.db = load ptr, ptr %5, align 8, !tbaa !37
  store ptr %i.db, ptr %0, align 8, !tbaa !16
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #17
  %i.dc = load ptr, ptr %4, align 8, !tbaa !21    ; 3 uses
  %i.dd = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.de = load ptr, ptr %i.dd, align 8, !tbaa !19 ; 2 uses
  %.not4.i.i.i = icmp eq ptr %i.dc, %i.de
  br i1 %.not4.i.i.i, label %_ZSt8_DestroyIPSt10unique_ptrIN4geos4geom8GeometryESt14default_deleteIS3_EES6_EvT_S8_RSaIT0_E.exit.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %_ZNSt10unique_ptrIN4geos4geom10MultiPointESt14default_deleteIS2_EED2Ev.exit, %_ZSt8_DestroyISt10unique_ptrIN4geos4geom8GeometryESt14default_deleteIS3_EEEvPT_.exit.i.i.i
  %.05.i.i.i = phi ptr [ %i.dj, %_ZSt8_DestroyISt10unique_ptrIN4geos4geom8GeometryESt14default_deleteIS3_EEEvPT_.exit.i.i.i ], [ %i.dc, %_ZNSt10unique_ptrIN4geos4geom10MultiPointESt14default_deleteIS2_EED2Ev.exit ] ; 2 uses
  %i.df = load ptr, ptr %.05.i.i.i, align 8, !tbaa !14 ; 3 uses
  %.not.i.i.i.i.i18 = icmp eq ptr %i.df, null
  br i1 %.not.i.i.i.i.i18, label %_ZSt8_DestroyISt10unique_ptrIN4geos4geom8GeometryESt14default_deleteIS3_EEEvPT_.exit.i.i.i, label %_ZNKSt14default_deleteIN4geos4geom8GeometryEEclEPS2_.exit.i.i.i.i.i

_ZNKSt14default_deleteIN4geos4geom8GeometryEEclEPS2_.exit.i.i.i.i.i: ; preds = %.lr.ph.i.i.i
  %i.dg = load ptr, ptr %i.df, align 8, !tbaa !13
  %i.dh = getelementptr inbounds nuw i8, ptr %i.dg, i64 8
  %i.di = load ptr, ptr %i.dh, align 8
  call void %i.di(ptr noundef nonnull align 8 dereferenceable(40) %i.df) #17, !inline_history !1
  br label %_ZSt8_DestroyISt10unique_ptrIN4geos4geom8GeometryESt14default_deleteIS3_EEEvPT_.exit.i.i.i

_ZSt8_DestroyISt10unique_ptrIN4geos4geom8GeometryESt14default_deleteIS3_EEEvPT_.exit.i.i.i: ; preds = %_ZNKSt14default_deleteIN4geos4geom8GeometryEEclEPS2_.exit.i.i.i.i.i, %.lr.ph.i.i.i
  %i.dj = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i19 = icmp eq ptr %i.dj, %i.de
  br i1 %.not.i.i.i19, label %_ZSt8_DestroyIPSt10unique_ptrIN4geos4geom8GeometryESt14default_deleteIS3_EES6_EvT_S8_RSaIT0_E.exitthread-pre-split.i, label %.lr.ph.i.i.i, !llvm.loop !0

_ZSt8_DestroyIPSt10unique_ptrIN4geos4geom8GeometryESt14default_deleteIS3_EES6_EvT_S8_RSaIT0_E.exitthread-pre-split.i: ; preds = %_ZSt8_DestroyISt10unique_ptrIN4geos4geom8GeometryESt14default_deleteIS3_EEEvPT_.exit.i.i.i
  %.pr.i = load ptr, ptr %4, align 8, !tbaa !21
  br label %_ZSt8_DestroyIPSt10unique_ptrIN4geos4geom8GeometryESt14default_deleteIS3_EES6_EvT_S8_RSaIT0_E.exit.i

_ZSt8_DestroyIPSt10unique_ptrIN4geos4geom8GeometryESt14default_deleteIS3_EES6_EvT_S8_RSaIT0_E.exit.i: ; preds = %_ZSt8_DestroyIPSt10unique_ptrIN4geos4geom8GeometryESt14default_deleteIS3_EES6_EvT_S8_RSaIT0_E.exitthread-pre-split.i, %_ZNSt10unique_ptrIN4geos4geom10MultiPointESt14default_deleteIS2_EED2Ev.exit
  %i.dk = phi ptr [ %.pr.i, %_ZSt8_DestroyIPSt10unique_ptrIN4geos4geom8GeometryESt14default_deleteIS3_EES6_EvT_S8_RSaIT0_E.exitthread-pre-split.i ], [ %i.dc, %_ZNSt10unique_ptrIN4geos4geom10MultiPointESt14default_deleteIS2_EED2Ev.exit ] ; 2 uses
  %.not.i.i1.i = icmp eq ptr %i.dk, null
  br i1 %.not.i.i1.i, label %_ZNSt6vectorISt10unique_ptrIN4geos4geom8GeometryESt14default_deleteIS3_EESaIS6_EED2Ev.exit, label %bb.k

bb.k:                                             ; preds = %_ZSt8_DestroyIPSt10unique_ptrIN4geos4geom8GeometryESt14default_deleteIS3_EES6_EvT_S8_RSaIT0_E.exit.i
  call void @_ZdlPv(ptr noundef nonnull %i.dk) #20
  br label %_ZNSt6vectorISt10unique_ptrIN4geos4geom8GeometryESt14default_deleteIS3_EESaIS6_EED2Ev.exit

_ZNSt6vectorISt10unique_ptrIN4geos4geom8GeometryESt14default_deleteIS3_EESaIS6_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPSt10unique_ptrIN4geos4geom8GeometryESt14default_deleteIS3_EES6_EvT_S8_RSaIT0_E.exit.i, %bb.k
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #17
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN4geos4util27UniqueCoordinateArrayFilterE, i64 16), ptr %3, align 8, !tbaa !13
  %i.dl = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.dm = load ptr, ptr %i.c, align 8, !tbaa !53
  invoke void @_ZNSt8_Rb_treeIPKN4geos4geom10CoordinateES4_St9_IdentityIS4_ENS1_18CoordinateLessThenESaIS4_EE8_M_eraseEPSt13_Rb_tree_nodeIS4_E(ptr noundef nonnull align 8 dereferenceable(48) %i.dl, ptr noundef %i.dm)
          to label %_ZN4geos4util27UniqueCoordinateArrayFilterD2Ev.exit unwind label %bb.l, !inline_history !63

bb.l:                                             ; preds = %_ZNSt6vectorISt10unique_ptrIN4geos4geom8GeometryESt14default_deleteIS3_EESaIS6_EED2Ev.exit
  %i.dn = landingpad { ptr, i32 }
          catch ptr null
  %i.do = extractvalue { ptr, i32 } %i.dn, 0
  call void @__clang_call_terminate(ptr %i.do) #21, !inline_history !63
  unreachable

_ZN4geos4util27UniqueCoordinateArrayFilterD2Ev.exit: ; preds = %_ZNSt6vectorISt10unique_ptrIN4geos4geom8GeometryESt14default_deleteIS3_EESaIS6_EED2Ev.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #17
  %i.dp = load ptr, ptr %2, align 8, !tbaa !60    ; 2 uses
  %.not.i.i.i20 = icmp eq ptr %i.dp, null
  br i1 %.not.i.i.i20, label %_ZNSt6vectorIPKN4geos4geom10CoordinateESaIS4_EED2Ev.exit, label %bb.m

bb.m:                                             ; preds = %_ZN4geos4util27UniqueCoordinateArrayFilterD2Ev.exit
  call void @_ZdlPv(ptr noundef nonnull %i.dp) #20
  br label %_ZNSt6vectorIPKN4geos4geom10CoordinateESaIS4_EED2Ev.exit

_ZNSt6vectorIPKN4geos4geom10CoordinateESaIS4_EED2Ev.exit: ; preds = %_ZN4geos4util27UniqueCoordinateArrayFilterD2Ev.exit, %bb.m
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #17
  ret void

bb.n:                                             ; preds = %._crit_edge
  %i.dq = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #17
  br label %.loopexit.split-lp

.loopexit.split-lp:                               ; preds = %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %bb.n
  %.pn.pn = phi { ptr, i32 } [ %i.dq, %bb.n ], [ %lpad.loopexit.split-lp101, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ]
  call void @_ZNSt6vectorISt10unique_ptrIN4geos4geom8GeometryESt14default_deleteIS3_EESaIS6_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %4) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #17
  br label %bb.o

bb.o:                                             ; preds = %.loopexit.split-lp, %bb.e
  %.pn.pn.pn = phi { ptr, i32 } [ %.pn.pn, %.loopexit.split-lp ], [ %i.bb, %bb.e ]
  call void @_ZN4geos4util27UniqueCoordinateArrayFilterD2Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %3) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #17
  %i.dr = load ptr, ptr %2, align 8, !tbaa !60    ; 2 uses
  %.not.i.i.i21 = icmp eq ptr %i.dr, null
  br i1 %.not.i.i.i21, label %_ZNSt6vectorIPKN4geos4geom10CoordinateESaIS4_EED2Ev.exit22, label %bb.p

bb.p:                                             ; preds = %bb.o
  call void @_ZdlPv(ptr noundef nonnull %i.dr) #20
  br label %_ZNSt6vectorIPKN4geos4geom10CoordinateESaIS4_EED2Ev.exit22

_ZNSt6vectorIPKN4geos4geom10CoordinateESaIS4_EED2Ev.exit22: ; preds = %bb.o, %bb.p
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #17
  resume { ptr, i32 } %.pn.pn.pn
}

declare void @_ZNK4geos4geom15GeometryFactory13createPolygonEm(ptr dead_on_unwind writable sret(%"class.std::unique_ptr.69") align 8, ptr noundef nonnull align 8 dereferenceable(45), i64 noundef) local_unnamed_addr #2

declare void @_ZN4geos4util9Interrupt7processEv() local_unnamed_addr #2

declare void @_ZN4geos9operation10polygonize9BuildArea5buildEPKNS_4geom8GeometryE(ptr dead_on_unwind writable sret(%"class.std::unique_ptr") align 8, ptr noundef nonnull align 1 dereferenceable(1), ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt6vectorISt10unique_ptrIN4geos4geom8GeometryESt14default_deleteIS3_EESaIS6_EE6resizeEm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !19   ; 7 uses
  %i.c = load ptr, ptr %0, align 8, !tbaa !21     ; 10 uses
  %i.d = ptrtoint ptr %i.b to i64                 ; 3 uses
  %i.e = ptrtoint ptr %i.c to i64                 ; 2 uses
  %i.f = sub i64 %i.d, %i.e                       ; 2 uses
  %i.g = ashr exact i64 %i.f, 3                   ; 7 uses
  %i.h = icmp ugt i64 %1, %i.g
  br i1 %i.h, label %bb.b, label %bb.f

bb.b:                                             ; preds = %bb.a
  %i.i = sub nuw i64 %1, %i.g                     ; 6 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !20
  %i.l = ptrtoint ptr %i.k to i64
  %i.m = sub i64 %i.l, %i.d
  %i.n = ashr exact i64 %i.m, 3                   ; 2 uses
  %i.o = icmp ult i64 %i.g, 1152921504606846976
  tail call void @llvm.assume(i1 %i.o)
  %i.p = xor i64 %i.g, 1152921504606846975        ; 2 uses
  %i.q = icmp ule i64 %i.n, %i.p
  tail call void @llvm.assume(i1 %i.q)
  %.not28.i = icmp ult i64 %i.n, %i.i
  br i1 %.not28.i, label %bb.c, label %_ZSt27__uninitialized_default_n_aIPSt10unique_ptrIN4geos4geom8GeometryESt14default_deleteIS3_EEmS6_ET_S8_T0_RSaIT1_E.exit.i

_ZSt27__uninitialized_default_n_aIPSt10unique_ptrIN4geos4geom8GeometryESt14default_deleteIS3_EEmS6_ET_S8_T0_RSaIT1_E.exit.i: ; preds = %bb.b
  %i.r = shl nuw nsw i64 %i.i, 3                  ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.b, i8 0, i64 %i.r, i1 false), !tbaa !16
  %scevgep.i.i.i.i = getelementptr i8, ptr %i.b, i64 %i.r
  store ptr %scevgep.i.i.i.i, ptr %i.a, align 8, !tbaa !19
  br label %_ZNSt6vectorISt10unique_ptrIN4geos4geom8GeometryESt14default_deleteIS3_EESaIS6_EE17_M_default_appendEm.exit

bb.c:                                             ; preds = %bb.b
  %i.s = icmp ult i64 %i.p, %i.i
  br i1 %i.s, label %bb.d, label %_ZNKSt6vectorISt10unique_ptrIN4geos4geom8GeometryESt14default_deleteIS3_EESaIS6_EE12_M_check_lenEmPKc.exit.i

bb.d:                                             ; preds = %bb.c
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.3) #18
  unreachable

_ZNKSt6vectorISt10unique_ptrIN4geos4geom8GeometryESt14default_deleteIS3_EESaIS6_EE12_M_check_lenEmPKc.exit.i: ; preds = %bb.c
  %.sroa.speculated.i.i = tail call i64 @llvm.umax.i64(i64 %i.g, i64 %i.i)
  %i.t = add nuw nsw i64 %.sroa.speculated.i.i, %i.g
  %i.u = tail call i64 @llvm.umin.i64(i64 %i.t, i64 1152921504606846975) ; 2 uses
  %i.v = shl nuw nsw i64 %i.u, 3
  %i.w = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.v) #19 ; 8 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 %i.f ; 2 uses
  %i.y = shl nuw nsw i64 %i.i, 3
  tail call void @llvm.memset.p0.i64(ptr nonnull align 8 %i.x, i8 0, i64 %i.y, i1 false), !tbaa !16
  %.not10.i.i.i.i.i = icmp eq ptr %i.c, %i.b
  br i1 %.not10.i.i.i.i.i, label %_ZNSt6vectorISt10unique_ptrIN4geos4geom8GeometryESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit.i, label %iter.check

iter.check:                                       ; preds = %_ZNKSt6vectorISt10unique_ptrIN4geos4geom8GeometryESt14default_deleteIS3_EESaIS6_EE12_M_check_lenEmPKc.exit.i
  %i.z = add i64 %i.d, -8
  %i.aa = sub i64 %i.z, %i.e                      ; 3 uses
  %i.ab = lshr i64 %i.aa, 3
  %i.ac = add nuw nsw i64 %i.ab, 1                ; 5 uses
  %min.iters.check = icmp ult i64 %i.aa, 24
  br i1 %min.iters.check, label %.lr.ph.i.i.i.i.i.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check16 = icmp ult i64 %i.aa, 120
  br i1 %min.iters.check16, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.ad = and i64 %i.ac, 12
  %n.vec = and i64 %i.ac, 4611686018427387888     ; 4 uses
  %i.ae = shl i64 %n.vec, 3                       ; 2 uses
  %i.af = getelementptr i8, ptr %i.w, i64 %i.ae
  %i.ag = getelementptr i8, ptr %i.c, i64 %i.ae
  br label %vector.body

vector.body:                                      ; preds = %vector.ph, %vector.body
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.ah = shl i64 %index, 3                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.w, i64 %i.ah ; 4 uses
  %next.gep17 = getelementptr i8, ptr %i.c, i64 %i.ah ; 8 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !226)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !227)
  %i.ai = getelementptr i8, ptr %next.gep17, i64 32
  %i.aj = getelementptr i8, ptr %next.gep17, i64 64
  %i.ak = getelementptr i8, ptr %next.gep17, i64 96
  %wide.load = load <4 x i64>, ptr %next.gep17, align 8, !tbaa !14, !alias.scope !227
  %wide.load18 = load <4 x i64>, ptr %i.ai, align 8, !tbaa !14, !alias.scope !227
  %wide.load19 = load <4 x i64>, ptr %i.aj, align 8, !tbaa !14, !alias.scope !227
end_hunk_0
