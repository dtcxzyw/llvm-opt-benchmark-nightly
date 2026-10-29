Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/proj/original/factory?download=true
inline.NumInlined: 16553
inline.NumDeleted: 4622
loop-unroll.NumCompletelyUnrolled: 127
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 128
begin_hunk_0_@"_ZZNK5osgeo4proj2io16AuthorityFactory30createProjectedCRSFromExistingB5cxx11ERKN7dropbox6oxygen2nnISt10shared_ptrINS0_3crs12ProjectedCRSEEEEENK3$_0clERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE":._crit_edge.i.i
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit67

bb.d:                                             ; preds = %._crit_edge.i.i30
  %i.bc = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.bd = load ptr, ptr %9, align 8, !tbaa !164   ; 2 uses
  %i.be = icmp eq ptr %i.bd, %i.p
  br i1 %i.be, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit61, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i59

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i59: ; preds = %bb.d
  %i.bf = load i64, ptr %i.p, align 8, !tbaa !165
  %i.bg = add i64 %i.bf, 1
  call void @_ZdlPvm(ptr noundef %i.bd, i64 noundef %i.bg) #34
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit61

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit61: ; preds = %bb.d, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i59
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #33
  %i.bh = load ptr, ptr %8, align 8, !tbaa !164   ; 2 uses
  %i.bi = icmp eq ptr %i.bh, %i.m
  br i1 %i.bi, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit64, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i62

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i62: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit61
  %i.bj = load i64, ptr %i.m, align 8, !tbaa !165
  %i.bk = add i64 %i.bj, 1
  call void @_ZdlPvm(ptr noundef %i.bh, i64 noundef %i.bk) #34
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit64

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit64: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit61, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i62
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #33
  %i.bl = load ptr, ptr %2, align 8, !tbaa !164   ; 2 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.bn = icmp eq ptr %i.bl, %i.bm
  br i1 %i.bn, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit67, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i65

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i65: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit64
  %i.bo = load i64, ptr %i.bm, align 8, !tbaa !165
  %i.bp = add i64 %i.bo, 1
  call void @_ZdlPvm(ptr noundef %i.bl, i64 noundef %i.bp) #34
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit67

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit67: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit64, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i65, %bb.c
  %.pn.pn.pn = phi { ptr, i32 } [ %i.bb, %bb.c ], [ %i.bc, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i65 ], [ %i.bc, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit64 ] ; 2 uses
  %i.bq = load ptr, ptr %7, align 8, !tbaa !164   ; 2 uses
  %i.br = icmp eq ptr %i.bq, %i.j
  br i1 %i.br, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit70, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i68

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i68: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit67
  %i.bs = load i64, ptr %i.j, align 8, !tbaa !165
  %i.bt = add i64 %i.bs, 1
  call void @_ZdlPvm(ptr noundef %i.bq, i64 noundef %i.bt) #34
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit70

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit70: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit67, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i68
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #33
  %i.bu = load ptr, ptr %6, align 8, !tbaa !164   ; 2 uses
  %i.bv = icmp eq ptr %i.bu, %i.g
  br i1 %i.bv, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit73, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i71

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i71: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit70
  %i.bw = load i64, ptr %i.g, align 8, !tbaa !165
  %i.bx = add i64 %i.bw, 1
  call void @_ZdlPvm(ptr noundef %i.bu, i64 noundef %i.bx) #34
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit73

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit73: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit70, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i71
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #33
  %i.by = load ptr, ptr %3, align 8, !tbaa !164   ; 2 uses
  %i.bz = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.ca = icmp eq ptr %i.by, %i.bz
  br i1 %i.ca, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit76, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i74

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i74: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit73
  %i.cb = load i64, ptr %i.bz, align 8, !tbaa !165
  %i.cc = add i64 %i.cb, 1
  call void @_ZdlPvm(ptr noundef %i.by, i64 noundef %i.cc) #34
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit76

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit76: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit73, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i74, %bb.b
  %.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %i.ba, %bb.b ], [ %.pn.pn.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i74 ], [ %.pn.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit73 ]
  %i.cd = load ptr, ptr %5, align 8, !tbaa !164   ; 2 uses
  %i.ce = icmp eq ptr %i.cd, %i.d
  br i1 %i.ce, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit79, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i77

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i77: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit76
  %i.cf = load i64, ptr %i.d, align 8, !tbaa !165
  %i.cg = add i64 %i.cf, 1
  call void @_ZdlPvm(ptr noundef %i.cd, i64 noundef %i.cg) #34
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit79

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit79: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit76, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i77
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #33
  %i.ch = load ptr, ptr %4, align 8, !tbaa !164   ; 2 uses
  %i.ci = icmp eq ptr %i.ch, %i.a
  br i1 %i.ci, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit82, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i80

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i80: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit79
  %i.cj = load i64, ptr %i.a, align 8, !tbaa !165
  %i.ck = add i64 %i.cj, 1
  call void @_ZdlPvm(ptr noundef %i.ch, i64 noundef %i.ck) #34
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit82

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit82: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit79, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i80
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #33
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #33
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #33
  resume { ptr, i32 } %.pn.pn.pn.pn.pn.pn
}

; Function Attrs: nounwind
declare noundef ptr @_ZN5osgeo4proj9operation10getMappingEPKNS1_15OperationMethodE(ptr noundef) local_unnamed_addr #0

declare hidden noundef zeroext i1 @_ZNK5osgeo4proj5datum9Ellipsoid25lookForProjWellKnownEllpsERNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_(ptr noundef nonnull align 8 dereferenceable(64), ptr noundef nonnull align 8 dereferenceable(32), ptr noundef nonnull align 8 dereferenceable(32)) local_unnamed_addr #3

declare hidden noundef ptr @_ZNK5osgeo4proj9operation10Conversion21getWKT1GDALMethodNameEv(ptr noundef nonnull align 8 dereferenceable(24)) local_unnamed_addr #3

