Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/TestVectorTransforms?download=true
inline.NumInlined: 7032
inline.NumDeleted: 4219
loop-unroll.NumCompletelyUnrolled: 4
loop-unroll.NumRuntimeUnrolled: 3
loop-unroll.NumUnrolled: 7
begin_hunk_0_@_ZN12_GLOBAL__N_124TestEliminateVectorMasksD0Ev:bb.a
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define internal noundef { ptr, i64 } @_ZNK4mlir11PassWrapperIN12_GLOBAL__N_124TestEliminateVectorMasksENS_13OperationPassINS_4func6FuncOpEEEE7getNameEv(ptr nofree nonnull readnone align 8 captures(none) %0) unnamed_addr #9 align 2 {
bb.a:
  ret { ptr, i64 } { ptr getelementptr (i8, ptr @.str.123, i64 49), i64 47 }
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define internal noundef { ptr, i64 } @_ZNK12_GLOBAL__N_124TestEliminateVectorMasks11getArgumentEv(ptr nofree nonnull readnone align 8 captures(none) %0) unnamed_addr #9 align 2 {
bb.a:
  ret { ptr, i64 } { ptr @.str.124, i64 27 }
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define internal noundef { ptr, i64 } @_ZNK12_GLOBAL__N_124TestEliminateVectorMasks14getDescriptionEv(ptr nofree nonnull readnone align 8 captures(none) %0) unnamed_addr #9 align 2 {
bb.a:
  ret { ptr, i64 } { ptr @.str.125, i64 29 }
}

; Function Attrs: mustprogress nounwind uwtable
define internal void @_ZN12_GLOBAL__N_124TestEliminateVectorMasks14runOnOperationEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(736) %0) unnamed_addr #0 align 2 {
bb.a:
  %1 = alloca %"class.mlir::IRRewriter", align 8  ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #23
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %.0.copyload.i.i.i.i.i = load i64, ptr %i.a, align 8
  %i.b = and i64 %.0.copyload.i.i.i.i.i, -8
  %i.c = inttoptr i64 %i.b to ptr
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  %i.e = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNK4mlir9Attribute10getContextEv(ptr noundef nonnull align 8 dereferenceable(8) %i.d) #23
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 8
  store ptr %i.e, ptr %i.f, align 8, !tbaa !214
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.g, i8 0, i64 24, i1 false)
  store ptr getelementptr inbounds nuw inrange(-16, 96) (i8, ptr @_ZTVN4mlir10IRRewriterE, i64 16), ptr %1, align 8, !tbaa !34
  %.0.copyload.i.i.i.i.i2 = load i64, ptr %i.a, align 8
  %i.h = and i64 %.0.copyload.i.i.i.i.i2, -8      ; 2 uses
  %i.i = inttoptr i64 %i.h to ptr                 ; 2 uses
  %.not.i.i.i = icmp eq i64 %i.h, 0
  br i1 %.not.i.i.i, label %_ZN4mlir19FunctionOpInterfaceCI2NS_6detail9InterfaceIS0_PNS_9OperationENS1_34FunctionOpInterfaceInterfaceTraitsENS_2OpIS0_JEEENS_7OpTrait9TraitBaseEEEINS_4func6FuncOpETnPNSt9enable_ifIXsr3std10is_base_ofINS2_IS0_S4_S5_S7_S9_E5TraitIT_EESF_EE5valueEvE4typeELPv0EEESF_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.j = tail call noundef ptr @_ZN4mlir11OpInterfaceINS_19FunctionOpInterfaceENS_6detail34FunctionOpInterfaceInterfaceTraitsEE15getInterfaceForEPNS_9OperationE(ptr noundef nonnull %i.i)
  br label %_ZN4mlir19FunctionOpInterfaceCI2NS_6detail9InterfaceIS0_PNS_9OperationENS1_34FunctionOpInterfaceInterfaceTraitsENS_2OpIS0_JEEENS_7OpTrait9TraitBaseEEEINS_4func6FuncOpETnPNSt9enable_ifIXsr3std10is_base_ofINS2_IS0_S4_S5_S7_S9_E5TraitIT_EESF_EE5valueEvE4typeELPv0EEESF_.exit

