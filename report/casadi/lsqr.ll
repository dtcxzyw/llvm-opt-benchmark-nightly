Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/casadi/original/lsqr?download=true
inline.NumInlined: 579
inline.NumDeleted: 289
loop-unroll.NumRuntimeUnrolled: 16
loop-unroll.NumUnrolled: 16
begin_hunk_0_@_ZN6casadi4Lsqr7creatorERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKNS_8SparsityE:bb.a
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %bb.a
  ret ptr %i.a

bb.c:                                             ; preds = %bb.a
  %i.b = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPvm(ptr noundef nonnull %i.a, i64 noundef 184) #23
  resume { ptr, i32 } %i.b
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden noundef ptr @_ZN6casadi4Lsqr11deserializeERNS_19DeserializingStreamE(ptr noundef nonnull align 8 dereferenceable(42) %0) #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = tail call noalias noundef nonnull dereferenceable(184) ptr @_Znwm(i64 noundef 184) #22 ; 5 uses
  invoke void @_ZN6casadi14LinsolInternalC2ERNS_19DeserializingStreamE(ptr noundef nonnull align 8 dereferenceable(184) %i.a, ptr noundef nonnull align 8 dereferenceable(42) %0)
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %bb.a
  store ptr getelementptr inbounds nuw inrange(-16, 208) (i8, ptr @_ZTVN6casadi4LsqrE, i64 16), ptr %i.a, align 8, !tbaa !20
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 168
  store ptr getelementptr inbounds nuw inrange(-16, 8) (i8, ptr @_ZTVN6casadi4LsqrE, i64 240), ptr %i.b, align 8, !tbaa !20
  ret ptr %i.a

bb.c:                                             ; preds = %bb.a
  %i.c = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPvm(ptr noundef nonnull %i.a, i64 noundef 184) #23
  resume { ptr, i32 } %i.c
}

; Function Attrs: mustprogress uwtable
define void @casadi_load_linsol_lsqr() local_unnamed_addr #1 {
bb.a:
  %0 = alloca %"struct.casadi::PluginInterface<casadi::LinsolInternal>::Plugin", align 8 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %0) #24
  call void @_ZN6casadi15PluginInterfaceINS_14LinsolInternalEE16pluginFromRegFcnEPFiPNS2_6PluginEE(ptr dead_on_unwind nonnull writable sret(%"struct.casadi::PluginInterface<casadi::LinsolInternal>::Plugin") align 8 %0, ptr noundef nonnull @casadi_register_linsol_lsqr)
  call void @_ZN6casadi15PluginInterfaceINS_14LinsolInternalEE14registerPluginERKNS2_6PluginEb(ptr noundef nonnull align 8 dereferenceable(48) %0, i1 noundef zeroext true)
  call void @llvm.lifetime.end.p0(ptr nonnull %0) #24
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN6casadi4LsqrC2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKNS_8SparsityE(ptr noundef nonnull align 8 dereferenceable(184) %0, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(8) %2) unnamed_addr #1 align 2 {
bb.a:
  tail call void @_ZN6casadi14LinsolInternalC2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKNS_8SparsityE(ptr noundef nonnull align 8 dereferenceable(184) %0, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(8) %2)
  store ptr getelementptr inbounds nuw inrange(-16, 208) (i8, ptr @_ZTVN6casadi4LsqrE, i64 16), ptr %0, align 8, !tbaa !20
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 168
  store ptr getelementptr inbounds nuw inrange(-16, 8) (i8, ptr @_ZTVN6casadi4LsqrE, i64 240), ptr %i.a, align 8, !tbaa !20
  ret void
}

declare void @_ZN6casadi14LinsolInternalC2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKNS_8SparsityE(ptr noundef nonnull align 8 dereferenceable(184), ptr noundef nonnull align 8 dereferenceable(32), ptr noundef nonnull align 8 dereferenceable(8)) unnamed_addr #2

