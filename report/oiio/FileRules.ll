inline.NumInlined: 5824
inline.NumDeleted: 2063
begin_hunk_0_@_ZNK16OpenColorIO_v2_59FileRules9isDefaultEv:bb.a
._crit_edge.i.i:                                  ; preds = %.noexc5, %bb.d
  %i.x = phi ptr [ %i.v, %.noexc5 ], [ %i.r, %bb.d ] ; 2 uses
  switch i64 %i.t, label %bb.f [
    i64 1, label %bb.e
    i64 0, label %bb.g
  ]

bb.e:                                             ; preds = %._crit_edge.i.i
  %i.y = load i8, ptr %i.q, align 1, !tbaa !24
  store i8 %i.y, ptr %i.x, align 1, !tbaa !24
  br label %bb.g

bb.f:                                             ; preds = %._crit_edge.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.x, ptr nonnull align 1 %i.q, i64 %i.t, i1 false)
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e, %._crit_edge.i.i
  %i.z = load i64, ptr %i.b, align 8, !tbaa !74   ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 8
  store i64 %i.z, ptr %i.aa, align 8, !tbaa !67
  %i.ab = load ptr, ptr %1, align 8, !tbaa !69
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 %i.z
  store i8 0, ptr %i.ac, align 1, !tbaa !24
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #30
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #30
  %i.ad = load ptr, ptr @_ZN16OpenColorIO_v2_512ROLE_DEFAULTE, align 8, !tbaa !48 ; 4 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 5 uses
  store ptr %i.ae, ptr %2, align 8, !tbaa !98
  %i.af = icmp eq ptr %i.ad, null
  br i1 %i.af, label %.invoke, label %bb.h

.invoke:                                          ; preds = %bb.g, %bb.c
  invoke void @_ZSt19__throw_logic_errorPKc(ptr noundef nonnull @.str.55) #31
          to label %.cont unwind label %bb.n

.cont:                                            ; preds = %.invoke
  unreachable

bb.h:                                             ; preds = %bb.g
  %i.ag = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.ad) #30 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #30
  store i64 %i.ag, ptr %i.a, align 8, !tbaa !74
  %i.ah = icmp ugt i64 %i.ag, 15
  br i1 %i.ah, label %.noexc.i7, label %._crit_edge.i.i6

.noexc.i7:                                        ; preds = %bb.h
  %i.ai = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0)
          to label %.noexc9 unwind label %bb.n    ; 2 uses

.noexc9:                                          ; preds = %.noexc.i7
  store ptr %i.ai, ptr %2, align 8, !tbaa !69
  %i.aj = load i64, ptr %i.a, align 8, !tbaa !74
  store i64 %i.aj, ptr %i.ae, align 8, !tbaa !24
  br label %._crit_edge.i.i6

._crit_edge.i.i6:                                 ; preds = %.noexc9, %bb.h
  %i.ak = phi ptr [ %i.ai, %.noexc9 ], [ %i.ae, %bb.h ] ; 2 uses
  switch i64 %i.ag, label %bb.j [
    i64 1, label %bb.i
    i64 0, label %bb.k
  ]

bb.i:                                             ; preds = %._crit_edge.i.i6
  %i.al = load i8, ptr %i.ad, align 1, !tbaa !24
  store i8 %i.al, ptr %i.ak, align 1, !tbaa !24
  br label %bb.k

bb.j:                                             ; preds = %._crit_edge.i.i6
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.ak, ptr nonnull align 1 %i.ad, i64 %i.ag, i1 false)
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i, %._crit_edge.i.i6
  %i.am = load i64, ptr %i.a, align 8, !tbaa !74  ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i64 %i.am, ptr %i.an, align 8, !tbaa !67
  %i.ao = load ptr, ptr %2, align 8, !tbaa !69
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 %i.am
  store i8 0, ptr %i.ap, align 1, !tbaa !24
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #30
  %i.aq = invoke noundef zeroext i1 @_ZN11StringUtils7CompareERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES7_(ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(32) %2)
          to label %bb.l unwind label %bb.n

bb.l:                                             ; preds = %bb.k
  %i.ar = load ptr, ptr %2, align 8, !tbaa !69    ; 2 uses
  %i.as = icmp eq ptr %i.ar, %i.ae
  br i1 %i.as, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.l
  %i.at = load i64, ptr %i.ae, align 8, !tbaa !24
  %i.au = add i64 %i.at, 1
  call void @_ZdlPvm(ptr noundef %i.ar, i64 noundef %i.au) #29
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.l, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #30
  %i.av = load ptr, ptr %1, align 8, !tbaa !69    ; 2 uses
  %i.aw = icmp eq ptr %i.av, %i.r
  br i1 %i.aw, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit13, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i11

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i11: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.ax = load i64, ptr %i.r, align 8, !tbaa !24
  %i.ay = add i64 %i.ax, 1
  call void @_ZdlPvm(ptr noundef %i.av, i64 noundef %i.ay) #29
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit13

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit13: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i11
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #30
  br i1 %i.aq, label %bb.m, label %.thread

