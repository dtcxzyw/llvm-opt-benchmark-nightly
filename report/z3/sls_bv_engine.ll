Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/z3/original/sls_bv_engine?download=true
inline.NumInlined: 1861
inline.NumDeleted: 726
loop-unroll.NumCompletelyUnrolled: 15
loop-unroll.NumRuntimeUnrolled: 30
loop-unroll.NumUnrolled: 46
begin_hunk_0_@_ZSt19__throw_logic_errorPKc

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr noundef captures(none)) local_unnamed_addr #14

; Function Attrs: noreturn
declare void @_ZSt20__throw_length_errorPKc(ptr noundef) local_unnamed_addr #13

; Function Attrs: noreturn
declare void @_ZSt17__throw_bad_allocv() local_unnamed_addr #13

; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull ptr @_Znwm(i64 noundef) local_unnamed_addr #15

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPvm(ptr noundef, i64 noundef) local_unnamed_addr #16

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN6vectorIP4exprLb0EjE13expand_vectorEv(ptr noundef nonnull align 8 dereferenceable(8) %0) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %2 = alloca %"class.std::allocator", align 1    ; 4 uses
  %i.a = load ptr, ptr %0, align 8, !tbaa !87     ; 2 uses
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.c = tail call noalias noundef ptr @_ZN6memory8allocateEm(i64 noundef 24) ; 3 uses
  store i32 2, ptr %i.c, align 4, !tbaa !198
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 4
  store i32 0, ptr %i.d, align 4, !tbaa !198
  %i.e = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store ptr %i.e, ptr %0, align 8, !tbaa !87
  br label %bb.l

bb.c:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds i8, ptr %i.a, i64 -8 ; 2 uses
  %i.g = load i32, ptr %i.f, align 4, !tbaa !198  ; 3 uses
  %i.h = mul i32 %i.g, 3
  %i.i = add i32 %i.h, 1
  %i.j = lshr i32 %i.i, 1                         ; 3 uses
  %i.k = shl i32 %i.j, 3
  %i.l = add i32 %i.k, 8                          ; 2 uses
  %.not = icmp ugt i32 %i.j, %i.g
  br i1 %.not, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.m = shl i32 %i.g, 3
  %i.n = add i32 %i.m, 8
  %.not27 = icmp ugt i32 %i.l, %i.n
  br i1 %.not27, label %bb.k, label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.o = tail call ptr @__cxa_allocate_exception(i64 40) #21 ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #21
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #21
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull @.str.27, ptr noundef nonnull align 1 dereferenceable(1) %2)
          to label %bb.f unwind label %bb.i

bb.f:                                             ; preds = %bb.e
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTV17default_exception, i64 16), ptr %i.o, align 8, !tbaa !299
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 8 ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.o, i64 24 ; 3 uses
  store ptr %i.q, ptr %i.p, align 8, !tbaa !333
  %i.r = load ptr, ptr %1, align 8, !tbaa !335    ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 7 uses
  %i.t = icmp eq ptr %i.r, %i.s
  br i1 %i.t, label %bb.g, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

bb.g:                                             ; preds = %bb.f
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.v = load i64, ptr %i.u, align 8, !tbaa !336  ; 3 uses
  %i.w = icmp ult i64 %i.v, 16
  call void @llvm.assume(i1 %i.w)
  %i.x = add nuw nsw i64 %i.v, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.q, ptr noundef nonnull align 8 dereferenceable(1) %i.s, i64 %i.x, i1 false)
  br label %_ZN17default_exceptionC2EONSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.f
  store ptr %i.r, ptr %i.p, align 8, !tbaa !335
  %i.y = load i64, ptr %i.s, align 8, !tbaa !326
  store i64 %i.y, ptr %i.q, align 8, !tbaa !326
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.pre = load i64, ptr %.phi.trans.insert, align 8, !tbaa !336
  br label %_ZN17default_exceptionC2EONSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit

_ZN17default_exceptionC2EONSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit: ; preds = %bb.g, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  %i.z = phi i64 [ %i.v, %bb.g ], [ %.pre, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ]
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.ab = getelementptr inbounds nuw i8, ptr %i.o, i64 16
  store i64 %i.z, ptr %i.ab, align 8, !tbaa !336
  store ptr %i.s, ptr %1, align 8, !tbaa !335
  store i64 0, ptr %i.aa, align 8, !tbaa !336
  store i8 0, ptr %i.s, align 8, !tbaa !326
  invoke void @__cxa_throw(ptr nonnull %i.o, ptr nonnull @_ZTI17default_exception, ptr nonnull @_ZN17default_exceptionD2Ev) #23
          to label %bb.m unwind label %bb.h

bb.h:                                             ; preds = %_ZN17default_exceptionC2EONSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit
  %i.ac = landingpad { ptr, i32 }
          cleanup
  %i.ad = load ptr, ptr %1, align 8, !tbaa !335   ; 2 uses
  %i.ae = icmp eq ptr %i.ad, %i.s
  br i1 %i.ae, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i29

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i29: ; preds = %bb.h
  %i.af = load i64, ptr %i.s, align 8, !tbaa !326
  %i.ag = add i64 %i.af, 1
  call void @_ZdlPvm(ptr noundef %i.ad, i64 noundef %i.ag) #25
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread: ; preds = %bb.h, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i29
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #21
  br label %bb.j

bb.i:                                             ; preds = %bb.e
  %i.ah = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #21
  call void @__cxa_free_exception(ptr %i.o) #21
  br label %bb.j

bb.j:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread, %bb.i
  %.pn32 = phi { ptr, i32 } [ %i.ac, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread ], [ %i.ah, %bb.i ]
  resume { ptr, i32 } %.pn32

bb.k:                                             ; preds = %bb.d
  %i.ai = zext i32 %i.l to i64
  %i.aj = tail call noalias noundef ptr @_ZN6memory10reallocateEPvm(ptr noundef nonnull %i.f, i64 noundef %i.ai) ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 8
  store ptr %i.ak, ptr %0, align 8, !tbaa !87
  store i32 %i.j, ptr %i.aj, align 4, !tbaa !198
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.b
  ret void

bb.m:                                             ; preds = %_ZN17default_exceptionC2EONSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit
  unreachable
}

