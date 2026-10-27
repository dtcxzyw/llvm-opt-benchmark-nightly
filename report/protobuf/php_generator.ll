Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/protobuf/original/php_generator?download=true
inline.NumInlined: 4892
inline.NumDeleted: 1491
loop-unroll.NumCompletelyUnrolled: 36
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 38
begin_hunk_0_@_ZN6google8protobuf8compiler3php12_GLOBAL__N_118ConstantNamePrefixB5cxx11ESt17basic_string_viewIcSt11char_traitsIcEE:bb.a
  %brmerge71.not = and i1 %i.ca, %i.k
  br i1 %brmerge71.not, label %._crit_edge.i.i, label %.critedge

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.10: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.7
  %i.cc = load i32, ptr %i.l, align 1
  %i.cd = icmp ne i32 %i.cc, 1718379891           ; 2 uses
  %i.ce = zext i1 %i.cd to i32                    ; 0 uses
  %brmerge.not = and i1 %i.cd, %i.k
  br i1 %brmerge.not, label %._crit_edge.i.i, label %.critedge

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.11: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.8
  %i.cf = load i64, ptr %i.l, align 1
  %i.cg = icmp ne i64 %i.cf, 8749489600778560882  ; 2 uses
  %i.ch = zext i1 %i.cg to i32                    ; 0 uses
  %brmerge77.not = and i1 %i.cg, %i.k
  br i1 %brmerge77.not, label %._crit_edge.i.i, label %.critedge

.split.us:                                        ; preds = %.preheader
  br i1 %i.k, label %._crit_edge.i.i, label %.critedge

._crit_edge.i.i:                                  ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.11, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.5, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.9, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.10, %.split.us
  %i.ci = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  store ptr %i.ci, ptr %0, align 8, !tbaa !54
  store i16 16976, ptr %i.ci, align 8
  %i.cj = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 2, ptr %i.cj, align 8, !tbaa !50
  %i.ck = getelementptr inbounds nuw i8, ptr %0, i64 18
  store i8 0, ptr %i.ck, align 2, !tbaa !56
  br label %bb.d

.critedge:                                        ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.11, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.5, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.9, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.10, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.1, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.2, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.3, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.4, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.6, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.7, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.8, %.split.us
  %i.cl = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  store ptr %i.cl, ptr %0, align 8, !tbaa !54
  %i.cm = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 0, ptr %i.cm, align 8, !tbaa !50
  store i8 0, ptr %i.cl, align 8, !tbaa !56
  br label %bb.d

bb.c:                                             ; preds = %_ZN4absl12lts_2025051215AsciiStrToLowerB5cxx11ESt17basic_string_viewIcSt11char_traitsIcEE.exit
  %i.cn = landingpad { ptr, i32 }
          cleanup
  %i.co = load ptr, ptr %3, align 8, !tbaa !51    ; 2 uses
  %i.cp = icmp eq ptr %i.co, %i.a
  br i1 %i.cp, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit25, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i23

bb.d:                                             ; preds = %.critedge, %._crit_edge.i.i
  %i.cq = icmp eq ptr %i.l, %i.a
  br i1 %i.cq, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i: ; preds = %bb.d
  %i.cr = icmp ult i64 %.fr28, 16
  call void @llvm.assume(i1 %i.cr)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.d
  %i.cs = load i64, ptr %i.a, align 8, !tbaa !56
  %i.ct = add i64 %i.cs, 1
  call void @_ZdlPvm(ptr noundef %i.l, i64 noundef %i.ct) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #26
  ret void

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i23: ; preds = %bb.c
  %i.cu = load i64, ptr %i.a, align 8, !tbaa !56
  %i.cv = add i64 %i.cu, 1
  call void @_ZdlPvm(ptr noundef %i.co, i64 noundef %i.cv) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit25

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit25: ; preds = %bb.c, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i23
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #26
  br label %common.resume
}

; Function Attrs: mustprogress uwtable
define internal fastcc void @_ZN6google8protobuf8compiler3php12_GLOBAL__N_111IntToStringB5cxx11Ei(ptr dead_on_unwind noalias nonnull writable align 8 %0, i32 noundef %1) unnamed_addr #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.std::__cxx11::basic_ostringstream", align 8 ; 17 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #26
  call void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEC1Ev(ptr noundef nonnull align 8 dereferenceable(112) %2)
  %i.a = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) %2, i32 noundef %1)
          to label %bb.b unwind label %bb.f       ; 0 uses