.thread:                                          ; preds = %bb.b, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit13
  br label %bb.m

bb.m:                                             ; preds = %bb.a, %.thread, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit13
  %.1 = phi i1 [ true, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit13 ], [ false, %.thread ], [ false, %bb.a ]
  ret i1 %.1

bb.n:                                             ; preds = %.invoke, %.noexc.i7, %.noexc.i, %bb.k
  %i.az = landingpad { ptr, i32 }
          catch ptr null
  %i.ba = extractvalue { ptr, i32 } %i.az, 0
  call void @__clang_call_terminate(ptr %i.ba) #32
  unreachable
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZN11StringUtils7CompareERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES7_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %1) local_unnamed_addr #5 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %i.b = alloca i64, align 8                      ; 6 uses
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 7 uses
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #30
  %i.c = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 12 uses
  store ptr %i.c, ptr %3, align 8, !tbaa !98
  %i.d = load ptr, ptr %0, align 8, !tbaa !69     ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.f = load i64, ptr %i.e, align 8, !tbaa !67   ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #30
  store i64 %i.f, ptr %i.b, align 8, !tbaa !74
  %i.g = icmp ugt i64 %i.f, 15
  br i1 %i.g, label %.noexc.i, label %._crit_edge.i.i

.noexc.i:                                         ; preds = %bb.a
  %i.h = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(8) %i.b, i64 noundef 0) ; 2 uses
  store ptr %i.h, ptr %3, align 8, !tbaa !69
  %i.i = load i64, ptr %i.b, align 8, !tbaa !74
  store i64 %i.i, ptr %i.c, align 8, !tbaa !24
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %.noexc.i, %bb.a
  %i.j = phi ptr [ %i.h, %.noexc.i ], [ %i.c, %bb.a ] ; 2 uses
  switch i64 %i.f, label %bb.c [
    i64 1, label %bb.b
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit
  ]

bb.b:                                             ; preds = %._crit_edge.i.i
  %i.k = load i8, ptr %i.d, align 1, !tbaa !24
  store i8 %i.k, ptr %i.j, align 1, !tbaa !24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit

bb.c:                                             ; preds = %._crit_edge.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.j, ptr align 1 %i.d, i64 %i.f, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit: ; preds = %._crit_edge.i.i, %bb.b, %bb.c
  %i.l = load i64, ptr %i.b, align 8, !tbaa !74   ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 5 uses
  store i64 %i.l, ptr %i.m, align 8, !tbaa !67
  %i.n = load ptr, ptr %3, align 8, !tbaa !69
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 %i.l
  store i8 0, ptr %i.o, align 1, !tbaa !24
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #30
  call void @llvm.experimental.noalias.scope.decl(metadata !123)
  %i.p = load ptr, ptr %3, align 8, !tbaa !69, !noalias !123 ; 7 uses
  %i.q = load i64, ptr %i.m, align 8, !tbaa !67, !noalias !123 ; 9 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.p, i64 %i.q
  %.not6.i.i = icmp samesign eq i64 %i.q, 0
  br i1 %.not6.i.i, label %_ZSt9transformIN9__gnu_cxx17__normal_iteratorIPcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEES9_ZN11StringUtils5LowerES8_EUlhE_ET0_T_SD_SC_T1_.exit.i, label %iter.check

