inline.NumInlined: 1533
inline.NumDeleted: 511
begin_hunk_0_@_ZN16OpenColorIO_v2_510ColorSpace8addAliasEPKc:bb.a

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit16: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i14
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #30
  br i1 %.not28, label %bb.p, label %bb.w

bb.p:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit16
  %i.bn = load ptr, ptr %0, align 8, !tbaa !70    ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #30
  %i.bo = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 8 uses
  store ptr %i.bo, ptr %5, align 8, !tbaa !31
  %i.bp = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %1) #30 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #30
  store i64 %i.bp, ptr %i.a, align 8, !tbaa !89
  %i.bq = icmp ugt i64 %i.bp, 15
  br i1 %i.bq, label %.noexc.i18, label %._crit_edge.i.i17

.noexc.i18:                                       ; preds = %bb.p
  %i.br = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0)
          to label %.noexc20 unwind label %bb.x   ; 2 uses

.noexc20:                                         ; preds = %.noexc.i18
  store ptr %i.br, ptr %5, align 8, !tbaa !7
  %i.bs = load i64, ptr %i.a, align 8, !tbaa !89
  store i64 %i.bs, ptr %i.bo, align 8, !tbaa !13
  br label %._crit_edge.i.i17

._crit_edge.i.i17:                                ; preds = %.noexc20, %bb.p
  %i.bt = phi ptr [ %i.br, %.noexc20 ], [ %i.bo, %bb.p ] ; 2 uses
  switch i64 %i.bp, label %bb.r [
    i64 1, label %bb.q
    i64 0, label %bb.s
  ]

bb.q:                                             ; preds = %._crit_edge.i.i17
  %i.bu = load i8, ptr %1, align 1, !tbaa !13
  store i8 %i.bu, ptr %i.bt, align 1, !tbaa !13
  br label %bb.s

bb.r:                                             ; preds = %._crit_edge.i.i17
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.bt, ptr nonnull align 1 %1, i64 %i.bp, i1 false)
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.q, %._crit_edge.i.i17
  %i.bv = load i64, ptr %i.a, align 8, !tbaa !89  ; 2 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 4 uses
  store i64 %i.bv, ptr %i.bw, align 8, !tbaa !32
  %i.bx = load ptr, ptr %5, align 8, !tbaa !7
  %i.by = getelementptr inbounds nuw i8, ptr %i.bx, i64 %i.bv
  store i8 0, ptr %i.by, align 1, !tbaa !13
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #30
  %i.bz = getelementptr inbounds nuw i8, ptr %i.bn, i64 200 ; 3 uses
  %i.ca = load ptr, ptr %i.bz, align 8, !tbaa !74 ; 6 uses
  %i.cb = getelementptr inbounds nuw i8, ptr %i.bn, i64 208
  %i.cc = load ptr, ptr %i.cb, align 8, !tbaa !78
  %.not.i.i = icmp eq ptr %i.ca, %i.cc
  br i1 %.not.i.i, label %bb.v, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.cd = getelementptr inbounds nuw i8, ptr %i.ca, i64 16 ; 3 uses
  store ptr %i.cd, ptr %i.ca, align 8, !tbaa !31
  %i.ce = load ptr, ptr %5, align 8, !tbaa !7     ; 2 uses
  %i.cf = icmp eq ptr %i.ce, %i.bo
  br i1 %i.cf, label %bb.u, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

bb.u:                                             ; preds = %bb.t
  %i.cg = load i64, ptr %i.bw, align 8, !tbaa !32 ; 3 uses
  %i.ch = icmp ult i64 %i.cg, 16
  call void @llvm.assume(i1 %i.ch)
  %i.ci = add nuw nsw i64 %i.cg, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.cd, ptr noundef nonnull align 8 dereferenceable(1) %i.bo, i64 %i.ci, i1 false)
  br label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backEOS5_.exit.thread

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.t
  store ptr %i.ce, ptr %i.ca, align 8, !tbaa !7
  %i.cj = load i64, ptr %i.bo, align 8, !tbaa !13
  store i64 %i.cj, ptr %i.cd, align 8, !tbaa !13
  %.pre = load i64, ptr %i.bw, align 8, !tbaa !32
  br label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backEOS5_.exit.thread

_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backEOS5_.exit.thread: ; preds = %bb.u, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  %i.ck = phi i64 [ %.pre, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i ], [ %i.cg, %bb.u ]
  %i.cl = getelementptr inbounds nuw i8, ptr %i.ca, i64 8
  store i64 %i.ck, ptr %i.cl, align 8, !tbaa !32
  store i64 0, ptr %i.bw, align 8, !tbaa !32
  %i.cm = load ptr, ptr %i.bz, align 8, !tbaa !74
  %i.cn = getelementptr inbounds nuw i8, ptr %i.cm, i64 32
  store ptr %i.cn, ptr %i.bz, align 8, !tbaa !74
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit25

bb.v:                                             ; preds = %bb.s
  %i.co = getelementptr inbounds nuw i8, ptr %i.bn, i64 192
  invoke void @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %i.co, ptr %i.ca, ptr noundef nonnull align 8 dereferenceable(32) %5)
          to label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backEOS5_.exit unwind label %bb.x

_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backEOS5_.exit: ; preds = %bb.v
  %.pre29 = load ptr, ptr %5, align 8, !tbaa !7   ; 2 uses
  %i.cp = icmp eq ptr %.pre29, %i.bo
  br i1 %i.cp, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit25, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i23

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i23: ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backEOS5_.exit
  %i.cq = load i64, ptr %i.bo, align 8, !tbaa !13
  %i.cr = add i64 %i.cq, 1
  call void @_ZdlPvm(ptr noundef %.pre29, i64 noundef %i.cr) #28
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit25

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit25: ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backEOS5_.exit, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backEOS5_.exit.thread, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i23
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #30
  br label %bb.w

bb.w:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit25, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit16, %bb.b, %bb.a
  ret void

bb.x:                                             ; preds = %bb.v, %.noexc.i18, %.noexc.i.i, %.noexc.i9, %.noexc.i, %bb.f
  %i.cs = landingpad { ptr, i32 }
          catch ptr null
  br label %.body

.body:                                            ; preds = %bb.o, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i6.i, %bb.x
  %eh.lpad-body = phi { ptr, i32 } [ %i.cs, %bb.x ], [ %i.bd, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i6.i ], [ %i.bd, %bb.o ]
  %i.ct = extractvalue { ptr, i32 } %eh.lpad-body, 0
  call void @__clang_call_terminate(ptr %i.ct) #32
  unreachable
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZN11StringUtils7CompareERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES7_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %1) local_unnamed_addr #10 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %i.b = alloca i64, align 8                      ; 6 uses
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 7 uses
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #30
  %i.c = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 12 uses
  store ptr %i.c, ptr %3, align 8, !tbaa !31
  %i.d = load ptr, ptr %0, align 8, !tbaa !7      ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.f = load i64, ptr %i.e, align 8, !tbaa !32   ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #30
  store i64 %i.f, ptr %i.b, align 8, !tbaa !89
  %i.g = icmp ugt i64 %i.f, 15
  br i1 %i.g, label %.noexc.i, label %._crit_edge.i.i

.noexc.i:                                         ; preds = %bb.a
  %i.h = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(8) %i.b, i64 noundef 0) ; 2 uses
  store ptr %i.h, ptr %3, align 8, !tbaa !7
  %i.i = load i64, ptr %i.b, align 8, !tbaa !89
  store i64 %i.i, ptr %i.c, align 8, !tbaa !13
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %.noexc.i, %bb.a
  %i.j = phi ptr [ %i.h, %.noexc.i ], [ %i.c, %bb.a ] ; 2 uses
  switch i64 %i.f, label %bb.c [
    i64 1, label %bb.b
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit
  ]

bb.b:                                             ; preds = %._crit_edge.i.i
  %i.k = load i8, ptr %i.d, align 1, !tbaa !13
  store i8 %i.k, ptr %i.j, align 1, !tbaa !13
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit

bb.c:                                             ; preds = %._crit_edge.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.j, ptr align 1 %i.d, i64 %i.f, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit: ; preds = %._crit_edge.i.i, %bb.b, %bb.c
  %i.l = load i64, ptr %i.b, align 8, !tbaa !89   ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 5 uses
  store i64 %i.l, ptr %i.m, align 8, !tbaa !32
  %i.n = load ptr, ptr %3, align 8, !tbaa !7
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 %i.l
  store i8 0, ptr %i.o, align 1, !tbaa !13
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #30
  call void @llvm.experimental.noalias.scope.decl(metadata !91)
  %i.p = load ptr, ptr %3, align 8, !tbaa !7, !noalias !91 ; 7 uses
  %i.q = load i64, ptr %i.m, align 8, !tbaa !32, !noalias !91 ; 9 uses
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
  %wide.load = load <16 x i8>, ptr %next.gep, align 1, !tbaa !13, !noalias !91 ; 2 uses
  %wide.load57 = load <16 x i8>, ptr %i.t, align 1, !tbaa !13, !noalias !91 ; 2 uses
  %i.u = add <16 x i8> %wide.load, splat (i8 -65)
  %i.v = add <16 x i8> %wide.load57, splat (i8 -65)
  %i.w = icmp ult <16 x i8> %i.u, splat (i8 26)
  %i.x = icmp ult <16 x i8> %i.v, splat (i8 26)
  %6 = select <16 x i1> %i.w, <16 x i8> splat (i8 32), <16 x i8> zeroinitializer
  %i.y = or disjoint <16 x i8> %wide.load, %6
  %i.z = select <16 x i1> %i.x, <16 x i8> splat (i8 32), <16 x i8> zeroinitializer
  %7 = or disjoint <16 x i8> %wide.load57, %i.z
  store <16 x i8> %i.y, ptr %next.gep, align 1, !tbaa !13, !noalias !91
  store <16 x i8> %7, ptr %i.t, align 1, !tbaa !13, !noalias !91
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.aa = icmp eq i64 %index.next, %n.vec
  br i1 %i.aa, label %middle.block, label %vector.body, !llvm.loop !94

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.q, %n.vec
  br i1 %cmp.n, label %_ZSt9transformIN9__gnu_cxx17__normal_iteratorIPcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEES9_ZN11StringUtils5LowerES8_EUlhE_ET0_T_SD_SC_T1_.exit.loopexit.i, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %n.mod.vf, 0
  br i1 %min.epilog.iters.check, label %.lr.ph.i.i.preheader, label %vec.epilog.ph, !prof !97

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec59 = and i64 %i.q, -8                     ; 3 uses
  %i.ab = getelementptr i8, ptr %i.p, i64 %n.vec59
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index60 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next63, %vec.epilog.vector.body ] ; 2 uses
  %next.gep61 = getelementptr i8, ptr %i.p, i64 %index60 ; 2 uses
  %wide.load62 = load <8 x i8>, ptr %next.gep61, align 1, !tbaa !13, !noalias !91 ; 2 uses
  %i.ac = add <8 x i8> %wide.load62, splat (i8 -65)
  %i.ad = icmp ult <8 x i8> %i.ac, splat (i8 26)
  %8 = select <8 x i1> %i.ad, <8 x i8> splat (i8 32), <8 x i8> zeroinitializer
  %9 = or disjoint <8 x i8> %wide.load62, %8
  store <8 x i8> %9, ptr %next.gep61, align 1, !tbaa !13, !noalias !91
  %index.next63 = add nuw i64 %index60, 8         ; 2 uses
  %i.ae = icmp eq i64 %index.next63, %n.vec59
  br i1 %i.ae, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !98

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n64 = icmp eq i64 %i.q, %n.vec59
  br i1 %cmp.n64, label %_ZSt9transformIN9__gnu_cxx17__normal_iteratorIPcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEES9_ZN11StringUtils5LowerES8_EUlhE_ET0_T_SD_SC_T1_.exit.loopexit.i, label %.lr.ph.i.i.preheader

.lr.ph.i.i.preheader:                             ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.sroa.0.08.i.i.ph = phi ptr [ %i.p, %iter.check ], [ %i.s, %vec.epilog.iter.check ], [ %i.ab, %vec.epilog.middle.block ]
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.preheader, %.lr.ph.i.i
  %.sroa.0.08.i.i = phi ptr [ %i.ai, %.lr.ph.i.i ], [ %.sroa.0.08.i.i.ph, %.lr.ph.i.i.preheader ] ; 3 uses
  %i.af = load i8, ptr %.sroa.0.08.i.i, align 1, !tbaa !13, !noalias !91 ; 3 uses
  %i.ag = add i8 %i.af, -65
  %or.cond.i.i.i.i = icmp ult i8 %i.ag, 26
  %i.ah = or disjoint i8 %i.af, 32
  %.0.i.i.i.i = select i1 %or.cond.i.i.i.i, i8 %i.ah, i8 %i.af
  store i8 %.0.i.i.i.i, ptr %.sroa.0.08.i.i, align 1, !tbaa !13, !noalias !91
  %i.ai = getelementptr i8, ptr %.sroa.0.08.i.i, i64 1 ; 2 uses
  %.not.i.i = icmp eq ptr %i.ai, %i.r
  br i1 %.not.i.i, label %_ZSt9transformIN9__gnu_cxx17__normal_iteratorIPcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEES9_ZN11StringUtils5LowerES8_EUlhE_ET0_T_SD_SC_T1_.exit.loopexit.i, label %.lr.ph.i.i, !llvm.loop !99

