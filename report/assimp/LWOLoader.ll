inline.NumInlined: 3061
inline.NumDeleted: 1386
loop-unroll.NumCompletelyUnrolled: 4
loop-unroll.NumRuntimeUnrolled: 6
loop-unroll.NumUnrolled: 10
begin_hunk_0_@_ZN6Assimp11LWOImporter17AdjustTexturePathERNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE:bb.a
bb.n:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i, %bb.f
  %i.bk = landingpad { ptr, i32 }
          cleanup
  %i.bl = load ptr, ptr %3, align 8               ; 2 uses
  %i.bm = icmp eq ptr %i.bl, %i.n
  br i1 %i.bm, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit21, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i19

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i19: ; preds = %bb.n
  %i.bn = load i64, ptr %i.n, align 8
  %i.bo = add i64 %i.bn, 1
  call void @_ZdlPvm(ptr noundef %i.bl, i64 noundef %i.bo) #26
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit21

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit21: ; preds = %bb.n, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i19
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #25
  resume { ptr, i32 } %i.bk

bb.o:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit18, %bb.b, %bb.a
  %i.bp = call noundef i64 @_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4findEcm(ptr noundef nonnull align 8 dereferenceable(32) %1, i8 noundef signext 58, i64 noundef 0) #25 ; 3 uses
  %.not10 = icmp eq i64 %i.bp, -1
  br i1 %.not10, label %bb.r, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.bq = add nuw i64 %i.bp, 1                    ; 2 uses
  %i.br = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.bs = load i64, ptr %i.br, align 8            ; 2 uses
  %.not22 = icmp ult i64 %i.bp, %i.bs
  br i1 %.not22, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6insertEmPKc.exit, label %bb.q

bb.q:                                             ; preds = %bb.p
  call void (ptr, ...) @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef nonnull @.str.108, ptr noundef nonnull @.str.107, i64 noundef %i.bq, i64 noundef %i.bs) #27
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6insertEmPKc.exit: ; preds = %bb.p
  %i.bt = call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %1, i64 noundef %i.bq, i64 noundef 0, ptr noundef nonnull @.str.39, i64 noundef 1) ; 0 uses
  br label %bb.r

bb.r:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6insertEmPKc.exit, %bb.o
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare noundef ptr @strstr(ptr noundef, ptr noundef captures(none)) local_unnamed_addr #11

; Function Attrs: mustprogress uwtable
define hidden void @_ZN6Assimp11LWOImporter11LoadLWOTagsEj(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(233) %0, i32 noundef %1) local_unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 14 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 168
  %i.c = load ptr, ptr %i.b, align 8              ; 3 uses
  %i.d = zext i32 %1 to i64
  %i.e = getelementptr inbounds nuw i8, ptr %i.c, i64 %i.d
  %.not34 = icmp eq i32 %1, 0
  br i1 %.not34, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 13 uses
  %i.h = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 4 uses
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.n
  %.01833 = phi ptr [ %i.c, %.lr.ph ], [ %i.av, %bb.n ] ; 5 uses
  %.01932 = phi ptr [ %i.c, %.lr.ph ], [ %.120, %bb.n ] ; 6 uses
  %i.i = load i8, ptr %.01833, align 1
  %.not = icmp eq i8 %i.i, 0
  br i1 %.not, label %bb.c, label %bb.n

bb.c:                                             ; preds = %bb.b
  %i.j = ptrtoint ptr %.01833 to i64
  %i.k = ptrtoint ptr %.01932 to i64
  %i.l = sub i64 %i.j, %i.k                       ; 5 uses
  %.not22 = icmp eq ptr %.01833, %.01932
  br i1 %.not22, label %bb.m, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.m = load ptr, ptr %i.f, align 8              ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #25
  store ptr %i.g, ptr %2, align 8
  %i.n = icmp eq ptr %.01932, null
  br i1 %i.n, label %.noexc, label %bb.e

.noexc:                                           ; preds = %bb.d
  call void @_ZSt19__throw_logic_errorPKc(ptr noundef nonnull @.str.106) #27
  unreachable

bb.e:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #25
  store i64 %i.l, ptr %i.a, align 8
  %i.o = icmp ugt i64 %i.l, 15
  br i1 %i.o, label %._crit_edge.i.i.thread, label %._crit_edge.i.i

._crit_edge.i.i.thread:                           ; preds = %bb.e
  %i.p = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0) ; 2 uses
  store ptr %i.p, ptr %2, align 8
  %i.q = load i64, ptr %i.a, align 8
  store i64 %i.q, ptr %i.g, align 8
  br label %bb.g

._crit_edge.i.i:                                  ; preds = %bb.e
  %cond = icmp eq i64 %i.l, 1
  br i1 %cond, label %bb.f, label %bb.g

bb.f:                                             ; preds = %._crit_edge.i.i
  %i.r = load i8, ptr %.01932, align 1
  store i8 %i.r, ptr %i.g, align 8
  br label %bb.h

bb.g:                                             ; preds = %._crit_edge.i.i.thread, %._crit_edge.i.i
  %i.s = phi ptr [ %i.p, %._crit_edge.i.i.thread ], [ %i.g, %._crit_edge.i.i ]
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.s, ptr nonnull align 1 %.01932, i64 %i.l, i1 false)
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %i.t = load i64, ptr %i.a, align 8              ; 2 uses
  store i64 %i.t, ptr %i.h, align 8
  %i.u = load ptr, ptr %2, align 8
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 %i.t
  store i8 0, ptr %i.v, align 1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #25
  %i.w = getelementptr inbounds nuw i8, ptr %i.m, i64 8 ; 3 uses
  %i.x = load ptr, ptr %i.w, align 8              ; 6 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.m, i64 16
  %i.z = load ptr, ptr %i.y, align 8
  %.not.i.i = icmp eq ptr %i.x, %i.z
  br i1 %.not.i.i, label %bb.k, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.aa = getelementptr inbounds nuw i8, ptr %i.x, i64 16 ; 3 uses
  store ptr %i.aa, ptr %i.x, align 8
  %i.ab = load ptr, ptr %2, align 8               ; 2 uses
  %i.ac = icmp eq ptr %i.ab, %i.g
  br i1 %i.ac, label %bb.j, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

bb.j:                                             ; preds = %bb.i
  %i.ad = load i64, ptr %i.h, align 8             ; 3 uses
  %i.ae = icmp ult i64 %i.ad, 16
  call void @llvm.assume(i1 %i.ae)
  %i.af = add nuw nsw i64 %i.ad, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.aa, ptr noundef nonnull align 8 dereferenceable(1) %i.g, i64 %i.af, i1 false)
  br label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backEOS5_.exit.thread

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.i
  store ptr %i.ab, ptr %i.x, align 8
  %i.ag = load i64, ptr %i.g, align 8
  store i64 %i.ag, ptr %i.aa, align 8
  %.pre = load i64, ptr %i.h, align 8
  br label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backEOS5_.exit.thread

_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backEOS5_.exit.thread: ; preds = %bb.j, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  %i.ah = phi i64 [ %.pre, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i ], [ %i.ad, %bb.j ]
  %i.ai = getelementptr inbounds nuw i8, ptr %i.x, i64 8
  store i64 %i.ah, ptr %i.ai, align 8
  store ptr %i.g, ptr %2, align 8
  store i64 0, ptr %i.h, align 8
  store i8 0, ptr %i.g, align 8
  %i.aj = load ptr, ptr %i.w, align 8
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 32
  store ptr %i.ak, ptr %i.w, align 8
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

bb.k:                                             ; preds = %bb.h
  invoke void @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %i.m, ptr %i.x, ptr noundef nonnull align 8 dereferenceable(32) %2)
          to label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backEOS5_.exit unwind label %bb.l

_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backEOS5_.exit: ; preds = %bb.k
  %.pre35 = load ptr, ptr %2, align 8             ; 2 uses
  %i.al = icmp eq ptr %.pre35, %i.g
  br i1 %i.al, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backEOS5_.exit
  %i.am = load i64, ptr %i.g, align 8
  %i.an = add i64 %i.am, 1
  call void @_ZdlPvm(ptr noundef %.pre35, i64 noundef %i.an) #26
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backEOS5_.exit, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backEOS5_.exit.thread, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #25
  br label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.ao = landingpad { ptr, i32 }
          cleanup
  %i.ap = load ptr, ptr %2, align 8               ; 2 uses
  %i.aq = icmp eq ptr %i.ap, %i.g
  br i1 %i.aq, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit29, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i27

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i27: ; preds = %bb.l
  %i.ar = load i64, ptr %i.g, align 8
  %i.as = add i64 %i.ar, 1
  call void @_ZdlPvm(ptr noundef %i.ap, i64 noundef %i.as) #26
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit29

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit29: ; preds = %bb.l, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i27
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #25
  resume { ptr, i32 } %i.ao

bb.m:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %bb.c
  %i.at = sub i64 2, %i.l
  %i.au = getelementptr inbounds i8, ptr %.01833, i64 %i.at ; 2 uses
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.b
  %.120 = phi ptr [ %.01932, %bb.b ], [ %i.au, %bb.m ]
  %.1 = phi ptr [ %.01833, %bb.b ], [ %i.au, %bb.m ]
  %i.av = getelementptr inbounds nuw i8, ptr %.1, i64 1 ; 2 uses
  %i.aw = icmp ult ptr %i.av, %i.e
  br i1 %i.aw, label %bb.b, label %._crit_edge, !llvm.loop !66

._crit_edge:                                      ; preds = %bb.n, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define hidden void @_ZN6Assimp11LWOImporter13LoadLWOPointsEj(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(233) %0, i32 noundef %1) local_unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 4 uses
  %i.b = urem i32 %1, 12
  %i.c = udiv i32 %1, 12
  %.not = icmp eq i32 %i.b, 0
  br i1 %.not, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = tail call ptr @__cxa_allocate_exception(i64 16) #25 ; 3 uses
  invoke void @_ZN17DeadlyImportErrorC2EPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.d, ptr noundef nonnull @.str.40)
          to label %bb.c unwind label %bb.d

bb.c:                                             ; preds = %bb.b
  tail call void @__cxa_throw(ptr nonnull %i.d, ptr nonnull @_ZTI17DeadlyImportError, ptr nonnull @_ZNSt13runtime_errorD2Ev) #27
  unreachable

bb.d:                                             ; preds = %bb.b
  %i.e = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr nonnull %i.d) #25
  resume { ptr, i32 } %i.e

bb.e:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 5 uses
  %i.g = load ptr, ptr %i.f, align 8              ; 6 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 8 ; 3 uses
  %i.i = load ptr, ptr %i.h, align 8              ; 5 uses
  %i.j = load ptr, ptr %i.g, align 8              ; 7 uses
  %i.k = ptrtoint ptr %i.i to i64
  %i.l = ptrtoint ptr %i.j to i64                 ; 2 uses
  %i.m = sub i64 %i.k, %i.l                       ; 2 uses
  %i.n = sdiv exact i64 %i.m, 12                  ; 5 uses
  %i.o = trunc i64 %i.n to i32
  %i.p = add i32 %i.c, %i.o                       ; 4 uses
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.r = load i8, ptr %i.q, align 8, !range !7, !noundef !8
  %i.s = trunc nuw i8 %i.r to i1
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 74
  %i.u = load i8, ptr %i.t, align 2, !range !7
  %i.v = trunc nuw i8 %i.u to i1
  %or.cond = select i1 %i.s, i1 true, i1 %i.v
  br i1 %or.cond, label %bb.f, label %bb.p

