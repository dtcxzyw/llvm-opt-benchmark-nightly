Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/opencv/original/persistence?download=true
inline.NumInlined: 2260
inline.NumDeleted: 815
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumRuntimeUnrolled: 3
loop-unroll.NumUnrolled: 5
begin_hunk_0_@_ZN2cv11FileStorage4Impl5writeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEd:bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #38
  br label %common.resume

_ZN2cv11FileStorage4Impl10getEmitterEv.exit:      ; preds = %bb.g
  %i.s = load ptr, ptr %1, align 8, !tbaa !37
  %i.t = load ptr, ptr %i.l, align 8, !tbaa !132
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 48
  %i.v = load ptr, ptr %i.u, align 8
  tail call void %i.v(ptr noundef nonnull align 8 dereferenceable(8) %i.l, ptr noundef %i.s, double noundef %2)
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN2cv11FileStorage4Impl5writeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(700) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %1, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %2) local_unnamed_addr #9 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %4 = alloca %"class.std::allocator", align 1    ; 3 uses
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %6 = alloca %"class.std::allocator", align 1    ; 3 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 74
  %i.b = load i8, ptr %i.a, align 2, !tbaa !165, !range !163, !noundef !164
  %i.c = trunc nuw i8 %i.b to i1
  br i1 %i.c, label %bb.g, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #38
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #38
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull @.str.61, ptr noundef nonnull align 1 dereferenceable(1) %6)
          to label %bb.c unwind label %bb.e

bb.c:                                             ; preds = %bb.b
  invoke void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef -215, ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull @.str.27, ptr noundef nonnull @.str.11, i32 noundef 1130) #39
          to label %bb.d unwind label %bb.f

bb.d:                                             ; preds = %bb.c
  unreachable

bb.e:                                             ; preds = %bb.b
  %i.d = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

bb.f:                                             ; preds = %bb.c
  %i.e = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.f = load ptr, ptr %5, align 8, !tbaa !37     ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  %i.h = icmp eq ptr %i.f, %i.g
  br i1 %i.h, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.f
  %i.i = load i64, ptr %i.g, align 8, !tbaa !31
  %i.j = add i64 %i.i, 1
  call void @_ZdlPvm(ptr noundef %i.f, i64 noundef %i.j) #40
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

common.resume:                                    ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %common.resume.op = phi { ptr, i32 } [ %.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %i.m, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i ]
  resume { ptr, i32 } %common.resume.op

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.f, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %bb.e
  %.pn = phi { ptr, i32 } [ %i.d, %bb.e ], [ %i.e, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ], [ %i.e, %bb.f ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #38
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #38
  br label %common.resume

bb.g:                                             ; preds = %bb.a
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 320
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !179  ; 3 uses
  %.not.i = icmp eq ptr %i.l, null
  br i1 %.not.i, label %bb.h, label %_ZN2cv11FileStorage4Impl10getEmitterEv.exit

bb.h:                                             ; preds = %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #38
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #38
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull @.str.127, ptr noundef nonnull align 1 dereferenceable(1) %4)
  invoke void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef -27, ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull @__func__._ZN2cv11FileStorage4Impl10getEmitterEv, ptr noundef nonnull @.str.126, i32 noundef 224) #39
          to label %bb.i unwind label %bb.j

bb.i:                                             ; preds = %bb.h
  unreachable

bb.j:                                             ; preds = %bb.h
  %i.m = landingpad { ptr, i32 }
          cleanup
  %i.n = load ptr, ptr %3, align 8, !tbaa !37     ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.p = icmp eq ptr %i.n, %i.o
  br i1 %i.p, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.j
  %i.q = load i64, ptr %i.o, align 8, !tbaa !31
  %i.r = add i64 %i.q, 1
  call void @_ZdlPvm(ptr noundef %i.n, i64 noundef %i.r) #40
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i: ; preds = %bb.j, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #38
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #38
  br label %common.resume

_ZN2cv11FileStorage4Impl10getEmitterEv.exit:      ; preds = %bb.g
  %i.s = load ptr, ptr %1, align 8, !tbaa !37
  %i.t = load ptr, ptr %2, align 8, !tbaa !37
  %i.u = load ptr, ptr %i.l, align 8, !tbaa !132
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 56
  %i.w = load ptr, ptr %i.v, align 8
  tail call void %i.w(ptr noundef nonnull align 8 dereferenceable(8) %i.l, ptr noundef %i.s, ptr noundef %i.t, i1 noundef zeroext false)
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN2cv11FileStorage4Impl12writeRawDataERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKvm(ptr noundef nonnull align 8 dereferenceable(700) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %1, ptr noundef %2, i64 noundef %3) local_unnamed_addr #21 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %5 = alloca %"class.std::allocator", align 1    ; 3 uses
  %6 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %7 = alloca %"class.std::allocator", align 1    ; 3 uses
  %8 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %9 = alloca %"class.std::allocator", align 1    ; 3 uses
  %10 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %11 = alloca %"class.std::allocator", align 1   ; 3 uses
  %i.a = alloca [256 x i32], align 16             ; 7 uses
  %i.b = alloca [256 x i8], align 16              ; 62 uses
  %12 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %13 = alloca %"class.std::allocator", align 1   ; 3 uses
  %14 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %15 = alloca %"class.std::allocator", align 1   ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 74
  %i.d = load i8, ptr %i.c, align 2, !tbaa !165, !range !163, !noundef !164
  %i.e = trunc nuw i8 %i.d to i1
  br i1 %i.e, label %bb.g, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #38
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #38
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef nonnull @.str.61, ptr noundef nonnull align 1 dereferenceable(1) %7)
          to label %bb.c unwind label %bb.e

bb.c:                                             ; preds = %bb.b
  invoke void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef -215, ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef nonnull @__func__._ZN2cv11FileStorage4Impl12writeRawDataERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKvm, ptr noundef nonnull @.str.11, i32 noundef 1135) #39
          to label %bb.d unwind label %bb.f

bb.d:                                             ; preds = %bb.c
  unreachable

bb.e:                                             ; preds = %bb.b
  %i.f = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

bb.f:                                             ; preds = %bb.c
  %i.g = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.h = load ptr, ptr %6, align 8, !tbaa !37     ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 2 uses
  %i.j = icmp eq ptr %i.h, %i.i
  br i1 %i.j, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.f
  %i.k = load i64, ptr %i.i, align 8, !tbaa !31
  %i.l = add i64 %i.k, 1
  call void @_ZdlPvm(ptr noundef %i.h, i64 noundef %i.l) #40
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.f, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %bb.e
  %.pn = phi { ptr, i32 } [ %i.f, %bb.e ], [ %i.g, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ], [ %i.g, %bb.f ]
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #38
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #38
  br label %common.resume

