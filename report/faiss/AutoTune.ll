inline.NumInlined: 1284
inline.NumDeleted: 549
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumRuntimeUnrolled: 3
loop-unroll.NumUnrolled: 5
begin_hunk_0_@_ZNSt6vectorIN5faiss14OperatingPointESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_:bb.a
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %.012.i.i.i30, ptr noundef nonnull align 8 dereferenceable(56) %.0911.i.i.i31, i64 16, i1 false), !alias.scope !216
  %i.bd = getelementptr inbounds nuw i8, ptr %.012.i.i.i30, i64 16 ; 2 uses
  %i.be = getelementptr inbounds nuw i8, ptr %.0911.i.i.i31, i64 16 ; 2 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %.012.i.i.i30, i64 32 ; 3 uses
  store ptr %i.bf, ptr %i.bd, align 8, !tbaa !33, !alias.scope !211, !noalias !214
  %i.bg = load ptr, ptr %i.be, align 8, !tbaa !39, !alias.scope !214, !noalias !211 ; 2 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %.0911.i.i.i31, i64 32 ; 5 uses
  %i.bi = icmp eq ptr %i.bg, %i.bh
  br i1 %i.bi, label %bb.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i32

bb.i:                                             ; preds = %.lr.ph.i.i.i29
  %i.bj = getelementptr inbounds nuw i8, ptr %.0911.i.i.i31, i64 24
  %i.bk = load i64, ptr %i.bj, align 8, !tbaa !36, !alias.scope !214, !noalias !211 ; 3 uses
  %i.bl = icmp ult i64 %i.bk, 16
  tail call void @llvm.assume(i1 %i.bl)
  %i.bm = add nuw nsw i64 %i.bk, 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.bf, ptr noundef nonnull align 8 dereferenceable(1) %i.bh, i64 %i.bm, i1 false), !alias.scope !216
  br label %_ZSt19__relocate_object_aIN5faiss14OperatingPointES1_SaIS1_EEvPT_PT0_RT1_.exit.i.i.i35

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i32: ; preds = %.lr.ph.i.i.i29
  store ptr %i.bg, ptr %i.bd, align 8, !tbaa !39, !alias.scope !211, !noalias !214
  %i.bn = load i64, ptr %i.bh, align 8, !tbaa !38, !alias.scope !214, !noalias !211
  store i64 %i.bn, ptr %i.bf, align 8, !tbaa !38, !alias.scope !211, !noalias !214
  %.phi.trans.insert.i.i.i.i33 = getelementptr inbounds nuw i8, ptr %.0911.i.i.i31, i64 24
  %.pre.i.i.i.i34 = load i64, ptr %.phi.trans.insert.i.i.i.i33, align 8, !tbaa !36, !alias.scope !214, !noalias !211
  br label %_ZSt19__relocate_object_aIN5faiss14OperatingPointES1_SaIS1_EEvPT_PT0_RT1_.exit.i.i.i35

_ZSt19__relocate_object_aIN5faiss14OperatingPointES1_SaIS1_EEvPT_PT0_RT1_.exit.i.i.i35: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i32, %bb.i
  %i.bo = phi i64 [ %i.bk, %bb.i ], [ %.pre.i.i.i.i34, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i32 ]
  %i.bp = getelementptr inbounds nuw i8, ptr %.0911.i.i.i31, i64 24
  %i.bq = getelementptr inbounds nuw i8, ptr %.012.i.i.i30, i64 24
  store i64 %i.bo, ptr %i.bq, align 8, !tbaa !36, !alias.scope !211, !noalias !214
  store ptr %i.bh, ptr %i.be, align 8, !tbaa !39, !alias.scope !214, !noalias !211
  store i64 0, ptr %i.bp, align 8, !tbaa !36, !alias.scope !214, !noalias !211
  store i8 0, ptr %i.bh, align 8, !tbaa !38, !alias.scope !214, !noalias !211
  %i.br = getelementptr inbounds nuw i8, ptr %.012.i.i.i30, i64 48
  %i.bs = getelementptr inbounds nuw i8, ptr %.0911.i.i.i31, i64 48
  %i.bt = load i64, ptr %i.bs, align 8, !tbaa !201, !alias.scope !214, !noalias !211
  store i64 %i.bt, ptr %i.br, align 8, !tbaa !201, !alias.scope !211, !noalias !214
  %i.bu = getelementptr inbounds nuw i8, ptr %.0911.i.i.i31, i64 56 ; 2 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %.012.i.i.i30, i64 56 ; 2 uses
  %.not.i.i.i36 = icmp eq ptr %i.bu, %i.b
  br i1 %.not.i.i.i36, label %_ZNSt6vectorIN5faiss14OperatingPointESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit38, label %.lr.ph.i.i.i29, !llvm.loop !210

_ZNSt6vectorIN5faiss14OperatingPointESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit38: ; preds = %_ZSt19__relocate_object_aIN5faiss14OperatingPointES1_SaIS1_EEvPT_PT0_RT1_.exit.i.i.i35, %_ZNSt6vectorIN5faiss14OperatingPointESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit
  %.0.lcssa.i.i.i37 = phi ptr [ %i.bc, %_ZNSt6vectorIN5faiss14OperatingPointESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit ], [ %i.bv, %_ZSt19__relocate_object_aIN5faiss14OperatingPointES1_SaIS1_EEvPT_PT0_RT1_.exit.i.i.i35 ]
  %i.bw = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %.not.i39 = icmp eq ptr %i.c, null
  br i1 %.not.i39, label %_ZNSt12_Vector_baseIN5faiss14OperatingPointESaIS1_EE13_M_deallocateEPS1_m.exit, label %bb.j

bb.j:                                             ; preds = %_ZNSt6vectorIN5faiss14OperatingPointESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit38
  %i.bx = load ptr, ptr %i.bw, align 8, !tbaa !203
  %i.by = ptrtoint ptr %i.bx to i64
  %i.bz = sub i64 %i.by, %i.e
  tail call void @_ZdlPvm(ptr noundef nonnull %i.c, i64 noundef %i.bz) #36
  br label %_ZNSt12_Vector_baseIN5faiss14OperatingPointESaIS1_EE13_M_deallocateEPS1_m.exit

_ZNSt12_Vector_baseIN5faiss14OperatingPointESaIS1_EE13_M_deallocateEPS1_m.exit: ; preds = %_ZNSt6vectorIN5faiss14OperatingPointESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit38, %bb.j
  store ptr %i.p, ptr %0, align 8, !tbaa !196
  store ptr %.0.lcssa.i.i.i37, ptr %i.a, align 8, !tbaa !199
  %i.ca = getelementptr inbounds nuw [56 x i8], ptr %i.p, i64 %i.l
  store ptr %i.ca, ptr %i.bw, align 8, !tbaa !203
  ret void

bb.k:                                             ; preds = %bb.l
  %i.cb = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %bb.m unwind label %bb.n

bb.l:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i.i.i, %.noexc6.i.i.i, %.noexc.i.i.i
  %i.cc = landingpad { ptr, i32 }
          catch ptr null
  %i.cd = extractvalue { ptr, i32 } %i.cc, 0
  %i.ce = tail call ptr @__cxa_begin_catch(ptr %i.cd) #17 ; 0 uses
  tail call void @_ZdlPvm(ptr noundef nonnull %i.p, i64 noundef %i.o) #36
  invoke void @__cxa_rethrow() #35
          to label %bb.o unwind label %bb.k

bb.m:                                             ; preds = %bb.k
  resume { ptr, i32 } %i.cb

bb.n:                                             ; preds = %bb.k
  %i.cf = landingpad { ptr, i32 }
          catch ptr null
  %i.cg = extractvalue { ptr, i32 } %i.cf, 0
  tail call void @__clang_call_terminate(ptr %i.cg) #38
  unreachable

bb.o:                                             ; preds = %bb.l
  unreachable
}

; Function Attrs: mustprogress uwtable
define noundef zeroext i1 @_ZN5faiss15OperatingPoints3addEddRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEm(ptr noundef nonnull align 8 dereferenceable(48) %0, double noundef %1, double noundef %2, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %3, i64 noundef %4) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %5 = alloca %"struct.faiss::OperatingPoint", align 8 ; 14 uses
  %6 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #17
  store double %1, ptr %5, align 8, !tbaa !217
  %i.a = getelementptr inbounds nuw i8, ptr %5, i64 8
  store double %2, ptr %i.a, align 8, !tbaa !218
  %i.b = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 6 uses
  %i.c = getelementptr inbounds nuw i8, ptr %5, i64 32 ; 7 uses
  store ptr %i.c, ptr %i.b, align 8, !tbaa !33
  %i.d = load ptr, ptr %3, align 8, !tbaa !39     ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.f = load i64, ptr %i.e, align 8, !tbaa !36   ; 8 uses
  %i.g = icmp ugt i64 %i.f, 15
  br i1 %i.g, label %bb.b, label %._crit_edge.i.i

bb.b:                                             ; preds = %bb.a
  %i.h = icmp slt i64 %i.f, 0
  br i1 %i.h, label %.noexc.i, label %bb.c

.noexc.i:                                         ; preds = %bb.b
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.5) #35
  unreachable

bb.c:                                             ; preds = %bb.b
  %i.i = add nuw i64 %i.f, 1                      ; 2 uses
  %i.j = icmp slt i64 %i.i, 0
  br i1 %i.j, label %.noexc6.i, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i, !prof !103

.noexc6.i:                                        ; preds = %bb.c
  call void @_ZSt17__throw_bad_allocv() #35
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i: ; preds = %bb.c
  %i.k = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.i) #37 ; 2 uses
  store ptr %i.k, ptr %i.b, align 8, !tbaa !39
  store i64 %i.f, ptr %i.c, align 8, !tbaa !38
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i, %bb.a
  %i.l = phi ptr [ %i.k, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i ], [ %i.c, %bb.a ] ; 3 uses
  switch i64 %i.f, label %bb.e [
    i64 1, label %bb.d
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit
  ]

bb.d:                                             ; preds = %._crit_edge.i.i
  %i.m = load i8, ptr %i.d, align 1, !tbaa !38
  store i8 %i.m, ptr %i.l, align 1, !tbaa !38
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit

bb.e:                                             ; preds = %._crit_edge.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.l, ptr align 1 %i.d, i64 %i.f, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit: ; preds = %._crit_edge.i.i, %bb.d, %bb.e
  %i.n = getelementptr inbounds nuw i8, ptr %5, i64 24
  store i64 %i.f, ptr %i.n, align 8, !tbaa !36
  %i.o = getelementptr inbounds nuw i8, ptr %i.l, i64 %i.f
  store i8 0, ptr %i.o, align 1, !tbaa !38
  %i.p = getelementptr inbounds nuw i8, ptr %5, i64 48 ; 3 uses
  store i64 %4, ptr %i.p, align 8, !tbaa !201
  invoke void @_ZNSt6vectorIN5faiss14OperatingPointESaIS1_EE9push_backERKS1_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(56) %5)
          to label %bb.f unwind label %bb.g

bb.f:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit
  %i.q = fcmp oeq double %1, 0.000000e+00
  br i1 %i.q, label %.critedge, label %bb.h

bb.g:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit
  %i.r = landingpad { ptr, i32 }
          cleanup
  br label %bb.ae

bb.h:                                             ; preds = %bb.f
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 6 uses
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !219  ; 6 uses
  %i.v = getelementptr inbounds i8, ptr %i.u, i64 -56 ; 2 uses
  %i.w = load double, ptr %i.v, align 8, !tbaa !217 ; 2 uses
  %i.x = fcmp ogt double %1, %i.w
  br i1 %i.x, label %bb.i, label %bb.k

bb.i:                                             ; preds = %bb.h
  invoke void @_ZNSt6vectorIN5faiss14OperatingPointESaIS1_EE9push_backERKS1_(ptr noundef nonnull align 8 dereferenceable(24) %i.s, ptr noundef nonnull align 8 dereferenceable(56) %5)
          to label %bb.ab unwind label %bb.j

bb.j:                                             ; preds = %bb.m, %bb.i
  %i.y = landingpad { ptr, i32 }
          cleanup
  br label %bb.ae

bb.k:                                             ; preds = %bb.h
  %i.z = fcmp oeq double %1, %i.w
  br i1 %i.z, label %bb.l, label %.preheader

.preheader:                                       ; preds = %bb.k
  %i.aa = load ptr, ptr %i.s, align 8, !tbaa !196 ; 3 uses
  %.not85 = icmp eq ptr %i.u, %i.aa
  br i1 %.not85, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %.preheader
  %i.ab = ptrtoint ptr %i.u to i64
  %i.ac = ptrtoint ptr %i.aa to i64
  %i.ad = sub i64 %i.ab, %i.ac
  %i.ae = sdiv i64 %i.ad, 56
  %umax = call i64 @llvm.umax.i64(i64 %i.ae, i64 1)
  br label %.lr.ph

bb.l:                                             ; preds = %bb.k
  %i.af = getelementptr inbounds i8, ptr %i.u, i64 -48
  %i.ag = load double, ptr %i.af, align 8, !tbaa !218
  %i.ah = fcmp olt double %2, %i.ag
  br i1 %i.ah, label %bb.m, label %.critedge

bb.m:                                             ; preds = %bb.l
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.v, ptr noundef nonnull align 8 dereferenceable(56) %5, i64 16, i1 false)
  %i.ai = getelementptr inbounds i8, ptr %i.u, i64 -40
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %i.ai, ptr noundef nonnull align 8 dereferenceable(32) %i.b)
          to label %_ZN5faiss14OperatingPointaSERKS0_.exit unwind label %bb.j

_ZN5faiss14OperatingPointaSERKS0_.exit:           ; preds = %bb.m
  %i.aj = load i64, ptr %i.p, align 8, !tbaa !201
  %i.ak = getelementptr inbounds i8, ptr %i.u, i64 -8
  store i64 %i.aj, ptr %i.ak, align 8, !tbaa !201
  br label %bb.ab

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.n
  %.05478 = phi i64 [ %i.ao, %bb.n ], [ 0, %.lr.ph.preheader ] ; 2 uses
  %i.al = getelementptr inbounds nuw [56 x i8], ptr %i.aa, i64 %.05478 ; 6 uses
  %i.am = load double, ptr %i.al, align 8, !tbaa !217 ; 2 uses
  %i.an = fcmp ult double %i.am, %1
  br i1 %i.an, label %bb.n, label %bb.v

bb.n:                                             ; preds = %.lr.ph
  %i.ao = add nuw i64 %.05478, 1                  ; 2 uses
  %exitcond.not = icmp eq i64 %i.ao, %umax
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !220

._crit_edge:                                      ; preds = %bb.n, %.preheader
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #17
  %i.ap = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 4 uses
  store ptr %i.ap, ptr %6, align 8, !tbaa !33
  %i.aq = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 2 uses
  store i64 0, ptr %i.aq, align 8, !tbaa !36
  store i8 0, ptr %i.ap, align 8, !tbaa !38
  %i.ar = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef null, i64 noundef 0, ptr noundef nonnull @.str.12, ptr noundef nonnull @.str.13) #17 ; 2 uses
  %i.as = icmp sgt i32 %i.ar, 0
  br i1 %i.as, label %bb.o, label %bb.r

bb.o:                                             ; preds = %._crit_edge
  %i.at = zext nneg i32 %i.ar to i64              ; 2 uses
  %i.au = add nuw nsw i64 %i.at, 1
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6resizeEm(ptr noundef nonnull align 8 dereferenceable(32) %6, i64 noundef %i.au)
          to label %bb.p unwind label %bb.q

bb.p:                                             ; preds = %bb.o
  %i.av = load ptr, ptr %6, align 8, !tbaa !39
  %i.aw = load i64, ptr %i.aq, align 8, !tbaa !36
  %i.ax = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull %i.av, i64 noundef %i.aw, ptr noundef nonnull @.str.12, ptr noundef nonnull @.str.13) #17 ; 0 uses
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6resizeEm(ptr noundef nonnull align 8 dereferenceable(32) %6, i64 noundef %i.at)
          to label %bb.r unwind label %bb.q

bb.q:                                             ; preds = %bb.s, %bb.p, %bb.o
  %i.ay = landingpad { ptr, i32 }
          cleanup
  br label %bb.u

bb.r:                                             ; preds = %bb.p, %._crit_edge
  %i.az = call ptr @__cxa_allocate_exception(i64 40) #17 ; 3 uses
  invoke void @_ZN5faiss14FaissExceptionC1ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSA_i(ptr noundef nonnull align 8 dereferenceable(40) %i.az, ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef nonnull @__PRETTY_FUNCTION__._ZN5faiss15OperatingPoints3addEddRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEm, ptr noundef nonnull @.str.2, i32 noundef 140)
          to label %bb.s unwind label %bb.t

bb.s:                                             ; preds = %bb.r
  invoke void @__cxa_throw(ptr nonnull %i.az, ptr nonnull @_ZTIN5faiss14FaissExceptionE, ptr nonnull @_ZN5faiss14FaissExceptionD2Ev) #35
          to label %bb.af unwind label %bb.q

bb.t:                                             ; preds = %bb.r
  %i.ba = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_free_exception(ptr nonnull %i.az) #17
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %bb.q
  %.pn = phi { ptr, i32 } [ %i.ay, %bb.q ], [ %i.ba, %bb.t ]
  %i.bb = load ptr, ptr %6, align 8, !tbaa !39    ; 2 uses
  %i.bc = icmp eq ptr %i.bb, %i.ap
  br i1 %i.bc, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.u
  %i.bd = load i64, ptr %i.ap, align 8, !tbaa !38
  %i.be = add i64 %i.bd, 1
  call void @_ZdlPvm(ptr noundef %i.bb, i64 noundef %i.be) #36
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.u, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #17
  br label %bb.ae

bb.v:                                             ; preds = %.lr.ph
  %i.bf = getelementptr inbounds nuw i8, ptr %i.al, i64 8
  %i.bg = load double, ptr %i.bf, align 8, !tbaa !218
  %i.bh = fcmp olt double %2, %i.bg
  br i1 %i.bh, label %bb.w, label %.critedge

bb.w:                                             ; preds = %bb.v
  %i.bi = fcmp oeq double %i.am, %1
  br i1 %i.bi, label %bb.x, label %bb.z

bb.x:                                             ; preds = %bb.w
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.al, ptr noundef nonnull align 8 dereferenceable(56) %5, i64 16, i1 false)
  %i.bj = getelementptr inbounds nuw i8, ptr %i.al, i64 16
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %i.bj, ptr noundef nonnull align 8 dereferenceable(32) %i.b)
          to label %_ZN5faiss14OperatingPointaSERKS0_.exit67 unwind label %bb.y

_ZN5faiss14OperatingPointaSERKS0_.exit67:         ; preds = %bb.x
  %i.bk = load i64, ptr %i.p, align 8, !tbaa !201
  %i.bl = getelementptr inbounds nuw i8, ptr %i.al, i64 48
  store i64 %i.bk, ptr %i.bl, align 8, !tbaa !201
  br label %bb.ab

bb.y:                                             ; preds = %bb.x
  %i.bm = landingpad { ptr, i32 }
          cleanup
  br label %bb.ae

bb.z:                                             ; preds = %bb.w
  %i.bn = invoke ptr @_ZNSt6vectorIN5faiss14OperatingPointESaIS1_EE6insertEN9__gnu_cxx17__normal_iteratorIPKS1_S3_EERS6_(ptr noundef nonnull align 8 dereferenceable(24) %i.s, ptr nonnull %i.al, ptr noundef nonnull align 8 dereferenceable(56) %5)
          to label %bb.ab unwind label %bb.aa     ; 0 uses

bb.aa:                                            ; preds = %bb.z
  %i.bo = landingpad { ptr, i32 }
          cleanup
  br label %bb.ae

bb.ab:                                            ; preds = %_ZN5faiss14OperatingPointaSERKS0_.exit67, %bb.z, %_ZN5faiss14OperatingPointaSERKS0_.exit, %bb.i
  %i.bp = load ptr, ptr %i.t, align 8, !tbaa !199
  %i.bq = load ptr, ptr %i.s, align 8, !tbaa !196
  %i.br = ptrtoint ptr %i.bp to i64
  %i.bs = ptrtoint ptr %i.bq to i64
  %i.bt = sub i64 %i.br, %i.bs
  %i.bu = sdiv exact i64 %i.bt, 56                ; 2 uses
  %.05079 = add nsw i64 %i.bu, -1                 ; 2 uses
  %.not80 = icmp eq i64 %.05079, 0
  br i1 %.not80, label %.critedge, label %.lr.ph84

