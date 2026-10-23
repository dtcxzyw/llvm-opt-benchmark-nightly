Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ozz-animation/original/jsoncpp?download=true
inline.NumInlined: 3522
inline.NumDeleted: 846
loop-unroll.NumCompletelyUnrolled: 16
loop-unroll.NumUnrolled: 16
begin_hunk_0_@_ZNK4Json5Value3endEv:bb.a
  ret { ptr, i8 } %.fca.1.insert
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define dso_local void @_ZN4Json5Value5beginEv(ptr dead_on_unwind noalias nofree writable writeonly sret(%"class.Json::ValueIterator") align 8 captures(none) initializes((0, 9)) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %1) local_unnamed_addr #12 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.b = load i16, ptr %i.a, align 8
  %i.c = and i16 %i.b, 254
  %switch = icmp ne i16 %i.c, 6
  %i.d = load ptr, ptr %1, align 8                ; 2 uses
  %.not = icmp eq ptr %i.d, null
  %or.cond = select i1 %switch, i1 true, i1 %.not
  br i1 %or.cond, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !127
  %i.g = ptrtoint ptr %i.f to i64
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.sink1 = phi i64 [ %i.g, %bb.b ], [ 0, %bb.a ]
  %.sink = phi i8 [ 0, %bb.b ], [ 1, %bb.a ]
  store i64 %.sink1, ptr %0, align 8, !tbaa !192
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i8 %.sink, ptr %i.h, align 8, !tbaa !213
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define dso_local void @_ZN4Json5Value3endEv(ptr dead_on_unwind noalias nofree writable writeonly sret(%"class.Json::ValueIterator") align 8 captures(none) initializes((0, 9)) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %1) local_unnamed_addr #10 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.b = load i16, ptr %i.a, align 8
  %i.c = and i16 %i.b, 254
  %switch = icmp ne i16 %i.c, 6
  %i.d = load ptr, ptr %1, align 8                ; 2 uses
  %.not = icmp eq ptr %i.d, null
  %or.cond = select i1 %switch, i1 true, i1 %.not ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.f = ptrtoint ptr %i.e to i64
  %.sink1 = select i1 %or.cond, i64 0, i64 %i.f
  %.sink = zext i1 %or.cond to i8
  store i64 %.sink1, ptr %0, align 8, !tbaa !192
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i8 %.sink, ptr %i.g, align 8, !tbaa !213
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local void @_ZN4Json12PathArgumentC2Ev(ptr noundef nonnull align 8 dereferenceable(40) %0) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  store ptr %i.a, ptr %0, align 8, !tbaa !46
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 0, ptr %i.b, align 8, !tbaa !49
  store i8 0, ptr %i.a, align 8, !tbaa !50
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i32 0, ptr %i.c, align 8, !tbaa !235
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 36
  store i32 0, ptr %i.d, align 4, !tbaa !236
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local void @_ZN4Json12PathArgumentC2Ej(ptr noundef nonnull align 8 dereferenceable(40) %0, i32 noundef %1) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  store ptr %i.a, ptr %0, align 8, !tbaa !46
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 0, ptr %i.b, align 8, !tbaa !49
  store i8 0, ptr %i.a, align 8, !tbaa !50
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i32 %1, ptr %i.c, align 8, !tbaa !235
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 36
  store i32 1, ptr %i.d, align 4, !tbaa !236
  ret void
}

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN4Json12PathArgumentC2EPKc(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr nofree noundef readonly captures(address_is_null) %1) unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  store ptr %i.b, ptr %0, align 8, !tbaa !46
  %i.c = icmp eq ptr %1, null
  br i1 %i.c, label %.noexc, label %bb.b

.noexc:                                           ; preds = %bb.a
  tail call void @_ZSt19__throw_logic_errorPKc(ptr noundef nonnull @.str.121) #44
  unreachable

