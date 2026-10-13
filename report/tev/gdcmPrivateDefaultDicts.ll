Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/tev/original/gdcmPrivateDefaultDicts?download=true
inline.NumInlined: 438
inline.NumDeleted: 249
begin_hunk_0_@_ZNSt3__116__pad_and_outputB8ne180100IcNS_11char_traitsIcEEEENS_19ostreambuf_iteratorIT_T0_EES6_PKS4_S8_S8_RNS_8ios_baseES4_:bb.a
  %i.aa = getelementptr inbounds nuw i8, ptr %.017.i.i, i64 %i.g
  store i8 0, ptr %i.aa, align 1, !tbaa !9
  %i.ab = load i8, ptr %6, align 8
  %i.ac = trunc i8 %i.ab to i1
  %i.ad = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 3 uses
  %i.ae = load ptr, ptr %i.ad, align 8
  %i.af = getelementptr inbounds nuw i8, ptr %6, i64 1
  %i.ag = select i1 %i.ac, ptr %i.ae, ptr %i.af
  %i.ah = load ptr, ptr %0, align 8, !tbaa !21
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 96
  %i.aj = load ptr, ptr %i.ai, align 8
  %i.ak = invoke noundef i64 %i.aj(ptr noundef nonnull align 8 dereferenceable(64) %0, ptr noundef %i.ag, i64 noundef %i.g)
          to label %_ZNSt3__115basic_streambufIcNS_11char_traitsIcEEE5sputnB8ne180100EPKcl.exit unwind label %bb.h, !inline_history !78

_ZNSt3__115basic_streambufIcNS_11char_traitsIcEEE5sputnB8ne180100EPKcl.exit: ; preds = %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEC2B8ne180100Emc.exit
  %.not42 = icmp eq i64 %i.ak, %i.g
  %i.al = load i8, ptr %6, align 8
  %i.am = trunc i8 %i.al to i1
  br i1 %i.am, label %bb.g, label %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit

bb.g:                                             ; preds = %_ZNSt3__115basic_streambufIcNS_11char_traitsIcEEE5sputnB8ne180100EPKcl.exit
  %i.an = load ptr, ptr %i.ad, align 8, !tbaa !9
  %i.ao = load i64, ptr %6, align 8
  %i.ap = and i64 %i.ao, -2
  call void @_ZdlPvm(ptr noundef %i.an, i64 noundef %i.ap) #20
  br label %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit

_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit: ; preds = %_ZNSt3__115basic_streambufIcNS_11char_traitsIcEEE5sputnB8ne180100EPKcl.exit, %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #18
  br i1 %.not42, label %bb.j, label %bb.m

bb.h:                                             ; preds = %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEC2B8ne180100Emc.exit
  %i.aq = landingpad { ptr, i32 }
          cleanup
  %i.ar = load i8, ptr %6, align 8
  %i.as = trunc i8 %i.ar to i1
  br i1 %i.as, label %bb.i, label %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit44

bb.i:                                             ; preds = %bb.h
  %i.at = load ptr, ptr %i.ad, align 8, !tbaa !9
  %i.au = load i64, ptr %6, align 8
  %i.av = and i64 %i.au, -2
  call void @_ZdlPvm(ptr noundef %i.at, i64 noundef %i.av) #20
  br label %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit44

_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit44: ; preds = %bb.h, %bb.i
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #18
  resume { ptr, i32 } %i.aq

bb.j:                                             ; preds = %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit, %bb.d
  %i.aw = sub i64 %i.b, %i.h                      ; 3 uses
  %i.ax = icmp sgt i64 %i.aw, 0
  br i1 %i.ax, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.ay = load ptr, ptr %0, align 8, !tbaa !21
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 96
  %i.ba = load ptr, ptr %i.az, align 8
  %i.bb = call noundef i64 %i.ba(ptr noundef nonnull align 8 dereferenceable(64) %0, ptr noundef %2, i64 noundef %i.aw), !inline_history !78
  %.not43 = icmp eq i64 %i.bb, %i.aw
  br i1 %.not43, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k, %bb.j
  store i64 0, ptr %i.e, align 8, !tbaa !79
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit, %bb.c, %bb.k, %bb.a
  %.sroa.034.2 = phi ptr [ null, %bb.a ], [ null, %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit ], [ null, %bb.c ], [ %0, %bb.l ], [ null, %bb.k ]
  ret ptr %.sroa.034.2
}