.lr.ph84:                                         ; preds = %bb.ab, %_ZNSt6vectorIN5faiss14OperatingPointESaIS1_EE5eraseEN9__gnu_cxx17__normal_iteratorIPKS1_S3_EE.exit
  %.05082 = phi i64 [ %.050, %_ZNSt6vectorIN5faiss14OperatingPointESaIS1_EE5eraseEN9__gnu_cxx17__normal_iteratorIPKS1_S3_EE.exit ], [ %.05079, %bb.ab ] ; 3 uses
  %.050.in81 = phi i64 [ %.05082, %_ZNSt6vectorIN5faiss14OperatingPointESaIS1_EE5eraseEN9__gnu_cxx17__normal_iteratorIPKS1_S3_EE.exit ], [ %i.bu, %bb.ab ]
  %i.bv = load ptr, ptr %i.s, align 8, !tbaa !196 ; 2 uses
  %i.bw = getelementptr inbounds nuw [56 x i8], ptr %i.bv, i64 %.05082
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bw, i64 8
  %i.by = load double, ptr %i.bx, align 8, !tbaa !218
  %i.bz = getelementptr [56 x i8], ptr %i.bv, i64 %.050.in81 ; 2 uses
  %i.ca = getelementptr i8, ptr %i.bz, i64 -104
  %i.cb = load double, ptr %i.ca, align 8, !tbaa !218
  %i.cc = fcmp ugt double %i.by, %i.cb
  br i1 %i.cc, label %_ZNSt6vectorIN5faiss14OperatingPointESaIS1_EE5eraseEN9__gnu_cxx17__normal_iteratorIPKS1_S3_EE.exit, label %bb.ac

bb.ac:                                            ; preds = %.lr.ph84
  %i.cd = getelementptr i8, ptr %i.bz, i64 -112
  %i.ce = invoke ptr @_ZNSt6vectorIN5faiss14OperatingPointESaIS1_EE8_M_eraseEN9__gnu_cxx17__normal_iteratorIPS1_S3_EE(ptr noundef nonnull align 8 dereferenceable(24) %i.s, ptr nonnull %i.cd)
          to label %_ZNSt6vectorIN5faiss14OperatingPointESaIS1_EE5eraseEN9__gnu_cxx17__normal_iteratorIPKS1_S3_EE.exit unwind label %bb.ad ; 0 uses

bb.ad:                                            ; preds = %bb.ac
  %i.cf = landingpad { ptr, i32 }
          cleanup
  br label %bb.ae

_ZNSt6vectorIN5faiss14OperatingPointESaIS1_EE5eraseEN9__gnu_cxx17__normal_iteratorIPKS1_S3_EE.exit: ; preds = %bb.ac, %.lr.ph84
  %.050 = add i64 %.05082, -1                     ; 2 uses
  %.not = icmp eq i64 %.050, 0
  br i1 %.not, label %.critedge, label %.lr.ph84, !llvm.loop !221

.critedge:                                        ; preds = %_ZNSt6vectorIN5faiss14OperatingPointESaIS1_EE5eraseEN9__gnu_cxx17__normal_iteratorIPKS1_S3_EE.exit, %bb.ab, %bb.l, %bb.v, %bb.f
  %.2 = phi i1 [ false, %bb.f ], [ false, %bb.l ], [ false, %bb.v ], [ true, %bb.ab ], [ true, %_ZNSt6vectorIN5faiss14OperatingPointESaIS1_EE5eraseEN9__gnu_cxx17__normal_iteratorIPKS1_S3_EE.exit ]
  %i.cg = load ptr, ptr %i.b, align 8, !tbaa !39  ; 2 uses
  %i.ch = icmp eq ptr %i.cg, %i.c
  br i1 %i.ch, label %_ZN5faiss14OperatingPointD2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %.critedge
  %i.ci = load i64, ptr %i.c, align 8, !tbaa !38
  %i.cj = add i64 %i.ci, 1
  call void @_ZdlPvm(ptr noundef %i.cg, i64 noundef %i.cj) #36
  br label %_ZN5faiss14OperatingPointD2Ev.exit

_ZN5faiss14OperatingPointD2Ev.exit:               ; preds = %.critedge, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #17
  ret i1 %.2

bb.ae:                                            ; preds = %bb.j, %bb.ad, %bb.aa, %bb.y, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %bb.g
  %.pn64.pn = phi { ptr, i32 } [ %i.r, %bb.g ], [ %i.cf, %bb.ad ], [ %i.y, %bb.j ], [ %i.bm, %bb.y ], [ %i.bo, %bb.aa ], [ %.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ]
  %i.ck = load ptr, ptr %i.b, align 8, !tbaa !39  ; 2 uses
  %i.cl = icmp eq ptr %i.ck, %i.c
  br i1 %i.cl, label %_ZN5faiss14OperatingPointD2Ev.exit70, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i68

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i68: ; preds = %bb.ae
  %i.cm = load i64, ptr %i.c, align 8, !tbaa !38
  %i.cn = add i64 %i.cm, 1
  call void @_ZdlPvm(ptr noundef %i.ck, i64 noundef %i.cn) #36
  br label %_ZN5faiss14OperatingPointD2Ev.exit70

_ZN5faiss14OperatingPointD2Ev.exit70:             ; preds = %bb.ae, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i68
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #17
  resume { ptr, i32 } %.pn64.pn

bb.af:                                            ; preds = %bb.s
  unreachable
}

; Function Attrs: mustprogress uwtable
define linkonce_odr ptr @_ZNSt6vectorIN5faiss14OperatingPointESaIS1_EE6insertEN9__gnu_cxx17__normal_iteratorIPKS1_S3_EERS6_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %1, ptr noundef nonnull align 8 dereferenceable(56) %2) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"struct.std::vector<faiss::OperatingPoint>::_Temporary_value", align 8 ; 9 uses
  %i.a = load ptr, ptr %0, align 8, !tbaa !219    ; 3 uses
  %i.b = ptrtoint ptr %1 to i64
  %i.c = ptrtoint ptr %i.a to i64
  %i.d = sub i64 %i.b, %i.c                       ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !199  ; 7 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !203
  %.not = icmp eq ptr %i.f, %i.h
  br i1 %.not, label %bb.o, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %1) ]
  %i.i = icmp eq ptr %1, %i.f
  br i1 %i.i, label %bb.c, label %bb.h

bb.c:                                             ; preds = %bb.b
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.f, ptr noundef nonnull align 8 dereferenceable(56) %2, i64 16, i1 false)
  %i.j = getelementptr inbounds nuw i8, ptr %i.f, i64 16 ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.l = getelementptr inbounds nuw i8, ptr %i.f, i64 32 ; 3 uses
  store ptr %i.l, ptr %i.j, align 8, !tbaa !33
  %i.m = load ptr, ptr %i.k, align 8, !tbaa !39   ; 2 uses
end_hunk_0
begin_hunk_1_@_ZNK5faiss15OperatingPoints10t_for_perfEd:bb.a
  %i.w = icmp slt i32 %i.v, %.0.
  br i1 %i.w, label %.lr.ph, label %._crit_edge, !llvm.loop !231

._crit_edge:                                      ; preds = %.lr.ph, %bb.b
  %.0.lcssa = phi i32 [ %i.m, %bb.b ], [ %.0., %.lr.ph ]
  %i.x = sext i32 %.0.lcssa to i64
  %i.y = getelementptr inbounds nuw [56 x i8], ptr %i.g, i64 %i.x
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 8
  %i.aa = load double, ptr %i.z, align 8, !tbaa !218
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %._crit_edge
  %.017 = phi double [ %i.aa, %._crit_edge ], [ 1.000000e+50, %bb.a ]
  ret double %.017
}

; Function Attrs: mustprogress nofree nounwind uwtable
define void @_ZNK5faiss15OperatingPoints14all_to_gnuplotEPKc(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(48) %0, ptr noundef %1) local_unnamed_addr #23 align 2 {
bb.a:
  %i.a = tail call noalias ptr @fopen(ptr noundef %1, ptr noundef nonnull @.str.15) ; 3 uses
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %bb.b, label %.preheader

.preheader:                                       ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !199
  %i.d = load ptr, ptr %0, align 8, !tbaa !196    ; 2 uses
  %.not13 = icmp eq ptr %i.c, %i.d
  br i1 %.not13, label %._crit_edge, label %.lr.ph

bb.b:                                             ; preds = %bb.a
  %i.e = load ptr, ptr @stderr, align 8, !tbaa !232
  %i.f = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.e, ptr noundef nonnull @.str.16, ptr noundef %1) #39 ; 0 uses
  tail call void @perror(ptr noundef nonnull @.str.9) #40
  tail call void @abort() #38
  unreachable

._crit_edge:                                      ; preds = %.lr.ph, %.preheader
  %i.g = tail call i32 @fclose(ptr noundef nonnull %i.a) ; 0 uses
  ret void

.lr.ph:                                           ; preds = %.preheader, %.lr.ph
  %i.h = phi ptr [ %i.r, %.lr.ph ], [ %i.d, %.preheader ]
  %.012 = phi i64 [ %i.p, %.lr.ph ], [ 0, %.preheader ] ; 2 uses
  %i.i = getelementptr inbounds nuw [56 x i8], ptr %i.h, i64 %.012 ; 3 uses
  %i.j = load double, ptr %i.i, align 8, !tbaa !217
  %i.k = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %i.l = load double, ptr %i.k, align 8, !tbaa !218
  %i.m = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !39
  %i.o = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %i.a, ptr noundef nonnull @.str.17, double noundef %i.j, double noundef %i.l, ptr noundef %i.n) #17 ; 0 uses
  %i.p = add nuw i64 %.012, 1                     ; 2 uses
  %i.q = load ptr, ptr %i.b, align 8, !tbaa !199
  %i.r = load ptr, ptr %0, align 8, !tbaa !196    ; 2 uses
  %i.s = ptrtoint ptr %i.q to i64
  %i.t = ptrtoint ptr %i.r to i64
  %i.u = sub i64 %i.s, %i.t
  %i.v = sdiv exact i64 %i.u, 56
  %i.w = icmp ult i64 %i.p, %i.v
  br i1 %i.w, label %.lr.ph, label %._crit_edge, !llvm.loop !234
}

; Function Attrs: nofree nounwind
declare noalias noundef ptr @fopen(ptr noundef readonly captures(none), ptr noundef readonly captures(none)) local_unnamed_addr #8

; Function Attrs: nofree nounwind
declare noundef i32 @fprintf(ptr noundef captures(none), ptr noundef readonly captures(none), ...) local_unnamed_addr #8

; Function Attrs: cold nofree nounwind
declare void @perror(ptr noundef readonly captures(none)) local_unnamed_addr #24

; Function Attrs: cold nofree noreturn nounwind
declare void @abort() local_unnamed_addr #25

; Function Attrs: nofree nounwind
declare noundef i32 @fclose(ptr noundef captures(none)) local_unnamed_addr #8

; Function Attrs: mustprogress nofree nounwind uwtable
define void @_ZNK5faiss15OperatingPoints18optimal_to_gnuplotEPKc(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(48) %0, ptr noundef %1) local_unnamed_addr #23 align 2 {
bb.a:
  %i.a = tail call noalias ptr @fopen(ptr noundef %1, ptr noundef nonnull @.str.15) ; 4 uses
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %bb.b, label %.preheader

.preheader:                                       ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !199
  %i.e = load ptr, ptr %i.b, align 8, !tbaa !196  ; 2 uses
  %.not19 = icmp eq ptr %i.d, %i.e
  br i1 %.not19, label %._crit_edge, label %.lr.ph

bb.b:                                             ; preds = %bb.a
  %i.f = load ptr, ptr @stderr, align 8, !tbaa !232
  %i.g = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.f, ptr noundef nonnull @.str.16, ptr noundef %1) #39 ; 0 uses
  tail call void @perror(ptr noundef nonnull @.str.9) #40
  tail call void @abort() #38
  unreachable

._crit_edge:                                      ; preds = %.lr.ph, %.preheader
  %i.h = tail call i32 @fclose(ptr noundef nonnull %i.a) ; 0 uses
  ret void

.lr.ph:                                           ; preds = %.preheader, %.lr.ph
  %i.i = phi ptr [ %i.v, %.lr.ph ], [ %i.e, %.preheader ]
  %.018 = phi i64 [ %i.t, %.lr.ph ], [ 0, %.preheader ] ; 2 uses
  %.01517 = phi double [ %i.s, %.lr.ph ], [ 0.000000e+00, %.preheader ]
  %i.j = getelementptr inbounds nuw [56 x i8], ptr %i.i, i64 %.018 ; 4 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 8 ; 2 uses
  %i.l = load double, ptr %i.k, align 8, !tbaa !218
  %i.m = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %i.a, ptr noundef nonnull @.str.18, double noundef %.01517, double noundef %i.l) #17 ; 0 uses
  %i.n = load double, ptr %i.j, align 8, !tbaa !217
  %i.o = load double, ptr %i.k, align 8, !tbaa !218
  %i.p = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !39
  %i.r = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %i.a, ptr noundef nonnull @.str.17, double noundef %i.n, double noundef %i.o, ptr noundef %i.q) #17 ; 0 uses
  %i.s = load double, ptr %i.j, align 8, !tbaa !217
  %i.t = add nuw i64 %.018, 1                     ; 2 uses
  %i.u = load ptr, ptr %i.c, align 8, !tbaa !199
  %i.v = load ptr, ptr %i.b, align 8, !tbaa !196  ; 2 uses
  %i.w = ptrtoint ptr %i.u to i64
  %i.x = ptrtoint ptr %i.v to i64
  %i.y = sub i64 %i.w, %i.x
  %i.z = sdiv exact i64 %i.y, 56
  %i.aa = icmp ult i64 %i.t, %i.z
  br i1 %i.aa, label %.lr.ph, label %._crit_edge, !llvm.loop !235
}

; Function Attrs: mustprogress nofree nounwind uwtable
define void @_ZNK5faiss15OperatingPoints7displayEb(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(48) %0, i1 noundef zeroext %1) local_unnamed_addr #23 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 4 uses
  %i.b = select i1 %1, ptr %i.a, ptr %0           ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !199
  %i.e = load ptr, ptr %0, align 8, !tbaa !196
  %i.f = ptrtoint ptr %i.d to i64
  %i.g = ptrtoint ptr %i.e to i64
  %i.h = sub i64 %i.f, %i.g
  %i.i = sdiv exact i64 %i.h, 56
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !199
  %i.l = load ptr, ptr %i.a, align 8, !tbaa !196
  %i.m = ptrtoint ptr %i.k to i64
  %i.n = ptrtoint ptr %i.l to i64
  %i.o = sub i64 %i.m, %i.n
  %i.p = sdiv exact i64 %i.o, 56
  %i.q = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.19, i64 noundef %i.i, i64 noundef %i.p) ; 0 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 3 uses
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !199
  %i.t = load ptr, ptr %i.b, align 8, !tbaa !196  ; 3 uses
  %.not = icmp eq ptr %i.s, %i.t
  br i1 %.not, label %._crit_edge, label %.lr.ph22

.lr.ph22:                                         ; preds = %bb.a
  br i1 %1, label %.lr.ph22.split.us, label %.preheader

.lr.ph22.split.us:                                ; preds = %.lr.ph22, %.lr.ph22.split.us
  %i.u = phi ptr [ %i.ag, %.lr.ph22.split.us ], [ %i.t, %.lr.ph22 ]
  %.01721.us = phi i64 [ %i.ae, %.lr.ph22.split.us ], [ 0, %.lr.ph22 ] ; 2 uses
  %i.v = getelementptr inbounds nuw [56 x i8], ptr %i.u, i64 %.01721.us ; 4 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 48
  %i.x = load i64, ptr %i.w, align 8, !tbaa !201
  %i.y = getelementptr inbounds nuw i8, ptr %i.v, i64 16
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !39
  %i.aa = load double, ptr %i.v, align 8, !tbaa !217
  %i.ab = getelementptr inbounds nuw i8, ptr %i.v, i64 8
  %i.ac = load double, ptr %i.ab, align 8, !tbaa !218
  %i.ad = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.21, i64 noundef %i.x, ptr noundef %i.z, double noundef %i.aa, double noundef %i.ac, ptr noundef nonnull @.str.9) ; 0 uses
  %i.ae = add nuw i64 %.01721.us, 1               ; 2 uses
  %i.af = load ptr, ptr %i.r, align 8, !tbaa !199
  %i.ag = load ptr, ptr %i.a, align 8, !tbaa !196 ; 2 uses
  %i.ah = ptrtoint ptr %i.af to i64
  %i.ai = ptrtoint ptr %i.ag to i64
  %i.aj = sub i64 %i.ah, %i.ai
  %i.ak = sdiv exact i64 %i.aj, 56
  %i.al = icmp ult i64 %i.ae, %i.ak
  br i1 %i.al, label %.lr.ph22.split.us, label %._crit_edge, !llvm.loop !236

._crit_edge:                                      ; preds = %.loopexit, %.lr.ph22.split.us, %bb.a
  ret void

.preheader:                                       ; preds = %.lr.ph22, %.loopexit
  %i.am = phi ptr [ %i.bk, %.loopexit ], [ %i.t, %.lr.ph22 ]
  %.01721 = phi i64 [ %i.bi, %.loopexit ], [ 0, %.lr.ph22 ] ; 2 uses
  %i.an = getelementptr inbounds nuw [56 x i8], ptr %i.am, i64 %.01721 ; 5 uses
  %i.ao = load ptr, ptr %i.j, align 8, !tbaa !199 ; 2 uses
  %i.ap = load ptr, ptr %i.a, align 8, !tbaa !196 ; 3 uses
  %.not23 = icmp eq ptr %i.ao, %i.ap
  br i1 %.not23, label %.preheader..loopexit_crit_edge, label %.lr.ph

.preheader..loopexit_crit_edge:                   ; preds = %.preheader
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %i.an, i64 48
  %.pre = load i64, ptr %.phi.trans.insert, align 8, !tbaa !201
  br label %.loopexit

.lr.ph:                                           ; preds = %.preheader
  %i.aq = ptrtoint ptr %i.ao to i64
  %i.ar = ptrtoint ptr %i.ap to i64
  %i.as = sub i64 %i.aq, %i.ar
  %i.at = sdiv i64 %i.as, 56
  %i.au = getelementptr inbounds nuw i8, ptr %i.an, i64 48
  %i.av = load i64, ptr %i.au, align 8, !tbaa !201 ; 3 uses
  %umax = tail call i64 @llvm.umax.i64(i64 %i.at, i64 1)
  br label %bb.c

bb.b:                                             ; preds = %bb.c
  %i.aw = add nuw i64 %.018, 1                    ; 2 uses
  %exitcond.not = icmp eq i64 %i.aw, %umax
  br i1 %exitcond.not, label %.loopexit, label %bb.c, !llvm.loop !237

bb.c:                                             ; preds = %.lr.ph, %bb.b
  %.018 = phi i64 [ 0, %.lr.ph ], [ %i.aw, %bb.b ] ; 2 uses
  %i.ax = getelementptr inbounds nuw [56 x i8], ptr %i.ap, i64 %.018
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 48
  %i.az = load i64, ptr %i.ay, align 8, !tbaa !201
  %i.ba = icmp eq i64 %i.av, %i.az
  br i1 %i.ba, label %.loopexit, label %bb.b

.loopexit:                                        ; preds = %bb.b, %bb.c, %.preheader..loopexit_crit_edge
  %i.bb = phi i64 [ %.pre, %.preheader..loopexit_crit_edge ], [ %i.av, %bb.c ], [ %i.av, %bb.b ]
  %.1.ph = phi ptr [ @.str.9, %.preheader..loopexit_crit_edge ], [ @.str.9, %bb.b ], [ @.str.20, %bb.c ]
  %i.bc = getelementptr inbounds nuw i8, ptr %i.an, i64 16
  %i.bd = load ptr, ptr %i.bc, align 8, !tbaa !39
  %i.be = load double, ptr %i.an, align 8, !tbaa !217
  %i.bf = getelementptr inbounds nuw i8, ptr %i.an, i64 8
  %i.bg = load double, ptr %i.bf, align 8, !tbaa !218
  %i.bh = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.21, i64 noundef %i.bb, ptr noundef %i.bd, double noundef %i.be, double noundef %i.bg, ptr noundef nonnull %.1.ph) ; 0 uses
  %i.bi = add nuw i64 %.01721, 1                  ; 2 uses
  %i.bj = load ptr, ptr %i.r, align 8, !tbaa !199
  %i.bk = load ptr, ptr %i.b, align 8, !tbaa !196 ; 2 uses
  %i.bl = ptrtoint ptr %i.bj to i64
  %i.bm = ptrtoint ptr %i.bk to i64
  %i.bn = sub i64 %i.bl, %i.bm
  %i.bo = sdiv exact i64 %i.bn, 56
  %i.bp = icmp ult i64 %i.bi, %i.bo
  br i1 %i.bp, label %.preheader, label %._crit_edge, !llvm.loop !236
}