bb.g:                                             ; preds = %bb.a
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 84
  %i.n = load i8, ptr %i.m, align 4, !tbaa !115, !range !163, !noundef !164
  %i.o = trunc nuw i8 %i.n to i1
  br i1 %i.o, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.q = load i32, ptr %i.p, align 8, !tbaa !175
  switch i32 %i.q, label %bb.k [
    i32 2, label %bb.i
    i32 0, label %bb.j
  ]

bb.i:                                             ; preds = %bb.h, %bb.g
  %i.r = load ptr, ptr %1, align 8, !tbaa !37
  tail call void @_ZN2cv11FileStorage4Impl18writeRawDataBase64EPKvmPKc(ptr noundef nonnull align 8 dereferenceable(700) %0, ptr noundef %2, i64 noundef %3, ptr noundef %i.r)
  br label %bb.do

bb.j:                                             ; preds = %bb.h
  %i.s = load ptr, ptr %0, align 8, !tbaa !132
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 208
  %i.u = load ptr, ptr %i.t, align 8
  tail call void %i.u(ptr noundef nonnull align 8 dereferenceable(700) %0, i32 noundef 1)
  br label %bb.k

bb.k:                                             ; preds = %bb.h, %bb.j
  %i.v = load ptr, ptr %1, align 8, !tbaa !37
  %i.w = tail call noundef i32 @_ZN2cv2fs14calcStructSizeEPKci(ptr noundef %i.v, i32 noundef 0) ; 2 uses
  %i.x = sext i32 %i.w to i64                     ; 5 uses
  %.not = icmp eq i32 %i.w, 0
  br i1 %.not, label %bb.l, label %bb.q

bb.l:                                             ; preds = %bb.k
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #38
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #38
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %8, ptr noundef nonnull @.str.72, ptr noundef nonnull align 1 dereferenceable(1) %9)
          to label %bb.m unwind label %bb.o

bb.m:                                             ; preds = %bb.l
  invoke void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef -215, ptr noundef nonnull align 8 dereferenceable(32) %8, ptr noundef nonnull @__func__._ZN2cv11FileStorage4Impl12writeRawDataERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKvm, ptr noundef nonnull @.str.11, i32 noundef 1145) #39
          to label %bb.n unwind label %bb.p

bb.n:                                             ; preds = %bb.m
  unreachable

bb.o:                                             ; preds = %bb.l
  %i.y = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit106

bb.p:                                             ; preds = %bb.m
  %i.z = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.aa = load ptr, ptr %8, align 8, !tbaa !37    ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 2 uses
  %i.ac = icmp eq ptr %i.aa, %i.ab
  br i1 %i.ac, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit106, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i104

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i104: ; preds = %bb.p
  %i.ad = load i64, ptr %i.ab, align 8, !tbaa !31
  %i.ae = add i64 %i.ad, 1
  call void @_ZdlPvm(ptr noundef %i.aa, i64 noundef %i.ae) #40
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit106

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit106: ; preds = %bb.p, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i104, %bb.o
  %.pn90 = phi { ptr, i32 } [ %i.y, %bb.o ], [ %i.z, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i104 ], [ %i.z, %bb.p ]
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #38
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #38
  br label %common.resume

bb.q:                                             ; preds = %bb.k
  %i.af = urem i64 %3, %i.x
  %i.ag = udiv i64 %3, %i.x                       ; 2 uses
  %i.ah = icmp eq i64 %i.af, 0
  br i1 %i.ah, label %bb.w, label %bb.r

bb.r:                                             ; preds = %bb.q
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #38
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #38
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %10, ptr noundef nonnull @.str.73, ptr noundef nonnull align 1 dereferenceable(1) %11)
          to label %bb.s unwind label %bb.u

bb.s:                                             ; preds = %bb.r
  invoke void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef -215, ptr noundef nonnull align 8 dereferenceable(32) %10, ptr noundef nonnull @__func__._ZN2cv11FileStorage4Impl12writeRawDataERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKvm, ptr noundef nonnull @.str.11, i32 noundef 1146) #39
          to label %bb.t unwind label %bb.v

bb.t:                                             ; preds = %bb.s
  unreachable

bb.u:                                             ; preds = %bb.r
  %i.ai = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit109

bb.v:                                             ; preds = %bb.s
  %i.aj = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ak = load ptr, ptr %10, align 8, !tbaa !37   ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %10, i64 16 ; 2 uses
  %i.am = icmp eq ptr %i.ak, %i.al
  br i1 %i.am, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit109, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i107

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i107: ; preds = %bb.v
  %i.an = load i64, ptr %i.al, align 8, !tbaa !31
  %i.ao = add i64 %i.an, 1
  call void @_ZdlPvm(ptr noundef %i.ak, i64 noundef %i.ao) #40
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit109

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit109: ; preds = %bb.v, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i107, %bb.u
  %.pn92 = phi { ptr, i32 } [ %i.ai, %bb.u ], [ %i.aj, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i107 ], [ %i.aj, %bb.v ]
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #38
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #38
  br label %common.resume

bb.w:                                             ; preds = %bb.q
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 76
  %i.aq = load i32, ptr %i.ap, align 4, !tbaa !121
  %i.ar = icmp eq i32 %i.aq, 24                   ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #38
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #38
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(256) %i.b, i8 0, i64 256, i1 false)
  %i.as = load ptr, ptr %1, align 8, !tbaa !37
  %i.at = call noundef i32 @_ZN2cv2fs12decodeFormatEPKcPii(ptr noundef %i.as, ptr noundef nonnull %i.a, i32 noundef 128) ; 3 uses
  %.not94 = icmp ult i64 %3, %i.x
  br i1 %.not94, label %.loopexit, label %bb.x

bb.x:                                             ; preds = %bb.w
  %.not95 = icmp eq ptr %2, null
  br i1 %.not95, label %bb.y, label %bb.ad

bb.y:                                             ; preds = %bb.x
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #38
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #38
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %12, ptr noundef nonnull @.str.74, ptr noundef nonnull align 1 dereferenceable(1) %13)
          to label %bb.z unwind label %bb.ab

bb.z:                                             ; preds = %bb.y
  invoke void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef -27, ptr noundef nonnull align 8 dereferenceable(32) %12, ptr noundef nonnull @__func__._ZN2cv11FileStorage4Impl12writeRawDataERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKvm, ptr noundef nonnull @.str.11, i32 noundef 1160) #39
          to label %bb.aa unwind label %bb.ac

bb.aa:                                            ; preds = %bb.z
  unreachable

bb.ab:                                            ; preds = %bb.y
  %i.au = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit112