bb.b:                                             ; preds = %bb.a
  call void @llvm.experimental.noalias.scope.decl(metadata !855)
  call void @llvm.experimental.noalias.scope.decl(metadata !856)
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 4 uses
  store ptr %i.b, ptr %0, align 8, !tbaa !54, !alias.scope !857
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 0, ptr %i.c, align 8, !tbaa !50, !alias.scope !857
  store i8 0, ptr %i.b, align 8, !tbaa !56, !alias.scope !857
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 48
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !861, !noalias !857 ; 3 uses
  %.not.i.not.i.i = icmp eq ptr %i.e, null
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.g = load ptr, ptr %i.f, align 8, !noalias !857 ; 2 uses
  %i.h = icmp ugt ptr %i.e, %i.g
  %.08.i.i.i = select i1 %i.h, ptr %i.e, ptr %i.g ; 2 uses
  %.not5.i.i = icmp eq ptr %.08.i.i.i, null
  %.not.i.i = select i1 %.not.i.not.i.i, i1 true, i1 %.not5.i.i
  br i1 %.not.i.i, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.i = getelementptr inbounds nuw i8, ptr %2, i64 40
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !862, !noalias !857 ; 2 uses
  %i.k = ptrtoint ptr %.08.i.i.i to i64
  %i.l = ptrtoint ptr %i.j to i64
  %i.m = sub i64 %i.k, %i.l
  %i.n = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef 0, i64 noundef 0, ptr noundef %i.j, i64 noundef %i.m)
          to label %_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv.exit unwind label %bb.d ; 0 uses

bb.d:                                             ; preds = %bb.e, %bb.c
  %i.o = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.p = load ptr, ptr %0, align 8, !tbaa !51, !alias.scope !857 ; 2 uses
  %i.q = icmp eq ptr %i.p, %i.b
  br i1 %i.q, label %.body, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %bb.d
  %i.r = load i64, ptr %i.b, align 8, !tbaa !56, !alias.scope !857
  %i.s = add i64 %i.r, 1
  call void @_ZdlPvm(ptr noundef %i.p, i64 noundef %i.s) #27
  br label %.body

bb.e:                                             ; preds = %bb.b
  %i.t = getelementptr inbounds nuw i8, ptr %2, i64 80
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %i.t)
          to label %_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv.exit unwind label %bb.d

_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv.exit: ; preds = %bb.e, %bb.c
  %i.u = load ptr, ptr @_ZTTNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE, align 8 ; 2 uses
  store ptr %i.u, ptr %2, align 8, !tbaa !53
  %i.v = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE, i64 24), align 8
  %i.w = getelementptr i8, ptr %i.u, i64 -24
  %i.x = load i64, ptr %i.w, align 8
  %i.y = getelementptr inbounds i8, ptr %2, i64 %i.x
  store ptr %i.v, ptr %i.y, align 8, !tbaa !53
  %i.z = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEEE, i64 16), ptr %i.z, align 8, !tbaa !53
  %i.aa = getelementptr inbounds nuw i8, ptr %2, i64 80
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !51 ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %2, i64 96 ; 2 uses
  %i.ad = icmp eq ptr %i.ab, %i.ac
  br i1 %i.ad, label %_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i: ; preds = %_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv.exit
  %i.ae = load i64, ptr %i.ac, align 8, !tbaa !56
  %i.af = add i64 %i.ae, 1
  call void @_ZdlPvm(ptr noundef %i.ab, i64 noundef %i.af) #27
  br label %_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev.exit

_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev.exit: ; preds = %_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVSt15basic_streambufIcSt11char_traitsIcEE, i64 16), ptr %i.z, align 8, !tbaa !53
  %i.ag = getelementptr inbounds nuw i8, ptr %2, i64 64
  call void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.ag) #26
  %i.ah = getelementptr inbounds nuw i8, ptr %2, i64 112
  call void @_ZNSt8ios_baseD2Ev(ptr noundef nonnull align 8 dereferenceable(264) %i.ah) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #26
  ret void

bb.f:                                             ; preds = %bb.a
  %i.ai = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %bb.d, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i, %bb.f
  %eh.lpad-body = phi { ptr, i32 } [ %i.ai, %bb.f ], [ %i.o, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i ], [ %i.o, %bb.d ]
  call void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(112) %2) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #26
  resume { ptr, i32 } %eh.lpad-body
}

declare noundef zeroext i1 @_ZN6google8protobuf8compiler3php14IsReservedNameESt17basic_string_viewIcSt11char_traitsIcEE(i64, ptr) local_unnamed_addr #6

declare void @_ZN4absl12lts_2025051214ascii_internal15AsciiStrToLowerEPcPKcm(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #6

; Function Attrs: mustprogress uwtable
declare void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEC1Ev(ptr noundef nonnull align 8 dereferenceable(112)) unnamed_addr #0 align 2

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8), i32 noundef) local_unnamed_addr #6

; Function Attrs: mustprogress nounwind uwtable
declare void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(112)) unnamed_addr #9 align 2

; Function Attrs: nounwind
declare void @_ZNSt8ios_baseD2Ev(ptr noundef nonnull align 8 dead_on_return(216) dereferenceable(216)) unnamed_addr #10