; Function Attrs: nofree nounwind
declare noundef i32 @printf(ptr noundef readonly captures(none), ...) local_unnamed_addr #8

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define void @_ZN5faiss14ParameterSpaceC2Ev(ptr nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(64) initializes((0, 49), (56, 64)) %0) unnamed_addr #2 align 2 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTVN5faiss14ParameterSpaceE, i64 16), ptr %0, align 8, !tbaa !40
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.a, i8 0, i64 24, i1 false)
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i32 1, ptr %i.b, align 8, !tbaa !91
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 36
  store i32 500, ptr %i.c, align 4, !tbaa !238
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i64 1073741824, ptr %i.d, align 8, !tbaa !239
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 48
  store i8 0, ptr %i.e, align 8, !tbaa !240
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 56
  store double 0.000000e+00, ptr %i.f, align 8, !tbaa !241
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define noundef i64 @_ZNK5faiss14ParameterSpace14n_combinationsEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(64) %0) local_unnamed_addr #22 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !66   ; 2 uses
  %i.d = load ptr, ptr %i.a, align 8, !tbaa !83   ; 5 uses
  %.not = icmp eq ptr %i.c, %i.d
  br i1 %.not, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.a
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = ptrtoint ptr %i.d to i64
  %i.g = sub i64 %i.e, %i.f
  %i.h = sdiv i64 %i.g, 56                        ; 2 uses
  %umax = tail call i64 @llvm.umax.i64(i64 %i.h, i64 1) ; 3 uses
  %xtraiter = and i64 %umax, 1
  %1 = icmp ult i64 %i.h, 2
  br i1 %1, label %.lr.ph.epil.preheader, label %.lr.ph.preheader.new

.lr.ph.preheader.new:                             ; preds = %.lr.ph.preheader
  %unroll_iter = and i64 %umax, -2
  br label %.lr.ph

._crit_edge.loopexit.unr-lcssa:                   ; preds = %.lr.ph
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge, label %.lr.ph.epil.preheader

.lr.ph.epil.preheader:                            ; preds = %._crit_edge.loopexit.unr-lcssa, %.lr.ph.preheader
  %.07.epil.init = phi i64 [ 0, %.lr.ph.preheader ], [ %i.am, %._crit_edge.loopexit.unr-lcssa ]
  %.056.epil.init = phi i64 [ 1, %.lr.ph.preheader ], [ %i.al, %._crit_edge.loopexit.unr-lcssa ]
  %lcmp.mod9 = trunc i64 %umax to i1
  tail call void @llvm.assume(i1 %lcmp.mod9)
  %i.i = getelementptr inbounds nuw [56 x i8], ptr %i.d, i64 %.07.epil.init ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 32
  %i.k = getelementptr inbounds nuw i8, ptr %i.i, i64 40
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !67
  %i.m = load ptr, ptr %i.j, align 8, !tbaa !73
  %i.n = ptrtoint ptr %i.l to i64
  %i.o = ptrtoint ptr %i.m to i64
  %i.p = sub i64 %i.n, %i.o
  %i.q = ashr exact i64 %i.p, 3
  %i.r = mul i64 %i.q, %.056.epil.init
  br label %._crit_edge

._crit_edge:                                      ; preds = %.lr.ph.epil.preheader, %._crit_edge.loopexit.unr-lcssa, %bb.a
  %.05.lcssa = phi i64 [ 1, %bb.a ], [ %i.al, %._crit_edge.loopexit.unr-lcssa ], [ %i.r, %.lr.ph.epil.preheader ]
  ret i64 %.05.lcssa

.lr.ph:                                           ; preds = %.lr.ph, %.lr.ph.preheader.new
  %.07 = phi i64 [ 0, %.lr.ph.preheader.new ], [ %i.am, %.lr.ph ] ; 3 uses
  %.056 = phi i64 [ 1, %.lr.ph.preheader.new ], [ %i.al, %.lr.ph ]
  %niter = phi i64 [ 0, %.lr.ph.preheader.new ], [ %niter.next.1, %.lr.ph ]
  %i.s = getelementptr inbounds nuw [56 x i8], ptr %i.d, i64 %.07 ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 32
  %i.u = getelementptr inbounds nuw i8, ptr %i.s, i64 40
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !67
  %i.w = load ptr, ptr %i.t, align 8, !tbaa !73
  %i.x = ptrtoint ptr %i.v to i64
  %i.y = ptrtoint ptr %i.w to i64
  %i.z = sub i64 %i.x, %i.y
  %i.aa = ashr exact i64 %i.z, 3
  %i.ab = mul i64 %i.aa, %.056
  %i.ac = getelementptr inbounds nuw [56 x i8], ptr %i.d, i64 %.07 ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 88
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ac, i64 96
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !67
  %i.ag = load ptr, ptr %i.ad, align 8, !tbaa !73
  %i.ah = ptrtoint ptr %i.af to i64
  %i.ai = ptrtoint ptr %i.ag to i64
  %i.aj = sub i64 %i.ah, %i.ai
  %i.ak = ashr exact i64 %i.aj, 3
  %i.al = mul i64 %i.ak, %i.ab                    ; 3 uses
  %i.am = add nuw i64 %.07, 2                     ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge.loopexit.unr-lcssa, label %.lr.ph, !llvm.loop !242
}

; Function Attrs: mustprogress uwtable
define void @_ZNK5faiss14ParameterSpace16combination_nameB5cxx11Em(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(64) %1, i64 noundef %2) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca [1000 x i8], align 16             ; 10 uses
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #17
  store i8 0, ptr %i.a, align 16, !tbaa !38
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 3 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !66
  %i.e = load ptr, ptr %i.b, align 8, !tbaa !83   ; 4 uses
  %.not = icmp eq ptr %i.d, %i.e
  br i1 %.not, label %._crit_edge, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 1000
  %i.g = ptrtoint ptr %i.f to i64
  %i.h = getelementptr inbounds nuw i8, ptr %i.e, i64 32
  %i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 40
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !67
  %i.k = load ptr, ptr %i.h, align 8, !tbaa !73   ; 2 uses
  %i.l = ptrtoint ptr %i.j to i64
  %i.m = ptrtoint ptr %i.k to i64
  %i.n = sub i64 %i.l, %i.m
  %i.o = ashr exact i64 %i.n, 3                   ; 2 uses
  %i.p = urem i64 %2, %i.o
  %i.q = udiv i64 %2, %i.o
  %i.r = load ptr, ptr %i.e, align 8, !tbaa !39
  %i.s = getelementptr inbounds nuw [8 x i8], ptr %i.k, i64 %i.p
  %i.t = load double, ptr %i.s, align 8, !tbaa !71
  %i.u = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %i.a, i64 noundef 1000, ptr noundef nonnull @.str.24, ptr noundef nonnull @.str.9, ptr noundef %i.r, double noundef %i.t) #17
  %i.v = load ptr, ptr %i.c, align 8, !tbaa !66
  %i.w = load ptr, ptr %i.b, align 8, !tbaa !83   ; 2 uses
  %i.x = ptrtoint ptr %i.v to i64
  %i.y = ptrtoint ptr %i.w to i64
  %i.z = sub i64 %i.x, %i.y
  %i.aa = sdiv exact i64 %i.z, 56
  %i.ab = icmp ugt i64 %i.aa, 1
  br i1 %i.ab, label %.peel.next, label %._crit_edge

.peel.next:                                       ; preds = %bb.b
  %i.ac = sext i32 %i.u to i64
  %i.ad = getelementptr inbounds i8, ptr %i.a, i64 %i.ac
  br label %bb.g

._crit_edge:                                      ; preds = %bb.o, %bb.b, %bb.a
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  store ptr %i.ae, ptr %0, align 8, !tbaa !33
  %i.af = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.a) #17 ; 8 uses
  %i.ag = icmp ugt i64 %i.af, 15
  br i1 %i.ag, label %bb.c, label %._crit_edge.i.i

bb.c:                                             ; preds = %._crit_edge
  %i.ah = icmp slt i64 %i.af, 0
  br i1 %i.ah, label %.noexc.i, label %bb.d

.noexc.i:                                         ; preds = %bb.c
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.5) #35
  unreachable

bb.d:                                             ; preds = %bb.c
  %i.ai = add nuw i64 %i.af, 1                    ; 2 uses
  %i.aj = icmp slt i64 %i.ai, 0
  br i1 %i.aj, label %.noexc11.i, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i, !prof !103

.noexc11.i:                                       ; preds = %bb.d
  call void @_ZSt17__throw_bad_allocv() #35
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i: ; preds = %bb.d
  %i.ak = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ai) #37 ; 2 uses
  store ptr %i.ak, ptr %0, align 8, !tbaa !39
  store i64 %i.af, ptr %i.ae, align 8, !tbaa !38
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i, %._crit_edge
  %i.al = phi ptr [ %i.ak, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i ], [ %i.ae, %._crit_edge ] ; 3 uses
  switch i64 %i.af, label %bb.f [
    i64 1, label %bb.e
    i64 0, label %bb.p
  ]

bb.e:                                             ; preds = %._crit_edge.i.i
  %i.am = load i8, ptr %i.a, align 16, !tbaa !38
  store i8 %i.am, ptr %i.al, align 1, !tbaa !38
  br label %bb.p

bb.f:                                             ; preds = %._crit_edge.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.al, ptr nonnull align 16 %i.a, i64 %i.af, i1 false)
  br label %bb.p

bb.g:                                             ; preds = %.peel.next, %bb.o
  %i.an = phi ptr [ %i.w, %.peel.next ], [ %i.ca, %bb.o ]
  %.034 = phi i64 [ %i.q, %.peel.next ], [ %i.br, %bb.o ] ; 2 uses
  %.02133 = phi ptr [ %i.ad, %.peel.next ], [ %i.bx, %bb.o ] ; 3 uses
  %.02532 = phi i64 [ 1, %.peel.next ], [ %i.by, %bb.o ] ; 2 uses
  %i.ao = ptrtoint ptr %.02133 to i64
  %i.ap = sub i64 %i.g, %i.ao                     ; 2 uses
  %i.aq = icmp sgt i64 %i.ap, -1
  br i1 %i.aq, label %bb.o, label %.loopexit

.loopexit:                                        ; preds = %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #17
  %i.ar = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 4 uses
  store ptr %i.ar, ptr %3, align 8, !tbaa !33
  %i.as = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  store i64 0, ptr %i.as, align 8, !tbaa !36
  store i8 0, ptr %i.ar, align 8, !tbaa !38
  %i.at = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef null, i64 noundef 0, ptr noundef nonnull @.str.22, ptr noundef nonnull @.str.23) #17 ; 2 uses
  %i.au = icmp sgt i32 %i.at, 0
  br i1 %i.au, label %bb.h, label %bb.k

bb.h:                                             ; preds = %.loopexit
  %i.av = zext nneg i32 %i.at to i64              ; 2 uses
  %i.aw = add nuw nsw i64 %i.av, 1
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6resizeEm(ptr noundef nonnull align 8 dereferenceable(32) %3, i64 noundef %i.aw)
          to label %bb.i unwind label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.ax = load ptr, ptr %3, align 8, !tbaa !39
  %i.ay = load i64, ptr %i.as, align 8, !tbaa !36
  %i.az = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull %i.ax, i64 noundef %i.ay, ptr noundef nonnull @.str.22, ptr noundef nonnull @.str.23) #17 ; 0 uses
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6resizeEm(ptr noundef nonnull align 8 dereferenceable(32) %3, i64 noundef %i.av)
          to label %bb.k unwind label %bb.j

bb.j:                                             ; preds = %bb.l, %bb.i, %bb.h
  %i.ba = landingpad { ptr, i32 }
          cleanup
  br label %bb.n

bb.k:                                             ; preds = %bb.i, %.loopexit
  %i.bb = call ptr @__cxa_allocate_exception(i64 40) #17 ; 3 uses
  invoke void @_ZN5faiss14FaissExceptionC1ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSA_i(ptr noundef nonnull align 8 dereferenceable(40) %i.bb, ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull @__PRETTY_FUNCTION__._ZNK5faiss14ParameterSpace16combination_nameB5cxx11Em, ptr noundef nonnull @.str.2, i32 noundef 289)
          to label %bb.l unwind label %bb.m

bb.l:                                             ; preds = %bb.k
  invoke void @__cxa_throw(ptr nonnull %i.bb, ptr nonnull @_ZTIN5faiss14FaissExceptionE, ptr nonnull @_ZN5faiss14FaissExceptionD2Ev) #35
          to label %bb.q unwind label %bb.j

bb.m:                                             ; preds = %bb.k
  %i.bc = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_free_exception(ptr nonnull %i.bb) #17
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.j
  %.pn = phi { ptr, i32 } [ %i.ba, %bb.j ], [ %i.bc, %bb.m ]
  %i.bd = load ptr, ptr %3, align 8, !tbaa !39    ; 2 uses
  %i.be = icmp eq ptr %i.bd, %i.ar
  br i1 %i.be, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.n
  %i.bf = load i64, ptr %i.ar, align 8, !tbaa !38
  %i.bg = add i64 %i.bf, 1
  call void @_ZdlPvm(ptr noundef %i.bd, i64 noundef %i.bg) #36
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.n, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #17
  resume { ptr, i32 } %.pn

bb.o:                                             ; preds = %bb.g
  %i.bh = getelementptr inbounds nuw [56 x i8], ptr %i.an, i64 %.02532 ; 3 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bh, i64 32
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bh, i64 40
  %i.bk = load ptr, ptr %i.bj, align 8, !tbaa !67
  %i.bl = load ptr, ptr %i.bi, align 8, !tbaa !73 ; 2 uses
  %i.bm = ptrtoint ptr %i.bk to i64
  %i.bn = ptrtoint ptr %i.bl to i64
  %i.bo = sub i64 %i.bm, %i.bn
  %i.bp = ashr exact i64 %i.bo, 3                 ; 2 uses
  %i.bq = urem i64 %.034, %i.bp
  %i.br = udiv i64 %.034, %i.bp
  %i.bs = load ptr, ptr %i.bh, align 8, !tbaa !39
  %i.bt = getelementptr inbounds nuw [8 x i8], ptr %i.bl, i64 %i.bq
  %i.bu = load double, ptr %i.bt, align 8, !tbaa !71
  %i.bv = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef %.02133, i64 noundef %i.ap, ptr noundef nonnull @.str.24, ptr noundef nonnull @.str.25, ptr noundef %i.bs, double noundef %i.bu) #17
  %i.bw = sext i32 %i.bv to i64
  %i.bx = getelementptr inbounds i8, ptr %.02133, i64 %i.bw
  %i.by = add nuw i64 %.02532, 1                  ; 2 uses
  %i.bz = load ptr, ptr %i.c, align 8, !tbaa !66
  %i.ca = load ptr, ptr %i.b, align 8, !tbaa !83  ; 2 uses
  %i.cb = ptrtoint ptr %i.bz to i64
  %i.cc = ptrtoint ptr %i.ca to i64
  %i.cd = sub i64 %i.cb, %i.cc
  %i.ce = sdiv exact i64 %i.cd, 56
  %i.cf = icmp ult i64 %i.by, %i.ce
  br i1 %i.cf, label %bb.g, label %._crit_edge, !llvm.loop !243

bb.p:                                             ; preds = %bb.f, %bb.e, %._crit_edge.i.i
  %i.cg = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.af, ptr %i.cg, align 8, !tbaa !36
  %i.ch = getelementptr inbounds nuw i8, ptr %i.al, i64 %i.af
  store i8 0, ptr %i.ch, align 1, !tbaa !38
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #17
  ret void

bb.q:                                             ; preds = %bb.l
  unreachable
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define noundef zeroext i1 @_ZNK5faiss14ParameterSpace14combination_geEmm(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(64) %0, i64 noundef %1, i64 noundef %2) local_unnamed_addr #22 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !66   ; 2 uses
  %i.d = load ptr, ptr %i.a, align 8, !tbaa !83   ; 3 uses
  %i.e = icmp eq ptr %i.c, %i.d
  br i1 %i.e, label %.critedge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.a
  %i.f = ptrtoint ptr %i.c to i64
  %i.g = ptrtoint ptr %i.d to i64
  %i.h = sub i64 %i.f, %i.g
  %i.i = sdiv i64 %i.h, 56
  %umax = tail call i64 @llvm.umax.i64(i64 %i.i, i64 1)
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph, %.lr.ph.preheader
  %.01625 = phi i64 [ %i.w, %.lr.ph ], [ 0, %.lr.ph.preheader ] ; 2 uses
  %.01724 = phi i64 [ %i.v, %.lr.ph ], [ %2, %.lr.ph.preheader ] ; 2 uses
  %.01923 = phi i64 [ %i.t, %.lr.ph ], [ %1, %.lr.ph.preheader ] ; 2 uses
  %i.j = getelementptr inbounds nuw [56 x i8], ptr %i.d, i64 %.01625 ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 32
  %i.l = getelementptr inbounds nuw i8, ptr %i.j, i64 40
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !67
  %i.n = load ptr, ptr %i.k, align 8, !tbaa !73
  %i.o = ptrtoint ptr %i.m to i64
  %i.p = ptrtoint ptr %i.n to i64
  %i.q = sub i64 %i.o, %i.p
  %i.r = ashr exact i64 %i.q, 3                   ; 4 uses
  %i.s = urem i64 %.01923, %i.r
  %i.t = udiv i64 %.01923, %i.r
  %i.u = urem i64 %.01724, %i.r
  %i.v = udiv i64 %.01724, %i.r
  %.not.not.not.not = icmp uge i64 %i.s, %i.u     ; 2 uses
  %.not.not.not.not.not = xor i1 %.not.not.not.not, true
  %i.w = add nuw i64 %.01625, 1                   ; 2 uses
  %exitcond.not = icmp eq i64 %i.w, %umax
  %or.cond = select i1 %.not.not.not.not.not, i1 true, i1 %exitcond.not
  br i1 %or.cond, label %.critedge, label %.lr.ph, !llvm.loop !245

.critedge:                                        ; preds = %.lr.ph, %bb.a
  %.lcssa = phi i1 [ true, %bb.a ], [ %.not.not.not.not, %.lr.ph ]
  ret i1 %.lcssa
}

; Function Attrs: mustprogress uwtable
define noundef nonnull align 8 dereferenceable(56) ptr @_ZN5faiss14ParameterSpace9add_rangeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(64) %0, ptr noundef nonnull align 8 dereferenceable(32) %1) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !62   ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 5 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !62   ; 8 uses
  %i.e = icmp eq ptr %i.b, %i.d
  br i1 %i.e, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.g = load i64, ptr %i.f, align 8, !tbaa !36   ; 3 uses
  %i.h = load ptr, ptr %1, align 8
  %i.i = icmp eq i64 %i.g, 0
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread14
  %.sroa.011.019 = phi ptr [ %i.b, %.lr.ph ], [ %i.o, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread14 ] ; 5 uses
  %i.j = getelementptr inbounds nuw i8, ptr %.sroa.011.019, i64 8
  %i.k = load i64, ptr %i.j, align 8, !tbaa !36
  %i.l = icmp eq i64 %i.k, %i.g
  br i1 %i.l, label %bb.c, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread14

bb.c:                                             ; preds = %bb.b
  br i1 %i.i, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit: ; preds = %bb.c
  %i.m = load ptr, ptr %.sroa.011.019, align 8, !tbaa !39
  %bcmp.i = tail call i32 @bcmp(ptr %i.m, ptr %i.h, i64 %i.g)
  %i.n = icmp eq i32 %bcmp.i, 0
  br i1 %i.n, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread14

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread14: ; preds = %bb.b, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit
  %i.o = getelementptr inbounds nuw i8, ptr %.sroa.011.019, i64 56 ; 2 uses
  %i.p = icmp eq ptr %i.o, %i.d
  br i1 %i.p, label %._crit_edge, label %bb.b

._crit_edge:                                      ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread14, %bb.a
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !64
  %.not.i = icmp eq ptr %i.d, %i.r
  br i1 %.not.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %._crit_edge
  %i.s = getelementptr inbounds nuw i8, ptr %i.d, i64 16 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.s, i8 0, i64 16, i1 false)
  store ptr %i.s, ptr %i.d, align 8, !tbaa !33
  %i.t = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store i64 0, ptr %i.t, align 8, !tbaa !36
  %i.u = getelementptr inbounds nuw i8, ptr %i.d, i64 32
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.u, i8 0, i64 24, i1 false)
  %i.v = load ptr, ptr %i.c, align 8, !tbaa !66
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 56 ; 2 uses
  store ptr %i.w, ptr %i.c, align 8, !tbaa !66
  br label %_ZNSt6vectorIN5faiss14ParameterRangeESaIS1_EE12emplace_backIJEEERS1_DpOT_.exit

bb.e:                                             ; preds = %._crit_edge
  tail call void @_ZNSt6vectorIN5faiss14ParameterRangeESaIS1_EE17_M_realloc_insertIJEEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %i.a, ptr %i.d)
  %.pre = load ptr, ptr %i.c, align 8, !tbaa !62
  br label %_ZNSt6vectorIN5faiss14ParameterRangeESaIS1_EE12emplace_backIJEEERS1_DpOT_.exit