; Function Attrs: nounwind
declare void @_ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEE6sentryD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16)) unnamed_addr #6

declare void @_ZNSt3__18ios_base33__set_badbit_and_consider_rethrowEv(ptr noundef nonnull align 8 dereferenceable(136)) local_unnamed_addr #5

declare void @__cxa_end_catch() local_unnamed_addr

; Function Attrs: mustprogress noreturn uwtable
define linkonce_odr hidden void @_ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE20__throw_length_errorB8ne180100Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) local_unnamed_addr #10 comdat align 2 {
bb.a:
  tail call void @_ZNSt3__120__throw_length_errorB8ne180100EPKc(ptr noundef nonnull @.str.6896) #19
  unreachable
}

; Function Attrs: inlinehint mustprogress noreturn uwtable
define linkonce_odr hidden void @_ZNSt3__120__throw_length_errorB8ne180100EPKc(ptr noundef %0) local_unnamed_addr #11 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = tail call ptr @__cxa_allocate_exception(i64 16) #18 ; 3 uses
  invoke void @_ZNSt12length_errorC2B8ne180100EPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.a, ptr noundef %0)
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @__cxa_throw(ptr nonnull %i.a, ptr nonnull @_ZTISt12length_error, ptr nonnull @_ZNSt12length_errorD1Ev) #19
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.b = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr nonnull %i.a) #18
  resume { ptr, i32 } %i.b
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZNSt12length_errorC2B8ne180100EPKc(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %1) unnamed_addr #0 comdat align 2 {
bb.a:
  tail call void @_ZNSt11logic_errorC2EPKc(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %1)
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt12length_error, i64 16), ptr %0, align 8, !tbaa !21
  ret void
}

; Function Attrs: nounwind
declare void @_ZNSt12length_errorD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16)) unnamed_addr #6

declare void @_ZNSt11logic_errorC2EPKc(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef) unnamed_addr #5

; Function Attrs: nounwind
declare noundef ptr @_ZNKSt11logic_error4whatEv(ptr noundef nonnull align 8 dereferenceable(16)) unnamed_addr #6

; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull ptr @_Znwm(i64 noundef) local_unnamed_addr #12

declare void @_ZNKSt3__18ios_base6getlocEv(ptr dead_on_unwind writable sret(%"class.std::__1::locale") align 8, ptr noundef nonnull align 8 dereferenceable(136)) local_unnamed_addr #5

; Function Attrs: nounwind
declare void @_ZNSt3__16localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8)) unnamed_addr #6

declare noundef ptr @_ZNKSt3__16locale9use_facetERNS0_2idE(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef nonnull align 8 dereferenceable(12)) local_unnamed_addr #5

declare void @_ZNSt3__18ios_base5clearEj(ptr noundef nonnull align 8 dereferenceable(136), i32 noundef) local_unnamed_addr #5

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr noundef captures(none)) local_unnamed_addr #13

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr writeonly captures(none), ptr readonly captures(none), i64, i1 immarg) #1

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPvm(ptr noundef, i64 noundef) local_unnamed_addr #14

; Function Attrs: nounwind
declare void @_ZNSt3__115basic_streambufIcNS_11char_traitsIcEEED2Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64)) unnamed_addr #6

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN4gdcm6StringILc92ELj64ELc32EE4TrimEPKc(ptr dead_on_unwind noalias writable sret(%"class.std::__1::basic_string") align 8 %0, ptr noundef %1) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.std::__1::basic_string", align 8 ; 12 uses
  %.not = icmp eq ptr %1, null
  br i1 %.not, label %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEC2B8ne180100ILi0EEEPKc.exit, label %bb.b

_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEC2B8ne180100ILi0EEEPKc.exit: ; preds = %bb.a
  store i8 0, ptr %0, align 8
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 1
  store i8 0, ptr %i.a, align 1, !tbaa !9
  br label %bb.x

