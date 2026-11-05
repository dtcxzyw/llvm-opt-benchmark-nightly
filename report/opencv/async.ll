Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/opencv/original/async?download=true
inline.NumInlined: 440
inline.NumDeleted: 229
begin_hunk_0_@_ZNK2cv10AsyncArray4Impl3getERKNS_12_OutputArrayEl:bb.a
  invoke void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef -215, ptr noundef nonnull align 8 dereferenceable(32) %10, ptr noundef nonnull @__func__._ZNK2cv10AsyncArray3getERKNS_12_OutputArrayEl, ptr noundef nonnull @.str.1, i32 noundef 116) #21
          to label %bb.az unwind label %bb.bb

bb.az:                                            ; preds = %bb.ay
  unreachable

bb.ba:                                            ; preds = %bb.ax
  %i.cj = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit39

bb.bb:                                            ; preds = %bb.ay
  %i.ck = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.cl = load ptr, ptr %10, align 8, !tbaa !19   ; 2 uses
  %i.cm = getelementptr inbounds nuw i8, ptr %10, i64 16 ; 2 uses
  %i.cn = icmp eq ptr %i.cl, %i.cm
  br i1 %i.cn, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit39, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i37

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i37: ; preds = %bb.bb
  %i.co = load i64, ptr %i.cm, align 8, !tbaa !20
  %i.cp = add i64 %i.co, 1
  call void @_ZdlPvm(ptr noundef %i.cl, i64 noundef %i.cp) #20
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit39

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit39: ; preds = %bb.bb, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i37, %bb.ba
  %.pn17 = phi { ptr, i32 } [ %i.cj, %bb.ba ], [ %i.ck, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i37 ], [ %i.ck, %bb.bb ]
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #19
  br label %_ZNSt11unique_lockISt5mutexED2Ev.exit41

_ZNSt11unique_lockISt5mutexED2Ev.exit.sink.split: ; preds = %bb.ai, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i31, %bb.ae, %bb.ac, %bb.y, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i, %bb.u, %bb.s
  store i8 1, ptr %i.a, align 8, !tbaa !44
  br label %_ZNSt11unique_lockISt5mutexED2Ev.exit

_ZNSt11unique_lockISt5mutexED2Ev.exit:            ; preds = %_ZNSt11unique_lockISt5mutexED2Ev.exit.sink.split, %bb.aw
  %i.cq = tail call noundef i32 @pthread_mutex_unlock(ptr noundef nonnull align 8 dereferenceable(40) %i.y) #19 ; 0 uses
  br label %bb.bc

_ZNSt11unique_lockISt5mutexED2Ev.exit41:          ; preds = %bb.z, %bb.aq, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit36, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit39, %bb.am, %bb.an
  %.pn21 = phi { ptr, i32 } [ %.pn17, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit39 ], [ %i.aw, %bb.z ], [ %i.ca, %bb.aq ], [ %.pn19, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit36 ], [ %i.bw, %bb.am ], [ %i.bw, %bb.an ]
  %i.cr = call noundef i32 @pthread_mutex_unlock(ptr noundef nonnull align 8 dereferenceable(40) %i.y) #19 ; 0 uses
  br label %bb.bd

bb.bc:                                            ; preds = %bb.n, %_ZNSt11unique_lockISt5mutexED2Ev.exit
  %.115 = phi i1 [ %i.ab, %_ZNSt11unique_lockISt5mutexED2Ev.exit ], [ false, %bb.n ]
  ret i1 %.115

bb.bd:                                            ; preds = %_ZNSt11unique_lockISt5mutexED2Ev.exit41, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit28, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %.pn23.pn = phi { ptr, i32 } [ %.pn23, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %.pn21, %_ZNSt11unique_lockISt5mutexED2Ev.exit41 ], [ %.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit28 ]
  resume { ptr, i32 } %.pn23.pn

bb.be:                                            ; preds = %bb.ap
  unreachable
}

; Function Attrs: mustprogress uwtable
define void @_ZNK2cv10AsyncArray3getERKNS_12_OutputArrayE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) local_unnamed_addr #4 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %3 = alloca %"class.std::allocator", align 1    ; 3 uses
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %5 = alloca %"class.std::allocator", align 1    ; 3 uses
  %i.a = load ptr, ptr %0, align 8, !tbaa !14     ; 2 uses
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %bb.b, label %bb.g

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #19
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #19
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull @.str, ptr noundef nonnull align 1 dereferenceable(1) %3)
          to label %bb.c unwind label %bb.e

bb.c:                                             ; preds = %bb.b
  invoke void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef -215, ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull @__func__._ZNK2cv10AsyncArray3getERKNS_12_OutputArrayEl, ptr noundef nonnull @.str.1, i32 noundef 416) #21
          to label %bb.d unwind label %bb.f

bb.d:                                             ; preds = %bb.c
  unreachable

bb.e:                                             ; preds = %bb.b
  %i.b = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