_ZN4mlir19FunctionOpInterfaceCI2NS_6detail9InterfaceIS0_PNS_9OperationENS1_34FunctionOpInterfaceInterfaceTraitsENS_2OpIS0_JEEENS_7OpTrait9TraitBaseEEEINS_4func6FuncOpETnPNSt9enable_ifIXsr3std10is_base_ofINS2_IS0_S4_S5_S7_S9_E5TraitIT_EESF_EE5valueEvE4typeELPv0EEESF_.exit: ; preds = %bb.a, %bb.b
  %i.k = phi ptr [ %i.j, %bb.b ], [ null, %bb.a ]
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 456
  %i.m = load i32, ptr %i.l, align 8, !tbaa !224
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 656
  %i.o = load i32, ptr %i.n, align 8, !tbaa !224
  %.sroa.4.0.insert.ext = zext i32 %i.o to i64
  %.sroa.4.0.insert.shift = shl nuw i64 %.sroa.4.0.insert.ext, 32
  %.sroa.0.0.insert.ext = zext i32 %i.m to i64
  %.sroa.0.0.insert.insert = or disjoint i64 %.sroa.4.0.insert.shift, %.sroa.0.0.insert.ext
  call void @_ZN4mlir6vector20eliminateVectorMasksERNS_10IRRewriterENS_19FunctionOpInterfaceESt8optionalINS0_11VscaleRangeEE(ptr noundef nonnull align 8 dereferenceable(40) %1, ptr %i.i, ptr %i.k, i64 %.sroa.0.0.insert.insert, i8 1) #23
  call void @_ZN4mlir12RewriterBaseD2Ev(ptr noundef nonnull align 8 dead_on_return(40) dereferenceable(40) %1) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #23
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define internal void @_ZNK4mlir11PassWrapperIN12_GLOBAL__N_124TestEliminateVectorMasksENS_13OperationPassINS_4func6FuncOpEEEE9clonePassEv(ptr dead_on_unwind noalias nofree writable writeonly sret(%"class.std::unique_ptr") align 8 captures(none) initializes((0, 8)) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(336) %1) unnamed_addr #0 align 2 {
_ZNSt10unique_ptrIN12_GLOBAL__N_124TestEliminateVectorMasksESt14default_deleteIS1_EED2Ev.exit:
  %2 = alloca %"struct.llvm::cl::desc", align 8   ; 5 uses
  %3 = alloca %"struct.llvm::cl::initializer.870", align 8 ; 4 uses
  %i.a = alloca i32, align 4                      ; 4 uses
  %4 = alloca %"struct.llvm::cl::desc", align 8   ; 5 uses
  %5 = alloca %"struct.llvm::cl::initializer.870", align 8 ; 4 uses
  %i.b = alloca i32, align 4                      ; 4 uses
  %i.c = tail call noalias noundef nonnull dereferenceable(736) ptr @_Znwm(i64 noundef 736) #24, !noalias !1014, !inline_history !1012 ; 20 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.sroa.0.0.copyload.i.i.i.i.i = load ptr, ptr %i.d, align 8, !tbaa !29, !noalias !1014
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.f = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.f, ptr noundef nonnull readonly align 8 dereferenceable(24) %i.e, i64 24, i1 false), !noalias !1014
  %i.g = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store ptr %.sroa.0.0.copyload.i.i.i.i.i, ptr %i.g, align 8, !tbaa !29, !noalias !1014
  %i.h = getelementptr inbounds nuw i8, ptr %i.c, i64 112
  store i8 0, ptr %i.h, align 8, !tbaa !113, !noalias !1014
  %i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 120
  %i.j = getelementptr inbounds nuw i8, ptr %i.c, i64 176
  %i.k = getelementptr inbounds nuw i8, ptr %i.c, i64 192
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.i, i8 0, i64 56, i1 false), !noalias !1014
  store ptr %i.k, ptr %i.j, align 8, !tbaa !31, !noalias !1014
  %i.l = getelementptr inbounds nuw i8, ptr %i.c, i64 184
  store i32 0, ptr %i.l, align 8, !tbaa !78, !noalias !1014
  %i.m = getelementptr inbounds nuw i8, ptr %i.c, i64 188
  store i32 4, ptr %i.m, align 4, !tbaa !32, !noalias !1014
  %i.n = getelementptr inbounds nuw i8, ptr %i.c, i64 224
  %i.o = getelementptr inbounds nuw i8, ptr %i.c, i64 240
  store ptr %i.o, ptr %i.n, align 8, !tbaa !31, !noalias !1014
  %i.p = getelementptr inbounds nuw i8, ptr %i.c, i64 232
  store i32 0, ptr %i.p, align 8, !tbaa !78, !noalias !1014
  %i.q = getelementptr inbounds nuw i8, ptr %i.c, i64 236
  store i32 4, ptr %i.q, align 4, !tbaa !32, !noalias !1014
  %i.r = getelementptr inbounds nuw i8, ptr %i.c, i64 272
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.r, i8 0, i64 64, i1 false), !noalias !1014
  store ptr getelementptr inbounds nuw inrange(-16, 104) (i8, ptr @_ZTVN12_GLOBAL__N_124TestEliminateVectorMasksE, i64 16), ptr %i.c, align 8, !tbaa !34, !noalias !1014
  %i.s = getelementptr inbounds nuw i8, ptr %i.c, i64 336 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #23, !noalias !1014
  store ptr @.str.120, ptr %2, align 8, !tbaa !36, !noalias !1014
  %.sroa.2.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i64 33, ptr %.sroa.2.0..sroa_idx.i.i.i, align 8, !tbaa !38, !noalias !1014
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #23, !noalias !1014
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #23, !noalias !1014
  store i32 1, ptr %i.a, align 4, !tbaa !164, !noalias !1014
  store ptr %i.a, ptr %3, align 8, !noalias !1014
  %i.t = getelementptr inbounds nuw i8, ptr %i.c, i64 144 ; 2 uses
  call void @_ZN4mlir6detail11PassOptions6OptionIjN4llvm2cl6parserIjEEEC2IJNS4_4descENS4_11initializerIiEEEEERS1_NS3_9StringRefEDpOT_(ptr noundef nonnull align 8 dereferenceable(193) %i.s, ptr noundef nonnull align 8 dereferenceable(184) %i.t, ptr nonnull @.str.119, i64 10, ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef nonnull align 8 dereferenceable(8) %3), !noalias !1014, !inline_history !1013
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVN4mlir4Pass6OptionIjN4llvm2cl6parserIjEEEE, i64 16), ptr %i.s, align 8, !tbaa !34, !noalias !1014
  %i.u = getelementptr inbounds nuw i8, ptr %i.c, i64 520
  store ptr getelementptr inbounds nuw inrange(-16, 48) (i8, ptr @_ZTVN4mlir4Pass6OptionIjN4llvm2cl6parserIjEEEE, i64 144), ptr %i.u, align 8, !tbaa !34, !noalias !1014
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #23, !noalias !1014
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #23, !noalias !1014
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #23, !noalias !1014
  %i.v = getelementptr inbounds nuw i8, ptr %i.c, i64 536 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #23, !noalias !1014
  store ptr @.str.122, ptr %4, align 8, !tbaa !36, !noalias !1014
  %.sroa.2.0..sroa_idx.i2.i.i = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i64 33, ptr %.sroa.2.0..sroa_idx.i2.i.i, align 8, !tbaa !38, !noalias !1014
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #23, !noalias !1014
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #23, !noalias !1014
  store i32 16, ptr %i.b, align 4, !tbaa !164, !noalias !1014
  store ptr %i.b, ptr %5, align 8, !noalias !1014
  call void @_ZN4mlir6detail11PassOptions6OptionIjN4llvm2cl6parserIjEEEC2IJNS4_4descENS4_11initializerIiEEEEERS1_NS3_9StringRefEDpOT_(ptr noundef nonnull align 8 dereferenceable(193) %i.v, ptr noundef nonnull align 8 dereferenceable(184) %i.t, ptr nonnull @.str.121, i64 10, ptr noundef nonnull align 8 dereferenceable(16) %4, ptr noundef nonnull align 8 dereferenceable(8) %5), !noalias !1014, !inline_history !1013
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVN4mlir4Pass6OptionIjN4llvm2cl6parserIjEEEE, i64 16), ptr %i.v, align 8, !tbaa !34, !noalias !1014
  %i.w = getelementptr inbounds nuw i8, ptr %i.c, i64 720
  store ptr getelementptr inbounds nuw inrange(-16, 48) (i8, ptr @_ZTVN4mlir4Pass6OptionIjN4llvm2cl6parserIjEEEE, i64 144), ptr %i.w, align 8, !tbaa !34, !noalias !1014
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #23, !noalias !1014
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #23, !noalias !1014
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #23, !noalias !1014
  store ptr %i.c, ptr %0, align 8, !tbaa !43
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4mlir4PassD2Ev(ptr noundef nonnull align 8 dead_on_return(336) dereferenceable(336) %0) unnamed_addr #0 comdat align 2 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 104) (i8, ptr @_ZTVN4mlir4PassE, i64 16), ptr %0, align 8, !tbaa !34
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 304
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !128  ; 3 uses
  %.not.i.i.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i.i.i, label %_ZNSt6vectorIPN4mlir6detail11PassOptions10OptionBaseESaIS4_EED2Ev.exit.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 320
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !125
  %i.e = ptrtoint ptr %i.d to i64
  %i.f = ptrtoint ptr %i.b to i64
  %i.g = sub i64 %i.e, %i.f
  tail call void @_ZdlPvm(ptr noundef nonnull %i.b, i64 noundef %i.g) #25
  br label %_ZNSt6vectorIPN4mlir6detail11PassOptions10OptionBaseESaIS4_EED2Ev.exit.i