_ZSt9transformIN9__gnu_cxx17__normal_iteratorIPcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEES9_ZN11StringUtils5LowerES8_EUlhE_ET0_T_SD_SC_T1_.exit.loopexit.i: ; preds = %.lr.ph.i.i, %vec.epilog.middle.block, %middle.block
  %.pre.i = load ptr, ptr %3, align 8, !tbaa !7, !noalias !91
  br label %_ZSt9transformIN9__gnu_cxx17__normal_iteratorIPcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEES9_ZN11StringUtils5LowerES8_EUlhE_ET0_T_SD_SC_T1_.exit.i

_ZSt9transformIN9__gnu_cxx17__normal_iteratorIPcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEES9_ZN11StringUtils5LowerES8_EUlhE_ET0_T_SD_SC_T1_.exit.i: ; preds = %_ZSt9transformIN9__gnu_cxx17__normal_iteratorIPcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEES9_ZN11StringUtils5LowerES8_EUlhE_ET0_T_SD_SC_T1_.exit.loopexit.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit
  %i.aj = phi ptr [ %.pre.i, %_ZSt9transformIN9__gnu_cxx17__normal_iteratorIPcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEES9_ZN11StringUtils5LowerES8_EUlhE_ET0_T_SD_SC_T1_.exit.loopexit.i ], [ %i.p, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit ] ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 7 uses
  store ptr %i.ak, ptr %2, align 8, !tbaa !31, !alias.scope !91
  %i.al = icmp eq ptr %i.aj, %i.c
  br i1 %i.al, label %bb.d, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

bb.d:                                             ; preds = %_ZSt9transformIN9__gnu_cxx17__normal_iteratorIPcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEES9_ZN11StringUtils5LowerES8_EUlhE_ET0_T_SD_SC_T1_.exit.i
  %i.am = load i64, ptr %i.m, align 8, !tbaa !32, !noalias !91 ; 3 uses
  %i.an = icmp ult i64 %i.am, 16
  call void @llvm.assume(i1 %i.an)
  %i.ao = add nuw nsw i64 %i.am, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.ak, ptr noundef nonnull align 8 dereferenceable(1) %i.c, i64 %i.ao, i1 false)
  br label %bb.e

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZSt9transformIN9__gnu_cxx17__normal_iteratorIPcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEES9_ZN11StringUtils5LowerES8_EUlhE_ET0_T_SD_SC_T1_.exit.i
  store ptr %i.aj, ptr %2, align 8, !tbaa !7, !alias.scope !91
  %i.ap = load i64, ptr %i.c, align 8, !tbaa !13, !noalias !91
  store i64 %i.ap, ptr %i.ak, align 8, !tbaa !13, !alias.scope !91
  %.pre4.i = load i64, ptr %i.m, align 8, !tbaa !32, !noalias !91
  br label %bb.e

bb.e:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %bb.d
  %i.aq = phi i64 [ %i.am, %bb.d ], [ %.pre4.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ]
  %i.ar = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  store i64 %i.aq, ptr %i.ar, align 8, !tbaa !32, !alias.scope !91
  store ptr %i.c, ptr %3, align 8, !tbaa !7, !noalias !91
  store i64 0, ptr %i.m, align 8, !tbaa !32, !noalias !91
  store i8 0, ptr %i.c, align 8, !tbaa !13, !noalias !91
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #30
  %i.as = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 10 uses
  store ptr %i.as, ptr %5, align 8, !tbaa !31
  %i.at = load ptr, ptr %1, align 8, !tbaa !7     ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.av = load i64, ptr %i.au, align 8, !tbaa !32 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #30
  store i64 %i.av, ptr %i.a, align 8, !tbaa !89
  %i.aw = icmp ugt i64 %i.av, 15
  br i1 %i.aw, label %.noexc.i8, label %._crit_edge.i.i7

.noexc.i8:                                        ; preds = %bb.e
  %i.ax = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0)
          to label %.noexc unwind label %bb.m     ; 2 uses

.noexc:                                           ; preds = %.noexc.i8
  store ptr %i.ax, ptr %5, align 8, !tbaa !7
  %i.ay = load i64, ptr %i.a, align 8, !tbaa !89
  store i64 %i.ay, ptr %i.as, align 8, !tbaa !13
  br label %._crit_edge.i.i7

._crit_edge.i.i7:                                 ; preds = %.noexc, %bb.e
  %i.az = phi ptr [ %i.ax, %.noexc ], [ %i.as, %bb.e ] ; 2 uses
  switch i64 %i.av, label %bb.g [
    i64 1, label %bb.f
    i64 0, label %bb.h
  ]

bb.f:                                             ; preds = %._crit_edge.i.i7
  %i.ba = load i8, ptr %i.at, align 1, !tbaa !13
  store i8 %i.ba, ptr %i.az, align 1, !tbaa !13
  br label %bb.h

bb.g:                                             ; preds = %._crit_edge.i.i7
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.az, ptr align 1 %i.at, i64 %i.av, i1 false)
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f, %._crit_edge.i.i7
  %i.bb = load i64, ptr %i.a, align 8, !tbaa !89  ; 2 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 5 uses
  store i64 %i.bb, ptr %i.bc, align 8, !tbaa !32
  %i.bd = load ptr, ptr %5, align 8, !tbaa !7
  %i.be = getelementptr inbounds nuw i8, ptr %i.bd, i64 %i.bb
  store i8 0, ptr %i.be, align 1, !tbaa !13
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #30
  call void @llvm.experimental.noalias.scope.decl(metadata !100)
  %i.bf = load ptr, ptr %5, align 8, !tbaa !7, !noalias !100 ; 7 uses
  %i.bg = load i64, ptr %i.bc, align 8, !tbaa !32, !noalias !100 ; 9 uses
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
  %wide.load75 = load <16 x i8>, ptr %next.gep74, align 1, !tbaa !13, !noalias !100 ; 2 uses
  %wide.load76 = load <16 x i8>, ptr %i.bj, align 1, !tbaa !13, !noalias !100 ; 2 uses
  %i.bk = add <16 x i8> %wide.load75, splat (i8 -65)
  %i.bl = add <16 x i8> %wide.load76, splat (i8 -65)
  %i.bm = icmp ult <16 x i8> %i.bk, splat (i8 26)
  %i.bn = icmp ult <16 x i8> %i.bl, splat (i8 26)
  %10 = select <16 x i1> %i.bm, <16 x i8> splat (i8 32), <16 x i8> zeroinitializer
  %i.bo = or disjoint <16 x i8> %wide.load75, %10
  %i.bp = select <16 x i1> %i.bn, <16 x i8> splat (i8 32), <16 x i8> zeroinitializer
  %11 = or disjoint <16 x i8> %wide.load76, %i.bp
  store <16 x i8> %i.bo, ptr %next.gep74, align 1, !tbaa !13, !noalias !100
  store <16 x i8> %11, ptr %i.bj, align 1, !tbaa !13, !noalias !100
  %index.next77 = add nuw i64 %index73, 32        ; 2 uses
  %i.bq = icmp eq i64 %index.next77, %n.vec71
  br i1 %i.bq, label %middle.block78, label %vector.body72, !llvm.loop !103

middle.block78:                                   ; preds = %vector.body72
  %cmp.n79 = icmp eq i64 %i.bg, %n.vec71
  br i1 %cmp.n79, label %_ZSt9transformIN9__gnu_cxx17__normal_iteratorIPcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEES9_ZN11StringUtils5LowerES8_EUlhE_ET0_T_SD_SC_T1_.exit.loopexit.i16, label %vec.epilog.iter.check83

vec.epilog.iter.check83:                          ; preds = %middle.block78
  %min.epilog.iters.check84 = icmp eq i64 %n.mod.vf70, 0
  br i1 %min.epilog.iters.check84, label %.lr.ph.i.i11.preheader, label %vec.epilog.ph85, !prof !97

vec.epilog.ph85:                                  ; preds = %vector.main.loop.iter.check67, %vec.epilog.iter.check83
  %vec.epilog.resume.val80 = phi i64 [ %n.vec71, %vec.epilog.iter.check83 ], [ 0, %vector.main.loop.iter.check67 ]
  %n.vec87 = and i64 %i.bg, -8                    ; 3 uses
  %i.br = getelementptr i8, ptr %i.bf, i64 %n.vec87
  br label %vec.epilog.vector.body88

vec.epilog.vector.body88:                         ; preds = %vec.epilog.vector.body88, %vec.epilog.ph85
  %index89 = phi i64 [ %vec.epilog.resume.val80, %vec.epilog.ph85 ], [ %index.next92, %vec.epilog.vector.body88 ] ; 2 uses
  %next.gep90 = getelementptr i8, ptr %i.bf, i64 %index89 ; 2 uses
  %wide.load91 = load <8 x i8>, ptr %next.gep90, align 1, !tbaa !13, !noalias !100 ; 2 uses
  %i.bs = add <8 x i8> %wide.load91, splat (i8 -65)
  %i.bt = icmp ult <8 x i8> %i.bs, splat (i8 26)
  %12 = select <8 x i1> %i.bt, <8 x i8> splat (i8 32), <8 x i8> zeroinitializer
  %13 = or disjoint <8 x i8> %wide.load91, %12
  store <8 x i8> %13, ptr %next.gep90, align 1, !tbaa !13, !noalias !100
  %index.next92 = add nuw i64 %index89, 8         ; 2 uses
  %i.bu = icmp eq i64 %index.next92, %n.vec87
  br i1 %i.bu, label %vec.epilog.middle.block93, label %vec.epilog.vector.body88, !llvm.loop !104

vec.epilog.middle.block93:                        ; preds = %vec.epilog.vector.body88
  %cmp.n94 = icmp eq i64 %i.bg, %n.vec87
  br i1 %cmp.n94, label %_ZSt9transformIN9__gnu_cxx17__normal_iteratorIPcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEES9_ZN11StringUtils5LowerES8_EUlhE_ET0_T_SD_SC_T1_.exit.loopexit.i16, label %.lr.ph.i.i11.preheader

.lr.ph.i.i11.preheader:                           ; preds = %iter.check81, %vec.epilog.iter.check83, %vec.epilog.middle.block93
  %.sroa.0.08.i.i12.ph = phi ptr [ %i.bf, %iter.check81 ], [ %i.bi, %vec.epilog.iter.check83 ], [ %i.br, %vec.epilog.middle.block93 ]
  br label %.lr.ph.i.i11

.lr.ph.i.i11:                                     ; preds = %.lr.ph.i.i11.preheader, %.lr.ph.i.i11
  %.sroa.0.08.i.i12 = phi ptr [ %i.by, %.lr.ph.i.i11 ], [ %.sroa.0.08.i.i12.ph, %.lr.ph.i.i11.preheader ] ; 3 uses
  %i.bv = load i8, ptr %.sroa.0.08.i.i12, align 1, !tbaa !13, !noalias !100 ; 3 uses
  %i.bw = add i8 %i.bv, -65
  %or.cond.i.i.i.i13 = icmp ult i8 %i.bw, 26
  %i.bx = or disjoint i8 %i.bv, 32
  %.0.i.i.i.i14 = select i1 %or.cond.i.i.i.i13, i8 %i.bx, i8 %i.bv
  store i8 %.0.i.i.i.i14, ptr %.sroa.0.08.i.i12, align 1, !tbaa !13, !noalias !100
  %i.by = getelementptr i8, ptr %.sroa.0.08.i.i12, i64 1 ; 2 uses
  %.not.i.i15 = icmp eq ptr %i.by, %i.bh
  br i1 %.not.i.i15, label %_ZSt9transformIN9__gnu_cxx17__normal_iteratorIPcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEES9_ZN11StringUtils5LowerES8_EUlhE_ET0_T_SD_SC_T1_.exit.loopexit.i16, label %.lr.ph.i.i11, !llvm.loop !105

_ZSt9transformIN9__gnu_cxx17__normal_iteratorIPcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEES9_ZN11StringUtils5LowerES8_EUlhE_ET0_T_SD_SC_T1_.exit.loopexit.i16: ; preds = %.lr.ph.i.i11, %vec.epilog.middle.block93, %middle.block78
  %.pre.i17 = load ptr, ptr %5, align 8, !tbaa !7, !noalias !100
  br label %_ZSt9transformIN9__gnu_cxx17__normal_iteratorIPcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEES9_ZN11StringUtils5LowerES8_EUlhE_ET0_T_SD_SC_T1_.exit.i18