declare noalias noundef ptr @_ZN6memory10reallocateEPvm(ptr noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN13sls_evaluatorclEP3appR3mpz(ptr noundef nonnull align 8 dereferenceable(264) %0, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(16) %2) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %class.mpz, align 8                 ; 6 uses
  %4 = alloca %class.mpz, align 8                 ; 6 uses
  %5 = alloca %class.mpz, align 8                 ; 6 uses
  %6 = alloca %class.mpz, align 8                 ; 6 uses
  %7 = alloca %class.mpz, align 8                 ; 8 uses
  %8 = alloca %class.mpz, align 8                 ; 13 uses
  %9 = alloca %class.mpz, align 8                 ; 13 uses
  %10 = alloca %class.rational, align 8           ; 7 uses
  %11 = alloca %class.rational, align 8           ; 7 uses
  %12 = alloca %class.rational, align 8           ; 7 uses
  %13 = alloca %class.rational, align 8           ; 7 uses
  %14 = alloca %class.mpz, align 8                ; 8 uses
  %15 = alloca %class.mpz, align 8                ; 9 uses
  %16 = alloca %class.mpz, align 8                ; 13 uses
  %17 = alloca %class.mpz, align 8                ; 13 uses
  %18 = alloca %class.rational, align 8           ; 7 uses
  %19 = alloca %class.rational, align 8           ; 7 uses
  %20 = alloca %class.rational, align 8           ; 7 uses
  %21 = alloca %class.rational, align 8           ; 7 uses
  %22 = alloca %class.mpz, align 8                ; 9 uses
  %23 = alloca %class.mpz, align 8                ; 9 uses
  %24 = alloca %class.mpz, align 8                ; 14 uses
  %25 = alloca %class.mpz, align 8                ; 15 uses
  %26 = alloca %class.rational, align 8           ; 7 uses
  %27 = alloca %class.rational, align 8           ; 7 uses
  %28 = alloca %class.rational, align 8           ; 7 uses
  %29 = alloca %class.rational, align 8           ; 7 uses
  %30 = alloca %class.mpz, align 8                ; 9 uses
  %31 = alloca %class.mpz, align 8                ; 9 uses
  %32 = alloca %class.mpz, align 8                ; 8 uses
  %33 = alloca %class.mpz, align 8                ; 8 uses
  %34 = alloca %class.mpz, align 8                ; 15 uses
  %35 = alloca %class.mpz, align 8                ; 15 uses
  %36 = alloca %class.rational, align 8           ; 7 uses
  %37 = alloca %class.rational, align 8           ; 7 uses
  %38 = alloca %class.rational, align 8           ; 7 uses
  %39 = alloca %class.rational, align 8           ; 7 uses
  %40 = alloca %class.mpz, align 8                ; 8 uses
  %41 = alloca %class.mpz, align 8                ; 11 uses
  %42 = alloca %class.mpz, align 8                ; 8 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !342
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 24 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !291  ; 2 uses
  %i.e = icmp eq ptr %i.d, null
  br i1 %i.e, label %_ZNK3app13get_family_idEv.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = load i32, ptr %i.d, align 8, !tbaa !344
  br label %_ZNK3app13get_family_idEv.exit

_ZNK3app13get_family_idEv.exit:                   ; preds = %bb.a, %bb.b
  %i.g = phi i32 [ %i.f, %bb.b ], [ -1, %bb.a ]   ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.i = load i32, ptr %i.h, align 8, !tbaa !345  ; 21 uses
  %i.j = icmp eq i32 %i.i, 0
  br i1 %i.j, label %bb.c, label %bb.k

bb.c:                                             ; preds = %_ZNK3app13get_family_idEv.exit
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !196, !nonnull !165, !align !166
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !219, !nonnull !165, !align !166 ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 120
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 12
  %i.q = load i32, ptr %i.p, align 4, !tbaa !213  ; 3 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.n, i64 128
  %i.s = load i32, ptr %i.r, align 8, !tbaa !122  ; 3 uses
  %i.t = add i32 %i.s, -1
  %i.u = and i32 %i.t, %i.q                       ; 2 uses
  %i.v = load ptr, ptr %i.o, align 8, !tbaa !127  ; 3 uses
  %i.w = zext i32 %i.s to i64
  %i.x = getelementptr inbounds nuw [64 x i8], ptr %i.v, i64 %i.w
  %.not34.i.i.i.i = icmp eq i32 %i.u, %i.s
  br i1 %.not34.i.i.i.i, label %.lr.ph38.i.i.i.i.preheader, label %.lr.ph.i.i.i.i.preheader

.lr.ph.i.i.i.i.preheader:                         ; preds = %bb.c
  %i.y = zext i32 %i.u to i64
  %.idx.i.i.i.i = shl nuw nsw i64 %i.y, 6
  %i.z = getelementptr inbounds nuw i8, ptr %i.v, i64 %.idx.i.i.i.i
  br label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %.lr.ph.i.i.i.i.preheader, %bb.f
  %.035.i.i.i.i = phi ptr [ %i.ag, %bb.f ], [ %i.z, %.lr.ph.i.i.i.i.preheader ] ; 3 uses
  %i.aa = load ptr, ptr %.035.i.i.i.i, align 8, !tbaa !216 ; 4 uses
  %i.ab = icmp ult ptr %i.aa, inttoptr (i64 2 to ptr)
  br i1 %i.ab, label %bb.e, label %bb.d

bb.d:                                             ; preds = %.lr.ph.i.i.i.i
  %i.ac = getelementptr inbounds nuw i8, ptr %i.aa, i64 12
  %i.ad = load i32, ptr %i.ac, align 4, !tbaa !213
  %i.ae = icmp eq i32 %i.ad, %i.q
  %i.af = icmp eq ptr %i.aa, %1
  %or.cond.i.i.i.i = and i1 %i.af, %i.ae
  br i1 %or.cond.i.i.i.i, label %_ZN11sls_tracker9get_valueEP4expr.exit, label %bb.f

bb.e:                                             ; preds = %.lr.ph.i.i.i.i
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.aa) ]
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.ag = getelementptr inbounds nuw i8, ptr %.035.i.i.i.i, i64 64 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.ag, %i.x
  br i1 %.not.i.i.i.i, label %.lr.ph38.i.i.i.i.preheader, label %.lr.ph.i.i.i.i, !llvm.loop !5

.lr.ph38.i.i.i.i.preheader:                       ; preds = %bb.f, %bb.c
  br label %.lr.ph38.i.i.i.i

.lr.ph38.i.i.i.i:                                 ; preds = %.lr.ph38.i.i.i.i.preheader, %.lr.ph38.backedge.i.i.i.i
  %.137.i.i.i.i = phi ptr [ %.pn.i.i, %.lr.ph38.backedge.i.i.i.i ], [ %i.v, %.lr.ph38.i.i.i.i.preheader ] ; 3 uses
  %i.ah = load ptr, ptr %.137.i.i.i.i, align 8, !tbaa !216 ; 4 uses
  %i.ai = icmp ult ptr %i.ah, inttoptr (i64 2 to ptr)
  br i1 %i.ai, label %bb.h, label %bb.g

bb.g:                                             ; preds = %.lr.ph38.i.i.i.i
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ah, i64 12
  %i.ak = load i32, ptr %i.aj, align 4, !tbaa !213
  %i.al = icmp eq i32 %i.ak, %i.q
  %i.am = icmp eq ptr %i.ah, %1
  %or.cond31.i.i.i.i = and i1 %i.am, %i.al
  br i1 %or.cond31.i.i.i.i, label %_ZN11sls_tracker9get_valueEP4expr.exit, label %.lr.ph38.backedge.i.i.i.i