_ZNSt6vectorIN5faiss14ParameterRangeESaIS1_EE12emplace_backIJEEERS1_DpOT_.exit: ; preds = %bb.d, %bb.e
  %i.x = phi ptr [ %i.w, %bb.d ], [ %.pre, %bb.e ]
  %i.y = getelementptr inbounds i8, ptr %i.x, i64 -56
  tail call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %i.y, ptr noundef nonnull align 8 dereferenceable(32) %1)
  %i.z = load ptr, ptr %i.c, align 8, !tbaa !62
  %i.aa = getelementptr inbounds i8, ptr %i.z, i64 -56
  br label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit, %bb.c, %_ZNSt6vectorIN5faiss14ParameterRangeESaIS1_EE12emplace_backIJEEERS1_DpOT_.exit
  %.3 = phi ptr [ %i.aa, %_ZNSt6vectorIN5faiss14ParameterRangeESaIS1_EE12emplace_backIJEEERS1_DpOT_.exit ], [ %.sroa.011.019, %bb.c ], [ %.sroa.011.019, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit ]
  ret ptr %.3
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt6vectorIN5faiss14ParameterRangeESaIS1_EE17_M_realloc_insertIJEEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %1) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !66   ; 3 uses
  %i.c = load ptr, ptr %0, align 8, !tbaa !83     ; 5 uses
  %i.d = ptrtoint ptr %i.b to i64
  %i.e = ptrtoint ptr %i.c to i64                 ; 3 uses
  %i.f = sub i64 %i.d, %i.e                       ; 2 uses
  %i.g = icmp eq i64 %i.f, 9223372036854775800
  br i1 %i.g, label %bb.b, label %_ZNKSt6vectorIN5faiss14ParameterRangeESaIS1_EE12_M_check_lenEmPKc.exit

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.11) #35
  unreachable

_ZNKSt6vectorIN5faiss14ParameterRangeESaIS1_EE12_M_check_lenEmPKc.exit: ; preds = %bb.a
  %i.h = sdiv exact i64 %i.f, 56                  ; 3 uses
  %.sroa.speculated.i = tail call i64 @llvm.umax.i64(i64 %i.h, i64 1)
  %i.i = add nsw i64 %.sroa.speculated.i, %i.h    ; 2 uses
  %i.j = icmp ult i64 %i.i, %i.h
  %i.k = tail call i64 @llvm.umin.i64(i64 %i.i, i64 164703072086692425)
  %i.l = select i1 %i.j, i64 164703072086692425, i64 %i.k ; 3 uses
  %i.m = ptrtoint ptr %1 to i64
  %i.n = sub i64 %i.m, %i.e
  %.not.i = icmp ne i64 %i.l, 0
  tail call void @llvm.assume(i1 %.not.i)
  %i.o = mul nuw nsw i64 %i.l, 56
  %i.p = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.o) #37 ; 5 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 %i.n ; 4 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 16 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.r, i8 0, i64 16, i1 false)
  store ptr %i.r, ptr %i.q, align 8, !tbaa !33
  %i.s = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  store i64 0, ptr %i.s, align 8, !tbaa !36
  %i.t = getelementptr inbounds nuw i8, ptr %i.q, i64 32
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.t, i8 0, i64 24, i1 false)
  %.not10.i.i.i = icmp eq ptr %i.c, %1
  br i1 %.not10.i.i.i, label %_ZNSt6vectorIN5faiss14ParameterRangeESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %_ZNKSt6vectorIN5faiss14ParameterRangeESaIS1_EE12_M_check_lenEmPKc.exit, %_ZSt19__relocate_object_aIN5faiss14ParameterRangeES1_SaIS1_EEvPT_PT0_RT1_.exit.i.i.i
  %.012.i.i.i = phi ptr [ %i.an, %_ZSt19__relocate_object_aIN5faiss14ParameterRangeES1_SaIS1_EEvPT_PT0_RT1_.exit.i.i.i ], [ %i.p, %_ZNKSt6vectorIN5faiss14ParameterRangeESaIS1_EE12_M_check_lenEmPKc.exit ] ; 7 uses
  %.0911.i.i.i = phi ptr [ %i.am, %_ZSt19__relocate_object_aIN5faiss14ParameterRangeES1_SaIS1_EEvPT_PT0_RT1_.exit.i.i.i ], [ %i.c, %_ZNKSt6vectorIN5faiss14ParameterRangeESaIS1_EE12_M_check_lenEmPKc.exit ] ; 9 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !246)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !249)
  %i.u = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 16 ; 3 uses
  store ptr %i.u, ptr %.012.i.i.i, align 8, !tbaa !33, !alias.scope !246, !noalias !249
  %i.v = load ptr, ptr %.0911.i.i.i, align 8, !tbaa !39, !alias.scope !249, !noalias !246 ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 16 ; 5 uses
  %i.x = icmp eq ptr %i.v, %i.w
  br i1 %i.x, label %bb.c, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i

bb.c:                                             ; preds = %.lr.ph.i.i.i
  %i.y = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 8
  %i.z = load i64, ptr %i.y, align 8, !tbaa !36, !alias.scope !249, !noalias !246 ; 3 uses
  %i.aa = icmp ult i64 %i.z, 16
  tail call void @llvm.assume(i1 %i.aa)
  %i.ab = add nuw nsw i64 %i.z, 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.u, ptr noundef nonnull align 8 dereferenceable(1) %i.w, i64 %i.ab, i1 false), !alias.scope !251
  br label %_ZSt19__relocate_object_aIN5faiss14ParameterRangeES1_SaIS1_EEvPT_PT0_RT1_.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i
  store ptr %i.v, ptr %.012.i.i.i, align 8, !tbaa !39, !alias.scope !246, !noalias !249
  %i.ac = load i64, ptr %i.w, align 8, !tbaa !38, !alias.scope !249, !noalias !246
  store i64 %i.ac, ptr %i.u, align 8, !tbaa !38, !alias.scope !246, !noalias !249
  %.phi.trans.insert.i.i.i.i = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 8
  %.pre.i.i.i.i = load i64, ptr %.phi.trans.insert.i.i.i.i, align 8, !tbaa !36, !alias.scope !249, !noalias !246
  br label %_ZSt19__relocate_object_aIN5faiss14ParameterRangeES1_SaIS1_EEvPT_PT0_RT1_.exit.i.i.i

_ZSt19__relocate_object_aIN5faiss14ParameterRangeES1_SaIS1_EEvPT_PT0_RT1_.exit.i.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i, %bb.c
  %i.ad = phi i64 [ %.pre.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i ], [ %i.z, %bb.c ]
  %i.ae = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 8
  %i.af = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 8
  store i64 %i.ad, ptr %i.af, align 8, !tbaa !36, !alias.scope !246, !noalias !249
  store ptr %i.w, ptr %.0911.i.i.i, align 8, !tbaa !39, !alias.scope !249, !noalias !246
  store i64 0, ptr %i.ae, align 8, !tbaa !36, !alias.scope !249, !noalias !246
  store i8 0, ptr %i.w, align 8, !tbaa !38, !alias.scope !249, !noalias !246
  %i.ag = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 32
  %i.ah = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 32 ; 2 uses
  %i.ai = load <2 x ptr>, ptr %i.ah, align 8, !tbaa !252, !alias.scope !249, !noalias !246
  store <2 x ptr> %i.ai, ptr %i.ag, align 8, !tbaa !252, !alias.scope !246, !noalias !249
  %i.aj = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 48
  %i.ak = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 48
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !70, !alias.scope !249, !noalias !246
  store ptr %i.al, ptr %i.aj, align 8, !tbaa !70, !alias.scope !246, !noalias !249
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ah, i8 0, i64 24, i1 false), !alias.scope !249, !noalias !246
  %i.am = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 56 ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 56 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.am, %1
  br i1 %.not.i.i.i, label %_ZNSt6vectorIN5faiss14ParameterRangeESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit, label %.lr.ph.i.i.i, !llvm.loop !253

_ZNSt6vectorIN5faiss14ParameterRangeESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit: ; preds = %_ZSt19__relocate_object_aIN5faiss14ParameterRangeES1_SaIS1_EEvPT_PT0_RT1_.exit.i.i.i, %_ZNKSt6vectorIN5faiss14ParameterRangeESaIS1_EE12_M_check_lenEmPKc.exit
  %.0.lcssa.i.i.i = phi ptr [ %i.p, %_ZNKSt6vectorIN5faiss14ParameterRangeESaIS1_EE12_M_check_lenEmPKc.exit ], [ %i.an, %_ZSt19__relocate_object_aIN5faiss14ParameterRangeES1_SaIS1_EEvPT_PT0_RT1_.exit.i.i.i ]
  %i.ao = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i, i64 56 ; 2 uses
  %.not10.i.i.i15 = icmp eq ptr %1, %i.b
  br i1 %.not10.i.i.i15, label %_ZNSt6vectorIN5faiss14ParameterRangeESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit25, label %.lr.ph.i.i.i16

.lr.ph.i.i.i16:                                   ; preds = %_ZNSt6vectorIN5faiss14ParameterRangeESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit, %_ZSt19__relocate_object_aIN5faiss14ParameterRangeES1_SaIS1_EEvPT_PT0_RT1_.exit.i.i.i22
  %.012.i.i.i17 = phi ptr [ %i.bi, %_ZSt19__relocate_object_aIN5faiss14ParameterRangeES1_SaIS1_EEvPT_PT0_RT1_.exit.i.i.i22 ], [ %i.ao, %_ZNSt6vectorIN5faiss14ParameterRangeESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit ] ; 7 uses
  %.0911.i.i.i18 = phi ptr [ %i.bh, %_ZSt19__relocate_object_aIN5faiss14ParameterRangeES1_SaIS1_EEvPT_PT0_RT1_.exit.i.i.i22 ], [ %1, %_ZNSt6vectorIN5faiss14ParameterRangeESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit ] ; 9 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !254)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !257)
  %i.ap = getelementptr inbounds nuw i8, ptr %.012.i.i.i17, i64 16 ; 3 uses
  store ptr %i.ap, ptr %.012.i.i.i17, align 8, !tbaa !33, !alias.scope !254, !noalias !257
  %i.aq = load ptr, ptr %.0911.i.i.i18, align 8, !tbaa !39, !alias.scope !257, !noalias !254 ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %.0911.i.i.i18, i64 16 ; 5 uses
  %i.as = icmp eq ptr %i.aq, %i.ar
  br i1 %i.as, label %bb.d, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i19

bb.d:                                             ; preds = %.lr.ph.i.i.i16
  %i.at = getelementptr inbounds nuw i8, ptr %.0911.i.i.i18, i64 8
  %i.au = load i64, ptr %i.at, align 8, !tbaa !36, !alias.scope !257, !noalias !254 ; 3 uses
  %i.av = icmp ult i64 %i.au, 16
  tail call void @llvm.assume(i1 %i.av)
  %i.aw = add nuw nsw i64 %i.au, 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.ap, ptr noundef nonnull align 8 dereferenceable(1) %i.ar, i64 %i.aw, i1 false), !alias.scope !259
  br label %_ZSt19__relocate_object_aIN5faiss14ParameterRangeES1_SaIS1_EEvPT_PT0_RT1_.exit.i.i.i22
end_hunk_1
begin_hunk_2_@_ZNSt6vectorISt4pairIiNSt15__exception_ptr13exception_ptrEESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_:bb.a
  %i.ab = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i, i64 16 ; 2 uses
  %.not10.i.i.i16 = icmp eq ptr %1, %i.b
  br i1 %.not10.i.i.i16, label %_ZNSt6vectorISt4pairIiNSt15__exception_ptr13exception_ptrEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit22, label %.lr.ph.i.i.i17

.lr.ph.i.i.i17:                                   ; preds = %_ZNSt6vectorISt4pairIiNSt15__exception_ptr13exception_ptrEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit, %.lr.ph.i.i.i17
  %.012.i.i.i18 = phi ptr [ %i.ah, %.lr.ph.i.i.i17 ], [ %i.ab, %_ZNSt6vectorISt4pairIiNSt15__exception_ptr13exception_ptrEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit ] ; 3 uses
  %.0911.i.i.i19 = phi ptr [ %i.ag, %.lr.ph.i.i.i17 ], [ %1, %_ZNSt6vectorISt4pairIiNSt15__exception_ptr13exception_ptrEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit ] ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !366)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !369)
  %i.ac = load i32, ptr %.0911.i.i.i19, align 8, !tbaa !316, !alias.scope !369, !noalias !366
  store i32 %i.ac, ptr %.012.i.i.i18, align 8, !tbaa !316, !alias.scope !366, !noalias !369
  %i.ad = getelementptr inbounds nuw i8, ptr %.012.i.i.i18, i64 8
  %i.ae = getelementptr inbounds nuw i8, ptr %.0911.i.i.i19, i64 8 ; 2 uses
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !319, !alias.scope !369, !noalias !366
  store ptr %i.af, ptr %i.ad, align 8, !tbaa !319, !alias.scope !366, !noalias !369
  store ptr null, ptr %i.ae, align 8, !tbaa !319, !alias.scope !369, !noalias !366
  %i.ag = getelementptr inbounds nuw i8, ptr %.0911.i.i.i19, i64 16 ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %.012.i.i.i18, i64 16 ; 2 uses
  %.not.i.i.i20 = icmp eq ptr %i.ag, %i.b
  br i1 %.not.i.i.i20, label %_ZNSt6vectorISt4pairIiNSt15__exception_ptr13exception_ptrEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit22, label %.lr.ph.i.i.i17, !llvm.loop !365

_ZNSt6vectorISt4pairIiNSt15__exception_ptr13exception_ptrEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit22: ; preds = %.lr.ph.i.i.i17, %_ZNSt6vectorISt4pairIiNSt15__exception_ptr13exception_ptrEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit
  %.0.lcssa.i.i.i21 = phi ptr [ %i.ab, %_ZNSt6vectorISt4pairIiNSt15__exception_ptr13exception_ptrEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit ], [ %i.ah, %.lr.ph.i.i.i17 ]
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %.not.i23 = icmp eq ptr %i.c, null
  br i1 %.not.i23, label %_ZNSt12_Vector_baseISt4pairIiNSt15__exception_ptr13exception_ptrEESaIS3_EE13_M_deallocateEPS3_m.exit, label %bb.c

bb.c:                                             ; preds = %_ZNSt6vectorISt4pairIiNSt15__exception_ptr13exception_ptrEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit22
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !326
  %i.ak = ptrtoint ptr %i.aj to i64
  %i.al = sub i64 %i.ak, %i.e
  tail call void @_ZdlPvm(ptr noundef nonnull %i.c, i64 noundef %i.al) #36
  br label %_ZNSt12_Vector_baseISt4pairIiNSt15__exception_ptr13exception_ptrEESaIS3_EE13_M_deallocateEPS3_m.exit

_ZNSt12_Vector_baseISt4pairIiNSt15__exception_ptr13exception_ptrEESaIS3_EE13_M_deallocateEPS3_m.exit: ; preds = %_ZNSt6vectorISt4pairIiNSt15__exception_ptr13exception_ptrEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit22, %bb.c
  store ptr %i.p, ptr %0, align 8, !tbaa !321
  store ptr %.0.lcssa.i.i.i21, ptr %i.a, align 8, !tbaa !324
  %i.am = getelementptr inbounds nuw [16 x i8], ptr %i.p, i64 %i.l
  store ptr %i.am, ptr %i.ai, align 8, !tbaa !326
  ret void
}

; Function Attrs: nounwind
declare void @_ZNSt15__exception_ptr13exception_ptr10_M_releaseEv(ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #15

; Function Attrs: mustprogress uwtable
define internal void @"_ZNSt17_Function_handlerIFviPN5faiss5IndexEEZNKS0_14ParameterSpace19set_index_parameterES2_RKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEdE3$_0E9_M_invokeERKSt9_Any_dataOiOS2_"(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %0, ptr nofree nonnull readonly align 4 captures(none) %1, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %2) #0 align 2 {
bb.a:
  %.val = load ptr, ptr %0, align 8, !tbaa !107   ; 3 uses
  %.val4 = load ptr, ptr %2, align 8, !tbaa !311
  %i.a = load ptr, ptr %.val, align 8, !tbaa !100 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %.val, i64 8
  %i.c = getelementptr inbounds nuw i8, ptr %.val, i64 40
  %i.d = load double, ptr %i.c, align 8, !tbaa !104
  %i.e = load ptr, ptr %i.a, align 8, !tbaa !40
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.g = load ptr, ptr %i.f, align 8
  tail call void %i.g(ptr noundef nonnull align 8 dereferenceable(64) %i.a, ptr noundef %.val4, ptr noundef nonnull align 8 dereferenceable(32) %i.b, double noundef %i.d), !inline_history !371
  ret void
}

; Function Attrs: mustprogress uwtable
define internal noundef zeroext i1 @"_ZNSt17_Function_handlerIFviPN5faiss5IndexEEZNKS0_14ParameterSpace19set_index_parameterES2_RKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEdE3$_0E10_M_managerERSt9_Any_dataRKSF_St18_Manager_operation"(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(16) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %1, i32 noundef %2) #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  switch i32 %2, label %bb.d [
    i32 0, label %bb.b
    i32 1, label %bb.c
  ]

bb.b:                                             ; preds = %bb.a
  store ptr @"_ZTIZNK5faiss14ParameterSpace19set_index_parameterEPNS_5IndexERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEdE3$_0", ptr %0, align 8, !tbaa !350
  br label %"_ZNSt14_Function_base13_Base_managerIZNK5faiss14ParameterSpace19set_index_parameterEPNS1_5IndexERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEdE3$_0E10_M_managerERSt9_Any_dataRKSF_St18_Manager_operation.exit"

bb.c:                                             ; preds = %bb.a
  %.val = load ptr, ptr %1, align 8, !tbaa !107
  store ptr %.val, ptr %0, align 8, !tbaa !107
  br label %"_ZNSt14_Function_base13_Base_managerIZNK5faiss14ParameterSpace19set_index_parameterEPNS1_5IndexERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEdE3$_0E10_M_managerERSt9_Any_dataRKSF_St18_Manager_operation.exit"

bb.d:                                             ; preds = %bb.a
  %.val6 = load ptr, ptr %1, align 8              ; 4 uses
  switch i32 %2, label %"_ZNSt14_Function_base13_Base_managerIZNK5faiss14ParameterSpace19set_index_parameterEPNS1_5IndexERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEdE3$_0E10_M_managerERSt9_Any_dataRKSF_St18_Manager_operation.exit" [
    i32 3, label %bb.k
    i32 2, label %bb.e
  ]

bb.e:                                             ; preds = %bb.d
  %i.a = tail call noalias noundef nonnull dereferenceable(48) ptr @_Znwm(i64 noundef 48) #37 ; 7 uses
  %i.b = load ptr, ptr %.val6, align 8, !tbaa !100
  store ptr %i.b, ptr %i.a, align 8, !tbaa !100
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %.val6, i64 8
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 24 ; 3 uses
  store ptr %i.e, ptr %i.c, align 8, !tbaa !33
  %i.f = load ptr, ptr %i.d, align 8, !tbaa !39   ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %.val6, i64 16
  %i.h = load i64, ptr %i.g, align 8, !tbaa !36   ; 8 uses
  %i.i = icmp ugt i64 %i.h, 15
  br i1 %i.i, label %bb.f, label %._crit_edge.i.i.i.i.i.i

bb.f:                                             ; preds = %bb.e
  %i.j = icmp slt i64 %i.h, 0
  br i1 %i.j, label %.noexc.i.i.i.i.i, label %bb.g

.noexc.i.i.i.i.i:                                 ; preds = %bb.f
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.5) #35
          to label %.noexc.i.i.i unwind label %bb.j

.noexc.i.i.i:                                     ; preds = %.noexc.i.i.i.i.i
  unreachable

bb.g:                                             ; preds = %bb.f
  %i.k = add nuw i64 %i.h, 1                      ; 2 uses
  %i.l = icmp slt i64 %i.k, 0
  br i1 %i.l, label %.noexc6.i.i.i.i.i, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i.i.i.i.i, !prof !103

.noexc6.i.i.i.i.i:                                ; preds = %bb.g
  invoke void @_ZSt17__throw_bad_allocv() #35
          to label %.noexc3.i.i.i unwind label %bb.j

.noexc3.i.i.i:                                    ; preds = %.noexc6.i.i.i.i.i
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i.i.i.i.i: ; preds = %bb.g
  %i.m = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.k) #37
          to label %.noexc4.i.i.i unwind label %bb.j ; 2 uses

.noexc4.i.i.i:                                    ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i.i.i.i.i
  store ptr %i.m, ptr %i.c, align 8, !tbaa !39
  store i64 %i.h, ptr %i.e, align 8, !tbaa !38
  br label %._crit_edge.i.i.i.i.i.i

._crit_edge.i.i.i.i.i.i:                          ; preds = %.noexc4.i.i.i, %bb.e
  %i.n = phi ptr [ %i.m, %.noexc4.i.i.i ], [ %i.e, %bb.e ] ; 3 uses
  switch i64 %i.h, label %bb.i [
    i64 1, label %bb.h
    i64 0, label %"_ZNSt14_Function_base13_Base_managerIZNK5faiss14ParameterSpace19set_index_parameterEPNS1_5IndexERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEdE3$_0E15_M_init_functorIRKSD_EEvRSt9_Any_dataOT_.exit.i"
  ]