bb.ac:                                            ; preds = %bb.z
  %i.av = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.aw = load ptr, ptr %12, align 8, !tbaa !37   ; 2 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %12, i64 16 ; 2 uses
  %i.ay = icmp eq ptr %i.aw, %i.ax
  br i1 %i.ay, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit112, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i110

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i110: ; preds = %bb.ac
  %i.az = load i64, ptr %i.ax, align 8, !tbaa !31
  %i.ba = add i64 %i.az, 1
  call void @_ZdlPvm(ptr noundef %i.aw, i64 noundef %i.ba) #40
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit112

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit112: ; preds = %bb.ac, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i110, %bb.ab
  %.pn96 = phi { ptr, i32 } [ %i.au, %bb.ab ], [ %i.av, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i110 ], [ %i.av, %bb.ac ]
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #38
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #38
  br label %bb.dp

bb.ad:                                            ; preds = %bb.x
  %i.bb = icmp eq i32 %i.at, 1
  br i1 %i.bb, label %.preheader.lr.ph.thread, label %bb.ae

.preheader.lr.ph.thread:                          ; preds = %bb.ad
  %i.bc = trunc i64 %i.ag to i32
  %i.bd = load i32, ptr %i.a, align 16, !tbaa !38
  %i.be = mul nsw i32 %i.bd, %i.bc
  store i32 %i.be, ptr %i.a, align 16, !tbaa !38
  %i.bf = getelementptr inbounds nuw i8, ptr %i.b, i64 1
  %i.bg = getelementptr inbounds nuw i8, ptr %i.b, i64 23
  %i.bh = getelementptr inbounds nuw i8, ptr %i.b, i64 22
  br label %.preheader.preheader

bb.ae:                                            ; preds = %bb.ad
  %.not98197 = icmp uge i64 %3, %i.x
  %i.bi = icmp sgt i32 %i.at, 0
  %i.bj = getelementptr inbounds nuw i8, ptr %i.b, i64 1
  %i.bk = getelementptr inbounds nuw i8, ptr %i.b, i64 23
  %i.bl = getelementptr inbounds nuw i8, ptr %i.b, i64 22
  %or.cond = and i1 %.not98197, %i.bi
  br i1 %or.cond, label %.preheader.preheader, label %.loopexit

.preheader.preheader:                             ; preds = %bb.ae, %.preheader.lr.ph.thread
  %i.bm = phi ptr [ %i.bh, %.preheader.lr.ph.thread ], [ %i.bl, %bb.ae ] ; 2 uses
  %i.bn = phi ptr [ %i.bg, %.preheader.lr.ph.thread ], [ %i.bk, %bb.ae ] ; 17 uses
  %i.bo = phi ptr [ %i.bf, %.preheader.lr.ph.thread ], [ %i.bj, %bb.ae ] ; 4 uses
  %.083238240 = phi i64 [ 1, %.preheader.lr.ph.thread ], [ %i.ag, %bb.ae ]
  %i.bp = getelementptr inbounds nuw i8, ptr %0, i64 320
  %wide.trip.count = zext nneg i32 %i.at to i64
  br label %.preheader

.preheader:                                       ; preds = %.preheader.preheader, %._crit_edge196
  %.in = phi i64 [ %i.bq, %._crit_edge196 ], [ %.083238240, %.preheader.preheader ]
  %.072198 = phi ptr [ %i.jz, %._crit_edge196 ], [ %2, %.preheader.preheader ] ; 3 uses
  %i.bq = add i64 %.in, -1                        ; 2 uses
  %i.br = ptrtoint ptr %.072198 to i64
  br label %bb.af

bb.af:                                            ; preds = %.preheader, %._crit_edge
  %indvars.iv = phi i64 [ 0, %.preheader ], [ %indvars.iv.next, %._crit_edge ] ; 2 uses
  %.070194 = phi i32 [ 0, %.preheader ], [ %i.jy, %._crit_edge ]
  %.idx = shl nuw nsw i64 %indvars.iv, 3
  %i.bs = getelementptr inbounds nuw i8, ptr %i.a, i64 %.idx ; 2 uses
  %i.bt = load i32, ptr %i.bs, align 8, !tbaa !38 ; 2 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bs, i64 4
  %i.bv = load i32, ptr %i.bu, align 4, !tbaa !38 ; 4 uses
  %i.bw = lshr i32 %i.bv, 5
  %i.bx = and i32 %i.bw, 127
  %i.by = add nuw nsw i32 %i.bx, 1
  %i.bz = shl i32 %i.bv, 2
  %i.ca = and i32 %i.bz, 124
  %i.cb = zext nneg i32 %i.ca to i64
  %i.cc = lshr i64 1275511473185297, %i.cb
  %i.cd = trunc i64 %i.cc to i32
  %i.ce = and i32 %i.cd, 15
  %i.cf = mul nuw nsw i32 %i.ce, %i.by            ; 2 uses
  %i.cg = add i32 %.070194, -1
  %i.ch = add i32 %i.cg, %i.cf
  %i.ci = sub nsw i32 0, %i.cf
  %i.cj = and i32 %i.ch, %i.ci
  %i.ck = sext i32 %i.cj to i64
  %i.cl = getelementptr inbounds i8, ptr %.072198, i64 %i.ck ; 2 uses
  %i.cm = icmp sgt i32 %i.bt, 0
  br i1 %i.cm, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.af
  %switch = icmp ult i32 %i.bv, 13
  br i1 %switch, label %.lr.ph.split, label %bb.dg

.lr.ph.split:                                     ; preds = %.lr.ph, %_ZN2cv11FileStorage4Impl10getEmitterEv.exit
  %.0192 = phi ptr [ %i.jr, %_ZN2cv11FileStorage4Impl10getEmitterEv.exit ], [ %i.cl, %.lr.ph ] ; 14 uses
  %.069191 = phi i32 [ %i.jv, %_ZN2cv11FileStorage4Impl10getEmitterEv.exit ], [ 0, %.lr.ph ]
  switch i32 %i.bv, label %bb.ct [
    i32 0, label %bb.ag
    i32 9, label %_ZN2cv2fs4itoaEiPci.exit117
    i32 1, label %bb.ai
    i32 2, label %bb.am
    i32 3, label %bb.ao
    i32 12, label %bb.as
    i32 4, label %bb.au
    i32 10, label %bb.ay
    i32 11, label %bb.ba
    i32 5, label %bb.be
    i32 6, label %bb.br
    i32 7, label %bb.ce
  ]

bb.ag:                                            ; preds = %.lr.ph.split
  %i.cn = load i8, ptr %.0192, align 1, !tbaa !31
  %i.co = zext i8 %i.cn to i32
  store i8 0, ptr %i.bn, align 1, !tbaa !31
  br label %bb.ah

