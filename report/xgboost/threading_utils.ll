Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/xgboost/original/threading_utils?download=true
inline.NumInlined: 506
inline.NumDeleted: 244
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@_ZN7xgboost6common16GetCGroupV2CountERKNSt10filesystem7__cxx114pathE:bb.a
          catch ptr null
  br label %bb.f

bb.e:                                             ; preds = %bb.b, %_ZNSt14basic_ifstreamIcSt11char_traitsIcEEC1INSt10filesystem7__cxx114pathES6_EERKT_St13_Ios_Openmode.exit
  %i.k = landingpad { ptr, i32 }
          catch ptr @_ZTISt9exception
          catch ptr null
  call void @_ZNSt14basic_ifstreamIcSt11char_traitsIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(256) %1) #18
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %.pn = phi { ptr, i32 } [ %i.k, %bb.e ], [ %i.j, %bb.d ] ; 2 uses
  %.0 = extractvalue { ptr, i32 } %.pn, 1
  %.07 = extractvalue { ptr, i32 } %.pn, 0        ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #18
  %i.l = call i32 @llvm.eh.typeid.for.p0(ptr nonnull @_ZTISt9exception) #18
  %i.m = icmp eq i32 %.0, %i.l
  br i1 %i.m, label %bb.g, label %bb.l

bb.g:                                             ; preds = %bb.f
  %i.n = call ptr @__cxa_begin_catch(ptr %.07) #18 ; 0 uses
  invoke fastcc void @"_ZZN7xgboost6common16GetCGroupV2CountERKNSt10filesystem7__cxx114pathEENK3$_0clEv"()
          to label %bb.h unwind label %bb.k

bb.h:                                             ; preds = %bb.g
  invoke void @__cxa_end_catch()
          to label %bb.j unwind label %bb.k

bb.i:                                             ; preds = %bb.c
  %i.o = uitofp nneg i32 %i.f to double
  %i.p = uitofp nneg i32 %i.h to double
  %i.q = fdiv double %i.o, %i.p
  %i.r = call double @llvm.ceil.f64(double %i.q)
  %i.s = fptosi double %i.r to i32
  %.sroa.speculated = call i32 @llvm.smax.i32(i32 %i.s, i32 1)
  br label %bb.j

bb.j:                                             ; preds = %bb.c, %bb.i, %bb.h
  %.09 = phi i32 [ -1, %bb.h ], [ %.sroa.speculated, %bb.i ], [ -1, %bb.c ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #18
  ret i32 %.09

bb.k:                                             ; preds = %bb.g, %bb.h
  %i.t = landingpad { ptr, i32 }
          catch ptr null
  %i.u = extractvalue { ptr, i32 } %i.t, 0
  call void @__clang_call_terminate(ptr %i.u) #22
  unreachable

bb.l:                                             ; preds = %bb.f
  call void @__clang_call_terminate(ptr %.07) #22
  unreachable
}

declare i32 @__gxx_personality_v0(...)

declare noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef nonnull align 4 dereferenceable(4)) local_unnamed_addr #3

; Function Attrs: mustprogress nounwind uwtable
declare void @_ZNSt14basic_ifstreamIcSt11char_traitsIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(256)) unnamed_addr #0 align 2

; Function Attrs: nounwind memory(none)
declare i32 @llvm.eh.typeid.for.p0(ptr) #4

; Function Attrs: noinline noreturn nounwind uwtable
define linkonce_odr hidden void @__clang_call_terminate(ptr noundef %0) local_unnamed_addr #5 comdat {
bb.a:
  %i.a = tail call ptr @__cxa_begin_catch(ptr %0) #18 ; 0 uses
  tail call void @_ZSt9terminatev() #22
  unreachable
}

declare ptr @__cxa_begin_catch(ptr) local_unnamed_addr

; Function Attrs: cold nofree noreturn
declare void @_ZSt9terminatev() local_unnamed_addr #6

