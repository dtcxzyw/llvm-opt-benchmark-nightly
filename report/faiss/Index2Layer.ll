Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/faiss/original/Index2Layer?download=true
inline.NumInlined: 311
inline.NumDeleted: 187
loop-unroll.NumCompletelyUnrolled: 5
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 6
begin_hunk_0_@_ZN5faiss5Index15add_with_ids_exElPKvNS_11NumericTypeEPKl:bb.a

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread: ; preds = %bb.c
  %i.f = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #25
  br label %bb.g

bb.f:                                             ; preds = %bb.e, %bb.d
  %.0 = phi i1 [ false, %bb.e ], [ true, %bb.d ]  ; 2 uses
  %i.g = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  %i.h = load ptr, ptr %5, align 8, !tbaa !56     ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  %i.j = icmp eq ptr %i.h, %i.i
  br i1 %i.j, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.f
  %i.k = load i64, ptr %i.i, align 8, !tbaa !57
  %i.l = add i64 %i.k, 1
  call void @_ZdlPvm(ptr noundef %i.h, i64 noundef %i.l) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #25
  br i1 %.0, label %bb.g, label %bb.h

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #25
  br i1 %.0, label %bb.g, label %bb.h

bb.g:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %.pn13 = phi { ptr, i32 } [ %i.f, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread ], [ %i.g, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %i.g, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ]
  call void @__cxa_free_exception(ptr %i.e) #25
  br label %bb.h

bb.h:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %bb.g
  %.pn12 = phi { ptr, i32 } [ %i.g, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %.pn13, %bb.g ], [ %i.g, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ]
  resume { ptr, i32 } %.pn12

bb.i:                                             ; preds = %bb.e
  unreachable
}

; Function Attrs: mustprogress noreturn uwtable
define void @_ZNK5faiss11Index2Layer6searchElPKflPfPlPKNS_16SearchParametersE(ptr nofree nonnull readnone align 8 captures(none) %0, i64 %1, ptr nofree readnone captures(none) %2, i64 %3, ptr nofree readnone captures(none) %4, ptr nofree readnone captures(none) %5, ptr nofree readnone captures(none) %6) unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 {
._crit_edge.i.i:
  %7 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %i.a = tail call ptr @__cxa_allocate_exception(i64 40) #25 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #25
  %i.b = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 4 uses
  store ptr %i.b, ptr %7, align 8, !tbaa !58
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(15) %i.b, ptr noundef nonnull align 1 dereferenceable(15) @.str.4, i64 15, i1 false)
  %i.c = getelementptr inbounds nuw i8, ptr %7, i64 8
  store i64 15, ptr %i.c, align 8, !tbaa !59
  %i.d = getelementptr inbounds nuw i8, ptr %7, i64 31
  store i8 0, ptr %i.d, align 1, !tbaa !57
  invoke void @_ZN5faiss14FaissExceptionC1ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSA_i(ptr noundef nonnull align 8 dereferenceable(40) %i.a, ptr noundef nonnull align 8 dereferenceable(32) %7, ptr noundef nonnull @__PRETTY_FUNCTION__._ZNK5faiss11Index2Layer6searchElPKflPfPlPKNS_16SearchParametersE, ptr noundef nonnull @.str.5, i32 noundef 110)
          to label %bb.a unwind label %bb.b

bb.a:                                             ; preds = %._crit_edge.i.i
  invoke void @__cxa_throw(ptr nonnull %i.a, ptr nonnull @_ZTIN5faiss14FaissExceptionE, ptr nonnull @_ZN5faiss14FaissExceptionD2Ev) #30
          to label %bb.e unwind label %bb.b

bb.b:                                             ; preds = %bb.a, %._crit_edge.i.i
  %.0 = phi i1 [ false, %bb.a ], [ true, %._crit_edge.i.i ] ; 2 uses
  %i.e = landingpad { ptr, i32 }
          cleanup
  %i.f = load ptr, ptr %7, align 8, !tbaa !56     ; 2 uses
  %i.g = icmp eq ptr %i.f, %i.b
  br i1 %i.g, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.b
  %i.h = load i64, ptr %i.b, align 8, !tbaa !57
  %i.i = add i64 %i.h, 1
  call void @_ZdlPvm(ptr noundef %i.f, i64 noundef %i.i) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #25
  br i1 %.0, label %bb.c, label %bb.d

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #25
  br i1 %.0, label %bb.c, label %bb.d

bb.c:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  call void @__cxa_free_exception(ptr nonnull %i.a) #25
  br label %bb.d

bb.d:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %bb.c
  resume { ptr, i32 } %i.e