; Function Attrs: mustprogress nounwind uwtable
define void @_ZN6casadi4LsqrD2Ev(ptr noundef nonnull align 8 dead_on_return(184) dereferenceable(184) initializes((0, 8), (168, 176)) %0) unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 208) (i8, ptr @_ZTVN6casadi4LsqrE, i64 16), ptr %0, align 8, !tbaa !20
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 168
  store ptr getelementptr inbounds nuw inrange(-16, 8) (i8, ptr @_ZTVN6casadi4LsqrE, i64 240), ptr %i.a, align 8, !tbaa !20
  invoke void @_ZN6casadi13ProtoFunction9clear_memEv(ptr noundef nonnull align 8 dereferenceable(168) %0)
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN6casadi14LinsolInternalD2Ev(ptr noundef nonnull align 8 dead_on_return(184) dereferenceable(184) %0) #24
  ret void

bb.c:                                             ; preds = %bb.a
  %i.b = landingpad { ptr, i32 }
          catch ptr null
  %i.c = extractvalue { ptr, i32 } %i.b, 0
  tail call void @__clang_call_terminate(ptr %i.c) #25
  unreachable
}

declare void @_ZN6casadi13ProtoFunction9clear_memEv(ptr noundef nonnull align 8 dereferenceable(168)) local_unnamed_addr #2

declare i32 @__gxx_personality_v0(...)

; Function Attrs: noinline noreturn nounwind uwtable
define linkonce_odr hidden void @__clang_call_terminate(ptr noundef %0) local_unnamed_addr #4 comdat {
bb.a:
  %i.a = tail call ptr @__cxa_begin_catch(ptr %0) #24 ; 0 uses
  tail call void @_ZSt9terminatev() #25
  unreachable
}

declare ptr @__cxa_begin_catch(ptr) local_unnamed_addr

; Function Attrs: cold nofree noreturn
declare void @_ZSt9terminatev() local_unnamed_addr #5

; Function Attrs: nounwind
declare void @_ZN6casadi14LinsolInternalD2Ev(ptr noundef nonnull align 8 dead_on_return(184) dereferenceable(184)) unnamed_addr #6

; Function Attrs: mustprogress nounwind uwtable
define void @_ZN6casadi4LsqrD0Ev(ptr noundef nonnull align 8 dereferenceable(184) %0) unnamed_addr #3 align 2 {
bb.a:
  tail call void @_ZN6casadi4LsqrD1Ev(ptr noundef nonnull align 8 dead_on_return(184) dereferenceable(184) %0) #24
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 184) #23
  ret void
}

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPvm(ptr noundef, i64 noundef) local_unnamed_addr #7

; Function Attrs: mustprogress uwtable
define noundef range(i32 0, 2) i32 @_ZNK6casadi4Lsqr8init_memEPv(ptr noundef nonnull align 8 dereferenceable(184) %0, ptr noundef %1) unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = tail call noundef i32 @_ZNK6casadi14LinsolInternal8init_memEPv(ptr noundef nonnull align 8 dereferenceable(184) %0, ptr noundef %1)
  %.not = icmp eq i32 %i.a, 0
  br i1 %.not, label %bb.b, label %_ZNSt6vectorIdSaIdEE6resizeEm.exit7

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 88 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 176 ; 3 uses
  %i.d = tail call noundef i64 @_ZNK6casadi8Sparsity5size1Ev(ptr noundef nonnull align 8 dereferenceable(8) %i.c)
  %i.e = tail call noundef i64 @_ZNK6casadi8Sparsity5size2Ev(ptr noundef nonnull align 8 dereferenceable(8) %i.c)
  %i.f = shl nsw i64 %i.e, 2
  %i.g = add nsw i64 %i.f, %i.d                   ; 4 uses
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 96 ; 2 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !23   ; 2 uses
  %i.j = load ptr, ptr %i.b, align 8, !tbaa !24   ; 2 uses
  %i.k = ptrtoint ptr %i.i to i64
  %i.l = ptrtoint ptr %i.j to i64
  %i.m = sub i64 %i.k, %i.l
  %i.n = ashr exact i64 %i.m, 3                   ; 3 uses
  %i.o = icmp ugt i64 %i.g, %i.n
  br i1 %i.o, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.p = sub nuw i64 %i.g, %i.n
  tail call void @_ZNSt6vectorIdSaIdEE17_M_default_appendEm(ptr noundef nonnull align 8 dereferenceable(24) %i.b, i64 noundef %i.p)
  br label %_ZNSt6vectorIdSaIdEE6resizeEm.exit