; Function Attrs: nounwind
declare void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8)) unnamed_addr #10

declare noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32), i64 noundef, i64 noundef, ptr noundef, i64 noundef) local_unnamed_addr #6

declare void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef nonnull align 8 dereferenceable(32)) local_unnamed_addr #6

declare void @_ZN6google8protobuf17FileDescriptorSetC2EPNS0_5ArenaE(ptr noundef nonnull align 8 dereferenceable(56), ptr noundef) unnamed_addr #6

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden noundef ptr @_ZN6google8protobuf8internal20RepeatedPtrFieldBase3AddINS1_18GenericTypeHandlerINS0_19FileDescriptorProtoEEEEEPNT_4TypeEPNS0_5ArenaE(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %1) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !119    ; 3 uses
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 1, ptr %i.c, align 8, !tbaa !13
  %i.d = tail call noundef ptr @_ZN6google8protobuf5Arena16DefaultConstructINS0_19FileDescriptorProtoEEEPvPS1_(ptr noundef %1)
  store ptr %i.d, ptr %0, align 8, !tbaa !121
  br label %_ZN6google8protobuf8internal20RepeatedPtrFieldBase11AddInternalEPNS0_5ArenaEN4absl12lts_2025051211FunctionRefIFvS4_RPvEEE.exit

bb.c:                                             ; preds = %bb.a
  tail call void @llvm.prefetch.p0(ptr nonnull %i.a, i32 0, i32 3, i32 1)
  %i.e = ptrtoint ptr %i.a to i64                 ; 2 uses
  %i.f = and i64 %i.e, 1
  %i.g = icmp eq i64 %i.f, 0
  br i1 %i.g, label %bb.d, label %_ZNK6google8protobuf8internal20RepeatedPtrFieldBase14SizeAtCapacityEv.exit.i

bb.d:                                             ; preds = %bb.c
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.i = load i32, ptr %i.h, align 8, !tbaa !120
  %i.j = icmp eq i32 %i.i, 0
  br i1 %i.j, label %.sink.split.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.k = tail call noundef ptr @_ZN6google8protobuf8internal20RepeatedPtrFieldBase14InternalExtendEiPNS0_5ArenaE(ptr noundef nonnull align 8 dereferenceable(16) %0, i32 noundef 1, ptr noundef %1) ; 2 uses
  %i.l = tail call noundef ptr @_ZN6google8protobuf5Arena16DefaultConstructINS0_19FileDescriptorProtoEEEPvPS1_(ptr noundef %1)
  store ptr %i.l, ptr %i.k, align 8, !tbaa !121
  %i.m = load ptr, ptr %0, align 8, !tbaa !119
  %i.n = ptrtoint ptr %i.m to i64
  %i.o = add i64 %i.n, -1
  %i.p = inttoptr i64 %i.o to ptr
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 4
  store i32 2, ptr %i.q, align 4, !tbaa !864
  br label %.sink.split.i

_ZNK6google8protobuf8internal20RepeatedPtrFieldBase14SizeAtCapacityEv.exit.i: ; preds = %bb.c
  %i.r = add nsw i64 %i.e, -1
  %i.s = inttoptr i64 %i.r to ptr                 ; 4 uses
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.u = load i32, ptr %i.t, align 8, !tbaa !120  ; 5 uses
  %i.v = load i32, ptr %i.s, align 8, !tbaa !865
  %i.w = icmp eq i32 %i.u, %i.v
  br i1 %i.w, label %bb.f, label %_ZNK6google8protobuf8internal20RepeatedPtrFieldBase12ClearedCountEv.exit.i, !prof !111

bb.f:                                             ; preds = %_ZNK6google8protobuf8internal20RepeatedPtrFieldBase14SizeAtCapacityEv.exit.i
  %i.x = tail call noundef ptr @_ZN6google8protobuf8internal20RepeatedPtrFieldBase14InternalExtendEiPNS0_5ArenaE(ptr noundef nonnull align 8 dereferenceable(16) %0, i32 noundef 1, ptr noundef %1) ; 0 uses
  %i.y = load ptr, ptr %0, align 8, !tbaa !119
  %i.z = ptrtoint ptr %i.y to i64
  %i.aa = add i64 %i.z, -1
  %i.ab = inttoptr i64 %i.aa to ptr               ; 2 uses
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %i.ab, i64 4
  %.pre.i = load i32, ptr %.phi.trans.insert.i, align 4, !tbaa !864
  %.pre21.i = load i32, ptr %i.t, align 8, !tbaa !120
  br label %bb.h