bb.e:                                             ; preds = %bb.a
  unreachable
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNK5faiss5Index9search_exElPKvNS_11NumericTypeElPfPlPKNS_16SearchParametersE(ptr noundef nonnull align 8 dereferenceable(36) %0, i64 noundef %1, ptr noundef %2, i32 noundef %3, i64 noundef %4, ptr noundef %5, ptr noundef %6, ptr noundef %7) unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %8 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %9 = alloca %"class.std::allocator.12", align 1 ; 5 uses
  %i.a = icmp eq i32 %3, 0
  br i1 %i.a, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.b = load ptr, ptr %0, align 8, !tbaa !49
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 72
  %i.d = load ptr, ptr %i.c, align 8
  tail call void %i.d(ptr noundef nonnull align 8 dereferenceable(36) %0, i64 noundef %1, ptr noundef %2, i64 noundef %4, ptr noundef %5, ptr noundef %6, ptr noundef %7)
  ret void

bb.c:                                             ; preds = %bb.a
  %i.e = tail call ptr @__cxa_allocate_exception(i64 40) #25 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #25
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %8, ptr noundef nonnull @.str.25, ptr noundef nonnull align 1 dereferenceable(1) %9)
          to label %bb.d unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread

bb.d:                                             ; preds = %bb.c
  invoke void @_ZN5faiss14FaissExceptionC1ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSA_i(ptr noundef nonnull align 8 dereferenceable(40) %i.e, ptr noundef nonnull align 8 dereferenceable(32) %8, ptr noundef nonnull @__PRETTY_FUNCTION__._ZNK5faiss5Index9search_exElPKvNS_11NumericTypeElPfPlPKNS_16SearchParametersE, ptr noundef nonnull @.str.22, i32 noundef 231)
          to label %bb.e unwind label %bb.f

bb.e:                                             ; preds = %bb.d
  invoke void @__cxa_throw(ptr nonnull %i.e, ptr nonnull @_ZTIN5faiss14FaissExceptionE, ptr nonnull @_ZN5faiss14FaissExceptionD2Ev) #30
          to label %bb.i unwind label %bb.f

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread: ; preds = %bb.c
  %i.f = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #25
  br label %bb.g

bb.f:                                             ; preds = %bb.e, %bb.d
  %.0 = phi i1 [ false, %bb.e ], [ true, %bb.d ]  ; 2 uses
  %i.g = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  %i.h = load ptr, ptr %8, align 8, !tbaa !56     ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 2 uses
  %i.j = icmp eq ptr %i.h, %i.i
  br i1 %i.j, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.f
  %i.k = load i64, ptr %i.i, align 8, !tbaa !57
  %i.l = add i64 %i.k, 1
  call void @_ZdlPvm(ptr noundef %i.h, i64 noundef %i.l) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #25
  br i1 %.0, label %bb.g, label %bb.h

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #25
  br i1 %.0, label %bb.g, label %bb.h

bb.g:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %.pn16 = phi { ptr, i32 } [ %i.f, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread ], [ %i.g, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %i.g, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ]
  call void @__cxa_free_exception(ptr %i.e) #25
  br label %bb.h

bb.h:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %bb.g
  %.pn15 = phi { ptr, i32 } [ %i.g, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %.pn16, %bb.g ], [ %i.g, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ]
  resume { ptr, i32 } %.pn15

bb.i:                                             ; preds = %bb.e
  unreachable
}

declare void @_ZNK5faiss14IndexFlatCodes7search1EPKfRNS_22ResultHandlerUnorderedIflEEPNS_16SearchParametersE(ptr noundef nonnull align 8 dereferenceable(128), ptr noundef, ptr noundef nonnull align 1, ptr noundef) unnamed_addr #2

declare void @_ZNK5faiss14IndexFlatCodes12range_searchElPKffPNS_17RangeSearchResultEPKNS_16SearchParametersE(ptr noundef nonnull align 8 dereferenceable(128), i64 noundef, ptr noundef, float noundef, ptr noundef, ptr noundef) unnamed_addr #2

declare void @_ZNK5faiss5Index6assignElPKfPll(ptr noundef nonnull align 8 dereferenceable(36), i64 noundef, ptr noundef, ptr noundef, i64 noundef) unnamed_addr #2

declare void @_ZN5faiss14IndexFlatCodes5resetEv(ptr noundef nonnull align 8 dereferenceable(128)) unnamed_addr #2

declare noundef i64 @_ZN5faiss14IndexFlatCodes10remove_idsERKNS_10IDSelectorE(ptr noundef nonnull align 8 dereferenceable(128), ptr noundef nonnull align 8 dereferenceable(8)) unnamed_addr #2

declare void @_ZNK5faiss14IndexFlatCodes11reconstructElPf(ptr noundef nonnull align 8 dereferenceable(128), i64 noundef, ptr noundef) unnamed_addr #2

declare void @_ZNK5faiss5Index17reconstruct_batchElPKlPf(ptr noundef nonnull align 8 dereferenceable(36), i64 noundef, ptr noundef, ptr noundef) unnamed_addr #2

declare void @_ZNK5faiss14IndexFlatCodes13reconstruct_nEllPf(ptr noundef nonnull align 8 dereferenceable(128), i64 noundef, i64 noundef, ptr noundef) unnamed_addr #2

declare void @_ZNK5faiss5Index22search_and_reconstructElPKflPfPlS3_PKNS_16SearchParametersE(ptr noundef nonnull align 8 dereferenceable(36), i64 noundef, ptr noundef, i64 noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) unnamed_addr #2