bb.f:                                             ; preds = %bb.e
  %i.w = lshr i32 %i.p, 2
  %i.x = add i32 %i.w, %i.p
  %i.y = zext i32 %i.x to i64                     ; 6 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.g, i64 16 ; 2 uses
  %i.aa = load ptr, ptr %i.z, align 8
  %i.ab = ptrtoint ptr %i.aa to i64
  %i.ac = sub i64 %i.ab, %i.l                     ; 2 uses
  %i.ad = sdiv exact i64 %i.ac, 12
  %i.ae = icmp ult i64 %i.ad, %i.y
  br i1 %i.ae, label %_ZNSt12_Vector_baseI10aiVector3tIfESaIS1_EE11_M_allocateEm.exit.i, label %_ZNSt6vectorI10aiVector3tIfESaIS1_EE7reserveEm.exit

_ZNSt12_Vector_baseI10aiVector3tIfESaIS1_EE11_M_allocateEm.exit.i: ; preds = %bb.f
  %i.af = mul nuw nsw i64 %i.y, 12
  %i.ag = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.af) #28 ; 4 uses
  %.not10.i.i.i.i = icmp eq ptr %i.j, %i.i
  br i1 %.not10.i.i.i.i, label %_ZNSt6vectorI10aiVector3tIfESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %_ZNSt12_Vector_baseI10aiVector3tIfESaIS1_EE11_M_allocateEm.exit.i, %.lr.ph.i.i.i.i
  %.012.i.i.i.i = phi ptr [ %i.ai, %.lr.ph.i.i.i.i ], [ %i.ag, %_ZNSt12_Vector_baseI10aiVector3tIfESaIS1_EE11_M_allocateEm.exit.i ] ; 2 uses
  %.0911.i.i.i.i = phi ptr [ %i.ah, %.lr.ph.i.i.i.i ], [ %i.j, %_ZNSt12_Vector_baseI10aiVector3tIfESaIS1_EE11_M_allocateEm.exit.i ] ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %.012.i.i.i.i, ptr noundef nonnull align 4 dereferenceable(12) %.0911.i.i.i.i, i64 12, i1 false), !alias.scope !67
  %i.ah = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i, i64 12 ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i, i64 12
  %.not.i.i.i.i = icmp eq ptr %i.ah, %i.i
  br i1 %.not.i.i.i.i, label %_ZNSt6vectorI10aiVector3tIfESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit.i, label %.lr.ph.i.i.i.i, !llvm.loop !71

_ZNSt6vectorI10aiVector3tIfESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit.i: ; preds = %.lr.ph.i.i.i.i, %_ZNSt12_Vector_baseI10aiVector3tIfESaIS1_EE11_M_allocateEm.exit.i
  %.not.i8.i = icmp eq ptr %i.j, null
  br i1 %.not.i8.i, label %_ZNSt12_Vector_baseI10aiVector3tIfESaIS1_EE13_M_deallocateEPS1_m.exit.i, label %bb.g

bb.g:                                             ; preds = %_ZNSt6vectorI10aiVector3tIfESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit.i
  tail call void @_ZdlPvm(ptr noundef nonnull %i.j, i64 noundef %i.ac) #26
  br label %_ZNSt12_Vector_baseI10aiVector3tIfESaIS1_EE13_M_deallocateEPS1_m.exit.i

_ZNSt12_Vector_baseI10aiVector3tIfESaIS1_EE13_M_deallocateEPS1_m.exit.i: ; preds = %bb.g, %_ZNSt6vectorI10aiVector3tIfESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit.i
  store ptr %i.ag, ptr %i.g, align 8
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ag, i64 %i.m
  store ptr %i.aj, ptr %i.h, align 8
  %i.ak = getelementptr inbounds nuw [12 x i8], ptr %i.ag, i64 %i.y
  store ptr %i.ak, ptr %i.z, align 8
  %.pre = load ptr, ptr %i.f, align 8             ; 3 uses
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %.pre, i64 8
  %.pre26 = load ptr, ptr %.phi.trans.insert, align 8 ; 2 uses
  %.pre27 = load ptr, ptr %.pre, align 8          ; 2 uses
  %.pre31 = ptrtoint ptr %.pre26 to i64
  %.pre32 = ptrtoint ptr %.pre27 to i64
  %.pre34 = sub i64 %.pre31, %.pre32
  %.pre36 = sdiv exact i64 %.pre34, 12
  br label %_ZNSt6vectorI10aiVector3tIfESaIS1_EE7reserveEm.exit

_ZNSt6vectorI10aiVector3tIfESaIS1_EE7reserveEm.exit: ; preds = %bb.f, %_ZNSt12_Vector_baseI10aiVector3tIfESaIS1_EE13_M_deallocateEPS1_m.exit.i
  %.pre-phi37 = phi i64 [ %i.n, %bb.f ], [ %.pre36, %_ZNSt12_Vector_baseI10aiVector3tIfESaIS1_EE13_M_deallocateEPS1_m.exit.i ] ; 3 uses
  %i.al = phi ptr [ %i.j, %bb.f ], [ %.pre27, %_ZNSt12_Vector_baseI10aiVector3tIfESaIS1_EE13_M_deallocateEPS1_m.exit.i ]
  %i.am = phi ptr [ %i.i, %bb.f ], [ %.pre26, %_ZNSt12_Vector_baseI10aiVector3tIfESaIS1_EE13_M_deallocateEPS1_m.exit.i ]
  %i.an = phi ptr [ %i.g, %bb.f ], [ %.pre, %_ZNSt12_Vector_baseI10aiVector3tIfESaIS1_EE13_M_deallocateEPS1_m.exit.i ] ; 2 uses
  %i.ao = zext i32 %i.p to i64                    ; 8 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %i.an, i64 8
  %i.aq = icmp ult i64 %.pre-phi37, %i.ao
  br i1 %i.aq, label %bb.h, label %bb.i

bb.h:                                             ; preds = %_ZNSt6vectorI10aiVector3tIfESaIS1_EE7reserveEm.exit
  %i.ar = sub nuw nsw i64 %i.ao, %.pre-phi37
  tail call void @_ZNSt6vectorI10aiVector3tIfESaIS1_EE17_M_default_appendEm(ptr noundef nonnull align 8 dereferenceable(24) %i.an, i64 noundef %i.ar)
  br label %_ZNSt6vectorI10aiVector3tIfESaIS1_EE6resizeEm.exit

bb.i:                                             ; preds = %_ZNSt6vectorI10aiVector3tIfESaIS1_EE7reserveEm.exit
  %i.as = icmp ugt i64 %.pre-phi37, %i.ao
  br i1 %i.as, label %bb.j, label %_ZNSt6vectorI10aiVector3tIfESaIS1_EE6resizeEm.exit

bb.j:                                             ; preds = %bb.i
  %i.at = getelementptr inbounds nuw [12 x i8], ptr %i.al, i64 %i.ao ; 2 uses
  %.not.i.i = icmp eq ptr %i.am, %i.at
  br i1 %.not.i.i, label %_ZNSt6vectorI10aiVector3tIfESaIS1_EE6resizeEm.exit, label %_ZSt8_DestroyIP10aiVector3tIfES1_EvT_S3_RSaIT0_E.exit.i.i

_ZSt8_DestroyIP10aiVector3tIfES1_EvT_S3_RSaIT0_E.exit.i.i: ; preds = %bb.j
  store ptr %i.at, ptr %i.ap, align 8
  br label %_ZNSt6vectorI10aiVector3tIfESaIS1_EE6resizeEm.exit

_ZNSt6vectorI10aiVector3tIfESaIS1_EE6resizeEm.exit: ; preds = %bb.h, %bb.i, %bb.j, %_ZSt8_DestroyIP10aiVector3tIfES1_EvT_S3_RSaIT0_E.exit.i.i
  %i.au = load ptr, ptr %i.f, align 8             ; 4 uses
  %i.av = getelementptr inbounds nuw i8, ptr %i.au, i64 24 ; 2 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %i.au, i64 40 ; 2 uses
  %i.ax = load ptr, ptr %i.aw, align 8
  %i.ay = load ptr, ptr %i.av, align 8            ; 5 uses
  %i.az = ptrtoint ptr %i.ax to i64
  %i.ba = ptrtoint ptr %i.ay to i64               ; 3 uses
  %i.bb = sub i64 %i.az, %i.ba                    ; 2 uses
  %i.bc = ashr exact i64 %i.bb, 2
  %i.bd = icmp ult i64 %i.bc, %i.y
  br i1 %i.bd, label %_ZNSt12_Vector_baseIjSaIjEE11_M_allocateEm.exit.i, label %_ZNSt6vectorIjSaIjEE7reserveEm.exit

_ZNSt12_Vector_baseIjSaIjEE11_M_allocateEm.exit.i: ; preds = %_ZNSt6vectorI10aiVector3tIfESaIS1_EE6resizeEm.exit
  %i.be = getelementptr inbounds nuw i8, ptr %i.au, i64 32 ; 2 uses
  %i.bf = load ptr, ptr %i.be, align 8
  %i.bg = ptrtoint ptr %i.bf to i64
  %i.bh = sub i64 %i.bg, %i.ba                    ; 3 uses
  %i.bi = shl nuw nsw i64 %i.y, 2
  %i.bj = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.bi) #28 ; 4 uses
  %i.bk = icmp sgt i64 %i.bh, 0
  br i1 %i.bk, label %bb.k, label %_ZNSt6vectorIjSaIjEE11_S_relocateEPjS2_S2_RS0_.exit.i

bb.k:                                             ; preds = %_ZNSt12_Vector_baseIjSaIjEE11_M_allocateEm.exit.i
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.bj, ptr align 4 %i.ay, i64 %i.bh, i1 false)
  br label %_ZNSt6vectorIjSaIjEE11_S_relocateEPjS2_S2_RS0_.exit.i

_ZNSt6vectorIjSaIjEE11_S_relocateEPjS2_S2_RS0_.exit.i: ; preds = %bb.k, %_ZNSt12_Vector_baseIjSaIjEE11_M_allocateEm.exit.i
  %.not.i8.i16 = icmp eq ptr %i.ay, null
  br i1 %.not.i8.i16, label %_ZNSt12_Vector_baseIjSaIjEE13_M_deallocateEPjm.exit.i, label %bb.l

bb.l:                                             ; preds = %_ZNSt6vectorIjSaIjEE11_S_relocateEPjS2_S2_RS0_.exit.i
  tail call void @_ZdlPvm(ptr noundef nonnull %i.ay, i64 noundef %i.bb) #26
  br label %_ZNSt12_Vector_baseIjSaIjEE13_M_deallocateEPjm.exit.i

_ZNSt12_Vector_baseIjSaIjEE13_M_deallocateEPjm.exit.i: ; preds = %bb.l, %_ZNSt6vectorIjSaIjEE11_S_relocateEPjS2_S2_RS0_.exit.i
  store ptr %i.bj, ptr %i.av, align 8
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bj, i64 %i.bh
  store ptr %i.bl, ptr %i.be, align 8
  %i.bm = getelementptr inbounds nuw [4 x i8], ptr %i.bj, i64 %i.y
  store ptr %i.bm, ptr %i.aw, align 8
  %.pre28 = load ptr, ptr %i.f, align 8           ; 2 uses
  %.phi.trans.insert29 = getelementptr inbounds nuw i8, ptr %.pre28, i64 24
  %.pre30 = load ptr, ptr %.phi.trans.insert29, align 8 ; 2 uses
  %.pre38 = ptrtoint ptr %.pre30 to i64
  br label %_ZNSt6vectorIjSaIjEE7reserveEm.exit