bb.ah:                                            ; preds = %bb.ah, %bb.ag
  %.011.i = phi ptr [ %i.bn, %bb.ag ], [ %i.ct, %bb.ah ]
  %.0.i = phi i32 [ %i.co, %bb.ag ], [ %i.cp, %bb.ah ] ; 3 uses
  %i.cp = udiv i32 %.0.i, 10                      ; 2 uses
  %.neg.i = mul nuw nsw i32 %i.cp, 246
  %i.cq = add nuw nsw i32 %.neg.i, %.0.i
  %i.cr = trunc i32 %i.cq to i8
  %i.cs = add i8 %i.cr, 48
  %i.ct = getelementptr inbounds i8, ptr %.011.i, i64 -1 ; 3 uses
  store i8 %i.cs, ptr %i.ct, align 1, !tbaa !31
  %.not.i = icmp samesign ult i32 %.0.i, 10
  br i1 %.not.i, label %_ZN2cv2fs4itoaEiPci.exit, label %bb.ah, !llvm.loop !1

_ZN2cv2fs4itoaEiPci.exit117:                      ; preds = %.lr.ph.split
  %i.cu = load i8, ptr %.0192, align 1, !tbaa !31
  %.not177 = icmp eq i8 %i.cu, 0
  store i8 0, ptr %i.bn, align 1, !tbaa !31
  %i.cv = select i1 %.not177, i8 48, i8 49
  store i8 %i.cv, ptr %i.bm, align 1, !tbaa !31
  br label %_ZN2cv2fs4itoaEiPci.exit

bb.ai:                                            ; preds = %.lr.ph.split
  %i.cw = load i8, ptr %.0192, align 1, !tbaa !31 ; 2 uses
  %i.cx = call i8 @llvm.abs.i8(i8 %i.cw, i1 false)
  %i.cy = zext i8 %i.cx to i32
  store i8 0, ptr %i.bn, align 1, !tbaa !31
  br label %bb.aj

bb.aj:                                            ; preds = %bb.aj, %bb.ai
  %.011.i118 = phi ptr [ %i.bn, %bb.ai ], [ %i.dd, %bb.aj ] ; 2 uses
  %.0.i119 = phi i32 [ %i.cy, %bb.ai ], [ %i.cz, %bb.aj ] ; 3 uses
  %i.cz = udiv i32 %.0.i119, 10                   ; 2 uses
  %.neg.i120 = mul nuw nsw i32 %i.cz, 246
  %i.da = add nuw nsw i32 %.neg.i120, %.0.i119
  %i.db = trunc i32 %i.da to i8
  %i.dc = add i8 %i.db, 48
  %i.dd = getelementptr inbounds i8, ptr %.011.i118, i64 -1 ; 3 uses
  store i8 %i.dc, ptr %i.dd, align 1, !tbaa !31
  %.not.i121 = icmp samesign ult i32 %.0.i119, 10
  br i1 %.not.i121, label %bb.ak, label %bb.aj, !llvm.loop !1

bb.ak:                                            ; preds = %bb.aj
  %i.de = icmp slt i8 %i.cw, 0
  br i1 %i.de, label %bb.al, label %_ZN2cv2fs4itoaEiPci.exit

bb.al:                                            ; preds = %bb.ak
  %i.df = getelementptr inbounds i8, ptr %.011.i118, i64 -2 ; 2 uses
  store i8 45, ptr %i.df, align 1, !tbaa !31
  br label %_ZN2cv2fs4itoaEiPci.exit

bb.am:                                            ; preds = %.lr.ph.split
  %i.dg = load i16, ptr %.0192, align 2, !tbaa !215
  %i.dh = zext i16 %i.dg to i32
  store i8 0, ptr %i.bn, align 1, !tbaa !31
  br label %bb.an

bb.an:                                            ; preds = %bb.an, %bb.am
  %.011.i123 = phi ptr [ %i.bn, %bb.am ], [ %i.dm, %bb.an ]
  %.0.i124 = phi i32 [ %i.dh, %bb.am ], [ %i.di, %bb.an ] ; 3 uses
  %i.di = udiv i32 %.0.i124, 10                   ; 2 uses
  %.neg.i125 = mul nuw nsw i32 %i.di, 246
  %i.dj = add nuw nsw i32 %.neg.i125, %.0.i124
  %i.dk = trunc i32 %i.dj to i8
  %i.dl = add i8 %i.dk, 48
  %i.dm = getelementptr inbounds i8, ptr %.011.i123, i64 -1 ; 3 uses
  store i8 %i.dl, ptr %i.dm, align 1, !tbaa !31
  %.not.i126 = icmp samesign ult i32 %.0.i124, 10
  br i1 %.not.i126, label %_ZN2cv2fs4itoaEiPci.exit, label %bb.an, !llvm.loop !1

bb.ao:                                            ; preds = %.lr.ph.split
  %i.dn = load i16, ptr %.0192, align 2, !tbaa !215 ; 2 uses
  %i.do = call i16 @llvm.abs.i16(i16 %i.dn, i1 false)
  %i.dp = zext i16 %i.do to i32
  store i8 0, ptr %i.bn, align 1, !tbaa !31
  br label %bb.ap

bb.ap:                                            ; preds = %bb.ap, %bb.ao
  %.011.i129 = phi ptr [ %i.bn, %bb.ao ], [ %i.du, %bb.ap ] ; 2 uses
  %.0.i130 = phi i32 [ %i.dp, %bb.ao ], [ %i.dq, %bb.ap ] ; 3 uses
  %i.dq = udiv i32 %.0.i130, 10                   ; 2 uses
  %.neg.i131 = mul nuw nsw i32 %i.dq, 246
  %i.dr = add nuw nsw i32 %.neg.i131, %.0.i130
  %i.ds = trunc i32 %i.dr to i8
  %i.dt = add i8 %i.ds, 48
  %i.du = getelementptr inbounds i8, ptr %.011.i129, i64 -1 ; 3 uses
  store i8 %i.dt, ptr %i.du, align 1, !tbaa !31
  %.not.i132 = icmp samesign ult i32 %.0.i130, 10
  br i1 %.not.i132, label %bb.aq, label %bb.ap, !llvm.loop !1

bb.aq:                                            ; preds = %bb.ap
  %i.dv = icmp slt i16 %i.dn, 0
  br i1 %i.dv, label %bb.ar, label %_ZN2cv2fs4itoaEiPci.exit

bb.ar:                                            ; preds = %bb.aq
  %i.dw = getelementptr inbounds i8, ptr %.011.i129, i64 -2 ; 2 uses
  store i8 45, ptr %i.dw, align 1, !tbaa !31
  br label %_ZN2cv2fs4itoaEiPci.exit