bb.f:                                             ; preds = %bb.c
  %i.c = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.d = load ptr, ptr %2, align 8, !tbaa !19     ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.f = icmp eq ptr %i.d, %i.e
  br i1 %i.f, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.f
  %i.g = load i64, ptr %i.e, align 8, !tbaa !20
  %i.h = add i64 %i.g, 1
  call void @_ZdlPvm(ptr noundef %i.d, i64 noundef %i.h) #20
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.f, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %bb.e
  %.pn = phi { ptr, i32 } [ %i.b, %bb.e ], [ %i.c, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ], [ %i.c, %bb.f ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #19
  br label %bb.n

bb.g:                                             ; preds = %bb.a
  %i.i = tail call noundef zeroext i1 @_ZNK2cv10AsyncArray4Impl3getERKNS_12_OutputArrayEl(ptr noundef nonnull align 8 dereferenceable(314) %i.a, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 noundef -1)
  br i1 %i.i, label %bb.m, label %bb.h

bb.h:                                             ; preds = %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #19
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #19
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull @.str.2, ptr noundef nonnull align 1 dereferenceable(1) %5)
          to label %bb.i unwind label %bb.k

bb.i:                                             ; preds = %bb.h
  invoke void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef -215, ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull @__func__._ZNK2cv10AsyncArray3getERKNS_12_OutputArrayEl, ptr noundef nonnull @.str.1, i32 noundef 418) #21
          to label %bb.j unwind label %bb.l

bb.j:                                             ; preds = %bb.i
  unreachable

bb.k:                                             ; preds = %bb.h
  %i.j = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit14

bb.l:                                             ; preds = %bb.i
  %i.k = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.l = load ptr, ptr %4, align 8, !tbaa !19     ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.n = icmp eq ptr %i.l, %i.m
  br i1 %i.n, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit14, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i12

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i12: ; preds = %bb.l
  %i.o = load i64, ptr %i.m, align 8, !tbaa !20
  %i.p = add i64 %i.o, 1
  call void @_ZdlPvm(ptr noundef %i.l, i64 noundef %i.p) #20
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit14

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit14: ; preds = %bb.l, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i12, %bb.k
  %.pn9 = phi { ptr, i32 } [ %i.j, %bb.k ], [ %i.k, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i12 ], [ %i.k, %bb.l ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #19
  br label %bb.n

bb.m:                                             ; preds = %bb.g
  ret void

bb.n:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit14, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %.pn9.pn = phi { ptr, i32 } [ %.pn9, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit14 ], [ %.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ]
  resume { ptr, i32 } %.pn9.pn
}

; Function Attrs: mustprogress uwtable
define noundef zeroext i1 @_ZNK2cv10AsyncArray8wait_forEl(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %0, i64 noundef %1) local_unnamed_addr #4 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %3 = alloca %"class.std::allocator", align 1    ; 3 uses
  %i.a = load ptr, ptr %0, align 8, !tbaa !14     ; 2 uses
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #19
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #19
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull @.str, ptr noundef nonnull align 1 dereferenceable(1) %3)
  invoke void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef -215, ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull @__func__._ZNK2cv10AsyncArray8wait_forEl, ptr noundef nonnull @.str.1, i32 noundef 423) #21
          to label %bb.c unwind label %bb.d

bb.c:                                             ; preds = %bb.b
  unreachable

bb.d:                                             ; preds = %bb.b
  %i.b = landingpad { ptr, i32 }
          cleanup
  %i.c = load ptr, ptr %2, align 8, !tbaa !19     ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.e = icmp eq ptr %i.c, %i.d
  br i1 %i.e, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.d
  %i.f = load i64, ptr %i.d, align 8, !tbaa !20
  %i.g = add i64 %i.f, 1
  call void @_ZdlPvm(ptr noundef %i.c, i64 noundef %i.g) #20
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.d, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #19
  resume { ptr, i32 } %i.b

bb.e:                                             ; preds = %bb.a
  %i.h = tail call noundef zeroext i1 @_ZNK2cv10AsyncArray4Impl8wait_forEl(ptr noundef nonnull align 8 dereferenceable(314) %i.a, i64 noundef %1)
  ret i1 %i.h
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZNK2cv10AsyncArray4Impl8wait_forEl(ptr noundef nonnull align 8 dereferenceable(314) %0, i64 noundef %1) local_unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 {
  %3 = alloca %struct.timespec, align 8           ; 5 uses
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %5 = alloca %"class.std::allocator", align 1    ; 3 uses
  %6 = alloca %"class.std::__cxx11::basic_stringstream", align 8 ; 20 uses
  %7 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  %8 = alloca %"class.std::unique_lock", align 8  ; 8 uses
  %9 = getelementptr inbounds nuw i8, ptr %0, i64 312
  %10 = load i8, ptr %9, align 8, !tbaa !44, !range !45, !noundef !46
  %11 = trunc nuw i8 %10 to i1
  br i1 %11, label %bb.b, label %bb.a

bb.a:                                             ; preds = %2
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load i32, ptr %i.a, align 8, !tbaa !48
  %i.c = icmp ne i32 %i.b, 0
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 5 uses
  %i.e = load i8, ptr %i.d, align 8, !range !45
  %i.f = trunc nuw i8 %i.e to i1                  ; 2 uses
  %.0.i = select i1 %i.c, i1 true, i1 %i.f
  br i1 %.0.i, label %bb.g, label %bb.b

bb.b:                                             ; preds = %2, %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #19
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #19
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull @.str.11, ptr noundef nonnull align 1 dereferenceable(1) %5)
          to label %bb.c unwind label %bb.e

bb.c:                                             ; preds = %bb.b
  invoke void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef -215, ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull @__func__._ZNK2cv10AsyncArray8wait_forEl, ptr noundef nonnull @.str.1, i32 noundef 131) #21
          to label %bb.d unwind label %bb.f