bb.h:                                             ; preds = %._crit_edge.i.i.i.i.i.i
  %i.o = load i8, ptr %i.f, align 1, !tbaa !38
  store i8 %i.o, ptr %i.n, align 1, !tbaa !38
  br label %"_ZNSt14_Function_base13_Base_managerIZNK5faiss14ParameterSpace19set_index_parameterEPNS1_5IndexERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEdE3$_0E15_M_init_functorIRKSD_EEvRSt9_Any_dataOT_.exit.i"

bb.i:                                             ; preds = %._crit_edge.i.i.i.i.i.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.n, ptr align 1 %i.f, i64 %i.h, i1 false)
  br label %"_ZNSt14_Function_base13_Base_managerIZNK5faiss14ParameterSpace19set_index_parameterEPNS1_5IndexERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEdE3$_0E15_M_init_functorIRKSD_EEvRSt9_Any_dataOT_.exit.i"

bb.j:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i.i.i.i.i, %.noexc6.i.i.i.i.i, %.noexc.i.i.i.i.i
  %i.p = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPvm(ptr noundef nonnull %i.a, i64 noundef 48) #36
  resume { ptr, i32 } %i.p

"_ZNSt14_Function_base13_Base_managerIZNK5faiss14ParameterSpace19set_index_parameterEPNS1_5IndexERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEdE3$_0E15_M_init_functorIRKSD_EEvRSt9_Any_dataOT_.exit.i": ; preds = %bb.i, %bb.h, %._crit_edge.i.i.i.i.i.i
  %i.q = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store i64 %i.h, ptr %i.q, align 8, !tbaa !36
  %i.r = getelementptr inbounds nuw i8, ptr %i.n, i64 %i.h
  store i8 0, ptr %i.r, align 1, !tbaa !38
  %i.s = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  %i.t = getelementptr inbounds nuw i8, ptr %.val6, i64 40
  %i.u = load double, ptr %i.t, align 8, !tbaa !104
  store double %i.u, ptr %i.s, align 8, !tbaa !104
  store ptr %i.a, ptr %0, align 8, !tbaa !107
  br label %"_ZNSt14_Function_base13_Base_managerIZNK5faiss14ParameterSpace19set_index_parameterEPNS1_5IndexERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEdE3$_0E10_M_managerERSt9_Any_dataRKSF_St18_Manager_operation.exit"

bb.k:                                             ; preds = %bb.d
  %.val7.i = load ptr, ptr %0, align 8, !tbaa !107 ; 4 uses
  %i.v = icmp eq ptr %.val7.i, null
  br i1 %i.v, label %"_ZNSt14_Function_base13_Base_managerIZNK5faiss14ParameterSpace19set_index_parameterEPNS1_5IndexERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEdE3$_0E10_M_managerERSt9_Any_dataRKSF_St18_Manager_operation.exit", label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.w = getelementptr inbounds nuw i8, ptr %.val7.i, i64 8
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !39   ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %.val7.i, i64 24 ; 2 uses
  %i.z = icmp eq ptr %i.x, %i.y
  br i1 %i.z, label %"_ZZNK5faiss14ParameterSpace19set_index_parameterEPNS_5IndexERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEdEN3$_0D2Ev.exit.i.i", label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i: ; preds = %bb.l
  %i.aa = load i64, ptr %i.y, align 8, !tbaa !38
  %i.ab = add i64 %i.aa, 1
  tail call void @_ZdlPvm(ptr noundef %i.x, i64 noundef %i.ab) #36
  br label %"_ZZNK5faiss14ParameterSpace19set_index_parameterEPNS_5IndexERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEdEN3$_0D2Ev.exit.i.i"

"_ZZNK5faiss14ParameterSpace19set_index_parameterEPNS_5IndexERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEdEN3$_0D2Ev.exit.i.i": ; preds = %bb.l, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %.val7.i, i64 noundef 48) #36
  br label %"_ZNSt14_Function_base13_Base_managerIZNK5faiss14ParameterSpace19set_index_parameterEPNS1_5IndexERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEdE3$_0E10_M_managerERSt9_Any_dataRKSF_St18_Manager_operation.exit"

"_ZNSt14_Function_base13_Base_managerIZNK5faiss14ParameterSpace19set_index_parameterEPNS1_5IndexERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEdE3$_0E10_M_managerERSt9_Any_dataRKSF_St18_Manager_operation.exit": ; preds = %"_ZZNK5faiss14ParameterSpace19set_index_parameterEPNS_5IndexERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEdEN3$_0D2Ev.exit.i.i", %bb.k, %"_ZNSt14_Function_base13_Base_managerIZNK5faiss14ParameterSpace19set_index_parameterEPNS1_5IndexERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEdE3$_0E15_M_init_functorIRKSD_EEvRSt9_Any_dataOT_.exit.i", %bb.d, %bb.c, %bb.b
  ret i1 false
}

; Function Attrs: mustprogress nofree nounwind uwtable
define void @_ZNK5faiss14ParameterSpace7displayEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(64) %0) local_unnamed_addr #23 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !66   ; 2 uses
  %i.d = load ptr, ptr %i.a, align 8, !tbaa !83   ; 5 uses
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = ptrtoint ptr %i.d to i64
  %i.g = sub i64 %i.e, %i.f
  %i.h = sdiv i64 %i.g, 56                        ; 3 uses
  %.not.i = icmp eq ptr %i.c, %i.d
  br i1 %.not.i, label %_ZNK5faiss14ParameterSpace14n_combinationsEv.exit, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %bb.a
  %umax.i = tail call i64 @llvm.umax.i64(i64 %i.h, i64 1) ; 3 uses
  %xtraiter = and i64 %umax.i, 1
  %1 = icmp ult i64 %i.h, 2
  br i1 %1, label %.lr.ph.i.epil.preheader, label %.lr.ph.i.preheader.new

.lr.ph.i.preheader.new:                           ; preds = %.lr.ph.i.preheader
  %unroll_iter = and i64 %umax.i, -2
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i, %.lr.ph.i.preheader.new
  %.07.i = phi i64 [ 0, %.lr.ph.i.preheader.new ], [ %i.ac, %.lr.ph.i ] ; 3 uses
  %.056.i = phi i64 [ 1, %.lr.ph.i.preheader.new ], [ %i.ab, %.lr.ph.i ]
  %niter = phi i64 [ 0, %.lr.ph.i.preheader.new ], [ %niter.next.1, %.lr.ph.i ]
  %i.i = getelementptr inbounds nuw [56 x i8], ptr %i.d, i64 %.07.i ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 32
  %i.k = getelementptr inbounds nuw i8, ptr %i.i, i64 40
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !67
  %i.m = load ptr, ptr %i.j, align 8, !tbaa !73
  %i.n = ptrtoint ptr %i.l to i64
  %i.o = ptrtoint ptr %i.m to i64
  %i.p = sub i64 %i.n, %i.o
  %i.q = ashr exact i64 %i.p, 3
  %i.r = mul i64 %i.q, %.056.i
  %i.s = getelementptr inbounds nuw [56 x i8], ptr %i.d, i64 %.07.i ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 88
  %i.u = getelementptr inbounds nuw i8, ptr %i.s, i64 96
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !67
  %i.w = load ptr, ptr %i.t, align 8, !tbaa !73
  %i.x = ptrtoint ptr %i.v to i64
  %i.y = ptrtoint ptr %i.w to i64
  %i.z = sub i64 %i.x, %i.y
  %i.aa = ashr exact i64 %i.z, 3
  %i.ab = mul i64 %i.aa, %i.r                     ; 3 uses
  %i.ac = add nuw i64 %.07.i, 2                   ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %_ZNK5faiss14ParameterSpace14n_combinationsEv.exit.loopexit.unr-lcssa, label %.lr.ph.i, !llvm.loop !242

_ZNK5faiss14ParameterSpace14n_combinationsEv.exit.loopexit.unr-lcssa: ; preds = %.lr.ph.i
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %_ZNK5faiss14ParameterSpace14n_combinationsEv.exit, label %.lr.ph.i.epil.preheader

.lr.ph.i.epil.preheader:                          ; preds = %_ZNK5faiss14ParameterSpace14n_combinationsEv.exit.loopexit.unr-lcssa, %.lr.ph.i.preheader
  %.07.i.epil.init = phi i64 [ 0, %.lr.ph.i.preheader ], [ %i.ac, %_ZNK5faiss14ParameterSpace14n_combinationsEv.exit.loopexit.unr-lcssa ]
  %.056.i.epil.init = phi i64 [ 1, %.lr.ph.i.preheader ], [ %i.ab, %_ZNK5faiss14ParameterSpace14n_combinationsEv.exit.loopexit.unr-lcssa ]
  %lcmp.mod25 = trunc i64 %umax.i to i1
  tail call void @llvm.assume(i1 %lcmp.mod25)
  %i.ad = getelementptr inbounds nuw [56 x i8], ptr %i.d, i64 %.07.i.epil.init ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 32
  %i.af = getelementptr inbounds nuw i8, ptr %i.ad, i64 40
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !67
  %i.ah = load ptr, ptr %i.ae, align 8, !tbaa !73
  %i.ai = ptrtoint ptr %i.ag to i64
  %i.aj = ptrtoint ptr %i.ah to i64
  %i.ak = sub i64 %i.ai, %i.aj
  %i.al = ashr exact i64 %i.ak, 3
  %i.am = mul i64 %i.al, %.056.i.epil.init
  br label %_ZNK5faiss14ParameterSpace14n_combinationsEv.exit

_ZNK5faiss14ParameterSpace14n_combinationsEv.exit: ; preds = %.lr.ph.i.epil.preheader, %_ZNK5faiss14ParameterSpace14n_combinationsEv.exit.loopexit.unr-lcssa, %bb.a
  %.05.lcssa.i = phi i64 [ 1, %bb.a ], [ %i.ab, %_ZNK5faiss14ParameterSpace14n_combinationsEv.exit.loopexit.unr-lcssa ], [ %i.am, %.lr.ph.i.epil.preheader ]
  %i.an = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.48, i64 noundef %i.h, i64 noundef %.05.lcssa.i) ; 0 uses
  %i.ao = load ptr, ptr %i.b, align 8, !tbaa !66
  %i.ap = load ptr, ptr %i.a, align 8, !tbaa !83  ; 2 uses
  %.not = icmp eq ptr %i.ao, %i.ap
  br i1 %.not, label %._crit_edge16, label %.lr.ph15

._crit_edge16:                                    ; preds = %._crit_edge, %_ZNK5faiss14ParameterSpace14n_combinationsEv.exit
  ret void

.lr.ph15:                                         ; preds = %_ZNK5faiss14ParameterSpace14n_combinationsEv.exit, %._crit_edge
  %i.aq = phi ptr [ %i.bi, %._crit_edge ], [ %i.ap, %_ZNK5faiss14ParameterSpace14n_combinationsEv.exit ]
  %.01114 = phi i64 [ %i.bg, %._crit_edge ], [ 0, %_ZNK5faiss14ParameterSpace14n_combinationsEv.exit ] ; 2 uses
  %i.ar = getelementptr inbounds nuw [56 x i8], ptr %i.aq, i64 %.01114 ; 3 uses
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !39
  %i.at = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.49, ptr noundef %i.as) ; 0 uses
  %i.au = getelementptr inbounds nuw i8, ptr %i.ar, i64 32 ; 3 uses
  %i.av = getelementptr inbounds nuw i8, ptr %i.ar, i64 40 ; 3 uses
  %i.aw = load ptr, ptr %i.av, align 8, !tbaa !67
  %i.ax = load ptr, ptr %i.au, align 8, !tbaa !73 ; 2 uses
  %.not17 = icmp eq ptr %i.aw, %i.ax
  br i1 %.not17, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %.lr.ph15
  %i.ay = load double, ptr %i.ax, align 8, !tbaa !71
  %i.az = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.50, i32 noundef 91, double noundef %i.ay) ; 0 uses
  %i.ba = load ptr, ptr %i.av, align 8, !tbaa !67
  %i.bb = load ptr, ptr %i.au, align 8, !tbaa !73 ; 2 uses
  %i.bc = ptrtoint ptr %i.ba to i64
  %i.bd = ptrtoint ptr %i.bb to i64
  %i.be = sub i64 %i.bc, %i.bd
  %i.bf = icmp ugt i64 %i.be, 8
  br i1 %i.bf, label %.lr.ph, label %._crit_edge

._crit_edge:                                      ; preds = %.lr.ph, %.lr.ph.preheader, %.lr.ph15
  %puts = tail call i32 @puts(ptr nonnull dereferenceable(1) @str) ; 0 uses
  %i.bg = add nuw i64 %.01114, 1                  ; 2 uses
  %i.bh = load ptr, ptr %i.b, align 8, !tbaa !66
  %i.bi = load ptr, ptr %i.a, align 8, !tbaa !83  ; 2 uses
  %i.bj = ptrtoint ptr %i.bh to i64
  %i.bk = ptrtoint ptr %i.bi to i64
  %i.bl = sub i64 %i.bj, %i.bk
  %i.bm = sdiv exact i64 %i.bl, 56
  %i.bn = icmp ult i64 %i.bg, %i.bm
  br i1 %i.bn, label %.lr.ph15, label %._crit_edge16, !llvm.loop !372

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.lr.ph
  %i.bo = phi ptr [ %i.bu, %.lr.ph ], [ %i.bb, %.lr.ph.preheader ]
  %.013 = phi i64 [ %i.bs, %.lr.ph ], [ 1, %.lr.ph.preheader ] ; 2 uses
  %i.bp = getelementptr inbounds nuw [8 x i8], ptr %i.bo, i64 %.013
  %i.bq = load double, ptr %i.bp, align 8, !tbaa !71
  %i.br = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.50, i32 noundef 44, double noundef %i.bq) ; 0 uses
  %i.bs = add nuw i64 %.013, 1                    ; 2 uses
  %i.bt = load ptr, ptr %i.av, align 8, !tbaa !67
  %i.bu = load ptr, ptr %i.au, align 8, !tbaa !73 ; 2 uses
  %i.bv = ptrtoint ptr %i.bt to i64
  %i.bw = ptrtoint ptr %i.bu to i64
  %i.bx = sub i64 %i.bv, %i.bw
  %i.by = ashr exact i64 %i.bx, 3
  %i.bz = icmp ult i64 %i.bs, %i.by
  br i1 %i.bz, label %.lr.ph, label %._crit_edge, !llvm.loop !373
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define void @_ZNK5faiss14ParameterSpace13update_boundsEmRKNS_14OperatingPointEPdS4_(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(64) %0, i64 noundef %1, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(56) %2, ptr nofree noundef captures(none) %3, ptr nofree noundef captures(none) %4) local_unnamed_addr #29 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 48
  %i.b = load i64, ptr %i.a, align 8, !tbaa !201  ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !66   ; 3 uses
  %i.f = load ptr, ptr %i.c, align 8, !tbaa !83   ; 5 uses
  %i.g = icmp eq ptr %i.e, %i.f                   ; 2 uses
  br i1 %i.g, label %.loopexit24, label %.lr.ph.preheader.i

.lr.ph.preheader.i:                               ; preds = %bb.a
  %i.h = ptrtoint ptr %i.e to i64
  %i.i = ptrtoint ptr %i.f to i64
  %i.j = sub i64 %i.h, %i.i
  %i.k = sdiv i64 %i.j, 56
  %umax.i = tail call i64 @llvm.umax.i64(i64 %i.k, i64 1)
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.b, %.lr.ph.preheader.i
  %.01625.i = phi i64 [ %i.y, %bb.b ], [ 0, %.lr.ph.preheader.i ] ; 2 uses
  %.01724.i = phi i64 [ %i.x, %bb.b ], [ %i.b, %.lr.ph.preheader.i ] ; 2 uses
  %.01923.i = phi i64 [ %i.v, %bb.b ], [ %1, %.lr.ph.preheader.i ] ; 2 uses
  %i.l = getelementptr inbounds nuw [56 x i8], ptr %i.f, i64 %.01625.i ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 32
  %i.n = getelementptr inbounds nuw i8, ptr %i.l, i64 40
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !67
  %i.p = load ptr, ptr %i.m, align 8, !tbaa !73
  %i.q = ptrtoint ptr %i.o to i64
  %i.r = ptrtoint ptr %i.p to i64
  %i.s = sub i64 %i.q, %i.r
  %i.t = ashr exact i64 %i.s, 3                   ; 4 uses
  %i.u = urem i64 %.01923.i, %i.t
  %i.v = udiv i64 %.01923.i, %i.t
  %i.w = urem i64 %.01724.i, %i.t
  %i.x = udiv i64 %.01724.i, %i.t
  %.not.not.not.i = icmp ult i64 %i.u, %i.w
  br i1 %.not.not.not.i, label %_ZNK5faiss14ParameterSpace14combination_geEmm.exit, label %bb.b

bb.b:                                             ; preds = %.lr.ph.i
  %i.y = add nuw i64 %.01625.i, 1                 ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.y, %umax.i
  br i1 %exitcond.not.i, label %.loopexit24, label %.lr.ph.i, !llvm.loop !245

.loopexit24:                                      ; preds = %bb.b, %bb.a
  %i.z = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.aa = load double, ptr %i.z, align 8, !tbaa !218 ; 2 uses
  %i.ab = load double, ptr %4, align 8, !tbaa !71
  %i.ac = fcmp ogt double %i.aa, %i.ab
  br i1 %i.ac, label %bb.c, label %_ZNK5faiss14ParameterSpace14combination_geEmm.exit

bb.c:                                             ; preds = %.loopexit24
  store double %i.aa, ptr %4, align 8, !tbaa !71
  br label %_ZNK5faiss14ParameterSpace14combination_geEmm.exit

_ZNK5faiss14ParameterSpace14combination_geEmm.exit: ; preds = %.lr.ph.i, %.loopexit24, %bb.c
  br i1 %i.g, label %.loopexit, label %.lr.ph.preheader.i13

.lr.ph.preheader.i13:                             ; preds = %_ZNK5faiss14ParameterSpace14combination_geEmm.exit
  %i.ad = ptrtoint ptr %i.e to i64
  %i.ae = ptrtoint ptr %i.f to i64
  %i.af = sub i64 %i.ad, %i.ae
  %i.ag = sdiv i64 %i.af, 56
  %umax.i14 = tail call i64 @llvm.umax.i64(i64 %i.ag, i64 1)
  br label %.lr.ph.i14

.lr.ph.i14:                                       ; preds = %bb.d, %.lr.ph.preheader.i13
  %.01625.i15 = phi i64 [ %i.au, %bb.d ], [ 0, %.lr.ph.preheader.i13 ] ; 2 uses
  %.01724.i16 = phi i64 [ %i.at, %bb.d ], [ %1, %.lr.ph.preheader.i13 ] ; 2 uses
  %.01923.i17 = phi i64 [ %i.ar, %bb.d ], [ %i.b, %.lr.ph.preheader.i13 ] ; 2 uses
  %i.ah = getelementptr inbounds nuw [56 x i8], ptr %i.f, i64 %.01625.i15 ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 32
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ah, i64 40
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !67
  %i.al = load ptr, ptr %i.ai, align 8, !tbaa !73
  %i.am = ptrtoint ptr %i.ak to i64
  %i.an = ptrtoint ptr %i.al to i64
  %i.ao = sub i64 %i.am, %i.an
  %i.ap = ashr exact i64 %i.ao, 3                 ; 4 uses
  %i.aq = urem i64 %.01923.i17, %i.ap
  %i.ar = udiv i64 %.01923.i17, %i.ap
  %i.as = urem i64 %.01724.i16, %i.ap
  %i.at = udiv i64 %.01724.i16, %i.ap
  %.not.not.not.i18 = icmp ult i64 %i.aq, %i.as
  br i1 %.not.not.not.i18, label %_ZNK5faiss14ParameterSpace14combination_geEmm.exit21, label %bb.d

bb.d:                                             ; preds = %.lr.ph.i14
  %i.au = add nuw i64 %.01625.i15, 1              ; 2 uses
  %exitcond.not.i19 = icmp eq i64 %i.au, %umax.i14
  br i1 %exitcond.not.i19, label %.loopexit, label %.lr.ph.i14, !llvm.loop !245

.loopexit:                                        ; preds = %bb.d, %_ZNK5faiss14ParameterSpace14combination_geEmm.exit
  %i.av = load double, ptr %2, align 8, !tbaa !217 ; 2 uses
  %i.aw = load double, ptr %3, align 8, !tbaa !71
  %i.ax = fcmp olt double %i.av, %i.aw
  br i1 %i.ax, label %bb.e, label %_ZNK5faiss14ParameterSpace14combination_geEmm.exit21

bb.e:                                             ; preds = %.loopexit
  store double %i.av, ptr %3, align 8, !tbaa !71
  br label %_ZNK5faiss14ParameterSpace14combination_geEmm.exit21