bb.as:                                            ; preds = %.lr.ph.split
  %i.dx = load i32, ptr %.0192, align 4, !tbaa !38
  %i.dy = zext i32 %i.dx to i64
  store i8 0, ptr %i.bn, align 1, !tbaa !31
  br label %bb.at

bb.at:                                            ; preds = %bb.at, %bb.as
  %.015.i = phi ptr [ %i.bn, %bb.as ], [ %i.ed, %bb.at ]
  %.0.i135 = phi i64 [ %i.dy, %bb.as ], [ %i.dz, %bb.at ] ; 3 uses
  %i.dz = udiv i64 %.0.i135, 10                   ; 2 uses
  %.neg.i136 = mul nuw nsw i64 %i.dz, 246
  %i.ea = add nuw nsw i64 %.neg.i136, %.0.i135
  %i.eb = trunc i64 %i.ea to i8
  %i.ec = add i8 %i.eb, 48
  %i.ed = getelementptr inbounds i8, ptr %.015.i, i64 -1 ; 3 uses
  store i8 %i.ec, ptr %i.ed, align 1, !tbaa !31
  %.not.i137 = icmp samesign ult i64 %.0.i135, 10
  br i1 %.not.i137, label %_ZN2cv2fs4itoaEiPci.exit, label %bb.at, !llvm.loop !2

bb.au:                                            ; preds = %.lr.ph.split
  %i.ee = load i32, ptr %.0192, align 4, !tbaa !38 ; 2 uses
  %i.ef = call i32 @llvm.abs.i32(i32 %i.ee, i1 true)
  store i8 0, ptr %i.bn, align 1, !tbaa !31
  br label %bb.av

bb.av:                                            ; preds = %bb.av, %bb.au
  %.011.i139 = phi ptr [ %i.bn, %bb.au ], [ %i.ek, %bb.av ] ; 2 uses
  %.0.i140 = phi i32 [ %i.ef, %bb.au ], [ %i.eg, %bb.av ] ; 3 uses
  %i.eg = udiv i32 %.0.i140, 10                   ; 2 uses
  %.neg.i141 = mul i32 %i.eg, 246
  %i.eh = add i32 %.neg.i141, %.0.i140
  %i.ei = trunc i32 %i.eh to i8
end_hunk_0
begin_hunk_1_@_ZNK2cv8FileNode4realEv:bb.a

bb.b:                                             ; preds = %_ZNK2cv8FileNode3ptrEv.exit.i
  %i.g = load i8, ptr %i.f, align 1, !tbaa !31
  %i.h = zext i8 %i.g to i32                      ; 2 uses
  %i.i = and i32 %i.h, 7
  %i.j = and i32 %i.h, 32
  %.not12.i = icmp eq i32 %i.j, 0
  %i.k = select i1 %.not12.i, i64 1, i64 5
  %i.l = getelementptr inbounds nuw i8, ptr %i.f, i64 %i.k ; 2 uses
  switch i32 %i.i, label %_ZNK2cv8FileNodecvdEv.exit [
    i32 1, label %bb.c
    i32 2, label %bb.d
  ]

bb.c:                                             ; preds = %bb.b
  %.val.i = load i64, ptr %i.l, align 1
  %i.m = sitofp i64 %.val.i to double
  br label %_ZNK2cv8FileNodecvdEv.exit

bb.d:                                             ; preds = %bb.b
  %.val13.i = load double, ptr %i.l, align 1
  br label %_ZNK2cv8FileNodecvdEv.exit

_ZNK2cv8FileNodecvdEv.exit:                       ; preds = %bb.a, %_ZNK2cv8FileNode3ptrEv.exit.i, %bb.b, %bb.c, %bb.d
  %.1.i = phi double [ 0.000000e+00, %_ZNK2cv8FileNode3ptrEv.exit.i ], [ %i.m, %bb.c ], [ %.val13.i, %bb.d ], [ f0x7FEFFFFFFFFFFFFF, %bb.b ], [ 0.000000e+00, %bb.a ]
  ret double %.1.i
}

; Function Attrs: mustprogress uwtable
define void @_ZNK2cv8FileNode6stringB5cxx11Ev(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %1) local_unnamed_addr #9 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %i.b = load ptr, ptr %1, align 8, !tbaa !196    ; 2 uses
  %.not.i = icmp eq ptr %i.b, null
  br i1 %.not.i, label %_ZNK2cv8FileNode3ptrEv.exit.thread, label %_ZNK2cv8FileNode3ptrEv.exit

_ZNK2cv8FileNode3ptrEv.exit:                      ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.d = load i64, ptr %i.c, align 8, !tbaa !197
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.f = load i64, ptr %i.e, align 8, !tbaa !198
  %i.g = tail call noundef ptr @_ZNK2cv11FileStorage4Impl10getNodePtrEmm(ptr noundef nonnull align 8 dereferenceable(700) %i.b, i64 noundef %i.d, i64 noundef %i.f) ; 3 uses
  %.not = icmp eq ptr %i.g, null
  br i1 %.not, label %_ZNK2cv8FileNode3ptrEv.exit.thread, label %bb.b

bb.b:                                             ; preds = %_ZNK2cv8FileNode3ptrEv.exit
  %i.h = load i8, ptr %i.g, align 1, !tbaa !31
  %i.i = zext i8 %i.h to i32                      ; 2 uses
  %i.j = and i32 %i.i, 7
  %.not9 = icmp eq i32 %i.j, 3
  br i1 %.not9, label %bb.c, label %_ZNK2cv8FileNode3ptrEv.exit.thread

_ZNK2cv8FileNode3ptrEv.exit.thread:               ; preds = %bb.a, %bb.b, %_ZNK2cv8FileNode3ptrEv.exit
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  store ptr %i.k, ptr %0, align 8, !tbaa !40
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 0, ptr %i.l, align 8, !tbaa !42
  store i8 0, ptr %i.k, align 8, !tbaa !31
  br label %bb.g

bb.c:                                             ; preds = %bb.b
  %i.m = and i32 %i.i, 32
  %.not10 = icmp eq i32 %i.m, 0
  %i.n = select i1 %.not10, i64 1, i64 5
  %i.o = getelementptr inbounds nuw i8, ptr %i.g, i64 %i.n ; 2 uses
  %.val = load i32, ptr %i.o, align 1
  %i.p = zext i32 %.val to i64
  %i.q = getelementptr inbounds nuw i8, ptr %i.o, i64 4 ; 2 uses
  %i.r = add nsw i64 %i.p, -1                     ; 4 uses
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  store ptr %i.s, ptr %0, align 8, !tbaa !40
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #38
  store i64 %i.r, ptr %i.a, align 8, !tbaa !41
  %i.t = icmp ugt i64 %i.r, 15
  br i1 %i.t, label %.noexc.i, label %._crit_edge.i.i