bb.d:                                             ; preds = %bb.b
  %i.q = icmp ult i64 %i.g, %i.n
  br i1 %i.q, label %bb.e, label %_ZNSt6vectorIdSaIdEE6resizeEm.exit

bb.e:                                             ; preds = %bb.d
  %i.r = getelementptr inbounds nuw [8 x i8], ptr %i.j, i64 %i.g ; 2 uses
  %.not.i.i = icmp eq ptr %i.i, %i.r
  br i1 %.not.i.i, label %_ZNSt6vectorIdSaIdEE6resizeEm.exit, label %_ZSt8_DestroyIPddEvT_S1_RSaIT0_E.exit.i.i

_ZSt8_DestroyIPddEvT_S1_RSaIT0_E.exit.i.i:        ; preds = %bb.e
  store ptr %i.r, ptr %i.h, align 8, !tbaa !23
  br label %_ZNSt6vectorIdSaIdEE6resizeEm.exit

_ZNSt6vectorIdSaIdEE6resizeEm.exit:               ; preds = %bb.c, %bb.d, %bb.e, %_ZSt8_DestroyIPddEvT_S1_RSaIT0_E.exit.i.i
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 112 ; 2 uses
  %i.t = tail call noundef i64 @_ZNK6casadi8Sparsity3nnzEv(ptr noundef nonnull align 8 dereferenceable(8) %i.c) ; 4 uses
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 120 ; 2 uses
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !23   ; 2 uses
  %i.w = load ptr, ptr %i.s, align 8, !tbaa !24   ; 2 uses
  %i.x = ptrtoint ptr %i.v to i64
  %i.y = ptrtoint ptr %i.w to i64
  %i.z = sub i64 %i.x, %i.y
  %i.aa = ashr exact i64 %i.z, 3                  ; 3 uses
  %i.ab = icmp ugt i64 %i.t, %i.aa
  br i1 %i.ab, label %bb.f, label %bb.g

bb.f:                                             ; preds = %_ZNSt6vectorIdSaIdEE6resizeEm.exit
  %i.ac = sub nuw i64 %i.t, %i.aa
  tail call void @_ZNSt6vectorIdSaIdEE17_M_default_appendEm(ptr noundef nonnull align 8 dereferenceable(24) %i.s, i64 noundef %i.ac)
  br label %_ZNSt6vectorIdSaIdEE6resizeEm.exit7

bb.g:                                             ; preds = %_ZNSt6vectorIdSaIdEE6resizeEm.exit
  %i.ad = icmp ult i64 %i.t, %i.aa
  br i1 %i.ad, label %bb.h, label %_ZNSt6vectorIdSaIdEE6resizeEm.exit7

bb.h:                                             ; preds = %bb.g
  %i.ae = getelementptr inbounds nuw [8 x i8], ptr %i.w, i64 %i.t ; 2 uses
  %.not.i.i5 = icmp eq ptr %i.v, %i.ae
  br i1 %.not.i.i5, label %_ZNSt6vectorIdSaIdEE6resizeEm.exit7, label %_ZSt8_DestroyIPddEvT_S1_RSaIT0_E.exit.i.i6

_ZSt8_DestroyIPddEvT_S1_RSaIT0_E.exit.i.i6:       ; preds = %bb.h
  store ptr %i.ae, ptr %i.u, align 8, !tbaa !23
  br label %_ZNSt6vectorIdSaIdEE6resizeEm.exit7

_ZNSt6vectorIdSaIdEE6resizeEm.exit7:              ; preds = %_ZSt8_DestroyIPddEvT_S1_RSaIT0_E.exit.i.i6, %bb.h, %bb.g, %bb.f, %bb.a
  %.0 = phi i32 [ 1, %bb.a ], [ 0, %bb.f ], [ 0, %bb.g ], [ 0, %bb.h ], [ 0, %_ZSt8_DestroyIPddEvT_S1_RSaIT0_E.exit.i.i6 ]
  ret i32 %.0
}