declare void @_ZNK5faiss5Index13search_subsetElPKflPKllPfPl(ptr noundef nonnull align 8 dereferenceable(36), i64 noundef, ptr noundef, i64 noundef, ptr noundef, i64 noundef, ptr noundef, ptr noundef) unnamed_addr #2

declare void @_ZNK5faiss5Index16compute_residualEPKfPfl(ptr noundef nonnull align 8 dereferenceable(36), ptr noundef, ptr noundef, i64 noundef) unnamed_addr #2

declare void @_ZNK5faiss5Index18compute_residual_nElPKfPfPKl(ptr noundef nonnull align 8 dereferenceable(36), i64 noundef, ptr noundef, ptr noundef, ptr noundef) unnamed_addr #2

; Function Attrs: mustprogress uwtable
define noundef ptr @_ZNK5faiss11Index2Layer21get_distance_computerEv(ptr noundef nonnull align 8 dereferenceable(456) %0) unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !47   ; 3 uses
  %i.c = icmp eq ptr %i.b, null
  br i1 %i.c, label %.critedge14, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = tail call ptr @__dynamic_cast(ptr nonnull %i.b, ptr nonnull @_ZTIN5faiss5IndexE, ptr nonnull @_ZTIN5faiss19MultiIndexQuantizerE, i64 0) #25
  %i.e = icmp eq ptr %i.d, null
  br i1 %i.e, label %._crit_edge, label %bb.c

._crit_edge:                                      ; preds = %bb.b
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %0, i64 256
  %.pre = load i64, ptr %.phi.trans.insert, align 8
  br label %bb.l

bb.c:                                             ; preds = %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 240
  %i.g = load i64, ptr %i.f, align 8, !tbaa !52
  %i.h = and i64 %i.g, 1
  %i.i = icmp eq i64 %i.h, 0
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 256 ; 2 uses
  %i.k = load i64, ptr %i.j, align 8              ; 2 uses
  %i.l = icmp eq i64 %i.k, 4
  %or.cond = select i1 %i.i, i1 %i.l, i1 false
  br i1 %or.cond, label %bb.d, label %bb.l

bb.d:                                             ; preds = %bb.c
  %i.m = tail call noalias noundef nonnull dereferenceable(80) ptr @_Znwm(i64 noundef 80) #31 ; 12 uses
  store ptr getelementptr inbounds nuw inrange(-16, 48) (i8, ptr @_ZTVN5faiss12_GLOBAL__N_114Distance2LevelE, i64 16), ptr %i.m, align 8, !tbaa !49
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 16 ; 2 uses
  store ptr %0, ptr %i.n, align 8, !tbaa !99
  %i.o = getelementptr inbounds nuw i8, ptr %i.m, i64 24 ; 3 uses
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.o, i8 0, i64 48, i1 false)
  %i.q = load i32, ptr %i.p, align 8, !tbaa !18   ; 2 uses
  %i.r = sext i32 %i.q to i64                     ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  store i64 %i.r, ptr %i.s, align 8, !tbaa !63
  %i.t = load i64, ptr %i.j, align 8, !tbaa !100
  %i.u = icmp eq i64 %i.t, 4
  br i1 %i.u, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.v = load ptr, ptr @stderr, align 8, !tbaa !102
  %i.w = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.v, ptr noundef nonnull @.str.13, ptr noundef nonnull @.str.16, ptr noundef nonnull @__PRETTY_FUNCTION__._ZN5faiss12_GLOBAL__N_114Distance2LevelC2ERKNS_11Index2LayerE, ptr noundef nonnull @.str.5, i32 noundef 144) #32 ; 0 uses
  tail call void @abort() #33
  unreachable

bb.f:                                             ; preds = %bb.d
  %i.x = getelementptr inbounds nuw i8, ptr %i.m, i64 64
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 344
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !64
  store ptr %i.z, ptr %i.x, align 8, !tbaa !65
  %.not.i.i = icmp eq i32 %i.q, 0
  br i1 %.not.i.i, label %_ZN5faiss12_GLOBAL__N_114Distance2LevelC2ERKNS_11Index2LayerE.exit.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.aa = shl nsw i64 %i.r, 1
  invoke void @_ZNSt6vectorIfSaIfEE17_M_default_appendEm(ptr noundef nonnull align 8 dereferenceable(24) %i.o, i64 noundef %i.aa)
          to label %._ZN5faiss12_GLOBAL__N_114Distance2LevelC2ERKNS_11Index2LayerE.exit_crit_edge.i unwind label %bb.h

._ZN5faiss12_GLOBAL__N_114Distance2LevelC2ERKNS_11Index2LayerE.exit_crit_edge.i: ; preds = %bb.g
  %.pre.i = load ptr, ptr %i.n, align 8, !tbaa !66
  br label %_ZN5faiss12_GLOBAL__N_114Distance2LevelC2ERKNS_11Index2LayerE.exit.i