_ZNSt6vectorIPN4mlir6detail11PassOptions10OptionBaseESaIS4_EED2Ev.exit.i: ; preds = %bb.b, %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 292
  %i.i = load i32, ptr %i.h, align 4, !tbaa !1017 ; 2 uses
  %i.j = icmp eq i32 %i.i, 0
  br i1 %i.j, label %_ZN4llvm8DenseMapINS_9StringRefEPNS_2cl6OptionENS_12DenseMapInfoIS1_vEENS_6detail12DenseMapPairIS1_S4_EEED2Ev.exit.i.i, label %bb.c

bb.c:                                             ; preds = %_ZNSt6vectorIPN4mlir6detail11PassOptions10OptionBaseESaIS4_EED2Ev.exit.i
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 272
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !1018
  %i.m = zext i32 %i.i to i64                     ; 2 uses
  %i.n = mul nuw nsw i64 %i.m, 24
  %i.o = add nuw nsw i64 %i.m, 31
  %i.p = lshr i64 %i.o, 3
  %i.q = and i64 %i.p, 1073741820
  %i.r = add nuw nsw i64 %i.q, %i.n
  tail call void @_ZN4llvm17deallocate_bufferEPvmm(ptr noundef %i.l, i64 noundef %i.r, i64 noundef 8) #23
  br label %_ZN4llvm8DenseMapINS_9StringRefEPNS_2cl6OptionENS_12DenseMapInfoIS1_vEENS_6detail12DenseMapPairIS1_S4_EEED2Ev.exit.i.i