bb.b:                                             ; preds = %bb.a
  %i.b = tail call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %1) #18 ; 8 uses
  %i.c = icmp ugt i64 %i.b, -9
  br i1 %i.c, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  tail call void @_ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE20__throw_length_errorB8ne180100Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) #19
  unreachable

bb.d:                                             ; preds = %bb.b
  %i.d = icmp ult i64 %i.b, 23
  br i1 %i.d, label %bb.e, label %.thread.i.i10

.thread.i.i10:                                    ; preds = %bb.d
  %i.e = or i64 %i.b, 7                           ; 2 uses
  %i.f = icmp eq i64 %i.e, 23
  %i.g = add nuw i64 %i.e, 1
  %i.h = select i1 %i.f, i64 25, i64 %i.g         ; 2 uses
  %i.i = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.h) #21 ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.i, ptr %i.j, align 8, !tbaa !9
  %i.k = or i64 %i.h, 1
  store i64 %i.k, ptr %0, align 8
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.b, ptr %i.l, align 8, !tbaa !9
  br label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.m = trunc nuw nsw i64 %i.b to i8
  %i.n = shl nuw nsw i8 %i.m, 1
  store i8 %i.n, ptr %0, align 8
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 1 ; 2 uses
  %.not.i.i.i.i.i.i.i.i.i.i.i13 = icmp eq i64 %i.b, 0
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i13, label %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEC2B8ne180100ILi0EEEPKc.exit14, label %bb.f

bb.f:                                             ; preds = %bb.e, %.thread.i.i10
  %.017.i.i11 = phi ptr [ %i.i, %.thread.i.i10 ], [ %i.o, %bb.e ] ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %.017.i.i11, ptr nonnull align 1 %1, i64 %i.b, i1 false)
  br label %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEC2B8ne180100ILi0EEEPKc.exit14

_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEC2B8ne180100ILi0EEEPKc.exit14: ; preds = %bb.e, %bb.f
  %.018.i.i12 = phi ptr [ %i.o, %bb.e ], [ %.017.i.i11, %bb.f ]
  %i.p = getelementptr inbounds nuw i8, ptr %.018.i.i12, i64 %i.b
  store i8 0, ptr %i.p, align 1, !tbaa !9
  %i.q = load i8, ptr %0, align 8                 ; 2 uses
  %i.r = trunc i8 %i.q to i1                      ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.t = load ptr, ptr %i.s, align 8
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 1
  %i.v = select i1 %i.r, ptr %i.t, ptr %i.u       ; 7 uses
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.x = load i64, ptr %i.w, align 8
  %i.y = lshr i8 %i.q, 1
  %i.z = zext nneg i8 %i.y to i64
  %i.aa = select i1 %i.r, i64 %i.x, i64 %i.z      ; 7 uses
  %.not18 = icmp eq i64 %i.aa, 0
  br i1 %.not18, label %_ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE17find_first_not_ofB8ne180100Ecm.exit, label %.lr.ph.preheader.i.i

.lr.ph.preheader.i.i:                             ; preds = %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEC2B8ne180100ILi0EEEPKc.exit14
  %i.ab = getelementptr inbounds nuw i8, ptr %i.v, i64 %i.aa
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.g, %.lr.ph.preheader.i.i
  %.01522.i.i = phi ptr [ %i.ae, %bb.g ], [ %i.v, %.lr.ph.preheader.i.i ] ; 3 uses
  %i.ac = load i8, ptr %.01522.i.i, align 1, !tbaa !9
  %i.ad = icmp eq i8 %i.ac, 32
  br i1 %i.ad, label %bb.g, label %bb.h

bb.g:                                             ; preds = %.lr.ph.i.i
  %i.ae = getelementptr inbounds nuw i8, ptr %.01522.i.i, i64 1 ; 2 uses
  %.not.not.i.i = icmp eq ptr %i.ae, %i.ab
  br i1 %.not.not.i.i, label %_ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE17find_first_not_ofB8ne180100Ecm.exit, label %.lr.ph.i.i, !llvm.loop !80