; Function Attrs: inlinehint mustprogress uwtable
define internal fastcc void @"_ZZN7xgboost6common16GetCGroupV2CountERKNSt10filesystem7__cxx114pathEENK3$_0clEv"() unnamed_addr #7 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 5 uses
  %0 = alloca %"class.xgboost::ConsoleLogger", align 8 ; 7 uses
  %1 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %i.b = tail call noundef zeroext i1 @_ZN7xgboost13ConsoleLogger9ShouldLogENS0_12LogVerbosityE(i32 noundef 1)
  br i1 %i.b, label %.noexc.i, label %bb.f

.noexc.i:                                         ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %0) #18
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #18
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 6 uses
  store ptr %i.c, ptr %1, align 8, !tbaa !25
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #18
  store i64 61, ptr %i.a, align 8, !tbaa !30
  %i.d = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0) ; 3 uses
  store ptr %i.d, ptr %1, align 8, !tbaa !8
  %i.e = load i64, ptr %i.a, align 8, !tbaa !30   ; 3 uses
  store i64 %i.e, ptr %i.c, align 8, !tbaa !27
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(61) %i.d, ptr noundef nonnull align 1 dereferenceable(61) @.str.3, i64 61, i1 false)
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 8
  store i64 %i.e, ptr %i.f, align 8, !tbaa !26
  %i.g = getelementptr inbounds nuw i8, ptr %i.d, i64 %i.e
  store i8 0, ptr %i.g, align 1, !tbaa !27
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #18
  invoke void @_ZN7xgboost13ConsoleLoggerC1ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiNS0_12LogVerbosityE(ptr noundef nonnull align 8 dereferenceable(380) %0, ptr noundef nonnull align 8 dereferenceable(32) %1, i32 noundef 65, i32 noundef 1)
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %.noexc.i
  %i.h = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull @.str.9, i64 noundef 22)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit unwind label %bb.d ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit: ; preds = %bb.b
  call void @_ZN7xgboost13ConsoleLoggerD1Ev(ptr noundef nonnull align 8 dead_on_return(380) dereferenceable(380) %0) #18
  %i.i = load ptr, ptr %1, align 8, !tbaa !8      ; 2 uses
  %i.j = icmp eq ptr %i.i, %i.c
  br i1 %i.j, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit
  %i.k = load i64, ptr %i.c, align 8, !tbaa !27
  %i.l = add i64 %i.k, 1
  call void @_ZdlPvm(ptr noundef %i.i, i64 noundef %i.l) #21
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %0) #18
  br label %bb.f

bb.c:                                             ; preds = %.noexc.i
  %i.m = landingpad { ptr, i32 }
          cleanup
  br label %bb.e

bb.d:                                             ; preds = %bb.b
  %i.n = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7xgboost13ConsoleLoggerD1Ev(ptr noundef nonnull align 8 dead_on_return(380) dereferenceable(380) %0) #18
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %.pn = phi { ptr, i32 } [ %i.n, %bb.d ], [ %i.m, %bb.c ]
  %i.o = load ptr, ptr %1, align 8, !tbaa !8      ; 2 uses
  %i.p = icmp eq ptr %i.o, %i.c
  br i1 %i.p, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit8, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i6

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i6: ; preds = %bb.e
  %i.q = load i64, ptr %i.c, align 8, !tbaa !27
  %i.r = add i64 %i.q, 1
  call void @_ZdlPvm(ptr noundef %i.o, i64 noundef %i.r) #21
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit8

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit8: ; preds = %bb.e, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i6
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %0) #18
  resume { ptr, i32 } %.pn

bb.f:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %bb.a
  ret void
}

declare void @__cxa_end_catch() local_unnamed_addr