_ZNK6google8protobuf8internal20RepeatedPtrFieldBase12ClearedCountEv.exit.i: ; preds = %_ZNK6google8protobuf8internal20RepeatedPtrFieldBase14SizeAtCapacityEv.exit.i
  %i.ac = getelementptr inbounds nuw i8, ptr %i.s, i64 4
  %i.ad = load i32, ptr %i.ac, align 4, !tbaa !864 ; 2 uses
  %i.ae = icmp sgt i32 %i.ad, %i.u
  br i1 %i.ae, label %bb.g, label %bb.h

bb.g:                                             ; preds = %_ZNK6google8protobuf8internal20RepeatedPtrFieldBase12ClearedCountEv.exit.i
  %i.af = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  %i.ag = add nsw i32 %i.u, 1
  store i32 %i.ag, ptr %i.t, align 8, !tbaa !13
  %i.ah = sext i32 %i.u to i64
  %i.ai = getelementptr inbounds [8 x i8], ptr %i.af, i64 %i.ah
  br label %_ZN6google8protobuf8internal20RepeatedPtrFieldBase11AddInternalEPNS0_5ArenaEN4absl12lts_2025051211FunctionRefIFvS4_RPvEEE.exit

bb.h:                                             ; preds = %_ZNK6google8protobuf8internal20RepeatedPtrFieldBase12ClearedCountEv.exit.i, %bb.f
  %i.aj = phi i32 [ %.pre21.i, %bb.f ], [ %i.u, %_ZNK6google8protobuf8internal20RepeatedPtrFieldBase12ClearedCountEv.exit.i ] ; 2 uses
  %i.ak = phi i32 [ %.pre.i, %bb.f ], [ %i.ad, %_ZNK6google8protobuf8internal20RepeatedPtrFieldBase12ClearedCountEv.exit.i ]
  %.015.i = phi ptr [ %i.ab, %bb.f ], [ %i.s, %_ZNK6google8protobuf8internal20RepeatedPtrFieldBase12ClearedCountEv.exit.i ] ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %.015.i, i64 4
  %i.am = add nsw i32 %i.ak, 1
  store i32 %i.am, ptr %i.al, align 4, !tbaa !864
  %i.an = getelementptr inbounds nuw i8, ptr %.015.i, i64 8
  %i.ao = add nsw i32 %i.aj, 1
  store i32 %i.ao, ptr %i.t, align 8, !tbaa !13
  %i.ap = sext i32 %i.aj to i64
  %i.aq = getelementptr inbounds [8 x i8], ptr %i.an, i64 %i.ap ; 2 uses
  %i.ar = tail call noundef ptr @_ZN6google8protobuf5Arena16DefaultConstructINS0_19FileDescriptorProtoEEEPvPS1_(ptr noundef %1)
  store ptr %i.ar, ptr %i.aq, align 8, !tbaa !121
  br label %_ZN6google8protobuf8internal20RepeatedPtrFieldBase11AddInternalEPNS0_5ArenaEN4absl12lts_2025051211FunctionRefIFvS4_RPvEEE.exit

.sink.split.i:                                    ; preds = %bb.e, %bb.d
  %.sink.i = phi i32 [ 2, %bb.e ], [ 1, %bb.d ]
  %.1.in.ph.i = phi ptr [ %i.k, %bb.e ], [ %0, %bb.d ]
  store i32 %.sink.i, ptr %i.h, align 8, !tbaa !13
  br label %_ZN6google8protobuf8internal20RepeatedPtrFieldBase11AddInternalEPNS0_5ArenaEN4absl12lts_2025051211FunctionRefIFvS4_RPvEEE.exit

_ZN6google8protobuf8internal20RepeatedPtrFieldBase11AddInternalEPNS0_5ArenaEN4absl12lts_2025051211FunctionRefIFvS4_RPvEEE.exit: ; preds = %bb.b, %bb.g, %bb.h, %.sink.split.i
  %.1.in.i = phi ptr [ %0, %bb.b ], [ %i.aq, %bb.h ], [ %i.ai, %bb.g ], [ %.1.in.ph.i, %.sink.split.i ]
  %.1.i = load ptr, ptr %.1.in.i, align 8, !tbaa !121
  ret ptr %.1.i
}

declare noundef ptr @_ZN6google8protobuf8internal20RepeatedPtrFieldBase14InternalExtendEiPNS0_5ArenaE(ptr noundef nonnull align 8 dereferenceable(16), i32 noundef, ptr noundef) local_unnamed_addr #6