bb.h:                                             ; preds = %.lr.ph.i.i
  %i.af = ptrtoint ptr %.01522.i.i to i64
  %i.ag = ptrtoint ptr %i.v to i64
  %i.ah = sub i64 %i.af, %i.ag
  br label %_ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE17find_first_not_ofB8ne180100Ecm.exit

_ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE17find_first_not_ofB8ne180100Ecm.exit: ; preds = %bb.g, %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEC2B8ne180100ILi0EEEPKc.exit14, %bb.h
  %.1.i.i = phi i64 [ %i.ah, %bb.h ], [ -1, %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEC2B8ne180100ILi0EEEPKc.exit14 ], [ -1, %bb.g ] ; 5 uses
  %.not.i.i29 = icmp samesign eq i64 %i.aa, 0
  br i1 %.not.i.i29, label %_ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE16find_last_not_ofB8ne180100Ecm.exit.thread, label %.lr.ph

.lr.ph:                                           ; preds = %_ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE17find_first_not_ofB8ne180100Ecm.exit
  %i.ai = getelementptr inbounds nuw i8, ptr %i.v, i64 %i.aa
  br label %bb.j

bb.i:                                             ; preds = %bb.j
  %.not.i.i = icmp eq ptr %i.al, %i.v
  br i1 %.not.i.i, label %_ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE16find_last_not_ofB8ne180100Ecm.exit.thread, label %bb.j, !llvm.loop !81

_ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE16find_last_not_ofB8ne180100Ecm.exit.thread: ; preds = %bb.i, %_ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE17find_first_not_ofB8ne180100Ecm.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #18
  %i.aj = icmp eq i64 %.1.i.i, -1
  %i.ak = select i1 %i.aj, i64 0, i64 %.1.i.i
  br label %bb.k

bb.j:                                             ; preds = %.lr.ph, %bb.i
  %.013.i.i30 = phi ptr [ %i.ai, %.lr.ph ], [ %i.al, %bb.i ]
  %i.al = getelementptr inbounds i8, ptr %.013.i.i30, i64 -1 ; 4 uses
  %i.am = load i8, ptr %i.al, align 1, !tbaa !9
  %i.an = icmp eq i8 %i.am, 32
  br i1 %i.an, label %bb.i, label %_ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE16find_last_not_ofB8ne180100Ecm.exit, !llvm.loop !81

_ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE16find_last_not_ofB8ne180100Ecm.exit: ; preds = %bb.j
  %i.ao = ptrtoint ptr %i.al to i64
  %i.ap = ptrtoint ptr %i.v to i64
  %i.aq = sub i64 %i.ao, %i.ap                    ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #18
  %i.ar = icmp eq i64 %.1.i.i, -1
  %i.as = select i1 %i.ar, i64 0, i64 %.1.i.i     ; 2 uses
  %i.at = icmp eq i64 %i.aq, -1
  br i1 %i.at, label %bb.k, label %bb.l

bb.k:                                             ; preds = %_ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE16find_last_not_ofB8ne180100Ecm.exit.thread, %_ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE16find_last_not_ofB8ne180100Ecm.exit
  %i.au = phi i64 [ %i.ak, %_ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE16find_last_not_ofB8ne180100Ecm.exit.thread ], [ %i.as, %_ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE16find_last_not_ofB8ne180100Ecm.exit ]
  %i.av = add i64 %i.aa, -1
  br label %bb.m

bb.l:                                             ; preds = %_ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE16find_last_not_ofB8ne180100Ecm.exit
  %reass.sub = sub i64 %i.aq, %.1.i.i
  %i.aw = add i64 %reass.sub, 1
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k
  %i.ax = phi i64 [ %i.au, %bb.k ], [ %i.as, %bb.l ] ; 3 uses
  %i.ay = phi i64 [ %i.av, %bb.k ], [ %i.aw, %bb.l ]
  %i.az = icmp ugt i64 %i.ax, %i.aa
  br i1 %i.az, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  invoke void @_ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE20__throw_out_of_rangeB8ne180100Ev(ptr noundef nonnull align 8 dereferenceable(24) %2) #19
          to label %.noexc unwind label %bb.v