bb.d:                                             ; preds = %bb.c
  unreachable

bb.e:                                             ; preds = %bb.b
  %i.g = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

bb.f:                                             ; preds = %bb.c
  %i.h = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.i = load ptr, ptr %4, align 8, !tbaa !19     ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.k = icmp eq ptr %i.i, %i.j
  br i1 %i.k, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.f
  %i.l = load i64, ptr %i.j, align 8, !tbaa !20
  %i.m = add i64 %i.l, 1
  call void @_ZdlPvm(ptr noundef %i.i, i64 noundef %i.m) #20
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.f, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %bb.e
  %.pn = phi { ptr, i32 } [ %i.g, %bb.e ], [ %i.h, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ], [ %i.h, %bb.f ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #19
  br label %bb.af

bb.g:                                             ; preds = %bb.a
  br i1 %i.f, label %bb.ae, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.n = icmp eq i64 %1, 0
  br i1 %i.n, label %bb.ae, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.o = tail call noundef ptr @_ZN2cv5utils7logging8internal15getGlobalLogTagEv() ; 3 uses
  %.not = icmp eq ptr %i.o, null                  ; 2 uses
  br i1 %.not, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  %i.q = load i32, ptr %i.p, align 8, !tbaa !63
  %i.r = icmp slt i32 %i.q, 4
  br i1 %i.r, label %bb.u, label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #19
  call void @_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEC1Ev(ptr noundef nonnull align 8 dereferenceable(128) %6)
  %i.s = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 2 uses
  %i.t = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.s, ptr noundef nonnull @.str.12, i64 noundef 28)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit unwind label %bb.r ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit: ; preds = %bb.k
  br i1 %.not, label %bb.m, label %bb.l

bb.l:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit
  %i.u = load ptr, ptr %i.o, align 8, !tbaa !64
  br label %bb.m

bb.m:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit, %bb.l
  %i.v = phi ptr [ %i.u, %bb.l ], [ null, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit ]
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #19
  call void @llvm.experimental.noalias.scope.decl(metadata !90)
  call void @llvm.experimental.noalias.scope.decl(metadata !91)
  %i.w = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 7 uses
  store ptr %i.w, ptr %7, align 8, !tbaa !21, !alias.scope !92
  %i.x = getelementptr inbounds nuw i8, ptr %7, i64 8
  store i64 0, ptr %i.x, align 8, !tbaa !23, !alias.scope !92
  store i8 0, ptr %i.w, align 8, !tbaa !20, !alias.scope !92
  %i.y = getelementptr inbounds nuw i8, ptr %6, i64 64
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !68, !noalias !92 ; 3 uses
  %.not.i.not.i.i = icmp eq ptr %i.z, null
  %i.aa = getelementptr inbounds nuw i8, ptr %6, i64 48
  %i.ab = load ptr, ptr %i.aa, align 8, !noalias !92 ; 2 uses
  %i.ac = icmp ugt ptr %i.z, %i.ab
  %.08.i.i.i = select i1 %i.ac, ptr %i.z, ptr %i.ab ; 2 uses
  %.not5.i.i = icmp eq ptr %.08.i.i.i, null
  %.not.i.i = select i1 %.not.i.not.i.i, i1 true, i1 %.not5.i.i
  br i1 %.not.i.i, label %bb.p, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.ad = getelementptr inbounds nuw i8, ptr %6, i64 56
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !69, !noalias !92 ; 2 uses
  %i.af = ptrtoint ptr %.08.i.i.i to i64
  %i.ag = ptrtoint ptr %i.ae to i64
  %i.ah = sub i64 %i.af, %i.ag
  %i.ai = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %7, i64 noundef 0, i64 noundef 0, ptr noundef %i.ae, i64 noundef %i.ah)
          to label %_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit unwind label %bb.o ; 0 uses

bb.o:                                             ; preds = %bb.p, %bb.n
  %i.aj = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ak = load ptr, ptr %7, align 8, !tbaa !19, !alias.scope !92 ; 2 uses
  %i.al = icmp eq ptr %i.ak, %i.w
  br i1 %i.al, label %.body, label %.body.sink.split

bb.p:                                             ; preds = %bb.m
  %i.am = getelementptr inbounds nuw i8, ptr %6, i64 96
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %7, ptr noundef nonnull align 8 dereferenceable(32) %i.am)
          to label %_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit unwind label %bb.o

_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit: ; preds = %bb.p, %bb.n
  %i.an = load ptr, ptr %7, align 8, !tbaa !19
  invoke void @_ZN2cv5utils7logging8internal17writeLogMessageExENS1_8LogLevelEPKcS5_iS5_S5_(i32 noundef 4, ptr noundef %i.v, ptr noundef nonnull @.str.1, i32 noundef 136, ptr noundef nonnull @__func__._ZNK2cv10AsyncArray8wait_forEl, ptr noundef %i.an)
          to label %bb.q unwind label %bb.s

