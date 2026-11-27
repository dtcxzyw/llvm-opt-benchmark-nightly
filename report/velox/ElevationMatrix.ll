Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/velox/original/ElevationMatrix?download=true
inline.NumInlined: 244
inline.NumDeleted: 129
begin_hunk_0_@_ZN4geos9operation7overlay15ElevationMatrix7getCellERKNS_4geom10CoordinateE:bb.a

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit41.thread: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.bi = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #18
  br label %bb.o

bb.n:                                             ; preds = %bb.j, %bb.i
  %.0 = phi i1 [ false, %bb.j ], [ true, %bb.i ]  ; 2 uses
  %i.bj = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  %i.bk = load ptr, ptr %4, align 8, !tbaa !65    ; 2 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.bm = icmp eq ptr %i.bk, %i.bl
  br i1 %i.bm, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit41, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i39

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i39: ; preds = %bb.n
  call void @_ZdlPv(ptr noundef %i.bk) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #18
  br i1 %.0, label %bb.o, label %bb.p

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit41: ; preds = %bb.n
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #18
  br i1 %.0, label %bb.o, label %bb.p

bb.o:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i39, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit41.thread, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit41
  %.pn2944 = phi { ptr, i32 } [ %i.bi, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit41.thread ], [ %i.bj, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit41 ], [ %i.bj, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i39 ]
  call void @__cxa_free_exception(ptr %i.bb) #18
  br label %bb.p

bb.p:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i39, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit41, %bb.o, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit38, %bb.k
  %.pn29.pn = phi { ptr, i32 } [ %.pn2944, %bb.o ], [ %i.bj, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit41 ], [ %.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit38 ], [ %i.bc, %bb.k ], [ %i.bj, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i39 ]
  call void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(112) %2) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #18
  resume { ptr, i32 } %.pn29.pn

bb.q:                                             ; preds = %bb.f
  %i.bn = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.bo = zext nneg i32 %i.ae to i64
  %i.bp = load ptr, ptr %i.bn, align 8, !tbaa !60
  %i.bq = getelementptr inbounds nuw [56 x i8], ptr %i.bp, i64 %i.bo
  ret ptr %i.bq

bb.r:                                             ; preds = %bb.j
  unreachable
}

declare i32 @__gxx_personality_v0(...)

declare noundef double @_ZNK4geos9operation7overlay19ElevationMatrixCell6getAvgEv(ptr noundef nonnull align 8 dereferenceable(56)) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #2

; Function Attrs: nounwind memory(none)
declare i32 @llvm.eh.typeid.for.p0(ptr) #4

declare ptr @__cxa_begin_catch(ptr) local_unnamed_addr

declare void @__cxa_end_catch() local_unnamed_addr

; Function Attrs: mustprogress uwtable
define void @_ZN4geos9operation7overlay21ElevationMatrixFilter9filter_roEPKNS_4geom10CoordinateE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %0, ptr noundef nonnull %1) unnamed_addr #1 align 2 !guid !84 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !42, !nonnull !43, !align !44
  tail call void @_ZN4geos9operation7overlay15ElevationMatrix3addERKNS_4geom10CoordinateE(ptr noundef nonnull align 8 dereferenceable(120) %i.b, ptr noundef nonnull align 8 dereferenceable(24) %1)
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN4geos9operation7overlay15ElevationMatrix3addERKNS_4geom10CoordinateE(ptr noundef nonnull align 8 dereferenceable(120) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) local_unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 !guid !86 {
bb.a:
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.b = load double, ptr %i.a, align 8, !tbaa !39
  %i.c = fcmp uno double %i.b, 0.000000e+00
  br i1 %i.c, label %bb.l, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = invoke noundef nonnull align 8 dereferenceable(56) ptr @_ZN4geos9operation7overlay15ElevationMatrix7getCellERKNS_4geom10CoordinateE(ptr noundef nonnull align 8 dereferenceable(120) %0, ptr noundef nonnull align 8 dereferenceable(24) %1)
          to label %bb.c unwind label %bb.d

bb.c:                                             ; preds = %bb.b
  invoke void @_ZN4geos9operation7overlay19ElevationMatrixCell3addERKNS_4geom10CoordinateE(ptr noundef nonnull align 8 dereferenceable(56) %i.d, ptr noundef nonnull align 8 dereferenceable(24) %1)
          to label %bb.l unwind label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.e = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIN4geos4util24IllegalArgumentExceptionE ; 3 uses
  %i.f = extractvalue { ptr, i32 } %i.e, 1
  %i.g = tail call i32 @llvm.eh.typeid.for.p0(ptr nonnull @_ZTIN4geos4util24IllegalArgumentExceptionE) #18
  %i.h = icmp eq i32 %i.f, %i.g
  br i1 %i.h, label %bb.e, label %bb.m

bb.e:                                             ; preds = %bb.d
  %i.i = extractvalue { ptr, i32 } %i.e, 0
  %i.j = tail call ptr @__cxa_begin_catch(ptr %i.i) #18 ; 2 uses
  %i.k = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cerr, ptr noundef nonnull @.str, i64 noundef 21)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit unwind label %bb.h ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit: ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #18
  invoke void @_ZNK4geos4geom10Coordinate8toStringB5cxx11Ev(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %2, ptr noundef nonnull align 8 dereferenceable(24) %1)
          to label %bb.f unwind label %bb.i

