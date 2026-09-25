Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/luanti/original/touchscreenlayout?download=true
inline.NumInlined: 874
inline.NumDeleted: 409
loop-unroll.NumCompletelyUnrolled: 5
loop-unroll.NumUnrolled: 5
begin_hunk_0_@_ZN12ButtonLayout16loadFromSettingsEv:._crit_edge.i.i
  %i.eh = extractvalue { ptr, i32 } %i.eg, 0
  call void @__clang_call_terminate(ptr %i.eh) #30
  unreachable
}

; Function Attrs: mustprogress uwtable
declare void @_ZNSt7__cxx1119basic_istringstreamIcSt11char_traitsIcESaIcEEC1ERKNS_12basic_stringIcS2_S3_EESt13_Ios_Openmode(ptr noundef nonnull align 8 dereferenceable(120), ptr noundef nonnull align 8 dereferenceable(32), i32 noundef) unnamed_addr #4 align 2

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN12ButtonLayout15deserializeJsonERSi(ptr dead_on_unwind noalias writable sret(%"class.std::unordered_map.21") align 8 %0, ptr noundef nonnull align 8 dereferenceable(16) %1) local_unnamed_addr #4 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.Json::Value", align 8       ; 11 uses
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %4 = alloca %"class.std::allocator.18", align 1 ; 5 uses
  %5 = alloca %"class.Json::ValueIterator", align 8 ; 10 uses
  %6 = alloca %"class.Json::ValueIterator", align 8 ; 5 uses
  %7 = alloca %"class.Json::ValueIterator", align 8 ; 5 uses
  %i.a = alloca i8, align 1                       ; 5 uses
  %8 = alloca %"class.std::__cxx11::basic_string", align 8 ; 7 uses
  %9 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %10 = alloca %"class.std::allocator.18", align 1 ; 5 uses
  %11 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %12 = alloca %"class.std::allocator.18", align 1 ; 5 uses
  %13 = alloca %struct.ButtonMeta, align 4        ; 9 uses
  %14 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %15 = alloca %"class.std::allocator.18", align 1 ; 5 uses
  %16 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %17 = alloca %"class.std::allocator.18", align 1 ; 5 uses
  %18 = alloca %"class.Json::ValueIterator", align 8 ; 4 uses
  %i.b = alloca i8, align 1                       ; 5 uses
  %i.c = alloca i8, align 1                       ; 5 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 48
  store ptr %i.d, ptr %0, align 8, !tbaa !41
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 1, ptr %i.e, align 8, !tbaa !42
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 32
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.f, i8 0, i64 16, i1 false)
  store float 1.000000e+00, ptr %i.g, align 8, !tbaa !43
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 40
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.h, i8 0, i64 16, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #27
  invoke void @_ZN4Json5ValueC1ENS_9ValueTypeE(ptr noundef nonnull align 8 dereferenceable(40) %2, i32 noundef 0)
          to label %bb.b unwind label %bb.i

bb.b:                                             ; preds = %bb.a
  %i.i = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZN4JsonrsERSiRNS_5ValueE(ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull align 8 dereferenceable(40) %2)
          to label %bb.c unwind label %bb.j       ; 0 uses

bb.c:                                             ; preds = %bb.b
  %i.j = invoke noundef nonnull align 8 dereferenceable(40) ptr @_ZN4Json5ValueixEPKc(ptr noundef nonnull align 8 dereferenceable(40) %2, ptr noundef nonnull @.str.75)
          to label %bb.d unwind label %bb.k

bb.d:                                             ; preds = %bb.c
  %i.k = invoke noundef zeroext i1 @_ZNK4Json5Value6isUIntEv(ptr noundef nonnull align 8 dereferenceable(40) %i.j)
          to label %bb.e unwind label %bb.k

bb.e:                                             ; preds = %bb.d
  br i1 %i.k, label %bb.f, label %bb.l

bb.f:                                             ; preds = %bb.e
  %i.l = invoke noundef nonnull align 8 dereferenceable(40) ptr @_ZN4Json5ValueixEPKc(ptr noundef nonnull align 8 dereferenceable(40) %2, ptr noundef nonnull @.str.75)
          to label %bb.g unwind label %bb.k

