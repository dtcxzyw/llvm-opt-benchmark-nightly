Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/tev/original/bitstream?download=true
inline.NumInlined: 906
inline.NumDeleted: 403
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumRuntimeUnrolled: 9
loop-unroll.NumUnrolled: 11
begin_hunk_0_@_ZN12StreamWriter5writeERKNSt3__16vectorIhNS0_9allocatorIhEEEE:bb.a
}

; Function Attrs: mustprogress uwtable
define hidden void @_ZN12StreamWriter5writeERKS_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %1) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.std::__1::vector", align 8  ; 7 uses
  %3 = alloca %"class.std::__1::vector", align 8  ; 7 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 4 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !61   ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #25
  tail call void @llvm.experimental.noalias.scope.decl(metadata !205)
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %2, i8 0, i64 24, i1 false), !alias.scope !205
  %i.e = load ptr, ptr %1, align 8, !tbaa !63, !noalias !205 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !62, !noalias !205 ; 2 uses
  %i.h = ptrtoint ptr %i.g to i64
  %i.i = ptrtoint ptr %i.e to i64
  %i.j = sub i64 %i.h, %i.i                       ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.g, %i.e
  br i1 %.not.i.i.i, label %_ZNSt3__16vectorIhNS_9allocatorIhEEED2B8ne180100Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.k = icmp slt i64 %i.j, 0
  br i1 %i.k, label %bb.c, label %bb.f

bb.c:                                             ; preds = %bb.b
  invoke void @_ZNKSt3__16vectorIhNS_9allocatorIhEEE20__throw_length_errorB8ne180100Ev(ptr noundef nonnull align 8 dereferenceable(24) %2) #28
          to label %.noexc.i.i.i unwind label %bb.d

.noexc.i.i.i:                                     ; preds = %bb.c
  unreachable

bb.d:                                             ; preds = %bb.c
  %i.l = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.m = load ptr, ptr %2, align 8, !tbaa !63, !alias.scope !205 ; 3 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.m, null
  br i1 %.not.i.i.i.i.i, label %common.resume, label %bb.e

bb.e:                                             ; preds = %bb.d
  store ptr %i.m, ptr %i.c, align 8, !tbaa !62, !alias.scope !205
  %i.n = load ptr, ptr %i.d, align 8, !tbaa !72, !alias.scope !205
  br label %common.resume.sink.split

common.resume.sink.split:                         ; preds = %bb.e, %bb.l
  %.sink28 = phi ptr [ %i.ao, %bb.l ], [ %i.n, %bb.e ]
  %.sink27 = phi ptr [ %i.an, %bb.l ], [ %i.m, %bb.e ] ; 2 uses
  %common.resume.op.ph = phi { ptr, i32 } [ %i.am, %bb.l ], [ %i.l, %bb.e ]
  %i.o = ptrtoint ptr %.sink28 to i64
  %i.p = ptrtoint ptr %.sink27 to i64
  %i.q = sub i64 %i.o, %i.p
  call void @_ZdlPvm(ptr noundef nonnull %.sink27, i64 noundef %i.q) #26
  br label %common.resume

common.resume:                                    ; preds = %common.resume.sink.split, %bb.k, %bb.d
  %common.resume.op = phi { ptr, i32 } [ %i.l, %bb.d ], [ %i.am, %bb.k ], [ %common.resume.op.ph, %common.resume.sink.split ]
  resume { ptr, i32 } %common.resume.op

bb.f:                                             ; preds = %bb.b
  %i.r = add i64 %i.j, %i.b
  br label %_ZNSt3__16vectorIhNS_9allocatorIhEEED2B8ne180100Ev.exit