bb.b:                                             ; preds = %bb.a
  %i.d = tail call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %1) #40 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #40
  store i64 %i.d, ptr %i.a, align 8, !tbaa !113
  %i.e = icmp ugt i64 %i.d, 15
  br i1 %i.e, label %.noexc.i, label %._crit_edge.i.i

.noexc.i:                                         ; preds = %bb.b
  %i.f = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0) ; 2 uses
  store ptr %i.f, ptr %0, align 8, !tbaa !78
  %i.g = load i64, ptr %i.a, align 8, !tbaa !113
  store i64 %i.g, ptr %i.b, align 8, !tbaa !50
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %.noexc.i, %bb.b
  %i.h = phi ptr [ %i.f, %.noexc.i ], [ %i.b, %bb.b ] ; 2 uses
  switch i64 %i.d, label %bb.d [
    i64 1, label %bb.c
    i64 0, label %bb.e
  ]

bb.c:                                             ; preds = %._crit_edge.i.i
  %i.i = load i8, ptr %1, align 1, !tbaa !50
  store i8 %i.i, ptr %i.h, align 1, !tbaa !50
  br label %bb.e

bb.d:                                             ; preds = %._crit_edge.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.h, ptr nonnull align 1 %1, i64 %i.d, i1 false)
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c, %._crit_edge.i.i
  %i.j = load i64, ptr %i.a, align 8, !tbaa !113  ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.j, ptr %i.k, align 8, !tbaa !49
  %i.l = load ptr, ptr %0, align 8, !tbaa !78
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 %i.j
  store i8 0, ptr %i.m, align 1, !tbaa !50
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #40
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i32 0, ptr %i.n, align 8, !tbaa !235
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 36
  store i32 2, ptr %i.o, align 4, !tbaa !236
  ret void
}

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN4Json12PathArgumentC2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %1) unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %i.b = load ptr, ptr %1, align 8, !tbaa !78     ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  store ptr %i.c, ptr %0, align 8, !tbaa !46
  %i.d = icmp eq ptr %i.b, null
  br i1 %i.d, label %.noexc, label %bb.b

.noexc:                                           ; preds = %bb.a
  tail call void @_ZSt19__throw_logic_errorPKc(ptr noundef nonnull @.str.121) #44
  unreachable

bb.b:                                             ; preds = %bb.a
  %i.e = tail call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.b) #40 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #40
  store i64 %i.e, ptr %i.a, align 8, !tbaa !113
  %i.f = icmp ugt i64 %i.e, 15
  br i1 %i.f, label %.noexc.i, label %._crit_edge.i.i

.noexc.i:                                         ; preds = %bb.b
  %i.g = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0) ; 2 uses
  store ptr %i.g, ptr %0, align 8, !tbaa !78
  %i.h = load i64, ptr %i.a, align 8, !tbaa !113
  store i64 %i.h, ptr %i.c, align 8, !tbaa !50
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %.noexc.i, %bb.b
  %i.i = phi ptr [ %i.g, %.noexc.i ], [ %i.c, %bb.b ] ; 2 uses
  switch i64 %i.e, label %bb.d [
    i64 1, label %bb.c
    i64 0, label %bb.e
  ]

bb.c:                                             ; preds = %._crit_edge.i.i
  %i.j = load i8, ptr %i.b, align 1, !tbaa !50
  store i8 %i.j, ptr %i.i, align 1, !tbaa !50
  br label %bb.e