bb.g:                                             ; preds = %bb.f
  %i.m = invoke noundef i32 @_ZNK4Json5Value6asUIntEv(ptr noundef nonnull align 8 dereferenceable(40) %i.l)
          to label %bb.h unwind label %bb.k

bb.h:                                             ; preds = %bb.g
  %i.n = and i32 %i.m, 255
  %i.o = icmp eq i32 %i.n, 0
  br label %bb.l

bb.i:                                             ; preds = %bb.a
  %i.p = landingpad { ptr, i32 }
          cleanup
  br label %bb.cv

bb.j:                                             ; preds = %bb.b
  %i.q = landingpad { ptr, i32 }
          cleanup
  br label %bb.cu

bb.k:                                             ; preds = %bb.m, %bb.l, %bb.g, %bb.f, %bb.d, %bb.c
  %i.r = landingpad { ptr, i32 }
          cleanup
  br label %bb.cu

bb.l:                                             ; preds = %bb.e, %bb.h
  %.038 = phi i1 [ %i.o, %bb.h ], [ true, %bb.e ]
  %i.s = invoke noundef nonnull align 8 dereferenceable(40) ptr @_ZN4Json5ValueixEPKc(ptr noundef nonnull align 8 dereferenceable(40) %2, ptr noundef nonnull @.str.76)
          to label %bb.m unwind label %bb.k

bb.m:                                             ; preds = %bb.l
  %i.t = invoke noundef zeroext i1 @_ZNK4Json5Value8isObjectEv(ptr noundef nonnull align 8 dereferenceable(40) %i.s)
          to label %bb.n unwind label %bb.k

bb.n:                                             ; preds = %bb.m
  br i1 %i.t, label %bb.t, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.u = call ptr @__cxa_allocate_exception(i64 40) #27 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #27
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #27
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull @.str.81, ptr noundef nonnull align 1 dereferenceable(1) %4)
          to label %bb.p unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread

bb.p:                                             ; preds = %bb.o
  invoke void @_ZN4Json12RuntimeErrorC1ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(40) %i.u, ptr noundef nonnull align 8 dereferenceable(32) %3)
          to label %bb.q unwind label %bb.r

bb.q:                                             ; preds = %bb.p
  invoke void @__cxa_throw(ptr nonnull %i.u, ptr nonnull @_ZTIN4Json12RuntimeErrorE, ptr nonnull @_ZN4Json9ExceptionD2Ev) #29
          to label %bb.cw unwind label %bb.r

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread: ; preds = %bb.o
  %i.v = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #27
  br label %bb.s

bb.r:                                             ; preds = %bb.q, %bb.p
  %.039 = phi i1 [ false, %bb.q ], [ true, %bb.p ] ; 2 uses
  %i.w = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  %i.x = load ptr, ptr %3, align 8, !tbaa !28     ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.z = icmp eq ptr %i.x, %i.y
  br i1 %i.z, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.r
  %i.aa = load i64, ptr %i.y, align 8, !tbaa !29
  %i.ab = add i64 %i.aa, 1
  call void @_ZdlPvm(ptr noundef %i.x, i64 noundef %i.ab) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #27
  br i1 %.039, label %bb.s, label %bb.cu

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.r
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #27
  br i1 %.039, label %bb.s, label %bb.cu

bb.s:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %.pn114 = phi { ptr, i32 } [ %i.v, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread ], [ %i.w, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %i.w, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ]
  call void @__cxa_free_exception(ptr %i.u) #27
  br label %bb.cu

bb.t:                                             ; preds = %bb.n
  %i.ac = invoke noundef nonnull align 8 dereferenceable(40) ptr @_ZN4Json5ValueixEPKc(ptr noundef nonnull align 8 dereferenceable(40) %2, ptr noundef nonnull @.str.76)
          to label %bb.u unwind label %bb.ag      ; 2 uses

bb.u:                                             ; preds = %bb.t
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #27
  invoke void @_ZN4Json13ValueIteratorC1Ev(ptr noundef nonnull align 8 dereferenceable(9) %5)
          to label %bb.v unwind label %bb.ah