; Function Attrs: mustprogress noinline uwtable
define linkonce_odr hidden noundef ptr @_ZN6google8protobuf5Arena16DefaultConstructINS0_19FileDescriptorProtoEEEPvPS1_(ptr noundef %0) local_unnamed_addr #15 comdat align 2 {
bb.a:
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = tail call noundef ptr @_ZN6google8protobuf5Arena8AllocateEm(ptr noundef nonnull align 8 dereferenceable(168) %0, i64 noundef 200)
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.b = tail call noalias noundef nonnull dereferenceable(200) ptr @_Znwm(i64 noundef 200) #32
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.c = phi ptr [ %i.a, %bb.b ], [ %i.b, %bb.c ] ; 2 uses
  tail call void @_ZN6google8protobuf19FileDescriptorProtoC1EPNS0_5ArenaE(ptr noundef nonnull align 8 dereferenceable(200) %i.c, ptr noundef %0)
  ret ptr %i.c
}

declare void @_ZN6google8protobuf19FileDescriptorProtoC1EPNS0_5ArenaE(ptr noundef nonnull align 8 dereferenceable(200), ptr noundef) unnamed_addr #6

declare noundef ptr @_ZN6google8protobuf5Arena8AllocateEm(ptr noundef nonnull align 8 dereferenceable(168), i64 noundef) local_unnamed_addr #6

declare void @_ZN6google8protobuf19FileDescriptorProto12InternalSwapEPS1_(ptr noundef nonnull align 8 dereferenceable(200), ptr noundef) local_unnamed_addr #6

declare void @_ZN6google8protobuf19FileDescriptorProto8CopyFromERKS1_(ptr noundef nonnull align 8 dereferenceable(200), ptr noundef nonnull align 8 dereferenceable(200)) local_unnamed_addr #6

declare void @_ZN6google8protobuf8internal20RepeatedPtrFieldBase8CloseGapEii(ptr noundef nonnull align 8 dereferenceable(16), i32 noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: mustprogress noinline uwtable
define linkonce_odr hidden void @_ZN6google8protobuf8internal20RepeatedPtrFieldBase13ClearNonEmptyINS1_18GenericTypeHandlerINS0_11MessageLiteEEEEEvv(ptr noundef nonnull align 8 dereferenceable(16) %0) local_unnamed_addr #15 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !120
  %i.c = load ptr, ptr %0, align 8, !tbaa !119
  %i.d = ptrtoint ptr %i.c to i64                 ; 2 uses
  %i.e = and i64 %i.d, 1
  %i.f = icmp eq i64 %i.e, 0
  %i.g = add i64 %i.d, -1
  %i.h = inttoptr i64 %i.g to ptr
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %i.j = select i1 %i.f, ptr %0, ptr %i.i
  %smax = tail call i32 @llvm.smax.i32(i32 %i.b, i32 1)
  %wide.trip.count = zext nneg i32 %smax to i64
  br label %bb.b

bb.b:                                             ; preds = %bb.b, %bb.a
  %indvars.iv = phi i64 [ %indvars.iv.next, %bb.b ], [ 0, %bb.a ] ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.k = getelementptr inbounds nuw [8 x i8], ptr %i.j, i64 %indvars.iv
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !121  ; 2 uses
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !53
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 16
  %i.o = load ptr, ptr %i.n, align 8
  tail call void %i.o(ptr noundef nonnull align 8 dereferenceable(16) %i.l), !inline_history !866
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %bb.c, label %bb.b, !llvm.loop !867

bb.c:                                             ; preds = %bb.b
  store i32 0, ptr %i.a, align 8, !tbaa !13
  ret void
}

declare void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7reserveEm(ptr noundef nonnull align 8 dereferenceable(32), i64 noundef) local_unnamed_addr #6

declare void @_ZN6google8protobuf2io7Printer7OutdentENS2_14SourceLocationE(ptr noundef nonnull align 16 dereferenceable(296)) local_unnamed_addr #6

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN4absl12lts_2025051219functional_internal12InvokeObjectIZNS0_18container_internal12raw_hash_setINS3_17FlatHashMapPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairImmEEENS3_10StringHashENS3_8StringEqESaISC_IKSB_SD_EEE13destroy_slotsEvEUlPKNS3_6ctrl_tEPvE_vJSN_SO_EEET0_NS1_7VoidPtrEDpNS1_8ForwardTIT1_E4typeE(ptr %0, ptr noundef %1, ptr noundef %2) #0 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %2, align 8, !tbaa !51     ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.c = icmp eq ptr %i.a, %i.b
  br i1 %i.c, label %_ZSt6invokeIRKZN4absl12lts_2025051218container_internal12raw_hash_setINS2_17FlatHashMapPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairImmEEENS2_10StringHashENS2_8StringEqESaISB_IKSA_SC_EEE13destroy_slotsEvEUlPKNS2_6ctrl_tEPvE_JSM_SN_EENSt13invoke_resultIT_JDpT0_EE4typeEOSS_DpOST_.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.a
  %i.d = load i64, ptr %i.b, align 8, !tbaa !56
  %i.e = add i64 %i.d, 1
  tail call void @_ZdlPvm(ptr noundef %i.a, i64 noundef %i.e) #27
  br label %_ZSt6invokeIRKZN4absl12lts_2025051218container_internal12raw_hash_setINS2_17FlatHashMapPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairImmEEENS2_10StringHashENS2_8StringEqESaISB_IKSA_SC_EEE13destroy_slotsEvEUlPKNS2_6ctrl_tEPvE_JSM_SN_EENSt13invoke_resultIT_JDpT0_EE4typeEOSS_DpOST_.exit