_ZNK5faiss14ParameterSpace14combination_geEmm.exit21: ; preds = %.lr.ph.i14, %.loopexit, %bb.e
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZNK5faiss14ParameterSpace7exploreEPNS_5IndexEmPKfRKNS_17AutoTuneCriterionEPNS_15OperatingPointsE(ptr noundef nonnull align 8 dereferenceable(64) %0, ptr noundef %1, i64 noundef %2, ptr noundef %3, ptr noundef nonnull align 8 dereferenceable(80) %4, ptr noundef %5) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 6 uses
  %i.b = alloca i64, align 8                      ; 7 uses
  %i.c = alloca ptr, align 8                      ; 4 uses
  %6 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %7 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %8 = alloca %"class.std::__cxx11::basic_string", align 8 ; 7 uses
  %9 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %10 = alloca %"class.std::__cxx11::basic_string", align 8 ; 7 uses
  %11 = alloca %"class.std::vector.0", align 8    ; 12 uses
  %12 = alloca %"class.std::vector", align 8      ; 13 uses
  %13 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  store ptr %1, ptr %i.a, align 8, !tbaa !311
  store i64 %2, ptr %i.b, align 8, !tbaa !29
  store ptr %3, ptr %i.c, align 8, !tbaa !374
  %i.d = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.e = load i64, ptr %i.d, align 8, !tbaa !25
  %i.f = icmp eq i64 %2, %i.e
  br i1 %i.f, label %bb.j, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #17
  %i.g = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 4 uses
  store ptr %i.g, ptr %6, align 8, !tbaa !33
  %i.h = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 2 uses
  store i64 0, ptr %i.h, align 8, !tbaa !36
  store i8 0, ptr %i.g, align 8, !tbaa !38
  %i.i = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef null, i64 noundef 0, ptr noundef nonnull @.str.52, ptr noundef nonnull @.str.53) #17 ; 2 uses
  %i.j = icmp sgt i32 %i.i, 0
  br i1 %i.j, label %bb.c, label %bb.f

bb.c:                                             ; preds = %bb.b
  %i.k = zext nneg i32 %i.i to i64                ; 2 uses
  %i.l = add nuw nsw i64 %i.k, 1
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6resizeEm(ptr noundef nonnull align 8 dereferenceable(32) %6, i64 noundef %i.l)
          to label %bb.d unwind label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.m = load ptr, ptr %6, align 8, !tbaa !39
  %i.n = load i64, ptr %i.h, align 8, !tbaa !36
  %i.o = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull %i.m, i64 noundef %i.n, ptr noundef nonnull @.str.52, ptr noundef nonnull @.str.53) #17 ; 0 uses
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6resizeEm(ptr noundef nonnull align 8 dereferenceable(32) %6, i64 noundef %i.k)
          to label %bb.f unwind label %bb.e

bb.e:                                             ; preds = %bb.g, %bb.d, %bb.c
  %i.p = landingpad { ptr, i32 }
          cleanup
  br label %bb.i

bb.f:                                             ; preds = %bb.d, %bb.b
  %i.q = call ptr @__cxa_allocate_exception(i64 40) #17 ; 3 uses
  invoke void @_ZN5faiss14FaissExceptionC1ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSA_i(ptr noundef nonnull align 8 dereferenceable(40) %i.q, ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef nonnull @__PRETTY_FUNCTION__._ZNK5faiss14ParameterSpace7exploreEPNS_5IndexEmPKfRKNS_17AutoTuneCriterionEPNS_15OperatingPointsE, ptr noundef nonnull @.str.2, i32 noundef 751)
          to label %bb.g unwind label %bb.h

bb.g:                                             ; preds = %bb.f
  invoke void @__cxa_throw(ptr nonnull %i.q, ptr nonnull @_ZTIN5faiss14FaissExceptionE, ptr nonnull @_ZN5faiss14FaissExceptionD2Ev) #35
          to label %bb.ch unwind label %bb.e

bb.h:                                             ; preds = %bb.f
  %i.r = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_free_exception(ptr nonnull %i.q) #17
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.e
  %.pn = phi { ptr, i32 } [ %i.p, %bb.e ], [ %i.r, %bb.h ]
  %i.s = load ptr, ptr %6, align 8, !tbaa !39     ; 2 uses
  %i.t = icmp eq ptr %i.s, %i.g
  br i1 %i.t, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.i
  %i.u = load i64, ptr %i.g, align 8, !tbaa !38
  %i.v = add i64 %i.u, 1
  call void @_ZdlPvm(ptr noundef %i.s, i64 noundef %i.v) #36
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #17
  br label %_ZNSt6vectorIlSaIlEED2Ev.exit181

bb.j:                                             ; preds = %bb.a
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 6 uses
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 6 uses
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !66   ; 2 uses
  %i.z = load ptr, ptr %i.w, align 8, !tbaa !83   ; 5 uses
  %.not.i = icmp eq ptr %i.y, %i.z
  br i1 %.not.i, label %_ZNK5faiss14ParameterSpace14n_combinationsEv.exit.thread, label %.lr.ph.preheader.i

.lr.ph.preheader.i:                               ; preds = %bb.j
  %i.aa = ptrtoint ptr %i.y to i64
  %i.ab = ptrtoint ptr %i.z to i64
  %i.ac = sub i64 %i.aa, %i.ab
  %i.ad = sdiv i64 %i.ac, 56                      ; 2 uses
  %umax.i = tail call i64 @llvm.umax.i64(i64 %i.ad, i64 1) ; 3 uses
  %xtraiter = and i64 %umax.i, 1
  %14 = icmp ult i64 %i.ad, 2
  br i1 %14, label %.lr.ph.i.epil.preheader, label %.lr.ph.preheader.i.new

.lr.ph.preheader.i.new:                           ; preds = %.lr.ph.preheader.i
  %unroll_iter = and i64 %umax.i, -2
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i, %.lr.ph.preheader.i.new
  %.07.i = phi i64 [ 0, %.lr.ph.preheader.i.new ], [ %i.ay, %.lr.ph.i ] ; 3 uses
  %.056.i = phi i64 [ 1, %.lr.ph.preheader.i.new ], [ %i.ax, %.lr.ph.i ]
  %niter = phi i64 [ 0, %.lr.ph.preheader.i.new ], [ %niter.next.1, %.lr.ph.i ]
  %i.ae = getelementptr inbounds nuw [56 x i8], ptr %i.z, i64 %.07.i ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 32
  %i.ag = getelementptr inbounds nuw i8, ptr %i.ae, i64 40
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !67
  %i.ai = load ptr, ptr %i.af, align 8, !tbaa !73
  %i.aj = ptrtoint ptr %i.ah to i64
  %i.ak = ptrtoint ptr %i.ai to i64
  %i.al = sub i64 %i.aj, %i.ak
  %i.am = ashr exact i64 %i.al, 3
  %i.an = mul i64 %i.am, %.056.i
  %i.ao = getelementptr inbounds nuw [56 x i8], ptr %i.z, i64 %.07.i ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 88
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ao, i64 96
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !67
  %i.as = load ptr, ptr %i.ap, align 8, !tbaa !73
  %i.at = ptrtoint ptr %i.ar to i64
  %i.au = ptrtoint ptr %i.as to i64
  %i.av = sub i64 %i.at, %i.au
  %i.aw = ashr exact i64 %i.av, 3
  %i.ax = mul i64 %i.aw, %i.an                    ; 3 uses
  %i.ay = add nuw i64 %.07.i, 2                   ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %_ZNK5faiss14ParameterSpace14n_combinationsEv.exit.unr-lcssa, label %.lr.ph.i, !llvm.loop !242

_ZNK5faiss14ParameterSpace14n_combinationsEv.exit.unr-lcssa: ; preds = %.lr.ph.i
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %_ZNK5faiss14ParameterSpace14n_combinationsEv.exit, label %.lr.ph.i.epil.preheader

.lr.ph.i.epil.preheader:                          ; preds = %_ZNK5faiss14ParameterSpace14n_combinationsEv.exit.unr-lcssa, %.lr.ph.preheader.i
  %.07.i.epil.init = phi i64 [ 0, %.lr.ph.preheader.i ], [ %i.ay, %_ZNK5faiss14ParameterSpace14n_combinationsEv.exit.unr-lcssa ]
  %.056.i.epil.init = phi i64 [ 1, %.lr.ph.preheader.i ], [ %i.ax, %_ZNK5faiss14ParameterSpace14n_combinationsEv.exit.unr-lcssa ]
  %lcmp.mod575 = trunc i64 %umax.i to i1
  tail call void @llvm.assume(i1 %lcmp.mod575)
  %i.az = getelementptr inbounds nuw [56 x i8], ptr %i.z, i64 %.07.i.epil.init ; 2 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %i.az, i64 32
  %i.bb = getelementptr inbounds nuw i8, ptr %i.az, i64 40
  %i.bc = load ptr, ptr %i.bb, align 8, !tbaa !67
  %i.bd = load ptr, ptr %i.ba, align 8, !tbaa !73
  %i.be = ptrtoint ptr %i.bc to i64
  %i.bf = ptrtoint ptr %i.bd to i64
  %i.bg = sub i64 %i.be, %i.bf
  %i.bh = ashr exact i64 %i.bg, 3
  %i.bi = mul i64 %i.bh, %.056.i.epil.init
  br label %_ZNK5faiss14ParameterSpace14n_combinationsEv.exit

_ZNK5faiss14ParameterSpace14n_combinationsEv.exit: ; preds = %_ZNK5faiss14ParameterSpace14n_combinationsEv.exit.unr-lcssa, %.lr.ph.i.epil.preheader
  %.lcssa573 = phi i64 [ %i.ax, %_ZNK5faiss14ParameterSpace14n_combinationsEv.exit.unr-lcssa ], [ %i.bi, %.lr.ph.i.epil.preheader ] ; 6 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %0, i64 36
  %i.bk = load i32, ptr %i.bj, align 4, !tbaa !238 ; 2 uses
  %i.bl = icmp eq i32 %i.bk, 0
  br i1 %i.bl, label %.preheader, label %bb.ag

_ZNK5faiss14ParameterSpace14n_combinationsEv.exit.thread: ; preds = %bb.j
  %i.bm = getelementptr inbounds nuw i8, ptr %0, i64 36
  %i.bn = load i32, ptr %i.bm, align 4, !tbaa !238
  %i.bo = icmp eq i32 %i.bn, 0
  br i1 %i.bo, label %.lr.ph347, label %_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i

.preheader:                                       ; preds = %_ZNK5faiss14ParameterSpace14n_combinationsEv.exit
  %.not350 = icmp eq i64 %.lcssa573, 0
  br i1 %.not350, label %.loopexit, label %.lr.ph347

.lr.ph347:                                        ; preds = %_ZNK5faiss14ParameterSpace14n_combinationsEv.exit.thread, %.preheader
  %.05.lcssa.i444447 = phi i64 [ %.lcssa573, %.preheader ], [ 1, %_ZNK5faiss14ParameterSpace14n_combinationsEv.exit.thread ] ; 2 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 4 uses
  %i.br = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.bs = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 2 uses
  br label %bb.k

bb.k:                                             ; preds = %.lr.ph347, %_ZNSt6vectorIlSaIlEED2Ev.exit
  %.099346 = phi i64 [ 0, %.lr.ph347 ], [ %i.fb, %_ZNSt6vectorIlSaIlEED2Ev.exit ] ; 6 uses
  %i.bt = load ptr, ptr %i.a, align 8, !tbaa !311
  %i.bu = load ptr, ptr %i.x, align 8, !tbaa !66
  %i.bv = load ptr, ptr %i.w, align 8, !tbaa !83  ; 2 uses
  %.not.i.i = icmp eq ptr %i.bu, %i.bv
  br i1 %.not.i.i, label %_ZNK5faiss14ParameterSpace20set_index_parametersEPNS_5IndexEm.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.k, %.lr.ph.i.i
  %i.bw = phi ptr [ %i.cp, %.lr.ph.i.i ], [ %i.bv, %bb.k ]
  %.015.i.i = phi i64 [ %i.ch, %.lr.ph.i.i ], [ %.099346, %bb.k ] ; 2 uses
  %.01214.i.i = phi i64 [ %i.cn, %.lr.ph.i.i ], [ 0, %bb.k ] ; 2 uses
  %i.bx = getelementptr inbounds nuw [56 x i8], ptr %i.bw, i64 %.01214.i.i ; 3 uses
  %i.by = getelementptr inbounds nuw i8, ptr %i.bx, i64 32
  %i.bz = getelementptr inbounds nuw i8, ptr %i.bx, i64 40
  %i.ca = load ptr, ptr %i.bz, align 8, !tbaa !67
  %i.cb = load ptr, ptr %i.by, align 8, !tbaa !73 ; 2 uses
  %i.cc = ptrtoint ptr %i.ca to i64
  %i.cd = ptrtoint ptr %i.cb to i64
  %i.ce = sub i64 %i.cc, %i.cd
  %i.cf = ashr exact i64 %i.ce, 3                 ; 2 uses
  %i.cg = urem i64 %.015.i.i, %i.cf
  %i.ch = udiv i64 %.015.i.i, %i.cf
  %i.ci = getelementptr inbounds nuw [8 x i8], ptr %i.cb, i64 %i.cg
  %i.cj = load double, ptr %i.ci, align 8, !tbaa !71
  %i.ck = load ptr, ptr %0, align 8, !tbaa !40
  %i.cl = getelementptr inbounds nuw i8, ptr %i.ck, i64 8
  %i.cm = load ptr, ptr %i.cl, align 8
  call void %i.cm(ptr noundef nonnull align 8 dereferenceable(64) %0, ptr noundef %i.bt, ptr noundef nonnull align 8 dereferenceable(32) %i.bx, double noundef %i.cj), !inline_history !375
  %i.cn = add nuw i64 %.01214.i.i, 1              ; 2 uses
  %i.co = load ptr, ptr %i.x, align 8, !tbaa !66
  %i.cp = load ptr, ptr %i.w, align 8, !tbaa !83  ; 2 uses
  %i.cq = ptrtoint ptr %i.co to i64
  %i.cr = ptrtoint ptr %i.cp to i64
  %i.cs = sub i64 %i.cq, %i.cr
  %i.ct = sdiv exact i64 %i.cs, 56
  %i.cu = icmp ult i64 %i.cn, %i.ct
  br i1 %i.cu, label %.lr.ph.i.i, label %_ZNK5faiss14ParameterSpace20set_index_parametersEPNS_5IndexEm.exit, !llvm.loop !263

_ZNK5faiss14ParameterSpace20set_index_parametersEPNS_5IndexEm.exit: ; preds = %.lr.ph.i.i, %bb.k
  %i.cv = load i64, ptr %i.b, align 8, !tbaa !29
  %i.cw = load i64, ptr %i.bp, align 8, !tbaa !26
  %i.cx = mul i64 %i.cw, %i.cv                    ; 7 uses
  %i.cy = icmp ugt i64 %i.cx, 1152921504606846975
  br i1 %i.cy, label %.noexc, label %_ZNSt6vectorIlSaIlEE17_S_check_init_lenEmRKS0_.exit.i

.noexc:                                           ; preds = %_ZNK5faiss14ParameterSpace20set_index_parametersEPNS_5IndexEm.exit
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.62) #35
  unreachable

_ZNSt6vectorIlSaIlEE17_S_check_init_lenEmRKS0_.exit.i: ; preds = %_ZNK5faiss14ParameterSpace20set_index_parametersEPNS_5IndexEm.exit
  %.not.i.i.i.i = icmp eq i64 %i.cx, 0
  br i1 %.not.i.i.i.i, label %_ZNSt6vectorIfSaIfEEC2EmRKS0_.exit, label %.noexc162

.noexc162:                                        ; preds = %_ZNSt6vectorIlSaIlEE17_S_check_init_lenEmRKS0_.exit.i
  %i.cz = shl nuw nsw i64 %i.cx, 3
  %i.da = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.cz) #37 ; 6 uses
  %i.db = getelementptr inbounds nuw [8 x i8], ptr %i.da, i64 %i.cx ; 3 uses
  store i64 0, ptr %i.da, align 8, !tbaa !29
  %i.dc = add nsw i64 %i.cx, -1                   ; 3 uses
  %i.dd = icmp eq i64 %i.dc, 0                    ; 2 uses
  br i1 %i.dd, label %bb.l, label %_ZSt6fill_nIPlmlET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i

_ZSt6fill_nIPlmlET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i: ; preds = %.noexc162
  %i.de = getelementptr i8, ptr %i.da, i64 8
  %.idx.i.i.i.i.i.i.i = shl nuw nsw i64 %i.dc, 3
  call void @llvm.memset.p0.i64(ptr align 8 %i.de, i8 0, i64 %.idx.i.i.i.i.i.i.i, i1 false), !tbaa !29
  br label %bb.l

bb.l:                                             ; preds = %.noexc162, %_ZSt6fill_nIPlmlET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i
  %i.df = shl nuw nsw i64 %i.cx, 2
  %i.dg = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.df) #37
          to label %.noexc167 unwind label %_ZNSt6vectorIfSaIfEED2Ev.exit179.thread ; 5 uses

.noexc167:                                        ; preds = %bb.l
  %i.dh = getelementptr inbounds nuw [4 x i8], ptr %i.dg, i64 %i.cx ; 2 uses
  store float 0.000000e+00, ptr %i.dg, align 4, !tbaa !192
  br i1 %i.dd, label %_ZNSt6vectorIfSaIfEEC2EmRKS0_.exit, label %_ZSt6fill_nIPfmfET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i

_ZSt6fill_nIPfmfET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i: ; preds = %.noexc167
  %i.di = getelementptr i8, ptr %i.dg, i64 4
  %.idx.i.i.i.i.i.i.i164 = shl nuw nsw i64 %i.dc, 2
  call void @llvm.memset.p0.i64(ptr align 4 %i.di, i8 0, i64 %.idx.i.i.i.i.i.i.i164, i1 false), !tbaa !192
  br label %_ZNSt6vectorIfSaIfEEC2EmRKS0_.exit

_ZNSt6vectorIfSaIfEEC2EmRKS0_.exit:               ; preds = %_ZSt6fill_nIPfmfET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i, %.noexc167, %_ZNSt6vectorIlSaIlEE17_S_check_init_lenEmRKS0_.exit.i
  %.sroa.0259.0274 = phi ptr [ %i.da, %_ZSt6fill_nIPfmfET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i ], [ %i.da, %.noexc167 ], [ null, %_ZNSt6vectorIlSaIlEE17_S_check_init_lenEmRKS0_.exit.i ] ; 7 uses
  %.sroa.11264.0271 = phi ptr [ %i.db, %_ZSt6fill_nIPfmfET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i ], [ %i.db, %.noexc167 ], [ null, %_ZNSt6vectorIlSaIlEE17_S_check_init_lenEmRKS0_.exit.i ] ; 2 uses
  %.sroa.11.0 = phi ptr [ %i.dh, %_ZSt6fill_nIPfmfET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i ], [ %i.dh, %.noexc167 ], [ null, %_ZNSt6vectorIlSaIlEE17_S_check_init_lenEmRKS0_.exit.i ] ; 2 uses
  %.sroa.0253.0 = phi ptr [ %i.dg, %_ZSt6fill_nIPfmfET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i ], [ %i.dg, %.noexc167 ], [ null, %_ZNSt6vectorIlSaIlEE17_S_check_init_lenEmRKS0_.exit.i ] ; 8 uses
  %i.dj = invoke noundef double @_ZN5faiss12getmillisecsEv()
          to label %bb.m unwind label %bb.u

bb.m:                                             ; preds = %_ZNSt6vectorIfSaIfEEC2EmRKS0_.exit
  %i.dk = load ptr, ptr %i.a, align 8, !tbaa !311 ; 2 uses
  %i.dl = load i64, ptr %i.b, align 8, !tbaa !29
  %i.dm = load ptr, ptr %i.c, align 8, !tbaa !374
  %i.dn = load i64, ptr %i.bp, align 8, !tbaa !26
  %i.do = load ptr, ptr %i.dk, align 8, !tbaa !40
  %i.dp = getelementptr inbounds nuw i8, ptr %i.do, i64 72
  %i.dq = load ptr, ptr %i.dp, align 8
  invoke void %i.dq(ptr noundef nonnull align 8 dereferenceable(36) %i.dk, i64 noundef %i.dl, ptr noundef %i.dm, i64 noundef %i.dn, ptr noundef %.sroa.0253.0, ptr noundef %.sroa.0259.0274, ptr noundef null)
          to label %bb.n unwind label %bb.u

bb.n:                                             ; preds = %bb.m
  %i.dr = invoke noundef double @_ZN5faiss12getmillisecsEv()
          to label %bb.o unwind label %bb.v

bb.o:                                             ; preds = %bb.n
  %i.ds = fsub double %i.dr, %i.dj
  %i.dt = fdiv double %i.ds, 1.000000e+03         ; 2 uses
  %i.du = load ptr, ptr %4, align 8, !tbaa !40
  %i.dv = load ptr, ptr %i.du, align 8
  %i.dw = invoke noundef double %i.dv(ptr noundef nonnull align 8 dereferenceable(80) %4, ptr noundef %.sroa.0253.0, ptr noundef %.sroa.0259.0274)
          to label %bb.p unwind label %bb.w       ; 2 uses