bb.v:                                             ; preds = %bb.u
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #27
  invoke void @_ZN4Json5Value5beginEv(ptr dead_on_unwind nonnull writable sret(%"class.Json::ValueIterator") align 8 %6, ptr noundef nonnull align 8 dereferenceable(40) %i.ac)
          to label %bb.w unwind label %bb.ai

bb.w:                                             ; preds = %bb.v
  %i.ad = invoke noundef nonnull align 8 dereferenceable(9) ptr @_ZN4Json13ValueIteratoraSERKS0_(ptr noundef nonnull align 8 dereferenceable(9) %5, ptr noundef nonnull align 8 dereferenceable(9) %6)
          to label %bb.x unwind label %bb.ai      ; 0 uses

bb.x:                                             ; preds = %bb.w
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #27
  %i.ae = getelementptr inbounds nuw i8, ptr %8, i64 8
  %i.af = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %13, i64 4
  %i.ah = getelementptr inbounds nuw i8, ptr %13, i64 8
  %i.ai = getelementptr inbounds nuw i8, ptr %13, i64 12
  br label %bb.y

bb.y:                                             ; preds = %_ZN4Json13ValueIteratorppEi.exit, %bb.x
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #27
  invoke void @_ZN4Json5Value3endEv(ptr dead_on_unwind nonnull writable sret(%"class.Json::ValueIterator") align 8 %7, ptr noundef nonnull align 8 dereferenceable(40) %i.ac)
          to label %bb.z unwind label %bb.aj

bb.z:                                             ; preds = %bb.y
  %i.aj = invoke noundef zeroext i1 @_ZNK4Json17ValueIteratorBase7isEqualERKS0_(ptr noundef nonnull align 8 dereferenceable(9) %5, ptr noundef nonnull align 8 dereferenceable(9) %7)
          to label %bb.aa unwind label %bb.aj

bb.aa:                                            ; preds = %bb.z
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #27
  br i1 %i.aj, label %bb.ce, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #27
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #27
  invoke void @_ZNK4Json17ValueIteratorBase4nameB5cxx11Ev(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %8, ptr noundef nonnull align 8 dereferenceable(9) %5)
          to label %bb.ac unwind label %bb.ak

bb.ac:                                            ; preds = %bb.ab
  %.val = load ptr, ptr %8, align 8               ; 24 uses
  %.val70 = load i64, ptr %i.ae, align 8
  %.8.val.fr.i = freeze i64 %.val70               ; 46 uses
  %i.ak = icmp eq i64 %.8.val.fr.i, 0
  %i.al = load ptr, ptr @button_names, align 16, !tbaa !31 ; 2 uses
  %19 = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.al) #27 ; 2 uses
  br i1 %i.ak, label %.split.us.preheader.i, label %.split.preheader.i

.split.preheader.i:                               ; preds = %bb.ac
  %i.am = icmp eq i64 %.8.val.fr.i, %19
  br i1 %i.am, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.i, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread1.i