_ZSt6invokeIRKZN4absl12lts_2025051218container_internal12raw_hash_setINS2_17FlatHashMapPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairImmEEENS2_10StringHashENS2_8StringEqESaISB_IKSA_SC_EEE13destroy_slotsEvEUlPKNS2_6ctrl_tEPvE_JSM_SN_EENSt13invoke_resultIT_JDpT0_EE4typeEOSS_DpOST_.exit: ; preds = %bb.a, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i.i.i
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN6google8protobuf2io7Printer5PrintIJA5_cNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES4_SA_EEEvSt17basic_string_viewIcS8_EDpRKT_(ptr noundef nonnull align 16 dereferenceable(296) %0, i64 %1, ptr %2, ptr noundef nonnull align 1 dereferenceable(5) %3, ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull align 1 dereferenceable(5) %5, ptr noundef nonnull align 8 dereferenceable(32) %6) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %7 = alloca [5 x %"class.std::basic_string_view"], align 16 ; 16 uses
  %8 = alloca %"class.absl::lts_20250512::flat_hash_map.53", align 8 ; 13 uses
  %9 = alloca %"struct.std::pair.56", align 8     ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #26
  %i.a = tail call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %3) #26
  store i64 %i.a, ptr %7, align 16, !tbaa !147
  %i.b = getelementptr inbounds nuw i8, ptr %7, i64 8
  store ptr %3, ptr %i.b, align 8, !tbaa !148
  %i.c = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 2 uses
  %i.d = load ptr, ptr %4, align 8, !tbaa !51
  %i.e = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.f = load i64, ptr %i.e, align 8, !tbaa !50
  store i64 %i.f, ptr %i.c, align 16
  %i.g = getelementptr inbounds nuw i8, ptr %7, i64 24
  store ptr %i.d, ptr %i.g, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %7, i64 32 ; 3 uses
  %i.i = tail call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %5) #26
  store i64 %i.i, ptr %i.h, align 16, !tbaa !147
  %i.j = getelementptr inbounds nuw i8, ptr %7, i64 40
  store ptr %5, ptr %i.j, align 8, !tbaa !148
  %i.k = getelementptr inbounds nuw i8, ptr %7, i64 48
  %i.l = load ptr, ptr %6, align 8, !tbaa !51
  %i.m = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.n = load i64, ptr %i.m, align 8, !tbaa !50
  store i64 %i.n, ptr %i.k, align 16
  %i.o = getelementptr inbounds nuw i8, ptr %7, i64 56
  store ptr %i.l, ptr %i.o, align 8
  %i.p = getelementptr inbounds nuw i8, ptr %7, i64 64
  store i64 0, ptr %i.p, align 16, !tbaa !147
  %i.q = getelementptr inbounds nuw i8, ptr %7, i64 72
  store ptr @.str.11, ptr %i.q, align 8, !tbaa !148
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #26
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %8, i8 0, i64 16, i1 false)
  %.sroa.4.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 2 uses
  store ptr getelementptr inbounds nuw (i8, ptr @_ZN4absl12lts_2025051218container_internal11kEmptyGroupE, i64 16), ptr %.sroa.4.0..sroa_idx.i.i.i, align 8
  invoke void @_ZN4absl12lts_2025051218container_internal24ReserveTableToFitNewSizeERNS1_12CommonFieldsERKNS1_15PolicyFunctionsEm(ptr noundef nonnull align 8 dereferenceable(32) %8, ptr noundef nonnull align 8 dereferenceable(72) @_ZZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyISt17basic_string_viewIcSt11char_traitsIcEES7_EENS1_10StringHashENS1_8StringEqESaISt4pairIKS7_S7_EEE18GetPolicyFunctionsEvE5value, i64 noundef 2)
          to label %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyISt17basic_string_viewIcSt11char_traitsIcEES7_EENS1_10StringHashENS1_8StringEqESaISt4pairIKS7_S7_EEE7reserveEm.exit.preheader unwind label %bb.b