_ZN4llvm8DenseMapINS_9StringRefEPNS_2cl6OptionENS_12DenseMapInfoIS1_vEENS_6detail12DenseMapPairIS1_S4_EEED2Ev.exit.i.i: ; preds = %bb.c, %_ZNSt6vectorIPN4mlir6detail11PassOptions10OptionBaseESaIS4_EED2Ev.exit.i
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 224
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !31   ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 240
  %i.v = icmp eq ptr %i.t, %i.u
  br i1 %i.v, label %_ZN4llvm11SmallVectorIPNS_2cl6OptionELj4EED2Ev.exit.i.i, label %bb.d

bb.d:                                             ; preds = %_ZN4llvm8DenseMapINS_9StringRefEPNS_2cl6OptionENS_12DenseMapInfoIS1_vEENS_6detail12DenseMapPairIS1_S4_EEED2Ev.exit.i.i
  tail call void @free(ptr noundef %i.t) #23
  br label %_ZN4llvm11SmallVectorIPNS_2cl6OptionELj4EED2Ev.exit.i.i

_ZN4llvm11SmallVectorIPNS_2cl6OptionELj4EED2Ev.exit.i.i: ; preds = %bb.d, %_ZN4llvm8DenseMapINS_9StringRefEPNS_2cl6OptionENS_12DenseMapInfoIS1_vEENS_6detail12DenseMapPairIS1_S4_EEED2Ev.exit.i.i
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 176
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !31   ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 192
  %i.z = icmp eq ptr %i.x, %i.y
  br i1 %i.z, label %_ZN4mlir6detail11PassOptionsD2Ev.exit, label %bb.e

bb.e:                                             ; preds = %_ZN4llvm11SmallVectorIPNS_2cl6OptionELj4EED2Ev.exit.i.i
  tail call void @free(ptr noundef %i.x) #23
  br label %_ZN4mlir6detail11PassOptionsD2Ev.exit

_ZN4mlir6detail11PassOptionsD2Ev.exit:            ; preds = %_ZN4llvm11SmallVectorIPNS_2cl6OptionELj4EED2Ev.exit.i.i, %bb.e
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !1021 ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.ab, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorIPN4mlir4Pass9StatisticESaIS3_EED2Ev.exit.a, label %bb.f

bb.f:                                             ; preds = %_ZN4mlir6detail11PassOptionsD2Ev.exit
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !1022
  %i.ae = ptrtoint ptr %i.ad to i64
  %i.af = ptrtoint ptr %i.ab to i64
  %i.ag = sub i64 %i.ae, %i.af
  tail call void @_ZdlPvm(ptr noundef nonnull %i.ab, i64 noundef %i.ag) #25
  br label %_ZNSt6vectorIPN4mlir4Pass9StatisticESaIS3_EED2Ev.exit.a

_ZNSt6vectorIPN4mlir4Pass9StatisticESaIS3_EED2Ev.exit.a: ; preds = %_ZN4mlir6detail11PassOptionsD2Ev.exit, %bb.f
  %1 = getelementptr inbounds nuw i8, ptr %0, i64 112 ; 2 uses
  %2 = load i8, ptr %1, align 8, !tbaa !113, !range !48, !noundef !49
  %3 = trunc nuw i8 %2 to i1
  store i8 0, ptr %1, align 8, !tbaa !113
  %.not.i.i.i1 = xor i1 %3, true
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.ai = load i8, ptr %i.ah, align 8, !range !48
  %i.aj = trunc nuw i8 %i.ai to i1
  %or.cond.i.i.i = select i1 %.not.i.i.i1, i1 true, i1 %i.aj
  br i1 %or.cond.i.i.i, label %_ZNSt14_Optional_baseIN4mlir6detail18PassExecutionStateELb0ELb0EED2Ev.exit, label %bb.g

bb.g:                                             ; preds = %_ZNSt6vectorIPN4mlir4Pass9StatisticESaIS3_EED2Ev.exit.a
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !50
  tail call void @free(ptr noundef %i.al) #23
  br label %_ZNSt14_Optional_baseIN4mlir6detail18PassExecutionStateELb0ELb0EED2Ev.exit

_ZNSt14_Optional_baseIN4mlir6detail18PassExecutionStateELb0ELb0EED2Ev.exit: ; preds = %_ZNSt6vectorIPN4mlir4Pass9StatisticESaIS3_EED2Ev.exit.a, %bb.g
  ret void
}

declare void @_ZN4mlir6vector20eliminateVectorMasksERNS_10IRRewriterENS_19FunctionOpInterfaceESt8optionalINS0_11VscaleRangeEE(ptr noundef nonnull align 8 dereferenceable(40), ptr, ptr, i64, i8) local_unnamed_addr #2

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef ptr @_ZN4mlir11OpInterfaceINS_19FunctionOpInterfaceENS_6detail34FunctionOpInterfaceInterfaceTraitsEE15getInterfaceForEPNS_9OperationE(ptr noundef %0) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %1 = alloca %"class.mlir::StringAttr", align 8  ; 4 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %.sroa.0.0.copyload.i = load ptr, ptr %i.a, align 8, !tbaa !109 ; 6 uses
  %i.b = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i, i64 16
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !111
  %.not.i.not = icmp eq ptr %i.c, @_ZN4mlir6detail14TypeIDResolverIvvE2idE
  br i1 %.not.i.not, label %_ZNK4mlir13OperationName10getDialectEv.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i, i64 32
  %i.e = load atomic i8, ptr @_ZGVZN4mlir6detail14TypeIDResolverINS_19FunctionOpInterfaceEvE13resolveTypeIDEvE2id acquire, align 8
  %i.f = icmp eq i8 %i.e, 0
  br i1 %i.f, label %bb.c, label %_ZN4mlir6detail9InterfaceINS_19FunctionOpInterfaceEPNS_9OperationENS0_34FunctionOpInterfaceInterfaceTraitsENS_2OpIS2_JEEENS_7OpTrait9TraitBaseEE14getInterfaceIDEv.exit.i.i, !prof !248