_ZNSt6vectorIjSaIjEE7reserveEm.exit:              ; preds = %_ZNSt6vectorI10aiVector3tIfESaIS1_EE6resizeEm.exit, %_ZNSt12_Vector_baseIjSaIjEE13_M_deallocateEPjm.exit.i
  %.pre-phi39 = phi i64 [ %i.ba, %_ZNSt6vectorI10aiVector3tIfESaIS1_EE6resizeEm.exit ], [ %.pre38, %_ZNSt12_Vector_baseIjSaIjEE13_M_deallocateEPjm.exit.i ]
  %i.bn = phi ptr [ %i.ay, %_ZNSt6vectorI10aiVector3tIfESaIS1_EE6resizeEm.exit ], [ %.pre30, %_ZNSt12_Vector_baseIjSaIjEE13_M_deallocateEPjm.exit.i ]
  %i.bo = phi ptr [ %i.au, %_ZNSt6vectorI10aiVector3tIfESaIS1_EE6resizeEm.exit ], [ %.pre28, %_ZNSt12_Vector_baseIjSaIjEE13_M_deallocateEPjm.exit.i ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #25
  store i32 -1, ptr %i.a, align 4
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bo, i64 32 ; 2 uses
  %i.bq = load ptr, ptr %i.bp, align 8            ; 3 uses
  %i.br = ptrtoint ptr %i.bq to i64
  %i.bs = sub i64 %i.br, %.pre-phi39
  %i.bt = ashr exact i64 %i.bs, 2                 ; 3 uses
  %i.bu = icmp ult i64 %i.bt, %i.ao
  br i1 %i.bu, label %bb.m, label %bb.n

bb.m:                                             ; preds = %_ZNSt6vectorIjSaIjEE7reserveEm.exit
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bo, i64 24
  %i.bw = sub nuw nsw i64 %i.ao, %i.bt
  call void @_ZNSt6vectorIjSaIjEE14_M_fill_insertEN9__gnu_cxx17__normal_iteratorIPjS1_EEmRKj(ptr noundef nonnull align 8 dereferenceable(24) %i.bv, ptr %i.bq, i64 noundef %i.bw, ptr noundef nonnull align 4 dereferenceable(4) %i.a)
  br label %_ZNSt6vectorIjSaIjEE6resizeEmRKj.exit

bb.n:                                             ; preds = %_ZNSt6vectorIjSaIjEE7reserveEm.exit
  %i.bx = icmp ugt i64 %i.bt, %i.ao
  br i1 %i.bx, label %bb.o, label %_ZNSt6vectorIjSaIjEE6resizeEmRKj.exit

bb.o:                                             ; preds = %bb.n
  %i.by = getelementptr inbounds nuw [4 x i8], ptr %i.bn, i64 %i.ao ; 2 uses
  %.not.i.i17 = icmp eq ptr %i.bq, %i.by
  br i1 %.not.i.i17, label %_ZNSt6vectorIjSaIjEE6resizeEmRKj.exit, label %_ZSt8_DestroyIPjjEvT_S1_RSaIT0_E.exit.i.i

_ZSt8_DestroyIPjjEvT_S1_RSaIT0_E.exit.i.i:        ; preds = %bb.o
  store ptr %i.by, ptr %i.bp, align 8
  br label %_ZNSt6vectorIjSaIjEE6resizeEmRKj.exit

_ZNSt6vectorIjSaIjEE6resizeEmRKj.exit:            ; preds = %bb.m, %bb.n, %bb.o, %_ZSt8_DestroyIPjjEvT_S1_RSaIT0_E.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #25
  br label %_ZNSt6vectorI10aiVector3tIfESaIS1_EE6resizeEm.exit20

bb.p:                                             ; preds = %bb.e
  %i.bz = zext i32 %i.p to i64                    ; 4 uses
  %i.ca = icmp ult i64 %i.n, %i.bz
  br i1 %i.ca, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  %i.cb = sub nuw nsw i64 %i.bz, %i.n
  tail call void @_ZNSt6vectorI10aiVector3tIfESaIS1_EE17_M_default_appendEm(ptr noundef nonnull align 8 dereferenceable(24) %i.g, i64 noundef %i.cb)
  br label %_ZNSt6vectorI10aiVector3tIfESaIS1_EE6resizeEm.exit20

bb.r:                                             ; preds = %bb.p
  %i.cc = icmp ugt i64 %i.n, %i.bz
  br i1 %i.cc, label %bb.s, label %_ZNSt6vectorI10aiVector3tIfESaIS1_EE6resizeEm.exit20

bb.s:                                             ; preds = %bb.r
  %i.cd = getelementptr inbounds nuw [12 x i8], ptr %i.j, i64 %i.bz ; 2 uses
  %.not.i.i18 = icmp eq ptr %i.i, %i.cd
  br i1 %.not.i.i18, label %_ZNSt6vectorI10aiVector3tIfESaIS1_EE6resizeEm.exit20, label %_ZSt8_DestroyIP10aiVector3tIfES1_EvT_S3_RSaIT0_E.exit.i.i19

_ZSt8_DestroyIP10aiVector3tIfES1_EvT_S3_RSaIT0_E.exit.i.i19: ; preds = %bb.s
  store ptr %i.cd, ptr %i.h, align 8
  br label %_ZNSt6vectorI10aiVector3tIfESaIS1_EE6resizeEm.exit20

_ZNSt6vectorI10aiVector3tIfESaIS1_EE6resizeEm.exit20: ; preds = %_ZSt8_DestroyIP10aiVector3tIfES1_EvT_S3_RSaIT0_E.exit.i.i19, %bb.s, %bb.r, %bb.q, %_ZNSt6vectorIjSaIjEE6resizeEmRKj.exit
  %i.ce = lshr i32 %1, 2                          ; 5 uses
  %.not24 = icmp eq i32 %i.ce, 0
  br i1 %.not24, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %_ZNSt6vectorI10aiVector3tIfESaIS1_EE6resizeEm.exit20
  %i.cf = getelementptr inbounds nuw i8, ptr %0, i64 168 ; 3 uses
  %i.cg = icmp eq i32 %i.ce, 1
  br i1 %i.cg, label %.epil.preheader, label %.lr.ph.new

.lr.ph.new:                                       ; preds = %.lr.ph
  %2 = and i32 %i.ce, 1073741822
  %unroll_iter = zext nneg i32 %2 to i64
  br label %bb.t

._crit_edge.loopexit.unr-lcssa:                   ; preds = %bb.t
  %lcmp.mod.not = trunc i32 %i.ce to i1
  br i1 %lcmp.mod.not, label %.epil.preheader, label %._crit_edge

.epil.preheader:                                  ; preds = %._crit_edge.loopexit.unr-lcssa, %.lr.ph
  %indvars.iv.epil.init = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next.1, %._crit_edge.loopexit.unr-lcssa ]
  %lcmp.mod57 = trunc i32 %i.ce to i1
  call void @llvm.assume(i1 %lcmp.mod57)
  %i.ch = load ptr, ptr %i.cf, align 8
  %i.ci = shl nuw nsw i64 %indvars.iv.epil.init, 2
  %i.cj = getelementptr inbounds nuw i8, ptr %i.ch, i64 %i.ci ; 2 uses
  %i.ck = load <4 x i8>, ptr %i.cj, align 1
  %i.cl = shufflevector <4 x i8> %i.ck, <4 x i8> poison, <4 x i32> <i32 3, i32 2, i32 1, i32 0>
  store <4 x i8> %i.cl, ptr %i.cj, align 1
  br label %._crit_edge

._crit_edge:                                      ; preds = %.epil.preheader, %._crit_edge.loopexit.unr-lcssa, %_ZNSt6vectorI10aiVector3tIfESaIS1_EE6resizeEm.exit20
  %i.cm = zext i32 %1 to i64
  %i.cn = load ptr, ptr %i.f, align 8
  %i.co = load ptr, ptr %i.cn, align 8
  %i.cp = getelementptr inbounds nuw i8, ptr %0, i64 168
  %i.cq = load ptr, ptr %i.cp, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.co, ptr align 1 %i.cq, i64 %i.cm, i1 false)
  ret void

bb.t:                                             ; preds = %bb.t, %.lr.ph.new
  %indvars.iv = phi i64 [ 0, %.lr.ph.new ], [ %indvars.iv.next.1, %bb.t ] ; 3 uses
  %niter = phi i64 [ 0, %.lr.ph.new ], [ %niter.next.1, %bb.t ]
  %i.cr = load ptr, ptr %i.cf, align 8
  %i.cs = shl nuw nsw i64 %indvars.iv, 2
  %i.ct = getelementptr inbounds nuw i8, ptr %i.cr, i64 %i.cs ; 2 uses
  %i.cu = load <4 x i8>, ptr %i.ct, align 1
  %i.cv = shufflevector <4 x i8> %i.cu, <4 x i8> poison, <4 x i32> <i32 3, i32 2, i32 1, i32 0>
  store <4 x i8> %i.cv, ptr %i.ct, align 1
  %i.cw = load ptr, ptr %i.cf, align 8
  %indvars.iv.next = shl i64 %indvars.iv, 2
  %i.cx = getelementptr inbounds nuw i8, ptr %i.cw, i64 %indvars.iv.next
  %i.cy = getelementptr inbounds nuw i8, ptr %i.cx, i64 4 ; 2 uses
  %i.cz = load <4 x i8>, ptr %i.cy, align 1
  %i.da = shufflevector <4 x i8> %i.cz, <4 x i8> poison, <4 x i32> <i32 3, i32 2, i32 1, i32 0>
  store <4 x i8> %i.da, ptr %i.cy, align 1
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge.loopexit.unr-lcssa, label %bb.t, !llvm.loop !72
}

; Function Attrs: mustprogress uwtable
define hidden void @_ZN6Assimp11LWOImporter16LoadLWO2PolygonsEj(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(233) %0, i32 noundef %1) local_unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 11 uses
  %2 = alloca %"struct.Assimp::LWO::Face", align 8 ; 7 uses
  %3 = alloca %"class.__gnu_cxx::__normal_iterator", align 8 ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 168 ; 3 uses
  %i.c = load ptr, ptr %i.b, align 8              ; 3 uses
  %i.d = zext i32 %1 to i64
  %i.e = getelementptr inbounds nuw i8, ptr %i.c, i64 %i.d ; 3 uses
  %i.f = load i32, ptr %i.c, align 1
  %i.g = getelementptr inbounds nuw i8, ptr %i.c, i64 4
  store ptr %i.g, ptr %i.b, align 8
  %.sroa.0.0.insert.insert.i = tail call noundef i32 @llvm.bswap.i32(i32 %i.f) ; 2 uses
  switch i32 %.sroa.0.0.insert.insert.i, label %bb.d [
    i32 1296187724, label %bb.b
    i32 1129665110, label %bb.c
    i32 1347699528, label %bb.e
    i32 1178682181, label %bb.e
    i32 1112493637, label %bb.e
    i32 1398096452, label %bb.e
  ]