bb.f:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit
  %i.l = load ptr, ptr %2, align 8, !tbaa !65
  %i.m = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.n = load i64, ptr %i.m, align 8, !tbaa !66
  %i.o = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cerr, ptr noundef %i.l, i64 noundef %i.n)
          to label %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit unwind label %bb.j ; 2 uses

_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit: ; preds = %bb.f
  %i.p = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.o, ptr noundef nonnull @.str.1, i64 noundef 44)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit16 unwind label %bb.j ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit16: ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit
  %i.q = load ptr, ptr %i.j, align 8, !tbaa !34
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 16
  %i.s = load ptr, ptr %i.r, align 8
  %i.t = call noundef ptr %i.s(ptr noundef nonnull align 8 dereferenceable(16) %i.j) #18
  %i.u = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8) %i.o, ptr noundef %i.t)
          to label %bb.g unwind label %bb.j

bb.g:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit16
  %i.v = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_(ptr noundef nonnull align 8 dereferenceable(8) %i.u)
          to label %_ZNSolsEPFRSoS_E.exit unwind label %bb.j, !inline_history !85 ; 0 uses

_ZNSolsEPFRSoS_E.exit:                            ; preds = %bb.g
  %i.w = load ptr, ptr %2, align 8, !tbaa !65     ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.y = icmp eq ptr %i.w, %i.x
  br i1 %i.y, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZNSolsEPFRSoS_E.exit
  call void @_ZdlPv(ptr noundef %i.w) #19
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZNSolsEPFRSoS_E.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #18
  call void @__cxa_end_catch()
  br label %bb.l

bb.h:                                             ; preds = %bb.e
  %i.z = landingpad { ptr, i32 }
          cleanup
  br label %bb.k

bb.i:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit
  %i.aa = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit19

bb.j:                                             ; preds = %bb.g, %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit, %bb.f, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit16
  %i.ab = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ac = load ptr, ptr %2, align 8, !tbaa !65    ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.ae = icmp eq ptr %i.ac, %i.ad
  br i1 %i.ae, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit19, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i17

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i17: ; preds = %bb.j
  call void @_ZdlPv(ptr noundef %i.ac) #19
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit19

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit19: ; preds = %bb.j, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i17, %bb.i
  %.pn = phi { ptr, i32 } [ %i.aa, %bb.i ], [ %i.ab, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i17 ], [ %i.ab, %bb.j ]
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #18
  br label %bb.k

bb.k:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit19, %bb.h
  %.pn.pn = phi { ptr, i32 } [ %.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit19 ], [ %i.z, %bb.h ]
  invoke void @__cxa_end_catch()
          to label %bb.m unwind label %bb.n

bb.l:                                             ; preds = %bb.c, %bb.a, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  ret void

bb.m:                                             ; preds = %bb.k, %bb.d
  %.merged = phi { ptr, i32 } [ %i.e, %bb.d ], [ %.pn.pn, %bb.k ]
  resume { ptr, i32 } %.merged

bb.n:                                             ; preds = %bb.k
  %i.af = landingpad { ptr, i32 }
          catch ptr null
  %i.ag = extractvalue { ptr, i32 } %i.af, 0
  call void @__clang_call_terminate(ptr %i.ag) #21
  unreachable
}

