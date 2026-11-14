Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/z3/original/dl_mk_magic_symbolic?download=true
inline.NumInlined: 311
inline.NumDeleted: 166
begin_hunk_0_@_ZN6vectorIP3appLb0EjE13expand_vectorEv:bb.a
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.q, ptr noundef nonnull align 8 dereferenceable(1) %i.s, i64 %i.x, i1 false)
  br label %_ZN17default_exceptionC2EONSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.f
  store ptr %i.r, ptr %i.p, align 8, !tbaa !92
  %i.y = load i64, ptr %i.s, align 8, !tbaa !94
  store i64 %i.y, ptr %i.q, align 8, !tbaa !94
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.pre = load i64, ptr %.phi.trans.insert, align 8, !tbaa !93
  br label %_ZN17default_exceptionC2EONSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit

_ZN17default_exceptionC2EONSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit: ; preds = %bb.g, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  %i.z = phi i64 [ %i.v, %bb.g ], [ %.pre, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ]
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.ab = getelementptr inbounds nuw i8, ptr %i.o, i64 16
  store i64 %i.z, ptr %i.ab, align 8, !tbaa !93
  store ptr %i.s, ptr %1, align 8, !tbaa !92
  store i64 0, ptr %i.aa, align 8, !tbaa !93
  store i8 0, ptr %i.s, align 8, !tbaa !94
  invoke void @__cxa_throw(ptr nonnull %i.o, ptr nonnull @_ZTI17default_exception, ptr nonnull @_ZN17default_exceptionD2Ev) #20
          to label %bb.m unwind label %bb.h

bb.h:                                             ; preds = %_ZN17default_exceptionC2EONSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit
  %i.ac = landingpad { ptr, i32 }
          cleanup
  %i.ad = load ptr, ptr %1, align 8, !tbaa !92    ; 2 uses
  %i.ae = icmp eq ptr %i.ad, %i.s
  br i1 %i.ae, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i29

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i29: ; preds = %bb.h
  %i.af = load i64, ptr %i.s, align 8, !tbaa !94
  %i.ag = add i64 %i.af, 1
  call void @_ZdlPvm(ptr noundef %i.ad, i64 noundef %i.ag) #21
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread: ; preds = %bb.h, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i29
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #18
  br label %bb.j

bb.i:                                             ; preds = %bb.e
  %i.ah = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #18
  call void @__cxa_free_exception(ptr %i.o) #18
  br label %bb.j

bb.j:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread, %bb.i
  %.pn32 = phi { ptr, i32 } [ %i.ac, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread ], [ %i.ah, %bb.i ]
  resume { ptr, i32 } %.pn32

bb.k:                                             ; preds = %bb.d
  %i.ai = zext i32 %i.l to i64
  %i.aj = tail call noalias noundef ptr @_ZN6memory10reallocateEPvm(ptr noundef nonnull %i.f, i64 noundef %i.ai) ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 8
  store ptr %i.ak, ptr %0, align 8, !tbaa !78
  store i32 %i.j, ptr %i.aj, align 4, !tbaa !74
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.b
  ret void

bb.m:                                             ; preds = %_ZN17default_exceptionC2EONSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit
  unreachable
}

; Function Attrs: nounwind
declare void @_ZN7datalog8rule_setD1Ev(ptr noundef nonnull align 8 dead_on_return(248) dereferenceable(248)) unnamed_addr #13

declare void @_ZN7datalog12rule_manager7dec_refEPNS_4ruleE(ptr noundef nonnull align 8 dereferenceable(1104), ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN6vectorIbLb0EjE13expand_vectorEv(ptr noundef nonnull align 8 dereferenceable(8) %0) local_unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %2 = alloca %"class.std::allocator", align 1    ; 4 uses
  %i.a = load ptr, ptr %0, align 8, !tbaa !80     ; 2 uses
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.c = tail call noalias noundef ptr @_ZN6memory8allocateEm(i64 noundef 10) ; 3 uses
  store i32 2, ptr %i.c, align 4, !tbaa !74
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 4
  store i32 0, ptr %i.d, align 4, !tbaa !74
  %i.e = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store ptr %i.e, ptr %0, align 8, !tbaa !80
  br label %bb.k

bb.c:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds i8, ptr %i.a, i64 -8 ; 2 uses
  %i.g = load i32, ptr %i.f, align 4, !tbaa !74   ; 3 uses
  %i.h = mul i32 %i.g, 3
  %i.i = add i32 %i.h, 1
  %i.j = lshr i32 %i.i, 1                         ; 3 uses
  %narrow = add nuw i32 %i.j, 8                   ; 2 uses
  %.not = icmp ugt i32 %i.j, %i.g
  %i.k = add i32 %i.g, 8
  %.not27 = icmp ugt i32 %narrow, %i.k
  %or.cond = select i1 %.not, i1 %.not27, i1 false
  br i1 %or.cond, label %bb.j, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.l = tail call ptr @__cxa_allocate_exception(i64 40) #18 ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #18
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #18
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull @.str.2, ptr noundef nonnull align 1 dereferenceable(1) %2)
          to label %bb.e unwind label %bb.h

bb.e:                                             ; preds = %bb.d
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTV17default_exception, i64 16), ptr %i.l, align 8, !tbaa !15
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 8 ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.l, i64 24 ; 3 uses
  store ptr %i.n, ptr %i.m, align 8, !tbaa !89
  %i.o = load ptr, ptr %1, align 8, !tbaa !92     ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 7 uses
  %i.q = icmp eq ptr %i.o, %i.p
  br i1 %i.q, label %bb.f, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

bb.f:                                             ; preds = %bb.e
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.s = load i64, ptr %i.r, align 8, !tbaa !93   ; 3 uses
  %i.t = icmp ult i64 %i.s, 16
  call void @llvm.assume(i1 %i.t)
  %i.u = add nuw nsw i64 %i.s, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.n, ptr noundef nonnull align 8 dereferenceable(1) %i.p, i64 %i.u, i1 false)
  br label %_ZN17default_exceptionC2EONSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.e
  store ptr %i.o, ptr %i.m, align 8, !tbaa !92
  %i.v = load i64, ptr %i.p, align 8, !tbaa !94
  store i64 %i.v, ptr %i.n, align 8, !tbaa !94
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.pre = load i64, ptr %.phi.trans.insert, align 8, !tbaa !93
  br label %_ZN17default_exceptionC2EONSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit

_ZN17default_exceptionC2EONSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit: ; preds = %bb.f, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  %i.w = phi i64 [ %i.s, %bb.f ], [ %.pre, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ]
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.y = getelementptr inbounds nuw i8, ptr %i.l, i64 16
  store i64 %i.w, ptr %i.y, align 8, !tbaa !93
  store ptr %i.p, ptr %1, align 8, !tbaa !92
  store i64 0, ptr %i.x, align 8, !tbaa !93
  store i8 0, ptr %i.p, align 8, !tbaa !94
  invoke void @__cxa_throw(ptr nonnull %i.l, ptr nonnull @_ZTI17default_exception, ptr nonnull @_ZN17default_exceptionD2Ev) #20
          to label %bb.l unwind label %bb.g

bb.g:                                             ; preds = %_ZN17default_exceptionC2EONSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit
  %i.z = landingpad { ptr, i32 }
          cleanup
  %i.aa = load ptr, ptr %1, align 8, !tbaa !92    ; 2 uses
  %i.ab = icmp eq ptr %i.aa, %i.p
  br i1 %i.ab, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i29

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i29: ; preds = %bb.g
  %i.ac = load i64, ptr %i.p, align 8, !tbaa !94
  %i.ad = add i64 %i.ac, 1
  call void @_ZdlPvm(ptr noundef %i.aa, i64 noundef %i.ad) #21
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread: ; preds = %bb.g, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i29
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #18
  br label %bb.i

bb.h:                                             ; preds = %bb.d
  %i.ae = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #18
  call void @__cxa_free_exception(ptr %i.l) #18
  br label %bb.i

bb.i:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread, %bb.h
  %.pn32 = phi { ptr, i32 } [ %i.z, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread ], [ %i.ae, %bb.h ]
  resume { ptr, i32 } %.pn32

bb.j:                                             ; preds = %bb.c
  %i.af = zext i32 %narrow to i64
  %i.ag = tail call noalias noundef ptr @_ZN6memory10reallocateEPvm(ptr noundef nonnull %i.f, i64 noundef %i.af) ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 8
  store ptr %i.ah, ptr %0, align 8, !tbaa !80
  store i32 %i.j, ptr %i.ag, align 4, !tbaa !74
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.b
  ret void

bb.l:                                             ; preds = %_ZN17default_exceptionC2EONSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit
  unreachable
}

declare void @_ZN7datalog12rule_manager7inc_refEPNS_4ruleE(ptr noundef nonnull align 8 dereferenceable(1104), ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN13string_bufferILj64EE6appendEi(ptr noundef nonnull align 8 dereferenceable(88) %0, i32 noundef %1) local_unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #18
  tail call void @llvm.experimental.noalias.scope.decl(metadata !301)
  %i.a = tail call i32 @llvm.abs.i32(i32 %1, i1 false) ; 5 uses
  %i.b = icmp ult i32 %i.a, 10
  br i1 %i.b, label %_ZNSt8__detail14__to_chars_lenIjEEjT_i.exit.i, label %.lr.ph.i.i.a

.lr.ph.i.i.a:                                     ; preds = %bb.a, %bb.g
  %.030.i.i = phi i32 [ %7, %bb.g ], [ 1, %bb.a ] ; 4 uses
  %.02329.i.i = phi i32 [ %6, %bb.g ], [ %i.a, %bb.a ] ; 5 uses
  %i.c = icmp ult i32 %.02329.i.i, 100
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %.lr.ph.i.i.a
  %3 = add i32 %.030.i.i, 1
  br label %_ZNSt8__detail14__to_chars_lenIjEEjT_i.exit.i

bb.c:                                             ; preds = %.lr.ph.i.i.a
  %i.d = icmp ult i32 %.02329.i.i, 1000
  br i1 %i.d, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %4 = add i32 %.030.i.i, 2
  br label %_ZNSt8__detail14__to_chars_lenIjEEjT_i.exit.i

bb.e:                                             ; preds = %bb.c
  %i.e = icmp ult i32 %.02329.i.i, 10000
  br i1 %i.e, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %5 = add i32 %.030.i.i, 3
  br label %_ZNSt8__detail14__to_chars_lenIjEEjT_i.exit.i

bb.g:                                             ; preds = %bb.e
  %6 = udiv i32 %.02329.i.i, 10000
  %7 = add i32 %.030.i.i, 4                       ; 2 uses
  %8 = icmp ult i32 %.02329.i.i, 100000
  br i1 %8, label %_ZNSt8__detail14__to_chars_lenIjEEjT_i.exit.i, label %.lr.ph.i.i.a, !llvm.loop !299

_ZNSt8__detail14__to_chars_lenIjEEjT_i.exit.i:    ; preds = %bb.g, %bb.f, %bb.d, %bb.b, %bb.a
  %.022.i.i = phi i32 [ %5, %bb.f ], [ %3, %bb.b ], [ %4, %bb.d ], [ 1, %bb.a ], [ %7, %bb.g ] ; 2 uses
  %.lobit.i = lshr i32 %1, 31                     ; 2 uses
  %i.f = add i32 %.022.i.i, %.lobit.i             ; 3 uses
  %i.g = zext i32 %i.f to i64                     ; 5 uses
  %i.h = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 10 uses
  store ptr %i.h, ptr %2, align 8, !tbaa !89, !alias.scope !301
  %i.i = icmp ugt i32 %i.f, 15
  br i1 %i.i, label %bb.h, label %bb.i

bb.h:                                             ; preds = %_ZNSt8__detail14__to_chars_lenIjEEjT_i.exit.i
  %i.j = add nuw nsw i64 %i.g, 1
  %i.k = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.j) #23
          to label %.noexc.i unwind label %bb.o   ; 2 uses

.noexc.i:                                         ; preds = %bb.h
  store ptr %i.k, ptr %2, align 8, !tbaa !92, !alias.scope !301
  store i64 %i.g, ptr %i.h, align 8, !tbaa !94, !alias.scope !301
  br label %bb.k

bb.i:                                             ; preds = %_ZNSt8__detail14__to_chars_lenIjEEjT_i.exit.i
  switch i32 %i.f, label %bb.k [
    i32 0, label %bb.l
    i32 1, label %bb.j
  ]

bb.j:                                             ; preds = %bb.i
  store i8 45, ptr %i.h, align 8, !tbaa !94, !alias.scope !301
  br label %bb.l