.noexc.i:                                         ; preds = %bb.c
  %i.u = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0) ; 2 uses
  store ptr %i.u, ptr %0, align 8, !tbaa !37
  %i.v = load i64, ptr %i.a, align 8, !tbaa !41
  store i64 %i.v, ptr %i.s, align 8, !tbaa !31
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %.noexc.i, %bb.c
  %i.w = phi ptr [ %i.u, %.noexc.i ], [ %i.s, %bb.c ] ; 2 uses
  switch i64 %i.r, label %bb.e [
    i64 1, label %bb.d
    i64 0, label %bb.f
  ]

bb.d:                                             ; preds = %._crit_edge.i.i
  %i.x = load i8, ptr %i.q, align 1, !tbaa !31
  store i8 %i.x, ptr %i.w, align 1, !tbaa !31
  br label %bb.f

bb.e:                                             ; preds = %._crit_edge.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.w, ptr nonnull align 1 %i.q, i64 %i.r, i1 false)
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d, %._crit_edge.i.i
  %i.y = load i64, ptr %i.a, align 8, !tbaa !41   ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.y, ptr %i.z, align 8, !tbaa !42
  %i.aa = load ptr, ptr %0, align 8, !tbaa !37
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 %i.y
  store i8 0, ptr %i.ab, align 1, !tbaa !31
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #38
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %_ZNK2cv8FileNode3ptrEv.exit.thread
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZNK2cv8FileNode3matEv(ptr dead_on_unwind noalias nonnull writable sret(%"class.cv::Mat") align 8 %0, ptr noundef nonnull align 8 dereferenceable(24) %1) local_unnamed_addr #9 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.cv::Mat", align 8           ; 7 uses
  tail call void @_ZN2cv3MatC1Ev(ptr noundef nonnull align 8 dereferenceable(208) %0) #38
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #38
  call void @_ZN2cv3MatC1Ev(ptr noundef nonnull align 8 dereferenceable(208) %2) #38
  invoke void @_ZN2cv4readERKNS_8FileNodeERNS_3MatERKS3_(ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(208) %0, ptr noundef nonnull align 8 dereferenceable(208) %2)
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %bb.a
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %2) #38
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #38
  ret void

bb.c:                                             ; preds = %bb.a
  %i.a = landingpad { ptr, i32 }
          cleanup
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %2) #38
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #38
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %0) #38
  resume { ptr, i32 } %i.a
}

; Function Attrs: nounwind
declare void @_ZN2cv3MatC1Ev(ptr noundef nonnull align 8 dereferenceable(208)) unnamed_addr #11

declare void @_ZN2cv4readERKNS_8FileNodeERNS_3MatERKS3_(ptr noundef nonnull align 8 dereferenceable(24), ptr noundef nonnull align 8 dereferenceable(208), ptr noundef nonnull align 8 dereferenceable(208)) local_unnamed_addr #12

; Function Attrs: nounwind
declare void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208)) unnamed_addr #11

; Function Attrs: mustprogress uwtable
define void @_ZNK2cv8FileNode7readRawERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPvm(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %1, ptr noundef %2, i64 noundef %3) local_unnamed_addr #9 align 2 {
bb.a:
  %4 = alloca %"class.cv::FileNodeIterator", align 8 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #38
  call void @_ZN2cv16FileNodeIteratorC1ERKNS_8FileNodeEb(ptr noundef nonnull align 8 dereferenceable(48) %4, ptr noundef nonnull align 8 dereferenceable(24) %0, i1 noundef zeroext false)
  %i.a = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN2cv16FileNodeIterator7readRawERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPvm(ptr noundef nonnull align 8 dereferenceable(48) %4, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef %2, i64 noundef %3) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #38
  ret void
}

; Function Attrs: mustprogress uwtable
define noundef nonnull align 8 dereferenceable(48) ptr @_ZN2cv16FileNodeIterator7readRawERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPvm(ptr nofree noundef nonnull returned align 8 captures(ret: address, provenance) dereferenceable(48) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %1, ptr noundef %2, i64 noundef %3) local_unnamed_addr #21 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %5 = alloca %"class.std::allocator", align 1    ; 3 uses
  %6 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %7 = alloca %"class.std::allocator", align 1    ; 3 uses
  %8 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %9 = alloca %"class.std::allocator", align 1    ; 3 uses
  %10 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %11 = alloca %"class.std::allocator", align 1   ; 3 uses
  %12 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %13 = alloca %"class.std::allocator", align 1   ; 3 uses
  %14 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %15 = alloca %"class.std::allocator", align 1   ; 3 uses
  %16 = alloca %"class.cv::FileNode", align 8     ; 6 uses
  %i.a = alloca [256 x i32], align 16             ; 5 uses
  %17 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %18 = alloca %"class.std::allocator", align 1   ; 3 uses
  %19 = alloca %"class.cv::FileNode", align 8     ; 7 uses
  %20 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %21 = alloca %"class.std::allocator", align 1   ; 3 uses
  %22 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %23 = alloca %"class.std::allocator", align 1   ; 3 uses
  %24 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %25 = alloca %"class.std::allocator", align 1   ; 3 uses
  %i.b = load ptr, ptr %0, align 8, !tbaa !205
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %bb.cv, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 4 uses
  %i.d = load i64, ptr %i.c, align 8, !tbaa !200
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 3 uses
  %i.f = load i64, ptr %i.e, align 8, !tbaa !201
  %i.g = icmp ult i64 %i.d, %i.f
  br i1 %i.g, label %bb.c, label %bb.cv

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #38
  %i.h = load ptr, ptr %1, align 8, !tbaa !37
  %i.i = call noundef i32 @_ZN2cv2fs12decodeFormatEPKcPii(ptr noundef %i.h, ptr noundef nonnull %i.a, i32 noundef 128) ; 2 uses
  %i.j = load ptr, ptr %1, align 8, !tbaa !37
  %i.k = call noundef i32 @_ZN2cv2fs14calcStructSizeEPKci(ptr noundef %i.j, i32 noundef 0)
  %i.l = sext i32 %i.k to i64                     ; 4 uses
  %i.m = urem i64 %3, %i.l
  %i.n = udiv i64 %3, %i.l
  %i.o = icmp eq i64 %i.m, 0
  br i1 %i.o, label %bb.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #38
  call void @llvm.lifetime.start.p0(ptr nonnull %18) #38
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %17, ptr noundef nonnull @.str.118, ptr noundef nonnull align 1 dereferenceable(1) %18)
          to label %bb.e unwind label %bb.g