_ZNSt3__16vectorIhNS_9allocatorIhEEED2B8ne180100Ev.exit: ; preds = %bb.a, %bb.f
  %i.s = phi i64 [ %i.r, %bb.f ], [ %i.b, %bb.a ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #25
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !62
  %i.v = load ptr, ptr %0, align 8, !tbaa !63
  %i.w = ptrtoint ptr %i.u to i64
  %i.x = ptrtoint ptr %i.v to i64
  %i.y = sub i64 %i.w, %i.x                       ; 2 uses
  %i.z = icmp ugt i64 %i.s, %i.y
  br i1 %i.z, label %_ZNSt3__16vectorIhNS_9allocatorIhEEE6resizeEm.exit, label %bb.g

_ZNSt3__16vectorIhNS_9allocatorIhEEE6resizeEm.exit: ; preds = %_ZNSt3__16vectorIhNS_9allocatorIhEEED2B8ne180100Ev.exit
  %i.aa = sub nuw i64 %i.s, %i.y
  tail call void @_ZNSt3__16vectorIhNS_9allocatorIhEEE8__appendEm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %i.aa)
  br label %bb.g

bb.g:                                             ; preds = %_ZNSt3__16vectorIhNS_9allocatorIhEEE6resizeEm.exit, %_ZNSt3__16vectorIhNS_9allocatorIhEEED2B8ne180100Ev.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #25
  tail call void @llvm.experimental.noalias.scope.decl(metadata !206)
  %i.ab = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.ac = getelementptr inbounds nuw i8, ptr %3, i64 16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %3, i8 0, i64 24, i1 false), !alias.scope !206
  %i.ad = load ptr, ptr %1, align 8, !tbaa !63, !noalias !206 ; 3 uses
  %i.ae = load ptr, ptr %i.f, align 8, !tbaa !62, !noalias !206 ; 2 uses
  %i.af = ptrtoint ptr %i.ae to i64
  %i.ag = ptrtoint ptr %i.ad to i64
  %i.ah = sub i64 %i.af, %i.ag                    ; 4 uses
  %.not.i.i.i7 = icmp eq ptr %i.ae, %i.ad
  br i1 %.not.i.i.i7, label %_ZNK12StreamWriter8get_dataEv.exit12, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ai = icmp slt i64 %i.ah, 0
  br i1 %i.ai, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  invoke void @_ZNKSt3__16vectorIhNS_9allocatorIhEEE20__throw_length_errorB8ne180100Ev(ptr noundef nonnull align 8 dereferenceable(24) %3) #28
          to label %.noexc.i.i.i11 unwind label %bb.k

.noexc.i.i.i11:                                   ; preds = %bb.i
  unreachable

bb.j:                                             ; preds = %bb.h
  %i.aj = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ah) #27
          to label %_ZNSt3__16vectorIhNS_9allocatorIhEEE18__construct_at_endIPhS5_EEvT_T0_m.exit.i.i.i10 unwind label %bb.k, !noalias !206 ; 3 uses

_ZNSt3__16vectorIhNS_9allocatorIhEEE18__construct_at_endIPhS5_EEvT_T0_m.exit.i.i.i10: ; preds = %bb.j
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 %i.ah
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.aj, ptr align 1 %i.ad, i64 %i.ah, i1 false), !noalias !206
  %i.al = ptrtoint ptr %i.ak to i64
  br label %_ZNK12StreamWriter8get_dataEv.exit12

bb.k:                                             ; preds = %bb.j, %bb.i
  %i.am = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.an = load ptr, ptr %3, align 8, !tbaa !63, !alias.scope !206 ; 3 uses
  %.not.i.i.i.i.i8 = icmp eq ptr %i.an, null
  br i1 %.not.i.i.i.i.i8, label %common.resume, label %bb.l

bb.l:                                             ; preds = %bb.k
  store ptr %i.an, ptr %i.ab, align 8, !tbaa !62, !alias.scope !206
  %i.ao = load ptr, ptr %i.ac, align 8, !tbaa !72, !alias.scope !206
  br label %common.resume.sink.split

