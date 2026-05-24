inline.NumInlined: 422
inline.NumDeleted: 109
begin_hunk_0_@_ZN2PP8Function8name_errERNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEERiiiNS1_12basic_stringIcS4_S5_EEPSt5dequeISA_SaISA_EE:bb.a

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN2PP8Function8evaluateERSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS7_EERNS2_18basic_stringstreamIcS5_S6_EERiiiS7_PSt5dequeIS7_S8_E(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef nonnull readonly align 8 captures(none) dereferenceable(104) %1, ptr noundef nonnull readonly align 8 captures(none) dereferenceable(24) %2, ptr noundef nonnull align 8 dereferenceable(128) %3, ptr noundef nonnull writeonly align 4 captures(none) dereferenceable(4) %4, i32 noundef %5, i32 noundef %6, ptr noundef readonly captures(none) %7, ptr noundef readonly captures(none) %8) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %i.b = alloca i64, align 8                      ; 6 uses
  %i.c = alloca i64, align 8                      ; 6 uses
  %i.d = alloca i64, align 8                      ; 6 uses
  %i.e = alloca i64, align 8                      ; 6 uses
  %i.f = alloca i64, align 8                      ; 6 uses
  %i.g = alloca i64, align 8                      ; 6 uses
  %i.h = alloca i64, align 8                      ; 6 uses
  %9 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %10 = alloca %"class.std::__cxx11::basic_string", align 8 ; 21 uses
  %11 = alloca %"class.std::__cxx11::basic_stringstream", align 8 ; 20 uses
  %12 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %13 = alloca %"class.std::__cxx11::basic_string", align 8 ; 14 uses
  %14 = alloca %"class.std::__cxx11::basic_string", align 8 ; 14 uses
  %15 = alloca %"class.std::__cxx11::basic_string", align 8 ; 20 uses
  %16 = alloca %"class.std::__cxx11::basic_string", align 8 ; 16 uses
  %17 = alloca %"class.std::__cxx11::basic_string", align 8 ; 16 uses
  %18 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %i.i = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !76
  %i.k = load ptr, ptr %2, align 8, !tbaa !78     ; 3 uses
  %i.l = ptrtoint ptr %i.j to i64
  %i.m = ptrtoint ptr %i.k to i64
  %i.n = sub i64 %i.l, %i.m
  %i.o = lshr exact i64 %i.n, 5
  %i.p = trunc i64 %i.o to i32                    ; 4 uses
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 36 ; 3 uses
  %i.r = load i32, ptr %i.q, align 4, !tbaa !19   ; 2 uses
  %.not = icmp eq i32 %i.r, %i.p
  br i1 %.not, label %bb.g, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.s = getelementptr inbounds nuw i8, ptr %9, i64 16 ; 7 uses
  store ptr %i.s, ptr %9, align 8, !tbaa !8
  %i.t = load ptr, ptr %7, align 8, !tbaa !20     ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.v = load i64, ptr %i.u, align 8, !tbaa !12   ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h) #15
  store i64 %i.v, ptr %i.h, align 8, !tbaa !25
  %i.w = icmp ugt i64 %i.v, 15
  br i1 %i.w, label %.noexc.i, label %._crit_edge.i.i

.noexc.i:                                         ; preds = %bb.b
  %i.x = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %9, ptr noundef nonnull align 8 dereferenceable(8) %i.h, i64 noundef 0) ; 2 uses
  store ptr %i.x, ptr %9, align 8, !tbaa !20
  %i.y = load i64, ptr %i.h, align 8, !tbaa !25
  store i64 %i.y, ptr %i.s, align 8, !tbaa !15
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %.noexc.i, %bb.b
  %i.z = phi ptr [ %i.x, %.noexc.i ], [ %i.s, %bb.b ] ; 2 uses
  switch i64 %i.v, label %bb.d [
    i64 1, label %bb.c
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit
  ]

bb.c:                                             ; preds = %._crit_edge.i.i
  %i.aa = load i8, ptr %i.t, align 1, !tbaa !15
  store i8 %i.aa, ptr %i.z, align 1, !tbaa !15
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit

bb.d:                                             ; preds = %._crit_edge.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.z, ptr align 1 %i.t, i64 %i.v, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit: ; preds = %._crit_edge.i.i, %bb.c, %bb.d
  %i.ab = load i64, ptr %i.h, align 8, !tbaa !25  ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %9, i64 8
  store i64 %i.ab, ptr %i.ac, align 8, !tbaa !12
  %i.ad = load ptr, ptr %9, align 8, !tbaa !20
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 %i.ab
  store i8 0, ptr %i.ae, align 1, !tbaa !15
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h) #15
  invoke void @_ZN2PP8Function17args_mismatch_errEiiRNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEERiiiNS1_12basic_stringIcS4_S5_EEPSt5dequeISA_SaISA_EE(ptr noundef nonnull align 8 dereferenceable(104) %1, i32 noundef %i.p, i32 noundef %i.r, ptr noundef nonnull align 8 dereferenceable(128) %3, ptr noundef nonnull align 4 dereferenceable(4) %4, i32 noundef %5, i32 noundef %6, ptr noundef nonnull %9, ptr noundef %8)
          to label %bb.e unwind label %bb.f

bb.e:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit
  %i.af = load ptr, ptr %9, align 8, !tbaa !20    ; 2 uses
  %i.ag = icmp eq ptr %i.af, %i.s
  br i1 %i.ag, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.e
  %i.ah = load i64, ptr %i.s, align 8, !tbaa !15
  %i.ai = add i64 %i.ah, 1
  call void @_ZdlPvm(ptr noundef %i.af, i64 noundef %i.ai) #14
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.e, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  store ptr %i.aj, ptr %0, align 8, !tbaa !8
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 0, ptr %i.ak, align 8, !tbaa !12
  store i8 0, ptr %i.aj, align 8, !tbaa !15
  br label %bb.bo

bb.f:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit
  %i.al = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.am = load ptr, ptr %9, align 8, !tbaa !20    ; 2 uses
  %i.an = icmp eq ptr %i.am, %i.s
  br i1 %i.an, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit79, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i77

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i77: ; preds = %bb.f
  %i.ao = load i64, ptr %i.s, align 8, !tbaa !15
  %i.ap = add i64 %i.ao, 1
  call void @_ZdlPvm(ptr noundef %i.am, i64 noundef %i.ap) #14
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit79

bb.g:                                             ; preds = %bb.a
  %i.aq = icmp eq i32 %i.p, 1
  br i1 %i.aq, label %bb.h, label %bb.ad

bb.h:                                             ; preds = %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #15
  %i.ar = getelementptr inbounds nuw i8, ptr %10, i64 16 ; 22 uses
  store ptr %i.ar, ptr %10, align 8, !tbaa !8
  %i.as = load ptr, ptr %i.k, align 8, !tbaa !20  ; 2 uses
  %i.at = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  %i.au = load i64, ptr %i.at, align 8, !tbaa !12 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #15
  store i64 %i.au, ptr %i.g, align 8, !tbaa !25
  %i.av = icmp ugt i64 %i.au, 15
  br i1 %i.av, label %.noexc.i81, label %._crit_edge.i.i80

.noexc.i81:                                       ; preds = %bb.h
  %i.aw = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %10, ptr noundef nonnull align 8 dereferenceable(8) %i.g, i64 noundef 0) ; 2 uses
  store ptr %i.aw, ptr %10, align 8, !tbaa !20
  %i.ax = load i64, ptr %i.g, align 8, !tbaa !25
  store i64 %i.ax, ptr %i.ar, align 8, !tbaa !15
  br label %._crit_edge.i.i80

._crit_edge.i.i80:                                ; preds = %.noexc.i81, %bb.h
  %i.ay = phi ptr [ %i.aw, %.noexc.i81 ], [ %i.ar, %bb.h ] ; 2 uses
  switch i64 %i.au, label %bb.j [
    i64 1, label %bb.i
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit82
  ]

bb.i:                                             ; preds = %._crit_edge.i.i80
  %i.az = load i8, ptr %i.as, align 1, !tbaa !15
  store i8 %i.az, ptr %i.ay, align 1, !tbaa !15
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit82