bb.e:                                             ; preds = %bb.d
  invoke void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef -215, ptr noundef nonnull align 8 dereferenceable(32) %17, ptr noundef nonnull @__func__._ZN2cv16FileNodeIterator7readRawERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPvm, ptr noundef nonnull @.str.11, i32 noundef 2708) #39
          to label %bb.f unwind label %bb.h

bb.f:                                             ; preds = %bb.e
  unreachable

bb.g:                                             ; preds = %bb.d
  %i.p = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

bb.h:                                             ; preds = %bb.e
  %i.q = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.r = load ptr, ptr %17, align 8, !tbaa !37    ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %17, i64 16 ; 2 uses
  %i.t = icmp eq ptr %i.r, %i.s
  br i1 %i.t, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.h
  %i.u = load i64, ptr %i.s, align 8, !tbaa !31
  %i.v = add i64 %i.u, 1
  call void @_ZdlPvm(ptr noundef %i.r, i64 noundef %i.v) #40
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.h, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %bb.g
  %.pn = phi { ptr, i32 } [ %i.p, %bb.g ], [ %i.q, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ], [ %i.q, %bb.h ]
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #38
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #38
  br label %bb.cu

bb.i:                                             ; preds = %bb.c
  %.not98247 = icmp ult i64 %3, %i.l
  br i1 %.not98247, label %._crit_edge250.split, label %.preheader.lr.ph

.preheader.lr.ph:                                 ; preds = %bb.i
  %i.w = icmp sgt i32 %i.i, 0
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 5 uses
  %i.z = getelementptr inbounds nuw i8, ptr %19, i64 8
  %i.aa = getelementptr inbounds nuw i8, ptr %19, i64 16
  %i.ab = getelementptr inbounds nuw i8, ptr %16, i64 8
  %i.ac = getelementptr inbounds nuw i8, ptr %16, i64 16
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  br i1 %i.w, label %.preheader.preheader, label %._crit_edge250.split

.preheader.preheader:                             ; preds = %.preheader.lr.ph
  %wide.trip.count = zext nneg i32 %i.i to i64
  br label %.preheader

.preheader:                                       ; preds = %.preheader.preheader, %._crit_edge246
  %.095249 = phi ptr [ %i.ag, %._crit_edge246 ], [ %2, %.preheader.preheader ] ; 3 uses
  %.096248 = phi i64 [ %i.af, %._crit_edge246 ], [ %i.n, %.preheader.preheader ]
  %i.ae = ptrtoint ptr %.095249 to i64
  br label %bb.j

._crit_edge246:                                   ; preds = %._crit_edge
  %i.af = add i64 %.096248, -1                    ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %.095249, i64 %i.l
  %.not98 = icmp eq i64 %i.af, 0
  br i1 %.not98, label %._crit_edge250.split, label %.preheader, !llvm.loop !442

bb.j:                                             ; preds = %.preheader, %._crit_edge
  %indvars.iv = phi i64 [ 0, %.preheader ], [ %indvars.iv.next, %._crit_edge ] ; 2 uses
  %.084243 = phi i64 [ 0, %.preheader ], [ %i.bg, %._crit_edge ]
  %.idx = shl nuw nsw i64 %indvars.iv, 3
  %i.ah = getelementptr inbounds nuw i8, ptr %i.a, i64 %.idx ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 4
  %i.aj = load i32, ptr %i.ai, align 4, !tbaa !38 ; 4 uses
  %i.ak = lshr i32 %i.aj, 5
  %i.al = and i32 %i.ak, 127
  %i.am = add nuw nsw i32 %i.al, 1
  %i.an = shl i32 %i.aj, 2
  %i.ao = and i32 %i.an, 124
  %i.ap = zext nneg i32 %i.ao to i64
  %i.aq = lshr i64 1275511473185297, %i.ap
  %i.ar = trunc i64 %i.aq to i32
  %i.as = and i32 %i.ar, 15
  %i.at = mul nuw nsw i32 %i.as, %i.am            ; 3 uses
  %i.au = load i32, ptr %i.ah, align 8, !tbaa !38 ; 2 uses
  %i.av = zext nneg i32 %i.at to i64
  %i.aw = add nsw i64 %.084243, -1
  %i.ax = add nsw i64 %i.aw, %i.av
  %i.ay = sub nsw i32 0, %i.at
  %i.az = sext i32 %i.ay to i64
  %i.ba = and i64 %i.ax, %i.az
  %i.bb = getelementptr inbounds nuw i8, ptr %.095249, i64 %i.ba ; 2 uses
  %i.bc = icmp sgt i32 %i.au, 0
  br i1 %i.bc, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.j
  %i.bd = icmp eq i32 %i.at, 8
  br label %bb.k

._crit_edge:                                      ; preds = %_ZN2cv16FileNodeIteratorppEv.exit, %bb.j
  %.082.lcssa = phi ptr [ %i.bb, %bb.j ], [ %i.in, %_ZN2cv16FileNodeIteratorppEv.exit ]
  %i.be = ptrtoint ptr %.082.lcssa to i64
  %i.bf = sub i64 %i.be, %i.ae
  %sext = shl i64 %i.bf, 32
  %i.bg = ashr exact i64 %sext, 32
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond259.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond259.not, label %._crit_edge246, label %bb.j, !llvm.loop !443

bb.k:                                             ; preds = %.lr.ph, %_ZN2cv16FileNodeIteratorppEv.exit
  %.0242 = phi i32 [ 0, %.lr.ph ], [ %i.io, %_ZN2cv16FileNodeIteratorppEv.exit ]
  %.082241 = phi ptr [ %i.bb, %.lr.ph ], [ %i.in, %_ZN2cv16FileNodeIteratorppEv.exit ] ; 26 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %19) #38
  %i.bh = load i64, ptr %i.c, align 8, !tbaa !200, !noalias !447
  %i.bi = load i64, ptr %i.e, align 8, !tbaa !201, !noalias !447
  %i.bj = icmp ult i64 %i.bh, %i.bi
  %i.bk = load ptr, ptr %0, align 8, !noalias !447
  %spec.select.i = select i1 %i.bj, ptr %i.bk, ptr null
  %i.bl = load i64, ptr %i.x, align 8, !tbaa !202, !noalias !447
  %i.bm = load i64, ptr %i.y, align 8, !tbaa !203, !noalias !447
  call void @_ZN2cv8FileNodeC1EPNS_11FileStorage4ImplEmm(ptr noundef nonnull align 8 dereferenceable(24) %19, ptr noundef %spec.select.i, i64 noundef %i.bl, i64 noundef %i.bm)
  %i.bn = load ptr, ptr %19, align 8, !tbaa !196  ; 4 uses
  %.not.i.i.i = icmp eq ptr %i.bn, null
  br i1 %.not.i.i.i, label %_ZNK2cv8FileNode6isRealEv.exit.thread, label %_ZNK2cv8FileNode3ptrEv.exit.i.i