_ZNK12StreamWriter8get_dataEv.exit12:             ; preds = %bb.g, %_ZNSt3__16vectorIhNS_9allocatorIhEEE18__construct_at_endIPhS5_EEvT_T0_m.exit.i.i.i10
  %i.ap = phi i64 [ 0, %bb.g ], [ %i.al, %_ZNSt3__16vectorIhNS_9allocatorIhEEE18__construct_at_endIPhS5_EEvT_T0_m.exit.i.i.i10 ]
  %i.aq = phi ptr [ null, %bb.g ], [ %i.aj, %_ZNSt3__16vectorIhNS_9allocatorIhEEE18__construct_at_endIPhS5_EEvT_T0_m.exit.i.i.i10 ] ; 4 uses
  %i.ar = load ptr, ptr %0, align 8, !tbaa !63
  %i.as = load i64, ptr %i.a, align 8, !tbaa !61
  %i.at = getelementptr inbounds nuw i8, ptr %i.ar, i64 %i.as
  %i.au = ptrtoint ptr %i.aq to i64
  %i.av = sub i64 %i.ap, %i.au                    ; 3 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.at, ptr align 1 %i.aq, i64 %i.av, i1 false)
  %i.aw = load i64, ptr %i.a, align 8, !tbaa !61
  %i.ax = add i64 %i.av, %i.aw
  store i64 %i.ax, ptr %i.a, align 8, !tbaa !61
  %.not.i.i13 = icmp eq ptr %i.aq, null
  br i1 %.not.i.i13, label %_ZNSt3__16vectorIhNS_9allocatorIhEEED2B8ne180100Ev.exit14, label %bb.m

bb.m:                                             ; preds = %_ZNK12StreamWriter8get_dataEv.exit12
  tail call void @_ZdlPvm(ptr noundef nonnull %i.aq, i64 noundef %i.av) #26
  br label %_ZNSt3__16vectorIhNS_9allocatorIhEEED2B8ne180100Ev.exit14

_ZNSt3__16vectorIhNS_9allocatorIhEEED2B8ne180100Ev.exit14: ; preds = %_ZNK12StreamWriter8get_dataEv.exit12, %bb.m
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #25
  ret void
}

; Function Attrs: mustprogress uwtable
define hidden void @_ZN12StreamWriter4skipEi(ptr noundef nonnull align 8 dereferenceable(32) %0, i32 noundef %1) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !62
  %i.c = load ptr, ptr %0, align 8, !tbaa !63     ; 2 uses
  %i.d = ptrtoint ptr %i.b to i64
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = sub i64 %i.d, %i.e                       ; 3 uses
  %i.g = sext i32 %1 to i64                       ; 3 uses
  %i.h = add i64 %i.f, %i.g                       ; 3 uses
  %i.i = icmp ult i64 %i.f, %i.h
  br i1 %i.i, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @_ZNSt3__16vectorIhNS_9allocatorIhEEE8__appendEm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %i.g)
  br label %_ZNSt3__16vectorIhNS_9allocatorIhEEE6resizeEm.exit

bb.c:                                             ; preds = %bb.a
  %i.j = icmp ugt i64 %i.f, %i.h
  br i1 %i.j, label %bb.d, label %_ZNSt3__16vectorIhNS_9allocatorIhEEE6resizeEm.exit

bb.d:                                             ; preds = %bb.c
  %i.k = getelementptr inbounds nuw i8, ptr %i.c, i64 %i.h
  store ptr %i.k, ptr %i.a, align 8, !tbaa !62
  br label %_ZNSt3__16vectorIhNS_9allocatorIhEEE6resizeEm.exit

_ZNSt3__16vectorIhNS_9allocatorIhEEE6resizeEm.exit: ; preds = %bb.b, %bb.c, %bb.d
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.m = load i64, ptr %i.l, align 8, !tbaa !61
  %i.n = add i64 %i.m, %i.g
  store i64 %i.n, ptr %i.l, align 8, !tbaa !61
  ret void
}

; Function Attrs: mustprogress uwtable
define hidden void @_ZN12StreamWriter6insertEi(ptr noundef nonnull align 8 dereferenceable(32) %0, i32 noundef %1) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = icmp eq i32 %1, 0
  br i1 %i.a, label %bb.g, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !62   ; 2 uses
  %i.d = load ptr, ptr %0, align 8, !tbaa !63     ; 4 uses
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = ptrtoint ptr %i.d to i64                 ; 3 uses
  %i.g = sub i64 %i.e, %i.f                       ; 3 uses
  %i.h = sext i32 %1 to i64                       ; 4 uses
  %i.i = add i64 %i.g, %i.h                       ; 3 uses
  %i.j = icmp ult i64 %i.g, %i.i
  br i1 %i.j, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  tail call void @_ZNSt3__16vectorIhNS_9allocatorIhEEE8__appendEm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %i.h)
  %.pre = load ptr, ptr %i.b, align 8, !tbaa !62
  %.pre7 = load ptr, ptr %0, align 8, !tbaa !63   ; 2 uses
  %.pre8 = ptrtoint ptr %.pre7 to i64
  br label %_ZNSt3__16vectorIhNS_9allocatorIhEEE6resizeEm.exit