iter.check:                                       ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit
  %min.iters.check = icmp ult i64 %i.q, 8
  br i1 %min.iters.check, label %.lr.ph.i.i.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check56 = icmp ult i64 %i.q, 32
  br i1 %min.iters.check56, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %n.mod.vf = and i64 %i.q, 24
  %n.vec = and i64 %i.q, -32                      ; 4 uses
  %i.s = getelementptr i8, ptr %i.p, i64 %n.vec
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %next.gep = getelementptr i8, ptr %i.p, i64 %index ; 3 uses
  %i.t = getelementptr i8, ptr %next.gep, i64 16  ; 2 uses
  %wide.load = load <16 x i8>, ptr %next.gep, align 1, !tbaa !24, !noalias !123 ; 3 uses
  %wide.load57 = load <16 x i8>, ptr %i.t, align 1, !tbaa !24, !noalias !123 ; 3 uses
  %i.u = add <16 x i8> %wide.load, splat (i8 -65)
  %i.v = add <16 x i8> %wide.load57, splat (i8 -65)
  %i.w = icmp ult <16 x i8> %i.u, splat (i8 26)
  %i.x = icmp ult <16 x i8> %i.v, splat (i8 26)
  %6 = or disjoint <16 x i8> %wide.load, splat (i8 32)
  %i.y = or disjoint <16 x i8> %wide.load57, splat (i8 32)
  %i.z = select <16 x i1> %i.w, <16 x i8> %6, <16 x i8> %wide.load
  %7 = select <16 x i1> %i.x, <16 x i8> %i.y, <16 x i8> %wide.load57
  store <16 x i8> %i.z, ptr %next.gep, align 1, !tbaa !24, !noalias !123
  store <16 x i8> %7, ptr %i.t, align 1, !tbaa !24, !noalias !123
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.aa = icmp eq i64 %index.next, %n.vec
  br i1 %i.aa, label %middle.block, label %vector.body, !llvm.loop !126

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.q, %n.vec
  br i1 %cmp.n, label %_ZSt9transformIN9__gnu_cxx17__normal_iteratorIPcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEES9_ZN11StringUtils5LowerES8_EUlhE_ET0_T_SD_SC_T1_.exit.loopexit.i, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %n.mod.vf, 0
  br i1 %min.epilog.iters.check, label %.lr.ph.i.i.preheader, label %vec.epilog.ph, !prof !129

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec59 = and i64 %i.q, -8                     ; 3 uses
  %i.ab = getelementptr i8, ptr %i.p, i64 %n.vec59
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index60 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next63, %vec.epilog.vector.body ] ; 2 uses
  %next.gep61 = getelementptr i8, ptr %i.p, i64 %index60 ; 2 uses
  %wide.load62 = load <8 x i8>, ptr %next.gep61, align 1, !tbaa !24, !noalias !123 ; 3 uses
  %i.ac = add <8 x i8> %wide.load62, splat (i8 -65)
  %i.ad = icmp ult <8 x i8> %i.ac, splat (i8 26)
  %8 = or disjoint <8 x i8> %wide.load62, splat (i8 32)
  %9 = select <8 x i1> %i.ad, <8 x i8> %8, <8 x i8> %wide.load62
  store <8 x i8> %9, ptr %next.gep61, align 1, !tbaa !24, !noalias !123
  %index.next63 = add nuw i64 %index60, 8         ; 2 uses
  %i.ae = icmp eq i64 %index.next63, %n.vec59
  br i1 %i.ae, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !130

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n64 = icmp eq i64 %i.q, %n.vec59
  br i1 %cmp.n64, label %_ZSt9transformIN9__gnu_cxx17__normal_iteratorIPcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEES9_ZN11StringUtils5LowerES8_EUlhE_ET0_T_SD_SC_T1_.exit.loopexit.i, label %.lr.ph.i.i.preheader

.lr.ph.i.i.preheader:                             ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.sroa.0.08.i.i.ph = phi ptr [ %i.p, %iter.check ], [ %i.s, %vec.epilog.iter.check ], [ %i.ab, %vec.epilog.middle.block ]
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.preheader, %.lr.ph.i.i
  %.sroa.0.08.i.i = phi ptr [ %i.ai, %.lr.ph.i.i ], [ %.sroa.0.08.i.i.ph, %.lr.ph.i.i.preheader ] ; 3 uses
  %i.af = load i8, ptr %.sroa.0.08.i.i, align 1, !tbaa !24, !noalias !123 ; 3 uses
  %i.ag = add i8 %i.af, -65
  %or.cond.i.i.i.i = icmp ult i8 %i.ag, 26
  %i.ah = or disjoint i8 %i.af, 32
  %.0.i.i.i.i = select i1 %or.cond.i.i.i.i, i8 %i.ah, i8 %i.af
  store i8 %.0.i.i.i.i, ptr %.sroa.0.08.i.i, align 1, !tbaa !24, !noalias !123
  %i.ai = getelementptr i8, ptr %.sroa.0.08.i.i, i64 1 ; 2 uses
  %.not.i.i = icmp eq ptr %i.ai, %i.r
  br i1 %.not.i.i, label %_ZSt9transformIN9__gnu_cxx17__normal_iteratorIPcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEES9_ZN11StringUtils5LowerES8_EUlhE_ET0_T_SD_SC_T1_.exit.loopexit.i, label %.lr.ph.i.i, !llvm.loop !131

_ZSt9transformIN9__gnu_cxx17__normal_iteratorIPcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEES9_ZN11StringUtils5LowerES8_EUlhE_ET0_T_SD_SC_T1_.exit.loopexit.i: ; preds = %.lr.ph.i.i, %vec.epilog.middle.block, %middle.block
  %.pre.i = load ptr, ptr %3, align 8, !tbaa !69, !noalias !123
  br label %_ZSt9transformIN9__gnu_cxx17__normal_iteratorIPcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEES9_ZN11StringUtils5LowerES8_EUlhE_ET0_T_SD_SC_T1_.exit.i