; Function Attrs: mustprogress uwtable
define void @_ZN4geos9operation7overlay15ElevationMatrixC2ERKNS_4geom8EnvelopeEjj(ptr noundef nonnull align 8 dereferenceable(120) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %1, i32 noundef %2, i32 noundef %3) unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 !guid !87 {
bb.a:
  %4 = alloca %"class.std::allocator", align 1    ; 3 uses
  tail call void @_ZN4geos9operation7overlay21ElevationMatrixFilterC1ERNS1_15ElevationMatrixE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(120) %0)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.a, ptr noundef nonnull align 8 dereferenceable(32) %1, i64 32, i1 false), !tbaa.struct !89
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 3 uses
  %5 = getelementptr inbounds nuw i8, ptr %0, i64 60
  %6 = zext i32 %3 to i64
  %7 = zext i32 %2 to i64
  %8 = shl nuw i64 %7, 32
  %9 = or disjoint i64 %8, %6
  store i64 %9, ptr %i.b, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 80
  store i8 0, ptr %i.c, align 8, !tbaa !53
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 88
  store double +qnan, ptr %i.d, align 8, !tbaa !55
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.f = mul i32 %3, %2
  %i.g = zext i32 %i.f to i64
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #18
  call void @_ZNSt6vectorIN4geos9operation7overlay19ElevationMatrixCellESaIS3_EEC2EmRKS4_(ptr noundef nonnull align 8 dereferenceable(24) %i.e, i64 noundef %i.g, ptr noundef nonnull align 1 dereferenceable(1) %4)
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #18
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.j = load <4 x double>, ptr %i.a, align 8     ; 2 uses
  %i.k = load double, ptr %i.h, align 8, !tbaa !90
  %i.l = fcmp uno double %i.k, 0.000000e+00
  %i.m = shufflevector <4 x double> %i.j, <4 x double> poison, <2 x i32> <i32 1, i32 3>
  %i.n = shufflevector <4 x double> %i.j, <4 x double> poison, <2 x i32> <i32 0, i32 2>
  %i.o = fsub <2 x double> %i.m, %i.n
  %i.p = insertelement <2 x i1> poison, i1 %i.l, i64 0
  %i.q = shufflevector <2 x i1> %i.p, <2 x i1> poison, <2 x i32> zeroinitializer
  %i.r = select <2 x i1> %i.q, <2 x double> zeroinitializer, <2 x double> %i.o
  %i.s = load <2 x i32>, ptr %i.b, align 8, !tbaa !91
  %i.t = uitofp <2 x i32> %i.s to <2 x double>
  %i.u = fdiv <2 x double> %i.r, %i.t             ; 3 uses
  store <2 x double> %i.u, ptr %i.i, align 8, !tbaa !88
  %i.v = extractelement <2 x double> %i.u, i64 0
  %i.w = fcmp oeq double %i.v, 0.000000e+00
  br i1 %i.w, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  store i32 1, ptr %i.b, align 8, !tbaa !57
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.x = extractelement <2 x double> %i.u, i64 1
  %i.y = fcmp oeq double %i.x, 0.000000e+00
  br i1 %i.y, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  store i32 1, ptr %5, align 4, !tbaa !56
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #2

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt6vectorIN4geos9operation7overlay19ElevationMatrixCellESaIS3_EEC2EmRKS4_(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1, ptr noundef nonnull align 1 dereferenceable(1) %2) unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 !guid !93 {
bb.a:
  %i.a = icmp ugt i64 %1, 164703072086692425
  br i1 %i.a, label %bb.b, label %_ZNSt6vectorIN4geos9operation7overlay19ElevationMatrixCellESaIS3_EE17_S_check_init_lenEmRKS4_.exit

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.12) #20
  unreachable

_ZNSt6vectorIN4geos9operation7overlay19ElevationMatrixCellESaIS3_EE17_S_check_init_lenEmRKS4_.exit: ; preds = %bb.a
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, i8 0, i64 24, i1 false)
  %.not.i.i.i = icmp eq i64 %1, 0
  br i1 %.not.i.i.i, label %_ZNSt12_Vector_baseIN4geos9operation7overlay19ElevationMatrixCellESaIS3_EEC2EmRKS4_.exit.thread, label %_ZNSt12_Vector_baseIN4geos9operation7overlay19ElevationMatrixCellESaIS3_EEC2EmRKS4_.exit

_ZNSt12_Vector_baseIN4geos9operation7overlay19ElevationMatrixCellESaIS3_EEC2EmRKS4_.exit.thread: ; preds = %_ZNSt6vectorIN4geos9operation7overlay19ElevationMatrixCellESaIS3_EE17_S_check_init_lenEmRKS4_.exit
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, i8 0, i64 24, i1 false)
  br label %.loopexit