bb.h:                                             ; preds = %.lr.ph38.i.i.i.i
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.ah) ]
  br label %.lr.ph38.backedge.i.i.i.i

.lr.ph38.backedge.i.i.i.i:                        ; preds = %bb.h, %bb.g
  %.pn.i.i = getelementptr inbounds nuw i8, ptr %.137.i.i.i.i, i64 64
  br label %.lr.ph38.i.i.i.i, !llvm.loop !6

_ZN11sls_tracker9get_valueEP4expr.exit:           ; preds = %bb.d, %bb.g
  %.026.i.i.i.i = phi ptr [ %.137.i.i.i.i, %bb.g ], [ %.035.i.i.i.i, %bb.d ] ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %.026.i.i.i.i, i64 16 ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %.026.i.i.i.i, i64 20
  %i.ap = load i8, ptr %i.ao, align 4
  %i.aq = and i8 %i.ap, 1
  %i.ar = icmp eq i8 %i.aq, 0
  br i1 %i.ar, label %bb.i, label %bb.j

bb.i:                                             ; preds = %_ZN11sls_tracker9get_valueEP4expr.exit
  %i.as = load i32, ptr %i.an, align 8, !tbaa !62
  store i32 %i.as, ptr %2, align 8, !tbaa !62
  %i.at = getelementptr inbounds nuw i8, ptr %2, i64 4 ; 2 uses
  %i.au = load i8, ptr %i.at, align 4
  %i.av = and i8 %i.au, -2
  store i8 %i.av, ptr %i.at, align 4
  br label %.critedge

bb.j:                                             ; preds = %_ZN11sls_tracker9get_valueEP4expr.exit
  tail call void @_ZN11mpz_managerILb0EE7big_setER3mpzRKS1_(ptr noundef nonnull align 8 dereferenceable(600) %i.l, ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef nonnull align 8 dereferenceable(16) %i.an)
  br label %.critedge

bb.k:                                             ; preds = %_ZNK3app13get_family_idEv.exit
  %i.aw = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 45 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 125 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 13 uses
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 44 ; 4 uses
  %i.ba = load i8, ptr %i.az, align 4
  %i.bb = and i8 %i.ba, 1
  %i.bc = icmp eq i8 %i.bb, 0
  br i1 %i.bc, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.bd = load i32, ptr %i.ay, align 8, !tbaa !62
  store i32 %i.bd, ptr %2, align 8, !tbaa !62
  %i.be = getelementptr inbounds nuw i8, ptr %2, i64 4 ; 2 uses
  %i.bf = load i8, ptr %i.be, align 4
  %i.bg = and i8 %i.bf, -2
  store i8 %i.bg, ptr %i.be, align 4
  br label %_ZN11mpz_managerILb0EE3setER3mpzRKS1_.exit376

bb.m:                                             ; preds = %bb.k
  %i.bh = load ptr, ptr %i.ax, align 8, !tbaa !196, !nonnull !165, !align !166
  tail call void @_ZN11mpz_managerILb0EE7big_setER3mpzRKS1_(ptr noundef nonnull align 8 dereferenceable(600) %i.bh, ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef nonnull align 8 dereferenceable(16) %i.ay)
  br label %_ZN11mpz_managerILb0EE3setER3mpzRKS1_.exit376

_ZN11mpz_managerILb0EE3setER3mpzRKS1_.exit376:    ; preds = %bb.l, %bb.m
  %i.bi = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.bj = load i32, ptr %i.bi, align 8, !tbaa !85
  %i.bk = icmp eq i32 %i.g, %i.bj
  br i1 %i.bk, label %bb.n, label %bb.df

bb.n:                                             ; preds = %_ZN11mpz_managerILb0EE3setER3mpzRKS1_.exit376
  %i.bl = load ptr, ptr %i.a, align 8, !tbaa !342
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bl, i64 24
  %i.bn = load ptr, ptr %i.bm, align 8, !tbaa !291 ; 2 uses
  %i.bo = icmp eq ptr %i.bn, null
  br i1 %i.bo, label %_ZNK3app13get_decl_kindEv.exit.thread, label %_ZNK3app13get_decl_kindEv.exit

_ZNK3app13get_decl_kindEv.exit:                   ; preds = %bb.n
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bn, i64 4
  %i.bq = load i32, ptr %i.bp, align 4, !tbaa !485
  switch i32 %i.bq, label %_ZNK3app13get_decl_kindEv.exit.thread [
    i32 5, label %bb.o
    i32 6, label %.preheader
    i32 8, label %bb.an
    i32 2, label %bb.av
    i32 3, label %bb.bo
    i32 4, label %bb.cj
  ]

.preheader:                                       ; preds = %_ZNK3app13get_decl_kindEv.exit
  %i.br = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.bs = getelementptr inbounds nuw i8, ptr %2, i64 4 ; 3 uses
  %wide.trip.count892 = zext i32 %i.i to i64
  br label %bb.ad

bb.o:                                             ; preds = %_ZNK3app13get_decl_kindEv.exit
  %i.bt = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %0, i64 60
  %i.bv = load i8, ptr %i.bu, align 4
  %i.bw = and i8 %i.bv, 1
  %i.bx = icmp eq i8 %i.bw, 0
  br i1 %i.bx, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  %i.by = load i32, ptr %i.bt, align 8, !tbaa !62
  store i32 %i.by, ptr %2, align 8, !tbaa !62
  %i.bz = getelementptr inbounds nuw i8, ptr %2, i64 4 ; 2 uses
  %i.ca = load i8, ptr %i.bz, align 4
  %i.cb = and i8 %i.ca, -2
  store i8 %i.cb, ptr %i.bz, align 4
  br label %_ZN11mpz_managerILb0EE3setER3mpzRKS1_.exit377

bb.q:                                             ; preds = %bb.o
  %i.cc = load ptr, ptr %i.ax, align 8, !tbaa !196, !nonnull !165, !align !166
  tail call void @_ZN11mpz_managerILb0EE7big_setER3mpzRKS1_(ptr noundef nonnull align 8 dereferenceable(600) %i.cc, ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef nonnull align 8 dereferenceable(16) %i.bt)
  br label %_ZN11mpz_managerILb0EE3setER3mpzRKS1_.exit377

_ZN11mpz_managerILb0EE3setER3mpzRKS1_.exit377:    ; preds = %bb.p, %bb.q
  %i.cd = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.ce = getelementptr inbounds nuw i8, ptr %2, i64 4 ; 3 uses
  %wide.trip.count898 = zext i32 %i.i to i64
  br label %bb.s

bb.r:                                             ; preds = %.split1001, %_ZN11mpz_managerILb0EE3neqERK3mpzS3_.exit
  %indvars.iv.next895 = add nuw nsw i64 %indvars.iv894, 1 ; 2 uses
  %exitcond899.not = icmp eq i64 %indvars.iv.next895, %wide.trip.count898
  br i1 %exitcond899.not, label %.critedge, label %bb.s, !llvm.loop !471