bb.c:                                             ; preds = %bb.b
  %i.g = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN4mlir6detail14TypeIDResolverINS_19FunctionOpInterfaceEvE13resolveTypeIDEvE2id) #23
  %.not.i.i.i.i.i = icmp eq i32 %i.g, 0
  br i1 %.not.i.i.i.i.i, label %_ZN4mlir6detail9InterfaceINS_19FunctionOpInterfaceEPNS_9OperationENS0_34FunctionOpInterfaceInterfaceTraitsENS_2OpIS2_JEEENS_7OpTrait9TraitBaseEE14getInterfaceIDEv.exit.i.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.h = tail call ptr @_ZN4mlir6detail22FallbackTypeIDResolver22registerImplicitTypeIDEN4llvm9StringRefE(ptr nonnull getelementptr inbounds nuw (i8, ptr @.str.126, i64 49), i64 25) #23
  store ptr %i.h, ptr @_ZZN4mlir6detail14TypeIDResolverINS_19FunctionOpInterfaceEvE13resolveTypeIDEvE2id, align 8
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN4mlir6detail14TypeIDResolverINS_19FunctionOpInterfaceEvE13resolveTypeIDEvE2id) #23
  br label %_ZN4mlir6detail9InterfaceINS_19FunctionOpInterfaceEPNS_9OperationENS0_34FunctionOpInterfaceInterfaceTraitsENS_2OpIS2_JEEENS_7OpTrait9TraitBaseEE14getInterfaceIDEv.exit.i.i

_ZN4mlir6detail9InterfaceINS_19FunctionOpInterfaceEPNS_9OperationENS0_34FunctionOpInterfaceInterfaceTraitsENS_2OpIS2_JEEENS_7OpTrait9TraitBaseEE14getInterfaceIDEv.exit.i.i: ; preds = %bb.d, %bb.c, %bb.b
  %.sroa.01.0.copyload.i.i.i.i.i = load ptr, ptr @_ZZN4mlir6detail14TypeIDResolverINS_19FunctionOpInterfaceEvE13resolveTypeIDEvE2id, align 8, !tbaa !29 ; 2 uses
  %i.i = load ptr, ptr %i.d, align 8, !tbaa !31   ; 3 uses
  %i.j = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i, i64 40
  %i.k = load i32, ptr %i.j, align 8, !tbaa !78   ; 2 uses
  %.not.i.i.i.i = icmp eq i32 %i.k, 0
  br i1 %.not.i.i.i.i, label %_ZN4llvm11lower_boundIRKNS_11SmallVectorISt4pairIN4mlir6TypeIDEPvELj3EEERS4_ZNKS3_6detail12InterfaceMap6lookupES4_EUlRKT_S4_E_EEDaOSD_OT0_T1_.exit.i.i.i, label %_ZSt9__advanceIPKSt4pairIN4mlir6TypeIDEPvElEvRT_T0_St26random_access_iterator_tag.exit.lr.ph.i.i.i.i.i.i

_ZSt9__advanceIPKSt4pairIN4mlir6TypeIDEPvElEvRT_T0_St26random_access_iterator_tag.exit.lr.ph.i.i.i.i.i.i: ; preds = %_ZN4mlir6detail9InterfaceINS_19FunctionOpInterfaceEPNS_9OperationENS0_34FunctionOpInterfaceInterfaceTraitsENS_2OpIS2_JEEENS_7OpTrait9TraitBaseEE14getInterfaceIDEv.exit.i.i
  %i.l = zext i32 %i.k to i64                     ; 2 uses
  br label %_ZSt9__advanceIPKSt4pairIN4mlir6TypeIDEPvElEvRT_T0_St26random_access_iterator_tag.exit.i.i.i.i.i.i