declare noundef i32 @_ZNK6casadi14LinsolInternal8init_memEPv(ptr noundef nonnull align 8 dereferenceable(184), ptr noundef) unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #8

declare noundef i64 @_ZNK6casadi8Sparsity3nnzEv(ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #8

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define noundef i32 @_ZNK6casadi4Lsqr5nfactEPvPKd(ptr nofree nonnull readnone align 8 captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(none) %2) unnamed_addr #9 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 112
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 120
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !23   ; 2 uses
  %i.d = load ptr, ptr %i.a, align 8, !tbaa !24   ; 4 uses
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = ptrtoint ptr %i.d to i64
  %i.g = sub i64 %i.e, %i.f                       ; 3 uses
  %i.h = icmp sgt i64 %i.g, 8
  br i1 %i.h, label %bb.b, label %bb.c, !prof !70

bb.b:                                             ; preds = %bb.a
  %3 = icmp eq ptr %i.d, %i.c
  %spec.select.i = select i1 %3, ptr null, ptr %i.d
  tail call void @llvm.memmove.p0.p0.i64(ptr align 8 %spec.select.i, ptr align 8 %2, i64 %i.g, i1 false)
  br label %_ZSt4copyIPKdPdET0_T_S4_S3_.exit

bb.c:                                             ; preds = %bb.a
  %i.i = icmp eq i64 %i.g, 8
  br i1 %i.i, label %bb.d, label %_ZSt4copyIPKdPdET0_T_S4_S3_.exit

bb.d:                                             ; preds = %bb.c
  %i.j = load double, ptr %2, align 8, !tbaa !26
  store double %i.j, ptr %i.d, align 8, !tbaa !26
  br label %_ZSt4copyIPKdPdET0_T_S4_S3_.exit

_ZSt4copyIPKdPdET0_T_S4_S3_.exit:                 ; preds = %bb.b, %bb.c, %bb.d
  ret i32 0
}

; Function Attrs: mustprogress uwtable
define void @_ZNK6casadi4Lsqr8generateERNS_13CodeGeneratorERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESA_xb(ptr noundef nonnull align 8 dereferenceable(184) %0, ptr noundef nonnull align 8 dereferenceable(3289) %1, ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(32) %3, i64 noundef %4, i1 noundef zeroext %5) unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 5 uses
  %6 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %7 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %8 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %9 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #24
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 176 ; 3 uses
  call void @_ZN6casadi13CodeGenerator8sparsityB5cxx11ERKNS_8SparsityEb(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %6, ptr noundef nonnull align 8 dereferenceable(3289) %1, ptr noundef nonnull align 8 dereferenceable(8) %i.b, i1 noundef zeroext true)
  %i.c = invoke noundef nonnull align 8 dereferenceable(3289) ptr @_ZN6casadi13CodeGeneratorlsIPKcEERS0_T_(ptr noundef nonnull align 8 dereferenceable(3289) %1, ptr noundef nonnull @.str.1)
          to label %.noexc.i unwind label %bb.i   ; 0 uses

.noexc.i:                                         ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #24
  %i.d = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 6 uses
  store ptr %i.d, ptr %7, align 8, !tbaa !27
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #24
  store i64 54, ptr %i.a, align 8, !tbaa !28
  %i.e = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %7, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0)
          to label %.noexc unwind label %bb.j     ; 3 uses

.noexc:                                           ; preds = %.noexc.i
  store ptr %i.e, ptr %7, align 8, !tbaa !18
  %i.f = load i64, ptr %i.a, align 8, !tbaa !28   ; 3 uses
  store i64 %i.f, ptr %i.d, align 8, !tbaa !29
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(54) %i.e, ptr noundef nonnull align 1 dereferenceable(54) @.str.2, i64 54, i1 false)
  %i.g = getelementptr inbounds nuw i8, ptr %7, i64 8
  store i64 %i.f, ptr %i.g, align 8, !tbaa !30
  %i.h = getelementptr inbounds nuw i8, ptr %i.e, i64 %i.f
  store i8 0, ptr %i.h, align 1, !tbaa !29
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #24
  invoke void @_ZN6casadi13CodeGenerator7commentERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(3289) %1, ptr noundef nonnull align 8 dereferenceable(32) %7)
          to label %bb.b unwind label %bb.k