bb.d:                                             ; preds = %bb.b
  %i.k = icmp ugt i64 %i.g, %i.i
  br i1 %i.k, label %bb.e, label %_ZNSt3__16vectorIhNS_9allocatorIhEEE6resizeEm.exit

bb.e:                                             ; preds = %bb.d
  %i.l = getelementptr inbounds nuw i8, ptr %i.d, i64 %i.i ; 2 uses
  store ptr %i.l, ptr %i.b, align 8, !tbaa !62
  br label %_ZNSt3__16vectorIhNS_9allocatorIhEEE6resizeEm.exit

_ZNSt3__16vectorIhNS_9allocatorIhEEE6resizeEm.exit: ; preds = %bb.c, %bb.d, %bb.e
  %.pre-phi = phi i64 [ %.pre8, %bb.c ], [ %i.f, %bb.d ], [ %i.f, %bb.e ]
  %i.m = phi ptr [ %.pre7, %bb.c ], [ %i.d, %bb.d ], [ %i.d, %bb.e ]
  %i.n = phi ptr [ %.pre, %bb.c ], [ %i.c, %bb.d ], [ %i.l, %bb.e ]
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.p = load i64, ptr %i.o, align 8, !tbaa !61   ; 3 uses
  %i.q = ptrtoint ptr %i.n to i64
  %2 = add i64 %.pre-phi, %i.h
  %i.r = sub i64 %i.q, %2                         ; 2 uses
  %i.s = icmp ult i64 %i.p, %i.r
  br i1 %i.s, label %bb.f, label %bb.g

bb.f:                                             ; preds = %_ZNSt3__16vectorIhNS_9allocatorIhEEE6resizeEm.exit
  %i.t = getelementptr inbounds nuw i8, ptr %i.m, i64 %i.p ; 2 uses
  %i.u = getelementptr inbounds i8, ptr %i.t, i64 %i.h
  %i.v = sub nuw i64 %i.r, %i.p
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.u, ptr align 1 %i.t, i64 %i.v, i1 false)
  br label %bb.g

bb.g:                                             ; preds = %bb.a, %bb.f, %_ZNSt3__16vectorIhNS_9allocatorIhEEE6resizeEm.exit
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr writeonly captures(none), ptr readonly captures(none), i64, i1 immarg) #2

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN20StreamReader_istreamD2Ev(ptr noundef nonnull align 8 dead_on_return(56) dereferenceable(56) %0) unnamed_addr #12 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 72) (i8, ptr @_ZTV20StreamReader_istream, i64 16), ptr %0, align 8, !tbaa !12
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !15   ; 3 uses
  store ptr null, ptr %i.a, align 8, !tbaa !15
  %.not.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i, label %_ZNSt3__110unique_ptrINS_13basic_istreamIcNS_11char_traitsIcEEEENS_14default_deleteIS4_EEED2B8ne180100Ev.exit, label %_ZNKSt3__114default_deleteINS_13basic_istreamIcNS_11char_traitsIcEEEEEclB8ne180100EPS4_.exit.i.i