.split.us.preheader.i:                            ; preds = %bb.ac
  %i.an = icmp eq i64 %19, 0
  br i1 %i.an, label %_ZL17button_name_to_idRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread1.us.i

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread1.us.i: ; preds = %.split.us.preheader.i
  %i.ao = load ptr, ptr getelementptr inbounds nuw (i8, ptr @button_names, i64 8), align 8, !tbaa !31
  %char0.i.a = load i8, ptr %i.ao, align 1
  %i.ap = icmp eq i8 %char0.i.a, 0
  br i1 %i.ap, label %_ZL17button_name_to_idRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread1.us.1.i

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread1.us.1.i: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread1.us.i
  %i.aq = load ptr, ptr getelementptr inbounds nuw (i8, ptr @button_names, i64 16), align 16, !tbaa !31
  %char09.i = load i8, ptr %i.aq, align 1
  %i.ar = icmp eq i8 %char09.i, 0
  br i1 %i.ar, label %_ZL17button_name_to_idRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread1.us.2.i

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread1.us.2.i: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread1.us.1.i
  %i.as = load ptr, ptr getelementptr inbounds nuw (i8, ptr @button_names, i64 24), align 8, !tbaa !31
  %char010.i = load i8, ptr %i.as, align 1
  %i.at = icmp eq i8 %char010.i, 0
  br i1 %i.at, label %_ZL17button_name_to_idRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread1.us.3.i

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread1.us.3.i: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread1.us.2.i
  %i.au = load ptr, ptr getelementptr inbounds nuw (i8, ptr @button_names, i64 32), align 16, !tbaa !31
  %char011.i = load i8, ptr %i.au, align 1
  %i.av = icmp eq i8 %char011.i, 0
  br i1 %i.av, label %_ZL17button_name_to_idRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread1.us.4.i

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread1.us.4.i: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread1.us.3.i
  %i.aw = load ptr, ptr getelementptr inbounds nuw (i8, ptr @button_names, i64 40), align 8, !tbaa !31
  %char012.i = load i8, ptr %i.aw, align 1
  %i.ax = icmp eq i8 %char012.i, 0
  br i1 %i.ax, label %_ZL17button_name_to_idRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread1.us.5.i

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread1.us.5.i: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread1.us.4.i
  %i.ay = load ptr, ptr getelementptr inbounds nuw (i8, ptr @button_names, i64 48), align 16, !tbaa !31
  %char013.i = load i8, ptr %i.ay, align 1
  %i.az = icmp eq i8 %char013.i, 0
  br i1 %i.az, label %_ZL17button_name_to_idRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread1.us.6.i

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread1.us.6.i: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread1.us.5.i
  %i.ba = load ptr, ptr getelementptr inbounds nuw (i8, ptr @button_names, i64 56), align 8, !tbaa !31
  %char014.i = load i8, ptr %i.ba, align 1
  %i.bb = icmp eq i8 %char014.i, 0
  br i1 %i.bb, label %_ZL17button_name_to_idRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread1.us.7.i

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread1.us.7.i: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread1.us.6.i
  %i.bc = load ptr, ptr getelementptr inbounds nuw (i8, ptr @button_names, i64 64), align 16, !tbaa !31
  %char015.i = load i8, ptr %i.bc, align 1
  %i.bd = icmp eq i8 %char015.i, 0
  br i1 %i.bd, label %_ZL17button_name_to_idRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread1.us.8.i

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread1.us.8.i: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread1.us.7.i
  %i.be = load ptr, ptr getelementptr inbounds nuw (i8, ptr @button_names, i64 72), align 8, !tbaa !31
  %char016.i = load i8, ptr %i.be, align 1
  %i.bf = icmp eq i8 %char016.i, 0
  br i1 %i.bf, label %_ZL17button_name_to_idRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread1.us.9.i

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread1.us.9.i: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread1.us.8.i
  %i.bg = load ptr, ptr getelementptr inbounds nuw (i8, ptr @button_names, i64 80), align 16, !tbaa !31
  %char017.i = load i8, ptr %i.bg, align 1
  %i.bh = icmp eq i8 %char017.i, 0
  br i1 %i.bh, label %_ZL17button_name_to_idRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread1.us.10.i

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread1.us.10.i: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread1.us.9.i
  %i.bi = load ptr, ptr getelementptr inbounds nuw (i8, ptr @button_names, i64 88), align 8, !tbaa !31
  %char018.i = load i8, ptr %i.bi, align 1
  %i.bj = icmp eq i8 %char018.i, 0
  br i1 %i.bj, label %_ZL17button_name_to_idRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread1.us.11.i

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread1.us.11.i: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread1.us.10.i
  %i.bk = load ptr, ptr getelementptr inbounds nuw (i8, ptr @button_names, i64 96), align 16, !tbaa !31
  %char019.i = load i8, ptr %i.bk, align 1
  %i.bl = icmp eq i8 %char019.i, 0
  br i1 %i.bl, label %_ZL17button_name_to_idRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread1.us.12.i

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread1.us.12.i: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread1.us.11.i
  %i.bm = load ptr, ptr getelementptr inbounds nuw (i8, ptr @button_names, i64 104), align 8, !tbaa !31
  %char020.i = load i8, ptr %i.bm, align 1
  %i.bn = icmp eq i8 %char020.i, 0
  br i1 %i.bn, label %_ZL17button_name_to_idRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread1.us.13.i

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread1.us.13.i: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread1.us.12.i
  %i.bo = load ptr, ptr getelementptr inbounds nuw (i8, ptr @button_names, i64 112), align 16, !tbaa !31
  %char021.i = load i8, ptr %i.bo, align 1
  %i.bp = icmp eq i8 %char021.i, 0
  br i1 %i.bp, label %_ZL17button_name_to_idRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread1.us.14.i

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread1.us.14.i: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread1.us.13.i
  %i.bq = load ptr, ptr getelementptr inbounds nuw (i8, ptr @button_names, i64 120), align 8, !tbaa !31
  %char022.i = load i8, ptr %i.bq, align 1
  %i.br = icmp eq i8 %char022.i, 0
  br i1 %i.br, label %_ZL17button_name_to_idRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread1.us.15.i

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread1.us.15.i: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread1.us.14.i
  %i.bs = load ptr, ptr getelementptr inbounds nuw (i8, ptr @button_names, i64 128), align 16, !tbaa !31
  %char023.i = load i8, ptr %i.bs, align 1
  %i.bt = icmp eq i8 %char023.i, 0
  br i1 %i.bt, label %_ZL17button_name_to_idRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread1.us.16.i

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread1.us.16.i: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread1.us.15.i
  %i.bu = load ptr, ptr getelementptr inbounds nuw (i8, ptr @button_names, i64 136), align 8, !tbaa !31
  %char024.i = load i8, ptr %i.bu, align 1
  %i.bv = icmp eq i8 %char024.i, 0
  br i1 %i.bv, label %_ZL17button_name_to_idRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread1.us.17.i

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread1.us.17.i: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread1.us.16.i
  %i.bw = load ptr, ptr getelementptr inbounds nuw (i8, ptr @button_names, i64 144), align 16, !tbaa !31
  %char025.i = load i8, ptr %i.bw, align 1
  %i.bx = icmp eq i8 %char025.i, 0
  br i1 %i.bx, label %_ZL17button_name_to_idRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread1.us.18.i

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread1.us.18.i: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread1.us.17.i
  %i.by = load ptr, ptr getelementptr inbounds nuw (i8, ptr @button_names, i64 152), align 8, !tbaa !31
  %char026.i = load i8, ptr %i.by, align 1
  %i.bz = icmp eq i8 %char026.i, 0
  br i1 %i.bz, label %_ZL17button_name_to_idRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread1.us.19.i

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread1.us.19.i: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread1.us.18.i
  %i.ca = load ptr, ptr getelementptr inbounds nuw (i8, ptr @button_names, i64 160), align 16, !tbaa !31
  %char027.i = load i8, ptr %i.ca, align 1
  %i.cb = icmp eq i8 %char027.i, 0
  br i1 %i.cb, label %_ZL17button_name_to_idRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread1.us.20.i

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread1.us.20.i: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread1.us.19.i
  %i.cc = load ptr, ptr getelementptr inbounds nuw (i8, ptr @button_names, i64 168), align 8, !tbaa !31
  %char028.i = load i8, ptr %i.cc, align 1
  %i.cd = icmp eq i8 %char028.i, 0
  %spec.select.i = select i1 %i.cd, i8 21, i8 22
  br label %_ZL17button_name_to_idRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.i: ; preds = %.split.preheader.i
  %bcmp.i.i = call i32 @bcmp(ptr readonly %.val, ptr nonnull %i.al, i64 %.8.val.fr.i)
  %i.ce = icmp eq i32 %bcmp.i.i, 0
  br i1 %i.ce, label %_ZL17button_name_to_idRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread1.i

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread1.i: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.i, %.split.preheader.i
  %i.cf = load ptr, ptr getelementptr inbounds nuw (i8, ptr @button_names, i64 8), align 8, !tbaa !31 ; 2 uses
  %i.cg = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.cf) #27
  %i.ch = icmp eq i64 %.8.val.fr.i, %i.cg
  br i1 %i.ch, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.1.i, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread1.1.i

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.1.i: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread1.i
  %bcmp.i.1.i = call i32 @bcmp(ptr readonly %.val, ptr nonnull %i.cf, i64 %.8.val.fr.i)
  %i.ci = icmp eq i32 %bcmp.i.1.i, 0
  br i1 %i.ci, label %_ZL17button_name_to_idRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread1.1.i

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread1.1.i: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.1.i, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread1.i
  %i.cj = load ptr, ptr getelementptr inbounds nuw (i8, ptr @button_names, i64 16), align 16, !tbaa !31 ; 2 uses
  %i.ck = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.cj) #27
  %i.cl = icmp eq i64 %.8.val.fr.i, %i.ck
  br i1 %i.cl, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.2.i, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread1.2.i

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.2.i: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread1.1.i
  %bcmp.i.2.i = call i32 @bcmp(ptr readonly %.val, ptr nonnull %i.cj, i64 %.8.val.fr.i)
  %i.cm = icmp eq i32 %bcmp.i.2.i, 0
  br i1 %i.cm, label %_ZL17button_name_to_idRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread1.2.i

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread1.2.i: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.2.i, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread1.1.i
  %i.cn = load ptr, ptr getelementptr inbounds nuw (i8, ptr @button_names, i64 24), align 8, !tbaa !31 ; 2 uses
  %i.co = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.cn) #27
  %i.cp = icmp eq i64 %.8.val.fr.i, %i.co
  br i1 %i.cp, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.3.i, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread1.3.i

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.3.i: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread1.2.i
  %bcmp.i.3.i = call i32 @bcmp(ptr readonly %.val, ptr nonnull %i.cn, i64 %.8.val.fr.i)
  %i.cq = icmp eq i32 %bcmp.i.3.i, 0
  br i1 %i.cq, label %_ZL17button_name_to_idRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread1.3.i

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread1.3.i: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.3.i, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread1.2.i
  %i.cr = load ptr, ptr getelementptr inbounds nuw (i8, ptr @button_names, i64 32), align 16, !tbaa !31 ; 2 uses
  %i.cs = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.cr) #27
  %i.ct = icmp eq i64 %.8.val.fr.i, %i.cs
  br i1 %i.ct, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.4.i, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread1.4.i

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.4.i: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread1.3.i
  %bcmp.i.4.i = call i32 @bcmp(ptr readonly %.val, ptr nonnull %i.cr, i64 %.8.val.fr.i)
  %i.cu = icmp eq i32 %bcmp.i.4.i, 0
  br i1 %i.cu, label %_ZL17button_name_to_idRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread1.4.i

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread1.4.i: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.4.i, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread1.3.i
  %i.cv = load ptr, ptr getelementptr inbounds nuw (i8, ptr @button_names, i64 40), align 8, !tbaa !31 ; 2 uses
  %i.cw = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.cv) #27
  %i.cx = icmp eq i64 %.8.val.fr.i, %i.cw
  br i1 %i.cx, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.5.i, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread1.5.i

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.5.i: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread1.4.i
  %bcmp.i.5.i = call i32 @bcmp(ptr readonly %.val, ptr nonnull %i.cv, i64 %.8.val.fr.i)
  %i.cy = icmp eq i32 %bcmp.i.5.i, 0
  br i1 %i.cy, label %_ZL17button_name_to_idRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread1.5.i

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread1.5.i: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.5.i, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread1.4.i
  %i.cz = load ptr, ptr getelementptr inbounds nuw (i8, ptr @button_names, i64 48), align 16, !tbaa !31 ; 2 uses
  %i.da = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.cz) #27
  %i.db = icmp eq i64 %.8.val.fr.i, %i.da
  br i1 %i.db, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.6.i, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread1.6.i

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.6.i: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread1.5.i
  %bcmp.i.6.i = call i32 @bcmp(ptr readonly %.val, ptr nonnull %i.cz, i64 %.8.val.fr.i)
  %i.dc = icmp eq i32 %bcmp.i.6.i, 0
  br i1 %i.dc, label %_ZL17button_name_to_idRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread1.6.i

end_hunk_0