bb.h:                                             ; preds = %bb.g
  %i.ab = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ac = load ptr, ptr %i.o, align 8, !tbaa !64  ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.ac, null
  br i1 %.not.i.i.i.i.i, label %.body, label %.body.sink.split

_ZN5faiss12_GLOBAL__N_114Distance2LevelC2ERKNS_11Index2LayerE.exit.i: ; preds = %._ZN5faiss12_GLOBAL__N_114Distance2LevelC2ERKNS_11Index2LayerE.exit_crit_edge.i, %bb.f
  %i.ad = phi ptr [ %.pre.i, %._ZN5faiss12_GLOBAL__N_114Distance2LevelC2ERKNS_11Index2LayerE.exit_crit_edge.i ], [ %0, %bb.f ] ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 48) (i8, ptr @_ZTVN5faiss12_GLOBAL__N_114Distance2xXPQ4E, i64 16), ptr %i.m, align 8, !tbaa !49
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 128
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !47 ; 2 uses
  %i.ag = icmp eq ptr %i.af, null
  br i1 %i.ag, label %.thread.i, label %bb.i

bb.i:                                             ; preds = %_ZN5faiss12_GLOBAL__N_114Distance2LevelC2ERKNS_11Index2LayerE.exit.i
  %i.ah = tail call ptr @__dynamic_cast(ptr nonnull %i.af, ptr nonnull @_ZTIN5faiss5IndexE, ptr nonnull @_ZTIN5faiss19MultiIndexQuantizerE, i64 0) #25 ; 3 uses
  %.not.i = icmp eq ptr %i.ah, null
  br i1 %.not.i, label %.thread.i, label %bb.j

.thread.i:                                        ; preds = %bb.i, %_ZN5faiss12_GLOBAL__N_114Distance2LevelC2ERKNS_11Index2LayerE.exit.i
  %i.ai = load ptr, ptr @stderr, align 8, !tbaa !102
  %i.aj = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.ai, ptr noundef nonnull @.str.13, ptr noundef nonnull @.str.14, ptr noundef nonnull @__PRETTY_FUNCTION__._ZN5faiss12_GLOBAL__N_114Distance2xXPQ4C2ERKNS_11Index2LayerE, ptr noundef nonnull @.str.5, i32 noundef 208) #32 ; 0 uses
  tail call void @abort() #33
  unreachable

bb.j:                                             ; preds = %bb.i
  %i.ak = getelementptr inbounds nuw i8, ptr %i.ad, i64 240
  %i.al = load i64, ptr %i.ak, align 8, !tbaa !52 ; 2 uses
  %i.am = and i64 %i.al, 1
  %i.an = icmp eq i64 %i.am, 0
  br i1 %i.an, label %_ZN5faiss12_GLOBAL__N_114Distance2xXPQ4C2ERKNS_11Index2LayerE.exit, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ao = load ptr, ptr @stderr, align 8, !tbaa !102
  %i.ap = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.ao, ptr noundef nonnull @.str.13, ptr noundef nonnull @.str.15, ptr noundef nonnull @__PRETTY_FUNCTION__._ZN5faiss12_GLOBAL__N_114Distance2xXPQ4C2ERKNS_11Index2LayerE, ptr noundef nonnull @.str.5, i32 noundef 209) #32 ; 0 uses
  tail call void @abort() #33
  unreachable

_ZN5faiss12_GLOBAL__N_114Distance2xXPQ4C2ERKNS_11Index2LayerE.exit: ; preds = %bb.j
  %i.aq = lshr exact i64 %i.al, 1
  %i.ar = trunc i64 %i.aq to i32
  %i.as = getelementptr inbounds nuw i8, ptr %i.m, i64 72
  store i32 %i.ar, ptr %i.as, align 8, !tbaa !68
  %i.at = getelementptr inbounds nuw i8, ptr %i.ah, i64 72
  %i.au = load i64, ptr %i.at, align 8, !tbaa !104
  %i.av = trunc i64 %i.au to i32
  %i.aw = getelementptr inbounds nuw i8, ptr %i.m, i64 76
  store i32 %i.av, ptr %i.aw, align 4, !tbaa !69
  %i.ax = getelementptr inbounds nuw i8, ptr %i.ah, i64 168
  %i.ay = load ptr, ptr %i.ax, align 8, !tbaa !64
  %i.az = getelementptr inbounds nuw i8, ptr %i.m, i64 56
  store ptr %i.ay, ptr %i.az, align 8, !tbaa !70
  br label %bb.s

bb.l:                                             ; preds = %._crit_edge, %bb.c
  %1 = phi i64 [ %.pre, %._crit_edge ], [ %i.k, %bb.c ]
  %2 = tail call ptr @__dynamic_cast(ptr nonnull %i.b, ptr nonnull @_ZTIN5faiss5IndexE, ptr nonnull @_ZTIN5faiss9IndexFlatE, i64 0) #25
  %3 = icmp ne ptr %2, null
  %i.ba = icmp eq i64 %1, 4
  %or.cond17 = select i1 %3, i1 %i.ba, i1 false
  br i1 %or.cond17, label %bb.m, label %.critedge14