bb.s:                                             ; preds = %_ZN11mpz_managerILb0EE3setER3mpzRKS1_.exit377, %bb.r
  %indvars.iv894 = phi i64 [ 0, %_ZN11mpz_managerILb0EE3setER3mpzRKS1_.exit377 ], [ %indvars.iv.next895, %bb.r ] ; 2 uses
  %i.cf = load ptr, ptr %i.ax, align 8, !tbaa !196, !nonnull !165, !align !166
  %i.cg = load ptr, ptr %i.cd, align 8, !tbaa !219, !nonnull !165, !align !166 ; 2 uses
  %i.ch = getelementptr inbounds nuw [8 x i8], ptr %i.aw, i64 %indvars.iv894
  %i.ci = load ptr, ptr %i.ch, align 8, !tbaa !200 ; 3 uses
  %i.cj = getelementptr inbounds nuw i8, ptr %i.cg, i64 120
  %i.ck = getelementptr inbounds nuw i8, ptr %i.ci, i64 12
  %i.cl = load i32, ptr %i.ck, align 4, !tbaa !213 ; 3 uses
  %i.cm = getelementptr inbounds nuw i8, ptr %i.cg, i64 128
  %i.cn = load i32, ptr %i.cm, align 8, !tbaa !122 ; 3 uses
  %i.co = add i32 %i.cn, -1
  %i.cp = and i32 %i.co, %i.cl                    ; 2 uses
  %i.cq = load ptr, ptr %i.cj, align 8, !tbaa !127 ; 3 uses
  %i.cr = zext i32 %i.cn to i64
end_hunk_0
begin_hunk_1_@_ZN13sls_evaluatorclEP3appR3mpz:bb.a
  %i.iu = icmp eq i32 %i.it, %i.ig
  %i.iv = icmp eq ptr %i.iq, %i.id
  %or.cond.i.i.i.i439 = and i1 %i.iv, %i.iu
  br i1 %or.cond.i.i.i.i439, label %_ZN11sls_tracker9get_valueEP4expr.exit451, label %bb.ba

bb.az:                                            ; preds = %.lr.ph.i.i.i.i437
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.iq) ]
  br label %bb.ba

bb.ba:                                            ; preds = %bb.az, %bb.ay
  %i.iw = getelementptr inbounds nuw i8, ptr %.035.i.i.i.i438, i64 64 ; 2 uses
  %.not.i.i.i.i440 = icmp eq ptr %i.iw, %i.in
  br i1 %.not.i.i.i.i440, label %.lr.ph38.i.i.i.i443.preheader, label %.lr.ph.i.i.i.i437, !llvm.loop !5

.lr.ph38.i.i.i.i443.preheader:                    ; preds = %bb.ba, %_ZN11mpz_managerILb0EE3setER3mpzRKS1_.exit434
  br label %.lr.ph38.i.i.i.i443

.lr.ph38.i.i.i.i443:                              ; preds = %.lr.ph38.i.i.i.i443.preheader, %.lr.ph38.backedge.i.i.i.i447
  %.137.i.i.i.i445 = phi ptr [ %.pn.i.i448, %.lr.ph38.backedge.i.i.i.i447 ], [ %i.il, %.lr.ph38.i.i.i.i443.preheader ] ; 3 uses
  %i.ix = load ptr, ptr %.137.i.i.i.i445, align 8, !tbaa !216 ; 4 uses
  %i.iy = icmp ult ptr %i.ix, inttoptr (i64 2 to ptr)
  br i1 %i.iy, label %bb.bc, label %bb.bb

bb.bb:                                            ; preds = %.lr.ph38.i.i.i.i443
  %i.iz = getelementptr inbounds nuw i8, ptr %i.ix, i64 12
  %i.ja = load i32, ptr %i.iz, align 4, !tbaa !213
  %i.jb = icmp eq i32 %i.ja, %i.ig
  %i.jc = icmp eq ptr %i.ix, %i.id
  %or.cond31.i.i.i.i446 = and i1 %i.jc, %i.jb
  br i1 %or.cond31.i.i.i.i446, label %_ZN11sls_tracker9get_valueEP4expr.exit451, label %.lr.ph38.backedge.i.i.i.i447

bb.bc:                                            ; preds = %.lr.ph38.i.i.i.i443
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.ix) ]
  br label %.lr.ph38.backedge.i.i.i.i447

.lr.ph38.backedge.i.i.i.i447:                     ; preds = %bb.bc, %bb.bb
  %.pn.i.i448 = getelementptr inbounds nuw i8, ptr %.137.i.i.i.i445, i64 64
  br label %.lr.ph38.i.i.i.i443, !llvm.loop !6

_ZN11sls_tracker9get_valueEP4expr.exit451:        ; preds = %bb.ay, %bb.bb
  %.026.i.i.i.i450 = phi ptr [ %.137.i.i.i.i445, %bb.bb ], [ %.035.i.i.i.i438, %bb.ay ] ; 2 uses
  %i.jd = getelementptr inbounds nuw i8, ptr %.026.i.i.i.i450, i64 16 ; 2 uses
  %.not781 = icmp eq i32 %i.i, 1
  br i1 %.not781, label %.critedge, label %.lr.ph773

.lr.ph773:                                        ; preds = %_ZN11sls_tracker9get_valueEP4expr.exit451
  %i.je = getelementptr inbounds nuw i8, ptr %.026.i.i.i.i450, i64 20
  %umax885 = tail call i32 @llvm.umax.i32(i32 %i.i, i32 2)
  %wide.trip.count886 = zext i32 %umax885 to i64
  br label %bb.be

bb.bd:                                            ; preds = %.split1003, %_ZN11mpz_managerILb0EE3neqERK3mpzS3_.exit470
  %indvars.iv.next883 = add nuw nsw i64 %indvars.iv882, 1 ; 2 uses
  %exitcond887.not = icmp eq i64 %indvars.iv.next883, %wide.trip.count886
  br i1 %exitcond887.not, label %.critedge, label %bb.be, !llvm.loop !473