bb.q:                                             ; preds = %_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit
  %i.ao = load ptr, ptr %7, align 8, !tbaa !19    ; 2 uses
  %i.ap = icmp eq ptr %i.ao, %i.w
  br i1 %i.ap, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit31, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i29

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i29: ; preds = %bb.q
  %i.aq = load i64, ptr %i.w, align 8, !tbaa !20
  %i.ar = add i64 %i.aq, 1
  call void @_ZdlPvm(ptr noundef %i.ao, i64 noundef %i.ar) #20
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit31

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit31: ; preds = %bb.q, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i29
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #19
  %i.as = load ptr, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, align 8 ; 2 uses
  store ptr %i.as, ptr %6, align 8, !tbaa !55
  %i.at = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 64), align 8
  %i.au = getelementptr i8, ptr %i.as, i64 -24
  %i.av = load i64, ptr %i.au, align 8
  %i.aw = getelementptr inbounds i8, ptr %6, i64 %i.av
  store ptr %i.at, ptr %i.aw, align 8, !tbaa !55
  %i.ax = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 72), align 8
  store ptr %i.ax, ptr %i.s, align 8, !tbaa !55
  %i.ay = getelementptr inbounds nuw i8, ptr %6, i64 24 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEEE, i64 16), ptr %i.ay, align 8, !tbaa !55
  %i.az = getelementptr inbounds nuw i8, ptr %6, i64 96
  %i.ba = load ptr, ptr %i.az, align 8, !tbaa !19 ; 2 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %6, i64 112 ; 2 uses
  %i.bc = icmp eq ptr %i.ba, %i.bb
  br i1 %i.bc, label %_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit31
  %i.bd = load i64, ptr %i.bb, align 8, !tbaa !20
  %i.be = add i64 %i.bd, 1
  call void @_ZdlPvm(ptr noundef %i.ba, i64 noundef %i.be) #20
  br label %_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev.exit

_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit31, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVSt15basic_streambufIcSt11char_traitsIcEE, i64 16), ptr %i.ay, align 8, !tbaa !55
  %i.bf = getelementptr inbounds nuw i8, ptr %6, i64 80
  call void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.bf) #19
  %i.bg = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 16), align 8 ; 2 uses
  store ptr %i.bg, ptr %6, align 8, !tbaa !55
  %i.bh = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 24), align 8
  %i.bi = getelementptr i8, ptr %i.bg, i64 -24
  %i.bj = load i64, ptr %i.bi, align 8
  %i.bk = getelementptr inbounds i8, ptr %6, i64 %i.bj
  store ptr %i.bh, ptr %i.bk, align 8, !tbaa !55
  %i.bl = getelementptr inbounds nuw i8, ptr %6, i64 8
  store i64 0, ptr %i.bl, align 8, !tbaa !71
  %i.bm = getelementptr inbounds nuw i8, ptr %6, i64 128
  call void @_ZNSt8ios_baseD2Ev(ptr noundef nonnull align 8 dead_on_return(264) dereferenceable(264) %i.bm) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #19
  br label %bb.u

bb.r:                                             ; preds = %bb.k
  %i.bn = landingpad { ptr, i32 }
          cleanup
  br label %bb.t

bb.s:                                             ; preds = %_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit
  %i.bo = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.bp = load ptr, ptr %7, align 8, !tbaa !19    ; 2 uses
  %i.bq = icmp eq ptr %i.bp, %i.w
  br i1 %i.bq, label %.body, label %.body.sink.split

.body.sink.split:                                 ; preds = %bb.s, %bb.o
  %.sink = phi ptr [ %i.ak, %bb.o ], [ %i.bp, %bb.s ]
  %.pn21.ph = phi { ptr, i32 } [ %i.aj, %bb.o ], [ %i.bo, %bb.s ]
  %i.br = load i64, ptr %i.w, align 8, !tbaa !20
  %i.bs = add i64 %i.br, 1
  call void @_ZdlPvm(ptr noundef %.sink, i64 noundef %i.bs) #20
  br label %.body

.body:                                            ; preds = %.body.sink.split, %bb.s, %bb.o
  %.pn21 = phi { ptr, i32 } [ %i.aj, %bb.o ], [ %i.bo, %bb.s ], [ %.pn21.ph, %.body.sink.split ]
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #19
  br label %bb.t

bb.t:                                             ; preds = %.body, %bb.r
  %.pn21.pn = phi { ptr, i32 } [ %.pn21, %.body ], [ %i.bn, %bb.r ]
  call void @_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(128) %6) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #19
  br label %bb.af

bb.u:                                             ; preds = %bb.j, %_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #19
  %i.bt = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  store ptr %i.bt, ptr %8, align 8, !tbaa !95
  %i.bu = getelementptr inbounds nuw i8, ptr %8, i64 8 ; 3 uses
  %i.bv = call noundef i32 @pthread_mutex_lock(ptr noundef nonnull align 8 dereferenceable(40) %i.bt) #19 ; 2 uses
  %.not.i.i.i = icmp eq i32 %i.bv, 0
  br i1 %.not.i.i.i, label %_ZNSt11unique_lockISt5mutexEC2ERS0_.exit, label %bb.v

bb.v:                                             ; preds = %bb.u
  call void @_ZSt20__throw_system_errori(i32 noundef %i.bv) #21
  unreachable

_ZNSt11unique_lockISt5mutexEC2ERS0_.exit:         ; preds = %bb.u
  store i8 1, ptr %i.bu, align 8, !tbaa !96
  %i.bw = icmp sgt i64 %1, 0
  %i.bx = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  br i1 %i.bw, label %bb.w, label %bb.aa