bb.m:                                             ; preds = %bb.l
  %4 = getelementptr inbounds nuw i8, ptr %0, i64 256
  %i.bb = tail call noalias noundef nonnull dereferenceable(80) ptr @_Znwm(i64 noundef 80) #31 ; 12 uses
  store ptr getelementptr inbounds nuw inrange(-16, 48) (i8, ptr @_ZTVN5faiss12_GLOBAL__N_114Distance2LevelE, i64 16), ptr %i.bb, align 8, !tbaa !49
  %i.bc = getelementptr inbounds nuw i8, ptr %i.bb, i64 16 ; 2 uses
  store ptr %0, ptr %i.bc, align 8, !tbaa !99
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bb, i64 24 ; 3 uses
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.bd, i8 0, i64 48, i1 false)
  %i.bf = load i32, ptr %i.be, align 8, !tbaa !18 ; 2 uses
  %i.bg = sext i32 %i.bf to i64                   ; 2 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bb, i64 8
  store i64 %i.bg, ptr %i.bh, align 8, !tbaa !63
  %i.bi = load i64, ptr %4, align 8, !tbaa !100
  %i.bj = icmp eq i64 %i.bi, 4
  br i1 %i.bj, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.bk = load ptr, ptr @stderr, align 8, !tbaa !102
  %i.bl = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.bk, ptr noundef nonnull @.str.13, ptr noundef nonnull @.str.16, ptr noundef nonnull @__PRETTY_FUNCTION__._ZN5faiss12_GLOBAL__N_114Distance2LevelC2ERKNS_11Index2LayerE, ptr noundef nonnull @.str.5, i32 noundef 144) #32 ; 0 uses
  tail call void @abort() #33
  unreachable

bb.o:                                             ; preds = %bb.m
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bb, i64 64
  %i.bn = getelementptr inbounds nuw i8, ptr %0, i64 344
  %i.bo = load ptr, ptr %i.bn, align 8, !tbaa !64
  store ptr %i.bo, ptr %i.bm, align 8, !tbaa !65
  %.not.i.i15 = icmp eq i32 %i.bf, 0
  br i1 %.not.i.i15, label %_ZN5faiss12_GLOBAL__N_114Distance2LevelC2ERKNS_11Index2LayerE.exit.i20, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.bp = shl nsw i64 %i.bg, 1
  invoke void @_ZNSt6vectorIfSaIfEE17_M_default_appendEm(ptr noundef nonnull align 8 dereferenceable(24) %i.bd, i64 noundef %i.bp)
          to label %._ZN5faiss12_GLOBAL__N_114Distance2LevelC2ERKNS_11Index2LayerE.exit_crit_edge.i18 unwind label %bb.q

._ZN5faiss12_GLOBAL__N_114Distance2LevelC2ERKNS_11Index2LayerE.exit_crit_edge.i18: ; preds = %bb.p
  %.pre.i19 = load ptr, ptr %i.bc, align 8, !tbaa !66
  br label %_ZN5faiss12_GLOBAL__N_114Distance2LevelC2ERKNS_11Index2LayerE.exit.i20

bb.q:                                             ; preds = %bb.p
  %i.bq = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.br = load ptr, ptr %i.bd, align 8, !tbaa !64 ; 2 uses
  %.not.i.i.i.i.i16 = icmp eq ptr %i.br, null
  br i1 %.not.i.i.i.i.i16, label %.body, label %.body.sink.split

_ZN5faiss12_GLOBAL__N_114Distance2LevelC2ERKNS_11Index2LayerE.exit.i20: ; preds = %._ZN5faiss12_GLOBAL__N_114Distance2LevelC2ERKNS_11Index2LayerE.exit_crit_edge.i18, %bb.o
  %i.bs = phi ptr [ %.pre.i19, %._ZN5faiss12_GLOBAL__N_114Distance2LevelC2ERKNS_11Index2LayerE.exit_crit_edge.i18 ], [ %0, %bb.o ] ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 48) (i8, ptr @_ZTVN5faiss12_GLOBAL__N_112DistanceXPQ4E, i64 16), ptr %i.bb, align 8, !tbaa !49
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bb, i64 72 ; 2 uses
  store i32 0, ptr %i.bt, align 8, !tbaa !72
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bb, i64 76
  store i32 0, ptr %i.bu, align 4, !tbaa !105
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bs, i64 128
  %i.bw = load ptr, ptr %i.bv, align 8, !tbaa !47 ; 2 uses
  %i.bx = icmp eq ptr %i.bw, null
  br i1 %i.bx, label %.thread.i22, label %bb.r

bb.r:                                             ; preds = %_ZN5faiss12_GLOBAL__N_114Distance2LevelC2ERKNS_11Index2LayerE.exit.i20
  %i.by = tail call ptr @__dynamic_cast(ptr nonnull %i.bw, ptr nonnull @_ZTIN5faiss5IndexE, ptr nonnull @_ZTIN5faiss9IndexFlatE, i64 0) #25 ; 2 uses
  %.not.i21 = icmp eq ptr %i.by, null
  br i1 %.not.i21, label %.thread.i22, label %_ZN5faiss12_GLOBAL__N_112DistanceXPQ4C2ERKNS_11Index2LayerE.exit