_ZSt9transformIN9__gnu_cxx17__normal_iteratorIPcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEES9_ZN11StringUtils5LowerES8_EUlhE_ET0_T_SD_SC_T1_.exit.i: ; preds = %_ZSt9transformIN9__gnu_cxx17__normal_iteratorIPcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEES9_ZN11StringUtils5LowerES8_EUlhE_ET0_T_SD_SC_T1_.exit.loopexit.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit
  %i.aj = phi ptr [ %.pre.i, %_ZSt9transformIN9__gnu_cxx17__normal_iteratorIPcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEES9_ZN11StringUtils5LowerES8_EUlhE_ET0_T_SD_SC_T1_.exit.loopexit.i ], [ %i.p, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit ] ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 7 uses
  store ptr %i.ak, ptr %2, align 8, !tbaa !98, !alias.scope !123
  %i.al = icmp eq ptr %i.aj, %i.c
  br i1 %i.al, label %bb.d, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

bb.d:                                             ; preds = %_ZSt9transformIN9__gnu_cxx17__normal_iteratorIPcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEES9_ZN11StringUtils5LowerES8_EUlhE_ET0_T_SD_SC_T1_.exit.i
  %i.am = load i64, ptr %i.m, align 8, !tbaa !67, !noalias !123 ; 3 uses
  %i.an = icmp ult i64 %i.am, 16
  call void @llvm.assume(i1 %i.an)
  %i.ao = add nuw nsw i64 %i.am, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.ak, ptr noundef nonnull align 8 dereferenceable(1) %i.c, i64 %i.ao, i1 false)
  br label %bb.e

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZSt9transformIN9__gnu_cxx17__normal_iteratorIPcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEES9_ZN11StringUtils5LowerES8_EUlhE_ET0_T_SD_SC_T1_.exit.i
  store ptr %i.aj, ptr %2, align 8, !tbaa !69, !alias.scope !123
  %i.ap = load i64, ptr %i.c, align 8, !tbaa !24, !noalias !123
  store i64 %i.ap, ptr %i.ak, align 8, !tbaa !24, !alias.scope !123
  %.pre4.i = load i64, ptr %i.m, align 8, !tbaa !67, !noalias !123
  br label %bb.e

bb.e:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %bb.d
  %i.aq = phi i64 [ %i.am, %bb.d ], [ %.pre4.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ]
  %i.ar = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  store i64 %i.aq, ptr %i.ar, align 8, !tbaa !67, !alias.scope !123
  store ptr %i.c, ptr %3, align 8, !tbaa !69, !noalias !123
  store i64 0, ptr %i.m, align 8, !tbaa !67, !noalias !123
  store i8 0, ptr %i.c, align 8, !tbaa !24, !noalias !123
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #30
  %i.as = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 10 uses
  store ptr %i.as, ptr %5, align 8, !tbaa !98
  %i.at = load ptr, ptr %1, align 8, !tbaa !69    ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.av = load i64, ptr %i.au, align 8, !tbaa !67 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #30
  store i64 %i.av, ptr %i.a, align 8, !tbaa !74
  %i.aw = icmp ugt i64 %i.av, 15
  br i1 %i.aw, label %.noexc.i8, label %._crit_edge.i.i7

.noexc.i8:                                        ; preds = %bb.e
  %i.ax = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0)
          to label %.noexc unwind label %bb.m     ; 2 uses

.noexc:                                           ; preds = %.noexc.i8
  store ptr %i.ax, ptr %5, align 8, !tbaa !69
  %i.ay = load i64, ptr %i.a, align 8, !tbaa !74
  store i64 %i.ay, ptr %i.as, align 8, !tbaa !24
  br label %._crit_edge.i.i7

._crit_edge.i.i7:                                 ; preds = %.noexc, %bb.e
  %i.az = phi ptr [ %i.ax, %.noexc ], [ %i.as, %bb.e ] ; 2 uses
  switch i64 %i.av, label %bb.g [
    i64 1, label %bb.f
    i64 0, label %bb.h
  ]

bb.f:                                             ; preds = %._crit_edge.i.i7
  %i.ba = load i8, ptr %i.at, align 1, !tbaa !24
  store i8 %i.ba, ptr %i.az, align 1, !tbaa !24
  br label %bb.h