declare hidden noundef ptr @_ZNK5osgeo4proj9operation10Conversion17getESRIMethodNameEv(ptr noundef nonnull align 8 dereferenceable(24)) local_unnamed_addr #3

; Function Attrs: nounwind
declare noundef nonnull align 8 dereferenceable(24) ptr @_ZNK5osgeo4proj9operation15SingleOperation21parameterValueMeasureEi(ptr noundef nonnull align 8 dereferenceable(16), i32 noundef) local_unnamed_addr #0

; Function Attrs: mustprogress nofree nounwind willreturn memory(read)
declare noundef zeroext i1 @_ZNK5osgeo4proj6common7MeasureeqERKS2_(ptr noundef nonnull align 8 dereferenceable(24), ptr noundef nonnull align 8 dereferenceable(24)) local_unnamed_addr #17

; Function Attrs: nounwind
declare noundef nonnull align 8 dereferenceable(24) ptr @_ZNK5osgeo4proj9operation15SingleOperation21parameterValueMeasureERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEi(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef nonnull align 8 dereferenceable(32), i32 noundef) local_unnamed_addr #0

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNSt7__cxx1110_List_baseIN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj3crs12ProjectedCRSEEEESaISA_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %0) unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !182    ; 2 uses
  %.not8.i = icmp eq ptr %i.a, %0
  br i1 %.not8.i, label %_ZNSt7__cxx1110_List_baseIN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj3crs12ProjectedCRSEEEESaISA_EE8_M_clearEv.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.a, %_ZN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj3crs12ProjectedCRSEEED2Ev.exit.i
  %.09.i = phi ptr [ %i.b, %_ZN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj3crs12ProjectedCRSEEED2Ev.exit.i ], [ %i.a, %bb.a ] ; 3 uses
  %i.b = load ptr, ptr %.09.i, align 8, !tbaa !182 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %.09.i, i64 24
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !223  ; 8 uses
  %.not.i.i.i.i = icmp eq ptr %i.d, null
  br i1 %.not.i.i.i.i, label %_ZN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj3crs12ProjectedCRSEEED2Ev.exit.i, label %bb.b

bb.b:                                             ; preds = %.lr.ph.i
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 8 ; 4 uses
  %i.f = load atomic i64, ptr %i.e acquire, align 8 ; 2 uses
  %i.g = icmp eq i64 %i.f, 4294967297
  %i.h = trunc i64 %i.f to i32                    ; 2 uses
  br i1 %i.g, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  store i32 0, ptr %i.e, align 8, !tbaa !227
  %i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 12
  store i32 0, ptr %i.i, align 4, !tbaa !228
  %i.j = load ptr, ptr %i.d, align 8, !tbaa !201
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  %i.l = load ptr, ptr %i.k, align 8
  tail call void %i.l(ptr noundef nonnull align 8 dereferenceable(16) %i.d) #33, !inline_history !2419
  %i.m = load ptr, ptr %i.d, align 8, !tbaa !201
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 24
  %i.o = load ptr, ptr %i.n, align 8
  tail call void %i.o(ptr noundef nonnull align 8 dereferenceable(16) %i.d) #33, !inline_history !2419
  br label %_ZN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj3crs12ProjectedCRSEEED2Ev.exit.i

bb.d:                                             ; preds = %bb.b
  %i.p = load i8, ptr @__libc_single_threaded, align 1, !tbaa !165
  %.not.i.i.i.i.i = icmp eq i8 %i.p, 0
  br i1 %.not.i.i.i.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.q = add nsw i32 %i.h, -1
  store i32 %i.q, ptr %i.e, align 8, !tbaa !225
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i

bb.f:                                             ; preds = %bb.d
  %i.r = atomicrmw volatile add ptr %i.e, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i: ; preds = %bb.f, %bb.e
  %.0.i.i.i.i.i.i = phi i32 [ %i.h, %bb.e ], [ %i.r, %bb.f ]
  %i.s = icmp eq i32 %.0.i.i.i.i.i.i, 1
  br i1 %i.s, label %bb.g, label %_ZN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj3crs12ProjectedCRSEEED2Ev.exit.i, !prof !214

bb.g:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.d) #33
  br label %_ZN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj3crs12ProjectedCRSEEED2Ev.exit.i

_ZN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj3crs12ProjectedCRSEEED2Ev.exit.i: ; preds = %bb.g, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i, %bb.c, %.lr.ph.i
  tail call void @_ZdlPvm(ptr noundef nonnull %.09.i, i64 noundef 32) #34
  %.not.i = icmp eq ptr %i.b, %0
  br i1 %.not.i, label %_ZNSt7__cxx1110_List_baseIN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj3crs12ProjectedCRSEEEESaISA_EE8_M_clearEv.exit, label %.lr.ph.i, !llvm.loop !2420

_ZNSt7__cxx1110_List_baseIN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj3crs12ProjectedCRSEEEESaISA_EE8_M_clearEv.exit: ; preds = %_ZN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj3crs12ProjectedCRSEEED2Ev.exit.i, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define hidden void @_ZNK5osgeo4proj2io16AuthorityFactory29createCompoundCRSFromExistingB5cxx11ERKN7dropbox6oxygen2nnISt10shared_ptrINS0_3crs11CompoundCRSEEEE(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::list.1080") align 8 %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %1, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %2) local_unnamed_addr #6 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 5 uses
  %3 = alloca %"class.std::shared_ptr.231", align 8 ; 8 uses
  %4 = alloca %"class.std::__cxx11::list.682", align 8 ; 13 uses
  %5 = alloca %"class.std::__cxx11::list.682", align 8 ; 15 uses
  %6 = alloca %"class.std::__cxx11::basic_string", align 8 ; 16 uses
  %7 = alloca %"class.std::__cxx11::list.20", align 8 ; 17 uses
  %8 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %9 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %10 = alloca %"class.std::__cxx11::list", align 8 ; 11 uses
  %11 = alloca %"class.dropbox::oxygen::nn.664", align 16 ; 8 uses
  %12 = alloca %"class.dropbox::oxygen::nn.230", align 8 ; 8 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %0, ptr %i.b, align 8, !tbaa !181
  store ptr %0, ptr %0, align 8, !tbaa !182
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  store i64 0, ptr %i.c, align 8, !tbaa !184
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #33
  %i.d = load ptr, ptr %1, align 8, !tbaa !402    ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2432)
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 48
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2433)
  %i.f = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.d, i64 56
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !327, !noalias !2434 ; 3 uses
  store ptr %i.h, ptr %i.f, align 8, !tbaa !223, !alias.scope !2434
  %.not.i.i.i.i.i = icmp eq ptr %i.h, null
  br i1 %.not.i.i.i.i.i, label %_ZN5osgeo4proj2io16AuthorityFactory7Private17getSharedFromThisEv.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 8 ; 3 uses
  %i.j = load atomic i32, ptr %i.i monotonic, align 8, !noalias !2434
  br label %bb.c