bb.d:                                             ; preds = %._crit_edge.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.i, ptr nonnull align 1 %i.b, i64 %i.e, i1 false)
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c, %._crit_edge.i.i
  %i.k = load i64, ptr %i.a, align 8, !tbaa !113  ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.k, ptr %i.l, align 8, !tbaa !49
  %i.m = load ptr, ptr %0, align 8, !tbaa !78
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 %i.k
  store i8 0, ptr %i.n, align 1, !tbaa !50
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #40
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i32 0, ptr %i.o, align 8, !tbaa !235
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 36
  store i32 2, ptr %i.p, align 4, !tbaa !236
  ret void
}

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN4Json4PathC2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKNS_12PathArgumentESB_SB_SB_SB_(ptr noundef nonnull align 8 dereferenceable(24) initializes((0, 24)) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(40) %2, ptr noundef nonnull align 8 dereferenceable(40) %3, ptr noundef nonnull align 8 dereferenceable(40) %4, ptr noundef nonnull align 8 dereferenceable(40) %5, ptr noundef nonnull align 8 dereferenceable(40) %6) unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 {
_ZNKSt6vectorIPKN4Json12PathArgumentESaIS3_EE12_M_check_lenEmPKc.exit.i.i.i:
  %7 = alloca %"class.std::vector.43", align 8    ; 7 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, i8 0, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #40
  %i.a = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.b = getelementptr inbounds nuw i8, ptr %7, i64 16
  %i.c = invoke noalias noundef nonnull dereferenceable(8) ptr @_Znwm(i64 noundef 8) #43
          to label %_ZNKSt6vectorIPKN4Json12PathArgumentESaIS3_EE12_M_check_lenEmPKc.exit.i.i.i12 unwind label %bb.a ; 4 uses

_ZNKSt6vectorIPKN4Json12PathArgumentESaIS3_EE12_M_check_lenEmPKc.exit.i.i.i12: ; preds = %_ZNKSt6vectorIPKN4Json12PathArgumentESaIS3_EE12_M_check_lenEmPKc.exit.i.i.i
  store ptr %2, ptr %i.c, align 8, !tbaa !238
  %i.d = invoke noalias noundef nonnull dereferenceable(16) ptr @_Znwm(i64 noundef 16) #43
          to label %_ZNKSt6vectorIPKN4Json12PathArgumentESaIS3_EE12_M_check_lenEmPKc.exit.i.i.i22 unwind label %9 ; 6 uses

_ZNKSt6vectorIPKN4Json12PathArgumentESaIS3_EE12_M_check_lenEmPKc.exit.i.i.i22: ; preds = %_ZNKSt6vectorIPKN4Json12PathArgumentESaIS3_EE12_M_check_lenEmPKc.exit.i.i.i12
  %8 = ptrtoint ptr %2 to i64
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store ptr %3, ptr %i.e, align 8, !tbaa !238
  store i64 %8, ptr %i.d, align 8
  tail call void @_ZdlPvm(ptr noundef nonnull %i.c, i64 noundef 8) #41
  %i.f = invoke noalias noundef nonnull dereferenceable(32) ptr @_Znwm(i64 noundef 32) #43
          to label %_ZNSt6vectorIPKN4Json12PathArgumentESaIS3_EE9push_backEOS3_.exit30 unwind label %12 ; 7 uses

_ZNSt6vectorIPKN4Json12PathArgumentESaIS3_EE9push_backEOS3_.exit30: ; preds = %_ZNKSt6vectorIPKN4Json12PathArgumentESaIS3_EE12_M_check_lenEmPKc.exit.i.i.i22
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  store ptr %4, ptr %i.g, align 8, !tbaa !238
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.f, ptr noundef nonnull align 8 dereferenceable(16) %i.d, i64 16, i1 false)
  %i.h = getelementptr inbounds nuw i8, ptr %i.f, i64 24
  tail call void @_ZdlPvm(ptr noundef nonnull %i.d, i64 noundef 16) #41
  store ptr %5, ptr %i.h, align 8, !tbaa !238
  %i.i = invoke noalias noundef nonnull dereferenceable(64) ptr @_Znwm(i64 noundef 64) #43
          to label %.noexc49 unwind label %15     ; 7 uses