bb.k:                                             ; preds = %bb.i, %.noexc.i
  %i.l = phi ptr [ %i.k, %.noexc.i ], [ %i.h, %bb.i ] ; 2 uses
  call void @llvm.memset.p0.i64(ptr nonnull align 1 %i.l, i8 45, i64 %i.g, i1 false)
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j, %bb.i
  %i.m = phi ptr [ %i.h, %bb.i ], [ %i.l, %bb.k ], [ %i.h, %bb.j ]
  %i.n = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i64 %i.g, ptr %i.n, align 8, !tbaa !93, !alias.scope !301
  %i.o = getelementptr inbounds nuw i8, ptr %i.m, i64 %i.g
  store i8 0, ptr %i.o, align 1, !tbaa !94
  %i.p = zext nneg i32 %.lobit.i to i64
  %i.q = load ptr, ptr %2, align 8, !tbaa !92, !alias.scope !301
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 %i.p ; 4 uses
  %i.s = icmp ugt i32 %i.a, 99
  br i1 %i.s, label %.lr.ph.preheader.i.i, label %._crit_edge.i.i

.lr.ph.preheader.i.i:                             ; preds = %bb.l
  %i.t = add i32 %.022.i.i, -1
  br label %.lr.ph.i11.i.a

.lr.ph.i11.i.a:                                   ; preds = %.lr.ph.i11.i.a, %.lr.ph.preheader.i.i
  %.020.i.i = phi i32 [ %i.w, %.lr.ph.i11.i.a ], [ %i.a, %.lr.ph.preheader.i.i ] ; 3 uses
  %.01819.i.i = phi i32 [ %9, %.lr.ph.i11.i.a ], [ %i.t, %.lr.ph.preheader.i.i ] ; 3 uses
  %i.u = urem i32 %.020.i.i, 100
  %i.v = shl nuw nsw i32 %i.u, 1
  %i.w = udiv i32 %.020.i.i, 100                  ; 2 uses
  %i.x = zext nneg i32 %i.v to i64
  %i.y = getelementptr inbounds nuw i8, ptr @__const._ZNSt8__detail18__to_chars_10_implIjEEvPcjT_.__digits, i64 %i.x ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 1
  %i.aa = load i8, ptr %i.z, align 1, !tbaa !94, !noalias !301
  %i.ab = zext i32 %.01819.i.i to i64
  %i.ac = getelementptr inbounds nuw i8, ptr %i.r, i64 %i.ab
  store i8 %i.aa, ptr %i.ac, align 1, !tbaa !94
  %i.ad = load i8, ptr %i.y, align 2, !tbaa !94, !noalias !301
  %i.ae = add i32 %.01819.i.i, -1
  %i.af = zext i32 %i.ae to i64
  %i.ag = getelementptr inbounds nuw i8, ptr %i.r, i64 %i.af
  store i8 %i.ad, ptr %i.ag, align 1, !tbaa !94
  %9 = add i32 %.01819.i.i, -2
  %i.ah = icmp ugt i32 %.020.i.i, 9999
  br i1 %i.ah, label %.lr.ph.i11.i.a, label %._crit_edge.i.i, !llvm.loop !300

._crit_edge.i.i:                                  ; preds = %.lr.ph.i11.i.a, %bb.l
  %.0.lcssa.i.i = phi i32 [ %i.a, %bb.l ], [ %i.w, %.lr.ph.i11.i.a ] ; 3 uses
  %i.ai = icmp samesign ugt i32 %.0.lcssa.i.i, 9
  br i1 %i.ai, label %bb.m, label %bb.n

bb.m:                                             ; preds = %._crit_edge.i.i
  %i.aj = shl nuw nsw i32 %.0.lcssa.i.i, 1
  %i.ak = zext nneg i32 %i.aj to i64
  %i.al = getelementptr inbounds nuw i8, ptr @__const._ZNSt8__detail18__to_chars_10_implIjEEvPcjT_.__digits, i64 %i.ak ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 1
  %i.an = load i8, ptr %i.am, align 1, !tbaa !94, !noalias !301
  %i.ao = getelementptr inbounds nuw i8, ptr %i.r, i64 1
  store i8 %i.an, ptr %i.ao, align 1, !tbaa !94
  %i.ap = load i8, ptr %i.al, align 2, !tbaa !94, !noalias !301
  br label %_ZNSt7__cxx119to_stringEi.exit

bb.n:                                             ; preds = %._crit_edge.i.i
  %i.aq = trunc nuw nsw i32 %.0.lcssa.i.i to i8
  %i.ar = or disjoint i8 %i.aq, 48
  br label %_ZNSt7__cxx119to_stringEi.exit

bb.o:                                             ; preds = %bb.h
  %i.as = landingpad { ptr, i32 }
          catch ptr null
  %i.at = extractvalue { ptr, i32 } %i.as, 0
  call void @__clang_call_terminate(ptr %i.at) #19
  unreachable

_ZNSt7__cxx119to_stringEi.exit:                   ; preds = %bb.m, %bb.n
  %storemerge.i.i = phi i8 [ %i.ar, %bb.n ], [ %i.ap, %bb.m ]
  store i8 %storemerge.i.i, ptr %i.r, align 1, !tbaa !94
  %i.au = load ptr, ptr %2, align 8, !tbaa !92    ; 2 uses
  %i.av = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.au) #22 ; 3 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 5 uses
  %i.ax = load i64, ptr %i.aw, align 8, !tbaa !108 ; 2 uses
  %i.ay = add i64 %i.ax, %i.av                    ; 2 uses
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 3 uses
  %i.ba = load i64, ptr %i.az, align 8, !tbaa !109 ; 2 uses
  %i.bb = icmp ugt i64 %i.ay, %i.ba
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 3 uses
  br i1 %i.bb, label %.lr.ph.i, label %.._crit_edge_crit_edge.i

.._crit_edge_crit_edge.i:                         ; preds = %_ZNSt7__cxx119to_stringEi.exit
  %.pre.i = load ptr, ptr %i.bc, align 8, !tbaa !107
  br label %bb.q

.lr.ph.i:                                         ; preds = %_ZNSt7__cxx119to_stringEi.exit, %_ZN13string_bufferILj64EE6expandEv.exit.i
  %i.bd = phi i64 [ %i.be, %_ZN13string_bufferILj64EE6expandEv.exit.i ], [ %i.ba, %_ZNSt7__cxx119to_stringEi.exit ]
  %i.be = shl i64 %i.bd, 1                        ; 4 uses
  %i.bf = invoke noalias noundef ptr @_ZN6memory8allocateEm(i64 noundef %i.be)
          to label %.noexc unwind label %bb.r     ; 3 uses