; Function Attrs: mustprogress nounwind uwtable
define noundef i32 @_ZN7xgboost6common14GetCfsCPUCountEv() local_unnamed_addr #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %0 = alloca %"class.std::filesystem::__cxx11::path", align 8 ; 10 uses
  %1 = alloca %"class.std::filesystem::__cxx11::path", align 8 ; 10 uses
  %2 = alloca %"class.std::filesystem::__cxx11::path", align 8 ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %0) #18
  invoke void @_ZNSt10filesystem7__cxx114pathC2IA23_cS1_EERKT_NS1_6formatE(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef nonnull align 1 dereferenceable(23) @.str, i8 noundef zeroext 2)
          to label %bb.b unwind label %bb.e

bb.b:                                             ; preds = %bb.a
  %i.a = invoke i64 @_ZNSt10filesystem6statusERKNS_7__cxx114pathE(ptr noundef nonnull align 8 dereferenceable(40) %0)
          to label %bb.c unwind label %bb.f

bb.c:                                             ; preds = %bb.b
  %i.b = and i64 %i.a, 255
  %.off = add nsw i64 %i.b, -1
  %switch = icmp ult i64 %.off, 254               ; 2 uses
  br i1 %switch, label %bb.d, label %bb.g

bb.d:                                             ; preds = %bb.c
  %i.c = call noundef i32 @_ZN7xgboost6common16GetCGroupV2CountERKNSt10filesystem7__cxx114pathE(ptr noundef nonnull align 8 dereferenceable(40) %0) #18
  br label %bb.g

bb.e:                                             ; preds = %bb.a
  %i.d = landingpad { ptr, i32 }
          catch ptr @_ZTISt9exception
          catch ptr null
  br label %bb.i

bb.f:                                             ; preds = %bb.b
  %i.e = landingpad { ptr, i32 }
          catch ptr @_ZTISt9exception
          catch ptr null
  call void @_ZNSt10filesystem7__cxx114pathD2Ev(ptr noundef nonnull align 8 dead_on_return(40) dereferenceable(40) %0) #18
  br label %bb.i

bb.g:                                             ; preds = %bb.c, %bb.d
  %.014 = phi i32 [ %i.c, %bb.d ], [ undef, %bb.c ]
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !31   ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.g, null
  br i1 %.not.i.i.i, label %_ZNSt10filesystem7__cxx114path5_ListD2Ev.exit.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  call void @_ZNKSt10filesystem7__cxx114path5_List13_Impl_deleterclEPNS2_5_ImplE(ptr noundef nonnull align 8 dereferenceable(8) %i.f, ptr noundef nonnull %i.g) #18
  br label %_ZNSt10filesystem7__cxx114path5_ListD2Ev.exit.i

_ZNSt10filesystem7__cxx114path5_ListD2Ev.exit.i:  ; preds = %bb.h, %bb.g
  %i.h = load ptr, ptr %0, align 8, !tbaa !8      ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.j = icmp eq ptr %i.h, %i.i
  br i1 %i.j, label %_ZNSt10filesystem7__cxx114pathD2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %_ZNSt10filesystem7__cxx114path5_ListD2Ev.exit.i
  %i.k = load i64, ptr %i.i, align 8, !tbaa !27
  %i.l = add i64 %i.k, 1
  call void @_ZdlPvm(ptr noundef %i.h, i64 noundef %i.l) #21
  br label %_ZNSt10filesystem7__cxx114pathD2Ev.exit

_ZNSt10filesystem7__cxx114pathD2Ev.exit:          ; preds = %_ZNSt10filesystem7__cxx114path5_ListD2Ev.exit.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %0) #18
  br i1 %switch, label %bb.y, label %bb.j

bb.i:                                             ; preds = %bb.f, %bb.e
  %.pn = phi { ptr, i32 } [ %i.e, %bb.f ], [ %i.d, %bb.e ] ; 2 uses
  %.09 = extractvalue { ptr, i32 } %.pn, 1
  %.011 = extractvalue { ptr, i32 } %.pn, 0       ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %0) #18
  %i.m = call i32 @llvm.eh.typeid.for.p0(ptr nonnull @_ZTISt9exception) #18
  %i.n = icmp eq i32 %.09, %i.m
  br i1 %i.n, label %.invoke, label %bb.aa