bb.g:                                             ; preds = %._crit_edge.i.i7
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.az, ptr align 1 %i.at, i64 %i.av, i1 false)
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f, %._crit_edge.i.i7
  %i.bb = load i64, ptr %i.a, align 8, !tbaa !74  ; 2 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 5 uses
  store i64 %i.bb, ptr %i.bc, align 8, !tbaa !67
  %i.bd = load ptr, ptr %5, align 8, !tbaa !69
  %i.be = getelementptr inbounds nuw i8, ptr %i.bd, i64 %i.bb
  store i8 0, ptr %i.be, align 1, !tbaa !24
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #30
  call void @llvm.experimental.noalias.scope.decl(metadata !132)
  %i.bf = load ptr, ptr %5, align 8, !tbaa !69, !noalias !132 ; 7 uses
  %i.bg = load i64, ptr %i.bc, align 8, !tbaa !67, !noalias !132 ; 9 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bf, i64 %i.bg
  %.not6.i.i10 = icmp samesign eq i64 %i.bg, 0
  br i1 %.not6.i.i10, label %_ZSt9transformIN9__gnu_cxx17__normal_iteratorIPcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEES9_ZN11StringUtils5LowerES8_EUlhE_ET0_T_SD_SC_T1_.exit.i18, label %iter.check81

iter.check81:                                     ; preds = %bb.h
  %min.iters.check66 = icmp ult i64 %i.bg, 8
  br i1 %min.iters.check66, label %.lr.ph.i.i11.preheader, label %vector.main.loop.iter.check67

vector.main.loop.iter.check67:                    ; preds = %iter.check81
  %min.iters.check68 = icmp ult i64 %i.bg, 32
  br i1 %min.iters.check68, label %vec.epilog.ph85, label %vector.ph69

vector.ph69:                                      ; preds = %vector.main.loop.iter.check67
  %n.mod.vf70 = and i64 %i.bg, 24
  %n.vec71 = and i64 %i.bg, -32                   ; 4 uses
  %i.bi = getelementptr i8, ptr %i.bf, i64 %n.vec71
  br label %vector.body72

vector.body72:                                    ; preds = %vector.body72, %vector.ph69
  %index73 = phi i64 [ 0, %vector.ph69 ], [ %index.next77, %vector.body72 ] ; 2 uses
  %next.gep74 = getelementptr i8, ptr %i.bf, i64 %index73 ; 3 uses
  %i.bj = getelementptr i8, ptr %next.gep74, i64 16 ; 2 uses
  %wide.load75 = load <16 x i8>, ptr %next.gep74, align 1, !tbaa !24, !noalias !132 ; 3 uses
  %wide.load76 = load <16 x i8>, ptr %i.bj, align 1, !tbaa !24, !noalias !132 ; 3 uses
  %i.bk = add <16 x i8> %wide.load75, splat (i8 -65)
  %i.bl = add <16 x i8> %wide.load76, splat (i8 -65)
  %i.bm = icmp ult <16 x i8> %i.bk, splat (i8 26)
  %i.bn = icmp ult <16 x i8> %i.bl, splat (i8 26)
  %10 = or disjoint <16 x i8> %wide.load75, splat (i8 32)
  %i.bo = or disjoint <16 x i8> %wide.load76, splat (i8 32)
  %i.bp = select <16 x i1> %i.bm, <16 x i8> %10, <16 x i8> %wide.load75
  %11 = select <16 x i1> %i.bn, <16 x i8> %i.bo, <16 x i8> %wide.load76
  store <16 x i8> %i.bp, ptr %next.gep74, align 1, !tbaa !24, !noalias !132
  store <16 x i8> %11, ptr %i.bj, align 1, !tbaa !24, !noalias !132
  %index.next77 = add nuw i64 %index73, 32        ; 2 uses
  %i.bq = icmp eq i64 %index.next77, %n.vec71
  br i1 %i.bq, label %middle.block78, label %vector.body72, !llvm.loop !135

middle.block78:                                   ; preds = %vector.body72
  %cmp.n79 = icmp eq i64 %i.bg, %n.vec71
  br i1 %cmp.n79, label %_ZSt9transformIN9__gnu_cxx17__normal_iteratorIPcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEES9_ZN11StringUtils5LowerES8_EUlhE_ET0_T_SD_SC_T1_.exit.loopexit.i16, label %vec.epilog.iter.check83

vec.epilog.iter.check83:                          ; preds = %middle.block78
  %min.epilog.iters.check84 = icmp eq i64 %n.mod.vf70, 0
  br i1 %min.epilog.iters.check84, label %.lr.ph.i.i11.preheader, label %vec.epilog.ph85, !prof !129

vec.epilog.ph85:                                  ; preds = %vector.main.loop.iter.check67, %vec.epilog.iter.check83
  %vec.epilog.resume.val80 = phi i64 [ %n.vec71, %vec.epilog.iter.check83 ], [ 0, %vector.main.loop.iter.check67 ]
  %n.vec87 = and i64 %i.bg, -8                    ; 3 uses
  %i.br = getelementptr i8, ptr %i.bf, i64 %n.vec87
  br label %vec.epilog.vector.body88