bb.be:                                            ; preds = %.lr.ph773, %bb.bd
  %indvars.iv882 = phi i64 [ 1, %.lr.ph773 ], [ %indvars.iv.next883, %bb.bd ] ; 2 uses
  %i.jf = load ptr, ptr %i.ax, align 8, !tbaa !196, !nonnull !165, !align !166
  %i.jg = load ptr, ptr %i.ib, align 8, !tbaa !219, !nonnull !165, !align !166 ; 2 uses
  %i.jh = getelementptr inbounds nuw [8 x i8], ptr %i.aw, i64 %indvars.iv882
  %i.ji = load ptr, ptr %i.jh, align 8, !tbaa !200 ; 3 uses
  %i.jj = getelementptr inbounds nuw i8, ptr %i.jg, i64 120
  %i.jk = getelementptr inbounds nuw i8, ptr %i.ji, i64 12
  %i.jl = load i32, ptr %i.jk, align 4, !tbaa !213 ; 3 uses
  %i.jm = getelementptr inbounds nuw i8, ptr %i.jg, i64 128
  %i.jn = load i32, ptr %i.jm, align 8, !tbaa !122 ; 3 uses
  %i.jo = add i32 %i.jn, -1
  %i.jp = and i32 %i.jo, %i.jl                    ; 2 uses
  %i.jq = load ptr, ptr %i.jj, align 8, !tbaa !127 ; 3 uses
  %i.jr = zext i32 %i.jn to i64
  %i.js = getelementptr inbounds nuw [64 x i8], ptr %i.jq, i64 %i.jr
  %.not34.i.i.i.i453 = icmp eq i32 %i.jp, %i.jn
  br i1 %.not34.i.i.i.i453, label %.lr.ph38.i.i.i.i460.preheader, label %.lr.ph.i.i.i.i454.preheader

.lr.ph.i.i.i.i454.preheader:                      ; preds = %bb.be
  %i.jt = zext i32 %i.jp to i64
  %.idx.i.i.i.i452 = shl nuw nsw i64 %i.jt, 6
  %i.ju = getelementptr inbounds nuw i8, ptr %i.jq, i64 %.idx.i.i.i.i452
  br label %.lr.ph.i.i.i.i454

.lr.ph.i.i.i.i454:                                ; preds = %.lr.ph.i.i.i.i454.preheader, %bb.bh
  %.035.i.i.i.i455 = phi ptr [ %i.kb, %bb.bh ], [ %i.ju, %.lr.ph.i.i.i.i454.preheader ] ; 3 uses
  %i.jv = load ptr, ptr %.035.i.i.i.i455, align 8, !tbaa !216 ; 4 uses
  %i.jw = icmp ult ptr %i.jv, inttoptr (i64 2 to ptr)
  br i1 %i.jw, label %bb.bg, label %bb.bf

bb.bf:                                            ; preds = %.lr.ph.i.i.i.i454
  %i.jx = getelementptr inbounds nuw i8, ptr %i.jv, i64 12
  %i.jy = load i32, ptr %i.jx, align 4, !tbaa !213
  %i.jz = icmp eq i32 %i.jy, %i.jl
  %i.ka = icmp eq ptr %i.jv, %i.ji
  %or.cond.i.i.i.i456 = and i1 %i.ka, %i.jz
  br i1 %or.cond.i.i.i.i456, label %_ZN11sls_tracker9get_valueEP4expr.exit468, label %bb.bh

bb.bg:                                            ; preds = %.lr.ph.i.i.i.i454
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.jv) ]
  br label %bb.bh

bb.bh:                                            ; preds = %bb.bg, %bb.bf
  %i.kb = getelementptr inbounds nuw i8, ptr %.035.i.i.i.i455, i64 64 ; 2 uses
  %.not.i.i.i.i457 = icmp eq ptr %i.kb, %i.js
  br i1 %.not.i.i.i.i457, label %.lr.ph38.i.i.i.i460.preheader, label %.lr.ph.i.i.i.i454, !llvm.loop !5

.lr.ph38.i.i.i.i460.preheader:                    ; preds = %bb.bh, %bb.be
  br label %.lr.ph38.i.i.i.i460

.lr.ph38.i.i.i.i460:                              ; preds = %.lr.ph38.i.i.i.i460.preheader, %.lr.ph38.backedge.i.i.i.i464
  %.137.i.i.i.i462 = phi ptr [ %.pn.i.i465, %.lr.ph38.backedge.i.i.i.i464 ], [ %i.jq, %.lr.ph38.i.i.i.i460.preheader ] ; 3 uses
  %i.kc = load ptr, ptr %.137.i.i.i.i462, align 8, !tbaa !216 ; 4 uses
  %i.kd = icmp ult ptr %i.kc, inttoptr (i64 2 to ptr)
  br i1 %i.kd, label %bb.bj, label %bb.bi

bb.bi:                                            ; preds = %.lr.ph38.i.i.i.i460
  %i.ke = getelementptr inbounds nuw i8, ptr %i.kc, i64 12
  %i.kf = load i32, ptr %i.ke, align 4, !tbaa !213
  %i.kg = icmp eq i32 %i.kf, %i.jl
  %i.kh = icmp eq ptr %i.kc, %i.ji
  %or.cond31.i.i.i.i463 = and i1 %i.kh, %i.kg
  br i1 %or.cond31.i.i.i.i463, label %_ZN11sls_tracker9get_valueEP4expr.exit468, label %.lr.ph38.backedge.i.i.i.i464

bb.bj:                                            ; preds = %.lr.ph38.i.i.i.i460
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.kc) ]
  br label %.lr.ph38.backedge.i.i.i.i464

.lr.ph38.backedge.i.i.i.i464:                     ; preds = %bb.bj, %bb.bi
  %.pn.i.i465 = getelementptr inbounds nuw i8, ptr %.137.i.i.i.i462, i64 64
  br label %.lr.ph38.i.i.i.i460, !llvm.loop !6

_ZN11sls_tracker9get_valueEP4expr.exit468:        ; preds = %bb.bf, %bb.bi
  %.026.i.i.i.i467 = phi ptr [ %.137.i.i.i.i462, %bb.bi ], [ %.035.i.i.i.i455, %bb.bf ] ; 2 uses
  %i.ki = getelementptr inbounds nuw i8, ptr %.026.i.i.i.i467, i64 16 ; 2 uses
  %i.kj = getelementptr inbounds nuw i8, ptr %.026.i.i.i.i467, i64 20
  %i.kk = load i8, ptr %i.kj, align 4
  %i.kl = and i8 %i.kk, 1
  %i.km = icmp eq i8 %i.kl, 0
  br i1 %i.km, label %bb.bk, label %_ZN11mpz_managerILb0EE3neqERK3mpzS3_.exit470

bb.bk:                                            ; preds = %_ZN11sls_tracker9get_valueEP4expr.exit468
  %i.kn = load i8, ptr %i.je, align 4
  %i.ko = and i8 %i.kn, 1
  %i.kp = icmp eq i8 %i.ko, 0
  br i1 %i.kp, label %.split1003, label %_ZN11mpz_managerILb0EE3neqERK3mpzS3_.exit470

.split1003:                                       ; preds = %bb.bk
  %i.kq = load i32, ptr %i.ki, align 8, !tbaa !62
  %i.kr = load i32, ptr %i.jd, align 8, !tbaa !62
  %i.ks = icmp eq i32 %i.kq, %i.kr
  br i1 %i.ks, label %bb.bd, label %bb.bl