bb.j:                                             ; preds = %_ZNSt10filesystem7__cxx114pathD2Ev.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #18
  invoke void @_ZNSt10filesystem7__cxx114pathC2IA36_cS1_EERKT_NS1_6formatE(ptr noundef nonnull align 8 dereferenceable(40) %1, ptr noundef nonnull align 1 dereferenceable(36) @.str.1, i8 noundef zeroext 2)
          to label %bb.k unwind label %bb.r

bb.k:                                             ; preds = %bb.j
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #18
  invoke void @_ZNSt10filesystem7__cxx114pathC2IA37_cS1_EERKT_NS1_6formatE(ptr noundef nonnull align 8 dereferenceable(40) %2, ptr noundef nonnull align 1 dereferenceable(37) @.str.2, i8 noundef zeroext 2)
          to label %bb.l unwind label %bb.s

bb.l:                                             ; preds = %bb.k
  %i.o = invoke i64 @_ZNSt10filesystem6statusERKNS_7__cxx114pathE(ptr noundef nonnull align 8 dereferenceable(40) %1)
          to label %bb.m unwind label %bb.t

bb.m:                                             ; preds = %bb.l
  %i.p = and i64 %i.o, 255
  %.off33 = add nsw i64 %i.p, -1
  %switch34 = icmp ult i64 %.off33, 254
  br i1 %switch34, label %bb.n, label %_ZN7xgboost6common16GetCGroupV1CountERKNSt10filesystem7__cxx114pathES5_.exit

bb.n:                                             ; preds = %bb.m
  %i.q = invoke i64 @_ZNSt10filesystem6statusERKNS_7__cxx114pathE(ptr noundef nonnull align 8 dereferenceable(40) %2)
          to label %bb.o unwind label %bb.t

bb.o:                                             ; preds = %bb.n
  %i.r = and i64 %i.q, 255
  %.off35 = add nsw i64 %i.r, -1
  %switch36 = icmp ult i64 %.off35, 254
  br i1 %switch36, label %bb.p, label %_ZN7xgboost6common16GetCGroupV1CountERKNSt10filesystem7__cxx114pathES5_.exit

bb.p:                                             ; preds = %bb.o
  %i.s = load ptr, ptr %1, align 8, !tbaa !8
  %i.t = call fastcc noundef i32 @"_ZZN7xgboost6common16GetCGroupV1CountERKNSt10filesystem7__cxx114pathES5_ENK3$_0clEPKc"(ptr noundef %i.s) #18 ; 3 uses
  %i.u = load ptr, ptr %2, align 8, !tbaa !8
  %i.v = call fastcc noundef i32 @"_ZZN7xgboost6common16GetCGroupV1CountERKNSt10filesystem7__cxx114pathES5_ENK3$_0clEPKc"(ptr noundef %i.u) #18 ; 3 uses
  %i.w = icmp sgt i32 %i.t, 0
  %i.x = icmp sgt i32 %i.v, 0
  %or.cond.i = and i1 %i.w, %i.x
  br i1 %or.cond.i, label %bb.q, label %_ZN7xgboost6common16GetCGroupV1CountERKNSt10filesystem7__cxx114pathES5_.exit

bb.q:                                             ; preds = %bb.p
  %i.y = udiv i32 %i.t, %i.v
  %i.z = icmp samesign ugt i32 %i.v, %i.t
  %.sroa.speculated.i = select i1 %i.z, i32 1, i32 %i.y
  br label %_ZN7xgboost6common16GetCGroupV1CountERKNSt10filesystem7__cxx114pathES5_.exit

bb.r:                                             ; preds = %bb.j
  %i.aa = landingpad { ptr, i32 }
          catch ptr @_ZTISt9exception
          catch ptr null
  br label %bb.x

bb.s:                                             ; preds = %bb.k
  %i.ab = landingpad { ptr, i32 }
          catch ptr @_ZTISt9exception
          catch ptr null
  br label %bb.w