.noexc49:                                         ; preds = %_ZNSt6vectorIPKN4Json12PathArgumentESaIS3_EE9push_backEOS3_.exit30
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 32
  store ptr %6, ptr %i.j, align 8, !tbaa !238
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.i, ptr noundef nonnull align 8 dereferenceable(32) %i.f, i64 32, i1 false)
  %i.k = getelementptr inbounds nuw i8, ptr %i.i, i64 40
  tail call void @_ZdlPvm(ptr noundef nonnull %i.f, i64 noundef 32) #41
  store ptr %i.i, ptr %7, align 8, !tbaa !579
  store ptr %i.k, ptr %i.a, align 8, !tbaa !580
  %i.l = getelementptr inbounds nuw i8, ptr %i.i, i64 64 ; 2 uses
  store ptr %i.l, ptr %i.b, align 8, !tbaa !581
  invoke void @_ZN4Json4Path8makePathERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKSt6vectorIPKNS_12PathArgumentESaISC_EE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(24) %7)
          to label %_ZNSt6vectorIPKN4Json12PathArgumentESaIS3_EED2Ev.exit unwind label %18

_ZNSt6vectorIPKN4Json12PathArgumentESaIS3_EED2Ev.exit: ; preds = %.noexc49
  tail call void @_ZdlPvm(ptr noundef nonnull %i.i, i64 noundef 64) #41
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #40
  ret void

9:                                                ; preds = %_ZNKSt6vectorIPKN4Json12PathArgumentESaIS3_EE12_M_check_lenEmPKc.exit.i.i.i12
  %10 = landingpad { ptr, i32 }
          cleanup
  %11 = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  br label %bb.b

12:                                               ; preds = %_ZNKSt6vectorIPKN4Json12PathArgumentESaIS3_EE12_M_check_lenEmPKc.exit.i.i.i22
  %13 = landingpad { ptr, i32 }
          cleanup
  %14 = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  br label %bb.b

15:                                               ; preds = %_ZNSt6vectorIPKN4Json12PathArgumentESaIS3_EE9push_backEOS3_.exit30
  %16 = landingpad { ptr, i32 }
          cleanup
  %17 = getelementptr inbounds nuw i8, ptr %i.f, i64 32
  br label %bb.b

18:                                               ; preds = %.noexc49
  %19 = landingpad { ptr, i32 }
          cleanup
  br label %bb.b

bb.a:                                             ; preds = %_ZNKSt6vectorIPKN4Json12PathArgumentESaIS3_EE12_M_check_lenEmPKc.exit.i.i.i
  %lpad.thr_comm.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIPKN4Json12PathArgumentESaIS3_EED2Ev.exit52

bb.b:                                             ; preds = %18, %15, %12, %9
  %.ph = phi ptr [ %11, %9 ], [ %14, %12 ], [ %i.l, %18 ], [ %17, %15 ]
  %.ph74 = phi ptr [ %i.c, %9 ], [ %i.d, %12 ], [ %i.i, %18 ], [ %i.f, %15 ] ; 2 uses
  %.pn.ph = phi { ptr, i32 } [ %10, %9 ], [ %13, %12 ], [ %19, %18 ], [ %16, %15 ]
  %i.m = ptrtoint ptr %.ph to i64
  %i.n = ptrtoint ptr %.ph74 to i64
  %i.o = sub i64 %i.m, %i.n
  tail call void @_ZdlPvm(ptr noundef nonnull %.ph74, i64 noundef %i.o) #41
  br label %_ZNSt6vectorIPKN4Json12PathArgumentESaIS3_EED2Ev.exit52