_ZNKSt3__114default_deleteINS_13basic_istreamIcNS_11char_traitsIcEEEEEclB8ne180100EPS4_.exit.i.i: ; preds = %bb.a
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !12
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.e = load ptr, ptr %i.d, align 8
  tail call void %i.e(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #25, !inline_history !0
  br label %_ZNSt3__110unique_ptrINS_13basic_istreamIcNS_11char_traitsIcEEEENS_14default_deleteIS4_EEED2B8ne180100Ev.exit

_ZNSt3__110unique_ptrINS_13basic_istreamIcNS_11char_traitsIcEEEENS_14default_deleteIS4_EEED2B8ne180100Ev.exit: ; preds = %bb.a, %_ZNKSt3__114default_deleteINS_13basic_istreamIcNS_11char_traitsIcEEEEEclB8ne180100EPS4_.exit.i.i
  store ptr getelementptr inbounds nuw inrange(-16, 72) (i8, ptr @_ZTV12StreamReader, i64 16), ptr %0, align 8, !tbaa !12
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.g = load i8, ptr %i.f, align 8
  %i.h = trunc i8 %i.g to i1
  br i1 %i.h, label %bb.b, label %_ZN12StreamReaderD2Ev.exit

bb.b:                                             ; preds = %_ZNSt3__110unique_ptrINS_13basic_istreamIcNS_11char_traitsIcEEEENS_14default_deleteIS4_EEED2B8ne180100Ev.exit
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !30
  %i.k = load i64, ptr %i.f, align 8
  %i.l = and i64 %i.k, -2
  tail call void @_ZdlPvm(ptr noundef %i.j, i64 noundef %i.l) #26, !inline_history !31
  br label %_ZN12StreamReaderD2Ev.exit

_ZN12StreamReaderD2Ev.exit:                       ; preds = %_ZNSt3__110unique_ptrINS_13basic_istreamIcNS_11char_traitsIcEEEENS_14default_deleteIS4_EEED2B8ne180100Ev.exit, %bb.b
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN20StreamReader_istreamD0Ev(ptr noundef nonnull align 8 dereferenceable(56) %0) unnamed_addr #12 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 72) (i8, ptr @_ZTV20StreamReader_istream, i64 16), ptr %0, align 8, !tbaa !12
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !15   ; 3 uses
  store ptr null, ptr %i.a, align 8, !tbaa !15
  %.not.i.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i.i, label %_ZNSt3__110unique_ptrINS_13basic_istreamIcNS_11char_traitsIcEEEENS_14default_deleteIS4_EEED2B8ne180100Ev.exit.i, label %_ZNKSt3__114default_deleteINS_13basic_istreamIcNS_11char_traitsIcEEEEEclB8ne180100EPS4_.exit.i.i.i

_ZNKSt3__114default_deleteINS_13basic_istreamIcNS_11char_traitsIcEEEEEclB8ne180100EPS4_.exit.i.i.i: ; preds = %bb.a
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !12
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.e = load ptr, ptr %i.d, align 8
  tail call void %i.e(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #25, !inline_history !207
  br label %_ZNSt3__110unique_ptrINS_13basic_istreamIcNS_11char_traitsIcEEEENS_14default_deleteIS4_EEED2B8ne180100Ev.exit.i

_ZNSt3__110unique_ptrINS_13basic_istreamIcNS_11char_traitsIcEEEENS_14default_deleteIS4_EEED2B8ne180100Ev.exit.i: ; preds = %_ZNKSt3__114default_deleteINS_13basic_istreamIcNS_11char_traitsIcEEEEEclB8ne180100EPS4_.exit.i.i.i, %bb.a
  store ptr getelementptr inbounds nuw inrange(-16, 72) (i8, ptr @_ZTV12StreamReader, i64 16), ptr %0, align 8, !tbaa !12
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.g = load i8, ptr %i.f, align 8
  %i.h = trunc i8 %i.g to i1
  br i1 %i.h, label %bb.b, label %_ZN20StreamReader_istreamD2Ev.exit

bb.b:                                             ; preds = %_ZNSt3__110unique_ptrINS_13basic_istreamIcNS_11char_traitsIcEEEENS_14default_deleteIS4_EEED2B8ne180100Ev.exit.i
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !30
  %i.k = load i64, ptr %i.f, align 8
  %i.l = and i64 %i.k, -2
  tail call void @_ZdlPvm(ptr noundef %i.j, i64 noundef %i.l) #26, !inline_history !208
  br label %_ZN20StreamReader_istreamD2Ev.exit

_ZN20StreamReader_istreamD2Ev.exit:               ; preds = %_ZNSt3__110unique_ptrINS_13basic_istreamIcNS_11char_traitsIcEEEENS_14default_deleteIS4_EEED2B8ne180100Ev.exit.i, %bb.b
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 56) #26
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden noundef i64 @_ZN20StreamReader_istream13request_rangeEmm(ptr noundef nonnull align 8 dereferenceable(56) %0, i64 noundef %1, i64 noundef %2) unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.b = load i64, ptr %i.a, align 8, !tbaa !209
  %.sroa.speculated = tail call i64 @llvm.umin.i64(i64 %i.b, i64 %2)
  ret i64 %.sroa.speculated
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN20StreamReader_istream13release_rangeEmm(ptr noundef nonnull align 8 dereferenceable(56) %0, i64 noundef %1, i64 noundef %2) unnamed_addr #5 comdat align 2 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN20StreamReader_istream18preload_range_hintEmm(ptr noundef nonnull align 8 dereferenceable(56) %0, i64 noundef %1, i64 noundef %2) unnamed_addr #5 comdat align 2 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef i64 @_ZN19StreamReader_memory13request_rangeEmm(ptr noundef nonnull align 8 dereferenceable(72) %0, i64 noundef %1, i64 noundef %2) unnamed_addr #5 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.b = load i64, ptr %i.a, align 8, !tbaa !34
  ret i64 %i.b
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN12StreamReader13release_rangeEmm(ptr noundef nonnull align 8 dereferenceable(40) %0, i64 noundef %1, i64 noundef %2) unnamed_addr #5 comdat align 2 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN12StreamReader18preload_range_hintEmm(ptr noundef nonnull align 8 dereferenceable(40) %0, i64 noundef %1, i64 noundef %2) unnamed_addr #5 comdat align 2 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN12StreamReaderD2Ev(ptr noundef nonnull align 8 dead_on_return(40) dereferenceable(40) %0) unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 72) (i8, ptr @_ZTV12StreamReader, i64 16), ptr %0, align 8, !tbaa !12
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = load i8, ptr %i.a, align 8
  %i.c = trunc i8 %i.b to i1
  br i1 %i.c, label %bb.b, label %_ZN5ErrorD2Ev.exit

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !30
  %i.f = load i64, ptr %i.a, align 8
  %i.g = and i64 %i.f, -2
  tail call void @_ZdlPvm(ptr noundef %i.e, i64 noundef %i.g) #26
  br label %_ZN5ErrorD2Ev.exit

_ZN5ErrorD2Ev.exit:                               ; preds = %bb.a, %bb.b
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN17StreamReader_CApiD0Ev(ptr noundef nonnull align 8 dereferenceable(56) %0) unnamed_addr #12 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 72) (i8, ptr @_ZTV12StreamReader, i64 16), ptr %0, align 8, !tbaa !12
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = load i8, ptr %i.a, align 8
  %i.c = trunc i8 %i.b to i1
  br i1 %i.c, label %bb.b, label %_ZN12StreamReaderD2Ev.exit

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !30
  %i.f = load i64, ptr %i.a, align 8
  %i.g = and i64 %i.f, -2
  tail call void @_ZdlPvm(ptr noundef %i.e, i64 noundef %i.g) #26, !inline_history !31
  br label %_ZN12StreamReaderD2Ev.exit

_ZN12StreamReaderD2Ev.exit:                       ; preds = %bb.a, %bb.b
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 56) #26
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden noundef i64 @_ZNK17StreamReader_CApi12get_positionEv(ptr noundef nonnull align 8 dereferenceable(56) %0) unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !40
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !81
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !41
  %i.g = tail call noundef i64 %i.d(ptr noundef %i.f)
  ret i64 %i.g
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZN17StreamReader_CApi4readEPvm(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr noundef %1, i64 noundef %2) unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !40
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !210
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !41
  %i.g = tail call noundef i32 %i.d(ptr noundef %1, i64 noundef %2, ptr noundef %i.f)
  %.not = icmp eq i32 %i.g, 0
  ret i1 %.not
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZN17StreamReader_CApi4seekEm(ptr noundef nonnull align 8 dereferenceable(56) %0, i64 noundef %1) unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !40
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 24
end_hunk_0