bb.t:                                             ; preds = %bb.n, %bb.l
  %i.ac = landingpad { ptr, i32 }
          catch ptr @_ZTISt9exception
          catch ptr null
  call void @_ZNSt10filesystem7__cxx114pathD2Ev(ptr noundef nonnull align 8 dead_on_return(40) dereferenceable(40) %2) #18
  br label %bb.w

_ZN7xgboost6common16GetCGroupV1CountERKNSt10filesystem7__cxx114pathES5_.exit: ; preds = %bb.o, %bb.m, %bb.q, %bb.p
  %spec.select = phi i32 [ %.sroa.speculated.i, %bb.q ], [ -1, %bb.m ], [ -1, %bb.p ], [ -1, %bb.o ]
  %i.ad = getelementptr inbounds nuw i8, ptr %2, i64 32 ; 2 uses
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !31 ; 2 uses
  %.not.i.i.i23 = icmp eq ptr %i.ae, null
  br i1 %.not.i.i.i23, label %_ZNSt10filesystem7__cxx114path5_ListD2Ev.exit.i24, label %bb.u

bb.u:                                             ; preds = %_ZN7xgboost6common16GetCGroupV1CountERKNSt10filesystem7__cxx114pathES5_.exit
  call void @_ZNKSt10filesystem7__cxx114path5_List13_Impl_deleterclEPNS2_5_ImplE(ptr noundef nonnull align 8 dereferenceable(8) %i.ad, ptr noundef nonnull %i.ae) #18
  br label %_ZNSt10filesystem7__cxx114path5_ListD2Ev.exit.i24

_ZNSt10filesystem7__cxx114path5_ListD2Ev.exit.i24: ; preds = %bb.u, %_ZN7xgboost6common16GetCGroupV1CountERKNSt10filesystem7__cxx114pathES5_.exit
  %i.af = load ptr, ptr %2, align 8, !tbaa !8     ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.ah = icmp eq ptr %i.af, %i.ag
  br i1 %i.ah, label %_ZNSt10filesystem7__cxx114pathD2Ev.exit27, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i25

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i25: ; preds = %_ZNSt10filesystem7__cxx114path5_ListD2Ev.exit.i24
  %i.ai = load i64, ptr %i.ag, align 8, !tbaa !27
  %i.aj = add i64 %i.ai, 1
  call void @_ZdlPvm(ptr noundef %i.af, i64 noundef %i.aj) #21
  br label %_ZNSt10filesystem7__cxx114pathD2Ev.exit27

_ZNSt10filesystem7__cxx114pathD2Ev.exit27:        ; preds = %_ZNSt10filesystem7__cxx114path5_ListD2Ev.exit.i24, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i25
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #18
  %i.ak = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 2 uses
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !31 ; 2 uses
  %.not.i.i.i28 = icmp eq ptr %i.al, null
  br i1 %.not.i.i.i28, label %_ZNSt10filesystem7__cxx114path5_ListD2Ev.exit.i29, label %bb.v

bb.v:                                             ; preds = %_ZNSt10filesystem7__cxx114pathD2Ev.exit27
  call void @_ZNKSt10filesystem7__cxx114path5_List13_Impl_deleterclEPNS2_5_ImplE(ptr noundef nonnull align 8 dereferenceable(8) %i.ak, ptr noundef nonnull %i.al) #18
  br label %_ZNSt10filesystem7__cxx114path5_ListD2Ev.exit.i29

_ZNSt10filesystem7__cxx114path5_ListD2Ev.exit.i29: ; preds = %bb.v, %_ZNSt10filesystem7__cxx114pathD2Ev.exit27
  %i.am = load ptr, ptr %1, align 8, !tbaa !8     ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.ao = icmp eq ptr %i.am, %i.an
  br i1 %i.ao, label %_ZNSt10filesystem7__cxx114pathD2Ev.exit32, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i30

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i30: ; preds = %_ZNSt10filesystem7__cxx114path5_ListD2Ev.exit.i29
  %i.ap = load i64, ptr %i.an, align 8, !tbaa !27
  %i.aq = add i64 %i.ap, 1
  call void @_ZdlPvm(ptr noundef %i.am, i64 noundef %i.aq) #21
  br label %_ZNSt10filesystem7__cxx114pathD2Ev.exit32