bb.p:                                             ; preds = %bb.o
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #17
  invoke void @_ZNK5faiss14ParameterSpace16combination_nameB5cxx11Em(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %7, ptr noundef nonnull align 8 dereferenceable(64) %0, i64 noundef %.099346)
          to label %bb.q unwind label %bb.x

bb.q:                                             ; preds = %bb.p
  %i.dx = invoke noundef zeroext i1 @_ZN5faiss15OperatingPoints3addEddRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEm(ptr noundef nonnull align 8 dereferenceable(48) %5, double noundef %i.dw, double noundef %i.dt, ptr noundef nonnull align 8 dereferenceable(32) %7, i64 noundef %.099346)
          to label %bb.r unwind label %bb.y

bb.r:                                             ; preds = %bb.q
  %i.dy = load ptr, ptr %7, align 8, !tbaa !39    ; 2 uses
  %i.dz = icmp eq ptr %i.dy, %i.bq
  br i1 %i.dz, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit170, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i168

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i168: ; preds = %bb.r
  %i.ea = load i64, ptr %i.bq, align 8, !tbaa !38
  %i.eb = add i64 %i.ea, 1
  call void @_ZdlPvm(ptr noundef %i.dy, i64 noundef %i.eb) #36
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit170

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit170: ; preds = %bb.r, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i168
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #17
  %i.ec = load i32, ptr %i.br, align 8, !tbaa !91
  %.not151 = icmp eq i32 %i.ec, 0
  br i1 %.not151, label %bb.aa, label %bb.s

bb.s:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit170
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #17
  invoke void @_ZNK5faiss14ParameterSpace16combination_nameB5cxx11Em(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %8, ptr noundef nonnull align 8 dereferenceable(64) %0, i64 noundef %.099346)
          to label %bb.t unwind label %bb.z

bb.t:                                             ; preds = %bb.s
  %i.ed = load ptr, ptr %8, align 8, !tbaa !39
  %i.ee = select i1 %i.dx, ptr @.str.20, ptr @.str.9
  %i.ef = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.54, i64 noundef %.099346, i64 noundef %.05.lcssa.i444447, ptr noundef %i.ed, double noundef %i.dw, double noundef %i.dt, ptr noundef nonnull %i.ee) ; 0 uses
  %i.eg = load ptr, ptr %8, align 8, !tbaa !39    ; 2 uses
  %i.eh = icmp eq ptr %i.eg, %i.bs
  br i1 %i.eh, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit173, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i171

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i171: ; preds = %bb.t
  %i.ei = load i64, ptr %i.bs, align 8, !tbaa !38
  %i.ej = add i64 %i.ei, 1
  call void @_ZdlPvm(ptr noundef %i.eg, i64 noundef %i.ej) #36
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit173

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit173: ; preds = %bb.t, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i171
end_hunk_2
begin_hunk_3_@_ZNK5faiss14ParameterSpace7exploreEPNS_5IndexEmPKfRKNS_17AutoTuneCriterionEPNS_15OperatingPointsE:bb.a
  %i.fq = add nuw nsw i64 %i.fp, 1
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6resizeEm(ptr noundef nonnull align 8 dereferenceable(32) %9, i64 noundef %i.fq)
          to label %bb.aj unwind label %bb.ak

bb.aj:                                            ; preds = %bb.ai
  %i.fr = load ptr, ptr %9, align 8, !tbaa !39
  %i.fs = load i64, ptr %i.fm, align 8, !tbaa !36
  %i.ft = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull %i.fr, i64 noundef %i.fs, ptr noundef nonnull @.str.12, ptr noundef nonnull @.str.55) #17 ; 0 uses
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6resizeEm(ptr noundef nonnull align 8 dereferenceable(32) %9, i64 noundef %i.fp)
          to label %bb.al unwind label %bb.ak

bb.ak:                                            ; preds = %bb.am, %bb.aj, %bb.ai
  %i.fu = landingpad { ptr, i32 }
          cleanup
  br label %bb.ao

bb.al:                                            ; preds = %bb.aj, %bb.ah
  %i.fv = call ptr @__cxa_allocate_exception(i64 40) #17 ; 3 uses
  invoke void @_ZN5faiss14FaissExceptionC1ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSA_i(ptr noundef nonnull align 8 dereferenceable(40) %i.fv, ptr noundef nonnull align 8 dereferenceable(32) %9, ptr noundef nonnull @__PRETTY_FUNCTION__._ZNK5faiss14ParameterSpace7exploreEPNS_5IndexEmPKfRKNS_17AutoTuneCriterionEPNS_15OperatingPointsE, ptr noundef nonnull @.str.2, i32 noundef 787)
          to label %bb.am unwind label %bb.an

bb.am:                                            ; preds = %bb.al
  invoke void @__cxa_throw(ptr nonnull %i.fv, ptr nonnull @_ZTIN5faiss14FaissExceptionE, ptr nonnull @_ZN5faiss14FaissExceptionD2Ev) #35
          to label %bb.ch unwind label %bb.ak

bb.an:                                            ; preds = %bb.al
  %i.fw = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_free_exception(ptr nonnull %i.fv) #17
  br label %bb.ao

bb.ao:                                            ; preds = %bb.an, %bb.ak
  %.pn133 = phi { ptr, i32 } [ %i.fu, %bb.ak ], [ %i.fw, %bb.an ]
  %i.fx = load ptr, ptr %9, align 8, !tbaa !39    ; 2 uses
  %i.fy = icmp eq ptr %i.fx, %i.fl
  br i1 %i.fy, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit184, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i182

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i182: ; preds = %bb.ao
  %i.fz = load i64, ptr %i.fl, align 8, !tbaa !38
  %i.ga = add i64 %i.fz, 1
  call void @_ZdlPvm(ptr noundef %i.fx, i64 noundef %i.ga) #36
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit184

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit184: ; preds = %bb.ao, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i182
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #17
  br label %_ZNSt6vectorIlSaIlEED2Ev.exit181

bb.ap:                                            ; preds = %bb.ag
  %i.gb = icmp ugt i64 %.lcssa573, 2305843009213693951
  br i1 %i.gb, label %.noexc188, label %_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i

.noexc188:                                        ; preds = %bb.ap
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.62) #35
  unreachable

_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i: ; preds = %_ZNK5faiss14ParameterSpace14n_combinationsEv.exit.thread, %bb.ap
  %.05.lcssa.i443451457 = phi i64 [ %.lcssa573, %bb.ap ], [ 1, %_ZNK5faiss14ParameterSpace14n_combinationsEv.exit.thread ] ; 8 uses
  %spec.select452456 = phi i64 [ %spec.select, %bb.ap ], [ 1, %_ZNK5faiss14ParameterSpace14n_combinationsEv.exit.thread ] ; 2 uses
  %.not.i.i.i.i185 = icmp ne i64 %.05.lcssa.i443451457, 0
  tail call void @llvm.assume(i1 %.not.i.i.i.i185)
  %i.gc = shl nuw nsw i64 %.05.lcssa.i443451457, 2 ; 3 uses
  %i.gd = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.gc) #37 ; 9 uses
  store i32 0, ptr %i.gd, align 4, !tbaa !193
  %i.ge = add nsw i64 %.05.lcssa.i443451457, -1   ; 2 uses
  %i.gf = icmp eq i64 %i.ge, 0
  br i1 %i.gf, label %.loopexit301, label %bb.aq

bb.aq:                                            ; preds = %_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i
  %i.gg = getelementptr i8, ptr %i.gd, i64 4      ; 2 uses
  %.idx.i.i.i.i.i.i.i186 = shl nuw nsw i64 %i.ge, 2
  tail call void @llvm.memset.p0.i64(ptr align 4 %i.gg, i8 0, i64 %.idx.i.i.i.i.i.i.i186, i1 false), !tbaa !193
  store i32 0, ptr %i.gd, align 4, !tbaa !193
  %i.gh = trunc i64 %.05.lcssa.i443451457 to i32
  %i.gi = add i32 %i.gh, -1
  store i32 %i.gi, ptr %i.gg, align 4, !tbaa !193
  %i.gj = getelementptr inbounds nuw i8, ptr %i.gd, i64 8
  %i.gk = add nsw i64 %.05.lcssa.i443451457, -2
  invoke void @_ZN5faiss9rand_permEPiml(ptr noundef nonnull %i.gj, i64 noundef %i.gk, i64 noundef 1234)
          to label %.preheader300 unwind label %bb.ar

.preheader300:                                    ; preds = %bb.aq
  %i.gl = icmp samesign ugt i64 %.05.lcssa.i443451457, 2
  br i1 %i.gl, label %.lr.ph.preheader, label %.loopexit301

.lr.ph.preheader:                                 ; preds = %.preheader300
  %i.gm = add nsw i64 %.05.lcssa.i443451457, -2   ; 3 uses
  %min.iters.check = icmp ult i64 %i.gm, 8
  br i1 %min.iters.check, label %.lr.ph.preheader572, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.preheader
  %n.vec = and i64 %i.gm, -8                      ; 3 uses
  %i.gn = or disjoint i64 %n.vec, 2
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.go = getelementptr inbounds nuw [4 x i8], ptr %i.gd, i64 %index ; 2 uses
  %i.gp = getelementptr inbounds nuw i8, ptr %i.go, i64 8 ; 2 uses
  %i.gq = getelementptr inbounds nuw i8, ptr %i.go, i64 24 ; 2 uses
  %wide.load = load <4 x i32>, ptr %i.gp, align 4, !tbaa !193
  %wide.load534 = load <4 x i32>, ptr %i.gq, align 4, !tbaa !193
  %i.gr = add nsw <4 x i32> %wide.load, splat (i32 1)
  %i.gs = add nsw <4 x i32> %wide.load534, splat (i32 1)
  store <4 x i32> %i.gr, ptr %i.gp, align 4, !tbaa !193
  store <4 x i32> %i.gs, ptr %i.gq, align 4, !tbaa !193
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.gt = icmp eq i64 %index.next, %n.vec
  br i1 %i.gt, label %middle.block, label %vector.body, !llvm.loop !377

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.gm, %n.vec
  br i1 %cmp.n, label %.loopexit301, label %.lr.ph.preheader572

.lr.ph.preheader572:                              ; preds = %.lr.ph.preheader, %middle.block
  %.096337.ph = phi i64 [ 2, %.lr.ph.preheader ], [ %i.gn, %middle.block ]
  br label %.lr.ph

bb.ar:                                            ; preds = %bb.aq
  %i.gu = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit235

.lr.ph:                                           ; preds = %.lr.ph.preheader572, %.lr.ph
  %.096337 = phi i64 [ %i.gy, %.lr.ph ], [ %.096337.ph, %.lr.ph.preheader572 ] ; 2 uses
  %i.gv = getelementptr inbounds nuw [4 x i8], ptr %i.gd, i64 %.096337 ; 2 uses
  %i.gw = load i32, ptr %i.gv, align 4, !tbaa !193
  %i.gx = add nsw i32 %i.gw, 1
  store i32 %i.gx, ptr %i.gv, align 4, !tbaa !193
  %i.gy = add nuw i64 %.096337, 1                 ; 2 uses
  %exitcond.not = icmp eq i64 %i.gy, %.05.lcssa.i443451457
  br i1 %exitcond.not, label %.loopexit301, label %.lr.ph, !llvm.loop !380

.loopexit301:                                     ; preds = %.lr.ph, %middle.block, %_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i, %.preheader300
  %i.gz = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 3 uses
  %i.ha = getelementptr inbounds nuw i8, ptr %10, i64 16 ; 2 uses
  %i.hb = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.hc = getelementptr inbounds nuw i8, ptr %5, i64 32
  %i.hd = getelementptr inbounds nuw i8, ptr %5, i64 24
  %i.he = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.hf = getelementptr inbounds nuw i8, ptr %11, i64 16 ; 3 uses
  %i.hg = getelementptr inbounds nuw i8, ptr %11, i64 8
  %i.hh = getelementptr inbounds nuw i8, ptr %12, i64 16 ; 3 uses
  %i.hi = getelementptr inbounds nuw i8, ptr %12, i64 8
  %i.hj = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.hk = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.hl = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.hm = getelementptr inbounds nuw i8, ptr %13, i64 16 ; 4 uses
  br label %bb.as

_ZNSt6vectorIiSaIiEED2Ev.exit:                    ; preds = %bb.cd
  call void @_ZdlPvm(ptr noundef nonnull %i.gd, i64 noundef %i.gc) #36
  br label %.loopexit

bb.as:                                            ; preds = %.loopexit301, %bb.cd
  %.095345 = phi i64 [ 0, %.loopexit301 ], [ %i.pm, %bb.cd ] ; 3 uses
  %i.hn = getelementptr inbounds nuw [4 x i8], ptr %i.gd, i64 %.095345
  %i.ho = load i32, ptr %i.hn, align 4, !tbaa !193
  %i.hp = sext i32 %i.ho to i64                   ; 7 uses
  %i.hq = load i32, ptr %i.gz, align 8, !tbaa !91
  %.not = icmp eq i32 %i.hq, 0
  br i1 %.not, label %bb.aw, label %bb.at

bb.at:                                            ; preds = %bb.as
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #17
  invoke void @_ZNK5faiss14ParameterSpace16combination_nameB5cxx11Em(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %10, ptr noundef nonnull align 8 dereferenceable(64) %0, i64 noundef %i.hp)
          to label %bb.au unwind label %bb.av

bb.au:                                            ; preds = %bb.at
  %i.hr = load ptr, ptr %10, align 8, !tbaa !39
  %i.hs = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.56, i64 noundef %.095345, i64 noundef %spec.select452456, i64 noundef %i.hp, ptr noundef %i.hr) ; 0 uses
  %i.ht = load ptr, ptr %10, align 8, !tbaa !39   ; 2 uses
  %i.hu = icmp eq ptr %i.ht, %i.ha
  br i1 %i.hu, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit193, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i191

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i191: ; preds = %bb.au
  %i.hv = load i64, ptr %i.ha, align 8, !tbaa !38
  %i.hw = add i64 %i.hv, 1
  call void @_ZdlPvm(ptr noundef %i.ht, i64 noundef %i.hw) #36
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit193

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit193: ; preds = %bb.au, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i191
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #17
  br label %bb.aw

bb.av:                                            ; preds = %bb.at
  %i.hx = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #17
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit235

bb.aw:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit193, %bb.as
  %i.hy = load ptr, ptr %i.hb, align 8, !tbaa !199 ; 2 uses
  %i.hz = load ptr, ptr %5, align 8, !tbaa !196   ; 3 uses
  %.not348 = icmp eq ptr %i.hy, %i.hz
  br i1 %.not348, label %._crit_edge, label %.lr.ph341

.lr.ph341:                                        ; preds = %bb.aw
  %i.ia = ptrtoint ptr %i.hy to i64
  %i.ib = ptrtoint ptr %i.hz to i64
  %i.ic = sub i64 %i.ia, %i.ib
  %i.id = sdiv i64 %i.ic, 56
  %i.ie = load ptr, ptr %i.x, align 8, !tbaa !66  ; 2 uses
  %i.if = load ptr, ptr %i.w, align 8, !tbaa !83  ; 4 uses
  %i.ig = icmp eq ptr %i.ie, %i.if                ; 2 uses
  %i.ih = ptrtoint ptr %i.ie to i64
  %i.ii = ptrtoint ptr %i.if to i64
  %i.ij = sub i64 %i.ih, %i.ii
  %i.ik = sdiv i64 %i.ij, 56
  %umax.i.i = call i64 @llvm.umax.i64(i64 %i.ik, i64 1) ; 2 uses
  %umax = call i64 @llvm.umax.i64(i64 %i.id, i64 1)
  br label %bb.ay

._crit_edge:                                      ; preds = %_ZNK5faiss14ParameterSpace13update_boundsEmRKNS_14OperatingPointEPdS4_.exit, %bb.aw
  %.0266.lcssa = phi double [ 0.000000e+00, %bb.aw ], [ %.1267, %_ZNK5faiss14ParameterSpace13update_boundsEmRKNS_14OperatingPointEPdS4_.exit ] ; 3 uses
  %.0.lcssa = phi double [ 1.000000e+00, %bb.aw ], [ %.1, %_ZNK5faiss14ParameterSpace13update_boundsEmRKNS_14OperatingPointEPdS4_.exit ] ; 3 uses
  %i.il = load ptr, ptr %i.hc, align 8, !tbaa !219 ; 2 uses
  %i.im = getelementptr inbounds i8, ptr %i.il, i64 -56
  %i.in = load double, ptr %i.im, align 8, !tbaa !217
  %i.io = fcmp ogt double %.0.lcssa, %i.in
  br i1 %i.io, label %_ZNK5faiss15OperatingPoints10t_for_perfEd.exit, label %bb.ax

bb.ax:                                            ; preds = %._crit_edge
  %i.ip = load ptr, ptr %i.hd, align 8, !tbaa !196 ; 3 uses
  %i.iq = ptrtoint ptr %i.il to i64
  %i.ir = ptrtoint ptr %i.ip to i64
  %i.is = sub i64 %i.iq, %i.ir
  %i.it = sdiv exact i64 %i.is, 56
  %i.iu = trunc i64 %i.it to i32                  ; 2 uses
  %i.iv = add nsw i32 %i.iu, -1                   ; 2 uses
  %i.iw = icmp sgt i32 %i.iu, 1
  br i1 %i.iw, label %.lr.ph.i194, label %._crit_edge.i

.lr.ph.i194:                                      ; preds = %bb.ax, %.lr.ph.i194
  %.020.i = phi i32 [ %.0..i, %.lr.ph.i194 ], [ %i.iv, %bb.ax ] ; 2 uses
  %.01519.i = phi i32 [ %..015.i, %.lr.ph.i194 ], [ -1, %bb.ax ] ; 2 uses
  %i.ix = add i32 %.020.i, 1
  %i.iy = add i32 %i.ix, %.01519.i
  %i.iz = lshr i32 %i.iy, 1                       ; 3 uses
  %i.ja = zext nneg i32 %i.iz to i64
  %i.jb = getelementptr inbounds nuw [56 x i8], ptr %i.ip, i64 %i.ja
  %i.jc = load double, ptr %i.jb, align 8, !tbaa !217
  %i.jd = fcmp olt double %i.jc, %.0.lcssa        ; 2 uses
  %..015.i = select i1 %i.jd, i32 %i.iz, i32 %.01519.i ; 2 uses
  %.0..i = select i1 %i.jd, i32 %.020.i, i32 %i.iz ; 3 uses
  %i.je = add nsw i32 %..015.i, 1
  %i.jf = icmp slt i32 %i.je, %.0..i
  br i1 %i.jf, label %.lr.ph.i194, label %._crit_edge.i, !llvm.loop !231

._crit_edge.i:                                    ; preds = %.lr.ph.i194, %bb.ax
  %.0.lcssa.i = phi i32 [ %i.iv, %bb.ax ], [ %.0..i, %.lr.ph.i194 ]
  %i.jg = sext i32 %.0.lcssa.i to i64
  %i.jh = getelementptr inbounds nuw [56 x i8], ptr %i.ip, i64 %i.jg
  %i.ji = getelementptr inbounds nuw i8, ptr %i.jh, i64 8
  %i.jj = load double, ptr %i.ji, align 8, !tbaa !218
  br label %_ZNK5faiss15OperatingPoints10t_for_perfEd.exit

_ZNK5faiss15OperatingPoints10t_for_perfEd.exit:   ; preds = %._crit_edge, %._crit_edge.i
  %.017.i = phi double [ %i.jj, %._crit_edge.i ], [ 1.000000e+50, %._crit_edge ] ; 2 uses
  %i.jk = load i32, ptr %i.gz, align 8, !tbaa !91
  %.not135 = icmp eq i32 %i.jk, 0
  br i1 %.not135, label %bb.be, label %bb.bd

bb.ay:                                            ; preds = %.lr.ph341, %_ZNK5faiss14ParameterSpace13update_boundsEmRKNS_14OperatingPointEPdS4_.exit
  %.094340 = phi i64 [ 0, %.lr.ph341 ], [ %i.kv, %_ZNK5faiss14ParameterSpace13update_boundsEmRKNS_14OperatingPointEPdS4_.exit ] ; 2 uses
  %.0339 = phi double [ 1.000000e+00, %.lr.ph341 ], [ %.1, %_ZNK5faiss14ParameterSpace13update_boundsEmRKNS_14OperatingPointEPdS4_.exit ] ; 3 uses
  %.0266338 = phi double [ 0.000000e+00, %.lr.ph341 ], [ %.1267, %_ZNK5faiss14ParameterSpace13update_boundsEmRKNS_14OperatingPointEPdS4_.exit ] ; 3 uses
  %i.jl = getelementptr inbounds nuw [56 x i8], ptr %i.hz, i64 %.094340 ; 3 uses
  %i.jm = getelementptr inbounds nuw i8, ptr %i.jl, i64 48
  %i.jn = load i64, ptr %i.jm, align 8, !tbaa !201 ; 2 uses
  br i1 %i.ig, label %.loopexit24.i, label %.lr.ph.i.i195