_ZN11mpz_managerILb0EE3neqERK3mpzS3_.exit470:     ; preds = %_ZN11sls_tracker9get_valueEP4expr.exit468, %bb.bk
  %i.kt = tail call noundef i32 @_ZN11mpz_managerILb0EE11big_compareERK3mpzS3_(ptr noundef nonnull align 8 dereferenceable(600) %i.jf, ptr noundef nonnull align 8 dereferenceable(16) %i.ki, ptr noundef nonnull align 8 dereferenceable(16) %i.jd)
  %i.ku = icmp eq i32 %i.kt, 0
  br i1 %i.ku, label %bb.bd, label %bb.bl

bb.bl:                                            ; preds = %.split1003, %_ZN11mpz_managerILb0EE3neqERK3mpzS3_.exit470
  %i.kv = load i8, ptr %i.az, align 4
  %i.kw = and i8 %i.kv, 1
  %i.kx = icmp eq i8 %i.kw, 0
  br i1 %i.kx, label %bb.bm, label %bb.bn

bb.bm:                                            ; preds = %bb.bl
  %i.ky = load i32, ptr %i.ay, align 8, !tbaa !62
  store i32 %i.ky, ptr %2, align 8, !tbaa !62
  %i.kz = getelementptr inbounds nuw i8, ptr %2, i64 4 ; 2 uses
  %i.la = load i8, ptr %i.kz, align 4
  %i.lb = and i8 %i.la, -2
  store i8 %i.lb, ptr %i.kz, align 4
  br label %.critedge

bb.bn:                                            ; preds = %bb.bl
  %i.lc = load ptr, ptr %i.ax, align 8, !tbaa !196, !nonnull !165, !align !166
  tail call void @_ZN11mpz_managerILb0EE7big_setER3mpzRKS1_(ptr noundef nonnull align 8 dereferenceable(600) %i.lc, ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef nonnull align 8 dereferenceable(16) %i.ay)
  br label %.critedge

bb.bo:                                            ; preds = %_ZNK3app13get_decl_kindEv.exit
  %i.ld = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.le = getelementptr inbounds nuw i8, ptr %0, i64 60
  %i.lf = load i8, ptr %i.le, align 4
  %i.lg = and i8 %i.lf, 1
  %i.lh = icmp eq i8 %i.lg, 0
  br i1 %i.lh, label %bb.bp, label %bb.bq

bb.bp:                                            ; preds = %bb.bo
  %i.li = load i32, ptr %i.ld, align 8, !tbaa !62
  store i32 %i.li, ptr %2, align 8, !tbaa !62
  %i.lj = getelementptr inbounds nuw i8, ptr %2, i64 4 ; 2 uses
  %i.lk = load i8, ptr %i.lj, align 4
  %i.ll = and i8 %i.lk, -2
  store i8 %i.ll, ptr %i.lj, align 4
  br label %_ZN11mpz_managerILb0EE3setER3mpzRKS1_.exit472

bb.bq:                                            ; preds = %bb.bo
  %i.lm = load ptr, ptr %i.ax, align 8, !tbaa !196, !nonnull !165, !align !166
  tail call void @_ZN11mpz_managerILb0EE7big_setER3mpzRKS1_(ptr noundef nonnull align 8 dereferenceable(600) %i.lm, ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef nonnull align 8 dereferenceable(16) %i.ld)
  br label %_ZN11mpz_managerILb0EE3setER3mpzRKS1_.exit472

_ZN11mpz_managerILb0EE3setER3mpzRKS1_.exit472:    ; preds = %bb.bp, %bb.bq
  %i.ln = getelementptr inbounds nuw i8, ptr %2, i64 4 ; 4 uses
  %i.lo = getelementptr inbounds nuw i8, ptr %0, i64 24
  %wide.trip.count880 = zext i32 %i.i to i64      ; 2 uses
  br label %bb.br

bb.br:                                            ; preds = %_ZN11mpz_managerILb0EE3setER3mpzRKS1_.exit472, %.critedge2
  %indvars.iv876 = phi i64 [ 0, %_ZN11mpz_managerILb0EE3setER3mpzRKS1_.exit472 ], [ %indvars.iv.next877, %.critedge2 ] ; 2 uses
  %indvars.iv870.a = phi i64 [ 1, %_ZN11mpz_managerILb0EE3setER3mpzRKS1_.exit472 ], [ %indvars.iv.next871.a, %.critedge2 ] ; 2 uses
  %i.lp = load i8, ptr %i.ln, align 4
  %i.lq = and i8 %i.lp, 1
  %i.lr = icmp eq i8 %i.lq, 0
  %i.ls = load i32, ptr %2, align 8
  %i.lt = icmp eq i32 %i.ls, 1
  %i.lu = select i1 %i.lr, i1 %i.lt, i1 false
  br i1 %i.lu, label %bb.bs, label %.critedge

bb.bs:                                            ; preds = %bb.br
  %indvars.iv.next877 = add nuw nsw i64 %indvars.iv876, 1 ; 3 uses
  %i.lv = icmp samesign ult i64 %indvars.iv.next877, %wide.trip.count880
  br i1 %i.lv, label %.lr.ph769, label %.critedge2

.lr.ph769:                                        ; preds = %bb.bs
  %i.lw = getelementptr inbounds nuw [8 x i8], ptr %i.aw, i64 %indvars.iv876
  br label %bb.bt

bb.bt:                                            ; preds = %.lr.ph769, %_ZN11mpz_managerILb0EE3setER3mpzRKS1_.exit507
  %indvars.iv872 = phi i64 [ %indvars.iv870.a, %.lr.ph769 ], [ %indvars.iv.next873, %_ZN11mpz_managerILb0EE3setER3mpzRKS1_.exit507 ] ; 2 uses
  %i.lx = load i8, ptr %i.ln, align 4
  %i.ly = and i8 %i.lx, 1
  %i.lz = icmp eq i8 %i.ly, 0
  %i.ma = load i32, ptr %2, align 8
  %i.mb = icmp eq i32 %i.ma, 1
  %i.mc = select i1 %i.lz, i1 %i.mb, i1 false
  br i1 %i.mc, label %bb.bu, label %.critedge2

.critedge2:                                       ; preds = %bb.bt, %_ZN11mpz_managerILb0EE3setER3mpzRKS1_.exit507, %bb.bs
  %indvars.iv.next871.a = add nuw nsw i64 %indvars.iv870.a, 1
  %exitcond881.not = icmp eq i64 %indvars.iv.next877, %wide.trip.count880
  br i1 %exitcond881.not, label %.critedge, label %bb.br, !llvm.loop !474