_ZSt9transformIN9__gnu_cxx17__normal_iteratorIPcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEES9_ZN11StringUtils5LowerES8_EUlhE_ET0_T_SD_SC_T1_.exit.i18: ; preds = %_ZSt9transformIN9__gnu_cxx17__normal_iteratorIPcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEES9_ZN11StringUtils5LowerES8_EUlhE_ET0_T_SD_SC_T1_.exit.loopexit.i16, %bb.h
  %i.bz = phi ptr [ %.pre.i17, %_ZSt9transformIN9__gnu_cxx17__normal_iteratorIPcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEES9_ZN11StringUtils5LowerES8_EUlhE_ET0_T_SD_SC_T1_.exit.loopexit.i16 ], [ %i.bf, %bb.h ] ; 3 uses
  %i.ca = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 6 uses
  store ptr %i.ca, ptr %4, align 8, !tbaa !31, !alias.scope !100
  %i.cb = icmp eq ptr %i.bz, %i.as
  br i1 %i.cb, label %bb.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i19

bb.i:                                             ; preds = %_ZSt9transformIN9__gnu_cxx17__normal_iteratorIPcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEES9_ZN11StringUtils5LowerES8_EUlhE_ET0_T_SD_SC_T1_.exit.i18
  %i.cc = load i64, ptr %i.bc, align 8, !tbaa !32, !noalias !100 ; 3 uses
  %i.cd = icmp ult i64 %i.cc, 16
  call void @llvm.assume(i1 %i.cd)
  %i.ce = add nuw nsw i64 %i.cc, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.ca, ptr noundef nonnull align 8 dereferenceable(1) %i.as, i64 %i.ce, i1 false)
  br label %bb.j

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i19: ; preds = %_ZSt9transformIN9__gnu_cxx17__normal_iteratorIPcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEES9_ZN11StringUtils5LowerES8_EUlhE_ET0_T_SD_SC_T1_.exit.i18
  store ptr %i.bz, ptr %4, align 8, !tbaa !7, !alias.scope !100
  %i.cf = load i64, ptr %i.as, align 8, !tbaa !13, !noalias !100
  store i64 %i.cf, ptr %i.ca, align 8, !tbaa !13, !alias.scope !100
  %.pre4.i20 = load i64, ptr %i.bc, align 8, !tbaa !32, !noalias !100
  br label %bb.j

bb.j:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i19, %bb.i
  %i.cg = phi ptr [ %i.ca, %bb.i ], [ %i.bz, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i19 ] ; 3 uses
  %i.ch = phi i64 [ %i.cc, %bb.i ], [ %.pre4.i20, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i19 ] ; 5 uses
  %i.ci = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i64 %i.ch, ptr %i.ci, align 8, !tbaa !32, !alias.scope !100
  store ptr %i.as, ptr %5, align 8, !tbaa !7, !noalias !100
  store i64 0, ptr %i.bc, align 8, !tbaa !32, !noalias !100
  store i8 0, ptr %i.as, align 8, !tbaa !13, !noalias !100
  %i.cj = load i64, ptr %i.ar, align 8, !tbaa !32
  %i.ck = icmp eq i64 %i.cj, %i.ch
  br i1 %i.ck, label %bb.k, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit

bb.k:                                             ; preds = %bb.j
  %i.cl = icmp eq i64 %i.ch, 0
  br i1 %i.cl, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.cm = load ptr, ptr %2, align 8, !tbaa !7
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
  %i.cr = load i64, ptr %i.ca, align 8, !tbaa !13
  %i.cs = add i64 %i.cr, 1
  call void @_ZdlPvm(ptr noundef %i.cg, i64 noundef %i.cs) #28
  %.pre = load ptr, ptr %5, align 8, !tbaa !7     ; 2 uses
  %i.ct = icmp eq ptr %.pre, %i.as
  br i1 %i.ct, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit25, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i23

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i23: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.cu = load i64, ptr %i.as, align 8, !tbaa !13
  %i.cv = add i64 %i.cu, 1
  call void @_ZdlPvm(ptr noundef %.pre, i64 noundef %i.cv) #28
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit25

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit25: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i23
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #30
  %i.cw = load ptr, ptr %2, align 8, !tbaa !7     ; 2 uses
  %i.cx = icmp eq ptr %i.cw, %i.ak
  br i1 %i.cx, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit28, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i26

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i26: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit25
  %i.cy = load i64, ptr %i.ak, align 8, !tbaa !13
  %i.cz = add i64 %i.cy, 1
  call void @_ZdlPvm(ptr noundef %i.cw, i64 noundef %i.cz) #28
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit28

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit28: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit25, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i26
  %i.da = load ptr, ptr %3, align 8, !tbaa !7     ; 2 uses
  %i.db = icmp eq ptr %i.da, %i.c
  br i1 %i.db, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit31, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i29

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i29: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit28
  %i.dc = load i64, ptr %i.c, align 8, !tbaa !13
  %i.dd = add i64 %i.dc, 1
  call void @_ZdlPvm(ptr noundef %i.da, i64 noundef %i.dd) #28
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit31

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit31: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit28, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i29
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #30
  ret i1 %i.co

bb.m:                                             ; preds = %.noexc.i8
  %i.de = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #30
  %i.df = load ptr, ptr %2, align 8, !tbaa !7     ; 2 uses
  %i.dg = icmp eq ptr %i.df, %i.ak
  br i1 %i.dg, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit37, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i35

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i35: ; preds = %bb.m
  %i.dh = load i64, ptr %i.ak, align 8, !tbaa !13
  %i.di = add i64 %i.dh, 1
  call void @_ZdlPvm(ptr noundef %i.df, i64 noundef %i.di) #28
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit37

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit37: ; preds = %bb.m, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i35
  %i.dj = load ptr, ptr %3, align 8, !tbaa !7     ; 2 uses
  %i.dk = icmp eq ptr %i.dj, %i.c
  br i1 %i.dk, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit40, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i38

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i38: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit37
  %i.dl = load i64, ptr %i.c, align 8, !tbaa !13
  %i.dm = add i64 %i.dl, 1
  call void @_ZdlPvm(ptr noundef %i.dj, i64 noundef %i.dm) #28
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit40

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit40: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit37, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i38
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #30
  resume { ptr, i32 } %i.de
}

; Function Attrs: mustprogress nounwind uwtable
define void @_ZN16OpenColorIO_v2_510ColorSpace11removeAliasEPKc(ptr noundef nonnull readonly align 8 captures(none) dereferenceable(8) %0, ptr noundef readonly captures(address_is_null) %1) local_unnamed_addr #6 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %.not = icmp eq ptr %1, null
  br i1 %.not, label %bb.h, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = load i8, ptr %1, align 1, !tbaa !13
  %.not4 = icmp eq i8 %i.b, 0
  br i1 %.not4, label %bb.h, label %bb.c

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #30
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 5 uses
  store ptr %i.c, ptr %2, align 8, !tbaa !31
  %i.d = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %1) #30 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #30
  store i64 %i.d, ptr %i.a, align 8, !tbaa !89
  %i.e = icmp ugt i64 %i.d, 15
  br i1 %i.e, label %.noexc.i, label %._crit_edge.i.i

.noexc.i:                                         ; preds = %bb.c
  %i.f = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0)
          to label %.noexc5 unwind label %bb.i    ; 2 uses

.noexc5:                                          ; preds = %.noexc.i
  store ptr %i.f, ptr %2, align 8, !tbaa !7
  %i.g = load i64, ptr %i.a, align 8, !tbaa !89
  store i64 %i.g, ptr %i.c, align 8, !tbaa !13
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %.noexc5, %bb.c
  %i.h = phi ptr [ %i.f, %.noexc5 ], [ %i.c, %bb.c ] ; 2 uses
  switch i64 %i.d, label %bb.e [
    i64 1, label %bb.d
    i64 0, label %bb.f
  ]

bb.d:                                             ; preds = %._crit_edge.i.i
  %i.i = load i8, ptr %1, align 1, !tbaa !13
  store i8 %i.i, ptr %i.h, align 1, !tbaa !13
  br label %bb.f

bb.e:                                             ; preds = %._crit_edge.i.i
end_hunk_0
begin_hunk_1_@_ZN16OpenColorIO_v2_513TokensManager8addTokenEPKc:bb.a
  %.pre21 = load ptr, ptr %2, align 8, !tbaa !7   ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.ak = icmp eq ptr %.pre21, %i.aj
  br i1 %i.ak, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backEOS5_.exit
  %i.al = load i64, ptr %i.aj, align 8, !tbaa !13
  %i.am = add i64 %i.al, 1
  call void @_ZdlPvm(ptr noundef %.pre21, i64 noundef %i.am) #28
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backEOS5_.exit, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backEOS5_.exit.thread, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  %i.an = load ptr, ptr %3, align 8, !tbaa !7     ; 2 uses
  %i.ao = icmp eq ptr %i.an, %i.g
  br i1 %i.ao, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit12, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i10

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i10: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.ap = load i64, ptr %i.g, align 8, !tbaa !13
  %i.aq = add i64 %i.ap, 1
  call void @_ZdlPvm(ptr noundef %i.an, i64 noundef %i.aq) #28
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit12

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit12: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i10
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #30
  br label %bb.m

bb.k:                                             ; preds = %bb.f
  %i.ar = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit15

bb.l:                                             ; preds = %bb.j
  %i.as = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.at = load ptr, ptr %2, align 8, !tbaa !7     ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.av = icmp eq ptr %i.at, %i.au
  br i1 %i.av, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit15, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i13

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i13: ; preds = %bb.l
  %i.aw = load i64, ptr %i.au, align 8, !tbaa !13
  %i.ax = add i64 %i.aw, 1
  call void @_ZdlPvm(ptr noundef %i.at, i64 noundef %i.ax) #28
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit15

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit15: ; preds = %bb.l, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i13, %bb.k
  %.pn = phi { ptr, i32 } [ %i.ar, %bb.k ], [ %i.as, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i13 ], [ %i.as, %bb.l ]
  %i.ay = load ptr, ptr %3, align 8, !tbaa !7     ; 2 uses
  %i.az = icmp eq ptr %i.ay, %i.g
  br i1 %i.az, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit18, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i16

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i16: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit15
  %i.ba = load i64, ptr %i.g, align 8, !tbaa !13
  %i.bb = add i64 %i.ba, 1
  call void @_ZdlPvm(ptr noundef %i.ay, i64 noundef %i.bb) #28
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit18

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit18: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit15, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i16
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #30
  resume { ptr, i32 } %.pn

bb.m:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit12, %bb.a
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define void @_ZN16OpenColorIO_v2_510ColorSpace14removeCategoryEPKc(ptr noundef nonnull readonly align 8 captures(none) dereferenceable(8) %0, ptr noundef %1) local_unnamed_addr #6 align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !70
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 344
  tail call void @_ZN16OpenColorIO_v2_513TokensManager11removeTokenEPKc(ptr noundef nonnull align 8 dereferenceable(32) %i.b, ptr noundef %1) #30
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN16OpenColorIO_v2_513TokensManager11removeTokenEPKc(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %1) local_unnamed_addr #6 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 7 uses
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 4 uses
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 7 uses
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %6 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %.not = icmp eq ptr %1, null
  br i1 %.not, label %bb.q, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = load i8, ptr %1, align 1, !tbaa !13
  %.not5 = icmp eq i8 %i.b, 0
  br i1 %.not5, label %bb.q, label %bb.c

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #30
  invoke void @_ZN11StringUtils5LowerB5cxx11EPKc(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %3, ptr noundef nonnull %1)
          to label %bb.d unwind label %.loopexit.split-lp

bb.d:                                             ; preds = %bb.c
  invoke void @_ZN11StringUtils4TrimENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %2, ptr noundef nonnull %3)
          to label %bb.e unwind label %.loopexit.split-lp

bb.e:                                             ; preds = %bb.d
  %i.c = load ptr, ptr %3, align 8, !tbaa !7      ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.e = icmp eq ptr %i.c, %i.d
  br i1 %i.e, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.e
  %i.f = load i64, ptr %i.d, align 8, !tbaa !13
  %i.g = add i64 %i.f, 1
  call void @_ZdlPvm(ptr noundef %i.c, i64 noundef %i.g) #28
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.e, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !88   ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !88
  %.not2528 = icmp eq ptr %i.i, %i.k
  br i1 %.not2528, label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE5eraseEN9__gnu_cxx17__normal_iteratorIPKS5_S7_EE.exit, label %.lr.ph

.lr.ph:                                           ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.l = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 10 uses
  %i.m = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 5 uses
  %i.n = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 5 uses
  %i.o = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.p = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.q = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.r = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  br label %bb.f

bb.f:                                             ; preds = %.lr.ph, %bb.p
  %.sroa.021.029 = phi ptr [ %i.i, %.lr.ph ], [ %i.ce, %bb.p ] ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #30
  store ptr %i.l, ptr %6, align 8, !tbaa !31
  %i.s = load ptr, ptr %.sroa.021.029, align 8, !tbaa !7 ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %.sroa.021.029, i64 8
  %i.u = load i64, ptr %i.t, align 8, !tbaa !32   ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #30
  store i64 %i.u, ptr %i.a, align 8, !tbaa !89
  %i.v = icmp ugt i64 %i.u, 15
  br i1 %i.v, label %.noexc.i, label %._crit_edge.i.i