vec.epilog.vector.body88:                         ; preds = %vec.epilog.vector.body88, %vec.epilog.ph85
  %index89 = phi i64 [ %vec.epilog.resume.val80, %vec.epilog.ph85 ], [ %index.next92, %vec.epilog.vector.body88 ] ; 2 uses
  %next.gep90 = getelementptr i8, ptr %i.bf, i64 %index89 ; 2 uses
  %wide.load91 = load <8 x i8>, ptr %next.gep90, align 1, !tbaa !24, !noalias !132 ; 3 uses
  %i.bs = add <8 x i8> %wide.load91, splat (i8 -65)
  %i.bt = icmp ult <8 x i8> %i.bs, splat (i8 26)
  %12 = or disjoint <8 x i8> %wide.load91, splat (i8 32)
  %13 = select <8 x i1> %i.bt, <8 x i8> %12, <8 x i8> %wide.load91
  store <8 x i8> %13, ptr %next.gep90, align 1, !tbaa !24, !noalias !132
  %index.next92 = add nuw i64 %index89, 8         ; 2 uses
  %i.bu = icmp eq i64 %index.next92, %n.vec87
  br i1 %i.bu, label %vec.epilog.middle.block93, label %vec.epilog.vector.body88, !llvm.loop !136

vec.epilog.middle.block93:                        ; preds = %vec.epilog.vector.body88
  %cmp.n94 = icmp eq i64 %i.bg, %n.vec87
  br i1 %cmp.n94, label %_ZSt9transformIN9__gnu_cxx17__normal_iteratorIPcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEES9_ZN11StringUtils5LowerES8_EUlhE_ET0_T_SD_SC_T1_.exit.loopexit.i16, label %.lr.ph.i.i11.preheader

.lr.ph.i.i11.preheader:                           ; preds = %iter.check81, %vec.epilog.iter.check83, %vec.epilog.middle.block93
  %.sroa.0.08.i.i12.ph = phi ptr [ %i.bf, %iter.check81 ], [ %i.bi, %vec.epilog.iter.check83 ], [ %i.br, %vec.epilog.middle.block93 ]
  br label %.lr.ph.i.i11

.lr.ph.i.i11:                                     ; preds = %.lr.ph.i.i11.preheader, %.lr.ph.i.i11
  %.sroa.0.08.i.i12 = phi ptr [ %i.by, %.lr.ph.i.i11 ], [ %.sroa.0.08.i.i12.ph, %.lr.ph.i.i11.preheader ] ; 3 uses
  %i.bv = load i8, ptr %.sroa.0.08.i.i12, align 1, !tbaa !24, !noalias !132 ; 3 uses
  %i.bw = add i8 %i.bv, -65
  %or.cond.i.i.i.i13 = icmp ult i8 %i.bw, 26
  %i.bx = or disjoint i8 %i.bv, 32
  %.0.i.i.i.i14 = select i1 %or.cond.i.i.i.i13, i8 %i.bx, i8 %i.bv
  store i8 %.0.i.i.i.i14, ptr %.sroa.0.08.i.i12, align 1, !tbaa !24, !noalias !132
  %i.by = getelementptr i8, ptr %.sroa.0.08.i.i12, i64 1 ; 2 uses
  %.not.i.i15 = icmp eq ptr %i.by, %i.bh
  br i1 %.not.i.i15, label %_ZSt9transformIN9__gnu_cxx17__normal_iteratorIPcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEES9_ZN11StringUtils5LowerES8_EUlhE_ET0_T_SD_SC_T1_.exit.loopexit.i16, label %.lr.ph.i.i11, !llvm.loop !137

_ZSt9transformIN9__gnu_cxx17__normal_iteratorIPcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEES9_ZN11StringUtils5LowerES8_EUlhE_ET0_T_SD_SC_T1_.exit.loopexit.i16: ; preds = %.lr.ph.i.i11, %vec.epilog.middle.block93, %middle.block78
  %.pre.i17 = load ptr, ptr %5, align 8, !tbaa !69, !noalias !132
  br label %_ZSt9transformIN9__gnu_cxx17__normal_iteratorIPcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEES9_ZN11StringUtils5LowerES8_EUlhE_ET0_T_SD_SC_T1_.exit.i18

_ZSt9transformIN9__gnu_cxx17__normal_iteratorIPcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEES9_ZN11StringUtils5LowerES8_EUlhE_ET0_T_SD_SC_T1_.exit.i18: ; preds = %_ZSt9transformIN9__gnu_cxx17__normal_iteratorIPcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEES9_ZN11StringUtils5LowerES8_EUlhE_ET0_T_SD_SC_T1_.exit.loopexit.i16, %bb.h
  %i.bz = phi ptr [ %.pre.i17, %_ZSt9transformIN9__gnu_cxx17__normal_iteratorIPcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEES9_ZN11StringUtils5LowerES8_EUlhE_ET0_T_SD_SC_T1_.exit.loopexit.i16 ], [ %i.bf, %bb.h ] ; 3 uses
  %i.ca = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 6 uses
  store ptr %i.ca, ptr %4, align 8, !tbaa !98, !alias.scope !132
  %i.cb = icmp eq ptr %i.bz, %i.as
  br i1 %i.cb, label %bb.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i19