bb.c:                                             ; preds = %bb.d, %bb.b
  %.06.i.i.i.i.i.i = phi i32 [ %i.j, %bb.b ], [ %i.n, %bb.d ] ; 3 uses
  %.not.not.not.i.not.i.i.i.i.i = icmp eq i32 %.06.i.i.i.i.i.i, 0
  br i1 %.not.not.not.i.not.i.i.i.i.i, label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE23_M_add_ref_lock_nothrowEv.exit.i.i.i.i.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.k = add nsw i32 %.06.i.i.i.i.i.i, 1
  %i.l = cmpxchg weak ptr %i.i, i32 %.06.i.i.i.i.i.i, i32 %i.k acq_rel monotonic, align 8, !noalias !2434 ; 2 uses
  %i.m = extractvalue { i32, i1 } %i.l, 1
  %i.n = extractvalue { i32, i1 } %i.l, 0
  br i1 %i.m, label %_ZNKSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EE16_M_get_use_countEv.exit.i.i.i.i, label %bb.c, !llvm.loop !36

_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE23_M_add_ref_lock_nothrowEv.exit.i.i.i.i.i: ; preds = %bb.c
  store ptr null, ptr %i.f, align 8, !tbaa !223, !alias.scope !2434
  br label %_ZN5osgeo4proj2io16AuthorityFactory7Private17getSharedFromThisEv.exit

_ZNKSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EE16_M_get_use_countEv.exit.i.i.i.i: ; preds = %bb.d
  %i.o = load atomic i32, ptr %i.i monotonic, align 8, !noalias !2434
  %.not.i.i.i.i = icmp eq i32 %i.o, 0
  br i1 %.not.i.i.i.i, label %_ZN5osgeo4proj2io16AuthorityFactory7Private17getSharedFromThisEv.exit, label %bb.e

bb.e:                                             ; preds = %_ZNKSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EE16_M_get_use_countEv.exit.i.i.i.i
  %i.p = load ptr, ptr %i.e, align 8, !tbaa !404, !noalias !2434
  br label %_ZN5osgeo4proj2io16AuthorityFactory7Private17getSharedFromThisEv.exit

_ZN5osgeo4proj2io16AuthorityFactory7Private17getSharedFromThisEv.exit: ; preds = %bb.a, %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE23_M_add_ref_lock_nothrowEv.exit.i.i.i.i.i, %_ZNKSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EE16_M_get_use_countEv.exit.i.i.i.i, %bb.e
  %i.q = phi ptr [ %i.p, %bb.e ], [ null, %_ZNKSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EE16_M_get_use_countEv.exit.i.i.i.i ], [ null, %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE23_M_add_ref_lock_nothrowEv.exit.i.i.i.i.i ], [ null, %bb.a ]
  store ptr %i.q, ptr %3, align 8, !tbaa !400, !alias.scope !2434
  %i.r = load ptr, ptr %2, align 8, !tbaa !535
  %i.s = tail call noundef nonnull align 8 dereferenceable(24) ptr @_ZNK5osgeo4proj3crs11CompoundCRS25componentReferenceSystemsEv(ptr noundef nonnull align 8 dereferenceable(80) %i.r) #38 ; 4 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !576
  %i.v = load ptr, ptr %i.s, align 8, !tbaa !577
  %i.w = ptrtoint ptr %i.u to i64
  %i.x = ptrtoint ptr %i.v to i64
  %i.y = sub i64 %i.w, %i.x
  %.not = icmp eq i64 %i.y, 32
  br i1 %.not, label %bb.f, label %bb.bs

bb.f:                                             ; preds = %_ZN5osgeo4proj2io16AuthorityFactory7Private17getSharedFromThisEv.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #33
  %i.z = load ptr, ptr %i.s, align 8, !tbaa !577
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !508
  invoke void @_ZNK5osgeo4proj3crs3CRS8identifyB5cxx11ERKSt10shared_ptrINS0_2io16AuthorityFactoryEE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::list.682") align 8 %4, ptr noundef nonnull align 8 dereferenceable(64) %i.aa, ptr noundef nonnull align 8 dereferenceable(16) %3)
          to label %bb.g unwind label %bb.i

bb.g:                                             ; preds = %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #33
  %i.ab = load ptr, ptr %i.s, align 8, !tbaa !577
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 16
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !508
  invoke void @_ZNK5osgeo4proj3crs3CRS8identifyB5cxx11ERKSt10shared_ptrINS0_2io16AuthorityFactoryEE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::list.682") align 8 %5, ptr noundef nonnull align 8 dereferenceable(64) %i.ad, ptr noundef nonnull align 8 dereferenceable(16) %3)
          to label %bb.h unwind label %bb.j