.noexc:                                           ; preds = %bb.n
  unreachable

bb.o:                                             ; preds = %bb.m
  %i.ba = getelementptr inbounds nuw i8, ptr %i.v, i64 %i.ax
  %i.bb = sub nuw i64 %i.aa, %i.ax
  %.sroa.speculated.i.i = tail call i64 @llvm.umin.i64(i64 %i.bb, i64 %i.ay) ; 8 uses
  %i.bc = icmp ugt i64 %.sroa.speculated.i.i, -9
  br i1 %i.bc, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  invoke void @_ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE20__throw_length_errorB8ne180100Ev(ptr noundef nonnull align 8 dereferenceable(24) %2) #19
          to label %.noexc15 unwind label %bb.v

.noexc15:                                         ; preds = %bb.p
  unreachable

bb.q:                                             ; preds = %bb.o
  %i.bd = icmp ult i64 %.sroa.speculated.i.i, 23
  br i1 %i.bd, label %bb.r, label %.thread.i.i.i

.thread.i.i.i:                                    ; preds = %bb.q
  %i.be = or i64 %.sroa.speculated.i.i, 7         ; 2 uses
  %i.bf = icmp eq i64 %i.be, 23
  %i.bg = add nuw i64 %i.be, 1
  %i.bh = select i1 %i.bf, i64 25, i64 %i.bg      ; 2 uses
  %i.bi = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.bh) #21
          to label %.noexc16 unwind label %bb.v   ; 2 uses

.noexc16:                                         ; preds = %.thread.i.i.i
  %i.bj = getelementptr inbounds nuw i8, ptr %2, i64 16
  store ptr %i.bi, ptr %i.bj, align 8, !tbaa !9, !alias.scope !84
  %i.bk = or i64 %i.bh, 1
  store i64 %i.bk, ptr %2, align 8, !alias.scope !84
  %i.bl = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i64 %.sroa.speculated.i.i, ptr %i.bl, align 8, !tbaa !9, !alias.scope !84
  br label %bb.s

bb.r:                                             ; preds = %bb.q
  %i.bm = trunc nuw nsw i64 %.sroa.speculated.i.i to i8
  %i.bn = shl nuw nsw i8 %i.bm, 1
  store i8 %i.bn, ptr %2, align 8, !alias.scope !84
  %i.bo = getelementptr inbounds nuw i8, ptr %2, i64 1 ; 2 uses
  %.not.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq i64 %.sroa.speculated.i.i, 0
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i.i, label %bb.t, label %bb.s

bb.s:                                             ; preds = %bb.r, %.noexc16
  %.017.i.i.i = phi ptr [ %i.bi, %.noexc16 ], [ %i.bo, %bb.r ] ; 2 uses
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %.017.i.i.i, ptr align 1 %i.ba, i64 %.sroa.speculated.i.i, i1 false)
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %bb.r
  %.018.i.i.i = phi ptr [ %i.bo, %bb.r ], [ %.017.i.i.i, %bb.s ]
  %i.bp = getelementptr inbounds nuw i8, ptr %.018.i.i.i, i64 %.sroa.speculated.i.i
  store i8 0, ptr %i.bp, align 1, !tbaa !9
  %3 = load i8, ptr %0, align 8
  %i.bq = trunc i8 %3 to i1
  br i1 %i.bq, label %bb.u, label %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit

bb.u:                                             ; preds = %bb.t
  %i.br = load ptr, ptr %i.s, align 8, !tbaa !9
  %i.bs = load i64, ptr %0, align 8
  %i.bt = and i64 %i.bs, -2
  tail call void @_ZdlPvm(ptr noundef %i.br, i64 noundef %i.bt) #20
  br label %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit

_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit: ; preds = %bb.u, %bb.t
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %2, i64 24, i1 false), !tbaa.struct !32
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #18
  br label %bb.x

bb.v:                                             ; preds = %.thread.i.i.i, %bb.p, %bb.n
  %i.bu = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #18
  %i.bv = load i8, ptr %0, align 8
  %i.bw = trunc i8 %i.bv to i1
  br i1 %i.bw, label %bb.w, label %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit17