bb.w:                                             ; preds = %_ZNSt11unique_lockISt5mutexEC2ERS0_.exit
  %i.by = call i64 @_ZNSt6chrono3_V212steady_clock3nowEv() #19
  %i.bz = add nsw i64 %i.by, %1                   ; 3 uses
  %i.ca = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.cb = sdiv i64 %i.bz, 1000000000              ; 2 uses
  %.neg.i.i.i.i.i.i = mul nsw i64 %i.cb, -1000000000
  %i.cc = add i64 %.neg.i.i.i.i.i.i, %i.bz
  br label %bb.x

bb.x:                                             ; preds = %.noexc, %bb.w
  %i.cd = load i8, ptr %i.d, align 8, !tbaa !47, !range !45, !noundef !46
  %i.ce = trunc nuw i8 %i.cd to i1
  br i1 %i.ce, label %_ZNSt18condition_variable8wait_forIlSt5ratioILl1ELl1000000000EEZNK2cv10AsyncArray4Impl8wait_forElEUlvE_EEbRSt11unique_lockISt5mutexERKNSt6chrono8durationIT_T0_EET1_.exit.thread, label %bb.y

bb.y:                                             ; preds = %bb.x
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #19
  store i64 %i.cb, ptr %3, align 8, !tbaa !98
  store i64 %i.cc, ptr %i.ca, align 8, !tbaa !99
  %i.cf = invoke i32 @pthread_cond_clockwait(ptr noundef nonnull align 8 dereferenceable(48) %i.bx, ptr noundef nonnull align 8 dereferenceable(40) %i.bt, i32 noundef 1, ptr noundef nonnull align 8 dereferenceable(16) %3)
          to label %.noexc unwind label %.loopexit.split-lp.thread ; 0 uses

.noexc:                                           ; preds = %bb.y
  %i.cg = call i64 @_ZNSt6chrono3_V212steady_clock3nowEv() #19
  %.not.i.i35 = icmp slt i64 %i.cg, %i.bz
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #19
  br i1 %.not.i.i35, label %bb.x, label %bb.z, !llvm.loop !88

bb.z:                                             ; preds = %.noexc
  %i.ch = load i8, ptr %i.d, align 8, !tbaa !47, !range !45, !noundef !46
  %i.ci = trunc nuw i8 %i.ch to i1
  br label %_ZNSt18condition_variable8wait_forIlSt5ratioILl1ELl1000000000EEZNK2cv10AsyncArray4Impl8wait_forElEUlvE_EEbRSt11unique_lockISt5mutexERKNSt6chrono8durationIT_T0_EET1_.exit.thread

bb.aa:                                            ; preds = %_ZNSt11unique_lockISt5mutexEC2ERS0_.exit
  %i.cj = load i8, ptr %i.d, align 8, !tbaa !47, !range !45, !noundef !46
  %i.ck = trunc nuw i8 %i.cj to i1
  br i1 %i.ck, label %_ZNSt18condition_variable8wait_forIlSt5ratioILl1ELl1000000000EEZNK2cv10AsyncArray4Impl8wait_forElEUlvE_EEbRSt11unique_lockISt5mutexERKNSt6chrono8durationIT_T0_EET1_.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.aa, %.noexc36
  invoke void @_ZNSt18condition_variable4waitERSt11unique_lockISt5mutexE(ptr noundef nonnull align 8 dereferenceable(48) %i.bx, ptr noundef nonnull align 8 dereferenceable(9) %8)
          to label %.noexc36 unwind label %.loopexit.split-lp

.noexc36:                                         ; preds = %.lr.ph.i
  %i.cl = load i8, ptr %i.d, align 8, !tbaa !47, !range !45, !noundef !46
  %i.cm = trunc nuw i8 %i.cl to i1
  br i1 %i.cm, label %_ZNSt18condition_variable8wait_forIlSt5ratioILl1ELl1000000000EEZNK2cv10AsyncArray4Impl8wait_forElEUlvE_EEbRSt11unique_lockISt5mutexERKNSt6chrono8durationIT_T0_EET1_.exit, label %.lr.ph.i, !llvm.loop !89

.loopexit.split-lp.thread:                        ; preds = %bb.y
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %bb.ac

_ZNSt18condition_variable8wait_forIlSt5ratioILl1ELl1000000000EEZNK2cv10AsyncArray4Impl8wait_forElEUlvE_EEbRSt11unique_lockISt5mutexERKNSt6chrono8durationIT_T0_EET1_.exit: ; preds = %.noexc36, %bb.aa
  %.pre = load i8, ptr %i.bu, align 8, !tbaa !96, !range !45
  %i.cn = trunc nuw i8 %.pre to i1
  br i1 %i.cn, label %_ZNSt18condition_variable8wait_forIlSt5ratioILl1ELl1000000000EEZNK2cv10AsyncArray4Impl8wait_forElEUlvE_EEbRSt11unique_lockISt5mutexERKNSt6chrono8durationIT_T0_EET1_.exit.thread, label %_ZNSt11unique_lockISt5mutexED2Ev.exit