bb.j:                                             ; preds = %._crit_edge.i.i80
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.ay, ptr align 1 %i.as, i64 %i.au, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit82

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit82: ; preds = %._crit_edge.i.i80, %bb.i, %bb.j
  %i.ba = load i64, ptr %i.g, align 8, !tbaa !25  ; 2 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %10, i64 8 ; 11 uses
  store i64 %i.ba, ptr %i.bb, align 8, !tbaa !12
  %i.bc = load ptr, ptr %10, align 8, !tbaa !20
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bc, i64 %i.ba
  store i8 0, ptr %i.bd, align 1, !tbaa !15
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #15
  %i.be = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.bf = load i64, ptr %i.be, align 8, !tbaa !12
  switch i64 %i.bf, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit84.thread212 [
    i64 6, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit
    i64 7, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit84
  ]

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit82
  %i.bg = load ptr, ptr %1, align 8, !tbaa !20    ; 2 uses
  %i.bh = load i32, ptr %i.bg, align 1
  %i.bi = xor i32 %i.bh, 1819440243
  %i.bj = getelementptr i8, ptr %i.bg, i64 4
  %i.bk = load i16, ptr %i.bj, align 1
  %i.bl = zext i16 %i.bk to i32
  %i.bm = xor i32 %i.bl, 28261
  %i.bn = or i32 %i.bi, %i.bm
  %i.bo = icmp ne i32 %i.bn, 0
  %i.bp = zext i1 %i.bo to i32
  %i.bq = icmp eq i32 %i.bp, 0
  br i1 %i.bq, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit84.thread212

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit
  %i.br = load i64, ptr %i.bb, align 8, !tbaa !12
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #15
  invoke void @_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEC1Ev(ptr noundef nonnull align 8 dereferenceable(128) %11)
          to label %bb.k unwind label %bb.p

bb.k:                                             ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread
  %i.bs = trunc i64 %i.br to i32
  %i.bt = getelementptr inbounds nuw i8, ptr %11, i64 16 ; 2 uses
  %i.bu = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) %i.bt, i32 noundef %i.bs)
          to label %bb.l unwind label %bb.q       ; 0 uses

bb.l:                                             ; preds = %bb.k
  call void @llvm.experimental.noalias.scope.decl(metadata !79)
  call void @llvm.experimental.noalias.scope.decl(metadata !82)
  %i.bv = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 4 uses
  store ptr %i.bv, ptr %0, align 8, !tbaa !8, !alias.scope !85
  %i.bw = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 0, ptr %i.bw, align 8, !tbaa !12, !alias.scope !85
  store i8 0, ptr %i.bv, align 8, !tbaa !15, !alias.scope !85
  %i.bx = getelementptr inbounds nuw i8, ptr %11, i64 64
  %i.by = load ptr, ptr %i.bx, align 8, !tbaa !86, !noalias !85 ; 3 uses
  %.not5.i.i = icmp eq ptr %i.by, null
  br i1 %.not5.i.i, label %bb.o, label %bb.m

bb.m:                                             ; preds = %bb.l
  %19 = getelementptr inbounds nuw i8, ptr %11, i64 48
  %20 = load ptr, ptr %19, align 8, !noalias !85  ; 2 uses
  %21 = icmp ugt ptr %i.by, %20
  %.08.i.i.i = select i1 %21, ptr %i.by, ptr %20
  %i.bz = getelementptr inbounds nuw i8, ptr %11, i64 56
  %i.ca = load ptr, ptr %i.bz, align 8, !tbaa !88, !noalias !85 ; 2 uses
  %i.cb = ptrtoint ptr %.08.i.i.i to i64
  %i.cc = ptrtoint ptr %i.ca to i64
  %i.cd = sub i64 %i.cb, %i.cc
  %i.ce = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef 0, i64 noundef 0, ptr noundef %i.ca, i64 noundef %i.cd)
          to label %_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit unwind label %bb.n ; 0 uses

bb.n:                                             ; preds = %bb.o, %bb.m
  %i.cf = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.cg = load ptr, ptr %0, align 8, !tbaa !20, !alias.scope !85 ; 2 uses
  %i.ch = icmp eq ptr %i.cg, %i.bv
  br i1 %i.ch, label %.body, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %bb.n
  %i.ci = load i64, ptr %i.bv, align 8, !tbaa !15, !alias.scope !85
  %i.cj = add i64 %i.ci, 1
  call void @_ZdlPvm(ptr noundef %i.cg, i64 noundef %i.cj) #14
  br label %.body

bb.o:                                             ; preds = %bb.l
  %i.ck = getelementptr inbounds nuw i8, ptr %11, i64 96
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %i.ck)
          to label %_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit unwind label %bb.n