_ZNSt6vectorIPKN4Json12PathArgumentESaIS3_EED2Ev.exit52: ; preds = %bb.a, %bb.b
  %lpad.phi78 = phi { ptr, i32 } [ %lpad.thr_comm.split-lp, %bb.a ], [ %.pn.ph, %bb.b ]
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #40
  tail call void @_ZNSt6vectorIN4Json12PathArgumentESaIS1_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %0) #40
  resume { ptr, i32 } %lpad.phi78
}

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN4Json4Path8makePathERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKSt6vectorIPKNS_12PathArgumentESaISC_EE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %1, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %2) local_unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %i.b = alloca i64, align 8                      ; 6 uses
  %i.c = alloca i64, align 8                      ; 6 uses
  %i.d = alloca i64, align 8                      ; 6 uses
  %3 = alloca %"class.Json::PathArgument", align 8 ; 13 uses
  %4 = alloca %"class.Json::PathArgument", align 8 ; 16 uses
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  %i.e = load ptr, ptr %1, align 8, !tbaa !78     ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.g = load i64, ptr %i.f, align 8, !tbaa !49   ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.e, i64 %i.g ; 6 uses
  %i.i = load ptr, ptr %2, align 8, !tbaa !240    ; 4 uses
  %.not119 = icmp samesign eq i64 %i.g, 0
  br i1 %.not119, label %._crit_edge, label %.lr.ph121

.lr.ph121:                                        ; preds = %bb.a
  %i.j = ptrtoaddr ptr %i.e to i64
  %i.k = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 12 uses
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 4 uses
  %i.n = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 11 uses
  %i.o = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %3, i64 32 ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %3, i64 36
  %i.r = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 7 uses
  %i.s = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 12 uses
  %i.u = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 4 uses
  %i.v = getelementptr inbounds nuw i8, ptr %4, i64 32 ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %4, i64 36
  %i.x = add i64 %i.g, %i.j                       ; 2 uses
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph121, %bb.ak
  %.046120 = phi ptr [ %i.e, %.lr.ph121 ], [ %.5, %bb.ak ] ; 13 uses
  %.046120122 = ptrtoaddr ptr %.046120 to i64     ; 2 uses
  %i.y = load i8, ptr %.046120, align 1, !tbaa !50
  switch i8 %i.y, label %.preheader [
    i8 91, label %bb.c
    i8 37, label %bb.p
    i8 46, label %bb.w
  ]

.preheader:                                       ; preds = %bb.b
  %.not52114 = icmp eq ptr %.046120, %i.h
  br i1 %.not52114, label %.critedge2, label %.lr.ph116.preheader

.lr.ph116.preheader:                              ; preds = %.preheader
  %scevgep124 = getelementptr i8, ptr %.046120, i64 %i.x
  %i.z = sub i64 0, %.046120122
  %scevgep125 = getelementptr i8, ptr %scevgep124, i64 %i.z
  br label %.lr.ph116

bb.c:                                             ; preds = %bb.b
  %i.aa = getelementptr inbounds nuw i8, ptr %.046120, i64 1 ; 8 uses
  %i.ab = load i8, ptr %i.aa, align 1, !tbaa !50
  %i.ac = icmp eq i8 %i.ab, 37
  br i1 %i.ac, label %bb.d, label %.preheader93

.preheader93:                                     ; preds = %bb.c
  %.not56107 = icmp eq ptr %i.aa, %i.h
  br i1 %.not56107, label %.critedge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %.preheader93
  %scevgep = getelementptr i8, ptr %.046120, i64 %i.x
  %i.ad = sub i64 0, %.046120122
  %scevgep123 = getelementptr i8, ptr %scevgep, i64 %i.ad
  br label %.lr.ph

bb.d:                                             ; preds = %bb.c
  %i.ae = load ptr, ptr %i.k, align 8, !tbaa !240
  %i.af = icmp eq ptr %i.i, %i.ae
  br i1 %i.af, label %_ZN4Json4Path12addPathInArgERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKSt6vectorIPKNS_12PathArgumentESaISC_EERN9__gnu_cxx17__normal_iteratorIPKSC_SE_EENSA_4KindE.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.ag = load ptr, ptr %i.i, align 8, !tbaa !238 ; 5 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 36
  %i.ai = load i32, ptr %i.ah, align 4, !tbaa !236
  %.not.i = icmp eq i32 %i.ai, 1
  br i1 %.not.i, label %bb.f, label %_ZN4Json4Path12addPathInArgERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKSt6vectorIPKNS_12PathArgumentESaISC_EERN9__gnu_cxx17__normal_iteratorIPKSC_SE_EENSA_4KindE.exit