bb.h:                                             ; preds = %bb.g
  %i.ae = load ptr, ptr %4, align 8, !tbaa !182
  %i.af = icmp eq ptr %i.ae, %4
  %i.ag = load ptr, ptr %5, align 8               ; 2 uses
  %i.ah = icmp eq ptr %i.ag, %5
  %or.cond = select i1 %i.af, i1 %i.ah, i1 false
  br i1 %or.cond, label %bb.bd, label %.noexc.i

bb.i:                                             ; preds = %bb.f
  %i.ai = landingpad { ptr, i32 }
          cleanup
  br label %bb.br

bb.j:                                             ; preds = %bb.g
  %i.aj = landingpad { ptr, i32 }
          cleanup
  br label %bb.bq

.noexc.i:                                         ; preds = %bb.h
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #33
  %i.ak = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 6 uses
  store ptr %i.ak, ptr %6, align 8, !tbaa !166
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #33
  store i64 66, ptr %i.a, align 8, !tbaa !168
  %i.al = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0)
          to label %.noexc unwind label %bb.n     ; 3 uses

.noexc:                                           ; preds = %.noexc.i
  store ptr %i.al, ptr %6, align 8, !tbaa !164
  %i.am = load i64, ptr %i.a, align 8, !tbaa !168 ; 3 uses
  store i64 %i.am, ptr %i.ak, align 8, !tbaa !165
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(66) %i.al, ptr noundef nonnull align 1 dereferenceable(66) @.str.546, i64 66, i1 false)
  %i.an = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 6 uses
  store i64 %i.am, ptr %i.an, align 8, !tbaa !167
  %i.ao = getelementptr inbounds nuw i8, ptr %i.al, i64 %i.am
  store i8 0, ptr %i.ao, align 1, !tbaa !165
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #33
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #33
  %i.ap = getelementptr inbounds nuw i8, ptr %7, i64 8
  store ptr %7, ptr %i.ap, align 8, !tbaa !181
  store ptr %7, ptr %7, align 8, !tbaa !182
  %i.aq = getelementptr inbounds nuw i8, ptr %7, i64 16
  store i64 0, ptr %i.aq, align 8, !tbaa !184
  %i.ar = load ptr, ptr %4, align 8, !tbaa !182
  %i.as = icmp eq ptr %i.ar, %4
  br i1 %i.as, label %bb.q, label %bb.k

bb.k:                                             ; preds = %.noexc
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #33
  invoke fastcc void @_ZN5osgeo4proj2ioL27buildSqlLookForAuthNameCodeERKNSt7__cxx114listISt4pairIN7dropbox6oxygen2nnISt10shared_ptrINS0_3crs3CRSEEEEiESaISD_EEERNS3_INS1_9SQLValuesESaISI_EEEPKc(ptr dead_on_unwind noalias writable align 8 %8, ptr noundef nonnull align 8 dereferenceable(24) %4, ptr noundef nonnull align 8 dereferenceable(24) %7, ptr noundef nonnull @.str.547)
          to label %bb.l unwind label %bb.o

bb.l:                                             ; preds = %bb.k
  %i.at = getelementptr inbounds nuw i8, ptr %8, i64 8
  %i.au = load i64, ptr %i.at, align 8, !tbaa !167 ; 2 uses
  %i.av = load i64, ptr %i.an, align 8, !tbaa !167
  %i.aw = sub i64 4611686018427387903, %i.av
  %i.ax = icmp ult i64 %i.aw, %i.au
  br i1 %i.ax, label %bb.m, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i

bb.m:                                             ; preds = %bb.l
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.613) #36
          to label %.noexc39 unwind label %bb.p

.noexc39:                                         ; preds = %bb.m
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i: ; preds = %bb.l
  %i.ay = load ptr, ptr %8, align 8, !tbaa !164
  %i.az = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef %i.ay, i64 noundef %i.au)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit unwind label %bb.p ; 0 uses

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i
  %i.ba = load ptr, ptr %8, align 8, !tbaa !164   ; 2 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 2 uses
  %i.bc = icmp eq ptr %i.ba, %i.bb
  br i1 %i.bc, label %bb.r, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit
  %i.bd = load i64, ptr %i.bb, align 8, !tbaa !165
  %i.be = add i64 %i.bd, 1
  call void @_ZdlPvm(ptr noundef %i.ba, i64 noundef %i.be) #34
  br label %bb.r

bb.n:                                             ; preds = %.noexc.i
  %i.bf = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit89

bb.o:                                             ; preds = %bb.k
  %i.bg = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit43

bb.p:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i, %bb.m
  %i.bh = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.bi = load ptr, ptr %8, align 8, !tbaa !164   ; 2 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 2 uses
  %i.bk = icmp eq ptr %i.bi, %i.bj
  br i1 %i.bk, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit43, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i41

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i41: ; preds = %bb.p
  %i.bl = load i64, ptr %i.bj, align 8, !tbaa !165
  %i.bm = add i64 %i.bl, 1
  call void @_ZdlPvm(ptr noundef %i.bi, i64 noundef %i.bm) #34
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit43

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit43: ; preds = %bb.p, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i41, %bb.o
  %.pn = phi { ptr, i32 } [ %i.bg, %bb.o ], [ %i.bh, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i41 ], [ %i.bh, %bb.p ]
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #33
  br label %bb.bc

bb.q:                                             ; preds = %.noexc
  %i.bn = load ptr, ptr %5, align 8, !tbaa !182
  %i.bo = icmp eq ptr %i.bn, %5
  br i1 %i.bo, label %bb.y, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit

bb.r:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #33
  %13 = load ptr, ptr %5, align 8, !tbaa !182
  %14 = icmp eq ptr %13, %5
  br i1 %14, label %bb.y, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.bp = load i64, ptr %i.an, align 8, !tbaa !167
  %i.bq = add i64 %i.bp, -4611686018427387899
  %i.br = icmp ult i64 %i.bq, 5
  br i1 %i.br, label %.invoke, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i: ; preds = %bb.s
  %i.bs = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef nonnull @.str.476, i64 noundef 5)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit unwind label %bb.t ; 0 uses