.noexc:                                           ; preds = %.lr.ph.i
  %i.bg = load ptr, ptr %i.bc, align 8, !tbaa !107 ; 3 uses
  %i.bh = load i64, ptr %i.aw, align 8, !tbaa !108
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.bf, ptr align 1 %i.bg, i64 %i.bh, i1 false)
  %i.bi = load i64, ptr %i.az, align 8, !tbaa !109
  %i.bj = icmp ult i64 %i.bi, 65
  %i.bk = icmp eq ptr %i.bg, null
  %or.cond.i.i = select i1 %i.bj, i1 true, i1 %i.bk
  br i1 %or.cond.i.i, label %_ZN13string_bufferILj64EE6expandEv.exit.i, label %bb.p

bb.p:                                             ; preds = %.noexc
  invoke void @_ZN6memory10deallocateEPv(ptr noundef nonnull %i.bg)
          to label %_ZN13string_bufferILj64EE6expandEv.exit.i unwind label %bb.r

_ZN13string_bufferILj64EE6expandEv.exit.i:        ; preds = %bb.p, %.noexc
  store i64 %i.be, ptr %i.az, align 8, !tbaa !109
  store ptr %i.bf, ptr %i.bc, align 8, !tbaa !107
  %i.bl = icmp ugt i64 %i.ay, %i.be
  br i1 %i.bl, label %.lr.ph.i, label %._crit_edge.loopexit.i, !llvm.loop !1

._crit_edge.loopexit.i:                           ; preds = %_ZN13string_bufferILj64EE6expandEv.exit.i
  %.pre6.i = load i64, ptr %i.aw, align 8, !tbaa !108
  br label %bb.q

bb.q:                                             ; preds = %._crit_edge.loopexit.i, %.._crit_edge_crit_edge.i
  %i.bm = phi i64 [ %i.ax, %.._crit_edge_crit_edge.i ], [ %.pre6.i, %._crit_edge.loopexit.i ]
  %i.bn = phi ptr [ %.pre.i, %.._crit_edge_crit_edge.i ], [ %i.bf, %._crit_edge.loopexit.i ]
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bn, i64 %i.bm
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.bo, ptr nonnull align 1 %i.au, i64 %i.av, i1 false)
  %i.bp = load i64, ptr %i.aw, align 8, !tbaa !108
  %i.bq = add i64 %i.bp, %i.av
  store i64 %i.bq, ptr %i.aw, align 8, !tbaa !108
  %i.br = load ptr, ptr %2, align 8, !tbaa !92    ; 2 uses
  %i.bs = icmp eq ptr %i.br, %i.h
  br i1 %i.bs, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.q
  %i.bt = load i64, ptr %i.h, align 8, !tbaa !94
  %i.bu = add i64 %i.bt, 1
  call void @_ZdlPvm(ptr noundef %i.br, i64 noundef %i.bu) #21
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.q, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #18
  ret void

bb.r:                                             ; preds = %bb.p, %.lr.ph.i
  %i.bv = landingpad { ptr, i32 }
          cleanup
  %i.bw = load ptr, ptr %2, align 8, !tbaa !92    ; 2 uses
  %i.bx = icmp eq ptr %i.bw, %i.h
  br i1 %i.bx, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4: ; preds = %bb.r
  %i.by = load i64, ptr %i.h, align 8, !tbaa !94
  %i.bz = add i64 %i.by, 1
  call void @_ZdlPvm(ptr noundef %i.bw, i64 noundef %i.bz) #21
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6: ; preds = %bb.r, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #18
  resume { ptr, i32 } %i.bv
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #14

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #15

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.abs.i32(i32, i1 immarg) #16

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #17

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #4 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { inlinehint mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { cold noreturn }
attributes #7 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { noinline noreturn nounwind uwtable "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { cold nofree noreturn }
attributes #11 = { nobuiltin allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #15 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #16 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #17 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #18 = { nounwind }
attributes #19 = { noreturn nounwind }
attributes #20 = { noreturn }
attributes #21 = { builtin nounwind }
attributes #22 = { nounwind willreturn memory(read) }
attributes #23 = { builtin allocsize(0) }

!llvm.module.flags = !{!2, !3}
!llvm.ident = !{!4}
!llvm.errno.tbaa = !{!9}