bb.f:                                             ; preds = %bb.e
  %i.aj = load ptr, ptr %i.l, align 8, !tbaa !242 ; 9 uses
  %i.ak = load ptr, ptr %i.m, align 8, !tbaa !243
  %.not.i.i = icmp eq ptr %i.aj, %i.ak
  br i1 %.not.i.i, label %bb.j, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.al = getelementptr inbounds nuw i8, ptr %i.aj, i64 16 ; 3 uses
  store ptr %i.al, ptr %i.aj, align 8, !tbaa !46
  %i.am = load ptr, ptr %i.ag, align 8, !tbaa !78 ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %i.ag, i64 8
  %i.ao = load i64, ptr %i.an, align 8, !tbaa !49 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #40
  store i64 %i.ao, ptr %i.d, align 8, !tbaa !113
  %i.ap = icmp ugt i64 %i.ao, 15
  br i1 %i.ap, label %.noexc.i.i.i.i, label %._crit_edge.i.i.i.i.i

.noexc.i.i.i.i:                                   ; preds = %bb.g
  %i.aq = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(40) %i.aj, ptr noundef nonnull align 8 dereferenceable(8) %i.d, i64 noundef 0) ; 2 uses
  store ptr %i.aq, ptr %i.aj, align 8, !tbaa !78
  %i.ar = load i64, ptr %i.d, align 8, !tbaa !113
  store i64 %i.ar, ptr %i.al, align 8, !tbaa !50
  br label %._crit_edge.i.i.i.i.i

._crit_edge.i.i.i.i.i:                            ; preds = %.noexc.i.i.i.i, %bb.g
  %i.as = phi ptr [ %i.aq, %.noexc.i.i.i.i ], [ %i.al, %bb.g ] ; 2 uses
  switch i64 %i.ao, label %bb.i [
    i64 1, label %bb.h
    i64 0, label %_ZN4Json12PathArgumentC2ERKS0_.exit.i.i
  ]

bb.h:                                             ; preds = %._crit_edge.i.i.i.i.i
  %i.at = load i8, ptr %i.am, align 1, !tbaa !50
  store i8 %i.at, ptr %i.as, align 1, !tbaa !50
  br label %_ZN4Json12PathArgumentC2ERKS0_.exit.i.i

bb.i:                                             ; preds = %._crit_edge.i.i.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.as, ptr align 1 %i.am, i64 %i.ao, i1 false)
  br label %_ZN4Json12PathArgumentC2ERKS0_.exit.i.i

_ZN4Json12PathArgumentC2ERKS0_.exit.i.i:          ; preds = %bb.i, %bb.h, %._crit_edge.i.i.i.i.i
  %i.au = load i64, ptr %i.d, align 8, !tbaa !113 ; 2 uses
  %i.av = getelementptr inbounds nuw i8, ptr %i.aj, i64 8
  store i64 %i.au, ptr %i.av, align 8, !tbaa !49
  %i.aw = load ptr, ptr %i.aj, align 8, !tbaa !78
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aw, i64 %i.au
  store i8 0, ptr %i.ax, align 1, !tbaa !50
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #40
  %i.ay = getelementptr inbounds nuw i8, ptr %i.aj, i64 32
  %i.az = getelementptr inbounds nuw i8, ptr %i.ag, i64 32
  %i.ba = load i64, ptr %i.az, align 8
  store i64 %i.ba, ptr %i.ay, align 8
  %i.bb = load ptr, ptr %i.l, align 8, !tbaa !242
  %i.bc = getelementptr inbounds nuw i8, ptr %i.bb, i64 40
  store ptr %i.bc, ptr %i.l, align 8, !tbaa !242
  br label %_ZN4Json4Path12addPathInArgERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKSt6vectorIPKNS_12PathArgumentESaISC_EERN9__gnu_cxx17__normal_iteratorIPKSC_SE_EENSA_4KindE.exit