bb.i:                                             ; preds = %_ZSt9transformIN9__gnu_cxx17__normal_iteratorIPcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEES9_ZN11StringUtils5LowerES8_EUlhE_ET0_T_SD_SC_T1_.exit.i18
  %i.cc = load i64, ptr %i.bc, align 8, !tbaa !67, !noalias !132 ; 3 uses
  %i.cd = icmp ult i64 %i.cc, 16
  call void @llvm.assume(i1 %i.cd)
  %i.ce = add nuw nsw i64 %i.cc, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.ca, ptr noundef nonnull align 8 dereferenceable(1) %i.as, i64 %i.ce, i1 false)
  br label %bb.j

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i19: ; preds = %_ZSt9transformIN9__gnu_cxx17__normal_iteratorIPcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEES9_ZN11StringUtils5LowerES8_EUlhE_ET0_T_SD_SC_T1_.exit.i18
  store ptr %i.bz, ptr %4, align 8, !tbaa !69, !alias.scope !132
  %i.cf = load i64, ptr %i.as, align 8, !tbaa !24, !noalias !132
  store i64 %i.cf, ptr %i.ca, align 8, !tbaa !24, !alias.scope !132
  %.pre4.i20 = load i64, ptr %i.bc, align 8, !tbaa !67, !noalias !132
  br label %bb.j

bb.j:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i19, %bb.i
  %i.cg = phi ptr [ %i.ca, %bb.i ], [ %i.bz, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i19 ] ; 3 uses
  %i.ch = phi i64 [ %i.cc, %bb.i ], [ %.pre4.i20, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i19 ] ; 5 uses
  %i.ci = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i64 %i.ch, ptr %i.ci, align 8, !tbaa !67, !alias.scope !132
  store ptr %i.as, ptr %5, align 8, !tbaa !69, !noalias !132
  store i64 0, ptr %i.bc, align 8, !tbaa !67, !noalias !132
  store i8 0, ptr %i.as, align 8, !tbaa !24, !noalias !132
  %i.cj = load i64, ptr %i.ar, align 8, !tbaa !67
  %i.ck = icmp eq i64 %i.cj, %i.ch
  br i1 %i.ck, label %bb.k, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit

bb.k:                                             ; preds = %bb.j
  %i.cl = icmp eq i64 %i.ch, 0
  br i1 %i.cl, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.cm = load ptr, ptr %2, align 8, !tbaa !69
  %bcmp.i = call i32 @bcmp(ptr %i.cm, ptr %i.cg, i64 %i.ch)
  %i.cn = icmp eq i32 %bcmp.i, 0
  br label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit: ; preds = %bb.j, %bb.k, %bb.l
  %i.co = phi i1 [ false, %bb.j ], [ %i.cn, %bb.l ], [ true, %bb.k ]
  %i.cp = icmp eq ptr %i.cg, %i.ca
  br i1 %i.cp, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit
  %i.cq = icmp ult i64 %i.ch, 16
  call void @llvm.assume(i1 %i.cq)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit25

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit
  %i.cr = load i64, ptr %i.ca, align 8, !tbaa !24
  %i.cs = add i64 %i.cr, 1
  call void @_ZdlPvm(ptr noundef %i.cg, i64 noundef %i.cs) #29
  %.pre = load ptr, ptr %5, align 8, !tbaa !69    ; 2 uses
  %i.ct = icmp eq ptr %.pre, %i.as
  br i1 %i.ct, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit25, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i23

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i23: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.cu = load i64, ptr %i.as, align 8, !tbaa !24
  %i.cv = add i64 %i.cu, 1
  call void @_ZdlPvm(ptr noundef %.pre, i64 noundef %i.cv) #29
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit25

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit25: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i23
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #30
  %i.cw = load ptr, ptr %2, align 8, !tbaa !69    ; 2 uses
  %i.cx = icmp eq ptr %i.cw, %i.ak
  br i1 %i.cx, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit28, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i26

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i26: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit25
  %i.cy = load i64, ptr %i.ak, align 8, !tbaa !24
  %i.cz = add i64 %i.cy, 1
  call void @_ZdlPvm(ptr noundef %i.cw, i64 noundef %i.cz) #29
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit28

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit28: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit25, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i26
  %i.da = load ptr, ptr %3, align 8, !tbaa !69    ; 2 uses
  %i.db = icmp eq ptr %i.da, %i.c
  br i1 %i.db, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit31, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i29

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i29: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit28
  %i.dc = load i64, ptr %i.c, align 8, !tbaa !24
  %i.dd = add i64 %i.dc, 1
  call void @_ZdlPvm(ptr noundef %i.da, i64 noundef %i.dd) #29
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit31

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit31: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit28, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i29
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #30
  ret i1 %i.co