_ZNSt18condition_variable8wait_forIlSt5ratioILl1ELl1000000000EEZNK2cv10AsyncArray4Impl8wait_forElEUlvE_EEbRSt11unique_lockISt5mutexERKNSt6chrono8durationIT_T0_EET1_.exit.thread: ; preds = %bb.x, %bb.z, %_ZNSt18condition_variable8wait_forIlSt5ratioILl1ELl1000000000EEZNK2cv10AsyncArray4Impl8wait_forElEUlvE_EEbRSt11unique_lockISt5mutexERKNSt6chrono8durationIT_T0_EET1_.exit
  %.067.a = phi i1 [ true, %_ZNSt18condition_variable8wait_forIlSt5ratioILl1ELl1000000000EEZNK2cv10AsyncArray4Impl8wait_forElEUlvE_EEbRSt11unique_lockISt5mutexERKNSt6chrono8durationIT_T0_EET1_.exit ], [ %i.ci, %bb.z ], [ true, %bb.x ] ; 2 uses
  %i.co = load ptr, ptr %8, align 8, !tbaa !95    ; 2 uses
  %.not.i.i40 = icmp eq ptr %i.co, null
  br i1 %.not.i.i40, label %_ZNSt11unique_lockISt5mutexED2Ev.exit, label %bb.ab

bb.ab:                                            ; preds = %_ZNSt18condition_variable8wait_forIlSt5ratioILl1ELl1000000000EEZNK2cv10AsyncArray4Impl8wait_forElEUlvE_EEbRSt11unique_lockISt5mutexERKNSt6chrono8durationIT_T0_EET1_.exit.thread
  %i.cp = call noundef i32 @pthread_mutex_unlock(ptr noundef nonnull align 8 dereferenceable(40) %i.co) #19 ; 0 uses
  br label %_ZNSt11unique_lockISt5mutexED2Ev.exit

_ZNSt11unique_lockISt5mutexED2Ev.exit:            ; preds = %_ZNSt18condition_variable8wait_forIlSt5ratioILl1ELl1000000000EEZNK2cv10AsyncArray4Impl8wait_forElEUlvE_EEbRSt11unique_lockISt5mutexERKNSt6chrono8durationIT_T0_EET1_.exit, %_ZNSt18condition_variable8wait_forIlSt5ratioILl1ELl1000000000EEZNK2cv10AsyncArray4Impl8wait_forElEUlvE_EEbRSt11unique_lockISt5mutexERKNSt6chrono8durationIT_T0_EET1_.exit.thread, %bb.ab
  %.066 = phi i1 [ true, %_ZNSt18condition_variable8wait_forIlSt5ratioILl1ELl1000000000EEZNK2cv10AsyncArray4Impl8wait_forElEUlvE_EEbRSt11unique_lockISt5mutexERKNSt6chrono8durationIT_T0_EET1_.exit ], [ %.067.a, %_ZNSt18condition_variable8wait_forIlSt5ratioILl1ELl1000000000EEZNK2cv10AsyncArray4Impl8wait_forElEUlvE_EEbRSt11unique_lockISt5mutexERKNSt6chrono8durationIT_T0_EET1_.exit.thread ], [ %.067.a, %bb.ab ]
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #19
  br label %bb.ae

.loopexit.split-lp:                               ; preds = %.lr.ph.i
  %lpad.loopexit.split-lp45 = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %.pre46.pre = load i8, ptr %i.bu, align 8, !tbaa !96, !range !45
  %i.cq = trunc nuw i8 %.pre46.pre to i1
  br i1 %i.cq, label %bb.ac, label %_ZNSt11unique_lockISt5mutexED2Ev.exit42

bb.ac:                                            ; preds = %.loopexit.split-lp.thread, %.loopexit.split-lp
  %lpad.phi71.a = phi { ptr, i32 } [ %lpad.loopexit, %.loopexit.split-lp.thread ], [ %lpad.loopexit.split-lp45, %.loopexit.split-lp ] ; 2 uses
  %i.cr = load ptr, ptr %8, align 8, !tbaa !95    ; 2 uses
  %.not.i.i41 = icmp eq ptr %i.cr, null
  br i1 %.not.i.i41, label %_ZNSt11unique_lockISt5mutexED2Ev.exit42, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.cs = call noundef i32 @pthread_mutex_unlock(ptr noundef nonnull align 8 dereferenceable(40) %i.cr) #19 ; 0 uses
  br label %_ZNSt11unique_lockISt5mutexED2Ev.exit42

_ZNSt11unique_lockISt5mutexED2Ev.exit42:          ; preds = %.loopexit.split-lp, %bb.ac, %bb.ad
  %lpad.phi70 = phi { ptr, i32 } [ %lpad.loopexit.split-lp45, %.loopexit.split-lp ], [ %lpad.phi71.a, %bb.ac ], [ %lpad.phi71.a, %bb.ad ]
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #19
  br label %bb.af

bb.ae:                                            ; preds = %bb.h, %bb.g, %_ZNSt11unique_lockISt5mutexED2Ev.exit
  %.1 = phi i1 [ %.066, %_ZNSt11unique_lockISt5mutexED2Ev.exit ], [ true, %bb.g ], [ false, %bb.h ]
  ret i1 %.1

bb.af:                                            ; preds = %_ZNSt11unique_lockISt5mutexED2Ev.exit42, %bb.t, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %.pn26.pn = phi { ptr, i32 } [ %lpad.phi70, %_ZNSt11unique_lockISt5mutexED2Ev.exit42 ], [ %.pn21.pn, %bb.t ], [ %.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ]
  resume { ptr, i32 } %.pn26.pn
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define noundef zeroext i1 @_ZNK2cv10AsyncArray5validEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %0) local_unnamed_addr #6 align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !14     ; 4 uses
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %bb.c, label %1