bb.bu:                                            ; preds = %bb.bt
  %i.md = load ptr, ptr %i.ax, align 8, !tbaa !196, !nonnull !165, !align !166
  %i.me = load ptr, ptr %i.lo, align 8, !tbaa !219, !nonnull !165, !align !166 ; 2 uses
  %i.mf = load ptr, ptr %i.lw, align 8, !tbaa !200 ; 3 uses
  %i.mg = getelementptr inbounds nuw i8, ptr %i.me, i64 120
  %i.mh = getelementptr inbounds nuw i8, ptr %i.mf, i64 12
  %i.mi = load i32, ptr %i.mh, align 4, !tbaa !213 ; 3 uses
  %i.mj = getelementptr inbounds nuw i8, ptr %i.me, i64 128
  %i.mk = load i32, ptr %i.mj, align 8, !tbaa !122 ; 4 uses
  %i.ml = add i32 %i.mk, -1                       ; 2 uses
  %i.mm = and i32 %i.ml, %i.mi                    ; 2 uses
  %i.mn = load ptr, ptr %i.mg, align 8, !tbaa !127 ; 5 uses
  %i.mo = zext i32 %i.mk to i64
  %i.mp = getelementptr inbounds nuw [64 x i8], ptr %i.mn, i64 %i.mo ; 2 uses
  %.not34.i.i.i.i474 = icmp eq i32 %i.mm, %i.mk
  br i1 %.not34.i.i.i.i474, label %.lr.ph38.i.i.i.i481.preheader, label %.lr.ph.i.i.i.i475.preheader

.lr.ph.i.i.i.i475.preheader:                      ; preds = %bb.bu
  %i.mq = zext i32 %i.mm to i64
  %.idx.i.i.i.i473 = shl nuw nsw i64 %i.mq, 6
  %i.mr = getelementptr inbounds nuw i8, ptr %i.mn, i64 %.idx.i.i.i.i473
  br label %.lr.ph.i.i.i.i475

.lr.ph.i.i.i.i475:                                ; preds = %.lr.ph.i.i.i.i475.preheader, %bb.bx
  %.035.i.i.i.i476 = phi ptr [ %i.my, %bb.bx ], [ %i.mr, %.lr.ph.i.i.i.i475.preheader ] ; 3 uses
  %i.ms = load ptr, ptr %.035.i.i.i.i476, align 8, !tbaa !216 ; 4 uses
  %i.mt = icmp ult ptr %i.ms, inttoptr (i64 2 to ptr)
  br i1 %i.mt, label %bb.bw, label %bb.bv

bb.bv:                                            ; preds = %.lr.ph.i.i.i.i475
  %i.mu = getelementptr inbounds nuw i8, ptr %i.ms, i64 12
  %i.mv = load i32, ptr %i.mu, align 4, !tbaa !213
  %i.mw = icmp eq i32 %i.mv, %i.mi
  %i.mx = icmp eq ptr %i.ms, %i.mf
  %or.cond.i.i.i.i477 = and i1 %i.mx, %i.mw
  br i1 %or.cond.i.i.i.i477, label %_ZN11sls_tracker9get_valueEP4expr.exit489, label %bb.bx

bb.bw:                                            ; preds = %.lr.ph.i.i.i.i475
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.ms) ]
  br label %bb.bx

bb.bx:                                            ; preds = %bb.bw, %bb.bv
  %i.my = getelementptr inbounds nuw i8, ptr %.035.i.i.i.i476, i64 64 ; 2 uses
  %.not.i.i.i.i478 = icmp eq ptr %i.my, %i.mp
  br i1 %.not.i.i.i.i478, label %.lr.ph38.i.i.i.i481.preheader, label %.lr.ph.i.i.i.i475, !llvm.loop !5

.lr.ph38.i.i.i.i481.preheader:                    ; preds = %bb.bx, %bb.bu
  br label %.lr.ph38.i.i.i.i481

.lr.ph38.i.i.i.i481:                              ; preds = %.lr.ph38.i.i.i.i481.preheader, %.lr.ph38.backedge.i.i.i.i485
  %.137.i.i.i.i483 = phi ptr [ %.pn.i.i486, %.lr.ph38.backedge.i.i.i.i485 ], [ %i.mn, %.lr.ph38.i.i.i.i481.preheader ] ; 3 uses
  %i.mz = load ptr, ptr %.137.i.i.i.i483, align 8, !tbaa !216 ; 4 uses
  %i.na = icmp ult ptr %i.mz, inttoptr (i64 2 to ptr)
  br i1 %i.na, label %bb.bz, label %bb.by

bb.by:                                            ; preds = %.lr.ph38.i.i.i.i481
  %i.nb = getelementptr inbounds nuw i8, ptr %i.mz, i64 12
  %i.nc = load i32, ptr %i.nb, align 4, !tbaa !213
  %i.nd = icmp eq i32 %i.nc, %i.mi
  %i.ne = icmp eq ptr %i.mz, %i.mf
  %or.cond31.i.i.i.i484 = and i1 %i.ne, %i.nd
  br i1 %or.cond31.i.i.i.i484, label %_ZN11sls_tracker9get_valueEP4expr.exit489, label %.lr.ph38.backedge.i.i.i.i485

bb.bz:                                            ; preds = %.lr.ph38.i.i.i.i481
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.mz) ]
  br label %.lr.ph38.backedge.i.i.i.i485

.lr.ph38.backedge.i.i.i.i485:                     ; preds = %bb.bz, %bb.by
  %.pn.i.i486 = getelementptr inbounds nuw i8, ptr %.137.i.i.i.i483, i64 64
  br label %.lr.ph38.i.i.i.i481, !llvm.loop !6

_ZN11sls_tracker9get_valueEP4expr.exit489:        ; preds = %bb.bv, %bb.by
  %.026.i.i.i.i488 = phi ptr [ %.137.i.i.i.i483, %bb.by ], [ %.035.i.i.i.i476, %bb.bv ] ; 2 uses
  %i.nf = getelementptr inbounds nuw i8, ptr %.026.i.i.i.i488, i64 16 ; 2 uses
  %i.ng = getelementptr inbounds nuw [8 x i8], ptr %i.aw, i64 %indvars.iv872
  %i.nh = load ptr, ptr %i.ng, align 8, !tbaa !200 ; 3 uses
  %i.ni = getelementptr inbounds nuw i8, ptr %i.nh, i64 12
  %i.nj = load i32, ptr %i.ni, align 4, !tbaa !213 ; 3 uses
  %i.nk = and i32 %i.nj, %i.ml                    ; 2 uses
  %.not34.i.i.i.i491 = icmp eq i32 %i.nk, %i.mk
  br i1 %.not34.i.i.i.i491, label %.lr.ph38.i.i.i.i498.preheader, label %.lr.ph.i.i.i.i492.preheader

.lr.ph.i.i.i.i492.preheader:                      ; preds = %_ZN11sls_tracker9get_valueEP4expr.exit489
  %i.nl = zext i32 %i.nk to i64
  %.idx.i.i.i.i490 = shl nuw nsw i64 %i.nl, 6
  %i.nm = getelementptr inbounds nuw i8, ptr %i.mn, i64 %.idx.i.i.i.i490
  br label %.lr.ph.i.i.i.i492