_ZNSt12_Vector_baseIN4geos9operation7overlay19ElevationMatrixCellESaIS3_EEC2EmRKS4_.exit: ; preds = %_ZNSt6vectorIN4geos9operation7overlay19ElevationMatrixCellESaIS3_EE17_S_check_init_lenEmRKS4_.exit
  %i.c = mul nuw nsw i64 %1, 56
  %i.d = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.c) #22 ; 5 uses
  store ptr %i.d, ptr %0, align 8, !tbaa !60
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  store ptr %i.d, ptr %i.e, align 8, !tbaa !94
  %i.f = getelementptr inbounds nuw [56 x i8], ptr %i.d, i64 %1
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.f, ptr %i.g, align 8, !tbaa !95
  br label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %_ZNSt12_Vector_baseIN4geos9operation7overlay19ElevationMatrixCellESaIS3_EEC2EmRKS4_.exit, %_ZSt10_ConstructIN4geos9operation7overlay19ElevationMatrixCellEJEEvPT_DpOT0_.exit.i.i.i.i
  %.014.i.i.i.i = phi ptr [ %i.i, %_ZSt10_ConstructIN4geos9operation7overlay19ElevationMatrixCellEJEEvPT_DpOT0_.exit.i.i.i.i ], [ %i.d, %_ZNSt12_Vector_baseIN4geos9operation7overlay19ElevationMatrixCellESaIS3_EEC2EmRKS4_.exit ] ; 3 uses
  %.01013.i.i.i.i = phi i64 [ %i.h, %_ZSt10_ConstructIN4geos9operation7overlay19ElevationMatrixCellEJEEvPT_DpOT0_.exit.i.i.i.i ], [ %1, %_ZNSt12_Vector_baseIN4geos9operation7overlay19ElevationMatrixCellESaIS3_EEC2EmRKS4_.exit ]
  invoke void @_ZN4geos9operation7overlay19ElevationMatrixCellC1Ev(ptr noundef nonnull align 8 dereferenceable(56) %.014.i.i.i.i)
          to label %_ZSt10_ConstructIN4geos9operation7overlay19ElevationMatrixCellEJEEvPT_DpOT0_.exit.i.i.i.i unwind label %bb.c

_ZSt10_ConstructIN4geos9operation7overlay19ElevationMatrixCellEJEEvPT_DpOT0_.exit.i.i.i.i: ; preds = %.lr.ph.i.i.i.i
  %i.h = add nsw i64 %.01013.i.i.i.i, -1          ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %.014.i.i.i.i, i64 56 ; 2 uses
  %.not.i.i.i.i = icmp eq i64 %i.h, 0
  br i1 %.not.i.i.i.i, label %.loopexit, label %.lr.ph.i.i.i.i, !llvm.loop !92

bb.c:                                             ; preds = %.lr.ph.i.i.i.i
  %i.j = landingpad { ptr, i32 }
          catch ptr null
  %i.k = extractvalue { ptr, i32 } %i.j, 0
  %i.l = tail call ptr @__cxa_begin_catch(ptr %i.k) #18 ; 0 uses
  invoke void @_ZSt8_DestroyIPN4geos9operation7overlay19ElevationMatrixCellEEvT_S5_(ptr noundef nonnull %i.d, ptr noundef nonnull %.014.i.i.i.i)
          to label %bb.d unwind label %bb.e

bb.d:                                             ; preds = %bb.c
  invoke void @__cxa_rethrow() #20
          to label %bb.g unwind label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.m = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %.body unwind label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.n = landingpad { ptr, i32 }
          catch ptr null
  %i.o = extractvalue { ptr, i32 } %i.n, 0
  tail call void @__clang_call_terminate(ptr %i.o) #21
  unreachable

bb.g:                                             ; preds = %bb.d
  unreachable

.loopexit:                                        ; preds = %_ZSt10_ConstructIN4geos9operation7overlay19ElevationMatrixCellEJEEvPT_DpOT0_.exit.i.i.i.i, %_ZNSt12_Vector_baseIN4geos9operation7overlay19ElevationMatrixCellESaIS3_EEC2EmRKS4_.exit.thread
  %i.p = phi ptr [ %i.b, %_ZNSt12_Vector_baseIN4geos9operation7overlay19ElevationMatrixCellESaIS3_EEC2EmRKS4_.exit.thread ], [ %i.e, %_ZSt10_ConstructIN4geos9operation7overlay19ElevationMatrixCellEJEEvPT_DpOT0_.exit.i.i.i.i ]
  %.0.lcssa.i.i.i.i = phi ptr [ null, %_ZNSt12_Vector_baseIN4geos9operation7overlay19ElevationMatrixCellESaIS3_EEC2EmRKS4_.exit.thread ], [ %i.i, %_ZSt10_ConstructIN4geos9operation7overlay19ElevationMatrixCellEJEEvPT_DpOT0_.exit.i.i.i.i ]
  store ptr %.0.lcssa.i.i.i.i, ptr %i.p, align 8, !tbaa !94
  ret void