1:                                                ; preds = %bb.a
  %2 = getelementptr inbounds nuw i8, ptr %i.a, i64 312
  %3 = load i8, ptr %2, align 8, !tbaa !44, !range !45, !noundef !46
  %4 = trunc nuw i8 %3 to i1
  br i1 %4, label %bb.c, label %bb.b

bb.b:                                             ; preds = %1
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.c = load i32, ptr %i.b, align 8, !tbaa !48
  %i.d = icmp ne i32 %i.c, 0
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 104
  %i.f = load i8, ptr %i.e, align 8, !range !45
  %i.g = trunc nuw i8 %i.f to i1
  %.0.i = select i1 %i.d, i1 true, i1 %i.g
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %1, %bb.a
  %.0 = phi i1 [ false, %bb.a ], [ false, %1 ], [ %.0.i, %bb.b ]
  ret i1 %.0
}

; Function Attrs: mustprogress nounwind uwtable
define void @_ZN2cv12AsyncPromiseC2Ev(ptr nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(8) %0) unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = invoke noalias noundef nonnull dereferenceable(320) ptr @_Znwm(i64 noundef 320) #22
          to label %bb.b unwind label %bb.f       ; 13 uses

bb.b:                                             ; preds = %bb.a
  store i32 1, ptr %i.a, align 8, !tbaa !101
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  store i32 0, ptr %i.b, align 4, !tbaa !72
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i32 1, ptr %i.c, align 8, !tbaa !48
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.d, i8 0, i64 40, i1 false)
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 56 ; 2 uses
  tail call void @_ZNSt18condition_variableC1Ev(ptr noundef nonnull align 8 dereferenceable(48) %i.e) #19
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 104
  store i8 0, ptr %i.f, align 8, !tbaa !47
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 112 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 152 ; 3 uses
  store ptr null, ptr %i.h, align 8, !tbaa !60
  %i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 160
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(33) %i.g, i8 0, i64 33, i1 false)
  invoke void @_ZN2cv9ExceptionC1Ev(ptr noundef nonnull align 8 dereferenceable(148) %i.i)
          to label %bb.e unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.j = landingpad { ptr, i32 }
          catch ptr null
  %i.k = load ptr, ptr %i.h, align 8, !tbaa !60
  %.not.i.i = icmp eq ptr %i.k, null
  br i1 %.not.i.i, label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void @_ZNSt15__exception_ptr13exception_ptr10_M_releaseEv(ptr noundef nonnull align 8 dereferenceable(8) %i.h) #19
  br label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit.i

_ZNSt15__exception_ptr13exception_ptrD2Ev.exit.i: ; preds = %bb.d, %bb.c
  %i.l = getelementptr inbounds nuw i8, ptr %i.a, i64 128
  tail call void @_ZNSt12__shared_ptrIN2cv4UMatELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %i.l) #19
  tail call void @_ZNSt12__shared_ptrIN2cv3MatELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %i.g) #19
  tail call void @_ZNSt18condition_variableD1Ev(ptr noundef nonnull align 8 dead_on_return(48) dereferenceable(48) %i.e) #19
  br label %.body

bb.e:                                             ; preds = %bb.b
  %i.m = getelementptr inbounds nuw i8, ptr %i.a, i64 312
  store i8 0, ptr %i.m, align 8, !tbaa !44
  %i.n = getelementptr inbounds nuw i8, ptr %i.a, i64 313
  store i8 0, ptr %i.n, align 1, !tbaa !73
  store ptr %i.a, ptr %0, align 8, !tbaa !75
  ret void

bb.f:                                             ; preds = %bb.a
  %i.o = landingpad { ptr, i32 }
          catch ptr null
  br label %.body

.body:                                            ; preds = %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit.i, %bb.f
  %eh.lpad-body = phi { ptr, i32 } [ %i.o, %bb.f ], [ %i.j, %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit.i ]
  %i.p = extractvalue { ptr, i32 } %eh.lpad-body, 0
  tail call void @__clang_call_terminate(ptr %i.p) #23
  unreachable
}

; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull ptr @_Znwm(i64 noundef) local_unnamed_addr #7

; Function Attrs: noinline noreturn nounwind uwtable
define linkonce_odr hidden void @__clang_call_terminate(ptr noundef %0) local_unnamed_addr #8 comdat {
bb.a:
  %i.a = tail call ptr @__cxa_begin_catch(ptr %0) #19 ; 0 uses
  tail call void @_ZSt9terminatev() #23
  unreachable
}

declare ptr @__cxa_begin_catch(ptr) local_unnamed_addr

; Function Attrs: cold nofree noreturn
declare void @_ZSt9terminatev() local_unnamed_addr #9

; Function Attrs: mustprogress nounwind uwtable
define void @_ZN2cv12AsyncPromiseD2Ev(ptr nofree noundef nonnull align 8 captures(none) dead_on_return(8) dereferenceable(8) %0) unnamed_addr #1 align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !75     ; 5 uses
  store ptr null, ptr %0, align 8, !tbaa !75
  %.not.i = icmp eq ptr %i.a, null
  br i1 %.not.i, label %_ZN2cv12AsyncPromise7releaseEv.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.c = atomicrmw add ptr %i.b, i32 -1 acq_rel, align 8 ; 0 uses
  %i.d = atomicrmw add ptr %i.a, i32 -1 acq_rel, align 8
  %.not.i.i = icmp eq i32 %i.d, 1
  br i1 %.not.i.i, label %bb.c, label %_ZN2cv12AsyncPromise7releaseEv.exit