bb.t:                                             ; preds = %.invoke, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit63, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i60, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i56, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i
  %i.bt = landingpad { ptr, i32 }
          cleanup
  br label %bb.bc

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i, %bb.q
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #33
  invoke fastcc void @_ZN5osgeo4proj2ioL27buildSqlLookForAuthNameCodeERKNSt7__cxx114listISt4pairIN7dropbox6oxygen2nnISt10shared_ptrINS0_3crs3CRSEEEEiESaISD_EEERNS3_INS1_9SQLValuesESaISI_EEEPKc(ptr dead_on_unwind noalias writable align 8 %9, ptr noundef nonnull align 8 dereferenceable(24) %5, ptr noundef nonnull align 8 dereferenceable(24) %7, ptr noundef nonnull @.str.548)
          to label %bb.u unwind label %bb.w

bb.u:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit
  %i.bu = getelementptr inbounds nuw i8, ptr %9, i64 8
  %i.bv = load i64, ptr %i.bu, align 8, !tbaa !167 ; 2 uses
  %i.bw = load i64, ptr %i.an, align 8, !tbaa !167
  %i.bx = sub i64 4611686018427387903, %i.bw
  %i.by = icmp ult i64 %i.bx, %i.bv
  br i1 %i.by, label %bb.v, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i46

bb.v:                                             ; preds = %bb.u
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.613) #36
          to label %.noexc47 unwind label %bb.x

.noexc47:                                         ; preds = %bb.v
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i46: ; preds = %bb.u
  %i.bz = load ptr, ptr %9, align 8, !tbaa !164
  %i.ca = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef %i.bz, i64 noundef %i.bv)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit49 unwind label %bb.x ; 0 uses

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit49: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i46
  %i.cb = load ptr, ptr %9, align 8, !tbaa !164   ; 2 uses
  %i.cc = getelementptr inbounds nuw i8, ptr %9, i64 16 ; 2 uses
  %i.cd = icmp eq ptr %i.cb, %i.cc
  br i1 %i.cd, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit52, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i50

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i50: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit49
  %i.ce = load i64, ptr %i.cc, align 8, !tbaa !165
  %i.cf = add i64 %i.ce, 1
  call void @_ZdlPvm(ptr noundef %i.cb, i64 noundef %i.cf) #34
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit52

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit52: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit49, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i50
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #33
  br label %bb.y

bb.w:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit
  %i.cg = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit55

bb.x:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i46, %bb.v
  %i.ch = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ci = load ptr, ptr %9, align 8, !tbaa !164   ; 2 uses
  %i.cj = getelementptr inbounds nuw i8, ptr %9, i64 16 ; 2 uses
  %i.ck = icmp eq ptr %i.ci, %i.cj
  br i1 %i.ck, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit55, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i53

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i53: ; preds = %bb.x
  %i.cl = load i64, ptr %i.cj, align 8, !tbaa !165
  %i.cm = add i64 %i.cl, 1
  call void @_ZdlPvm(ptr noundef %i.ci, i64 noundef %i.cm) #34
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit55

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit55: ; preds = %bb.x, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i53, %bb.w
  %.pn29 = phi { ptr, i32 } [ %i.cg, %bb.w ], [ %i.ch, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i53 ], [ %i.ch, %bb.x ]
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #33
  br label %bb.bc

bb.y:                                             ; preds = %bb.r, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit52, %bb.q
  %.1 = phi i1 [ false, %bb.q ], [ true, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit52 ], [ true, %bb.r ]
  %i.cn = load ptr, ptr %1, align 8, !tbaa !402   ; 4 uses
  %i.co = getelementptr inbounds nuw i8, ptr %i.cn, i64 24
  %i.cp = load i64, ptr %i.co, align 8, !tbaa !167
  switch i64 %i.cp, label %_ZNK5osgeo4proj2io16AuthorityFactory7Private23hasAuthorityRestrictionEv.exit.thread [
    i64 0, label %_ZNK5osgeo4proj2io16AuthorityFactory7Private23hasAuthorityRestrictionEv.exit.thread110
    i64 3, label %_ZNK5osgeo4proj2io16AuthorityFactory7Private23hasAuthorityRestrictionEv.exit
  ]

_ZNK5osgeo4proj2io16AuthorityFactory7Private23hasAuthorityRestrictionEv.exit: ; preds = %bb.y
  %i.cq = getelementptr inbounds nuw i8, ptr %i.cn, i64 16
  %i.cr = load ptr, ptr %i.cq, align 8, !tbaa !164 ; 2 uses
  %i.cs = load i16, ptr %i.cr, align 1
  %i.ct = xor i16 %i.cs, 28257
  %i.cu = getelementptr i8, ptr %i.cr, i64 2
  %i.cv = load i8, ptr %i.cu, align 1
  %i.cw = zext i8 %i.cv to i16
  %i.cx = xor i16 %i.cw, 121
  %i.cy = or i16 %i.ct, %i.cx
  %i.cz = icmp ne i16 %i.cy, 0
  %i.da = zext i1 %i.cz to i32
  %.not112 = icmp eq i32 %i.da, 0
  br i1 %.not112, label %_ZNK5osgeo4proj2io16AuthorityFactory7Private23hasAuthorityRestrictionEv.exit.thread110, label %_ZNK5osgeo4proj2io16AuthorityFactory7Private23hasAuthorityRestrictionEv.exit.thread

_ZNK5osgeo4proj2io16AuthorityFactory7Private23hasAuthorityRestrictionEv.exit.thread: ; preds = %bb.y, %_ZNK5osgeo4proj2io16AuthorityFactory7Private23hasAuthorityRestrictionEv.exit
  br i1 %.1, label %bb.z, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit59