bb.b:                                             ; preds = %bb.a
  %i.h = tail call noundef ptr @_ZN6Assimp13DefaultLogger3getEv()
  tail call void @_ZN6Assimp6Logger4warnEPKc(ptr noundef nonnull align 8 dereferenceable(12) %i.h, ptr noundef nonnull @.str.41)
  br label %bb.e

bb.c:                                             ; preds = %bb.a
  %i.i = tail call noundef ptr @_ZN6Assimp13DefaultLogger3getEv()
  tail call void @_ZN6Assimp6Logger4warnEPKc(ptr noundef nonnull align 8 dereferenceable(12) %i.i, ptr noundef nonnull @.str.42)
  br label %bb.e

bb.d:                                             ; preds = %bb.a
  %i.j = tail call noundef ptr @_ZN6Assimp13DefaultLogger3getEv()
  tail call void @_ZN6Assimp6Logger5errorEPKc(ptr noundef nonnull align 8 dereferenceable(12) %i.j, ptr noundef nonnull @.str.43)
  br label %bb.e

bb.e:                                             ; preds = %bb.a, %bb.a, %bb.a, %bb.a, %bb.d, %bb.c, %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #25
  %i.k = load ptr, ptr %i.b, align 8              ; 3 uses
  %i.l = icmp ult ptr %i.k, %i.e
  br i1 %i.l, label %.lr.ph25.i.preheader, label %_ZN6Assimp11LWOImporter22CountVertsAndFacesLWO2ERjS1_RPtPKtj.exit.thread

.loopexit.i.loopexit.unr-lcssa:                   ; preds = %.lr.ph.i
  %lcmp.mod.not = icmp eq i16 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.loopexit.i, label %.lr.ph.i.epil.preheader

.lr.ph.i.epil.preheader:                          ; preds = %.loopexit.i.loopexit.unr-lcssa, %.lr.ph.i.preheader
  %.epil.init = phi ptr [ %i.u, %.lr.ph.i.preheader ], [ %i.ai, %.loopexit.i.loopexit.unr-lcssa ]
  %lcmp.mod37 = icmp ne i16 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod37)
  br label %.lr.ph.i.epil

.lr.ph.i.epil:                                    ; preds = %.lr.ph.i.epil, %.lr.ph.i.epil.preheader
  %i.m = phi ptr [ %i.o, %.lr.ph.i.epil ], [ %.epil.init, %.lr.ph.i.epil.preheader ] ; 2 uses
  %epil.iter = phi i16 [ %epil.iter.next, %.lr.ph.i.epil ], [ 0, %.lr.ph.i.epil.preheader ]
  %i.n = load i8, ptr %i.m, align 1
  %.not.i.i.epil = icmp eq i8 %i.n, -1
  %spec.select.i.epil = select i1 %.not.i.i.epil, i64 4, i64 2
  %i.o = getelementptr inbounds nuw i8, ptr %i.m, i64 %spec.select.i.epil ; 3 uses
  store ptr %i.o, ptr %i.a, align 8
  %epil.iter.next = add i16 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i16 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %.loopexit.i, label %.lr.ph.i.epil, !llvm.loop !73

.loopexit.i:                                      ; preds = %.loopexit.i.loopexit.unr-lcssa, %.lr.ph.i.epil, %.lr.ph25.i.preheader
  %i.p = phi ptr [ %i.u, %.lr.ph25.i.preheader ], [ %i.ai, %.loopexit.i.loopexit.unr-lcssa ], [ %i.o, %.lr.ph.i.epil ] ; 2 uses
  %i.q = icmp ult ptr %i.p, %i.e
  br i1 %i.q, label %.lr.ph25.i, label %_ZN6Assimp11LWOImporter22CountVertsAndFacesLWO2ERjS1_RPtPKtj.exit, !llvm.loop !74

.lr.ph25.i:                                       ; preds = %.loopexit.i
  %i.r = add i32 %i.s, -1
  %.not.i = icmp eq i32 %i.s, 0
  br i1 %.not.i, label %_ZN6Assimp11LWOImporter22CountVertsAndFacesLWO2ERjS1_RPtPKtj.exit.thread27, label %.lr.ph25.i.preheader, !llvm.loop !74

.lr.ph25.i.preheader:                             ; preds = %bb.e, %.lr.ph25.i
  %i.s = phi i32 [ %i.r, %.lr.ph25.i ], [ -2, %bb.e ] ; 2 uses
  %i.t = phi ptr [ %i.p, %.lr.ph25.i ], [ %i.k, %bb.e ] ; 2 uses
  %.01233 = phi i32 [ %i.y, %.lr.ph25.i ], [ 0, %bb.e ]
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 2 ; 4 uses
  store ptr %i.u, ptr %i.a, align 8
  %i.v = load i16, ptr %i.t, align 2
  %i.w = and i16 %i.v, -253                       ; 2 uses
  %i.x = tail call i16 @llvm.bswap.i16(i16 %i.w)  ; 3 uses
  %i.y = add i32 %.01233, 1                       ; 3 uses
  %.not27.i = icmp eq i16 %i.w, 0
  br i1 %.not27.i, label %.loopexit.i, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %.lr.ph25.i.preheader
  %xtraiter = and i16 %i.x, 3                     ; 3 uses
  %i.z = icmp samesign ult i16 %i.x, 4
  br i1 %i.z, label %.lr.ph.i.epil.preheader, label %.lr.ph.i.preheader.new

.lr.ph.i.preheader.new:                           ; preds = %.lr.ph.i.preheader
  %unroll_iter = and i16 %i.x, 1020
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i, %.lr.ph.i.preheader.new
  %i.aa = phi ptr [ %i.u, %.lr.ph.i.preheader.new ], [ %i.ai, %.lr.ph.i ] ; 2 uses
  %niter = phi i16 [ 0, %.lr.ph.i.preheader.new ], [ %niter.next.3, %.lr.ph.i ]
  %i.ab = load i8, ptr %i.aa, align 1
  %.not.i.i = icmp eq i8 %i.ab, -1
  %spec.select.i = select i1 %.not.i.i, i64 4, i64 2
  %i.ac = getelementptr inbounds nuw i8, ptr %i.aa, i64 %spec.select.i ; 3 uses
  store ptr %i.ac, ptr %i.a, align 8
  %i.ad = load i8, ptr %i.ac, align 1
  %.not.i.i.1 = icmp eq i8 %i.ad, -1
  %spec.select.i.1 = select i1 %.not.i.i.1, i64 4, i64 2
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ac, i64 %spec.select.i.1 ; 3 uses
  store ptr %i.ae, ptr %i.a, align 8
  %i.af = load i8, ptr %i.ae, align 1
  %.not.i.i.2 = icmp eq i8 %i.af, -1
  %spec.select.i.2 = select i1 %.not.i.i.2, i64 4, i64 2
  %i.ag = getelementptr inbounds nuw i8, ptr %i.ae, i64 %spec.select.i.2 ; 3 uses
  store ptr %i.ag, ptr %i.a, align 8
  %i.ah = load i8, ptr %i.ag, align 1
  %.not.i.i.3 = icmp eq i8 %i.ah, -1
  %spec.select.i.3 = select i1 %.not.i.i.3, i64 4, i64 2
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ag, i64 %spec.select.i.3 ; 4 uses
  store ptr %i.ai, ptr %i.a, align 8
  %niter.next.3 = add i16 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i16 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %.loopexit.i.loopexit.unr-lcssa, label %.lr.ph.i, !llvm.loop !75

_ZN6Assimp11LWOImporter22CountVertsAndFacesLWO2ERjS1_RPtPKtj.exit: ; preds = %.loopexit.i
  %.not = icmp eq i32 %i.y, 0
  br i1 %.not, label %_ZN6Assimp11LWOImporter22CountVertsAndFacesLWO2ERjS1_RPtPKtj.exit.thread, label %_ZN6Assimp11LWOImporter22CountVertsAndFacesLWO2ERjS1_RPtPKtj.exit.thread27

_ZN6Assimp11LWOImporter22CountVertsAndFacesLWO2ERjS1_RPtPKtj.exit.thread27: ; preds = %.lr.ph25.i, %_ZN6Assimp11LWOImporter22CountVertsAndFacesLWO2ERjS1_RPtPKtj.exit
  %.130 = phi i32 [ %i.y, %_ZN6Assimp11LWOImporter22CountVertsAndFacesLWO2ERjS1_RPtPKtj.exit ], [ -1, %.lr.ph25.i ]
  store ptr %i.k, ptr %i.a, align 8
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 2 uses
  %i.ak = load ptr, ptr %i.aj, align 8            ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 256 ; 2 uses
  %i.am = zext i32 %.130 to i64                   ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #25
  store i32 0, ptr %2, align 8
  %i.an = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 3 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %2, i64 24
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.an, i8 0, i64 16, i1 false)
  store i32 %.sroa.0.0.insert.insert.i, ptr %i.ao, align 8
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ak, i64 264 ; 2 uses
  %i.aq = load ptr, ptr %i.ap, align 8            ; 4 uses
  %i.ar = load ptr, ptr %i.al, align 8            ; 2 uses
  %i.as = ptrtoint ptr %i.aq to i64
  %i.at = ptrtoint ptr %i.ar to i64
  %i.au = sub i64 %i.as, %i.at
  %i.av = ashr exact i64 %i.au, 5                 ; 3 uses
  %i.aw = icmp ult i64 %i.av, %i.am
  br i1 %i.aw, label %bb.f, label %bb.g

bb.f:                                             ; preds = %_ZN6Assimp11LWOImporter22CountVertsAndFacesLWO2ERjS1_RPtPKtj.exit.thread27
  %i.ax = sub nuw nsw i64 %i.am, %i.av
  invoke void @_ZNSt6vectorIN6Assimp3LWO4FaceESaIS2_EE14_M_fill_insertEN9__gnu_cxx17__normal_iteratorIPS2_S4_EEmRKS2_(ptr noundef nonnull align 8 dereferenceable(24) %i.al, ptr %i.aq, i64 noundef %i.ax, ptr noundef nonnull align 8 dereferenceable(28) %2)
          to label %_ZNSt6vectorIN6Assimp3LWO4FaceESaIS2_EE6resizeEmRKS2_.exit unwind label %bb.k
end_hunk_0
begin_hunk_1_@_ZN6Assimp11LWOImporter17LoadLWO2VertexMapEjb:bb.a

_ZNSt10unique_ptrIA_fSt14default_deleteIS0_EED2Ev.exit144: ; preds = %._crit_edge287
  %i.tl = landingpad { ptr, i32 }
          cleanup
  call void @_ZdaPv(ptr noundef nonnull %i.rz) #26
  br label %.loopexit.split-lp

_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread: ; preds = %bb.ci, %bb.aa, %bb.t, %bb.y, %bb.f, %bb.f, %bb.f, %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit, %bb.u, %bb.r, %bb.n, %bb.j
  %i.tm = load ptr, ptr %3, align 8               ; 2 uses
  %i.tn = icmp eq ptr %i.tm, %i.n
  br i1 %i.tn, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread
  %i.to = load i64, ptr %i.n, align 8
  %i.tp = add i64 %i.to, 1
  call void @_ZdlPvm(ptr noundef %i.tm, i64 noundef %i.tp) #26
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #25
  ret void