bb.b:                                             ; preds = %.noexc
  %i.i = load ptr, ptr %7, align 8, !tbaa !18     ; 2 uses
  %i.j = icmp eq ptr %i.i, %i.d
  br i1 %i.j, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.b
  %i.k = load i64, ptr %i.d, align 8, !tbaa !29
  %i.l = add i64 %i.k, 1
  call void @_ZdlPvm(ptr noundef %i.i, i64 noundef %i.l) #23
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.b, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #24
  %i.m = invoke noundef nonnull align 8 dereferenceable(3289) ptr @_ZN6casadi13CodeGeneratorlsIPKcEERS0_T_(ptr noundef nonnull align 8 dereferenceable(3289) %1, ptr noundef nonnull @.str.3)
          to label %bb.c unwind label %bb.i

bb.c:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.n = invoke noundef i64 @_ZNK6casadi8Sparsity5size1Ev(ptr noundef nonnull align 8 dereferenceable(8) %i.b)
          to label %_ZNK6casadi14LinsolInternal4nrowEv.exit unwind label %bb.i

_ZNK6casadi14LinsolInternal4nrowEv.exit:          ; preds = %bb.c
  %i.o = invoke noundef i64 @_ZNK6casadi8Sparsity5size2Ev(ptr noundef nonnull align 8 dereferenceable(8) %i.b)
          to label %_ZNK6casadi14LinsolInternal4ncolEv.exit unwind label %bb.i

_ZNK6casadi14LinsolInternal4ncolEv.exit:          ; preds = %_ZNK6casadi14LinsolInternal4nrowEv.exit
  %i.p = shl nsw i64 %i.o, 2
  %i.q = add nsw i64 %i.p, %i.n
  %i.r = invoke noundef nonnull align 8 dereferenceable(3289) ptr @_ZN6casadi13CodeGeneratorlsIxEERS0_T_(ptr noundef nonnull align 8 dereferenceable(3289) %i.m, i64 noundef %i.q)
          to label %bb.d unwind label %bb.i

bb.d:                                             ; preds = %_ZNK6casadi14LinsolInternal4ncolEv.exit
  %i.s = invoke noundef nonnull align 8 dereferenceable(3289) ptr @_ZN6casadi13CodeGeneratorlsIPKcEERS0_T_(ptr noundef nonnull align 8 dereferenceable(3289) %i.r, ptr noundef nonnull @.str.4)
          to label %._crit_edge.i.i25 unwind label %bb.i ; 0 uses

._crit_edge.i.i25:                                ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #24
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #24
  %i.t = getelementptr inbounds nuw i8, ptr %9, i64 16 ; 6 uses
  store ptr %i.t, ptr %9, align 8, !tbaa !27
  store i8 119, ptr %i.t, align 8, !tbaa !29
  %i.u = getelementptr inbounds nuw i8, ptr %9, i64 8
  store i64 1, ptr %i.u, align 8, !tbaa !30
  %i.v = getelementptr inbounds nuw i8, ptr %9, i64 17
  store i8 0, ptr %i.v, align 1, !tbaa !29
  invoke void @_ZN6casadi13CodeGenerator10lsqr_solveERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_xbS8_S8_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %8, ptr noundef nonnull align 8 dereferenceable(3289) %1, ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(32) %3, i64 noundef %4, i1 noundef zeroext %5, ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef nonnull align 8 dereferenceable(32) %9)
          to label %bb.e unwind label %bb.l

bb.e:                                             ; preds = %._crit_edge.i.i25
  %i.w = invoke noundef nonnull align 8 dereferenceable(3289) ptr @_ZN6casadi13CodeGeneratorlsERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(3289) %1, ptr noundef nonnull align 8 dereferenceable(32) %8)
          to label %bb.f unwind label %bb.m

bb.f:                                             ; preds = %bb.e
  %i.x = invoke noundef nonnull align 8 dereferenceable(3289) ptr @_ZN6casadi13CodeGeneratorlsIPKcEERS0_T_(ptr noundef nonnull align 8 dereferenceable(3289) %i.w, ptr noundef nonnull @.str.6)
          to label %bb.g unwind label %bb.m       ; 0 uses