!0 = distinct !{!0, !86}
!1 = distinct !{!1, !86}
!2 = !{i32 8, !"PIC Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"Ubuntu clang version 24.0.0 (++20260804081852+44c6aed9bd9b-1~exp1~20260804202019.1766)"}
!5 = !{!"Simple C++ TBAA"}
!6 = !{!"omnipotent char", !5, i64 0}
!7 = !{!"int", !6, i64 0}
!8 = !{!"__libc_errno", !7, i64 0}
!9 = !{!8, !7, i64 0}
!10 = !{!"bool", !6, i64 0}
!11 = !{!"any pointer", !6, i64 0}
!12 = !{!"p1 _ZTSN7datalog16rule_transformerE", !11, i64 0}
!13 = !{!"_ZTSN7datalog16rule_transformer6pluginE", !7, i64 8, !10, i64 12, !12, i64 16}
!14 = !{!"vtable pointer", !5, i64 0}
!15 = !{!14, !14, i64 0}
!16 = !{!"p1 _ZTS11ast_manager", !11, i64 0}
!17 = !{!"p1 omnipotent char", !11, i64 0}
!18 = !{!"_ZTS6symbol", !17, i64 0}
!19 = !{!"any p2 pointer", !11, i64 0}
!20 = !{!"p2 _ZTS4expr", !19, i64 0}
!21 = !{!"_ZTS6vectorIP4exprLb0EjE", !20, i64 0}
!22 = !{!"_ZTS10ptr_vectorI4exprE", !21, i64 0}
!23 = !{!"_ZTS19ref_manager_wrapperI3app11ast_managerE", !16, i64 0}
!24 = !{!"p2 _ZTS3app", !19, i64 0}
!25 = !{!"_ZTS6vectorIP3appLb0EjE", !24, i64 0}
!26 = !{!"p1 _ZTS14obj_hash_entryI4exprE", !11, i64 0}
!27 = !{!"_ZTS14core_hashtableI14obj_hash_entryI4exprE12obj_ptr_hashIS1_E6ptr_eqIS1_EE", !26, i64 0, !7, i64 8, !7, i64 12, !7, i64 16}
!28 = !{!"_ZTS13obj_hashtableI4exprE", !27, i64 0}
!29 = !{!"p1 _ZTS3app", !11, i64 0}
!30 = !{!"_ZTS7obj_refI3app11ast_managerE", !29, i64 0, !16, i64 8}
!31 = !{!"p1 _ZTSN7datalog7contextE", !11, i64 0}
!32 = !{!"_ZTS16expr_sparse_mark", !28, i64 0}
!33 = !{!"p1 bool", !11, i64 0}
!34 = !{!"_ZTS6vectorIbLb0EjE", !33, i64 0}
!35 = !{!"p1 _ZTS9func_decl", !11, i64 0}
!36 = !{!"p1 _ZTSN7datalog12rule_managerE", !11, i64 0}
!37 = !{!"p1 _ZTSN7datalog4ruleE", !11, i64 0}
!38 = !{!"p2 _ZTSN7datalog4ruleE", !19, i64 0}
!39 = !{!"_ZTS6vectorIPN7datalog4ruleELb0EjE", !38, i64 0}
!40 = !{!"_ZTS10ptr_vectorIN7datalog4ruleEE", !39, i64 0}
!41 = !{!"p1 _ZTS14obj_hash_entryI9func_declE", !11, i64 0}
!42 = !{!"_ZTS14core_hashtableI14obj_hash_entryI9func_declE12obj_ptr_hashIS1_E6ptr_eqIS1_EE", !41, i64 0, !7, i64 8, !7, i64 12, !7, i64 16}
!43 = !{!"_ZTS13obj_hashtableI9func_declE", !42, i64 0}
!44 = !{!"_ZTS19ref_manager_wrapperIN7datalog4ruleENS0_12rule_managerEE", !36, i64 0}
!45 = !{!"_ZTS15ref_vector_coreIN7datalog4ruleE19ref_manager_wrapperIS1_NS0_12rule_managerEEE", !44, i64 0, !40, i64 8}
!46 = !{!"_ZTS10ref_vectorIN7datalog4ruleENS0_12rule_managerEE", !45, i64 0}
!47 = !{!"p1 _ZTSN7obj_mapI9func_declP10ptr_vectorIN7datalog4ruleEEE13obj_map_entryE", !11, i64 0}
!48 = !{!"_ZTS14core_hashtableIN7obj_mapI9func_declP10ptr_vectorIN7datalog4ruleEEE13obj_map_entryE8obj_hashINS7_8key_dataEE10default_eqISA_EE", !47, i64 0, !7, i64 8, !7, i64 12, !7, i64 16}
!49 = !{!"_ZTS7obj_mapI9func_declP10ptr_vectorIN7datalog4ruleEEE", !48, i64 0}
!50 = !{!"p1 _ZTSN7obj_mapI9func_declP13obj_hashtableIS0_EE13obj_map_entryE", !11, i64 0}
!51 = !{!"_ZTS14core_hashtableIN7obj_mapI9func_declP13obj_hashtableIS1_EE13obj_map_entryE8obj_hashINS5_8key_dataEE10default_eqIS8_EE", !50, i64 0, !7, i64 8, !7, i64 12, !7, i64 16}
!52 = !{!"_ZTS7obj_mapI9func_declP13obj_hashtableIS0_EE", !51, i64 0}
!53 = !{!"_ZTSN7datalog17rule_dependenciesE", !52, i64 0, !31, i64 24, !22, i64 32, !32, i64 40, !43, i64 64}
!54 = !{!"p1 _ZTSN7datalog15rule_stratifierE", !11, i64 0}
!55 = !{!"_ZTS10scoped_ptrIN7datalog15rule_stratifierEE", !54, i64 0}
!56 = !{!"p1 _ZTSN7obj_mapI9func_declPS0_E13obj_map_entryE", !11, i64 0}
end_hunk_0
begin_hunk_1_@llvm.experimental.noalias.scope.decl
!99 = !{!82, !7, i64 12}
!100 = !{!42, !7, i64 8}
!101 = !{!42, !41, i64 0}
!102 = !{!"_ZTS14obj_hash_entryI9func_declE", !35, i64 0}
!103 = !{!102, !35, i64 0}
!104 = !{!61, !60, i64 0}
!105 = !{!35, !35, i64 0}
!106 = !{!"_ZTS13string_bufferILj64EE", !6, i64 0, !17, i64 64, !90, i64 72, !90, i64 80}
!107 = !{!106, !17, i64 64}
!108 = !{!106, !90, i64 72}
!109 = !{!106, !90, i64 80}
!110 = !{!17, !17, i64 0}
!111 = !{!"_ZTS7obj_refI9func_decl11ast_managerE", !35, i64 0, !16, i64 8}
!112 = !{!111, !35, i64 0}
!113 = !{!"p1 _ZTS9decl_info", !11, i64 0}
!114 = !{!"_ZTS4decl", !82, i64 0, !18, i64 16, !113, i64 24}
!115 = !{!"p1 _ZTS4sort", !11, i64 0}
!116 = !{!"_ZTS9func_decl", !114, i64 0, !7, i64 32, !115, i64 40, !6, i64 48}
!117 = !{!116, !7, i64 32}
!118 = !{!116, !115, i64 40}
!119 = !{!97, !7, i64 24}
!120 = !{!42, !7, i64 16}
!121 = !{!13, !7, i64 8}
!122 = !{!13, !10, i64 12}
!123 = !{!13, !12, i64 16}
!124 = !{!"p1 _ZTSN7datalog20register_engine_baseE", !11, i64 0}
!125 = !{!"p1 _ZTS10smt_params", !11, i64 0}
!126 = !{!"p1 _ZTS6params", !11, i64 0}
!127 = !{!"_ZTS10params_ref", !126, i64 0}
!128 = !{!"p1 _ZTS9fp_params", !11, i64 0}
!129 = !{!"p1 _ZTS10arith_util", !11, i64 0}
!130 = !{!"_ZTS10scoped_ptrI10arith_utilE", !129, i64 0}
!131 = !{!"p1 _ZTS7bv_util", !11, i64 0}
!132 = !{!"_ZTS10scoped_ptrI7bv_utilE", !131, i64 0}
!133 = !{!"_ZTSN7datalog12dl_decl_utilE", !16, i64 0, !130, i64 8, !132, i64 16, !7, i64 24}
!134 = !{!"p1 _ZTSN11th_rewriter3impE", !11, i64 0}
!135 = !{!"_ZTS11th_rewriter", !134, i64 0, !127, i64 8}
!136 = !{!"p2 _ZTS9act_cache", !19, i64 0}
!137 = !{!"_ZTS6vectorIP9act_cacheLb0EjE", !136, i64 0}
!138 = !{!"_ZTS10ptr_vectorI9act_cacheE", !137, i64 0}
!139 = !{!"p1 _ZTS9act_cache", !11, i64 0}
!140 = !{!"p1 _ZTSN13rewriter_core5frameE", !11, i64 0}
!141 = !{!"_ZTS6vectorIN13rewriter_core5frameELb0EjE", !140, i64 0}
!142 = !{!"_ZTS7svectorIN13rewriter_core5frameEjE", !141, i64 0}
!143 = !{!"_ZTS19ref_manager_wrapperI4expr11ast_managerE", !16, i64 0}
!144 = !{!"_ZTS15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE", !143, i64 0, !22, i64 8}
!145 = !{!"_ZTS10ref_vectorI4expr11ast_managerE", !144, i64 0}
!146 = !{!"_ZTS10ptr_vectorI3appE", !25, i64 0}
!147 = !{!"_ZTS15ref_vector_coreI3app19ref_manager_wrapperIS0_11ast_managerEE", !23, i64 0, !146, i64 8}
!148 = !{!"_ZTS10ref_vectorI3app11ast_managerE", !147, i64 0}
!149 = !{!"p1 _ZTS4expr", !11, i64 0}
!150 = !{!"p1 _ZTSN13rewriter_core5scopeE", !11, i64 0}
!151 = !{!"_ZTS6vectorIN13rewriter_core5scopeELb0EjE", !150, i64 0}
!152 = !{!"_ZTS7svectorIN13rewriter_core5scopeEjE", !151, i64 0}
!153 = !{!"_ZTS13rewriter_core", !16, i64 8, !10, i64 16, !10, i64 17, !138, i64 24, !139, i64 32, !142, i64 40, !145, i64 48, !138, i64 64, !139, i64 72, !148, i64 80, !28, i64 96, !149, i64 120, !7, i64 128, !152, i64 136}
!154 = !{!"p1 _ZTS16beta_reducer_cfg", !11, i64 0}
!155 = !{!"_ZTS16var_shifter_core", !153, i64 0}
!156 = !{!"_ZTS11var_shifter", !155, i64 0, !7, i64 144, !7, i64 148, !7, i64 152}
!157 = !{!"_ZTS15inv_var_shifter", !155, i64 0, !7, i64 144}
!158 = !{!"_ZTS7obj_refI4expr11ast_managerE", !149, i64 0, !16, i64 8}
!159 = !{!"p1 int", !11, i64 0}
!160 = !{!"_ZTS6vectorIjLb0EjE", !159, i64 0}
!161 = !{!"_ZTS7svectorIjjE", !160, i64 0}
!162 = !{!"_ZTS12rewriter_tplI16beta_reducer_cfgE", !153, i64 0, !154, i64 144, !7, i64 152, !22, i64 160, !156, i64 168, !157, i64 328, !158, i64 480, !30, i64 496, !30, i64 512, !161, i64 528}
!163 = !{!"_ZTS16beta_reducer_cfg"}
!164 = !{!"_ZTS12beta_reducer", !162, i64 0, !163, i64 536}
!165 = !{!"_ZTS9var_subst", !164, i64 0, !10, i64 544}
!166 = !{!"p1 _ZTS17default_map_entryIjiE", !11, i64 0}
!167 = !{!"_ZTS14core_hashtableI17default_map_entryIjiEN9table2mapIS1_6u_hash4u_eqE15entry_hash_procENS5_13entry_eq_procEE", !166, i64 0, !7, i64 8, !7, i64 12, !7, i64 16}
!168 = !{!"_ZTS9table2mapI17default_map_entryIjiE6u_hash4u_eqE", !167, i64 0}
!169 = !{!"_ZTS3mapIji6u_hash4u_eqE", !168, i64 0}
!170 = !{!"_ZTS5u_mapIiE", !169, i64 0}
!171 = !{!"_ZTS7counter", !170, i64 0}
!172 = !{!"p2 _ZTS3ast", !19, i64 0}
!173 = !{!"_ZTS6bufferIP3astLb0ELj16EE", !172, i64 0, !7, i64 8, !7, i64 12, !6, i64 16}
!174 = !{!"_ZTS10ptr_bufferI3astLj16EE", !173, i64 0}
!175 = !{!"_ZTS13ast_fast_markILj1EE", !174, i64 0}
!176 = !{!"p2 _ZTS4sort", !19, i64 0}
!177 = !{!"_ZTS6vectorIP4sortLb0EjE", !176, i64 0}
!178 = !{!"_ZTS10ptr_vectorI4sortE", !177, i64 0}
!179 = !{!"_ZTS14expr_free_vars", !32, i64 0, !178, i64 24, !22, i64 32}
!180 = !{!"_ZTS11var_counter", !171, i64 0, !175, i64 24, !179, i64 168, !22, i64 208, !161, i64 216}
!181 = !{!"_ZTSN7datalog12rule_counterE", !180, i64 0}
!182 = !{!"p1 _ZTS18default_hash_entryI15expr_delta_pairE", !11, i64 0}
!183 = !{!"_ZTS14core_hashtableI18default_hash_entryI15expr_delta_pairE8obj_hashIS1_E10default_eqIS1_EE", !182, i64 0, !7, i64 8, !7, i64 12, !7, i64 16}
!184 = !{!"_ZTS9hashtableI15expr_delta_pair8obj_hashIS0_E10default_eqIS0_EE", !183, i64 0}
!185 = !{!"p1 _ZTS15expr_delta_pair", !11, i64 0}
!186 = !{!"_ZTS6vectorI15expr_delta_pairLb0EjE", !185, i64 0}
!187 = !{!"_ZTS7svectorI15expr_delta_pairjE", !186, i64 0}
!188 = !{!"_ZTS9used_vars", !178, i64 0, !184, i64 8, !187, i64 32, !7, i64 40, !7, i64 44}
!189 = !{!"_ZTS8uint_set", !161, i64 0}
!190 = !{!"_ZTS7svectorIbjE", !34, i64 0}
!191 = !{!"p1 _ZTSN3hnf3impE", !11, i64 0}
!192 = !{!"_ZTS3hnf", !191, i64 0}
!193 = !{!"p1 _ZTSN7qe_lite4implE", !11, i64 0}
!194 = !{!"_ZTS7qe_lite", !193, i64 0}
!195 = !{!"p1 _ZTS14label_rewriter", !11, i64 0}
!196 = !{!"_ZTS12rewriter_tplI14label_rewriterE", !153, i64 0, !195, i64 144, !7, i64 152, !22, i64 160, !156, i64 168, !157, i64 328, !158, i64 480, !30, i64 496, !30, i64 512, !161, i64 528}
!197 = !{!"_ZTS14label_rewriter", !7, i64 0, !196, i64 8}
!198 = !{!"p1 _ZTSN8datatype4decl6pluginE", !11, i64 0}
!199 = !{!"_ZTSN8datatype4utilE", !16, i64 0, !7, i64 8, !198, i64 16}
!200 = !{!"_ZTSN7datalog34uninterpreted_function_finder_procE", !16, i64 0, !199, i64 8, !133, i64 32, !10, i64 64, !35, i64 72}
!201 = !{!"_ZTSN7datalog22quantifier_finder_procE", !10, i64 0, !10, i64 1, !10, i64 2}
!202 = !{!"_ZTS14bv_recognizers", !7, i64 0}
!203 = !{!"p1 _ZTS14bv_decl_plugin", !11, i64 0}
!204 = !{!"_ZTS7bv_util", !202, i64 0, !16, i64 8, !203, i64 16}
!205 = !{!"_ZTSN7datalog14fd_finder_procE", !16, i64 0, !204, i64 8, !10, i64 32}
!206 = !{!"_ZTSN7datalog12rule_managerE", !16, i64 0, !31, i64 8, !181, i64 16, !188, i64 240, !189, i64 288, !179, i64 296, !148, i64 336, !30, i64 352, !145, i64 368, !190, i64 384, !192, i64 392, !194, i64 400, !197, i64 408, !200, i64 952, !201, i64 1032, !32, i64 1040, !205, i64 1064}
!207 = !{!"_ZTS11i_expr_pred"}
!208 = !{!"_ZTSN7datalog7context13contains_predE", !207, i64 0, !31, i64 8}
!209 = !{!"p1 _ZTS11i_expr_pred", !11, i64 0}
!210 = !{!"p1 _ZTS17arith_decl_plugin", !11, i64 0}
!211 = !{!"_ZTS10arith_util", !16, i64 0, !210, i64 8}
!212 = !{!"_ZTS17array_recognizers", !7, i64 0}
!213 = !{!"_ZTS10array_util", !212, i64 0, !16, i64 8}
!214 = !{!"p1 _ZTSN6recfun4decl6pluginE", !11, i64 0}
!215 = !{!"_ZTSN6recfun4utilE", !16, i64 0, !7, i64 8, !214, i64 16}
!216 = !{!"p1 _ZTSN7obj_mapI10quantifierPN7datalog4ruleEE13obj_map_entryE", !11, i64 0}
!217 = !{!"_ZTS14core_hashtableIN7obj_mapI10quantifierPN7datalog4ruleEE13obj_map_entryE8obj_hashINS5_8key_dataEE10default_eqIS8_EE", !216, i64 0, !7, i64 8, !7, i64 12, !7, i64 16}
!218 = !{!"_ZTS7obj_mapI10quantifierPN7datalog4ruleEE", !217, i64 0}
!219 = !{!"p1 _ZTSN7obj_mapI9func_declPN7datalog4ruleEE13obj_map_entryE", !11, i64 0}
!220 = !{!"_ZTS14core_hashtableIN7obj_mapI9func_declPN7datalog4ruleEE13obj_map_entryE8obj_hashINS5_8key_dataEE10default_eqIS8_EE", !219, i64 0, !7, i64 8, !7, i64 12, !7, i64 16}
!221 = !{!"_ZTS7obj_mapI9func_declPN7datalog4ruleEE", !220, i64 0}
!222 = !{!"_ZTSN7datalog15rule_propertiesE", !16, i64 0, !36, i64 8, !31, i64 16, !209, i64 24, !199, i64 32, !133, i64 56, !211, i64 88, !204, i64 104, !213, i64 128, !215, i64 144, !10, i64 168, !37, i64 176, !218, i64 184, !221, i64 208, !40, i64 232, !40, i64 240, !40, i64 248, !10, i64 256, !10, i64 257}
!223 = !{!"p2 _ZTSN7datalog16rule_transformer6pluginE", !19, i64 0}
!224 = !{!"_ZTS6vectorIPN7datalog16rule_transformer6pluginELb0EjE", !223, i64 0}
!225 = !{!"_ZTS7svectorIPN7datalog16rule_transformer6pluginEjE", !224, i64 0}
!226 = !{!"_ZTSN7datalog16rule_transformerE", !31, i64 0, !36, i64 8, !10, i64 16, !225, i64 24}
!227 = !{!"p2 _ZTS5trail", !19, i64 0}
!228 = !{!"_ZTS6vectorIP5trailLb0EjE", !227, i64 0}
!229 = !{!"_ZTS10ptr_vectorI5trailE", !228, i64 0}
!230 = !{!"p1 _ZTSN6region4markE", !11, i64 0}
!231 = !{!"_ZTS6region", !17, i64 0, !17, i64 8, !17, i64 16, !17, i64 24, !230, i64 32}
!232 = !{!"_ZTS11trail_stack", !229, i64 0, !161, i64 8, !231, i64 16}
!233 = !{!"_ZTS19ref_manager_wrapperI3ast11ast_managerE", !16, i64 0}
!234 = !{!"_ZTS6vectorIP3astLb0EjE", !172, i64 0}
!235 = !{!"_ZTS10ptr_vectorI3astE", !234, i64 0}
!236 = !{!"_ZTS15ref_vector_coreI3ast19ref_manager_wrapperIS0_11ast_managerEE", !233, i64 0, !235, i64 8}
!237 = !{!"_ZTS10ref_vectorI3ast11ast_managerE", !236, i64 0}
!238 = !{!"p1 _ZTSN7obj_mapI4exprPS0_E13obj_map_entryE", !11, i64 0}
!239 = !{!"_ZTS14core_hashtableIN7obj_mapI4exprPS1_E13obj_map_entryE8obj_hashINS3_8key_dataEE10default_eqIS6_EE", !238, i64 0, !7, i64 8, !7, i64 12, !7, i64 16}
!240 = !{!"_ZTS7obj_mapI4exprPS0_E", !239, i64 0}
!241 = !{!"p1 _ZTSN7obj_mapI3appP3varE13obj_map_entryE", !11, i64 0}
!242 = !{!"_ZTS14core_hashtableIN7obj_mapI3appP3varE13obj_map_entryE8obj_hashINS4_8key_dataEE10default_eqIS7_EE", !241, i64 0, !7, i64 8, !7, i64 12, !7, i64 16}
!243 = !{!"_ZTS7obj_mapI3appP3varE", !242, i64 0}
!244 = !{!"p1 _ZTS6symbol", !11, i64 0}
!245 = !{!"_ZTS6vectorI6symbolLb0EjE", !244, i64 0}
!246 = !{!"_ZTS7svectorI6symboljE", !245, i64 0}
!247 = !{!"_ZTS14bind_variables", !16, i64 0, !148, i64 8, !240, i64 24, !243, i64 48, !145, i64 72, !178, i64 88, !246, i64 96, !22, i64 104, !22, i64 112}
!248 = !{!"p1 _ZTSN7obj_mapIK4sortPN7datalog7context11sort_domainEE13obj_map_entryE", !11, i64 0}
!249 = !{!"_ZTS14core_hashtableIN7obj_mapIK4sortPN7datalog7context11sort_domainEE13obj_map_entryE8obj_hashINS7_8key_dataEE10default_eqISA_EE", !248, i64 0, !7, i64 8, !7, i64 12, !7, i64 16}
!250 = !{!"_ZTS7obj_mapIK4sortPN7datalog7context11sort_domainEE", !249, i64 0}
!251 = !{!"p1 _ZTS17default_map_entryI6symbolP9func_declE", !11, i64 0}
!252 = !{!"_ZTS14core_hashtableI17default_map_entryI6symbolP9func_declEN9table2mapIS4_16symbol_hash_proc14symbol_eq_procE15entry_hash_procENS8_13entry_eq_procEE", !251, i64 0, !7, i64 8, !7, i64 12, !7, i64 16}
!253 = !{!"_ZTS9table2mapI17default_map_entryI6symbolP9func_declE16symbol_hash_proc14symbol_eq_procE", !252, i64 0}
!254 = !{!"_ZTS3mapI6symbolP9func_decl16symbol_hash_proc14symbol_eq_procE", !253, i64 0}
!255 = !{!"p1 _ZTSN7obj_mapIK9func_decl7svectorI6symboljEE13obj_map_entryE", !11, i64 0}
!256 = !{!"_ZTS14core_hashtableIN7obj_mapIK9func_decl7svectorI6symboljEE13obj_map_entryE8obj_hashINS6_8key_dataEE10default_eqIS9_EE", !255, i64 0, !7, i64 8, !7, i64 12, !7, i64 16}
!257 = !{!"_ZTS7obj_mapIK9func_decl7svectorI6symboljEE", !256, i64 0}
!258 = !{!"_ZTS6vectorIjLb1EjE", !159, i64 0}
!259 = !{!"p1 _ZTS15model_converter", !11, i64 0}
!260 = !{!"_ZTS3refI15model_converterE", !259, i64 0}
!261 = !{!"p1 _ZTS15proof_converter", !11, i64 0}
!262 = !{!"_ZTS3refI15proof_converterE", !261, i64 0}
!263 = !{!"p1 _ZTSN7datalog16rel_context_baseE", !11, i64 0}
!264 = !{!"p1 _ZTSN7datalog11engine_baseE", !11, i64 0}
!265 = !{!"_ZTS10scoped_ptrIN7datalog11engine_baseEE", !264, i64 0}
!266 = !{!"_ZTSN7datalog16execution_resultE", !6, i64 0}
!267 = !{!"_ZTSN7datalog9DL_ENGINEE", !6, i64 0}
!268 = !{!"_ZTSN7datalog7contextE", !16, i64 0, !124, i64 8, !125, i64 16, !127, i64 24, !128, i64 32, !10, i64 40, !10, i64 41, !18, i64 48, !133, i64 56, !135, i64 88, !165, i64 104, !206, i64 656, !208, i64 1760, !222, i64 1776, !226, i64 2040, !232, i64 2072, !237, i64 2128, !247, i64 2144, !250, i64 2264, !43, i64 2288, !254, i64 2312, !257, i64 2336, !65, i64 2360, !65, i64 2608, !179, i64 2856, !7, i64 2896, !145, i64 2904, !246, i64 2920, !258, i64 2928, !145, i64 2936, !260, i64 2952, !262, i64 2960, !263, i64 2968, !265, i64 2976, !10, i64 2984, !10, i64 2985, !10, i64 2986, !266, i64 2988, !158, i64 2992, !158, i64 3008, !267, i64 3024}
!269 = !{!268, !16, i64 0}
!270 = !{!31, !31, i64 0}
!271 = distinct !{!271, !86}
!272 = distinct !{!272, !86}
!273 = distinct !{!273, !86}
!274 = distinct !{!274, !86}
!275 = distinct !{!275, !86}
!276 = distinct !{!276, !86}
!277 = !{!65, !31, i64 0}
!278 = !{!65, !36, i64 8}
!279 = !{!39, !38, i64 0}
!280 = !{!36, !36, i64 0}
!281 = !{!37, !37, i64 0}
!282 = !{!"_ZTSN7datalog5costsE", !7, i64 0, !7, i64 4}
!283 = !{!"_ZTSN7datalog16accounted_objectE", !31, i64 0, !37, i64 8, !282, i64 16, !282, i64 24, !10, i64 32}
!284 = !{!"_ZTSN7datalog4ruleE", !283, i64 0, !29, i64 40, !29, i64 48, !7, i64 56, !7, i64 60, !7, i64 64, !7, i64 68, !18, i64 72, !6, i64 80}
!285 = !{!284, !7, i64 68}
!286 = !{!284, !7, i64 56}
!287 = !{!284, !29, i64 40}
!288 = !{!10, !10, i64 0}
!289 = !{!111, !16, i64 8}
!290 = !{!"branch_weights", !"expected", i32 1, i32 2000}
!291 = distinct !{!291, !86}
!292 = distinct !{!292, !86}
!293 = !{!42, !7, i64 12}
!294 = distinct !{!294, !86}
!295 = distinct !{!295, !86}
!296 = distinct !{!296, !86}
!297 = distinct !{!297, i1 true, !"_ZNSt7__cxx119to_stringEi"}
!298 = distinct !{!298, !297, !"_ZNSt7__cxx119to_stringEi: argument 0"}
!299 = distinct !{!299, !86}
!300 = distinct !{!300, !86}
!301 = !{!298}
end_hunk_1