_ZSt9__advanceIPKSt4pairIN4mlir6TypeIDEPvElEvRT_T0_St26random_access_iterator_tag.exit.i.i.i.i.i.i: ; preds = %_ZSt9__advanceIPKSt4pairIN4mlir6TypeIDEPvElEvRT_T0_St26random_access_iterator_tag.exit.i.i.i.i.i.i, %_ZSt9__advanceIPKSt4pairIN4mlir6TypeIDEPvElEvRT_T0_St26random_access_iterator_tag.exit.lr.ph.i.i.i.i.i.i
  %.017.i.i.i.i.i.i = phi i64 [ %i.l, %_ZSt9__advanceIPKSt4pairIN4mlir6TypeIDEPvElEvRT_T0_St26random_access_iterator_tag.exit.lr.ph.i.i.i.i.i.i ], [ %.1.i.i.i.i.i.i, %_ZSt9__advanceIPKSt4pairIN4mlir6TypeIDEPvElEvRT_T0_St26random_access_iterator_tag.exit.i.i.i.i.i.i ] ; 2 uses
  %.01116.i.i.i.i.i.i = phi ptr [ %i.i, %_ZSt9__advanceIPKSt4pairIN4mlir6TypeIDEPvElEvRT_T0_St26random_access_iterator_tag.exit.lr.ph.i.i.i.i.i.i ], [ %.112.i.i.i.i.i.i, %_ZSt9__advanceIPKSt4pairIN4mlir6TypeIDEPvElEvRT_T0_St26random_access_iterator_tag.exit.i.i.i.i.i.i ] ; 2 uses
  %i.m = lshr i64 %.017.i.i.i.i.i.i, 1            ; 3 uses
  %i.n = getelementptr inbounds nuw [16 x i8], ptr %.01116.i.i.i.i.i.i, i64 %i.m ; 2 uses
  %.sroa.01.0.copyload.i.i.i.i.i.i.i.i = load ptr, ptr %i.n, align 8, !tbaa !29
  %i.o = icmp ult ptr %.sroa.01.0.copyload.i.i.i.i.i.i.i.i, %.sroa.01.0.copyload.i.i.i.i.i ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.n, i64 16
  %i.q = xor i64 %i.m, -1
  %i.r = add nsw i64 %.017.i.i.i.i.i.i, %i.q
  %.112.i.i.i.i.i.i = select i1 %i.o, ptr %i.p, ptr %.01116.i.i.i.i.i.i ; 2 uses
  %.1.i.i.i.i.i.i = select i1 %i.o, i64 %i.r, i64 %i.m ; 2 uses
  %i.s = icmp sgt i64 %.1.i.i.i.i.i.i, 0
  br i1 %i.s, label %_ZSt9__advanceIPKSt4pairIN4mlir6TypeIDEPvElEvRT_T0_St26random_access_iterator_tag.exit.i.i.i.i.i.i, label %_ZN4llvm11lower_boundIRKNS_11SmallVectorISt4pairIN4mlir6TypeIDEPvELj3EEERS4_ZNKS3_6detail12InterfaceMap6lookupES4_EUlRKT_S4_E_EEDaOSD_OT0_T1_.exit.i.i.i, !llvm.loop !15

_ZN4llvm11lower_boundIRKNS_11SmallVectorISt4pairIN4mlir6TypeIDEPvELj3EEERS4_ZNKS3_6detail12InterfaceMap6lookupES4_EUlRKT_S4_E_EEDaOSD_OT0_T1_.exit.i.i.i: ; preds = %_ZSt9__advanceIPKSt4pairIN4mlir6TypeIDEPvElEvRT_T0_St26random_access_iterator_tag.exit.i.i.i.i.i.i, %_ZN4mlir6detail9InterfaceINS_19FunctionOpInterfaceEPNS_9OperationENS0_34FunctionOpInterfaceInterfaceTraitsENS_2OpIS2_JEEENS_7OpTrait9TraitBaseEE14getInterfaceIDEv.exit.i.i
  %.pre-phi.i.i.i = phi i64 [ 0, %_ZN4mlir6detail9InterfaceINS_19FunctionOpInterfaceEPNS_9OperationENS0_34FunctionOpInterfaceInterfaceTraitsENS_2OpIS2_JEEENS_7OpTrait9TraitBaseEE14getInterfaceIDEv.exit.i.i ], [ %i.l, %_ZSt9__advanceIPKSt4pairIN4mlir6TypeIDEPvElEvRT_T0_St26random_access_iterator_tag.exit.i.i.i.i.i.i ]
  %.011.lcssa.i.i.i.i.i.i = phi ptr [ %i.i, %_ZN4mlir6detail9InterfaceINS_19FunctionOpInterfaceEPNS_9OperationENS0_34FunctionOpInterfaceInterfaceTraitsENS_2OpIS2_JEEENS_7OpTrait9TraitBaseEE14getInterfaceIDEv.exit.i.i ], [ %.112.i.i.i.i.i.i, %_ZSt9__advanceIPKSt4pairIN4mlir6TypeIDEPvElEvRT_T0_St26random_access_iterator_tag.exit.i.i.i.i.i.i ] ; 3 uses
  %i.t = getelementptr inbounds nuw [16 x i8], ptr %i.i, i64 %.pre-phi.i.i.i
  %.not.i.i.i = icmp eq ptr %.011.lcssa.i.i.i.i.i.i, %i.t
  br i1 %.not.i.i.i, label %_ZNK4mlir13OperationName12getInterfaceINS_19FunctionOpInterfaceEEEPNT_7ConceptEv.exit.thread, label %bb.e

bb.e:                                             ; preds = %_ZN4llvm11lower_boundIRKNS_11SmallVectorISt4pairIN4mlir6TypeIDEPvELj3EEERS4_ZNKS3_6detail12InterfaceMap6lookupES4_EUlRKT_S4_E_EEDaOSD_OT0_T1_.exit.i.i.i
  %i.u = load ptr, ptr %.011.lcssa.i.i.i.i.i.i, align 8, !tbaa !111
  %i.v = icmp eq ptr %i.u, %.sroa.01.0.copyload.i.i.i.i.i
  br i1 %i.v, label %_ZNK4mlir13OperationName12getInterfaceINS_19FunctionOpInterfaceEEEPNT_7ConceptEv.exit, label %_ZNK4mlir13OperationName12getInterfaceINS_19FunctionOpInterfaceEEEPNT_7ConceptEv.exit.thread