bb.w:                                             ; preds = %bb.v
  %i.bx = load ptr, ptr %i.s, align 8, !tbaa !9
  %i.by = load i64, ptr %0, align 8
  %i.bz = and i64 %i.by, -2
  call void @_ZdlPvm(ptr noundef %i.bx, i64 noundef %i.bz) #20
  br label %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit17

_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit17: ; preds = %bb.v, %bb.w
  resume { ptr, i32 } %i.bu

bb.x:                                             ; preds = %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit, %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEC2B8ne180100ILi0EEEPKc.exit
  ret void
}

; Function Attrs: mustprogress noreturn uwtable
define linkonce_odr hidden void @_ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE20__throw_out_of_rangeB8ne180100Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) local_unnamed_addr #10 comdat align 2 {
bb.a:
  tail call void @_ZNSt3__120__throw_out_of_rangeB8ne180100EPKc(ptr noundef nonnull @.str.6896) #19
  unreachable
}

; Function Attrs: inlinehint mustprogress noreturn uwtable
define linkonce_odr hidden void @_ZNSt3__120__throw_out_of_rangeB8ne180100EPKc(ptr noundef %0) local_unnamed_addr #11 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = tail call ptr @__cxa_allocate_exception(i64 16) #18 ; 3 uses
  invoke void @_ZNSt12out_of_rangeC2B8ne180100EPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.a, ptr noundef %0)
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @__cxa_throw(ptr nonnull %i.a, ptr nonnull @_ZTISt12out_of_range, ptr nonnull @_ZNSt12out_of_rangeD1Ev) #19
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.b = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr nonnull %i.a) #18
  resume { ptr, i32 } %i.b
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZNSt12out_of_rangeC2B8ne180100EPKc(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %1) unnamed_addr #0 comdat align 2 {
bb.a:
  tail call void @_ZNSt11logic_errorC2EPKc(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %1)
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt12out_of_range, i64 16), ptr %0, align 8, !tbaa !21
  ret void
}

; Function Attrs: nounwind
declare void @_ZNSt12out_of_rangeD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16)) unnamed_addr #6

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZNSt3__14pairIKN4gdcm10PrivateTagENS1_9DictEntryEEC2B8ne180100ILb1ETnNS_9enable_ifIXclsr13_CheckArgsDepIXT_EEE17__enable_implicitIRS3_RKS4_EEEiE4typeELi0EEES8_SA_(ptr noundef nonnull align 8 dereferenceable(96) %0, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(61) %2) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load i32, ptr %1, align 8, !tbaa !9
  store i32 %i.a, ptr %0, align 8, !tbaa !9
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.d = load i8, ptr %i.c, align 8
  %i.e = trunc i8 %i.d to i1
  br i1 %i.e, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.b, ptr noundef nonnull align 8 dereferenceable(24) %i.c, i64 24, i1 false), !tbaa.struct !32
  br label %_ZN4gdcm10PrivateTagC2ERKS0_.exit

bb.c:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !9
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.i = load i64, ptr %i.h, align 8, !tbaa !9
  tail call void @_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE25__init_copy_ctor_externalEPKcm(ptr noundef nonnull align 8 dereferenceable(24) %i.b, ptr noundef %i.g, i64 noundef %i.i)
  br label %_ZN4gdcm10PrivateTagC2ERKS0_.exit

_ZN4gdcm10PrivateTagC2ERKS0_.exit:                ; preds = %bb.b, %bb.c
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 4 uses
  %i.k = load i8, ptr %2, align 8
  %i.l = trunc i8 %i.k to i1
  br i1 %i.l, label %bb.e, label %bb.d

bb.d:                                             ; preds = %_ZN4gdcm10PrivateTagC2ERKS0_.exit
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(61) %i.j, ptr noundef nonnull align 8 dereferenceable(61) %2, i64 24, i1 false), !tbaa.struct !32
  br label %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEC2ERKS5_.exit.i