.lr.ph.i.i.i.i492:                                ; preds = %.lr.ph.i.i.i.i492.preheader, %bb.cc
  %.035.i.i.i.i493 = phi ptr [ %i.nt, %bb.cc ], [ %i.nm, %.lr.ph.i.i.i.i492.preheader ] ; 3 uses
  %i.nn = load ptr, ptr %.035.i.i.i.i493, align 8, !tbaa !216 ; 4 uses
  %i.no = icmp ult ptr %i.nn, inttoptr (i64 2 to ptr)
  br i1 %i.no, label %bb.cb, label %bb.ca

bb.ca:                                            ; preds = %.lr.ph.i.i.i.i492
  %i.np = getelementptr inbounds nuw i8, ptr %i.nn, i64 12
  %i.nq = load i32, ptr %i.np, align 4, !tbaa !213
  %i.nr = icmp eq i32 %i.nq, %i.nj
  %i.ns = icmp eq ptr %i.nn, %i.nh
  %or.cond.i.i.i.i494 = and i1 %i.ns, %i.nr
  br i1 %or.cond.i.i.i.i494, label %_ZN11sls_tracker9get_valueEP4expr.exit506, label %bb.cc

bb.cb:                                            ; preds = %.lr.ph.i.i.i.i492
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.nn) ]
  br label %bb.cc

bb.cc:                                            ; preds = %bb.cb, %bb.ca
  %i.nt = getelementptr inbounds nuw i8, ptr %.035.i.i.i.i493, i64 64 ; 2 uses
  %.not.i.i.i.i495 = icmp eq ptr %i.nt, %i.mp
  br i1 %.not.i.i.i.i495, label %.lr.ph38.i.i.i.i498.preheader, label %.lr.ph.i.i.i.i492, !llvm.loop !5

.lr.ph38.i.i.i.i498.preheader:                    ; preds = %bb.cc, %_ZN11sls_tracker9get_valueEP4expr.exit489
  br label %.lr.ph38.i.i.i.i498

.lr.ph38.i.i.i.i498:                              ; preds = %.lr.ph38.i.i.i.i498.preheader, %.lr.ph38.backedge.i.i.i.i502
  %.137.i.i.i.i500 = phi ptr [ %.pn.i.i503, %.lr.ph38.backedge.i.i.i.i502 ], [ %i.mn, %.lr.ph38.i.i.i.i498.preheader ] ; 3 uses
  %i.nu = load ptr, ptr %.137.i.i.i.i500, align 8, !tbaa !216 ; 4 uses
  %i.nv = icmp ult ptr %i.nu, inttoptr (i64 2 to ptr)
  br i1 %i.nv, label %bb.ce, label %bb.cd

bb.cd:                                            ; preds = %.lr.ph38.i.i.i.i498
  %i.nw = getelementptr inbounds nuw i8, ptr %i.nu, i64 12
  %i.nx = load i32, ptr %i.nw, align 4, !tbaa !213
  %i.ny = icmp eq i32 %i.nx, %i.nj
  %i.nz = icmp eq ptr %i.nu, %i.nh
  %or.cond31.i.i.i.i501 = and i1 %i.nz, %i.ny
  br i1 %or.cond31.i.i.i.i501, label %_ZN11sls_tracker9get_valueEP4expr.exit506, label %.lr.ph38.backedge.i.i.i.i502

bb.ce:                                            ; preds = %.lr.ph38.i.i.i.i498
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.nu) ]
  br label %.lr.ph38.backedge.i.i.i.i502

.lr.ph38.backedge.i.i.i.i502:                     ; preds = %bb.ce, %bb.cd
  %.pn.i.i503 = getelementptr inbounds nuw i8, ptr %.137.i.i.i.i500, i64 64
  br label %.lr.ph38.i.i.i.i498, !llvm.loop !6

_ZN11sls_tracker9get_valueEP4expr.exit506:        ; preds = %bb.ca, %bb.cd
  %.026.i.i.i.i505 = phi ptr [ %.137.i.i.i.i500, %bb.cd ], [ %.035.i.i.i.i493, %bb.ca ] ; 2 uses
  %i.oa = getelementptr inbounds nuw i8, ptr %.026.i.i.i.i505, i64 16 ; 2 uses
  %i.ob = getelementptr inbounds nuw i8, ptr %.026.i.i.i.i488, i64 20
  %i.oc = load i8, ptr %i.ob, align 4
  %i.od = and i8 %i.oc, 1
  %i.oe = icmp eq i8 %i.od, 0
  br i1 %i.oe, label %bb.cf, label %_ZN11mpz_managerILb0EE2eqERK3mpzS3_.exit

bb.cf:                                            ; preds = %_ZN11sls_tracker9get_valueEP4expr.exit506
  %i.of = getelementptr inbounds nuw i8, ptr %.026.i.i.i.i505, i64 20
  %i.og = load i8, ptr %i.of, align 4
  %i.oh = and i8 %i.og, 1
  %i.oi = icmp eq i8 %i.oh, 0
  br i1 %i.oi, label %.split, label %_ZN11mpz_managerILb0EE2eqERK3mpzS3_.exit

.split:                                           ; preds = %bb.cf
  %i.oj = load i32, ptr %i.nf, align 8, !tbaa !62
  %i.ok = load i32, ptr %i.oa, align 8, !tbaa !62
  %i.ol = icmp eq i32 %i.oj, %i.ok
  br i1 %i.ol, label %bb.cg, label %_ZN11mpz_managerILb0EE3setER3mpzRKS1_.exit507

_ZN11mpz_managerILb0EE2eqERK3mpzS3_.exit:         ; preds = %_ZN11sls_tracker9get_valueEP4expr.exit506, %bb.cf
  %i.om = tail call noundef i32 @_ZN11mpz_managerILb0EE11big_compareERK3mpzS3_(ptr noundef nonnull align 8 dereferenceable(600) %i.md, ptr noundef nonnull align 8 dereferenceable(16) %i.nf, ptr noundef nonnull align 8 dereferenceable(16) %i.oa)
  %i.on = icmp eq i32 %i.om, 0
  br i1 %i.on, label %bb.cg, label %_ZN11mpz_managerILb0EE3setER3mpzRKS1_.exit507

bb.cg:                                            ; preds = %.split, %_ZN11mpz_managerILb0EE2eqERK3mpzS3_.exit
  %i.oo = load i8, ptr %i.az, align 4
  %i.op = and i8 %i.oo, 1
  %i.oq = icmp eq i8 %i.op, 0
  br i1 %i.oq, label %bb.ch, label %bb.ci

bb.ch:                                            ; preds = %bb.cg
  %i.or = load i32, ptr %i.ay, align 8, !tbaa !62
  store i32 %i.or, ptr %2, align 8, !tbaa !62
  %i.os = load i8, ptr %i.ln, align 4
  %i.ot = and i8 %i.os, -2
  store i8 %i.ot, ptr %i.ln, align 4
  br label %_ZN11mpz_managerILb0EE3setER3mpzRKS1_.exit507

bb.ci:                                            ; preds = %bb.cg
  %i.ou = load ptr, ptr %i.ax, align 8, !tbaa !196, !nonnull !165, !align !166
end_hunk_1