_ZNSt10filesystem7__cxx114pathD2Ev.exit32:        ; preds = %_ZNSt10filesystem7__cxx114path5_ListD2Ev.exit.i29, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i30
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #18
  br label %bb.y

bb.w:                                             ; preds = %bb.t, %bb.s
  %.pn18 = phi { ptr, i32 } [ %i.ac, %bb.t ], [ %i.ab, %bb.s ]
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #18
  call void @_ZNSt10filesystem7__cxx114pathD2Ev(ptr noundef nonnull align 8 dead_on_return(40) dereferenceable(40) %1) #18
  br label %bb.x

bb.x:                                             ; preds = %bb.w, %bb.r
  %.pn18.pn = phi { ptr, i32 } [ %.pn18, %bb.w ], [ %i.aa, %bb.r ] ; 2 uses
  %.2 = extractvalue { ptr, i32 } %.pn18.pn, 1
  %.213 = extractvalue { ptr, i32 } %.pn18.pn, 0  ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #18
  %i.ar = call i32 @llvm.eh.typeid.for.p0(ptr nonnull @_ZTISt9exception) #18
  %i.as = icmp eq i32 %.2, %i.ar
  br i1 %i.as, label %.invoke, label %bb.aa

.invoke:                                          ; preds = %bb.x, %bb.i
  %.011.sink = phi ptr [ %.011, %bb.i ], [ %.213, %bb.x ]
  %i.at = call ptr @__cxa_begin_catch(ptr %.011.sink) #18 ; 0 uses
  invoke void @__cxa_end_catch()
          to label %bb.y unwind label %bb.z

bb.y:                                             ; preds = %.invoke, %_ZNSt10filesystem7__cxx114pathD2Ev.exit, %_ZNSt10filesystem7__cxx114pathD2Ev.exit32
  %.216 = phi i32 [ -1, %.invoke ], [ %spec.select, %_ZNSt10filesystem7__cxx114pathD2Ev.exit32 ], [ %.014, %_ZNSt10filesystem7__cxx114pathD2Ev.exit ]
  ret i32 %.216

bb.z:                                             ; preds = %.invoke
  %i.au = landingpad { ptr, i32 }
          catch ptr null
  %i.av = extractvalue { ptr, i32 } %i.au, 0
  call void @__clang_call_terminate(ptr %i.av) #22
  unreachable

bb.aa:                                            ; preds = %bb.x, %bb.i
  %.3 = phi ptr [ %.213, %bb.x ], [ %.011, %bb.i ]
  call void @__clang_call_terminate(ptr %.3) #22
  unreachable
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt10filesystem7__cxx114pathC2IA23_cS1_EERKT_NS1_6formatE(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef nonnull align 1 dereferenceable(23) %1, i8 noundef zeroext %2) unnamed_addr #8 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %i.b = tail call noundef i64 @strlen(ptr noundef nonnull align 1 dereferenceable(23) %1) #18 ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 5 uses
  store ptr %i.c, ptr %0, align 8, !tbaa !25
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #18
  store i64 %i.b, ptr %i.a, align 8, !tbaa !30
  %i.d = icmp ugt i64 %i.b, 15
  br i1 %i.d, label %.noexc.i.i.i, label %._crit_edge.i.i.i.i

.noexc.i.i.i:                                     ; preds = %bb.a
  %i.e = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0) ; 2 uses
  store ptr %i.e, ptr %0, align 8, !tbaa !8
  %i.f = load i64, ptr %i.a, align 8, !tbaa !30
  store i64 %i.f, ptr %i.c, align 8, !tbaa !27
  br label %._crit_edge.i.i.i.i