.noexc.i:                                         ; preds = %bb.f
  %i.w = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0)
          to label %.noexc unwind label %.loopexit ; 2 uses

.noexc:                                           ; preds = %.noexc.i
  store ptr %i.w, ptr %6, align 8, !tbaa !7
  %i.x = load i64, ptr %i.a, align 8, !tbaa !89
  store i64 %i.x, ptr %i.l, align 8, !tbaa !13
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %.noexc, %bb.f
  %i.y = phi ptr [ %i.w, %.noexc ], [ %i.l, %bb.f ] ; 2 uses
  switch i64 %i.u, label %bb.h [
    i64 1, label %bb.g
    i64 0, label %bb.i
  ]

bb.g:                                             ; preds = %._crit_edge.i.i
  %i.z = load i8, ptr %i.s, align 1, !tbaa !13
  store i8 %i.z, ptr %i.y, align 1, !tbaa !13
  br label %bb.i

bb.h:                                             ; preds = %._crit_edge.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.y, ptr align 1 %i.s, i64 %i.u, i1 false)
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g, %._crit_edge.i.i
  %i.aa = load i64, ptr %i.a, align 8, !tbaa !89  ; 2 uses
  store i64 %i.aa, ptr %i.m, align 8, !tbaa !32
  %i.ab = load ptr, ptr %6, align 8, !tbaa !7
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 %i.aa
  store i8 0, ptr %i.ac, align 1, !tbaa !13
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #30
  call void @llvm.experimental.noalias.scope.decl(metadata !122)
  %i.ad = load ptr, ptr %6, align 8, !tbaa !7, !noalias !122 ; 7 uses
  %i.ae = load i64, ptr %i.m, align 8, !tbaa !32, !noalias !122 ; 9 uses
  %i.af = getelementptr inbounds nuw i8, ptr %i.ad, i64 %i.ae
  %.not6.i.i = icmp samesign eq i64 %i.ae, 0
  br i1 %.not6.i.i, label %_ZSt9transformIN9__gnu_cxx17__normal_iteratorIPcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEES9_ZN11StringUtils5LowerES8_EUlhE_ET0_T_SD_SC_T1_.exit.i, label %iter.check

iter.check:                                       ; preds = %bb.i
  %min.iters.check = icmp ult i64 %i.ae, 8
  br i1 %min.iters.check, label %.lr.ph.i.i.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check51 = icmp ult i64 %i.ae, 32
  br i1 %min.iters.check51, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %n.mod.vf = and i64 %i.ae, 24
  %n.vec = and i64 %i.ae, -32                     ; 4 uses
  %i.ag = getelementptr i8, ptr %i.ad, i64 %n.vec
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %next.gep = getelementptr i8, ptr %i.ad, i64 %index ; 3 uses
  %i.ah = getelementptr i8, ptr %next.gep, i64 16 ; 2 uses
  %wide.load = load <16 x i8>, ptr %next.gep, align 1, !tbaa !13, !noalias !122 ; 2 uses
  %wide.load52 = load <16 x i8>, ptr %i.ah, align 1, !tbaa !13, !noalias !122 ; 2 uses
  %i.ai = add <16 x i8> %wide.load, splat (i8 -65)
  %i.aj = add <16 x i8> %wide.load52, splat (i8 -65)
  %i.ak = icmp ult <16 x i8> %i.ai, splat (i8 26)
  %i.al = icmp ult <16 x i8> %i.aj, splat (i8 26)
  %7 = select <16 x i1> %i.ak, <16 x i8> splat (i8 32), <16 x i8> zeroinitializer
  %i.am = or disjoint <16 x i8> %wide.load, %7
  %i.an = select <16 x i1> %i.al, <16 x i8> splat (i8 32), <16 x i8> zeroinitializer
  %8 = or disjoint <16 x i8> %wide.load52, %i.an
  store <16 x i8> %i.am, ptr %next.gep, align 1, !tbaa !13, !noalias !122
  store <16 x i8> %8, ptr %i.ah, align 1, !tbaa !13, !noalias !122
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.ao = icmp eq i64 %index.next, %n.vec
  br i1 %i.ao, label %middle.block, label %vector.body, !llvm.loop !125

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.ae, %n.vec
  br i1 %cmp.n, label %_ZSt9transformIN9__gnu_cxx17__normal_iteratorIPcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEES9_ZN11StringUtils5LowerES8_EUlhE_ET0_T_SD_SC_T1_.exit.loopexit.i, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %n.mod.vf, 0
  br i1 %min.epilog.iters.check, label %.lr.ph.i.i.preheader, label %vec.epilog.ph, !prof !97

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec54 = and i64 %i.ae, -8                    ; 3 uses
  %i.ap = getelementptr i8, ptr %i.ad, i64 %n.vec54
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index55 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next58, %vec.epilog.vector.body ] ; 2 uses
  %next.gep56 = getelementptr i8, ptr %i.ad, i64 %index55 ; 2 uses
  %wide.load57 = load <8 x i8>, ptr %next.gep56, align 1, !tbaa !13, !noalias !122 ; 2 uses
  %i.aq = add <8 x i8> %wide.load57, splat (i8 -65)
  %i.ar = icmp ult <8 x i8> %i.aq, splat (i8 26)
  %9 = select <8 x i1> %i.ar, <8 x i8> splat (i8 32), <8 x i8> zeroinitializer
  %10 = or disjoint <8 x i8> %wide.load57, %9
  store <8 x i8> %10, ptr %next.gep56, align 1, !tbaa !13, !noalias !122
  %index.next58 = add nuw i64 %index55, 8         ; 2 uses
  %i.as = icmp eq i64 %index.next58, %n.vec54
  br i1 %i.as, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !126

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n59 = icmp eq i64 %i.ae, %n.vec54
  br i1 %cmp.n59, label %_ZSt9transformIN9__gnu_cxx17__normal_iteratorIPcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEES9_ZN11StringUtils5LowerES8_EUlhE_ET0_T_SD_SC_T1_.exit.loopexit.i, label %.lr.ph.i.i.preheader

.lr.ph.i.i.preheader:                             ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.sroa.0.08.i.i.ph = phi ptr [ %i.ad, %iter.check ], [ %i.ag, %vec.epilog.iter.check ], [ %i.ap, %vec.epilog.middle.block ]
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.preheader, %.lr.ph.i.i
  %.sroa.0.08.i.i = phi ptr [ %i.aw, %.lr.ph.i.i ], [ %.sroa.0.08.i.i.ph, %.lr.ph.i.i.preheader ] ; 3 uses
  %i.at = load i8, ptr %.sroa.0.08.i.i, align 1, !tbaa !13, !noalias !122 ; 3 uses
  %i.au = add i8 %i.at, -65
  %or.cond.i.i.i.i = icmp ult i8 %i.au, 26
  %i.av = or disjoint i8 %i.at, 32
  %.0.i.i.i.i = select i1 %or.cond.i.i.i.i, i8 %i.av, i8 %i.at
  store i8 %.0.i.i.i.i, ptr %.sroa.0.08.i.i, align 1, !tbaa !13, !noalias !122
  %i.aw = getelementptr i8, ptr %.sroa.0.08.i.i, i64 1 ; 2 uses
  %.not.i.i = icmp eq ptr %i.aw, %i.af
  br i1 %.not.i.i, label %_ZSt9transformIN9__gnu_cxx17__normal_iteratorIPcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEES9_ZN11StringUtils5LowerES8_EUlhE_ET0_T_SD_SC_T1_.exit.loopexit.i, label %.lr.ph.i.i, !llvm.loop !127

_ZSt9transformIN9__gnu_cxx17__normal_iteratorIPcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEES9_ZN11StringUtils5LowerES8_EUlhE_ET0_T_SD_SC_T1_.exit.loopexit.i: ; preds = %.lr.ph.i.i, %vec.epilog.middle.block, %middle.block
  %.pre.i = load ptr, ptr %6, align 8, !tbaa !7, !noalias !122
  br label %_ZSt9transformIN9__gnu_cxx17__normal_iteratorIPcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEES9_ZN11StringUtils5LowerES8_EUlhE_ET0_T_SD_SC_T1_.exit.i

_ZSt9transformIN9__gnu_cxx17__normal_iteratorIPcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEES9_ZN11StringUtils5LowerES8_EUlhE_ET0_T_SD_SC_T1_.exit.i: ; preds = %_ZSt9transformIN9__gnu_cxx17__normal_iteratorIPcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEES9_ZN11StringUtils5LowerES8_EUlhE_ET0_T_SD_SC_T1_.exit.loopexit.i, %bb.i
  %i.ax = phi ptr [ %.pre.i, %_ZSt9transformIN9__gnu_cxx17__normal_iteratorIPcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEES9_ZN11StringUtils5LowerES8_EUlhE_ET0_T_SD_SC_T1_.exit.loopexit.i ], [ %i.ad, %bb.i ] ; 2 uses
  store ptr %i.n, ptr %5, align 8, !tbaa !31, !alias.scope !122
  %i.ay = icmp eq ptr %i.ax, %i.l
  br i1 %i.ay, label %bb.j, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i6

bb.j:                                             ; preds = %_ZSt9transformIN9__gnu_cxx17__normal_iteratorIPcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEES9_ZN11StringUtils5LowerES8_EUlhE_ET0_T_SD_SC_T1_.exit.i
  %i.az = load i64, ptr %i.m, align 8, !tbaa !32, !noalias !122 ; 3 uses
  %i.ba = icmp ult i64 %i.az, 16
  call void @llvm.assume(i1 %i.ba)
  %i.bb = add nuw nsw i64 %i.az, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.n, ptr noundef nonnull align 8 dereferenceable(1) %i.l, i64 %i.bb, i1 false)
  br label %bb.k

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i6: ; preds = %_ZSt9transformIN9__gnu_cxx17__normal_iteratorIPcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEES9_ZN11StringUtils5LowerES8_EUlhE_ET0_T_SD_SC_T1_.exit.i
  store ptr %i.ax, ptr %5, align 8, !tbaa !7, !alias.scope !122
  %i.bc = load i64, ptr %i.l, align 8, !tbaa !13, !noalias !122
  store i64 %i.bc, ptr %i.n, align 8, !tbaa !13, !alias.scope !122
  %.pre4.i = load i64, ptr %i.m, align 8, !tbaa !32, !noalias !122
  br label %bb.k

bb.k:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i6, %bb.j
  %i.bd = phi i64 [ %i.az, %bb.j ], [ %.pre4.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i6 ]
  store i64 %i.bd, ptr %i.o, align 8, !tbaa !32, !alias.scope !122
  store ptr %i.l, ptr %6, align 8, !tbaa !7, !noalias !122
  store i64 0, ptr %i.m, align 8, !tbaa !32, !noalias !122
  store i8 0, ptr %i.l, align 8, !tbaa !13, !noalias !122
  invoke void @_ZN11StringUtils4TrimENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %4, ptr noundef nonnull %5)
          to label %bb.l unwind label %.loopexit

bb.l:                                             ; preds = %bb.k
  %i.be = load i64, ptr %i.p, align 8, !tbaa !32  ; 4 uses
  %i.bf = load i64, ptr %i.q, align 8, !tbaa !32
  %i.bg = icmp eq i64 %i.be, %i.bf
  br i1 %i.bg, label %bb.m, label %._ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit_crit_edge

._ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit_crit_edge: ; preds = %bb.l
  %.pre = load ptr, ptr %4, align 8, !tbaa !7
  br label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit

bb.m:                                             ; preds = %bb.l
  %i.bh = icmp eq i64 %i.be, 0
  %.pre32 = load ptr, ptr %4, align 8, !tbaa !7   ; 3 uses
  br i1 %i.bh, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.bi = load ptr, ptr %2, align 8, !tbaa !7
  %bcmp.i = call i32 @bcmp(ptr %.pre32, ptr %i.bi, i64 %i.be)
  %i.bj = icmp eq i32 %bcmp.i, 0
  br label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit: ; preds = %._ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit_crit_edge, %bb.m, %bb.n
  %i.bk = phi ptr [ %.pre, %._ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit_crit_edge ], [ %.pre32, %bb.n ], [ %.pre32, %bb.m ] ; 2 uses
  %i.bl = phi i1 [ false, %._ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit_crit_edge ], [ %i.bj, %bb.n ], [ true, %bb.m ]
  %i.bm = icmp eq ptr %i.bk, %i.r
  br i1 %i.bm, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i8, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i7

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i8: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit
  %i.bn = icmp ult i64 %i.be, 16
  call void @llvm.assume(i1 %i.bn)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit9

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i7: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit
  %i.bo = load i64, ptr %i.r, align 8, !tbaa !13
  %i.bp = add i64 %i.bo, 1
  call void @_ZdlPvm(ptr noundef %i.bk, i64 noundef %i.bp) #28
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit9

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit9: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i8, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i7
  %i.bq = load ptr, ptr %5, align 8, !tbaa !7     ; 2 uses
  %i.br = icmp eq ptr %i.bq, %i.n
  br i1 %i.br, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit12, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i10

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i10: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit9
  %i.bs = load i64, ptr %i.n, align 8, !tbaa !13
  %i.bt = add i64 %i.bs, 1
  call void @_ZdlPvm(ptr noundef %i.bq, i64 noundef %i.bt) #28
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit12

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit12: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit9, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i10
  %i.bu = load ptr, ptr %6, align 8, !tbaa !7     ; 2 uses
  %i.bv = icmp eq ptr %i.bu, %i.l
  br i1 %i.bv, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit15, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i13

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i13: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit12
  %i.bw = load i64, ptr %i.l, align 8, !tbaa !13
  %i.bx = add i64 %i.bw, 1
  call void @_ZdlPvm(ptr noundef %i.bu, i64 noundef %i.bx) #28
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit15

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit15: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit12, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i13
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #30
  br i1 %i.bl, label %bb.o, label %bb.p