.thread.i22:                                      ; preds = %bb.r, %_ZN5faiss12_GLOBAL__N_114Distance2LevelC2ERKNS_11Index2LayerE.exit.i20
  %i.bz = load ptr, ptr @stderr, align 8, !tbaa !102
  %i.ca = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.bz, ptr noundef nonnull @.str.13, ptr noundef nonnull @.str.18, ptr noundef nonnull @__PRETTY_FUNCTION__._ZN5faiss12_GLOBAL__N_112DistanceXPQ4C2ERKNS_11Index2LayerE, ptr noundef nonnull @.str.5, i32 noundef 170) #32 ; 0 uses
  tail call void @abort() #33
  unreachable

_ZN5faiss12_GLOBAL__N_112DistanceXPQ4C2ERKNS_11Index2LayerE.exit: ; preds = %bb.r
  %i.cb = getelementptr inbounds nuw i8, ptr %i.bs, i64 240
  %i.cc = load i64, ptr %i.cb, align 8, !tbaa !52
  %i.cd = trunc i64 %i.cc to i32
  store i32 %i.cd, ptr %i.bt, align 8, !tbaa !72
  %i.ce = getelementptr inbounds nuw i8, ptr %i.by, i64 112
  %i.cf = load ptr, ptr %i.ce, align 8, !tbaa !73
  %i.cg = getelementptr inbounds nuw i8, ptr %i.bb, i64 56
  store ptr %i.cf, ptr %i.cg, align 8, !tbaa !70
  br label %bb.s

.critedge14:                                      ; preds = %bb.a, %bb.l
  %i.ch = tail call noundef ptr @_ZNK5faiss5Index21get_distance_computerEv(ptr noundef nonnull align 8 dereferenceable(36) %0)
  br label %bb.s

bb.s:                                             ; preds = %_ZN5faiss12_GLOBAL__N_112DistanceXPQ4C2ERKNS_11Index2LayerE.exit, %_ZN5faiss12_GLOBAL__N_114Distance2xXPQ4C2ERKNS_11Index2LayerE.exit, %.critedge14
  %.1 = phi ptr [ %i.m, %_ZN5faiss12_GLOBAL__N_114Distance2xXPQ4C2ERKNS_11Index2LayerE.exit ], [ %i.ch, %.critedge14 ], [ %i.bb, %_ZN5faiss12_GLOBAL__N_112DistanceXPQ4C2ERKNS_11Index2LayerE.exit ]
  ret ptr %.1

.body.sink.split:                                 ; preds = %bb.q, %bb.h
  %.sink38.a = phi ptr [ %i.m, %bb.h ], [ %i.bb, %bb.q ] ; 2 uses
  %.sink35 = phi ptr [ %i.ac, %bb.h ], [ %i.br, %bb.q ] ; 2 uses
  %.pn.ph = phi { ptr, i32 } [ %i.ab, %bb.h ], [ %i.bq, %bb.q ]
  %i.ci = getelementptr inbounds nuw i8, ptr %.sink38.a, i64 40
  %i.cj = load ptr, ptr %i.ci, align 8, !tbaa !74
  %i.ck = ptrtoint ptr %i.cj to i64
  %i.cl = ptrtoint ptr %.sink35 to i64
  %i.cm = sub i64 %i.ck, %i.cl
  tail call void @_ZdlPvm(ptr noundef nonnull %.sink35, i64 noundef %i.cm) #29
  br label %.body

.body:                                            ; preds = %.body.sink.split, %bb.q, %bb.h
  %.sink = phi ptr [ %i.bb, %bb.q ], [ %i.m, %bb.h ], [ %.sink38.a, %.body.sink.split ]
  %.pn = phi { ptr, i32 } [ %i.bq, %bb.q ], [ %i.ab, %bb.h ], [ %.pn.ph, %.body.sink.split ]
  tail call void @_ZdlPvm(ptr noundef nonnull %.sink, i64 noundef 80) #29
  resume { ptr, i32 } %.pn
}

declare noundef i64 @_ZNK5faiss14IndexFlatCodes12sa_code_sizeEv(ptr noundef nonnull align 8 dereferenceable(128)) unnamed_addr #2

; Function Attrs: mustprogress uwtable
define void @_ZNK5faiss11Index2Layer9sa_encodeElPKfPh(ptr noundef nonnull align 8 dereferenceable(456) %0, i64 noundef %1, ptr noundef %2, ptr noundef %3) unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 25
  %i.b = load i8, ptr %i.a, align 1, !tbaa !53, !range !16, !noundef !17
  %i.c = trunc nuw i8 %i.b to i1
  br i1 %i.c, label %bb.j, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #25
  %i.d = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 4 uses
  store ptr %i.d, ptr %4, align 8, !tbaa !58
  %i.e = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  store i64 0, ptr %i.e, align 8, !tbaa !59
  store i8 0, ptr %i.d, align 8, !tbaa !57
  %i.f = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef null, i64 noundef 0, ptr noundef nonnull @.str.8, ptr noundef nonnull @.str.19) #25 ; 2 uses
  %i.g = icmp sgt i32 %i.f, 0
  br i1 %i.g, label %bb.c, label %bb.f