._crit_edge.i.i.i.i:                              ; preds = %.noexc.i.i.i, %bb.a
  %i.g = phi ptr [ %i.e, %.noexc.i.i.i ], [ %i.c, %bb.a ] ; 2 uses
  switch i64 %i.b, label %bb.c [
    i64 1, label %bb.b
    i64 0, label %bb.d
  ]

bb.b:                                             ; preds = %._crit_edge.i.i.i.i
  %i.h = load i8, ptr %1, align 1, !tbaa !27
  store i8 %i.h, ptr %i.g, align 1, !tbaa !27
  br label %bb.d

bb.c:                                             ; preds = %._crit_edge.i.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.g, ptr nonnull align 1 %1, i64 %i.b, i1 false)
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b, %._crit_edge.i.i.i.i
  %i.i = load i64, ptr %i.a, align 8, !tbaa !30   ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.i, ptr %i.j, align 8, !tbaa !26
  %i.k = load ptr, ptr %0, align 8, !tbaa !8
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 %i.i
  store i8 0, ptr %i.l, align 1, !tbaa !27
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #18
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 3 uses
  invoke void @_ZNSt10filesystem7__cxx114path5_ListC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %i.m)
          to label %bb.e unwind label %bb.g

bb.e:                                             ; preds = %bb.d
  invoke void @_ZNSt10filesystem7__cxx114path14_M_split_cmptsEv(ptr noundef nonnull align 8 dereferenceable(40) %0)
          to label %bb.f unwind label %bb.h

bb.f:                                             ; preds = %bb.e
  ret void

bb.g:                                             ; preds = %bb.d
  %i.n = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt10filesystem7__cxx114path5_ListD2Ev.exit

bb.h:                                             ; preds = %bb.e
  %i.o = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.p = load ptr, ptr %i.m, align 8, !tbaa !31   ; 2 uses
  %.not.i.i = icmp eq ptr %i.p, null
  br i1 %.not.i.i, label %_ZNSt10filesystem7__cxx114path5_ListD2Ev.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  call void @_ZNKSt10filesystem7__cxx114path5_List13_Impl_deleterclEPNS2_5_ImplE(ptr noundef nonnull align 8 dereferenceable(8) %i.m, ptr noundef nonnull %i.p) #18
  br label %_ZNSt10filesystem7__cxx114path5_ListD2Ev.exit

_ZNSt10filesystem7__cxx114path5_ListD2Ev.exit:    ; preds = %bb.i, %bb.h, %bb.g
  %.pn = phi { ptr, i32 } [ %i.n, %bb.g ], [ %i.o, %bb.h ], [ %i.o, %bb.i ]
  %i.q = load ptr, ptr %0, align 8, !tbaa !8      ; 2 uses
  %i.r = icmp eq ptr %i.q, %i.c
  br i1 %i.r, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZNSt10filesystem7__cxx114path5_ListD2Ev.exit
  %i.s = load i64, ptr %i.c, align 8, !tbaa !27
  %i.t = add i64 %i.s, 1
  call void @_ZdlPvm(ptr noundef %i.q, i64 noundef %i.t) #21
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZNSt10filesystem7__cxx114path5_ListD2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  resume { ptr, i32 } %.pn
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt10filesystem7__cxx114pathD2Ev(ptr noundef nonnull align 8 dead_on_return(40) dereferenceable(40) %0) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !31   ; 2 uses
  %.not.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i, label %_ZNSt10filesystem7__cxx114path5_ListD2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @_ZNKSt10filesystem7__cxx114path5_List13_Impl_deleterclEPNS2_5_ImplE(ptr noundef nonnull align 8 dereferenceable(8) %i.a, ptr noundef nonnull %i.b) #18
  br label %_ZNSt10filesystem7__cxx114path5_ListD2Ev.exit