bb.o:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit15
  %i.by = load ptr, ptr %i.h, align 8, !tbaa !88  ; 2 uses
  %i.bz = ptrtoint ptr %.sroa.021.029 to i64
  %i.ca = ptrtoint ptr %i.by to i64
  %i.cb = sub i64 %i.bz, %i.ca
  %i.cc = getelementptr inbounds i8, ptr %i.by, i64 %i.cb
  %i.cd = invoke ptr @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE8_M_eraseEN9__gnu_cxx17__normal_iteratorIPS5_S7_EE(ptr noundef nonnull align 8 dereferenceable(24) %i.h, ptr %i.cc)
          to label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE5eraseEN9__gnu_cxx17__normal_iteratorIPKS5_S7_EE.exit unwind label %.loopexit.split-lp ; 0 uses

bb.p:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit15
  %i.ce = getelementptr inbounds nuw i8, ptr %.sroa.021.029, i64 32 ; 2 uses
  %i.cf = load ptr, ptr %i.j, align 8, !tbaa !88
  %.not25 = icmp eq ptr %i.ce, %i.cf
  br i1 %.not25, label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE5eraseEN9__gnu_cxx17__normal_iteratorIPKS5_S7_EE.exit, label %bb.f, !llvm.loop !128

_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE5eraseEN9__gnu_cxx17__normal_iteratorIPKS5_S7_EE.exit: ; preds = %bb.p, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %bb.o
  %i.cg = load ptr, ptr %2, align 8, !tbaa !7     ; 2 uses
  %i.ch = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.ci = icmp eq ptr %i.cg, %i.ch
  br i1 %i.ci, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit19, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i17

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i17: ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE5eraseEN9__gnu_cxx17__normal_iteratorIPKS5_S7_EE.exit
  %i.cj = load i64, ptr %i.ch, align 8, !tbaa !13
  %i.ck = add i64 %i.cj, 1
  call void @_ZdlPvm(ptr noundef %i.cg, i64 noundef %i.ck) #28
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit19

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit19: ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE5eraseEN9__gnu_cxx17__normal_iteratorIPKS5_S7_EE.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i17
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #30
  br label %bb.q

bb.q:                                             ; preds = %bb.a, %bb.b, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit19
  ret void

.loopexit:                                        ; preds = %bb.k, %.noexc.i
  %lpad.loopexit = landingpad { ptr, i32 }
          catch ptr null
  br label %bb.r

.loopexit.split-lp:                               ; preds = %bb.c, %bb.d, %bb.o
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          catch ptr null
  br label %bb.r

bb.r:                                             ; preds = %.loopexit.split-lp, %.loopexit
  %lpad.phi = phi { ptr, i32 } [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  %i.cl = extractvalue { ptr, i32 } %lpad.phi, 0
  call void @__clang_call_terminate(ptr %i.cl) #32
  unreachable
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define noundef i32 @_ZNK16OpenColorIO_v2_510ColorSpace16getNumCategoriesEv(ptr noundef nonnull readonly align 8 captures(none) dereferenceable(8) %0) local_unnamed_addr #7 align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !70     ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 352
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 360
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !74
  %i.e = load ptr, ptr %i.b, align 8, !tbaa !73
  %i.f = ptrtoint ptr %i.d to i64
  %i.g = ptrtoint ptr %i.e to i64
  %i.h = sub i64 %i.f, %i.g
  %i.i = lshr exact i64 %i.h, 5
  %i.j = trunc i64 %i.i to i32
  ret i32 %i.j
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define noundef ptr @_ZNK16OpenColorIO_v2_510ColorSpace11getCategoryEi(ptr noundef nonnull readonly align 8 captures(none) dereferenceable(8) %0, i32 noundef %1) local_unnamed_addr #7 align 2 {
bb.a:
  %i.a = icmp slt i32 %1, 0
  br i1 %i.a, label %_ZNK16OpenColorIO_v2_513TokensManager8getTokenEi.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = load ptr, ptr %0, align 8, !tbaa !70     ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 352
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 360
end_hunk_1
begin_hunk_2_@_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE7_M_copyILb0ENSE_11_Alloc_nodeEEEPSt13_Rb_tree_nodeIS8_ESJ_PSt18_Rb_tree_node_baseRT0_:bb.a

bb.m:                                             ; preds = %bb.j
  unreachable

bb.n:                                             ; preds = %.noexc
  %i.aa = load i32, ptr %.040, align 8, !tbaa !188
  store i32 %i.aa, ptr %i.r, align 8, !tbaa !188
  %i.ab = getelementptr inbounds nuw i8, ptr %i.r, i64 16
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ab, i8 0, i64 16, i1 false)
  %i.ac = getelementptr inbounds nuw i8, ptr %.03139, i64 16
  store ptr %i.r, ptr %i.ac, align 8, !tbaa !118
  %i.ad = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  store ptr %.03139, ptr %i.ad, align 8, !tbaa !185
  %i.ae = getelementptr inbounds nuw i8, ptr %.040, i64 24
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !120 ; 2 uses
  %.not33 = icmp eq ptr %i.af, null
  br i1 %.not33, label %bb.s, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.ag = invoke noundef ptr @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE7_M_copyILb0ENSE_11_Alloc_nodeEEEPSt13_Rb_tree_nodeIS8_ESJ_PSt18_Rb_tree_node_baseRT0_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull %i.af, ptr noundef nonnull %i.r, ptr noundef nonnull align 8 dereferenceable(8) %3)
          to label %bb.p unwind label %bb.q

bb.p:                                             ; preds = %bb.o
  %i.ah = getelementptr inbounds nuw i8, ptr %i.r, i64 24
  store ptr %i.ag, ptr %i.ah, align 8, !tbaa !120
  br label %bb.s

bb.q:                                             ; preds = %.lr.ph, %bb.o
  %i.ai = landingpad { ptr, i32 }
          catch ptr null
  br label %.body

.body:                                            ; preds = %bb.q, %bb.k, %bb.h
  %.pn = phi { ptr, i32 } [ %i.q, %bb.h ], [ %i.ai, %bb.q ], [ %i.x, %bb.k ]
  %.030 = extractvalue { ptr, i32 } %.pn, 0
  %i.aj = tail call ptr @__cxa_begin_catch(ptr %.030) #30 ; 0 uses
  invoke void @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE8_M_eraseEPSt13_Rb_tree_nodeIS8_E(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull %i.b)
          to label %bb.r unwind label %bb.t

bb.r:                                             ; preds = %.body
  invoke void @__cxa_rethrow() #31
          to label %bb.v unwind label %bb.t

bb.s:                                             ; preds = %bb.p, %bb.n
  %.0.in = getelementptr inbounds nuw i8, ptr %.040, i64 16
  %.0 = load ptr, ptr %.0.in, align 8, !tbaa !118 ; 2 uses
  %.not32 = icmp eq ptr %.0, null
  br i1 %.not32, label %._crit_edge, label %.lr.ph, !llvm.loop !195

bb.t:                                             ; preds = %bb.r, %.body
  %i.ak = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %common.resume unwind label %bb.u

._crit_edge:                                      ; preds = %bb.s, %bb.i
  ret ptr %i.b

bb.u:                                             ; preds = %bb.t
  %i.al = landingpad { ptr, i32 }
          catch ptr null
  %i.am = extractvalue { ptr, i32 } %i.al, 0
  tail call void @__clang_call_terminate(ptr %i.am) #32
  unreachable

bb.v:                                             ; preds = %bb.r
  unreachable
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden ptr @_ZNK16OpenColorIO_v2_513TokensManager9findTokenB5cxx11EPKc(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %1) local_unnamed_addr #6 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 7 uses
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 4 uses
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 7 uses
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %6 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %.not = icmp eq ptr %1, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = load i8, ptr %1, align 1, !tbaa !13
  %.not4 = icmp eq i8 %i.b, 0
  br i1 %.not4, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !88
  br label %bb.q

bb.d:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #30
  invoke void @_ZN11StringUtils5LowerB5cxx11EPKc(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %3, ptr noundef nonnull %1)
          to label %bb.e unwind label %.loopexit.split-lp

bb.e:                                             ; preds = %bb.d
  invoke void @_ZN11StringUtils4TrimENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %2, ptr noundef nonnull %3)
          to label %bb.f unwind label %.loopexit.split-lp

bb.f:                                             ; preds = %bb.e
  %i.e = load ptr, ptr %3, align 8, !tbaa !7      ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.g = icmp eq ptr %i.e, %i.f
  br i1 %i.g, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.f
  %i.h = load i64, ptr %i.f, align 8, !tbaa !13
  %i.i = add i64 %i.h, 1
  call void @_ZdlPvm(ptr noundef %i.e, i64 noundef %i.i) #28
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.f, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !88   ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !88   ; 2 uses
  %.not2223 = icmp eq ptr %i.k, %i.m
  br i1 %.not2223, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.n = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 10 uses
  %i.o = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 5 uses
  %i.p = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 5 uses
  %i.q = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.r = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.s = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.t = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  br label %bb.g

bb.g:                                             ; preds = %.lr.ph, %bb.p
  %.sroa.018.024 = phi ptr [ %i.k, %.lr.ph ], [ %i.ca, %bb.p ] ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #30
  store ptr %i.n, ptr %6, align 8, !tbaa !31
  %i.u = load ptr, ptr %.sroa.018.024, align 8, !tbaa !7 ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %.sroa.018.024, i64 8
  %i.w = load i64, ptr %i.v, align 8, !tbaa !32   ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #30
  store i64 %i.w, ptr %i.a, align 8, !tbaa !89
  %i.x = icmp ugt i64 %i.w, 15
  br i1 %i.x, label %.noexc.i, label %._crit_edge.i.i

.noexc.i:                                         ; preds = %bb.g
  %i.y = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0)
          to label %.noexc unwind label %.loopexit ; 2 uses

.noexc:                                           ; preds = %.noexc.i
  store ptr %i.y, ptr %6, align 8, !tbaa !7
  %i.z = load i64, ptr %i.a, align 8, !tbaa !89
  store i64 %i.z, ptr %i.n, align 8, !tbaa !13
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %.noexc, %bb.g
  %i.aa = phi ptr [ %i.y, %.noexc ], [ %i.n, %bb.g ] ; 2 uses
  switch i64 %i.w, label %bb.i [
    i64 1, label %bb.h
    i64 0, label %bb.j
  ]

bb.h:                                             ; preds = %._crit_edge.i.i
  %i.ab = load i8, ptr %i.u, align 1, !tbaa !13
  store i8 %i.ab, ptr %i.aa, align 1, !tbaa !13
  br label %bb.j

bb.i:                                             ; preds = %._crit_edge.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.aa, ptr align 1 %i.u, i64 %i.w, i1 false)
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h, %._crit_edge.i.i
  %i.ac = load i64, ptr %i.a, align 8, !tbaa !89  ; 2 uses
  store i64 %i.ac, ptr %i.o, align 8, !tbaa !32
  %i.ad = load ptr, ptr %6, align 8, !tbaa !7
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 %i.ac
  store i8 0, ptr %i.ae, align 1, !tbaa !13
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #30
  call void @llvm.experimental.noalias.scope.decl(metadata !196)
  %i.af = load ptr, ptr %6, align 8, !tbaa !7, !noalias !196 ; 7 uses
  %i.ag = load i64, ptr %i.o, align 8, !tbaa !32, !noalias !196 ; 9 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %i.af, i64 %i.ag
  %.not6.i.i = icmp samesign eq i64 %i.ag, 0
  br i1 %.not6.i.i, label %_ZSt9transformIN9__gnu_cxx17__normal_iteratorIPcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEES9_ZN11StringUtils5LowerES8_EUlhE_ET0_T_SD_SC_T1_.exit.i, label %iter.check