bb.c:                                             ; preds = %bb.b
  tail call void @_ZN2cv10AsyncArray4ImplD2Ev(ptr noundef nonnull align 8 dead_on_return(314) dereferenceable(314) %i.a) #19
  tail call void @_ZdlPvm(ptr noundef nonnull align 8 dereferenceable(314) %i.a, i64 noundef 320) #20
  br label %_ZN2cv12AsyncPromise7releaseEv.exit

_ZN2cv12AsyncPromise7releaseEv.exit:              ; preds = %bb.a, %bb.b, %bb.c
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define void @_ZN2cv12AsyncPromise7releaseEv(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(8) %0) local_unnamed_addr #1 align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !75     ; 5 uses
  store ptr null, ptr %0, align 8, !tbaa !75
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %_ZN2cv10AsyncArray4Impl14releasePromiseEv.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.c = atomicrmw add ptr %i.b, i32 -1 acq_rel, align 8 ; 0 uses
  %i.d = atomicrmw add ptr %i.a, i32 -1 acq_rel, align 8
  %.not.i = icmp eq i32 %i.d, 1
  br i1 %.not.i, label %bb.c, label %_ZN2cv10AsyncArray4Impl14releasePromiseEv.exit

bb.c:                                             ; preds = %bb.b
  tail call void @_ZN2cv10AsyncArray4ImplD2Ev(ptr noundef nonnull align 8 dead_on_return(314) dereferenceable(314) %i.a) #19
  tail call void @_ZdlPvm(ptr noundef nonnull align 8 dereferenceable(314) %i.a, i64 noundef 320) #20
  br label %_ZN2cv10AsyncArray4Impl14releasePromiseEv.exit

_ZN2cv10AsyncArray4Impl14releasePromiseEv.exit:   ; preds = %bb.c, %bb.b, %bb.a
  ret void
}

; Function Attrs: mustprogress norecurse nounwind willreturn uwtable
define void @_ZN2cv12AsyncPromiseC2ERKS0_(ptr nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(8) initializes((0, 8)) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %1) unnamed_addr #2 align 2 {
bb.a:
  %i.a = load ptr, ptr %1, align 8, !tbaa !75     ; 4 uses
  store ptr %i.a, ptr %0, align 8, !tbaa !75
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.c = atomicrmw add ptr %i.b, i32 1 acq_rel, align 8 ; 0 uses
  %i.d = atomicrmw add ptr %i.a, i32 1 acq_rel, align 8 ; 0 uses
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define noundef nonnull align 8 dereferenceable(8) ptr @_ZN2cv12AsyncPromiseaSERKS0_(ptr nofree noundef nonnull returned align 8 captures(ret: address, provenance) dereferenceable(8) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %1) local_unnamed_addr #1 align 2 {
bb.a:
  %i.a = load ptr, ptr %1, align 8, !tbaa !75     ; 4 uses
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.c = atomicrmw add ptr %i.b, i32 1 acq_rel, align 8 ; 0 uses
  %i.d = atomicrmw add ptr %i.a, i32 1 acq_rel, align 8 ; 0 uses
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.e = load ptr, ptr %0, align 8, !tbaa !75     ; 5 uses
  store ptr null, ptr %0, align 8, !tbaa !75
  %.not.i = icmp eq ptr %i.e, null
  br i1 %.not.i, label %_ZN2cv12AsyncPromise7releaseEv.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.g = atomicrmw add ptr %i.f, i32 -1 acq_rel, align 8 ; 0 uses
  %i.h = atomicrmw add ptr %i.e, i32 -1 acq_rel, align 8
  %.not.i.i = icmp eq i32 %i.h, 1
  br i1 %.not.i.i, label %bb.e, label %_ZN2cv12AsyncPromise7releaseEv.exit

bb.e:                                             ; preds = %bb.d
  tail call void @_ZN2cv10AsyncArray4ImplD2Ev(ptr noundef nonnull align 8 dead_on_return(314) dereferenceable(314) %i.e) #19
  tail call void @_ZdlPvm(ptr noundef nonnull align 8 dereferenceable(314) %i.e, i64 noundef 320) #20
  br label %_ZN2cv12AsyncPromise7releaseEv.exit

_ZN2cv12AsyncPromise7releaseEv.exit:              ; preds = %bb.c, %bb.d, %bb.e
  store ptr %i.a, ptr %0, align 8, !tbaa !75
  ret ptr %0
}

; Function Attrs: mustprogress uwtable
define void @_ZN2cv12AsyncPromise14getArrayResultEv(ptr dead_on_unwind noalias writable sret(%"class.cv::AsyncArray") align 8 %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %1) local_unnamed_addr #4 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %3 = alloca %"class.std::allocator", align 1    ; 3 uses
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %5 = alloca %"class.std::allocator", align 1    ; 3 uses
  %i.a = load ptr, ptr %1, align 8, !tbaa !75     ; 5 uses
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %bb.b, label %bb.g

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #19
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #19
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull @.str, ptr noundef nonnull align 1 dereferenceable(1) %5)
end_hunk_0