.loopexit.split-lp:                               ; preds = %.loopexit, %.loopexit.split-lp.loopexit.split-lp.loopexit, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit, %.loopexit.split-lp.loopexit, %bb.ch, %_ZNSt10unique_ptrIA_fSt14default_deleteIS0_EED2Ev.exit144, %bb.ah, %bb.cf, %bb.cd, %bb.aq, %bb.g
  %.pn109 = phi { ptr, i32 } [ %i.p, %bb.g ], [ %i.dz, %bb.ah ], [ %i.rr, %bb.cd ], [ %i.fc, %bb.aq ], [ %i.sq, %bb.ch ], [ %i.rt, %bb.cf ], [ %i.tl, %_ZNSt10unique_ptrIA_fSt14default_deleteIS0_EED2Ev.exit144 ], [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit227, %.loopexit.split-lp.loopexit ], [ %lpad.loopexit230, %.loopexit.split-lp.loopexit.split-lp.loopexit ], [ %lpad.loopexit232, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit ], [ %lpad.loopexit235, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit ], [ %lpad.loopexit237, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit ], [ %lpad.loopexit240, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit ], [ %lpad.loopexit242, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit ], [ %lpad.loopexit245, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ]
  %i.tq = load ptr, ptr %3, align 8               ; 2 uses
  %i.tr = icmp eq ptr %i.tq, %i.n
  br i1 %i.tr, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit147, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i145

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i145: ; preds = %.loopexit.split-lp
  %i.ts = load i64, ptr %i.n, align 8
  %i.tt = add i64 %i.ts, 1
  call void @_ZdlPvm(ptr noundef %i.tq, i64 noundef %i.tt) #26
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit147

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit147: ; preds = %.loopexit.split-lp, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i145
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #25
  br label %bb.cj

bb.cj:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit147, %bb.d
  %.pn111 = phi { ptr, i32 } [ %i.h, %bb.d ], [ %.pn109, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit147 ]
  resume { ptr, i32 } %.pn111
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr hidden void @_ZN6Assimp11LWOImporter5GetS0ERNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEj(ptr noundef nonnull align 8 dereferenceable(233) %0, ptr noundef nonnull align 8 dereferenceable(32) %1, i32 noundef %2) local_unnamed_addr #13 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 13 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 168 ; 5 uses
  %i.c = load ptr, ptr %i.b, align 8              ; 6 uses
  %i.d = load i8, ptr %i.c, align 1
  %.not12 = icmp eq i8 %i.d, 0
  br i1 %.not12, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %bb.c
  %.013 = phi i32 [ %i.f, %bb.c ], [ 0, %bb.a ]
  %i.e = phi ptr [ %i.i, %bb.c ], [ %i.c, %bb.a ]
  %i.f = add i32 %.013, 1                         ; 2 uses
  %i.g = icmp ugt i32 %i.f, %2
  br i1 %i.g, label %bb.b, label %bb.c

bb.b:                                             ; preds = %.lr.ph
  %i.h = tail call noundef ptr @_ZN6Assimp13DefaultLogger3getEv()
  tail call void @_ZN6Assimp6Logger4warnEPKc(ptr noundef nonnull align 8 dereferenceable(12) %i.h, ptr noundef nonnull @.str.104)
  %.pre = load ptr, ptr %i.b, align 8
  br label %.loopexit

bb.c:                                             ; preds = %.lr.ph
  %i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 1 ; 4 uses
  store ptr %i.i, ptr %i.b, align 8
  %i.j = load i8, ptr %i.i, align 1
  %.not = icmp eq i8 %i.j, 0
  br i1 %.not, label %.loopexit, label %.lr.ph, !llvm.loop !103

.loopexit:                                        ; preds = %bb.c, %bb.b, %bb.a
  %i.k = phi ptr [ %.pre, %bb.b ], [ %i.c, %bb.a ], [ %i.i, %bb.c ]
  %i.l = ptrtoint ptr %i.k to i64
  %i.m = ptrtoint ptr %i.c to i64
  %i.n = sub i64 %i.l, %i.m                       ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #25
  %i.o = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 9 uses
  store ptr %i.o, ptr %3, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #25
  store i64 %i.n, ptr %i.a, align 8
  %i.p = icmp ugt i64 %i.n, 15
  br i1 %i.p, label %.noexc.i, label %._crit_edge.i.i

.noexc.i:                                         ; preds = %.loopexit
  %i.q = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0) ; 2 uses
  store ptr %i.q, ptr %3, align 8
  %i.r = load i64, ptr %i.a, align 8
  store i64 %i.r, ptr %i.o, align 8
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %.noexc.i, %.loopexit
  %i.s = phi ptr [ %i.q, %.noexc.i ], [ %i.o, %.loopexit ] ; 2 uses
  switch i64 %i.n, label %bb.e [
    i64 1, label %bb.d
    i64 0, label %bb.f
  ]

bb.d:                                             ; preds = %._crit_edge.i.i
  %i.t = load i8, ptr %i.c, align 1
  store i8 %i.t, ptr %i.s, align 1
  br label %bb.f

bb.e:                                             ; preds = %._crit_edge.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.s, ptr nonnull align 1 %i.c, i64 %i.n, i1 false)
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d, %._crit_edge.i.i
  %i.u = load i64, ptr %i.a, align 8              ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 6 uses
  store i64 %i.u, ptr %i.v, align 8
  %i.w = load ptr, ptr %3, align 8
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 %i.u
  store i8 0, ptr %i.x, align 1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #25
  %i.y = load ptr, ptr %1, align 8                ; 6 uses
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.aa = icmp eq ptr %i.y, %i.z
  %i.ab = load ptr, ptr %3, align 8               ; 5 uses
  %i.ac = icmp eq ptr %i.ab, %i.o                 ; 2 uses
  br i1 %i.aa, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i: ; preds = %bb.f
  br i1 %i.ac, label %bb.g, label %.thread.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i: ; preds = %bb.f
  br i1 %i.ac, label %bb.g, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i

bb.g:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i
  %i.ad = load i64, ptr %i.v, align 8             ; 3 uses
  %i.ae = icmp ult i64 %i.ad, 16
  call void @llvm.assume(i1 %i.ae)
  switch i64 %i.ad, label %bb.i [
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i
    i64 1, label %bb.h
  ]

bb.h:                                             ; preds = %bb.g
  %i.af = load i8, ptr %i.ab, align 1
  store i8 %i.af, ptr %i.y, align 1
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i

bb.i:                                             ; preds = %bb.g
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.y, ptr align 1 %i.ab, i64 %i.ad, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i: ; preds = %bb.i, %bb.h, %bb.g
  %i.ag = load i64, ptr %i.v, align 8             ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %1, i64 8
  store i64 %i.ag, ptr %i.ah, align 8
  %i.ai = load ptr, ptr %1, align 8
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 %i.ag
  store i8 0, ptr %i.aj, align 1
  %.pre.i = load ptr, ptr %3, align 8
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit

.thread.i:                                        ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i
  %i.ak = getelementptr inbounds nuw i8, ptr %1, i64 8
  store ptr %i.ab, ptr %1, align 8
  %i.al = load <2 x i64>, ptr %i.v, align 8
  store <2 x i64> %i.al, ptr %i.ak, align 8
  br label %bb.k

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i
  %i.am = load i64, ptr %i.z, align 8
  store ptr %i.ab, ptr %1, align 8
  %i.an = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.ao = load <2 x i64>, ptr %i.v, align 8
  store <2 x i64> %i.ao, ptr %i.an, align 8
  %.not.i = icmp eq ptr %i.y, null
  br i1 %.not.i, label %bb.k, label %bb.j

bb.j:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i
  store ptr %i.y, ptr %3, align 8
  store i64 %i.am, ptr %i.o, align 8
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit

bb.k:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i, %.thread.i
  store ptr %i.o, ptr %3, align 8
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i, %bb.j, %bb.k
  %i.ap = phi ptr [ %.pre.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i ], [ %i.y, %bb.j ], [ %i.o, %bb.k ]
  store i64 0, ptr %i.v, align 8
  store i8 0, ptr %i.ap, align 1
  %i.aq = load ptr, ptr %3, align 8               ; 2 uses
  %i.ar = icmp eq ptr %i.aq, %i.o
  br i1 %i.ar, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit
  %i.as = load i64, ptr %i.o, align 8
  %i.at = add i64 %i.as, 1
  call void @_ZdlPvm(ptr noundef %i.aq, i64 noundef %i.at) #26
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #25
  %i.au = load ptr, ptr %i.b, align 8
  %i.av = sub i64 2, %i.n
  %i.aw = getelementptr inbounds i8, ptr %i.au, i64 %i.av
  store ptr %i.aw, ptr %i.b, align 8
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN6Assimp6Logger4warnIJRA28_KcRNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERA21_S2_EEEvDpOT_(ptr noundef nonnull align 8 dereferenceable(12) %0, ptr noundef nonnull align 1 dereferenceable(28) %1, ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 1 dereferenceable(21) %3) local_unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %5 = alloca %"class.Assimp::Formatter::basic_formatter", align 8 ; 12 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #25
  call void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEC1Ev(ptr noundef nonnull align 8 dereferenceable(376) %5)
  %i.a = call noundef i64 @strlen(ptr noundef nonnull align 1 dereferenceable(28) %1) #25
  %i.b = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(376) %5, ptr noundef nonnull align 1 dereferenceable(28) %1, i64 noundef %i.a)
          to label %_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEEC2IA28_cEERKT_.exit unwind label %bb.b ; 0 uses

common.resume:                                    ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit9, %bb.b
  %common.resume.op = phi { ptr, i32 } [ %i.c, %bb.b ], [ %.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit9 ]
  resume { ptr, i32 } %common.resume.op

bb.b:                                             ; preds = %bb.a
  %i.c = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(376) %5) #25
  br label %common.resume

_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEEC2IA28_cEERKT_.exit: ; preds = %bb.a
  invoke void @_ZN6Assimp6Logger13formatMessageIJRA21_KcERNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESA_NS_9Formatter15basic_formatterIcS8_S9_EEOT0_DpOT_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %4, ptr noundef nonnull align 8 dereferenceable(12) %0, ptr noundef nonnull %5, ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 1 dereferenceable(21) %3)
          to label %bb.c unwind label %bb.e

bb.c:                                             ; preds = %_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEEC2IA28_cEERKT_.exit
  %i.d = load ptr, ptr %4, align 8
  invoke void @_ZN6Assimp6Logger4warnEPKc(ptr noundef nonnull align 8 dereferenceable(12) %0, ptr noundef %i.d)
          to label %bb.d unwind label %bb.f

bb.d:                                             ; preds = %bb.c
  %i.e = load ptr, ptr %4, align 8                ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.g = icmp eq ptr %i.e, %i.f
  br i1 %i.g, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.d
  %i.h = load i64, ptr %i.f, align 8
  %i.i = add i64 %i.h, 1
  call void @_ZdlPvm(ptr noundef %i.e, i64 noundef %i.i) #26
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.d, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  %i.j = load ptr, ptr @_ZTTNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE, align 8 ; 2 uses
  store ptr %i.j, ptr %5, align 8
  %i.k = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE, i64 24), align 8
  %i.l = getelementptr i8, ptr %i.j, i64 -24
  %i.m = load i64, ptr %i.l, align 8
  %i.n = getelementptr inbounds i8, ptr %5, i64 %i.m
  store ptr %i.k, ptr %i.n, align 8
  %i.o = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEEE, i64 16), ptr %i.o, align 8
  %i.p = getelementptr inbounds nuw i8, ptr %5, i64 80
  %i.q = load ptr, ptr %i.p, align 8              ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %5, i64 96 ; 2 uses
  %i.s = icmp eq ptr %i.q, %i.r
  br i1 %i.s, label %_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.t = load i64, ptr %i.r, align 8
  %i.u = add i64 %i.t, 1
  call void @_ZdlPvm(ptr noundef %i.q, i64 noundef %i.u) #26
  br label %_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEED2Ev.exit