iter.check:                                       ; preds = %bb.j
  %min.iters.check = icmp ult i64 %i.ag, 8
  br i1 %min.iters.check, label %.lr.ph.i.i.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check43 = icmp ult i64 %i.ag, 32
  br i1 %min.iters.check43, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %n.mod.vf = and i64 %i.ag, 24
  %n.vec = and i64 %i.ag, -32                     ; 4 uses
  %i.ai = getelementptr i8, ptr %i.af, i64 %n.vec
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %next.gep = getelementptr i8, ptr %i.af, i64 %index ; 3 uses
  %i.aj = getelementptr i8, ptr %next.gep, i64 16 ; 2 uses
  %wide.load = load <16 x i8>, ptr %next.gep, align 1, !tbaa !13, !noalias !196 ; 2 uses
  %wide.load44 = load <16 x i8>, ptr %i.aj, align 1, !tbaa !13, !noalias !196 ; 2 uses
  %i.ak = add <16 x i8> %wide.load, splat (i8 -65)
  %i.al = add <16 x i8> %wide.load44, splat (i8 -65)
  %i.am = icmp ult <16 x i8> %i.ak, splat (i8 26)
  %i.an = icmp ult <16 x i8> %i.al, splat (i8 26)
  %7 = select <16 x i1> %i.am, <16 x i8> splat (i8 32), <16 x i8> zeroinitializer
  %i.ao = or disjoint <16 x i8> %wide.load, %7
  %i.ap = select <16 x i1> %i.an, <16 x i8> splat (i8 32), <16 x i8> zeroinitializer
  %8 = or disjoint <16 x i8> %wide.load44, %i.ap
  store <16 x i8> %i.ao, ptr %next.gep, align 1, !tbaa !13, !noalias !196
  store <16 x i8> %8, ptr %i.aj, align 1, !tbaa !13, !noalias !196
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.aq = icmp eq i64 %index.next, %n.vec
  br i1 %i.aq, label %middle.block, label %vector.body, !llvm.loop !199

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.ag, %n.vec
  br i1 %cmp.n, label %_ZSt9transformIN9__gnu_cxx17__normal_iteratorIPcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEES9_ZN11StringUtils5LowerES8_EUlhE_ET0_T_SD_SC_T1_.exit.loopexit.i, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %n.mod.vf, 0
  br i1 %min.epilog.iters.check, label %.lr.ph.i.i.preheader, label %vec.epilog.ph, !prof !97

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec46 = and i64 %i.ag, -8                    ; 3 uses
  %i.ar = getelementptr i8, ptr %i.af, i64 %n.vec46
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index47 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next50, %vec.epilog.vector.body ] ; 2 uses
  %next.gep48 = getelementptr i8, ptr %i.af, i64 %index47 ; 2 uses
  %wide.load49 = load <8 x i8>, ptr %next.gep48, align 1, !tbaa !13, !noalias !196 ; 2 uses
  %i.as = add <8 x i8> %wide.load49, splat (i8 -65)
  %i.at = icmp ult <8 x i8> %i.as, splat (i8 26)
  %9 = select <8 x i1> %i.at, <8 x i8> splat (i8 32), <8 x i8> zeroinitializer
  %10 = or disjoint <8 x i8> %wide.load49, %9
  store <8 x i8> %10, ptr %next.gep48, align 1, !tbaa !13, !noalias !196
  %index.next50 = add nuw i64 %index47, 8         ; 2 uses
  %i.au = icmp eq i64 %index.next50, %n.vec46
  br i1 %i.au, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !200

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n51 = icmp eq i64 %i.ag, %n.vec46
  br i1 %cmp.n51, label %_ZSt9transformIN9__gnu_cxx17__normal_iteratorIPcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEES9_ZN11StringUtils5LowerES8_EUlhE_ET0_T_SD_SC_T1_.exit.loopexit.i, label %.lr.ph.i.i.preheader

.lr.ph.i.i.preheader:                             ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.sroa.0.08.i.i.ph = phi ptr [ %i.af, %iter.check ], [ %i.ai, %vec.epilog.iter.check ], [ %i.ar, %vec.epilog.middle.block ]
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.preheader, %.lr.ph.i.i
  %.sroa.0.08.i.i = phi ptr [ %i.ay, %.lr.ph.i.i ], [ %.sroa.0.08.i.i.ph, %.lr.ph.i.i.preheader ] ; 3 uses
  %i.av = load i8, ptr %.sroa.0.08.i.i, align 1, !tbaa !13, !noalias !196 ; 3 uses
  %i.aw = add i8 %i.av, -65
  %or.cond.i.i.i.i = icmp ult i8 %i.aw, 26
  %i.ax = or disjoint i8 %i.av, 32
  %.0.i.i.i.i = select i1 %or.cond.i.i.i.i, i8 %i.ax, i8 %i.av
  store i8 %.0.i.i.i.i, ptr %.sroa.0.08.i.i, align 1, !tbaa !13, !noalias !196
  %i.ay = getelementptr i8, ptr %.sroa.0.08.i.i, i64 1 ; 2 uses
  %.not.i.i = icmp eq ptr %i.ay, %i.ah
  br i1 %.not.i.i, label %_ZSt9transformIN9__gnu_cxx17__normal_iteratorIPcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEES9_ZN11StringUtils5LowerES8_EUlhE_ET0_T_SD_SC_T1_.exit.loopexit.i, label %.lr.ph.i.i, !llvm.loop !201

_ZSt9transformIN9__gnu_cxx17__normal_iteratorIPcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEES9_ZN11StringUtils5LowerES8_EUlhE_ET0_T_SD_SC_T1_.exit.loopexit.i: ; preds = %.lr.ph.i.i, %vec.epilog.middle.block, %middle.block
  %.pre.i = load ptr, ptr %6, align 8, !tbaa !7, !noalias !196
  br label %_ZSt9transformIN9__gnu_cxx17__normal_iteratorIPcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEES9_ZN11StringUtils5LowerES8_EUlhE_ET0_T_SD_SC_T1_.exit.i

_ZSt9transformIN9__gnu_cxx17__normal_iteratorIPcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEES9_ZN11StringUtils5LowerES8_EUlhE_ET0_T_SD_SC_T1_.exit.i: ; preds = %_ZSt9transformIN9__gnu_cxx17__normal_iteratorIPcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEES9_ZN11StringUtils5LowerES8_EUlhE_ET0_T_SD_SC_T1_.exit.loopexit.i, %bb.j
  %i.az = phi ptr [ %.pre.i, %_ZSt9transformIN9__gnu_cxx17__normal_iteratorIPcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEES9_ZN11StringUtils5LowerES8_EUlhE_ET0_T_SD_SC_T1_.exit.loopexit.i ], [ %i.af, %bb.j ] ; 2 uses
  store ptr %i.p, ptr %5, align 8, !tbaa !31, !alias.scope !196
  %i.ba = icmp eq ptr %i.az, %i.n
  br i1 %i.ba, label %bb.k, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i5

bb.k:                                             ; preds = %_ZSt9transformIN9__gnu_cxx17__normal_iteratorIPcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEES9_ZN11StringUtils5LowerES8_EUlhE_ET0_T_SD_SC_T1_.exit.i
  %i.bb = load i64, ptr %i.o, align 8, !tbaa !32, !noalias !196 ; 3 uses
  %i.bc = icmp ult i64 %i.bb, 16
  call void @llvm.assume(i1 %i.bc)
  %i.bd = add nuw nsw i64 %i.bb, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.p, ptr noundef nonnull align 8 dereferenceable(1) %i.n, i64 %i.bd, i1 false)
  br label %bb.l

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i5: ; preds = %_ZSt9transformIN9__gnu_cxx17__normal_iteratorIPcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEES9_ZN11StringUtils5LowerES8_EUlhE_ET0_T_SD_SC_T1_.exit.i
  store ptr %i.az, ptr %5, align 8, !tbaa !7, !alias.scope !196
  %i.be = load i64, ptr %i.n, align 8, !tbaa !13, !noalias !196
  store i64 %i.be, ptr %i.p, align 8, !tbaa !13, !alias.scope !196
  %.pre4.i = load i64, ptr %i.o, align 8, !tbaa !32, !noalias !196
  br label %bb.l

bb.l:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i5, %bb.k
  %i.bf = phi i64 [ %i.bb, %bb.k ], [ %.pre4.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i5 ]
  store i64 %i.bf, ptr %i.q, align 8, !tbaa !32, !alias.scope !196
  store ptr %i.n, ptr %6, align 8, !tbaa !7, !noalias !196
  store i64 0, ptr %i.o, align 8, !tbaa !32, !noalias !196
  store i8 0, ptr %i.n, align 8, !tbaa !13, !noalias !196
  invoke void @_ZN11StringUtils4TrimENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %4, ptr noundef nonnull %5)
          to label %bb.m unwind label %.loopexit

bb.m:                                             ; preds = %bb.l
  %i.bg = load i64, ptr %i.r, align 8, !tbaa !32  ; 4 uses
  %i.bh = load i64, ptr %i.s, align 8, !tbaa !32
  %i.bi = icmp eq i64 %i.bg, %i.bh
  br i1 %i.bi, label %bb.n, label %._ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit_crit_edge

._ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit_crit_edge: ; preds = %bb.m
  %.pre = load ptr, ptr %4, align 8, !tbaa !7
  br label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit

bb.n:                                             ; preds = %bb.m
  %i.bj = icmp eq i64 %i.bg, 0
  %.pre26 = load ptr, ptr %4, align 8, !tbaa !7   ; 3 uses
  br i1 %i.bj, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.bk = load ptr, ptr %2, align 8, !tbaa !7
  %bcmp.i = call i32 @bcmp(ptr %.pre26, ptr %i.bk, i64 %i.bg)
  %i.bl = icmp eq i32 %bcmp.i, 0
  br label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit: ; preds = %._ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit_crit_edge, %bb.n, %bb.o
  %i.bm = phi ptr [ %.pre, %._ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit_crit_edge ], [ %.pre26, %bb.o ], [ %.pre26, %bb.n ] ; 2 uses
  %i.bn = phi i1 [ false, %._ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit_crit_edge ], [ %i.bl, %bb.o ], [ true, %bb.n ]
  %i.bo = icmp eq ptr %i.bm, %i.t
  br i1 %i.bo, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i7, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i6

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i7: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit
  %i.bp = icmp ult i64 %i.bg, 16
  call void @llvm.assume(i1 %i.bp)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit8

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i6: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit
  %i.bq = load i64, ptr %i.t, align 8, !tbaa !13
  %i.br = add i64 %i.bq, 1
  call void @_ZdlPvm(ptr noundef %i.bm, i64 noundef %i.br) #28
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit8

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit8: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i7, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i6
  %i.bs = load ptr, ptr %5, align 8, !tbaa !7     ; 2 uses
  %i.bt = icmp eq ptr %i.bs, %i.p
  br i1 %i.bt, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit11, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i9

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i9: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit8
  %i.bu = load i64, ptr %i.p, align 8, !tbaa !13
  %i.bv = add i64 %i.bu, 1
  call void @_ZdlPvm(ptr noundef %i.bs, i64 noundef %i.bv) #28
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit11

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit11: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit8, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i9
  %i.bw = load ptr, ptr %6, align 8, !tbaa !7     ; 2 uses
  %i.bx = icmp eq ptr %i.bw, %i.n
  br i1 %i.bx, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit14, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i12

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i12: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit11
  %i.by = load i64, ptr %i.n, align 8, !tbaa !13
  %i.bz = add i64 %i.by, 1
  call void @_ZdlPvm(ptr noundef %i.bw, i64 noundef %i.bz) #28
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit14

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit14: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit11, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i12
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #30
  br i1 %i.bn, label %._crit_edge, label %bb.p

bb.p:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit14
  %i.ca = getelementptr inbounds nuw i8, ptr %.sroa.018.024, i64 32 ; 2 uses
  %i.cb = load ptr, ptr %i.l, align 8, !tbaa !88  ; 2 uses
  %.not22 = icmp eq ptr %i.ca, %i.cb
  br i1 %.not22, label %._crit_edge, label %bb.g, !llvm.loop !202

._crit_edge:                                      ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit14, %bb.p, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %.sroa.018.1 = phi ptr [ %i.m, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %i.cb, %bb.p ], [ %.sroa.018.024, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit14 ]
  %i.cc = load ptr, ptr %2, align 8, !tbaa !7     ; 2 uses
  %i.cd = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.ce = icmp eq ptr %i.cc, %i.cd
  br i1 %i.ce, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit17, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i15

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i15: ; preds = %._crit_edge
  %i.cf = load i64, ptr %i.cd, align 8, !tbaa !13
  %i.cg = add i64 %i.cf, 1
  call void @_ZdlPvm(ptr noundef %i.cc, i64 noundef %i.cg) #28
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit17

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit17: ; preds = %._crit_edge, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i15
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #30
  br label %bb.q

bb.q:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit17, %bb.c
  %.sroa.018.2 = phi ptr [ %i.d, %bb.c ], [ %.sroa.018.1, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit17 ]
  ret ptr %.sroa.018.2

.loopexit:                                        ; preds = %bb.l, %.noexc.i
  %lpad.loopexit = landingpad { ptr, i32 }
          catch ptr null
  br label %bb.r

.loopexit.split-lp:                               ; preds = %bb.d, %bb.e
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          catch ptr null
  br label %bb.r