_ZNK4mlir13OperationName12getInterfaceINS_19FunctionOpInterfaceEEEPNT_7ConceptEv.exit: ; preds = %bb.e
  %i.w = getelementptr inbounds nuw i8, ptr %.011.lcssa.i.i.i.i.i.i, i64 8
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !250  ; 2 uses
  %.not = icmp eq ptr %i.x, null
  br i1 %.not, label %_ZNK4mlir13OperationName12getInterfaceINS_19FunctionOpInterfaceEEEPNT_7ConceptEv.exit.thread, label %.thread

_ZNK4mlir13OperationName12getInterfaceINS_19FunctionOpInterfaceEEEPNT_7ConceptEv.exit.thread: ; preds = %_ZN4llvm11lower_boundIRKNS_11SmallVectorISt4pairIN4mlir6TypeIDEPvELj3EEERS4_ZNKS3_6detail12InterfaceMap6lookupES4_EUlRKT_S4_E_EEDaOSD_OT0_T1_.exit.i.i.i, %bb.e, %_ZNK4mlir13OperationName12getInterfaceINS_19FunctionOpInterfaceEEEPNT_7ConceptEv.exit
  %i.y = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i, i64 24
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !1036 ; 2 uses
  %.sroa.0.0.copyload.i16 = load ptr, ptr %i.a, align 8, !tbaa !109
  %i.aa = load atomic i8, ptr @_ZGVZN4mlir6detail14TypeIDResolverINS_19FunctionOpInterfaceEvE13resolveTypeIDEvE2id acquire, align 8
  %i.ab = icmp eq i8 %i.aa, 0
  br i1 %i.ab, label %bb.f, label %_ZN4mlir7Dialect27getRegisteredInterfaceForOpINS_19FunctionOpInterfaceEEEPNT_7ConceptENS_13OperationNameE.exit, !prof !248

bb.f:                                             ; preds = %_ZNK4mlir13OperationName12getInterfaceINS_19FunctionOpInterfaceEEEPNT_7ConceptEv.exit.thread
  %i.ac = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN4mlir6detail14TypeIDResolverINS_19FunctionOpInterfaceEvE13resolveTypeIDEvE2id) #23
  %.not.i.i.i.i17 = icmp eq i32 %i.ac, 0
  br i1 %.not.i.i.i.i17, label %_ZN4mlir7Dialect27getRegisteredInterfaceForOpINS_19FunctionOpInterfaceEEEPNT_7ConceptENS_13OperationNameE.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ad = tail call ptr @_ZN4mlir6detail22FallbackTypeIDResolver22registerImplicitTypeIDEN4llvm9StringRefE(ptr nonnull getelementptr inbounds nuw (i8, ptr @.str.126, i64 49), i64 25) #23
  store ptr %i.ad, ptr @_ZZN4mlir6detail14TypeIDResolverINS_19FunctionOpInterfaceEvE13resolveTypeIDEvE2id, align 8
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN4mlir6detail14TypeIDResolverINS_19FunctionOpInterfaceEvE13resolveTypeIDEvE2id) #23
  br label %_ZN4mlir7Dialect27getRegisteredInterfaceForOpINS_19FunctionOpInterfaceEEEPNT_7ConceptENS_13OperationNameE.exit

_ZN4mlir7Dialect27getRegisteredInterfaceForOpINS_19FunctionOpInterfaceEEEPNT_7ConceptENS_13OperationNameE.exit: ; preds = %_ZNK4mlir13OperationName12getInterfaceINS_19FunctionOpInterfaceEEEPNT_7ConceptEv.exit.thread, %bb.f, %bb.g
  %.sroa.01.0.copyload.i.i.i.i = load ptr, ptr @_ZZN4mlir6detail14TypeIDResolverINS_19FunctionOpInterfaceEvE13resolveTypeIDEvE2id, align 8, !tbaa !29
  %i.ae = load ptr, ptr %i.z, align 8, !tbaa !34
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 104
  %i.ag = load ptr, ptr %i.af, align 8
  %i.ah = tail call noundef ptr %i.ag(ptr noundef nonnull align 8 dereferenceable(96) %i.z, ptr %.sroa.01.0.copyload.i.i.i.i, ptr %.sroa.0.0.copyload.i16) #23, !inline_history !1023
  br label %.thread

_ZNK4mlir13OperationName10getDialectEv.exit:      ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #23
  %i.ai = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i, i64 8
  %.sroa.0.0.copyload.i.i = load ptr, ptr %i.ai, align 8
  store ptr %.sroa.0.0.copyload.i.i, ptr %1, align 8
  %i.aj = call noundef ptr @_ZNK4mlir10StringAttr20getReferencedDialectEv(ptr noundef nonnull align 8 dereferenceable(8) %1) #23 ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #23
  %.not15 = icmp eq ptr %i.aj, null
  br i1 %.not15, label %.thread, label %bb.h