_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVSt15basic_streambufIcSt11char_traitsIcEE, i64 16), ptr %i.o, align 8
  %i.v = getelementptr inbounds nuw i8, ptr %5, i64 64
  call void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.v) #25
  %i.w = getelementptr inbounds nuw i8, ptr %5, i64 112
  call void @_ZNSt8ios_baseD2Ev(ptr noundef nonnull align 8 dereferenceable(264) %i.w) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #25
  ret void

bb.e:                                             ; preds = %_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEEC2IA28_cEERKT_.exit
  %i.x = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit9

bb.f:                                             ; preds = %bb.c
  %i.y = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.z = load ptr, ptr %4, align 8                ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.ab = icmp eq ptr %i.z, %i.aa
  br i1 %i.ab, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit9, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i7

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i7: ; preds = %bb.f
  %i.ac = load i64, ptr %i.aa, align 8
  %i.ad = add i64 %i.ac, 1
  call void @_ZdlPvm(ptr noundef %i.z, i64 noundef %i.ad) #26
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit9

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit9: ; preds = %bb.f, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i7, %bb.e
  %.pn = phi { ptr, i32 } [ %i.x, %bb.e ], [ %i.y, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i7 ], [ %i.y, %bb.f ]
  call void @_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEED2Ev(ptr noundef nonnull align 8 dead_on_return(376) dereferenceable(376) %5) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #25
  br label %common.resume
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden noundef ptr @_Z9FindEntryIN6Assimp3LWO9UVChannelEEPNS1_9VMapEntryERSt6vectorIT_SaIS6_EERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEb(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(32) %1, i1 noundef zeroext %2) local_unnamed_addr #3 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"struct.Assimp::LWO::UVChannel", align 8 ; 18 uses
  %i.a = load ptr, ptr %0, align 8                ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 5 uses
  %i.c = load ptr, ptr %i.b, align 8              ; 5 uses
  %.not3032 = icmp eq ptr %i.a, %i.c
  br i1 %.not3032, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.e = load i64, ptr %i.d, align 8              ; 4 uses
  %i.f = load ptr, ptr %1, align 8                ; 2 uses
  br i1 %2, label %.lr.ph.split.us, label %.lr.ph.split

.lr.ph.split.us:                                  ; preds = %.lr.ph
  %i.g = icmp eq i64 %i.e, 0
  br label %bb.b

bb.b:                                             ; preds = %.thread.us, %.lr.ph.split.us
  %.sroa.019.033.us = phi ptr [ %i.a, %.lr.ph.split.us ], [ %i.n, %.thread.us ] ; 5 uses
  %i.h = getelementptr inbounds nuw i8, ptr %.sroa.019.033.us, i64 8
  %i.i = getelementptr inbounds nuw i8, ptr %.sroa.019.033.us, i64 16
  %i.j = load i64, ptr %i.i, align 8
  %i.k = icmp eq i64 %i.j, %i.e
  br i1 %i.k, label %bb.c, label %.thread.us

bb.c:                                             ; preds = %bb.b
  br i1 %i.g, label %.thread27, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.us

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.us: ; preds = %bb.c
  %i.l = load ptr, ptr %i.h, align 8
  %bcmp.i.us = tail call i32 @bcmp(ptr %i.l, ptr %i.f, i64 %i.e)
  %i.m = icmp eq i32 %bcmp.i.us, 0
  br i1 %i.m, label %.thread27, label %.thread.us

.thread.us:                                       ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.us, %bb.b
  %i.n = getelementptr inbounds nuw i8, ptr %.sroa.019.033.us, i64 112 ; 2 uses
  %.not30.us = icmp eq ptr %i.n, %i.c
  br i1 %.not30.us, label %._crit_edge, label %bb.b

.lr.ph.split:                                     ; preds = %.lr.ph, %.thread
  %.sroa.019.033 = phi ptr [ %i.v, %.thread ], [ %i.a, %.lr.ph ] ; 4 uses
  %i.o = getelementptr inbounds nuw i8, ptr %.sroa.019.033, i64 8
  %i.p = getelementptr inbounds nuw i8, ptr %.sroa.019.033, i64 16
  %i.q = load i64, ptr %i.p, align 8              ; 3 uses
  %i.r = icmp eq i64 %i.q, %i.e
  br i1 %i.r, label %bb.d, label %.thread

bb.d:                                             ; preds = %.lr.ph.split
  %i.s = icmp eq i64 %i.q, 0
  br i1 %i.s, label %.thread27.loopexit34, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit: ; preds = %bb.d
  %i.t = load ptr, ptr %i.o, align 8
  %bcmp.i = tail call i32 @bcmp(ptr %i.t, ptr %i.f, i64 %i.q)
  %i.u = icmp eq i32 %bcmp.i, 0
  br i1 %i.u, label %.thread27.loopexit34, label %.thread

.thread:                                          ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit, %.lr.ph.split
  %i.v = getelementptr inbounds nuw i8, ptr %.sroa.019.033, i64 112 ; 2 uses
  %.not30 = icmp eq ptr %i.v, %i.c
  br i1 %.not30, label %._crit_edge.loopexit35, label %.lr.ph.split

._crit_edge.loopexit35:                           ; preds = %.thread
  %.pre = load ptr, ptr %i.b, align 8
  br label %._crit_edge

._crit_edge:                                      ; preds = %.thread.us, %._crit_edge.loopexit35, %bb.a
  %i.w = phi ptr [ %.pre, %._crit_edge.loopexit35 ], [ %i.c, %bb.a ], [ %i.c, %.thread.us ] ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #25
  %i.x = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %3, i64 24 ; 4 uses
  store ptr %i.y, ptr %i.x, align 8
  %i.z = getelementptr inbounds nuw i8, ptr %3, i64 16
  store i64 0, ptr %i.z, align 8
  store i8 0, ptr %i.y, align 8
  %i.aa = getelementptr inbounds nuw i8, ptr %3, i64 40
  store i32 2, ptr %i.aa, align 8
  %i.ab = getelementptr inbounds nuw i8, ptr %3, i64 48 ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %3, i64 88
  store ptr null, ptr %i.ac, align 8
  %i.ad = getelementptr inbounds nuw i8, ptr %3, i64 96
  store i32 0, ptr %i.ad, align 8
  %i.ae = getelementptr inbounds nuw i8, ptr %3, i64 104 ; 2 uses
  store ptr null, ptr %i.ae, align 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(36) %i.ab, i8 0, i64 36, i1 false)
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN6Assimp3LWO9UVChannelE, i64 16), ptr %3, align 8
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ag = load ptr, ptr %i.af, align 8
  %.not.i.i = icmp eq ptr %i.w, %i.ag
  br i1 %.not.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %._crit_edge
  invoke void @_ZN6Assimp3LWO9VMapEntryC2ERKS1_(ptr noundef nonnull align 8 dereferenceable(112) %i.w, ptr noundef nonnull align 8 dereferenceable(112) %3)
          to label %.noexc unwind label %bb.i
end_hunk_1
begin_hunk_2_@_Z14CreateNewEntryIN6Assimp3LWO13NormalChannelEEvRT_j:bb.a
  br label %_ZNSt6vectorIbSaIbEE6resizeEmb.exit

_ZNSt6vectorIbSaIbEE6resizeEmb.exit:              ; preds = %bb.c, %bb.d
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.y = load i32, ptr %i.x, align 8              ; 2 uses
  %.not14 = icmp eq i32 %i.y, 0
  br i1 %.not14, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %_ZNSt6vectorIbSaIbEE6resizeEmb.exit
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 4 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  %.pre = load ptr, ptr %i.aa, align 8
  br label %bb.e

bb.e:                                             ; preds = %.lr.ph, %_ZNSt6vectorIfSaIfEE9push_backERKf.exit
  %i.ac = phi ptr [ %.pre, %.lr.ph ], [ %i.bd, %_ZNSt6vectorIfSaIfEE9push_backERKf.exit ] ; 3 uses
  %i.ad = phi i32 [ %i.y, %.lr.ph ], [ %i.bf, %_ZNSt6vectorIfSaIfEE9push_backERKf.exit ]
  %.013 = phi i32 [ 0, %.lr.ph ], [ %i.be, %_ZNSt6vectorIfSaIfEE9push_backERKf.exit ] ; 2 uses
  %i.ae = mul i32 %i.ad, %1
  %i.af = add i32 %i.ae, %.013
  %i.ag = zext i32 %i.af to i64
  %i.ah = load ptr, ptr %i.z, align 8             ; 4 uses
  %i.ai = getelementptr inbounds nuw [4 x i8], ptr %i.ah, i64 %i.ag ; 2 uses
  %i.aj = load ptr, ptr %i.ab, align 8
  %.not.i = icmp eq ptr %i.ac, %i.aj
  br i1 %.not.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ak = load float, ptr %i.ai, align 4
  store float %i.ak, ptr %i.ac, align 4
  %i.al = load ptr, ptr %i.aa, align 8
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 4 ; 2 uses
  store ptr %i.am, ptr %i.aa, align 8
  br label %_ZNSt6vectorIfSaIfEE9push_backERKf.exit

bb.g:                                             ; preds = %bb.e
  %i.an = ptrtoint ptr %i.ac to i64
  %i.ao = ptrtoint ptr %i.ah to i64
  %i.ap = sub i64 %i.an, %i.ao                    ; 6 uses
  %i.aq = icmp eq i64 %i.ap, 9223372036854775804
  br i1 %i.aq, label %bb.h, label %_ZNKSt6vectorIfSaIfEE12_M_check_lenEmPKc.exit.i.i

bb.h:                                             ; preds = %bb.g
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.110) #27
  unreachable

_ZNKSt6vectorIfSaIfEE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.g
  %i.ar = ashr exact i64 %i.ap, 2                 ; 3 uses
  %.sroa.speculated.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.ar, i64 1)
  %i.as = add nsw i64 %.sroa.speculated.i.i.i, %i.ar ; 2 uses
  %i.at = icmp ult i64 %i.as, %i.ar
  %i.au = tail call i64 @llvm.umin.i64(i64 %i.as, i64 2305843009213693951)
  %i.av = select i1 %i.at, i64 2305843009213693951, i64 %i.au ; 3 uses
  %.not.i.i.i = icmp ne i64 %i.av, 0
  tail call void @llvm.assume(i1 %.not.i.i.i)
  %i.aw = shl nuw nsw i64 %i.av, 2
  %i.ax = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.aw) #28 ; 4 uses
  %i.ay = getelementptr inbounds i8, ptr %i.ax, i64 %i.ap ; 2 uses
  %i.az = load float, ptr %i.ai, align 4
  store float %i.az, ptr %i.ay, align 4
  %i.ba = icmp sgt i64 %i.ap, 0
  br i1 %i.ba, label %bb.i, label %_ZNSt6vectorIfSaIfEE17_M_realloc_insertIJRKfEEEvN9__gnu_cxx17__normal_iteratorIPfS1_EEDpOT_.exit.i