bb.r:                                             ; preds = %.loopexit.split-lp, %.loopexit
  %lpad.phi = phi { ptr, i32 } [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  %i.ch = extractvalue { ptr, i32 } %lpad.phi, 0
  call void @__clang_call_terminate(ptr %i.ch) #32
  unreachable
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr hidden void @_ZN11StringUtils4TrimENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef %1) local_unnamed_addr #10 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %i.b = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 12 uses
  store ptr %i.b, ptr %3, align 8, !tbaa !31
  %i.c = load ptr, ptr %1, align 8, !tbaa !7      ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.e = load i64, ptr %i.d, align 8, !tbaa !32   ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #30
  store i64 %i.e, ptr %i.a, align 8, !tbaa !89
  %i.f = icmp ugt i64 %i.e, 15
  br i1 %i.f, label %.noexc.i, label %._crit_edge.i.i

.noexc.i:                                         ; preds = %bb.a
  %i.g = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0) ; 2 uses
  store ptr %i.g, ptr %3, align 8, !tbaa !7
  %i.h = load i64, ptr %i.a, align 8, !tbaa !89
  store i64 %i.h, ptr %i.b, align 8, !tbaa !13
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %.noexc.i, %bb.a
  %i.i = phi ptr [ %i.g, %.noexc.i ], [ %i.b, %bb.a ] ; 2 uses
  switch i64 %i.e, label %bb.c [
    i64 1, label %bb.b
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit
  ]

bb.b:                                             ; preds = %._crit_edge.i.i
  %i.j = load i8, ptr %i.c, align 1, !tbaa !13
  store i8 %i.j, ptr %i.i, align 1, !tbaa !13
end_hunk_2
begin_hunk_3_@_ZN11StringUtils4TrimENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE:bb.a
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8_M_eraseEmm(ptr noundef nonnull align 8 dereferenceable(32) %2, i64 noundef 0, i64 noundef %i.dj)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE5eraseEN9__gnu_cxx17__normal_iteratorIPKcS4_EES9_.exit.i4 unwind label %bb.ac

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE5eraseEN9__gnu_cxx17__normal_iteratorIPKcS4_EES9_.exit.i4: ; preds = %bb.aa, %_ZSt7find_ifIN9__gnu_cxx17__normal_iteratorIPcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEZN11StringUtils8LeftTrimES8_EUlcE_ET_SC_SC_T0_.exit.thread.i
  %i.dk = load ptr, ptr %2, align 8, !tbaa !7, !noalias !217 ; 2 uses
  %i.dl = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  store ptr %i.dl, ptr %0, align 8, !tbaa !31, !alias.scope !217
  %i.dm = icmp eq ptr %i.dk, %i.bs
  br i1 %i.dm, label %bb.ab, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i5

bb.ab:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE5eraseEN9__gnu_cxx17__normal_iteratorIPKcS4_EES9_.exit.i4
  %i.dn = load i64, ptr %i.ca, align 8, !tbaa !32, !noalias !217 ; 3 uses
  %i.do = icmp ult i64 %i.dn, 16
  call void @llvm.assume(i1 %i.do)
  %i.dp = add nuw nsw i64 %i.dn, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.dl, ptr noundef nonnull align 8 dereferenceable(1) %i.bs, i64 %i.dp, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i5: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE5eraseEN9__gnu_cxx17__normal_iteratorIPKcS4_EES9_.exit.i4
  store ptr %i.dk, ptr %0, align 8, !tbaa !7, !alias.scope !217
  %i.dq = load i64, ptr %i.bs, align 8, !tbaa !13, !noalias !217
  store i64 %i.dq, ptr %i.dl, align 8, !tbaa !13, !alias.scope !217
  %.pre.i6 = load i64, ptr %i.ca, align 8, !tbaa !32, !noalias !217
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i5, %bb.ab
  %i.dr = phi i64 [ %i.dn, %bb.ab ], [ %.pre.i6, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i5 ]
  %i.ds = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.dr, ptr %i.ds, align 8, !tbaa !32, !alias.scope !217
  store ptr %i.bs, ptr %2, align 8, !tbaa !7, !noalias !217
  store i64 0, ptr %i.ca, align 8, !tbaa !32, !noalias !217
  store i8 0, ptr %i.bs, align 8, !tbaa !13, !noalias !217
  %i.dt = load ptr, ptr %3, align 8, !tbaa !7     ; 2 uses
  %i.du = icmp eq ptr %i.dt, %i.b
  br i1 %i.du, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit11, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i9

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i9: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.dv = load i64, ptr %i.b, align 8, !tbaa !13
  %i.dw = add i64 %i.dv, 1
  call void @_ZdlPvm(ptr noundef %i.dt, i64 noundef %i.dw) #28
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit11

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit11: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i9
  ret void

bb.ac:                                            ; preds = %bb.aa
  %i.dx = landingpad { ptr, i32 }
          cleanup
  %i.dy = load ptr, ptr %2, align 8, !tbaa !7     ; 2 uses
  %i.dz = icmp eq ptr %i.dy, %i.bs
  br i1 %i.dz, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit14, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i12

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i12: ; preds = %bb.ac
  %i.ea = load i64, ptr %i.bs, align 8, !tbaa !13
  %i.eb = add i64 %i.ea, 1
  call void @_ZdlPvm(ptr noundef %i.dy, i64 noundef %i.eb) #28
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit14

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit14: ; preds = %bb.ac, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i12
  %i.ec = load ptr, ptr %3, align 8, !tbaa !7     ; 2 uses
  %i.ed = icmp eq ptr %i.ec, %i.b
  br i1 %i.ed, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit17, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i15

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i15: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit14
  %i.ee = load i64, ptr %i.b, align 8, !tbaa !13
  %i.ef = add i64 %i.ee, 1
  call void @_ZdlPvm(ptr noundef %i.ec, i64 noundef %i.ef) #28
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit17

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit17: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit14, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i15
  resume { ptr, i32 } %i.dx
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr hidden void @_ZN11StringUtils5LowerB5cxx11EPKc(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef %1) local_unnamed_addr #10 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %i.b = alloca i64, align 8                      ; 6 uses
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %.not = icmp eq ptr %1, null
  br i1 %.not, label %._crit_edge.i.i, label %bb.b

._crit_edge.i.i:                                  ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  store ptr %i.c, ptr %0, align 8, !tbaa !31
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 0, ptr %i.d, align 8, !tbaa !32
  store i8 0, ptr %i.c, align 8, !tbaa !13
  br label %bb.k

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #30
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 7 uses
  store ptr %i.e, ptr %2, align 8, !tbaa !31
  %i.f = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %1) #30 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #30
  store i64 %i.f, ptr %i.b, align 8, !tbaa !89
  %i.g = icmp ugt i64 %i.f, 15
  br i1 %i.g, label %.noexc.i11, label %._crit_edge.i.i10

.noexc.i11:                                       ; preds = %bb.b
  %i.h = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(8) %i.b, i64 noundef 0) ; 2 uses
  store ptr %i.h, ptr %2, align 8, !tbaa !7
  %i.i = load i64, ptr %i.b, align 8, !tbaa !89
  store i64 %i.i, ptr %i.e, align 8, !tbaa !13
  br label %._crit_edge.i.i10

._crit_edge.i.i10:                                ; preds = %.noexc.i11, %bb.b
  %i.j = phi ptr [ %i.h, %.noexc.i11 ], [ %i.e, %bb.b ] ; 2 uses
  switch i64 %i.f, label %bb.d [
    i64 1, label %bb.c
    i64 0, label %bb.e
  ]

bb.c:                                             ; preds = %._crit_edge.i.i10
  %i.k = load i8, ptr %1, align 1, !tbaa !13
  store i8 %i.k, ptr %i.j, align 1, !tbaa !13
  br label %bb.e

bb.d:                                             ; preds = %._crit_edge.i.i10
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.j, ptr nonnull align 1 %1, i64 %i.f, i1 false)
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c, %._crit_edge.i.i10
  %i.l = load i64, ptr %i.b, align 8, !tbaa !89   ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  store i64 %i.l, ptr %i.m, align 8, !tbaa !32
  %i.n = load ptr, ptr %2, align 8, !tbaa !7
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 %i.l
  store i8 0, ptr %i.o, align 1, !tbaa !13
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #30
  %i.p = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 8 uses
  store ptr %i.p, ptr %3, align 8, !tbaa !31
  %i.q = load ptr, ptr %2, align 8, !tbaa !7      ; 2 uses
  %i.r = load i64, ptr %i.m, align 8, !tbaa !32   ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #30
  store i64 %i.r, ptr %i.a, align 8, !tbaa !89
  %i.s = icmp ugt i64 %i.r, 15
  br i1 %i.s, label %.noexc.i16, label %._crit_edge.i.i15

.noexc.i16:                                       ; preds = %bb.e
  %i.t = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0)
          to label %.noexc17 unwind label %bb.j   ; 2 uses

.noexc17:                                         ; preds = %.noexc.i16
  store ptr %i.t, ptr %3, align 8, !tbaa !7
  %i.u = load i64, ptr %i.a, align 8, !tbaa !89
  store i64 %i.u, ptr %i.p, align 8, !tbaa !13
  br label %._crit_edge.i.i15

._crit_edge.i.i15:                                ; preds = %.noexc17, %bb.e
  %i.v = phi ptr [ %i.t, %.noexc17 ], [ %i.p, %bb.e ] ; 2 uses
  switch i64 %i.r, label %bb.g [
    i64 1, label %bb.f
    i64 0, label %bb.h
  ]

bb.f:                                             ; preds = %._crit_edge.i.i15
  %i.w = load i8, ptr %i.q, align 1, !tbaa !13
  store i8 %i.w, ptr %i.v, align 1, !tbaa !13
  br label %bb.h

bb.g:                                             ; preds = %._crit_edge.i.i15
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.v, ptr align 1 %i.q, i64 %i.r, i1 false)
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f, %._crit_edge.i.i15
  %i.x = load i64, ptr %i.a, align 8, !tbaa !89   ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 5 uses
  store i64 %i.x, ptr %i.y, align 8, !tbaa !32
  %i.z = load ptr, ptr %3, align 8, !tbaa !7
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 %i.x
  store i8 0, ptr %i.aa, align 1, !tbaa !13
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #30
  call void @llvm.experimental.noalias.scope.decl(metadata !221)
  %i.ab = load ptr, ptr %3, align 8, !tbaa !7, !noalias !221 ; 7 uses
  %i.ac = load i64, ptr %i.y, align 8, !tbaa !32, !noalias !221 ; 9 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ab, i64 %i.ac
  %.not6.i.i = icmp samesign eq i64 %i.ac, 0
  br i1 %.not6.i.i, label %_ZSt9transformIN9__gnu_cxx17__normal_iteratorIPcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEES9_ZN11StringUtils5LowerES8_EUlhE_ET0_T_SD_SC_T1_.exit.i, label %iter.check

iter.check:                                       ; preds = %bb.h
  %min.iters.check = icmp ult i64 %i.ac, 8
  br i1 %min.iters.check, label %.lr.ph.i.i.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check35 = icmp ult i64 %i.ac, 32
  br i1 %min.iters.check35, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %n.mod.vf = and i64 %i.ac, 24
  %n.vec = and i64 %i.ac, -32                     ; 4 uses
  %i.ae = getelementptr i8, ptr %i.ab, i64 %n.vec
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %next.gep = getelementptr i8, ptr %i.ab, i64 %index ; 3 uses
  %i.af = getelementptr i8, ptr %next.gep, i64 16 ; 2 uses
  %wide.load = load <16 x i8>, ptr %next.gep, align 1, !tbaa !13, !noalias !221 ; 2 uses
  %wide.load36 = load <16 x i8>, ptr %i.af, align 1, !tbaa !13, !noalias !221 ; 2 uses
  %i.ag = add <16 x i8> %wide.load, splat (i8 -65)
  %i.ah = add <16 x i8> %wide.load36, splat (i8 -65)
  %i.ai = icmp ult <16 x i8> %i.ag, splat (i8 26)
  %i.aj = icmp ult <16 x i8> %i.ah, splat (i8 26)
  %4 = select <16 x i1> %i.ai, <16 x i8> splat (i8 32), <16 x i8> zeroinitializer
  %i.ak = or disjoint <16 x i8> %wide.load, %4
  %i.al = select <16 x i1> %i.aj, <16 x i8> splat (i8 32), <16 x i8> zeroinitializer
  %5 = or disjoint <16 x i8> %wide.load36, %i.al
  store <16 x i8> %i.ak, ptr %next.gep, align 1, !tbaa !13, !noalias !221
  store <16 x i8> %5, ptr %i.af, align 1, !tbaa !13, !noalias !221
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.am = icmp eq i64 %index.next, %n.vec
  br i1 %i.am, label %middle.block, label %vector.body, !llvm.loop !224

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.ac, %n.vec
  br i1 %cmp.n, label %_ZSt9transformIN9__gnu_cxx17__normal_iteratorIPcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEES9_ZN11StringUtils5LowerES8_EUlhE_ET0_T_SD_SC_T1_.exit.loopexit.i, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %n.mod.vf, 0
  br i1 %min.epilog.iters.check, label %.lr.ph.i.i.preheader, label %vec.epilog.ph, !prof !97

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec38 = and i64 %i.ac, -8                    ; 3 uses
  %i.an = getelementptr i8, ptr %i.ab, i64 %n.vec38
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index39 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next42, %vec.epilog.vector.body ] ; 2 uses
  %next.gep40 = getelementptr i8, ptr %i.ab, i64 %index39 ; 2 uses
  %wide.load41 = load <8 x i8>, ptr %next.gep40, align 1, !tbaa !13, !noalias !221 ; 2 uses
  %i.ao = add <8 x i8> %wide.load41, splat (i8 -65)
  %i.ap = icmp ult <8 x i8> %i.ao, splat (i8 26)
  %6 = select <8 x i1> %i.ap, <8 x i8> splat (i8 32), <8 x i8> zeroinitializer
  %7 = or disjoint <8 x i8> %wide.load41, %6
  store <8 x i8> %7, ptr %next.gep40, align 1, !tbaa !13, !noalias !221
  %index.next42 = add nuw i64 %index39, 8         ; 2 uses
  %i.aq = icmp eq i64 %index.next42, %n.vec38
  br i1 %i.aq, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !225

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n43 = icmp eq i64 %i.ac, %n.vec38
  br i1 %cmp.n43, label %_ZSt9transformIN9__gnu_cxx17__normal_iteratorIPcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEES9_ZN11StringUtils5LowerES8_EUlhE_ET0_T_SD_SC_T1_.exit.loopexit.i, label %.lr.ph.i.i.preheader