_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit: ; preds = %bb.o, %bb.m
  %i.cl = load ptr, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, align 8 ; 2 uses
  store ptr %i.cl, ptr %11, align 8, !tbaa !28
  %i.cm = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 64), align 8
  %i.cn = getelementptr i8, ptr %i.cl, i64 -24
  %i.co = load i64, ptr %i.cn, align 8
  %i.cp = getelementptr inbounds i8, ptr %11, i64 %i.co
  store ptr %i.cm, ptr %i.cp, align 8, !tbaa !28
  %i.cq = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 72), align 8
  store ptr %i.cq, ptr %i.bt, align 8, !tbaa !28
  %i.cr = getelementptr inbounds nuw i8, ptr %11, i64 24 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEEE, i64 16), ptr %i.cr, align 8, !tbaa !28
  %i.cs = getelementptr inbounds nuw i8, ptr %11, i64 96
  %i.ct = load ptr, ptr %i.cs, align 8, !tbaa !20 ; 2 uses
  %i.cu = getelementptr inbounds nuw i8, ptr %11, i64 112 ; 2 uses
  %i.cv = icmp eq ptr %i.ct, %i.cu
  br i1 %i.cv, label %_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i: ; preds = %_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit
  %i.cw = load i64, ptr %i.cu, align 8, !tbaa !15
  %i.cx = add i64 %i.cw, 1
  call void @_ZdlPvm(ptr noundef %i.ct, i64 noundef %i.cx) #14
  br label %_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev.exit

_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev.exit: ; preds = %_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVSt15basic_streambufIcSt11char_traitsIcEE, i64 16), ptr %i.cr, align 8, !tbaa !28
  %i.cy = getelementptr inbounds nuw i8, ptr %11, i64 80
  call void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.cy) #15
  %i.cz = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 16), align 8 ; 2 uses
  store ptr %i.cz, ptr %11, align 8, !tbaa !28
  %i.da = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 24), align 8
  %i.db = getelementptr i8, ptr %i.cz, i64 -24
  %i.dc = load i64, ptr %i.db, align 8
  %i.dd = getelementptr inbounds i8, ptr %11, i64 %i.dc
  store ptr %i.da, ptr %i.dd, align 8, !tbaa !28
  %i.de = getelementptr inbounds nuw i8, ptr %11, i64 8
  store i64 0, ptr %i.de, align 8, !tbaa !89
  %i.df = getelementptr inbounds nuw i8, ptr %11, i64 128
  call void @_ZNSt8ios_baseD2Ev(ptr noundef nonnull align 8 dereferenceable(264) %i.df) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #15
  br label %.critedge

bb.p:                                             ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread
  %i.dg = landingpad { ptr, i32 }
          cleanup
  br label %bb.r

bb.q:                                             ; preds = %bb.k
  %i.dh = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %bb.n, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i, %bb.q
  %eh.lpad-body = phi { ptr, i32 } [ %i.dh, %bb.q ], [ %i.cf, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i ], [ %i.cf, %bb.n ]
  call void @_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(128) %11) #15
  br label %bb.r

bb.r:                                             ; preds = %.body, %bb.p
  %.pn60 = phi { ptr, i32 } [ %eh.lpad-body, %.body ], [ %i.dg, %bb.p ]
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #15
  br label %bb.ac

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit84: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit82
  %i.di = load ptr, ptr %1, align 8, !tbaa !20    ; 2 uses
  %i.dj = load i32, ptr %i.di, align 1
  %i.dk = xor i32 %i.dj, 1953657971
  %i.dl = getelementptr i8, ptr %i.di, i64 3
  %i.dm = load i32, ptr %i.dl, align 1
  %i.dn = xor i32 %i.dm, 1835627124
  %i.do = or i32 %i.dk, %i.dn
  %i.dp = icmp ne i32 %i.do, 0
  %i.dq = zext i1 %i.dp to i32
  %i.dr = icmp eq i32 %i.dq, 0
  br i1 %i.dr, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit84.thread, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit84.thread212

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit84.thread: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit84
  %i.ds = load i64, ptr %i.bb, align 8, !tbaa !12 ; 3 uses
  %i.dt = trunc i64 %i.ds to i32                  ; 2 uses
  %i.du = icmp eq i32 %i.dt, 0
  br i1 %i.du, label %bb.s, label %._crit_edge.i.i85

bb.s:                                             ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit84.thread
  %i.dv = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  store ptr %i.dv, ptr %0, align 8, !tbaa !8
  %i.dw = load ptr, ptr %10, align 8, !tbaa !20   ; 2 uses
  %i.dx = icmp eq ptr %i.dw, %i.ar
  br i1 %i.dx, label %bb.t, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i