bb.j:                                             ; preds = %bb.f
  call void @_ZNSt6vectorIN4Json12PathArgumentESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %i.aj, ptr noundef nonnull align 8 dereferenceable(40) %i.ag)
  br label %_ZN4Json4Path12addPathInArgERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKSt6vectorIPKNS_12PathArgumentESaISC_EERN9__gnu_cxx17__normal_iteratorIPKSC_SE_EENSA_4KindE.exit

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.k
  %.045109 = phi i32 [ %i.bh, %bb.k ], [ 0, %.lr.ph.preheader ] ; 2 uses
  %.147108 = phi ptr [ %i.bi, %bb.k ], [ %i.aa, %.lr.ph.preheader ] ; 3 uses
  %i.bd = load i8, ptr %.147108, align 1, !tbaa !50
  %i.be = add i8 %i.bd, -48                       ; 2 uses
  %or.cond = icmp ult i8 %i.be, 10
  br i1 %or.cond, label %bb.k, label %.critedge

bb.k:                                             ; preds = %.lr.ph
  %i.bf = mul i32 %.045109, 10
  %i.bg = zext nneg i8 %i.be to i32
  %i.bh = add i32 %i.bf, %i.bg                    ; 2 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %.147108, i64 1 ; 2 uses
  %.not56 = icmp eq ptr %i.bi, %i.h
  br i1 %.not56, label %.critedge, label %.lr.ph, !llvm.loop !582

.critedge:                                        ; preds = %bb.k, %.lr.ph, %.preheader93
  %.147.lcssa = phi ptr [ %i.aa, %.preheader93 ], [ %.147108, %.lr.ph ], [ %scevgep123, %bb.k ]
  %.045.lcssa = phi i32 [ 0, %.preheader93 ], [ %.045109, %.lr.ph ], [ %i.bh, %bb.k ]
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #40
  store ptr %i.n, ptr %3, align 8, !tbaa !46
  store i64 0, ptr %i.o, align 8, !tbaa !49
  store i8 0, ptr %i.n, align 8, !tbaa !50
  store i32 %.045.lcssa, ptr %i.p, align 8, !tbaa !235
  store i32 1, ptr %i.q, align 4, !tbaa !236
  %i.bj = load ptr, ptr %i.l, align 8, !tbaa !242 ; 7 uses
  %i.bk = load ptr, ptr %i.m, align 8, !tbaa !243
  %.not.i.i60 = icmp eq ptr %i.bj, %i.bk
  br i1 %.not.i.i60, label %bb.n, label %bb.l

bb.l:                                             ; preds = %.critedge
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bj, i64 16 ; 3 uses
  store ptr %i.bl, ptr %i.bj, align 8, !tbaa !46
  %i.bm = load ptr, ptr %3, align 8, !tbaa !78    ; 2 uses
  %i.bn = icmp eq ptr %i.bm, %i.n
  br i1 %i.bn, label %bb.m, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

bb.m:                                             ; preds = %bb.l
  %i.bo = load i8, ptr %i.n, align 8
  store i8 %i.bo, ptr %i.bl, align 8
  br label %_ZNSt6vectorIN4Json12PathArgumentESaIS1_EE9push_backEOS1_.exit.thread

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %bb.l
  store ptr %i.bm, ptr %i.bj, align 8, !tbaa !78
  %i.bp = load i64, ptr %i.n, align 8, !tbaa !50
  store i64 %i.bp, ptr %i.bl, align 8, !tbaa !50
  br label %_ZNSt6vectorIN4Json12PathArgumentESaIS1_EE9push_backEOS1_.exit.thread

_ZNSt6vectorIN4Json12PathArgumentESaIS1_EE9push_backEOS1_.exit.thread: ; preds = %bb.m, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bj, i64 8
end_hunk_0