bb.z:                                             ; preds = %_ZNK5osgeo4proj2io16AuthorityFactory7Private23hasAuthorityRestrictionEv.exit.thread
  %i.db = load i64, ptr %i.an, align 8, !tbaa !167
  %i.dc = add i64 %i.db, -4611686018427387899
  %i.dd = icmp ult i64 %i.dc, 5
  br i1 %i.dd, label %.invoke, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i56

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i56: ; preds = %bb.z
  %i.de = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef nonnull @.str.476, i64 noundef 5)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit59 unwind label %bb.t ; 0 uses

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit59: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i56, %_ZNK5osgeo4proj2io16AuthorityFactory7Private23hasAuthorityRestrictionEv.exit.thread
  %i.df = load i64, ptr %i.an, align 8, !tbaa !167
  %i.dg = add i64 %i.df, -4611686018427387891
  %i.dh = icmp ult i64 %i.dg, 13
  br i1 %i.dh, label %.invoke, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i60

.invoke:                                          ; preds = %bb.s, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit59, %bb.z
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.613) #36
          to label %.cont unwind label %bb.t

.cont:                                            ; preds = %.invoke
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i60: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit59
  %i.di = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef nonnull @.str.449, i64 noundef 13)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit63 unwind label %bb.t ; 0 uses

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit63: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i60
  %i.dj = load ptr, ptr %1, align 8, !tbaa !402
  %i.dk = getelementptr inbounds nuw i8, ptr %i.dj, i64 16
  invoke void @_ZNSt7__cxx114listIN5osgeo4proj2io9SQLValuesESaIS4_EE9_M_insertIJRKNS_12basic_stringIcSt11char_traitsIcESaIcEEEEEEvSt14_List_iteratorIS4_EDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %7, ptr nonnull align 8 dereferenceable(24) %7, ptr noundef nonnull align 8 dereferenceable(32) %i.dk)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit63._ZNK5osgeo4proj2io16AuthorityFactory7Private23hasAuthorityRestrictionEv.exit.thread110_crit_edge unwind label %bb.t

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit63._ZNK5osgeo4proj2io16AuthorityFactory7Private23hasAuthorityRestrictionEv.exit.thread110_crit_edge: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit63
  %.pre = load ptr, ptr %1, align 8, !tbaa !402
  br label %_ZNK5osgeo4proj2io16AuthorityFactory7Private23hasAuthorityRestrictionEv.exit.thread110