bb.h:                                             ; preds = %_ZNK4mlir13OperationName10getDialectEv.exit
  %i.ak = load atomic i8, ptr @_ZGVZN4mlir6detail14TypeIDResolverINS_19FunctionOpInterfaceEvE13resolveTypeIDEvE2id acquire, align 8
  %i.al = icmp eq i8 %i.ak, 0
  br i1 %i.al, label %bb.i, label %_ZN4mlir7Dialect27getRegisteredInterfaceForOpINS_19FunctionOpInterfaceEEEPNT_7ConceptENS_13OperationNameE.exit21, !prof !248

bb.i:                                             ; preds = %bb.h
  %i.am = call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN4mlir6detail14TypeIDResolverINS_19FunctionOpInterfaceEvE13resolveTypeIDEvE2id) #23
  %.not.i.i.i.i20 = icmp eq i32 %i.am, 0
  br i1 %.not.i.i.i.i20, label %_ZN4mlir7Dialect27getRegisteredInterfaceForOpINS_19FunctionOpInterfaceEEEPNT_7ConceptENS_13OperationNameE.exit21, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.an = call ptr @_ZN4mlir6detail22FallbackTypeIDResolver22registerImplicitTypeIDEN4llvm9StringRefE(ptr nonnull getelementptr inbounds nuw (i8, ptr @.str.126, i64 49), i64 25) #23
  store ptr %i.an, ptr @_ZZN4mlir6detail14TypeIDResolverINS_19FunctionOpInterfaceEvE13resolveTypeIDEvE2id, align 8
  call void @__cxa_guard_release(ptr nonnull @_ZGVZN4mlir6detail14TypeIDResolverINS_19FunctionOpInterfaceEvE13resolveTypeIDEvE2id) #23
  br label %_ZN4mlir7Dialect27getRegisteredInterfaceForOpINS_19FunctionOpInterfaceEEEPNT_7ConceptENS_13OperationNameE.exit21

_ZN4mlir7Dialect27getRegisteredInterfaceForOpINS_19FunctionOpInterfaceEEEPNT_7ConceptENS_13OperationNameE.exit21: ; preds = %bb.h, %bb.i, %bb.j
  %.sroa.01.0.copyload.i.i.i.i19 = load ptr, ptr @_ZZN4mlir6detail14TypeIDResolverINS_19FunctionOpInterfaceEvE13resolveTypeIDEvE2id, align 8, !tbaa !29
  %i.ao = load ptr, ptr %i.aj, align 8, !tbaa !34
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 104
  %i.aq = load ptr, ptr %i.ap, align 8
  %i.ar = call noundef ptr %i.aq(ptr noundef nonnull align 8 dereferenceable(96) %i.aj, ptr %.sroa.01.0.copyload.i.i.i.i19, ptr nonnull %.sroa.0.0.copyload.i) #23, !inline_history !1023
  br label %.thread

.thread:                                          ; preds = %_ZN4mlir7Dialect27getRegisteredInterfaceForOpINS_19FunctionOpInterfaceEEEPNT_7ConceptENS_13OperationNameE.exit21, %_ZNK4mlir13OperationName10getDialectEv.exit, %_ZN4mlir7Dialect27getRegisteredInterfaceForOpINS_19FunctionOpInterfaceEEEPNT_7ConceptENS_13OperationNameE.exit, %_ZNK4mlir13OperationName12getInterfaceINS_19FunctionOpInterfaceEEEPNT_7ConceptEv.exit
  %.3 = phi ptr [ %i.ah, %_ZN4mlir7Dialect27getRegisteredInterfaceForOpINS_19FunctionOpInterfaceEEEPNT_7ConceptENS_13OperationNameE.exit ], [ %i.x, %_ZNK4mlir13OperationName12getInterfaceINS_19FunctionOpInterfaceEEEPNT_7ConceptEv.exit ], [ %i.ar, %_ZN4mlir7Dialect27getRegisteredInterfaceForOpINS_19FunctionOpInterfaceEEEPNT_7ConceptENS_13OperationNameE.exit21 ], [ null, %_ZNK4mlir13OperationName10getDialectEv.exit ]
  ret ptr %.3
}

declare noundef ptr @_ZNK4mlir10StringAttr20getReferencedDialectEv(ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #19

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i32 @bcmp(ptr captures(none), ptr captures(none), i64) local_unnamed_addr #20

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #21

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #22

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #22

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umax.i32(i32, i32) #22

attributes #0 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree nounwind }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #4 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #6 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nobuiltin allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { inlinehint mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { inlinehint nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #16 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #17 = { mustprogress noinline nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #18 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #19 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #20 = { nocallback nofree nosync nounwind willreturn memory(argmem: read) }
attributes #21 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #22 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #23 = { nounwind }
attributes #24 = { builtin nounwind allocsize(0) }
attributes #25 = { builtin nounwind }
attributes #26 = { noreturn nounwind }

!llvm.module.flags = !{!17, !18}
!llvm.ident = !{!19}
!llvm.errno.tbaa = !{!24}

!0 = distinct !{ptr @_ZN4mlir6detail11PassOptions6OptionIbN4llvm2cl6parserIbEEED2Ev, null, null}
!1 = distinct !{null, null}
!2 = distinct !{null, null}
!3 = distinct !{null, null}
end_hunk_0