bb.i:                                             ; preds = %_ZNKSt6vectorIfSaIfEE12_M_check_lenEmPKc.exit.i.i
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.ax, ptr nonnull align 4 %i.ah, i64 %i.ap, i1 false)
  br label %_ZNSt6vectorIfSaIfEE17_M_realloc_insertIJRKfEEEvN9__gnu_cxx17__normal_iteratorIPfS1_EEDpOT_.exit.i

_ZNSt6vectorIfSaIfEE17_M_realloc_insertIJRKfEEEvN9__gnu_cxx17__normal_iteratorIPfS1_EEDpOT_.exit.i: ; preds = %bb.i, %_ZNKSt6vectorIfSaIfEE12_M_check_lenEmPKc.exit.i.i
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ay, i64 4 ; 2 uses
  tail call void @_ZdlPvm(ptr noundef nonnull %i.ah, i64 noundef %i.ap) #26
  store ptr %i.ax, ptr %i.z, align 8
  store ptr %i.bb, ptr %i.aa, align 8
  %i.bc = getelementptr inbounds nuw [4 x i8], ptr %i.ax, i64 %i.av
  store ptr %i.bc, ptr %i.ab, align 8
  br label %_ZNSt6vectorIfSaIfEE9push_backERKf.exit

_ZNSt6vectorIfSaIfEE9push_backERKf.exit:          ; preds = %bb.f, %_ZNSt6vectorIfSaIfEE17_M_realloc_insertIJRKfEEEvN9__gnu_cxx17__normal_iteratorIPfS1_EEDpOT_.exit.i
  %i.bd = phi ptr [ %i.am, %bb.f ], [ %i.bb, %_ZNSt6vectorIfSaIfEE17_M_realloc_insertIJRKfEEEvN9__gnu_cxx17__normal_iteratorIPfS1_EEDpOT_.exit.i ]
  %i.be = add nuw i32 %.013, 1                    ; 2 uses
  %i.bf = load i32, ptr %i.x, align 8             ; 2 uses
  %i.bg = icmp ult i32 %i.be, %i.bf
  br i1 %i.bg, label %bb.e, label %.loopexit, !llvm.loop !104

.loopexit:                                        ; preds = %_ZNSt6vectorIfSaIfEE9push_backERKf.exit, %_ZNSt6vectorIbSaIbEE6resizeEmb.exit, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN6Assimp6Logger4warnIJRA38_KcRNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERA45_S2_EEEvDpOT_(ptr noundef nonnull align 8 dereferenceable(12) %0, ptr noundef nonnull align 1 dereferenceable(38) %1, ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 1 dereferenceable(45) %3) local_unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %5 = alloca %"class.Assimp::Formatter::basic_formatter", align 8 ; 12 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #25
  call void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEC1Ev(ptr noundef nonnull align 8 dereferenceable(376) %5)
  %i.a = call noundef i64 @strlen(ptr noundef nonnull align 1 dereferenceable(38) %1) #25
  %i.b = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(376) %5, ptr noundef nonnull align 1 dereferenceable(38) %1, i64 noundef %i.a)
          to label %_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEEC2IA38_cEERKT_.exit unwind label %bb.b ; 0 uses

common.resume:                                    ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit9, %bb.b
  %common.resume.op = phi { ptr, i32 } [ %i.c, %bb.b ], [ %.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit9 ]
  resume { ptr, i32 } %common.resume.op

bb.b:                                             ; preds = %bb.a
  %i.c = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(376) %5) #25
  br label %common.resume

_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEEC2IA38_cEERKT_.exit: ; preds = %bb.a
  invoke void @_ZN6Assimp6Logger13formatMessageIJRA45_KcERNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESA_NS_9Formatter15basic_formatterIcS8_S9_EEOT0_DpOT_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %4, ptr noundef nonnull align 8 dereferenceable(12) %0, ptr noundef nonnull %5, ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 1 dereferenceable(45) %3)
          to label %bb.c unwind label %bb.e

bb.c:                                             ; preds = %_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEEC2IA38_cEERKT_.exit
  %i.d = load ptr, ptr %4, align 8
  invoke void @_ZN6Assimp6Logger4warnEPKc(ptr noundef nonnull align 8 dereferenceable(12) %0, ptr noundef %i.d)
          to label %bb.d unwind label %bb.f

bb.d:                                             ; preds = %bb.c
  %i.e = load ptr, ptr %4, align 8                ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.g = icmp eq ptr %i.e, %i.f
  br i1 %i.g, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.d
  %i.h = load i64, ptr %i.f, align 8
  %i.i = add i64 %i.h, 1
  call void @_ZdlPvm(ptr noundef %i.e, i64 noundef %i.i) #26
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.d, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  %i.j = load ptr, ptr @_ZTTNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE, align 8 ; 2 uses
  store ptr %i.j, ptr %5, align 8
  %i.k = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE, i64 24), align 8
  %i.l = getelementptr i8, ptr %i.j, i64 -24
  %i.m = load i64, ptr %i.l, align 8
  %i.n = getelementptr inbounds i8, ptr %5, i64 %i.m
  store ptr %i.k, ptr %i.n, align 8
  %i.o = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEEE, i64 16), ptr %i.o, align 8
  %i.p = getelementptr inbounds nuw i8, ptr %5, i64 80
  %i.q = load ptr, ptr %i.p, align 8              ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %5, i64 96 ; 2 uses
  %i.s = icmp eq ptr %i.q, %i.r
  br i1 %i.s, label %_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.t = load i64, ptr %i.r, align 8
  %i.u = add i64 %i.t, 1
  call void @_ZdlPvm(ptr noundef %i.q, i64 noundef %i.u) #26
  br label %_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEED2Ev.exit

_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVSt15basic_streambufIcSt11char_traitsIcEE, i64 16), ptr %i.o, align 8
  %i.v = getelementptr inbounds nuw i8, ptr %5, i64 64
  call void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.v) #25
  %i.w = getelementptr inbounds nuw i8, ptr %5, i64 112
  call void @_ZNSt8ios_baseD2Ev(ptr noundef nonnull align 8 dereferenceable(264) %i.w) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #25
  ret void

bb.e:                                             ; preds = %_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEEC2IA38_cEERKT_.exit
  %i.x = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit9

bb.f:                                             ; preds = %bb.c
  %i.y = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.z = load ptr, ptr %4, align 8                ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.ab = icmp eq ptr %i.z, %i.aa
  br i1 %i.ab, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit9, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i7

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i7: ; preds = %bb.f
  %i.ac = load i64, ptr %i.aa, align 8
  %i.ad = add i64 %i.ac, 1
  call void @_ZdlPvm(ptr noundef %i.z, i64 noundef %i.ad) #26
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit9

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit9: ; preds = %bb.f, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i7, %bb.e
  %.pn = phi { ptr, i32 } [ %i.x, %bb.e ], [ %i.y, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i7 ], [ %i.y, %bb.f ]
  call void @_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEED2Ev(ptr noundef nonnull align 8 dead_on_return(376) dereferenceable(376) %5) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #25
  br label %common.resume
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr hidden void @_ZN6Assimp11LWOImporter25DoRecursiveVMAPAssignmentEPNS_3LWO9VMapEntryEjjPf(ptr noundef nonnull align 8 dereferenceable(233) %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, ptr noundef %4) local_unnamed_addr #13 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 72 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 88 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 96 ; 2 uses
  %.not34 = icmp eq i32 %2, 0
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 48 ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 3 uses
  br i1 %.not34, label %tailrecurse, label %tailrecurse.us.preheader

tailrecurse.us.preheader:                         ; preds = %bb.a
  %5 = icmp eq i32 %2, 1
  %6 = and i32 %2, -2
  %unroll_iter = zext i32 %6 to i64
  %lcmp.mod.not = trunc i32 %2 to i1
  %lcmp.mod48 = trunc i32 %2 to i1
  br label %tailrecurse.us

tailrecurse.us:                                   ; preds = %tailrecurse.us.preheader, %._crit_edge.us
  %.tr27.us = phi i32 [ %i.bb, %._crit_edge.us ], [ %3, %tailrecurse.us.preheader ] ; 5 uses
  %i.g = load ptr, ptr %i.a, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 24
  %i.i = zext i32 %.tr27.us to i64                ; 3 uses
  %i.j = load ptr, ptr %i.c, align 8
  %i.k = load i32, ptr %i.d, align 8
  %i.l = load ptr, ptr %i.b, align 8              ; 2 uses
  %i.m = ptrtoint ptr %i.j to i64
  %i.n = ptrtoint ptr %i.l to i64
  %i.o = sub i64 %i.m, %i.n
  %i.p = shl nsw i64 %i.o, 3
  %i.q = zext i32 %i.k to i64
  %i.r = add nsw i64 %i.p, %i.q
  %.not.us = icmp ugt i64 %i.r, %i.i
  br i1 %.not.us, label %.lr.ph.us, label %.split31.us

.lr.ph.us:                                        ; preds = %tailrecurse.us
  %i.s = lshr i32 %.tr27.us, 6
  %.zext.us = zext nneg i32 %i.s to i64
  %i.t = getelementptr inbounds nuw [8 x i8], ptr %i.l, i64 %.zext.us ; 2 uses
  %i.u = and i64 %i.i, 63
  %i.v = shl nuw i64 1, %i.u
  %i.w = load i64, ptr %i.t, align 8
  %i.x = or i64 %i.w, %i.v
  store i64 %i.x, ptr %i.t, align 8
  br i1 %5, label %.epil.preheader, label %.lr.ph.us.new

.lr.ph.us.new:                                    ; preds = %.lr.ph.us, %.lr.ph.us.new
  %indvars.iv = phi i64 [ %indvars.iv.next.1, %.lr.ph.us.new ], [ 0, %.lr.ph.us ] ; 4 uses
  %niter = phi i64 [ %niter.next.1, %.lr.ph.us.new ], [ 0, %.lr.ph.us ]
  %i.y = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %indvars.iv
  %i.z = load float, ptr %i.y, align 4
  %i.aa = load i32, ptr %i.f, align 8
  %i.ab = mul i32 %i.aa, %.tr27.us
  %i.ac = trunc nuw i64 %indvars.iv to i32
  %i.ad = add i32 %i.ab, %i.ac
  %i.ae = zext i32 %i.ad to i64
  %i.af = load ptr, ptr %i.e, align 8
  %i.ag = getelementptr inbounds nuw [4 x i8], ptr %i.af, i64 %i.ae
  store float %i.z, ptr %i.ag, align 4
  %indvars.iv.next = or disjoint i64 %indvars.iv, 1 ; 2 uses
  %i.ah = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %indvars.iv.next
  %i.ai = load float, ptr %i.ah, align 4
  %i.aj = load i32, ptr %i.f, align 8
  %i.ak = mul i32 %i.aj, %.tr27.us
  %i.al = trunc nuw i64 %indvars.iv.next to i32
  %i.am = add i32 %i.ak, %i.al
  %i.an = zext i32 %i.am to i64
  %i.ao = load ptr, ptr %i.e, align 8
  %i.ap = getelementptr inbounds nuw [4 x i8], ptr %i.ao, i64 %i.an
  store float %i.ai, ptr %i.ap, align 4
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge.us.unr-lcssa, label %.lr.ph.us.new, !llvm.loop !105

._crit_edge.us.unr-lcssa:                         ; preds = %.lr.ph.us.new
  br i1 %lcmp.mod.not, label %.epil.preheader, label %._crit_edge.us