bb.t:                                             ; preds = %bb.s
  %i.dy = icmp ult i64 %i.ds, 16
  call void @llvm.assume(i1 %i.dy)
  %i.dz = load i8, ptr %i.ar, align 8
  store i8 %i.dz, ptr %i.dv, align 8
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i: ; preds = %bb.s
  store ptr %i.dw, ptr %0, align 8, !tbaa !20
  %i.ea = load i64, ptr %i.ar, align 8, !tbaa !15
  store i64 %i.ea, ptr %i.dv, align 8, !tbaa !15
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit: ; preds = %bb.t, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i
  %i.eb = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.ds, ptr %i.eb, align 8, !tbaa !12
  store ptr %i.ar, ptr %10, align 8, !tbaa !20
  store i64 0, ptr %i.bb, align 8, !tbaa !12
  store i8 0, ptr %i.ar, align 8, !tbaa !15
  br label %.critedge

._crit_edge.i.i85:                                ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit84.thread
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #15
  %i.ec = getelementptr inbounds nuw i8, ptr %12, i64 16 ; 7 uses
  store ptr %i.ec, ptr %12, align 8, !tbaa !8
  store i16 2336, ptr %i.ec, align 8
  %i.ed = getelementptr inbounds nuw i8, ptr %12, i64 8
  store i64 2, ptr %i.ed, align 8, !tbaa !12
  %i.ee = getelementptr inbounds nuw i8, ptr %12, i64 18
  store i8 0, ptr %i.ee, align 2, !tbaa !15
  %i.ef = add nsw i32 %i.dt, -1                   ; 2 uses
  %i.eg = sext i32 %i.ef to i64
  %i.eh = call noundef i64 @_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE16find_last_not_ofEPKcmm(ptr noundef nonnull align 8 dereferenceable(32) %10, ptr noundef nonnull %i.ec, i64 noundef %i.eg, i64 noundef 2) #15
  %i.ei = trunc i64 %i.eh to i32                  ; 2 uses
  %i.ej = icmp eq i32 %i.ei, -1
  br i1 %i.ej, label %bb.u, label %bb.w

bb.u:                                             ; preds = %._crit_edge.i.i85
  %i.ek = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  store ptr %i.ek, ptr %0, align 8, !tbaa !8
  %i.el = load ptr, ptr %10, align 8, !tbaa !20   ; 2 uses
  %i.em = icmp eq ptr %i.el, %i.ar
  br i1 %i.em, label %bb.v, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i89

bb.v:                                             ; preds = %bb.u
  %i.en = load i64, ptr %i.bb, align 8, !tbaa !12 ; 3 uses
  %i.eo = icmp ult i64 %i.en, 16
  call void @llvm.assume(i1 %i.eo)
  %i.ep = add nuw nsw i64 %i.en, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.ek, ptr noundef nonnull align 8 dereferenceable(1) %i.ar, i64 %i.ep, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit90

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i89: ; preds = %bb.u
  store ptr %i.el, ptr %0, align 8, !tbaa !20
  %i.eq = load i64, ptr %i.ar, align 8, !tbaa !15
  store i64 %i.eq, ptr %i.ek, align 8, !tbaa !15
  %.pre221 = load i64, ptr %i.bb, align 8, !tbaa !12
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit90

bb.w:                                             ; preds = %._crit_edge.i.i85
  %i.er = add nuw nsw i32 %i.ei, 1                ; 2 uses
  %i.es = sext i32 %i.er to i64                   ; 6 uses
  %i.et = sub nsw i32 %i.ef, %i.er
  %i.eu = add nsw i32 %i.et, 1                    ; 2 uses
  %i.ev = sext i32 %i.eu to i64
  %i.ew = load i64, ptr %i.bb, align 8, !tbaa !12 ; 3 uses
  %i.ex = icmp ult i64 %i.ew, %i.es
  br i1 %i.ex, label %bb.x, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8_M_checkEmPKc.exit.i

bb.x:                                             ; preds = %bb.w
  invoke void (ptr, ...) @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef nonnull @.str.49, ptr noundef nonnull @.str.51, i64 noundef %i.es, i64 noundef %i.ew) #16
          to label %.noexc91 unwind label %bb.ab

.noexc91:                                         ; preds = %bb.x
  unreachable

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8_M_checkEmPKc.exit.i: ; preds = %bb.w
  switch i32 %i.eu, label %bb.z [
    i32 -1, label %bb.y
    i32 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE5eraseEmm.exit
  ]

bb.y:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8_M_checkEmPKc.exit.i
  store i64 %i.es, ptr %i.bb, align 8, !tbaa !12
  %i.ey = load ptr, ptr %10, align 8, !tbaa !20
  %i.ez = getelementptr inbounds nuw i8, ptr %i.ey, i64 %i.es
end_hunk_0