_ZNK5osgeo4proj2io16AuthorityFactory7Private23hasAuthorityRestrictionEv.exit.thread110: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit63._ZNK5osgeo4proj2io16AuthorityFactory7Private23hasAuthorityRestrictionEv.exit.thread110_crit_edge, %bb.y, %_ZNK5osgeo4proj2io16AuthorityFactory7Private23hasAuthorityRestrictionEv.exit
  %i.dl = phi ptr [ %.pre, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit63._ZNK5osgeo4proj2io16AuthorityFactory7Private23hasAuthorityRestrictionEv.exit.thread110_crit_edge ], [ %i.cn, %bb.y ], [ %i.cn, %_ZNK5osgeo4proj2io16AuthorityFactory7Private23hasAuthorityRestrictionEv.exit ]
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #33
  %i.dm = load ptr, ptr %i.dl, align 8, !tbaa !406, !noalias !2435
  %i.dn = load ptr, ptr %i.dm, align 8, !tbaa !408, !noalias !2435
  invoke void @_ZN5osgeo4proj2io15DatabaseContext7Private3runERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKNS4_4listINS1_9SQLValuesESaISD_EEEb(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::list") align 8 %10, ptr noundef nonnull align 8 dereferenceable(1696) %i.dn, ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef nonnull readonly align 8 dereferenceable(24) %7, i1 noundef zeroext false)
          to label %_ZN5osgeo4proj2io16AuthorityFactory7Private3runERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKNS4_4listINS1_9SQLValuesESaISD_EEE.exit.preheader unwind label %bb.ab

_ZN5osgeo4proj2io16AuthorityFactory7Private3runERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKNS4_4listINS1_9SQLValuesESaISD_EEE.exit.preheader: ; preds = %_ZNK5osgeo4proj2io16AuthorityFactory7Private23hasAuthorityRestrictionEv.exit.thread110
  %.sroa.0106.0114 = load ptr, ptr %10, align 8, !tbaa !182 ; 3 uses
  %.not113115 = icmp eq ptr %.sroa.0106.0114, %10
  br i1 %.not113115, label %_ZN5osgeo4proj2io16AuthorityFactory7Private3runERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKNS4_4listINS1_9SQLValuesESaISD_EEE.exit._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %_ZN5osgeo4proj2io16AuthorityFactory7Private3runERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKNS4_4listINS1_9SQLValuesESaISD_EEE.exit.preheader
  %i.do = getelementptr inbounds nuw i8, ptr %12, i64 8 ; 2 uses
  %i.dp = getelementptr inbounds nuw i8, ptr %11, i64 8 ; 2 uses
  br label %bb.ac

_ZN5osgeo4proj2io16AuthorityFactory7Private3runERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKNS4_4listINS1_9SQLValuesESaISD_EEE.exit._crit_edge.loopexit: ; preds = %_ZN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj2io16AuthorityFactoryEEED2Ev.exit
  %.pre118 = load ptr, ptr %10, align 8, !tbaa !182
  br label %_ZN5osgeo4proj2io16AuthorityFactory7Private3runERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKNS4_4listINS1_9SQLValuesESaISD_EEE.exit._crit_edge

_ZN5osgeo4proj2io16AuthorityFactory7Private3runERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKNS4_4listINS1_9SQLValuesESaISD_EEE.exit._crit_edge: ; preds = %_ZN5osgeo4proj2io16AuthorityFactory7Private3runERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKNS4_4listINS1_9SQLValuesESaISD_EEE.exit._crit_edge.loopexit, %_ZN5osgeo4proj2io16AuthorityFactory7Private3runERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKNS4_4listINS1_9SQLValuesESaISD_EEE.exit.preheader
  %i.dq = phi ptr [ %.pre118, %_ZN5osgeo4proj2io16AuthorityFactory7Private3runERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKNS4_4listINS1_9SQLValuesESaISD_EEE.exit._crit_edge.loopexit ], [ %.sroa.0106.0114, %_ZN5osgeo4proj2io16AuthorityFactory7Private3runERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKNS4_4listINS1_9SQLValuesESaISD_EEE.exit.preheader ] ; 2 uses
  %.not8.i.i = icmp eq ptr %i.dq, %10
  br i1 %.not8.i.i, label %_ZNSt7__cxx1110_List_baseISt6vectorINS_12basic_stringIcSt11char_traitsIcESaIcEEESaIS6_EESaIS8_EED2Ev.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %_ZN5osgeo4proj2io16AuthorityFactory7Private3runERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKNS4_4listINS1_9SQLValuesESaISD_EEE.exit._crit_edge, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit.i.i
  %.09.i.i = phi ptr [ %i.dr, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit.i.i ], [ %i.dq, %_ZN5osgeo4proj2io16AuthorityFactory7Private3runERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKNS4_4listINS1_9SQLValuesESaISD_EEE.exit._crit_edge ] ; 5 uses
  %i.dr = load ptr, ptr %.09.i.i, align 8, !tbaa !182 ; 2 uses
  %i.ds = getelementptr inbounds nuw i8, ptr %.09.i.i, i64 16 ; 2 uses
  %i.dt = load ptr, ptr %i.ds, align 8, !tbaa !187 ; 3 uses
  %i.du = getelementptr inbounds nuw i8, ptr %.09.i.i, i64 24
  %i.dv = load ptr, ptr %i.du, align 8, !tbaa !188 ; 2 uses
  %.not4.i.i.i.i.i = icmp eq ptr %i.dt, %i.dv
  br i1 %.not4.i.i.i.i.i, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i.i, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %.lr.ph.i.i, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i.i
  %.05.i.i.i.i.i = phi ptr [ %i.eb, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i.i ], [ %i.dt, %.lr.ph.i.i ] ; 3 uses
  %i.dw = load ptr, ptr %.05.i.i.i.i.i, align 8, !tbaa !164 ; 2 uses
  %i.dx = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i, i64 16 ; 2 uses
  %i.dy = icmp eq ptr %i.dw, %i.dx
  br i1 %i.dy, label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i
  %i.dz = load i64, ptr %i.dx, align 8, !tbaa !165
  %i.ea = add i64 %i.dz, 1
  call void @_ZdlPvm(ptr noundef %i.dw, i64 noundef %i.ea) #34
  br label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i.i

_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i
  %i.eb = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i, i64 32 ; 2 uses
  %.not.i.i.i.i.i66 = icmp eq ptr %i.eb, %i.dv
  br i1 %.not.i.i.i.i.i66, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i.i, label %.lr.ph.i.i.i.i.i, !llvm.loop !0

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i.i: ; preds = %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i.i
  %.pr.i.i.i = load ptr, ptr %i.ds, align 8, !tbaa !187
  br label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i.i

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i.i: ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i.i, %.lr.ph.i.i
  %i.ec = phi ptr [ %.pr.i.i.i, %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i.i ], [ %i.dt, %.lr.ph.i.i ] ; 3 uses
  %.not.i.i1.i.i.i = icmp eq ptr %i.ec, null
  br i1 %.not.i.i1.i.i.i, label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit.i.i, label %bb.aa

bb.aa:                                            ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i.i
  %i.ed = getelementptr inbounds nuw i8, ptr %.09.i.i, i64 32
  %i.ee = load ptr, ptr %i.ed, align 8, !tbaa !190
  %i.ef = ptrtoint ptr %i.ee to i64
  %i.eg = ptrtoint ptr %i.ec to i64
  %i.eh = sub i64 %i.ef, %i.eg
  call void @_ZdlPvm(ptr noundef nonnull %i.ec, i64 noundef %i.eh) #34
  br label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit.i.i

_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit.i.i: ; preds = %bb.aa, %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i.i
  call void @_ZdlPvm(ptr noundef nonnull %.09.i.i, i64 noundef 40) #34
  %.not.i.i = icmp eq ptr %i.dr, %10
  br i1 %.not.i.i, label %_ZNSt7__cxx1110_List_baseISt6vectorINS_12basic_stringIcSt11char_traitsIcESaIcEEESaIS6_EESaIS8_EED2Ev.exit, label %.lr.ph.i.i, !llvm.loop !1

_ZNSt7__cxx1110_List_baseISt6vectorINS_12basic_stringIcSt11char_traitsIcESaIcEEESaIS6_EESaIS8_EED2Ev.exit: ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit.i.i, %_ZN5osgeo4proj2io16AuthorityFactory7Private3runERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKNS4_4listINS1_9SQLValuesESaISD_EEE.exit._crit_edge
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #33
  %i.ei = load ptr, ptr %7, align 8, !tbaa !182   ; 2 uses
  %.not8.i.i67 = icmp eq ptr %i.ei, %7
  br i1 %.not8.i.i67, label %_ZNSt7__cxx1110_List_baseIN5osgeo4proj2io9SQLValuesESaIS4_EED2Ev.exit, label %.lr.ph.i.i68

.lr.ph.i.i68:                                     ; preds = %_ZNSt7__cxx1110_List_baseISt6vectorINS_12basic_stringIcSt11char_traitsIcESaIcEEESaIS6_EESaIS8_EED2Ev.exit, %_ZN5osgeo4proj2io9SQLValuesD2Ev.exit.i.i
  %.09.i.i69 = phi ptr [ %i.ej, %_ZN5osgeo4proj2io9SQLValuesD2Ev.exit.i.i ], [ %i.ei, %_ZNSt7__cxx1110_List_baseISt6vectorINS_12basic_stringIcSt11char_traitsIcESaIcEEESaIS6_EESaIS8_EED2Ev.exit ] ; 4 uses
  %i.ej = load ptr, ptr %.09.i.i69, align 8, !tbaa !182 ; 2 uses
  %i.ek = getelementptr inbounds nuw i8, ptr %.09.i.i69, i64 24
  %i.el = load ptr, ptr %i.ek, align 8, !tbaa !164 ; 2 uses
  %i.em = getelementptr inbounds nuw i8, ptr %.09.i.i69, i64 40 ; 2 uses
  %i.en = icmp eq ptr %i.el, %i.em
  br i1 %i.en, label %_ZN5osgeo4proj2io9SQLValuesD2Ev.exit.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i: ; preds = %.lr.ph.i.i68
  %i.eo = load i64, ptr %i.em, align 8, !tbaa !165
  %i.ep = add i64 %i.eo, 1
  call void @_ZdlPvm(ptr noundef %i.el, i64 noundef %i.ep) #34
  br label %_ZN5osgeo4proj2io9SQLValuesD2Ev.exit.i.i

_ZN5osgeo4proj2io9SQLValuesD2Ev.exit.i.i:         ; preds = %.lr.ph.i.i68, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i
  call void @_ZdlPvm(ptr noundef nonnull %.09.i.i69, i64 noundef 72) #34
  %.not.i.i70 = icmp eq ptr %i.ej, %7
  br i1 %.not.i.i70, label %_ZNSt7__cxx1110_List_baseIN5osgeo4proj2io9SQLValuesESaIS4_EED2Ev.exit, label %.lr.ph.i.i68, !llvm.loop !2

_ZNSt7__cxx1110_List_baseIN5osgeo4proj2io9SQLValuesESaIS4_EED2Ev.exit: ; preds = %_ZN5osgeo4proj2io9SQLValuesD2Ev.exit.i.i, %_ZNSt7__cxx1110_List_baseISt6vectorINS_12basic_stringIcSt11char_traitsIcESaIcEEESaIS6_EESaIS8_EED2Ev.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #33
  %i.eq = load ptr, ptr %6, align 8, !tbaa !164   ; 2 uses
  %i.er = icmp eq ptr %i.eq, %i.ak
  br i1 %i.er, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit73, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i71

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i71: ; preds = %_ZNSt7__cxx1110_List_baseIN5osgeo4proj2io9SQLValuesESaIS4_EED2Ev.exit
  %i.es = load i64, ptr %i.ak, align 8, !tbaa !165
  %i.et = add i64 %i.es, 1
  call void @_ZdlPvm(ptr noundef %i.eq, i64 noundef %i.et) #34
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit73

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit73: ; preds = %_ZNSt7__cxx1110_List_baseIN5osgeo4proj2io9SQLValuesESaIS4_EED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i71
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #33
  %.pre119.a = load ptr, ptr %5, align 8, !tbaa !182
  br label %bb.bd

bb.ab:                                            ; preds = %_ZNK5osgeo4proj2io16AuthorityFactory7Private23hasAuthorityRestrictionEv.exit.thread110
  %i.eu = landingpad { ptr, i32 }
          cleanup
  br label %bb.bb

bb.ac:                                            ; preds = %.lr.ph, %_ZN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj2io16AuthorityFactoryEEED2Ev.exit
  %.sroa.0106.0116 = phi ptr [ %.sroa.0106.0114, %.lr.ph ], [ %.sroa.0106.0, %_ZN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj2io16AuthorityFactoryEEED2Ev.exit ] ; 2 uses
  %i.ev = getelementptr inbounds nuw i8, ptr %.sroa.0106.0116, i64 16
  %i.ew = load ptr, ptr %i.ev, align 8, !tbaa !187 ; 4 uses
  %i.ex = getelementptr inbounds nuw i8, ptr %i.ew, i64 32
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #33
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #33
  %i.ey = load ptr, ptr %1, align 8, !tbaa !402   ; 5 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !2436)
  %i.ez = getelementptr inbounds nuw i8, ptr %i.ey, i64 16
  %i.fa = getelementptr inbounds nuw i8, ptr %i.ew, i64 8
  %i.fb = load i64, ptr %i.fa, align 8, !tbaa !167, !noalias !2436 ; 3 uses
  %i.fc = getelementptr inbounds nuw i8, ptr %i.ey, i64 24
  %i.fd = load i64, ptr %i.fc, align 8, !tbaa !167, !noalias !2436
  %i.fe = icmp eq i64 %i.fb, %i.fd
  br i1 %i.fe, label %bb.ad, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread5.i