.lr.ph.i.i.preheader:                             ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.sroa.0.08.i.i.ph = phi ptr [ %i.ab, %iter.check ], [ %i.ae, %vec.epilog.iter.check ], [ %i.an, %vec.epilog.middle.block ]
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.preheader, %.lr.ph.i.i
  %.sroa.0.08.i.i = phi ptr [ %i.au, %.lr.ph.i.i ], [ %.sroa.0.08.i.i.ph, %.lr.ph.i.i.preheader ] ; 3 uses
  %i.ar = load i8, ptr %.sroa.0.08.i.i, align 1, !tbaa !13, !noalias !221 ; 3 uses
  %i.as = add i8 %i.ar, -65
  %or.cond.i.i.i.i = icmp ult i8 %i.as, 26
  %i.at = or disjoint i8 %i.ar, 32
  %.0.i.i.i.i = select i1 %or.cond.i.i.i.i, i8 %i.at, i8 %i.ar
  store i8 %.0.i.i.i.i, ptr %.sroa.0.08.i.i, align 1, !tbaa !13, !noalias !221
  %i.au = getelementptr i8, ptr %.sroa.0.08.i.i, i64 1 ; 2 uses
  %.not.i.i = icmp eq ptr %i.au, %i.ad
  br i1 %.not.i.i, label %_ZSt9transformIN9__gnu_cxx17__normal_iteratorIPcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEES9_ZN11StringUtils5LowerES8_EUlhE_ET0_T_SD_SC_T1_.exit.loopexit.i, label %.lr.ph.i.i, !llvm.loop !226

_ZSt9transformIN9__gnu_cxx17__normal_iteratorIPcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEES9_ZN11StringUtils5LowerES8_EUlhE_ET0_T_SD_SC_T1_.exit.loopexit.i: ; preds = %.lr.ph.i.i, %vec.epilog.middle.block, %middle.block
  %.pre.i = load ptr, ptr %3, align 8, !tbaa !7, !noalias !221
  br label %_ZSt9transformIN9__gnu_cxx17__normal_iteratorIPcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEES9_ZN11StringUtils5LowerES8_EUlhE_ET0_T_SD_SC_T1_.exit.i

_ZSt9transformIN9__gnu_cxx17__normal_iteratorIPcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEES9_ZN11StringUtils5LowerES8_EUlhE_ET0_T_SD_SC_T1_.exit.i: ; preds = %_ZSt9transformIN9__gnu_cxx17__normal_iteratorIPcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEES9_ZN11StringUtils5LowerES8_EUlhE_ET0_T_SD_SC_T1_.exit.loopexit.i, %bb.h
  %i.av = phi ptr [ %.pre.i, %_ZSt9transformIN9__gnu_cxx17__normal_iteratorIPcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEES9_ZN11StringUtils5LowerES8_EUlhE_ET0_T_SD_SC_T1_.exit.loopexit.i ], [ %i.ab, %bb.h ] ; 2 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  store ptr %i.aw, ptr %0, align 8, !tbaa !31, !alias.scope !221
  %i.ax = icmp eq ptr %i.av, %i.p
  br i1 %i.ax, label %bb.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

bb.i:                                             ; preds = %_ZSt9transformIN9__gnu_cxx17__normal_iteratorIPcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEES9_ZN11StringUtils5LowerES8_EUlhE_ET0_T_SD_SC_T1_.exit.i
  %i.ay = load i64, ptr %i.y, align 8, !tbaa !32, !noalias !221 ; 3 uses
  %i.az = icmp ult i64 %i.ay, 16
  call void @llvm.assume(i1 %i.az)
  %i.ba = add nuw nsw i64 %i.ay, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.aw, ptr noundef nonnull align 8 dereferenceable(1) %i.p, i64 %i.ba, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZSt9transformIN9__gnu_cxx17__normal_iteratorIPcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEES9_ZN11StringUtils5LowerES8_EUlhE_ET0_T_SD_SC_T1_.exit.i
  store ptr %i.av, ptr %0, align 8, !tbaa !7, !alias.scope !221
  %i.bb = load i64, ptr %i.p, align 8, !tbaa !13, !noalias !221
  store i64 %i.bb, ptr %i.aw, align 8, !tbaa !13, !alias.scope !221
  %.pre4.i = load i64, ptr %i.y, align 8, !tbaa !32, !noalias !221
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %bb.i
  %i.bc = phi i64 [ %i.ay, %bb.i ], [ %.pre4.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ]
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.bc, ptr %i.bd, align 8, !tbaa !32, !alias.scope !221
  store ptr %i.p, ptr %3, align 8, !tbaa !7, !noalias !221
  store i64 0, ptr %i.y, align 8, !tbaa !32, !noalias !221
  store i8 0, ptr %i.p, align 8, !tbaa !13, !noalias !221
  %i.be = load ptr, ptr %2, align 8, !tbaa !7     ; 2 uses
  %i.bf = icmp eq ptr %i.be, %i.e
  br i1 %i.bf, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit21, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i19

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i19: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.bg = load i64, ptr %i.e, align 8, !tbaa !13
  %i.bh = add i64 %i.bg, 1
  call void @_ZdlPvm(ptr noundef %i.be, i64 noundef %i.bh) #28
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit21

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit21: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i19
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #30
  br label %bb.k

bb.j:                                             ; preds = %.noexc.i16
  %i.bi = landingpad { ptr, i32 }
          cleanup
  %i.bj = load ptr, ptr %2, align 8, !tbaa !7     ; 2 uses
  %i.bk = icmp eq ptr %i.bj, %i.e
  br i1 %i.bk, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit27, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i25

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i25: ; preds = %bb.j
  %i.bl = load i64, ptr %i.e, align 8, !tbaa !13
  %i.bm = add i64 %i.bl, 1
  call void @_ZdlPvm(ptr noundef %i.bj, i64 noundef %i.bm) #28
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit27

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit27: ; preds = %bb.j, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i25
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #30
  resume { ptr, i32 } %i.bi

bb.k:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit21, %._crit_edge.i.i
  ret void
}

declare void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8_M_eraseEmm(ptr noundef nonnull align 8 dereferenceable(32), i64 noundef, i64 noundef) local_unnamed_addr #11

declare void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructEmc(ptr noundef nonnull align 8 dereferenceable(32), i64 noundef, i8 noundef signext) local_unnamed_addr #11

declare noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef, i64 noundef) local_unnamed_addr #11

; Function Attrs: noreturn
declare void @_ZSt20__throw_length_errorPKc(ptr noundef) local_unnamed_addr #18

declare void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7reserveEm(ptr noundef nonnull align 8 dereferenceable(32), i64 noundef) local_unnamed_addr #11

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr noundef captures(none)) local_unnamed_addr #19

; Function Attrs: noreturn
declare void @_ZSt19__throw_logic_errorPKc(ptr noundef) local_unnamed_addr #18

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %1, ptr noundef nonnull align 8 dereferenceable(32) %2) local_unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !74   ; 3 uses
  %i.c = load ptr, ptr %0, align 8, !tbaa !73     ; 5 uses
  %i.d = ptrtoint ptr %i.b to i64
  %i.e = ptrtoint ptr %i.c to i64                 ; 3 uses
  %i.f = sub i64 %i.d, %i.e                       ; 2 uses
  %i.g = icmp eq i64 %i.f, 9223372036854775776
  br i1 %i.g, label %bb.b, label %_ZNKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12_M_check_lenEmPKc.exit

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.37) #31
  unreachable

_ZNKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12_M_check_lenEmPKc.exit: ; preds = %bb.a
  %i.h = ashr exact i64 %i.f, 5                   ; 3 uses
  %.sroa.speculated.i = tail call i64 @llvm.umax.i64(i64 %i.h, i64 1)
  %i.i = add nsw i64 %.sroa.speculated.i, %i.h    ; 2 uses
  %i.j = icmp ult i64 %i.i, %i.h
  %i.k = tail call i64 @llvm.umin.i64(i64 %i.i, i64 288230376151711743)
  %i.l = select i1 %i.j, i64 288230376151711743, i64 %i.k ; 3 uses
  %i.m = ptrtoint ptr %1 to i64
  %i.n = sub i64 %i.m, %i.e
  %.not.i = icmp eq i64 %i.l, 0
  br i1 %.not.i, label %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_M_allocateEm.exit, label %bb.c

bb.c:                                             ; preds = %_ZNKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12_M_check_lenEmPKc.exit
  %i.o = shl nuw nsw i64 %i.l, 5
  %i.p = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.o) #29
  br label %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_M_allocateEm.exit

_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_M_allocateEm.exit: ; preds = %_ZNKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12_M_check_lenEmPKc.exit, %bb.c
  %i.q = phi ptr [ %i.p, %bb.c ], [ null, %_ZNKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12_M_check_lenEmPKc.exit ] ; 5 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 %i.n ; 4 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 16 ; 3 uses
  store ptr %i.s, ptr %i.r, align 8, !tbaa !31
  %i.t = load ptr, ptr %2, align 8, !tbaa !7      ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 5 uses
  %i.v = icmp eq ptr %i.t, %i.u
  br i1 %i.v, label %bb.d, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i

bb.d:                                             ; preds = %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_M_allocateEm.exit
  %i.w = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.x = load i64, ptr %i.w, align 8, !tbaa !32   ; 3 uses
  %i.y = icmp ult i64 %i.x, 16
  tail call void @llvm.assume(i1 %i.y)
  %i.z = add nuw nsw i64 %i.x, 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.s, ptr noundef nonnull align 8 dereferenceable(1) %i.u, i64 %i.z, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i: ; preds = %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_M_allocateEm.exit
  store ptr %i.t, ptr %i.r, align 8, !tbaa !7
  %i.aa = load i64, ptr %i.u, align 8, !tbaa !13
  store i64 %i.aa, ptr %i.s, align 8, !tbaa !13
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %2, i64 8
  %.pre = load i64, ptr %.phi.trans.insert, align 8, !tbaa !32
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit: ; preds = %bb.d, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i
  %i.ab = phi i64 [ %i.x, %bb.d ], [ %.pre, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i ]
  %i.ac = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.ad = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  store i64 %i.ab, ptr %i.ad, align 8, !tbaa !32
  store ptr %i.u, ptr %2, align 8, !tbaa !7
  store i64 0, ptr %i.ac, align 8, !tbaa !32
  store i8 0, ptr %i.u, align 8, !tbaa !13
  %.not10.i.i.i = icmp eq ptr %i.c, %1
  br i1 %.not10.i.i.i, label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit, %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i
  %.012.i.i.i = phi ptr [ %i.ar, %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i ], [ %i.q, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit ] ; 5 uses
  %.0911.i.i.i = phi ptr [ %i.aq, %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i ], [ %i.c, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit ] ; 7 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !227)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !230)
  %i.ae = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 16 ; 3 uses
  store ptr %i.ae, ptr %.012.i.i.i, align 8, !tbaa !31, !alias.scope !227, !noalias !230
  %i.af = load ptr, ptr %.0911.i.i.i, align 8, !tbaa !7, !alias.scope !230, !noalias !227 ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 16 ; 5 uses
  %i.ah = icmp eq ptr %i.af, %i.ag
  br i1 %i.ah, label %bb.e, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i

bb.e:                                             ; preds = %.lr.ph.i.i.i
  %i.ai = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 8
  %i.aj = load i64, ptr %i.ai, align 8, !tbaa !32, !alias.scope !230, !noalias !227 ; 3 uses
  %i.ak = icmp ult i64 %i.aj, 16
  tail call void @llvm.assume(i1 %i.ak)
  %i.al = add nuw nsw i64 %i.aj, 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.ae, ptr noundef nonnull align 8 dereferenceable(1) %i.ag, i64 %i.al, i1 false), !alias.scope !232
end_hunk_3