bb.e:                                             ; preds = %_ZN4gdcm10PrivateTagC2ERKS0_.exit
  %i.m = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !9
  %i.o = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.p = load i64, ptr %i.o, align 8, !tbaa !9
  invoke void @_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE25__init_copy_ctor_externalEPKcm(ptr noundef nonnull align 8 dereferenceable(61) %i.j, ptr noundef %i.n, i64 noundef %i.p)
          to label %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEC2ERKS5_.exit.i unwind label %bb.k

_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEC2ERKS5_.exit.i: ; preds = %bb.e, %bb.d
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %2, i64 24 ; 2 uses
  %i.s = load i8, ptr %i.r, align 8
  %i.t = trunc i8 %i.s to i1
  br i1 %i.t, label %bb.g, label %bb.f

bb.f:                                             ; preds = %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEC2ERKS5_.exit.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.q, ptr noundef nonnull align 8 dereferenceable(24) %i.r, i64 24, i1 false), !tbaa.struct !32
  br label %bb.j

bb.g:                                             ; preds = %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEC2ERKS5_.exit.i
  %i.u = getelementptr inbounds nuw i8, ptr %2, i64 40
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !9
  %i.w = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.x = load i64, ptr %i.w, align 8, !tbaa !9
  invoke void @_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE25__init_copy_ctor_externalEPKcm(ptr noundef nonnull align 8 dereferenceable(24) %i.q, ptr noundef %i.v, i64 noundef %i.x)
          to label %bb.j unwind label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.y = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.z = load i8, ptr %i.j, align 8
  %i.aa = trunc i8 %i.z to i1
  br i1 %i.aa, label %bb.i, label %.body

bb.i:                                             ; preds = %bb.h
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !9
  %i.ad = load i64, ptr %i.j, align 8
  %i.ae = and i64 %i.ad, -2
  tail call void @_ZdlPvm(ptr noundef %i.ac, i64 noundef %i.ae) #20
  br label %.body

bb.j:                                             ; preds = %bb.g, %bb.f
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.ag = getelementptr inbounds nuw i8, ptr %2, i64 48
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(13) %i.af, ptr noundef nonnull align 8 dereferenceable(13) %i.ag, i64 13, i1 false)
  ret void

bb.k:                                             ; preds = %bb.e
  %i.ah = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %bb.h, %bb.i, %bb.k
  %eh.lpad-body = phi { ptr, i32 } [ %i.ah, %bb.k ], [ %i.y, %bb.i ], [ %i.y, %bb.h ]
  %i.ai = load i8, ptr %i.b, align 8
  %i.aj = trunc i8 %i.ai to i1
  br i1 %i.aj, label %bb.l, label %_ZN4gdcm10PrivateTagD2Ev.exit

bb.l:                                             ; preds = %.body
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !9
  %i.am = load i64, ptr %i.b, align 8
  %i.an = and i64 %i.am, -2
  tail call void @_ZdlPvm(ptr noundef %i.al, i64 noundef %i.an) #20
  br label %_ZN4gdcm10PrivateTagD2Ev.exit

_ZN4gdcm10PrivateTagD2Ev.exit:                    ; preds = %.body, %bb.l
  resume { ptr, i32 } %eh.lpad-body
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZNSt3__14pairIKN4gdcm10PrivateTagENS1_9DictEntryEED2Ev(ptr noundef nonnull align 8 dead_on_return(96) dereferenceable(96) %0) unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.c = load i8, ptr %i.b, align 8
  %i.d = trunc i8 %i.c to i1
  br i1 %i.d, label %bb.b, label %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit.i

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !9
  %i.g = load i64, ptr %i.b, align 8
  %i.h = and i64 %i.g, -2
  tail call void @_ZdlPvm(ptr noundef %i.f, i64 noundef %i.h) #20
  br label %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit.i

_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit.i: ; preds = %bb.b, %bb.a
  %i.i = load i8, ptr %i.a, align 8
  %i.j = trunc i8 %i.i to i1
  br i1 %i.j, label %bb.c, label %_ZN4gdcm9DictEntryD2Ev.exit

bb.c:                                             ; preds = %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit.i
end_hunk_0