.epil.preheader:                                  ; preds = %._crit_edge.us.unr-lcssa, %.lr.ph.us
  %indvars.iv.epil.init = phi i64 [ 0, %.lr.ph.us ], [ %indvars.iv.next.1, %._crit_edge.us.unr-lcssa ] ; 2 uses
  tail call void @llvm.assume(i1 %lcmp.mod48)
  %i.aq = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %indvars.iv.epil.init
  %i.ar = load float, ptr %i.aq, align 4
  %i.as = load i32, ptr %i.f, align 8
  %i.at = mul i32 %i.as, %.tr27.us
  %i.au = trunc nuw i64 %indvars.iv.epil.init to i32
  %i.av = add i32 %i.at, %i.au
  %i.aw = zext i32 %i.av to i64
  %i.ax = load ptr, ptr %i.e, align 8
  %i.ay = getelementptr inbounds nuw [4 x i8], ptr %i.ax, i64 %i.aw
  store float %i.ar, ptr %i.ay, align 4
  br label %._crit_edge.us

._crit_edge.us:                                   ; preds = %._crit_edge.us.unr-lcssa, %.epil.preheader
  %i.az = load ptr, ptr %i.h, align 8
  %i.ba = getelementptr inbounds nuw [4 x i8], ptr %i.az, i64 %i.i
  %i.bb = load i32, ptr %i.ba, align 4            ; 2 uses
  %.not24.us = icmp eq i32 %i.bb, -1
  br i1 %.not24.us, label %.split33.us, label %tailrecurse.us

tailrecurse:                                      ; preds = %bb.a, %bb.d
  %.tr27 = phi i32 [ %i.by, %bb.d ], [ %3, %bb.a ] ; 2 uses
  %i.bc = zext i32 %.tr27 to i64                  ; 3 uses
  %i.bd = load ptr, ptr %i.c, align 8
  %i.be = load i32, ptr %i.d, align 8
  %i.bf = load ptr, ptr %i.b, align 8             ; 2 uses
  %i.bg = ptrtoint ptr %i.bd to i64
  %i.bh = ptrtoint ptr %i.bf to i64
  %i.bi = sub i64 %i.bg, %i.bh
  %i.bj = shl nsw i64 %i.bi, 3
  %i.bk = zext i32 %i.be to i64
  %i.bl = add nsw i64 %i.bj, %i.bk
  %.not = icmp ugt i64 %i.bl, %i.bc
  br i1 %.not, label %bb.d, label %.split31.us

.split31.us:                                      ; preds = %tailrecurse.us, %tailrecurse
  %i.bm = tail call ptr @__cxa_allocate_exception(i64 16) #25 ; 3 uses
  invoke void @_ZN17DeadlyImportErrorC2EPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.bm, ptr noundef nonnull @.str.105)
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %.split31.us
  tail call void @__cxa_throw(ptr nonnull %i.bm, ptr nonnull @_ZTI17DeadlyImportError, ptr nonnull @_ZNSt13runtime_errorD2Ev) #27
  unreachable

bb.c:                                             ; preds = %.split31.us
  %i.bn = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr nonnull %i.bm) #25
  resume { ptr, i32 } %i.bn

bb.d:                                             ; preds = %tailrecurse
  %i.bo = load ptr, ptr %i.a, align 8
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bo, i64 24
  %i.bq = lshr i32 %.tr27, 6
  %.zext = zext nneg i32 %i.bq to i64
  %i.br = getelementptr inbounds nuw [8 x i8], ptr %i.bf, i64 %.zext ; 2 uses
  %i.bs = and i64 %i.bc, 63
  %i.bt = shl nuw i64 1, %i.bs
  %i.bu = load i64, ptr %i.br, align 8
  %i.bv = or i64 %i.bu, %i.bt
  store i64 %i.bv, ptr %i.br, align 8
  %i.bw = load ptr, ptr %i.bp, align 8
  %i.bx = getelementptr inbounds nuw [4 x i8], ptr %i.bw, i64 %i.bc
  %i.by = load i32, ptr %i.bx, align 4            ; 2 uses
  %.not24 = icmp eq i32 %i.by, -1
  br i1 %.not24, label %.split33.us, label %tailrecurse

.split33.us:                                      ; preds = %._crit_edge.us, %bb.d
  ret void
}

; Function Attrs: mustprogress uwtable
define hidden void @_ZN6Assimp11LWOImporter12LoadLWO2ClipEj(ptr noundef nonnull align 8 dereferenceable(233) %0, i32 noundef %1) local_unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  %3 = alloca %"class.std::__cxx11::basic_ostringstream", align 8 ; 21 uses
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 15 uses
  %i.a = icmp ult i32 %1, 10
  br i1 %i.a, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  %i.b = tail call ptr @__cxa_allocate_exception(i64 16) #25 ; 3 uses
  invoke void @_ZN17DeadlyImportErrorC2EPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.b, ptr noundef nonnull @.str.65)
          to label %bb.c unwind label %bb.d

bb.c:                                             ; preds = %bb.b
  tail call void @__cxa_throw(ptr nonnull %i.b, ptr nonnull @_ZTI17DeadlyImportError, ptr nonnull @_ZNSt13runtime_errorD2Ev) #27
  unreachable

bb.d:                                             ; preds = %bb.b
  %i.c = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr nonnull %i.b) #25
  br label %bb.ax

bb.e:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 128 ; 4 uses
  %i.e = load ptr, ptr %i.d, align 8              ; 7 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.g = load ptr, ptr %i.f, align 8
  %.not.i = icmp eq ptr %i.e, %i.g
  br i1 %.not.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  store i32 3, ptr %i.e, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 24 ; 2 uses
  store ptr %i.i, ptr %i.h, align 8
  %i.j = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  store i64 0, ptr %i.j, align 8
  store i8 0, ptr %i.i, align 8
  %i.k = getelementptr inbounds nuw i8, ptr %i.e, i64 40
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(9) %i.k, i8 0, i64 9, i1 false)
  %i.l = load ptr, ptr %i.d, align 8
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 56 ; 2 uses
  store ptr %i.m, ptr %i.d, align 8
  br label %_ZNSt6vectorIN6Assimp3LWO4ClipESaIS2_EE12emplace_backIJEEERS2_DpOT_.exit

bb.g:                                             ; preds = %bb.e
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 120
  tail call void @_ZNSt6vectorIN6Assimp3LWO4ClipESaIS2_EE17_M_realloc_insertIJEEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %i.n, ptr %i.e)
  %.pre = load ptr, ptr %i.d, align 8
  br label %_ZNSt6vectorIN6Assimp3LWO4ClipESaIS2_EE12emplace_backIJEEERS2_DpOT_.exit

_ZNSt6vectorIN6Assimp3LWO4ClipESaIS2_EE12emplace_backIJEEERS2_DpOT_.exit: ; preds = %bb.f, %bb.g
  %i.o = phi ptr [ %i.m, %bb.f ], [ %.pre, %bb.g ] ; 10 uses
  %i.p = getelementptr inbounds i8, ptr %i.o, i64 -56 ; 3 uses
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 168 ; 12 uses
  %i.r = load ptr, ptr %i.q, align 8              ; 2 uses
  %i.s = load i32, ptr %i.r, align 1
  %i.t = getelementptr inbounds nuw i8, ptr %i.r, i64 4
  store ptr %i.t, ptr %i.q, align 8
  %.sroa.0.0.insert.insert.i = tail call noundef i32 @llvm.bswap.i32(i32 %i.s)
  %i.u = getelementptr inbounds i8, ptr %i.o, i64 -12
  store i32 %.sroa.0.0.insert.insert.i, ptr %i.u, align 4
  %i.v = load ptr, ptr %i.q, align 8              ; 8 uses
  %i.w = load i32, ptr %i.v, align 1
  %i.x = getelementptr inbounds nuw i8, ptr %i.v, i64 4 ; 2 uses
  store ptr %i.x, ptr %i.q, align 8
  %i.y = load i16, ptr %i.x, align 1              ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.v, i64 6 ; 3 uses
  store ptr %i.z, ptr %i.q, align 8
  %.sroa.0.sroa.0.0.insert.insert.i = tail call i32 @llvm.bswap.i32(i32 %i.w)
  %.sroa.10.sroa.0.0.insert.insert.i = tail call i16 @llvm.bswap.i16(i16 %i.y) ; 5 uses
  switch i32 %.sroa.0.sroa.0.0.insert.insert.i, label %bb.av [
    i32 1398032716, label %bb.h
    i32 1230194001, label %bb.m
    i32 1398031171, label %bb.aj
    i32 1095649613, label %bb.ak
    i32 1481786694, label %bb.al
    i32 1313163073, label %bb.aq
  ]

bb.h:                                             ; preds = %_ZNSt6vectorIN6Assimp3LWO4ClipESaIS2_EE12emplace_backIJEEERS2_DpOT_.exit
  %i.aa = icmp eq i16 %i.y, 0
  br i1 %i.aa, label %bb.i, label %bb.l

bb.i:                                             ; preds = %bb.h
  %i.ab = tail call ptr @__cxa_allocate_exception(i64 16) #25 ; 3 uses
  invoke void @_ZN17DeadlyImportErrorC2EPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.ab, ptr noundef nonnull @.str.66)
          to label %bb.j unwind label %bb.k

bb.j:                                             ; preds = %bb.i
  tail call void @__cxa_throw(ptr nonnull %i.ab, ptr nonnull @_ZTI17DeadlyImportError, ptr nonnull @_ZNSt13runtime_errorD2Ev) #27
  unreachable

bb.k:                                             ; preds = %bb.i
  %i.ac = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr nonnull %i.ab) #25
  br label %bb.ax

bb.l:                                             ; preds = %bb.h
  %.sroa.5.0.extract.trunc = zext i16 %.sroa.10.sroa.0.0.insert.insert.i to i32
  %i.ad = getelementptr inbounds i8, ptr %i.o, i64 -48
  tail call void @_ZN6Assimp11LWOImporter5GetS0ERNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEj(ptr noundef nonnull align 8 dereferenceable(233) %0, ptr noundef nonnull align 8 dereferenceable(32) %i.ad, i32 noundef %.sroa.5.0.extract.trunc)
  store i32 0, ptr %i.p, align 8
  br label %bb.aw

bb.m:                                             ; preds = %_ZNSt6vectorIN6Assimp3LWO4ClipESaIS2_EE12emplace_backIJEEERS2_DpOT_.exit
  %i.ae = zext i16 %.sroa.10.sroa.0.0.insert.insert.i to i32 ; 2 uses
  %i.af = icmp ult i16 %.sroa.10.sroa.0.0.insert.insert.i, 16
  br i1 %i.af, label %bb.n, label %bb.q

bb.n:                                             ; preds = %bb.m
  %i.ag = tail call ptr @__cxa_allocate_exception(i64 16) #25 ; 3 uses
  invoke void @_ZN17DeadlyImportErrorC2EPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.ag, ptr noundef nonnull @.str.67)
          to label %bb.o unwind label %bb.p

bb.o:                                             ; preds = %bb.n
  tail call void @__cxa_throw(ptr nonnull %i.ag, ptr nonnull @_ZTI17DeadlyImportError, ptr nonnull @_ZNSt13runtime_errorD2Ev) #27
  unreachable

bb.p:                                             ; preds = %bb.n
  %i.ah = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr nonnull %i.ag) #25
end_hunk_2