.body:                                            ; preds = %bb.e
  %i.q = load ptr, ptr %0, align 8, !tbaa !60     ; 2 uses
  %.not.i.i = icmp eq ptr %i.q, null
  br i1 %.not.i.i, label %_ZNSt12_Vector_baseIN4geos9operation7overlay19ElevationMatrixCellESaIS3_EED2Ev.exit, label %bb.h

bb.h:                                             ; preds = %.body
  tail call void @_ZdlPv(ptr noundef nonnull %i.q) #19
  br label %_ZNSt12_Vector_baseIN4geos9operation7overlay19ElevationMatrixCellESaIS3_EED2Ev.exit

_ZNSt12_Vector_baseIN4geos9operation7overlay19ElevationMatrixCellESaIS3_EED2Ev.exit: ; preds = %.body, %bb.h
  resume { ptr, i32 } %i.m
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZN4geos4geom16CoordinateFilterD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %0) unnamed_addr #5 comdat align 2 !guid !96 {
bb.a:
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN4geos9operation7overlay15ElevationMatrix3addEPKNS_4geom8GeometryE(ptr noundef nonnull align 8 dereferenceable(120) %0, ptr noundef %1) local_unnamed_addr #1 align 2 !guid !97 {
bb.a:
  %i.a = load ptr, ptr %1, align 8, !tbaa !34
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 288
  %i.c = load ptr, ptr %i.b, align 8
  tail call void %i.c(ptr noundef nonnull align 8 dereferenceable(40) %1, ptr noundef nonnull %0)
  ret void
}

declare void @_ZN4geos9operation7overlay19ElevationMatrixCell3addERKNS_4geom10CoordinateE(ptr noundef nonnull align 8 dereferenceable(56), ptr noundef nonnull align 8 dereferenceable(24)) local_unnamed_addr #3

; Function Attrs: inlinehint mustprogress uwtable
declare noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef) local_unnamed_addr #6

declare void @_ZNK4geos4geom10Coordinate8toStringB5cxx11Ev(ptr dead_on_unwind writable sret(%"class.std::__cxx11::basic_string") align 8, ptr noundef nonnull align 8 dereferenceable(24)) local_unnamed_addr #3

; Function Attrs: inlinehint mustprogress uwtable
declare noundef nonnull align 8 dereferenceable(8) ptr @_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_(ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #6

; Function Attrs: noinline noreturn nounwind uwtable
define linkonce_odr hidden void @__clang_call_terminate(ptr noundef %0) local_unnamed_addr #7 comdat !guid !98 {
bb.a:
  %i.a = tail call ptr @__cxa_begin_catch(ptr %0) #18 ; 0 uses
  tail call void @_ZSt9terminatev() #21
  unreachable
}

; Function Attrs: cold nofree noreturn
declare void @_ZSt9terminatev() local_unnamed_addr #8

; Function Attrs: mustprogress uwtable
declare void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEC1Ev(ptr noundef nonnull align 8 dereferenceable(112)) unnamed_addr #1 align 2

declare void @_ZNK4geos4geom8Envelope8toStringB5cxx11Ev(ptr dead_on_unwind writable sret(%"class.std::__cxx11::basic_string") align 8, ptr noundef nonnull align 8 dereferenceable(32)) local_unnamed_addr #3

declare ptr @__cxa_allocate_exception(i64) local_unnamed_addr

; Function Attrs: mustprogress uwtable
declare void @_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8, ptr noundef nonnull align 8 dereferenceable(112)) local_unnamed_addr #1 align 2

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN4geos4util24IllegalArgumentExceptionC2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(32) %1) unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 !guid !99 {
.noexc.i:
  %i.a = alloca i64, align 8                      ; 5 uses
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #18
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 4 uses
  store ptr %i.b, ptr %2, align 8, !tbaa !67
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #18
  store i64 24, ptr %i.a, align 8, !tbaa !100
  %i.c = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0) ; 2 uses
  store ptr %i.c, ptr %2, align 8, !tbaa !65
  %i.d = load i64, ptr %i.a, align 8, !tbaa !100  ; 3 uses
  store i64 %i.d, ptr %i.b, align 8, !tbaa !68
end_hunk_0