bb.g:                                             ; preds = %bb.f
  %i.y = load ptr, ptr %8, align 8, !tbaa !18     ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 2 uses
  %i.aa = icmp eq ptr %i.y, %i.z
  br i1 %i.aa, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit31, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i29

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i29: ; preds = %bb.g
  %i.ab = load i64, ptr %i.z, align 8, !tbaa !29
  %i.ac = add i64 %i.ab, 1
  call void @_ZdlPvm(ptr noundef %i.y, i64 noundef %i.ac) #23
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit31

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit31: ; preds = %bb.g, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i29
  %i.ad = load ptr, ptr %9, align 8, !tbaa !18    ; 2 uses
  %i.ae = icmp eq ptr %i.ad, %i.t
  br i1 %i.ae, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit34, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i32

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i32: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit31
  %i.af = load i64, ptr %i.t, align 8, !tbaa !29
  %i.ag = add i64 %i.af, 1
  call void @_ZdlPvm(ptr noundef %i.ad, i64 noundef %i.ag) #23
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit34

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit34: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit31, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i32
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #24
  %i.ah = invoke noundef nonnull align 8 dereferenceable(3289) ptr @_ZN6casadi13CodeGeneratorlsIPKcEERS0_T_(ptr noundef nonnull align 8 dereferenceable(3289) %1, ptr noundef nonnull @.str.7)
          to label %bb.h unwind label %bb.i       ; 0 uses

bb.h:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit34
  %i.ai = load ptr, ptr %6, align 8, !tbaa !18    ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 2 uses
  %i.ak = icmp eq ptr %i.ai, %i.aj
  br i1 %i.ak, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit37, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i35

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i35: ; preds = %bb.h
  %i.al = load i64, ptr %i.aj, align 8, !tbaa !29
  %i.am = add i64 %i.al, 1
  call void @_ZdlPvm(ptr noundef %i.ai, i64 noundef %i.am) #23
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit37

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit37: ; preds = %bb.h, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i35
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #24
  ret void

bb.i:                                             ; preds = %_ZNK6casadi14LinsolInternal4nrowEv.exit, %bb.c, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit34, %bb.d, %_ZNK6casadi14LinsolInternal4ncolEv.exit, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %bb.a
  %i.an = landingpad { ptr, i32 }
          cleanup
  br label %bb.n

bb.j:                                             ; preds = %.noexc.i
  %i.ao = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit40

bb.k:                                             ; preds = %.noexc
  %i.ap = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.aq = load ptr, ptr %7, align 8, !tbaa !18    ; 2 uses
  %i.ar = icmp eq ptr %i.aq, %i.d
  br i1 %i.ar, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit40, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i38

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i38: ; preds = %bb.k
  %i.as = load i64, ptr %i.d, align 8, !tbaa !29
  %i.at = add i64 %i.as, 1
  call void @_ZdlPvm(ptr noundef %i.aq, i64 noundef %i.at) #23
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit40

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit40: ; preds = %bb.k, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i38, %bb.j
  %.pn = phi { ptr, i32 } [ %i.ao, %bb.j ], [ %i.ap, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i38 ], [ %i.ap, %bb.k ]
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #24
  br label %bb.n

bb.l:                                             ; preds = %._crit_edge.i.i25
  %i.au = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit43

bb.m:                                             ; preds = %bb.f, %bb.e
  %i.av = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.aw = load ptr, ptr %8, align 8, !tbaa !18    ; 2 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 2 uses
  %i.ay = icmp eq ptr %i.aw, %i.ax
  br i1 %i.ay, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit43, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i41

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i41: ; preds = %bb.m
  %i.az = load i64, ptr %i.ax, align 8, !tbaa !29
  %i.ba = add i64 %i.az, 1
  call void @_ZdlPvm(ptr noundef %i.aw, i64 noundef %i.ba) #23
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit43

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit43: ; preds = %bb.m, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i41, %bb.l
  %.pn18 = phi { ptr, i32 } [ %i.au, %bb.l ], [ %i.av, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i41 ], [ %i.av, %bb.m ]
end_hunk_0