.lr.ph.i.i195:                                    ; preds = %bb.ay, %bb.az
  %.01625.i.i = phi i64 [ %i.kb, %bb.az ], [ 0, %bb.ay ] ; 2 uses
  %.01724.i.i = phi i64 [ %i.ka, %bb.az ], [ %i.jn, %bb.ay ] ; 2 uses
  %.01923.i.i = phi i64 [ %i.jy, %bb.az ], [ %i.hp, %bb.ay ] ; 2 uses
  %i.jo = getelementptr inbounds nuw [56 x i8], ptr %i.if, i64 %.01625.i.i ; 2 uses
  %i.jp = getelementptr inbounds nuw i8, ptr %i.jo, i64 32
  %i.jq = getelementptr inbounds nuw i8, ptr %i.jo, i64 40
  %i.jr = load ptr, ptr %i.jq, align 8, !tbaa !67
  %i.js = load ptr, ptr %i.jp, align 8, !tbaa !73
  %i.jt = ptrtoint ptr %i.jr to i64
  %i.ju = ptrtoint ptr %i.js to i64
  %i.jv = sub i64 %i.jt, %i.ju
  %i.jw = ashr exact i64 %i.jv, 3                 ; 4 uses
  %i.jx = urem i64 %.01923.i.i, %i.jw
  %i.jy = udiv i64 %.01923.i.i, %i.jw
  %i.jz = urem i64 %.01724.i.i, %i.jw
  %i.ka = udiv i64 %.01724.i.i, %i.jw
  %.not.not.not.i.i = icmp ult i64 %i.jx, %i.jz
  br i1 %.not.not.not.i.i, label %_ZNK5faiss14ParameterSpace14combination_geEmm.exit.i, label %bb.az

bb.az:                                            ; preds = %.lr.ph.i.i195
  %i.kb = add nuw i64 %.01625.i.i, 1              ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %i.kb, %umax.i.i
  br i1 %exitcond.not.i.i, label %.loopexit24.i, label %.lr.ph.i.i195, !llvm.loop !245

.loopexit24.i:                                    ; preds = %bb.az, %bb.ay
  %i.kc = getelementptr inbounds nuw i8, ptr %i.jl, i64 8
  %i.kd = load double, ptr %i.kc, align 8, !tbaa !218 ; 2 uses
  %i.ke = fcmp ogt double %i.kd, %.0266338
  br i1 %i.ke, label %bb.ba, label %_ZNK5faiss14ParameterSpace14combination_geEmm.exit.i

bb.ba:                                            ; preds = %.loopexit24.i
  br label %_ZNK5faiss14ParameterSpace14combination_geEmm.exit.i

_ZNK5faiss14ParameterSpace14combination_geEmm.exit.i: ; preds = %.lr.ph.i.i195, %bb.ba, %.loopexit24.i
  %.1267 = phi double [ %i.kd, %bb.ba ], [ %.0266338, %.loopexit24.i ], [ %.0266338, %.lr.ph.i.i195 ] ; 2 uses
  br i1 %i.ig, label %.loopexit.i, label %.lr.ph.i14.i

.lr.ph.i14.i:                                     ; preds = %_ZNK5faiss14ParameterSpace14combination_geEmm.exit.i, %bb.bb
  %.01625.i15.i = phi i64 [ %i.ks, %bb.bb ], [ 0, %_ZNK5faiss14ParameterSpace14combination_geEmm.exit.i ] ; 2 uses
  %.01724.i16.i = phi i64 [ %i.kr, %bb.bb ], [ %i.hp, %_ZNK5faiss14ParameterSpace14combination_geEmm.exit.i ] ; 2 uses
  %.01923.i17.i = phi i64 [ %i.kp, %bb.bb ], [ %i.jn, %_ZNK5faiss14ParameterSpace14combination_geEmm.exit.i ] ; 2 uses
  %i.kf = getelementptr inbounds nuw [56 x i8], ptr %i.if, i64 %.01625.i15.i ; 2 uses
  %i.kg = getelementptr inbounds nuw i8, ptr %i.kf, i64 32
  %i.kh = getelementptr inbounds nuw i8, ptr %i.kf, i64 40
  %i.ki = load ptr, ptr %i.kh, align 8, !tbaa !67
  %i.kj = load ptr, ptr %i.kg, align 8, !tbaa !73
  %i.kk = ptrtoint ptr %i.ki to i64
  %i.kl = ptrtoint ptr %i.kj to i64
  %i.km = sub i64 %i.kk, %i.kl
  %i.kn = ashr exact i64 %i.km, 3                 ; 4 uses
  %i.ko = urem i64 %.01923.i17.i, %i.kn
  %i.kp = udiv i64 %.01923.i17.i, %i.kn
  %i.kq = urem i64 %.01724.i16.i, %i.kn
  %i.kr = udiv i64 %.01724.i16.i, %i.kn
  %.not.not.not.i18.i = icmp ult i64 %i.ko, %i.kq
  br i1 %.not.not.not.i18.i, label %_ZNK5faiss14ParameterSpace13update_boundsEmRKNS_14OperatingPointEPdS4_.exit, label %bb.bb

bb.bb:                                            ; preds = %.lr.ph.i14.i
  %i.ks = add nuw i64 %.01625.i15.i, 1            ; 2 uses
  %exitcond.not.i19.i = icmp eq i64 %i.ks, %umax.i.i
  br i1 %exitcond.not.i19.i, label %.loopexit.i, label %.lr.ph.i14.i, !llvm.loop !245

.loopexit.i:                                      ; preds = %bb.bb, %_ZNK5faiss14ParameterSpace14combination_geEmm.exit.i
  %i.kt = load double, ptr %i.jl, align 8, !tbaa !217 ; 2 uses
  %i.ku = fcmp olt double %i.kt, %.0339
  br i1 %i.ku, label %bb.bc, label %_ZNK5faiss14ParameterSpace13update_boundsEmRKNS_14OperatingPointEPdS4_.exit

bb.bc:                                            ; preds = %.loopexit.i
  br label %_ZNK5faiss14ParameterSpace13update_boundsEmRKNS_14OperatingPointEPdS4_.exit

_ZNK5faiss14ParameterSpace13update_boundsEmRKNS_14OperatingPointEPdS4_.exit: ; preds = %.lr.ph.i14.i, %.loopexit.i, %bb.bc
  %.1 = phi double [ %i.kt, %bb.bc ], [ %.0339, %.loopexit.i ], [ %.0339, %.lr.ph.i14.i ] ; 2 uses
  %i.kv = add nuw i64 %.094340, 1                 ; 2 uses
  %exitcond389.not = icmp eq i64 %i.kv, %umax
  br i1 %exitcond389.not, label %._crit_edge, label %bb.ay, !llvm.loop !381

bb.bd:                                            ; preds = %_ZNK5faiss15OperatingPoints10t_for_perfEd.exit
  %i.kw = fcmp ole double %.017.i, %.0266.lcssa
  %i.kx = select i1 %i.kw, ptr @.str.58, ptr @.str.9
  %i.ky = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.57, double noundef %.0.lcssa, double noundef %.0266.lcssa, ptr noundef nonnull %i.kx) ; 0 uses
  br label %bb.be

bb.be:                                            ; preds = %bb.bd, %_ZNK5faiss15OperatingPoints10t_for_perfEd.exit
  %i.kz = fcmp ugt double %.017.i, %.0266.lcssa
  br i1 %i.kz, label %bb.bf, label %bb.cd

bb.bf:                                            ; preds = %bb.be
  %i.la = load ptr, ptr %i.a, align 8, !tbaa !311
  %i.lb = load ptr, ptr %i.x, align 8, !tbaa !66
  %i.lc = load ptr, ptr %i.w, align 8, !tbaa !83  ; 2 uses
  %.not.i.i196 = icmp eq ptr %i.lb, %i.lc
  br i1 %.not.i.i196, label %_ZNK5faiss14ParameterSpace20set_index_parametersEPNS_5IndexEm.exit201, label %.lr.ph.i.i197

.lr.ph.i.i197:                                    ; preds = %bb.bf, %.noexc200
  %i.ld = phi ptr [ %i.lw, %.noexc200 ], [ %i.lc, %bb.bf ]
  %.015.i.i198 = phi i64 [ %i.lo, %.noexc200 ], [ %i.hp, %bb.bf ] ; 2 uses
  %.01214.i.i199 = phi i64 [ %i.lu, %.noexc200 ], [ 0, %bb.bf ] ; 2 uses
  %i.le = getelementptr inbounds nuw [56 x i8], ptr %i.ld, i64 %.01214.i.i199 ; 3 uses
  %i.lf = getelementptr inbounds nuw i8, ptr %i.le, i64 32
  %i.lg = getelementptr inbounds nuw i8, ptr %i.le, i64 40
  %i.lh = load ptr, ptr %i.lg, align 8, !tbaa !67
  %i.li = load ptr, ptr %i.lf, align 8, !tbaa !73 ; 2 uses
  %i.lj = ptrtoint ptr %i.lh to i64
  %i.lk = ptrtoint ptr %i.li to i64
  %i.ll = sub i64 %i.lj, %i.lk
  %i.lm = ashr exact i64 %i.ll, 3                 ; 2 uses
  %i.ln = urem i64 %.015.i.i198, %i.lm
  %i.lo = udiv i64 %.015.i.i198, %i.lm
  %i.lp = getelementptr inbounds nuw [8 x i8], ptr %i.li, i64 %i.ln
  %i.lq = load double, ptr %i.lp, align 8, !tbaa !71
  %i.lr = load ptr, ptr %0, align 8, !tbaa !40
  %i.ls = getelementptr inbounds nuw i8, ptr %i.lr, i64 8
  %i.lt = load ptr, ptr %i.ls, align 8
  invoke void %i.lt(ptr noundef nonnull align 8 dereferenceable(64) %0, ptr noundef %i.la, ptr noundef nonnull align 8 dereferenceable(32) %i.le, double noundef %i.lq)
          to label %.noexc200 unwind label %bb.bl, !inline_history !382

.noexc200:                                        ; preds = %.lr.ph.i.i197
  %i.lu = add nuw i64 %.01214.i.i199, 1           ; 2 uses
  %i.lv = load ptr, ptr %i.x, align 8, !tbaa !66
  %i.lw = load ptr, ptr %i.w, align 8, !tbaa !83  ; 2 uses
  %i.lx = ptrtoint ptr %i.lv to i64
  %i.ly = ptrtoint ptr %i.lw to i64
  %i.lz = sub i64 %i.lx, %i.ly
  %i.ma = sdiv exact i64 %i.lz, 56
  %i.mb = icmp ult i64 %i.lu, %i.ma
  br i1 %i.mb, label %.lr.ph.i.i197, label %_ZNK5faiss14ParameterSpace20set_index_parametersEPNS_5IndexEm.exit201, !llvm.loop !263

_ZNK5faiss14ParameterSpace20set_index_parametersEPNS_5IndexEm.exit201: ; preds = %.noexc200, %bb.bf
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #17
  %i.mc = load i64, ptr %i.b, align 8, !tbaa !29
  %i.md = load i64, ptr %i.he, align 8, !tbaa !26
  %i.me = mul i64 %i.md, %i.mc                    ; 7 uses
  %i.mf = icmp ugt i64 %i.me, 1152921504606846975
  br i1 %i.mf, label %bb.bg, label %_ZNSt6vectorIlSaIlEE17_S_check_init_lenEmRKS0_.exit.i202

bb.bg:                                            ; preds = %_ZNK5faiss14ParameterSpace20set_index_parametersEPNS_5IndexEm.exit201
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.62) #35
          to label %.noexc208 unwind label %.loopexit.split-lp

.noexc208:                                        ; preds = %bb.bg
  unreachable

_ZNSt6vectorIlSaIlEE17_S_check_init_lenEmRKS0_.exit.i202: ; preds = %_ZNK5faiss14ParameterSpace20set_index_parametersEPNS_5IndexEm.exit201
  %.not.i.i.i.i203 = icmp eq i64 %i.me, 0
  br i1 %.not.i.i.i.i203, label %_ZNSt12_Vector_baseIfSaIfEEC2EmRKS0_.exit.thread.i216, label %bb.bh

bb.bh:                                            ; preds = %_ZNSt6vectorIlSaIlEE17_S_check_init_lenEmRKS0_.exit.i202
  %i.mg = shl nuw nsw i64 %i.me, 3
  %i.mh = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.mg) #37
          to label %.noexc209 unwind label %.loopexit299 ; 4 uses

.noexc209:                                        ; preds = %bb.bh
  store ptr %i.mh, ptr %11, align 8, !tbaa !13
  %i.mi = getelementptr inbounds nuw [8 x i8], ptr %i.mh, i64 %i.me
  store ptr %i.mi, ptr %i.hf, align 8, !tbaa !42
  store i64 0, ptr %i.mh, align 8, !tbaa !29
  %i.mj = getelementptr i8, ptr %i.mh, i64 8      ; 3 uses
  %i.mk = add nsw i64 %i.me, -1                   ; 3 uses
  %i.ml = icmp eq i64 %i.mk, 0                    ; 2 uses
  br i1 %i.ml, label %bb.bi, label %_ZSt6fill_nIPlmlET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i204

_ZSt6fill_nIPlmlET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i204: ; preds = %.noexc209
  %.idx.i.i.i.i.i.i.i205 = shl nuw nsw i64 %i.mk, 3 ; 2 uses
  call void @llvm.memset.p0.i64(ptr align 8 %i.mj, i8 0, i64 %.idx.i.i.i.i.i.i.i205, i1 false), !tbaa !29
  %i.mm = getelementptr inbounds nuw i8, ptr %i.mj, i64 %.idx.i.i.i.i.i.i.i205
  br label %bb.bi

_ZNSt12_Vector_baseIfSaIfEEC2EmRKS0_.exit.thread.i216: ; preds = %_ZNSt6vectorIlSaIlEE17_S_check_init_lenEmRKS0_.exit.i202
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %11, i8 0, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #17
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %12, i8 0, i64 24, i1 false)
  br label %bb.bj

bb.bi:                                            ; preds = %.noexc209, %_ZSt6fill_nIPlmlET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i204
  %.0.i.i.i.i.i206.ph = phi ptr [ %i.mm, %_ZSt6fill_nIPlmlET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i204 ], [ %i.mj, %.noexc209 ]
  store ptr %.0.i.i.i.i.i206.ph, ptr %i.hg, align 8, !tbaa !9
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #17
  %i.mn = shl nuw nsw i64 %i.me, 2
  %i.mo = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.mn) #37
          to label %.noexc218 unwind label %bb.bm ; 4 uses

.noexc218:                                        ; preds = %bb.bi
  store ptr %i.mo, ptr %12, align 8, !tbaa !44
  %i.mp = getelementptr inbounds nuw [4 x i8], ptr %i.mo, i64 %i.me
  store ptr %i.mp, ptr %i.hh, align 8, !tbaa !45
  store float 0.000000e+00, ptr %i.mo, align 4, !tbaa !192
  %i.mq = getelementptr i8, ptr %i.mo, i64 4      ; 3 uses
  br i1 %i.ml, label %bb.bj, label %_ZSt6fill_nIPfmfET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i213

_ZSt6fill_nIPfmfET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i213: ; preds = %.noexc218
  %.idx.i.i.i.i.i.i.i214 = shl nuw nsw i64 %i.mk, 2 ; 2 uses
  call void @llvm.memset.p0.i64(ptr align 4 %i.mq, i8 0, i64 %.idx.i.i.i.i.i.i.i214, i1 false), !tbaa !192
  %i.mr = getelementptr inbounds nuw i8, ptr %i.mq, i64 %.idx.i.i.i.i.i.i.i214
  br label %bb.bj

bb.bj:                                            ; preds = %_ZSt6fill_nIPfmfET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i213, %.noexc218, %_ZNSt12_Vector_baseIfSaIfEEC2EmRKS0_.exit.thread.i216
  %.0.i.i.i.i.i215 = phi ptr [ null, %_ZNSt12_Vector_baseIfSaIfEEC2EmRKS0_.exit.thread.i216 ], [ %i.mq, %.noexc218 ], [ %i.mr, %_ZSt6fill_nIPfmfET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i213 ]
  store ptr %.0.i.i.i.i.i215, ptr %i.hi, align 8, !tbaa !191
  %i.ms = invoke noundef double @_ZN5faiss12getmillisecsEv()
          to label %.preheader298 unwind label %bb.bn

.preheader298:                                    ; preds = %bb.bj, %bb.bq
  %.093 = phi i32 [ %i.nz, %bb.bq ], [ 0, %bb.bj ] ; 2 uses
  %i.mt = load i8, ptr %i.hj, align 8, !tbaa !240, !range !277, !noundef !278
  %i.mu = trunc nuw i8 %i.mt to i1
  br i1 %i.mu, label %bb.bk, label %.preheader296

.preheader296:                                    ; preds = %.preheader298
  %i.mv = load i64, ptr %i.b, align 8, !tbaa !29  ; 2 uses
  %.not349 = icmp eq i64 %i.mv, 0
  br i1 %.not349, label %.loopexit297, label %.lr.ph344.preheader

.lr.ph344.preheader:                              ; preds = %.preheader296
  %.pre = load i64, ptr %i.hk, align 8, !tbaa !239
  br label %.lr.ph344

bb.bk:                                            ; preds = %.preheader298
  call void (ptr, i32, ptr, ...) @__kmpc_fork_call(ptr nonnull @3, i32 7, ptr nonnull @_ZNK5faiss14ParameterSpace7exploreEPNS_5IndexEmPKfRKNS_17AutoTuneCriterionEPNS_15OperatingPointsE.omp_outlined, ptr nonnull %0, ptr nonnull %i.b, ptr nonnull %i.a, ptr nonnull %i.c, ptr nonnull %4, ptr nonnull %12, ptr nonnull %11)
  br label %.loopexit297

bb.bl:                                            ; preds = %.lr.ph.i.i197
  %i.mw = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit235

.loopexit299:                                     ; preds = %bb.bh
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIlSaIlEED2Ev.exit233

.loopexit.split-lp:                               ; preds = %bb.bg
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIlSaIlEED2Ev.exit233

bb.bm:                                            ; preds = %bb.bi
  %i.mx = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIfSaIfEED2Ev.exit231

bb.bn:                                            ; preds = %bb.bj
  %i.my = landingpad { ptr, i32 }
          cleanup
  br label %bb.ce

.lr.ph344:                                        ; preds = %.lr.ph344.preheader, %bb.bo
  %i.mz = phi i64 [ %i.nt, %bb.bo ], [ %.pre, %.lr.ph344.preheader ]
  %i.na = phi i64 [ %i.nv, %bb.bo ], [ %i.mv, %.lr.ph344.preheader ]
  %.092343 = phi i64 [ %i.nu, %bb.bo ], [ 0, %.lr.ph344.preheader ] ; 5 uses
  %i.nb = add i64 %i.mz, %.092343
  %spec.select161 = call i64 @llvm.umin.i64(i64 %i.nb, i64 %i.na)
  %i.nc = load ptr, ptr %i.a, align 8, !tbaa !311 ; 3 uses
  %i.nd = sub i64 %spec.select161, %.092343
  %i.ne = load ptr, ptr %i.c, align 8, !tbaa !374
  %i.nf = getelementptr inbounds nuw i8, ptr %i.nc, i64 8
  %i.ng = load i32, ptr %i.nf, align 8, !tbaa !383
  %i.nh = sext i32 %i.ng to i64
  %i.ni = mul i64 %.092343, %i.nh
  %i.nj = getelementptr inbounds nuw [4 x i8], ptr %i.ne, i64 %i.ni
  %i.nk = load i64, ptr %i.he, align 8, !tbaa !26 ; 2 uses
  %i.nl = load ptr, ptr %12, align 8, !tbaa !44
  %i.nm = mul i64 %i.nk, %.092343                 ; 2 uses
  %i.nn = getelementptr inbounds nuw [4 x i8], ptr %i.nl, i64 %i.nm
  %i.no = load ptr, ptr %11, align 8, !tbaa !13
  %i.np = getelementptr inbounds nuw [8 x i8], ptr %i.no, i64 %i.nm
  %i.nq = load ptr, ptr %i.nc, align 8, !tbaa !40
  %i.nr = getelementptr inbounds nuw i8, ptr %i.nq, i64 72
  %i.ns = load ptr, ptr %i.nr, align 8
  invoke void %i.ns(ptr noundef nonnull align 8 dereferenceable(36) %i.nc, i64 noundef %i.nd, ptr noundef %i.nj, i64 noundef %i.nk, ptr noundef %i.nn, ptr noundef %i.np, ptr noundef null)
          to label %bb.bo unwind label %bb.bp

bb.bo:                                            ; preds = %.lr.ph344
  %i.nt = load i64, ptr %i.hk, align 8, !tbaa !239 ; 2 uses
  %i.nu = add i64 %i.nt, %.092343                 ; 2 uses
end_hunk_3