bb.c:                                             ; preds = %bb.b
  %i.h = zext nneg i32 %i.f to i64                ; 2 uses
  %i.i = add nuw nsw i64 %i.h, 1
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6resizeEm(ptr noundef nonnull align 8 dereferenceable(32) %4, i64 noundef %i.i)
          to label %bb.d unwind label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.j = load ptr, ptr %4, align 8, !tbaa !56
  %i.k = load i64, ptr %i.e, align 8, !tbaa !59
  %i.l = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull %i.j, i64 noundef %i.k, ptr noundef nonnull @.str.8, ptr noundef nonnull @.str.19) #25 ; 0 uses
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6resizeEm(ptr noundef nonnull align 8 dereferenceable(32) %4, i64 noundef %i.h)
          to label %bb.f unwind label %bb.e

bb.e:                                             ; preds = %bb.g, %bb.d, %bb.c
  %i.m = landingpad { ptr, i32 }
          cleanup
  br label %bb.i

bb.f:                                             ; preds = %bb.d, %bb.b
  %i.n = call ptr @__cxa_allocate_exception(i64 40) #25 ; 3 uses
  invoke void @_ZN5faiss14FaissExceptionC1ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSA_i(ptr noundef nonnull align 8 dereferenceable(40) %i.n, ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull @__PRETTY_FUNCTION__._ZNK5faiss11Index2Layer9sa_encodeElPKfPh, ptr noundef nonnull @.str.5, i32 noundef 272)
          to label %bb.g unwind label %bb.h

bb.g:                                             ; preds = %bb.f
  invoke void @__cxa_throw(ptr nonnull %i.n, ptr nonnull @_ZTIN5faiss14FaissExceptionE, ptr nonnull @_ZN5faiss14FaissExceptionD2Ev) #30
          to label %bb.ac unwind label %bb.e

bb.h:                                             ; preds = %bb.f
  %i.o = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_free_exception(ptr nonnull %i.n) #25
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.e
  %.pn = phi { ptr, i32 } [ %i.m, %bb.e ], [ %i.o, %bb.h ]
  %i.p = load ptr, ptr %4, align 8, !tbaa !56     ; 2 uses
  %i.q = icmp eq ptr %i.p, %i.d
  br i1 %i.q, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.i
  %i.r = load i64, ptr %i.d, align 8, !tbaa !57
  %i.s = add i64 %i.r, 1
  call void @_ZdlPvm(ptr noundef %i.p, i64 noundef %i.s) #29
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #25
  br label %bb.ab

bb.j:                                             ; preds = %bb.a
  %i.t = load i32, ptr @_ZN5faiss24index2layer_sa_encode_bsE, align 4, !tbaa !75
  %i.u = sext i32 %i.t to i64                     ; 2 uses
  %i.v = icmp sgt i64 %1, %i.u
  br i1 %i.v, label %.preheader, label %bb.n

.preheader:                                       ; preds = %bb.j
  %i.w = icmp sgt i64 %1, 0
  br i1 %i.w, label %.lr.ph82, label %.loopexit

.lr.ph82:                                         ; preds = %.preheader
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 40
  br label %bb.k

bb.k:                                             ; preds = %.lr.ph82, %bb.m
  %.03781 = phi i64 [ 0, %.lr.ph82 ], [ %i.aa, %bb.m ] ; 5 uses
  %i.aa = add nsw i64 %.03781, %i.u               ; 3 uses
  %.sroa.speculated = tail call i64 @llvm.smin.i64(i64 %1, i64 %i.aa) ; 2 uses
  %i.ab = load i8, ptr %i.x, align 8, !tbaa !15, !range !16, !noundef !17
  %i.ac = trunc nuw i8 %i.ab to i1
  br i1 %i.ac, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.ad = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.20, i64 noundef %.03781, i64 noundef %.sroa.speculated, i64 noundef %1) ; 0 uses
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k
  %i.ae = sub nsw i64 %.sroa.speculated, %.03781
  %i.af = load i32, ptr %i.y, align 8, !tbaa !18
  %i.ag = sext i32 %i.af to i64
  %i.ah = mul nsw i64 %.03781, %i.ag
  %i.ai = getelementptr inbounds [4 x i8], ptr %2, i64 %i.ah
  %i.aj = load i64, ptr %i.z, align 8, !tbaa !76
  %i.ak = mul i64 %i.aj, %.03781
  %i.al = getelementptr inbounds nuw i8, ptr %3, i64 %i.ak
  %i.am = load ptr, ptr %0, align 8, !tbaa !49
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 200
  %i.ao = load ptr, ptr %i.an, align 8
  tail call void %i.ao(ptr noundef nonnull align 8 dereferenceable(456) %0, i64 noundef %i.ae, ptr noundef %i.ai, ptr noundef %i.al)
  %i.ap = icmp slt i64 %i.aa, %1
  br i1 %i.ap, label %bb.k, label %.loopexit, !llvm.loop !106