_ZNSt10filesystem7__cxx114path5_ListD2Ev.exit:    ; preds = %bb.a, %bb.b
  %i.c = load ptr, ptr %0, align 8, !tbaa !8      ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.e = icmp eq ptr %i.c, %i.d
  br i1 %i.e, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZNSt10filesystem7__cxx114path5_ListD2Ev.exit
  %i.f = load i64, ptr %i.d, align 8, !tbaa !27
  %i.g = add i64 %i.f, 1
  tail call void @_ZdlPvm(ptr noundef %i.c, i64 noundef %i.g) #21
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZNSt10filesystem7__cxx114path5_ListD2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt10filesystem7__cxx114pathC2IA36_cS1_EERKT_NS1_6formatE(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef nonnull align 1 dereferenceable(36) %1, i8 noundef zeroext %2) unnamed_addr #8 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %i.b = tail call noundef i64 @strlen(ptr noundef nonnull align 1 dereferenceable(36) %1) #18 ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 5 uses
  store ptr %i.c, ptr %0, align 8, !tbaa !25
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #18
  store i64 %i.b, ptr %i.a, align 8, !tbaa !30
  %i.d = icmp ugt i64 %i.b, 15
  br i1 %i.d, label %.noexc.i.i.i, label %._crit_edge.i.i.i.i

.noexc.i.i.i:                                     ; preds = %bb.a
  %i.e = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0) ; 2 uses
  store ptr %i.e, ptr %0, align 8, !tbaa !8
  %i.f = load i64, ptr %i.a, align 8, !tbaa !30
  store i64 %i.f, ptr %i.c, align 8, !tbaa !27
  br label %._crit_edge.i.i.i.i

._crit_edge.i.i.i.i:                              ; preds = %.noexc.i.i.i, %bb.a
  %i.g = phi ptr [ %i.e, %.noexc.i.i.i ], [ %i.c, %bb.a ] ; 2 uses
  switch i64 %i.b, label %bb.c [
    i64 1, label %bb.b
    i64 0, label %bb.d
  ]

bb.b:                                             ; preds = %._crit_edge.i.i.i.i
  %i.h = load i8, ptr %1, align 1, !tbaa !27
  store i8 %i.h, ptr %i.g, align 1, !tbaa !27
  br label %bb.d

bb.c:                                             ; preds = %._crit_edge.i.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.g, ptr nonnull align 1 %1, i64 %i.b, i1 false)
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b, %._crit_edge.i.i.i.i
  %i.i = load i64, ptr %i.a, align 8, !tbaa !30   ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.i, ptr %i.j, align 8, !tbaa !26
  %i.k = load ptr, ptr %0, align 8, !tbaa !8
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 %i.i
  store i8 0, ptr %i.l, align 1, !tbaa !27
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #18
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 3 uses
  invoke void @_ZNSt10filesystem7__cxx114path5_ListC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %i.m)
          to label %bb.e unwind label %bb.g

bb.e:                                             ; preds = %bb.d
  invoke void @_ZNSt10filesystem7__cxx114path14_M_split_cmptsEv(ptr noundef nonnull align 8 dereferenceable(40) %0)
          to label %bb.f unwind label %bb.h

bb.f:                                             ; preds = %bb.e
  ret void

bb.g:                                             ; preds = %bb.d
  %i.n = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt10filesystem7__cxx114path5_ListD2Ev.exit

bb.h:                                             ; preds = %bb.e
  %i.o = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.p = load ptr, ptr %i.m, align 8, !tbaa !31   ; 2 uses
  %.not.i.i = icmp eq ptr %i.p, null
  br i1 %.not.i.i, label %_ZNSt10filesystem7__cxx114path5_ListD2Ev.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  call void @_ZNKSt10filesystem7__cxx114path5_List13_Impl_deleterclEPNS2_5_ImplE(ptr noundef nonnull align 8 dereferenceable(8) %i.m, ptr noundef nonnull %i.p) #18
  br label %_ZNSt10filesystem7__cxx114path5_ListD2Ev.exit

_ZNSt10filesystem7__cxx114path5_ListD2Ev.exit:    ; preds = %bb.i, %bb.h, %bb.g
end_hunk_0