_ZNK2cv8FileNode3ptrEv.exit.i.i:                  ; preds = %bb.k
  %i.bo = load i64, ptr %i.z, align 8, !tbaa !197 ; 3 uses
  %i.bp = load i64, ptr %i.aa, align 8, !tbaa !198 ; 3 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bn, i64 512
  %i.br = getelementptr inbounds nuw i8, ptr %i.bn, i64 520
  %i.bs = load ptr, ptr %i.br, align 8, !tbaa !135
  %i.bt = load ptr, ptr %i.bq, align 8, !tbaa !134 ; 2 uses
  %i.bu = ptrtoint ptr %i.bs to i64
  %i.bv = ptrtoint ptr %i.bt to i64
  %i.bw = sub i64 %i.bu, %i.bv
  %i.bx = ashr exact i64 %i.bw, 3
  %i.by = icmp ult i64 %i.bo, %i.bx
  br i1 %i.by, label %bb.q, label %bb.l

bb.l:                                             ; preds = %_ZNK2cv8FileNode3ptrEv.exit.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #38
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #38
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %12, ptr noundef nonnull @.str.99, ptr noundef nonnull align 1 dereferenceable(1) %13)
          to label %bb.m unwind label %bb.o

bb.m:                                             ; preds = %bb.l
  invoke void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef -215, ptr noundef nonnull align 8 dereferenceable(32) %12, ptr noundef nonnull @__func__._ZNK2cv11FileStorage4Impl10getNodePtrEmm, ptr noundef nonnull @.str.11, i32 noundef 1958) #39
          to label %bb.n unwind label %bb.p

bb.n:                                             ; preds = %bb.m
  unreachable

bb.o:                                             ; preds = %bb.l
  %i.bz = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i

bb.p:                                             ; preds = %bb.m
  %i.ca = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.cb = load ptr, ptr %12, align 8, !tbaa !37   ; 2 uses
  %i.cc = getelementptr inbounds nuw i8, ptr %12, i64 16 ; 2 uses
  %i.cd = icmp eq ptr %i.cb, %i.cc
  br i1 %i.cd, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.p
  %i.ce = load i64, ptr %i.cc, align 8, !tbaa !31
  %i.cf = add i64 %i.ce, 1
  call void @_ZdlPvm(ptr noundef %i.cb, i64 noundef %i.cf) #40
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i: ; preds = %bb.p, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i, %bb.o
  %.pn.i = phi { ptr, i32 } [ %i.bz, %bb.o ], [ %i.ca, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i ], [ %i.ca, %bb.p ]
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #38
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #38
  br label %common.resume

bb.q:                                             ; preds = %_ZNK2cv8FileNode3ptrEv.exit.i.i
  %i.cg = getelementptr inbounds nuw i8, ptr %i.bn, i64 536
  %i.ch = load ptr, ptr %i.cg, align 8, !tbaa !136
  %i.ci = getelementptr inbounds nuw [8 x i8], ptr %i.ch, i64 %i.bo
  %i.cj = load i64, ptr %i.ci, align 8, !tbaa !41
  %i.ck = icmp ult i64 %i.bp, %i.cj
  br i1 %i.ck, label %_ZNK2cv11FileStorage4Impl10getNodePtrEmm.exit, label %bb.r

bb.r:                                             ; preds = %bb.q
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #38
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #38
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %14, ptr noundef nonnull @.str.100, ptr noundef nonnull align 1 dereferenceable(1) %15)
          to label %bb.s unwind label %bb.u

bb.s:                                             ; preds = %bb.r
  invoke void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef -215, ptr noundef nonnull align 8 dereferenceable(32) %14, ptr noundef nonnull @__func__._ZNK2cv11FileStorage4Impl10getNodePtrEmm, ptr noundef nonnull @.str.11, i32 noundef 1959) #39
          to label %bb.t unwind label %bb.v

bb.t:                                             ; preds = %bb.s
  unreachable

bb.u:                                             ; preds = %bb.r
  %i.cl = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit18.i

bb.v:                                             ; preds = %bb.s
  %i.cm = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.cn = load ptr, ptr %14, align 8, !tbaa !37   ; 2 uses
  %i.co = getelementptr inbounds nuw i8, ptr %14, i64 16 ; 2 uses
  %i.cp = icmp eq ptr %i.cn, %i.co
  br i1 %i.cp, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit18.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i16.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i16.i: ; preds = %bb.v
  %i.cq = load i64, ptr %i.co, align 8, !tbaa !31
  %i.cr = add i64 %i.cq, 1
  call void @_ZdlPvm(ptr noundef %i.cn, i64 noundef %i.cr) #40
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit18.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit18.i: ; preds = %bb.v, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i16.i, %bb.u
  %.pn13.i = phi { ptr, i32 } [ %i.cl, %bb.u ], [ %i.cm, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i16.i ], [ %i.cm, %bb.v ]
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #38
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #38
  br label %common.resume

common.resume:                                    ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i191, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit18.i196, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit18.i, %bb.cu, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i181, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i189
  %common.resume.op = phi { ptr, i32 } [ %.pn103.pn.pn, %bb.cu ], [ %.pn.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i ], [ %.pn.i192, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i191 ], [ %i.lm, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i181 ], [ %.pn13.i197, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit18.i196 ], [ %.pn13.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit18.i ], [ %i.kk, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i189 ]
  resume { ptr, i32 } %common.resume.op

_ZNK2cv11FileStorage4Impl10getNodePtrEmm.exit:    ; preds = %bb.q
  %i.cs = getelementptr inbounds nuw [8 x i8], ptr %i.bt, i64 %i.bo
  %i.ct = load ptr, ptr %i.cs, align 8, !tbaa !39 ; 3 uses
  %.not.i.i = icmp eq ptr %i.ct, null
  br i1 %.not.i.i, label %_ZNK2cv8FileNode6isRealEv.exit.thread, label %_ZNK2cv8FileNode5isIntEv.exit

_ZNK2cv8FileNode5isIntEv.exit:                    ; preds = %_ZNK2cv11FileStorage4Impl10getNodePtrEmm.exit
  %i.cu = getelementptr inbounds nuw i8, ptr %i.ct, i64 %i.bp ; 2 uses
  %i.cv = load i8, ptr %i.cu, align 1, !tbaa !31  ; 2 uses
  %i.cw = and i8 %i.cv, 7
  %i.cx = icmp eq i8 %i.cw, 1
end_hunk_1