bb.n:                                             ; preds = %bb.j
  %i.aq = icmp ugt i64 %1, 2305843009213693951
  %i.ar = shl nuw nsw i64 %1, 3
  %i.as = select i1 %i.aq, i64 -1, i64 %i.ar
  %i.at = tail call noalias noundef nonnull ptr @_Znam(i64 noundef %i.as) #31 ; 5 uses
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 128 ; 3 uses
  %i.av = load ptr, ptr %i.au, align 8, !tbaa !47 ; 2 uses
  %i.aw = load ptr, ptr %i.av, align 8, !tbaa !49
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aw, i64 104
  %i.ay = load ptr, ptr %i.ax, align 8
  invoke void %i.ay(ptr noundef nonnull align 8 dereferenceable(36) %i.av, i64 noundef %1, ptr noundef %2, ptr noundef nonnull %i.at, i64 noundef 1)
          to label %bb.o unwind label %bb.r

bb.o:                                             ; preds = %bb.n
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.ba = load i32, ptr %i.az, align 8, !tbaa !18
  %i.bb = sext i32 %i.ba to i64
  %i.bc = mul nsw i64 %1, %i.bb                   ; 5 uses
  %i.bd = icmp ugt i64 %i.bc, 2305843009213693951
  br i1 %i.bd, label %bb.p, label %_ZNSt6vectorIfSaIfEE17_S_check_init_lenEmRKS0_.exit.i

bb.p:                                             ; preds = %bb.o
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.3) #30
          to label %.noexc unwind label %bb.s

.noexc:                                           ; preds = %bb.p
  unreachable

_ZNSt6vectorIfSaIfEE17_S_check_init_lenEmRKS0_.exit.i: ; preds = %bb.o
  %.not.i.i.i.i = icmp eq i64 %i.bc, 0
  br i1 %.not.i.i.i.i, label %_ZNSt6vectorIfSaIfEEC2EmRKS0_.exit, label %bb.q

bb.q:                                             ; preds = %_ZNSt6vectorIfSaIfEE17_S_check_init_lenEmRKS0_.exit.i
  %i.be = shl nuw nsw i64 %i.bc, 2
  %i.bf = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.be) #31
          to label %.noexc52 unwind label %bb.s   ; 5 uses

.noexc52:                                         ; preds = %bb.q
  %i.bg = getelementptr inbounds nuw [4 x i8], ptr %i.bf, i64 %i.bc ; 2 uses
  store float 0.000000e+00, ptr %i.bf, align 4, !tbaa !50
  %i.bh = add nsw i64 %i.bc, -1                   ; 2 uses
  %i.bi = icmp eq i64 %i.bh, 0
  br i1 %i.bi, label %_ZNSt6vectorIfSaIfEEC2EmRKS0_.exit, label %_ZSt6fill_nIPfmfET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i

_ZSt6fill_nIPfmfET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i: ; preds = %.noexc52
  %i.bj = getelementptr i8, ptr %i.bf, i64 4
  %.idx.i.i.i.i.i.i.i = shl nuw nsw i64 %i.bh, 2
  tail call void @llvm.memset.p0.i64(ptr align 4 %i.bj, i8 0, i64 %.idx.i.i.i.i.i.i.i, i1 false), !tbaa !50
  br label %_ZNSt6vectorIfSaIfEEC2EmRKS0_.exit

_ZNSt6vectorIfSaIfEEC2EmRKS0_.exit:               ; preds = %_ZSt6fill_nIPfmfET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i, %.noexc52, %_ZNSt6vectorIfSaIfEE17_S_check_init_lenEmRKS0_.exit.i
  %.sroa.058.0 = phi ptr [ %i.bf, %_ZSt6fill_nIPfmfET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i ], [ %i.bf, %.noexc52 ], [ null, %_ZNSt6vectorIfSaIfEE17_S_check_init_lenEmRKS0_.exit.i ] ; 8 uses
  %.sroa.11.0 = phi ptr [ %i.bg, %_ZSt6fill_nIPfmfET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i ], [ %i.bg, %.noexc52 ], [ null, %_ZNSt6vectorIfSaIfEE17_S_check_init_lenEmRKS0_.exit.i ] ; 2 uses
  %i.bk = icmp sgt i64 %1, 0
  br i1 %i.bk, label %.lr.ph, label %._crit_edge

._crit_edge:                                      ; preds = %bb.t, %_ZNSt6vectorIfSaIfEEC2EmRKS0_.exit
  %i.bl = getelementptr inbounds nuw i8, ptr %0, i64 216
  invoke void @_ZNK5faiss16ProductQuantizer13compute_codesEPKfPhm(ptr noundef nonnull align 8 dereferenceable(224) %i.bl, ptr noundef %.sroa.058.0, ptr noundef %3, i64 noundef %1)
end_hunk_0