_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyISt17basic_string_viewIcSt11char_traitsIcEES7_EENS1_10StringHashENS1_8StringEqESaISt4pairIKS7_S7_EEE7reserveEm.exit.preheader: ; preds = %bb.a
  %i.r = getelementptr inbounds nuw i8, ptr %9, i64 16 ; 2 uses
  %.sroa.2.0..sroa_idx.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %9, i64 8 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #26
  invoke void @_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyISt17basic_string_viewIcSt11char_traitsIcEES7_EENS1_10StringHashENS1_8StringEqESaISt4pairIKS7_S7_EEE30find_or_prepare_insert_non_sooIS7_EESB_INSF_8iteratorEbERKT_(ptr dead_on_unwind nonnull writable sret(%"struct.std::pair.56") align 8 %9, ptr noundef nonnull align 8 dereferenceable(32) %8, ptr noundef nonnull align 8 dereferenceable(16) %7)
          to label %.noexc unwind label %bb.e

bb.b:                                             ; preds = %bb.a, %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyISt17basic_string_viewIcSt11char_traitsIcEES7_EENS1_10StringHashENS1_8StringEqESaISt4pairIKS7_S7_EEE7emplaceIJRS7_SH_ETnNSt9enable_ifIXsr14IsDecomposableIDpT_EE5valueEiE4typeELi0EEESB_INSF_8iteratorEbEDpOSJ_.exit.1
  %i.s = landingpad { ptr, i32 }
          cleanup
  br label %bb.i

.noexc:                                           ; preds = %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyISt17basic_string_viewIcSt11char_traitsIcEES7_EENS1_10StringHashENS1_8StringEqESaISt4pairIKS7_S7_EEE7reserveEm.exit.preheader
  %i.t = load i8, ptr %i.r, align 8, !tbaa !206, !range !25, !alias.scope !880, !noundef !26
  %i.u = trunc nuw i8 %i.t to i1
  br i1 %i.u, label %bb.c, label %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyISt17basic_string_viewIcSt11char_traitsIcEES7_EENS1_10StringHashENS1_8StringEqESaISt4pairIKS7_S7_EEE7emplaceIJRS7_SH_ETnNSt9enable_ifIXsr14IsDecomposableIDpT_EE5valueEiE4typeELi0EEESB_INSF_8iteratorEbEDpOSJ_.exit

bb.c:                                             ; preds = %.noexc
  %.sroa.2.0.copyload.i.i.i.i.i.i = load ptr, ptr %.sroa.2.0..sroa_idx.i.i.i.i.i.i, align 8, !alias.scope !880 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.2.0.copyload.i.i.i.i.i.i, ptr noundef nonnull align 16 dereferenceable(16) %7, i64 16, i1 false), !tbaa.struct !207
  %i.v = getelementptr inbounds nuw i8, ptr %.sroa.2.0.copyload.i.i.i.i.i.i, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.v, ptr noundef nonnull align 16 dereferenceable(16) %i.c, i64 16, i1 false), !tbaa.struct !207
  br label %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyISt17basic_string_viewIcSt11char_traitsIcEES7_EENS1_10StringHashENS1_8StringEqESaISt4pairIKS7_S7_EEE7emplaceIJRS7_SH_ETnNSt9enable_ifIXsr14IsDecomposableIDpT_EE5valueEiE4typeELi0EEESB_INSF_8iteratorEbEDpOSJ_.exit

_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyISt17basic_string_viewIcSt11char_traitsIcEES7_EENS1_10StringHashENS1_8StringEqESaISt4pairIKS7_S7_EEE7emplaceIJRS7_SH_ETnNSt9enable_ifIXsr14IsDecomposableIDpT_EE5valueEiE4typeELi0EEESB_INSF_8iteratorEbEDpOSJ_.exit: ; preds = %bb.c, %.noexc
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #26
  %i.w = getelementptr inbounds nuw i8, ptr %7, i64 48
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #26
  invoke void @_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyISt17basic_string_viewIcSt11char_traitsIcEES7_EENS1_10StringHashENS1_8StringEqESaISt4pairIKS7_S7_EEE30find_or_prepare_insert_non_sooIS7_EESB_INSF_8iteratorEbERKT_(ptr dead_on_unwind nonnull writable sret(%"struct.std::pair.56") align 8 %9, ptr noundef nonnull align 8 dereferenceable(32) %8, ptr noundef nonnull align 8 dereferenceable(16) %i.h)
          to label %.noexc.1 unwind label %bb.e

.noexc.1:                                         ; preds = %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyISt17basic_string_viewIcSt11char_traitsIcEES7_EENS1_10StringHashENS1_8StringEqESaISt4pairIKS7_S7_EEE7emplaceIJRS7_SH_ETnNSt9enable_ifIXsr14IsDecomposableIDpT_EE5valueEiE4typeELi0EEESB_INSF_8iteratorEbEDpOSJ_.exit
  %i.x = load i8, ptr %i.r, align 8, !tbaa !206, !range !25, !alias.scope !880, !noundef !26
  %i.y = trunc nuw i8 %i.x to i1
  br i1 %i.y, label %bb.d, label %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyISt17basic_string_viewIcSt11char_traitsIcEES7_EENS1_10StringHashENS1_8StringEqESaISt4pairIKS7_S7_EEE7emplaceIJRS7_SH_ETnNSt9enable_ifIXsr14IsDecomposableIDpT_EE5valueEiE4typeELi0EEESB_INSF_8iteratorEbEDpOSJ_.exit.1