bb.m:                                             ; preds = %.noexc.i8
  %i.de = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #30
  %i.df = load ptr, ptr %2, align 8, !tbaa !69    ; 2 uses
  %i.dg = icmp eq ptr %i.df, %i.ak
  br i1 %i.dg, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit37, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i35

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i35: ; preds = %bb.m
  %i.dh = load i64, ptr %i.ak, align 8, !tbaa !24
  %i.di = add i64 %i.dh, 1
  call void @_ZdlPvm(ptr noundef %i.df, i64 noundef %i.di) #29
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit37

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit37: ; preds = %bb.m, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i35
  %i.dj = load ptr, ptr %3, align 8, !tbaa !69    ; 2 uses
  %i.dk = icmp eq ptr %i.dj, %i.c
  br i1 %i.dk, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit40, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i38

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i38: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit37
  %i.dl = load i64, ptr %i.c, align 8, !tbaa !24
  %i.dm = add i64 %i.dl, 1
  call void @_ZdlPvm(ptr noundef %i.dj, i64 noundef %i.dm) #29
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit40

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit40: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit37, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i38
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #30
  resume { ptr, i32 } %i.de
}

; Function Attrs: mustprogress uwtable
define noundef ptr @_ZNK16OpenColorIO_v2_59FileRules4Impl25getColorSpaceFromFilepathERKNS_6ConfigEPKc(ptr noundef nonnull readonly align 8 captures(none) dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef %2) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !16   ; 3 uses
  %i.c = load ptr, ptr %0, align 8, !tbaa !13     ; 2 uses
  %.not15.not.i.i = icmp eq ptr %i.b, %i.c
  br i1 %.not15.not.i.i, label %._crit_edge.i.i, label %.lr.ph.preheader.i.i

.lr.ph.preheader.i.i:                             ; preds = %bb.a
  %i.d = ptrtoint ptr %i.b to i64
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = sub i64 %i.d, %i.e
  %i.g = ashr exact i64 %i.f, 4
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.b, %.lr.ph.preheader.i.i
  %.01116.i.i = phi i64 [ %i.n, %bb.b ], [ 0, %.lr.ph.preheader.i.i ] ; 3 uses
  %i.h = load ptr, ptr %0, align 8, !tbaa !13
  %i.i = getelementptr inbounds nuw [16 x i8], ptr %i.h, i64 %.01116.i.i
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !39
  %i.k = tail call noundef zeroext i1 @_ZNK16OpenColorIO_v2_58FileRule7matchesERKNS_6ConfigEPKc(ptr noundef nonnull align 8 dereferenceable(212) %i.j, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef %2)
  br i1 %i.k, label %.thread.i.i, label %bb.b

.thread.i.i:                                      ; preds = %.lr.ph.i.i
  %i.l = load ptr, ptr %0, align 8, !tbaa !13
  %i.m = getelementptr inbounds nuw [16 x i8], ptr %i.l, i64 %.01116.i.i
  br label %_ZNK16OpenColorIO_v2_59FileRules4Impl25getColorSpaceFromFilepathERKNS_6ConfigEPKcRm.exit

bb.b:                                             ; preds = %.lr.ph.i.i
  %i.n = add nuw i64 %.01116.i.i, 1               ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %i.n, %i.g
  br i1 %exitcond.not.i.i, label %._crit_edge.loopexit.i.i, label %.lr.ph.i.i, !llvm.loop !75

._crit_edge.loopexit.i.i:                         ; preds = %bb.b
  %.pre.i.i = load ptr, ptr %i.a, align 8, !tbaa !38
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %._crit_edge.loopexit.i.i, %bb.a
  %i.o = phi ptr [ %.pre.i.i, %._crit_edge.loopexit.i.i ], [ %i.b, %bb.a ]
  %i.p = getelementptr inbounds i8, ptr %i.o, i64 -16
  br label %_ZNK16OpenColorIO_v2_59FileRules4Impl25getColorSpaceFromFilepathERKNS_6ConfigEPKcRm.exit

_ZNK16OpenColorIO_v2_59FileRules4Impl25getColorSpaceFromFilepathERKNS_6ConfigEPKcRm.exit: ; preds = %.thread.i.i, %._crit_edge.i.i
  %.pn.in.i.i = phi ptr [ %i.p, %._crit_edge.i.i ], [ %i.m, %.thread.i.i ]
  %.pn.i.i = load ptr, ptr %.pn.in.i.i, align 8, !tbaa !39
end_hunk_0