bb.ad:                                            ; preds = %bb.ac
  %i.ff = icmp eq i64 %i.fb, 0
  br i1 %i.ff, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread.i, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.i

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.i: ; preds = %bb.ad
  %i.fg = load ptr, ptr %i.ez, align 8, !tbaa !164, !noalias !2436
  %i.fh = load ptr, ptr %i.ew, align 8, !tbaa !164, !noalias !2436
  %bcmp.i.i = call i32 @bcmp(ptr %i.fh, ptr %i.fg, i64 %i.fb), !noalias !2436
  %i.fi = icmp eq i32 %bcmp.i.i, 0
  br i1 %i.fi, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread.i, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread5.i

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread.i: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.i, %bb.ad
  %i.fj = getelementptr inbounds nuw i8, ptr %i.ey, i64 48
  %i.fk = getelementptr inbounds nuw i8, ptr %i.ey, i64 56
  %i.fl = load ptr, ptr %i.fk, align 8, !tbaa !327, !noalias !2437 ; 4 uses
  %.not.i.i.i.i.i74 = icmp eq ptr %i.fl, null
  br i1 %.not.i.i.i.i.i74, label %_ZNSt12__shared_ptrIN5osgeo4proj2io16AuthorityFactoryELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i, label %bb.ae

bb.ae:                                            ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread.i
end_hunk_0