bb.d:                                             ; preds = %.noexc.1
  %.sroa.2.0.copyload.i.i.i.i.i.i.1 = load ptr, ptr %.sroa.2.0..sroa_idx.i.i.i.i.i.i, align 8, !alias.scope !880 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.2.0.copyload.i.i.i.i.i.i.1, ptr noundef nonnull align 16 dereferenceable(16) %i.h, i64 16, i1 false), !tbaa.struct !207
  %i.z = getelementptr inbounds nuw i8, ptr %.sroa.2.0.copyload.i.i.i.i.i.i.1, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.z, ptr noundef nonnull align 16 dereferenceable(16) %i.w, i64 16, i1 false), !tbaa.struct !207
  br label %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyISt17basic_string_viewIcSt11char_traitsIcEES7_EENS1_10StringHashENS1_8StringEqESaISt4pairIKS7_S7_EEE7emplaceIJRS7_SH_ETnNSt9enable_ifIXsr14IsDecomposableIDpT_EE5valueEiE4typeELi0EEESB_INSF_8iteratorEbEDpOSJ_.exit.1

_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyISt17basic_string_viewIcSt11char_traitsIcEES7_EENS1_10StringHashENS1_8StringEqESaISt4pairIKS7_S7_EEE7emplaceIJRS7_SH_ETnNSt9enable_ifIXsr14IsDecomposableIDpT_EE5valueEiE4typeELi0EEESB_INSF_8iteratorEbEDpOSJ_.exit.1: ; preds = %bb.d, %.noexc.1
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #26
  invoke void @_ZN6google8protobuf2io7Printer5PrintIN4absl12lts_2025051213flat_hash_mapISt17basic_string_viewIcSt11char_traitsIcEESA_NS5_18container_internal10StringHashENSB_8StringEqESaISt4pairIKSA_SA_EEEEEEvRKT_SA_(ptr noundef nonnull align 16 dereferenceable(296) %0, ptr noundef nonnull align 8 dereferenceable(32) %8, i64 %1, ptr %2)
          to label %bb.f unwind label %bb.b

bb.e:                                             ; preds = %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyISt17basic_string_viewIcSt11char_traitsIcEES7_EENS1_10StringHashENS1_8StringEqESaISt4pairIKS7_S7_EEE7emplaceIJRS7_SH_ETnNSt9enable_ifIXsr14IsDecomposableIDpT_EE5valueEiE4typeELi0EEESB_INSF_8iteratorEbEDpOSJ_.exit, %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyISt17basic_string_viewIcSt11char_traitsIcEES7_EENS1_10StringHashENS1_8StringEqESaISt4pairIKS7_S7_EEE7reserveEm.exit.preheader
  %i.aa = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #26
  br label %bb.i

bb.f:                                             ; preds = %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyISt17basic_string_viewIcSt11char_traitsIcEES7_EENS1_10StringHashENS1_8StringEqESaISt4pairIKS7_S7_EEE7emplaceIJRS7_SH_ETnNSt9enable_ifIXsr14IsDecomposableIDpT_EE5valueEiE4typeELi0EEESB_INSF_8iteratorEbEDpOSJ_.exit.1
  %i.ab = load i64, ptr %8, align 8, !tbaa !94    ; 2 uses
  %i.ac = icmp eq i64 %i.ab, 0
  br i1 %i.ac, label %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyISt17basic_string_viewIcSt11char_traitsIcEES7_EENS1_10StringHashENS1_8StringEqESaISt4pairIKS7_S7_EEED2Ev.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ad = load ptr, ptr %.sroa.4.0..sroa_idx.i.i.i, align 8, !tbaa !56
  %i.ae = getelementptr inbounds nuw i8, ptr %8, i64 8
  %i.af = load i64, ptr %i.ae, align 8, !tbaa !95
  %i.ag = and i64 %i.af, 65536
  %i.ah = icmp ne i64 %i.ag, 0
  invoke void @_ZN4absl12lts_2025051218container_internal22DeallocateBackingArrayILm8ESaIcEEEvPvmPNS1_6ctrl_tEmmb(ptr noundef nonnull align 8 dereferenceable(32) %8, i64 noundef %i.ab, ptr noundef %i.ad, i64 noundef 32, i64 noundef 8, i1 noundef zeroext %i.ah)
          to label %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyISt17basic_string_viewIcSt11char_traitsIcEES7_EENS1_10StringHashENS1_8StringEqESaISt4pairIKS7_S7_EEED2Ev.exit unwind label %bb.h

end_hunk_0
