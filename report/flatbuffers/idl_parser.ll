Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/flatbuffers/original/idl_parser?download=true
inline.NumInlined: 13536
inline.NumDeleted: 4031
loop-unroll.NumCompletelyUnrolled: 104
loop-unroll.NumRuntimeUnrolled: 90
loop-unroll.NumUnrolled: 194
begin_hunk_0_@_ZNK11flatbuffers9Namespace21GetFullyQualifiedNameERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEm:bb.a
  %lpad.loopexit.split-lp41 = landingpad { ptr, i32 }
          cleanup
  %i.bv = load ptr, ptr %0, align 8, !tbaa !82    ; 2 uses
  %i.bw = icmp eq ptr %i.bv, %i.g
  br i1 %i.bw, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp
  %i.bx = load i64, ptr %i.g, align 8, !tbaa !81
  %i.by = add i64 %i.bx, 1
  tail call void @_ZdlPvm(ptr noundef %i.bv, i64 noundef %i.by) #33
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  resume { ptr, i32 } %lpad.loopexit.split-lp41

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit25: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i22, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8pop_backEv.exit, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit
  ret void
}

; Function Attrs: mustprogress uwtable
declare void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef nonnull align 8 dereferenceable(32)) unnamed_addr #1 align 2

; Function Attrs: mustprogress uwtable
define dso_local void @_ZNK11flatbuffers6Parser15TokenToStringIdB5cxx11Ei(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(1936) %1, i32 noundef %2) local_unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %i.b = icmp eq i32 %2, 260
  br i1 %i.b, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  store ptr %i.d, ptr %0, align 8, !tbaa !80
  %i.e = load ptr, ptr %i.c, align 8, !tbaa !82   ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.g = load i64, ptr %i.f, align 8, !tbaa !79   ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #32
  store i64 %i.g, ptr %i.a, align 8, !tbaa !93
  %i.h = icmp ugt i64 %i.g, 15
  br i1 %i.h, label %.noexc.i, label %._crit_edge.i.i

.noexc.i:                                         ; preds = %bb.b
  %i.i = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0) ; 2 uses
  store ptr %i.i, ptr %0, align 8, !tbaa !82
  %i.j = load i64, ptr %i.a, align 8, !tbaa !93
  store i64 %i.j, ptr %i.d, align 8, !tbaa !81
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %.noexc.i, %bb.b
  %i.k = phi ptr [ %i.i, %.noexc.i ], [ %i.d, %bb.b ] ; 2 uses
  switch i64 %i.g, label %bb.d [
    i64 1, label %bb.c
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit
  ]

bb.c:                                             ; preds = %._crit_edge.i.i
  %i.l = load i8, ptr %i.e, align 1, !tbaa !81
  store i8 %i.l, ptr %i.k, align 1, !tbaa !81
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit

bb.d:                                             ; preds = %._crit_edge.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.k, ptr align 1 %i.e, i64 %i.g, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit: ; preds = %._crit_edge.i.i, %bb.c, %bb.d
  %i.m = load i64, ptr %i.a, align 8, !tbaa !93   ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.m, ptr %i.n, align 8, !tbaa !79
  %i.o = load ptr, ptr %0, align 8, !tbaa !82
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 %i.m
  store i8 0, ptr %i.p, align 1, !tbaa !81
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #32
  br label %bb.f

bb.e:                                             ; preds = %bb.a
  tail call fastcc void @_ZN11flatbuffers12_GLOBAL__N_113TokenToStringB5cxx11Ei(ptr dead_on_unwind noalias writable align 8 %0, i32 noundef %2)
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit
  ret void
}

; Function Attrs: mustprogress uwtable
define internal fastcc void @_ZN11flatbuffers12_GLOBAL__N_113TokenToStringB5cxx11Ei(ptr dead_on_unwind noalias writable align 8 %0, i32 noundef %1) unnamed_addr #1 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %i.b = icmp slt i32 %1, 256
  br i1 %i.b, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 4 uses
  store ptr %i.c, ptr %0, align 8, !tbaa !80
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 0, ptr %i.d, align 8, !tbaa !79
  store i8 0, ptr %i.c, align 8, !tbaa !81
  %i.e = trunc i32 %1 to i8
  %i.f = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE14_M_replace_auxEmmmc(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef 0, i64 noundef 0, i64 noundef 1, i8 noundef signext %i.e)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEmc.exit unwind label %bb.c ; 0 uses

bb.c:                                             ; preds = %bb.b
  %i.g = landingpad { ptr, i32 }
          cleanup
  %i.h = load ptr, ptr %0, align 8, !tbaa !82     ; 2 uses
  %i.i = icmp eq ptr %i.h, %i.c
  br i1 %i.i, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.c
  %i.j = load i64, ptr %i.c, align 8, !tbaa !81
  %i.k = add i64 %i.j, 1
  tail call void @_ZdlPvm(ptr noundef %i.h, i64 noundef %i.k) #33
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

bb.d:                                             ; preds = %bb.a
  %i.l = zext nneg i32 %1 to i64
  %i.m = getelementptr [8 x i8], ptr @_ZZN11flatbuffers12_GLOBAL__N_113TokenToStringB5cxx11EiE6tokens, i64 %i.l
  %i.n = getelementptr i8, ptr %i.m, i64 -2048
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !219  ; 4 uses
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  store ptr %i.p, ptr %0, align 8, !tbaa !80
  %i.q = icmp eq ptr %i.o, null
  br i1 %i.q, label %.noexc, label %bb.e

.noexc:                                           ; preds = %bb.d
  tail call void @_ZSt19__throw_logic_errorPKc(ptr noundef nonnull @.str.329) #31
  unreachable

bb.e:                                             ; preds = %bb.d
  %i.r = tail call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.o) #32 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #32
  store i64 %i.r, ptr %i.a, align 8, !tbaa !93
  %i.s = icmp ugt i64 %i.r, 15
  br i1 %i.s, label %.noexc.i, label %._crit_edge.i.i

.noexc.i:                                         ; preds = %bb.e
  %i.t = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0) ; 2 uses
  store ptr %i.t, ptr %0, align 8, !tbaa !82
  %i.u = load i64, ptr %i.a, align 8, !tbaa !93
  store i64 %i.u, ptr %i.p, align 8, !tbaa !81
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %.noexc.i, %bb.e
  %i.v = phi ptr [ %i.t, %.noexc.i ], [ %i.p, %bb.e ] ; 2 uses
  switch i64 %i.r, label %bb.g [
    i64 1, label %bb.f
    i64 0, label %bb.h
  ]

bb.f:                                             ; preds = %._crit_edge.i.i
  %i.w = load i8, ptr %i.o, align 1, !tbaa !81
  store i8 %i.w, ptr %i.v, align 1, !tbaa !81
  br label %bb.h

bb.g:                                             ; preds = %._crit_edge.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.v, ptr nonnull align 1 %i.o, i64 %i.r, i1 false)
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f, %._crit_edge.i.i
  %i.x = load i64, ptr %i.a, align 8, !tbaa !93   ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.x, ptr %i.y, align 8, !tbaa !79
  %i.z = load ptr, ptr %0, align 8, !tbaa !82
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 %i.x
  store i8 0, ptr %i.aa, align 1, !tbaa !81
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #32
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEmc.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEmc.exit: ; preds = %bb.b, %bb.h
  ret void

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.c, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  resume { ptr, i32 } %i.g
}

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN11flatbuffers6Parser11ParseHexNumEiPm(ptr dead_on_unwind noalias nofree writable writeonly sret(%"class.flatbuffers::CheckedError") align 1 captures(none) %0, ptr noundef nonnull align 8 dereferenceable(1936) %1, i32 noundef %2, ptr nofree noundef writeonly captures(none) %3) local_unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 5 uses
  %i.b = alloca i64, align 8                      ; 6 uses
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %6 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %7 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %i.c = icmp sgt i32 %2, 0
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !91   ; 3 uses
  br i1 %i.c, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %wide.trip.count = zext nneg i32 %2 to i64
  br label %bb.c

bb.b:                                             ; preds = %bb.c
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %bb.c, !llvm.loop !665

bb.c:                                             ; preds = %.lr.ph, %bb.b
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.b ] ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 %indvars.iv
  %i.g = load i8, ptr %i.f, align 1, !tbaa !81    ; 2 uses
  %8 = add i8 %i.g, -48
  %i.h = icmp ult i8 %8, 10
  %i.i = and i8 %i.g, -33
  %9 = add i8 %i.i, -65
  %i.j = icmp ult i8 %9, 6
  %10 = or i1 %i.h, %i.j
  br i1 %10, label %bb.b, label %bb.d

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #32
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #32
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #32
  call void @_ZN11flatbuffers11NumToStringIiEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEET_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %6, i32 noundef %2)
  %i.k = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %6, i64 noundef 0, i64 noundef 0, ptr noundef nonnull @.str.9, i64 noundef 32)
          to label %.noexc unwind label %bb.k     ; 6 uses

.noexc:                                           ; preds = %bb.d
  %i.l = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 7 uses
  store ptr %i.l, ptr %5, align 8, !tbaa !80, !alias.scope !672
  %i.m = load ptr, ptr %i.k, align 8, !tbaa !82   ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.k, i64 16 ; 5 uses
  %i.o = icmp eq ptr %i.m, %i.n
  br i1 %i.o, label %bb.e, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

bb.e:                                             ; preds = %.noexc
  %i.p = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  %i.q = load i64, ptr %i.p, align 8, !tbaa !79   ; 3 uses
  %i.r = icmp ult i64 %i.q, 16
  call void @llvm.assume(i1 %i.r)
  %i.s = add nuw nsw i64 %i.q, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.l, ptr noundef nonnull align 8 dereferenceable(1) %i.n, i64 %i.s, i1 false)
  br label %bb.f

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %.noexc
  store ptr %i.m, ptr %5, align 8, !tbaa !82, !alias.scope !672
  %i.t = load i64, ptr %i.n, align 8, !tbaa !81
  store i64 %i.t, ptr %i.l, align 8, !tbaa !81, !alias.scope !672
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  %.pre.i = load i64, ptr %.phi.trans.insert.i, align 8, !tbaa !79
  br label %bb.f

bb.f:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %bb.e
  %i.u = phi i64 [ %i.q, %bb.e ], [ %.pre.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ]
  %i.v = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  %i.w = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 2 uses
  store i64 %i.u, ptr %i.w, align 8, !tbaa !79, !alias.scope !672
  store ptr %i.n, ptr %i.k, align 8, !tbaa !82
  store i64 0, ptr %i.v, align 8, !tbaa !79
  store i8 0, ptr %i.n, align 8, !tbaa !81
  call void @llvm.experimental.noalias.scope.decl(metadata !673)
  %i.x = load i64, ptr %i.w, align 8, !tbaa !79, !noalias !673
  %i.y = add i64 %i.x, -4611686018427387893
  %i.z = icmp ult i64 %i.y, 11
  br i1 %i.z, label %bb.g, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i

bb.g:                                             ; preds = %bb.f
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.330) #31
          to label %.noexc26 unwind label %bb.l

.noexc26:                                         ; preds = %bb.g
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i: ; preds = %bb.f
  %i.aa = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull @.str.10, i64 noundef 11)
          to label %.noexc27 unwind label %bb.l   ; 6 uses

.noexc27:                                         ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i
  %i.ab = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 7 uses
  store ptr %i.ab, ptr %4, align 8, !tbaa !80, !alias.scope !673
  %i.ac = load ptr, ptr %i.aa, align 8, !tbaa !82 ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %i.aa, i64 16 ; 5 uses
  %i.ae = icmp eq ptr %i.ac, %i.ad
  br i1 %i.ae, label %bb.h, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i23

bb.h:                                             ; preds = %.noexc27
  %i.af = getelementptr inbounds nuw i8, ptr %i.aa, i64 8
  %i.ag = load i64, ptr %i.af, align 8, !tbaa !79 ; 3 uses
  %i.ah = icmp ult i64 %i.ag, 16
  call void @llvm.assume(i1 %i.ah)
  %i.ai = add nuw nsw i64 %i.ag, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.ab, ptr noundef nonnull align 8 dereferenceable(1) %i.ad, i64 %i.ai, i1 false)
  br label %bb.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i23: ; preds = %.noexc27
  store ptr %i.ac, ptr %4, align 8, !tbaa !82, !alias.scope !673
  %i.aj = load i64, ptr %i.ad, align 8, !tbaa !81
  store i64 %i.aj, ptr %i.ab, align 8, !tbaa !81, !alias.scope !673
  %.phi.trans.insert.i24 = getelementptr inbounds nuw i8, ptr %i.aa, i64 8
  %.pre.i25 = load i64, ptr %.phi.trans.insert.i24, align 8, !tbaa !79
  br label %bb.i

bb.i:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i23, %bb.h
  %i.ak = phi i64 [ %i.ag, %bb.h ], [ %.pre.i25, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i23 ]
  %i.al = getelementptr inbounds nuw i8, ptr %i.aa, i64 8
  %i.am = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i64 %i.ak, ptr %i.am, align 8, !tbaa !79, !alias.scope !673
  store ptr %i.ad, ptr %i.aa, align 8, !tbaa !82
  store i64 0, ptr %i.al, align 8, !tbaa !79
  store i8 0, ptr %i.ad, align 8, !tbaa !81
  invoke void @_ZN11flatbuffers6Parser5ErrorERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr dead_on_unwind writable sret(%"class.flatbuffers::CheckedError") align 1 %0, ptr noundef nonnull align 8 dereferenceable(1936) %1, ptr noundef nonnull align 8 dereferenceable(32) %4)
          to label %bb.j unwind label %bb.m

bb.j:                                             ; preds = %bb.i
  %i.an = load ptr, ptr %4, align 8, !tbaa !82    ; 2 uses
  %i.ao = icmp eq ptr %i.an, %i.ab
  br i1 %i.ao, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i28

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i28: ; preds = %bb.j
  %i.ap = load i64, ptr %i.ab, align 8, !tbaa !81
  %i.aq = add i64 %i.ap, 1
  call void @_ZdlPvm(ptr noundef %i.an, i64 noundef %i.aq) #33
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.j, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i28
  %i.ar = load ptr, ptr %5, align 8, !tbaa !82    ; 2 uses
  %i.as = icmp eq ptr %i.ar, %i.l
  br i1 %i.as, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit31, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i29

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i29: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.at = load i64, ptr %i.l, align 8, !tbaa !81
  %i.au = add i64 %i.at, 1
  call void @_ZdlPvm(ptr noundef %i.ar, i64 noundef %i.au) #33
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit31

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit31: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i29
  %i.av = load ptr, ptr %6, align 8, !tbaa !82    ; 2 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 2 uses
  %i.ax = icmp eq ptr %i.av, %i.aw
  br i1 %i.ax, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i33, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i32

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i32: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit31
  %i.ay = load i64, ptr %i.aw, align 8, !tbaa !81
  %i.az = add i64 %i.ay, 1
  call void @_ZdlPvm(ptr noundef %i.av, i64 noundef %i.az) #33
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i33

bb.k:                                             ; preds = %bb.d
  %i.ba = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit40

bb.l:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i, %bb.g
  %i.bb = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit37

bb.m:                                             ; preds = %bb.i
  %i.bc = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.bd = load ptr, ptr %4, align 8, !tbaa !82    ; 2 uses
  %i.be = icmp eq ptr %i.bd, %i.ab
  br i1 %i.be, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit37, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i35

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i35: ; preds = %bb.m
  %i.bf = load i64, ptr %i.ab, align 8, !tbaa !81
  %i.bg = add i64 %i.bf, 1
  call void @_ZdlPvm(ptr noundef %i.bd, i64 noundef %i.bg) #33
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit37

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit37: ; preds = %bb.m, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i35, %bb.l
  %.pn = phi { ptr, i32 } [ %i.bb, %bb.l ], [ %i.bc, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i35 ], [ %i.bc, %bb.m ] ; 2 uses
  %i.bh = load ptr, ptr %5, align 8, !tbaa !82    ; 2 uses
  %i.bi = icmp eq ptr %i.bh, %i.l
  br i1 %i.bi, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit40, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i38

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i38: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit37
  %i.bj = load i64, ptr %i.l, align 8, !tbaa !81
  %i.bk = add i64 %i.bj, 1
  call void @_ZdlPvm(ptr noundef %i.bh, i64 noundef %i.bk) #33
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit40

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit40: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit37, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i38, %bb.k
  %.pn.pn = phi { ptr, i32 } [ %i.ba, %bb.k ], [ %.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i38 ], [ %.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit37 ]
  %i.bl = load ptr, ptr %6, align 8, !tbaa !82    ; 2 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 2 uses
  %i.bn = icmp eq ptr %i.bl, %i.bm
  br i1 %i.bn, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit43, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i41

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i41: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit40
  %i.bo = load i64, ptr %i.bm, align 8, !tbaa !81
  %i.bp = add i64 %i.bo, 1
  call void @_ZdlPvm(ptr noundef %i.bl, i64 noundef %i.bp) #33
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit43

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit43: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit40, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i41
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #32
  resume { ptr, i32 } %.pn.pn

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i33: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit31, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i32
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #32
  br label %bb.r

._crit_edge:                                      ; preds = %bb.b, %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #32
  %i.bq = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.br = sext i32 %2 to i64                      ; 3 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 5 uses
  store ptr %i.bs, ptr %7, align 8, !tbaa !80
  %i.bt = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 2 uses
  store i64 0, ptr %i.bt, align 8, !tbaa !79
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #32
  store i64 %i.br, ptr %i.b, align 8, !tbaa !93
  %i.bu = icmp ugt i32 %2, 15
end_hunk_0
begin_hunk_1_@_ZN11flatbuffers6Parser17SkipByteOrderMarkEv:bb.a
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit13

bb.f:                                             ; preds = %.noexc
  %i.t = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.u = load ptr, ptr %2, align 8, !tbaa !82     ; 2 uses
  %i.v = icmp eq ptr %i.u, %i.i
  br i1 %i.v, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit13, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i11

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i11: ; preds = %bb.f
  %i.w = load i64, ptr %i.i, align 8, !tbaa !81
  %i.x = add i64 %i.w, 1
  call void @_ZdlPvm(ptr noundef %i.u, i64 noundef %i.x) #33
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit13

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit13: ; preds = %bb.f, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i11, %bb.e
  %.pn8 = phi { ptr, i32 } [ %i.s, %bb.e ], [ %i.t, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i11 ], [ %i.t, %bb.f ]
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #32
  br label %bb.m

bb.g:                                             ; preds = %bb.c
  %i.y = getelementptr inbounds nuw i8, ptr %i.d, i64 2 ; 2 uses
  store ptr %i.y, ptr %i.c, align 8, !tbaa !91
  %i.z = load i8, ptr %i.y, align 1, !tbaa !81
  %.not6 = icmp eq i8 %i.z, -65
  br i1 %.not6, label %bb.k, label %.noexc.i15

.noexc.i15:                                       ; preds = %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #32
  %i.aa = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 6 uses
  store ptr %i.aa, ptr %3, align 8, !tbaa !80
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #32
  store i64 29, ptr %i.a, align 8, !tbaa !93
  %i.ab = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0)
          to label %.noexc16 unwind label %bb.i   ; 2 uses

.noexc16:                                         ; preds = %.noexc.i15
  store ptr %i.ab, ptr %3, align 8, !tbaa !82
  %i.ac = load i64, ptr %i.a, align 8, !tbaa !93  ; 3 uses
  store i64 %i.ac, ptr %i.aa, align 8, !tbaa !81
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(29) %i.ab, ptr noundef nonnull align 1 dereferenceable(29) @.str.11, i64 29, i1 false)
  %i.ad = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i64 %i.ac, ptr %i.ad, align 8, !tbaa !79
  %i.ae = load ptr, ptr %3, align 8, !tbaa !82
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 %i.ac
  store i8 0, ptr %i.af, align 1, !tbaa !81
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #32
  invoke void @_ZN11flatbuffers6Parser5ErrorERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr dead_on_unwind writable sret(%"class.flatbuffers::CheckedError") align 1 %0, ptr noundef nonnull align 8 dereferenceable(1936) %1, ptr noundef nonnull align 8 dereferenceable(32) %3)
          to label %bb.h unwind label %bb.j

bb.h:                                             ; preds = %.noexc16
  %i.ag = load ptr, ptr %3, align 8, !tbaa !82    ; 2 uses
  %i.ah = icmp eq ptr %i.ag, %i.aa
  br i1 %i.ah, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit20, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i18

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i18: ; preds = %bb.h
  %i.ai = load i64, ptr %i.aa, align 8, !tbaa !81
  %i.aj = add i64 %i.ai, 1
  call void @_ZdlPvm(ptr noundef %i.ag, i64 noundef %i.aj) #33
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit20

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit20: ; preds = %bb.h, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i18
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #32
  br label %bb.l

bb.i:                                             ; preds = %.noexc.i15
  %i.ak = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit23

bb.j:                                             ; preds = %.noexc16
  %i.al = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.am = load ptr, ptr %3, align 8, !tbaa !82    ; 2 uses
  %i.an = icmp eq ptr %i.am, %i.aa
  br i1 %i.an, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit23, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i21

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i21: ; preds = %bb.j
  %i.ao = load i64, ptr %i.aa, align 8, !tbaa !81
  %i.ap = add i64 %i.ao, 1
  call void @_ZdlPvm(ptr noundef %i.am, i64 noundef %i.ap) #33
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit23

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit23: ; preds = %bb.j, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i21, %bb.i
  %.pn = phi { ptr, i32 } [ %i.ak, %bb.i ], [ %i.al, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i21 ], [ %i.al, %bb.j ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #32
  br label %bb.m

bb.k:                                             ; preds = %bb.g
  %i.aq = getelementptr inbounds nuw i8, ptr %i.d, i64 3
  store ptr %i.aq, ptr %i.c, align 8, !tbaa !91
  store i8 0, ptr %0, align 1, !tbaa !212, !alias.scope !680
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 1
  store i8 0, ptr %i.ar, align 1, !tbaa !213, !alias.scope !680
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit20, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %bb.b
  ret void

bb.m:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit23, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit13
  %.pn8.pn = phi { ptr, i32 } [ %.pn8, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit13 ], [ %.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit23 ]
  resume { ptr, i32 } %.pn8.pn
}

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN11flatbuffers6Parser4NextEv(ptr dead_on_unwind noalias nofree writable sret(%"class.flatbuffers::CheckedError") align 1 captures(none) %0, ptr noundef nonnull align 8 dereferenceable(1936) %1) local_unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 5 uses
  %i.b = alloca i64, align 8                      ; 6 uses
  %i.c = alloca i64, align 8                      ; 5 uses
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %4 = alloca %"class.std::allocator", align 1    ; 4 uses
  %i.d = alloca i64, align 8                      ; 5 uses
  %i.e = alloca i64, align 8                      ; 6 uses
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %6 = alloca %"class.std::allocator", align 1    ; 4 uses
  %7 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %8 = alloca %"class.std::allocator", align 1    ; 4 uses
  %9 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %10 = alloca %"class.std::allocator", align 1   ; 4 uses
  %11 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %12 = alloca %"class.std::allocator", align 1   ; 4 uses
  %13 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %14 = alloca %"class.std::allocator", align 1   ; 4 uses
  %15 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %16 = alloca %"class.std::allocator", align 1   ; 4 uses
  %17 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %18 = alloca %"class.std::allocator", align 1   ; 4 uses
  %19 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %20 = alloca %"class.std::allocator", align 1   ; 4 uses
  %21 = alloca %"class.std::__cxx11::basic_string", align 8 ; 14 uses
  %22 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  %23 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %24 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %25 = alloca %"class.std::allocator", align 1   ; 4 uses
  %26 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %27 = alloca %"class.std::__cxx11::basic_string", align 8 ; 7 uses
  %28 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %29 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 72 ; 2 uses
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !217  ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 80 ; 5 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !216  ; 2 uses
  %.not.i.i = icmp eq ptr %i.i, %i.g
  br i1 %.not.i.i, label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE5clearEv.exit, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.a, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i
  %.05.i.i.i.i = phi ptr [ %i.o, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i ], [ %i.g, %bb.a ] ; 3 uses
  %i.j = load ptr, ptr %.05.i.i.i.i, align 8, !tbaa !82 ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i, i64 16 ; 2 uses
  %i.l = icmp eq ptr %i.j, %i.k
  br i1 %i.l, label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i
  %i.m = load i64, ptr %i.k, align 8, !tbaa !81
  %i.n = add i64 %i.m, 1
  tail call void @_ZdlPvm(ptr noundef %i.j, i64 noundef %i.n) #33
  br label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i

_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i: ; preds = %.lr.ph.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i
  %i.o = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i, i64 32 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.o, %i.i
  br i1 %.not.i.i.i.i, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i, label %.lr.ph.i.i.i.i, !llvm.loop !0

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i: ; preds = %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i
  store ptr %i.g, ptr %i.h, align 8, !tbaa !216
  br label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE5clearEv.exit

_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE5clearEv.exit: ; preds = %bb.a, %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 44 uses
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !91   ; 2 uses
  store ptr %i.q, ptr %1, align 8, !tbaa !225
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 1848
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !226
  %i.t = icmp eq ptr %i.q, %i.s
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 51 uses
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 48 ; 27 uses
  store i64 0, ptr %i.v, align 8, !tbaa !79
  %i.w = load ptr, ptr %i.u, align 8, !tbaa !82
  store i8 0, ptr %i.w, align 1, !tbaa !81
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 5 uses
  store i8 1, ptr %i.x, align 8, !tbaa !227
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 28 ; 6 uses
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 4 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %21, i64 16 ; 11 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %21, i64 8 ; 5 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %1, i64 88
  br label %.outer

.outer:                                           ; preds = %.outer.backedge, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE5clearEv.exit
  %.080.ph = phi i1 [ %i.t, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE5clearEv.exit ], [ true, %.outer.backedge ]
  %.promoted = load ptr, ptr %i.p, align 8, !tbaa !91
  br label %bb.b

bb.b:                                             ; preds = %.backedge, %.outer
  %storemerge142887 = phi ptr [ %storemerge142886, %.backedge ], [ %.promoted, %.outer ] ; 16 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %storemerge142887, i64 1 ; 21 uses
  store ptr %i.ae, ptr %i.p, align 8, !tbaa !91
  %i.af = load i8, ptr %storemerge142887, align 1, !tbaa !81 ; 11 uses
  %i.ag = sext i8 %i.af to i32                    ; 3 uses
  store i32 %i.ag, ptr %i.y, align 4, !tbaa !228
  switch i8 %i.af, label %bb.dj [
    i8 0, label %bb.c
    i8 32, label %.backedge
    i8 13, label %.backedge
    i8 9, label %.backedge
    i8 10, label %bb.d
    i8 123, label %bb.e
    i8 125, label %bb.e
    i8 40, label %bb.e
    i8 41, label %bb.e
    i8 91, label %bb.e
    i8 93, label %bb.e
    i8 60, label %bb.e
    i8 62, label %bb.e
    i8 44, label %bb.e
    i8 58, label %bb.e
    i8 59, label %bb.e
    i8 61, label %bb.e
    i8 34, label %bb.f
    i8 39, label %bb.f
    i8 47, label %bb.cl
  ]

bb.c:                                             ; preds = %bb.b
  store ptr %storemerge142887, ptr %i.p, align 8, !tbaa !91
  store i32 256, ptr %i.y, align 4, !tbaa !228
  store i8 0, ptr %0, align 1, !tbaa !212, !alias.scope !706
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 1
  store i8 0, ptr %i.ah, align 1, !tbaa !213, !alias.scope !706
  br label %.critedge197

bb.d:                                             ; preds = %bb.b
  store ptr %i.ae, ptr %i.z, align 8, !tbaa !92
  %i.ai = load i32, ptr %i.aa, align 8, !tbaa !90
  %i.aj = add nsw i32 %i.ai, 1
  store i32 %i.aj, ptr %i.aa, align 8, !tbaa !90
  br label %.outer.backedge

.outer.backedge:                                  ; preds = %bb.d, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit314
  br label %.outer, !llvm.loop !683

bb.e:                                             ; preds = %bb.b, %bb.b, %bb.b, %bb.b, %bb.b, %bb.b, %bb.b, %bb.b, %bb.b, %bb.b, %bb.b, %bb.b
  store i8 0, ptr %0, align 1, !tbaa !212, !alias.scope !707
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 1
  store i8 0, ptr %i.ak, align 1, !tbaa !213, !alias.scope !707
  br label %.critedge197

bb.f:                                             ; preds = %bb.b, %bb.b
  %i.al = load i8, ptr %i.ae, align 1, !tbaa !81  ; 2 uses
  %.not151480 = icmp eq i8 %i.al, %i.af
  br i1 %.not151480, label %._crit_edge.thread, label %.lr.ph

.lr.ph:                                           ; preds = %bb.f
  %i.am = getelementptr inbounds nuw i8, ptr %1, i64 56 ; 22 uses
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 1 ; 2 uses
  br label %bb.g

bb.g:                                             ; preds = %.lr.ph, %bb.bx
  %i.ao = phi i8 [ %i.al, %.lr.ph ], [ %i.kx, %bb.bx ] ; 3 uses
  %i.ap = phi ptr [ %i.ae, %.lr.ph ], [ %i.kw, %bb.bx ] ; 5 uses
  %.0111481 = phi i32 [ -1, %.lr.ph ], [ %.3114, %bb.bx ] ; 3 uses
  %or.cond188 = icmp ult i8 %i.ao, 32
  br i1 %or.cond188, label %.noexc.i, label %bb.k

.noexc.i:                                         ; preds = %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #32
  %i.aq = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 6 uses
  store ptr %i.aq, ptr %2, align 8, !tbaa !80
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #32
  store i64 36, ptr %i.c, align 8, !tbaa !93
  %i.ar = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(8) %i.c, i64 noundef 0)
          to label %.noexc unwind label %bb.i     ; 3 uses

.noexc:                                           ; preds = %.noexc.i
  store ptr %i.ar, ptr %2, align 8, !tbaa !82
  %i.as = load i64, ptr %i.c, align 8, !tbaa !93  ; 3 uses
  store i64 %i.as, ptr %i.aq, align 8, !tbaa !81
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(36) %i.ar, ptr noundef nonnull align 1 dereferenceable(36) @.str.12, i64 36, i1 false)
  %i.at = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i64 %i.as, ptr %i.at, align 8, !tbaa !79
  %i.au = getelementptr inbounds nuw i8, ptr %i.ar, i64 %i.as
  store i8 0, ptr %i.au, align 1, !tbaa !81
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #32
  invoke void @_ZN11flatbuffers6Parser5ErrorERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr dead_on_unwind writable sret(%"class.flatbuffers::CheckedError") align 1 %0, ptr noundef nonnull align 8 dereferenceable(1936) %1, ptr noundef nonnull align 8 dereferenceable(32) %2)
          to label %bb.h unwind label %bb.j

bb.h:                                             ; preds = %.noexc
  %i.av = load ptr, ptr %2, align 8, !tbaa !82    ; 2 uses
  %i.aw = icmp eq ptr %i.av, %i.aq
  br i1 %i.aw, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.h
  %i.ax = load i64, ptr %i.aq, align 8, !tbaa !81
  %i.ay = add i64 %i.ax, 1
  call void @_ZdlPvm(ptr noundef %i.av, i64 noundef %i.ay) #33
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.h, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #32
  br label %.critedge197

bb.i:                                             ; preds = %.noexc.i
  %i.az = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit201

bb.j:                                             ; preds = %.noexc
  %i.ba = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.bb = load ptr, ptr %2, align 8, !tbaa !82    ; 2 uses
  %i.bc = icmp eq ptr %i.bb, %i.aq
  br i1 %i.bc, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit201, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i199

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i199: ; preds = %bb.j
  %i.bd = load i64, ptr %i.aq, align 8, !tbaa !81
  %i.be = add i64 %i.bd, 1
  call void @_ZdlPvm(ptr noundef %i.bb, i64 noundef %i.be) #33
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit201

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit201: ; preds = %bb.j, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i199, %bb.i
  %.pn173 = phi { ptr, i32 } [ %i.az, %bb.i ], [ %i.ba, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i199 ], [ %i.ba, %bb.j ]
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #32
  br label %bb.eu

bb.k:                                             ; preds = %bb.g
  %i.bf = icmp eq i8 %i.ao, 92
  br i1 %i.bf, label %bb.l, label %bb.bp

bb.l:                                             ; preds = %bb.k
  store i8 0, ptr %i.x, align 8, !tbaa !227
  %i.bg = getelementptr inbounds nuw i8, ptr %i.ap, i64 1 ; 2 uses
  store ptr %i.bg, ptr %i.p, align 8, !tbaa !91
  %.not160 = icmp eq i32 %.0111481, -1            ; 4 uses
  %.pr = load i8, ptr %i.bg, align 1, !tbaa !81   ; 2 uses
  br i1 %.not160, label %bb.s, label %bb.m

bb.m:                                             ; preds = %bb.l
  %.not161 = icmp eq i8 %.pr, 117
  br i1 %.not161, label %.thread, label %bb.n

bb.n:                                             ; preds = %bb.m
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #32
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #32
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull @.str.13, ptr noundef nonnull align 1 dereferenceable(1) %4)
          to label %bb.o unwind label %bb.q

bb.o:                                             ; preds = %bb.n
  invoke void @_ZN11flatbuffers6Parser5ErrorERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr dead_on_unwind writable sret(%"class.flatbuffers::CheckedError") align 1 %0, ptr noundef nonnull align 8 dereferenceable(1936) %1, ptr noundef nonnull align 8 dereferenceable(32) %3)
          to label %bb.p unwind label %bb.r

bb.p:                                             ; preds = %bb.o
  %i.bh = load ptr, ptr %3, align 8, !tbaa !82    ; 2 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.bj = icmp eq ptr %i.bh, %i.bi
  br i1 %i.bj, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit204, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i202

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i202: ; preds = %bb.p
  %i.bk = load i64, ptr %i.bi, align 8, !tbaa !81
  %i.bl = add i64 %i.bk, 1
  call void @_ZdlPvm(ptr noundef %i.bh, i64 noundef %i.bl) #33
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit204

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit204: ; preds = %bb.p, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i202
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #32
  br label %.critedge197

bb.q:                                             ; preds = %bb.n
  %i.bm = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit207

bb.r:                                             ; preds = %bb.o
  %i.bn = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.bo = load ptr, ptr %3, align 8, !tbaa !82    ; 2 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.bq = icmp eq ptr %i.bo, %i.bp
  br i1 %i.bq, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit207, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i205

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i205: ; preds = %bb.r
  %i.br = load i64, ptr %i.bp, align 8, !tbaa !81
  %i.bs = add i64 %i.br, 1
  call void @_ZdlPvm(ptr noundef %i.bo, i64 noundef %i.bs) #33
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit207

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit207: ; preds = %bb.r, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i205, %bb.q
  %.pn171 = phi { ptr, i32 } [ %i.bm, %bb.q ], [ %i.bn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i205 ], [ %i.bn, %bb.r ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #32
  br label %bb.eu

bb.s:                                             ; preds = %bb.l
  switch i8 %.pr, label %bb.bk [
    i8 110, label %bb.t
    i8 116, label %bb.v
    i8 114, label %bb.x
    i8 98, label %bb.z
    i8 102, label %bb.ab
end_hunk_1
begin_hunk_2_@_ZN11flatbuffers6Parser4NextEv:bb.a

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit264: ; preds = %bb.ba, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i262, %bb.az
  %.pn164 = phi { ptr, i32 } [ %i.id, %bb.az ], [ %i.ie, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i262 ], [ %i.ie, %bb.ba ]
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #32
  br label %bb.bj

bb.bb:                                            ; preds = %bb.av
  %i.ik = shl i32 %.0111481, 10
  %i.il = and i32 %i.ik, 1047552
  %i.im = add nuw nsw i32 %i.il, 65536
  %i.in = trunc nuw nsw i64 %i.hj to i32
  %i.io = and i32 %i.in, 1023
  %i.ip = or disjoint i32 %i.io, %i.im
  %i.iq = call noundef i32 @_ZN11flatbuffers6ToUTF8EjPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(i32 noundef %i.ip, ptr noundef nonnull %i.u) ; 0 uses
  br label %.critedge193

bb.bc:                                            ; preds = %bb.an
  br i1 %.not160, label %bb.bi, label %bb.bd

bb.bd:                                            ; preds = %bb.bc
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #32
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #32
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %9, ptr noundef nonnull @.str.13, ptr noundef nonnull align 1 dereferenceable(1) %10)
          to label %bb.be unwind label %bb.bg

bb.be:                                            ; preds = %bb.bd
  invoke void @_ZN11flatbuffers6Parser5ErrorERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr dead_on_unwind nonnull writable sret(%"class.flatbuffers::CheckedError") align 1 %0, ptr noundef nonnull align 8 dereferenceable(1936) %1, ptr noundef nonnull align 8 dereferenceable(32) %9)
          to label %bb.bf unwind label %bb.bh

bb.bf:                                            ; preds = %bb.be
  %i.ir = load ptr, ptr %9, align 8, !tbaa !82    ; 2 uses
  %i.is = getelementptr inbounds nuw i8, ptr %9, i64 16 ; 2 uses
  %i.it = icmp eq ptr %i.ir, %i.is
  br i1 %i.it, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit267, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i265

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i265: ; preds = %bb.bf
  %i.iu = load i64, ptr %i.is, align 8, !tbaa !81
  %i.iv = add i64 %i.iu, 1
  call void @_ZdlPvm(ptr noundef %i.ir, i64 noundef %i.iv) #33
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit267

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit267: ; preds = %bb.bf, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i265
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #32
  br label %.critedge193.thread

bb.bg:                                            ; preds = %bb.bd
  %i.iw = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit270

bb.bh:                                            ; preds = %bb.be
  %i.ix = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.iy = load ptr, ptr %9, align 8, !tbaa !82    ; 2 uses
  %i.iz = getelementptr inbounds nuw i8, ptr %9, i64 16 ; 2 uses
  %i.ja = icmp eq ptr %i.iy, %i.iz
  br i1 %i.ja, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit270, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i268

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i268: ; preds = %bb.bh
  %i.jb = load i64, ptr %i.iz, align 8, !tbaa !81
  %i.jc = add i64 %i.jb, 1
  call void @_ZdlPvm(ptr noundef %i.iy, i64 noundef %i.jc) #33
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit270

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit270: ; preds = %bb.bh, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i268, %bb.bg
  %.pn162 = phi { ptr, i32 } [ %i.iw, %bb.bg ], [ %i.ix, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i268 ], [ %i.ix, %bb.bh ]
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #32
  br label %bb.bj

bb.bi:                                            ; preds = %bb.bc
  %i.jd = trunc i64 %i.hj to i32
  %i.je = call noundef i32 @_ZN11flatbuffers6ToUTF8EjPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(i32 noundef %i.jd, ptr noundef nonnull %i.u) ; 0 uses
  br label %.critedge193

.critedge193.thread:                              ; preds = %.thread, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit255, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit261, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit267
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #32
  br label %.critedge197

.critedge193:                                     ; preds = %bb.au, %bb.bi, %bb.bb
  %.2113 = phi i32 [ %i.hx, %bb.au ], [ -1, %bb.bi ], [ -1, %bb.bb ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #32
  br label %bb.bx

bb.bj:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit270, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit264, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit258
  %.pn166.pn = phi { ptr, i32 } [ %.pn166, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit258 ], [ %.pn164, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit264 ], [ %.pn162, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit270 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #32
  br label %bb.eu

bb.bk:                                            ; preds = %bb.s
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #32
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #32
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %11, ptr noundef nonnull @.str.16, ptr noundef nonnull align 1 dereferenceable(1) %12)
          to label %bb.bl unwind label %bb.bn

bb.bl:                                            ; preds = %bb.bk
  invoke void @_ZN11flatbuffers6Parser5ErrorERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr dead_on_unwind writable sret(%"class.flatbuffers::CheckedError") align 1 %0, ptr noundef nonnull align 8 dereferenceable(1936) %1, ptr noundef nonnull align 8 dereferenceable(32) %11)
          to label %bb.bm unwind label %bb.bo

bb.bm:                                            ; preds = %bb.bl
  %i.jf = load ptr, ptr %11, align 8, !tbaa !82   ; 2 uses
  %i.jg = getelementptr inbounds nuw i8, ptr %11, i64 16 ; 2 uses
  %i.jh = icmp eq ptr %i.jf, %i.jg
  br i1 %i.jh, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit273, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i271

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i271: ; preds = %bb.bm
  %i.ji = load i64, ptr %i.jg, align 8, !tbaa !81
  %i.jj = add i64 %i.ji, 1
  call void @_ZdlPvm(ptr noundef %i.jf, i64 noundef %i.jj) #33
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit273

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit273: ; preds = %bb.bm, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i271
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #32
  br label %.critedge197

bb.bn:                                            ; preds = %bb.bk
  %i.jk = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit276

bb.bo:                                            ; preds = %bb.bl
  %i.jl = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.jm = load ptr, ptr %11, align 8, !tbaa !82   ; 2 uses
  %i.jn = getelementptr inbounds nuw i8, ptr %11, i64 16 ; 2 uses
  %i.jo = icmp eq ptr %i.jm, %i.jn
  br i1 %i.jo, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit276, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i274

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i274: ; preds = %bb.bo
  %i.jp = load i64, ptr %i.jn, align 8, !tbaa !81
  %i.jq = add i64 %i.jp, 1
  call void @_ZdlPvm(ptr noundef %i.jm, i64 noundef %i.jq) #33
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit276

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit276: ; preds = %bb.bo, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i274, %bb.bn
  %.pn169 = phi { ptr, i32 } [ %i.jk, %bb.bn ], [ %i.jl, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i274 ], [ %i.jl, %bb.bo ]
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #32
  br label %bb.eu

bb.bp:                                            ; preds = %bb.k
  %.not157 = icmp eq i32 %.0111481, -1
  br i1 %.not157, label %bb.bv, label %bb.bq

bb.bq:                                            ; preds = %bb.bp
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #32
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #32
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %13, ptr noundef nonnull @.str.13, ptr noundef nonnull align 1 dereferenceable(1) %14)
          to label %bb.br unwind label %bb.bt

bb.br:                                            ; preds = %bb.bq
  invoke void @_ZN11flatbuffers6Parser5ErrorERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr dead_on_unwind writable sret(%"class.flatbuffers::CheckedError") align 1 %0, ptr noundef nonnull align 8 dereferenceable(1936) %1, ptr noundef nonnull align 8 dereferenceable(32) %13)
          to label %bb.bs unwind label %bb.bu

bb.bs:                                            ; preds = %bb.br
  %i.jr = load ptr, ptr %13, align 8, !tbaa !82   ; 2 uses
  %i.js = getelementptr inbounds nuw i8, ptr %13, i64 16 ; 2 uses
  %i.jt = icmp eq ptr %i.jr, %i.js
  br i1 %i.jt, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit279, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i277

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i277: ; preds = %bb.bs
  %i.ju = load i64, ptr %i.js, align 8, !tbaa !81
  %i.jv = add i64 %i.ju, 1
  call void @_ZdlPvm(ptr noundef %i.jr, i64 noundef %i.jv) #33
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit279

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit279: ; preds = %bb.bs, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i277
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #32
  br label %.critedge197

bb.bt:                                            ; preds = %bb.bq
  %i.jw = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit282

bb.bu:                                            ; preds = %bb.br
  %i.jx = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.jy = load ptr, ptr %13, align 8, !tbaa !82   ; 2 uses
  %i.jz = getelementptr inbounds nuw i8, ptr %13, i64 16 ; 2 uses
  %i.ka = icmp eq ptr %i.jy, %i.jz
  br i1 %i.ka, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit282, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i280

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i280: ; preds = %bb.bu
  %i.kb = load i64, ptr %i.jz, align 8, !tbaa !81
  %i.kc = add i64 %i.kb, 1
  call void @_ZdlPvm(ptr noundef %i.jy, i64 noundef %i.kc) #33
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit282

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit282: ; preds = %bb.bu, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i280, %bb.bt
  %.pn158 = phi { ptr, i32 } [ %i.jw, %bb.bt ], [ %i.jx, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i280 ], [ %i.jx, %bb.bu ]
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #32
  br label %bb.eu

bb.bv:                                            ; preds = %bb.bp
  %i.kd = icmp ult i8 %i.ao, 127
  %i.ke = load i8, ptr %i.x, align 8, !tbaa !227, !range !208, !noundef !209
  %i.kf = icmp ne i8 %i.ke, 0
  %i.kg = and i1 %i.kd, %i.kf
  %i.kh = zext i1 %i.kg to i8
  store i8 %i.kh, ptr %i.x, align 8, !tbaa !227
  %i.ki = getelementptr inbounds nuw i8, ptr %i.ap, i64 1
  store ptr %i.ki, ptr %i.p, align 8, !tbaa !91
  %i.kj = load i8, ptr %i.ap, align 1, !tbaa !81
  %i.kk = load i64, ptr %i.v, align 8, !tbaa !79  ; 4 uses
  %i.kl = add i64 %i.kk, 1                        ; 3 uses
  %i.km = load ptr, ptr %i.u, align 8, !tbaa !82  ; 2 uses
  %i.kn = icmp eq ptr %i.km, %i.am
  br i1 %i.kn, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i286, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i283

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i286: ; preds = %bb.bv
  %i.ko = icmp ult i64 %i.kk, 16
  call void @llvm.assume(i1 %i.ko)
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i284

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i283: ; preds = %bb.bv
  %i.kp = load i64, ptr %i.am, align 8, !tbaa !81
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i284

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i284: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i283, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i286
  %i.kq = phi i64 [ %i.kp, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i283 ], [ 15, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i286 ]
  %i.kr = icmp ugt i64 %i.kl, %i.kq
  br i1 %i.kr, label %bb.bw, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEc.exit287

bb.bw:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i284
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %i.u, i64 noundef %i.kk, i64 noundef 0, ptr noundef null, i64 noundef 1)
  %.pre.i.i285 = load ptr, ptr %i.u, align 8, !tbaa !82
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEc.exit287

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEc.exit287: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i284, %bb.bw
  %i.ks = phi ptr [ %.pre.i.i285, %bb.bw ], [ %i.km, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i284 ]
  %i.kt = getelementptr inbounds nuw i8, ptr %i.ks, i64 %i.kk
  store i8 %i.kj, ptr %i.kt, align 1, !tbaa !81
  store i64 %i.kl, ptr %i.v, align 8, !tbaa !79
  %i.ku = load ptr, ptr %i.u, align 8, !tbaa !82
  %i.kv = getelementptr inbounds nuw i8, ptr %i.ku, i64 %i.kl
  store i8 0, ptr %i.kv, align 1, !tbaa !81
  br label %bb.bx

bb.bx:                                            ; preds = %.critedge193, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEc.exit252, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEc.exit, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEc.exit212, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEc.exit217, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEc.exit222, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEc.exit227, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEc.exit232, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEc.exit237, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEc.exit242, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEc.exit247, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEc.exit287
  %.3114 = phi i32 [ -1, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEc.exit ], [ -1, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEc.exit212 ], [ -1, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEc.exit217 ], [ -1, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEc.exit222 ], [ -1, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEc.exit227 ], [ -1, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEc.exit232 ], [ -1, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEc.exit237 ], [ -1, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEc.exit242 ], [ -1, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEc.exit247 ], [ -1, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEc.exit252 ], [ %.2113, %.critedge193 ], [ -1, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEc.exit287 ] ; 2 uses
  %i.kw = load ptr, ptr %i.p, align 8, !tbaa !91  ; 3 uses
  %i.kx = load i8, ptr %i.kw, align 1, !tbaa !81  ; 2 uses
  %.not151 = icmp eq i8 %i.kx, %i.af
  br i1 %.not151, label %._crit_edge, label %bb.g, !llvm.loop !686

._crit_edge:                                      ; preds = %bb.bx
  %i.ky = icmp eq i32 %.3114, -1
  br i1 %i.ky, label %._crit_edge.thread, label %bb.by

bb.by:                                            ; preds = %._crit_edge
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #32
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #32
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %15, ptr noundef nonnull @.str.13, ptr noundef nonnull align 1 dereferenceable(1) %16)
          to label %bb.bz unwind label %bb.cb

bb.bz:                                            ; preds = %bb.by
  invoke void @_ZN11flatbuffers6Parser5ErrorERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr dead_on_unwind writable sret(%"class.flatbuffers::CheckedError") align 1 %0, ptr noundef nonnull align 8 dereferenceable(1936) %1, ptr noundef nonnull align 8 dereferenceable(32) %15)
          to label %bb.ca unwind label %bb.cc

bb.ca:                                            ; preds = %bb.bz
  %i.kz = load ptr, ptr %15, align 8, !tbaa !82   ; 2 uses
  %i.la = getelementptr inbounds nuw i8, ptr %15, i64 16 ; 2 uses
  %i.lb = icmp eq ptr %i.kz, %i.la
  br i1 %i.lb, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit290, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i288

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i288: ; preds = %bb.ca
  %i.lc = load i64, ptr %i.la, align 8, !tbaa !81
  %i.ld = add i64 %i.lc, 1
  call void @_ZdlPvm(ptr noundef %i.kz, i64 noundef %i.ld) #33
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit290

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit290: ; preds = %bb.ca, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i288
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #32
  br label %.critedge197

bb.cb:                                            ; preds = %bb.by
  %i.le = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit293

bb.cc:                                            ; preds = %bb.bz
  %i.lf = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.lg = load ptr, ptr %15, align 8, !tbaa !82   ; 2 uses
  %i.lh = getelementptr inbounds nuw i8, ptr %15, i64 16 ; 2 uses
  %i.li = icmp eq ptr %i.lg, %i.lh
  br i1 %i.li, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit293, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i291

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i291: ; preds = %bb.cc
  %i.lj = load i64, ptr %i.lh, align 8, !tbaa !81
  %i.lk = add i64 %i.lj, 1
  call void @_ZdlPvm(ptr noundef %i.lg, i64 noundef %i.lk) #33
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit293

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit293: ; preds = %bb.cc, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i291, %bb.cb
  %.pn155 = phi { ptr, i32 } [ %i.le, %bb.cb ], [ %i.lf, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i291 ], [ %i.lf, %bb.cc ]
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #32
  br label %bb.eu

._crit_edge.thread:                               ; preds = %bb.f, %._crit_edge
  %.lcssa416654 = phi ptr [ %i.kw, %._crit_edge ], [ %i.ae, %bb.f ]
  %i.ll = getelementptr inbounds nuw i8, ptr %.lcssa416654, i64 1
  store ptr %i.ll, ptr %i.p, align 8, !tbaa !91
  %i.lm = load i8, ptr %i.x, align 8, !tbaa !227, !range !208, !noundef !209
  %i.ln = trunc nuw i8 %i.lm to i1
  br i1 %i.ln, label %bb.ck, label %bb.cd

bb.cd:                                            ; preds = %._crit_edge.thread
  %i.lo = getelementptr inbounds nuw i8, ptr %1, i64 1225
  %i.lp = load i8, ptr %i.lo, align 1, !tbaa !708, !range !208, !noundef !209
  %i.lq = trunc nuw i8 %i.lp to i1
  br i1 %i.lq, label %bb.ck, label %bb.ce

bb.ce:                                            ; preds = %bb.cd
  %.val = load ptr, ptr %i.u, align 8, !tbaa !82
  %.val198 = load i64, ptr %i.v, align 8, !tbaa !79
  %i.lr = call fastcc noundef zeroext i1 @_ZN11flatbuffers12_GLOBAL__N_112ValidateUTF8ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr %.val, i64 %.val198)
  br i1 %i.lr, label %bb.ck, label %bb.cf

bb.cf:                                            ; preds = %bb.ce
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #32
  call void @llvm.lifetime.start.p0(ptr nonnull %18) #32
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %17, ptr noundef nonnull @.str.17, ptr noundef nonnull align 1 dereferenceable(1) %18)
          to label %bb.cg unwind label %bb.ci

bb.cg:                                            ; preds = %bb.cf
  invoke void @_ZN11flatbuffers6Parser5ErrorERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr dead_on_unwind writable sret(%"class.flatbuffers::CheckedError") align 1 %0, ptr noundef nonnull align 8 dereferenceable(1936) %1, ptr noundef nonnull align 8 dereferenceable(32) %17)
          to label %bb.ch unwind label %bb.cj

bb.ch:                                            ; preds = %bb.cg
  %i.ls = load ptr, ptr %17, align 8, !tbaa !82   ; 2 uses
  %i.lt = getelementptr inbounds nuw i8, ptr %17, i64 16 ; 2 uses
  %i.lu = icmp eq ptr %i.ls, %i.lt
  br i1 %i.lu, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit296, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i294

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i294: ; preds = %bb.ch
  %i.lv = load i64, ptr %i.lt, align 8, !tbaa !81
  %i.lw = add i64 %i.lv, 1
  call void @_ZdlPvm(ptr noundef %i.ls, i64 noundef %i.lw) #33
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit296

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit296: ; preds = %bb.ch, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i294
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #32
  br label %.critedge197

bb.ci:                                            ; preds = %bb.cf
  %i.lx = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit299

bb.cj:                                            ; preds = %bb.cg
  %i.ly = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.lz = load ptr, ptr %17, align 8, !tbaa !82   ; 2 uses
  %i.ma = getelementptr inbounds nuw i8, ptr %17, i64 16 ; 2 uses
  %i.mb = icmp eq ptr %i.lz, %i.ma
  br i1 %i.mb, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit299, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i297

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i297: ; preds = %bb.cj
  %i.mc = load i64, ptr %i.ma, align 8, !tbaa !81
  %i.md = add i64 %i.mc, 1
  call void @_ZdlPvm(ptr noundef %i.lz, i64 noundef %i.md) #33
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit299

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit299: ; preds = %bb.cj, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i297, %bb.ci
  %.pn153 = phi { ptr, i32 } [ %i.lx, %bb.ci ], [ %i.ly, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i297 ], [ %i.ly, %bb.cj ]
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #32
  br label %bb.eu

bb.ck:                                            ; preds = %bb.ce, %bb.cd, %._crit_edge.thread
  store i32 257, ptr %i.y, align 4, !tbaa !228
  store i8 0, ptr %0, align 1, !tbaa !212, !alias.scope !709
  %i.me = getelementptr inbounds nuw i8, ptr %0, i64 1
  store i8 0, ptr %i.me, align 1, !tbaa !213, !alias.scope !709
  br label %.critedge197

.critedge191:                                     ; preds = %bb.al
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #32
  br label %.critedge197

bb.cl:                                            ; preds = %bb.b
  %i.mf = load i8, ptr %i.ae, align 1, !tbaa !81
  switch i8 %i.mf, label %bb.dj [
    i8 47, label %bb.cm
    i8 42, label %.preheader412
  ]

bb.cm:                                            ; preds = %bb.cl
  %i.mg = getelementptr inbounds nuw i8, ptr %storemerge142887, i64 2 ; 2 uses
  br label %bb.cn

end_hunk_2
begin_hunk_3_@_ZN11flatbuffers6Parser4NextEv:bb.a
    i64 0, label %bb.cx
  ]

bb.cv:                                            ; preds = %._crit_edge.i.i306
  %i.nf = load i8, ptr %i.mx, align 1, !tbaa !81
  store i8 %i.nf, ptr %i.ne, align 1, !tbaa !81
  br label %bb.cx

bb.cw:                                            ; preds = %._crit_edge.i.i306
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.ne, ptr nonnull align 1 %i.mx, i64 %i.na, i1 false)
  br label %bb.cx

bb.cx:                                            ; preds = %bb.cw, %bb.cv, %._crit_edge.i.i306
  %i.ng = load i64, ptr %i.b, align 8, !tbaa !93  ; 2 uses
  store i64 %i.ng, ptr %i.ac, align 8, !tbaa !79
  %i.nh = load ptr, ptr %21, align 8, !tbaa !82
  %i.ni = getelementptr inbounds nuw i8, ptr %i.nh, i64 %i.ng
  store i8 0, ptr %i.ni, align 1, !tbaa !81
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #32
  %i.nj = load ptr, ptr %i.h, align 8, !tbaa !216 ; 6 uses
  %i.nk = load ptr, ptr %i.ad, align 8, !tbaa !229
  %.not.i.i309 = icmp eq ptr %i.nj, %i.nk
  br i1 %.not.i.i309, label %bb.da, label %bb.cy

bb.cy:                                            ; preds = %bb.cx
  %i.nl = getelementptr inbounds nuw i8, ptr %i.nj, i64 16 ; 3 uses
  store ptr %i.nl, ptr %i.nj, align 8, !tbaa !80
  %i.nm = load ptr, ptr %21, align 8, !tbaa !82   ; 2 uses
  %i.nn = icmp eq ptr %i.nm, %i.ab
  br i1 %i.nn, label %bb.cz, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i310

bb.cz:                                            ; preds = %bb.cy
  %i.no = load i64, ptr %i.ac, align 8, !tbaa !79 ; 3 uses
  %i.np = icmp ult i64 %i.no, 16
  call void @llvm.assume(i1 %i.np)
  %i.nq = add nuw nsw i64 %i.no, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.nl, ptr noundef nonnull align 8 dereferenceable(1) %i.ab, i64 %i.nq, i1 false)
  br label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backEOS5_.exit.thread

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i310: ; preds = %bb.cy
  store ptr %i.nm, ptr %i.nj, align 8, !tbaa !82
  %i.nr = load i64, ptr %i.ab, align 8, !tbaa !81
  store i64 %i.nr, ptr %i.nl, align 8, !tbaa !81
  %.pre = load i64, ptr %i.ac, align 8, !tbaa !79
  br label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backEOS5_.exit.thread

_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backEOS5_.exit.thread: ; preds = %bb.cz, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i310
  %i.ns = phi i64 [ %.pre, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i310 ], [ %i.no, %bb.cz ]
  %i.nt = getelementptr inbounds nuw i8, ptr %i.nj, i64 8
  store i64 %i.ns, ptr %i.nt, align 8, !tbaa !79
  store ptr %i.ab, ptr %21, align 8, !tbaa !82
  store i64 0, ptr %i.ac, align 8, !tbaa !79
  %i.nu = load ptr, ptr %i.h, align 8, !tbaa !216
  %i.nv = getelementptr inbounds nuw i8, ptr %i.nu, i64 32
  store ptr %i.nv, ptr %i.h, align 8, !tbaa !216
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit314

bb.da:                                            ; preds = %bb.cx
  invoke void @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %i.f, ptr %i.nj, ptr noundef nonnull align 8 dereferenceable(32) %21)
          to label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backEOS5_.exit unwind label %bb.dc

_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backEOS5_.exit: ; preds = %bb.da
  %.pre548 = load ptr, ptr %21, align 8, !tbaa !82 ; 2 uses
  %i.nw = icmp eq ptr %.pre548, %i.ab
  br i1 %i.nw, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit314, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i312

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i312: ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backEOS5_.exit
  %i.nx = load i64, ptr %i.ab, align 8, !tbaa !81
  %i.ny = add i64 %i.nx, 1
  call void @_ZdlPvm(ptr noundef %.pre548, i64 noundef %i.ny) #33
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit314

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit314: ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backEOS5_.exit, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backEOS5_.exit.thread, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i312
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #32
  br label %.outer.backedge

bb.db:                                            ; preds = %.noexc.i307
  %i.nz = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit317

bb.dc:                                            ; preds = %bb.da
  %i.oa = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ob = load ptr, ptr %21, align 8, !tbaa !82   ; 2 uses
  %i.oc = icmp eq ptr %i.ob, %i.ab
  br i1 %i.oc, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit317, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i315

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i315: ; preds = %bb.dc
  %i.od = load i64, ptr %i.ab, align 8, !tbaa !81
  %i.oe = add i64 %i.od, 1
  call void @_ZdlPvm(ptr noundef %i.ob, i64 noundef %i.oe) #33
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit317

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit317: ; preds = %bb.dc, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i315, %bb.db
  %.pn148 = phi { ptr, i32 } [ %i.nz, %bb.db ], [ %i.oa, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i315 ], [ %i.oa, %bb.dc ]
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #32
  br label %bb.eu

.preheader412:                                    ; preds = %bb.cl, %thread-pre-split367
  %.pn141 = phi ptr [ %storemerge, %thread-pre-split367 ], [ %i.ae, %bb.cl ] ; 3 uses
  %storemerge = getelementptr inbounds nuw i8, ptr %.pn141, i64 1 ; 5 uses
  store ptr %storemerge, ptr %i.p, align 8, !tbaa !91
  %i.of = load i8, ptr %storemerge, align 1, !tbaa !81 ; 2 uses
  switch i8 %i.of, label %thread-pre-split367 [
    i8 42, label %bb.dd
    i8 10, label %bb.de
  ]

bb.dd:                                            ; preds = %.preheader412
  %i.og = getelementptr inbounds nuw i8, ptr %.pn141, i64 2
  %i.oh = load i8, ptr %i.og, align 1, !tbaa !81
  %.not138 = icmp eq i8 %i.oh, 47
  br i1 %.not138, label %bb.di, label %thread-pre-split367

bb.de:                                            ; preds = %.preheader412
  store ptr %storemerge, ptr %i.z, align 8, !tbaa !92
  %i.oi = load i32, ptr %i.aa, align 8, !tbaa !90
  %i.oj = add nsw i32 %i.oi, 1
  store i32 %i.oj, ptr %i.aa, align 8, !tbaa !90
  %.pr368.pre = load i8, ptr %storemerge, align 1, !tbaa !81
  br label %thread-pre-split367

thread-pre-split367:                              ; preds = %bb.de, %bb.dd, %.preheader412
  %i.ok = phi i8 [ %i.of, %.preheader412 ], [ 42, %bb.dd ], [ %.pr368.pre, %bb.de ]
  %.not139 = icmp eq i8 %i.ok, 0
  br i1 %.not139, label %.noexc.i319, label %.preheader412, !llvm.loop !690

.noexc.i319:                                      ; preds = %thread-pre-split367
  call void @llvm.lifetime.start.p0(ptr nonnull %22) #32
  %i.ol = getelementptr inbounds nuw i8, ptr %22, i64 16 ; 6 uses
  store ptr %i.ol, ptr %22, align 8, !tbaa !80
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #32
  store i64 22, ptr %i.a, align 8, !tbaa !93
  %i.om = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %22, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0)
          to label %.noexc320 unwind label %bb.dg ; 2 uses

.noexc320:                                        ; preds = %.noexc.i319
  store ptr %i.om, ptr %22, align 8, !tbaa !82
  %i.on = load i64, ptr %i.a, align 8, !tbaa !93  ; 3 uses
  store i64 %i.on, ptr %i.ol, align 8, !tbaa !81
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(22) %i.om, ptr noundef nonnull align 1 dereferenceable(22) @.str.19, i64 22, i1 false)
  %i.oo = getelementptr inbounds nuw i8, ptr %22, i64 8
  store i64 %i.on, ptr %i.oo, align 8, !tbaa !79
  %i.op = load ptr, ptr %22, align 8, !tbaa !82
  %i.oq = getelementptr inbounds nuw i8, ptr %i.op, i64 %i.on
  store i8 0, ptr %i.oq, align 1, !tbaa !81
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #32
  invoke void @_ZN11flatbuffers6Parser5ErrorERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr dead_on_unwind writable sret(%"class.flatbuffers::CheckedError") align 1 %0, ptr noundef nonnull align 8 dereferenceable(1936) %1, ptr noundef nonnull align 8 dereferenceable(32) %22)
          to label %bb.df unwind label %bb.dh

bb.df:                                            ; preds = %.noexc320
  %i.or = load ptr, ptr %22, align 8, !tbaa !82   ; 2 uses
  %i.os = icmp eq ptr %i.or, %i.ol
  br i1 %i.os, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit324, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i322

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i322: ; preds = %bb.df
  %i.ot = load i64, ptr %i.ol, align 8, !tbaa !81
  %i.ou = add i64 %i.ot, 1
  call void @_ZdlPvm(ptr noundef %i.or, i64 noundef %i.ou) #33
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit324

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit324: ; preds = %bb.df, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i322
  call void @llvm.lifetime.end.p0(ptr nonnull %22) #32
  br label %.critedge197

bb.dg:                                            ; preds = %.noexc.i319
  %i.ov = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit327

bb.dh:                                            ; preds = %.noexc320
  %i.ow = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ox = load ptr, ptr %22, align 8, !tbaa !82   ; 2 uses
  %i.oy = icmp eq ptr %i.ox, %i.ol
  br i1 %i.oy, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit327, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i325

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i325: ; preds = %bb.dh
  %i.oz = load i64, ptr %i.ol, align 8, !tbaa !81
  %i.pa = add i64 %i.oz, 1
  call void @_ZdlPvm(ptr noundef %i.ox, i64 noundef %i.pa) #33
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit327

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit327: ; preds = %bb.dh, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i325, %bb.dg
  %.pn = phi { ptr, i32 } [ %i.ov, %bb.dg ], [ %i.ow, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i325 ], [ %i.ow, %bb.dh ]
  call void @llvm.lifetime.end.p0(ptr nonnull %22) #32
  br label %bb.eu

bb.di:                                            ; preds = %bb.dd
  %i.pb = getelementptr inbounds nuw i8, ptr %.pn141, i64 3 ; 2 uses
  store ptr %i.pb, ptr %i.p, align 8, !tbaa !91
  br label %.backedge

.backedge:                                        ; preds = %bb.di, %bb.b, %bb.b, %bb.b, %.critedge
  %storemerge142886 = phi ptr [ %i.pb, %bb.di ], [ %i.ae, %bb.b ], [ %i.ae, %bb.b ], [ %i.ae, %bb.b ], [ %storemerge142, %.critedge ]
  br label %bb.b, !llvm.loop !683

bb.dj:                                            ; preds = %bb.cl, %bb.b
  %i.pc = and i8 %i.af, -33
  %30 = add i8 %i.pc, -65
  %i.pd = icmp ult i8 %30, 26
  %i.pe = icmp eq i8 %i.af, 95
  %i.pf = or i1 %i.pe, %i.pd
  br i1 %i.pf, label %.preheader, label %bb.dk

.preheader:                                       ; preds = %bb.dj
  %i.pg = load i8, ptr %i.ae, align 1, !tbaa !81  ; 3 uses
  %i.ph = and i8 %i.pg, -33
  %31 = add i8 %i.ph, -65
  %i.pi = icmp ult i8 %31, 26
  %i.pj = icmp eq i8 %i.pg, 95
  %i.pk = or i1 %i.pj, %i.pi
  %32 = add i8 %i.pg, -48
  %i.pl = icmp ult i8 %32, 10
  %or.cond499 = or i1 %i.pl, %i.pk
  br i1 %or.cond499, label %.critedge12, label %._crit_edge500

.critedge12:                                      ; preds = %.preheader, %.critedge12
  %i.pm = phi ptr [ %i.pn, %.critedge12 ], [ %i.ae, %.preheader ]
  %i.pn = getelementptr inbounds nuw i8, ptr %i.pm, i64 1 ; 4 uses
  store ptr %i.pn, ptr %i.p, align 8, !tbaa !91
  %i.po = load i8, ptr %i.pn, align 1, !tbaa !81  ; 3 uses
  %i.pp = and i8 %i.po, -33
  %33 = add i8 %i.pp, -65
  %i.pq = icmp ult i8 %33, 26
  %i.pr = icmp eq i8 %i.po, 95
  %i.ps = or i1 %i.pr, %i.pq
  %34 = add i8 %i.po, -48
  %i.pt = icmp ult i8 %34, 10
  %or.cond = or i1 %i.pt, %i.ps
  br i1 %or.cond, label %.critedge12, label %._crit_edge500, !llvm.loop !691

._crit_edge500:                                   ; preds = %.critedge12, %.preheader
  %.lcssa = phi ptr [ %i.ae, %.preheader ], [ %i.pn, %.critedge12 ]
  %i.pu = load i64, ptr %i.v, align 8, !tbaa !79
  %i.pv = ptrtoint ptr %.lcssa to i64
  %i.pw = ptrtoint ptr %storemerge142887 to i64
  %i.px = sub i64 %i.pv, %i.pw
  %i.py = call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %i.u, i64 noundef %i.pu, i64 noundef 0, ptr noundef nonnull %storemerge142887, i64 noundef %i.px) ; 0 uses
  store i32 260, ptr %i.y, align 4, !tbaa !228
  store i8 0, ptr %0, align 1, !tbaa !212, !alias.scope !710
  %i.pz = getelementptr inbounds nuw i8, ptr %0, i64 1
  store i8 0, ptr %i.pz, align 1, !tbaa !213, !alias.scope !710
  br label %.critedge197

bb.dk:                                            ; preds = %bb.dj
  switch i8 %i.af, label %.thread369 [
    i8 45, label %sub_0
    i8 43, label %sub_0
    i8 46, label %bb.do
  ]

sub_0:                                            ; preds = %bb.dk, %bb.dk
  %i.qa = load i8, ptr %i.ae, align 1             ; 3 uses
  %.not502 = icmp eq i8 %i.qa, 105
  br i1 %.not502, label %sub_1, label %bb.dn

sub_1:                                            ; preds = %sub_0
  %i.qb = getelementptr inbounds nuw i8, ptr %storemerge142887, i64 2
  %i.qc = load i8, ptr %i.qb, align 1
  %.not503 = icmp eq i8 %i.qc, 110
  br i1 %.not503, label %.tail, label %.thread656

.tail:                                            ; preds = %sub_1
  %i.qd = getelementptr inbounds nuw i8, ptr %storemerge142887, i64 3
  %i.qe = load i8, ptr %i.qd, align 1
  %i.qf = icmp eq i8 %i.qe, 102
  br i1 %i.qf, label %bb.dl, label %.thread656

bb.dl:                                            ; preds = %.tail
  %i.qg = getelementptr inbounds nuw i8, ptr %storemerge142887, i64 4
  %i.qh = load i8, ptr %i.qg, align 1, !tbaa !81  ; 3 uses
  %i.qi = and i8 %i.qh, -33
  %35 = add i8 %i.qi, -65
  %i.qj = icmp ult i8 %35, 26
  %i.qk = icmp eq i8 %i.qh, 95
  %i.ql = or i1 %i.qk, %i.qj
  %36 = add i8 %i.qh, -48
  %i.qm = icmp ult i8 %36, 10
  %or.cond399 = or i1 %i.qm, %i.ql
  br i1 %or.cond399, label %.thread656, label %bb.dm

bb.dm:                                            ; preds = %bb.dl
  %i.qn = load i64, ptr %i.v, align 8, !tbaa !79
  %i.qo = call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %i.u, i64 noundef 0, i64 noundef %i.qn, ptr noundef nonnull %storemerge142887, i64 noundef 4) ; 0 uses
  store i32 259, ptr %i.y, align 4, !tbaa !228
  %i.qp = load ptr, ptr %i.p, align 8, !tbaa !91
  %i.qq = getelementptr inbounds nuw i8, ptr %i.qp, i64 3
  store ptr %i.qq, ptr %i.p, align 8, !tbaa !91
  store i8 0, ptr %0, align 1, !tbaa !212, !alias.scope !711
  %i.qr = getelementptr inbounds nuw i8, ptr %0, i64 1
  store i8 0, ptr %i.qr, align 1, !tbaa !213, !alias.scope !711
  br label %.critedge197

bb.dn:                                            ; preds = %sub_0
  %i.qs = and i8 %i.qa, -33
  %37 = add i8 %i.qs, -65
  %i.qt = icmp ult i8 %37, 26
  %i.qu = icmp eq i8 %i.qa, 95
  %i.qv = or i1 %i.qu, %i.qt
  br i1 %i.qv, label %.thread656, label %switch.early.test

.thread656:                                       ; preds = %.tail, %bb.dl, %sub_1, %bb.dn
  store i8 0, ptr %0, align 1, !tbaa !212, !alias.scope !712
  %i.qw = getelementptr inbounds nuw i8, ptr %0, i64 1
  store i8 0, ptr %i.qw, align 1, !tbaa !213, !alias.scope !712
  br label %.critedge197

bb.do:                                            ; preds = %bb.dk
  %i.qx = load i8, ptr %i.ae, align 1, !tbaa !81
  %38 = add i8 %i.qx, -48
  %i.qy = icmp ult i8 %38, 10
  br i1 %i.qy, label %.thread370, label %bb.dp

bb.dp:                                            ; preds = %bb.do
  store i8 0, ptr %0, align 1, !tbaa !212, !alias.scope !713
  %i.qz = getelementptr inbounds nuw i8, ptr %0, i64 1
  store i8 0, ptr %i.qz, align 1, !tbaa !213, !alias.scope !713
  br label %.critedge197

.thread369:                                       ; preds = %bb.dk
  %39 = add i8 %i.af, -58
  %i.ra = icmp ult i8 %39, -10
  br i1 %i.ra, label %switch.early.test, label %bb.dq

switch.early.test:                                ; preds = %bb.dn, %.thread369
  switch i8 %i.af, label %bb.ei [
    i8 45, label %.thread370
    i8 43, label %.thread370
  ]

.thread370:                                       ; preds = %switch.early.test, %switch.early.test, %bb.do
  %.ph376 = phi i32 [ 0, %bb.do ], [ 1, %switch.early.test ], [ 1, %switch.early.test ] ; 2 uses
  %.ph377 = phi i1 [ false, %bb.do ], [ true, %switch.early.test ], [ true, %switch.early.test ]
  %40 = load i8, ptr %i.ae, align 1, !tbaa !81
  %41 = add i8 %40, -48
  %i.rb = icmp ult i8 %41, 10
  br i1 %i.rb, label %.thread370.thread, label %.preheader410.preheader

.thread370.thread:                                ; preds = %.thread370
  %i.rc = getelementptr inbounds nuw i8, ptr %storemerge142887, i64 2 ; 2 uses
  store ptr %i.rc, ptr %i.p, align 8, !tbaa !91
  %i.rd = load i8, ptr %i.ae, align 1, !tbaa !81
  br label %bb.dq

bb.dq:                                            ; preds = %.thread369, %.thread370.thread
  %i.re = phi ptr [ %i.ae, %.thread369 ], [ %i.rc, %.thread370.thread ] ; 9 uses
  %i.rf = phi i1 [ true, %.thread369 ], [ %.ph377, %.thread370.thread ]
  %i.rg = phi i32 [ 1, %.thread369 ], [ %.ph376, %.thread370.thread ] ; 3 uses
  %.0125 = phi i8 [ %i.af, %.thread369 ], [ %i.rd, %.thread370.thread ]
  %.0 = phi ptr [ %storemerge142887, %.thread369 ], [ %i.ae, %.thread370.thread ] ; 2 uses
  %i.rh = icmp eq i8 %.0125, 48
  %or.cond19 = select i1 %i.rf, i1 %i.rh, i1 false
  br i1 %or.cond19, label %bb.dr, label %.preheader410.preheader

bb.dr:                                            ; preds = %bb.dq
  %i.ri = load i8, ptr %i.re, align 1, !tbaa !81
  %i.rj = and i8 %i.ri, -33
  %i.rk = icmp eq i8 %i.rj, 88
  br i1 %i.rk, label %.preheader409.us.preheader, label %.preheader410.preheader

.preheader410.preheader:                          ; preds = %.thread370, %bb.dr, %bb.dq
  %.ph = phi i32 [ %i.rg, %bb.dr ], [ %i.rg, %bb.dq ], [ %.ph376, %.thread370 ]
  %.promoted486.ph = phi ptr [ %i.re, %bb.dr ], [ %i.re, %bb.dq ], [ %i.ae, %.thread370 ]
  %.1.ph = phi ptr [ %.0, %bb.dr ], [ %.0, %bb.dq ], [ %i.ae, %.thread370 ] ; 3 uses
  br label %.preheader410

.preheader409.us.preheader:                       ; preds = %bb.dr
  %.ptr740 = getelementptr inbounds nuw i8, ptr %i.re, i64 1 ; 3 uses
  store ptr %.ptr740, ptr %i.p, align 8, !tbaa !91
  br label %.preheader409.us

.preheader409.us:                                 ; preds = %.preheader409.us.preheader, %bb.ds
  %.promoted484487.us.idx = phi i64 [ %.promoted484489.us.add, %bb.ds ], [ 1, %.preheader409.us.preheader ] ; 3 uses
  %.077.us = phi i32 [ 0, %bb.ds ], [ %i.rg, %.preheader409.us.preheader ] ; 4 uses
  %.promoted484487.us.ptr = getelementptr inbounds nuw i8, ptr %i.re, i64 %.promoted484487.us.idx
  %i.rl = load i8, ptr %.promoted484487.us.ptr, align 1, !tbaa !81 ; 3 uses
  %42 = add i8 %i.rl, -48
  %i.rm = icmp ult i8 %42, 10
  %i.rn = and i8 %i.rl, -33
  %43 = add i8 %i.rn, -65
  %i.ro = icmp ult i8 %43, 6
  %44 = or i1 %i.rm, %i.ro
  br i1 %44, label %.lr.ph485.us, label %.loopexit.us

.lr.ph485.us:                                     ; preds = %.preheader409.us, %.lr.ph485.us
  %.idx = phi i64 [ %.add, %.lr.ph485.us ], [ %.promoted484487.us.idx, %.preheader409.us ]
  %.add = add nuw nsw i64 %.idx, 1                ; 3 uses
  %.ptr739 = getelementptr inbounds nuw i8, ptr %i.re, i64 %.add ; 2 uses
  store ptr %.ptr739, ptr %i.p, align 8, !tbaa !91
  %i.rp = load i8, ptr %.ptr739, align 1, !tbaa !81 ; 3 uses
  %45 = add i8 %i.rp, -48
  %i.rq = icmp ult i8 %45, 10
  %i.rr = and i8 %i.rp, -33
  %46 = add i8 %i.rr, -65
  %i.rs = icmp ult i8 %46, 6
  %47 = or i1 %i.rq, %i.rs
  br i1 %47, label %.lr.ph485.us, label %.loopexit.us, !llvm.loop !700

bb.ds:                                            ; preds = %.loopexit.us
  %.promoted484489.us.add = add nuw nsw i64 %.promoted484489.us.idx, 1 ; 3 uses
  %.ptr741 = getelementptr inbounds nuw i8, ptr %i.re, i64 %.promoted484489.us.add
  store ptr %.ptr741, ptr %i.p, align 8, !tbaa !91
  %.not176.us = icmp eq i32 %.077.us, 0
  br i1 %.not176.us, label %.critedge21.thread.loopexit, label %.preheader409.us, !llvm.loop !701

.loopexit.us:                                     ; preds = %.lr.ph485.us, %.preheader409.us
  %i.rt = phi i8 [ %i.rl, %.preheader409.us ], [ %i.rp, %.lr.ph485.us ] ; 2 uses
  %.promoted484489.us.idx = phi i64 [ %.promoted484487.us.idx, %.preheader409.us ], [ %.add, %.lr.ph485.us ] ; 3 uses
  %i.ru = icmp eq i8 %i.rt, 46
  br i1 %i.ru, label %bb.ds, label %.critedge21

.preheader410:                                    ; preds = %.preheader410.preheader, %bb.dt
  %.promoted484487 = phi ptr [ %i.sd, %bb.dt ], [ %.promoted486.ph, %.preheader410.preheader ] ; 3 uses
  %.077 = phi i32 [ 0, %bb.dt ], [ %.ph, %.preheader410.preheader ] ; 3 uses
  %i.rv = load i8, ptr %.promoted484487, align 1, !tbaa !81 ; 2 uses
  %48 = add i8 %i.rv, -48
  %i.rw = icmp ult i8 %48, 10
  br i1 %i.rw, label %.lr.ph483, label %.loopexit411

.lr.ph483:                                        ; preds = %.preheader410, %.lr.ph483
  %i.rx = phi ptr [ %i.ry, %.lr.ph483 ], [ %.promoted484487, %.preheader410 ]
  %i.ry = getelementptr inbounds nuw i8, ptr %i.rx, i64 1 ; 4 uses
  store ptr %i.ry, ptr %i.p, align 8, !tbaa !91
  %i.rz = load i8, ptr %i.ry, align 1, !tbaa !81  ; 2 uses
  %49 = add i8 %i.rz, -48
  %i.sa = icmp ult i8 %49, 10
  br i1 %i.sa, label %.lr.ph483, label %.loopexit411, !llvm.loop !702

.loopexit411:                                     ; preds = %.lr.ph483, %.preheader410
  %i.sb = phi i8 [ %i.rv, %.preheader410 ], [ %i.rz, %.lr.ph483 ] ; 2 uses
  %.promoted484490 = phi ptr [ %.promoted484487, %.preheader410 ], [ %i.ry, %.lr.ph483 ] ; 4 uses
  %i.sc = icmp eq i8 %i.sb, 46
  br i1 %i.sc, label %bb.dt, label %.critedge21.thread673

bb.dt:                                            ; preds = %.loopexit411
  %i.sd = getelementptr inbounds nuw i8, ptr %.promoted484490, i64 1 ; 3 uses
  store ptr %i.sd, ptr %i.p, align 8, !tbaa !91
  %.not176 = icmp eq i32 %.077, 0
  br i1 %.not176, label %.critedge21.thread, label %.preheader410, !llvm.loop !701

.critedge21:                                      ; preds = %.loopexit.us
  %.promoted484489.us.ptr.le = getelementptr inbounds nuw i8, ptr %i.re, i64 %.promoted484489.us.idx ; 4 uses
  %i.se = icmp sgt i64 %.promoted484489.us.idx, 1
  br i1 %i.se, label %bb.du, label %bb.ea

.critedge21.thread673:                            ; preds = %.loopexit411
  %i.sf = icmp ugt ptr %.promoted484490, %.1.ph
  br i1 %i.sf, label %._crit_edge555, label %bb.ea

._crit_edge555:                                   ; preds = %.critedge21.thread673
  %.pre556 = and i8 %i.sb, -33
  br label %bb.dv

bb.du:                                            ; preds = %.critedge21
  %i.sg = icmp eq i32 %.077.us, 0
  %spec.select = select i1 %i.sg, ptr %.promoted484489.us.ptr.le, ptr %.ptr740
  %i.sh = and i8 %i.rt, -33                       ; 2 uses
  %i.si = icmp eq i8 %i.sh, 80
  br i1 %i.si, label %bb.dw, label %bb.dv

bb.dv:                                            ; preds = %._crit_edge555, %bb.du
  %spec.select685 = phi ptr [ %.1.ph, %._crit_edge555 ], [ %spec.select, %bb.du ]
  %i.sj = phi ptr [ %.promoted484490, %._crit_edge555 ], [ %.promoted484489.us.ptr.le, %bb.du ] ; 2 uses
  %.us-phi677683 = phi i32 [ %.077, %._crit_edge555 ], [ %.077.us, %bb.du ]
  %.pre-phi557 = phi i8 [ %.pre556, %._crit_edge555 ], [ %i.sh, %bb.du ]
  %i.sk = icmp eq i8 %.pre-phi557, 69
  br i1 %i.sk, label %bb.dw, label %bb.ea

bb.dw:                                            ; preds = %bb.dv, %bb.du
  %i.sl = phi ptr [ %i.sj, %bb.dv ], [ %.promoted484489.us.ptr.le, %bb.du ] ; 2 uses
  %i.sm = getelementptr inbounds nuw i8, ptr %i.sl, i64 1 ; 3 uses
  store ptr %i.sm, ptr %i.p, align 8, !tbaa !91
  %i.sn = load i8, ptr %i.sm, align 1, !tbaa !81  ; 2 uses
  switch i8 %i.sn, label %bb.dy [
    i8 43, label %bb.dx
    i8 45, label %bb.dx
  ]

bb.dx:                                            ; preds = %bb.dw, %bb.dw
  %i.so = getelementptr inbounds nuw i8, ptr %i.sl, i64 2 ; 3 uses
  store ptr %i.so, ptr %i.p, align 8, !tbaa !91
  %.pre551 = load i8, ptr %i.so, align 1, !tbaa !81
  br label %bb.dy

bb.dy:                                            ; preds = %bb.dw, %bb.dx
  %i.sp = phi i8 [ %i.sn, %bb.dw ], [ %.pre551, %bb.dx ] ; 2 uses
  %i.sq = phi ptr [ %i.sm, %bb.dw ], [ %i.so, %bb.dx ] ; 3 uses
  %50 = add i8 %i.sp, -48
  %i.sr = icmp ult i8 %50, 10
  br i1 %i.sr, label %.lr.ph494, label %._crit_edge495

.lr.ph494:                                        ; preds = %bb.dy, %.lr.ph494
  %i.ss = phi ptr [ %i.st, %.lr.ph494 ], [ %i.sq, %bb.dy ]
  %i.st = getelementptr inbounds nuw i8, ptr %i.ss, i64 1 ; 4 uses
  store ptr %i.st, ptr %i.p, align 8, !tbaa !91
  %i.su = load i8, ptr %i.st, align 1, !tbaa !81  ; 2 uses
  %51 = add i8 %i.su, -48
  %i.sv = icmp ult i8 %51, 10
  br i1 %i.sv, label %.lr.ph494, label %._crit_edge495, !llvm.loop !703

._crit_edge495:                                   ; preds = %.lr.ph494, %bb.dy
  %.lcssa414 = phi ptr [ %i.sq, %bb.dy ], [ %i.st, %.lr.ph494 ] ; 2 uses
  %.lcssa413 = phi i8 [ %i.sp, %bb.dy ], [ %i.su, %.lr.ph494 ]
  %i.sw = icmp eq i8 %.lcssa413, 46
  br i1 %i.sw, label %bb.dz, label %bb.ea

bb.dz:                                            ; preds = %._crit_edge495
  %i.sx = getelementptr inbounds nuw i8, ptr %.lcssa414, i64 1 ; 2 uses
  store ptr %i.sx, ptr %i.p, align 8, !tbaa !91
  br label %.critedge21.thread

bb.ea:                                            ; preds = %.critedge21.thread673, %._crit_edge495, %bb.dv, %.critedge21
  %i.sy = phi ptr [ %.promoted484489.us.ptr.le, %.critedge21 ], [ %i.sj, %bb.dv ], [ %.lcssa414, %._crit_edge495 ], [ %.promoted484490, %.critedge21.thread673 ] ; 3 uses
  %.279.ph = phi i32 [ %.077.us, %.critedge21 ], [ %.us-phi677683, %bb.dv ], [ 0, %._crit_edge495 ], [ %.077, %.critedge21.thread673 ]
  %.3.ph = phi ptr [ %.ptr740, %.critedge21 ], [ %spec.select685, %bb.dv ], [ %i.sq, %._crit_edge495 ], [ %.1.ph, %.critedge21.thread673 ]
  %i.sz = icmp ugt ptr %i.sy, %.3.ph
  br i1 %i.sz, label %bb.eb, label %.critedge21.thread

bb.eb:                                            ; preds = %bb.ea
  %i.ta = load i64, ptr %i.v, align 8, !tbaa !79
  %i.tb = ptrtoint ptr %i.sy to i64
  %i.tc = ptrtoint ptr %storemerge142887 to i64
  %i.td = sub i64 %i.tb, %i.tc
  %i.te = call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %i.u, i64 noundef %i.ta, i64 noundef 0, ptr noundef nonnull %storemerge142887, i64 noundef %i.td) ; 0 uses
  %.not = icmp eq i32 %.279.ph, 0
  %i.tf = select i1 %.not, i32 259, i32 258
  store i32 %i.tf, ptr %i.y, align 4, !tbaa !228
  store i8 0, ptr %0, align 1, !tbaa !212, !alias.scope !714
  %i.tg = getelementptr inbounds nuw i8, ptr %0, i64 1
  store i8 0, ptr %i.tg, align 1, !tbaa !213, !alias.scope !714
  br label %.critedge197

.critedge21.thread.loopexit:                      ; preds = %bb.ds
  %.ptr741.le = getelementptr inbounds nuw i8, ptr %i.re, i64 %.promoted484489.us.add
  br label %.critedge21.thread

.critedge21.thread:                               ; preds = %bb.dt, %.critedge21.thread.loopexit, %bb.dz, %bb.ea
  %i.th = phi ptr [ %.ptr741.le, %.critedge21.thread.loopexit ], [ %i.sy, %bb.ea ], [ %i.sx, %bb.dz ], [ %i.sd, %bb.dt ]
  call void @llvm.lifetime.start.p0(ptr nonnull %23) #32
  call void @llvm.lifetime.start.p0(ptr nonnull %24) #32
  call void @llvm.lifetime.start.p0(ptr nonnull %25) #32
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IPKcvEET_S8_RKS3_(ptr noundef nonnull align 8 dereferenceable(32) %24, ptr noundef nonnull %storemerge142887, ptr noundef nonnull %i.th, ptr noundef nonnull align 1 dereferenceable(1) %25)
          to label %bb.ec unwind label %bb.ef

bb.ec:                                            ; preds = %.critedge21.thread
  invoke void @_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_OS8_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %23, ptr noundef nonnull @.str.21, ptr noundef nonnull align 8 dereferenceable(32) %24)
          to label %bb.ed unwind label %bb.eg

bb.ed:                                            ; preds = %bb.ec
  invoke void @_ZN11flatbuffers6Parser5ErrorERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr dead_on_unwind writable sret(%"class.flatbuffers::CheckedError") align 1 %0, ptr noundef nonnull align 8 dereferenceable(1936) %1, ptr noundef nonnull align 8 dereferenceable(32) %23)
          to label %bb.ee unwind label %bb.eh

bb.ee:                                            ; preds = %bb.ed
  %i.ti = load ptr, ptr %23, align 8, !tbaa !82   ; 2 uses
  %i.tj = getelementptr inbounds nuw i8, ptr %23, i64 16 ; 2 uses
  %i.tk = icmp eq ptr %i.ti, %i.tj
  br i1 %i.tk, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit330, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i328

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i328: ; preds = %bb.ee
  %i.tl = load i64, ptr %i.tj, align 8, !tbaa !81
  %i.tm = add i64 %i.tl, 1
  call void @_ZdlPvm(ptr noundef %i.ti, i64 noundef %i.tm) #33
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit330

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit330: ; preds = %bb.ee, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i328
  %i.tn = load ptr, ptr %24, align 8, !tbaa !82   ; 2 uses
  %i.to = getelementptr inbounds nuw i8, ptr %24, i64 16 ; 2 uses
  %i.tp = icmp eq ptr %i.tn, %i.to
  br i1 %i.tp, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit333, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i331

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i331: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit330
  %i.tq = load i64, ptr %i.to, align 8, !tbaa !81
  %i.tr = add i64 %i.tq, 1
  call void @_ZdlPvm(ptr noundef %i.tn, i64 noundef %i.tr) #33
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit333

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit333: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit330, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i331
  call void @llvm.lifetime.end.p0(ptr nonnull %25) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %24) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %23) #32
  br label %.critedge197

bb.ef:                                            ; preds = %.critedge21.thread
  %i.ts = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit339

bb.eg:                                            ; preds = %bb.ec
  %i.tt = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit336

bb.eh:                                            ; preds = %bb.ed
  %i.tu = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.tv = load ptr, ptr %23, align 8, !tbaa !82   ; 2 uses
  %i.tw = getelementptr inbounds nuw i8, ptr %23, i64 16 ; 2 uses
  %i.tx = icmp eq ptr %i.tv, %i.tw
  br i1 %i.tx, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit336, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i334

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i334: ; preds = %bb.eh
  %i.ty = load i64, ptr %i.tw, align 8, !tbaa !81
  %i.tz = add i64 %i.ty, 1
  call void @_ZdlPvm(ptr noundef %i.tv, i64 noundef %i.tz) #33
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit336

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit336: ; preds = %bb.eh, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i334, %bb.eg
  %.pn178 = phi { ptr, i32 } [ %i.tt, %bb.eg ], [ %i.tu, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i334 ], [ %i.tu, %bb.eh ] ; 2 uses
  %i.ua = load ptr, ptr %24, align 8, !tbaa !82   ; 2 uses
  %i.ub = getelementptr inbounds nuw i8, ptr %24, i64 16 ; 2 uses
  %i.uc = icmp eq ptr %i.ua, %i.ub
  br i1 %i.uc, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit339, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i337

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i337: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit336
  %i.ud = load i64, ptr %i.ub, align 8, !tbaa !81
  %i.ue = add i64 %i.ud, 1
  call void @_ZdlPvm(ptr noundef %i.ua, i64 noundef %i.ue) #33
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit339

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit339: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit336, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i337, %bb.ef
  %.pn178.pn = phi { ptr, i32 } [ %i.ts, %bb.ef ], [ %.pn178, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i337 ], [ %.pn178, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit336 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %25) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %24) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %23) #32
  br label %bb.eu

bb.ei:                                            ; preds = %switch.early.test
  call void @llvm.lifetime.start.p0(ptr nonnull %26) #32
  %i.uf = getelementptr inbounds nuw i8, ptr %26, i64 16 ; 6 uses
  store ptr %i.uf, ptr %26, align 8, !tbaa !80
  %i.ug = getelementptr inbounds nuw i8, ptr %26, i64 8
  store i64 0, ptr %i.ug, align 8, !tbaa !79
  store i8 0, ptr %i.uf, align 8, !tbaa !81
  %i.uh = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE14_M_replace_auxEmmmc(ptr noundef nonnull align 8 dereferenceable(32) %26, i64 noundef 0, i64 noundef 0, i64 noundef 1, i8 noundef signext %i.af)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEc.exit unwind label %bb.el ; 0 uses

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEc.exit: ; preds = %bb.ei
  %i.ui = add nsw i32 %i.ag, -32
  %i.uj = icmp ult i32 %i.ui, 95
  br i1 %i.uj, label %bb.eo, label %bb.ej

bb.ej:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEc.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %27) #32
  call void @llvm.lifetime.start.p0(ptr nonnull %28) #32
  invoke void @_ZN11flatbuffers11NumToStringIiEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEET_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %28, i32 noundef %i.ag)
          to label %_ZN11flatbuffers11NumToStringIcEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEET_.exit unwind label %bb.em

_ZN11flatbuffers11NumToStringIcEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEET_.exit: ; preds = %bb.ej
  invoke void @_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_OS8_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %27, ptr noundef nonnull @.str.22, ptr noundef nonnull align 8 dereferenceable(32) %28)
          to label %bb.ek unwind label %bb.en

bb.ek:                                            ; preds = %_ZN11flatbuffers11NumToStringIcEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEET_.exit
  %i.uk = call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_(ptr noundef nonnull align 8 dereferenceable(32) %26, ptr noundef nonnull align 8 dereferenceable(32) %27) #32 ; 0 uses
  %i.ul = load ptr, ptr %27, align 8, !tbaa !82   ; 2 uses
  %i.um = getelementptr inbounds nuw i8, ptr %27, i64 16 ; 2 uses
  %i.un = icmp eq ptr %i.ul, %i.um
  br i1 %i.un, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit344, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i342

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i342: ; preds = %bb.ek
  %i.uo = load i64, ptr %i.um, align 8, !tbaa !81
  %i.up = add i64 %i.uo, 1
  call void @_ZdlPvm(ptr noundef %i.ul, i64 noundef %i.up) #33
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit344

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit344: ; preds = %bb.ek, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i342
  %i.uq = load ptr, ptr %28, align 8, !tbaa !82   ; 2 uses
  %i.ur = getelementptr inbounds nuw i8, ptr %28, i64 16 ; 2 uses
  %i.us = icmp eq ptr %i.uq, %i.ur
  br i1 %i.us, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit347, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i345

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i345: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit344
  %i.ut = load i64, ptr %i.ur, align 8, !tbaa !81
  %i.uu = add i64 %i.ut, 1
  call void @_ZdlPvm(ptr noundef %i.uq, i64 noundef %i.uu) #33
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit347

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit347: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit344, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i345
  call void @llvm.lifetime.end.p0(ptr nonnull %28) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %27) #32
  br label %bb.eo

bb.el:                                            ; preds = %bb.ei
  %i.uv = landingpad { ptr, i32 }
          cleanup
  br label %bb.et

bb.em:                                            ; preds = %bb.ej
  %i.uw = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit350

bb.en:                                            ; preds = %_ZN11flatbuffers11NumToStringIcEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEET_.exit
  %i.ux = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.uy = load ptr, ptr %28, align 8, !tbaa !82   ; 2 uses
  %i.uz = getelementptr inbounds nuw i8, ptr %28, i64 16 ; 2 uses
  %i.va = icmp eq ptr %i.uy, %i.uz
  br i1 %i.va, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit350, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i348
end_hunk_3
begin_hunk_4_@_ZN11flatbuffers6Parser9ParseTypeERNS_4TypeE:bb.a

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit145: ; preds = %.critedge124, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i143
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #32
  br label %.critedge.thread178

bb.ba:                                            ; preds = %bb.bd, %bb.aw
  %i.fh = landingpad { ptr, i32 }
          cleanup
  br label %bb.bf

bb.bb:                                            ; preds = %bb.ay
  %i.fi = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit148

bb.bc:                                            ; preds = %bb.az
  %i.fj = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.fk = load ptr, ptr %7, align 8, !tbaa !82    ; 2 uses
  %i.fl = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 2 uses
  %i.fm = icmp eq ptr %i.fk, %i.fl
  br i1 %i.fm, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit148, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i146

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i146: ; preds = %bb.bc
  %i.fn = load i64, ptr %i.fl, align 8, !tbaa !81
  %i.fo = add i64 %i.fn, 1
  call void @_ZdlPvm(ptr noundef %i.fk, i64 noundef %i.fo) #33
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit148

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit148: ; preds = %bb.bc, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i146, %bb.bb
  %.pn107 = phi { ptr, i32 } [ %i.fi, %bb.bb ], [ %i.fj, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i146 ], [ %i.fj, %bb.bc ]
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #32
  br label %bb.bf

bb.bd:                                            ; preds = %bb.ax
  store i32 17, ptr %2, align 8, !tbaa !251
  %.sroa.4161.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 4
  store i32 0, ptr %.sroa.4161.0..sroa_idx, align 4, !tbaa !251
  %.sroa.5162.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.fp = load <2 x ptr>, ptr %i.dm, align 8, !tbaa !305
  store <2 x ptr> %i.fp, ptr %.sroa.5162.0..sroa_idx, align 8, !tbaa !305
  %.sroa.7164.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 24
  store i16 %i.fa, ptr %.sroa.7164.0..sroa_idx, align 8, !tbaa !254
  invoke void @_ZN11flatbuffers6Parser4NextEv(ptr dead_on_unwind nonnull writable sret(%"class.flatbuffers::CheckedError") align 1 %0, ptr noundef nonnull align 8 dereferenceable(1936) %1)
          to label %bb.be unwind label %bb.ba

bb.be:                                            ; preds = %bb.bd
  store i8 1, ptr %i.dj, align 1, !tbaa !213
  %i.fq = load i8, ptr %0, align 1, !tbaa !212, !range !208, !noundef !209
  %i.fr = trunc nuw i8 %i.fq to i1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #32
  br i1 %i.fr, label %.critedge.thread178, label %bb.bh

bb.bf:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit148, %bb.ba
  %.pn107.pn = phi { ptr, i32 } [ %.pn107, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit148 ], [ %i.fh, %bb.ba ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #32
  br label %bb.bi

bb.bg:                                            ; preds = %_ZN11flatbuffers8IsSeriesERKNS_4TypeE.exit
  store i32 14, ptr %2, align 8, !tbaa !251
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 4
  store i32 0, ptr %.sroa.4.0..sroa_idx, align 4, !tbaa !251
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.fs = load <2 x ptr>, ptr %i.dm, align 8, !tbaa !305
  store <2 x ptr> %i.fs, ptr %.sroa.5.0..sroa_idx, align 8, !tbaa !305
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 24
  store i16 0, ptr %.sroa.7.0..sroa_idx, align 8, !tbaa !254
  br label %bb.bh

bb.bh:                                            ; preds = %bb.be, %bb.bg
  %i.ft = getelementptr inbounds nuw i8, ptr %2, i64 4
  store i32 %i.dq, ptr %i.ft, align 4, !tbaa !306
  invoke void @_ZN11flatbuffers6Parser6ExpectEi(ptr dead_on_unwind nonnull writable sret(%"class.flatbuffers::CheckedError") align 1 %0, ptr noundef nonnull align 8 dereferenceable(1936) %1, i32 noundef 93)
          to label %.critedge unwind label %bb.aj

.critedge:                                        ; preds = %bb.bh
  store i8 1, ptr %i.dj, align 1, !tbaa !213
  %i.fu = load i8, ptr %0, align 1, !tbaa !212, !range !208, !noundef !209
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #32
  %i.fv = load i32, ptr %i.db, align 4, !tbaa !214
  %i.fw = add nsw i32 %i.fv, -1
  store i32 %i.fw, ptr %i.db, align 4, !tbaa !214
  %i.fx = icmp eq i8 %i.fu, 0
  br i1 %i.fx, label %bb.bn, label %bb.bo

.critedge.thread:                                 ; preds = %_ZN11flatbuffers6Parser15ParseDepthGuard5CheckEv.exit, %bb.ag
  %i.fy = load i32, ptr %i.db, align 4, !tbaa !214
  %i.fz = add nsw i32 %i.fy, -1
  store i32 %i.fz, ptr %i.db, align 4, !tbaa !214
  br label %bb.bo

.critedge.thread178:                              ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit139, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit145, %bb.be, %bb.ai, %bb.ap
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #32
  %i.ga = load i32, ptr %i.db, align 4, !tbaa !214
  %i.gb = add nsw i32 %i.ga, -1
  store i32 %i.gb, ptr %i.db, align 4, !tbaa !214
  br label %bb.bo

bb.bi:                                            ; preds = %bb.bf, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit142, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit136, %bb.aj
  %.pn112.pn = phi { ptr, i32 } [ %.pn112, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit136 ], [ %.pn110, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit142 ], [ %i.dp, %bb.aj ], [ %.pn107.pn, %bb.bf ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #32
  br label %bb.bj

bb.bj:                                            ; preds = %bb.bi, %bb.ae
  %.pn112.pn.pn = phi { ptr, i32 } [ %.pn112.pn, %bb.bi ], [ %i.di, %bb.ae ]
  %i.gc = load i32, ptr %i.db, align 4, !tbaa !214
  %i.gd = add nsw i32 %i.gc, -1
  store i32 %i.gd, ptr %i.db, align 4, !tbaa !214
  br label %bb.bp

.noexc.i150:                                      ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #32
  %i.ge = getelementptr inbounds nuw i8, ptr %9, i64 16 ; 6 uses
  store ptr %i.ge, ptr %9, align 8, !tbaa !80
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #32
  store i64 19, ptr %i.a, align 8, !tbaa !93
  %i.gf = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %9, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0)
          to label %.noexc151 unwind label %bb.bl ; 2 uses

.noexc151:                                        ; preds = %.noexc.i150
  store ptr %i.gf, ptr %9, align 8, !tbaa !82
  %i.gg = load i64, ptr %i.a, align 8, !tbaa !93  ; 3 uses
  store i64 %i.gg, ptr %i.ge, align 8, !tbaa !81
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(19) %i.gf, ptr noundef nonnull align 1 dereferenceable(19) @.str.52, i64 19, i1 false)
  %i.gh = getelementptr inbounds nuw i8, ptr %9, i64 8
  store i64 %i.gg, ptr %i.gh, align 8, !tbaa !79
  %i.gi = load ptr, ptr %9, align 8, !tbaa !82
  %i.gj = getelementptr inbounds nuw i8, ptr %i.gi, i64 %i.gg
  store i8 0, ptr %i.gj, align 1, !tbaa !81
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #32
  invoke void @_ZN11flatbuffers6Parser5ErrorERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr dead_on_unwind writable sret(%"class.flatbuffers::CheckedError") align 1 %0, ptr noundef nonnull align 8 dereferenceable(1936) %1, ptr noundef nonnull align 8 dereferenceable(32) %9)
          to label %bb.bk unwind label %bb.bm

bb.bk:                                            ; preds = %.noexc151
  %i.gk = load ptr, ptr %9, align 8, !tbaa !82    ; 2 uses
  %i.gl = icmp eq ptr %i.gk, %i.ge
  br i1 %i.gl, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit155, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i153

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i153: ; preds = %bb.bk
  %i.gm = load i64, ptr %i.ge, align 8, !tbaa !81
  %i.gn = add i64 %i.gm, 1
  call void @_ZdlPvm(ptr noundef %i.gk, i64 noundef %i.gn) #33
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit155

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit155: ; preds = %bb.bk, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i153
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #32
  br label %bb.bo

bb.bl:                                            ; preds = %.noexc.i150
  %i.go = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit158

bb.bm:                                            ; preds = %.noexc151
  %i.gp = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.gq = load ptr, ptr %9, align 8, !tbaa !82    ; 2 uses
  %i.gr = icmp eq ptr %i.gq, %i.ge
  br i1 %i.gr, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit158, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i156

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i156: ; preds = %bb.bm
  %i.gs = load i64, ptr %i.ge, align 8, !tbaa !81
  %i.gt = add i64 %i.gs, 1
  call void @_ZdlPvm(ptr noundef %i.gq, i64 noundef %i.gt) #33
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit158

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit158: ; preds = %bb.bm, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i156, %bb.bl
  %.pn = phi { ptr, i32 } [ %i.go, %bb.bl ], [ %i.gp, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i156 ], [ %i.gp, %bb.bm ]
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #32
  br label %bb.bp

bb.bn:                                            ; preds = %.critedge, %bb.ab, %bb.aa, %bb.y, %bb.v, %bb.s, %bb.p, %bb.m, %bb.j, %bb.g, %bb.d, %_ZNK11flatbuffers6Parser7IsIdentEPKc.exit130.thread, %_ZNK11flatbuffers6Parser7IsIdentEPKc.exit126.thread, %_ZNK11flatbuffers6Parser7IsIdentEPKc.exit.thread
  store i8 0, ptr %0, align 1, !tbaa !212, !alias.scope !753
  %i.gu = getelementptr inbounds nuw i8, ptr %0, i64 1
  store i8 0, ptr %i.gu, align 1, !tbaa !213, !alias.scope !753
  br label %bb.bo

bb.bo:                                            ; preds = %.critedge.thread178, %.critedge.thread, %.critedge, %bb.ab, %bb.aa, %bb.y, %bb.v, %bb.s, %bb.p, %bb.m, %bb.j, %bb.g, %bb.d, %_ZNK11flatbuffers6Parser7IsIdentEPKc.exit130.thread, %_ZNK11flatbuffers6Parser7IsIdentEPKc.exit126.thread, %_ZNK11flatbuffers6Parser7IsIdentEPKc.exit.thread, %bb.bn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit155
  ret void

bb.bp:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit158, %bb.bj
  %.pn112.pn.pn.pn = phi { ptr, i32 } [ %.pn112.pn.pn, %bb.bj ], [ %.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit158 ]
  resume { ptr, i32 } %.pn112.pn.pn.pn
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZN11flatbuffers14StringToNumberItEEbPKcPT_(ptr noundef %0, ptr noundef %1) local_unnamed_addr #4 comdat {
bb.a:
  %i.a = alloca ptr, align 8                      ; 5 uses
  %i.b = alloca ptr, align 8                      ; 5 uses
  %i.c = load i8, ptr %0, align 1, !tbaa !81      ; 2 uses
  %.not2533.i = icmp eq i8 %i.c, 0
  br i1 %.not2533.i, label %.critedge.thread.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.a, %bb.b
  %i.d = phi i8 [ %i.g, %bb.b ], [ %i.c, %bb.a ]  ; 2 uses
  %.034.i = phi ptr [ %i.f, %bb.b ], [ %0, %bb.a ] ; 2 uses
  %2 = add i8 %i.d, -48
  %i.e = icmp ult i8 %2, 10
  br i1 %i.e, label %.critedge.i, label %bb.b

bb.b:                                             ; preds = %.lr.ph.i
  %i.f = getelementptr inbounds nuw i8, ptr %.034.i, i64 1 ; 2 uses
  %i.g = load i8, ptr %i.f, align 1, !tbaa !81    ; 2 uses
  %.not25.i = icmp eq i8 %i.g, 0
  br i1 %.not25.i, label %.critedge.thread.i, label %.lr.ph.i, !llvm.loop !3

.critedge.i:                                      ; preds = %.lr.ph.i
  %i.h = icmp eq i8 %i.d, 48
  br i1 %i.h, label %bb.c, label %.critedge.thread.i

bb.c:                                             ; preds = %.critedge.i
  %i.i = getelementptr inbounds nuw i8, ptr %.034.i, i64 1
  %i.j = load i8, ptr %i.i, align 1, !tbaa !81
  %i.k = and i8 %i.j, -33
  %i.l = icmp eq i8 %i.k, 88
  br i1 %i.l, label %bb.d, label %.critedge.thread.i

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #32
  store ptr %0, ptr %i.b, align 8, !tbaa !219
  %i.m = load ptr, ptr @_ZN11flatbuffers13ClassicLocale9instance_E, align 8, !tbaa !224
  %i.n = call i64 @__isoc23_strtoll_l(ptr noundef nonnull %0, ptr noundef nonnull %i.b, i32 noundef 16, ptr noundef %i.m) #32, !inline_history !307
  %i.o = load ptr, ptr %i.b, align 8, !tbaa !219  ; 2 uses
  %i.p = load i8, ptr %i.o, align 1, !tbaa !81
  %.not.i.i = icmp ne i8 %i.p, 0
  %i.q = icmp eq ptr %i.o, %0
  %or.cond.i.i = or i1 %i.q, %.not.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #32
  br i1 %or.cond.i.i, label %_ZN11flatbuffers19StringToIntegerImplIlEEbPT_PKcib.exit30.i, label %_ZN11flatbuffers19StringToIntegerImplIlEEbPT_PKcib.exit.thread

.critedge.thread.i:                               ; preds = %bb.b, %bb.c, %.critedge.i, %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #32
  store ptr %0, ptr %i.a, align 8, !tbaa !219
  %i.r = load ptr, ptr @_ZN11flatbuffers13ClassicLocale9instance_E, align 8, !tbaa !224
  %i.s = call i64 @__isoc23_strtoll_l(ptr noundef nonnull %0, ptr noundef nonnull %i.a, i32 noundef 10, ptr noundef %i.r) #32, !inline_history !307
  %i.t = load ptr, ptr %i.a, align 8, !tbaa !219  ; 2 uses
  %i.u = load i8, ptr %i.t, align 1, !tbaa !81
  %.not.i26.i = icmp ne i8 %i.u, 0
  %i.v = icmp eq ptr %i.t, %0
  %or.cond.i27.i = or i1 %i.v, %.not.i26.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #32
  br i1 %or.cond.i27.i, label %_ZN11flatbuffers19StringToIntegerImplIlEEbPT_PKcib.exit30.i, label %_ZN11flatbuffers19StringToIntegerImplIlEEbPT_PKcib.exit.thread

_ZN11flatbuffers19StringToIntegerImplIlEEbPT_PKcib.exit.thread: ; preds = %.critedge.thread.i, %bb.d
  %.28 = phi i64 [ %i.n, %bb.d ], [ %i.s, %.critedge.thread.i ] ; 2 uses
  %or.cond = icmp ult i64 %.28, 65536
  %spec.select21 = call i64 @llvm.umin.i64(i64 %.28, i64 65535)
  %spec.select = trunc nuw i64 %spec.select21 to i16
  br label %_ZN11flatbuffers19StringToIntegerImplIlEEbPT_PKcib.exit30.i

_ZN11flatbuffers19StringToIntegerImplIlEEbPT_PKcib.exit30.i: ; preds = %_ZN11flatbuffers19StringToIntegerImplIlEEbPT_PKcib.exit.thread, %.critedge.thread.i, %bb.d
  %.sink = phi i16 [ 0, %.critedge.thread.i ], [ %spec.select, %_ZN11flatbuffers19StringToIntegerImplIlEEbPT_PKcib.exit.thread ], [ 0, %bb.d ]
  %.1 = phi i1 [ false, %.critedge.thread.i ], [ %or.cond, %_ZN11flatbuffers19StringToIntegerImplIlEEbPT_PKcib.exit.thread ], [ false, %bb.d ]
  store i16 %.sink, ptr %1, align 2, !tbaa !254
  ret i1 %.1
}

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN11flatbuffers6Parser8AddFieldERNS_9StructDefERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKNS_4TypeEPPNS_8FieldDefE(ptr dead_on_unwind noalias nofree writable writeonly sret(%"class.flatbuffers::CheckedError") align 1 captures(none) %0, ptr noundef nonnull align 8 dereferenceable(1936) %1, ptr noundef nonnull align 8 dereferenceable(336) %2, ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(26) %4, ptr nofree noundef writeonly captures(none) %5) local_unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %6 = alloca %"class.std::__cxx11::basic_string", align 8 ; 13 uses
  %i.a = tail call noalias noundef nonnull dereferenceable(312) ptr @_Znwm(i64 noundef 312) #36 ; 29 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  store ptr %i.b, ptr %i.a, align 8, !tbaa !80
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 0, ptr %i.c, align 8, !tbaa !79
  store i8 0, ptr %i.b, align 8, !tbaa !81
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 32 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 48 ; 2 uses
  store ptr %i.e, ptr %i.d, align 8, !tbaa !80
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  store i64 0, ptr %i.f, align 8, !tbaa !79
  store i8 0, ptr %i.e, align 8, !tbaa !81
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 64
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.g, i8 0, i64 24, i1 false)
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 96 ; 3 uses
  store i32 0, ptr %i.h, align 8, !tbaa !294
  %i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 104
  store ptr null, ptr %i.i, align 8, !tbaa !232
  %i.j = getelementptr inbounds nuw i8, ptr %i.a, i64 112
  store ptr %i.h, ptr %i.j, align 8, !tbaa !295
  %i.k = getelementptr inbounds nuw i8, ptr %i.a, i64 120
  store ptr %i.h, ptr %i.k, align 8, !tbaa !296
  %i.l = getelementptr inbounds nuw i8, ptr %i.a, i64 128
  %i.m = getelementptr inbounds nuw i8, ptr %i.a, i64 168
  store ptr null, ptr %i.m, align 8, !tbaa !293
  %i.n = getelementptr inbounds nuw i8, ptr %i.a, i64 176
  store i32 0, ptr %i.n, align 8, !tbaa !297
  %i.o = getelementptr inbounds nuw i8, ptr %i.a, i64 180
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(33) %i.l, i8 0, i64 33, i1 false)
  store i32 -1, ptr %i.o, align 4, !tbaa !298
  %i.p = getelementptr inbounds nuw i8, ptr %i.a, i64 184
  store i32 1, ptr %i.p, align 8, !tbaa !249
  %i.q = getelementptr inbounds nuw i8, ptr %i.a, i64 192
  %i.r = getelementptr inbounds nuw i8, ptr %i.a, i64 232
  %i.s = getelementptr inbounds nuw i8, ptr %i.a, i64 248 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(34) %i.q, i8 0, i64 34, i1 false)
  store ptr %i.s, ptr %i.r, align 8, !tbaa !80
  store i8 48, ptr %i.s, align 8, !tbaa !81
  %i.t = getelementptr inbounds nuw i8, ptr %i.a, i64 240
  store i64 1, ptr %i.t, align 8, !tbaa !79
  %i.u = getelementptr inbounds nuw i8, ptr %i.a, i64 249
  store i8 0, ptr %i.u, align 1, !tbaa !81
  %i.v = getelementptr inbounds nuw i8, ptr %i.a, i64 264 ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.a, i64 272
  %i.x = getelementptr inbounds nuw i8, ptr %i.a, i64 280
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(6) %i.w, i8 0, i64 6, i1 false)
  store i32 2, ptr %i.x, align 8, !tbaa !312
  %i.y = getelementptr inbounds nuw i8, ptr %i.a, i64 288
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.y, i8 0, i64 24, i1 false)
  %i.z = getelementptr inbounds nuw i8, ptr %2, i64 200
  %i.aa = getelementptr inbounds nuw i8, ptr %2, i64 248 ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %2, i64 256 ; 2 uses
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !313
  %i.ad = load ptr, ptr %i.aa, align 8, !tbaa !314
  %i.ae = ptrtoint ptr %i.ac to i64
  %i.af = ptrtoint ptr %i.ad to i64
  %i.ag = sub i64 %i.ae, %i.af
  %sh.diff = lshr i64 %i.ag, 2
  %tr.sh.diff = trunc i64 %sh.diff to i16
  %i.ah = and i16 %tr.sh.diff, -2
  %i.ai = add i16 %i.ah, 4
  %i.aj = getelementptr inbounds nuw i8, ptr %i.a, i64 200
  store i16 %i.ai, ptr %i.v, align 8, !tbaa !315
  tail call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %i.a, ptr noundef nonnull align 8 dereferenceable(32) %3)
  %i.ak = getelementptr inbounds nuw i8, ptr %2, i64 32
  tail call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %i.d, ptr noundef nonnull align 8 dereferenceable(32) %i.ak)
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(26) %i.aj, ptr noundef nonnull align 8 dereferenceable(26) %4, i64 26, i1 false), !tbaa.struct !255
  %i.al = getelementptr inbounds nuw i8, ptr %2, i64 272
  %i.am = load i8, ptr %i.al, align 8, !tbaa !316, !range !208, !noundef !209
  %i.an = trunc nuw i8 %i.am to i1
  br i1 %i.an, label %bb.b, label %bb.j

bb.b:                                             ; preds = %bb.a
  %i.ao = tail call noundef i64 @_ZN11flatbuffers10InlineSizeERKNS_4TypeE(ptr noundef nonnull align 8 dereferenceable(26) %4)
  %i.ap = load i32, ptr %4, align 8, !tbaa !268
  switch i32 %i.ap, label %bb.h [
    i32 15, label %_ZN11flatbuffers8IsStructERKNS_4TypeE.exit.i
    i32 17, label %bb.d
    i32 0, label %_ZN11flatbuffers15InlineAlignmentERKNS_4TypeE.exit
    i32 1, label %_ZN11flatbuffers15InlineAlignmentERKNS_4TypeE.exit
    i32 2, label %_ZN11flatbuffers15InlineAlignmentERKNS_4TypeE.exit
    i32 3, label %_ZN11flatbuffers15InlineAlignmentERKNS_4TypeE.exit
    i32 4, label %_ZN11flatbuffers15InlineAlignmentERKNS_4TypeE.exit
    i32 5, label %bb.f
    i32 6, label %bb.f
    i32 7, label %.thread11.i
    i32 8, label %.thread11.i
    i32 9, label %bb.g
    i32 10, label %bb.g
    i32 11, label %.thread11.i
    i32 12, label %bb.g
    i32 13, label %.thread11.i
    i32 14, label %.thread11.i
    i32 18, label %bb.g
    i32 16, label %.thread11.i
  ]

_ZN11flatbuffers8IsStructERKNS_4TypeE.exit.i:     ; preds = %bb.b
  %i.aq = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !269 ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 272
  %i.at = load i8, ptr %i.as, align 8, !tbaa !316, !range !208, !noundef !209
  %i.au = trunc nuw i8 %i.at to i1
  br i1 %i.au, label %bb.c, label %.thread11.i

bb.c:                                             ; preds = %_ZN11flatbuffers8IsStructERKNS_4TypeE.exit.i
  %i.av = getelementptr inbounds nuw i8, ptr %i.ar, i64 280
  %i.aw = load i64, ptr %i.av, align 8, !tbaa !302
  br label %_ZN11flatbuffers15InlineAlignmentERKNS_4TypeE.exit

bb.d:                                             ; preds = %bb.b
  %i.ax = getelementptr inbounds nuw i8, ptr %4, i64 4
  %i.ay = load i32, ptr %i.ax, align 4, !tbaa !306, !noalias !762
  %i.az = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.ba = load ptr, ptr %i.az, align 8, !tbaa !269, !noalias !762 ; 2 uses
  switch i32 %i.ay, label %bb.h [
    i32 15, label %_ZN11flatbuffers8IsStructERKNS_4TypeE.exit7.i
    i32 0, label %_ZN11flatbuffers15InlineAlignmentERKNS_4TypeE.exit
    i32 1, label %_ZN11flatbuffers15InlineAlignmentERKNS_4TypeE.exit
    i32 2, label %_ZN11flatbuffers15InlineAlignmentERKNS_4TypeE.exit
    i32 3, label %_ZN11flatbuffers15InlineAlignmentERKNS_4TypeE.exit
    i32 4, label %_ZN11flatbuffers15InlineAlignmentERKNS_4TypeE.exit
    i32 5, label %bb.f
    i32 6, label %bb.f
    i32 7, label %.thread11.i
    i32 8, label %.thread11.i
    i32 9, label %bb.g
    i32 10, label %bb.g
    i32 11, label %.thread11.i
    i32 12, label %bb.g
    i32 13, label %.thread11.i
    i32 14, label %.thread11.i
    i32 18, label %bb.g
    i32 17, label %.thread11.i
    i32 16, label %.thread11.i
  ]

end_hunk_4
begin_hunk_5_@_ZN11flatbuffers6Parser10ParseFieldERNS_9StructDefE:bb.a
  %58 = alloca %"class.std::allocator", align 1   ; 4 uses
  %59 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %60 = alloca %"class.std::allocator", align 1   ; 4 uses
  %61 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %62 = alloca %"class.std::allocator", align 1   ; 4 uses
  %63 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %64 = alloca %"class.std::allocator", align 1   ; 4 uses
  %65 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %66 = alloca %"class.std::allocator", align 1   ; 4 uses
  %67 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %68 = alloca %"class.std::allocator", align 1   ; 4 uses
  %69 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %70 = alloca %"class.std::allocator", align 1   ; 4 uses
  %71 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %72 = alloca %"class.std::allocator", align 1   ; 4 uses
  %73 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %74 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %75 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %76 = alloca %"class.std::allocator", align 1   ; 4 uses
  %77 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %78 = alloca %"class.std::allocator", align 1   ; 4 uses
  %79 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %80 = alloca %"class.std::allocator", align 1   ; 4 uses
  %81 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %82 = alloca %"class.std::allocator", align 1   ; 4 uses
  %83 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %84 = alloca %"class.std::allocator", align 1   ; 4 uses
  %85 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %86 = alloca %"class.std::allocator", align 1   ; 4 uses
  %87 = alloca %"class.flatbuffers::CheckedError", align 1 ; 6 uses
  %88 = alloca %"struct.flatbuffers::Type", align 8 ; 8 uses
  %89 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %90 = alloca %"class.std::allocator", align 1   ; 4 uses
  %91 = alloca %"class.flatbuffers::CheckedError", align 1 ; 6 uses
  %92 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %93 = alloca %"class.std::allocator", align 1   ; 4 uses
  %94 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %95 = alloca %"class.std::allocator", align 1   ; 4 uses
  %96 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %97 = alloca %"class.std::allocator", align 1   ; 4 uses
  %98 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %99 = alloca %"class.std::allocator", align 1   ; 4 uses
  %100 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %101 = alloca %"class.std::allocator", align 1  ; 4 uses
  %102 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %103 = alloca %"class.std::allocator", align 1  ; 5 uses
  %104 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %105 = alloca %"class.std::allocator", align 1  ; 4 uses
  %106 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %107 = alloca %"class.std::allocator", align 1  ; 4 uses
  %108 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %109 = alloca %"class.std::allocator", align 1  ; 4 uses
  %110 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %111 = alloca %"class.std::allocator", align 1  ; 5 uses
  %112 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %113 = alloca %"class.std::allocator", align 1  ; 4 uses
  %114 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %115 = alloca %"class.std::allocator", align 1  ; 4 uses
  %116 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %117 = alloca %"class.std::allocator", align 1  ; 4 uses
  %118 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %119 = alloca %"class.std::allocator", align 1  ; 4 uses
  %120 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %121 = alloca %"class.std::allocator", align 1  ; 4 uses
  %122 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %123 = alloca %"class.std::allocator", align 1  ; 4 uses
  %124 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %125 = alloca %"class.std::allocator", align 1  ; 4 uses
  %i.e = alloca i16, align 2                      ; 7 uses
  %126 = alloca %"class.flatbuffers::CheckedError", align 1 ; 5 uses
  %127 = alloca %"class.std::__cxx11::basic_string", align 8 ; 7 uses
  %128 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %129 = alloca %"class.std::allocator", align 1  ; 4 uses
  %130 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %131 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %132 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #32
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.g = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 7 uses
  store ptr %i.g, ptr %3, align 8, !tbaa !80
  %i.h = load ptr, ptr %i.f, align 8, !tbaa !82   ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.j = load i64, ptr %i.i, align 8, !tbaa !79   ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #32
  store i64 %i.j, ptr %i.b, align 8, !tbaa !93
  %i.k = icmp ugt i64 %i.j, 15
  br i1 %i.k, label %.noexc.i, label %._crit_edge.i.i

.noexc.i:                                         ; preds = %bb.a
  %i.l = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(8) %i.b, i64 noundef 0) ; 2 uses
  store ptr %i.l, ptr %3, align 8, !tbaa !82
  %i.m = load i64, ptr %i.b, align 8, !tbaa !93
  store i64 %i.m, ptr %i.g, align 8, !tbaa !81
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %.noexc.i, %bb.a
  %i.n = phi ptr [ %i.l, %.noexc.i ], [ %i.g, %bb.a ] ; 2 uses
  switch i64 %i.j, label %bb.c [
    i64 1, label %bb.b
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit
  ]

bb.b:                                             ; preds = %._crit_edge.i.i
  %i.o = load i8, ptr %i.h, align 1, !tbaa !81
  store i8 %i.o, ptr %i.n, align 1, !tbaa !81
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit

bb.c:                                             ; preds = %._crit_edge.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.n, ptr align 1 %i.h, i64 %i.j, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit: ; preds = %._crit_edge.i.i, %bb.b, %bb.c
  %i.p = load i64, ptr %i.b, align 8, !tbaa !93   ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  store i64 %i.p, ptr %i.q, align 8, !tbaa !79
  %i.r = load ptr, ptr %3, align 8, !tbaa !82
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 %i.p
  store i8 0, ptr %i.s, align 1, !tbaa !81
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #32
  %i.t = invoke noundef ptr @_ZN11flatbuffers6Parser18LookupCreateStructERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEbb(ptr noundef nonnull align 8 dereferenceable(1936) %1, ptr noundef nonnull align 8 dereferenceable(32) %3, i1 noundef zeroext false, i1 noundef zeroext false)
          to label %bb.d unwind label %bb.f

bb.d:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit
  %.not293 = icmp eq ptr %i.t, null
  br i1 %.not293, label %bb.i, label %.noexc.i521

.noexc.i521:                                      ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #32
  %i.u = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 6 uses
  store ptr %i.u, ptr %4, align 8, !tbaa !80
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #32
  store i64 51, ptr %i.a, align 8, !tbaa !93
  %i.v = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0)
          to label %.noexc unwind label %bb.g     ; 3 uses

.noexc:                                           ; preds = %.noexc.i521
  store ptr %i.v, ptr %4, align 8, !tbaa !82
  %i.w = load i64, ptr %i.a, align 8, !tbaa !93   ; 3 uses
  store i64 %i.w, ptr %i.u, align 8, !tbaa !81
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(51) %i.v, ptr noundef nonnull align 1 dereferenceable(51) @.str.54, i64 51, i1 false)
  %i.x = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i64 %i.w, ptr %i.x, align 8, !tbaa !79
  %i.y = getelementptr inbounds nuw i8, ptr %i.v, i64 %i.w
  store i8 0, ptr %i.y, align 1, !tbaa !81
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #32
  invoke void @_ZN11flatbuffers6Parser5ErrorERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr dead_on_unwind writable sret(%"class.flatbuffers::CheckedError") align 1 %0, ptr noundef nonnull align 8 dereferenceable(1936) %1, ptr noundef nonnull align 8 dereferenceable(32) %4)
          to label %bb.e unwind label %bb.h

bb.e:                                             ; preds = %.noexc
  %i.z = load ptr, ptr %4, align 8, !tbaa !82     ; 2 uses
  %i.aa = icmp eq ptr %i.z, %i.u
  br i1 %i.aa, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.e
  %i.ab = load i64, ptr %i.u, align 8, !tbaa !81
  %i.ac = add i64 %i.ab, 1
  call void @_ZdlPvm(ptr noundef %i.z, i64 noundef %i.ac) #33
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.e, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #32
  br label %bb.qd

bb.f:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit
  %i.ad = landingpad { ptr, i32 }
          cleanup
  br label %bb.qe

bb.g:                                             ; preds = %.noexc.i521
  %i.ae = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit524

bb.h:                                             ; preds = %.noexc
  %i.af = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ag = load ptr, ptr %4, align 8, !tbaa !82    ; 2 uses
  %i.ah = icmp eq ptr %i.ag, %i.u
  br i1 %i.ah, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit524, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i522

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i522: ; preds = %bb.h
  %i.ai = load i64, ptr %i.u, align 8, !tbaa !81
  %i.aj = add i64 %i.ai, 1
  call void @_ZdlPvm(ptr noundef %i.ag, i64 noundef %i.aj) #33
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit524

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit524: ; preds = %bb.h, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i522, %bb.g
  %.pn468 = phi { ptr, i32 } [ %i.ae, %bb.g ], [ %i.af, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i522 ], [ %i.af, %bb.h ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #32
  br label %bb.qe

bb.i:                                             ; preds = %bb.d
  %.val = load ptr, ptr %3, align 8               ; 2 uses
  %.val515 = load i64, ptr %i.q, align 8          ; 5 uses
  %i.ak = icmp eq i64 %.val515, 0
  br i1 %i.ak, label %_ZN11flatbuffers12_GLOBAL__N_116IsLowerSnakeCaseERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.thread, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.i, %.critedge.i
  %.0121.i = phi i64 [ %i.aq, %.critedge.i ], [ 0, %bb.i ] ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %.val, i64 %.0121.i
  %i.am = load i8, ptr %i.al, align 1, !tbaa !81  ; 3 uses
  %133 = add i8 %i.am, -97
  %i.an = icmp ult i8 %133, 26
  br i1 %i.an, label %.critedge.i, label %bb.j

bb.j:                                             ; preds = %.lr.ph.i
  %134 = add i8 %i.am, -48
  %i.ao = icmp ult i8 %134, 10
  %i.ap = icmp eq i8 %i.am, 95
  %or.cond.not.i = or i1 %i.ap, %i.ao
  br i1 %or.cond.not.i, label %.critedge.i, label %_ZN11flatbuffers12_GLOBAL__N_116IsLowerSnakeCaseERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit

.critedge.i:                                      ; preds = %bb.j, %.lr.ph.i
  %i.aq = add nuw i64 %.0121.i, 1                 ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.aq, %.val515
  br i1 %exitcond.not.i, label %_ZN11flatbuffers12_GLOBAL__N_116IsLowerSnakeCaseERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.thread, label %.lr.ph.i, !llvm.loop !769

_ZN11flatbuffers12_GLOBAL__N_116IsLowerSnakeCaseERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit: ; preds = %bb.j
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #32
  %i.ar = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 7 uses
  store ptr %i.ar, ptr %5, align 8, !tbaa !80, !alias.scope !791
  %i.as = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 3 uses
  store i64 0, ptr %i.as, align 8, !tbaa !79, !alias.scope !791
  store i8 0, ptr %i.ar, align 8, !tbaa !81, !alias.scope !791
  %i.at = add i64 %.val515, 49
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7reserveEm(ptr noundef nonnull align 8 dereferenceable(32) %5, i64 noundef %i.at)
          to label %bb.k unwind label %bb.l

bb.k:                                             ; preds = %_ZN11flatbuffers12_GLOBAL__N_116IsLowerSnakeCaseERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit
  %i.au = load i64, ptr %i.as, align 8, !tbaa !79, !alias.scope !791
  %i.av = add i64 %i.au, -4611686018427387855
  %i.aw = icmp ult i64 %i.av, 49
  br i1 %i.aw, label %.invoke.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i: ; preds = %bb.k
  %i.ax = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull @.str.55, i64 noundef 49)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.i.i unwind label %bb.l ; 0 uses

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i
  %i.ay = load i64, ptr %i.as, align 8, !tbaa !79, !alias.scope !791
  %i.az = sub i64 4611686018427387903, %i.ay
  %i.ba = icmp ult i64 %i.az, %.val515
  br i1 %i.ba, label %.invoke.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i10.i.i

.invoke.i.i:                                      ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.i.i, %bb.k
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.330) #31
          to label %.cont.i.i unwind label %bb.l

.cont.i.i:                                        ; preds = %.invoke.i.i
  unreachable

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i10.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.i.i
  %i.bb = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull %.val, i64 noundef %.val515)
          to label %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_RKS8_.exit unwind label %bb.l ; 0 uses

bb.l:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i10.i.i, %.invoke.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i, %_ZN11flatbuffers12_GLOBAL__N_116IsLowerSnakeCaseERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit
  %i.bc = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.bd = load ptr, ptr %5, align 8, !tbaa !82, !alias.scope !791 ; 2 uses
  %i.be = icmp eq ptr %i.bd, %i.ar
  br i1 %i.be, label %.body, label %.body.sink.split

_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_RKS8_.exit: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i10.i.i
  invoke void @_ZN11flatbuffers6Parser7WarningERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(1936) %1, ptr noundef nonnull align 8 dereferenceable(32) %5)
          to label %bb.m unwind label %bb.n

bb.m:                                             ; preds = %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_RKS8_.exit
  %i.bf = load ptr, ptr %5, align 8, !tbaa !82    ; 2 uses
  %i.bg = icmp eq ptr %i.bf, %i.ar
  br i1 %i.bg, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit527, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i525

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i525: ; preds = %bb.m
  %i.bh = load i64, ptr %i.ar, align 8, !tbaa !81
  %i.bi = add i64 %i.bh, 1
  call void @_ZdlPvm(ptr noundef %i.bf, i64 noundef %i.bi) #33
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit527

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit527: ; preds = %bb.m, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i525
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #32
  br label %_ZN11flatbuffers12_GLOBAL__N_116IsLowerSnakeCaseERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.thread

bb.n:                                             ; preds = %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_RKS8_.exit
  %i.bj = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.bk = load ptr, ptr %5, align 8, !tbaa !82    ; 2 uses
  %i.bl = icmp eq ptr %i.bk, %i.ar
  br i1 %i.bl, label %.body, label %.body.sink.split

.body.sink.split:                                 ; preds = %bb.n, %bb.l
  %.sink = phi ptr [ %i.bd, %bb.l ], [ %i.bk, %bb.n ]
  %.pn.ph = phi { ptr, i32 } [ %i.bc, %bb.l ], [ %i.bj, %bb.n ]
  %i.bm = load i64, ptr %i.ar, align 8, !tbaa !81
  %i.bn = add i64 %i.bm, 1
  call void @_ZdlPvm(ptr noundef %.sink, i64 noundef %i.bn) #33
  br label %.body

.body:                                            ; preds = %.body.sink.split, %bb.n, %bb.l
  %.pn = phi { ptr, i32 } [ %i.bc, %bb.l ], [ %i.bj, %bb.n ], [ %.pn.ph, %.body.sink.split ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #32
  br label %bb.qe

_ZN11flatbuffers12_GLOBAL__N_116IsLowerSnakeCaseERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.thread: ; preds = %.critedge.i, %bb.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit527
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #32
  %i.bo = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.bp = getelementptr inbounds nuw i8, ptr %1, i64 80
  %i.bq = load ptr, ptr %i.bp, align 8, !tbaa !216 ; 3 uses
  %i.br = load ptr, ptr %i.bo, align 8, !tbaa !217 ; 3 uses
  %i.bs = ptrtoint ptr %i.bq to i64
  %i.bt = ptrtoint ptr %i.br to i64
  %i.bu = sub i64 %i.bs, %i.bt                    ; 3 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %6, i8 0, i64 24, i1 false)
  %.not.i.i.i.i = icmp eq ptr %i.bq, %i.br
  br i1 %.not.i.i.i.i, label %.noexc532, label %bb.o

bb.o:                                             ; preds = %_ZN11flatbuffers12_GLOBAL__N_116IsLowerSnakeCaseERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.thread
  %i.bv = icmp ugt i64 %i.bu, 9223372036854775776
  br i1 %i.bv, label %.noexc.i.i, label %_ZNSt15__new_allocatorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE8allocateEmPKv.exit.i.i.i.i, !prof !321

.noexc.i.i:                                       ; preds = %bb.o
  invoke void @_ZSt28__throw_bad_array_new_lengthv() #31
          to label %.noexc531 unwind label %bb.t

.noexc531:                                        ; preds = %.noexc.i.i
  unreachable

_ZNSt15__new_allocatorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE8allocateEmPKv.exit.i.i.i.i: ; preds = %bb.o
  %i.bw = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.bu) #36
          to label %.noexc532 unwind label %bb.t

.noexc532:                                        ; preds = %_ZNSt15__new_allocatorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE8allocateEmPKv.exit.i.i.i.i, %_ZN11flatbuffers12_GLOBAL__N_116IsLowerSnakeCaseERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.thread
  %i.bx = phi ptr [ null, %_ZN11flatbuffers12_GLOBAL__N_116IsLowerSnakeCaseERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.thread ], [ %i.bw, %_ZNSt15__new_allocatorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE8allocateEmPKv.exit.i.i.i.i ] ; 4 uses
  store ptr %i.bx, ptr %6, align 8, !tbaa !217
  %i.by = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 3 uses
  store ptr %i.bx, ptr %i.by, align 8, !tbaa !216
  %i.bz = getelementptr inbounds nuw i8, ptr %i.bx, i64 %i.bu
  %i.ca = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 3 uses
  store ptr %i.bz, ptr %i.ca, align 8, !tbaa !229
  %i.cb = invoke noundef ptr @_ZSt16__do_uninit_copyIN9__gnu_cxx17__normal_iteratorIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS7_SaIS7_EEEEPS7_ET0_T_SG_SF_(ptr %i.br, ptr %i.bq, ptr noundef %i.bx)
          to label %bb.r unwind label %bb.p

bb.p:                                             ; preds = %.noexc532
  %i.cc = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.cd = load ptr, ptr %6, align 8, !tbaa !217   ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.cd, null
  br i1 %.not.i.i.i, label %.body533, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.ce = load ptr, ptr %i.ca, align 8, !tbaa !229
  %i.cf = ptrtoint ptr %i.ce to i64
  %i.cg = ptrtoint ptr %i.cd to i64
  %i.ch = sub i64 %i.cf, %i.cg
  call void @_ZdlPvm(ptr noundef nonnull %i.cd, i64 noundef %i.ch) #33
  br label %.body533

bb.r:                                             ; preds = %.noexc532
  store ptr %i.cb, ptr %i.by, align 8, !tbaa !216
  invoke void @_ZN11flatbuffers6Parser6ExpectEi(ptr dead_on_unwind writable sret(%"class.flatbuffers::CheckedError") align 1 %0, ptr noundef nonnull align 8 dereferenceable(1936) %1, i32 noundef 260)
          to label %bb.s unwind label %bb.u

bb.s:                                             ; preds = %bb.r
  %i.ci = getelementptr inbounds nuw i8, ptr %0, i64 1 ; 13 uses
  store i8 1, ptr %i.ci, align 1, !tbaa !213
  %i.cj = load i8, ptr %0, align 1, !tbaa !212, !range !208, !noundef !209
  %i.ck = trunc nuw i8 %i.cj to i1
  br i1 %i.ck, label %.critedge472, label %bb.v

bb.t:                                             ; preds = %_ZNSt15__new_allocatorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE8allocateEmPKv.exit.i.i.i.i, %.noexc.i.i
  %i.cl = landingpad { ptr, i32 }
          cleanup
  br label %.body533

bb.u:                                             ; preds = %bb.v, %bb.r
  %i.cm = landingpad { ptr, i32 }
          cleanup
  br label %bb.qc

bb.v:                                             ; preds = %bb.s
  invoke void @_ZN11flatbuffers6Parser6ExpectEi(ptr dead_on_unwind nonnull writable sret(%"class.flatbuffers::CheckedError") align 1 %0, ptr noundef nonnull align 8 dereferenceable(1936) %1, i32 noundef 58)
          to label %bb.w unwind label %bb.u

bb.w:                                             ; preds = %bb.v
  store i8 1, ptr %i.ci, align 1, !tbaa !213
  %i.cn = load i8, ptr %0, align 1, !tbaa !212, !range !208, !noundef !209
  %i.co = trunc nuw i8 %i.cn to i1
  br i1 %i.co, label %.critedge472, label %bb.x

bb.x:                                             ; preds = %bb.w
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #32
  %i.cp = getelementptr inbounds nuw i8, ptr %7, i64 4 ; 10 uses
  %i.cq = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 7 uses
  %i.cr = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 6 uses
  %i.cs = getelementptr inbounds nuw i8, ptr %7, i64 24 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(26) %7, i8 0, i64 26, i1 false)
  invoke void @_ZN11flatbuffers6Parser9ParseTypeERNS_4TypeE(ptr dead_on_unwind nonnull writable sret(%"class.flatbuffers::CheckedError") align 1 %0, ptr noundef nonnull align 8 dereferenceable(1936) %1, ptr noundef nonnull align 8 dereferenceable(26) %7)
          to label %bb.y unwind label %bb.al

bb.y:                                             ; preds = %bb.x
  store i8 1, ptr %i.ci, align 1, !tbaa !213
  %i.ct = load i8, ptr %0, align 1, !tbaa !212, !range !208, !noundef !209
  %i.cu = trunc nuw i8 %i.ct to i1
  br i1 %i.cu, label %.critedge476, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.cv = getelementptr inbounds nuw i8, ptr %2, i64 272 ; 4 uses
  %i.cw = load i8, ptr %i.cv, align 8, !tbaa !316, !range !208, !noundef !209
  %i.cx = trunc nuw i8 %i.cw to i1
  %i.cy = load i32, ptr %7, align 8, !tbaa !268   ; 5 uses
end_hunk_5
begin_hunk_6_@_ZN11flatbuffers6Parser10ParseFieldERNS_9StructDefE:bb.a
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit597

bb.ci:                                            ; preds = %bb.cf
  %i.kk = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.kl = load ptr, ptr %24, align 8, !tbaa !82   ; 2 uses
  %i.km = getelementptr inbounds nuw i8, ptr %24, i64 16 ; 2 uses
  %i.kn = icmp eq ptr %i.kl, %i.km
  br i1 %i.kn, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit597, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i595

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i595: ; preds = %bb.ci
  %i.ko = load i64, ptr %i.km, align 8, !tbaa !81
  %i.kp = add i64 %i.ko, 1
  call void @_ZdlPvm(ptr noundef %i.kl, i64 noundef %i.kp) #33
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit597

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit597: ; preds = %bb.ci, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i595, %bb.ch
  %.pn457 = phi { ptr, i32 } [ %i.kj, %bb.ch ], [ %i.kk, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i595 ], [ %i.kk, %bb.ci ]
  call void @llvm.lifetime.end.p0(ptr nonnull %25) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %24) #32
  br label %bb.py

bb.cj:                                            ; preds = %._crit_edge, %_ZN11flatbuffers8IsStructERKNS_4TypeE.exit591.thread
  %i.kq = phi i32 [ %.pre1016, %._crit_edge ], [ %i.ju, %_ZN11flatbuffers8IsStructERKNS_4TypeE.exit591.thread ]
  switch i32 %i.kq, label %bb.cr [
    i32 13, label %bb.ck
    i32 18, label %bb.ck
    i32 14, label %bb.ck
  ]

bb.ck:                                            ; preds = %bb.cj, %bb.cj, %bb.cj
  %i.kr = getelementptr inbounds nuw i8, ptr %1, i64 1808 ; 2 uses
  %i.ks = load i64, ptr %i.kr, align 8, !tbaa !322
  %i.kt = or i64 %i.ks, 8
  store i64 %i.kt, ptr %i.kr, align 8, !tbaa !322
  %i.ku = getelementptr inbounds nuw i8, ptr %i.jq, i64 232
  %i.kv = call noundef zeroext i1 @_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_(ptr noundef nonnull align 8 dereferenceable(32) %i.ku, ptr noundef nonnull @.str.61)
  br i1 %i.kv, label %bb.cl, label %bb.cr

bb.cl:                                            ; preds = %bb.ck
  %i.kw = getelementptr inbounds nuw i8, ptr %1, i64 1680
  %i.kx = load i64, ptr %i.kw, align 8, !tbaa !323
  %i.ky = and i64 %i.kx, -213385
  %.not.i = icmp eq i64 %i.ky, 0
  br i1 %.not.i, label %bb.cr, label %bb.cm

bb.cm:                                            ; preds = %bb.cl
  call void @llvm.lifetime.start.p0(ptr nonnull %26) #32
  call void @llvm.lifetime.start.p0(ptr nonnull %27) #32
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %26, ptr noundef nonnull @.str.63, ptr noundef nonnull align 1 dereferenceable(1) %27)
          to label %bb.cn unwind label %bb.cp

bb.cn:                                            ; preds = %bb.cm
  invoke void @_ZN11flatbuffers6Parser5ErrorERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr dead_on_unwind nonnull writable sret(%"class.flatbuffers::CheckedError") align 1 %0, ptr noundef nonnull align 8 dereferenceable(1936) %1, ptr noundef nonnull align 8 dereferenceable(32) %26)
          to label %bb.co unwind label %bb.cq

bb.co:                                            ; preds = %bb.cn
  %i.kz = load ptr, ptr %26, align 8, !tbaa !82   ; 2 uses
  %i.la = getelementptr inbounds nuw i8, ptr %26, i64 16 ; 2 uses
  %i.lb = icmp eq ptr %i.kz, %i.la
  br i1 %i.lb, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit600, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i598

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i598: ; preds = %bb.co
  %i.lc = load i64, ptr %i.la, align 8, !tbaa !81
  %i.ld = add i64 %i.lc, 1
  call void @_ZdlPvm(ptr noundef %i.kz, i64 noundef %i.ld) #33
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit600

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit600: ; preds = %bb.co, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i598
  call void @llvm.lifetime.end.p0(ptr nonnull %27) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %26) #32
  br label %.critedge494

bb.cp:                                            ; preds = %bb.cm
  %i.le = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit603

bb.cq:                                            ; preds = %bb.cn
  %i.lf = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.lg = load ptr, ptr %26, align 8, !tbaa !82   ; 2 uses
  %i.lh = getelementptr inbounds nuw i8, ptr %26, i64 16 ; 2 uses
  %i.li = icmp eq ptr %i.lg, %i.lh
  br i1 %i.li, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit603, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i601

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i601: ; preds = %bb.cq
  %i.lj = load i64, ptr %i.lh, align 8, !tbaa !81
  %i.lk = add i64 %i.lj, 1
  call void @_ZdlPvm(ptr noundef %i.lg, i64 noundef %i.lk) #33
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit603

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit603: ; preds = %bb.cq, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i601, %bb.cp
  %.pn309 = phi { ptr, i32 } [ %i.le, %bb.cp ], [ %i.lf, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i601 ], [ %i.lf, %bb.cq ]
  call void @llvm.lifetime.end.p0(ptr nonnull %27) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %26) #32
  br label %bb.py

bb.cr:                                            ; preds = %bb.cj, %bb.cl, %bb.ck
  %i.ll = load i32, ptr %7, align 8, !tbaa !268
  switch i32 %i.ll, label %bb.cz [
    i32 18, label %bb.cs
    i32 14, label %bb.cs
  ]

bb.cs:                                            ; preds = %bb.cr, %bb.cr
  %i.lm = getelementptr inbounds nuw i8, ptr %i.jq, i64 232 ; 2 uses
  %i.ln = call noundef zeroext i1 @_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_(ptr noundef nonnull align 8 dereferenceable(32) %i.lm, ptr noundef nonnull @.str.61)
  br i1 %i.ln, label %bb.ct, label %bb.cz

bb.ct:                                            ; preds = %bb.cs
  %i.lo = call noundef zeroext i1 @_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_(ptr noundef nonnull align 8 dereferenceable(32) %i.lm, ptr noundef nonnull @.str.64)
  br i1 %i.lo, label %bb.cu, label %bb.cz

bb.cu:                                            ; preds = %bb.ct
  call void @llvm.lifetime.start.p0(ptr nonnull %28) #32
  call void @llvm.lifetime.start.p0(ptr nonnull %29) #32
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %28, ptr noundef nonnull @.str.65, ptr noundef nonnull align 1 dereferenceable(1) %29)
          to label %bb.cv unwind label %bb.cx

bb.cv:                                            ; preds = %bb.cu
  invoke void @_ZN11flatbuffers6Parser5ErrorERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr dead_on_unwind nonnull writable sret(%"class.flatbuffers::CheckedError") align 1 %0, ptr noundef nonnull align 8 dereferenceable(1936) %1, ptr noundef nonnull align 8 dereferenceable(32) %28)
          to label %bb.cw unwind label %bb.cy

bb.cw:                                            ; preds = %bb.cv
  %i.lp = load ptr, ptr %28, align 8, !tbaa !82   ; 2 uses
  %i.lq = getelementptr inbounds nuw i8, ptr %28, i64 16 ; 2 uses
  %i.lr = icmp eq ptr %i.lp, %i.lq
  br i1 %i.lr, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit606, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i604

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i604: ; preds = %bb.cw
  %i.ls = load i64, ptr %i.lq, align 8, !tbaa !81
  %i.lt = add i64 %i.ls, 1
  call void @_ZdlPvm(ptr noundef %i.lp, i64 noundef %i.lt) #33
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit606

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit606: ; preds = %bb.cw, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i604
  call void @llvm.lifetime.end.p0(ptr nonnull %29) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %28) #32
  br label %.critedge494

bb.cx:                                            ; preds = %bb.cu
  %i.lu = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit609

bb.cy:                                            ; preds = %bb.cv
  %i.lv = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.lw = load ptr, ptr %28, align 8, !tbaa !82   ; 2 uses
  %i.lx = getelementptr inbounds nuw i8, ptr %28, i64 16 ; 2 uses
  %i.ly = icmp eq ptr %i.lw, %i.lx
  br i1 %i.ly, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit609, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i607

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i607: ; preds = %bb.cy
  %i.lz = load i64, ptr %i.lx, align 8, !tbaa !81
  %i.ma = add i64 %i.lz, 1
  call void @_ZdlPvm(ptr noundef %i.lw, i64 noundef %i.ma) #33
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit609

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit609: ; preds = %bb.cy, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i607, %bb.cx
  %.pn455 = phi { ptr, i32 } [ %i.lu, %bb.cx ], [ %i.lv, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i607 ], [ %i.lv, %bb.cy ]
  call void @llvm.lifetime.end.p0(ptr nonnull %29) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %28) #32
  br label %bb.py

bb.cz:                                            ; preds = %._crit_edge1023, %bb.cr, %bb.cs, %bb.ct
  %.pre1018 = phi ptr [ %.pre1018.pre, %._crit_edge1023 ], [ %i.jq, %bb.cr ], [ %i.jq, %bb.cs ], [ %i.jq, %bb.ct ] ; 25 uses
  %i.mb = load i32, ptr %7, align 8, !tbaa !268
  %i.mc = add i32 %i.mb, -11
  %i.md = icmp ult i32 %i.mc, 2
  br i1 %i.md, label %bb.da, label %bb.dg

bb.da:                                            ; preds = %bb.cz
  %i.me = getelementptr inbounds nuw i8, ptr %.pre1018, i64 232 ; 3 uses
  %i.mf = load ptr, ptr %i.me, align 8, !tbaa !82
  br label %bb.db

bb.db:                                            ; preds = %bb.dc, %bb.da
  %.0161 = phi ptr [ %i.mf, %bb.da ], [ %i.mh, %bb.dc ] ; 3 uses
  %i.mg = load i8, ptr %.0161, align 1, !tbaa !81 ; 2 uses
  switch i8 %i.mg, label %.loopexit [
    i8 32, label %bb.dc
    i8 45, label %bb.dd
    i8 43, label %bb.dd
  ]

bb.dc:                                            ; preds = %bb.db
  %i.mh = getelementptr inbounds nuw i8, ptr %.0161, i64 1
  br label %bb.db, !llvm.loop !774

bb.dd:                                            ; preds = %bb.db, %bb.db
  %i.mi = getelementptr inbounds nuw i8, ptr %.0161, i64 1
  %.pre1017 = load i8, ptr %i.mi, align 1, !tbaa !81
  br label %.loopexit

.loopexit:                                        ; preds = %bb.db, %bb.dd
  %i.mj = phi i8 [ %.pre1017, %bb.dd ], [ %i.mg, %bb.db ] ; 2 uses
  %i.mk = and i8 %i.mj, -33
  %135 = add i8 %i.mk, -65
  %i.ml = icmp ult i8 %135, 26
  %i.mm = icmp eq i8 %i.mj, 95
  %i.mn = or i1 %i.mm, %i.ml
  br i1 %i.mn, label %bb.dg, label %bb.de

bb.de:                                            ; preds = %.loopexit
  %i.mo = call noundef i64 @_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE13find_first_ofEPKcmm(ptr noundef nonnull align 8 dereferenceable(32) %i.me, ptr noundef nonnull @.str.66, i64 noundef 0, i64 noundef 5) #32
  %i.mp = icmp eq i64 %i.mo, -1
  br i1 %i.mp, label %bb.df, label %bb.dg

bb.df:                                            ; preds = %bb.de
  %i.mq = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc(ptr noundef nonnull align 8 dereferenceable(32) %i.me, ptr noundef nonnull @.str.67)
          to label %bb.dg unwind label %bb.nz     ; 0 uses

bb.dg:                                            ; preds = %.loopexit, %bb.de, %bb.df, %bb.cz
  %i.mr = getelementptr inbounds nuw i8, ptr %.pre1018, i64 64
  %i.ms = invoke noundef nonnull align 8 dereferenceable(24) ptr @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EEaSERKS7_(ptr noundef nonnull align 8 dereferenceable(24) %i.mr, ptr noundef nonnull align 8 dereferenceable(24) %6)
          to label %bb.dh unwind label %bb.nz     ; 0 uses

bb.dh:                                            ; preds = %bb.dg
  %i.mt = getelementptr inbounds nuw i8, ptr %.pre1018, i64 88 ; 19 uses
  invoke void @_ZN11flatbuffers6Parser13ParseMetaDataEPNS_11SymbolTableINS_5ValueEEE(ptr dead_on_unwind nonnull writable sret(%"class.flatbuffers::CheckedError") align 1 %0, ptr noundef nonnull align 8 dereferenceable(1936) %1, ptr noundef nonnull %i.mt)
          to label %bb.di unwind label %bb.nz

bb.di:                                            ; preds = %bb.dh
  store i8 1, ptr %i.ci, align 1, !tbaa !213
  %i.mu = load i8, ptr %0, align 1, !tbaa !212, !range !208, !noundef !209
  %i.mv = trunc nuw i8 %i.mu to i1
  br i1 %i.mv, label %.critedge494, label %bb.dj

bb.dj:                                            ; preds = %bb.di
  call void @llvm.lifetime.start.p0(ptr nonnull %30) #32
  call void @llvm.lifetime.start.p0(ptr nonnull %31) #32
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %30, ptr noundef nonnull @.str.68, ptr noundef nonnull align 1 dereferenceable(1) %31)
          to label %bb.dk unwind label %bb.dp

bb.dk:                                            ; preds = %bb.dj
  %i.mw = invoke noundef ptr @_ZNK11flatbuffers11SymbolTableINS_5ValueEE6LookupERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(72) %i.mt, ptr noundef nonnull align 8 dereferenceable(32) %30)
          to label %bb.dl unwind label %bb.dq

bb.dl:                                            ; preds = %bb.dk
  %i.mx = icmp ne ptr %i.mw, null
  %i.my = getelementptr inbounds nuw i8, ptr %.pre1018, i64 272 ; 2 uses
  %i.mz = zext i1 %i.mx to i8
  store i8 %i.mz, ptr %i.my, align 8, !tbaa !325
  %i.na = load ptr, ptr %30, align 8, !tbaa !82   ; 2 uses
  %i.nb = getelementptr inbounds nuw i8, ptr %30, i64 16 ; 2 uses
  %i.nc = icmp eq ptr %i.na, %i.nb
  br i1 %i.nc, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit612, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i610

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i610: ; preds = %bb.dl
  %i.nd = load i64, ptr %i.nb, align 8, !tbaa !81
  %i.ne = add i64 %i.nd, 1
  call void @_ZdlPvm(ptr noundef %i.na, i64 noundef %i.ne) #33
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit612

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit612: ; preds = %bb.dl, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i610
  call void @llvm.lifetime.end.p0(ptr nonnull %31) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %30) #32
  call void @llvm.lifetime.start.p0(ptr nonnull %32) #32
  call void @llvm.lifetime.start.p0(ptr nonnull %33) #32
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %32, ptr noundef nonnull @.str.69, ptr noundef nonnull align 1 dereferenceable(1) %33)
          to label %bb.dm unwind label %bb.dr

bb.dm:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit612
  %i.nf = invoke noundef ptr @_ZNK11flatbuffers11SymbolTableINS_5ValueEE6LookupERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(72) %i.mt, ptr noundef nonnull align 8 dereferenceable(32) %32)
          to label %bb.dn unwind label %bb.ds     ; 4 uses

bb.dn:                                            ; preds = %bb.dm
  %i.ng = load ptr, ptr %32, align 8, !tbaa !82   ; 2 uses
  %i.nh = getelementptr inbounds nuw i8, ptr %32, i64 16 ; 2 uses
  %i.ni = icmp eq ptr %i.ng, %i.nh
  br i1 %i.ni, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit615, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i613

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i613: ; preds = %bb.dn
  %i.nj = load i64, ptr %i.nh, align 8, !tbaa !81
  %i.nk = add i64 %i.nj, 1
  call void @_ZdlPvm(ptr noundef %i.ng, i64 noundef %i.nk) #33
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit615

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit615: ; preds = %bb.dn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i613
  call void @llvm.lifetime.end.p0(ptr nonnull %33) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %32) #32
  %.not315 = icmp eq ptr %i.nf, null              ; 2 uses
  br i1 %.not315, label %bb.eq, label %bb.do

bb.do:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit615
  %i.nl = load i32, ptr %7, align 8, !tbaa !268   ; 3 uses
  %i.nm = icmp eq i32 %i.nl, 14
  %i.nn = icmp eq i32 %i.nl, 18
  %i.no = or i1 %i.nm, %i.nn
  %i.np = load i32, ptr %i.cp, align 4
  %i.nq = select i1 %i.no, i32 %i.np, i32 %i.nl
  switch i32 %i.nq, label %bb.el [
    i32 5, label %bb.dt
    i32 6, label %bb.dt
    i32 7, label %bb.dz
    i32 8, label %bb.dz
    i32 9, label %bb.ef
    i32 10, label %bb.ef
  ]

bb.dp:                                            ; preds = %bb.dj
  %i.nr = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit618

bb.dq:                                            ; preds = %bb.dk
  %i.ns = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.nt = load ptr, ptr %30, align 8, !tbaa !82   ; 2 uses
  %i.nu = getelementptr inbounds nuw i8, ptr %30, i64 16 ; 2 uses
  %i.nv = icmp eq ptr %i.nt, %i.nu
  br i1 %i.nv, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit618, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i616

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i616: ; preds = %bb.dq
  %i.nw = load i64, ptr %i.nu, align 8, !tbaa !81
  %i.nx = add i64 %i.nw, 1
  call void @_ZdlPvm(ptr noundef %i.nt, i64 noundef %i.nx) #33
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit618

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit618: ; preds = %bb.dq, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i616, %bb.dp
  %.pn311 = phi { ptr, i32 } [ %i.nr, %bb.dp ], [ %i.ns, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i616 ], [ %i.ns, %bb.dq ]
  call void @llvm.lifetime.end.p0(ptr nonnull %31) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %30) #32
  br label %bb.py

bb.dr:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit612
  %i.ny = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit621

bb.ds:                                            ; preds = %bb.dm
  %i.nz = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.oa = load ptr, ptr %32, align 8, !tbaa !82   ; 2 uses
  %i.ob = getelementptr inbounds nuw i8, ptr %32, i64 16 ; 2 uses
  %i.oc = icmp eq ptr %i.oa, %i.ob
  br i1 %i.oc, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit621, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i619

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i619: ; preds = %bb.ds
  %i.od = load i64, ptr %i.ob, align 8, !tbaa !81
  %i.oe = add i64 %i.od, 1
  call void @_ZdlPvm(ptr noundef %i.oa, i64 noundef %i.oe) #33
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit621

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit621: ; preds = %bb.ds, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i619, %bb.dr
  %.pn313 = phi { ptr, i32 } [ %i.ny, %bb.dr ], [ %i.nz, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i619 ], [ %i.nz, %bb.ds ]
  call void @llvm.lifetime.end.p0(ptr nonnull %33) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %32) #32
  br label %bb.py

bb.dt:                                            ; preds = %bb.do, %bb.do
  %i.of = getelementptr inbounds nuw i8, ptr %i.nf, i64 32 ; 2 uses
  %i.og = load ptr, ptr %i.of, align 8, !tbaa !82
  %i.oh = call noundef ptr @_ZN11flatbuffers18FindHashFunction16EPKc(ptr noundef %i.og)
  %i.oi = icmp eq ptr %i.oh, null
  br i1 %i.oi, label %bb.du, label %bb.eq

bb.du:                                            ; preds = %bb.dt
  call void @llvm.lifetime.start.p0(ptr nonnull %34) #32
  invoke void @_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_RKS8_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %34, ptr noundef nonnull @.str.70, ptr noundef nonnull align 8 dereferenceable(32) %i.of)
          to label %bb.dv unwind label %bb.dx

bb.dv:                                            ; preds = %bb.du
  invoke void @_ZN11flatbuffers6Parser5ErrorERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr dead_on_unwind nonnull writable sret(%"class.flatbuffers::CheckedError") align 1 %0, ptr noundef nonnull align 8 dereferenceable(1936) %1, ptr noundef nonnull align 8 dereferenceable(32) %34)
          to label %bb.dw unwind label %bb.dy

bb.dw:                                            ; preds = %bb.dv
  %i.oj = load ptr, ptr %34, align 8, !tbaa !82   ; 2 uses
  %i.ok = getelementptr inbounds nuw i8, ptr %34, i64 16 ; 2 uses
  %i.ol = icmp eq ptr %i.oj, %i.ok
  br i1 %i.ol, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit624, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i622

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i622: ; preds = %bb.dw
  %i.om = load i64, ptr %i.ok, align 8, !tbaa !81
  %i.on = add i64 %i.om, 1
  call void @_ZdlPvm(ptr noundef %i.oj, i64 noundef %i.on) #33
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit624

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit624: ; preds = %bb.dw, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i622
  call void @llvm.lifetime.end.p0(ptr nonnull %34) #32
  br label %.critedge494

bb.dx:                                            ; preds = %bb.du
  %i.oo = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit627

bb.dy:                                            ; preds = %bb.dv
  %i.op = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.oq = load ptr, ptr %34, align 8, !tbaa !82   ; 2 uses
  %i.or = getelementptr inbounds nuw i8, ptr %34, i64 16 ; 2 uses
  %i.os = icmp eq ptr %i.oq, %i.or
  br i1 %i.os, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit627, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i625

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i625: ; preds = %bb.dy
  %i.ot = load i64, ptr %i.or, align 8, !tbaa !81
  %i.ou = add i64 %i.ot, 1
  call void @_ZdlPvm(ptr noundef %i.oq, i64 noundef %i.ou) #33
end_hunk_6
begin_hunk_7_@_ZN11flatbuffers6Parser16ParseSingleValueEPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERNS_5ValueEb:bb.a
_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i453: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit452
  %i.gr = load i64, ptr %i.dt, align 8, !tbaa !81
  %i.gs = add i64 %i.gr, 1
  call void @_ZdlPvm(ptr noundef %i.gp, i64 noundef %i.gs) #33
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit455

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit455: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit452, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i453, %bb.ao
  %.pn297.pn = phi { ptr, i32 } [ %i.gi, %bb.ao ], [ %.pn297, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i453 ], [ %.pn297, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit452 ] ; 2 uses
  %i.gt = load ptr, ptr %8, align 8, !tbaa !82    ; 2 uses
  %i.gu = icmp eq ptr %i.gt, %i.dd
  br i1 %i.gu, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit458, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i456

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i456: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit455
  %i.gv = load i64, ptr %i.dd, align 8, !tbaa !81
  %i.gw = add i64 %i.gv, 1
  call void @_ZdlPvm(ptr noundef %i.gt, i64 noundef %i.gw) #33
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit458

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit458: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit455, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i456, %bb.an
  %.pn297.pn.pn = phi { ptr, i32 } [ %i.gh, %bb.an ], [ %.pn297.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i456 ], [ %.pn297.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit455 ] ; 4 uses
  %i.gx = load ptr, ptr %12, align 8, !tbaa !82   ; 2 uses
  %i.gy = getelementptr inbounds nuw i8, ptr %12, i64 16 ; 2 uses
  %i.gz = icmp eq ptr %i.gx, %i.gy
  br i1 %i.gz, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit461, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i459

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i459: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit458
  %i.ha = load i64, ptr %i.gy, align 8, !tbaa !81
  %i.hb = add i64 %i.ha, 1
  call void @_ZdlPvm(ptr noundef %i.gx, i64 noundef %i.hb) #33
  br i1 %.not296, label %bb.ar, label %.critedge329

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit461: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit458
  br i1 %.not296, label %bb.ar, label %.critedge329

bb.ar:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i459, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit461.thread, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit461
  %.pn297.pn.pn.pn576 = phi { ptr, i32 } [ %i.gg, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit461.thread ], [ %.pn297.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit461 ], [ %.pn297.pn.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i459 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #32
  br label %.critedge329

.critedge329:                                     ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i459, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit461, %bb.ar, %bb.am
  %.pn297.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn297.pn.pn.pn576, %bb.ar ], [ %.pn297.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit461 ], [ %i.gf, %bb.am ], [ %.pn297.pn.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i459 ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #32
  %i.hc = load ptr, ptr %9, align 8, !tbaa !82    ; 2 uses
  %i.hd = icmp eq ptr %i.hc, %i.ck
  br i1 %i.hd, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit464, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i462

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i462: ; preds = %.critedge329
  %i.he = load i64, ptr %i.ck, align 8, !tbaa !81
  %i.hf = add i64 %i.he, 1
  call void @_ZdlPvm(ptr noundef %i.hc, i64 noundef %i.hf) #33
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit464

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit464: ; preds = %.critedge329, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i462, %bb.al
  %.pn297.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %i.ge, %bb.al ], [ %.pn297.pn.pn.pn.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i462 ], [ %.pn297.pn.pn.pn.pn, %.critedge329 ] ; 2 uses
  %i.hg = load ptr, ptr %10, align 8, !tbaa !82   ; 2 uses
  %i.hh = icmp eq ptr %i.hg, %i.bu
  br i1 %i.hh, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit467, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i465

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i465: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit464
  %i.hi = load i64, ptr %i.bu, align 8, !tbaa !81
  %i.hj = add i64 %i.hi, 1
  call void @_ZdlPvm(ptr noundef %i.hg, i64 noundef %i.hj) #33
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit467

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit467: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit464, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i465, %bb.ak
  %.pn297.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %i.gd, %bb.ak ], [ %.pn297.pn.pn.pn.pn.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i465 ], [ %.pn297.pn.pn.pn.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit464 ] ; 2 uses
  %i.hk = load ptr, ptr %11, align 8, !tbaa !82   ; 2 uses
  %i.hl = icmp eq ptr %i.hk, %i.bi
  br i1 %i.hl, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit470, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i468

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i468: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit467
  %i.hm = load i64, ptr %i.bi, align 8, !tbaa !81
  %i.hn = add i64 %i.hm, 1
  call void @_ZdlPvm(ptr noundef %i.hk, i64 noundef %i.hn) #33
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit470

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit470: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit467, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i468, %bb.aj
  %.pn297.pn.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %i.gc, %bb.aj ], [ %.pn297.pn.pn.pn.pn.pn.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i468 ], [ %.pn297.pn.pn.pn.pn.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit467 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #32
  br label %bb.dy

.thread577:                                       ; preds = %.thread571, %bb.o
  %i.ho = phi i1 [ %i.ay, %.thread571 ], [ false, %bb.o ] ; 3 uses
  %i.hp = icmp eq i32 %i.ar, 2
  br i1 %i.hp, label %bb.as, label %.critedge332

bb.as:                                            ; preds = %.thread577
  %i.hq = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 3 uses
  %i.hr = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.hs = load i64, ptr %i.hr, align 8, !tbaa !79 ; 2 uses
  switch i64 %i.hs, label %.critedge332 [
    i64 4, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit
    i64 5, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit472
  ]

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit: ; preds = %bb.as
  %i.ht = load ptr, ptr %i.hq, align 8, !tbaa !82
  %i.hu = load i32, ptr %i.ht, align 1
  %i.hv = icmp ne i32 %i.hu, 1702195828
  %i.hw = zext i1 %i.hv to i32
  %i.hx = icmp eq i32 %i.hw, 0
  br i1 %i.hx, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread, label %.critedge332

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit472: ; preds = %bb.as
  %i.hy = load ptr, ptr %i.hq, align 8, !tbaa !82 ; 2 uses
  %i.hz = load i32, ptr %i.hy, align 1
  %i.ia = xor i32 %i.hz, 1936482662
  %i.ib = getelementptr i8, ptr %i.hy, i64 4
  %i.ic = load i8, ptr %i.ib, align 1
  %i.id = zext i8 %i.ic to i32
  %i.ie = xor i32 %i.id, 101
  %i.if = or i32 %i.ia, %i.ie
  %i.ig = icmp ne i32 %i.if, 0
  %i.ih = zext i1 %i.ig to i32
  %i.ii = icmp eq i32 %i.ih, 0
  br i1 %i.ii, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread, label %.critedge332

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit472
  %.str.160..str.61 = phi ptr [ @.str.61, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit472 ], [ @.str.160, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit ]
  %i.ij = tail call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %i.hq, i64 noundef 0, i64 noundef %i.hs, ptr noundef nonnull %.str.160..str.61, i64 noundef 1) ; 0 uses
  %i.ik = load i32, ptr %i.r, align 4, !tbaa !228
  %i.il = icmp eq i32 %i.aq, %i.ik
  br i1 %i.il, label %bb.at, label %.critedge332

bb.at:                                            ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread
  call void @_ZN11flatbuffers6Parser13TryTypedValueEPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEibRNS_5ValueENS_8BaseTypeEPb(ptr dead_on_unwind writable sret(%"class.flatbuffers::CheckedError") align 1 %0, ptr noundef nonnull align 8 dereferenceable(1936) %1, ptr noundef %2, i32 noundef %i.aq, i1 noundef zeroext true, ptr noundef nonnull align 8 dereferenceable(66) %3, i32 noundef 2, ptr noundef nonnull %i.e)
  %i.im = getelementptr inbounds nuw i8, ptr %0, i64 1
  store i8 1, ptr %i.im, align 1, !tbaa !213
  %i.in = load i8, ptr %0, align 1, !tbaa !212, !range !208, !noundef !209
  %i.io = trunc nuw i8 %i.in to i1
  br i1 %i.io, label %.critedge331, label %..critedge332_crit_edge

..critedge332_crit_edge:                          ; preds = %bb.at
  %.pre606 = load i8, ptr %i.e, align 1, !tbaa !335, !range !208
  br label %.critedge332

.critedge332:                                     ; preds = %..critedge332_crit_edge, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit, %bb.as, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit472, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread, %.thread577
  %i.ip = phi i8 [ 0, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit472 ], [ %.pre606, %..critedge332_crit_edge ], [ 0, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread ], [ 0, %bb.as ], [ 0, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit ], [ 0, %.thread577 ] ; 3 uses
  %i.iq = trunc nuw i8 %i.ip to i1
  %i.ir = add i32 %i.ar, -13
  %i.is = icmp ult i32 %i.ir, -12
  %or.cond.not = select i1 %i.iq, i1 true, i1 %i.is
  br i1 %or.cond.not, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit474.thread581, label %bb.au

bb.au:                                            ; preds = %.critedge332
  %i.it = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.iu = load i64, ptr %i.it, align 8, !tbaa !79
  %i.iv = icmp eq i64 %i.iu, 4
  br i1 %i.iv, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit474, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit474.thread581

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit474: ; preds = %bb.au
  %i.iw = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.ix = load ptr, ptr %i.iw, align 8, !tbaa !82
  %i.iy = load i32, ptr %i.ix, align 1
  %i.iz = icmp ne i32 %i.iy, 1819047278
  %i.ja = zext i1 %i.iz to i32
  %i.jb = icmp eq i32 %i.ja, 0
  br i1 %i.jb, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit474.thread, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit474.thread581

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit474.thread: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit474
  %i.jc = getelementptr inbounds nuw i8, ptr %3, i64 32
  %i.jd = getelementptr inbounds nuw i8, ptr %3, i64 40
  %i.je = load i64, ptr %i.jd, align 8, !tbaa !79
  %i.jf = tail call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %i.jc, i64 noundef 0, i64 noundef %i.je, ptr noundef nonnull @.str.83, i64 noundef 4) ; 0 uses
  tail call void @_ZN11flatbuffers6Parser4NextEv(ptr dead_on_unwind writable sret(%"class.flatbuffers::CheckedError") align 1 %0, ptr noundef nonnull align 8 dereferenceable(1936) %1)
  %i.jg = getelementptr inbounds nuw i8, ptr %0, i64 1
  store i8 1, ptr %i.jg, align 1, !tbaa !213
  %i.jh = load i8, ptr %0, align 1, !tbaa !212, !range !208, !noundef !209
  %i.ji = trunc nuw i8 %i.jh to i1
  br i1 %i.ji, label %.critedge331, label %bb.av

bb.av:                                            ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit474.thread
  store i8 1, ptr %i.e, align 1, !tbaa !335
  br label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit474.thread581.thread

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit474.thread581.thread: ; preds = %bb.m, %bb.av, %bb.n
  %.ph722 = phi i1 [ %i.ho, %bb.av ], [ true, %bb.m ], [ false, %bb.n ]
  %.ph723 = phi i8 [ 1, %bb.av ], [ %.pre, %bb.m ], [ 0, %bb.n ]
  %i.jj = add i32 %i.ar, -11
  br label %bb.az

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit474.thread581: ; preds = %bb.au, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit474, %.critedge332
  %i.jk = trunc nuw i8 %i.ip to i1
  %i.jl = add i32 %i.ar, -11                      ; 3 uses
  %i.jm = icmp ult i32 %i.jl, -10
  %i.jn = icmp eq i32 %i.ar, 2
  %i.jo = or i1 %i.jn, %i.jm
  %or.cond593 = select i1 %i.jk, i1 true, i1 %i.jo
  br i1 %or.cond593, label %bb.az, label %bb.aw

bb.aw:                                            ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit474.thread581
  %i.jp = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.jq = load ptr, ptr %i.jp, align 8, !tbaa !82
  %i.jr = load i8, ptr %i.jq, align 1, !tbaa !81  ; 2 uses
  %i.js = and i8 %i.jr, -33
  %24 = add i8 %i.js, -65
  %i.jt = icmp ult i8 %24, 26
  %i.ju = icmp eq i8 %i.jr, 95
  %i.jv = or i1 %i.ju, %i.jt
  br i1 %i.jv, label %bb.ax, label %bb.az

bb.ax:                                            ; preds = %bb.aw
  %i.jw = getelementptr inbounds nuw i8, ptr %3, i64 32
  tail call void @_ZN11flatbuffers6Parser19ParseEnumFromStringERKNS_4TypeEPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr dead_on_unwind writable sret(%"class.flatbuffers::CheckedError") align 1 %0, ptr noundef nonnull align 8 dereferenceable(1936) %1, ptr noundef nonnull align 8 dereferenceable(26) %3, ptr noundef nonnull %i.jw)
  %i.jx = getelementptr inbounds nuw i8, ptr %0, i64 1 ; 2 uses
  store i8 1, ptr %i.jx, align 1, !tbaa !213
  %i.jy = load i8, ptr %0, align 1, !tbaa !212, !range !208, !noundef !209
  %i.jz = trunc nuw i8 %i.jy to i1
  br i1 %i.jz, label %.critedge331, label %bb.ay

bb.ay:                                            ; preds = %bb.ax
  tail call void @_ZN11flatbuffers6Parser4NextEv(ptr dead_on_unwind nonnull writable sret(%"class.flatbuffers::CheckedError") align 1 %0, ptr noundef nonnull align 8 dereferenceable(1936) %1)
  store i8 1, ptr %i.jx, align 1, !tbaa !213
  %i.ka = load i8, ptr %0, align 1, !tbaa !212, !range !208, !noundef !209
  %i.kb = trunc nuw i8 %i.ka to i1
  br i1 %i.kb, label %.critedge331, label %.thread727

.thread727:                                       ; preds = %bb.ay
  store i8 1, ptr %i.e, align 1, !tbaa !335
  br label %.critedge346

bb.az:                                            ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit474.thread581.thread, %bb.aw, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit474.thread581
  %i.kc = phi i32 [ %i.jj, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit474.thread581.thread ], [ %i.jl, %bb.aw ], [ %i.jl, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit474.thread581 ]
  %i.kd = phi i1 [ %.ph722, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit474.thread581.thread ], [ %i.ho, %bb.aw ], [ %i.ho, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit474.thread581 ]
  %i.ke = phi i8 [ %.ph723, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit474.thread581.thread ], [ 0, %bb.aw ], [ %i.ip, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit474.thread581 ]
  %i.kf = trunc nuw i8 %i.ke to i1                ; 2 uses
  %or.cond49.not = or i1 %i.at, %i.kf
  br i1 %or.cond49.not, label %bb.bh, label %bb.ba

bb.ba:                                            ; preds = %bb.az
  %i.kg = add i32 %i.ar, -1
  %i.kh = icmp ult i32 %i.kg, 12
  br i1 %i.kh, label %bb.bb, label %.thread583

bb.bb:                                            ; preds = %bb.ba
  %i.ki = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 4 uses
  %i.kj = tail call noundef i64 @_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE16find_last_not_ofEcm(ptr noundef nonnull align 8 dereferenceable(32) %i.ki, i8 noundef signext 32, i64 noundef -1) #32 ; 2 uses
  %.not306 = icmp eq i64 %i.kj, -1
  br i1 %.not306, label %bb.bd, label %bb.bc

bb.bc:                                            ; preds = %bb.bb
  %i.kk = add nuw i64 %i.kj, 1
  tail call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6resizeEmc(ptr noundef nonnull align 8 dereferenceable(32) %i.ki, i64 noundef %i.kk, i8 noundef signext 0)
  br label %bb.bd

bb.bd:                                            ; preds = %bb.bc, %bb.bb
  %i.kl = load i32, ptr %3, align 8, !tbaa !331
  %i.km = add i32 %i.kl, -11
  %i.kn = icmp ult i32 %i.km, 2
  br i1 %i.kn, label %bb.be, label %.thread583

bb.be:                                            ; preds = %bb.bd
  %i.ko = tail call noundef i64 @_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE5rfindEcm(ptr noundef nonnull align 8 dereferenceable(32) %i.ki, i8 noundef signext 41, i64 noundef -1) #32
  %.not307 = icmp eq i64 %i.ko, -1
  br i1 %.not307, label %.thread583, label %bb.bf

bb.bf:                                            ; preds = %bb.be
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #32
  call void @_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_RKS8_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %14, ptr noundef nonnull @.str.21, ptr noundef nonnull align 8 dereferenceable(32) %i.ki)
  invoke void @_ZN11flatbuffers6Parser5ErrorERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr dead_on_unwind writable sret(%"class.flatbuffers::CheckedError") align 1 %0, ptr noundef nonnull align 8 dereferenceable(1936) %1, ptr noundef nonnull align 8 dereferenceable(32) %14)
          to label %.critedge331.critedge339 unwind label %bb.bg

.critedge331.critedge339:                         ; preds = %bb.bf
  %i.kp = load ptr, ptr %14, align 8, !tbaa !82   ; 2 uses
  %i.kq = getelementptr inbounds nuw i8, ptr %14, i64 16 ; 2 uses
  %i.kr = icmp eq ptr %i.kp, %i.kq
  br i1 %i.kr, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit477, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i475

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i475: ; preds = %.critedge331.critedge339
  %i.ks = load i64, ptr %i.kq, align 8, !tbaa !81
  %i.kt = add i64 %i.ks, 1
  call void @_ZdlPvm(ptr noundef %i.kp, i64 noundef %i.kt) #33
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit477

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit477: ; preds = %.critedge331.critedge339, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i475
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #32
  br label %.critedge331

bb.bg:                                            ; preds = %bb.bf
  %i.ku = landingpad { ptr, i32 }
          cleanup
  %i.kv = load ptr, ptr %14, align 8, !tbaa !82   ; 2 uses
  %i.kw = getelementptr inbounds nuw i8, ptr %14, i64 16 ; 2 uses
  %i.kx = icmp eq ptr %i.kv, %i.kw
  br i1 %i.kx, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit480, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i478

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i478: ; preds = %bb.bg
  %i.ky = load i64, ptr %i.kw, align 8, !tbaa !81
  %i.kz = add i64 %i.ky, 1
  call void @_ZdlPvm(ptr noundef %i.kv, i64 noundef %i.kz) #33
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit480

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit480: ; preds = %bb.bg, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i478
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #32
  br label %bb.dy

bb.bh:                                            ; preds = %bb.az
  br i1 %i.kf, label %.critedge346, label %.thread583

.thread583:                                       ; preds = %bb.ba, %bb.bd, %bb.be, %bb.bh
  %i.la = load i32, ptr %i.r, align 4, !tbaa !228
  %i.lb = icmp eq i32 %i.aq, %i.la
  %i.lc = icmp ult i32 %i.kc, 2
  %or.cond595 = select i1 %i.lb, i1 %i.lc, i1 false
  br i1 %or.cond595, label %bb.bi, label %.critedge740

bb.bi:                                            ; preds = %.thread583
  call void @_ZN11flatbuffers6Parser13TryTypedValueEPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEibRNS_5ValueENS_8BaseTypeEPb(ptr dead_on_unwind writable sret(%"class.flatbuffers::CheckedError") align 1 %0, ptr noundef nonnull align 8 dereferenceable(1936) %1, ptr noundef %2, i32 noundef %i.aq, i1 noundef zeroext true, ptr noundef nonnull align 8 dereferenceable(66) %3, i32 noundef 11, ptr noundef nonnull %i.e)
  %i.ld = getelementptr inbounds nuw i8, ptr %0, i64 1
  store i8 1, ptr %i.ld, align 1, !tbaa !213
  %i.le = load i8, ptr %0, align 1, !tbaa !212, !range !208, !noundef !209
  %i.lf = trunc nuw i8 %i.le to i1
  br i1 %i.lf, label %.critedge331, label %._crit_edge607

._crit_edge607:                                   ; preds = %bb.bi
  %.pre608 = load i8, ptr %i.e, align 1, !tbaa !335, !range !208
  %i.lg = trunc nuw i8 %.pre608 to i1
  br i1 %i.lg, label %.critedge346, label %.critedge740

.critedge740:                                     ; preds = %.thread583, %._crit_edge607
  %i.lh = load i32, ptr %i.r, align 4, !tbaa !228 ; 2 uses
  %i.li = icmp eq i32 %i.aq, %i.lh
  %i.lj = add i32 %i.ar, -1
  %i.lk = icmp ult i32 %i.lj, 10
  %or.cond597 = select i1 %i.li, i1 %i.lk, i1 false
  br i1 %or.cond597, label %bb.bj, label %.thread733

bb.bj:                                            ; preds = %.critedge740
  call void @_ZN11flatbuffers6Parser13TryTypedValueEPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEibRNS_5ValueENS_8BaseTypeEPb(ptr dead_on_unwind writable sret(%"class.flatbuffers::CheckedError") align 1 %0, ptr noundef nonnull align 8 dereferenceable(1936) %1, ptr noundef %2, i32 noundef %i.aq, i1 noundef zeroext true, ptr noundef nonnull align 8 dereferenceable(66) %3, i32 noundef 7, ptr noundef nonnull %i.e)
  %i.ll = getelementptr inbounds nuw i8, ptr %0, i64 1
  store i8 1, ptr %i.ll, align 1, !tbaa !213
  %i.lm = load i8, ptr %0, align 1, !tbaa !212, !range !208, !noundef !209
  %i.ln = trunc nuw i8 %i.lm to i1
  br i1 %i.ln, label %.critedge331, label %bb.bk

bb.bk:                                            ; preds = %bb.bj
  %.pre610 = load i8, ptr %i.e, align 1, !tbaa !335, !range !208
  %i.lo = trunc nuw i8 %.pre610 to i1
  br i1 %i.lo, label %.critedge346, label %.thread733thread-pre-split

.thread733thread-pre-split:                       ; preds = %bb.bk
  %.pr738 = load i32, ptr %i.r, align 4, !tbaa !228
  br label %.thread733

.thread733:                                       ; preds = %.thread733thread-pre-split, %.critedge740
  %i.lp = phi i32 [ %.pr738, %.thread733thread-pre-split ], [ %i.lh, %.critedge740 ]
  %i.lq = icmp eq i32 %i.lp, 257
  br i1 %i.lq, label %bb.bl, label %.critedge346

bb.bl:                                            ; preds = %.thread733
  call void @_ZN11flatbuffers6Parser13TryTypedValueEPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEibRNS_5ValueENS_8BaseTypeEPb(ptr dead_on_unwind writable sret(%"class.flatbuffers::CheckedError") align 1 %0, ptr noundef nonnull align 8 dereferenceable(1936) %1, ptr noundef %2, i32 noundef 257, i1 noundef zeroext %i.kd, ptr noundef nonnull align 8 dereferenceable(66) %3, i32 noundef 13, ptr noundef nonnull %i.e)
  %i.lr = getelementptr inbounds nuw i8, ptr %0, i64 1
  store i8 1, ptr %i.lr, align 1, !tbaa !213
  %i.ls = load i8, ptr %0, align 1, !tbaa !212, !range !208, !noundef !209
  %i.lt = trunc nuw i8 %i.ls to i1
  br i1 %i.lt, label %.critedge331, label %.critedge346

bb.bm:                                            ; preds = %bb.j
  %i.lu = add i32 %i.ar, -11
  %i.lv = icmp ult i32 %i.lu, 2
  br i1 %i.lv, label %bb.bn, label %.thread735

bb.bn:                                            ; preds = %bb.bm
  call void @_ZN11flatbuffers6Parser13TryTypedValueEPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEibRNS_5ValueENS_8BaseTypeEPb(ptr dead_on_unwind writable sret(%"class.flatbuffers::CheckedError") align 1 %0, ptr noundef nonnull align 8 dereferenceable(1936) %1, ptr noundef %2, i32 noundef 259, i1 noundef zeroext true, ptr noundef nonnull align 8 dereferenceable(66) %3, i32 noundef 11, ptr noundef nonnull %i.e)
  %i.lw = getelementptr inbounds nuw i8, ptr %0, i64 1
  store i8 1, ptr %i.lw, align 1, !tbaa !213
  %i.lx = load i8, ptr %0, align 1, !tbaa !212, !range !208, !noundef !209
  %i.ly = trunc nuw i8 %i.lx to i1
  br i1 %i.ly, label %.critedge331, label %bb.bo

bb.bo:                                            ; preds = %bb.bn
  %.pre605 = load i8, ptr %i.e, align 1, !tbaa !335, !range !208
  %i.lz = trunc nuw i8 %.pre605 to i1
  br i1 %i.lz, label %.critedge346, label %.thread735

.thread735:                                       ; preds = %bb.bm, %bb.j, %bb.bo
  %i.ma = load i32, ptr %i.r, align 4, !tbaa !228
  %i.mb = icmp eq i32 %i.ma, 258
  br i1 %i.mb, label %bb.bp, label %.critedge346

bb.bp:                                            ; preds = %.thread735
  %i.mc = add i32 %i.ar, -1
  %i.md = icmp ult i32 %i.mc, 12
  call void @_ZN11flatbuffers6Parser13TryTypedValueEPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEibRNS_5ValueENS_8BaseTypeEPb(ptr dead_on_unwind writable sret(%"class.flatbuffers::CheckedError") align 1 %0, ptr noundef nonnull align 8 dereferenceable(1936) %1, ptr noundef %2, i32 noundef 258, i1 noundef zeroext %i.md, ptr noundef nonnull align 8 dereferenceable(66) %3, i32 noundef 7, ptr noundef nonnull %i.e)
  %i.me = getelementptr inbounds nuw i8, ptr %0, i64 1
  store i8 1, ptr %i.me, align 1, !tbaa !213
  %i.mf = load i8, ptr %0, align 1, !tbaa !212, !range !208, !noundef !209
  %i.mg = trunc nuw i8 %i.mf to i1
  br i1 %i.mg, label %.critedge331, label %.critedge346

.critedge346:                                     ; preds = %.thread727, %bb.bh, %._crit_edge607, %bb.bp, %bb.bl, %bb.bk, %.thread733, %bb.bo, %.thread735
  %i.mh = load i8, ptr %i.e, align 1, !tbaa !335, !range !208, !noundef !209
  %i.mi = trunc nuw i8 %i.mh to i1
  br i1 %i.mi, label %bb.di, label %bb.bq

bb.bq:                                            ; preds = %.critedge346
  %i.mj = load i32, ptr %3, align 8, !tbaa !268
end_hunk_7
begin_hunk_8_@_ZNK11flatbuffers7EnumDef6LookupERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE:bb.a
  br i1 %.not.i.i.i.i.i.i.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i.i, label %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i.i: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i.i, %bb.b
  %i.m = sub i64 %i.h, %i.e
  %spec.select7.i.i.i.i.i.i.i.i = tail call i64 @llvm.smax.i64(i64 %i.m, i64 -2147483648)
  %.08.i.i.i.i.i.i.i.i = tail call i64 @llvm.smin.i64(i64 %spec.select7.i.i.i.i.i.i.i.i, i64 2147483647)
  %.0.i6.i.i.i.i.i.i.i = trunc nsw i64 %.08.i.i.i.i.i.i.i.i to i32
  br label %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i.i

_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i.i: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i.i
  %.0.i.i.i.i.i.i.i = phi i32 [ %i.l, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i.i ], [ %.0.i6.i.i.i.i.i.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i.i ]
  %i.n = icmp slt i32 %.0.i.i.i.i.i.i.i, 0        ; 2 uses
  %.19.i.i.i.i = select i1 %i.n, ptr %.0811.i.i.i.i, ptr %.012.i.i.i.i ; 5 uses
  %.1.in.v.i.i.i.i = select i1 %i.n, i64 24, i64 16
  %.1.in.i.i.i.i = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i, i64 %.1.in.v.i.i.i.i
  %.1.i.i.i.i = load ptr, ptr %.1.in.i.i.i.i, align 8, !tbaa !233 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %.1.i.i.i.i, null
  br i1 %.not.i.i.i.i, label %_ZNKSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_PN11flatbuffers7EnumValEESt10_Select1stISB_ESt4lessIS5_ESaISB_EE14_M_lower_boundEPKSt13_Rb_tree_nodeISB_EPKSt18_Rb_tree_node_baseRS7_.exit.i.i.i, label %bb.b, !llvm.loop !7

_ZNKSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_PN11flatbuffers7EnumValEESt10_Select1stISB_ESt4lessIS5_ESaISB_EE14_M_lower_boundEPKSt13_Rb_tree_nodeISB_EPKSt18_Rb_tree_node_baseRS7_.exit.i.i.i: ; preds = %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i.i
  %i.o = icmp eq ptr %.19.i.i.i.i, %i.c
  br i1 %i.o, label %_ZNK11flatbuffers11SymbolTableINS_7EnumValEE6LookupERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit, label %bb.c

bb.c:                                             ; preds = %_ZNKSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_PN11flatbuffers7EnumValEESt10_Select1stISB_ESt4lessIS5_ESaISB_EE14_M_lower_boundEPKSt13_Rb_tree_nodeISB_EPKSt18_Rb_tree_node_baseRS7_.exit.i.i.i
  %i.p = getelementptr inbounds nuw i8, ptr %.19.i.i.i.i, i64 40
  %i.q = load i64, ptr %i.p, align 8, !tbaa !79   ; 2 uses
  %.sroa.speculated.i.i.i.i.i.i = tail call i64 @llvm.umin.i64(i64 %i.q, i64 %i.e) ; 2 uses
  %i.r = icmp eq i64 %.sroa.speculated.i.i.i.i.i.i, 0
  br i1 %i.r, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i: ; preds = %bb.c
  %i.s = getelementptr inbounds nuw i8, ptr %.19.i.i.i.i, i64 32
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !82
  %i.u = tail call i32 @memcmp(ptr noundef %i.f, ptr noundef %i.t, i64 noundef %.sroa.speculated.i.i.i.i.i.i) #32 ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq i32 %i.u, 0
  br i1 %.not.i.i.i.i.i.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i, label %_ZNKSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPN11flatbuffers7EnumValESt4lessIS5_ESaISt4pairIKS5_S8_EEE4findERSC_.exit.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i, %bb.c
  %i.v = sub i64 %i.e, %i.q
  %spec.select7.i.i.i.i.i.i.i = tail call i64 @llvm.smax.i64(i64 %i.v, i64 -2147483648)
  %.08.i.i.i.i.i.i.i = tail call i64 @llvm.smin.i64(i64 %spec.select7.i.i.i.i.i.i.i, i64 2147483647)
  %.0.i6.i.i.i.i.i.i = trunc nsw i64 %.08.i.i.i.i.i.i.i to i32
  br label %_ZNKSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPN11flatbuffers7EnumValESt4lessIS5_ESaISt4pairIKS5_S8_EEE4findERSC_.exit.i

_ZNKSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPN11flatbuffers7EnumValESt4lessIS5_ESaISt4pairIKS5_S8_EEE4findERSC_.exit.i: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i
  %.0.i.i.i.i.i.i = phi i32 [ %i.u, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i ], [ %.0.i6.i.i.i.i.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i ]
  %i.w = icmp slt i32 %.0.i.i.i.i.i.i, 0
  br i1 %i.w, label %_ZNK11flatbuffers11SymbolTableINS_7EnumValEE6LookupERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit, label %bb.d

bb.d:                                             ; preds = %_ZNKSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPN11flatbuffers7EnumValESt4lessIS5_ESaISt4pairIKS5_S8_EEE4findERSC_.exit.i
  %i.x = getelementptr inbounds nuw i8, ptr %.19.i.i.i.i, i64 64
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !345
  br label %_ZNK11flatbuffers11SymbolTableINS_7EnumValEE6LookupERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit

_ZNK11flatbuffers11SymbolTableINS_7EnumValEE6LookupERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit: ; preds = %bb.a, %_ZNKSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_PN11flatbuffers7EnumValEESt10_Select1stISB_ESt4lessIS5_ESaISB_EE14_M_lower_boundEPKSt13_Rb_tree_nodeISB_EPKSt18_Rb_tree_node_baseRS7_.exit.i.i.i, %_ZNKSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPN11flatbuffers7EnumValESt4lessIS5_ESaISt4pairIKS5_S8_EEE4findERSC_.exit.i, %bb.d
  %i.z = phi ptr [ %i.y, %bb.d ], [ null, %_ZNKSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPN11flatbuffers7EnumValESt4lessIS5_ESaISt4pairIKS5_S8_EEE4findERSC_.exit.i ], [ null, %bb.a ], [ null, %_ZNKSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_PN11flatbuffers7EnumValEESt10_Select1stISB_ESt4lessIS5_ESaISB_EE14_M_lower_boundEPKSt13_Rb_tree_nodeISB_EPKSt18_Rb_tree_node_baseRS7_.exit.i.i.i ]
  ret ptr %i.z
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local noundef zeroext i1 @_ZNK11flatbuffers6Parser23SupportsOptionalScalarsEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(1936) %0) local_unnamed_addr #5 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 1680
  %i.b = load i64, ptr %i.a, align 8, !tbaa !323  ; 2 uses
  %i.c = icmp ult i64 %i.b, 524289
  %i.d = and i64 %i.b, 269392
  %.not.i = icmp eq i64 %i.d, 0
  %i.e = and i1 %i.c, %.not.i
  ret i1 %i.e
}

; Function Attrs: inlinehint mustprogress uwtable
define internal fastcc void @"_ZZN11flatbuffers6Parser10ParseFieldERNS_9StructDefEENK3$_0clEPKNS_8FieldDefERKNS_4TypeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESH_"(ptr dead_on_unwind noalias nofree nonnull writable writeonly align 1 captures(none) %0, ptr %.0.val, i32 %.280.val, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(26) %1, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %2, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %3) unnamed_addr #4 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 5 uses
  %i.b = alloca i64, align 8                      ; 5 uses
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 7 uses
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %6 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %7 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %8 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %9 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %10 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %11 = alloca %"class.std::__cxx11::basic_string", align 8 ; 13 uses
  %i.c = icmp eq i32 %.280.val, 1
  br i1 %i.c, label %.critedge39.thread, label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !324  ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #32
  %i.f = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 4 uses
  store ptr %i.f, ptr %4, align 8, !tbaa !80
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(9) %i.f, ptr noundef nonnull align 1 dereferenceable(9) @.str.171, i64 9, i1 false)
  %i.g = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i64 9, ptr %i.g, align 8, !tbaa !79
  %i.h = getelementptr inbounds nuw i8, ptr %4, i64 25
  store i8 0, ptr %i.h, align 1, !tbaa !81
  %i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 104
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !232  ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.e, i64 96 ; 2 uses
  %.not10.i.i.i.i = icmp eq ptr %i.j, null
  br i1 %.not10.i.i.i.i, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %._crit_edge.i.i, %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i.i
  %.012.i.i.i.i = phi ptr [ %.1.i.i.i.i, %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i.i ], [ %i.j, %._crit_edge.i.i ] ; 4 uses
  %.0811.i.i.i.i = phi ptr [ %.19.i.i.i.i, %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i.i ], [ %i.k, %._crit_edge.i.i ]
  %i.l = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i, i64 40
  %i.m = load i64, ptr %i.l, align 8, !tbaa !79   ; 3 uses
  %i.n = icmp eq i64 %i.m, 0
  br i1 %i.n, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i
  %.sroa.speculated.i.i.i.i.i.i.i = call i64 @llvm.umin.i64(i64 %i.m, i64 9)
  %i.o = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i, i64 32
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !82
  %i.q = call i32 @memcmp(ptr noundef %i.p, ptr noundef nonnull %i.f, i64 noundef %.sroa.speculated.i.i.i.i.i.i.i) #32 ; 2 uses
  %.not.i.i.i.i.i.i.i = icmp eq i32 %i.q, 0
  br i1 %.not.i.i.i.i.i.i.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i.i, label %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i.i: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i
  %i.r = add i64 %i.m, -9
  %spec.select7.i.i.i.i.i.i.i.i = call i64 @llvm.smax.i64(i64 %i.r, i64 -2147483648)
  %.08.i.i.i.i.i.i.i.i = call i64 @llvm.smin.i64(i64 %spec.select7.i.i.i.i.i.i.i.i, i64 2147483647)
  %.0.i6.i.i.i.i.i.i.i = trunc nsw i64 %.08.i.i.i.i.i.i.i.i to i32
  br label %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i.i

_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i.i: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i.i
  %.0.i.i.i.i.i.i.i = phi i32 [ %i.q, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i.i ], [ %.0.i6.i.i.i.i.i.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i.i ]
  %i.s = icmp slt i32 %.0.i.i.i.i.i.i.i, 0        ; 2 uses
  %.19.i.i.i.i = select i1 %i.s, ptr %.0811.i.i.i.i, ptr %.012.i.i.i.i ; 5 uses
  %.1.in.v.i.i.i.i = select i1 %i.s, i64 24, i64 16
  %.1.in.i.i.i.i = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i, i64 %.1.in.v.i.i.i.i
  %.1.i.i.i.i = load ptr, ptr %.1.in.i.i.i.i, align 8, !tbaa !233 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %.1.i.i.i.i, null
  br i1 %.not.i.i.i.i, label %_ZNKSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_PN11flatbuffers5ValueEESt10_Select1stISB_ESt4lessIS5_ESaISB_EE14_M_lower_boundEPKSt13_Rb_tree_nodeISB_EPKSt18_Rb_tree_node_baseRS7_.exit.i.i.i, label %.lr.ph.i.i.i.i, !llvm.loop !6

_ZNKSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_PN11flatbuffers5ValueEESt10_Select1stISB_ESt4lessIS5_ESaISB_EE14_M_lower_boundEPKSt13_Rb_tree_nodeISB_EPKSt18_Rb_tree_node_baseRS7_.exit.i.i.i: ; preds = %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i.i
  %i.t = icmp eq ptr %.19.i.i.i.i, %i.k
  br i1 %i.t, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread, label %bb.b

bb.b:                                             ; preds = %_ZNKSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_PN11flatbuffers5ValueEESt10_Select1stISB_ESt4lessIS5_ESaISB_EE14_M_lower_boundEPKSt13_Rb_tree_nodeISB_EPKSt18_Rb_tree_node_baseRS7_.exit.i.i.i
  %i.u = getelementptr inbounds nuw i8, ptr %.19.i.i.i.i, i64 40
  %i.v = load i64, ptr %i.u, align 8, !tbaa !79   ; 3 uses
  %i.w = icmp eq i64 %i.v, 0
  br i1 %i.w, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i: ; preds = %bb.b
  %.sroa.speculated.i.i.i.i.i.i = call i64 @llvm.umin.i64(i64 %i.v, i64 9)
  %i.x = getelementptr inbounds nuw i8, ptr %.19.i.i.i.i, i64 32
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !82
  %i.z = call i32 @memcmp(ptr noundef nonnull %i.f, ptr noundef %i.y, i64 noundef %.sroa.speculated.i.i.i.i.i.i) #32 ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq i32 %i.z, 0
  br i1 %.not.i.i.i.i.i.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i, label %_ZNKSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPN11flatbuffers5ValueESt4lessIS5_ESaISt4pairIKS5_S8_EEE4findERSC_.exit.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i, %bb.b
  %i.aa = sub i64 9, %i.v
  %spec.select7.i.i.i.i.i.i.i = call i64 @llvm.smax.i64(i64 %i.aa, i64 -2147483648)
  %.08.i.i.i.i.i.i.i = call i64 @llvm.smin.i64(i64 %spec.select7.i.i.i.i.i.i.i, i64 2147483647)
  %.0.i6.i.i.i.i.i.i = trunc nsw i64 %.08.i.i.i.i.i.i.i to i32
  br label %_ZNKSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPN11flatbuffers5ValueESt4lessIS5_ESaISt4pairIKS5_S8_EEE4findERSC_.exit.i

_ZNKSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPN11flatbuffers5ValueESt4lessIS5_ESaISt4pairIKS5_S8_EEE4findERSC_.exit.i: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i
  %.0.i.i.i.i.i.i = phi i32 [ %i.z, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i ], [ %.0.i6.i.i.i.i.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i ]
  %i.ab = icmp slt i32 %.0.i.i.i.i.i.i, 0
  br i1 %i.ab, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread: ; preds = %._crit_edge.i.i, %_ZNKSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPN11flatbuffers5ValueESt4lessIS5_ESaISt4pairIKS5_S8_EEE4findERSC_.exit.i, %_ZNKSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_PN11flatbuffers5ValueEESt10_Select1stISB_ESt4lessIS5_ESaISB_EE14_M_lower_boundEPKSt13_Rb_tree_nodeISB_EPKSt18_Rb_tree_node_baseRS7_.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #32
  br label %bb.c

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZNKSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPN11flatbuffers5ValueESt4lessIS5_ESaISt4pairIKS5_S8_EEE4findERSC_.exit.i
  %i.ac = getelementptr inbounds nuw i8, ptr %.19.i.i.i.i, i64 64
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !342
  %i.ae = icmp eq ptr %i.ad, null
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #32
  br i1 %i.ae, label %bb.c, label %.critedge39.thread

bb.c:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #32
  %i.af = getelementptr inbounds nuw i8, ptr %i.e, i64 208
  %i.ag = load i32, ptr %i.af, align 8, !tbaa !346
  %i.ah = icmp eq i32 %i.ag, 10
  br i1 %i.ah, label %bb.d, label %bb.f

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #32
  %i.ai = load ptr, ptr %3, align 8, !tbaa !82    ; 3 uses
  %i.aj = call noundef zeroext i1 @_ZN11flatbuffers19StringToIntegerImplImEEbPT_PKcib(ptr noundef nonnull %i.b, ptr noundef %i.ai, i32 noundef 0, i1 noundef zeroext true)
  %.pre.i = load i64, ptr %i.b, align 8, !tbaa !93 ; 2 uses
  br i1 %i.aj, label %bb.e, label %_ZN11flatbuffers14StringToNumberImEEbPKcPT_.exit.i

bb.e:                                             ; preds = %bb.d
  %.not.i.i = icmp eq i64 %.pre.i, 0
  br i1 %.not.i.i, label %_ZN11flatbuffers14StringToNumberImEEbPKcPT_.exit.thread.i, label %.preheader.i.i

.preheader.i.i:                                   ; preds = %bb.e, %.preheader.i.i
  %.014.i.i = phi ptr [ %i.am, %.preheader.i.i ], [ %i.ai, %bb.e ] ; 4 uses
  %i.ak = load i8, ptr %.014.i.i, align 1, !tbaa !81 ; 2 uses
  %.not17.i.i = icmp eq i8 %i.ak, 0
  %12 = add i8 %i.ak, -48
  %i.al = icmp ult i8 %12, 10
  %or.cond.i.i = or i1 %.not17.i.i, %i.al
  %i.am = getelementptr inbounds nuw i8, ptr %.014.i.i, i64 1
  br i1 %or.cond.i.i, label %.critedge.i.i, label %.preheader.i.i, !llvm.loop !8

.critedge.i.i:                                    ; preds = %.preheader.i.i
  %i.an = icmp ugt ptr %.014.i.i, %i.ai
  %.idx.i.i = sext i1 %i.an to i64
  %i.ao = getelementptr inbounds i8, ptr %.014.i.i, i64 %.idx.i.i
  %i.ap = load i8, ptr %i.ao, align 1, !tbaa !81
  %i.aq = icmp eq i8 %i.ap, 45
  br i1 %i.aq, label %_ZN11flatbuffers14StringToNumberImEEbPKcPT_.exit.i, label %_ZN11flatbuffers14StringToNumberImEEbPKcPT_.exit.thread.i

_ZN11flatbuffers14StringToNumberImEEbPKcPT_.exit.thread.i: ; preds = %.critedge.i.i, %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #32
  br label %bb.g

_ZN11flatbuffers14StringToNumberImEEbPKcPT_.exit.i: ; preds = %.critedge.i.i, %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #32
  br label %.loopexit

bb.f:                                             ; preds = %bb.c
  %i.ar = load ptr, ptr %3, align 8, !tbaa !82
  %i.as = call noundef zeroext i1 @_ZN11flatbuffers19StringToIntegerImplIlEEbPT_PKcib(ptr noundef nonnull %i.a, ptr noundef %i.ar, i32 noundef 0, i1 noundef zeroext true)
  br i1 %i.as, label %._crit_edge.i, label %.loopexit

._crit_edge.i:                                    ; preds = %bb.f
  %.pre7.i = load i64, ptr %i.a, align 8, !tbaa !93
  br label %bb.g

bb.g:                                             ; preds = %._crit_edge.i, %_ZN11flatbuffers14StringToNumberImEEbPKcPT_.exit.thread.i
  %i.at = phi i64 [ %.pre7.i, %._crit_edge.i ], [ %.pre.i, %_ZN11flatbuffers14StringToNumberImEEbPKcPT_.exit.thread.i ]
  %i.au = getelementptr inbounds nuw i8, ptr %i.e, i64 288
  %i.av = load ptr, ptr %i.au, align 8, !tbaa !347 ; 2 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %i.e, i64 296
  %i.ax = load ptr, ptr %i.aw, align 8, !tbaa !347 ; 2 uses
  %.not11.i.i = icmp eq ptr %i.av, %i.ax
  br i1 %.not11.i.i, label %.loopexit, label %.lr.ph.i.i

bb.h:                                             ; preds = %.lr.ph.i.i
  %i.ay = getelementptr inbounds nuw i8, ptr %.sroa.07.012.i.i, i64 8 ; 2 uses
  %.not.i5.i = icmp eq ptr %i.ay, %i.ax
  br i1 %.not.i5.i, label %.loopexit, label %.lr.ph.i.i, !llvm.loop !9

.lr.ph.i.i:                                       ; preds = %bb.g, %bb.h
  %.sroa.07.012.i.i = phi ptr [ %i.ay, %bb.h ], [ %i.av, %bb.g ] ; 2 uses
  %i.az = load ptr, ptr %.sroa.07.012.i.i, align 8, !tbaa !348
  %i.ba = getelementptr inbounds nuw i8, ptr %i.az, i64 160
  %i.bb = load i64, ptr %i.ba, align 8, !tbaa !350
  %i.bc = icmp eq i64 %i.bb, %i.at
  br i1 %i.bc, label %_ZNK11flatbuffers7EnumDef11FindByValueERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit, label %bb.h

_ZNK11flatbuffers7EnumDef11FindByValueERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit: ; preds = %.lr.ph.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #32
  br label %.critedge39.thread

.loopexit:                                        ; preds = %bb.h, %_ZN11flatbuffers14StringToNumberImEEbPKcPT_.exit.i, %bb.f, %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #32
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #32
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #32
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #32
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #32
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #32
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #32
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #32
  call void @llvm.experimental.noalias.scope.decl(metadata !886)
  %i.bd = load ptr, ptr %3, align 8, !tbaa !82, !noalias !886
  %i.be = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.bf = load i64, ptr %i.be, align 8, !tbaa !79, !noalias !886 ; 3 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %11, i64 16 ; 8 uses
  store ptr %i.bg, ptr %11, align 8, !tbaa !80, !alias.scope !887
  %i.bh = getelementptr inbounds nuw i8, ptr %11, i64 8 ; 4 uses
  store i64 0, ptr %i.bh, align 8, !tbaa !79, !alias.scope !887
  store i8 0, ptr %i.bg, align 8, !tbaa !81, !alias.scope !887
  %i.bi = add i64 %i.bf, 18
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7reserveEm(ptr noundef nonnull align 8 dereferenceable(32) %11, i64 noundef %i.bi)
          to label %bb.i unwind label %bb.j

bb.i:                                             ; preds = %.loopexit
  %i.bj = load i64, ptr %i.bh, align 8, !tbaa !79, !alias.scope !887
  %i.bk = add i64 %i.bj, -4611686018427387886
  %i.bl = icmp ult i64 %i.bk, 18
  br i1 %i.bl, label %.invoke.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i: ; preds = %bb.i
  %i.bm = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %11, ptr noundef nonnull @.str.295, i64 noundef 18)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.i.i unwind label %bb.j ; 0 uses

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i
  %i.bn = load i64, ptr %i.bh, align 8, !tbaa !79, !alias.scope !887
  %i.bo = sub i64 4611686018427387903, %i.bn
  %i.bp = icmp ult i64 %i.bo, %i.bf
  br i1 %i.bp, label %.invoke.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i10.i.i

.invoke.i.i:                                      ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.i.i, %bb.i
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.330) #31
          to label %.cont.i.i unwind label %bb.j

.cont.i.i:                                        ; preds = %.invoke.i.i
  unreachable

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i10.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.i.i
  %i.bq = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %11, ptr noundef %i.bd, i64 noundef %i.bf)
          to label %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_RKS8_.exit unwind label %bb.j ; 0 uses

bb.j:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i10.i.i, %.invoke.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i, %.loopexit
  %i.br = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.bs = load ptr, ptr %11, align 8, !tbaa !82, !alias.scope !887 ; 2 uses
  %i.bt = icmp eq ptr %i.bs, %i.bg
  br i1 %i.bt, label %common.resume, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %bb.j
  %i.bu = load i64, ptr %i.bg, align 8, !tbaa !81, !alias.scope !887
  %i.bv = add i64 %i.bu, 1
  call void @_ZdlPvm(ptr noundef %i.bs, i64 noundef %i.bv) #33
  br label %common.resume

common.resume:                                    ; preds = %bb.j, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit121, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i
  %common.resume.op = phi { ptr, i32 } [ %.pn30.pn.pn.pn.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit121 ], [ %i.br, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i ], [ %i.br, %bb.j ]
  resume { ptr, i32 } %common.resume.op

_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_RKS8_.exit: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i10.i.i
  call void @llvm.experimental.noalias.scope.decl(metadata !888)
  %i.bw = load i64, ptr %i.bh, align 8, !tbaa !79, !noalias !888
  %i.bx = add i64 %i.bw, -4611686018427387898
  %i.by = icmp ult i64 %i.bx, 6
  br i1 %i.by, label %bb.k, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i

bb.k:                                             ; preds = %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_RKS8_.exit
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.330) #31
          to label %.noexc42 unwind label %bb.ad

.noexc42:                                         ; preds = %bb.k
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i: ; preds = %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_RKS8_.exit
  %i.bz = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %11, ptr noundef nonnull @.str.296, i64 noundef 6)
          to label %.noexc43 unwind label %bb.ad  ; 6 uses

.noexc43:                                         ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i
  %i.ca = getelementptr inbounds nuw i8, ptr %10, i64 16 ; 7 uses
  store ptr %i.ca, ptr %10, align 8, !tbaa !80, !alias.scope !888
  %i.cb = load ptr, ptr %i.bz, align 8, !tbaa !82 ; 2 uses
  %i.cc = getelementptr inbounds nuw i8, ptr %i.bz, i64 16 ; 5 uses
  %i.cd = icmp eq ptr %i.cb, %i.cc
  br i1 %i.cd, label %bb.l, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i40

bb.l:                                             ; preds = %.noexc43
  %i.ce = getelementptr inbounds nuw i8, ptr %i.bz, i64 8
  %i.cf = load i64, ptr %i.ce, align 8, !tbaa !79 ; 3 uses
  %i.cg = icmp ult i64 %i.cf, 16
  call void @llvm.assume(i1 %i.cg)
  %i.ch = add nuw nsw i64 %i.cf, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.ca, ptr noundef nonnull align 8 dereferenceable(1) %i.cc, i64 %i.ch, i1 false)
  br label %bb.m

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i40: ; preds = %.noexc43
  store ptr %i.cb, ptr %10, align 8, !tbaa !82, !alias.scope !888
  %i.ci = load i64, ptr %i.cc, align 8, !tbaa !81
  store i64 %i.ci, ptr %i.ca, align 8, !tbaa !81, !alias.scope !888
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %i.bz, i64 8
  %.pre.i41 = load i64, ptr %.phi.trans.insert.i, align 8, !tbaa !79
  br label %bb.m

bb.m:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i40, %bb.l
  %i.cj = phi i64 [ %i.cf, %bb.l ], [ %.pre.i41, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i40 ]
  %i.ck = getelementptr inbounds nuw i8, ptr %i.bz, i64 8
  %i.cl = getelementptr inbounds nuw i8, ptr %10, i64 8 ; 2 uses
  store i64 %i.cj, ptr %i.cl, align 8, !tbaa !79, !alias.scope !888
  store ptr %i.cc, ptr %i.bz, align 8, !tbaa !82
  store i64 0, ptr %i.ck, align 8, !tbaa !79
  store i8 0, ptr %i.cc, align 8, !tbaa !81
  call void @llvm.experimental.noalias.scope.decl(metadata !889)
  %i.cm = load i64, ptr %i.cl, align 8, !tbaa !79, !noalias !889
  %i.cn = add i64 %i.cm, -4611686018427387897
  %i.co = icmp ult i64 %i.cn, 7
  br i1 %i.co, label %bb.n, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i44

bb.n:                                             ; preds = %bb.m
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.330) #31
          to label %.noexc48 unwind label %bb.ae

.noexc48:                                         ; preds = %bb.n
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i44: ; preds = %bb.m
  %i.cp = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %10, ptr noundef nonnull @.str.297, i64 noundef 7)
          to label %.noexc49 unwind label %bb.ae  ; 6 uses

.noexc49:                                         ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i44
  %i.cq = getelementptr inbounds nuw i8, ptr %9, i64 16 ; 7 uses
  store ptr %i.cq, ptr %9, align 8, !tbaa !80, !alias.scope !889
  %i.cr = load ptr, ptr %i.cp, align 8, !tbaa !82 ; 2 uses
  %i.cs = getelementptr inbounds nuw i8, ptr %i.cp, i64 16 ; 5 uses
  %i.ct = icmp eq ptr %i.cr, %i.cs
  br i1 %i.ct, label %bb.o, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i45

bb.o:                                             ; preds = %.noexc49
  %i.cu = getelementptr inbounds nuw i8, ptr %i.cp, i64 8
  %i.cv = load i64, ptr %i.cu, align 8, !tbaa !79 ; 3 uses
  %i.cw = icmp ult i64 %i.cv, 16
end_hunk_8
begin_hunk_9_@"_ZZN11flatbuffers6Parser10ParseFieldERNS_9StructDefEENK3$_0clEPKNS_8FieldDefERKNS_4TypeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESH_":bb.a
  call void @_ZdlPvm(ptr noundef %i.ic, i64 noundef %i.if) #33
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit121

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit121: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit118, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i119
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #32
  br label %common.resume

.critedge39.thread:                               ; preds = %bb.a, %_ZNK11flatbuffers7EnumDef11FindByValueERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  store i8 0, ptr %0, align 1, !tbaa !212, !alias.scope !894
  %i.ig = getelementptr inbounds nuw i8, ptr %0, i64 1
  store i8 0, ptr %i.ig, align 1, !tbaa !213, !alias.scope !894
  br label %bb.ak

bb.ak:                                            ; preds = %.critedge39.thread, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit97
  ret void
}

; Function Attrs: mustprogress uwtable
declare noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef) local_unnamed_addr #1 align 2

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZN11flatbuffers11SymbolTableINS_5ValueEE3AddERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPS1_(ptr noundef nonnull align 8 dereferenceable(72) %0, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef %2) local_unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 3 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !895  ; 4 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !351
  %.not.i = icmp eq ptr %i.c, %i.e
  br i1 %.not.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  store ptr %2, ptr %i.c, align 8, !tbaa !352
  %i.f = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store ptr %i.f, ptr %i.b, align 8, !tbaa !895
  br label %_ZNSt6vectorIPN11flatbuffers5ValueESaIS2_EE12emplace_backIJRS2_EEES6_DpOT_.exit

bb.c:                                             ; preds = %bb.a
  %i.g = load ptr, ptr %i.a, align 8, !tbaa !353  ; 4 uses
  %i.h = ptrtoint ptr %i.c to i64
  %i.i = ptrtoint ptr %i.g to i64
  %i.j = sub i64 %i.h, %i.i                       ; 6 uses
  %i.k = icmp eq i64 %i.j, 9223372036854775800
  br i1 %i.k, label %bb.d, label %_ZNKSt6vectorIPN11flatbuffers5ValueESaIS2_EE12_M_check_lenEmPKc.exit.i.i

bb.d:                                             ; preds = %bb.c
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.324) #31
  unreachable

_ZNKSt6vectorIPN11flatbuffers5ValueESaIS2_EE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.c
  %i.l = ashr exact i64 %i.j, 3                   ; 3 uses
  %.sroa.speculated.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.l, i64 1)
  %i.m = add nsw i64 %.sroa.speculated.i.i.i, %i.l ; 2 uses
  %i.n = icmp ult i64 %i.m, %i.l
  %i.o = tail call i64 @llvm.umin.i64(i64 %i.m, i64 1152921504606846975)
  %i.p = select i1 %i.n, i64 1152921504606846975, i64 %i.o ; 3 uses
  %.not.i.i.i = icmp ne i64 %i.p, 0
  tail call void @llvm.assume(i1 %.not.i.i.i)
  %i.q = shl nuw nsw i64 %i.p, 3
  %i.r = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.q) #36 ; 4 uses
  %i.s = getelementptr inbounds i8, ptr %i.r, i64 %i.j ; 2 uses
  store ptr %2, ptr %i.s, align 8, !tbaa !352
  %i.t = icmp sgt i64 %i.j, 0
  br i1 %i.t, label %bb.e, label %_ZNSt6vectorIPN11flatbuffers5ValueESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit16.i.i

bb.e:                                             ; preds = %_ZNKSt6vectorIPN11flatbuffers5ValueESaIS2_EE12_M_check_lenEmPKc.exit.i.i
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.r, ptr align 8 %i.g, i64 %i.j, i1 false)
  br label %_ZNSt6vectorIPN11flatbuffers5ValueESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit16.i.i

_ZNSt6vectorIPN11flatbuffers5ValueESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit16.i.i: ; preds = %bb.e, %_ZNKSt6vectorIPN11flatbuffers5ValueESaIS2_EE12_M_check_lenEmPKc.exit.i.i
  %i.u = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  %.not.i17.i.i = icmp eq ptr %i.g, null
  br i1 %.not.i17.i.i, label %_ZNSt6vectorIPN11flatbuffers5ValueESaIS2_EE17_M_realloc_insertIJRS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i, label %bb.f

bb.f:                                             ; preds = %_ZNSt6vectorIPN11flatbuffers5ValueESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit16.i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %i.g, i64 noundef %i.j) #33
  br label %_ZNSt6vectorIPN11flatbuffers5ValueESaIS2_EE17_M_realloc_insertIJRS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i

_ZNSt6vectorIPN11flatbuffers5ValueESaIS2_EE17_M_realloc_insertIJRS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i: ; preds = %bb.f, %_ZNSt6vectorIPN11flatbuffers5ValueESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit16.i.i
  store ptr %i.r, ptr %i.a, align 8, !tbaa !353
  store ptr %i.u, ptr %i.b, align 8, !tbaa !895
  %i.v = getelementptr inbounds nuw [8 x i8], ptr %i.r, i64 %i.p
  store ptr %i.v, ptr %i.d, align 8, !tbaa !351
  br label %_ZNSt6vectorIPN11flatbuffers5ValueESaIS2_EE12emplace_backIJRS2_EEES6_DpOT_.exit

_ZNSt6vectorIPN11flatbuffers5ValueESaIS2_EE12emplace_backIJRS2_EEES6_DpOT_.exit: ; preds = %bb.b, %_ZNSt6vectorIPN11flatbuffers5ValueESaIS2_EE17_M_realloc_insertIJRS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !232  ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %.not10.i.i.i = icmp eq ptr %i.x, null
  br i1 %.not10.i.i.i, label %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPN11flatbuffers5ValueESt4lessIS5_ESaISt4pairIKS5_S8_EEE4findERSC_.exit.thread, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %_ZNSt6vectorIPN11flatbuffers5ValueESaIS2_EE12emplace_backIJRS2_EEES6_DpOT_.exit
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.aa = load i64, ptr %i.z, align 8, !tbaa !79  ; 4 uses
  %i.ab = load ptr, ptr %1, align 8               ; 2 uses
  br label %bb.g

bb.g:                                             ; preds = %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i, %.lr.ph.i.i.i
  %.012.i.i.i = phi ptr [ %i.x, %.lr.ph.i.i.i ], [ %.1.i.i.i, %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i ] ; 4 uses
  %.0811.i.i.i = phi ptr [ %i.y, %.lr.ph.i.i.i ], [ %.19.i.i.i, %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i ]
  %i.ac = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 40
  %i.ad = load i64, ptr %i.ac, align 8, !tbaa !79 ; 2 uses
  %.sroa.speculated.i.i.i.i.i.i = tail call i64 @llvm.umin.i64(i64 %i.aa, i64 %i.ad) ; 2 uses
  %i.ae = icmp eq i64 %.sroa.speculated.i.i.i.i.i.i, 0
  br i1 %i.ae, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i: ; preds = %bb.g
  %i.af = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 32
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !82
  %i.ah = tail call i32 @memcmp(ptr noundef %i.ag, ptr noundef %i.ab, i64 noundef %.sroa.speculated.i.i.i.i.i.i) #32 ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq i32 %i.ah, 0
  br i1 %.not.i.i.i.i.i.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i, label %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i, %bb.g
  %i.ai = sub i64 %i.ad, %i.aa
  %spec.select7.i.i.i.i.i.i.i = tail call i64 @llvm.smax.i64(i64 %i.ai, i64 -2147483648)
  %.08.i.i.i.i.i.i.i = tail call i64 @llvm.smin.i64(i64 %spec.select7.i.i.i.i.i.i.i, i64 2147483647)
  %.0.i6.i.i.i.i.i.i = trunc nsw i64 %.08.i.i.i.i.i.i.i to i32
  br label %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i

_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i
  %.0.i.i.i.i.i.i = phi i32 [ %i.ah, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i ], [ %.0.i6.i.i.i.i.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i ]
  %i.aj = icmp slt i32 %.0.i.i.i.i.i.i, 0         ; 2 uses
  %.19.i.i.i = select i1 %i.aj, ptr %.0811.i.i.i, ptr %.012.i.i.i ; 4 uses
  %.1.in.v.i.i.i = select i1 %i.aj, i64 24, i64 16
  %.1.in.i.i.i = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 %.1.in.v.i.i.i
  %.1.i.i.i = load ptr, ptr %.1.in.i.i.i, align 8, !tbaa !233 ; 2 uses
  %.not.i.i.i4 = icmp eq ptr %.1.i.i.i, null
  br i1 %.not.i.i.i4, label %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_PN11flatbuffers5ValueEESt10_Select1stISB_ESt4lessIS5_ESaISB_EE14_M_lower_boundEPSt13_Rb_tree_nodeISB_EPSt18_Rb_tree_node_baseRS7_.exit.i.i, label %bb.g, !llvm.loop !10

_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_PN11flatbuffers5ValueEESt10_Select1stISB_ESt4lessIS5_ESaISB_EE14_M_lower_boundEPSt13_Rb_tree_nodeISB_EPSt18_Rb_tree_node_baseRS7_.exit.i.i: ; preds = %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i
  %i.ak = icmp eq ptr %.19.i.i.i, %i.y
  br i1 %i.ak, label %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPN11flatbuffers5ValueESt4lessIS5_ESaISt4pairIKS5_S8_EEE4findERSC_.exit.thread, label %bb.h

bb.h:                                             ; preds = %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_PN11flatbuffers5ValueEESt10_Select1stISB_ESt4lessIS5_ESaISB_EE14_M_lower_boundEPSt13_Rb_tree_nodeISB_EPSt18_Rb_tree_node_baseRS7_.exit.i.i
  %i.al = getelementptr inbounds nuw i8, ptr %.19.i.i.i, i64 40
  %i.am = load i64, ptr %i.al, align 8, !tbaa !79 ; 2 uses
  %.sroa.speculated.i.i.i.i.i = tail call i64 @llvm.umin.i64(i64 %i.am, i64 %i.aa) ; 2 uses
  %i.an = icmp eq i64 %.sroa.speculated.i.i.i.i.i, 0
  br i1 %i.an, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i: ; preds = %bb.h
  %i.ao = getelementptr inbounds nuw i8, ptr %.19.i.i.i, i64 32
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !82
  %i.aq = tail call i32 @memcmp(ptr noundef %i.ab, ptr noundef %i.ap, i64 noundef %.sroa.speculated.i.i.i.i.i) #32 ; 2 uses
  %.not.i.i.i.i.i = icmp eq i32 %i.aq, 0
  br i1 %.not.i.i.i.i.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i, label %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPN11flatbuffers5ValueESt4lessIS5_ESaISt4pairIKS5_S8_EEE4findERSC_.exit

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i, %bb.h
  %i.ar = sub i64 %i.aa, %i.am
  %spec.select7.i.i.i.i.i.i = tail call i64 @llvm.smax.i64(i64 %i.ar, i64 -2147483648)
  %.08.i.i.i.i.i.i = tail call i64 @llvm.smin.i64(i64 %spec.select7.i.i.i.i.i.i, i64 2147483647)
  %.0.i6.i.i.i.i.i = trunc nsw i64 %.08.i.i.i.i.i.i to i32
  br label %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPN11flatbuffers5ValueESt4lessIS5_ESaISt4pairIKS5_S8_EEE4findERSC_.exit

_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPN11flatbuffers5ValueESt4lessIS5_ESaISt4pairIKS5_S8_EEE4findERSC_.exit: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i
  %.0.i.i.i.i.i = phi i32 [ %i.aq, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i ], [ %.0.i6.i.i.i.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i ]
  %i.as = icmp slt i32 %.0.i.i.i.i.i, 0
  br i1 %i.as, label %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPN11flatbuffers5ValueESt4lessIS5_ESaISt4pairIKS5_S8_EEE4findERSC_.exit.thread, label %bb.i

_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPN11flatbuffers5ValueESt4lessIS5_ESaISt4pairIKS5_S8_EEE4findERSC_.exit.thread: ; preds = %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_PN11flatbuffers5ValueEESt10_Select1stISB_ESt4lessIS5_ESaISB_EE14_M_lower_boundEPSt13_Rb_tree_nodeISB_EPSt18_Rb_tree_node_baseRS7_.exit.i.i, %_ZNSt6vectorIPN11flatbuffers5ValueESaIS2_EE12emplace_backIJRS2_EEES6_DpOT_.exit, %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPN11flatbuffers5ValueESt4lessIS5_ESaISt4pairIKS5_S8_EEE4findERSC_.exit
  %i.at = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPN11flatbuffers5ValueESt4lessIS5_ESaISt4pairIKS5_S8_EEEixERSC_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 8 dereferenceable(32) %1)
  store ptr %2, ptr %i.at, align 8, !tbaa !352
  br label %bb.i

bb.i:                                             ; preds = %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPN11flatbuffers5ValueESt4lessIS5_ESaISt4pairIKS5_S8_EEE4findERSC_.exit, %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPN11flatbuffers5ValueESt4lessIS5_ESaISt4pairIKS5_S8_EEE4findERSC_.exit.thread
  %i.au = phi i1 [ true, %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPN11flatbuffers5ValueESt4lessIS5_ESaISt4pairIKS5_S8_EEE4findERSC_.exit ], [ false, %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPN11flatbuffers5ValueESt4lessIS5_ESaISt4pairIKS5_S8_EEE4findERSC_.exit.thread ]
  ret i1 %i.au
}

; Function Attrs: mustprogress uwtable
define internal fastcc void @_ZN11flatbuffers12_GLOBAL__N_14atotItEENS_12CheckedErrorEPKcRNS_6ParserEPT_(ptr dead_on_unwind noalias nofree writable writeonly align 1 captures(none) %0, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(1936) %2, ptr nofree noundef nonnull writeonly captures(none) %3) unnamed_addr #1 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %i.b = alloca i64, align 8                      ; 6 uses
  %i.c = alloca ptr, align 8                      ; 5 uses
  %i.d = alloca ptr, align 8                      ; 5 uses
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %6 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  %7 = alloca %"class.std::__cxx11::basic_string", align 8 ; 16 uses
  %8 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %9 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %10 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %11 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  %12 = alloca %"class.std::__cxx11::basic_string", align 8 ; 13 uses
  %i.e = load i8, ptr %1, align 1, !tbaa !81      ; 2 uses
  %.not2533.i.i.i = icmp eq i8 %i.e, 0
  br i1 %.not2533.i.i.i, label %.critedge.thread.i.i.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.a, %bb.b
  %i.f = phi i8 [ %i.i, %bb.b ], [ %i.e, %bb.a ]  ; 2 uses
  %.034.i.i.i = phi ptr [ %i.h, %bb.b ], [ %1, %bb.a ] ; 2 uses
  %13 = add i8 %i.f, -48
  %i.g = icmp ult i8 %13, 10
  br i1 %i.g, label %.critedge.i.i.i, label %bb.b

bb.b:                                             ; preds = %.lr.ph.i.i.i
  %i.h = getelementptr inbounds nuw i8, ptr %.034.i.i.i, i64 1 ; 2 uses
  %i.i = load i8, ptr %i.h, align 1, !tbaa !81    ; 2 uses
  %.not25.i.i.i = icmp eq i8 %i.i, 0
  br i1 %.not25.i.i.i, label %.critedge.thread.i.i.i, label %.lr.ph.i.i.i, !llvm.loop !3

.critedge.i.i.i:                                  ; preds = %.lr.ph.i.i.i
  %i.j = icmp eq i8 %i.f, 48
  br i1 %i.j, label %bb.c, label %.critedge.thread.i.i.i

bb.c:                                             ; preds = %.critedge.i.i.i
  %i.k = getelementptr inbounds nuw i8, ptr %.034.i.i.i, i64 1
  %i.l = load i8, ptr %i.k, align 1, !tbaa !81
  %i.m = and i8 %i.l, -33
  %i.n = icmp eq i8 %i.m, 88
  br i1 %i.n, label %bb.d, label %.critedge.thread.i.i.i

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #32
  store ptr %1, ptr %i.d, align 8, !tbaa !219
  %i.o = load ptr, ptr @_ZN11flatbuffers13ClassicLocale9instance_E, align 8, !tbaa !224
  %i.p = call i64 @__isoc23_strtoll_l(ptr noundef nonnull %1, ptr noundef nonnull %i.d, i32 noundef 16, ptr noundef %i.o) #32, !inline_history !307
  %i.q = load ptr, ptr %i.d, align 8, !tbaa !219  ; 2 uses
  %i.r = load i8, ptr %i.q, align 1, !tbaa !81
  %.not.i.i.i.i = icmp ne i8 %i.r, 0
  %i.s = icmp eq ptr %i.q, %1
  %or.cond.i.i.i.i = or i1 %i.s, %.not.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #32
  br i1 %or.cond.i.i.i.i, label %.thread, label %_ZN11flatbuffers12_GLOBAL__N_111atot_scalarItEEbPKcPT_St17integral_constantIbLb0EE.exit

.critedge.thread.i.i.i:                           ; preds = %bb.b, %bb.c, %.critedge.i.i.i, %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #32
  store ptr %1, ptr %i.c, align 8, !tbaa !219
  %i.t = load ptr, ptr @_ZN11flatbuffers13ClassicLocale9instance_E, align 8, !tbaa !224
  %i.u = call i64 @__isoc23_strtoll_l(ptr noundef nonnull %1, ptr noundef nonnull %i.c, i32 noundef 10, ptr noundef %i.t) #32, !inline_history !307
  %i.v = load ptr, ptr %i.c, align 8, !tbaa !219  ; 2 uses
  %i.w = load i8, ptr %i.v, align 1, !tbaa !81
  %.not.i26.i.i.i = icmp ne i8 %i.w, 0
  %i.x = icmp eq ptr %i.v, %1
  %or.cond.i27.i.i.i = or i1 %i.x, %.not.i26.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #32
  br i1 %or.cond.i27.i.i.i, label %.thread, label %_ZN11flatbuffers12_GLOBAL__N_111atot_scalarItEEbPKcPT_St17integral_constantIbLb0EE.exit

.thread:                                          ; preds = %bb.d, %.critedge.thread.i.i.i
  store i16 0, ptr %3, align 2, !tbaa !254
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #32
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #32
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #32
  %i.y = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 7 uses
  store ptr %i.y, ptr %6, align 8, !tbaa !80
  %i.z = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %1) #32 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #32
  store i64 %i.z, ptr %i.b, align 8, !tbaa !93
  %i.aa = icmp ugt i64 %i.z, 15
  br i1 %i.aa, label %.noexc.i, label %._crit_edge.i.i

_ZN11flatbuffers12_GLOBAL__N_111atot_scalarItEEbPKcPT_St17integral_constantIbLb0EE.exit: ; preds = %bb.d, %.critedge.thread.i.i.i
  %.28.i.i = phi i64 [ %i.p, %bb.d ], [ %i.u, %.critedge.thread.i.i.i ] ; 2 uses
  %or.cond.i.i = icmp ult i64 %.28.i.i, 65536
  %spec.select21.i.i = call i64 @llvm.umin.i64(i64 %.28.i.i, i64 65535)
  %spec.select.i.i = trunc nuw i64 %spec.select21.i.i to i16
  store i16 %spec.select.i.i, ptr %3, align 2, !tbaa !254
  br i1 %or.cond.i.i, label %bb.e, label %bb.s

bb.e:                                             ; preds = %_ZN11flatbuffers12_GLOBAL__N_111atot_scalarItEEbPKcPT_St17integral_constantIbLb0EE.exit
  store i8 0, ptr %0, align 1, !tbaa !212, !alias.scope !910
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 1
  store i8 0, ptr %i.ab, align 1, !tbaa !213, !alias.scope !910
  br label %bb.as

.noexc.i:                                         ; preds = %.thread
  %i.ac = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef nonnull align 8 dereferenceable(8) %i.b, i64 noundef 0)
          to label %.noexc30 unwind label %bb.o   ; 2 uses

.noexc30:                                         ; preds = %.noexc.i
  store ptr %i.ac, ptr %6, align 8, !tbaa !82
  %i.ad = load i64, ptr %i.b, align 8, !tbaa !93
  store i64 %i.ad, ptr %i.y, align 8, !tbaa !81
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %.noexc30, %.thread
  %i.ae = phi ptr [ %i.ac, %.noexc30 ], [ %i.y, %.thread ] ; 2 uses
  switch i64 %i.z, label %bb.g [
    i64 1, label %bb.f
    i64 0, label %bb.h
  ]

bb.f:                                             ; preds = %._crit_edge.i.i
  %i.af = load i8, ptr %1, align 1, !tbaa !81
  store i8 %i.af, ptr %i.ae, align 1, !tbaa !81
  br label %bb.h

bb.g:                                             ; preds = %._crit_edge.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.ae, ptr nonnull align 1 %1, i64 %i.z, i1 false)
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f, %._crit_edge.i.i
  %i.ag = load i64, ptr %i.b, align 8, !tbaa !93  ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %6, i64 8
  store i64 %i.ag, ptr %i.ah, align 8, !tbaa !79
  %i.ai = load ptr, ptr %6, align 8, !tbaa !82
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 %i.ag
  store i8 0, ptr %i.aj, align 1, !tbaa !81
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #32
  %i.ak = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %6, i64 noundef 0, i64 noundef 0, ptr noundef nonnull @.str.333, i64 noundef 17)
          to label %.noexc31 unwind label %bb.p   ; 6 uses

.noexc31:                                         ; preds = %bb.h
  %i.al = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 7 uses
  store ptr %i.al, ptr %5, align 8, !tbaa !80, !alias.scope !911
  %i.am = load ptr, ptr %i.ak, align 8, !tbaa !82 ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %i.ak, i64 16 ; 5 uses
  %i.ao = icmp eq ptr %i.am, %i.an
  br i1 %i.ao, label %bb.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

bb.i:                                             ; preds = %.noexc31
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ak, i64 8
  %i.aq = load i64, ptr %i.ap, align 8, !tbaa !79 ; 3 uses
  %i.ar = icmp ult i64 %i.aq, 16
  call void @llvm.assume(i1 %i.ar)
  %i.as = add nuw nsw i64 %i.aq, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.al, ptr noundef nonnull align 8 dereferenceable(1) %i.an, i64 %i.as, i1 false)
  br label %bb.j

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %.noexc31
  store ptr %i.am, ptr %5, align 8, !tbaa !82, !alias.scope !911
  %i.at = load i64, ptr %i.an, align 8, !tbaa !81
  store i64 %i.at, ptr %i.al, align 8, !tbaa !81, !alias.scope !911
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %i.ak, i64 8
  %.pre.i = load i64, ptr %.phi.trans.insert.i, align 8, !tbaa !79
  br label %bb.j

bb.j:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %bb.i
  %i.au = phi i64 [ %i.aq, %bb.i ], [ %.pre.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ]
  %i.av = getelementptr inbounds nuw i8, ptr %i.ak, i64 8
  %i.aw = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 2 uses
  store i64 %i.au, ptr %i.aw, align 8, !tbaa !79, !alias.scope !911
  store ptr %i.an, ptr %i.ak, align 8, !tbaa !82
  store i64 0, ptr %i.av, align 8, !tbaa !79
  store i8 0, ptr %i.an, align 8, !tbaa !81
  call void @llvm.experimental.noalias.scope.decl(metadata !912)
  %i.ax = load i64, ptr %i.aw, align 8, !tbaa !79, !noalias !912
  %i.ay = icmp eq i64 %i.ax, 4611686018427387903
  br i1 %i.ay, label %bb.k, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i

bb.k:                                             ; preds = %bb.j
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.330) #31
          to label %.noexc35 unwind label %bb.q

.noexc35:                                         ; preds = %bb.k
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i: ; preds = %bb.j
  %i.az = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull @.str.155, i64 noundef 1)
          to label %.noexc36 unwind label %bb.q   ; 6 uses

.noexc36:                                         ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i
  %i.ba = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 7 uses
  store ptr %i.ba, ptr %4, align 8, !tbaa !80, !alias.scope !912
  %i.bb = load ptr, ptr %i.az, align 8, !tbaa !82 ; 2 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %i.az, i64 16 ; 5 uses
  %i.bd = icmp eq ptr %i.bb, %i.bc
  br i1 %i.bd, label %bb.l, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i32

bb.l:                                             ; preds = %.noexc36
  %i.be = getelementptr inbounds nuw i8, ptr %i.az, i64 8
  %i.bf = load i64, ptr %i.be, align 8, !tbaa !79 ; 3 uses
  %i.bg = icmp ult i64 %i.bf, 16
  call void @llvm.assume(i1 %i.bg)
  %i.bh = add nuw nsw i64 %i.bf, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.ba, ptr noundef nonnull align 8 dereferenceable(1) %i.bc, i64 %i.bh, i1 false)
  br label %bb.m

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i32: ; preds = %.noexc36
  store ptr %i.bb, ptr %4, align 8, !tbaa !82, !alias.scope !912
  %i.bi = load i64, ptr %i.bc, align 8, !tbaa !81
  store i64 %i.bi, ptr %i.ba, align 8, !tbaa !81, !alias.scope !912
  %.phi.trans.insert.i33 = getelementptr inbounds nuw i8, ptr %i.az, i64 8
  %.pre.i34 = load i64, ptr %.phi.trans.insert.i33, align 8, !tbaa !79
  br label %bb.m

bb.m:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i32, %bb.l
  %i.bj = phi i64 [ %i.bf, %bb.l ], [ %.pre.i34, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i32 ]
  %i.bk = getelementptr inbounds nuw i8, ptr %i.az, i64 8
  %i.bl = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i64 %i.bj, ptr %i.bl, align 8, !tbaa !79, !alias.scope !912
  store ptr %i.bc, ptr %i.az, align 8, !tbaa !82
  store i64 0, ptr %i.bk, align 8, !tbaa !79
  store i8 0, ptr %i.bc, align 8, !tbaa !81
  invoke void @_ZN11flatbuffers6Parser5ErrorERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr dead_on_unwind writable sret(%"class.flatbuffers::CheckedError") align 1 %0, ptr noundef nonnull align 8 dereferenceable(1936) %2, ptr noundef nonnull align 8 dereferenceable(32) %4)
          to label %bb.n unwind label %bb.r

bb.n:                                             ; preds = %bb.m
  %i.bm = load ptr, ptr %4, align 8, !tbaa !82    ; 2 uses
  %i.bn = icmp eq ptr %i.bm, %i.ba
  br i1 %i.bn, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i37

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i37: ; preds = %bb.n
end_hunk_9
begin_hunk_10_@_ZN11flatbuffers6Parser13ParseAnyValueERNS_5ValueEPNS_8FieldDefEmPKNS_9StructDefEmb:bb.a
  store <2 x i64> %i.nd, ptr %i.nc, align 8, !tbaa !81
  %.not.i302 = icmp eq ptr %i.mj, null
  br i1 %.not.i302, label %bb.cm, label %bb.cl

bb.cl:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i
  store ptr %i.mj, ptr %17, align 8, !tbaa !82
  store i64 %i.na, ptr %i.mn, align 8, !tbaa !81
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit

bb.cm:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i, %.thread.i
  store ptr %i.mn, ptr %17, align 8, !tbaa !82
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i, %bb.cl, %bb.cm
  %i.ne = phi ptr [ %i.mj, %bb.cl ], [ %i.mn, %bb.cm ], [ %.pre.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i ]
  %i.nf = getelementptr inbounds nuw i8, ptr %17, i64 8
  store i64 0, ptr %i.nf, align 8, !tbaa !79
  store i8 0, ptr %i.ne, align 1, !tbaa !81
  %i.ng = load ptr, ptr %17, align 8, !tbaa !82   ; 2 uses
  %i.nh = getelementptr inbounds nuw i8, ptr %17, i64 16 ; 2 uses
  %i.ni = icmp eq ptr %i.ng, %i.nh
  br i1 %i.ni, label %.critedge244, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i303

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i303: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit
  %i.nj = load i64, ptr %i.nh, align 8, !tbaa !81
  %i.nk = add i64 %i.nj, 1
  call void @_ZdlPvm(ptr noundef %i.ng, i64 noundef %i.nk) #33
  br label %.critedge244

.critedge244:                                     ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i303
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #32
  br label %bb.cs

bb.cn:                                            ; preds = %bb.a
  tail call void @_ZN11flatbuffers6Parser10ParseArrayERNS_5ValueE(ptr dead_on_unwind writable sret(%"class.flatbuffers::CheckedError") align 1 %0, ptr noundef nonnull align 8 dereferenceable(1936) %1, ptr noundef nonnull align 8 dereferenceable(66) %2)
  %i.nl = getelementptr inbounds nuw i8, ptr %0, i64 1
  store i8 1, ptr %i.nl, align 1, !tbaa !213
  %i.nm = load i8, ptr %0, align 1, !tbaa !212, !range !208, !noundef !209
  %i.nn = trunc nuw i8 %i.nm to i1
  br i1 %i.nn, label %bb.ct, label %bb.cs

bb.co:                                            ; preds = %bb.a, %bb.a, %bb.a, %bb.a
  %.not192.not = icmp eq ptr %3, null
  br i1 %.not192.not, label %.critedge248.thread, label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %bb.co
  call void @llvm.lifetime.start.p0(ptr nonnull %18) #32
  %i.no = getelementptr inbounds nuw i8, ptr %18, i64 16 ; 4 uses
  store ptr %i.no, ptr %18, align 8, !tbaa !80
  store i32 1752392040, ptr %i.no, align 8
  %i.np = getelementptr inbounds nuw i8, ptr %18, i64 8
  store i64 4, ptr %i.np, align 8, !tbaa !79
  %i.nq = getelementptr inbounds nuw i8, ptr %18, i64 20
  store i8 0, ptr %i.nq, align 4, !tbaa !81
  %i.nr = getelementptr inbounds nuw i8, ptr %3, i64 104
  %i.ns = load ptr, ptr %i.nr, align 8, !tbaa !232 ; 2 uses
  %i.nt = getelementptr inbounds nuw i8, ptr %3, i64 96 ; 2 uses
  %.not10.i.i.i.i307 = icmp eq ptr %i.ns, null
  br i1 %.not10.i.i.i.i307, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit335.thread, label %.lr.ph.i.i.i.i308

.lr.ph.i.i.i.i308:                                ; preds = %._crit_edge.i.i, %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i.i314
  %.012.i.i.i.i309 = phi ptr [ %.1.i.i.i.i319, %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i.i314 ], [ %i.ns, %._crit_edge.i.i ] ; 4 uses
  %.0811.i.i.i.i310 = phi ptr [ %.19.i.i.i.i316, %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i.i314 ], [ %i.nt, %._crit_edge.i.i ]
  %i.nu = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i309, i64 40
  %i.nv = load i64, ptr %i.nu, align 8, !tbaa !79 ; 3 uses
  %i.nw = icmp eq i64 %i.nv, 0
  br i1 %i.nw, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i.i329, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i.i312

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i.i312: ; preds = %.lr.ph.i.i.i.i308
  %.sroa.speculated.i.i.i.i.i.i.i311 = call i64 @llvm.umin.i64(i64 %i.nv, i64 4)
  %i.nx = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i309, i64 32
  %i.ny = load ptr, ptr %i.nx, align 8, !tbaa !82
  %i.nz = call i32 @memcmp(ptr noundef %i.ny, ptr noundef nonnull %i.no, i64 noundef %.sroa.speculated.i.i.i.i.i.i.i311) #32 ; 2 uses
  %.not.i.i.i.i.i.i.i313 = icmp eq i32 %i.nz, 0
  br i1 %.not.i.i.i.i.i.i.i313, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i.i329, label %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i.i314

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i.i329: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i.i312, %.lr.ph.i.i.i.i308
  %i.oa = add i64 %i.nv, -4
  %spec.select7.i.i.i.i.i.i.i.i330 = call i64 @llvm.smax.i64(i64 %i.oa, i64 -2147483648)
  %.08.i.i.i.i.i.i.i.i331 = call i64 @llvm.smin.i64(i64 %spec.select7.i.i.i.i.i.i.i.i330, i64 2147483647)
  %.0.i6.i.i.i.i.i.i.i332 = trunc nsw i64 %.08.i.i.i.i.i.i.i.i331 to i32
  br label %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i.i314

_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i.i314: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i.i329, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i.i312
  %.0.i.i.i.i.i.i.i315 = phi i32 [ %i.nz, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i.i312 ], [ %.0.i6.i.i.i.i.i.i.i332, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i.i329 ]
  %i.ob = icmp slt i32 %.0.i.i.i.i.i.i.i315, 0    ; 2 uses
  %.19.i.i.i.i316 = select i1 %i.ob, ptr %.0811.i.i.i.i310, ptr %.012.i.i.i.i309 ; 5 uses
  %.1.in.v.i.i.i.i317 = select i1 %i.ob, i64 24, i64 16
  %.1.in.i.i.i.i318 = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i309, i64 %.1.in.v.i.i.i.i317
  %.1.i.i.i.i319 = load ptr, ptr %.1.in.i.i.i.i318, align 8, !tbaa !233 ; 2 uses
  %.not.i.i.i.i320 = icmp eq ptr %.1.i.i.i.i319, null
  br i1 %.not.i.i.i.i320, label %_ZNKSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_PN11flatbuffers5ValueEESt10_Select1stISB_ESt4lessIS5_ESaISB_EE14_M_lower_boundEPKSt13_Rb_tree_nodeISB_EPKSt18_Rb_tree_node_baseRS7_.exit.i.i.i, label %.lr.ph.i.i.i.i308, !llvm.loop !6

_ZNKSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_PN11flatbuffers5ValueEESt10_Select1stISB_ESt4lessIS5_ESaISB_EE14_M_lower_boundEPKSt13_Rb_tree_nodeISB_EPKSt18_Rb_tree_node_baseRS7_.exit.i.i.i: ; preds = %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i.i314
  %i.oc = icmp eq ptr %.19.i.i.i.i316, %i.nt
  br i1 %i.oc, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit335.thread, label %bb.cp

bb.cp:                                            ; preds = %_ZNKSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_PN11flatbuffers5ValueEESt10_Select1stISB_ESt4lessIS5_ESaISB_EE14_M_lower_boundEPKSt13_Rb_tree_nodeISB_EPKSt18_Rb_tree_node_baseRS7_.exit.i.i.i
  %i.od = getelementptr inbounds nuw i8, ptr %.19.i.i.i.i316, i64 40
  %i.oe = load i64, ptr %i.od, align 8, !tbaa !79 ; 3 uses
  %i.of = icmp eq i64 %i.oe, 0
  br i1 %i.of, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i325, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i322

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i322: ; preds = %bb.cp
  %.sroa.speculated.i.i.i.i.i.i321 = call i64 @llvm.umin.i64(i64 %i.oe, i64 4)
  %i.og = getelementptr inbounds nuw i8, ptr %.19.i.i.i.i316, i64 32
  %i.oh = load ptr, ptr %i.og, align 8, !tbaa !82
  %i.oi = call i32 @memcmp(ptr noundef nonnull %i.no, ptr noundef %i.oh, i64 noundef %.sroa.speculated.i.i.i.i.i.i321) #32 ; 2 uses
  %.not.i.i.i.i.i.i323 = icmp eq i32 %i.oi, 0
  br i1 %.not.i.i.i.i.i.i323, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i325, label %_ZNKSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPN11flatbuffers5ValueESt4lessIS5_ESaISt4pairIKS5_S8_EEE4findERSC_.exit.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i325: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i322, %bb.cp
  %i.oj = sub i64 4, %i.oe
  %spec.select7.i.i.i.i.i.i.i326 = call i64 @llvm.smax.i64(i64 %i.oj, i64 -2147483648)
  %.08.i.i.i.i.i.i.i327 = call i64 @llvm.smin.i64(i64 %spec.select7.i.i.i.i.i.i.i326, i64 2147483647)
  %.0.i6.i.i.i.i.i.i328 = trunc nsw i64 %.08.i.i.i.i.i.i.i327 to i32
  br label %_ZNKSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPN11flatbuffers5ValueESt4lessIS5_ESaISt4pairIKS5_S8_EEE4findERSC_.exit.i

_ZNKSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPN11flatbuffers5ValueESt4lessIS5_ESaISt4pairIKS5_S8_EEE4findERSC_.exit.i: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i325, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i322
  %.0.i.i.i.i.i.i324 = phi i32 [ %i.oi, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i322 ], [ %.0.i6.i.i.i.i.i.i328, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i325 ]
  %i.ok = icmp slt i32 %.0.i.i.i.i.i.i324, 0
  br i1 %i.ok, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit335.thread, label %_ZNK11flatbuffers11SymbolTableINS_5ValueEE6LookupERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit

_ZNK11flatbuffers11SymbolTableINS_5ValueEE6LookupERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit: ; preds = %_ZNKSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPN11flatbuffers5ValueESt4lessIS5_ESaISt4pairIKS5_S8_EEE4findERSC_.exit.i
  %i.ol = getelementptr inbounds nuw i8, ptr %.19.i.i.i.i316, i64 64
  %i.om = load ptr, ptr %i.ol, align 8, !tbaa !342
  %.not194 = icmp eq ptr %i.om, null
  br i1 %.not194, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit335.thread, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit335

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit335.thread: ; preds = %._crit_edge.i.i, %_ZNK11flatbuffers11SymbolTableINS_5ValueEE6LookupERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit, %_ZNKSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPN11flatbuffers5ValueESt4lessIS5_ESaISt4pairIKS5_S8_EEE4findERSC_.exit.i, %_ZNKSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_PN11flatbuffers5ValueEESt10_Select1stISB_ESt4lessIS5_ESaISB_EE14_M_lower_boundEPKSt13_Rb_tree_nodeISB_EPKSt18_Rb_tree_node_baseRS7_.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #32
  br label %.critedge248.thread

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit335: ; preds = %_ZNK11flatbuffers11SymbolTableINS_5ValueEE6LookupERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit
  %i.on = getelementptr inbounds nuw i8, ptr %1, i64 28
  %i.oo = load i32, ptr %i.on, align 4, !tbaa !228
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #32
  switch i32 %i.oo, label %.critedge248.thread [
    i32 260, label %bb.cq
    i32 257, label %bb.cq
  ]

bb.cq:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit335, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit335
  call void @_ZN11flatbuffers6Parser9ParseHashERNS_5ValueEPNS_8FieldDefE(ptr dead_on_unwind writable sret(%"class.flatbuffers::CheckedError") align 1 %0, ptr noundef nonnull align 8 dereferenceable(1936) %1, ptr noundef nonnull align 8 dereferenceable(66) %2, ptr noundef nonnull %3)
  %i.op = getelementptr inbounds nuw i8, ptr %0, i64 1
  store i8 1, ptr %i.op, align 1, !tbaa !213
  %i.oq = load i8, ptr %0, align 1, !tbaa !212, !range !208, !noundef !209
  %i.or = trunc nuw i8 %i.oq to i1
  br i1 %i.or, label %bb.ct, label %bb.cs

.critedge248.thread:                              ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit335, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit335.thread, %bb.co
  call void @_ZN11flatbuffers6Parser16ParseSingleValueEPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERNS_5ValueEb(ptr dead_on_unwind writable sret(%"class.flatbuffers::CheckedError") align 1 %0, ptr noundef nonnull align 8 dereferenceable(1936) %1, ptr noundef %3, ptr noundef nonnull align 8 dereferenceable(66) %2, i1 noundef zeroext false)
  %i.os = getelementptr inbounds nuw i8, ptr %0, i64 1
  store i8 1, ptr %i.os, align 1, !tbaa !213
  %i.ot = load i8, ptr %0, align 1, !tbaa !212, !range !208, !noundef !209
  %i.ou = trunc nuw i8 %i.ot to i1
  br i1 %i.ou, label %bb.ct, label %bb.cs

bb.cr:                                            ; preds = %bb.a
  tail call void @_ZN11flatbuffers6Parser16ParseSingleValueEPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERNS_5ValueEb(ptr dead_on_unwind writable sret(%"class.flatbuffers::CheckedError") align 1 %0, ptr noundef nonnull align 8 dereferenceable(1936) %1, ptr noundef %3, ptr noundef nonnull align 8 dereferenceable(66) %2, i1 noundef zeroext false)
  %i.ov = getelementptr inbounds nuw i8, ptr %0, i64 1
  store i8 1, ptr %i.ov, align 1, !tbaa !213
  %i.ow = load i8, ptr %0, align 1, !tbaa !212, !range !208, !noundef !209
  %i.ox = trunc nuw i8 %i.ow to i1
  br i1 %i.ox, label %bb.ct, label %bb.cs

bb.cs:                                            ; preds = %.critedge244, %bb.cr, %.critedge248.thread, %bb.cq, %bb.cn, %bb.cf, %bb.ce, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit298
  store i8 0, ptr %0, align 1, !tbaa !212, !alias.scope !961
  %i.oy = getelementptr inbounds nuw i8, ptr %0, i64 1
  store i8 0, ptr %i.oy, align 1, !tbaa !213, !alias.scope !961
  br label %bb.ct

bb.ct:                                            ; preds = %.critedge244.thread, %bb.cr, %.critedge248.thread, %bb.cq, %bb.cn, %bb.cf, %bb.ce, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit298, %bb.cs
  ret void
}

; Function Attrs: mustprogress uwtable
define internal fastcc void @_ZN11flatbuffers12_GLOBAL__N_14atotIjEENS_12CheckedErrorEPKcRNS_6ParserEPT_(ptr dead_on_unwind noalias nofree writable writeonly align 1 captures(none) %0, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(1936) %2, ptr nofree noundef nonnull writeonly captures(none) %3) unnamed_addr #1 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %i.b = alloca i64, align 8                      ; 6 uses
  %i.c = alloca ptr, align 8                      ; 5 uses
  %i.d = alloca ptr, align 8                      ; 5 uses
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %6 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  %7 = alloca %"class.std::__cxx11::basic_string", align 8 ; 16 uses
  %8 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %9 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %10 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %11 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  %12 = alloca %"class.std::__cxx11::basic_string", align 8 ; 13 uses
  %i.e = load i8, ptr %1, align 1, !tbaa !81      ; 2 uses
  %.not2533.i.i.i = icmp eq i8 %i.e, 0
  br i1 %.not2533.i.i.i, label %.critedge.thread.i.i.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.a, %bb.b
  %i.f = phi i8 [ %i.i, %bb.b ], [ %i.e, %bb.a ]  ; 2 uses
  %.034.i.i.i = phi ptr [ %i.h, %bb.b ], [ %1, %bb.a ] ; 2 uses
  %13 = add i8 %i.f, -48
  %i.g = icmp ult i8 %13, 10
  br i1 %i.g, label %.critedge.i.i.i, label %bb.b

bb.b:                                             ; preds = %.lr.ph.i.i.i
  %i.h = getelementptr inbounds nuw i8, ptr %.034.i.i.i, i64 1 ; 2 uses
  %i.i = load i8, ptr %i.h, align 1, !tbaa !81    ; 2 uses
  %.not25.i.i.i = icmp eq i8 %i.i, 0
  br i1 %.not25.i.i.i, label %.critedge.thread.i.i.i, label %.lr.ph.i.i.i, !llvm.loop !3

.critedge.i.i.i:                                  ; preds = %.lr.ph.i.i.i
  %i.j = icmp eq i8 %i.f, 48
  br i1 %i.j, label %bb.c, label %.critedge.thread.i.i.i

bb.c:                                             ; preds = %.critedge.i.i.i
  %i.k = getelementptr inbounds nuw i8, ptr %.034.i.i.i, i64 1
  %i.l = load i8, ptr %i.k, align 1, !tbaa !81
  %i.m = and i8 %i.l, -33
  %i.n = icmp eq i8 %i.m, 88
  br i1 %i.n, label %bb.d, label %.critedge.thread.i.i.i

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #32
  store ptr %1, ptr %i.d, align 8, !tbaa !219
  %i.o = load ptr, ptr @_ZN11flatbuffers13ClassicLocale9instance_E, align 8, !tbaa !224
  %i.p = call i64 @__isoc23_strtoll_l(ptr noundef nonnull %1, ptr noundef nonnull %i.d, i32 noundef 16, ptr noundef %i.o) #32, !inline_history !307
  %i.q = load ptr, ptr %i.d, align 8, !tbaa !219  ; 2 uses
  %i.r = load i8, ptr %i.q, align 1, !tbaa !81
  %.not.i.i.i.i = icmp ne i8 %i.r, 0
  %i.s = icmp eq ptr %i.q, %1
  %or.cond.i.i.i.i = or i1 %i.s, %.not.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #32
  br i1 %or.cond.i.i.i.i, label %.thread, label %_ZN11flatbuffers12_GLOBAL__N_111atot_scalarIjEEbPKcPT_St17integral_constantIbLb0EE.exit

.critedge.thread.i.i.i:                           ; preds = %bb.b, %bb.c, %.critedge.i.i.i, %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #32
  store ptr %1, ptr %i.c, align 8, !tbaa !219
  %i.t = load ptr, ptr @_ZN11flatbuffers13ClassicLocale9instance_E, align 8, !tbaa !224
  %i.u = call i64 @__isoc23_strtoll_l(ptr noundef nonnull %1, ptr noundef nonnull %i.c, i32 noundef 10, ptr noundef %i.t) #32, !inline_history !307
  %i.v = load ptr, ptr %i.c, align 8, !tbaa !219  ; 2 uses
  %i.w = load i8, ptr %i.v, align 1, !tbaa !81
  %.not.i26.i.i.i = icmp ne i8 %i.w, 0
  %i.x = icmp eq ptr %i.v, %1
  %or.cond.i27.i.i.i = or i1 %i.x, %.not.i26.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #32
  br i1 %or.cond.i27.i.i.i, label %.thread, label %_ZN11flatbuffers12_GLOBAL__N_111atot_scalarIjEEbPKcPT_St17integral_constantIbLb0EE.exit

.thread:                                          ; preds = %bb.d, %.critedge.thread.i.i.i
  store i32 0, ptr %3, align 4, !tbaa !221
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #32
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #32
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #32
  %i.y = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 7 uses
  store ptr %i.y, ptr %6, align 8, !tbaa !80
  %i.z = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %1) #32 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #32
  store i64 %i.z, ptr %i.b, align 8, !tbaa !93
  %i.aa = icmp ugt i64 %i.z, 15
  br i1 %i.aa, label %.noexc.i, label %._crit_edge.i.i

_ZN11flatbuffers12_GLOBAL__N_111atot_scalarIjEEbPKcPT_St17integral_constantIbLb0EE.exit: ; preds = %bb.d, %.critedge.thread.i.i.i
  %.28.i.i = phi i64 [ %i.p, %bb.d ], [ %i.u, %.critedge.thread.i.i.i ] ; 2 uses
  %or.cond.i.i = icmp ult i64 %.28.i.i, 4294967296
  %spec.select21.i.i = call i64 @llvm.umin.i64(i64 %.28.i.i, i64 4294967295)
  %spec.select.i.i = trunc nuw i64 %spec.select21.i.i to i32
  store i32 %spec.select.i.i, ptr %3, align 4, !tbaa !221
  br i1 %or.cond.i.i, label %bb.e, label %bb.s

bb.e:                                             ; preds = %_ZN11flatbuffers12_GLOBAL__N_111atot_scalarIjEEbPKcPT_St17integral_constantIbLb0EE.exit
  store i8 0, ptr %0, align 1, !tbaa !212, !alias.scope !976
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 1
  store i8 0, ptr %i.ab, align 1, !tbaa !213, !alias.scope !976
  br label %bb.as

.noexc.i:                                         ; preds = %.thread
  %i.ac = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef nonnull align 8 dereferenceable(8) %i.b, i64 noundef 0)
          to label %.noexc30 unwind label %bb.o   ; 2 uses

.noexc30:                                         ; preds = %.noexc.i
  store ptr %i.ac, ptr %6, align 8, !tbaa !82
  %i.ad = load i64, ptr %i.b, align 8, !tbaa !93
  store i64 %i.ad, ptr %i.y, align 8, !tbaa !81
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %.noexc30, %.thread
  %i.ae = phi ptr [ %i.ac, %.noexc30 ], [ %i.y, %.thread ] ; 2 uses
  switch i64 %i.z, label %bb.g [
    i64 1, label %bb.f
    i64 0, label %bb.h
  ]

bb.f:                                             ; preds = %._crit_edge.i.i
  %i.af = load i8, ptr %1, align 1, !tbaa !81
  store i8 %i.af, ptr %i.ae, align 1, !tbaa !81
  br label %bb.h

bb.g:                                             ; preds = %._crit_edge.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.ae, ptr nonnull align 1 %1, i64 %i.z, i1 false)
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f, %._crit_edge.i.i
  %i.ag = load i64, ptr %i.b, align 8, !tbaa !93  ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %6, i64 8
  store i64 %i.ag, ptr %i.ah, align 8, !tbaa !79
  %i.ai = load ptr, ptr %6, align 8, !tbaa !82
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 %i.ag
  store i8 0, ptr %i.aj, align 1, !tbaa !81
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #32
  %i.ak = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %6, i64 noundef 0, i64 noundef 0, ptr noundef nonnull @.str.333, i64 noundef 17)
          to label %.noexc31 unwind label %bb.p   ; 6 uses

.noexc31:                                         ; preds = %bb.h
  %i.al = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 7 uses
  store ptr %i.al, ptr %5, align 8, !tbaa !80, !alias.scope !977
  %i.am = load ptr, ptr %i.ak, align 8, !tbaa !82 ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %i.ak, i64 16 ; 5 uses
  %i.ao = icmp eq ptr %i.am, %i.an
  br i1 %i.ao, label %bb.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

bb.i:                                             ; preds = %.noexc31
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ak, i64 8
  %i.aq = load i64, ptr %i.ap, align 8, !tbaa !79 ; 3 uses
  %i.ar = icmp ult i64 %i.aq, 16
  call void @llvm.assume(i1 %i.ar)
  %i.as = add nuw nsw i64 %i.aq, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.al, ptr noundef nonnull align 8 dereferenceable(1) %i.an, i64 %i.as, i1 false)
  br label %bb.j

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %.noexc31
  store ptr %i.am, ptr %5, align 8, !tbaa !82, !alias.scope !977
  %i.at = load i64, ptr %i.an, align 8, !tbaa !81
  store i64 %i.at, ptr %i.al, align 8, !tbaa !81, !alias.scope !977
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %i.ak, i64 8
  %.pre.i = load i64, ptr %.phi.trans.insert.i, align 8, !tbaa !79
  br label %bb.j

bb.j:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %bb.i
  %i.au = phi i64 [ %i.aq, %bb.i ], [ %.pre.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ]
  %i.av = getelementptr inbounds nuw i8, ptr %i.ak, i64 8
  %i.aw = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 2 uses
  store i64 %i.au, ptr %i.aw, align 8, !tbaa !79, !alias.scope !977
  store ptr %i.an, ptr %i.ak, align 8, !tbaa !82
  store i64 0, ptr %i.av, align 8, !tbaa !79
  store i8 0, ptr %i.an, align 8, !tbaa !81
  call void @llvm.experimental.noalias.scope.decl(metadata !978)
  %i.ax = load i64, ptr %i.aw, align 8, !tbaa !79, !noalias !978
  %i.ay = icmp eq i64 %i.ax, 4611686018427387903
  br i1 %i.ay, label %bb.k, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i

bb.k:                                             ; preds = %bb.j
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.330) #31
          to label %.noexc35 unwind label %bb.q

.noexc35:                                         ; preds = %bb.k
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i: ; preds = %bb.j
  %i.az = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull @.str.155, i64 noundef 1)
          to label %.noexc36 unwind label %bb.q   ; 6 uses

.noexc36:                                         ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i
  %i.ba = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 7 uses
  store ptr %i.ba, ptr %4, align 8, !tbaa !80, !alias.scope !978
  %i.bb = load ptr, ptr %i.az, align 8, !tbaa !82 ; 2 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %i.az, i64 16 ; 5 uses
  %i.bd = icmp eq ptr %i.bb, %i.bc
  br i1 %i.bd, label %bb.l, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i32

bb.l:                                             ; preds = %.noexc36
  %i.be = getelementptr inbounds nuw i8, ptr %i.az, i64 8
  %i.bf = load i64, ptr %i.be, align 8, !tbaa !79 ; 3 uses
  %i.bg = icmp ult i64 %i.bf, 16
  call void @llvm.assume(i1 %i.bg)
  %i.bh = add nuw nsw i64 %i.bf, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.ba, ptr noundef nonnull align 8 dereferenceable(1) %i.bc, i64 %i.bh, i1 false)
  br label %bb.m

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i32: ; preds = %.noexc36
  store ptr %i.bb, ptr %4, align 8, !tbaa !82, !alias.scope !978
  %i.bi = load i64, ptr %i.bc, align 8, !tbaa !81
  store i64 %i.bi, ptr %i.ba, align 8, !tbaa !81, !alias.scope !978
  %.phi.trans.insert.i33 = getelementptr inbounds nuw i8, ptr %i.az, i64 8
  %.pre.i34 = load i64, ptr %.phi.trans.insert.i33, align 8, !tbaa !79
  br label %bb.m

bb.m:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i32, %bb.l
  %i.bj = phi i64 [ %i.bf, %bb.l ], [ %.pre.i34, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i32 ]
  %i.bk = getelementptr inbounds nuw i8, ptr %i.az, i64 8
  %i.bl = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i64 %i.bj, ptr %i.bl, align 8, !tbaa !79, !alias.scope !978
  store ptr %i.bc, ptr %i.az, align 8, !tbaa !82
  store i64 0, ptr %i.bk, align 8, !tbaa !79
  store i8 0, ptr %i.bc, align 8, !tbaa !81
  invoke void @_ZN11flatbuffers6Parser5ErrorERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr dead_on_unwind writable sret(%"class.flatbuffers::CheckedError") align 1 %0, ptr noundef nonnull align 8 dereferenceable(1936) %2, ptr noundef nonnull align 8 dereferenceable(32) %4)
          to label %bb.n unwind label %bb.r

bb.n:                                             ; preds = %bb.m
  %i.bm = load ptr, ptr %4, align 8, !tbaa !82    ; 2 uses
  %i.bn = icmp eq ptr %i.bm, %i.ba
  br i1 %i.bn, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i37

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i37: ; preds = %bb.n
end_hunk_10
begin_hunk_11_@_ZN11flatbuffers6Parser16SkipAnyJsonValueEv:bb.a
  %i.dg = load ptr, ptr %i.df, align 8, !tbaa !82 ; 2 uses
  %i.dh = load i16, ptr %i.dg, align 1
  %i.di = xor i16 %i.dh, 28265
  %i.dj = getelementptr i8, ptr %i.dg, i64 2
  %i.dk = load i8, ptr %i.dj, align 1
  %i.dl = zext i8 %i.dk to i16
  %i.dm = xor i16 %i.dl, 102
  %i.dn = or i16 %i.di, %i.dm
  %i.do = icmp ne i16 %i.dn, 0
  %i.dp = zext i1 %i.do to i32
  %i.dq = icmp eq i32 %i.dp, 0
  br i1 %i.dq, label %_ZNK11flatbuffers6Parser7IsIdentEPKc.exit.thread49, label %_ZNK11flatbuffers6Parser7IsIdentEPKc.exit72.thread

_ZNK11flatbuffers6Parser7IsIdentEPKc.exit.thread49: ; preds = %_ZNK11flatbuffers6Parser7IsIdentEPKc.exit72, %_ZNK11flatbuffers6Parser7IsIdentEPKc.exit31, %_ZNK11flatbuffers6Parser7IsIdentEPKc.exit29, %_ZNK11flatbuffers6Parser7IsIdentEPKc.exit
  invoke void @_ZN11flatbuffers6Parser4NextEv(ptr dead_on_unwind nonnull writable sret(%"class.flatbuffers::CheckedError") align 1 %0, ptr noundef nonnull align 8 dereferenceable(1936) %1)
          to label %bb.ah unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.ah:                                            ; preds = %_ZNK11flatbuffers6Parser7IsIdentEPKc.exit.thread49
  store i8 1, ptr %i.h, align 1, !tbaa !213
  %i.dr = load i8, ptr %0, align 1, !tbaa !212, !range !208, !noundef !209
  %i.ds = trunc nuw i8 %i.dr to i1
  br i1 %i.ds, label %.critedge, label %bb.ai

_ZNK11flatbuffers6Parser7IsIdentEPKc.exit72.thread: ; preds = %bb.ag, %_ZNK11flatbuffers6Parser7IsIdentEPKc.exit31, %_ZNK11flatbuffers6Parser7IsIdentEPKc.exit29, %bb.c, %_ZNK11flatbuffers6Parser7IsIdentEPKc.exit72
  invoke void @_ZN11flatbuffers6Parser10TokenErrorEv(ptr dead_on_unwind nonnull writable sret(%"class.flatbuffers::CheckedError") align 1 %0, ptr noundef nonnull align 8 dereferenceable(1936) %1)
          to label %.critedge unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.ai:                                            ; preds = %bb.ah, %bb.af
  store i8 0, ptr %0, align 1, !tbaa !212, !alias.scope !1022
  store i8 0, ptr %i.h, align 1, !tbaa !213, !alias.scope !1022
  br label %.critedge

.critedge:                                        ; preds = %.noexc25, %.noexc38, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.jt1, %.noexc24, %.noexc27, %bb.ad, %.noexc21, %.noexc22, %bb.u, %bb.ai, %bb.ah, %bb.af, %_ZN11flatbuffers6Parser15ParseDepthGuard5CheckEv.exit, %_ZNK11flatbuffers6Parser7IsIdentEPKc.exit72.thread
  %i.dt = load i32, ptr %i.a, align 4, !tbaa !214
  %i.du = add nsw i32 %i.dt, -1
  store i32 %i.du, ptr %i.a, align 4, !tbaa !214
  ret void

.body:                                            ; preds = %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit36
  %.pn = phi { ptr, i32 } [ %i.v, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit36 ], [ %lpad.loopexit.split-lp80, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ]
  %i.dv = load i32, ptr %i.a, align 4, !tbaa !214
  %i.dw = add nsw i32 %i.dv, -1
  store i32 %i.dw, ptr %i.a, align 4, !tbaa !214
  resume { ptr, i32 } %.pn
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr dso_local void @_ZN11flatbuffers5ValueC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(66) %0, ptr noundef nonnull align 8 dereferenceable(66) %1) unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %1, i64 32, i1 false), !tbaa.struct !255
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 3 uses
  store ptr %i.d, ptr %i.b, align 8, !tbaa !80
  %i.e = load ptr, ptr %i.c, align 8, !tbaa !82   ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.g = load i64, ptr %i.f, align 8, !tbaa !79   ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #32
  store i64 %i.g, ptr %i.a, align 8, !tbaa !93
  %i.h = icmp ugt i64 %i.g, 15
  br i1 %i.h, label %.noexc.i, label %._crit_edge.i.i

.noexc.i:                                         ; preds = %bb.a
  %i.i = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %i.b, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0) ; 2 uses
  store ptr %i.i, ptr %i.b, align 8, !tbaa !82
  %i.j = load i64, ptr %i.a, align 8, !tbaa !93
  store i64 %i.j, ptr %i.d, align 8, !tbaa !81
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %.noexc.i, %bb.a
  %i.k = phi ptr [ %i.i, %.noexc.i ], [ %i.d, %bb.a ] ; 2 uses
  switch i64 %i.g, label %bb.c [
    i64 1, label %bb.b
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit
  ]

bb.b:                                             ; preds = %._crit_edge.i.i
  %i.l = load i8, ptr %i.e, align 1, !tbaa !81
  store i8 %i.l, ptr %i.k, align 1, !tbaa !81
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit

bb.c:                                             ; preds = %._crit_edge.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.k, ptr align 1 %i.e, i64 %i.g, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit: ; preds = %._crit_edge.i.i, %bb.b, %bb.c
  %i.m = load i64, ptr %i.a, align 8, !tbaa !93   ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i64 %i.m, ptr %i.n, align 8, !tbaa !79
  %i.o = load ptr, ptr %i.b, align 8, !tbaa !82
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 %i.m
  store i8 0, ptr %i.p, align 1, !tbaa !81
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #32
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.s = load i16, ptr %i.r, align 8, !tbaa !329
  store i16 %i.s, ptr %i.q, align 8, !tbaa !329
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(96) ptr @_ZN11flatbuffers11ParserStateaSERKS0_(ptr noundef nonnull align 8 dereferenceable(96) %0, ptr noundef nonnull align 8 dereferenceable(96) %1) local_unnamed_addr #4 comdat align 2 {
bb.a:
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(33) %0, ptr noundef nonnull align 8 dereferenceable(33) %1, i64 33, i1 false)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 40
  tail call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %i.a, ptr noundef nonnull align 8 dereferenceable(32) %i.b)
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.e = tail call noundef nonnull align 8 dereferenceable(24) ptr @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EEaSERKS7_(ptr noundef nonnull align 8 dereferenceable(24) %i.c, ptr noundef nonnull align 8 dereferenceable(24) %i.d) ; 0 uses
  ret ptr %0
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN11flatbuffers11ParserStateD2Ev(ptr noundef nonnull align 8 dead_on_return(96) dereferenceable(96) %0) unnamed_addr #9 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !217  ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !216  ; 2 uses
  %.not4.i.i.i = icmp eq ptr %i.b, %i.d
  br i1 %.not4.i.i.i, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.a, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i
  %.05.i.i.i = phi ptr [ %i.j, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i ], [ %i.b, %bb.a ] ; 3 uses
  %i.e = load ptr, ptr %.05.i.i.i, align 8, !tbaa !82 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 16 ; 2 uses
  %i.g = icmp eq ptr %i.e, %i.f
  br i1 %i.g, label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i
  %i.h = load i64, ptr %i.f, align 8, !tbaa !81
  %i.i = add i64 %i.h, 1
  tail call void @_ZdlPvm(ptr noundef %i.e, i64 noundef %i.i) #33
  br label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i

_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i: ; preds = %.lr.ph.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i
  %i.j = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 32 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.j, %i.d
  br i1 %.not.i.i.i, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i, label %.lr.ph.i.i.i, !llvm.loop !0

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i: ; preds = %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i
  %.pr.i = load ptr, ptr %i.a, align 8, !tbaa !217
  br label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i: ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i, %bb.a
  %i.k = phi ptr [ %.pr.i, %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i ], [ %i.b, %bb.a ] ; 3 uses
  %.not.i.i1.i = icmp eq ptr %i.k, null
  br i1 %.not.i.i1.i, label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !229
  %i.n = ptrtoint ptr %i.m to i64
  %i.o = ptrtoint ptr %i.k to i64
  %i.p = sub i64 %i.n, %i.o
  tail call void @_ZdlPvm(ptr noundef nonnull %i.k, i64 noundef %i.p) #33
  br label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit

_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i, %bb.b
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !82   ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.t = icmp eq ptr %i.r, %i.s
  br i1 %i.t, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit
  %i.u = load i64, ptr %i.s, align 8, !tbaa !81
  %i.v = add i64 %i.u, 1
  tail call void @_ZdlPvm(ptr noundef %i.r, i64 noundef %i.v) #33
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  ret void
}

; Function Attrs: mustprogress uwtable
define internal fastcc void @_ZN11flatbuffers12_GLOBAL__N_14atotIhEENS_12CheckedErrorEPKcRNS_6ParserEPT_(ptr dead_on_unwind noalias nofree writable writeonly align 1 captures(none) %0, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(1936) %2, ptr nofree noundef nonnull writeonly captures(none) %3) unnamed_addr #1 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %i.b = alloca i64, align 8                      ; 6 uses
  %i.c = alloca ptr, align 8                      ; 5 uses
  %i.d = alloca ptr, align 8                      ; 5 uses
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %6 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  %7 = alloca %"class.std::__cxx11::basic_string", align 8 ; 16 uses
  %8 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %9 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %10 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %11 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  %12 = alloca %"class.std::__cxx11::basic_string", align 8 ; 13 uses
  %i.e = load i8, ptr %1, align 1, !tbaa !81      ; 2 uses
  %.not2533.i.i.i = icmp eq i8 %i.e, 0
  br i1 %.not2533.i.i.i, label %.critedge.thread.i.i.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.a, %bb.b
  %i.f = phi i8 [ %i.i, %bb.b ], [ %i.e, %bb.a ]  ; 2 uses
  %.034.i.i.i = phi ptr [ %i.h, %bb.b ], [ %1, %bb.a ] ; 2 uses
  %13 = add i8 %i.f, -48
  %i.g = icmp ult i8 %13, 10
  br i1 %i.g, label %.critedge.i.i.i, label %bb.b

bb.b:                                             ; preds = %.lr.ph.i.i.i
  %i.h = getelementptr inbounds nuw i8, ptr %.034.i.i.i, i64 1 ; 2 uses
  %i.i = load i8, ptr %i.h, align 1, !tbaa !81    ; 2 uses
  %.not25.i.i.i = icmp eq i8 %i.i, 0
  br i1 %.not25.i.i.i, label %.critedge.thread.i.i.i, label %.lr.ph.i.i.i, !llvm.loop !3

.critedge.i.i.i:                                  ; preds = %.lr.ph.i.i.i
  %i.j = icmp eq i8 %i.f, 48
  br i1 %i.j, label %bb.c, label %.critedge.thread.i.i.i

bb.c:                                             ; preds = %.critedge.i.i.i
  %i.k = getelementptr inbounds nuw i8, ptr %.034.i.i.i, i64 1
  %i.l = load i8, ptr %i.k, align 1, !tbaa !81
  %i.m = and i8 %i.l, -33
  %i.n = icmp eq i8 %i.m, 88
  br i1 %i.n, label %bb.d, label %.critedge.thread.i.i.i

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #32
  store ptr %1, ptr %i.d, align 8, !tbaa !219
  %i.o = load ptr, ptr @_ZN11flatbuffers13ClassicLocale9instance_E, align 8, !tbaa !224
  %i.p = call i64 @__isoc23_strtoll_l(ptr noundef nonnull %1, ptr noundef nonnull %i.d, i32 noundef 16, ptr noundef %i.o) #32, !inline_history !307
  %i.q = load ptr, ptr %i.d, align 8, !tbaa !219  ; 2 uses
  %i.r = load i8, ptr %i.q, align 1, !tbaa !81
  %.not.i.i.i.i = icmp ne i8 %i.r, 0
  %i.s = icmp eq ptr %i.q, %1
  %or.cond.i.i.i.i = or i1 %i.s, %.not.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #32
  br i1 %or.cond.i.i.i.i, label %.thread, label %_ZN11flatbuffers12_GLOBAL__N_111atot_scalarIhEEbPKcPT_St17integral_constantIbLb0EE.exit

.critedge.thread.i.i.i:                           ; preds = %bb.b, %bb.c, %.critedge.i.i.i, %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #32
  store ptr %1, ptr %i.c, align 8, !tbaa !219
  %i.t = load ptr, ptr @_ZN11flatbuffers13ClassicLocale9instance_E, align 8, !tbaa !224
  %i.u = call i64 @__isoc23_strtoll_l(ptr noundef nonnull %1, ptr noundef nonnull %i.c, i32 noundef 10, ptr noundef %i.t) #32, !inline_history !307
  %i.v = load ptr, ptr %i.c, align 8, !tbaa !219  ; 2 uses
  %i.w = load i8, ptr %i.v, align 1, !tbaa !81
  %.not.i26.i.i.i = icmp ne i8 %i.w, 0
  %i.x = icmp eq ptr %i.v, %1
  %or.cond.i27.i.i.i = or i1 %i.x, %.not.i26.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #32
  br i1 %or.cond.i27.i.i.i, label %.thread, label %_ZN11flatbuffers12_GLOBAL__N_111atot_scalarIhEEbPKcPT_St17integral_constantIbLb0EE.exit

.thread:                                          ; preds = %bb.d, %.critedge.thread.i.i.i
  store i8 0, ptr %3, align 1, !tbaa !81
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #32
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #32
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #32
  %i.y = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 7 uses
  store ptr %i.y, ptr %6, align 8, !tbaa !80
  %i.z = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %1) #32 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #32
  store i64 %i.z, ptr %i.b, align 8, !tbaa !93
  %i.aa = icmp ugt i64 %i.z, 15
  br i1 %i.aa, label %.noexc.i, label %._crit_edge.i.i

_ZN11flatbuffers12_GLOBAL__N_111atot_scalarIhEEbPKcPT_St17integral_constantIbLb0EE.exit: ; preds = %bb.d, %.critedge.thread.i.i.i
  %.28.i.i = phi i64 [ %i.p, %bb.d ], [ %i.u, %.critedge.thread.i.i.i ] ; 2 uses
  %or.cond.i.i = icmp ult i64 %.28.i.i, 256
  %spec.select21.i.i = call i64 @llvm.umin.i64(i64 %.28.i.i, i64 255)
  %spec.select.i.i = trunc nuw i64 %spec.select21.i.i to i8
  store i8 %spec.select.i.i, ptr %3, align 1, !tbaa !81
  br i1 %or.cond.i.i, label %bb.e, label %bb.s

bb.e:                                             ; preds = %_ZN11flatbuffers12_GLOBAL__N_111atot_scalarIhEEbPKcPT_St17integral_constantIbLb0EE.exit
  store i8 0, ptr %0, align 1, !tbaa !212, !alias.scope !1037
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 1
  store i8 0, ptr %i.ab, align 1, !tbaa !213, !alias.scope !1037
  br label %bb.as

.noexc.i:                                         ; preds = %.thread
  %i.ac = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef nonnull align 8 dereferenceable(8) %i.b, i64 noundef 0)
          to label %.noexc30 unwind label %bb.o   ; 2 uses

.noexc30:                                         ; preds = %.noexc.i
  store ptr %i.ac, ptr %6, align 8, !tbaa !82
  %i.ad = load i64, ptr %i.b, align 8, !tbaa !93
  store i64 %i.ad, ptr %i.y, align 8, !tbaa !81
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %.noexc30, %.thread
  %i.ae = phi ptr [ %i.ac, %.noexc30 ], [ %i.y, %.thread ] ; 2 uses
  switch i64 %i.z, label %bb.g [
    i64 1, label %bb.f
    i64 0, label %bb.h
  ]

bb.f:                                             ; preds = %._crit_edge.i.i
  %i.af = load i8, ptr %1, align 1, !tbaa !81
  store i8 %i.af, ptr %i.ae, align 1, !tbaa !81
  br label %bb.h

bb.g:                                             ; preds = %._crit_edge.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.ae, ptr nonnull align 1 %1, i64 %i.z, i1 false)
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f, %._crit_edge.i.i
  %i.ag = load i64, ptr %i.b, align 8, !tbaa !93  ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %6, i64 8
  store i64 %i.ag, ptr %i.ah, align 8, !tbaa !79
  %i.ai = load ptr, ptr %6, align 8, !tbaa !82
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 %i.ag
  store i8 0, ptr %i.aj, align 1, !tbaa !81
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #32
  %i.ak = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %6, i64 noundef 0, i64 noundef 0, ptr noundef nonnull @.str.333, i64 noundef 17)
          to label %.noexc31 unwind label %bb.p   ; 6 uses

.noexc31:                                         ; preds = %bb.h
  %i.al = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 7 uses
  store ptr %i.al, ptr %5, align 8, !tbaa !80, !alias.scope !1038
  %i.am = load ptr, ptr %i.ak, align 8, !tbaa !82 ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %i.ak, i64 16 ; 5 uses
  %i.ao = icmp eq ptr %i.am, %i.an
  br i1 %i.ao, label %bb.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

bb.i:                                             ; preds = %.noexc31
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ak, i64 8
  %i.aq = load i64, ptr %i.ap, align 8, !tbaa !79 ; 3 uses
  %i.ar = icmp ult i64 %i.aq, 16
  call void @llvm.assume(i1 %i.ar)
  %i.as = add nuw nsw i64 %i.aq, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.al, ptr noundef nonnull align 8 dereferenceable(1) %i.an, i64 %i.as, i1 false)
  br label %bb.j

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %.noexc31
  store ptr %i.am, ptr %5, align 8, !tbaa !82, !alias.scope !1038
  %i.at = load i64, ptr %i.an, align 8, !tbaa !81
  store i64 %i.at, ptr %i.al, align 8, !tbaa !81, !alias.scope !1038
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %i.ak, i64 8
  %.pre.i = load i64, ptr %.phi.trans.insert.i, align 8, !tbaa !79
  br label %bb.j

bb.j:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %bb.i
  %i.au = phi i64 [ %i.aq, %bb.i ], [ %.pre.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ]
  %i.av = getelementptr inbounds nuw i8, ptr %i.ak, i64 8
  %i.aw = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 2 uses
  store i64 %i.au, ptr %i.aw, align 8, !tbaa !79, !alias.scope !1038
  store ptr %i.an, ptr %i.ak, align 8, !tbaa !82
  store i64 0, ptr %i.av, align 8, !tbaa !79
  store i8 0, ptr %i.an, align 8, !tbaa !81
  call void @llvm.experimental.noalias.scope.decl(metadata !1039)
  %i.ax = load i64, ptr %i.aw, align 8, !tbaa !79, !noalias !1039
  %i.ay = icmp eq i64 %i.ax, 4611686018427387903
  br i1 %i.ay, label %bb.k, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i

bb.k:                                             ; preds = %bb.j
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.330) #31
          to label %.noexc35 unwind label %bb.q

.noexc35:                                         ; preds = %bb.k
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i: ; preds = %bb.j
  %i.az = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull @.str.155, i64 noundef 1)
          to label %.noexc36 unwind label %bb.q   ; 6 uses

.noexc36:                                         ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i
  %i.ba = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 7 uses
  store ptr %i.ba, ptr %4, align 8, !tbaa !80, !alias.scope !1039
  %i.bb = load ptr, ptr %i.az, align 8, !tbaa !82 ; 2 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %i.az, i64 16 ; 5 uses
  %i.bd = icmp eq ptr %i.bb, %i.bc
  br i1 %i.bd, label %bb.l, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i32

bb.l:                                             ; preds = %.noexc36
  %i.be = getelementptr inbounds nuw i8, ptr %i.az, i64 8
  %i.bf = load i64, ptr %i.be, align 8, !tbaa !79 ; 3 uses
  %i.bg = icmp ult i64 %i.bf, 16
  call void @llvm.assume(i1 %i.bg)
  %i.bh = add nuw nsw i64 %i.bf, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.ba, ptr noundef nonnull align 8 dereferenceable(1) %i.bc, i64 %i.bh, i1 false)
  br label %bb.m

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i32: ; preds = %.noexc36
  store ptr %i.bb, ptr %4, align 8, !tbaa !82, !alias.scope !1039
  %i.bi = load i64, ptr %i.bc, align 8, !tbaa !81
  store i64 %i.bi, ptr %i.ba, align 8, !tbaa !81, !alias.scope !1039
  %.phi.trans.insert.i33 = getelementptr inbounds nuw i8, ptr %i.az, i64 8
  %.pre.i34 = load i64, ptr %.phi.trans.insert.i33, align 8, !tbaa !79
  br label %bb.m

bb.m:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i32, %bb.l
  %i.bj = phi i64 [ %i.bf, %bb.l ], [ %.pre.i34, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i32 ]
  %i.bk = getelementptr inbounds nuw i8, ptr %i.az, i64 8
  %i.bl = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i64 %i.bj, ptr %i.bl, align 8, !tbaa !79, !alias.scope !1039
  store ptr %i.bc, ptr %i.az, align 8, !tbaa !82
  store i64 0, ptr %i.bk, align 8, !tbaa !79
  store i8 0, ptr %i.bc, align 8, !tbaa !81
  invoke void @_ZN11flatbuffers6Parser5ErrorERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr dead_on_unwind writable sret(%"class.flatbuffers::CheckedError") align 1 %0, ptr noundef nonnull align 8 dereferenceable(1936) %2, ptr noundef nonnull align 8 dereferenceable(32) %4)
          to label %bb.n unwind label %bb.r

bb.n:                                             ; preds = %bb.m
  %i.bm = load ptr, ptr %4, align 8, !tbaa !82    ; 2 uses
  %i.bn = icmp eq ptr %i.bm, %i.ba
  br i1 %i.bn, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i37

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i37: ; preds = %bb.n
end_hunk_11
begin_hunk_12_@_ZN11flatbuffers6Parser15SerializeStructERNS_21FlatBufferBuilderImplILb0EEERKNS_9StructDefERKNS_5ValueE:bb.a
  %.pre4.i.i.i = load ptr, ptr %.phi.trans.insert.i.i.i, align 8, !tbaa !359 ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !365
  %i.n = ptrtoint ptr %.pre4.i.i.i to i64
  %i.o = ptrtoint ptr %i.m to i64
  %i.p = sub i64 %i.n, %i.o
  %i.q = and i64 %i.p, 4294967295
  %i.r = icmp ugt i64 %i.k, %i.q
  br i1 %i.r, label %bb.d, label %.lr.ph.preheader.i.i

bb.d:                                             ; preds = %bb.c
  tail call void @_ZN11flatbuffers15vector_downwardIjE10reallocateEm(ptr noundef nonnull align 8 dereferenceable(128) %1, i64 noundef %i.k)
  %.pre.i.i.i = load ptr, ptr %.phi.trans.insert.i.i.i, align 8, !tbaa !359
  %.pre.i = load i32, ptr %i.f, align 8, !tbaa !354
  br label %.lr.ph.preheader.i.i

.lr.ph.preheader.i.i:                             ; preds = %bb.d, %bb.c
  %i.s = phi i32 [ %i.g, %bb.c ], [ %.pre.i, %bb.d ]
  %i.t = phi ptr [ %.pre4.i.i.i, %bb.c ], [ %.pre.i.i.i, %bb.d ]
  %i.u = sub i64 0, %i.k
  %i.v = getelementptr inbounds i8, ptr %i.t, i64 %i.u
  store ptr %i.v, ptr %.phi.trans.insert.i.i.i, align 8, !tbaa !359
  %i.w = trunc i64 %i.k to i32
  %i.x = add i32 %i.s, %i.w
  store i32 %i.x, ptr %i.f, align 8, !tbaa !354
  %xtraiter = and i64 %i.k, 3                     ; 3 uses
  %i.y = icmp ult i64 %i.k, 4
  br i1 %i.y, label %.lr.ph.i.i.epil.preheader, label %.lr.ph.preheader.i.i.new

.lr.ph.preheader.i.i.new:                         ; preds = %.lr.ph.preheader.i.i
  %unroll_iter = and i64 %i.k, -4
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i, %.lr.ph.preheader.i.i.new
  %.05.i.i = phi i64 [ 0, %.lr.ph.preheader.i.i.new ], [ %i.ak, %.lr.ph.i.i ] ; 5 uses
  %niter = phi i64 [ 0, %.lr.ph.preheader.i.i.new ], [ %niter.next.3, %.lr.ph.i.i ]
  %i.z = load ptr, ptr %.phi.trans.insert.i.i.i, align 8, !tbaa !359
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 %.05.i.i
  store i8 0, ptr %i.aa, align 1, !tbaa !81
  %i.ab = load ptr, ptr %.phi.trans.insert.i.i.i, align 8, !tbaa !359
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 %.05.i.i
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 1
  store i8 0, ptr %i.ad, align 1, !tbaa !81
  %i.ae = load ptr, ptr %.phi.trans.insert.i.i.i, align 8, !tbaa !359
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 %.05.i.i
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 2
  store i8 0, ptr %i.ag, align 1, !tbaa !81
  %i.ah = load ptr, ptr %.phi.trans.insert.i.i.i, align 8, !tbaa !359
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 %.05.i.i
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 3
  store i8 0, ptr %i.aj, align 1, !tbaa !81
  %i.ak = add nuw i64 %.05.i.i, 4                 ; 2 uses
  %niter.next.3 = add nuw i64 %niter, 4           ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %_ZN11flatbuffers21FlatBufferBuilderImplILb0EE5AlignEm.exit.loopexit.unr-lcssa, label %.lr.ph.i.i, !llvm.loop !12

_ZN11flatbuffers21FlatBufferBuilderImplILb0EE5AlignEm.exit.loopexit.unr-lcssa: ; preds = %.lr.ph.i.i
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %_ZN11flatbuffers21FlatBufferBuilderImplILb0EE5AlignEm.exit, label %.lr.ph.i.i.epil.preheader

.lr.ph.i.i.epil.preheader:                        ; preds = %_ZN11flatbuffers21FlatBufferBuilderImplILb0EE5AlignEm.exit.loopexit.unr-lcssa, %.lr.ph.preheader.i.i
  %.05.i.i.epil.init = phi i64 [ 0, %.lr.ph.preheader.i.i ], [ %i.ak, %_ZN11flatbuffers21FlatBufferBuilderImplILb0EE5AlignEm.exit.loopexit.unr-lcssa ]
  %lcmp.mod15 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod15)
  br label %.lr.ph.i.i.epil

.lr.ph.i.i.epil:                                  ; preds = %.lr.ph.i.i.epil, %.lr.ph.i.i.epil.preheader
  %.05.i.i.epil = phi i64 [ %i.an, %.lr.ph.i.i.epil ], [ %.05.i.i.epil.init, %.lr.ph.i.i.epil.preheader ] ; 2 uses
  %epil.iter = phi i64 [ %epil.iter.next, %.lr.ph.i.i.epil ], [ 0, %.lr.ph.i.i.epil.preheader ]
  %i.al = load ptr, ptr %.phi.trans.insert.i.i.i, align 8, !tbaa !359
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 %.05.i.i.epil
  store i8 0, ptr %i.am, align 1, !tbaa !81
  %i.an = add nuw i64 %.05.i.i.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %_ZN11flatbuffers21FlatBufferBuilderImplILb0EE5AlignEm.exit, label %.lr.ph.i.i.epil, !llvm.loop !1334

_ZN11flatbuffers21FlatBufferBuilderImplILb0EE5AlignEm.exit: ; preds = %_ZN11flatbuffers21FlatBufferBuilderImplILb0EE5AlignEm.exit.loopexit.unr-lcssa, %.lr.ph.i.i.epil, %_ZN11flatbuffers21FlatBufferBuilderImplILb0EE13TrackMinAlignEm.exit.i
  %i.ao = getelementptr inbounds nuw i8, ptr %3, i64 32
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !82
  %i.aq = getelementptr inbounds nuw i8, ptr %2, i64 288
  %i.ar = load i64, ptr %i.aq, align 8, !tbaa !303 ; 6 uses
  %.not.i.i = icmp eq i64 %i.ar, 0
  br i1 %.not.i.i, label %_ZN11flatbuffers21FlatBufferBuilderImplILb0EE9PushBytesEPKhm.exit, label %bb.e

bb.e:                                             ; preds = %_ZN11flatbuffers21FlatBufferBuilderImplILb0EE5AlignEm.exit
  %.pre4.i.i.i9 = load ptr, ptr %.phi.trans.insert.i.i.i, align 8, !tbaa !359 ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !365
  %i.au = ptrtoint ptr %.pre4.i.i.i9 to i64
  %i.av = ptrtoint ptr %i.at to i64
  %i.aw = sub i64 %i.au, %i.av
  %i.ax = and i64 %i.aw, 4294967295
  %i.ay = icmp ugt i64 %i.ar, %i.ax
  br i1 %i.ay, label %bb.f, label %_ZN11flatbuffers15vector_downwardIjE10make_spaceEm.exit.i.i

bb.f:                                             ; preds = %bb.e
  tail call void @_ZN11flatbuffers15vector_downwardIjE10reallocateEm(ptr noundef nonnull align 8 dereferenceable(128) %1, i64 noundef %i.ar)
  %.pre.i.i.i10 = load ptr, ptr %.phi.trans.insert.i.i.i, align 8, !tbaa !359
  br label %_ZN11flatbuffers15vector_downwardIjE10make_spaceEm.exit.i.i

_ZN11flatbuffers15vector_downwardIjE10make_spaceEm.exit.i.i: ; preds = %bb.f, %bb.e
  %i.az = phi ptr [ %.pre4.i.i.i9, %bb.e ], [ %.pre.i.i.i10, %bb.f ]
  %i.ba = sub i64 0, %i.ar
  %i.bb = getelementptr inbounds i8, ptr %i.az, i64 %i.ba ; 2 uses
  store ptr %i.bb, ptr %.phi.trans.insert.i.i.i, align 8, !tbaa !359
  %i.bc = trunc i64 %i.ar to i32
  %i.bd = load i32, ptr %i.f, align 8, !tbaa !354
  %i.be = add i32 %i.bd, %i.bc
  store i32 %i.be, ptr %i.f, align 8, !tbaa !354
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.bb, ptr align 1 %i.ap, i64 %i.ar, i1 false)
  br label %_ZN11flatbuffers21FlatBufferBuilderImplILb0EE9PushBytesEPKhm.exit

_ZN11flatbuffers21FlatBufferBuilderImplILb0EE9PushBytesEPKhm.exit: ; preds = %_ZN11flatbuffers21FlatBufferBuilderImplILb0EE5AlignEm.exit, %_ZN11flatbuffers15vector_downwardIjE10make_spaceEm.exit.i.i
  %i.bf = getelementptr inbounds nuw i8, ptr %3, i64 64
  %i.bg = load i16, ptr %i.bf, align 8, !tbaa !329 ; 3 uses
  %i.bh = load i32, ptr %i.f, align 8, !tbaa !354
  %i.bi = load ptr, ptr %.phi.trans.insert.i.i.i, align 8, !tbaa !359
  %i.bj = getelementptr inbounds nuw i8, ptr %1, i64 72 ; 4 uses
  %i.bk = load ptr, ptr %i.bj, align 8, !tbaa !365 ; 2 uses
  %i.bl = ptrtoint ptr %i.bi to i64
  %i.bm = ptrtoint ptr %i.bk to i64
  %i.bn = sub i64 %i.bl, %i.bm
  %i.bo = and i64 %i.bn, 4294967288
  %i.bp = icmp eq i64 %i.bo, 0
  br i1 %i.bp, label %bb.g, label %_ZN11flatbuffers15vector_downwardIjE18scratch_push_smallINS_21FlatBufferBuilderImplILb0EE8FieldLocEEEvRKT_.exit.i.i

bb.g:                                             ; preds = %_ZN11flatbuffers21FlatBufferBuilderImplILb0EE9PushBytesEPKhm.exit
  tail call void @_ZN11flatbuffers15vector_downwardIjE10reallocateEm(ptr noundef nonnull align 8 dereferenceable(128) %1, i64 noundef 8)
  %.pre.i.i.i11 = load ptr, ptr %i.bj, align 8, !tbaa !365
  br label %_ZN11flatbuffers15vector_downwardIjE18scratch_push_smallINS_21FlatBufferBuilderImplILb0EE8FieldLocEEEvRKT_.exit.i.i

_ZN11flatbuffers15vector_downwardIjE18scratch_push_smallINS_21FlatBufferBuilderImplILb0EE8FieldLocEEEvRKT_.exit.i.i: ; preds = %bb.g, %_ZN11flatbuffers21FlatBufferBuilderImplILb0EE9PushBytesEPKhm.exit
  %i.bq = phi ptr [ %i.bk, %_ZN11flatbuffers21FlatBufferBuilderImplILb0EE9PushBytesEPKhm.exit ], [ %.pre.i.i.i11, %bb.g ]
  %.sroa.4.0.insert.ext.i.i = zext i16 %i.bg to i64
  %.sroa.4.0.insert.shift.i.i = shl nuw nsw i64 %.sroa.4.0.insert.ext.i.i, 32
  %.sroa.0.0.insert.ext.i.i = zext i32 %i.bh to i64
  %.sroa.0.0.insert.insert.i.i = or disjoint i64 %.sroa.4.0.insert.shift.i.i, %.sroa.0.0.insert.ext.i.i
  store i64 %.sroa.0.0.insert.insert.i.i, ptr %i.bq, align 4
  %i.br = load ptr, ptr %i.bj, align 8, !tbaa !365
  %i.bs = getelementptr inbounds nuw i8, ptr %i.br, i64 8
  store ptr %i.bs, ptr %i.bj, align 8, !tbaa !365
  %i.bt = getelementptr inbounds nuw i8, ptr %1, i64 80 ; 2 uses
  %i.bu = load i32, ptr %i.bt, align 8, !tbaa !364
  %i.bv = add i32 %i.bu, 1
  store i32 %i.bv, ptr %i.bt, align 8, !tbaa !364
  %i.bw = getelementptr inbounds nuw i8, ptr %1, i64 84 ; 2 uses
  %i.bx = load i16, ptr %i.bw, align 4, !tbaa !366
  %i.by = icmp ugt i16 %i.bg, %i.bx
  br i1 %i.by, label %bb.h, label %_ZN11flatbuffers21FlatBufferBuilderImplILb0EE15AddStructOffsetEtj.exit

bb.h:                                             ; preds = %_ZN11flatbuffers15vector_downwardIjE18scratch_push_smallINS_21FlatBufferBuilderImplILb0EE8FieldLocEEEvRKT_.exit.i.i
  store i16 %i.bg, ptr %i.bw, align 4, !tbaa !366
  br label %_ZN11flatbuffers21FlatBufferBuilderImplILb0EE15AddStructOffsetEtj.exit

_ZN11flatbuffers21FlatBufferBuilderImplILb0EE15AddStructOffsetEtj.exit: ; preds = %_ZN11flatbuffers15vector_downwardIjE18scratch_push_smallINS_21FlatBufferBuilderImplILb0EE8FieldLocEEEvRKT_.exit.i.i, %bb.h
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local noundef i64 @_ZN11flatbuffers6SizeOfENS_8BaseTypeE(i32 noundef %0) local_unnamed_addr #9 comdat {
bb.a:
  %i.a = icmp ult i32 %0, 19
  br i1 %i.a, label %switch.lookup, label %bb.b

switch.lookup:                                    ; preds = %bb.a
  %i.b = zext nneg i32 %0 to i64
  %switch.gep = getelementptr inbounds nuw i8, ptr @switch.table._ZNK11flatbuffers4Type9SerializeEPNS_21FlatBufferBuilderImplILb0EEE, i64 %i.b
  %switch.load = load i8, ptr %switch.gep, align 1
  %switch.ext = zext i8 %switch.load to i64
  br label %bb.b

bb.b:                                             ; preds = %bb.a, %switch.lookup
  %.0 = phi i64 [ %switch.ext, %switch.lookup ], [ 0, %bb.a ]
  ret i64 %.0
}

; Function Attrs: mustprogress uwtable
define internal fastcc void @_ZN11flatbuffers12_GLOBAL__N_14atotIaEENS_12CheckedErrorEPKcRNS_6ParserEPT_(ptr dead_on_unwind noalias nofree writable writeonly align 1 captures(none) %0, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(1936) %2, ptr nofree noundef nonnull writeonly captures(none) %3) unnamed_addr #1 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %i.b = alloca i64, align 8                      ; 6 uses
  %i.c = alloca ptr, align 8                      ; 5 uses
  %i.d = alloca ptr, align 8                      ; 5 uses
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %6 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  %7 = alloca %"class.std::__cxx11::basic_string", align 8 ; 16 uses
  %8 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %9 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %10 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %11 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  %12 = alloca %"class.std::__cxx11::basic_string", align 8 ; 13 uses
  %i.e = load i8, ptr %1, align 1, !tbaa !81      ; 2 uses
  %.not2533.i.i.i = icmp eq i8 %i.e, 0
  br i1 %.not2533.i.i.i, label %.critedge.thread.i.i.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.a, %bb.b
  %i.f = phi i8 [ %i.i, %bb.b ], [ %i.e, %bb.a ]  ; 2 uses
  %.034.i.i.i = phi ptr [ %i.h, %bb.b ], [ %1, %bb.a ] ; 2 uses
  %13 = add i8 %i.f, -48
  %i.g = icmp ult i8 %13, 10
  br i1 %i.g, label %.critedge.i.i.i, label %bb.b

bb.b:                                             ; preds = %.lr.ph.i.i.i
  %i.h = getelementptr inbounds nuw i8, ptr %.034.i.i.i, i64 1 ; 2 uses
  %i.i = load i8, ptr %i.h, align 1, !tbaa !81    ; 2 uses
  %.not25.i.i.i = icmp eq i8 %i.i, 0
  br i1 %.not25.i.i.i, label %.critedge.thread.i.i.i, label %.lr.ph.i.i.i, !llvm.loop !3

.critedge.i.i.i:                                  ; preds = %.lr.ph.i.i.i
  %i.j = icmp eq i8 %i.f, 48
  br i1 %i.j, label %bb.c, label %.critedge.thread.i.i.i

bb.c:                                             ; preds = %.critedge.i.i.i
  %i.k = getelementptr inbounds nuw i8, ptr %.034.i.i.i, i64 1
  %i.l = load i8, ptr %i.k, align 1, !tbaa !81
  %i.m = and i8 %i.l, -33
  %i.n = icmp eq i8 %i.m, 88
  br i1 %i.n, label %bb.d, label %.critedge.thread.i.i.i

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #32
  store ptr %1, ptr %i.d, align 8, !tbaa !219
  %i.o = load ptr, ptr @_ZN11flatbuffers13ClassicLocale9instance_E, align 8, !tbaa !224
  %i.p = call i64 @__isoc23_strtoll_l(ptr noundef nonnull %1, ptr noundef nonnull %i.d, i32 noundef 16, ptr noundef %i.o) #32, !inline_history !307
  %i.q = load ptr, ptr %i.d, align 8, !tbaa !219  ; 2 uses
  %i.r = load i8, ptr %i.q, align 1, !tbaa !81
  %.not.i.i.i.i = icmp ne i8 %i.r, 0
  %i.s = icmp eq ptr %i.q, %1
  %or.cond.i.i.i.i = or i1 %i.s, %.not.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #32
  br i1 %or.cond.i.i.i.i, label %_ZN11flatbuffers12_GLOBAL__N_111atot_scalarIaEEbPKcPT_St17integral_constantIbLb0EE.exit.thread, label %_ZN11flatbuffers19StringToIntegerImplIlEEbPT_PKcib.exit.thread.i.i

.critedge.thread.i.i.i:                           ; preds = %bb.b, %bb.c, %.critedge.i.i.i, %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #32
  store ptr %1, ptr %i.c, align 8, !tbaa !219
  %i.t = load ptr, ptr @_ZN11flatbuffers13ClassicLocale9instance_E, align 8, !tbaa !224
  %i.u = call i64 @__isoc23_strtoll_l(ptr noundef nonnull %1, ptr noundef nonnull %i.c, i32 noundef 10, ptr noundef %i.t) #32, !inline_history !307
  %i.v = load ptr, ptr %i.c, align 8, !tbaa !219  ; 2 uses
  %i.w = load i8, ptr %i.v, align 1, !tbaa !81
  %.not.i26.i.i.i = icmp ne i8 %i.w, 0
  %i.x = icmp eq ptr %i.v, %1
  %or.cond.i27.i.i.i = or i1 %i.x, %.not.i26.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #32
  br i1 %or.cond.i27.i.i.i, label %_ZN11flatbuffers12_GLOBAL__N_111atot_scalarIaEEbPKcPT_St17integral_constantIbLb0EE.exit.thread, label %_ZN11flatbuffers19StringToIntegerImplIlEEbPT_PKcib.exit.thread.i.i

_ZN11flatbuffers19StringToIntegerImplIlEEbPT_PKcib.exit.thread.i.i: ; preds = %.critedge.thread.i.i.i, %bb.d
  %.28.i.i = phi i64 [ %i.p, %bb.d ], [ %i.u, %.critedge.thread.i.i.i ] ; 3 uses
  %i.y = icmp sgt i64 %.28.i.i, 127
  br i1 %i.y, label %_ZN11flatbuffers12_GLOBAL__N_111atot_scalarIaEEbPKcPT_St17integral_constantIbLb0EE.exit.thread, label %_ZN11flatbuffers12_GLOBAL__N_111atot_scalarIaEEbPKcPT_St17integral_constantIbLb0EE.exit

_ZN11flatbuffers12_GLOBAL__N_111atot_scalarIaEEbPKcPT_St17integral_constantIbLb0EE.exit.thread: ; preds = %_ZN11flatbuffers19StringToIntegerImplIlEEbPT_PKcib.exit.thread.i.i, %.critedge.thread.i.i.i, %bb.d
  %.sink.i.i.ph = phi i8 [ 0, %bb.d ], [ 0, %.critedge.thread.i.i.i ], [ 127, %_ZN11flatbuffers19StringToIntegerImplIlEEbPT_PKcib.exit.thread.i.i ] ; 2 uses
  store i8 %.sink.i.i.ph, ptr %3, align 1, !tbaa !81
  br label %bb.f

_ZN11flatbuffers12_GLOBAL__N_111atot_scalarIaEEbPKcPT_St17integral_constantIbLb0EE.exit: ; preds = %_ZN11flatbuffers19StringToIntegerImplIlEEbPT_PKcib.exit.thread.i.i
  %i.z = icmp sgt i64 %.28.i.i, -129
  %spec.select21.i.i = call i64 @llvm.smax.i64(i64 %.28.i.i, i64 -128)
  %spec.select.i.i = trunc nsw i64 %spec.select21.i.i to i8 ; 2 uses
  store i8 %spec.select.i.i, ptr %3, align 1, !tbaa !81
  br i1 %i.z, label %bb.e, label %bb.f

bb.e:                                             ; preds = %_ZN11flatbuffers12_GLOBAL__N_111atot_scalarIaEEbPKcPT_St17integral_constantIbLb0EE.exit
  store i8 0, ptr %0, align 1, !tbaa !212, !alias.scope !1349
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 1
  store i8 0, ptr %i.aa, align 1, !tbaa !213, !alias.scope !1349
  br label %bb.au

bb.f:                                             ; preds = %_ZN11flatbuffers12_GLOBAL__N_111atot_scalarIaEEbPKcPT_St17integral_constantIbLb0EE.exit.thread, %_ZN11flatbuffers12_GLOBAL__N_111atot_scalarIaEEbPKcPT_St17integral_constantIbLb0EE.exit
  %.sink.i.i121 = phi i8 [ %.sink.i.i.ph, %_ZN11flatbuffers12_GLOBAL__N_111atot_scalarIaEEbPKcPT_St17integral_constantIbLb0EE.exit.thread ], [ %spec.select.i.i, %_ZN11flatbuffers12_GLOBAL__N_111atot_scalarIaEEbPKcPT_St17integral_constantIbLb0EE.exit ]
  %i.ab = icmp eq i8 %.sink.i.i121, 0
  br i1 %i.ab, label %bb.g, label %bb.u

bb.g:                                             ; preds = %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #32
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #32
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #32
  %i.ac = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 7 uses
  store ptr %i.ac, ptr %6, align 8, !tbaa !80
  %i.ad = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %1) #32 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #32
  store i64 %i.ad, ptr %i.b, align 8, !tbaa !93
  %i.ae = icmp ugt i64 %i.ad, 15
  br i1 %i.ae, label %.noexc.i, label %._crit_edge.i.i

.noexc.i:                                         ; preds = %bb.g
  %i.af = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef nonnull align 8 dereferenceable(8) %i.b, i64 noundef 0)
          to label %.noexc30 unwind label %bb.q   ; 2 uses

.noexc30:                                         ; preds = %.noexc.i
  store ptr %i.af, ptr %6, align 8, !tbaa !82
  %i.ag = load i64, ptr %i.b, align 8, !tbaa !93
  store i64 %i.ag, ptr %i.ac, align 8, !tbaa !81
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %.noexc30, %bb.g
  %i.ah = phi ptr [ %i.af, %.noexc30 ], [ %i.ac, %bb.g ] ; 2 uses
  switch i64 %i.ad, label %bb.i [
    i64 1, label %bb.h
    i64 0, label %bb.j
  ]

bb.h:                                             ; preds = %._crit_edge.i.i
  %i.ai = load i8, ptr %1, align 1, !tbaa !81
  store i8 %i.ai, ptr %i.ah, align 1, !tbaa !81
  br label %bb.j

bb.i:                                             ; preds = %._crit_edge.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.ah, ptr nonnull align 1 %1, i64 %i.ad, i1 false)
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h, %._crit_edge.i.i
  %i.aj = load i64, ptr %i.b, align 8, !tbaa !93  ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %6, i64 8
  store i64 %i.aj, ptr %i.ak, align 8, !tbaa !79
  %i.al = load ptr, ptr %6, align 8, !tbaa !82
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 %i.aj
  store i8 0, ptr %i.am, align 1, !tbaa !81
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #32
  %i.an = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %6, i64 noundef 0, i64 noundef 0, ptr noundef nonnull @.str.333, i64 noundef 17)
          to label %.noexc31 unwind label %bb.r   ; 6 uses

.noexc31:                                         ; preds = %bb.j
  %i.ao = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 7 uses
  store ptr %i.ao, ptr %5, align 8, !tbaa !80, !alias.scope !1350
  %i.ap = load ptr, ptr %i.an, align 8, !tbaa !82 ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %i.an, i64 16 ; 5 uses
  %i.ar = icmp eq ptr %i.ap, %i.aq
  br i1 %i.ar, label %bb.k, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

bb.k:                                             ; preds = %.noexc31
  %i.as = getelementptr inbounds nuw i8, ptr %i.an, i64 8
  %i.at = load i64, ptr %i.as, align 8, !tbaa !79 ; 3 uses
  %i.au = icmp ult i64 %i.at, 16
  call void @llvm.assume(i1 %i.au)
  %i.av = add nuw nsw i64 %i.at, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.ao, ptr noundef nonnull align 8 dereferenceable(1) %i.aq, i64 %i.av, i1 false)
  br label %bb.l

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %.noexc31
  store ptr %i.ap, ptr %5, align 8, !tbaa !82, !alias.scope !1350
  %i.aw = load i64, ptr %i.aq, align 8, !tbaa !81
  store i64 %i.aw, ptr %i.ao, align 8, !tbaa !81, !alias.scope !1350
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %i.an, i64 8
  %.pre.i = load i64, ptr %.phi.trans.insert.i, align 8, !tbaa !79
  br label %bb.l

bb.l:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %bb.k
  %i.ax = phi i64 [ %i.at, %bb.k ], [ %.pre.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ]
  %i.ay = getelementptr inbounds nuw i8, ptr %i.an, i64 8
  %i.az = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 2 uses
  store i64 %i.ax, ptr %i.az, align 8, !tbaa !79, !alias.scope !1350
  store ptr %i.aq, ptr %i.an, align 8, !tbaa !82
  store i64 0, ptr %i.ay, align 8, !tbaa !79
  store i8 0, ptr %i.aq, align 8, !tbaa !81
  call void @llvm.experimental.noalias.scope.decl(metadata !1351)
  %i.ba = load i64, ptr %i.az, align 8, !tbaa !79, !noalias !1351
  %i.bb = icmp eq i64 %i.ba, 4611686018427387903
  br i1 %i.bb, label %bb.m, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i

bb.m:                                             ; preds = %bb.l
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.330) #31
          to label %.noexc35 unwind label %bb.s

.noexc35:                                         ; preds = %bb.m
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i: ; preds = %bb.l
  %i.bc = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull @.str.155, i64 noundef 1)
          to label %.noexc36 unwind label %bb.s   ; 6 uses

.noexc36:                                         ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i
  %i.bd = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 7 uses
  store ptr %i.bd, ptr %4, align 8, !tbaa !80, !alias.scope !1351
  %i.be = load ptr, ptr %i.bc, align 8, !tbaa !82 ; 2 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %i.bc, i64 16 ; 5 uses
  %i.bg = icmp eq ptr %i.be, %i.bf
  br i1 %i.bg, label %bb.n, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i32

bb.n:                                             ; preds = %.noexc36
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bc, i64 8
  %i.bi = load i64, ptr %i.bh, align 8, !tbaa !79 ; 3 uses
  %i.bj = icmp ult i64 %i.bi, 16
  call void @llvm.assume(i1 %i.bj)
  %i.bk = add nuw nsw i64 %i.bi, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.bd, ptr noundef nonnull align 8 dereferenceable(1) %i.bf, i64 %i.bk, i1 false)
  br label %bb.o

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i32: ; preds = %.noexc36
  store ptr %i.be, ptr %4, align 8, !tbaa !82, !alias.scope !1351
  %i.bl = load i64, ptr %i.bf, align 8, !tbaa !81
  store i64 %i.bl, ptr %i.bd, align 8, !tbaa !81, !alias.scope !1351
  %.phi.trans.insert.i33 = getelementptr inbounds nuw i8, ptr %i.bc, i64 8
  %.pre.i34 = load i64, ptr %.phi.trans.insert.i33, align 8, !tbaa !79
  br label %bb.o

bb.o:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i32, %bb.n
  %i.bm = phi i64 [ %i.bi, %bb.n ], [ %.pre.i34, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i32 ]
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bc, i64 8
  %i.bo = getelementptr inbounds nuw i8, ptr %4, i64 8
end_hunk_12
begin_hunk_13_@_ZN11flatbuffers12_GLOBAL__N_14atotIaEENS_12CheckedErrorEPKcRNS_6ParserEPT_:bb.a

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit87: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit84, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i85
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #32
  %i.gx = load ptr, ptr %8, align 8, !tbaa !82    ; 2 uses
  %i.gy = icmp eq ptr %i.gx, %i.ei
  br i1 %i.gy, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit90, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i88

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i88: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit87
  %i.gz = load i64, ptr %i.ei, align 8, !tbaa !81
  %i.ha = add i64 %i.gz, 1
  call void @_ZdlPvm(ptr noundef %i.gx, i64 noundef %i.ha) #33
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit90

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit90: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit87, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i88
  %i.hb = load ptr, ptr %9, align 8, !tbaa !82    ; 2 uses
  %i.hc = icmp eq ptr %i.hb, %i.ds
  br i1 %i.hc, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit93, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i91

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i91: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit90
  %i.hd = load i64, ptr %i.ds, align 8, !tbaa !81
  %i.he = add i64 %i.hd, 1
  call void @_ZdlPvm(ptr noundef %i.hb, i64 noundef %i.he) #33
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit93

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit93: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit90, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i91
  %i.hf = load ptr, ptr %10, align 8, !tbaa !82   ; 2 uses
  %i.hg = icmp eq ptr %i.hf, %i.dd
  br i1 %i.hg, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit96, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i94

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i94: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit93
  %i.hh = load i64, ptr %i.dd, align 8, !tbaa !81
  %i.hi = add i64 %i.hh, 1
  call void @_ZdlPvm(ptr noundef %i.hf, i64 noundef %i.hi) #33
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit96

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit96: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit93, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i94
  %i.hj = load ptr, ptr %11, align 8, !tbaa !82   ; 2 uses
  %i.hk = icmp eq ptr %i.hj, %i.cr
  br i1 %i.hk, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit99, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i97

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i97: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit96
  %i.hl = load i64, ptr %i.cr, align 8, !tbaa !81
  %i.hm = add i64 %i.hl, 1
  call void @_ZdlPvm(ptr noundef %i.hj, i64 noundef %i.hm) #33
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit99

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit99: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit96, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i97
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #32
  br label %bb.au

bb.an:                                            ; preds = %.noexc.i54
  %i.hn = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit117

bb.ao:                                            ; preds = %bb.x
  %i.ho = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit114

bb.ap:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i63, %bb.aa
  %i.hp = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit111

bb.aq:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i70, %bb.ad
  %i.hq = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit108

bb.ar:                                            ; preds = %bb.af
  %i.hr = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit105

bb.as:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i, %bb.ak, %.critedge.i
  %i.hs = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit102

bb.at:                                            ; preds = %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_S9_.exit
  %i.ht = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.hu = load ptr, ptr %7, align 8, !tbaa !82    ; 2 uses
  %i.hv = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 2 uses
  %i.hw = icmp eq ptr %i.hu, %i.hv
  br i1 %i.hw, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit102, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i100

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i100: ; preds = %bb.at
  %i.hx = load i64, ptr %i.hv, align 8, !tbaa !81
  %i.hy = add i64 %i.hx, 1
  call void @_ZdlPvm(ptr noundef %i.hu, i64 noundef %i.hy) #33
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit102

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit102: ; preds = %bb.at, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i100, %bb.as
  %.pn = phi { ptr, i32 } [ %i.hs, %bb.as ], [ %i.ht, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i100 ], [ %i.ht, %bb.at ] ; 2 uses
  %i.hz = load ptr, ptr %12, align 8, !tbaa !82   ; 2 uses
  %i.ia = getelementptr inbounds nuw i8, ptr %12, i64 16 ; 2 uses
  %i.ib = icmp eq ptr %i.hz, %i.ia
  br i1 %i.ib, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit105, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i103

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i103: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit102
  %i.ic = load i64, ptr %i.ia, align 8, !tbaa !81
  %i.id = add i64 %i.ic, 1
  call void @_ZdlPvm(ptr noundef %i.hz, i64 noundef %i.id) #33
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit105

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit105: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit102, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i103, %bb.ar
  %.pn.pn = phi { ptr, i32 } [ %i.hr, %bb.ar ], [ %.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i103 ], [ %.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit102 ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #32
  %i.ie = load ptr, ptr %8, align 8, !tbaa !82    ; 2 uses
  %i.if = icmp eq ptr %i.ie, %i.ei
  br i1 %i.if, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit108, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i106

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i106: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit105
  %i.ig = load i64, ptr %i.ei, align 8, !tbaa !81
  %i.ih = add i64 %i.ig, 1
  call void @_ZdlPvm(ptr noundef %i.ie, i64 noundef %i.ih) #33
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit108

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit108: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit105, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i106, %bb.aq
  %.pn.pn.pn = phi { ptr, i32 } [ %i.hq, %bb.aq ], [ %.pn.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i106 ], [ %.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit105 ] ; 2 uses
  %i.ii = load ptr, ptr %9, align 8, !tbaa !82    ; 2 uses
  %i.ij = icmp eq ptr %i.ii, %i.ds
  br i1 %i.ij, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit111, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i109

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i109: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit108
  %i.ik = load i64, ptr %i.ds, align 8, !tbaa !81
  %i.il = add i64 %i.ik, 1
  call void @_ZdlPvm(ptr noundef %i.ii, i64 noundef %i.il) #33
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit111

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit111: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit108, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i109, %bb.ap
  %.pn.pn.pn.pn = phi { ptr, i32 } [ %i.hp, %bb.ap ], [ %.pn.pn.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i109 ], [ %.pn.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit108 ] ; 2 uses
  %i.im = load ptr, ptr %10, align 8, !tbaa !82   ; 2 uses
  %i.in = icmp eq ptr %i.im, %i.dd
  br i1 %i.in, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit114, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i112

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i112: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit111
  %i.io = load i64, ptr %i.dd, align 8, !tbaa !81
  %i.ip = add i64 %i.io, 1
  call void @_ZdlPvm(ptr noundef %i.im, i64 noundef %i.ip) #33
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit114

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit114: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit111, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i112, %bb.ao
  %.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %i.ho, %bb.ao ], [ %.pn.pn.pn.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i112 ], [ %.pn.pn.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit111 ] ; 2 uses
  %i.iq = load ptr, ptr %11, align 8, !tbaa !82   ; 2 uses
  %i.ir = icmp eq ptr %i.iq, %i.cr
  br i1 %i.ir, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit117, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i115

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i115: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit114
  %i.is = load i64, ptr %i.cr, align 8, !tbaa !81
  %i.it = add i64 %i.is, 1
  call void @_ZdlPvm(ptr noundef %i.iq, i64 noundef %i.it) #33
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit117

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit117: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit114, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i115, %bb.an
  %.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %i.hn, %bb.an ], [ %.pn.pn.pn.pn.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i115 ], [ %.pn.pn.pn.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit114 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #32
  br label %bb.av

bb.au:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit99, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit43, %bb.e
  ret void

bb.av:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit117, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit52
  %.pn25.pn.pn.pn = phi { ptr, i32 } [ %.pn25.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit52 ], [ %.pn.pn.pn.pn.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit117 ]
  resume { ptr, i32 } %.pn25.pn.pn.pn
}

; Function Attrs: mustprogress uwtable
define internal fastcc void @_ZN11flatbuffers12_GLOBAL__N_14atotIsEENS_12CheckedErrorEPKcRNS_6ParserEPT_(ptr dead_on_unwind noalias nofree writable writeonly align 1 captures(none) %0, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(1936) %2, ptr nofree noundef nonnull writeonly captures(none) %3) unnamed_addr #1 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %i.b = alloca i64, align 8                      ; 6 uses
  %i.c = alloca ptr, align 8                      ; 5 uses
  %i.d = alloca ptr, align 8                      ; 5 uses
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %6 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  %7 = alloca %"class.std::__cxx11::basic_string", align 8 ; 16 uses
  %8 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %9 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %10 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %11 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  %12 = alloca %"class.std::__cxx11::basic_string", align 8 ; 13 uses
  %i.e = load i8, ptr %1, align 1, !tbaa !81      ; 2 uses
  %.not2533.i.i.i = icmp eq i8 %i.e, 0
  br i1 %.not2533.i.i.i, label %.critedge.thread.i.i.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.a, %bb.b
  %i.f = phi i8 [ %i.i, %bb.b ], [ %i.e, %bb.a ]  ; 2 uses
  %.034.i.i.i = phi ptr [ %i.h, %bb.b ], [ %1, %bb.a ] ; 2 uses
  %13 = add i8 %i.f, -48
  %i.g = icmp ult i8 %13, 10
  br i1 %i.g, label %.critedge.i.i.i, label %bb.b

bb.b:                                             ; preds = %.lr.ph.i.i.i
  %i.h = getelementptr inbounds nuw i8, ptr %.034.i.i.i, i64 1 ; 2 uses
  %i.i = load i8, ptr %i.h, align 1, !tbaa !81    ; 2 uses
  %.not25.i.i.i = icmp eq i8 %i.i, 0
  br i1 %.not25.i.i.i, label %.critedge.thread.i.i.i, label %.lr.ph.i.i.i, !llvm.loop !3

.critedge.i.i.i:                                  ; preds = %.lr.ph.i.i.i
  %i.j = icmp eq i8 %i.f, 48
  br i1 %i.j, label %bb.c, label %.critedge.thread.i.i.i

bb.c:                                             ; preds = %.critedge.i.i.i
  %i.k = getelementptr inbounds nuw i8, ptr %.034.i.i.i, i64 1
  %i.l = load i8, ptr %i.k, align 1, !tbaa !81
  %i.m = and i8 %i.l, -33
  %i.n = icmp eq i8 %i.m, 88
  br i1 %i.n, label %bb.d, label %.critedge.thread.i.i.i

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #32
  store ptr %1, ptr %i.d, align 8, !tbaa !219
  %i.o = load ptr, ptr @_ZN11flatbuffers13ClassicLocale9instance_E, align 8, !tbaa !224
  %i.p = call i64 @__isoc23_strtoll_l(ptr noundef nonnull %1, ptr noundef nonnull %i.d, i32 noundef 16, ptr noundef %i.o) #32, !inline_history !307
  %i.q = load ptr, ptr %i.d, align 8, !tbaa !219  ; 2 uses
  %i.r = load i8, ptr %i.q, align 1, !tbaa !81
  %.not.i.i.i.i = icmp ne i8 %i.r, 0
  %i.s = icmp eq ptr %i.q, %1
  %or.cond.i.i.i.i = or i1 %i.s, %.not.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #32
  br i1 %or.cond.i.i.i.i, label %_ZN11flatbuffers12_GLOBAL__N_111atot_scalarIsEEbPKcPT_St17integral_constantIbLb0EE.exit.thread, label %_ZN11flatbuffers19StringToIntegerImplIlEEbPT_PKcib.exit.thread.i.i

.critedge.thread.i.i.i:                           ; preds = %bb.b, %bb.c, %.critedge.i.i.i, %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #32
  store ptr %1, ptr %i.c, align 8, !tbaa !219
  %i.t = load ptr, ptr @_ZN11flatbuffers13ClassicLocale9instance_E, align 8, !tbaa !224
  %i.u = call i64 @__isoc23_strtoll_l(ptr noundef nonnull %1, ptr noundef nonnull %i.c, i32 noundef 10, ptr noundef %i.t) #32, !inline_history !307
  %i.v = load ptr, ptr %i.c, align 8, !tbaa !219  ; 2 uses
  %i.w = load i8, ptr %i.v, align 1, !tbaa !81
  %.not.i26.i.i.i = icmp ne i8 %i.w, 0
  %i.x = icmp eq ptr %i.v, %1
  %or.cond.i27.i.i.i = or i1 %i.x, %.not.i26.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #32
  br i1 %or.cond.i27.i.i.i, label %_ZN11flatbuffers12_GLOBAL__N_111atot_scalarIsEEbPKcPT_St17integral_constantIbLb0EE.exit.thread, label %_ZN11flatbuffers19StringToIntegerImplIlEEbPT_PKcib.exit.thread.i.i

_ZN11flatbuffers19StringToIntegerImplIlEEbPT_PKcib.exit.thread.i.i: ; preds = %.critedge.thread.i.i.i, %bb.d
  %.28.i.i = phi i64 [ %i.p, %bb.d ], [ %i.u, %.critedge.thread.i.i.i ] ; 3 uses
  %i.y = icmp sgt i64 %.28.i.i, 32767
  br i1 %i.y, label %_ZN11flatbuffers12_GLOBAL__N_111atot_scalarIsEEbPKcPT_St17integral_constantIbLb0EE.exit.thread, label %_ZN11flatbuffers12_GLOBAL__N_111atot_scalarIsEEbPKcPT_St17integral_constantIbLb0EE.exit

_ZN11flatbuffers12_GLOBAL__N_111atot_scalarIsEEbPKcPT_St17integral_constantIbLb0EE.exit.thread: ; preds = %_ZN11flatbuffers19StringToIntegerImplIlEEbPT_PKcib.exit.thread.i.i, %.critedge.thread.i.i.i, %bb.d
  %.sink.i.i.ph = phi i16 [ 0, %bb.d ], [ 0, %.critedge.thread.i.i.i ], [ 32767, %_ZN11flatbuffers19StringToIntegerImplIlEEbPT_PKcib.exit.thread.i.i ] ; 2 uses
  store i16 %.sink.i.i.ph, ptr %3, align 2, !tbaa !254
  br label %bb.f

_ZN11flatbuffers12_GLOBAL__N_111atot_scalarIsEEbPKcPT_St17integral_constantIbLb0EE.exit: ; preds = %_ZN11flatbuffers19StringToIntegerImplIlEEbPT_PKcib.exit.thread.i.i
  %i.z = icmp sgt i64 %.28.i.i, -32769
  %spec.select21.i.i = call i64 @llvm.smax.i64(i64 %.28.i.i, i64 -32768)
  %spec.select.i.i = trunc nsw i64 %spec.select21.i.i to i16 ; 2 uses
  store i16 %spec.select.i.i, ptr %3, align 2, !tbaa !254
  br i1 %i.z, label %bb.e, label %bb.f

bb.e:                                             ; preds = %_ZN11flatbuffers12_GLOBAL__N_111atot_scalarIsEEbPKcPT_St17integral_constantIbLb0EE.exit
  store i8 0, ptr %0, align 1, !tbaa !212, !alias.scope !1370
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 1
  store i8 0, ptr %i.aa, align 1, !tbaa !213, !alias.scope !1370
  br label %bb.au

bb.f:                                             ; preds = %_ZN11flatbuffers12_GLOBAL__N_111atot_scalarIsEEbPKcPT_St17integral_constantIbLb0EE.exit.thread, %_ZN11flatbuffers12_GLOBAL__N_111atot_scalarIsEEbPKcPT_St17integral_constantIbLb0EE.exit
  %.sink.i.i121 = phi i16 [ %.sink.i.i.ph, %_ZN11flatbuffers12_GLOBAL__N_111atot_scalarIsEEbPKcPT_St17integral_constantIbLb0EE.exit.thread ], [ %spec.select.i.i, %_ZN11flatbuffers12_GLOBAL__N_111atot_scalarIsEEbPKcPT_St17integral_constantIbLb0EE.exit ]
  %i.ab = icmp eq i16 %.sink.i.i121, 0
  br i1 %i.ab, label %bb.g, label %bb.u

bb.g:                                             ; preds = %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #32
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #32
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #32
  %i.ac = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 7 uses
  store ptr %i.ac, ptr %6, align 8, !tbaa !80
  %i.ad = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %1) #32 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #32
  store i64 %i.ad, ptr %i.b, align 8, !tbaa !93
  %i.ae = icmp ugt i64 %i.ad, 15
  br i1 %i.ae, label %.noexc.i, label %._crit_edge.i.i

.noexc.i:                                         ; preds = %bb.g
  %i.af = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef nonnull align 8 dereferenceable(8) %i.b, i64 noundef 0)
          to label %.noexc30 unwind label %bb.q   ; 2 uses

.noexc30:                                         ; preds = %.noexc.i
  store ptr %i.af, ptr %6, align 8, !tbaa !82
  %i.ag = load i64, ptr %i.b, align 8, !tbaa !93
  store i64 %i.ag, ptr %i.ac, align 8, !tbaa !81
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %.noexc30, %bb.g
  %i.ah = phi ptr [ %i.af, %.noexc30 ], [ %i.ac, %bb.g ] ; 2 uses
  switch i64 %i.ad, label %bb.i [
    i64 1, label %bb.h
    i64 0, label %bb.j
  ]

bb.h:                                             ; preds = %._crit_edge.i.i
  %i.ai = load i8, ptr %1, align 1, !tbaa !81
  store i8 %i.ai, ptr %i.ah, align 1, !tbaa !81
  br label %bb.j

bb.i:                                             ; preds = %._crit_edge.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.ah, ptr nonnull align 1 %1, i64 %i.ad, i1 false)
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h, %._crit_edge.i.i
  %i.aj = load i64, ptr %i.b, align 8, !tbaa !93  ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %6, i64 8
  store i64 %i.aj, ptr %i.ak, align 8, !tbaa !79
  %i.al = load ptr, ptr %6, align 8, !tbaa !82
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 %i.aj
  store i8 0, ptr %i.am, align 1, !tbaa !81
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #32
  %i.an = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %6, i64 noundef 0, i64 noundef 0, ptr noundef nonnull @.str.333, i64 noundef 17)
          to label %.noexc31 unwind label %bb.r   ; 6 uses

.noexc31:                                         ; preds = %bb.j
  %i.ao = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 7 uses
  store ptr %i.ao, ptr %5, align 8, !tbaa !80, !alias.scope !1371
  %i.ap = load ptr, ptr %i.an, align 8, !tbaa !82 ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %i.an, i64 16 ; 5 uses
  %i.ar = icmp eq ptr %i.ap, %i.aq
  br i1 %i.ar, label %bb.k, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

bb.k:                                             ; preds = %.noexc31
  %i.as = getelementptr inbounds nuw i8, ptr %i.an, i64 8
  %i.at = load i64, ptr %i.as, align 8, !tbaa !79 ; 3 uses
  %i.au = icmp ult i64 %i.at, 16
  call void @llvm.assume(i1 %i.au)
  %i.av = add nuw nsw i64 %i.at, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.ao, ptr noundef nonnull align 8 dereferenceable(1) %i.aq, i64 %i.av, i1 false)
  br label %bb.l

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %.noexc31
  store ptr %i.ap, ptr %5, align 8, !tbaa !82, !alias.scope !1371
  %i.aw = load i64, ptr %i.aq, align 8, !tbaa !81
  store i64 %i.aw, ptr %i.ao, align 8, !tbaa !81, !alias.scope !1371
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %i.an, i64 8
  %.pre.i = load i64, ptr %.phi.trans.insert.i, align 8, !tbaa !79
  br label %bb.l

bb.l:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %bb.k
  %i.ax = phi i64 [ %i.at, %bb.k ], [ %.pre.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ]
  %i.ay = getelementptr inbounds nuw i8, ptr %i.an, i64 8
  %i.az = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 2 uses
  store i64 %i.ax, ptr %i.az, align 8, !tbaa !79, !alias.scope !1371
  store ptr %i.aq, ptr %i.an, align 8, !tbaa !82
  store i64 0, ptr %i.ay, align 8, !tbaa !79
  store i8 0, ptr %i.aq, align 8, !tbaa !81
  call void @llvm.experimental.noalias.scope.decl(metadata !1372)
  %i.ba = load i64, ptr %i.az, align 8, !tbaa !79, !noalias !1372
  %i.bb = icmp eq i64 %i.ba, 4611686018427387903
  br i1 %i.bb, label %bb.m, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i

bb.m:                                             ; preds = %bb.l
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.330) #31
          to label %.noexc35 unwind label %bb.s

.noexc35:                                         ; preds = %bb.m
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i: ; preds = %bb.l
  %i.bc = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull @.str.155, i64 noundef 1)
          to label %.noexc36 unwind label %bb.s   ; 6 uses

.noexc36:                                         ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i
  %i.bd = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 7 uses
  store ptr %i.bd, ptr %4, align 8, !tbaa !80, !alias.scope !1372
  %i.be = load ptr, ptr %i.bc, align 8, !tbaa !82 ; 2 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %i.bc, i64 16 ; 5 uses
  %i.bg = icmp eq ptr %i.be, %i.bf
  br i1 %i.bg, label %bb.n, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i32

bb.n:                                             ; preds = %.noexc36
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bc, i64 8
  %i.bi = load i64, ptr %i.bh, align 8, !tbaa !79 ; 3 uses
  %i.bj = icmp ult i64 %i.bi, 16
  call void @llvm.assume(i1 %i.bj)
  %i.bk = add nuw nsw i64 %i.bi, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.bd, ptr noundef nonnull align 8 dereferenceable(1) %i.bf, i64 %i.bk, i1 false)
  br label %bb.o

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i32: ; preds = %.noexc36
  store ptr %i.be, ptr %4, align 8, !tbaa !82, !alias.scope !1372
  %i.bl = load i64, ptr %i.bf, align 8, !tbaa !81
  store i64 %i.bl, ptr %i.bd, align 8, !tbaa !81, !alias.scope !1372
  %.phi.trans.insert.i33 = getelementptr inbounds nuw i8, ptr %i.bc, i64 8
  %.pre.i34 = load i64, ptr %.phi.trans.insert.i33, align 8, !tbaa !79
  br label %bb.o

bb.o:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i32, %bb.n
  %i.bm = phi i64 [ %i.bi, %bb.n ], [ %.pre.i34, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i32 ]
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bc, i64 8
  %i.bo = getelementptr inbounds nuw i8, ptr %4, i64 8
end_hunk_13
begin_hunk_14_@_ZN11flatbuffers21FlatBufferBuilderImplILb0EE10AddElementItEEvtT_:bb.a
  tail call void @_ZN11flatbuffers15vector_downwardIjE10reallocateEm(ptr noundef nonnull align 8 dereferenceable(128) %0, i64 noundef 2)
  %.pre.i.i.i = load ptr, ptr %.phi.trans.insert.i.i.i.i, align 8, !tbaa !359
  %.pre = load ptr, ptr %i.t, align 8, !tbaa !365 ; 2 uses
  %.pre3 = ptrtoint ptr %.pre to i64
  br label %_ZN11flatbuffers21FlatBufferBuilderImplILb0EE11PushElementItjEET0_T_.exit

_ZN11flatbuffers21FlatBufferBuilderImplILb0EE11PushElementItjEET0_T_.exit: ; preds = %_ZN11flatbuffers21FlatBufferBuilderImplILb0EE5AlignEm.exit.i, %bb.e
  %.pre-phi = phi i64 [ %i.w, %_ZN11flatbuffers21FlatBufferBuilderImplILb0EE5AlignEm.exit.i ], [ %.pre3, %bb.e ]
  %i.aa = phi ptr [ %i.u, %_ZN11flatbuffers21FlatBufferBuilderImplILb0EE5AlignEm.exit.i ], [ %.pre, %bb.e ]
  %i.ab = phi ptr [ %.pre4.i.i.i, %_ZN11flatbuffers21FlatBufferBuilderImplILb0EE5AlignEm.exit.i ], [ %.pre.i.i.i, %bb.e ]
  %i.ac = getelementptr inbounds i8, ptr %i.ab, i64 -2 ; 3 uses
  store ptr %i.ac, ptr %.phi.trans.insert.i.i.i.i, align 8, !tbaa !359
  %i.ad = load i32, ptr %i.d, align 8, !tbaa !354
  %i.ae = add i32 %i.ad, 2                        ; 2 uses
  store i32 %i.ae, ptr %i.d, align 8, !tbaa !354
  store i16 %2, ptr %i.ac, align 2, !tbaa !254
  %i.af = ptrtoint ptr %i.ac to i64
  %i.ag = sub i64 %i.af, %.pre-phi
  %i.ah = and i64 %i.ag, 4294967288
  %i.ai = icmp eq i64 %i.ah, 0
  br i1 %i.ai, label %bb.f, label %_ZN11flatbuffers15vector_downwardIjE18scratch_push_smallINS_21FlatBufferBuilderImplILb0EE8FieldLocEEEvRKT_.exit.i

bb.f:                                             ; preds = %_ZN11flatbuffers21FlatBufferBuilderImplILb0EE11PushElementItjEET0_T_.exit
  tail call void @_ZN11flatbuffers15vector_downwardIjE10reallocateEm(ptr noundef nonnull align 8 dereferenceable(128) %0, i64 noundef 8)
  %.pre.i.i2 = load ptr, ptr %i.t, align 8, !tbaa !365
  br label %_ZN11flatbuffers15vector_downwardIjE18scratch_push_smallINS_21FlatBufferBuilderImplILb0EE8FieldLocEEEvRKT_.exit.i

_ZN11flatbuffers15vector_downwardIjE18scratch_push_smallINS_21FlatBufferBuilderImplILb0EE8FieldLocEEEvRKT_.exit.i: ; preds = %bb.f, %_ZN11flatbuffers21FlatBufferBuilderImplILb0EE11PushElementItjEET0_T_.exit
  %i.aj = phi ptr [ %i.aa, %_ZN11flatbuffers21FlatBufferBuilderImplILb0EE11PushElementItjEET0_T_.exit ], [ %.pre.i.i2, %bb.f ]
  %.sroa.4.0.insert.ext.i = zext i16 %1 to i64
  %.sroa.4.0.insert.shift.i = shl nuw nsw i64 %.sroa.4.0.insert.ext.i, 32
  %.sroa.0.0.insert.ext.i = zext i32 %i.ae to i64
  %.sroa.0.0.insert.insert.i = or disjoint i64 %.sroa.4.0.insert.shift.i, %.sroa.0.0.insert.ext.i
  store i64 %.sroa.0.0.insert.insert.i, ptr %i.aj, align 4
  %i.ak = load ptr, ptr %i.t, align 8, !tbaa !365
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 8
  store ptr %i.al, ptr %i.t, align 8, !tbaa !365
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 2 uses
  %i.an = load i32, ptr %i.am, align 8, !tbaa !364
  %i.ao = add i32 %i.an, 1
  store i32 %i.ao, ptr %i.am, align 8, !tbaa !364
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 84 ; 2 uses
  %i.aq = load i16, ptr %i.ap, align 4, !tbaa !366
  %i.ar = icmp ugt i16 %1, %i.aq
  br i1 %i.ar, label %bb.g, label %_ZN11flatbuffers21FlatBufferBuilderImplILb0EE10TrackFieldEtj.exit

bb.g:                                             ; preds = %_ZN11flatbuffers15vector_downwardIjE18scratch_push_smallINS_21FlatBufferBuilderImplILb0EE8FieldLocEEEvRKT_.exit.i
  store i16 %1, ptr %i.ap, align 4, !tbaa !366
  br label %_ZN11flatbuffers21FlatBufferBuilderImplILb0EE10TrackFieldEtj.exit

_ZN11flatbuffers21FlatBufferBuilderImplILb0EE10TrackFieldEtj.exit: ; preds = %_ZN11flatbuffers15vector_downwardIjE18scratch_push_smallINS_21FlatBufferBuilderImplILb0EE8FieldLocEEEvRKT_.exit.i, %bb.g
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN11flatbuffers21FlatBufferBuilderImplILb0EE10AddElementItEEvtT_S3_(ptr noundef nonnull align 8 dereferenceable(128) %0, i16 noundef zeroext %1, i16 noundef zeroext %2, i16 noundef zeroext %3) local_unnamed_addr #1 comdat align 2 {
bb.a:
  %i.a = icmp ne i16 %2, %3
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.c = load i8, ptr %i.b, align 8, !range !208
  %i.d = trunc nuw i8 %i.c to i1
  %or.cond = select i1 %i.a, i1 true, i1 %i.d
  br i1 %or.cond, label %bb.b, label %_ZN11flatbuffers21FlatBufferBuilderImplILb0EE10TrackFieldEtj.exit

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 2 uses
  %i.f = load i64, ptr %i.e, align 8, !tbaa !374
  %i.g = icmp ult i64 %i.f, 2
  br i1 %i.g, label %bb.c, label %_ZN11flatbuffers21FlatBufferBuilderImplILb0EE13TrackMinAlignEm.exit.i.i

bb.c:                                             ; preds = %bb.b
  store i64 2, ptr %i.e, align 8, !tbaa !374
  br label %_ZN11flatbuffers21FlatBufferBuilderImplILb0EE13TrackMinAlignEm.exit.i.i

_ZN11flatbuffers21FlatBufferBuilderImplILb0EE13TrackMinAlignEm.exit.i.i: ; preds = %bb.c, %bb.b
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 5 uses
  %i.i = load i32, ptr %i.h, align 8, !tbaa !354  ; 2 uses
  %i.j = and i32 %i.i, 1                          ; 2 uses
  %i.k = zext nneg i32 %i.j to i64                ; 2 uses
  %.not.i.i.i.i = icmp eq i32 %i.j, 0
  %.phi.trans.insert.i.i.i.i = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 6 uses
  br i1 %.not.i.i.i.i, label %_ZN11flatbuffers21FlatBufferBuilderImplILb0EE5AlignEm.exit.i, label %bb.d

bb.d:                                             ; preds = %_ZN11flatbuffers21FlatBufferBuilderImplILb0EE13TrackMinAlignEm.exit.i.i
  %.pre4.i.i.i.i = load ptr, ptr %.phi.trans.insert.i.i.i.i, align 8, !tbaa !359 ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !365
  %i.n = ptrtoint ptr %.pre4.i.i.i.i to i64
  %i.o = ptrtoint ptr %i.m to i64
  %i.p = sub i64 %i.n, %i.o
  %i.q = and i64 %i.p, 4294967295
  %i.r = icmp samesign ult i64 %i.q, %i.k
  br i1 %i.r, label %bb.e, label %.lr.ph.preheader.i.i.i

bb.e:                                             ; preds = %bb.d
  tail call void @_ZN11flatbuffers15vector_downwardIjE10reallocateEm(ptr noundef nonnull align 8 dereferenceable(128) %0, i64 noundef 1)
  %.pre.i.i.i.i = load ptr, ptr %.phi.trans.insert.i.i.i.i, align 8, !tbaa !359
  %.pre.i.i = load i32, ptr %i.h, align 8, !tbaa !354
  br label %.lr.ph.preheader.i.i.i

.lr.ph.preheader.i.i.i:                           ; preds = %bb.e, %bb.d
  %i.s = phi i32 [ %i.i, %bb.d ], [ %.pre.i.i, %bb.e ]
  %i.t = phi ptr [ %.pre4.i.i.i.i, %bb.d ], [ %.pre.i.i.i.i, %bb.e ]
  %i.u = sub nsw i64 0, %i.k
  %i.v = getelementptr inbounds i8, ptr %i.t, i64 %i.u ; 2 uses
  store ptr %i.v, ptr %.phi.trans.insert.i.i.i.i, align 8, !tbaa !359
  %i.w = add i32 %i.s, 1
  store i32 %i.w, ptr %i.h, align 8, !tbaa !354
  store i8 0, ptr %i.v, align 1, !tbaa !81
  br label %_ZN11flatbuffers21FlatBufferBuilderImplILb0EE5AlignEm.exit.i

_ZN11flatbuffers21FlatBufferBuilderImplILb0EE5AlignEm.exit.i: ; preds = %.lr.ph.preheader.i.i.i, %_ZN11flatbuffers21FlatBufferBuilderImplILb0EE13TrackMinAlignEm.exit.i.i
  %.pre4.i.i.i = load ptr, ptr %.phi.trans.insert.i.i.i.i, align 8, !tbaa !359 ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 5 uses
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !365  ; 2 uses
  %i.z = ptrtoint ptr %.pre4.i.i.i to i64
  %i.aa = ptrtoint ptr %i.y to i64                ; 2 uses
  %i.ab = sub i64 %i.z, %i.aa
  %i.ac = and i64 %i.ab, 4294967294
  %i.ad = icmp eq i64 %i.ac, 0
  br i1 %i.ad, label %bb.f, label %_ZN11flatbuffers21FlatBufferBuilderImplILb0EE11PushElementItjEET0_T_.exit

bb.f:                                             ; preds = %_ZN11flatbuffers21FlatBufferBuilderImplILb0EE5AlignEm.exit.i
  tail call void @_ZN11flatbuffers15vector_downwardIjE10reallocateEm(ptr noundef nonnull align 8 dereferenceable(128) %0, i64 noundef 2)
  %.pre.i.i.i = load ptr, ptr %.phi.trans.insert.i.i.i.i, align 8, !tbaa !359
  %.pre = load ptr, ptr %i.x, align 8, !tbaa !365 ; 2 uses
  %.pre7 = ptrtoint ptr %.pre to i64
  br label %_ZN11flatbuffers21FlatBufferBuilderImplILb0EE11PushElementItjEET0_T_.exit

_ZN11flatbuffers21FlatBufferBuilderImplILb0EE11PushElementItjEET0_T_.exit: ; preds = %_ZN11flatbuffers21FlatBufferBuilderImplILb0EE5AlignEm.exit.i, %bb.f
  %.pre-phi = phi i64 [ %i.aa, %_ZN11flatbuffers21FlatBufferBuilderImplILb0EE5AlignEm.exit.i ], [ %.pre7, %bb.f ]
  %i.ae = phi ptr [ %i.y, %_ZN11flatbuffers21FlatBufferBuilderImplILb0EE5AlignEm.exit.i ], [ %.pre, %bb.f ]
  %i.af = phi ptr [ %.pre4.i.i.i, %_ZN11flatbuffers21FlatBufferBuilderImplILb0EE5AlignEm.exit.i ], [ %.pre.i.i.i, %bb.f ]
  %i.ag = getelementptr inbounds i8, ptr %i.af, i64 -2 ; 3 uses
  store ptr %i.ag, ptr %.phi.trans.insert.i.i.i.i, align 8, !tbaa !359
  %i.ah = load i32, ptr %i.h, align 8, !tbaa !354
  %i.ai = add i32 %i.ah, 2                        ; 2 uses
  store i32 %i.ai, ptr %i.h, align 8, !tbaa !354
  store i16 %2, ptr %i.ag, align 2, !tbaa !254
  %i.aj = ptrtoint ptr %i.ag to i64
  %i.ak = sub i64 %i.aj, %.pre-phi
  %i.al = and i64 %i.ak, 4294967288
  %i.am = icmp eq i64 %i.al, 0
  br i1 %i.am, label %bb.g, label %_ZN11flatbuffers15vector_downwardIjE18scratch_push_smallINS_21FlatBufferBuilderImplILb0EE8FieldLocEEEvRKT_.exit.i

bb.g:                                             ; preds = %_ZN11flatbuffers21FlatBufferBuilderImplILb0EE11PushElementItjEET0_T_.exit
  tail call void @_ZN11flatbuffers15vector_downwardIjE10reallocateEm(ptr noundef nonnull align 8 dereferenceable(128) %0, i64 noundef 8)
  %.pre.i.i4 = load ptr, ptr %i.x, align 8, !tbaa !365
  br label %_ZN11flatbuffers15vector_downwardIjE18scratch_push_smallINS_21FlatBufferBuilderImplILb0EE8FieldLocEEEvRKT_.exit.i

_ZN11flatbuffers15vector_downwardIjE18scratch_push_smallINS_21FlatBufferBuilderImplILb0EE8FieldLocEEEvRKT_.exit.i: ; preds = %bb.g, %_ZN11flatbuffers21FlatBufferBuilderImplILb0EE11PushElementItjEET0_T_.exit
  %i.an = phi ptr [ %i.ae, %_ZN11flatbuffers21FlatBufferBuilderImplILb0EE11PushElementItjEET0_T_.exit ], [ %.pre.i.i4, %bb.g ]
  %.sroa.4.0.insert.ext.i = zext i16 %1 to i64
  %.sroa.4.0.insert.shift.i = shl nuw nsw i64 %.sroa.4.0.insert.ext.i, 32
  %.sroa.0.0.insert.ext.i = zext i32 %i.ai to i64
  %.sroa.0.0.insert.insert.i = or disjoint i64 %.sroa.4.0.insert.shift.i, %.sroa.0.0.insert.ext.i
  store i64 %.sroa.0.0.insert.insert.i, ptr %i.an, align 4
  %i.ao = load ptr, ptr %i.x, align 8, !tbaa !365
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 8
  store ptr %i.ap, ptr %i.x, align 8, !tbaa !365
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 2 uses
  %i.ar = load i32, ptr %i.aq, align 8, !tbaa !364
  %i.as = add i32 %i.ar, 1
  store i32 %i.as, ptr %i.aq, align 8, !tbaa !364
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 84 ; 2 uses
  %i.au = load i16, ptr %i.at, align 4, !tbaa !366
  %i.av = icmp ugt i16 %1, %i.au
  br i1 %i.av, label %bb.h, label %_ZN11flatbuffers21FlatBufferBuilderImplILb0EE10TrackFieldEtj.exit

bb.h:                                             ; preds = %_ZN11flatbuffers15vector_downwardIjE18scratch_push_smallINS_21FlatBufferBuilderImplILb0EE8FieldLocEEEvRKT_.exit.i
  store i16 %1, ptr %i.at, align 4, !tbaa !366
  br label %_ZN11flatbuffers21FlatBufferBuilderImplILb0EE10TrackFieldEtj.exit

_ZN11flatbuffers21FlatBufferBuilderImplILb0EE10TrackFieldEtj.exit: ; preds = %bb.a, %bb.h, %_ZN11flatbuffers15vector_downwardIjE18scratch_push_smallINS_21FlatBufferBuilderImplILb0EE8FieldLocEEEvRKT_.exit.i
  ret void
}

; Function Attrs: mustprogress uwtable
define internal fastcc void @_ZN11flatbuffers12_GLOBAL__N_14atotIiEENS_12CheckedErrorEPKcRNS_6ParserEPT_(ptr dead_on_unwind noalias nofree writable writeonly align 1 captures(none) %0, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(1936) %2, ptr nofree noundef nonnull writeonly captures(none) %3) unnamed_addr #1 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %i.b = alloca i64, align 8                      ; 6 uses
  %i.c = alloca ptr, align 8                      ; 5 uses
  %i.d = alloca ptr, align 8                      ; 5 uses
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %6 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  %7 = alloca %"class.std::__cxx11::basic_string", align 8 ; 16 uses
  %8 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %9 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %10 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %11 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  %12 = alloca %"class.std::__cxx11::basic_string", align 8 ; 13 uses
  %i.e = load i8, ptr %1, align 1, !tbaa !81      ; 2 uses
  %.not2533.i.i.i = icmp eq i8 %i.e, 0
  br i1 %.not2533.i.i.i, label %.critedge.thread.i.i.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.a, %bb.b
  %i.f = phi i8 [ %i.i, %bb.b ], [ %i.e, %bb.a ]  ; 2 uses
  %.034.i.i.i = phi ptr [ %i.h, %bb.b ], [ %1, %bb.a ] ; 2 uses
  %13 = add i8 %i.f, -48
  %i.g = icmp ult i8 %13, 10
  br i1 %i.g, label %.critedge.i.i.i, label %bb.b

bb.b:                                             ; preds = %.lr.ph.i.i.i
  %i.h = getelementptr inbounds nuw i8, ptr %.034.i.i.i, i64 1 ; 2 uses
  %i.i = load i8, ptr %i.h, align 1, !tbaa !81    ; 2 uses
  %.not25.i.i.i = icmp eq i8 %i.i, 0
  br i1 %.not25.i.i.i, label %.critedge.thread.i.i.i, label %.lr.ph.i.i.i, !llvm.loop !3

.critedge.i.i.i:                                  ; preds = %.lr.ph.i.i.i
  %i.j = icmp eq i8 %i.f, 48
  br i1 %i.j, label %bb.c, label %.critedge.thread.i.i.i

bb.c:                                             ; preds = %.critedge.i.i.i
  %i.k = getelementptr inbounds nuw i8, ptr %.034.i.i.i, i64 1
  %i.l = load i8, ptr %i.k, align 1, !tbaa !81
  %i.m = and i8 %i.l, -33
  %i.n = icmp eq i8 %i.m, 88
  br i1 %i.n, label %bb.d, label %.critedge.thread.i.i.i

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #32
  store ptr %1, ptr %i.d, align 8, !tbaa !219
  %i.o = load ptr, ptr @_ZN11flatbuffers13ClassicLocale9instance_E, align 8, !tbaa !224
  %i.p = call i64 @__isoc23_strtoll_l(ptr noundef nonnull %1, ptr noundef nonnull %i.d, i32 noundef 16, ptr noundef %i.o) #32, !inline_history !307
  %i.q = load ptr, ptr %i.d, align 8, !tbaa !219  ; 2 uses
  %i.r = load i8, ptr %i.q, align 1, !tbaa !81
  %.not.i.i.i.i = icmp ne i8 %i.r, 0
  %i.s = icmp eq ptr %i.q, %1
  %or.cond.i.i.i.i = or i1 %i.s, %.not.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #32
  br i1 %or.cond.i.i.i.i, label %_ZN11flatbuffers12_GLOBAL__N_111atot_scalarIiEEbPKcPT_St17integral_constantIbLb0EE.exit.thread, label %_ZN11flatbuffers19StringToIntegerImplIlEEbPT_PKcib.exit.thread.i.i

.critedge.thread.i.i.i:                           ; preds = %bb.b, %bb.c, %.critedge.i.i.i, %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #32
  store ptr %1, ptr %i.c, align 8, !tbaa !219
  %i.t = load ptr, ptr @_ZN11flatbuffers13ClassicLocale9instance_E, align 8, !tbaa !224
  %i.u = call i64 @__isoc23_strtoll_l(ptr noundef nonnull %1, ptr noundef nonnull %i.c, i32 noundef 10, ptr noundef %i.t) #32, !inline_history !307
  %i.v = load ptr, ptr %i.c, align 8, !tbaa !219  ; 2 uses
  %i.w = load i8, ptr %i.v, align 1, !tbaa !81
  %.not.i26.i.i.i = icmp ne i8 %i.w, 0
  %i.x = icmp eq ptr %i.v, %1
  %or.cond.i27.i.i.i = or i1 %i.x, %.not.i26.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #32
  br i1 %or.cond.i27.i.i.i, label %_ZN11flatbuffers12_GLOBAL__N_111atot_scalarIiEEbPKcPT_St17integral_constantIbLb0EE.exit.thread, label %_ZN11flatbuffers19StringToIntegerImplIlEEbPT_PKcib.exit.thread.i.i

_ZN11flatbuffers19StringToIntegerImplIlEEbPT_PKcib.exit.thread.i.i: ; preds = %.critedge.thread.i.i.i, %bb.d
  %.28.i.i = phi i64 [ %i.p, %bb.d ], [ %i.u, %.critedge.thread.i.i.i ] ; 3 uses
  %i.y = icmp sgt i64 %.28.i.i, 2147483647
  br i1 %i.y, label %_ZN11flatbuffers12_GLOBAL__N_111atot_scalarIiEEbPKcPT_St17integral_constantIbLb0EE.exit.thread, label %_ZN11flatbuffers12_GLOBAL__N_111atot_scalarIiEEbPKcPT_St17integral_constantIbLb0EE.exit

_ZN11flatbuffers12_GLOBAL__N_111atot_scalarIiEEbPKcPT_St17integral_constantIbLb0EE.exit.thread: ; preds = %_ZN11flatbuffers19StringToIntegerImplIlEEbPT_PKcib.exit.thread.i.i, %.critedge.thread.i.i.i, %bb.d
  %.sink.i.i.ph = phi i32 [ 0, %bb.d ], [ 0, %.critedge.thread.i.i.i ], [ 2147483647, %_ZN11flatbuffers19StringToIntegerImplIlEEbPT_PKcib.exit.thread.i.i ] ; 2 uses
  store i32 %.sink.i.i.ph, ptr %3, align 4, !tbaa !221
  br label %bb.f

_ZN11flatbuffers12_GLOBAL__N_111atot_scalarIiEEbPKcPT_St17integral_constantIbLb0EE.exit: ; preds = %_ZN11flatbuffers19StringToIntegerImplIlEEbPT_PKcib.exit.thread.i.i
  %i.z = icmp sgt i64 %.28.i.i, -2147483649
  %spec.select21.i.i = call i64 @llvm.smax.i64(i64 %.28.i.i, i64 -2147483648)
  %spec.select.i.i = trunc nsw i64 %spec.select21.i.i to i32 ; 2 uses
  store i32 %spec.select.i.i, ptr %3, align 4, !tbaa !221
  br i1 %i.z, label %bb.e, label %bb.f

bb.e:                                             ; preds = %_ZN11flatbuffers12_GLOBAL__N_111atot_scalarIiEEbPKcPT_St17integral_constantIbLb0EE.exit
  store i8 0, ptr %0, align 1, !tbaa !212, !alias.scope !1391
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 1
  store i8 0, ptr %i.aa, align 1, !tbaa !213, !alias.scope !1391
  br label %bb.au

bb.f:                                             ; preds = %_ZN11flatbuffers12_GLOBAL__N_111atot_scalarIiEEbPKcPT_St17integral_constantIbLb0EE.exit.thread, %_ZN11flatbuffers12_GLOBAL__N_111atot_scalarIiEEbPKcPT_St17integral_constantIbLb0EE.exit
  %.sink.i.i121 = phi i32 [ %.sink.i.i.ph, %_ZN11flatbuffers12_GLOBAL__N_111atot_scalarIiEEbPKcPT_St17integral_constantIbLb0EE.exit.thread ], [ %spec.select.i.i, %_ZN11flatbuffers12_GLOBAL__N_111atot_scalarIiEEbPKcPT_St17integral_constantIbLb0EE.exit ]
  %i.ab = icmp eq i32 %.sink.i.i121, 0
  br i1 %i.ab, label %bb.g, label %bb.u

bb.g:                                             ; preds = %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #32
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #32
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #32
  %i.ac = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 7 uses
  store ptr %i.ac, ptr %6, align 8, !tbaa !80
  %i.ad = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %1) #32 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #32
  store i64 %i.ad, ptr %i.b, align 8, !tbaa !93
  %i.ae = icmp ugt i64 %i.ad, 15
  br i1 %i.ae, label %.noexc.i, label %._crit_edge.i.i

.noexc.i:                                         ; preds = %bb.g
  %i.af = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef nonnull align 8 dereferenceable(8) %i.b, i64 noundef 0)
          to label %.noexc30 unwind label %bb.q   ; 2 uses

.noexc30:                                         ; preds = %.noexc.i
  store ptr %i.af, ptr %6, align 8, !tbaa !82
  %i.ag = load i64, ptr %i.b, align 8, !tbaa !93
  store i64 %i.ag, ptr %i.ac, align 8, !tbaa !81
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %.noexc30, %bb.g
  %i.ah = phi ptr [ %i.af, %.noexc30 ], [ %i.ac, %bb.g ] ; 2 uses
  switch i64 %i.ad, label %bb.i [
    i64 1, label %bb.h
    i64 0, label %bb.j
  ]

bb.h:                                             ; preds = %._crit_edge.i.i
  %i.ai = load i8, ptr %1, align 1, !tbaa !81
  store i8 %i.ai, ptr %i.ah, align 1, !tbaa !81
  br label %bb.j

bb.i:                                             ; preds = %._crit_edge.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.ah, ptr nonnull align 1 %1, i64 %i.ad, i1 false)
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h, %._crit_edge.i.i
  %i.aj = load i64, ptr %i.b, align 8, !tbaa !93  ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %6, i64 8
  store i64 %i.aj, ptr %i.ak, align 8, !tbaa !79
  %i.al = load ptr, ptr %6, align 8, !tbaa !82
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 %i.aj
  store i8 0, ptr %i.am, align 1, !tbaa !81
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #32
  %i.an = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %6, i64 noundef 0, i64 noundef 0, ptr noundef nonnull @.str.333, i64 noundef 17)
          to label %.noexc31 unwind label %bb.r   ; 6 uses

.noexc31:                                         ; preds = %bb.j
  %i.ao = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 7 uses
  store ptr %i.ao, ptr %5, align 8, !tbaa !80, !alias.scope !1392
  %i.ap = load ptr, ptr %i.an, align 8, !tbaa !82 ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %i.an, i64 16 ; 5 uses
  %i.ar = icmp eq ptr %i.ap, %i.aq
  br i1 %i.ar, label %bb.k, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

bb.k:                                             ; preds = %.noexc31
  %i.as = getelementptr inbounds nuw i8, ptr %i.an, i64 8
  %i.at = load i64, ptr %i.as, align 8, !tbaa !79 ; 3 uses
  %i.au = icmp ult i64 %i.at, 16
  call void @llvm.assume(i1 %i.au)
  %i.av = add nuw nsw i64 %i.at, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.ao, ptr noundef nonnull align 8 dereferenceable(1) %i.aq, i64 %i.av, i1 false)
  br label %bb.l

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %.noexc31
  store ptr %i.ap, ptr %5, align 8, !tbaa !82, !alias.scope !1392
  %i.aw = load i64, ptr %i.aq, align 8, !tbaa !81
  store i64 %i.aw, ptr %i.ao, align 8, !tbaa !81, !alias.scope !1392
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %i.an, i64 8
  %.pre.i = load i64, ptr %.phi.trans.insert.i, align 8, !tbaa !79
  br label %bb.l

bb.l:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %bb.k
  %i.ax = phi i64 [ %i.at, %bb.k ], [ %.pre.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ]
  %i.ay = getelementptr inbounds nuw i8, ptr %i.an, i64 8
  %i.az = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 2 uses
  store i64 %i.ax, ptr %i.az, align 8, !tbaa !79, !alias.scope !1392
  store ptr %i.aq, ptr %i.an, align 8, !tbaa !82
  store i64 0, ptr %i.ay, align 8, !tbaa !79
  store i8 0, ptr %i.aq, align 8, !tbaa !81
  call void @llvm.experimental.noalias.scope.decl(metadata !1393)
  %i.ba = load i64, ptr %i.az, align 8, !tbaa !79, !noalias !1393
  %i.bb = icmp eq i64 %i.ba, 4611686018427387903
  br i1 %i.bb, label %bb.m, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i

bb.m:                                             ; preds = %bb.l
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.330) #31
          to label %.noexc35 unwind label %bb.s

.noexc35:                                         ; preds = %bb.m
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i: ; preds = %bb.l
  %i.bc = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull @.str.155, i64 noundef 1)
          to label %.noexc36 unwind label %bb.s   ; 6 uses

.noexc36:                                         ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i
  %i.bd = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 7 uses
  store ptr %i.bd, ptr %4, align 8, !tbaa !80, !alias.scope !1393
  %i.be = load ptr, ptr %i.bc, align 8, !tbaa !82 ; 2 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %i.bc, i64 16 ; 5 uses
  %i.bg = icmp eq ptr %i.be, %i.bf
  br i1 %i.bg, label %bb.n, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i32

bb.n:                                             ; preds = %.noexc36
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bc, i64 8
  %i.bi = load i64, ptr %i.bh, align 8, !tbaa !79 ; 3 uses
  %i.bj = icmp ult i64 %i.bi, 16
  call void @llvm.assume(i1 %i.bj)
  %i.bk = add nuw nsw i64 %i.bi, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.bd, ptr noundef nonnull align 8 dereferenceable(1) %i.bf, i64 %i.bk, i1 false)
  br label %bb.o

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i32: ; preds = %.noexc36
  store ptr %i.be, ptr %4, align 8, !tbaa !82, !alias.scope !1393
  %i.bl = load i64, ptr %i.bf, align 8, !tbaa !81
  store i64 %i.bl, ptr %i.bd, align 8, !tbaa !81, !alias.scope !1393
  %.phi.trans.insert.i33 = getelementptr inbounds nuw i8, ptr %i.bc, i64 8
  %.pre.i34 = load i64, ptr %.phi.trans.insert.i33, align 8, !tbaa !79
  br label %bb.o

bb.o:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i32, %bb.n
  %i.bm = phi i64 [ %i.bi, %bb.n ], [ %.pre.i34, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i32 ]
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bc, i64 8
  %i.bo = getelementptr inbounds nuw i8, ptr %4, i64 8
end_hunk_14
begin_hunk_15_@_ZN11flatbuffers21FlatBufferBuilderImplILb0EE10AddElementIlEEvtT_:bb.a
  store i16 %1, ptr %i.bd, align 4, !tbaa !366
  br label %_ZN11flatbuffers21FlatBufferBuilderImplILb0EE10TrackFieldEtj.exit

_ZN11flatbuffers21FlatBufferBuilderImplILb0EE10TrackFieldEtj.exit: ; preds = %_ZN11flatbuffers15vector_downwardIjE18scratch_push_smallINS_21FlatBufferBuilderImplILb0EE8FieldLocEEEvRKT_.exit.i, %bb.g
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN11flatbuffers21FlatBufferBuilderImplILb0EE10AddElementIlEEvtT_S3_(ptr noundef nonnull align 8 dereferenceable(128) %0, i16 noundef zeroext %1, i64 noundef %2, i64 noundef %3) local_unnamed_addr #1 comdat align 2 {
bb.a:
  %i.a = icmp ne i64 %2, %3
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.c = load i8, ptr %i.b, align 8, !range !208
  %i.d = trunc nuw i8 %i.c to i1
  %or.cond = select i1 %i.a, i1 true, i1 %i.d
  br i1 %or.cond, label %bb.b, label %_ZN11flatbuffers21FlatBufferBuilderImplILb0EE10TrackFieldEtj.exit

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 2 uses
  %i.f = load i64, ptr %i.e, align 8, !tbaa !374
  %i.g = icmp ult i64 %i.f, 8
  br i1 %i.g, label %bb.c, label %_ZN11flatbuffers21FlatBufferBuilderImplILb0EE13TrackMinAlignEm.exit.i.i

bb.c:                                             ; preds = %bb.b
  store i64 8, ptr %i.e, align 8, !tbaa !374
  br label %_ZN11flatbuffers21FlatBufferBuilderImplILb0EE13TrackMinAlignEm.exit.i.i

_ZN11flatbuffers21FlatBufferBuilderImplILb0EE13TrackMinAlignEm.exit.i.i: ; preds = %bb.c, %bb.b
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 5 uses
  %i.i = load i32, ptr %i.h, align 8, !tbaa !354  ; 2 uses
  %i.j = sub i32 0, %i.i
  %i.k = and i32 %i.j, 7                          ; 9 uses
  %i.l = zext nneg i32 %i.k to i64                ; 3 uses
  %.not.i.i.i.i = icmp eq i32 %i.k, 0
  %.phi.trans.insert.i.i.i.i = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 13 uses
  br i1 %.not.i.i.i.i, label %_ZN11flatbuffers21FlatBufferBuilderImplILb0EE5AlignEm.exit.i, label %bb.d

bb.d:                                             ; preds = %_ZN11flatbuffers21FlatBufferBuilderImplILb0EE13TrackMinAlignEm.exit.i.i
  %.pre4.i.i.i.i = load ptr, ptr %.phi.trans.insert.i.i.i.i, align 8, !tbaa !359 ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !365
  %i.o = ptrtoint ptr %.pre4.i.i.i.i to i64
  %i.p = ptrtoint ptr %i.n to i64
  %i.q = sub i64 %i.o, %i.p
  %i.r = and i64 %i.q, 4294967295
  %i.s = icmp samesign ult i64 %i.r, %i.l
  br i1 %i.s, label %bb.e, label %.lr.ph.preheader.i.i.i

bb.e:                                             ; preds = %bb.d
  tail call void @_ZN11flatbuffers15vector_downwardIjE10reallocateEm(ptr noundef nonnull align 8 dereferenceable(128) %0, i64 noundef %i.l)
  %.pre.i.i.i.i = load ptr, ptr %.phi.trans.insert.i.i.i.i, align 8, !tbaa !359
  %.pre.i.i = load i32, ptr %i.h, align 8, !tbaa !354
  br label %.lr.ph.preheader.i.i.i

.lr.ph.preheader.i.i.i:                           ; preds = %bb.e, %bb.d
  %i.t = phi i32 [ %i.i, %bb.d ], [ %.pre.i.i, %bb.e ]
  %i.u = phi ptr [ %.pre4.i.i.i.i, %bb.d ], [ %.pre.i.i.i.i, %bb.e ]
  %i.v = sub nsw i64 0, %i.l
  %i.w = getelementptr inbounds i8, ptr %i.u, i64 %i.v
  store ptr %i.w, ptr %.phi.trans.insert.i.i.i.i, align 8, !tbaa !359
  %i.x = add i32 %i.t, %i.k
  store i32 %i.x, ptr %i.h, align 8, !tbaa !354
  %i.y = load ptr, ptr %.phi.trans.insert.i.i.i.i, align 8, !tbaa !359
  store i8 0, ptr %i.y, align 1, !tbaa !81
  %exitcond.not.i.i.i = icmp eq i32 %i.k, 1
  br i1 %exitcond.not.i.i.i, label %_ZN11flatbuffers21FlatBufferBuilderImplILb0EE5AlignEm.exit.i, label %.lr.ph.i.i.i.1

.lr.ph.i.i.i.1:                                   ; preds = %.lr.ph.preheader.i.i.i
  %i.z = load ptr, ptr %.phi.trans.insert.i.i.i.i, align 8, !tbaa !359
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 1
  store i8 0, ptr %i.aa, align 1, !tbaa !81
  %exitcond.not.i.i.i.1 = icmp eq i32 %i.k, 2
  br i1 %exitcond.not.i.i.i.1, label %_ZN11flatbuffers21FlatBufferBuilderImplILb0EE5AlignEm.exit.i, label %.lr.ph.i.i.i.2

.lr.ph.i.i.i.2:                                   ; preds = %.lr.ph.i.i.i.1
  %i.ab = load ptr, ptr %.phi.trans.insert.i.i.i.i, align 8, !tbaa !359
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 2
  store i8 0, ptr %i.ac, align 1, !tbaa !81
  %exitcond.not.i.i.i.2 = icmp eq i32 %i.k, 3
  br i1 %exitcond.not.i.i.i.2, label %_ZN11flatbuffers21FlatBufferBuilderImplILb0EE5AlignEm.exit.i, label %.lr.ph.i.i.i.3

.lr.ph.i.i.i.3:                                   ; preds = %.lr.ph.i.i.i.2
  %i.ad = load ptr, ptr %.phi.trans.insert.i.i.i.i, align 8, !tbaa !359
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 3
  store i8 0, ptr %i.ae, align 1, !tbaa !81
  %exitcond.not.i.i.i.3 = icmp eq i32 %i.k, 4
  br i1 %exitcond.not.i.i.i.3, label %_ZN11flatbuffers21FlatBufferBuilderImplILb0EE5AlignEm.exit.i, label %.lr.ph.i.i.i.4

.lr.ph.i.i.i.4:                                   ; preds = %.lr.ph.i.i.i.3
  %i.af = load ptr, ptr %.phi.trans.insert.i.i.i.i, align 8, !tbaa !359
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 4
  store i8 0, ptr %i.ag, align 1, !tbaa !81
  %exitcond.not.i.i.i.4 = icmp eq i32 %i.k, 5
  br i1 %exitcond.not.i.i.i.4, label %_ZN11flatbuffers21FlatBufferBuilderImplILb0EE5AlignEm.exit.i, label %.lr.ph.i.i.i.5

.lr.ph.i.i.i.5:                                   ; preds = %.lr.ph.i.i.i.4
  %i.ah = load ptr, ptr %.phi.trans.insert.i.i.i.i, align 8, !tbaa !359
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 5
  store i8 0, ptr %i.ai, align 1, !tbaa !81
  %exitcond.not.i.i.i.5 = icmp eq i32 %i.k, 6
  br i1 %exitcond.not.i.i.i.5, label %_ZN11flatbuffers21FlatBufferBuilderImplILb0EE5AlignEm.exit.i, label %.lr.ph.i.i.i.6

.lr.ph.i.i.i.6:                                   ; preds = %.lr.ph.i.i.i.5
  %i.aj = load ptr, ptr %.phi.trans.insert.i.i.i.i, align 8, !tbaa !359
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 6
  store i8 0, ptr %i.ak, align 1, !tbaa !81
  br label %_ZN11flatbuffers21FlatBufferBuilderImplILb0EE5AlignEm.exit.i

_ZN11flatbuffers21FlatBufferBuilderImplILb0EE5AlignEm.exit.i: ; preds = %.lr.ph.preheader.i.i.i, %.lr.ph.i.i.i.1, %.lr.ph.i.i.i.2, %.lr.ph.i.i.i.3, %.lr.ph.i.i.i.4, %.lr.ph.i.i.i.5, %.lr.ph.i.i.i.6, %_ZN11flatbuffers21FlatBufferBuilderImplILb0EE13TrackMinAlignEm.exit.i.i
  %.pre4.i.i.i = load ptr, ptr %.phi.trans.insert.i.i.i.i, align 8, !tbaa !359 ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 5 uses
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !365 ; 2 uses
  %i.an = ptrtoint ptr %.pre4.i.i.i to i64
  %i.ao = ptrtoint ptr %i.am to i64               ; 2 uses
  %i.ap = sub i64 %i.an, %i.ao
  %i.aq = and i64 %i.ap, 4294967288
  %i.ar = icmp eq i64 %i.aq, 0
  br i1 %i.ar, label %bb.f, label %_ZN11flatbuffers21FlatBufferBuilderImplILb0EE11PushElementIljEET0_T_.exit

bb.f:                                             ; preds = %_ZN11flatbuffers21FlatBufferBuilderImplILb0EE5AlignEm.exit.i
  tail call void @_ZN11flatbuffers15vector_downwardIjE10reallocateEm(ptr noundef nonnull align 8 dereferenceable(128) %0, i64 noundef 8)
  %.pre.i.i.i = load ptr, ptr %.phi.trans.insert.i.i.i.i, align 8, !tbaa !359
  %.pre = load ptr, ptr %i.al, align 8, !tbaa !365 ; 2 uses
  %.pre7 = ptrtoint ptr %.pre to i64
  br label %_ZN11flatbuffers21FlatBufferBuilderImplILb0EE11PushElementIljEET0_T_.exit

_ZN11flatbuffers21FlatBufferBuilderImplILb0EE11PushElementIljEET0_T_.exit: ; preds = %_ZN11flatbuffers21FlatBufferBuilderImplILb0EE5AlignEm.exit.i, %bb.f
  %.pre-phi = phi i64 [ %i.ao, %_ZN11flatbuffers21FlatBufferBuilderImplILb0EE5AlignEm.exit.i ], [ %.pre7, %bb.f ]
  %i.as = phi ptr [ %i.am, %_ZN11flatbuffers21FlatBufferBuilderImplILb0EE5AlignEm.exit.i ], [ %.pre, %bb.f ]
  %i.at = phi ptr [ %.pre4.i.i.i, %_ZN11flatbuffers21FlatBufferBuilderImplILb0EE5AlignEm.exit.i ], [ %.pre.i.i.i, %bb.f ]
  %i.au = getelementptr inbounds i8, ptr %i.at, i64 -8 ; 3 uses
  store ptr %i.au, ptr %.phi.trans.insert.i.i.i.i, align 8, !tbaa !359
  %i.av = load i32, ptr %i.h, align 8, !tbaa !354
  %i.aw = add i32 %i.av, 8                        ; 2 uses
  store i32 %i.aw, ptr %i.h, align 8, !tbaa !354
  store i64 %2, ptr %i.au, align 8, !tbaa !93
  %i.ax = ptrtoint ptr %i.au to i64
  %i.ay = sub i64 %i.ax, %.pre-phi
  %i.az = and i64 %i.ay, 4294967288
  %i.ba = icmp eq i64 %i.az, 0
  br i1 %i.ba, label %bb.g, label %_ZN11flatbuffers15vector_downwardIjE18scratch_push_smallINS_21FlatBufferBuilderImplILb0EE8FieldLocEEEvRKT_.exit.i

bb.g:                                             ; preds = %_ZN11flatbuffers21FlatBufferBuilderImplILb0EE11PushElementIljEET0_T_.exit
  tail call void @_ZN11flatbuffers15vector_downwardIjE10reallocateEm(ptr noundef nonnull align 8 dereferenceable(128) %0, i64 noundef 8)
  %.pre.i.i4 = load ptr, ptr %i.al, align 8, !tbaa !365
  br label %_ZN11flatbuffers15vector_downwardIjE18scratch_push_smallINS_21FlatBufferBuilderImplILb0EE8FieldLocEEEvRKT_.exit.i

_ZN11flatbuffers15vector_downwardIjE18scratch_push_smallINS_21FlatBufferBuilderImplILb0EE8FieldLocEEEvRKT_.exit.i: ; preds = %bb.g, %_ZN11flatbuffers21FlatBufferBuilderImplILb0EE11PushElementIljEET0_T_.exit
  %i.bb = phi ptr [ %i.as, %_ZN11flatbuffers21FlatBufferBuilderImplILb0EE11PushElementIljEET0_T_.exit ], [ %.pre.i.i4, %bb.g ]
  %.sroa.4.0.insert.ext.i = zext i16 %1 to i64
  %.sroa.4.0.insert.shift.i = shl nuw nsw i64 %.sroa.4.0.insert.ext.i, 32
  %.sroa.0.0.insert.ext.i = zext i32 %i.aw to i64
  %.sroa.0.0.insert.insert.i = or disjoint i64 %.sroa.4.0.insert.shift.i, %.sroa.0.0.insert.ext.i
  store i64 %.sroa.0.0.insert.insert.i, ptr %i.bb, align 4
  %i.bc = load ptr, ptr %i.al, align 8, !tbaa !365
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bc, i64 8
  store ptr %i.bd, ptr %i.al, align 8, !tbaa !365
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 2 uses
  %i.bf = load i32, ptr %i.be, align 8, !tbaa !364
  %i.bg = add i32 %i.bf, 1
  store i32 %i.bg, ptr %i.be, align 8, !tbaa !364
  %i.bh = getelementptr inbounds nuw i8, ptr %0, i64 84 ; 2 uses
  %i.bi = load i16, ptr %i.bh, align 4, !tbaa !366
  %i.bj = icmp ugt i16 %1, %i.bi
  br i1 %i.bj, label %bb.h, label %_ZN11flatbuffers21FlatBufferBuilderImplILb0EE10TrackFieldEtj.exit

bb.h:                                             ; preds = %_ZN11flatbuffers15vector_downwardIjE18scratch_push_smallINS_21FlatBufferBuilderImplILb0EE8FieldLocEEEvRKT_.exit.i
  store i16 %1, ptr %i.bh, align 4, !tbaa !366
  br label %_ZN11flatbuffers21FlatBufferBuilderImplILb0EE10TrackFieldEtj.exit

_ZN11flatbuffers21FlatBufferBuilderImplILb0EE10TrackFieldEtj.exit: ; preds = %bb.a, %bb.h, %_ZN11flatbuffers15vector_downwardIjE18scratch_push_smallINS_21FlatBufferBuilderImplILb0EE8FieldLocEEEvRKT_.exit.i
  ret void
}

; Function Attrs: mustprogress uwtable
define internal fastcc void @_ZN11flatbuffers12_GLOBAL__N_14atotImEENS_12CheckedErrorEPKcRNS_6ParserEPT_(ptr dead_on_unwind noalias nofree writable writeonly align 1 captures(none) %0, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(1936) %2, ptr noundef nonnull %3) unnamed_addr #1 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %i.b = alloca i64, align 8                      ; 6 uses
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %6 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  %7 = alloca %"class.std::__cxx11::basic_string", align 8 ; 16 uses
  %8 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %9 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %10 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %11 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  %12 = alloca %"class.std::__cxx11::basic_string", align 8 ; 13 uses
  %i.c = tail call noundef zeroext i1 @_ZN11flatbuffers19StringToIntegerImplImEEbPT_PKcib(ptr noundef nonnull %3, ptr noundef %1, i32 noundef 0, i1 noundef zeroext true)
  %i.d = load i64, ptr %3, align 8, !tbaa !93
  %.not.i.i = icmp eq i64 %i.d, 0                 ; 2 uses
  br i1 %i.c, label %bb.b, label %_ZN11flatbuffers12_GLOBAL__N_111atot_scalarImEEbPKcPT_St17integral_constantIbLb0EE.exit

bb.b:                                             ; preds = %bb.a
  br i1 %.not.i.i, label %bb.c, label %.preheader.i.i

.preheader.i.i:                                   ; preds = %bb.b, %.preheader.i.i
  %.014.i.i = phi ptr [ %i.g, %.preheader.i.i ], [ %1, %bb.b ] ; 4 uses
  %i.e = load i8, ptr %.014.i.i, align 1, !tbaa !81 ; 2 uses
  %.not17.i.i = icmp eq i8 %i.e, 0
  %13 = add i8 %i.e, -48
  %i.f = icmp ult i8 %13, 10
  %or.cond.i.i = or i1 %.not17.i.i, %i.f
  %i.g = getelementptr inbounds nuw i8, ptr %.014.i.i, i64 1
  br i1 %or.cond.i.i, label %.critedge.i.i, label %.preheader.i.i, !llvm.loop !8

.critedge.i.i:                                    ; preds = %.preheader.i.i
  %i.h = icmp ugt ptr %.014.i.i, %1
  %.idx.i.i = sext i1 %i.h to i64
  %i.i = getelementptr inbounds i8, ptr %.014.i.i, i64 %.idx.i.i
  %i.j = load i8, ptr %i.i, align 1, !tbaa !81
  %i.k = icmp eq i8 %i.j, 45
  br i1 %i.k, label %_ZN11flatbuffers12_GLOBAL__N_111atot_scalarImEEbPKcPT_St17integral_constantIbLb0EE.exit.thread120, label %bb.c

_ZN11flatbuffers12_GLOBAL__N_111atot_scalarImEEbPKcPT_St17integral_constantIbLb0EE.exit.thread120: ; preds = %.critedge.i.i
  store i64 -1, ptr %3, align 8, !tbaa !93
  br label %bb.t

bb.c:                                             ; preds = %bb.b, %.critedge.i.i
  store i8 0, ptr %0, align 1, !tbaa !212, !alias.scope !1433
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 1
  store i8 0, ptr %i.l, align 1, !tbaa !213, !alias.scope !1433
  br label %bb.av

_ZN11flatbuffers12_GLOBAL__N_111atot_scalarImEEbPKcPT_St17integral_constantIbLb0EE.exit: ; preds = %bb.a
  br i1 %.not.i.i, label %bb.d, label %bb.t

bb.d:                                             ; preds = %_ZN11flatbuffers12_GLOBAL__N_111atot_scalarImEEbPKcPT_St17integral_constantIbLb0EE.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #32
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #32
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #32
  %i.m = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 7 uses
  store ptr %i.m, ptr %6, align 8, !tbaa !80
  %i.n = icmp eq ptr %1, null
  br i1 %i.n, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  invoke void @_ZSt19__throw_logic_errorPKc(ptr noundef nonnull @.str.329) #31
          to label %.noexc unwind label %bb.p

.noexc:                                           ; preds = %bb.e
  unreachable

bb.f:                                             ; preds = %bb.d
  %i.o = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %1) #32 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #32
  store i64 %i.o, ptr %i.b, align 8, !tbaa !93
  %i.p = icmp ugt i64 %i.o, 15
  br i1 %i.p, label %.noexc.i, label %._crit_edge.i.i

.noexc.i:                                         ; preds = %bb.f
  %i.q = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef nonnull align 8 dereferenceable(8) %i.b, i64 noundef 0)
          to label %.noexc30 unwind label %bb.p   ; 2 uses

.noexc30:                                         ; preds = %.noexc.i
  store ptr %i.q, ptr %6, align 8, !tbaa !82
  %i.r = load i64, ptr %i.b, align 8, !tbaa !93
  store i64 %i.r, ptr %i.m, align 8, !tbaa !81
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %.noexc30, %bb.f
  %i.s = phi ptr [ %i.q, %.noexc30 ], [ %i.m, %bb.f ] ; 2 uses
  switch i64 %i.o, label %bb.h [
    i64 1, label %bb.g
    i64 0, label %bb.i
  ]

bb.g:                                             ; preds = %._crit_edge.i.i
  %i.t = load i8, ptr %1, align 1, !tbaa !81
  store i8 %i.t, ptr %i.s, align 1, !tbaa !81
  br label %bb.i

bb.h:                                             ; preds = %._crit_edge.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.s, ptr nonnull align 1 %1, i64 %i.o, i1 false)
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g, %._crit_edge.i.i
  %i.u = load i64, ptr %i.b, align 8, !tbaa !93   ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %6, i64 8
  store i64 %i.u, ptr %i.v, align 8, !tbaa !79
  %i.w = load ptr, ptr %6, align 8, !tbaa !82
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 %i.u
  store i8 0, ptr %i.x, align 1, !tbaa !81
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #32
  %i.y = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %6, i64 noundef 0, i64 noundef 0, ptr noundef nonnull @.str.333, i64 noundef 17)
          to label %.noexc31 unwind label %bb.q   ; 6 uses

.noexc31:                                         ; preds = %bb.i
  %i.z = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 7 uses
  store ptr %i.z, ptr %5, align 8, !tbaa !80, !alias.scope !1434
  %i.aa = load ptr, ptr %i.y, align 8, !tbaa !82  ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %i.y, i64 16 ; 5 uses
  %i.ac = icmp eq ptr %i.aa, %i.ab
  br i1 %i.ac, label %bb.j, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

bb.j:                                             ; preds = %.noexc31
  %i.ad = getelementptr inbounds nuw i8, ptr %i.y, i64 8
  %i.ae = load i64, ptr %i.ad, align 8, !tbaa !79 ; 3 uses
  %i.af = icmp ult i64 %i.ae, 16
  call void @llvm.assume(i1 %i.af)
  %i.ag = add nuw nsw i64 %i.ae, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.z, ptr noundef nonnull align 8 dereferenceable(1) %i.ab, i64 %i.ag, i1 false)
  br label %bb.k

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %.noexc31
  store ptr %i.aa, ptr %5, align 8, !tbaa !82, !alias.scope !1434
  %i.ah = load i64, ptr %i.ab, align 8, !tbaa !81
  store i64 %i.ah, ptr %i.z, align 8, !tbaa !81, !alias.scope !1434
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %i.y, i64 8
  %.pre.i = load i64, ptr %.phi.trans.insert.i, align 8, !tbaa !79
  br label %bb.k

bb.k:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %bb.j
  %i.ai = phi i64 [ %i.ae, %bb.j ], [ %.pre.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ]
  %i.aj = getelementptr inbounds nuw i8, ptr %i.y, i64 8
  %i.ak = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 2 uses
  store i64 %i.ai, ptr %i.ak, align 8, !tbaa !79, !alias.scope !1434
  store ptr %i.ab, ptr %i.y, align 8, !tbaa !82
  store i64 0, ptr %i.aj, align 8, !tbaa !79
  store i8 0, ptr %i.ab, align 8, !tbaa !81
  call void @llvm.experimental.noalias.scope.decl(metadata !1435)
  %i.al = load i64, ptr %i.ak, align 8, !tbaa !79, !noalias !1435
  %i.am = icmp eq i64 %i.al, 4611686018427387903
  br i1 %i.am, label %bb.l, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i

bb.l:                                             ; preds = %bb.k
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.330) #31
          to label %.noexc35 unwind label %bb.r

.noexc35:                                         ; preds = %bb.l
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i: ; preds = %bb.k
  %i.an = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull @.str.155, i64 noundef 1)
          to label %.noexc36 unwind label %bb.r   ; 6 uses

.noexc36:                                         ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i
  %i.ao = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 7 uses
  store ptr %i.ao, ptr %4, align 8, !tbaa !80, !alias.scope !1435
  %i.ap = load ptr, ptr %i.an, align 8, !tbaa !82 ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %i.an, i64 16 ; 5 uses
  %i.ar = icmp eq ptr %i.ap, %i.aq
  br i1 %i.ar, label %bb.m, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i32

bb.m:                                             ; preds = %.noexc36
  %i.as = getelementptr inbounds nuw i8, ptr %i.an, i64 8
  %i.at = load i64, ptr %i.as, align 8, !tbaa !79 ; 3 uses
  %i.au = icmp ult i64 %i.at, 16
  call void @llvm.assume(i1 %i.au)
  %i.av = add nuw nsw i64 %i.at, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.ao, ptr noundef nonnull align 8 dereferenceable(1) %i.aq, i64 %i.av, i1 false)
  br label %bb.n

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i32: ; preds = %.noexc36
  store ptr %i.ap, ptr %4, align 8, !tbaa !82, !alias.scope !1435
  %i.aw = load i64, ptr %i.aq, align 8, !tbaa !81
  store i64 %i.aw, ptr %i.ao, align 8, !tbaa !81, !alias.scope !1435
  %.phi.trans.insert.i33 = getelementptr inbounds nuw i8, ptr %i.an, i64 8
  %.pre.i34 = load i64, ptr %.phi.trans.insert.i33, align 8, !tbaa !79
  br label %bb.n

bb.n:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i32, %bb.m
  %i.ax = phi i64 [ %i.at, %bb.m ], [ %.pre.i34, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i32 ]
  %i.ay = getelementptr inbounds nuw i8, ptr %i.an, i64 8
  %i.az = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i64 %i.ax, ptr %i.az, align 8, !tbaa !79, !alias.scope !1435
  store ptr %i.aq, ptr %i.an, align 8, !tbaa !82
  store i64 0, ptr %i.ay, align 8, !tbaa !79
  store i8 0, ptr %i.aq, align 8, !tbaa !81
  invoke void @_ZN11flatbuffers6Parser5ErrorERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr dead_on_unwind writable sret(%"class.flatbuffers::CheckedError") align 1 %0, ptr noundef nonnull align 8 dereferenceable(1936) %2, ptr noundef nonnull align 8 dereferenceable(32) %4)
          to label %bb.o unwind label %bb.s

bb.o:                                             ; preds = %bb.n
  %i.ba = load ptr, ptr %4, align 8, !tbaa !82    ; 2 uses
  %i.bb = icmp eq ptr %i.ba, %i.ao
  br i1 %i.bb, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i37

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i37: ; preds = %bb.o
  %i.bc = load i64, ptr %i.ao, align 8, !tbaa !81
  %i.bd = add i64 %i.bc, 1
  call void @_ZdlPvm(ptr noundef %i.ba, i64 noundef %i.bd) #33
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.o, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i37
  %i.be = load ptr, ptr %5, align 8, !tbaa !82    ; 2 uses
  %i.bf = icmp eq ptr %i.be, %i.z
  br i1 %i.bf, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit40, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i38

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i38: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.bg = load i64, ptr %i.z, align 8, !tbaa !81
  %i.bh = add i64 %i.bg, 1
  call void @_ZdlPvm(ptr noundef %i.be, i64 noundef %i.bh) #33
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit40

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit40: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i38
  %i.bi = load ptr, ptr %6, align 8, !tbaa !82    ; 2 uses
  %i.bj = icmp eq ptr %i.bi, %i.m
  br i1 %i.bj, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit43, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i41

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i41: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit40
  %i.bk = load i64, ptr %i.m, align 8, !tbaa !81
  %i.bl = add i64 %i.bk, 1
  call void @_ZdlPvm(ptr noundef %i.bi, i64 noundef %i.bl) #33
end_hunk_15
begin_hunk_16_@_ZN11flatbuffers21FlatBufferBuilderImplILb0EE8EndTableEj:bb.a
  %i.ac = ptrtoint ptr %i.aa to i64               ; 2 uses
  %i.ad = sub i64 %i.ab, %i.ac
  %i.ae = and i64 %i.ad, 4294967292
  %i.af = icmp eq i64 %i.ae, 0
  br i1 %i.af, label %bb.e, label %bb.f

bb.e:                                             ; preds = %_ZN11flatbuffers21FlatBufferBuilderImplILb0EE5AlignEm.exit.i
  tail call void @_ZN11flatbuffers15vector_downwardIjE10reallocateEm(ptr noundef nonnull align 8 dereferenceable(128) %0, i64 noundef 4)
  %.pre.i.i.i = load ptr, ptr %.phi.trans.insert.i.i.i.i, align 8, !tbaa !359
  %.pre = load ptr, ptr %i.z, align 8, !tbaa !365
  %.pre44 = ptrtoint ptr %.pre to i64
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %_ZN11flatbuffers21FlatBufferBuilderImplILb0EE5AlignEm.exit.i
  %.pre-phi = phi i64 [ %.pre44, %bb.e ], [ %i.ac, %_ZN11flatbuffers21FlatBufferBuilderImplILb0EE5AlignEm.exit.i ]
  %i.ag = phi ptr [ %.pre.i.i.i, %bb.e ], [ %.pre4.i.i.i, %_ZN11flatbuffers21FlatBufferBuilderImplILb0EE5AlignEm.exit.i ]
  %i.ah = getelementptr inbounds i8, ptr %i.ag, i64 -4 ; 4 uses
  store ptr %i.ah, ptr %.phi.trans.insert.i.i.i.i, align 8, !tbaa !359
  %i.ai = load i32, ptr %i.d, align 8, !tbaa !354
  %i.aj = add i32 %i.ai, 4
  store i32 %i.aj, ptr %i.d, align 8, !tbaa !354
  store i32 0, ptr %i.ah, align 4, !tbaa !221
  %i.ak = load i32, ptr %i.d, align 8, !tbaa !354 ; 10 uses
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 84 ; 4 uses
  %i.am = load i16, ptr %i.al, align 4, !tbaa !366
  %i.an = add i16 %i.am, 2
  %.sroa.speculated = tail call i16 @llvm.umax.i16(i16 %i.an, i16 4) ; 3 uses
  store i16 %.sroa.speculated, ptr %i.al, align 4, !tbaa !366
  %i.ao = zext i16 %.sroa.speculated to i64       ; 4 uses
  %i.ap = ptrtoint ptr %i.ah to i64
  %i.aq = sub i64 %i.ap, %.pre-phi
  %i.ar = and i64 %i.aq, 4294967295
  %i.as = icmp samesign ult i64 %i.ar, %i.ao
  br i1 %i.as, label %bb.g, label %_ZN11flatbuffers15vector_downwardIjE8fill_bigEm.exit

bb.g:                                             ; preds = %bb.f
  tail call void @_ZN11flatbuffers15vector_downwardIjE10reallocateEm(ptr noundef nonnull align 8 dereferenceable(80) %0, i64 noundef %i.ao)
  %.pre.i.i30 = load ptr, ptr %.phi.trans.insert.i.i.i.i, align 8, !tbaa !359
  %.pre43 = load i32, ptr %i.d, align 8, !tbaa !354
  br label %_ZN11flatbuffers15vector_downwardIjE8fill_bigEm.exit

_ZN11flatbuffers15vector_downwardIjE8fill_bigEm.exit: ; preds = %bb.f, %bb.g
  %i.at = phi i32 [ %i.ak, %bb.f ], [ %.pre43, %bb.g ]
  %i.au = phi ptr [ %i.ah, %bb.f ], [ %.pre.i.i30, %bb.g ]
  %i.av = sub nsw i64 0, %i.ao
  %i.aw = getelementptr inbounds i8, ptr %i.au, i64 %i.av ; 2 uses
  store ptr %i.aw, ptr %.phi.trans.insert.i.i.i.i, align 8, !tbaa !359
  %i.ax = zext i16 %.sroa.speculated to i32
  %i.ay = add i32 %i.at, %i.ax
  store i32 %i.ay, ptr %i.d, align 8, !tbaa !354
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %i.aw, i8 0, i64 %i.ao, i1 false)
  %i.az = sub i32 %i.ak, %1
  %i.ba = load ptr, ptr %.phi.trans.insert.i.i.i.i, align 8, !tbaa !359 ; 9 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ba, i64 2
  %i.bc = trunc i32 %i.az to i16
  store i16 %i.bc, ptr %i.bb, align 2, !tbaa !254
  %i.bd = load i16, ptr %i.al, align 4, !tbaa !366
  store i16 %i.bd, ptr %i.ba, align 2, !tbaa !254
  %i.be = load ptr, ptr %i.z, align 8, !tbaa !365 ; 2 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 2 uses
  %i.bg = load i32, ptr %i.bf, align 8, !tbaa !364 ; 2 uses
  %i.bh = zext i32 %i.bg to i64
  %.neg = mul nsw i64 %i.bh, -8
  %i.bi = getelementptr inbounds i8, ptr %i.be, i64 %.neg ; 6 uses
  %.not41 = icmp eq i32 %i.bg, 0
  br i1 %.not41, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %.lr.ph, %_ZN11flatbuffers15vector_downwardIjE8fill_bigEm.exit
  store ptr %i.bi, ptr %i.z, align 8, !tbaa !365
  store i32 0, ptr %i.bf, align 8, !tbaa !364
  store i16 0, ptr %i.al, align 4, !tbaa !366
  %i.bj = load i16, ptr %i.ba, align 2, !tbaa !254 ; 2 uses
  %i.bk = load i32, ptr %i.d, align 8, !tbaa !354 ; 7 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %0, i64 113
  %i.bm = load i8, ptr %i.bl, align 1, !tbaa !391, !range !208, !noundef !209
  %i.bn = trunc nuw i8 %i.bm to i1
  br i1 %i.bn, label %bb.h, label %.loopexit.thread

.lr.ph:                                           ; preds = %_ZN11flatbuffers15vector_downwardIjE8fill_bigEm.exit, %.lr.ph
  %.02837 = phi ptr [ %i.bv, %.lr.ph ], [ %i.bi, %_ZN11flatbuffers15vector_downwardIjE8fill_bigEm.exit ] ; 3 uses
  %i.bo = load i32, ptr %.02837, align 4, !tbaa !1461
  %i.bp = sub i32 %i.ak, %i.bo
  %i.bq = trunc i32 %i.bp to i16
  %i.br = getelementptr inbounds nuw i8, ptr %.02837, i64 4
  %i.bs = load i16, ptr %i.br, align 4, !tbaa !1462
  %i.bt = zext i16 %i.bs to i64
  %i.bu = getelementptr inbounds nuw i8, ptr %i.ba, i64 %i.bt
  store i16 %i.bq, ptr %i.bu, align 2, !tbaa !254
  %i.bv = getelementptr inbounds nuw i8, ptr %.02837, i64 8 ; 2 uses
  %i.bw = icmp ult ptr %i.bv, %i.be
  br i1 %i.bw, label %.lr.ph, label %._crit_edge, !llvm.loop !1458

bb.h:                                             ; preds = %._crit_edge
  %i.bx = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.by = load ptr, ptr %i.bx, align 8, !tbaa !396 ; 3 uses
  %i.bz = icmp ult ptr %i.by, %i.bi
  br i1 %i.bz, label %.lr.ph40, label %.loopexit.thread

.lr.ph40:                                         ; preds = %bb.h
  %i.ca = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.cb = load i64, ptr %i.ca, align 8, !tbaa !388
  %i.cc = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.cd = load i64, ptr %i.cc, align 8, !tbaa !387
  %i.ce = getelementptr inbounds nuw i8, ptr %i.by, i64 %i.cd
  %i.cf = zext i16 %i.bj to i64
  br label %bb.i

bb.i:                                             ; preds = %.lr.ph40, %bb.k
  %.02738 = phi ptr [ %i.by, %.lr.ph40 ], [ %i.cm, %bb.k ] ; 2 uses
  %i.cg = load i32, ptr %.02738, align 4, !tbaa !221 ; 4 uses
  %i.ch = zext i32 %i.cg to i64
  %i.ci = add i64 %i.cb, %i.ch
  %i.cj = sub i64 0, %i.ci
  %i.ck = getelementptr inbounds i8, ptr %i.ce, i64 %i.cj ; 2 uses
  %i.cl = load i16, ptr %i.ck, align 2, !tbaa !254
  %.not = icmp eq i16 %i.bj, %i.cl
  br i1 %.not, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %bcmp = tail call i32 @bcmp(ptr nonnull %i.ck, ptr nonnull %i.ba, i64 %i.cf)
  %.not29 = icmp eq i32 %bcmp, 0
  br i1 %.not29, label %.loopexit, label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  %i.cm = getelementptr inbounds nuw i8, ptr %.02738, i64 4 ; 2 uses
  %i.cn = icmp ult ptr %i.cm, %i.bi
  br i1 %i.cn, label %bb.i, label %.loopexit.thread, !llvm.loop !1459

.loopexit:                                        ; preds = %bb.j
  %i.co = sub i32 %i.bk, %i.ak
  %i.cp = zext i32 %i.co to i64
  %i.cq = getelementptr inbounds nuw i8, ptr %i.ba, i64 %i.cp ; 2 uses
  store ptr %i.cq, ptr %.phi.trans.insert.i.i.i.i, align 8, !tbaa !359
  store i32 %i.ak, ptr %i.d, align 8, !tbaa !354
  %i.cr = icmp eq i32 %i.cg, %i.ak
  br i1 %i.cr, label %.loopexit.thread, label %bb.m

.loopexit.thread:                                 ; preds = %bb.k, %bb.h, %._crit_edge, %.loopexit
  %.054 = phi i32 [ %i.cg, %.loopexit ], [ %i.bk, %._crit_edge ], [ %i.bk, %bb.h ], [ %i.bk, %bb.k ]
  %i.cs = phi i32 [ %i.ak, %.loopexit ], [ %i.bk, %._crit_edge ], [ %i.bk, %bb.h ], [ %i.bk, %bb.k ]
  %i.ct = phi ptr [ %i.cq, %.loopexit ], [ %i.ba, %._crit_edge ], [ %i.ba, %bb.h ], [ %i.ba, %bb.k ]
  %i.cu = ptrtoint ptr %i.ct to i64
  %i.cv = ptrtoint ptr %i.bi to i64
  %i.cw = sub i64 %i.cu, %i.cv
  %i.cx = and i64 %i.cw, 4294967292
  %i.cy = icmp eq i64 %i.cx, 0
  br i1 %i.cy, label %bb.l, label %_ZN11flatbuffers15vector_downwardIjE18scratch_push_smallIjEEvRKT_.exit

bb.l:                                             ; preds = %.loopexit.thread
  tail call void @_ZN11flatbuffers15vector_downwardIjE10reallocateEm(ptr noundef nonnull align 8 dereferenceable(80) %0, i64 noundef 4)
  %.pre.i = load ptr, ptr %i.z, align 8, !tbaa !365
  br label %_ZN11flatbuffers15vector_downwardIjE18scratch_push_smallIjEEvRKT_.exit

_ZN11flatbuffers15vector_downwardIjE18scratch_push_smallIjEEvRKT_.exit: ; preds = %.loopexit.thread, %bb.l
  %i.cz = phi ptr [ %i.bi, %.loopexit.thread ], [ %.pre.i, %bb.l ] ; 2 uses
  store i32 %i.cs, ptr %i.cz, align 4, !tbaa !221
  %i.da = getelementptr inbounds nuw i8, ptr %i.cz, i64 4
  store ptr %i.da, ptr %i.z, align 8, !tbaa !365
  br label %bb.m

bb.m:                                             ; preds = %_ZN11flatbuffers15vector_downwardIjE18scratch_push_smallIjEEvRKT_.exit, %.loopexit
  %.053 = phi i32 [ %.054, %_ZN11flatbuffers15vector_downwardIjE18scratch_push_smallIjEEvRKT_.exit ], [ %i.cg, %.loopexit ]
  %i.db = zext i32 %i.ak to i64
  %i.dc = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.dd = load i64, ptr %i.dc, align 8, !tbaa !388
  %i.de = add i64 %i.dd, %i.db
  %i.df = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.dg = load ptr, ptr %i.df, align 8, !tbaa !396
  %i.dh = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.di = load i64, ptr %i.dh, align 8, !tbaa !387
  %i.dj = getelementptr inbounds nuw i8, ptr %i.dg, i64 %i.di
  %i.dk = sub i64 0, %i.de
  %i.dl = getelementptr inbounds i8, ptr %i.dj, i64 %i.dk
  %i.dm = sub nsw i32 %.053, %i.ak
  store i32 %i.dm, ptr %i.dl, align 4, !tbaa !221
  %i.dn = getelementptr inbounds nuw i8, ptr %0, i64 96
  store i8 0, ptr %i.dn, align 8, !tbaa !381
  ret i32 %i.ak
}

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN11flatbuffers6Parser19ParseAlignAttributeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEmPm(ptr dead_on_unwind noalias nofree writable writeonly sret(%"class.flatbuffers::CheckedError") align 1 captures(none) %0, ptr noundef nonnull align 8 dereferenceable(1936) %1, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %2, i64 noundef %3, ptr nofree noundef writeonly captures(none) %4) local_unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 5 uses
  %i.b = alloca ptr, align 8                      ; 5 uses
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 16 uses
  %6 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %7 = alloca %"class.std::__cxx11::basic_string", align 8 ; 17 uses
  %8 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %9 = alloca %"class.std::__cxx11::basic_string", align 8 ; 13 uses
  %10 = alloca %"class.std::__cxx11::basic_string", align 8 ; 13 uses
  %11 = alloca %"class.std::__cxx11::basic_string", align 8 ; 13 uses
  %i.c = load ptr, ptr %2, align 8, !tbaa !82     ; 8 uses
  %i.d = load i8, ptr %i.c, align 1, !tbaa !81    ; 2 uses
  %.not2533.i.i = icmp eq i8 %i.d, 0
  br i1 %.not2533.i.i, label %.critedge.thread.i.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.a, %bb.b
  %i.e = phi i8 [ %i.h, %bb.b ], [ %i.d, %bb.a ]  ; 2 uses
  %.034.i.i = phi ptr [ %i.g, %bb.b ], [ %i.c, %bb.a ] ; 2 uses
  %12 = add i8 %i.e, -48
  %i.f = icmp ult i8 %12, 10
  br i1 %i.f, label %.critedge.i.i, label %bb.b

bb.b:                                             ; preds = %.lr.ph.i.i
  %i.g = getelementptr inbounds nuw i8, ptr %.034.i.i, i64 1 ; 2 uses
  %i.h = load i8, ptr %i.g, align 1, !tbaa !81    ; 2 uses
  %.not25.i.i = icmp eq i8 %i.h, 0
  br i1 %.not25.i.i, label %.critedge.thread.i.i, label %.lr.ph.i.i, !llvm.loop !3

.critedge.i.i:                                    ; preds = %.lr.ph.i.i
  %i.i = icmp eq i8 %i.e, 48
  br i1 %i.i, label %bb.c, label %.critedge.thread.i.i

bb.c:                                             ; preds = %.critedge.i.i
  %i.j = getelementptr inbounds nuw i8, ptr %.034.i.i, i64 1
  %i.k = load i8, ptr %i.j, align 1, !tbaa !81
  %i.l = and i8 %i.k, -33
  %i.m = icmp eq i8 %i.l, 88
  br i1 %i.m, label %bb.d, label %.critedge.thread.i.i

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #32
  store ptr %i.c, ptr %i.b, align 8, !tbaa !219
  %i.n = load ptr, ptr @_ZN11flatbuffers13ClassicLocale9instance_E, align 8, !tbaa !224
  %i.o = call i64 @__isoc23_strtoll_l(ptr noundef nonnull %i.c, ptr noundef nonnull %i.b, i32 noundef 16, ptr noundef %i.n) #32, !inline_history !307
  %i.p = load ptr, ptr %i.b, align 8, !tbaa !219  ; 2 uses
  %i.q = load i8, ptr %i.p, align 1, !tbaa !81
  %.not.i.i.i = icmp ne i8 %i.q, 0
  %i.r = icmp eq ptr %i.p, %i.c
  %or.cond.i.i.i = or i1 %i.r, %.not.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #32
  br i1 %or.cond.i.i.i, label %_ZN11flatbuffers14StringToNumberIhEEbPKcPT_.exit.thread, label %_ZN11flatbuffers14StringToNumberIhEEbPKcPT_.exit

.critedge.thread.i.i:                             ; preds = %bb.b, %bb.c, %.critedge.i.i, %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #32
  store ptr %i.c, ptr %i.a, align 8, !tbaa !219
  %i.s = load ptr, ptr @_ZN11flatbuffers13ClassicLocale9instance_E, align 8, !tbaa !224
  %i.t = call i64 @__isoc23_strtoll_l(ptr noundef nonnull %i.c, ptr noundef nonnull %i.a, i32 noundef 10, ptr noundef %i.s) #32, !inline_history !307
  %i.u = load ptr, ptr %i.a, align 8, !tbaa !219  ; 2 uses
  %i.v = load i8, ptr %i.u, align 1, !tbaa !81
  %.not.i26.i.i = icmp ne i8 %i.v, 0
  %i.w = icmp eq ptr %i.u, %i.c
  %or.cond.i27.i.i = or i1 %i.w, %.not.i26.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #32
  br i1 %or.cond.i27.i.i, label %_ZN11flatbuffers14StringToNumberIhEEbPKcPT_.exit.thread, label %_ZN11flatbuffers14StringToNumberIhEEbPKcPT_.exit

_ZN11flatbuffers14StringToNumberIhEEbPKcPT_.exit: ; preds = %bb.d, %.critedge.thread.i.i
  %.28.i = phi i64 [ %i.o, %bb.d ], [ %i.t, %.critedge.thread.i.i ] ; 5 uses
  %or.cond.i = icmp ult i64 %.28.i, 256
  br i1 %or.cond.i, label %bb.e, label %_ZN11flatbuffers14StringToNumberIhEEbPKcPT_.exit.thread

bb.e:                                             ; preds = %_ZN11flatbuffers14StringToNumberIhEEbPKcPT_.exit
  %i.x = icmp ule i64 %3, %.28.i
  %i.y = icmp samesign ult i64 %.28.i, 33
  %or.cond.i19 = and i1 %i.y, %i.x
  %i.z = call range(i64 0, 7) i64 @llvm.ctpop.i64(i64 %.28.i)
  %i.aa = icmp samesign ult i64 %i.z, 2
  %or.cond = select i1 %or.cond.i19, i1 %i.aa, i1 false
  br i1 %or.cond, label %bb.f, label %_ZN11flatbuffers14StringToNumberIhEEbPKcPT_.exit.thread

bb.f:                                             ; preds = %bb.e
  store i64 %.28.i, ptr %4, align 8, !tbaa !93
  store i8 0, ptr %0, align 1, !tbaa !212, !alias.scope !1477
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 1
  store i8 0, ptr %i.ab, align 1, !tbaa !213, !alias.scope !1477
  br label %bb.ai

_ZN11flatbuffers14StringToNumberIhEEbPKcPT_.exit.thread: ; preds = %bb.e, %bb.d, %.critedge.thread.i.i, %_ZN11flatbuffers14StringToNumberIhEEbPKcPT_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #32
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #32
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #32
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #32
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #32
  call void @llvm.experimental.noalias.scope.decl(metadata !1478)
  %i.ac = load ptr, ptr %2, align 8, !tbaa !82, !noalias !1478
  %i.ad = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.ae = load i64, ptr %i.ad, align 8, !tbaa !79, !noalias !1478 ; 3 uses
  %i.af = getelementptr inbounds nuw i8, ptr %9, i64 16 ; 8 uses
  store ptr %i.af, ptr %9, align 8, !tbaa !80, !alias.scope !1479
  %i.ag = getelementptr inbounds nuw i8, ptr %9, i64 8 ; 4 uses
  store i64 0, ptr %i.ag, align 8, !tbaa !79, !alias.scope !1479
  store i8 0, ptr %i.af, align 8, !tbaa !81, !alias.scope !1479
  %i.ah = add i64 %i.ae, 30
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7reserveEm(ptr noundef nonnull align 8 dereferenceable(32) %9, i64 noundef %i.ah)
          to label %bb.g unwind label %bb.h

bb.g:                                             ; preds = %_ZN11flatbuffers14StringToNumberIhEEbPKcPT_.exit.thread
  %i.ai = load i64, ptr %i.ag, align 8, !tbaa !79, !alias.scope !1479
  %i.aj = add i64 %i.ai, -4611686018427387874
  %i.ak = icmp ult i64 %i.aj, 30
  br i1 %i.ak, label %.invoke.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i: ; preds = %bb.g
  %i.al = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %9, ptr noundef nonnull @.str.123, i64 noundef 30)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.i.i unwind label %bb.h ; 0 uses

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i
  %i.am = load i64, ptr %i.ag, align 8, !tbaa !79, !alias.scope !1479
  %i.an = sub i64 4611686018427387903, %i.am
  %i.ao = icmp ult i64 %i.an, %i.ae
  br i1 %i.ao, label %.invoke.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i10.i.i

.invoke.i.i:                                      ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.i.i, %bb.g
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.330) #31
          to label %.cont.i.i unwind label %bb.h

.cont.i.i:                                        ; preds = %.invoke.i.i
  unreachable

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i10.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.i.i
  %i.ap = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %9, ptr noundef %i.ac, i64 noundef %i.ae)
          to label %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_RKS8_.exit unwind label %bb.h ; 0 uses

bb.h:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i10.i.i, %.invoke.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i, %_ZN11flatbuffers14StringToNumberIhEEbPKcPT_.exit.thread
  %i.aq = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ar = load ptr, ptr %9, align 8, !tbaa !82, !alias.scope !1479 ; 2 uses
  %i.as = icmp eq ptr %i.ar, %i.af
  br i1 %i.as, label %common.resume, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %bb.h
  %i.at = load i64, ptr %i.af, align 8, !tbaa !81, !alias.scope !1479
  %i.au = add i64 %i.at, 1
  call void @_ZdlPvm(ptr noundef %i.ar, i64 noundef %i.au) #33
  br label %common.resume

common.resume:                                    ; preds = %bb.h, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit90
  %common.resume.op = phi { ptr, i32 } [ %.pn.pn.pn.pn.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit90 ], [ %i.aq, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i ], [ %i.aq, %bb.h ]
  resume { ptr, i32 } %common.resume.op

_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_RKS8_.exit: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i10.i.i
  call void @llvm.experimental.noalias.scope.decl(metadata !1480)
  %i.av = load i64, ptr %i.ag, align 8, !tbaa !79, !noalias !1480
  %i.aw = add i64 %i.av, -4611686018427387818
  %i.ax = icmp ult i64 %i.aw, 86
  br i1 %i.ax, label %bb.i, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i

bb.i:                                             ; preds = %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_RKS8_.exit
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.330) #31
          to label %.noexc unwind label %bb.ab

.noexc:                                           ; preds = %bb.i
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i: ; preds = %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_RKS8_.exit
  %i.ay = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %9, ptr noundef nonnull @.str.124, i64 noundef 86)
          to label %.noexc20 unwind label %bb.ab  ; 6 uses

.noexc20:                                         ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i
  %i.az = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 9 uses
  store ptr %i.az, ptr %8, align 8, !tbaa !80, !alias.scope !1480
  %i.ba = load ptr, ptr %i.ay, align 8, !tbaa !82 ; 2 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ay, i64 16 ; 5 uses
  %i.bc = icmp eq ptr %i.ba, %i.bb
  br i1 %i.bc, label %bb.j, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

bb.j:                                             ; preds = %.noexc20
  %i.bd = getelementptr inbounds nuw i8, ptr %i.ay, i64 8
  %i.be = load i64, ptr %i.bd, align 8, !tbaa !79 ; 3 uses
  %i.bf = icmp ult i64 %i.be, 16
  call void @llvm.assume(i1 %i.bf)
  %i.bg = add nuw nsw i64 %i.be, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.az, ptr noundef nonnull align 8 dereferenceable(1) %i.bb, i64 %i.bg, i1 false)
  br label %bb.k

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %.noexc20
  store ptr %i.ba, ptr %8, align 8, !tbaa !82, !alias.scope !1480
  %i.bh = load i64, ptr %i.bb, align 8, !tbaa !81
  store i64 %i.bh, ptr %i.az, align 8, !tbaa !81, !alias.scope !1480
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %i.ay, i64 8
  %.pre.i = load i64, ptr %.phi.trans.insert.i, align 8, !tbaa !79
  br label %bb.k

bb.k:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %bb.j
  %i.bi = phi i64 [ %i.be, %bb.j ], [ %.pre.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ]
  %i.bj = getelementptr inbounds nuw i8, ptr %i.ay, i64 8
  %i.bk = getelementptr inbounds nuw i8, ptr %8, i64 8 ; 2 uses
  store i64 %i.bi, ptr %i.bk, align 8, !tbaa !79, !alias.scope !1480
  store ptr %i.bb, ptr %i.ay, align 8, !tbaa !82
  store i64 0, ptr %i.bj, align 8, !tbaa !79
  store i8 0, ptr %i.bb, align 8, !tbaa !81
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #32
  invoke void @_ZN11flatbuffers11NumToStringImEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEET_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %10, i64 noundef %3)
          to label %bb.l unwind label %bb.ac

bb.l:                                             ; preds = %bb.k
  call void @llvm.experimental.noalias.scope.decl(metadata !1481)
  %i.bl = load i64, ptr %i.bk, align 8, !tbaa !79, !noalias !1481 ; 4 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %10, i64 8
  %i.bn = load i64, ptr %i.bm, align 8, !tbaa !79, !noalias !1481 ; 4 uses
  %i.bo = add i64 %i.bn, %i.bl                    ; 2 uses
  %i.bp = load ptr, ptr %8, align 8, !tbaa !82, !noalias !1481 ; 2 uses
  %i.bq = icmp eq ptr %i.bp, %i.az
  br i1 %i.bq, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i21

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i: ; preds = %bb.l
  %i.br = icmp ult i64 %i.bl, 16
  call void @llvm.assume(i1 %i.br)
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i21: ; preds = %bb.l
end_hunk_16
begin_hunk_17_@_ZN11flatbuffers11SymbolTableINS_9StructDefEE3AddERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPS1_:bb.a
  br i1 %i.ae, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i: ; preds = %bb.g
  %i.af = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 32
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !82
  %i.ah = tail call i32 @memcmp(ptr noundef %i.ag, ptr noundef %i.ab, i64 noundef %.sroa.speculated.i.i.i.i.i.i) #32 ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq i32 %i.ah, 0
  br i1 %.not.i.i.i.i.i.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i, label %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i, %bb.g
  %i.ai = sub i64 %i.ad, %i.aa
  %spec.select7.i.i.i.i.i.i.i = tail call i64 @llvm.smax.i64(i64 %i.ai, i64 -2147483648)
  %.08.i.i.i.i.i.i.i = tail call i64 @llvm.smin.i64(i64 %spec.select7.i.i.i.i.i.i.i, i64 2147483647)
  %.0.i6.i.i.i.i.i.i = trunc nsw i64 %.08.i.i.i.i.i.i.i to i32
  br label %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i

_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i
  %.0.i.i.i.i.i.i = phi i32 [ %i.ah, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i ], [ %.0.i6.i.i.i.i.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i ]
  %i.aj = icmp slt i32 %.0.i.i.i.i.i.i, 0         ; 2 uses
  %.19.i.i.i = select i1 %i.aj, ptr %.0811.i.i.i, ptr %.012.i.i.i ; 4 uses
  %.1.in.v.i.i.i = select i1 %i.aj, i64 24, i64 16
  %.1.in.i.i.i = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 %.1.in.v.i.i.i
  %.1.i.i.i = load ptr, ptr %.1.in.i.i.i, align 8, !tbaa !233 ; 2 uses
  %.not.i.i.i4 = icmp eq ptr %.1.i.i.i, null
  br i1 %.not.i.i.i4, label %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_PN11flatbuffers9StructDefEESt10_Select1stISB_ESt4lessIS5_ESaISB_EE14_M_lower_boundEPSt13_Rb_tree_nodeISB_EPSt18_Rb_tree_node_baseRS7_.exit.i.i, label %bb.g, !llvm.loop !20

_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_PN11flatbuffers9StructDefEESt10_Select1stISB_ESt4lessIS5_ESaISB_EE14_M_lower_boundEPSt13_Rb_tree_nodeISB_EPSt18_Rb_tree_node_baseRS7_.exit.i.i: ; preds = %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i
  %i.ak = icmp eq ptr %.19.i.i.i, %i.y
  br i1 %i.ak, label %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPN11flatbuffers9StructDefESt4lessIS5_ESaISt4pairIKS5_S8_EEE4findERSC_.exit.thread, label %bb.h

bb.h:                                             ; preds = %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_PN11flatbuffers9StructDefEESt10_Select1stISB_ESt4lessIS5_ESaISB_EE14_M_lower_boundEPSt13_Rb_tree_nodeISB_EPSt18_Rb_tree_node_baseRS7_.exit.i.i
  %i.al = getelementptr inbounds nuw i8, ptr %.19.i.i.i, i64 40
  %i.am = load i64, ptr %i.al, align 8, !tbaa !79 ; 2 uses
  %.sroa.speculated.i.i.i.i.i = tail call i64 @llvm.umin.i64(i64 %i.am, i64 %i.aa) ; 2 uses
  %i.an = icmp eq i64 %.sroa.speculated.i.i.i.i.i, 0
  br i1 %i.an, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i: ; preds = %bb.h
  %i.ao = getelementptr inbounds nuw i8, ptr %.19.i.i.i, i64 32
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !82
  %i.aq = tail call i32 @memcmp(ptr noundef %i.ab, ptr noundef %i.ap, i64 noundef %.sroa.speculated.i.i.i.i.i) #32 ; 2 uses
  %.not.i.i.i.i.i = icmp eq i32 %i.aq, 0
  br i1 %.not.i.i.i.i.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i, label %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPN11flatbuffers9StructDefESt4lessIS5_ESaISt4pairIKS5_S8_EEE4findERSC_.exit

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i, %bb.h
  %i.ar = sub i64 %i.aa, %i.am
  %spec.select7.i.i.i.i.i.i = tail call i64 @llvm.smax.i64(i64 %i.ar, i64 -2147483648)
  %.08.i.i.i.i.i.i = tail call i64 @llvm.smin.i64(i64 %spec.select7.i.i.i.i.i.i, i64 2147483647)
  %.0.i6.i.i.i.i.i = trunc nsw i64 %.08.i.i.i.i.i.i to i32
  br label %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPN11flatbuffers9StructDefESt4lessIS5_ESaISt4pairIKS5_S8_EEE4findERSC_.exit

_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPN11flatbuffers9StructDefESt4lessIS5_ESaISt4pairIKS5_S8_EEE4findERSC_.exit: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i
  %.0.i.i.i.i.i = phi i32 [ %i.aq, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i ], [ %.0.i6.i.i.i.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i ]
  %i.as = icmp slt i32 %.0.i.i.i.i.i, 0
  br i1 %i.as, label %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPN11flatbuffers9StructDefESt4lessIS5_ESaISt4pairIKS5_S8_EEE4findERSC_.exit.thread, label %bb.i

_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPN11flatbuffers9StructDefESt4lessIS5_ESaISt4pairIKS5_S8_EEE4findERSC_.exit.thread: ; preds = %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_PN11flatbuffers9StructDefEESt10_Select1stISB_ESt4lessIS5_ESaISB_EE14_M_lower_boundEPSt13_Rb_tree_nodeISB_EPSt18_Rb_tree_node_baseRS7_.exit.i.i, %_ZNSt6vectorIPN11flatbuffers9StructDefESaIS2_EE12emplace_backIJRS2_EEES6_DpOT_.exit, %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPN11flatbuffers9StructDefESt4lessIS5_ESaISt4pairIKS5_S8_EEE4findERSC_.exit
  %i.at = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPN11flatbuffers9StructDefESt4lessIS5_ESaISt4pairIKS5_S8_EEEixERSC_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 8 dereferenceable(32) %1)
  store ptr %2, ptr %i.at, align 8, !tbaa !252
  br label %bb.i

bb.i:                                             ; preds = %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPN11flatbuffers9StructDefESt4lessIS5_ESaISt4pairIKS5_S8_EEE4findERSC_.exit, %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPN11flatbuffers9StructDefESt4lessIS5_ESaISt4pairIKS5_S8_EEE4findERSC_.exit.thread
  %i.au = phi i1 [ true, %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPN11flatbuffers9StructDefESt4lessIS5_ESaISt4pairIKS5_S8_EEE4findERSC_.exit ], [ false, %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPN11flatbuffers9StructDefESt4lessIS5_ESaISt4pairIKS5_S8_EEE4findERSC_.exit.thread ]
  ret i1 %i.au
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define dso_local noundef ptr @_ZNK11flatbuffers7EnumDef8MinValueEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(312) %0) local_unnamed_addr #8 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 288
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !347  ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 296
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !347
  %i.e = icmp eq ptr %i.b, %i.d
  br i1 %i.e, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = load ptr, ptr %i.b, align 8, !tbaa !348
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %i.g = phi ptr [ %i.f, %bb.b ], [ null, %bb.a ]
  ret ptr %i.g
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define dso_local noundef ptr @_ZNK11flatbuffers7EnumDef8MaxValueEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(312) %0) local_unnamed_addr #8 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 288
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !347
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 296
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !347  ; 2 uses
  %i.e = icmp eq ptr %i.b, %i.d
  br i1 %i.e, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds i8, ptr %i.d, i64 -8
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !348
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %i.h = phi ptr [ %i.g, %bb.b ], [ null, %bb.a ]
  ret ptr %i.h
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local noundef i64 @_ZNK11flatbuffers7EnumDef8DistanceEPKNS_7EnumValES3_(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(312) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(none) %2) local_unnamed_addr #5 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 208
  %i.b = load i32, ptr %i.a, align 8, !tbaa !346
  %i.c = icmp eq i32 %i.b, 10
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 160
  %i.e = load i64, ptr %i.d, align 8, !tbaa !350  ; 4 uses
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 160
  %i.g = load i64, ptr %i.f, align 8, !tbaa !350  ; 4 uses
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %spec.select.i = tail call i64 @llvm.umax.i64(i64 %i.e, i64 %i.g)
  %spec.select5.i = tail call i64 @llvm.umin.i64(i64 %i.e, i64 %i.g)
  %i.h = sub nuw i64 %spec.select.i, %spec.select5.i
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %spec.select.i5 = tail call i64 @llvm.smax.i64(i64 %i.e, i64 %i.g)
  %spec.select5.i6 = tail call i64 @llvm.smin.i64(i64 %i.e, i64 %i.g)
  %i.i = sub i64 %spec.select.i5, %spec.select5.i6
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.j = phi i64 [ %i.h, %bb.b ], [ %i.i, %bb.c ]
  ret i64 %i.j
}

; Function Attrs: mustprogress uwtable
define dso_local void @_ZNK11flatbuffers7EnumDef8AllFlagsB5cxx11Ev(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(312) %1) local_unnamed_addr #1 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 288
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !347  ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 296
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !347  ; 2 uses
  %.not6 = icmp eq ptr %i.b, %i.d
  br i1 %.not6, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %.lr.ph, %bb.a
  %.0.lcssa = phi i64 [ 0, %bb.a ], [ %i.k, %.lr.ph ] ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 208
  %i.f = load i32, ptr %i.e, align 8, !tbaa !346
  %i.g = icmp eq i32 %i.f, 10
  br i1 %i.g, label %bb.b, label %bb.c

.lr.ph:                                           ; preds = %bb.a, %.lr.ph
  %.08 = phi i64 [ %i.k, %.lr.ph ], [ 0, %bb.a ]
  %.sroa.03.07 = phi ptr [ %i.l, %.lr.ph ], [ %i.b, %bb.a ] ; 2 uses
  %i.h = load ptr, ptr %.sroa.03.07, align 8, !tbaa !348
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 160
  %i.j = load i64, ptr %i.i, align 8, !tbaa !350
  %i.k = or i64 %i.j, %.08                        ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %.sroa.03.07, i64 8 ; 2 uses
  %.not = icmp eq ptr %i.l, %i.d
  br i1 %.not, label %._crit_edge, label %.lr.ph, !llvm.loop !1658

bb.b:                                             ; preds = %._crit_edge
  tail call void @_ZN11flatbuffers11NumToStringImEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEET_(ptr dead_on_unwind writable sret(%"class.std::__cxx11::basic_string") align 8 %0, i64 noundef %.0.lcssa)
  br label %bb.d

bb.c:                                             ; preds = %._crit_edge
  tail call void @_ZN11flatbuffers11NumToStringIlEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEET_(ptr dead_on_unwind writable sret(%"class.std::__cxx11::basic_string") align 8 %0, i64 noundef %.0.lcssa)
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  ret void
}

; Function Attrs: mustprogress uwtable
define dso_local noundef ptr @_ZNK11flatbuffers7EnumDef11FindByValueERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(312) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %1) local_unnamed_addr #1 align 2 {
bb.a:
  %i.a = alloca i64, align 8                      ; 4 uses
  %i.b = alloca i64, align 8                      ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #32
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 208
  %i.d = load i32, ptr %i.c, align 8, !tbaa !346
  %i.e = icmp eq i32 %i.d, 10
  br i1 %i.e, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #32
  %i.f = load ptr, ptr %1, align 8, !tbaa !82     ; 3 uses
  %i.g = call noundef zeroext i1 @_ZN11flatbuffers19StringToIntegerImplImEEbPT_PKcib(ptr noundef nonnull %i.b, ptr noundef %i.f, i32 noundef 0, i1 noundef zeroext true)
  %.pre = load i64, ptr %i.b, align 8, !tbaa !93  ; 2 uses
  br i1 %i.g, label %bb.c, label %_ZN11flatbuffers14StringToNumberImEEbPKcPT_.exit

bb.c:                                             ; preds = %bb.b
  %.not.i = icmp eq i64 %.pre, 0
  br i1 %.not.i, label %_ZN11flatbuffers14StringToNumberImEEbPKcPT_.exit.thread, label %.preheader.i

.preheader.i:                                     ; preds = %bb.c, %.preheader.i
  %.014.i = phi ptr [ %i.j, %.preheader.i ], [ %i.f, %bb.c ] ; 4 uses
  %i.h = load i8, ptr %.014.i, align 1, !tbaa !81 ; 2 uses
  %.not17.i = icmp eq i8 %i.h, 0
  %2 = add i8 %i.h, -48
  %i.i = icmp ult i8 %2, 10
  %or.cond.i = or i1 %.not17.i, %i.i
  %i.j = getelementptr inbounds nuw i8, ptr %.014.i, i64 1
  br i1 %or.cond.i, label %.critedge.i, label %.preheader.i, !llvm.loop !8

.critedge.i:                                      ; preds = %.preheader.i
  %i.k = icmp ugt ptr %.014.i, %i.f
  %.idx.i = sext i1 %i.k to i64
  %i.l = getelementptr inbounds i8, ptr %.014.i, i64 %.idx.i
  %i.m = load i8, ptr %i.l, align 1, !tbaa !81
  %i.n = icmp eq i8 %i.m, 45
  br i1 %i.n, label %_ZN11flatbuffers14StringToNumberImEEbPKcPT_.exit, label %_ZN11flatbuffers14StringToNumberImEEbPKcPT_.exit.thread

_ZN11flatbuffers14StringToNumberImEEbPKcPT_.exit.thread: ; preds = %bb.c, %.critedge.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #32
  br label %bb.e

_ZN11flatbuffers14StringToNumberImEEbPKcPT_.exit: ; preds = %.critedge.i, %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #32
  br label %_ZNK11flatbuffers7EnumDef13ReverseLookupElb.exit

bb.d:                                             ; preds = %bb.a
  %i.o = load ptr, ptr %1, align 8, !tbaa !82
  %i.p = call noundef zeroext i1 @_ZN11flatbuffers19StringToIntegerImplIlEEbPT_PKcib(ptr noundef nonnull %i.a, ptr noundef %i.o, i32 noundef 0, i1 noundef zeroext true)
  br i1 %i.p, label %._crit_edge, label %_ZNK11flatbuffers7EnumDef13ReverseLookupElb.exit

._crit_edge:                                      ; preds = %bb.d
  %.pre7 = load i64, ptr %i.a, align 8, !tbaa !93
  br label %bb.e

bb.e:                                             ; preds = %._crit_edge, %_ZN11flatbuffers14StringToNumberImEEbPKcPT_.exit.thread
  %i.q = phi i64 [ %.pre7, %._crit_edge ], [ %.pre, %_ZN11flatbuffers14StringToNumberImEEbPKcPT_.exit.thread ]
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 288
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !347  ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 296
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !347  ; 2 uses
  %.not11.i = icmp eq ptr %i.s, %i.u
  br i1 %.not11.i, label %_ZNK11flatbuffers7EnumDef13ReverseLookupElb.exit, label %.lr.ph.i

bb.f:                                             ; preds = %.lr.ph.i
  %i.v = getelementptr inbounds nuw i8, ptr %.sroa.07.012.i, i64 8 ; 2 uses
  %.not.i5 = icmp eq ptr %i.v, %i.u
  br i1 %.not.i5, label %_ZNK11flatbuffers7EnumDef13ReverseLookupElb.exit, label %.lr.ph.i, !llvm.loop !9

.lr.ph.i:                                         ; preds = %bb.e, %bb.f
  %.sroa.07.012.i = phi ptr [ %i.v, %bb.f ], [ %i.s, %bb.e ] ; 2 uses
  %i.w = load ptr, ptr %.sroa.07.012.i, align 8, !tbaa !348 ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 160
  %i.y = load i64, ptr %i.x, align 8, !tbaa !350
  %i.z = icmp eq i64 %i.y, %i.q
  br i1 %i.z, label %_ZNK11flatbuffers7EnumDef13ReverseLookupElb.exit, label %bb.f

_ZNK11flatbuffers7EnumDef13ReverseLookupElb.exit: ; preds = %.lr.ph.i, %bb.f, %_ZN11flatbuffers14StringToNumberImEEbPKcPT_.exit, %bb.e, %bb.d
  %.04 = phi ptr [ null, %_ZN11flatbuffers14StringToNumberImEEbPKcPT_.exit ], [ null, %bb.d ], [ null, %bb.e ], [ null, %bb.f ], [ %i.w, %.lr.ph.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #32
  ret ptr %.04
}

; Function Attrs: mustprogress nofree nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define dso_local void @_ZN11flatbuffers7EnumDef11SortByValueEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(312) %0) local_unnamed_addr #13 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 288
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 208
  %i.c = load i32, ptr %i.b, align 8, !tbaa !346
  %i.d = icmp eq i32 %i.c, 10
  %i.e = load ptr, ptr %i.a, align 8, !tbaa !347  ; 11 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 296
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !347  ; 11 uses
  %.not.i.i = icmp eq ptr %i.e, %i.g              ; 2 uses
  br i1 %i.d, label %bb.b, label %bb.i

bb.b:                                             ; preds = %bb.a
  br i1 %.not.i.i, label %"_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPPN11flatbuffers7EnumValESt6vectorIS4_SaIS4_EEEEZNS2_7EnumDef11SortByValueEvE3$_0EvT_SC_T0_.exit", label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.h = ptrtoint ptr %i.g to i64
  %i.i = ptrtoint ptr %i.e to i64
  %i.j = sub i64 %i.h, %i.i                       ; 2 uses
  %i.k = ashr exact i64 %i.j, 3
  %i.l = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.k, i1 true)
  %i.m = shl nuw nsw i64 %i.l, 1
  %i.n = xor i64 %i.m, 126
  tail call fastcc void @"_ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIPPN11flatbuffers7EnumValESt6vectorIS4_SaIS4_EEEElNS0_5__ops15_Iter_comp_iterIZNS2_7EnumDef11SortByValueEvE3$_0EEEvT_SF_T0_T1_"(ptr %i.e, ptr %i.g, i64 noundef %i.n)
  %i.o = icmp sgt i64 %i.j, 128
  br i1 %i.o, label %bb.d, label %bb.h

bb.d:                                             ; preds = %bb.c
  %i.p = getelementptr inbounds nuw i8, ptr %i.e, i64 128 ; 3 uses
  tail call fastcc void @"_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPPN11flatbuffers7EnumValESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIZNS2_7EnumDef11SortByValueEvE3$_0EEEvT_SF_T0_"(ptr %i.e, ptr nonnull %i.p)
  %.not6.i.i.i.i = icmp eq ptr %i.p, %i.g
  br i1 %.not6.i.i.i.i, label %"_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPPN11flatbuffers7EnumValESt6vectorIS4_SaIS4_EEEEZNS2_7EnumDef11SortByValueEvE3$_0EvT_SC_T0_.exit", label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.d, %"_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPPN11flatbuffers7EnumValESt6vectorIS4_SaIS4_EEEENS0_5__ops14_Val_comp_iterIZNS2_7EnumDef11SortByValueEvE3$_0EEEvT_T0_.exit.i.i.i.i"
  %.sroa.0.07.i.i.i.i = phi ptr [ %i.ai, %"_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPPN11flatbuffers7EnumValESt6vectorIS4_SaIS4_EEEENS0_5__ops14_Val_comp_iterIZNS2_7EnumDef11SortByValueEvE3$_0EEEvT_T0_.exit.i.i.i.i" ], [ %i.p, %bb.d ] ; 3 uses
  %i.q = load ptr, ptr %.sroa.0.07.i.i.i.i, align 8, !tbaa !348 ; 4 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 160
  %i.s = load i64, ptr %i.r, align 8, !tbaa !350  ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  br label %bb.e

bb.e:                                             ; preds = %bb.g, %.lr.ph.i.i.i.i
  %.sroa.03.0.i.i.i.i.i = phi ptr [ %.sroa.0.07.i.i.i.i, %.lr.ph.i.i.i.i ], [ %.sroa.0.0.i.i.i.i.i, %bb.g ] ; 3 uses
  %.sroa.0.0.i.i.i.i.i = getelementptr inbounds i8, ptr %.sroa.03.0.i.i.i.i.i, i64 -8 ; 2 uses
  %i.u = load ptr, ptr %.sroa.0.0.i.i.i.i.i, align 8, !tbaa !348 ; 4 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 160
  %i.w = load i64, ptr %i.v, align 8, !tbaa !350  ; 2 uses
  %i.x = icmp eq i64 %i.s, %i.w
  br i1 %i.x, label %bb.f, label %"_ZN9__gnu_cxx5__ops14_Val_comp_iterIZN11flatbuffers7EnumDef11SortByValueEvE3$_0EclIPNS2_7EnumValENS_17__normal_iteratorIPS8_St6vectorIS8_SaIS8_EEEEEEbRT_T0_.exit.i.i.i.i.i"

bb.f:                                             ; preds = %bb.e
  %i.y = load i64, ptr %i.t, align 8, !tbaa !79   ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  %i.aa = load i64, ptr %i.z, align 8, !tbaa !79  ; 2 uses
  %.sroa.speculated.i.i.i.i.i.i.i.i.i = tail call i64 @llvm.umin.i64(i64 %i.aa, i64 %i.y) ; 2 uses
  %i.ab = icmp eq i64 %.sroa.speculated.i.i.i.i.i.i.i.i.i, 0
  br i1 %i.ab, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i.i.i.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i.i.i.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i.i.i.i: ; preds = %bb.f
  %i.ac = load ptr, ptr %i.u, align 8, !tbaa !82
  %i.ad = load ptr, ptr %i.q, align 8, !tbaa !82
  %i.ae = tail call i32 @memcmp(ptr noundef %i.ad, ptr noundef %i.ac, i64 noundef %.sroa.speculated.i.i.i.i.i.i.i.i.i) #32 ; 2 uses
  %.not.i.i.i.i.i.i.i.i.i = icmp eq i32 %i.ae, 0
  br i1 %.not.i.i.i.i.i.i.i.i.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i.i.i.i, label %_ZStltIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.i.i.i.i.i.i.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i.i.i.i: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i.i.i.i, %bb.f
  %i.af = sub i64 %i.y, %i.aa
  %spec.select7.i.i.i.i.i.i.i.i.i.i = tail call i64 @llvm.smax.i64(i64 %i.af, i64 -2147483648)
  %.08.i.i.i.i.i.i.i.i.i.i = tail call i64 @llvm.smin.i64(i64 %spec.select7.i.i.i.i.i.i.i.i.i.i, i64 2147483647)
  %.0.i6.i.i.i.i.i.i.i.i.i = trunc nsw i64 %.08.i.i.i.i.i.i.i.i.i.i to i32
  br label %_ZStltIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.i.i.i.i.i.i.i

_ZStltIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.i.i.i.i.i.i.i: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i.i.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i.i.i.i
  %.0.i.i.i.i.i.i.i.i.i = phi i32 [ %i.ae, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i.i.i.i ], [ %.0.i6.i.i.i.i.i.i.i.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i.i.i.i ]
  %i.ag = icmp slt i32 %.0.i.i.i.i.i.i.i.i.i, 0
  br i1 %i.ag, label %bb.g, label %"_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPPN11flatbuffers7EnumValESt6vectorIS4_SaIS4_EEEENS0_5__ops14_Val_comp_iterIZNS2_7EnumDef11SortByValueEvE3$_0EEEvT_T0_.exit.i.i.i.i"

"_ZN9__gnu_cxx5__ops14_Val_comp_iterIZN11flatbuffers7EnumDef11SortByValueEvE3$_0EclIPNS2_7EnumValENS_17__normal_iteratorIPS8_St6vectorIS8_SaIS8_EEEEEEbRT_T0_.exit.i.i.i.i.i": ; preds = %bb.e
  %i.ah = icmp ult i64 %i.s, %i.w
  br i1 %i.ah, label %bb.g, label %"_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPPN11flatbuffers7EnumValESt6vectorIS4_SaIS4_EEEENS0_5__ops14_Val_comp_iterIZNS2_7EnumDef11SortByValueEvE3$_0EEEvT_T0_.exit.i.i.i.i"

bb.g:                                             ; preds = %"_ZN9__gnu_cxx5__ops14_Val_comp_iterIZN11flatbuffers7EnumDef11SortByValueEvE3$_0EclIPNS2_7EnumValENS_17__normal_iteratorIPS8_St6vectorIS8_SaIS8_EEEEEEbRT_T0_.exit.i.i.i.i.i", %_ZStltIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.i.i.i.i.i.i.i
  store ptr %i.u, ptr %.sroa.03.0.i.i.i.i.i, align 8, !tbaa !348
  br label %bb.e, !llvm.loop !21

"_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPPN11flatbuffers7EnumValESt6vectorIS4_SaIS4_EEEENS0_5__ops14_Val_comp_iterIZNS2_7EnumDef11SortByValueEvE3$_0EEEvT_T0_.exit.i.i.i.i": ; preds = %"_ZN9__gnu_cxx5__ops14_Val_comp_iterIZN11flatbuffers7EnumDef11SortByValueEvE3$_0EclIPNS2_7EnumValENS_17__normal_iteratorIPS8_St6vectorIS8_SaIS8_EEEEEEbRT_T0_.exit.i.i.i.i.i", %_ZStltIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.i.i.i.i.i.i.i
  store ptr %i.q, ptr %.sroa.03.0.i.i.i.i.i, align 8, !tbaa !348
  %i.ai = getelementptr inbounds nuw i8, ptr %.sroa.0.07.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.ai, %i.g
  br i1 %.not.i.i.i.i, label %"_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPPN11flatbuffers7EnumValESt6vectorIS4_SaIS4_EEEEZNS2_7EnumDef11SortByValueEvE3$_0EvT_SC_T0_.exit", label %.lr.ph.i.i.i.i, !llvm.loop !1659

bb.h:                                             ; preds = %bb.c
  tail call fastcc void @"_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPPN11flatbuffers7EnumValESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIZNS2_7EnumDef11SortByValueEvE3$_0EEEvT_SF_T0_"(ptr %i.e, ptr %i.g)
  br label %"_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPPN11flatbuffers7EnumValESt6vectorIS4_SaIS4_EEEEZNS2_7EnumDef11SortByValueEvE3$_0EvT_SC_T0_.exit"

bb.i:                                             ; preds = %bb.a
  br i1 %.not.i.i, label %"_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPPN11flatbuffers7EnumValESt6vectorIS4_SaIS4_EEEEZNS2_7EnumDef11SortByValueEvE3$_0EvT_SC_T0_.exit", label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.aj = ptrtoint ptr %i.g to i64
  %i.ak = ptrtoint ptr %i.e to i64
  %i.al = sub i64 %i.aj, %i.ak                    ; 2 uses
  %i.am = ashr exact i64 %i.al, 3
  %i.an = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.am, i1 true)
  %i.ao = shl nuw nsw i64 %i.an, 1
  %i.ap = xor i64 %i.ao, 126
  tail call fastcc void @"_ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIPPN11flatbuffers7EnumValESt6vectorIS4_SaIS4_EEEElNS0_5__ops15_Iter_comp_iterIZNS2_7EnumDef11SortByValueEvE3$_1EEEvT_SF_T0_T1_"(ptr %i.e, ptr %i.g, i64 noundef %i.ap)
  %i.aq = icmp sgt i64 %i.al, 128
  br i1 %i.aq, label %bb.k, label %bb.o

bb.k:                                             ; preds = %bb.j
  %i.ar = getelementptr inbounds nuw i8, ptr %i.e, i64 128 ; 3 uses
  tail call fastcc void @"_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPPN11flatbuffers7EnumValESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIZNS2_7EnumDef11SortByValueEvE3$_1EEEvT_SF_T0_"(ptr %i.e, ptr nonnull %i.ar)
  %.not6.i.i.i.i9 = icmp eq ptr %i.ar, %i.g
  br i1 %.not6.i.i.i.i9, label %"_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPPN11flatbuffers7EnumValESt6vectorIS4_SaIS4_EEEEZNS2_7EnumDef11SortByValueEvE3$_0EvT_SC_T0_.exit", label %.lr.ph.i.i.i.i10

.lr.ph.i.i.i.i10:                                 ; preds = %bb.k, %"_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPPN11flatbuffers7EnumValESt6vectorIS4_SaIS4_EEEENS0_5__ops14_Val_comp_iterIZNS2_7EnumDef11SortByValueEvE3$_1EEEvT_T0_.exit.i.i.i.i"
  %.sroa.0.07.i.i.i.i11 = phi ptr [ %i.bk, %"_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPPN11flatbuffers7EnumValESt6vectorIS4_SaIS4_EEEENS0_5__ops14_Val_comp_iterIZNS2_7EnumDef11SortByValueEvE3$_1EEEvT_T0_.exit.i.i.i.i" ], [ %i.ar, %bb.k ] ; 3 uses
  %i.as = load ptr, ptr %.sroa.0.07.i.i.i.i11, align 8, !tbaa !348 ; 4 uses
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 160
  %i.au = load i64, ptr %i.at, align 8, !tbaa !350 ; 2 uses
  %i.av = getelementptr inbounds nuw i8, ptr %i.as, i64 8
  br label %bb.l

bb.l:                                             ; preds = %bb.n, %.lr.ph.i.i.i.i10
  %.sroa.03.0.i.i.i.i.i12 = phi ptr [ %.sroa.0.07.i.i.i.i11, %.lr.ph.i.i.i.i10 ], [ %.sroa.0.0.i.i.i.i.i13, %bb.n ] ; 3 uses
  %.sroa.0.0.i.i.i.i.i13 = getelementptr inbounds i8, ptr %.sroa.03.0.i.i.i.i.i12, i64 -8 ; 2 uses
  %i.aw = load ptr, ptr %.sroa.0.0.i.i.i.i.i13, align 8, !tbaa !348 ; 4 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aw, i64 160
  %i.ay = load i64, ptr %i.ax, align 8, !tbaa !350 ; 2 uses
  %i.az = icmp eq i64 %i.au, %i.ay
  br i1 %i.az, label %bb.m, label %"_ZN9__gnu_cxx5__ops14_Val_comp_iterIZN11flatbuffers7EnumDef11SortByValueEvE3$_1EclIPNS2_7EnumValENS_17__normal_iteratorIPS8_St6vectorIS8_SaIS8_EEEEEEbRT_T0_.exit.i.i.i.i.i"

bb.m:                                             ; preds = %bb.l
  %i.ba = load i64, ptr %i.av, align 8, !tbaa !79 ; 2 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %i.aw, i64 8
  %i.bc = load i64, ptr %i.bb, align 8, !tbaa !79 ; 2 uses
  %.sroa.speculated.i.i.i.i.i.i.i.i.i15 = tail call i64 @llvm.umin.i64(i64 %i.bc, i64 %i.ba) ; 2 uses
  %i.bd = icmp eq i64 %.sroa.speculated.i.i.i.i.i.i.i.i.i15, 0
  br i1 %i.bd, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i.i.i.i20, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i.i.i.i16

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i.i.i.i16: ; preds = %bb.m
  %i.be = load ptr, ptr %i.aw, align 8, !tbaa !82
end_hunk_17
begin_hunk_18_@_ZN11flatbuffers14EnumValBuilder16CreateEnumeratorERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE:bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %i.c, i64 296
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !347  ; 2 uses
  %i.h = icmp eq ptr %i.e, %i.g                   ; 2 uses
  %i.i = zext i1 %i.h to i8
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i8 %i.i, ptr %i.j, align 8, !tbaa !442
  %i.k = tail call noalias noundef nonnull dereferenceable(168) ptr @_Znwm(i64 noundef 168) #36 ; 16 uses
  br i1 %i.h, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.l = getelementptr inbounds i8, ptr %i.g, i64 -8
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !348
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 160
  %i.o = load i64, ptr %i.n, align 8, !tbaa !350
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %i.p = phi i64 [ %i.o, %bb.b ], [ 0, %bb.a ]
  %i.q = getelementptr inbounds nuw i8, ptr %i.k, i64 16 ; 3 uses
  store ptr %i.q, ptr %i.k, align 8, !tbaa !80
  %i.r = load ptr, ptr %1, align 8, !tbaa !82     ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.t = load i64, ptr %i.s, align 8, !tbaa !79   ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #32
  store i64 %i.t, ptr %i.a, align 8, !tbaa !93
  %i.u = icmp ugt i64 %i.t, 15
  br i1 %i.u, label %.noexc.i.i, label %._crit_edge.i.i.i

.noexc.i.i:                                       ; preds = %bb.c
  %i.v = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(168) %i.k, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0)
          to label %.noexc unwind label %bb.g     ; 2 uses

.noexc:                                           ; preds = %.noexc.i.i
  store ptr %i.v, ptr %i.k, align 8, !tbaa !82
  %i.w = load i64, ptr %i.a, align 8, !tbaa !93
  store i64 %i.w, ptr %i.q, align 8, !tbaa !81
  br label %._crit_edge.i.i.i

._crit_edge.i.i.i:                                ; preds = %.noexc, %bb.c
  %i.x = phi ptr [ %i.v, %.noexc ], [ %i.q, %bb.c ] ; 2 uses
  switch i64 %i.t, label %bb.e [
    i64 1, label %bb.d
    i64 0, label %bb.f
  ]

bb.d:                                             ; preds = %._crit_edge.i.i.i
  %i.y = load i8, ptr %i.r, align 1, !tbaa !81
  store i8 %i.y, ptr %i.x, align 1, !tbaa !81
  br label %bb.f

bb.e:                                             ; preds = %._crit_edge.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.x, ptr align 1 %i.r, i64 %i.t, i1 false)
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d, %._crit_edge.i.i.i
  %i.z = load i64, ptr %i.a, align 8, !tbaa !93   ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  store i64 %i.z, ptr %i.aa, align 8, !tbaa !79
  %i.ab = load ptr, ptr %i.k, align 8, !tbaa !82
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 %i.z
  store i8 0, ptr %i.ac, align 1, !tbaa !81
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #32
  %i.ad = getelementptr inbounds nuw i8, ptr %i.k, i64 32
  %i.ae = getelementptr inbounds nuw i8, ptr %i.k, i64 96 ; 3 uses
  store i32 0, ptr %i.ae, align 8, !tbaa !294
  %i.af = getelementptr inbounds nuw i8, ptr %i.k, i64 104
  store ptr null, ptr %i.af, align 8, !tbaa !232
  %i.ag = getelementptr inbounds nuw i8, ptr %i.k, i64 112
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(50) %i.ad, i8 0, i64 50, i1 false)
  store ptr %i.ae, ptr %i.ag, align 8, !tbaa !295
  %i.ah = getelementptr inbounds nuw i8, ptr %i.k, i64 120
  store ptr %i.ae, ptr %i.ah, align 8, !tbaa !296
  %i.ai = getelementptr inbounds nuw i8, ptr %i.k, i64 128
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.ai, i8 0, i64 32, i1 false)
  %i.aj = getelementptr inbounds nuw i8, ptr %i.k, i64 160
  store i64 %i.p, ptr %i.aj, align 8, !tbaa !350
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.k, ptr %i.ak, align 8, !tbaa !441
  ret ptr %i.k

bb.g:                                             ; preds = %.noexc.i.i
  %i.al = landingpad { ptr, i32 }
          cleanup
  call void @_ZdlPvm(ptr noundef nonnull %i.k, i64 noundef 168) #33
  resume { ptr, i32 } %i.al
}

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN11flatbuffers6Parser16ParseProtoOptionEv(ptr dead_on_unwind noalias nofree writable sret(%"class.flatbuffers::CheckedError") align 1 captures(none) %0, ptr noundef nonnull align 8 dereferenceable(1936) %1) local_unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  tail call void @_ZN11flatbuffers6Parser4NextEv(ptr dead_on_unwind writable sret(%"class.flatbuffers::CheckedError") align 1 %0, ptr noundef nonnull align 8 dereferenceable(1936) %1)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 1 ; 6 uses
  store i8 1, ptr %i.a, align 1, !tbaa !213
  %i.b = load i8, ptr %0, align 1, !tbaa !212, !range !208, !noundef !209
  %i.c = trunc nuw i8 %i.b to i1
  br i1 %i.c, label %bb.k, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN11flatbuffers6Parser13ParseProtoKeyEv(ptr dead_on_unwind nonnull writable sret(%"class.flatbuffers::CheckedError") align 1 %0, ptr noundef nonnull align 8 dereferenceable(1936) %1)
  store i8 1, ptr %i.a, align 1, !tbaa !213
  %i.d = load i8, ptr %0, align 1, !tbaa !212, !range !208, !noundef !209
  %i.e = trunc nuw i8 %i.d to i1
  br i1 %i.e, label %bb.k, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call void @_ZN11flatbuffers6Parser6ExpectEi(ptr dead_on_unwind nonnull writable sret(%"class.flatbuffers::CheckedError") align 1 %0, ptr noundef nonnull align 8 dereferenceable(1936) %1, i32 noundef 61)
  store i8 1, ptr %i.a, align 1, !tbaa !213
  %i.f = load i8, ptr %0, align 1, !tbaa !212, !range !208, !noundef !209
  %i.g = trunc nuw i8 %i.f to i1
  br i1 %i.g, label %bb.k, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1695)
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 28 ; 2 uses
  %i.i = load i32, ptr %i.h, align 4, !tbaa !228, !noalias !1695
  %i.j = icmp eq i32 %i.i, 123
  tail call void @_ZN11flatbuffers6Parser4NextEv(ptr dead_on_unwind nonnull writable sret(%"class.flatbuffers::CheckedError") align 1 %0, ptr noundef nonnull align 8 dereferenceable(1936) %1)
  store i8 1, ptr %i.a, align 1, !tbaa !213, !alias.scope !1695
  %i.k = load i8, ptr %0, align 1, !tbaa !212, !range !208, !alias.scope !1695, !noundef !209
  %i.l = trunc nuw i8 %i.k to i1                  ; 2 uses
  br i1 %i.j, label %bb.e, label %bb.j

bb.e:                                             ; preds = %bb.d
  br i1 %i.l, label %.sink.split, label %.preheader.i

.preheader.i:                                     ; preds = %bb.e, %bb.i
  %.011.i = phi i32 [ %.1.i, %bb.i ], [ 1, %bb.e ] ; 4 uses
  %.not.i = icmp eq i32 %.011.i, 0
  br i1 %.not.i, label %.loopexit, label %bb.f

bb.f:                                             ; preds = %.preheader.i
  %i.m = load i32, ptr %i.h, align 4, !tbaa !228, !noalias !1695
  switch i32 %i.m, label %bb.i [
    i32 123, label %bb.g
    i32 125, label %bb.h
  ]

bb.g:                                             ; preds = %bb.f
  %i.n = add nsw i32 %.011.i, 1
  br label %bb.i

bb.h:                                             ; preds = %bb.f
  %i.o = add nsw i32 %.011.i, -1
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g, %bb.f
  %.1.i = phi i32 [ %i.n, %bb.g ], [ %i.o, %bb.h ], [ %.011.i, %bb.f ]
  tail call void @_ZN11flatbuffers6Parser4NextEv(ptr dead_on_unwind nonnull writable sret(%"class.flatbuffers::CheckedError") align 1 %0, ptr noundef nonnull align 8 dereferenceable(1936) %1)
  store i8 1, ptr %i.a, align 1, !tbaa !213, !alias.scope !1695
  %i.p = load i8, ptr %0, align 1, !tbaa !212, !range !208, !alias.scope !1695, !noundef !209
  %i.q = trunc nuw i8 %i.p to i1
  br i1 %i.q, label %.sink.split, label %.preheader.i, !llvm.loop !23

bb.j:                                             ; preds = %bb.d
  br i1 %i.l, label %.sink.split, label %.loopexit

.loopexit:                                        ; preds = %.preheader.i, %bb.j
  store i8 0, ptr %0, align 1, !tbaa !212, !alias.scope !1696
  br label %.sink.split

.sink.split:                                      ; preds = %bb.i, %bb.j, %bb.e, %.loopexit
  %.sink = phi i8 [ 0, %.loopexit ], [ 1, %bb.j ], [ 1, %bb.e ], [ 1, %bb.i ]
  store i8 %.sink, ptr %i.a, align 1, !tbaa !213
  br label %bb.k

bb.k:                                             ; preds = %.sink.split, %bb.c, %bb.b, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN11flatbuffers14EnumValBuilder21AssignEnumeratorValueERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr dead_on_unwind noalias writable sret(%"class.flatbuffers::CheckedError") align 1 %0, ptr noundef nonnull align 8 dereferenceable(25) %1, ptr noundef nonnull align 8 dereferenceable(32) %2) local_unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 5 uses
  %i.b = alloca i64, align 8                      ; 4 uses
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 13 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 24
  store i8 1, ptr %i.c, align 8, !tbaa !442
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !445, !nonnull !209, !align !446
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 208
  %i.g = load i32, ptr %i.f, align 8, !tbaa !346
  %i.h = icmp eq i32 %i.g, 10
  br i1 %i.h, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #32
  %i.i = load ptr, ptr %2, align 8, !tbaa !82     ; 3 uses
  %i.j = call noundef zeroext i1 @_ZN11flatbuffers19StringToIntegerImplImEEbPT_PKcib(ptr noundef nonnull %i.a, ptr noundef %i.i, i32 noundef 0, i1 noundef zeroext true)
  %.pre = load i64, ptr %i.a, align 8, !tbaa !93  ; 3 uses
  br i1 %i.j, label %bb.c, label %_ZN11flatbuffers14StringToNumberImEEbPKcPT_.exit

bb.c:                                             ; preds = %bb.b
  %.not.i = icmp eq i64 %.pre, 0
  br i1 %.not.i, label %_ZN11flatbuffers14StringToNumberImEEbPKcPT_.exit.thread, label %.preheader.i

.preheader.i:                                     ; preds = %bb.c, %.preheader.i
  %.014.i = phi ptr [ %i.m, %.preheader.i ], [ %i.i, %bb.c ] ; 4 uses
  %i.k = load i8, ptr %.014.i, align 1, !tbaa !81 ; 2 uses
  %.not17.i = icmp eq i8 %i.k, 0
  %5 = add i8 %i.k, -48
  %i.l = icmp ult i8 %5, 10
  %or.cond.i = or i1 %.not17.i, %i.l
  %i.m = getelementptr inbounds nuw i8, ptr %.014.i, i64 1
  br i1 %or.cond.i, label %.critedge.i, label %.preheader.i, !llvm.loop !8

.critedge.i:                                      ; preds = %.preheader.i
  %i.n = icmp ugt ptr %.014.i, %i.i
  %.idx.i = sext i1 %i.n to i64
  %i.o = getelementptr inbounds i8, ptr %.014.i, i64 %.idx.i
  %i.p = load i8, ptr %i.o, align 1, !tbaa !81
  %i.q = icmp eq i8 %i.p, 45
  br i1 %i.q, label %_ZN11flatbuffers14StringToNumberImEEbPKcPT_.exit, label %_ZN11flatbuffers14StringToNumberImEEbPKcPT_.exit.thread

_ZN11flatbuffers14StringToNumberImEEbPKcPT_.exit.thread: ; preds = %bb.c, %.critedge.i
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !441
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 160
  store i64 %.pre, ptr %i.t, align 8, !tbaa !350
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #32
  br label %bb.n

_ZN11flatbuffers14StringToNumberImEEbPKcPT_.exit: ; preds = %.critedge.i, %bb.b
  %i.u = phi i64 [ %.pre, %bb.b ], [ -1, %.critedge.i ]
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !441
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 160
  store i64 %i.u, ptr %i.x, align 8, !tbaa !350
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #32
  br label %bb.e

bb.d:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #32
  %i.y = load ptr, ptr %2, align 8, !tbaa !82
  %i.z = call noundef zeroext i1 @_ZN11flatbuffers19StringToIntegerImplIlEEbPT_PKcib(ptr noundef nonnull %i.b, ptr noundef %i.y, i32 noundef 0, i1 noundef zeroext true)
  %i.aa = load i64, ptr %i.b, align 8, !tbaa !93
  %i.ab = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !441
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 160
  store i64 %i.aa, ptr %i.ad, align 8, !tbaa !350
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #32
  br i1 %i.z, label %bb.n, label %bb.e

bb.e:                                             ; preds = %_ZN11flatbuffers14StringToNumberImEEbPKcPT_.exit, %bb.d
  %i.ae = load ptr, ptr %1, align 8, !tbaa !447, !nonnull !209, !align !446
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #32
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #32
  call void @llvm.experimental.noalias.scope.decl(metadata !1705)
  %i.af = load ptr, ptr %2, align 8, !tbaa !82, !noalias !1705
  %i.ag = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.ah = load i64, ptr %i.ag, align 8, !tbaa !79, !noalias !1705 ; 3 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 8 uses
  store ptr %i.ai, ptr %4, align 8, !tbaa !80, !alias.scope !1706
  %i.aj = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 4 uses
  store i64 0, ptr %i.aj, align 8, !tbaa !79, !alias.scope !1706
  store i8 0, ptr %i.ai, align 8, !tbaa !81, !alias.scope !1706
  %i.ak = add i64 %i.ah, 26
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7reserveEm(ptr noundef nonnull align 8 dereferenceable(32) %4, i64 noundef %i.ak)
          to label %bb.f unwind label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.al = load i64, ptr %i.aj, align 8, !tbaa !79, !alias.scope !1706
  %i.am = add i64 %i.al, -4611686018427387878
  %i.an = icmp ult i64 %i.am, 26
  br i1 %i.an, label %.invoke.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i: ; preds = %bb.f
  %i.ao = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull @.str.314, i64 noundef 26)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.i.i unwind label %bb.g ; 0 uses

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i
  %i.ap = load i64, ptr %i.aj, align 8, !tbaa !79, !alias.scope !1706
  %i.aq = sub i64 4611686018427387903, %i.ap
  %i.ar = icmp ult i64 %i.aq, %i.ah
  br i1 %i.ar, label %.invoke.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i10.i.i

.invoke.i.i:                                      ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.i.i, %bb.f
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.330) #31
          to label %.cont.i.i unwind label %bb.g

.cont.i.i:                                        ; preds = %.invoke.i.i
  unreachable

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i10.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.i.i
  %i.as = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef %i.af, i64 noundef %i.ah)
          to label %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_RKS8_.exit unwind label %bb.g ; 0 uses

bb.g:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i10.i.i, %.invoke.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i, %bb.e
  %i.at = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.au = load ptr, ptr %4, align 8, !tbaa !82, !alias.scope !1706 ; 2 uses
  %i.av = icmp eq ptr %i.au, %i.ai
  br i1 %i.av, label %common.resume, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %bb.g
  %i.aw = load i64, ptr %i.ai, align 8, !tbaa !81, !alias.scope !1706
  %i.ax = add i64 %i.aw, 1
  call void @_ZdlPvm(ptr noundef %i.au, i64 noundef %i.ax) #33
  br label %common.resume

common.resume:                                    ; preds = %bb.g, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit19
  %common.resume.op = phi { ptr, i32 } [ %.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit19 ], [ %i.at, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i ], [ %i.at, %bb.g ]
  resume { ptr, i32 } %common.resume.op

_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_RKS8_.exit: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i10.i.i
  call void @llvm.experimental.noalias.scope.decl(metadata !1707)
  %i.ay = load i64, ptr %i.aj, align 8, !tbaa !79, !noalias !1707
  %i.az = icmp eq i64 %i.ay, 4611686018427387903
  br i1 %i.az, label %bb.h, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i

bb.h:                                             ; preds = %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_RKS8_.exit
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.330) #31
          to label %.noexc unwind label %bb.l

.noexc:                                           ; preds = %bb.h
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i: ; preds = %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_RKS8_.exit
  %i.ba = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull @.str.155, i64 noundef 1)
          to label %.noexc9 unwind label %bb.l    ; 6 uses

.noexc9:                                          ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i
  %i.bb = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 7 uses
  store ptr %i.bb, ptr %3, align 8, !tbaa !80, !alias.scope !1707
  %i.bc = load ptr, ptr %i.ba, align 8, !tbaa !82 ; 2 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %i.ba, i64 16 ; 5 uses
  %i.be = icmp eq ptr %i.bc, %i.bd
  br i1 %i.be, label %bb.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

bb.i:                                             ; preds = %.noexc9
  %i.bf = getelementptr inbounds nuw i8, ptr %i.ba, i64 8
  %i.bg = load i64, ptr %i.bf, align 8, !tbaa !79 ; 3 uses
  %i.bh = icmp ult i64 %i.bg, 16
  call void @llvm.assume(i1 %i.bh)
  %i.bi = add nuw nsw i64 %i.bg, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.bb, ptr noundef nonnull align 8 dereferenceable(1) %i.bd, i64 %i.bi, i1 false)
  br label %bb.j

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %.noexc9
  store ptr %i.bc, ptr %3, align 8, !tbaa !82, !alias.scope !1707
  %i.bj = load i64, ptr %i.bd, align 8, !tbaa !81
  store i64 %i.bj, ptr %i.bb, align 8, !tbaa !81, !alias.scope !1707
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %i.ba, i64 8
  %.pre.i = load i64, ptr %.phi.trans.insert.i, align 8, !tbaa !79
  br label %bb.j

bb.j:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %bb.i
  %i.bk = phi i64 [ %i.bg, %bb.i ], [ %.pre.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ]
  %i.bl = getelementptr inbounds nuw i8, ptr %i.ba, i64 8
  %i.bm = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i64 %i.bk, ptr %i.bm, align 8, !tbaa !79, !alias.scope !1707
  store ptr %i.bd, ptr %i.ba, align 8, !tbaa !82
  store i64 0, ptr %i.bl, align 8, !tbaa !79
  store i8 0, ptr %i.bd, align 8, !tbaa !81
  invoke void @_ZN11flatbuffers6Parser5ErrorERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr dead_on_unwind writable sret(%"class.flatbuffers::CheckedError") align 1 %0, ptr noundef nonnull align 8 dereferenceable(1936) %i.ae, ptr noundef nonnull align 8 dereferenceable(32) %3)
          to label %bb.k unwind label %bb.m

bb.k:                                             ; preds = %bb.j
  %i.bn = load ptr, ptr %3, align 8, !tbaa !82    ; 2 uses
  %i.bo = icmp eq ptr %i.bn, %i.bb
  br i1 %i.bo, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i10

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i10: ; preds = %bb.k
  %i.bp = load i64, ptr %i.bb, align 8, !tbaa !81
  %i.bq = add i64 %i.bp, 1
  call void @_ZdlPvm(ptr noundef %i.bn, i64 noundef %i.bq) #33
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.k, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i10
  %i.br = load ptr, ptr %4, align 8, !tbaa !82    ; 2 uses
  %i.bs = icmp eq ptr %i.br, %i.ai
  br i1 %i.bs, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit13, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i11

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i11: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.bt = load i64, ptr %i.ai, align 8, !tbaa !81
  %i.bu = add i64 %i.bt, 1
  call void @_ZdlPvm(ptr noundef %i.br, i64 noundef %i.bu) #33
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit13

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit13: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i11
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #32
  br label %bb.o

bb.l:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i, %bb.h
  %i.bv = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit16

bb.m:                                             ; preds = %bb.j
  %i.bw = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.bx = load ptr, ptr %3, align 8, !tbaa !82    ; 2 uses
  %i.by = icmp eq ptr %i.bx, %i.bb
  br i1 %i.by, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit16, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i14

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i14: ; preds = %bb.m
  %i.bz = load i64, ptr %i.bb, align 8, !tbaa !81
  %i.ca = add i64 %i.bz, 1
  call void @_ZdlPvm(ptr noundef %i.bx, i64 noundef %i.ca) #33
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit16

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit16: ; preds = %bb.m, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i14, %bb.l
end_hunk_18
begin_hunk_19_@_ZN11flatbuffers6Parser16ParseProtoFieldsEPNS_9StructDefEbb:bb.a
  %i.az = getelementptr inbounds nuw i8, ptr %20, i64 192
  %i.ba = getelementptr inbounds nuw i8, ptr %20, i64 208 ; 3 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %20, i64 216
  %i.bc = getelementptr inbounds nuw i8, ptr %20, i64 224
  %i.bd = getelementptr inbounds nuw i8, ptr %20, i64 232
  %i.be = getelementptr inbounds nuw i8, ptr %20, i64 240
  %i.bf = getelementptr inbounds nuw i8, ptr %20, i64 273
  %i.bg = getelementptr inbounds nuw i8, ptr %20, i64 274
  %i.bh = getelementptr inbounds nuw i8, ptr %20, i64 275
  %i.bi = getelementptr inbounds nuw i8, ptr %20, i64 280
  %i.bj = getelementptr inbounds nuw i8, ptr %20, i64 288
  %i.bk = getelementptr inbounds nuw i8, ptr %20, i64 296
  %i.bl = getelementptr inbounds nuw i8, ptr %20, i64 304
  %i.bm = getelementptr inbounds nuw i8, ptr %20, i64 248
  %i.bn = getelementptr inbounds nuw i8, ptr %20, i64 256 ; 2 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %25, i64 16
  %i.bp = getelementptr inbounds nuw i8, ptr %25, i64 24
  %i.bq = getelementptr inbounds nuw i8, ptr %21, i64 16 ; 4 uses
  %i.br = getelementptr inbounds nuw i8, ptr %22, i64 16 ; 4 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %23, i64 16 ; 4 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %24, i64 16 ; 4 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %12, i64 16 ; 4 uses
  %i.bv = insertelement <2 x ptr> poison, ptr %1, i64 0
  br label %bb.b

bb.b:                                             ; preds = %.backedge, %.preheader551
  %i.bw = load i32, ptr %i.j, align 4, !tbaa !228
  switch i32 %i.bw, label %_ZNK11flatbuffers6Parser7IsIdentEPKc.exit388.thread [
    i32 125, label %bb.fq
    i32 260, label %bb.c
  ]

bb.c:                                             ; preds = %bb.b
  %i.bx = load i64, ptr %i.l, align 8, !tbaa !79
  switch i64 %i.bx, label %_ZNK11flatbuffers6Parser7IsIdentEPKc.exit388.thread [
    i64 7, label %_ZNK11flatbuffers6Parser7IsIdentEPKc.exit
    i64 6, label %_ZNK11flatbuffers6Parser7IsIdentEPKc.exit366
    i64 4, label %_ZNK11flatbuffers6Parser7IsIdentEPKc.exit368
    i64 10, label %_ZNK11flatbuffers6Parser7IsIdentEPKc.exit370
    i64 8, label %_ZNK11flatbuffers6Parser7IsIdentEPKc.exit374
    i64 3, label %_ZNK11flatbuffers6Parser7IsIdentEPKc.exit388
  ]

_ZNK11flatbuffers6Parser7IsIdentEPKc.exit:        ; preds = %bb.c
  %i.by = load ptr, ptr %i.k, align 8, !tbaa !82  ; 2 uses
  %i.bz = load i32, ptr %i.by, align 1
  %i.ca = xor i32 %i.bz, 1936942445
  %i.cb = getelementptr i8, ptr %i.by, i64 3
  %i.cc = load i32, ptr %i.cb, align 1
  %i.cd = xor i32 %i.cc, 1701273971
  %i.ce = or i32 %i.ca, %i.cd
  %i.cf = icmp ne i32 %i.ce, 0
  %i.cg = zext i1 %i.cf to i32
  %i.ch = icmp eq i32 %i.cg, 0
  br i1 %i.ch, label %_ZNK11flatbuffers6Parser7IsIdentEPKc.exit.thread507, label %_ZNK11flatbuffers6Parser7IsIdentEPKc.exit388.thread

_ZNK11flatbuffers6Parser7IsIdentEPKc.exit366:     ; preds = %bb.c
  %i.ci = load ptr, ptr %i.k, align 8, !tbaa !82  ; 2 uses
  %i.cj = load i32, ptr %i.ci, align 1
  %i.ck = xor i32 %i.cj, 1702131813
  %i.cl = getelementptr i8, ptr %i.ci, i64 4
  %i.cm = load i16, ptr %i.cl, align 1
  %i.cn = zext i16 %i.cm to i32
  %i.co = xor i32 %i.cn, 25710
  %i.cp = or i32 %i.ck, %i.co
  %i.cq = icmp ne i32 %i.cp, 0
  %i.cr = zext i1 %i.cq to i32
  %i.cs = icmp eq i32 %i.cr, 0
  br i1 %i.cs, label %_ZNK11flatbuffers6Parser7IsIdentEPKc.exit.thread507, label %_ZNK11flatbuffers6Parser7IsIdentEPKc.exit372

_ZNK11flatbuffers6Parser7IsIdentEPKc.exit368:     ; preds = %bb.c
  %i.ct = load ptr, ptr %i.k, align 8, !tbaa !82
  %i.cu = load i32, ptr %i.ct, align 1
  %i.cv = icmp ne i32 %i.cu, 1836412517
  %i.cw = zext i1 %i.cv to i32
  %i.cx = icmp eq i32 %i.cw, 0
  br i1 %i.cx, label %_ZNK11flatbuffers6Parser7IsIdentEPKc.exit.thread507, label %_ZNK11flatbuffers6Parser7IsIdentEPKc.exit388.thread

_ZNK11flatbuffers6Parser7IsIdentEPKc.exit.thread507: ; preds = %_ZNK11flatbuffers6Parser7IsIdentEPKc.exit368, %_ZNK11flatbuffers6Parser7IsIdentEPKc.exit366, %_ZNK11flatbuffers6Parser7IsIdentEPKc.exit
  call void @_ZN11flatbuffers6Parser14ParseProtoDeclEv(ptr dead_on_unwind writable sret(%"class.flatbuffers::CheckedError") align 1 %0, ptr noundef nonnull align 8 dereferenceable(1936) %1)
  store i8 1, ptr %i.g, align 1, !tbaa !213
  %i.cy = load i8, ptr %0, align 1, !tbaa !212, !range !208, !noundef !209
  %i.cz = trunc nuw i8 %i.cy to i1
  br i1 %i.cz, label %.critedge.thread, label %.backedge

_ZNK11flatbuffers6Parser7IsIdentEPKc.exit370:     ; preds = %bb.c
  %i.da = load ptr, ptr %i.k, align 8, !tbaa !82  ; 2 uses
  %i.db = load i64, ptr %i.da, align 1
  %i.dc = xor i64 %i.db, 8028074728750348389
  %i.dd = getelementptr i8, ptr %i.da, i64 8
  %i.de = load i16, ptr %i.dd, align 1
  %i.df = zext i16 %i.de to i64
  %i.dg = xor i64 %i.df, 29550
  %i.dh = or i64 %i.dc, %i.dg
  %i.di = icmp ne i64 %i.dh, 0
  %i.dj = zext i1 %i.di to i32
  %i.dk = icmp eq i32 %i.dj, 0
  br i1 %i.dk, label %_ZNK11flatbuffers6Parser7IsIdentEPKc.exit370.thread515, label %_ZNK11flatbuffers6Parser7IsIdentEPKc.exit388.thread

_ZNK11flatbuffers6Parser7IsIdentEPKc.exit370.thread515: ; preds = %_ZNK11flatbuffers6Parser7IsIdentEPKc.exit370
  call void @_ZN11flatbuffers6Parser4NextEv(ptr dead_on_unwind writable sret(%"class.flatbuffers::CheckedError") align 1 %0, ptr noundef nonnull align 8 dereferenceable(1936) %1)
  store i8 1, ptr %i.g, align 1, !tbaa !213
  %i.dl = load i8, ptr %0, align 1, !tbaa !212, !range !208, !noundef !209
  %i.dm = trunc nuw i8 %i.dl to i1
  br i1 %i.dm, label %.critedge.thread, label %bb.d

bb.d:                                             ; preds = %_ZNK11flatbuffers6Parser7IsIdentEPKc.exit370.thread515
  call void @_ZN11flatbuffers6Parser6ExpectEi(ptr dead_on_unwind nonnull writable sret(%"class.flatbuffers::CheckedError") align 1 %0, ptr noundef nonnull align 8 dereferenceable(1936) %1, i32 noundef 258)
  store i8 1, ptr %i.g, align 1, !tbaa !213
  %i.dn = load i8, ptr %0, align 1, !tbaa !212, !range !208, !noundef !209
  %i.do = trunc nuw i8 %i.dn to i1
  br i1 %i.do, label %.critedge.thread, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.dp = load i32, ptr %i.j, align 4, !tbaa !228
  %i.dq = icmp eq i32 %i.dp, 260
  br i1 %i.dq, label %bb.f, label %bb.h

bb.f:                                             ; preds = %bb.e
  call void @_ZN11flatbuffers6Parser4NextEv(ptr dead_on_unwind nonnull writable sret(%"class.flatbuffers::CheckedError") align 1 %0, ptr noundef nonnull align 8 dereferenceable(1936) %1)
  store i8 1, ptr %i.g, align 1, !tbaa !213
  %i.dr = load i8, ptr %0, align 1, !tbaa !212, !range !208, !noundef !209
  %i.ds = trunc nuw i8 %i.dr to i1
  br i1 %i.ds, label %.critedge.thread, label %bb.g

bb.g:                                             ; preds = %bb.f
  call void @_ZN11flatbuffers6Parser4NextEv(ptr dead_on_unwind nonnull writable sret(%"class.flatbuffers::CheckedError") align 1 %0, ptr noundef nonnull align 8 dereferenceable(1936) %1)
  store i8 1, ptr %i.g, align 1, !tbaa !213
  %i.dt = load i8, ptr %0, align 1, !tbaa !212, !range !208, !noundef !209
  %i.du = trunc nuw i8 %i.dt to i1
  br i1 %i.du, label %.critedge.thread, label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.e
  call void @_ZN11flatbuffers6Parser6ExpectEi(ptr dead_on_unwind nonnull writable sret(%"class.flatbuffers::CheckedError") align 1 %0, ptr noundef nonnull align 8 dereferenceable(1936) %1, i32 noundef 59)
  store i8 1, ptr %i.g, align 1, !tbaa !213
  %i.dv = load i8, ptr %0, align 1, !tbaa !212, !range !208, !noundef !209
  %i.dw = trunc nuw i8 %i.dv to i1
  br i1 %i.dw, label %.critedge.thread, label %.backedge

_ZNK11flatbuffers6Parser7IsIdentEPKc.exit372:     ; preds = %_ZNK11flatbuffers6Parser7IsIdentEPKc.exit366
  %i.dx = load ptr, ptr %i.k, align 8, !tbaa !82  ; 2 uses
  %i.dy = load i32, ptr %i.dx, align 1
  %i.dz = xor i32 %i.dy, 1769238639
  %i.ea = getelementptr i8, ptr %i.dx, i64 4
  %i.eb = load i16, ptr %i.ea, align 1
  %i.ec = zext i16 %i.eb to i32
  %i.ed = xor i32 %i.ec, 28271
  %i.ee = or i32 %i.dz, %i.ed
  %i.ef = icmp ne i32 %i.ee, 0
  %i.eg = zext i1 %i.ef to i32
  %i.eh = icmp eq i32 %i.eg, 0
  br i1 %i.eh, label %_ZNK11flatbuffers6Parser7IsIdentEPKc.exit372.thread518, label %_ZNK11flatbuffers6Parser7IsIdentEPKc.exit388.thread

_ZNK11flatbuffers6Parser7IsIdentEPKc.exit372.thread518: ; preds = %_ZNK11flatbuffers6Parser7IsIdentEPKc.exit372
  call void @_ZN11flatbuffers6Parser16ParseProtoOptionEv(ptr dead_on_unwind writable sret(%"class.flatbuffers::CheckedError") align 1 %0, ptr noundef nonnull align 8 dereferenceable(1936) %1)
  store i8 1, ptr %i.g, align 1, !tbaa !213
  %i.ei = load i8, ptr %0, align 1, !tbaa !212, !range !208, !noundef !209
  %i.ej = trunc nuw i8 %i.ei to i1
  br i1 %i.ej, label %.critedge.thread, label %bb.i

bb.i:                                             ; preds = %_ZNK11flatbuffers6Parser7IsIdentEPKc.exit372.thread518
  call void @_ZN11flatbuffers6Parser6ExpectEi(ptr dead_on_unwind nonnull writable sret(%"class.flatbuffers::CheckedError") align 1 %0, ptr noundef nonnull align 8 dereferenceable(1936) %1, i32 noundef 59)
  store i8 1, ptr %i.g, align 1, !tbaa !213
  %i.ek = load i8, ptr %0, align 1, !tbaa !212, !range !208, !noundef !209
  %i.el = trunc nuw i8 %i.ek to i1
  br i1 %i.el, label %.critedge.thread, label %.backedge

_ZNK11flatbuffers6Parser7IsIdentEPKc.exit374:     ; preds = %bb.c
  %i.em = load ptr, ptr %i.k, align 8, !tbaa !82
  %i.en = load i64, ptr %i.em, align 1
  %i.eo = icmp ne i64 %i.en, 7234318610140980594
  %i.ep = zext i1 %i.eo to i32
  %i.eq = icmp eq i32 %i.ep, 0
  br i1 %i.eq, label %_ZNK11flatbuffers6Parser7IsIdentEPKc.exit374.thread521, label %_ZNK11flatbuffers6Parser7IsIdentEPKc.exit388.thread

_ZNK11flatbuffers6Parser7IsIdentEPKc.exit374.thread521: ; preds = %_ZNK11flatbuffers6Parser7IsIdentEPKc.exit374
  call void @_ZN11flatbuffers6Parser4NextEv(ptr dead_on_unwind writable sret(%"class.flatbuffers::CheckedError") align 1 %0, ptr noundef nonnull align 8 dereferenceable(1936) %1)
  store i8 1, ptr %i.g, align 1, !tbaa !213
  %i.er = load i8, ptr %0, align 1, !tbaa !212, !range !208, !noundef !209
  %i.es = trunc nuw i8 %i.er to i1
  br i1 %i.es, label %.critedge.thread, label %.preheader550

.preheader550:                                    ; preds = %_ZNK11flatbuffers6Parser7IsIdentEPKc.exit374.thread521, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread534
  %.0199 = phi i1 [ %i.hz, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread534 ], [ false, %_ZNK11flatbuffers6Parser7IsIdentEPKc.exit374.thread521 ] ; 2 uses
  %.0197 = phi i16 [ %.2, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread534 ], [ 0, %_ZNK11flatbuffers6Parser7IsIdentEPKc.exit374.thread521 ] ; 2 uses
  %i.et = load i32, ptr %i.j, align 4, !tbaa !228
  switch i32 %i.et, label %_ZNSt6vectorItSaItEE9push_backERKt.exit386.thread [
    i32 59, label %.critedge
    i32 258, label %bb.j
  ]

bb.j:                                             ; preds = %.preheader550
  %i.eu = load ptr, ptr %i.k, align 8, !tbaa !82  ; 8 uses
  %i.ev = load i8, ptr %i.eu, align 1, !tbaa !81  ; 2 uses
  %.not2533.i.i = icmp eq i8 %i.ev, 0
  br i1 %.not2533.i.i, label %.critedge.thread.i.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.j, %bb.k
  %i.ew = phi i8 [ %i.ez, %bb.k ], [ %i.ev, %bb.j ] ; 2 uses
  %.034.i.i = phi ptr [ %i.ey, %bb.k ], [ %i.eu, %bb.j ] ; 2 uses
  %26 = add i8 %i.ew, -48
  %i.ex = icmp ult i8 %26, 10
  br i1 %i.ex, label %.critedge.i.i, label %bb.k

bb.k:                                             ; preds = %.lr.ph.i.i
  %i.ey = getelementptr inbounds nuw i8, ptr %.034.i.i, i64 1 ; 2 uses
  %i.ez = load i8, ptr %i.ey, align 1, !tbaa !81  ; 2 uses
  %.not25.i.i = icmp eq i8 %i.ez, 0
  br i1 %.not25.i.i, label %.critedge.thread.i.i, label %.lr.ph.i.i, !llvm.loop !3

.critedge.i.i:                                    ; preds = %.lr.ph.i.i
  %i.fa = icmp eq i8 %i.ew, 48
  br i1 %i.fa, label %bb.l, label %.critedge.thread.i.i

bb.l:                                             ; preds = %.critedge.i.i
  %i.fb = getelementptr inbounds nuw i8, ptr %.034.i.i, i64 1
  %i.fc = load i8, ptr %i.fb, align 1, !tbaa !81
  %i.fd = and i8 %i.fc, -33
  %i.fe = icmp eq i8 %i.fd, 88
  br i1 %i.fe, label %bb.m, label %.critedge.thread.i.i

bb.m:                                             ; preds = %bb.l
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #32
  store ptr %i.eu, ptr %i.c, align 8, !tbaa !219
  %i.ff = load ptr, ptr @_ZN11flatbuffers13ClassicLocale9instance_E, align 8, !tbaa !224
  %i.fg = call i64 @__isoc23_strtoll_l(ptr noundef nonnull %i.eu, ptr noundef nonnull %i.c, i32 noundef 16, ptr noundef %i.ff) #32, !inline_history !307
  %i.fh = load ptr, ptr %i.c, align 8, !tbaa !219 ; 2 uses
  %i.fi = load i8, ptr %i.fh, align 1, !tbaa !81
  %.not.i.i.i = icmp ne i8 %i.fi, 0
  %i.fj = icmp eq ptr %i.fh, %i.eu
  %or.cond.i.i.i = or i1 %i.fj, %.not.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #32
  br i1 %or.cond.i.i.i, label %_ZN11flatbuffers14StringToNumberItEEbPKcPT_.exit.thread, label %_ZN11flatbuffers14StringToNumberItEEbPKcPT_.exit

.critedge.thread.i.i:                             ; preds = %bb.k, %bb.l, %.critedge.i.i, %bb.j
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #32
  store ptr %i.eu, ptr %i.b, align 8, !tbaa !219
  %i.fk = load ptr, ptr @_ZN11flatbuffers13ClassicLocale9instance_E, align 8, !tbaa !224
  %i.fl = call i64 @__isoc23_strtoll_l(ptr noundef nonnull %i.eu, ptr noundef nonnull %i.b, i32 noundef 10, ptr noundef %i.fk) #32, !inline_history !307
  %i.fm = load ptr, ptr %i.b, align 8, !tbaa !219 ; 2 uses
  %i.fn = load i8, ptr %i.fm, align 1, !tbaa !81
  %.not.i26.i.i = icmp ne i8 %i.fn, 0
  %i.fo = icmp eq ptr %i.fm, %i.eu
  %or.cond.i27.i.i = or i1 %i.fo, %.not.i26.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #32
  br i1 %or.cond.i27.i.i, label %_ZN11flatbuffers14StringToNumberItEEbPKcPT_.exit.thread, label %_ZN11flatbuffers14StringToNumberItEEbPKcPT_.exit

_ZN11flatbuffers14StringToNumberItEEbPKcPT_.exit: ; preds = %bb.m, %.critedge.thread.i.i
  %.28.i = phi i64 [ %i.fg, %bb.m ], [ %i.fl, %.critedge.thread.i.i ] ; 2 uses
  %or.cond.i = icmp ult i64 %.28.i, 65536
  %spec.select21.i = call i64 @llvm.umin.i64(i64 %.28.i, i64 65535)
  %spec.select.i = trunc nuw i64 %spec.select21.i to i16 ; 8 uses
  br i1 %or.cond.i, label %bb.q, label %_ZN11flatbuffers14StringToNumberItEEbPKcPT_.exit.thread

_ZN11flatbuffers14StringToNumberItEEbPKcPT_.exit.thread: ; preds = %bb.m, %.critedge.thread.i.i, %_ZN11flatbuffers14StringToNumberItEEbPKcPT_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #32
  %i.fp = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 6 uses
  store ptr %i.fp, ptr %5, align 8, !tbaa !80
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #32
  store i64 48, ptr %i.a, align 8, !tbaa !93
  %i.fq = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0)
          to label %.noexc unwind label %bb.o     ; 3 uses

.noexc:                                           ; preds = %_ZN11flatbuffers14StringToNumberItEEbPKcPT_.exit.thread
  store ptr %i.fq, ptr %5, align 8, !tbaa !82
  %i.fr = load i64, ptr %i.a, align 8, !tbaa !93  ; 3 uses
  store i64 %i.fr, ptr %i.fp, align 8, !tbaa !81
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(48) %i.fq, ptr noundef nonnull align 1 dereferenceable(48) @.str.213, i64 48, i1 false)
  %i.fs = getelementptr inbounds nuw i8, ptr %5, i64 8
  store i64 %i.fr, ptr %i.fs, align 8, !tbaa !79
  %i.ft = getelementptr inbounds nuw i8, ptr %i.fq, i64 %i.fr
  store i8 0, ptr %i.ft, align 1, !tbaa !81
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #32
  invoke void @_ZN11flatbuffers6Parser5ErrorERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr dead_on_unwind nonnull writable sret(%"class.flatbuffers::CheckedError") align 1 %0, ptr noundef nonnull align 8 dereferenceable(1936) %1, ptr noundef nonnull align 8 dereferenceable(32) %5)
          to label %bb.n unwind label %bb.p

bb.n:                                             ; preds = %.noexc
  %i.fu = load ptr, ptr %5, align 8, !tbaa !82    ; 2 uses
  %i.fv = icmp eq ptr %i.fu, %i.fp
  br i1 %i.fv, label %_ZNSt6vectorItSaItEE9push_backERKt.exit386.thread529, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.n
  %i.fw = load i64, ptr %i.fp, align 8, !tbaa !81
  %i.fx = add i64 %i.fw, 1
  call void @_ZdlPvm(ptr noundef %i.fu, i64 noundef %i.fx) #33
  br label %_ZNSt6vectorItSaItEE9push_backERKt.exit386.thread529

_ZNSt6vectorItSaItEE9push_backERKt.exit386.thread529: ; preds = %bb.n, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #32
  br label %.critedge.thread

bb.o:                                             ; preds = %_ZN11flatbuffers14StringToNumberItEEbPKcPT_.exit.thread
  %i.fy = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit377

bb.p:                                             ; preds = %.noexc
  %i.fz = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ga = load ptr, ptr %5, align 8, !tbaa !82    ; 2 uses
  %i.gb = icmp eq ptr %i.ga, %i.fp
  br i1 %i.gb, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit377, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i375

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i375: ; preds = %bb.p
  %i.gc = load i64, ptr %i.fp, align 8, !tbaa !81
  %i.gd = add i64 %i.gc, 1
  call void @_ZdlPvm(ptr noundef %i.ga, i64 noundef %i.gd) #33
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit377

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit377: ; preds = %bb.p, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i375, %bb.o
  %.pn306 = phi { ptr, i32 } [ %i.fy, %bb.o ], [ %i.fz, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i375 ], [ %i.fz, %bb.p ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #32
  br label %common.resume

bb.q:                                             ; preds = %_ZN11flatbuffers14StringToNumberItEEbPKcPT_.exit
  br i1 %.0199, label %.preheader, label %bb.w

.preheader:                                       ; preds = %bb.q
  %storemerge621 = add i16 %.0197, 1              ; 2 uses
  %.not309622 = icmp ugt i16 %storemerge621, %spec.select.i
  br i1 %.not309622, label %_ZNSt6vectorItSaItEE9push_backERKt.exit386.thread, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %.preheader
  %.pre = load ptr, ptr %i.n, align 8, !tbaa !1787
  %.pre635 = load ptr, ptr %i.o, align 8, !tbaa !467
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %_ZNSt6vectorItSaItEE9push_backERKt.exit
  %i.ge = phi ptr [ %i.gx, %_ZNSt6vectorItSaItEE9push_backERKt.exit ], [ %.pre635, %.lr.ph.preheader ] ; 3 uses
  %i.gf = phi ptr [ %i.gy, %_ZNSt6vectorItSaItEE9push_backERKt.exit ], [ %.pre, %.lr.ph.preheader ] ; 3 uses
  %storemerge623 = phi i16 [ %storemerge, %_ZNSt6vectorItSaItEE9push_backERKt.exit ], [ %storemerge621, %.lr.ph.preheader ] ; 3 uses
  %.not.i = icmp eq ptr %i.gf, %i.ge
  br i1 %.not.i, label %bb.s, label %bb.r

bb.r:                                             ; preds = %.lr.ph
  store i16 %storemerge623, ptr %i.gf, align 2, !tbaa !254
  %i.gg = getelementptr inbounds nuw i8, ptr %i.gf, i64 2 ; 2 uses
  store ptr %i.gg, ptr %i.n, align 8, !tbaa !1787
  br label %_ZNSt6vectorItSaItEE9push_backERKt.exit

bb.s:                                             ; preds = %.lr.ph
  %i.gh = load ptr, ptr %i.m, align 8, !tbaa !468 ; 4 uses
  %i.gi = ptrtoint ptr %i.ge to i64
  %i.gj = ptrtoint ptr %i.gh to i64
  %i.gk = sub i64 %i.gi, %i.gj                    ; 6 uses
  %i.gl = icmp eq i64 %i.gk, 9223372036854775806
  br i1 %i.gl, label %bb.t, label %_ZNKSt6vectorItSaItEE12_M_check_lenEmPKc.exit.i.i

bb.t:                                             ; preds = %bb.s
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.324) #31
  unreachable

_ZNKSt6vectorItSaItEE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.s
  %i.gm = ashr exact i64 %i.gk, 1                 ; 3 uses
  %.sroa.speculated.i.i.i = call i64 @llvm.umax.i64(i64 %i.gm, i64 1)
  %i.gn = add i64 %.sroa.speculated.i.i.i, %i.gm  ; 2 uses
  %i.go = icmp ult i64 %i.gn, %i.gm
  %i.gp = call i64 @llvm.umin.i64(i64 %i.gn, i64 4611686018427387903)
  %i.gq = select i1 %i.go, i64 4611686018427387903, i64 %i.gp ; 3 uses
  %.not.i.i.i378 = icmp ne i64 %i.gq, 0
  call void @llvm.assume(i1 %.not.i.i.i378)
  %i.gr = shl nuw nsw i64 %i.gq, 1
  %i.gs = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.gr) #36 ; 4 uses
  %i.gt = getelementptr inbounds i8, ptr %i.gs, i64 %i.gk ; 2 uses
  store i16 %storemerge623, ptr %i.gt, align 2, !tbaa !254
  %i.gu = icmp sgt i64 %i.gk, 0
  br i1 %i.gu, label %bb.u, label %_ZNSt6vectorItSaItEE11_S_relocateEPtS2_S2_RS0_.exit16.i.i

bb.u:                                             ; preds = %_ZNKSt6vectorItSaItEE12_M_check_lenEmPKc.exit.i.i
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 2 %i.gs, ptr align 2 %i.gh, i64 %i.gk, i1 false)
  br label %_ZNSt6vectorItSaItEE11_S_relocateEPtS2_S2_RS0_.exit16.i.i

_ZNSt6vectorItSaItEE11_S_relocateEPtS2_S2_RS0_.exit16.i.i: ; preds = %bb.u, %_ZNKSt6vectorItSaItEE12_M_check_lenEmPKc.exit.i.i
  %i.gv = getelementptr inbounds nuw i8, ptr %i.gt, i64 2 ; 2 uses
  %.not.i17.i.i = icmp eq ptr %i.gh, null
  br i1 %.not.i17.i.i, label %_ZNSt6vectorItSaItEE17_M_realloc_insertIJRKtEEEvN9__gnu_cxx17__normal_iteratorIPtS1_EEDpOT_.exit.i, label %bb.v

bb.v:                                             ; preds = %_ZNSt6vectorItSaItEE11_S_relocateEPtS2_S2_RS0_.exit16.i.i
  call void @_ZdlPvm(ptr noundef nonnull %i.gh, i64 noundef %i.gk) #33
  br label %_ZNSt6vectorItSaItEE17_M_realloc_insertIJRKtEEEvN9__gnu_cxx17__normal_iteratorIPtS1_EEDpOT_.exit.i

_ZNSt6vectorItSaItEE17_M_realloc_insertIJRKtEEEvN9__gnu_cxx17__normal_iteratorIPtS1_EEDpOT_.exit.i: ; preds = %bb.v, %_ZNSt6vectorItSaItEE11_S_relocateEPtS2_S2_RS0_.exit16.i.i
  store ptr %i.gs, ptr %i.m, align 8, !tbaa !468
  store ptr %i.gv, ptr %i.n, align 8, !tbaa !1787
  %i.gw = getelementptr inbounds nuw [2 x i8], ptr %i.gs, i64 %i.gq ; 2 uses
  store ptr %i.gw, ptr %i.o, align 8, !tbaa !467
  br label %_ZNSt6vectorItSaItEE9push_backERKt.exit

_ZNSt6vectorItSaItEE9push_backERKt.exit:          ; preds = %bb.r, %_ZNSt6vectorItSaItEE17_M_realloc_insertIJRKtEEEvN9__gnu_cxx17__normal_iteratorIPtS1_EEDpOT_.exit.i
  %i.gx = phi ptr [ %i.ge, %bb.r ], [ %i.gw, %_ZNSt6vectorItSaItEE17_M_realloc_insertIJRKtEEEvN9__gnu_cxx17__normal_iteratorIPtS1_EEDpOT_.exit.i ]
  %i.gy = phi ptr [ %i.gg, %bb.r ], [ %i.gv, %_ZNSt6vectorItSaItEE17_M_realloc_insertIJRKtEEEvN9__gnu_cxx17__normal_iteratorIPtS1_EEDpOT_.exit.i ]
  %storemerge = add i16 %storemerge623, 1         ; 2 uses
  %.not309 = icmp ugt i16 %storemerge, %spec.select.i
  br i1 %.not309, label %_ZNSt6vectorItSaItEE9push_backERKt.exit386.thread, label %.lr.ph, !llvm.loop !1780

bb.w:                                             ; preds = %bb.q
  %i.gz = load ptr, ptr %i.n, align 8, !tbaa !1787 ; 4 uses
  %i.ha = load ptr, ptr %i.o, align 8, !tbaa !467
  %.not.i379 = icmp eq ptr %i.gz, %i.ha
  br i1 %.not.i379, label %bb.y, label %bb.x

bb.x:                                             ; preds = %bb.w
end_hunk_19
begin_hunk_20_@_ZN11flatbuffers6Parser9ConformToB5cxx11ERKS0_:bb.a

bb.cg:                                            ; preds = %bb.cf
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.330) #31
          to label %.noexc434 unwind label %.loopexit.split-lp519.loopexit.split-lp.loopexit.split-lp

.noexc434:                                        ; preds = %bb.cg
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i430: ; preds = %bb.cf
  %i.yu = load ptr, ptr %14, align 8, !tbaa !82, !noalias !2299
  %i.yv = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %15, ptr noundef %i.yu, i64 noundef %i.yq)
          to label %.noexc435 unwind label %.loopexit.split-lp519.loopexit.split-lp.loopexit.split-lp ; 6 uses

.noexc435:                                        ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i430
  store ptr %i.uu, ptr %0, align 8, !tbaa !80, !alias.scope !2299
  %i.yw = load ptr, ptr %i.yv, align 8, !tbaa !82 ; 2 uses
  %i.yx = getelementptr inbounds nuw i8, ptr %i.yv, i64 16 ; 5 uses
  %i.yy = icmp eq ptr %i.yw, %i.yx
  br i1 %i.yy, label %bb.ch, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i431

bb.ch:                                            ; preds = %.noexc435
  %i.yz = getelementptr inbounds nuw i8, ptr %i.yv, i64 8
  %i.za = load i64, ptr %i.yz, align 8, !tbaa !79 ; 3 uses
  %i.zb = icmp ult i64 %i.za, 16
  call void @llvm.assume(i1 %i.zb)
  %i.zc = add nuw nsw i64 %i.za, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.uu, ptr noundef nonnull align 8 dereferenceable(1) %i.yx, i64 %i.zc, i1 false)
  br label %bb.ci

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i431: ; preds = %.noexc435
  store ptr %i.yw, ptr %0, align 8, !tbaa !82, !alias.scope !2299
  %i.zd = load i64, ptr %i.yx, align 8, !tbaa !81
  store i64 %i.zd, ptr %i.uu, align 8, !tbaa !81, !alias.scope !2299
  %.phi.trans.insert.i432 = getelementptr inbounds nuw i8, ptr %i.yv, i64 8
  %.pre.i433 = load i64, ptr %.phi.trans.insert.i432, align 8, !tbaa !79
  br label %bb.ci

bb.ci:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i431, %bb.ch
  %i.ze = phi i64 [ %i.za, %bb.ch ], [ %.pre.i433, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i431 ]
  %i.zf = getelementptr inbounds nuw i8, ptr %i.yv, i64 8
  store i64 %i.ze, ptr %i.uv, align 8, !tbaa !79, !alias.scope !2299
  store ptr %i.yx, ptr %i.yv, align 8, !tbaa !82
  store i64 0, ptr %i.zf, align 8, !tbaa !79
  store i8 0, ptr %i.yx, align 8, !tbaa !81
  %i.zg = load ptr, ptr %15, align 8, !tbaa !82   ; 2 uses
  %i.zh = icmp eq ptr %i.zg, %i.uy
  br i1 %i.zh, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit439, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i437

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i437: ; preds = %bb.ci
  %i.zi = load i64, ptr %i.uy, align 8, !tbaa !81
  %i.zj = add i64 %i.zi, 1
  call void @_ZdlPvm(ptr noundef %i.zg, i64 noundef %i.zj) #33
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit439

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit439: ; preds = %bb.ci, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i437
  %i.zk = load ptr, ptr %16, align 8, !tbaa !82   ; 2 uses
  %i.zl = icmp eq ptr %i.zk, %i.uw
  br i1 %i.zl, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit442, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i440

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i440: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit439
  %i.zm = load i64, ptr %i.uw, align 8, !tbaa !81
  %i.zn = add i64 %i.zm, 1
  call void @_ZdlPvm(ptr noundef %i.zk, i64 noundef %i.zn) #33
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit442

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit442: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit439, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i440
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #32
  br label %_ZNK11flatbuffers11SymbolTableINS_7EnumDefEE6LookupERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.thread

bb.cj:                                            ; preds = %._crit_edge.i.i
  %i.zo = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit445

.loopexit.split-lp519.loopexit.split-lp.loopexit.split-lp: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i430, %bb.cg
  %lpad.loopexit.split-lp1091 = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.zp = load ptr, ptr %15, align 8, !tbaa !82   ; 2 uses
  %i.zq = icmp eq ptr %i.zp, %i.uy
  br i1 %i.zq, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit445, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i443

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i443: ; preds = %.loopexit.split-lp519.loopexit.split-lp.loopexit.split-lp
  %i.zr = load i64, ptr %i.uy, align 8, !tbaa !81
  %i.zs = add i64 %i.zr, 1
  call void @_ZdlPvm(ptr noundef %i.zp, i64 noundef %i.zs) #33
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit445

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit445: ; preds = %.loopexit.split-lp519.loopexit.split-lp.loopexit.split-lp, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i443, %bb.cj
  %.pn124 = phi { ptr, i32 } [ %i.zo, %bb.cj ], [ %lpad.loopexit.split-lp1091, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i443 ], [ %lpad.loopexit.split-lp1091, %.loopexit.split-lp519.loopexit.split-lp.loopexit.split-lp ]
  %i.zt = load ptr, ptr %16, align 8, !tbaa !82   ; 2 uses
  %i.zu = icmp eq ptr %i.zt, %i.uw
  br i1 %i.zu, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit448, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i446

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i446: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit445
  %i.zv = load i64, ptr %i.uw, align 8, !tbaa !81
  %i.zw = add i64 %i.zv, 1
  call void @_ZdlPvm(ptr noundef %i.zt, i64 noundef %i.zw) #33
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit448

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit448: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit445, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i446
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #32
  br label %.body422

_ZNK11flatbuffers11SymbolTableINS_7EnumDefEE6LookupERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.thread: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i10.i.i419, %_ZNKSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_PN11flatbuffers7EnumDefEESt10_Select1stISB_ESt4lessIS5_ESaISB_EE14_M_lower_boundEPKSt13_Rb_tree_nodeISB_EPKSt18_Rb_tree_node_baseRS7_.exit.i.i.i, %bb.bv, %_ZNKSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPN11flatbuffers7EnumDefESt4lessIS5_ESaISt4pairIKS5_S8_EEE4findERSC_.exit.i, %.critedge133.thread, %_ZNK11flatbuffers11SymbolTableINS_7EnumDefEE6LookupERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit442
  %.11 = phi i32 [ 1, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit442 ], [ 16, %_ZNK11flatbuffers11SymbolTableINS_7EnumDefEE6LookupERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit ], [ 16, %_ZNKSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_PN11flatbuffers7EnumDefEESt10_Select1stISB_ESt4lessIS5_ESaISB_EE14_M_lower_boundEPKSt13_Rb_tree_nodeISB_EPKSt18_Rb_tree_node_baseRS7_.exit.i.i.i ], [ 0, %.critedge133.thread ], [ 16, %_ZNKSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPN11flatbuffers7EnumDefESt4lessIS5_ESaISt4pairIKS5_S8_EEE4findERSC_.exit.i ], [ 16, %bb.bv ], [ 1, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i10.i.i419 ]
  %i.zx = load ptr, ptr %14, align 8, !tbaa !82   ; 2 uses
  %i.zy = icmp eq ptr %i.zx, %i.va
  br i1 %i.zy, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit451, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i449

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i449: ; preds = %_ZNK11flatbuffers11SymbolTableINS_7EnumDefEE6LookupERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.thread
  %i.zz = load i64, ptr %i.va, align 8, !tbaa !81
  %i.aaa = add i64 %i.zz, 1
  call void @_ZdlPvm(ptr noundef %i.zx, i64 noundef %i.aaa) #33
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit451

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit451: ; preds = %_ZNK11flatbuffers11SymbolTableINS_7EnumDefEE6LookupERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.thread, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i449
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #32
  switch i32 %.11, label %.loopexit523 [
    i32 0, label %bb.ck
    i32 16, label %bb.ck
  ]

bb.ck:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit451, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit451
  %i.aab = getelementptr inbounds nuw i8, ptr %.sroa.0465.0838, i64 8 ; 2 uses
  %i.aac = load ptr, ptr %i.up, align 8, !tbaa !423
  %.not511 = icmp eq ptr %i.aab, %i.aac
  br i1 %.not511, label %._crit_edge.i.i455, label %bb.bv, !llvm.loop !2273

.body422:                                         ; preds = %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i414, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit448
  %.pn124.pn.pn = phi { ptr, i32 } [ %.pn124, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit448 ], [ %lpad.loopexit.split-lp1089, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i414 ], [ %lpad.loopexit.split-lp1089, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ]
  %i.aad = load ptr, ptr %14, align 8, !tbaa !82  ; 2 uses
  %i.aae = icmp eq ptr %i.aad, %i.va
  br i1 %i.aae, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit454, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i452

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i452: ; preds = %.body422
  %i.aaf = load i64, ptr %i.va, align 8, !tbaa !81
  %i.aag = add i64 %i.aaf, 1
  call void @_ZdlPvm(ptr noundef %i.aad, i64 noundef %i.aag) #33
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit454

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit454: ; preds = %.body422, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i452
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #32
  br label %bb.cl

._crit_edge.i.i455:                               ; preds = %bb.ck, %._crit_edge832
  %i.aah = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  store ptr %i.aah, ptr %0, align 8, !tbaa !80
  %i.aai = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 0, ptr %i.aai, align 8, !tbaa !79
  store i8 0, ptr %i.aah, align 8, !tbaa !81
  br label %.loopexit523

.loopexit523:                                     ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit451, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit358.jt1, %._crit_edge.i.i455
  ret void

bb.cl:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit454, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit361
  %.pn128 = phi { ptr, i32 } [ %.pn114.pn.pn.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit361 ], [ %.pn124.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit454 ]
  resume { ptr, i32 } %.pn128
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZNSt3setIPN11flatbuffers8FieldDefESt4lessIS2_ESaIS2_EED2Ev(ptr noundef nonnull align 8 dead_on_return(48) dereferenceable(48) %0) unnamed_addr #7 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !232
  invoke void @_ZNSt8_Rb_treeIPN11flatbuffers8FieldDefES2_St9_IdentityIS2_ESt4lessIS2_ESaIS2_EE8_M_eraseEPSt13_Rb_tree_nodeIS2_E(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %i.b)
          to label %_ZNSt8_Rb_treeIPN11flatbuffers8FieldDefES2_St9_IdentityIS2_ESt4lessIS2_ESaIS2_EED2Ev.exit unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = landingpad { ptr, i32 }
          catch ptr null
  %i.d = extractvalue { ptr, i32 } %i.c, 0
  tail call void @__clang_call_terminate(ptr %i.d) #34
  unreachable

_ZNSt8_Rb_treeIPN11flatbuffers8FieldDefES2_St9_IdentityIS2_ESt4lessIS2_ESaIS2_EED2Ev.exit: ; preds = %bb.a
  ret void
}

declare noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE14_M_replace_auxEmmmc(ptr noundef nonnull align 8 dereferenceable(32), i64 noundef, i64 noundef, i64 noundef, i8 noundef signext) local_unnamed_addr #3

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZN11flatbuffers19StringToIntegerImplImEEbPT_PKcib(ptr noundef %0, ptr noundef %1, i32 noundef %2, i1 noundef zeroext %3) local_unnamed_addr #4 comdat {
bb.a:
  %i.a = alloca ptr, align 8                      ; 5 uses
  %i.b = alloca ptr, align 8                      ; 5 uses
  %i.c = alloca ptr, align 8                      ; 5 uses
  %i.d = icmp slt i32 %2, 1
  br i1 %i.d, label %.preheader, label %bb.q

.preheader:                                       ; preds = %bb.a
  %i.e = load i8, ptr %1, align 1, !tbaa !81      ; 2 uses
  %.not2533 = icmp eq i8 %i.e, 0
  br i1 %.not2533, label %.critedge.thread, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader, %bb.b
  %i.f = phi i8 [ %i.i, %bb.b ], [ %i.e, %.preheader ] ; 2 uses
  %.034 = phi ptr [ %i.h, %bb.b ], [ %1, %.preheader ] ; 2 uses
  %4 = add i8 %i.f, -48
  %i.g = icmp ult i8 %4, 10
  br i1 %i.g, label %.critedge, label %bb.b

bb.b:                                             ; preds = %.lr.ph
  %i.h = getelementptr inbounds nuw i8, ptr %.034, i64 1 ; 2 uses
  %i.i = load i8, ptr %i.h, align 1, !tbaa !81    ; 2 uses
  %.not25 = icmp eq i8 %i.i, 0
  br i1 %.not25, label %.critedge.thread, label %.lr.ph, !llvm.loop !2300

.critedge:                                        ; preds = %.lr.ph
  %i.j = icmp eq i8 %i.f, 48
  br i1 %i.j, label %bb.c, label %.critedge.thread

bb.c:                                             ; preds = %.critedge
  %i.k = getelementptr inbounds nuw i8, ptr %.034, i64 1
  %i.l = load i8, ptr %i.k, align 1, !tbaa !81
  %i.m = and i8 %i.l, -33
  %i.n = icmp eq i8 %i.m, 88
  br i1 %i.n, label %bb.d, label %.critedge.thread

bb.d:                                             ; preds = %bb.c
  br i1 %3, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.o = tail call ptr @__errno_location() #35, !inline_history !220
  store i32 0, ptr %i.o, align 4, !tbaa !221
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #32
  store ptr %1, ptr %i.b, align 8, !tbaa !219
  %i.p = load ptr, ptr @_ZN11flatbuffers13ClassicLocale9instance_E, align 8, !tbaa !224
  %i.q = call i64 @__isoc23_strtoull_l(ptr noundef nonnull %1, ptr noundef nonnull %i.b, i32 noundef 16, ptr noundef %i.p) #32
  store i64 %i.q, ptr %0, align 8, !tbaa !93
  %i.r = load ptr, ptr %i.b, align 8, !tbaa !219  ; 2 uses
  %i.s = load i8, ptr %i.r, align 1, !tbaa !81
  %.not.i = icmp ne i8 %i.s, 0
  %i.t = icmp eq ptr %i.r, %1
  %or.cond.i = or i1 %i.t, %.not.i
  br i1 %or.cond.i, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  store i64 0, ptr %0, align 8, !tbaa !93
  br label %_ZN11flatbuffers19StringToIntegerImplImEEbPT_PKcib.exit

bb.h:                                             ; preds = %bb.f
  br i1 %3, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.u = tail call ptr @__errno_location() #35, !inline_history !220
  %i.v = load i32, ptr %i.u, align 4, !tbaa !221
  %.not24.i = icmp eq i32 %i.v, 0
  br i1 %.not24.i, label %bb.j, label %_ZN11flatbuffers19StringToIntegerImplImEEbPT_PKcib.exit

bb.j:                                             ; preds = %bb.i, %bb.h
  br label %_ZN11flatbuffers19StringToIntegerImplImEEbPT_PKcib.exit

_ZN11flatbuffers19StringToIntegerImplImEEbPT_PKcib.exit: ; preds = %bb.g, %bb.i, %bb.j
  %.1.i = phi i1 [ false, %bb.g ], [ true, %bb.j ], [ false, %bb.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #32
  br label %bb.y

.critedge.thread:                                 ; preds = %bb.b, %.preheader, %bb.c, %.critedge
  br i1 %3, label %bb.k, label %bb.l

bb.k:                                             ; preds = %.critedge.thread
  %i.w = tail call ptr @__errno_location() #35, !inline_history !220
  store i32 0, ptr %i.w, align 4, !tbaa !221
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %.critedge.thread
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #32
  store ptr %1, ptr %i.a, align 8, !tbaa !219
  %i.x = load ptr, ptr @_ZN11flatbuffers13ClassicLocale9instance_E, align 8, !tbaa !224
  %i.y = call i64 @__isoc23_strtoull_l(ptr noundef nonnull %1, ptr noundef nonnull %i.a, i32 noundef 10, ptr noundef %i.x) #32
  store i64 %i.y, ptr %0, align 8, !tbaa !93
  %i.z = load ptr, ptr %i.a, align 8, !tbaa !219  ; 2 uses
  %i.aa = load i8, ptr %i.z, align 1, !tbaa !81
  %.not.i26 = icmp ne i8 %i.aa, 0
  %i.ab = icmp eq ptr %i.z, %1
  %or.cond.i27 = or i1 %i.ab, %.not.i26
  br i1 %or.cond.i27, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  store i64 0, ptr %0, align 8, !tbaa !93
  br label %_ZN11flatbuffers19StringToIntegerImplImEEbPT_PKcib.exit30

bb.n:                                             ; preds = %bb.l
  br i1 %3, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  %i.ac = tail call ptr @__errno_location() #35, !inline_history !220
  %i.ad = load i32, ptr %i.ac, align 4, !tbaa !221
  %.not24.i29 = icmp eq i32 %i.ad, 0
  br i1 %.not24.i29, label %bb.p, label %_ZN11flatbuffers19StringToIntegerImplImEEbPT_PKcib.exit30

bb.p:                                             ; preds = %bb.o, %bb.n
  br label %_ZN11flatbuffers19StringToIntegerImplImEEbPT_PKcib.exit30

_ZN11flatbuffers19StringToIntegerImplImEEbPT_PKcib.exit30: ; preds = %bb.m, %bb.o, %bb.p
  %.1.i28 = phi i1 [ false, %bb.m ], [ true, %bb.p ], [ false, %bb.o ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #32
  br label %bb.y

bb.q:                                             ; preds = %bb.a
  br i1 %3, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  %i.ae = tail call ptr @__errno_location() #35
  store i32 0, ptr %i.ae, align 4, !tbaa !221
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.q
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #32
  store ptr %1, ptr %i.c, align 8, !tbaa !219
  %i.af = load ptr, ptr @_ZN11flatbuffers13ClassicLocale9instance_E, align 8, !tbaa !224
  %i.ag = call i64 @__isoc23_strtoull_l(ptr noundef %1, ptr noundef nonnull %i.c, i32 noundef %2, ptr noundef %i.af) #32
  store i64 %i.ag, ptr %0, align 8, !tbaa !93
  %i.ah = load ptr, ptr %i.c, align 8, !tbaa !219 ; 2 uses
  %i.ai = load i8, ptr %i.ah, align 1, !tbaa !81
  %.not = icmp ne i8 %i.ai, 0
  %i.aj = icmp eq ptr %i.ah, %1
  %or.cond = or i1 %i.aj, %.not
  br i1 %or.cond, label %bb.t, label %bb.u

bb.t:                                             ; preds = %bb.s
  store i64 0, ptr %0, align 8, !tbaa !93
  br label %bb.x

bb.u:                                             ; preds = %bb.s
  br i1 %3, label %bb.v, label %bb.w

bb.v:                                             ; preds = %bb.u
  %i.ak = tail call ptr @__errno_location() #35
  %i.al = load i32, ptr %i.ak, align 4, !tbaa !221
  %.not24 = icmp eq i32 %i.al, 0
  br i1 %.not24, label %bb.w, label %bb.x

bb.w:                                             ; preds = %bb.v, %bb.u
  br label %bb.x

bb.x:                                             ; preds = %bb.v, %bb.w, %bb.t
  %.1 = phi i1 [ false, %bb.t ], [ true, %bb.w ], [ false, %bb.v ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #32
  br label %bb.y

bb.y:                                             ; preds = %_ZN11flatbuffers19StringToIntegerImplImEEbPT_PKcib.exit, %_ZN11flatbuffers19StringToIntegerImplImEEbPT_PKcib.exit30, %bb.x
  %.2 = phi i1 [ %.1, %bb.x ], [ %.1.i, %_ZN11flatbuffers19StringToIntegerImplImEEbPT_PKcib.exit ], [ %.1.i28, %_ZN11flatbuffers19StringToIntegerImplImEEbPT_PKcib.exit30 ]
  ret i1 %.2
}

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(none)
declare ptr @__errno_location() local_unnamed_addr #18

; Function Attrs: nounwind
declare i64 @__isoc23_strtoull_l(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #15

; Function Attrs: noinline noreturn nounwind uwtable
define linkonce_odr hidden void @__clang_call_terminate(ptr noundef %0) local_unnamed_addr #19 comdat {
bb.a:
  %i.a = tail call ptr @__cxa_begin_catch(ptr %0) #32 ; 0 uses
  tail call void @_ZSt9terminatev() #34
  unreachable
}

declare ptr @__cxa_begin_catch(ptr) local_unnamed_addr

; Function Attrs: cold nofree noreturn
declare void @_ZSt9terminatev() local_unnamed_addr #20

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN11flatbuffers11SymbolTableINS_5ValueEED2Ev(ptr noundef nonnull align 8 dead_on_return(72) dereferenceable(72) %0) unnamed_addr #7 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !2302 ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !2302 ; 2 uses
  %.not4 = icmp eq ptr %i.b, %i.d
  br i1 %.not4, label %._crit_edge, label %.lr.ph

._crit_edge.loopexit:                             ; preds = %bb.e
  %.pre6 = load ptr, ptr %i.a, align 8, !tbaa !353
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %bb.a
  %i.e = phi ptr [ %.pre6, %._crit_edge.loopexit ], [ %i.b, %bb.a ] ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.e, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorIPN11flatbuffers5ValueESaIS2_EED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %._crit_edge
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !351
  %i.h = ptrtoint ptr %i.g to i64
  %i.i = ptrtoint ptr %i.e to i64
  %i.j = sub i64 %i.h, %i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %i.e, i64 noundef %i.j) #33
  br label %_ZNSt6vectorIPN11flatbuffers5ValueESaIS2_EED2Ev.exit

_ZNSt6vectorIPN11flatbuffers5ValueESaIS2_EED2Ev.exit: ; preds = %._crit_edge, %bb.b
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !232
end_hunk_20
begin_hunk_21_@_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_PN11flatbuffers7EnumDefEESt10_Select1stISB_ESt4lessIS5_ESaISB_EE7_M_copyILb0ENSH_20_Reuse_or_alloc_nodeEEEPSt13_Rb_tree_nodeISB_ESM_PSt18_Rb_tree_node_baseRT0_:bb.a
  ret ptr %i.b

bb.l:                                             ; preds = %bb.j
  %i.v = landingpad { ptr, i32 }
          catch ptr null
  %i.w = extractvalue { ptr, i32 } %i.v, 0
  tail call void @__clang_call_terminate(ptr %i.w) #34
  unreachable

bb.m:                                             ; preds = %bb.h
  unreachable
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef ptr @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_PN11flatbuffers7EnumDefEESt10_Select1stISB_ESt4lessIS5_ESaISB_EE20_Reuse_or_alloc_nodeclIRKSB_EEPSt13_Rb_tree_nodeISB_EOT_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(40) %1) local_unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !534  ; 7 uses
  %.not.i = icmp eq ptr %i.b, null
  br i1 %.not.i, label %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_PN11flatbuffers7EnumDefEESt10_Select1stISB_ESt4lessIS5_ESaISB_EE20_Reuse_or_alloc_node10_M_extractEv.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !482  ; 5 uses
  store ptr %i.d, ptr %i.a, align 8, !tbaa !534
  %.not9.i = icmp eq ptr %i.d, null
  br i1 %.not9.i, label %bb.g, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 24 ; 2 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !485
  %i.g = icmp eq ptr %i.f, %i.b
  br i1 %i.g, label %bb.d, label %bb.f

bb.d:                                             ; preds = %bb.c
  store ptr null, ptr %i.e, align 8, !tbaa !485
  %i.h = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !484  ; 2 uses
  %.not10.i = icmp eq ptr %i.i, null
  br i1 %.not10.i, label %bb.h, label %.preheader.i

.preheader.i:                                     ; preds = %bb.d, %.preheader.i
  %storemerge.i = phi ptr [ %i.k, %.preheader.i ], [ %i.i, %bb.d ] ; 3 uses
  %i.j = getelementptr inbounds nuw i8, ptr %storemerge.i, i64 24
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !485  ; 2 uses
  %.not11.i = icmp eq ptr %i.k, null
  br i1 %.not11.i, label %bb.e, label %.preheader.i, !llvm.loop !2322

bb.e:                                             ; preds = %.preheader.i
  %i.l = getelementptr inbounds nuw i8, ptr %storemerge.i, i64 16
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !484  ; 2 uses
  %.not12.i = icmp eq ptr %i.m, null
  %spec.store.select.i = select i1 %.not12.i, ptr %storemerge.i, ptr %i.m
  store ptr %spec.store.select.i, ptr %i.a, align 8, !tbaa !534
  br label %bb.h

bb.f:                                             ; preds = %bb.c
  %i.n = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  store ptr null, ptr %i.n, align 8, !tbaa !484
  br label %bb.h

bb.g:                                             ; preds = %bb.b
  store ptr null, ptr %0, align 8, !tbaa !533
  br label %bb.h

bb.h:                                             ; preds = %bb.d, %bb.e, %bb.f, %bb.g
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.p = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !82   ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.b, i64 48 ; 2 uses
  %i.s = icmp eq ptr %i.q, %i.r
  br i1 %i.s, label %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_PN11flatbuffers7EnumDefEESt10_Select1stISB_ESt4lessIS5_ESaISB_EE15_M_destroy_nodeEPSt13_Rb_tree_nodeISB_E.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %bb.h
  %i.t = load i64, ptr %i.r, align 8, !tbaa !81
  %i.u = add i64 %i.t, 1
  tail call void @_ZdlPvm(ptr noundef %i.q, i64 noundef %i.u) #33
  br label %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_PN11flatbuffers7EnumDefEESt10_Select1stISB_ESt4lessIS5_ESaISB_EE15_M_destroy_nodeEPSt13_Rb_tree_nodeISB_E.exit

_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_PN11flatbuffers7EnumDefEESt10_Select1stISB_ESt4lessIS5_ESaISB_EE15_M_destroy_nodeEPSt13_Rb_tree_nodeISB_E.exit: ; preds = %bb.h, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i
  %i.v = load ptr, ptr %i.o, align 8, !tbaa !536, !nonnull !209, !align !446
  tail call void @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_PN11flatbuffers7EnumDefEESt10_Select1stISB_ESt4lessIS5_ESaISB_EE17_M_construct_nodeIJRKSB_EEEvPSt13_Rb_tree_nodeISB_EDpOT_(ptr noundef nonnull align 8 dereferenceable(48) %i.v, ptr noundef nonnull %i.b, ptr noundef nonnull align 8 dereferenceable(40) %1)
  br label %bb.i

_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_PN11flatbuffers7EnumDefEESt10_Select1stISB_ESt4lessIS5_ESaISB_EE20_Reuse_or_alloc_node10_M_extractEv.exit: ; preds = %bb.a
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !536, !nonnull !209, !align !446
  %i.y = tail call noalias noundef nonnull dereferenceable(72) ptr @_Znwm(i64 noundef 72) #36 ; 2 uses
  tail call void @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_PN11flatbuffers7EnumDefEESt10_Select1stISB_ESt4lessIS5_ESaISB_EE17_M_construct_nodeIJRKSB_EEEvPSt13_Rb_tree_nodeISB_EDpOT_(ptr noundef nonnull align 8 dereferenceable(48) %i.x, ptr noundef nonnull %i.y, ptr noundef nonnull align 8 dereferenceable(40) %1)
  br label %bb.i

bb.i:                                             ; preds = %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_PN11flatbuffers7EnumDefEESt10_Select1stISB_ESt4lessIS5_ESaISB_EE20_Reuse_or_alloc_node10_M_extractEv.exit, %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_PN11flatbuffers7EnumDefEESt10_Select1stISB_ESt4lessIS5_ESaISB_EE15_M_destroy_nodeEPSt13_Rb_tree_nodeISB_E.exit
  %.0 = phi ptr [ %i.b, %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_PN11flatbuffers7EnumDefEESt10_Select1stISB_ESt4lessIS5_ESaISB_EE15_M_destroy_nodeEPSt13_Rb_tree_nodeISB_E.exit ], [ %i.y, %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_PN11flatbuffers7EnumDefEESt10_Select1stISB_ESt4lessIS5_ESaISB_EE20_Reuse_or_alloc_node10_M_extractEv.exit ]
  ret ptr %.0
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_PN11flatbuffers7EnumDefEESt10_Select1stISB_ESt4lessIS5_ESaISB_EE17_M_construct_nodeIJRKSB_EEEvPSt13_Rb_tree_nodeISB_EDpOT_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(40) %2) local_unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 48 ; 3 uses
  store ptr %i.c, ptr %i.b, align 8, !tbaa !80
  %i.d = load ptr, ptr %2, align 8, !tbaa !82     ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.f = load i64, ptr %i.e, align 8, !tbaa !79   ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #32
  store i64 %i.f, ptr %i.a, align 8, !tbaa !93
  %i.g = icmp ugt i64 %i.f, 15
  br i1 %i.g, label %.noexc.i.i, label %._crit_edge.i.i.i

.noexc.i.i:                                       ; preds = %bb.a
  %i.h = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(40) %i.b, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0)
          to label %.noexc unwind label %bb.d     ; 2 uses

.noexc:                                           ; preds = %.noexc.i.i
  store ptr %i.h, ptr %i.b, align 8, !tbaa !82
  %i.i = load i64, ptr %i.a, align 8, !tbaa !93
  store i64 %i.i, ptr %i.c, align 8, !tbaa !81
  br label %._crit_edge.i.i.i

._crit_edge.i.i.i:                                ; preds = %.noexc, %bb.a
  %i.j = phi ptr [ %i.h, %.noexc ], [ %i.c, %bb.a ] ; 2 uses
  switch i64 %i.f, label %bb.c [
    i64 1, label %bb.b
    i64 0, label %bb.f
  ]

bb.b:                                             ; preds = %._crit_edge.i.i.i
  %i.k = load i8, ptr %i.d, align 1, !tbaa !81
  store i8 %i.k, ptr %i.j, align 1, !tbaa !81
  br label %bb.f

bb.c:                                             ; preds = %._crit_edge.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.j, ptr align 1 %i.d, i64 %i.f, i1 false)
  br label %bb.f

bb.d:                                             ; preds = %.noexc.i.i
  %i.l = landingpad { ptr, i32 }
          catch ptr null
  %i.m = extractvalue { ptr, i32 } %i.l, 0
  %i.n = call ptr @__cxa_begin_catch(ptr %i.m) #32 ; 0 uses
  call void @_ZdlPvm(ptr noundef nonnull %1, i64 noundef 72) #33
  invoke void @__cxa_rethrow() #31
          to label %bb.i unwind label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.o = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %bb.g unwind label %bb.h

bb.f:                                             ; preds = %bb.c, %bb.b, %._crit_edge.i.i.i
  %i.p = load i64, ptr %i.a, align 8, !tbaa !93   ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 40
  store i64 %i.p, ptr %i.q, align 8, !tbaa !79
  %i.r = load ptr, ptr %i.b, align 8, !tbaa !82
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 %i.p
  store i8 0, ptr %i.s, align 1, !tbaa !81
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #32
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.u = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !236
  store ptr %i.v, ptr %i.t, align 8, !tbaa !236
  ret void

bb.g:                                             ; preds = %bb.e
  resume { ptr, i32 } %i.o

bb.h:                                             ; preds = %bb.e
  %i.w = landingpad { ptr, i32 }
          catch ptr null
  %i.x = extractvalue { ptr, i32 } %i.w, 0
  call void @__clang_call_terminate(ptr %i.x) #34
  unreachable

bb.i:                                             ; preds = %bb.d
  unreachable
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr writeonly captures(none), ptr readonly captures(none), i64, i1 immarg) #2

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZN11flatbuffers19StringToIntegerImplIlEEbPT_PKcib(ptr noundef %0, ptr noundef %1, i32 noundef %2, i1 noundef zeroext %3) local_unnamed_addr #4 comdat {
bb.a:
  %i.a = alloca ptr, align 8                      ; 5 uses
  %i.b = alloca ptr, align 8                      ; 5 uses
  %i.c = alloca ptr, align 8                      ; 5 uses
  %i.d = icmp slt i32 %2, 1
  br i1 %i.d, label %.preheader, label %bb.q

.preheader:                                       ; preds = %bb.a
  %i.e = load i8, ptr %1, align 1, !tbaa !81      ; 2 uses
  %.not2533 = icmp eq i8 %i.e, 0
  br i1 %.not2533, label %.critedge.thread, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader, %bb.b
  %i.f = phi i8 [ %i.i, %bb.b ], [ %i.e, %.preheader ] ; 2 uses
  %.034 = phi ptr [ %i.h, %bb.b ], [ %1, %.preheader ] ; 2 uses
  %4 = add i8 %i.f, -48
  %i.g = icmp ult i8 %4, 10
  br i1 %i.g, label %.critedge, label %bb.b

bb.b:                                             ; preds = %.lr.ph
  %i.h = getelementptr inbounds nuw i8, ptr %.034, i64 1 ; 2 uses
  %i.i = load i8, ptr %i.h, align 1, !tbaa !81    ; 2 uses
  %.not25 = icmp eq i8 %i.i, 0
  br i1 %.not25, label %.critedge.thread, label %.lr.ph, !llvm.loop !3

.critedge:                                        ; preds = %.lr.ph
  %i.j = icmp eq i8 %i.f, 48
  br i1 %i.j, label %bb.c, label %.critedge.thread

bb.c:                                             ; preds = %.critedge
  %i.k = getelementptr inbounds nuw i8, ptr %.034, i64 1
  %i.l = load i8, ptr %i.k, align 1, !tbaa !81
  %i.m = and i8 %i.l, -33
  %i.n = icmp eq i8 %i.m, 88
  br i1 %i.n, label %bb.d, label %.critedge.thread

bb.d:                                             ; preds = %bb.c
  br i1 %3, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.o = tail call ptr @__errno_location() #35, !inline_history !307
  store i32 0, ptr %i.o, align 4, !tbaa !221
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #32
  store ptr %1, ptr %i.b, align 8, !tbaa !219
  %i.p = load ptr, ptr @_ZN11flatbuffers13ClassicLocale9instance_E, align 8, !tbaa !224
  %i.q = call i64 @__isoc23_strtoll_l(ptr noundef nonnull %1, ptr noundef nonnull %i.b, i32 noundef 16, ptr noundef %i.p) #32
  store i64 %i.q, ptr %0, align 8, !tbaa !93
  %i.r = load ptr, ptr %i.b, align 8, !tbaa !219  ; 2 uses
  %i.s = load i8, ptr %i.r, align 1, !tbaa !81
  %.not.i = icmp ne i8 %i.s, 0
  %i.t = icmp eq ptr %i.r, %1
  %or.cond.i = or i1 %i.t, %.not.i
  br i1 %or.cond.i, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  store i64 0, ptr %0, align 8, !tbaa !93
  br label %_ZN11flatbuffers19StringToIntegerImplIlEEbPT_PKcib.exit

bb.h:                                             ; preds = %bb.f
  br i1 %3, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.u = tail call ptr @__errno_location() #35, !inline_history !307
  %i.v = load i32, ptr %i.u, align 4, !tbaa !221
  %.not24.i = icmp eq i32 %i.v, 0
  br i1 %.not24.i, label %bb.j, label %_ZN11flatbuffers19StringToIntegerImplIlEEbPT_PKcib.exit

bb.j:                                             ; preds = %bb.i, %bb.h
  br label %_ZN11flatbuffers19StringToIntegerImplIlEEbPT_PKcib.exit

_ZN11flatbuffers19StringToIntegerImplIlEEbPT_PKcib.exit: ; preds = %bb.g, %bb.i, %bb.j
  %.1.i = phi i1 [ false, %bb.g ], [ true, %bb.j ], [ false, %bb.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #32
  br label %bb.y

.critedge.thread:                                 ; preds = %bb.b, %.preheader, %bb.c, %.critedge
  br i1 %3, label %bb.k, label %bb.l

bb.k:                                             ; preds = %.critedge.thread
  %i.w = tail call ptr @__errno_location() #35, !inline_history !307
  store i32 0, ptr %i.w, align 4, !tbaa !221
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %.critedge.thread
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #32
  store ptr %1, ptr %i.a, align 8, !tbaa !219
  %i.x = load ptr, ptr @_ZN11flatbuffers13ClassicLocale9instance_E, align 8, !tbaa !224
  %i.y = call i64 @__isoc23_strtoll_l(ptr noundef nonnull %1, ptr noundef nonnull %i.a, i32 noundef 10, ptr noundef %i.x) #32
  store i64 %i.y, ptr %0, align 8, !tbaa !93
  %i.z = load ptr, ptr %i.a, align 8, !tbaa !219  ; 2 uses
  %i.aa = load i8, ptr %i.z, align 1, !tbaa !81
  %.not.i26 = icmp ne i8 %i.aa, 0
  %i.ab = icmp eq ptr %i.z, %1
  %or.cond.i27 = or i1 %i.ab, %.not.i26
  br i1 %or.cond.i27, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  store i64 0, ptr %0, align 8, !tbaa !93
  br label %_ZN11flatbuffers19StringToIntegerImplIlEEbPT_PKcib.exit30

bb.n:                                             ; preds = %bb.l
  br i1 %3, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  %i.ac = tail call ptr @__errno_location() #35, !inline_history !307
  %i.ad = load i32, ptr %i.ac, align 4, !tbaa !221
  %.not24.i29 = icmp eq i32 %i.ad, 0
  br i1 %.not24.i29, label %bb.p, label %_ZN11flatbuffers19StringToIntegerImplIlEEbPT_PKcib.exit30

bb.p:                                             ; preds = %bb.o, %bb.n
  br label %_ZN11flatbuffers19StringToIntegerImplIlEEbPT_PKcib.exit30

_ZN11flatbuffers19StringToIntegerImplIlEEbPT_PKcib.exit30: ; preds = %bb.m, %bb.o, %bb.p
  %.1.i28 = phi i1 [ false, %bb.m ], [ true, %bb.p ], [ false, %bb.o ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #32
  br label %bb.y

bb.q:                                             ; preds = %bb.a
  br i1 %3, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  %i.ae = tail call ptr @__errno_location() #35
  store i32 0, ptr %i.ae, align 4, !tbaa !221
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.q
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #32
  store ptr %1, ptr %i.c, align 8, !tbaa !219
  %i.af = load ptr, ptr @_ZN11flatbuffers13ClassicLocale9instance_E, align 8, !tbaa !224
  %i.ag = call i64 @__isoc23_strtoll_l(ptr noundef %1, ptr noundef nonnull %i.c, i32 noundef %2, ptr noundef %i.af) #32
  store i64 %i.ag, ptr %0, align 8, !tbaa !93
  %i.ah = load ptr, ptr %i.c, align 8, !tbaa !219 ; 2 uses
  %i.ai = load i8, ptr %i.ah, align 1, !tbaa !81
  %.not = icmp ne i8 %i.ai, 0
  %i.aj = icmp eq ptr %i.ah, %1
  %or.cond = or i1 %i.aj, %.not
  br i1 %or.cond, label %bb.t, label %bb.u

bb.t:                                             ; preds = %bb.s
  store i64 0, ptr %0, align 8, !tbaa !93
  br label %bb.x

bb.u:                                             ; preds = %bb.s
  br i1 %3, label %bb.v, label %bb.w

bb.v:                                             ; preds = %bb.u
  %i.ak = tail call ptr @__errno_location() #35
  %i.al = load i32, ptr %i.ak, align 4, !tbaa !221
  %.not24 = icmp eq i32 %i.al, 0
  br i1 %.not24, label %bb.w, label %bb.x

bb.w:                                             ; preds = %bb.v, %bb.u
  br label %bb.x

bb.x:                                             ; preds = %bb.v, %bb.w, %bb.t
  %.1 = phi i1 [ false, %bb.t ], [ true, %bb.w ], [ false, %bb.v ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #32
  br label %bb.y

bb.y:                                             ; preds = %_ZN11flatbuffers19StringToIntegerImplIlEEbPT_PKcib.exit, %_ZN11flatbuffers19StringToIntegerImplIlEEbPT_PKcib.exit30, %bb.x
  %.2 = phi i1 [ %.1, %bb.x ], [ %.1.i, %_ZN11flatbuffers19StringToIntegerImplIlEEbPT_PKcib.exit ], [ %.1.i28, %_ZN11flatbuffers19StringToIntegerImplIlEEbPT_PKcib.exit30 ]
  ret i1 %.2
}

; Function Attrs: nounwind
declare i64 @__isoc23_strtoll_l(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #15

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZNSt8_Rb_treeISt4pairIN11flatbuffers8BaseTypeEPNS1_9StructDefEES5_St9_IdentityIS5_ESt4lessIS5_ESaIS5_EE8_M_eraseEPSt13_Rb_tree_nodeIS5_E(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1) local_unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %.not6 = icmp eq ptr %1, null
  br i1 %.not6, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %.lr.ph
  %.07 = phi ptr [ %i.d, %.lr.ph ], [ %1, %bb.a ] ; 3 uses
  %i.a = getelementptr inbounds nuw i8, ptr %.07, i64 24
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !485
  tail call void @_ZNSt8_Rb_treeISt4pairIN11flatbuffers8BaseTypeEPNS1_9StructDefEES5_St9_IdentityIS5_ESt4lessIS5_ESaIS5_EE8_M_eraseEPSt13_Rb_tree_nodeIS5_E(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %i.b)
  %i.c = getelementptr inbounds nuw i8, ptr %.07, i64 16
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !484  ; 2 uses
  tail call void @_ZdlPvm(ptr noundef nonnull %.07, i64 noundef 48) #33
  %.not = icmp eq ptr %i.d, null
  br i1 %.not, label %._crit_edge, label %.lr.ph, !llvm.loop !2323

._crit_edge:                                      ; preds = %.lr.ph, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN11flatbuffers14EnumValBuilder13ValidateValueEPlb(ptr dead_on_unwind noalias writable sret(%"class.flatbuffers::CheckedError") align 1 %0, ptr noundef nonnull align 8 dereferenceable(25) %1, ptr noundef %2, i1 noundef zeroext %3) local_unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 5 uses
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !445, !nonnull !209, !align !446
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 208
  %i.e = load i32, ptr %i.d, align 8, !tbaa !346
  switch i32 %i.e, label %.noexc.i [
    i32 10, label %bb.k
    i32 1, label %bb.b
    i32 2, label %bb.c
    i32 3, label %bb.d
    i32 4, label %bb.e
    i32 5, label %bb.f
    i32 6, label %bb.g
    i32 7, label %bb.h
    i32 8, label %bb.i
    i32 9, label %bb.j
  ]

bb.b:                                             ; preds = %bb.a
  %i.f = zext i1 %3 to i32
  tail call void @_ZN11flatbuffers14EnumValBuilder12ValidateImplILNS_8BaseTypeE1EhEENS_12CheckedErrorEPli(ptr dead_on_unwind writable sret(%"class.flatbuffers::CheckedError") align 1 %0, ptr noundef nonnull align 8 dereferenceable(25) %1, ptr noundef %2, i32 noundef %i.f)
  br label %bb.n
end_hunk_21
begin_hunk_22_@_ZNSt6vectorISt4pairIN11flatbuffers5ValueEPNS1_8FieldDefEESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_:bb.a
  %i.ah = load i16, ptr %i.ag, align 8, !tbaa !329
  store i16 %i.ah, ptr %i.af, align 8, !tbaa !329
  %i.ai = getelementptr inbounds nuw i8, ptr %i.q, i64 72
  %i.aj = getelementptr inbounds nuw i8, ptr %2, i64 72
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !358
  store ptr %i.ak, ptr %i.ai, align 8, !tbaa !358
  %.not10.i.i.i = icmp eq ptr %i.c, %1
  br i1 %.not10.i.i.i, label %_ZNSt6vectorISt4pairIN11flatbuffers5ValueEPNS1_8FieldDefEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %_ZNSt4pairIN11flatbuffers5ValueEPNS0_8FieldDefEEC2EOS4_.exit, %_ZSt19__relocate_object_aISt4pairIN11flatbuffers5ValueEPNS1_8FieldDefEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i
  %.012.i.i.i = phi ptr [ %i.bg, %_ZSt19__relocate_object_aISt4pairIN11flatbuffers5ValueEPNS1_8FieldDefEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i ], [ %i.p, %_ZNSt4pairIN11flatbuffers5ValueEPNS0_8FieldDefEEC2EOS4_.exit ] ; 7 uses
  %.0911.i.i.i = phi ptr [ %i.bf, %_ZSt19__relocate_object_aISt4pairIN11flatbuffers5ValueEPNS1_8FieldDefEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i ], [ %i.c, %_ZNSt4pairIN11flatbuffers5ValueEPNS0_8FieldDefEEC2EOS4_.exit ] ; 9 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2989)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2990)
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %.012.i.i.i, ptr noundef nonnull align 8 dereferenceable(80) %.0911.i.i.i, i64 32, i1 false), !tbaa.struct !255, !alias.scope !2991
  %i.al = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 32 ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 32 ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 48 ; 3 uses
  store ptr %i.an, ptr %i.al, align 8, !tbaa !80, !alias.scope !2989
  %i.ao = load ptr, ptr %i.am, align 8, !tbaa !82, !alias.scope !2990 ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 48 ; 5 uses
  %i.aq = icmp eq ptr %i.ao, %i.ap
  br i1 %i.aq, label %bb.d, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i

bb.d:                                             ; preds = %.lr.ph.i.i.i
  %i.ar = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 40
  %i.as = load i64, ptr %i.ar, align 8, !tbaa !79, !alias.scope !2990 ; 3 uses
  %i.at = icmp ult i64 %i.as, 16
  tail call void @llvm.assume(i1 %i.at)
  %i.au = add nuw nsw i64 %i.as, 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.an, ptr noundef nonnull align 8 dereferenceable(1) %i.ap, i64 %i.au, i1 false), !alias.scope !2991
  br label %_ZSt19__relocate_object_aISt4pairIN11flatbuffers5ValueEPNS1_8FieldDefEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i
  store ptr %i.ao, ptr %i.al, align 8, !tbaa !82, !alias.scope !2989
  %i.av = load i64, ptr %i.ap, align 8, !tbaa !81, !alias.scope !2990
  store i64 %i.av, ptr %i.an, align 8, !tbaa !81, !alias.scope !2989
  %.phi.trans.insert.i.i.i.i = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 40
  %.pre.i.i.i.i = load i64, ptr %.phi.trans.insert.i.i.i.i, align 8, !tbaa !79, !alias.scope !2990
  br label %_ZSt19__relocate_object_aISt4pairIN11flatbuffers5ValueEPNS1_8FieldDefEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i

_ZSt19__relocate_object_aISt4pairIN11flatbuffers5ValueEPNS1_8FieldDefEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i, %bb.d
  %i.aw = phi i64 [ %i.as, %bb.d ], [ %.pre.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i ]
  %i.ax = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 40
  %i.ay = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 40
  store i64 %i.aw, ptr %i.ay, align 8, !tbaa !79, !alias.scope !2989
  store ptr %i.ap, ptr %i.am, align 8, !tbaa !82, !alias.scope !2990
  store i64 0, ptr %i.ax, align 8, !tbaa !79, !alias.scope !2990
  store i8 0, ptr %i.ap, align 8, !tbaa !81, !alias.scope !2990
  %i.az = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 64
  %i.ba = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 64
  %i.bb = load i16, ptr %i.ba, align 8, !tbaa !329, !alias.scope !2990
  store i16 %i.bb, ptr %i.az, align 8, !tbaa !329, !alias.scope !2989
  %i.bc = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 72
  %i.bd = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 72
  %i.be = load ptr, ptr %i.bd, align 8, !tbaa !358, !alias.scope !2990
  store ptr %i.be, ptr %i.bc, align 8, !tbaa !358, !alias.scope !2989
  %i.bf = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 80 ; 2 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 80 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.bf, %1
  br i1 %.not.i.i.i, label %_ZNSt6vectorISt4pairIN11flatbuffers5ValueEPNS1_8FieldDefEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit, label %.lr.ph.i.i.i, !llvm.loop !2985

_ZNSt6vectorISt4pairIN11flatbuffers5ValueEPNS1_8FieldDefEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit: ; preds = %_ZSt19__relocate_object_aISt4pairIN11flatbuffers5ValueEPNS1_8FieldDefEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i, %_ZNSt4pairIN11flatbuffers5ValueEPNS0_8FieldDefEEC2EOS4_.exit
  %.0.lcssa.i.i.i = phi ptr [ %i.p, %_ZNSt4pairIN11flatbuffers5ValueEPNS0_8FieldDefEEC2EOS4_.exit ], [ %i.bg, %_ZSt19__relocate_object_aISt4pairIN11flatbuffers5ValueEPNS1_8FieldDefEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i ]
  %i.bh = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i, i64 80 ; 2 uses
  %.not10.i.i.i16 = icmp eq ptr %1, %i.b
  br i1 %.not10.i.i.i16, label %_ZNSt6vectorISt4pairIN11flatbuffers5ValueEPNS1_8FieldDefEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit26, label %.lr.ph.i.i.i17

.lr.ph.i.i.i17:                                   ; preds = %_ZNSt6vectorISt4pairIN11flatbuffers5ValueEPNS1_8FieldDefEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit, %_ZSt19__relocate_object_aISt4pairIN11flatbuffers5ValueEPNS1_8FieldDefEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i23
  %.012.i.i.i18 = phi ptr [ %i.cd, %_ZSt19__relocate_object_aISt4pairIN11flatbuffers5ValueEPNS1_8FieldDefEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i23 ], [ %i.bh, %_ZNSt6vectorISt4pairIN11flatbuffers5ValueEPNS1_8FieldDefEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit ] ; 7 uses
  %.0911.i.i.i19 = phi ptr [ %i.cc, %_ZSt19__relocate_object_aISt4pairIN11flatbuffers5ValueEPNS1_8FieldDefEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i23 ], [ %1, %_ZNSt6vectorISt4pairIN11flatbuffers5ValueEPNS1_8FieldDefEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit ] ; 9 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2992)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2993)
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %.012.i.i.i18, ptr noundef nonnull align 8 dereferenceable(80) %.0911.i.i.i19, i64 32, i1 false), !tbaa.struct !255, !alias.scope !2994
  %i.bi = getelementptr inbounds nuw i8, ptr %.012.i.i.i18, i64 32 ; 2 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %.0911.i.i.i19, i64 32 ; 2 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %.012.i.i.i18, i64 48 ; 3 uses
  store ptr %i.bk, ptr %i.bi, align 8, !tbaa !80, !alias.scope !2992
  %i.bl = load ptr, ptr %i.bj, align 8, !tbaa !82, !alias.scope !2993 ; 2 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %.0911.i.i.i19, i64 48 ; 5 uses
  %i.bn = icmp eq ptr %i.bl, %i.bm
  br i1 %i.bn, label %bb.e, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i20

bb.e:                                             ; preds = %.lr.ph.i.i.i17
  %i.bo = getelementptr inbounds nuw i8, ptr %.0911.i.i.i19, i64 40
  %i.bp = load i64, ptr %i.bo, align 8, !tbaa !79, !alias.scope !2993 ; 3 uses
  %i.bq = icmp ult i64 %i.bp, 16
  tail call void @llvm.assume(i1 %i.bq)
  %i.br = add nuw nsw i64 %i.bp, 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.bk, ptr noundef nonnull align 8 dereferenceable(1) %i.bm, i64 %i.br, i1 false), !alias.scope !2994
  br label %_ZSt19__relocate_object_aISt4pairIN11flatbuffers5ValueEPNS1_8FieldDefEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i23

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i20: ; preds = %.lr.ph.i.i.i17
  store ptr %i.bl, ptr %i.bi, align 8, !tbaa !82, !alias.scope !2992
  %i.bs = load i64, ptr %i.bm, align 8, !tbaa !81, !alias.scope !2993
  store i64 %i.bs, ptr %i.bk, align 8, !tbaa !81, !alias.scope !2992
  %.phi.trans.insert.i.i.i.i21 = getelementptr inbounds nuw i8, ptr %.0911.i.i.i19, i64 40
  %.pre.i.i.i.i22 = load i64, ptr %.phi.trans.insert.i.i.i.i21, align 8, !tbaa !79, !alias.scope !2993
  br label %_ZSt19__relocate_object_aISt4pairIN11flatbuffers5ValueEPNS1_8FieldDefEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i23

_ZSt19__relocate_object_aISt4pairIN11flatbuffers5ValueEPNS1_8FieldDefEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i23: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i20, %bb.e
  %i.bt = phi i64 [ %i.bp, %bb.e ], [ %.pre.i.i.i.i22, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i20 ]
  %i.bu = getelementptr inbounds nuw i8, ptr %.0911.i.i.i19, i64 40
  %i.bv = getelementptr inbounds nuw i8, ptr %.012.i.i.i18, i64 40
  store i64 %i.bt, ptr %i.bv, align 8, !tbaa !79, !alias.scope !2992
  store ptr %i.bm, ptr %i.bj, align 8, !tbaa !82, !alias.scope !2993
  store i64 0, ptr %i.bu, align 8, !tbaa !79, !alias.scope !2993
  store i8 0, ptr %i.bm, align 8, !tbaa !81, !alias.scope !2993
  %i.bw = getelementptr inbounds nuw i8, ptr %.012.i.i.i18, i64 64
  %i.bx = getelementptr inbounds nuw i8, ptr %.0911.i.i.i19, i64 64
  %i.by = load i16, ptr %i.bx, align 8, !tbaa !329, !alias.scope !2993
  store i16 %i.by, ptr %i.bw, align 8, !tbaa !329, !alias.scope !2992
  %i.bz = getelementptr inbounds nuw i8, ptr %.012.i.i.i18, i64 72
  %i.ca = getelementptr inbounds nuw i8, ptr %.0911.i.i.i19, i64 72
  %i.cb = load ptr, ptr %i.ca, align 8, !tbaa !358, !alias.scope !2993
  store ptr %i.cb, ptr %i.bz, align 8, !tbaa !358, !alias.scope !2992
  %i.cc = getelementptr inbounds nuw i8, ptr %.0911.i.i.i19, i64 80 ; 2 uses
  %i.cd = getelementptr inbounds nuw i8, ptr %.012.i.i.i18, i64 80 ; 2 uses
  %.not.i.i.i24 = icmp eq ptr %i.cc, %i.b
  br i1 %.not.i.i.i24, label %_ZNSt6vectorISt4pairIN11flatbuffers5ValueEPNS1_8FieldDefEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit26, label %.lr.ph.i.i.i17, !llvm.loop !2985

_ZNSt6vectorISt4pairIN11flatbuffers5ValueEPNS1_8FieldDefEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit26: ; preds = %_ZSt19__relocate_object_aISt4pairIN11flatbuffers5ValueEPNS1_8FieldDefEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i23, %_ZNSt6vectorISt4pairIN11flatbuffers5ValueEPNS1_8FieldDefEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit
  %.0.lcssa.i.i.i25 = phi ptr [ %i.bh, %_ZNSt6vectorISt4pairIN11flatbuffers5ValueEPNS1_8FieldDefEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit ], [ %i.cd, %_ZSt19__relocate_object_aISt4pairIN11flatbuffers5ValueEPNS1_8FieldDefEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i23 ]
  %i.ce = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %.not.i27 = icmp eq ptr %i.c, null
  br i1 %.not.i27, label %_ZNSt12_Vector_baseISt4pairIN11flatbuffers5ValueEPNS1_8FieldDefEESaIS5_EE13_M_deallocateEPS5_m.exit, label %bb.f

bb.f:                                             ; preds = %_ZNSt6vectorISt4pairIN11flatbuffers5ValueEPNS1_8FieldDefEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit26
  %i.cf = load ptr, ptr %i.ce, align 8, !tbaa !379
  %i.cg = ptrtoint ptr %i.cf to i64
  %i.ch = sub i64 %i.cg, %i.e
  tail call void @_ZdlPvm(ptr noundef nonnull %i.c, i64 noundef %i.ch) #33
  br label %_ZNSt12_Vector_baseISt4pairIN11flatbuffers5ValueEPNS1_8FieldDefEESaIS5_EE13_M_deallocateEPS5_m.exit

_ZNSt12_Vector_baseISt4pairIN11flatbuffers5ValueEPNS1_8FieldDefEESaIS5_EE13_M_deallocateEPS5_m.exit: ; preds = %_ZNSt6vectorISt4pairIN11flatbuffers5ValueEPNS1_8FieldDefEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit26, %bb.f
  store ptr %i.p, ptr %0, align 8, !tbaa !417
  store ptr %.0.lcssa.i.i.i25, ptr %i.a, align 8, !tbaa !378
  %i.ci = getelementptr inbounds nuw [80 x i8], ptr %i.p, i64 %i.l
  store ptr %i.ci, ptr %i.ce, align 8, !tbaa !379
  ret void
}

; Function Attrs: nounwind
declare float @strtof_l(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #15

; Function Attrs: mustprogress uwtable
define internal fastcc noundef zeroext i1 @_ZN11flatbuffers12_GLOBAL__N_124CompareSerializedScalarsEPKhS2_RKNS_8FieldDefE(ptr nofree noundef readonly captures(address_is_null) %0, ptr nofree noundef readonly captures(address_is_null) %1, i32 %.200.val, ptr %.232.val) unnamed_addr #1 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 5 uses
  %i.b = alloca ptr, align 8                      ; 5 uses
  %i.c = alloca ptr, align 8                      ; 5 uses
  %i.d = alloca ptr, align 8                      ; 5 uses
  %i.e = alloca ptr, align 8                      ; 5 uses
  %i.f = alloca ptr, align 8                      ; 5 uses
  %i.g = alloca ptr, align 8                      ; 5 uses
  %i.h = alloca ptr, align 8                      ; 5 uses
  %i.i = alloca ptr, align 8                      ; 5 uses
  %i.j = alloca ptr, align 8                      ; 5 uses
  %i.k = alloca ptr, align 8                      ; 5 uses
  %i.l = alloca ptr, align 8                      ; 5 uses
  %i.m = alloca ptr, align 8                      ; 5 uses
  %i.n = alloca ptr, align 8                      ; 5 uses
  %i.o = alloca ptr, align 8                      ; 5 uses
  %i.p = alloca ptr, align 8                      ; 5 uses
  %i.q = alloca ptr, align 8                      ; 5 uses
  %i.r = alloca ptr, align 8                      ; 5 uses
  %i.s = alloca ptr, align 8                      ; 5 uses
  %i.t = alloca ptr, align 8                      ; 5 uses
  %i.u = alloca i64, align 8                      ; 6 uses
  %i.v = alloca i64, align 8                      ; 8 uses
  switch i32 %.200.val, label %bb.cr [
    i32 0, label %bb.b
    i32 1, label %bb.j
    i32 2, label %bb.r
    i32 3, label %bb.z
    i32 4, label %bb.ai
    i32 5, label %bb.aq
    i32 6, label %bb.az
    i32 7, label %bb.bh
    i32 8, label %bb.bq
    i32 9, label %bb.by
    i32 10, label %bb.ca
    i32 11, label %bb.cd
    i32 12, label %bb.ck
  ]

bb.b:                                             ; preds = %bb.a
  %i.w = icmp ne ptr %0, null                     ; 2 uses
  %i.x = icmp ne ptr %1, null                     ; 2 uses
  %or.cond = and i1 %i.w, %i.x
  br i1 %or.cond, label %_ZN11flatbuffers14StringToNumberIhEEbPKcPT_.exit.thread, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.y = load i8, ptr %.232.val, align 1, !tbaa !81 ; 2 uses
  %.not2533.i.i = icmp eq i8 %i.y, 0
  br i1 %.not2533.i.i, label %.critedge.thread.i.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.c, %bb.d
  %i.z = phi i8 [ %i.ac, %bb.d ], [ %i.y, %bb.c ] ; 2 uses
  %.034.i.i = phi ptr [ %i.ab, %bb.d ], [ %.232.val, %bb.c ] ; 2 uses
  %2 = add i8 %i.z, -48
  %i.aa = icmp ult i8 %2, 10
  br i1 %i.aa, label %.critedge.i.i, label %bb.d

bb.d:                                             ; preds = %.lr.ph.i.i
  %i.ab = getelementptr inbounds nuw i8, ptr %.034.i.i, i64 1 ; 2 uses
  %i.ac = load i8, ptr %i.ab, align 1, !tbaa !81  ; 2 uses
  %.not25.i.i = icmp eq i8 %i.ac, 0
  br i1 %.not25.i.i, label %.critedge.thread.i.i, label %.lr.ph.i.i, !llvm.loop !3

.critedge.i.i:                                    ; preds = %.lr.ph.i.i
  %i.ad = icmp eq i8 %i.z, 48
  br i1 %i.ad, label %bb.e, label %.critedge.thread.i.i

bb.e:                                             ; preds = %.critedge.i.i
  %i.ae = getelementptr inbounds nuw i8, ptr %.034.i.i, i64 1
  %i.af = load i8, ptr %i.ae, align 1, !tbaa !81
  %i.ag = and i8 %i.af, -33
  %i.ah = icmp eq i8 %i.ag, 88
  br i1 %i.ah, label %bb.f, label %.critedge.thread.i.i

bb.f:                                             ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %i.t) #32
  store ptr %.232.val, ptr %i.t, align 8, !tbaa !219
  %i.ai = load ptr, ptr @_ZN11flatbuffers13ClassicLocale9instance_E, align 8, !tbaa !224
  %i.aj = call i64 @__isoc23_strtoll_l(ptr noundef nonnull %.232.val, ptr noundef nonnull %i.t, i32 noundef 16, ptr noundef %i.ai) #32, !inline_history !307
  %i.ak = load ptr, ptr %i.t, align 8, !tbaa !219 ; 2 uses
  %i.al = load i8, ptr %i.ak, align 1, !tbaa !81
  %.not.i.i.i = icmp ne i8 %i.al, 0
  %i.am = icmp eq ptr %i.ak, %.232.val
  %or.cond.i.i.i = or i1 %i.am, %.not.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t) #32
  br i1 %or.cond.i.i.i, label %_ZN11flatbuffers14StringToNumberIhEEbPKcPT_.exit, label %_ZN11flatbuffers19StringToIntegerImplIlEEbPT_PKcib.exit.thread.i

.critedge.thread.i.i:                             ; preds = %bb.d, %bb.e, %.critedge.i.i, %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.s) #32
  store ptr %.232.val, ptr %i.s, align 8, !tbaa !219
  %i.an = load ptr, ptr @_ZN11flatbuffers13ClassicLocale9instance_E, align 8, !tbaa !224
  %i.ao = call i64 @__isoc23_strtoll_l(ptr noundef nonnull %.232.val, ptr noundef nonnull %i.s, i32 noundef 10, ptr noundef %i.an) #32, !inline_history !307
  %i.ap = load ptr, ptr %i.s, align 8, !tbaa !219 ; 2 uses
  %i.aq = load i8, ptr %i.ap, align 1, !tbaa !81
  %.not.i26.i.i = icmp ne i8 %i.aq, 0
  %i.ar = icmp eq ptr %i.ap, %.232.val
  %or.cond.i27.i.i = or i1 %i.ar, %.not.i26.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s) #32
  br i1 %or.cond.i27.i.i, label %_ZN11flatbuffers14StringToNumberIhEEbPKcPT_.exit, label %_ZN11flatbuffers19StringToIntegerImplIlEEbPT_PKcib.exit.thread.i

_ZN11flatbuffers19StringToIntegerImplIlEEbPT_PKcib.exit.thread.i: ; preds = %.critedge.thread.i.i, %bb.f
  %.28.i = phi i64 [ %i.aj, %bb.f ], [ %i.ao, %.critedge.thread.i.i ]
  %spec.select21.i = call i64 @llvm.umin.i64(i64 %.28.i, i64 255)
  %spec.select.i = trunc nuw i64 %spec.select21.i to i8
  br label %_ZN11flatbuffers14StringToNumberIhEEbPKcPT_.exit

_ZN11flatbuffers14StringToNumberIhEEbPKcPT_.exit: ; preds = %_ZN11flatbuffers19StringToIntegerImplIlEEbPT_PKcib.exit.thread.i, %.critedge.thread.i.i, %bb.f
  %.032 = phi i8 [ 0, %bb.f ], [ 0, %.critedge.thread.i.i ], [ %spec.select.i, %_ZN11flatbuffers19StringToIntegerImplIlEEbPT_PKcib.exit.thread.i ] ; 3 uses
  br i1 %i.w, label %_ZN11flatbuffers14StringToNumberIhEEbPKcPT_.exit.thread, label %bb.g

_ZN11flatbuffers14StringToNumberIhEEbPKcPT_.exit.thread: ; preds = %bb.b, %_ZN11flatbuffers14StringToNumberIhEEbPKcPT_.exit
  %.03235 = phi i8 [ %.032, %_ZN11flatbuffers14StringToNumberIhEEbPKcPT_.exit ], [ 0, %bb.b ]
  %i.as = load i8, ptr %0, align 1, !tbaa !81
  br label %bb.g

bb.g:                                             ; preds = %_ZN11flatbuffers14StringToNumberIhEEbPKcPT_.exit, %_ZN11flatbuffers14StringToNumberIhEEbPKcPT_.exit.thread
  %.03234 = phi i8 [ %.03235, %_ZN11flatbuffers14StringToNumberIhEEbPKcPT_.exit.thread ], [ %.032, %_ZN11flatbuffers14StringToNumberIhEEbPKcPT_.exit ]
  %i.at = phi i8 [ %i.as, %_ZN11flatbuffers14StringToNumberIhEEbPKcPT_.exit.thread ], [ %.032, %_ZN11flatbuffers14StringToNumberIhEEbPKcPT_.exit ]
  br i1 %i.x, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.au = load i8, ptr %1, align 1, !tbaa !81
  br label %bb.i

bb.i:                                             ; preds = %bb.g, %bb.h
  %i.av = phi i8 [ %i.au, %bb.h ], [ %.03234, %bb.g ]
  %i.aw = icmp ult i8 %i.at, %i.av
  br label %bb.cr

bb.j:                                             ; preds = %bb.a
  %i.ax = icmp ne ptr %0, null                    ; 2 uses
  %i.ay = icmp ne ptr %1, null                    ; 2 uses
  %or.cond3 = and i1 %i.ax, %i.ay
  br i1 %or.cond3, label %_ZN11flatbuffers14StringToNumberIhEEbPKcPT_.exit174.thread, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.az = load i8, ptr %.232.val, align 1, !tbaa !81 ; 2 uses
  %.not2533.i.i157 = icmp eq i8 %i.az, 0
  br i1 %.not2533.i.i157, label %.critedge.thread.i.i161, label %.lr.ph.i.i158

.lr.ph.i.i158:                                    ; preds = %bb.k, %bb.l
  %i.ba = phi i8 [ %i.bd, %bb.l ], [ %i.az, %bb.k ] ; 2 uses
  %.034.i.i159 = phi ptr [ %i.bc, %bb.l ], [ %.232.val, %bb.k ] ; 2 uses
  %3 = add i8 %i.ba, -48
  %i.bb = icmp ult i8 %3, 10
  br i1 %i.bb, label %.critedge.i.i171, label %bb.l

bb.l:                                             ; preds = %.lr.ph.i.i158
  %i.bc = getelementptr inbounds nuw i8, ptr %.034.i.i159, i64 1 ; 2 uses
  %i.bd = load i8, ptr %i.bc, align 1, !tbaa !81  ; 2 uses
  %.not25.i.i160 = icmp eq i8 %i.bd, 0
  br i1 %.not25.i.i160, label %.critedge.thread.i.i161, label %.lr.ph.i.i158, !llvm.loop !3

.critedge.i.i171:                                 ; preds = %.lr.ph.i.i158
  %i.be = icmp eq i8 %i.ba, 48
  br i1 %i.be, label %bb.m, label %.critedge.thread.i.i161

bb.m:                                             ; preds = %.critedge.i.i171
  %i.bf = getelementptr inbounds nuw i8, ptr %.034.i.i159, i64 1
  %i.bg = load i8, ptr %i.bf, align 1, !tbaa !81
  %i.bh = and i8 %i.bg, -33
  %i.bi = icmp eq i8 %i.bh, 88
  br i1 %i.bi, label %bb.n, label %.critedge.thread.i.i161

bb.n:                                             ; preds = %bb.m
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r) #32
  store ptr %.232.val, ptr %i.r, align 8, !tbaa !219
  %i.bj = load ptr, ptr @_ZN11flatbuffers13ClassicLocale9instance_E, align 8, !tbaa !224
  %i.bk = call i64 @__isoc23_strtoll_l(ptr noundef nonnull %.232.val, ptr noundef nonnull %i.r, i32 noundef 16, ptr noundef %i.bj) #32, !inline_history !307
  %i.bl = load ptr, ptr %i.r, align 8, !tbaa !219 ; 2 uses
  %i.bm = load i8, ptr %i.bl, align 1, !tbaa !81
  %.not.i.i.i172 = icmp ne i8 %i.bm, 0
  %i.bn = icmp eq ptr %i.bl, %.232.val
  %or.cond.i.i.i173 = or i1 %i.bn, %.not.i.i.i172
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r) #32
  br i1 %or.cond.i.i.i173, label %_ZN11flatbuffers14StringToNumberIhEEbPKcPT_.exit174, label %_ZN11flatbuffers19StringToIntegerImplIlEEbPT_PKcib.exit.thread.i164

.critedge.thread.i.i161:                          ; preds = %bb.l, %bb.m, %.critedge.i.i171, %bb.k
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q) #32
  store ptr %.232.val, ptr %i.q, align 8, !tbaa !219
  %i.bo = load ptr, ptr @_ZN11flatbuffers13ClassicLocale9instance_E, align 8, !tbaa !224
  %i.bp = call i64 @__isoc23_strtoll_l(ptr noundef nonnull %.232.val, ptr noundef nonnull %i.q, i32 noundef 10, ptr noundef %i.bo) #32, !inline_history !307
  %i.bq = load ptr, ptr %i.q, align 8, !tbaa !219 ; 2 uses
  %i.br = load i8, ptr %i.bq, align 1, !tbaa !81
  %.not.i26.i.i162 = icmp ne i8 %i.br, 0
  %i.bs = icmp eq ptr %i.bq, %.232.val
  %or.cond.i27.i.i163 = or i1 %i.bs, %.not.i26.i.i162
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q) #32
  br i1 %or.cond.i27.i.i163, label %_ZN11flatbuffers14StringToNumberIhEEbPKcPT_.exit174, label %_ZN11flatbuffers19StringToIntegerImplIlEEbPT_PKcib.exit.thread.i164

_ZN11flatbuffers19StringToIntegerImplIlEEbPT_PKcib.exit.thread.i164: ; preds = %.critedge.thread.i.i161, %bb.n
  %.28.i165 = phi i64 [ %i.bk, %bb.n ], [ %i.bp, %.critedge.thread.i.i161 ]
  %spec.select21.i167 = call i64 @llvm.umin.i64(i64 %.28.i165, i64 255)
  %spec.select.i168 = trunc nuw i64 %spec.select21.i167 to i8
  br label %_ZN11flatbuffers14StringToNumberIhEEbPKcPT_.exit174

_ZN11flatbuffers14StringToNumberIhEEbPKcPT_.exit174: ; preds = %_ZN11flatbuffers19StringToIntegerImplIlEEbPT_PKcib.exit.thread.i164, %.critedge.thread.i.i161, %bb.n
  %.031 = phi i8 [ 0, %bb.n ], [ 0, %.critedge.thread.i.i161 ], [ %spec.select.i168, %_ZN11flatbuffers19StringToIntegerImplIlEEbPT_PKcib.exit.thread.i164 ] ; 3 uses
  br i1 %i.ax, label %_ZN11flatbuffers14StringToNumberIhEEbPKcPT_.exit174.thread, label %bb.o

_ZN11flatbuffers14StringToNumberIhEEbPKcPT_.exit174.thread: ; preds = %bb.j, %_ZN11flatbuffers14StringToNumberIhEEbPKcPT_.exit174
  %.03138 = phi i8 [ %.031, %_ZN11flatbuffers14StringToNumberIhEEbPKcPT_.exit174 ], [ 0, %bb.j ]
  %i.bt = load i8, ptr %0, align 1, !tbaa !81
  br label %bb.o

bb.o:                                             ; preds = %_ZN11flatbuffers14StringToNumberIhEEbPKcPT_.exit174, %_ZN11flatbuffers14StringToNumberIhEEbPKcPT_.exit174.thread
  %.03137 = phi i8 [ %.03138, %_ZN11flatbuffers14StringToNumberIhEEbPKcPT_.exit174.thread ], [ %.031, %_ZN11flatbuffers14StringToNumberIhEEbPKcPT_.exit174 ]
  %i.bu = phi i8 [ %i.bt, %_ZN11flatbuffers14StringToNumberIhEEbPKcPT_.exit174.thread ], [ %.031, %_ZN11flatbuffers14StringToNumberIhEEbPKcPT_.exit174 ]
  br i1 %i.ay, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  %i.bv = load i8, ptr %1, align 1, !tbaa !81
  br label %bb.q

bb.q:                                             ; preds = %bb.o, %bb.p
  %i.bw = phi i8 [ %i.bv, %bb.p ], [ %.03137, %bb.o ]
  %i.bx = icmp ult i8 %i.bu, %i.bw
  br label %bb.cr

bb.r:                                             ; preds = %bb.a
  %i.by = icmp ne ptr %0, null                    ; 2 uses
  %i.bz = icmp ne ptr %1, null                    ; 2 uses
  %or.cond5 = and i1 %i.by, %i.bz
  br i1 %or.cond5, label %_ZN11flatbuffers14StringToNumberIhEEbPKcPT_.exit192.thread, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.ca = load i8, ptr %.232.val, align 1, !tbaa !81 ; 2 uses
  %.not2533.i.i175 = icmp eq i8 %i.ca, 0
  br i1 %.not2533.i.i175, label %.critedge.thread.i.i179, label %.lr.ph.i.i176

.lr.ph.i.i176:                                    ; preds = %bb.s, %bb.t
  %i.cb = phi i8 [ %i.ce, %bb.t ], [ %i.ca, %bb.s ] ; 2 uses
  %.034.i.i177 = phi ptr [ %i.cd, %bb.t ], [ %.232.val, %bb.s ] ; 2 uses
  %4 = add i8 %i.cb, -48
  %i.cc = icmp ult i8 %4, 10
  br i1 %i.cc, label %.critedge.i.i189, label %bb.t

bb.t:                                             ; preds = %.lr.ph.i.i176
  %i.cd = getelementptr inbounds nuw i8, ptr %.034.i.i177, i64 1 ; 2 uses
  %i.ce = load i8, ptr %i.cd, align 1, !tbaa !81  ; 2 uses
  %.not25.i.i178 = icmp eq i8 %i.ce, 0
  br i1 %.not25.i.i178, label %.critedge.thread.i.i179, label %.lr.ph.i.i176, !llvm.loop !3

.critedge.i.i189:                                 ; preds = %.lr.ph.i.i176
  %i.cf = icmp eq i8 %i.cb, 48
  br i1 %i.cf, label %bb.u, label %.critedge.thread.i.i179

bb.u:                                             ; preds = %.critedge.i.i189
  %i.cg = getelementptr inbounds nuw i8, ptr %.034.i.i177, i64 1
  %i.ch = load i8, ptr %i.cg, align 1, !tbaa !81
  %i.ci = and i8 %i.ch, -33
  %i.cj = icmp eq i8 %i.ci, 88
  br i1 %i.cj, label %bb.v, label %.critedge.thread.i.i179

bb.v:                                             ; preds = %bb.u
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p) #32
  store ptr %.232.val, ptr %i.p, align 8, !tbaa !219
  %i.ck = load ptr, ptr @_ZN11flatbuffers13ClassicLocale9instance_E, align 8, !tbaa !224
  %i.cl = call i64 @__isoc23_strtoll_l(ptr noundef nonnull %.232.val, ptr noundef nonnull %i.p, i32 noundef 16, ptr noundef %i.ck) #32, !inline_history !307
  %i.cm = load ptr, ptr %i.p, align 8, !tbaa !219 ; 2 uses
  %i.cn = load i8, ptr %i.cm, align 1, !tbaa !81
  %.not.i.i.i190 = icmp ne i8 %i.cn, 0
  %i.co = icmp eq ptr %i.cm, %.232.val
  %or.cond.i.i.i191 = or i1 %i.co, %.not.i.i.i190
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p) #32
  br i1 %or.cond.i.i.i191, label %_ZN11flatbuffers14StringToNumberIhEEbPKcPT_.exit192, label %_ZN11flatbuffers19StringToIntegerImplIlEEbPT_PKcib.exit.thread.i182

.critedge.thread.i.i179:                          ; preds = %bb.t, %bb.u, %.critedge.i.i189, %bb.s
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o) #32
  store ptr %.232.val, ptr %i.o, align 8, !tbaa !219
  %i.cp = load ptr, ptr @_ZN11flatbuffers13ClassicLocale9instance_E, align 8, !tbaa !224
  %i.cq = call i64 @__isoc23_strtoll_l(ptr noundef nonnull %.232.val, ptr noundef nonnull %i.o, i32 noundef 10, ptr noundef %i.cp) #32, !inline_history !307
  %i.cr = load ptr, ptr %i.o, align 8, !tbaa !219 ; 2 uses
  %i.cs = load i8, ptr %i.cr, align 1, !tbaa !81
  %.not.i26.i.i180 = icmp ne i8 %i.cs, 0
  %i.ct = icmp eq ptr %i.cr, %.232.val
  %or.cond.i27.i.i181 = or i1 %i.ct, %.not.i26.i.i180
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o) #32
  br i1 %or.cond.i27.i.i181, label %_ZN11flatbuffers14StringToNumberIhEEbPKcPT_.exit192, label %_ZN11flatbuffers19StringToIntegerImplIlEEbPT_PKcib.exit.thread.i182

_ZN11flatbuffers19StringToIntegerImplIlEEbPT_PKcib.exit.thread.i182: ; preds = %.critedge.thread.i.i179, %bb.v
  %.28.i183 = phi i64 [ %i.cl, %bb.v ], [ %i.cq, %.critedge.thread.i.i179 ]
  %spec.select21.i185 = call i64 @llvm.umin.i64(i64 %.28.i183, i64 255)
  %spec.select.i186 = trunc nuw i64 %spec.select21.i185 to i8
  br label %_ZN11flatbuffers14StringToNumberIhEEbPKcPT_.exit192

_ZN11flatbuffers14StringToNumberIhEEbPKcPT_.exit192: ; preds = %_ZN11flatbuffers19StringToIntegerImplIlEEbPT_PKcib.exit.thread.i182, %.critedge.thread.i.i179, %bb.v
  %.030 = phi i8 [ 0, %bb.v ], [ 0, %.critedge.thread.i.i179 ], [ %spec.select.i186, %_ZN11flatbuffers19StringToIntegerImplIlEEbPT_PKcib.exit.thread.i182 ] ; 3 uses
  br i1 %i.by, label %_ZN11flatbuffers14StringToNumberIhEEbPKcPT_.exit192.thread, label %bb.w

_ZN11flatbuffers14StringToNumberIhEEbPKcPT_.exit192.thread: ; preds = %bb.r, %_ZN11flatbuffers14StringToNumberIhEEbPKcPT_.exit192
  %.03041 = phi i8 [ %.030, %_ZN11flatbuffers14StringToNumberIhEEbPKcPT_.exit192 ], [ 0, %bb.r ]
  %i.cu = load i8, ptr %0, align 1, !tbaa !81
  br label %bb.w

bb.w:                                             ; preds = %_ZN11flatbuffers14StringToNumberIhEEbPKcPT_.exit192, %_ZN11flatbuffers14StringToNumberIhEEbPKcPT_.exit192.thread
  %.03040 = phi i8 [ %.03041, %_ZN11flatbuffers14StringToNumberIhEEbPKcPT_.exit192.thread ], [ %.030, %_ZN11flatbuffers14StringToNumberIhEEbPKcPT_.exit192 ]
  %i.cv = phi i8 [ %i.cu, %_ZN11flatbuffers14StringToNumberIhEEbPKcPT_.exit192.thread ], [ %.030, %_ZN11flatbuffers14StringToNumberIhEEbPKcPT_.exit192 ]
  br i1 %i.bz, label %bb.x, label %bb.y

bb.x:                                             ; preds = %bb.w
  %i.cw = load i8, ptr %1, align 1, !tbaa !81
  br label %bb.y

bb.y:                                             ; preds = %bb.w, %bb.x
  %i.cx = phi i8 [ %i.cw, %bb.x ], [ %.03040, %bb.w ]
  %i.cy = icmp ult i8 %i.cv, %i.cx
  br label %bb.cr

bb.z:                                             ; preds = %bb.a
  %i.cz = icmp ne ptr %0, null                    ; 2 uses
  %i.da = icmp ne ptr %1, null                    ; 2 uses
  %or.cond7 = and i1 %i.cz, %i.da
  br i1 %or.cond7, label %_ZN11flatbuffers14StringToNumberIaEEbPKcPT_.exit.thread, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.db = load i8, ptr %.232.val, align 1, !tbaa !81 ; 2 uses
  %.not2533.i.i193 = icmp eq i8 %i.db, 0
  br i1 %.not2533.i.i193, label %.critedge.thread.i.i197, label %.lr.ph.i.i194

.lr.ph.i.i194:                                    ; preds = %bb.aa, %bb.ab
  %i.dc = phi i8 [ %i.df, %bb.ab ], [ %i.db, %bb.aa ] ; 2 uses
  %.034.i.i195 = phi ptr [ %i.de, %bb.ab ], [ %.232.val, %bb.aa ] ; 2 uses
  %5 = add i8 %i.dc, -48
  %i.dd = icmp ult i8 %5, 10
  br i1 %i.dd, label %.critedge.i.i206, label %bb.ab

bb.ab:                                            ; preds = %.lr.ph.i.i194
  %i.de = getelementptr inbounds nuw i8, ptr %.034.i.i195, i64 1 ; 2 uses
  %i.df = load i8, ptr %i.de, align 1, !tbaa !81  ; 2 uses
  %.not25.i.i196 = icmp eq i8 %i.df, 0
  br i1 %.not25.i.i196, label %.critedge.thread.i.i197, label %.lr.ph.i.i194, !llvm.loop !3

.critedge.i.i206:                                 ; preds = %.lr.ph.i.i194
  %i.dg = icmp eq i8 %i.dc, 48
  br i1 %i.dg, label %bb.ac, label %.critedge.thread.i.i197

bb.ac:                                            ; preds = %.critedge.i.i206
  %i.dh = getelementptr inbounds nuw i8, ptr %.034.i.i195, i64 1
  %i.di = load i8, ptr %i.dh, align 1, !tbaa !81
  %i.dj = and i8 %i.di, -33
  %i.dk = icmp eq i8 %i.dj, 88
  br i1 %i.dk, label %bb.ad, label %.critedge.thread.i.i197

bb.ad:                                            ; preds = %bb.ac
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n) #32
  store ptr %.232.val, ptr %i.n, align 8, !tbaa !219
  %i.dl = load ptr, ptr @_ZN11flatbuffers13ClassicLocale9instance_E, align 8, !tbaa !224
  %i.dm = call i64 @__isoc23_strtoll_l(ptr noundef nonnull %.232.val, ptr noundef nonnull %i.n, i32 noundef 16, ptr noundef %i.dl) #32, !inline_history !307
  %i.dn = load ptr, ptr %i.n, align 8, !tbaa !219 ; 2 uses
  %i.do = load i8, ptr %i.dn, align 1, !tbaa !81
  %.not.i.i.i207 = icmp ne i8 %i.do, 0
  %i.dp = icmp eq ptr %i.dn, %.232.val
  %or.cond.i.i.i208 = or i1 %i.dp, %.not.i.i.i207
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n) #32
  br i1 %or.cond.i.i.i208, label %_ZN11flatbuffers14StringToNumberIaEEbPKcPT_.exit, label %_ZN11flatbuffers19StringToIntegerImplIlEEbPT_PKcib.exit.thread.i200

.critedge.thread.i.i197:                          ; preds = %bb.ab, %bb.ac, %.critedge.i.i206, %bb.aa
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m) #32
  store ptr %.232.val, ptr %i.m, align 8, !tbaa !219
  %i.dq = load ptr, ptr @_ZN11flatbuffers13ClassicLocale9instance_E, align 8, !tbaa !224
  %i.dr = call i64 @__isoc23_strtoll_l(ptr noundef nonnull %.232.val, ptr noundef nonnull %i.m, i32 noundef 10, ptr noundef %i.dq) #32, !inline_history !307
  %i.ds = load ptr, ptr %i.m, align 8, !tbaa !219 ; 2 uses
  %i.dt = load i8, ptr %i.ds, align 1, !tbaa !81
  %.not.i26.i.i198 = icmp ne i8 %i.dt, 0
  %i.du = icmp eq ptr %i.ds, %.232.val
  %or.cond.i27.i.i199 = or i1 %i.du, %.not.i26.i.i198
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m) #32
  br i1 %or.cond.i27.i.i199, label %_ZN11flatbuffers14StringToNumberIaEEbPKcPT_.exit, label %_ZN11flatbuffers19StringToIntegerImplIlEEbPT_PKcib.exit.thread.i200

_ZN11flatbuffers19StringToIntegerImplIlEEbPT_PKcib.exit.thread.i200: ; preds = %.critedge.thread.i.i197, %bb.ad
  %.28.i201 = phi i64 [ %i.dm, %bb.ad ], [ %i.dr, %.critedge.thread.i.i197 ] ; 2 uses
  %i.dv = icmp sgt i64 %.28.i201, 127
  br i1 %i.dv, label %_ZN11flatbuffers14StringToNumberIaEEbPKcPT_.exit, label %bb.ae

bb.ae:                                            ; preds = %_ZN11flatbuffers19StringToIntegerImplIlEEbPT_PKcib.exit.thread.i200
  %spec.select21.i202 = call i64 @llvm.smax.i64(i64 %.28.i201, i64 -128)
  %spec.select.i203 = trunc nsw i64 %spec.select21.i202 to i8
  br label %_ZN11flatbuffers14StringToNumberIaEEbPKcPT_.exit

_ZN11flatbuffers14StringToNumberIaEEbPKcPT_.exit: ; preds = %bb.ae, %_ZN11flatbuffers19StringToIntegerImplIlEEbPT_PKcib.exit.thread.i200, %.critedge.thread.i.i197, %bb.ad
  %.029 = phi i8 [ 0, %bb.ad ], [ %spec.select.i203, %bb.ae ], [ 127, %_ZN11flatbuffers19StringToIntegerImplIlEEbPT_PKcib.exit.thread.i200 ], [ 0, %.critedge.thread.i.i197 ] ; 3 uses
  br i1 %i.cz, label %_ZN11flatbuffers14StringToNumberIaEEbPKcPT_.exit.thread, label %bb.af

_ZN11flatbuffers14StringToNumberIaEEbPKcPT_.exit.thread: ; preds = %bb.z, %_ZN11flatbuffers14StringToNumberIaEEbPKcPT_.exit
  %.02944 = phi i8 [ %.029, %_ZN11flatbuffers14StringToNumberIaEEbPKcPT_.exit ], [ 0, %bb.z ]
  %i.dw = load i8, ptr %0, align 1, !tbaa !81
  br label %bb.af

bb.af:                                            ; preds = %_ZN11flatbuffers14StringToNumberIaEEbPKcPT_.exit, %_ZN11flatbuffers14StringToNumberIaEEbPKcPT_.exit.thread
  %.02943 = phi i8 [ %.02944, %_ZN11flatbuffers14StringToNumberIaEEbPKcPT_.exit.thread ], [ %.029, %_ZN11flatbuffers14StringToNumberIaEEbPKcPT_.exit ]
  %i.dx = phi i8 [ %i.dw, %_ZN11flatbuffers14StringToNumberIaEEbPKcPT_.exit.thread ], [ %.029, %_ZN11flatbuffers14StringToNumberIaEEbPKcPT_.exit ]
  br i1 %i.da, label %bb.ag, label %bb.ah

bb.ag:                                            ; preds = %bb.af
  %i.dy = load i8, ptr %1, align 1, !tbaa !81
  br label %bb.ah

bb.ah:                                            ; preds = %bb.af, %bb.ag
  %i.dz = phi i8 [ %i.dy, %bb.ag ], [ %.02943, %bb.af ]
  %i.ea = icmp slt i8 %i.dx, %i.dz
  br label %bb.cr

bb.ai:                                            ; preds = %bb.a
  %i.eb = icmp ne ptr %0, null                    ; 2 uses
  %i.ec = icmp ne ptr %1, null                    ; 2 uses
  %or.cond9 = and i1 %i.eb, %i.ec
  br i1 %or.cond9, label %_ZN11flatbuffers14StringToNumberIhEEbPKcPT_.exit226.thread, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  %i.ed = load i8, ptr %.232.val, align 1, !tbaa !81 ; 2 uses
  %.not2533.i.i209 = icmp eq i8 %i.ed, 0
  br i1 %.not2533.i.i209, label %.critedge.thread.i.i213, label %.lr.ph.i.i210

.lr.ph.i.i210:                                    ; preds = %bb.aj, %bb.ak
  %i.ee = phi i8 [ %i.eh, %bb.ak ], [ %i.ed, %bb.aj ] ; 2 uses
  %.034.i.i211 = phi ptr [ %i.eg, %bb.ak ], [ %.232.val, %bb.aj ] ; 2 uses
  %6 = add i8 %i.ee, -48
  %i.ef = icmp ult i8 %6, 10
  br i1 %i.ef, label %.critedge.i.i223, label %bb.ak

bb.ak:                                            ; preds = %.lr.ph.i.i210
  %i.eg = getelementptr inbounds nuw i8, ptr %.034.i.i211, i64 1 ; 2 uses
  %i.eh = load i8, ptr %i.eg, align 1, !tbaa !81  ; 2 uses
  %.not25.i.i212 = icmp eq i8 %i.eh, 0
  br i1 %.not25.i.i212, label %.critedge.thread.i.i213, label %.lr.ph.i.i210, !llvm.loop !3

.critedge.i.i223:                                 ; preds = %.lr.ph.i.i210
  %i.ei = icmp eq i8 %i.ee, 48
  br i1 %i.ei, label %bb.al, label %.critedge.thread.i.i213

bb.al:                                            ; preds = %.critedge.i.i223
  %i.ej = getelementptr inbounds nuw i8, ptr %.034.i.i211, i64 1
  %i.ek = load i8, ptr %i.ej, align 1, !tbaa !81
  %i.el = and i8 %i.ek, -33
  %i.em = icmp eq i8 %i.el, 88
  br i1 %i.em, label %bb.am, label %.critedge.thread.i.i213

bb.am:                                            ; preds = %bb.al
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l) #32
  store ptr %.232.val, ptr %i.l, align 8, !tbaa !219
  %i.en = load ptr, ptr @_ZN11flatbuffers13ClassicLocale9instance_E, align 8, !tbaa !224
  %i.eo = call i64 @__isoc23_strtoll_l(ptr noundef nonnull %.232.val, ptr noundef nonnull %i.l, i32 noundef 16, ptr noundef %i.en) #32, !inline_history !307
  %i.ep = load ptr, ptr %i.l, align 8, !tbaa !219 ; 2 uses
  %i.eq = load i8, ptr %i.ep, align 1, !tbaa !81
  %.not.i.i.i224 = icmp ne i8 %i.eq, 0
  %i.er = icmp eq ptr %i.ep, %.232.val
  %or.cond.i.i.i225 = or i1 %i.er, %.not.i.i.i224
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l) #32
  br i1 %or.cond.i.i.i225, label %_ZN11flatbuffers14StringToNumberIhEEbPKcPT_.exit226, label %_ZN11flatbuffers19StringToIntegerImplIlEEbPT_PKcib.exit.thread.i216

.critedge.thread.i.i213:                          ; preds = %bb.ak, %bb.al, %.critedge.i.i223, %bb.aj
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k) #32
  store ptr %.232.val, ptr %i.k, align 8, !tbaa !219
  %i.es = load ptr, ptr @_ZN11flatbuffers13ClassicLocale9instance_E, align 8, !tbaa !224
  %i.et = call i64 @__isoc23_strtoll_l(ptr noundef nonnull %.232.val, ptr noundef nonnull %i.k, i32 noundef 10, ptr noundef %i.es) #32, !inline_history !307
  %i.eu = load ptr, ptr %i.k, align 8, !tbaa !219 ; 2 uses
  %i.ev = load i8, ptr %i.eu, align 1, !tbaa !81
  %.not.i26.i.i214 = icmp ne i8 %i.ev, 0
  %i.ew = icmp eq ptr %i.eu, %.232.val
  %or.cond.i27.i.i215 = or i1 %i.ew, %.not.i26.i.i214
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k) #32
  br i1 %or.cond.i27.i.i215, label %_ZN11flatbuffers14StringToNumberIhEEbPKcPT_.exit226, label %_ZN11flatbuffers19StringToIntegerImplIlEEbPT_PKcib.exit.thread.i216

_ZN11flatbuffers19StringToIntegerImplIlEEbPT_PKcib.exit.thread.i216: ; preds = %.critedge.thread.i.i213, %bb.am
  %.28.i217 = phi i64 [ %i.eo, %bb.am ], [ %i.et, %.critedge.thread.i.i213 ]
  %spec.select21.i219 = call i64 @llvm.umin.i64(i64 %.28.i217, i64 255)
  %spec.select.i220 = trunc nuw i64 %spec.select21.i219 to i8
  br label %_ZN11flatbuffers14StringToNumberIhEEbPKcPT_.exit226

_ZN11flatbuffers14StringToNumberIhEEbPKcPT_.exit226: ; preds = %_ZN11flatbuffers19StringToIntegerImplIlEEbPT_PKcib.exit.thread.i216, %.critedge.thread.i.i213, %bb.am
  %.028 = phi i8 [ 0, %bb.am ], [ 0, %.critedge.thread.i.i213 ], [ %spec.select.i220, %_ZN11flatbuffers19StringToIntegerImplIlEEbPT_PKcib.exit.thread.i216 ] ; 3 uses
  br i1 %i.eb, label %_ZN11flatbuffers14StringToNumberIhEEbPKcPT_.exit226.thread, label %bb.an

_ZN11flatbuffers14StringToNumberIhEEbPKcPT_.exit226.thread: ; preds = %bb.ai, %_ZN11flatbuffers14StringToNumberIhEEbPKcPT_.exit226
  %.02847 = phi i8 [ %.028, %_ZN11flatbuffers14StringToNumberIhEEbPKcPT_.exit226 ], [ 0, %bb.ai ]
  %i.ex = load i8, ptr %0, align 1, !tbaa !81
  br label %bb.an

bb.an:                                            ; preds = %_ZN11flatbuffers14StringToNumberIhEEbPKcPT_.exit226, %_ZN11flatbuffers14StringToNumberIhEEbPKcPT_.exit226.thread
  %.02846 = phi i8 [ %.02847, %_ZN11flatbuffers14StringToNumberIhEEbPKcPT_.exit226.thread ], [ %.028, %_ZN11flatbuffers14StringToNumberIhEEbPKcPT_.exit226 ]
  %i.ey = phi i8 [ %i.ex, %_ZN11flatbuffers14StringToNumberIhEEbPKcPT_.exit226.thread ], [ %.028, %_ZN11flatbuffers14StringToNumberIhEEbPKcPT_.exit226 ]
  br i1 %i.ec, label %bb.ao, label %bb.ap

bb.ao:                                            ; preds = %bb.an
  %i.ez = load i8, ptr %1, align 1, !tbaa !81
  br label %bb.ap

bb.ap:                                            ; preds = %bb.an, %bb.ao
  %i.fa = phi i8 [ %i.ez, %bb.ao ], [ %.02846, %bb.an ]
  %i.fb = icmp ult i8 %i.ey, %i.fa
  br label %bb.cr

bb.aq:                                            ; preds = %bb.a
  %i.fc = icmp ne ptr %0, null                    ; 2 uses
  %i.fd = icmp ne ptr %1, null                    ; 2 uses
  %or.cond11 = and i1 %i.fc, %i.fd
  br i1 %or.cond11, label %_ZN11flatbuffers14StringToNumberIsEEbPKcPT_.exit.thread, label %bb.ar

bb.ar:                                            ; preds = %bb.aq
  %i.fe = load i8, ptr %.232.val, align 1, !tbaa !81 ; 2 uses
  %.not2533.i.i227 = icmp eq i8 %i.fe, 0
  br i1 %.not2533.i.i227, label %.critedge.thread.i.i231, label %.lr.ph.i.i228

.lr.ph.i.i228:                                    ; preds = %bb.ar, %bb.as
  %i.ff = phi i8 [ %i.fi, %bb.as ], [ %i.fe, %bb.ar ] ; 2 uses
  %.034.i.i229 = phi ptr [ %i.fh, %bb.as ], [ %.232.val, %bb.ar ] ; 2 uses
  %7 = add i8 %i.ff, -48
  %i.fg = icmp ult i8 %7, 10
  br i1 %i.fg, label %.critedge.i.i240, label %bb.as

bb.as:                                            ; preds = %.lr.ph.i.i228
  %i.fh = getelementptr inbounds nuw i8, ptr %.034.i.i229, i64 1 ; 2 uses
  %i.fi = load i8, ptr %i.fh, align 1, !tbaa !81  ; 2 uses
  %.not25.i.i230 = icmp eq i8 %i.fi, 0
  br i1 %.not25.i.i230, label %.critedge.thread.i.i231, label %.lr.ph.i.i228, !llvm.loop !3

.critedge.i.i240:                                 ; preds = %.lr.ph.i.i228
  %i.fj = icmp eq i8 %i.ff, 48
  br i1 %i.fj, label %bb.at, label %.critedge.thread.i.i231

bb.at:                                            ; preds = %.critedge.i.i240
  %i.fk = getelementptr inbounds nuw i8, ptr %.034.i.i229, i64 1
  %i.fl = load i8, ptr %i.fk, align 1, !tbaa !81
  %i.fm = and i8 %i.fl, -33
  %i.fn = icmp eq i8 %i.fm, 88
  br i1 %i.fn, label %bb.au, label %.critedge.thread.i.i231

bb.au:                                            ; preds = %bb.at
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j) #32
  store ptr %.232.val, ptr %i.j, align 8, !tbaa !219
  %i.fo = load ptr, ptr @_ZN11flatbuffers13ClassicLocale9instance_E, align 8, !tbaa !224
  %i.fp = call i64 @__isoc23_strtoll_l(ptr noundef nonnull %.232.val, ptr noundef nonnull %i.j, i32 noundef 16, ptr noundef %i.fo) #32, !inline_history !307
  %i.fq = load ptr, ptr %i.j, align 8, !tbaa !219 ; 2 uses
  %i.fr = load i8, ptr %i.fq, align 1, !tbaa !81
  %.not.i.i.i241 = icmp ne i8 %i.fr, 0
  %i.fs = icmp eq ptr %i.fq, %.232.val
  %or.cond.i.i.i242 = or i1 %i.fs, %.not.i.i.i241
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j) #32
  br i1 %or.cond.i.i.i242, label %_ZN11flatbuffers14StringToNumberIsEEbPKcPT_.exit, label %_ZN11flatbuffers19StringToIntegerImplIlEEbPT_PKcib.exit.thread.i234

.critedge.thread.i.i231:                          ; preds = %bb.as, %bb.at, %.critedge.i.i240, %bb.ar
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i) #32
  store ptr %.232.val, ptr %i.i, align 8, !tbaa !219
  %i.ft = load ptr, ptr @_ZN11flatbuffers13ClassicLocale9instance_E, align 8, !tbaa !224
  %i.fu = call i64 @__isoc23_strtoll_l(ptr noundef nonnull %.232.val, ptr noundef nonnull %i.i, i32 noundef 10, ptr noundef %i.ft) #32, !inline_history !307
  %i.fv = load ptr, ptr %i.i, align 8, !tbaa !219 ; 2 uses
  %i.fw = load i8, ptr %i.fv, align 1, !tbaa !81
  %.not.i26.i.i232 = icmp ne i8 %i.fw, 0
  %i.fx = icmp eq ptr %i.fv, %.232.val
  %or.cond.i27.i.i233 = or i1 %i.fx, %.not.i26.i.i232
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i) #32
  br i1 %or.cond.i27.i.i233, label %_ZN11flatbuffers14StringToNumberIsEEbPKcPT_.exit, label %_ZN11flatbuffers19StringToIntegerImplIlEEbPT_PKcib.exit.thread.i234

_ZN11flatbuffers19StringToIntegerImplIlEEbPT_PKcib.exit.thread.i234: ; preds = %.critedge.thread.i.i231, %bb.au
  %.28.i235 = phi i64 [ %i.fp, %bb.au ], [ %i.fu, %.critedge.thread.i.i231 ] ; 2 uses
  %i.fy = icmp sgt i64 %.28.i235, 32767
  br i1 %i.fy, label %_ZN11flatbuffers14StringToNumberIsEEbPKcPT_.exit, label %bb.av

bb.av:                                            ; preds = %_ZN11flatbuffers19StringToIntegerImplIlEEbPT_PKcib.exit.thread.i234
  %spec.select21.i236 = call i64 @llvm.smax.i64(i64 %.28.i235, i64 -32768)
  %spec.select.i237 = trunc nsw i64 %spec.select21.i236 to i16
  br label %_ZN11flatbuffers14StringToNumberIsEEbPKcPT_.exit

_ZN11flatbuffers14StringToNumberIsEEbPKcPT_.exit: ; preds = %bb.av, %_ZN11flatbuffers19StringToIntegerImplIlEEbPT_PKcib.exit.thread.i234, %.critedge.thread.i.i231, %bb.au
  %.027 = phi i16 [ 0, %bb.au ], [ %spec.select.i237, %bb.av ], [ 32767, %_ZN11flatbuffers19StringToIntegerImplIlEEbPT_PKcib.exit.thread.i234 ], [ 0, %.critedge.thread.i.i231 ] ; 3 uses
  br i1 %i.fc, label %_ZN11flatbuffers14StringToNumberIsEEbPKcPT_.exit.thread, label %bb.aw

_ZN11flatbuffers14StringToNumberIsEEbPKcPT_.exit.thread: ; preds = %bb.aq, %_ZN11flatbuffers14StringToNumberIsEEbPKcPT_.exit
  %.02750 = phi i16 [ %.027, %_ZN11flatbuffers14StringToNumberIsEEbPKcPT_.exit ], [ 0, %bb.aq ]
  %i.fz = load i16, ptr %0, align 2, !tbaa !254
  br label %bb.aw

bb.aw:                                            ; preds = %_ZN11flatbuffers14StringToNumberIsEEbPKcPT_.exit, %_ZN11flatbuffers14StringToNumberIsEEbPKcPT_.exit.thread
  %.02749 = phi i16 [ %.02750, %_ZN11flatbuffers14StringToNumberIsEEbPKcPT_.exit.thread ], [ %.027, %_ZN11flatbuffers14StringToNumberIsEEbPKcPT_.exit ]
  %i.ga = phi i16 [ %i.fz, %_ZN11flatbuffers14StringToNumberIsEEbPKcPT_.exit.thread ], [ %.027, %_ZN11flatbuffers14StringToNumberIsEEbPKcPT_.exit ]
  br i1 %i.fd, label %bb.ax, label %bb.ay

bb.ax:                                            ; preds = %bb.aw
  %i.gb = load i16, ptr %1, align 2, !tbaa !254
  br label %bb.ay

bb.ay:                                            ; preds = %bb.aw, %bb.ax
  %i.gc = phi i16 [ %i.gb, %bb.ax ], [ %.02749, %bb.aw ]
  %i.gd = icmp slt i16 %i.ga, %i.gc
  br label %bb.cr

bb.az:                                            ; preds = %bb.a
  %i.ge = icmp ne ptr %0, null                    ; 2 uses
  %i.gf = icmp ne ptr %1, null                    ; 2 uses
  %or.cond13 = and i1 %i.ge, %i.gf
  br i1 %or.cond13, label %_ZN11flatbuffers14StringToNumberItEEbPKcPT_.exit.thread, label %bb.ba

bb.ba:                                            ; preds = %bb.az
  %i.gg = load i8, ptr %.232.val, align 1, !tbaa !81 ; 2 uses
  %.not2533.i.i243 = icmp eq i8 %i.gg, 0
  br i1 %.not2533.i.i243, label %.critedge.thread.i.i247, label %.lr.ph.i.i244

.lr.ph.i.i244:                                    ; preds = %bb.ba, %bb.bb
  %i.gh = phi i8 [ %i.gk, %bb.bb ], [ %i.gg, %bb.ba ] ; 2 uses
  %.034.i.i245 = phi ptr [ %i.gj, %bb.bb ], [ %.232.val, %bb.ba ] ; 2 uses
  %8 = add i8 %i.gh, -48
  %i.gi = icmp ult i8 %8, 10
  br i1 %i.gi, label %.critedge.i.i257, label %bb.bb

bb.bb:                                            ; preds = %.lr.ph.i.i244
  %i.gj = getelementptr inbounds nuw i8, ptr %.034.i.i245, i64 1 ; 2 uses
  %i.gk = load i8, ptr %i.gj, align 1, !tbaa !81  ; 2 uses
  %.not25.i.i246 = icmp eq i8 %i.gk, 0
  br i1 %.not25.i.i246, label %.critedge.thread.i.i247, label %.lr.ph.i.i244, !llvm.loop !3

.critedge.i.i257:                                 ; preds = %.lr.ph.i.i244
  %i.gl = icmp eq i8 %i.gh, 48
  br i1 %i.gl, label %bb.bc, label %.critedge.thread.i.i247

bb.bc:                                            ; preds = %.critedge.i.i257
  %i.gm = getelementptr inbounds nuw i8, ptr %.034.i.i245, i64 1
  %i.gn = load i8, ptr %i.gm, align 1, !tbaa !81
  %i.go = and i8 %i.gn, -33
  %i.gp = icmp eq i8 %i.go, 88
  br i1 %i.gp, label %bb.bd, label %.critedge.thread.i.i247

bb.bd:                                            ; preds = %bb.bc
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h) #32
  store ptr %.232.val, ptr %i.h, align 8, !tbaa !219
  %i.gq = load ptr, ptr @_ZN11flatbuffers13ClassicLocale9instance_E, align 8, !tbaa !224
  %i.gr = call i64 @__isoc23_strtoll_l(ptr noundef nonnull %.232.val, ptr noundef nonnull %i.h, i32 noundef 16, ptr noundef %i.gq) #32, !inline_history !307
  %i.gs = load ptr, ptr %i.h, align 8, !tbaa !219 ; 2 uses
  %i.gt = load i8, ptr %i.gs, align 1, !tbaa !81
  %.not.i.i.i258 = icmp ne i8 %i.gt, 0
  %i.gu = icmp eq ptr %i.gs, %.232.val
  %or.cond.i.i.i259 = or i1 %i.gu, %.not.i.i.i258
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h) #32
  br i1 %or.cond.i.i.i259, label %_ZN11flatbuffers14StringToNumberItEEbPKcPT_.exit, label %_ZN11flatbuffers19StringToIntegerImplIlEEbPT_PKcib.exit.thread.i250

.critedge.thread.i.i247:                          ; preds = %bb.bb, %bb.bc, %.critedge.i.i257, %bb.ba
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #32
  store ptr %.232.val, ptr %i.g, align 8, !tbaa !219
  %i.gv = load ptr, ptr @_ZN11flatbuffers13ClassicLocale9instance_E, align 8, !tbaa !224
  %i.gw = call i64 @__isoc23_strtoll_l(ptr noundef nonnull %.232.val, ptr noundef nonnull %i.g, i32 noundef 10, ptr noundef %i.gv) #32, !inline_history !307
  %i.gx = load ptr, ptr %i.g, align 8, !tbaa !219 ; 2 uses
  %i.gy = load i8, ptr %i.gx, align 1, !tbaa !81
  %.not.i26.i.i248 = icmp ne i8 %i.gy, 0
  %i.gz = icmp eq ptr %i.gx, %.232.val
  %or.cond.i27.i.i249 = or i1 %i.gz, %.not.i26.i.i248
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #32
  br i1 %or.cond.i27.i.i249, label %_ZN11flatbuffers14StringToNumberItEEbPKcPT_.exit, label %_ZN11flatbuffers19StringToIntegerImplIlEEbPT_PKcib.exit.thread.i250

_ZN11flatbuffers19StringToIntegerImplIlEEbPT_PKcib.exit.thread.i250: ; preds = %.critedge.thread.i.i247, %bb.bd
  %.28.i251 = phi i64 [ %i.gr, %bb.bd ], [ %i.gw, %.critedge.thread.i.i247 ]
  %spec.select21.i253 = call i64 @llvm.umin.i64(i64 %.28.i251, i64 65535)
  %spec.select.i254 = trunc nuw i64 %spec.select21.i253 to i16
  br label %_ZN11flatbuffers14StringToNumberItEEbPKcPT_.exit

_ZN11flatbuffers14StringToNumberItEEbPKcPT_.exit: ; preds = %_ZN11flatbuffers19StringToIntegerImplIlEEbPT_PKcib.exit.thread.i250, %.critedge.thread.i.i247, %bb.bd
  %.026 = phi i16 [ 0, %bb.bd ], [ 0, %.critedge.thread.i.i247 ], [ %spec.select.i254, %_ZN11flatbuffers19StringToIntegerImplIlEEbPT_PKcib.exit.thread.i250 ] ; 3 uses
  br i1 %i.ge, label %_ZN11flatbuffers14StringToNumberItEEbPKcPT_.exit.thread, label %bb.be

_ZN11flatbuffers14StringToNumberItEEbPKcPT_.exit.thread: ; preds = %bb.az, %_ZN11flatbuffers14StringToNumberItEEbPKcPT_.exit
  %.02653 = phi i16 [ %.026, %_ZN11flatbuffers14StringToNumberItEEbPKcPT_.exit ], [ 0, %bb.az ]
  %i.ha = load i16, ptr %0, align 2, !tbaa !254
  br label %bb.be

bb.be:                                            ; preds = %_ZN11flatbuffers14StringToNumberItEEbPKcPT_.exit, %_ZN11flatbuffers14StringToNumberItEEbPKcPT_.exit.thread
  %.02652 = phi i16 [ %.02653, %_ZN11flatbuffers14StringToNumberItEEbPKcPT_.exit.thread ], [ %.026, %_ZN11flatbuffers14StringToNumberItEEbPKcPT_.exit ]
  %i.hb = phi i16 [ %i.ha, %_ZN11flatbuffers14StringToNumberItEEbPKcPT_.exit.thread ], [ %.026, %_ZN11flatbuffers14StringToNumberItEEbPKcPT_.exit ]
  br i1 %i.gf, label %bb.bf, label %bb.bg

bb.bf:                                            ; preds = %bb.be
  %i.hc = load i16, ptr %1, align 2, !tbaa !254
  br label %bb.bg

bb.bg:                                            ; preds = %bb.be, %bb.bf
  %i.hd = phi i16 [ %i.hc, %bb.bf ], [ %.02652, %bb.be ]
  %i.he = icmp ult i16 %i.hb, %i.hd
  br label %bb.cr

bb.bh:                                            ; preds = %bb.a
  %i.hf = icmp ne ptr %0, null                    ; 2 uses
  %i.hg = icmp ne ptr %1, null                    ; 2 uses
  %or.cond15 = and i1 %i.hf, %i.hg
  br i1 %or.cond15, label %_ZN11flatbuffers14StringToNumberIiEEbPKcPT_.exit.thread, label %bb.bi

bb.bi:                                            ; preds = %bb.bh
  %i.hh = load i8, ptr %.232.val, align 1, !tbaa !81 ; 2 uses
  %.not2533.i.i260 = icmp eq i8 %i.hh, 0
  br i1 %.not2533.i.i260, label %.critedge.thread.i.i264, label %.lr.ph.i.i261

.lr.ph.i.i261:                                    ; preds = %bb.bi, %bb.bj
  %i.hi = phi i8 [ %i.hl, %bb.bj ], [ %i.hh, %bb.bi ] ; 2 uses
  %.034.i.i262 = phi ptr [ %i.hk, %bb.bj ], [ %.232.val, %bb.bi ] ; 2 uses
  %9 = add i8 %i.hi, -48
  %i.hj = icmp ult i8 %9, 10
  br i1 %i.hj, label %.critedge.i.i273, label %bb.bj

bb.bj:                                            ; preds = %.lr.ph.i.i261
  %i.hk = getelementptr inbounds nuw i8, ptr %.034.i.i262, i64 1 ; 2 uses
  %i.hl = load i8, ptr %i.hk, align 1, !tbaa !81  ; 2 uses
  %.not25.i.i263 = icmp eq i8 %i.hl, 0
  br i1 %.not25.i.i263, label %.critedge.thread.i.i264, label %.lr.ph.i.i261, !llvm.loop !3

.critedge.i.i273:                                 ; preds = %.lr.ph.i.i261
  %i.hm = icmp eq i8 %i.hi, 48
  br i1 %i.hm, label %bb.bk, label %.critedge.thread.i.i264

bb.bk:                                            ; preds = %.critedge.i.i273
  %i.hn = getelementptr inbounds nuw i8, ptr %.034.i.i262, i64 1
  %i.ho = load i8, ptr %i.hn, align 1, !tbaa !81
  %i.hp = and i8 %i.ho, -33
  %i.hq = icmp eq i8 %i.hp, 88
  br i1 %i.hq, label %bb.bl, label %.critedge.thread.i.i264

bb.bl:                                            ; preds = %bb.bk
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #32
  store ptr %.232.val, ptr %i.f, align 8, !tbaa !219
  %i.hr = load ptr, ptr @_ZN11flatbuffers13ClassicLocale9instance_E, align 8, !tbaa !224
  %i.hs = call i64 @__isoc23_strtoll_l(ptr noundef nonnull %.232.val, ptr noundef nonnull %i.f, i32 noundef 16, ptr noundef %i.hr) #32, !inline_history !307
  %i.ht = load ptr, ptr %i.f, align 8, !tbaa !219 ; 2 uses
  %i.hu = load i8, ptr %i.ht, align 1, !tbaa !81
  %.not.i.i.i274 = icmp ne i8 %i.hu, 0
  %i.hv = icmp eq ptr %i.ht, %.232.val
  %or.cond.i.i.i275 = or i1 %i.hv, %.not.i.i.i274
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #32
  br i1 %or.cond.i.i.i275, label %_ZN11flatbuffers14StringToNumberIiEEbPKcPT_.exit, label %_ZN11flatbuffers19StringToIntegerImplIlEEbPT_PKcib.exit.thread.i267

.critedge.thread.i.i264:                          ; preds = %bb.bj, %bb.bk, %.critedge.i.i273, %bb.bi
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #32
  store ptr %.232.val, ptr %i.e, align 8, !tbaa !219
  %i.hw = load ptr, ptr @_ZN11flatbuffers13ClassicLocale9instance_E, align 8, !tbaa !224
  %i.hx = call i64 @__isoc23_strtoll_l(ptr noundef nonnull %.232.val, ptr noundef nonnull %i.e, i32 noundef 10, ptr noundef %i.hw) #32, !inline_history !307
  %i.hy = load ptr, ptr %i.e, align 8, !tbaa !219 ; 2 uses
  %i.hz = load i8, ptr %i.hy, align 1, !tbaa !81
  %.not.i26.i.i265 = icmp ne i8 %i.hz, 0
  %i.ia = icmp eq ptr %i.hy, %.232.val
  %or.cond.i27.i.i266 = or i1 %i.ia, %.not.i26.i.i265
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #32
  br i1 %or.cond.i27.i.i266, label %_ZN11flatbuffers14StringToNumberIiEEbPKcPT_.exit, label %_ZN11flatbuffers19StringToIntegerImplIlEEbPT_PKcib.exit.thread.i267

_ZN11flatbuffers19StringToIntegerImplIlEEbPT_PKcib.exit.thread.i267: ; preds = %.critedge.thread.i.i264, %bb.bl
  %.28.i268 = phi i64 [ %i.hs, %bb.bl ], [ %i.hx, %.critedge.thread.i.i264 ] ; 2 uses
  %i.ib = icmp sgt i64 %.28.i268, 2147483647
  br i1 %i.ib, label %_ZN11flatbuffers14StringToNumberIiEEbPKcPT_.exit, label %bb.bm

bb.bm:                                            ; preds = %_ZN11flatbuffers19StringToIntegerImplIlEEbPT_PKcib.exit.thread.i267
  %spec.select21.i269 = call i64 @llvm.smax.i64(i64 %.28.i268, i64 -2147483648)
  %spec.select.i270 = trunc nsw i64 %spec.select21.i269 to i32
  br label %_ZN11flatbuffers14StringToNumberIiEEbPKcPT_.exit

_ZN11flatbuffers14StringToNumberIiEEbPKcPT_.exit: ; preds = %bb.bm, %_ZN11flatbuffers19StringToIntegerImplIlEEbPT_PKcib.exit.thread.i267, %.critedge.thread.i.i264, %bb.bl
  %.025 = phi i32 [ 0, %bb.bl ], [ %spec.select.i270, %bb.bm ], [ 2147483647, %_ZN11flatbuffers19StringToIntegerImplIlEEbPT_PKcib.exit.thread.i267 ], [ 0, %.critedge.thread.i.i264 ] ; 3 uses
  br i1 %i.hf, label %_ZN11flatbuffers14StringToNumberIiEEbPKcPT_.exit.thread, label %bb.bn

_ZN11flatbuffers14StringToNumberIiEEbPKcPT_.exit.thread: ; preds = %bb.bh, %_ZN11flatbuffers14StringToNumberIiEEbPKcPT_.exit
  %.02556 = phi i32 [ %.025, %_ZN11flatbuffers14StringToNumberIiEEbPKcPT_.exit ], [ 0, %bb.bh ]
  %i.ic = load i32, ptr %0, align 4, !tbaa !221
  br label %bb.bn

bb.bn:                                            ; preds = %_ZN11flatbuffers14StringToNumberIiEEbPKcPT_.exit, %_ZN11flatbuffers14StringToNumberIiEEbPKcPT_.exit.thread
  %.02555 = phi i32 [ %.02556, %_ZN11flatbuffers14StringToNumberIiEEbPKcPT_.exit.thread ], [ %.025, %_ZN11flatbuffers14StringToNumberIiEEbPKcPT_.exit ]
  %i.id = phi i32 [ %i.ic, %_ZN11flatbuffers14StringToNumberIiEEbPKcPT_.exit.thread ], [ %.025, %_ZN11flatbuffers14StringToNumberIiEEbPKcPT_.exit ]
  br i1 %i.hg, label %bb.bo, label %bb.bp

bb.bo:                                            ; preds = %bb.bn
  %i.ie = load i32, ptr %1, align 4, !tbaa !221
  br label %bb.bp

bb.bp:                                            ; preds = %bb.bn, %bb.bo
  %i.if = phi i32 [ %i.ie, %bb.bo ], [ %.02555, %bb.bn ]
  %i.ig = icmp slt i32 %i.id, %i.if
  br label %bb.cr

bb.bq:                                            ; preds = %bb.a
  %i.ih = icmp ne ptr %0, null                    ; 2 uses
  %i.ii = icmp ne ptr %1, null                    ; 2 uses
  %or.cond17 = and i1 %i.ih, %i.ii
  br i1 %or.cond17, label %_ZN11flatbuffers14StringToNumberIjEEbPKcPT_.exit.thread, label %bb.br

bb.br:                                            ; preds = %bb.bq
  %i.ij = load i8, ptr %.232.val, align 1, !tbaa !81 ; 2 uses
  %.not2533.i.i276 = icmp eq i8 %i.ij, 0
  br i1 %.not2533.i.i276, label %.critedge.thread.i.i280, label %.lr.ph.i.i277

.lr.ph.i.i277:                                    ; preds = %bb.br, %bb.bs
  %i.ik = phi i8 [ %i.in, %bb.bs ], [ %i.ij, %bb.br ] ; 2 uses
  %.034.i.i278 = phi ptr [ %i.im, %bb.bs ], [ %.232.val, %bb.br ] ; 2 uses
  %10 = add i8 %i.ik, -48
  %i.il = icmp ult i8 %10, 10
  br i1 %i.il, label %.critedge.i.i290, label %bb.bs

bb.bs:                                            ; preds = %.lr.ph.i.i277
  %i.im = getelementptr inbounds nuw i8, ptr %.034.i.i278, i64 1 ; 2 uses
  %i.in = load i8, ptr %i.im, align 1, !tbaa !81  ; 2 uses
  %.not25.i.i279 = icmp eq i8 %i.in, 0
  br i1 %.not25.i.i279, label %.critedge.thread.i.i280, label %.lr.ph.i.i277, !llvm.loop !3

.critedge.i.i290:                                 ; preds = %.lr.ph.i.i277
  %i.io = icmp eq i8 %i.ik, 48
  br i1 %i.io, label %bb.bt, label %.critedge.thread.i.i280

bb.bt:                                            ; preds = %.critedge.i.i290
  %i.ip = getelementptr inbounds nuw i8, ptr %.034.i.i278, i64 1
  %i.iq = load i8, ptr %i.ip, align 1, !tbaa !81
  %i.ir = and i8 %i.iq, -33
  %i.is = icmp eq i8 %i.ir, 88
  br i1 %i.is, label %bb.bu, label %.critedge.thread.i.i280

bb.bu:                                            ; preds = %bb.bt
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #32
  store ptr %.232.val, ptr %i.d, align 8, !tbaa !219
  %i.it = load ptr, ptr @_ZN11flatbuffers13ClassicLocale9instance_E, align 8, !tbaa !224
  %i.iu = call i64 @__isoc23_strtoll_l(ptr noundef nonnull %.232.val, ptr noundef nonnull %i.d, i32 noundef 16, ptr noundef %i.it) #32, !inline_history !307
  %i.iv = load ptr, ptr %i.d, align 8, !tbaa !219 ; 2 uses
  %i.iw = load i8, ptr %i.iv, align 1, !tbaa !81
  %.not.i.i.i291 = icmp ne i8 %i.iw, 0
  %i.ix = icmp eq ptr %i.iv, %.232.val
  %or.cond.i.i.i292 = or i1 %i.ix, %.not.i.i.i291
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #32
  br i1 %or.cond.i.i.i292, label %_ZN11flatbuffers14StringToNumberIjEEbPKcPT_.exit, label %_ZN11flatbuffers19StringToIntegerImplIlEEbPT_PKcib.exit.thread.i283

.critedge.thread.i.i280:                          ; preds = %bb.bs, %bb.bt, %.critedge.i.i290, %bb.br
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #32
  store ptr %.232.val, ptr %i.c, align 8, !tbaa !219
  %i.iy = load ptr, ptr @_ZN11flatbuffers13ClassicLocale9instance_E, align 8, !tbaa !224
  %i.iz = call i64 @__isoc23_strtoll_l(ptr noundef nonnull %.232.val, ptr noundef nonnull %i.c, i32 noundef 10, ptr noundef %i.iy) #32, !inline_history !307
  %i.ja = load ptr, ptr %i.c, align 8, !tbaa !219 ; 2 uses
  %i.jb = load i8, ptr %i.ja, align 1, !tbaa !81
  %.not.i26.i.i281 = icmp ne i8 %i.jb, 0
  %i.jc = icmp eq ptr %i.ja, %.232.val
  %or.cond.i27.i.i282 = or i1 %i.jc, %.not.i26.i.i281
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #32
  br i1 %or.cond.i27.i.i282, label %_ZN11flatbuffers14StringToNumberIjEEbPKcPT_.exit, label %_ZN11flatbuffers19StringToIntegerImplIlEEbPT_PKcib.exit.thread.i283

_ZN11flatbuffers19StringToIntegerImplIlEEbPT_PKcib.exit.thread.i283: ; preds = %.critedge.thread.i.i280, %bb.bu
  %.28.i284 = phi i64 [ %i.iu, %bb.bu ], [ %i.iz, %.critedge.thread.i.i280 ]
  %spec.select21.i286 = call i64 @llvm.umin.i64(i64 %.28.i284, i64 4294967295)
  %spec.select.i287 = trunc nuw i64 %spec.select21.i286 to i32
  br label %_ZN11flatbuffers14StringToNumberIjEEbPKcPT_.exit

_ZN11flatbuffers14StringToNumberIjEEbPKcPT_.exit: ; preds = %_ZN11flatbuffers19StringToIntegerImplIlEEbPT_PKcib.exit.thread.i283, %.critedge.thread.i.i280, %bb.bu
  %.024 = phi i32 [ 0, %bb.bu ], [ 0, %.critedge.thread.i.i280 ], [ %spec.select.i287, %_ZN11flatbuffers19StringToIntegerImplIlEEbPT_PKcib.exit.thread.i283 ] ; 3 uses
  br i1 %i.ih, label %_ZN11flatbuffers14StringToNumberIjEEbPKcPT_.exit.thread, label %bb.bv

_ZN11flatbuffers14StringToNumberIjEEbPKcPT_.exit.thread: ; preds = %bb.bq, %_ZN11flatbuffers14StringToNumberIjEEbPKcPT_.exit
  %.02459 = phi i32 [ %.024, %_ZN11flatbuffers14StringToNumberIjEEbPKcPT_.exit ], [ 0, %bb.bq ]
  %i.jd = load i32, ptr %0, align 4, !tbaa !221
  br label %bb.bv

bb.bv:                                            ; preds = %_ZN11flatbuffers14StringToNumberIjEEbPKcPT_.exit, %_ZN11flatbuffers14StringToNumberIjEEbPKcPT_.exit.thread
  %.02458 = phi i32 [ %.02459, %_ZN11flatbuffers14StringToNumberIjEEbPKcPT_.exit.thread ], [ %.024, %_ZN11flatbuffers14StringToNumberIjEEbPKcPT_.exit ]
  %i.je = phi i32 [ %i.jd, %_ZN11flatbuffers14StringToNumberIjEEbPKcPT_.exit.thread ], [ %.024, %_ZN11flatbuffers14StringToNumberIjEEbPKcPT_.exit ]
  br i1 %i.ii, label %bb.bw, label %bb.bx

bb.bw:                                            ; preds = %bb.bv
  %i.jf = load i32, ptr %1, align 4, !tbaa !221
  br label %bb.bx

bb.bx:                                            ; preds = %bb.bv, %bb.bw
  %i.jg = phi i32 [ %i.jf, %bb.bw ], [ %.02458, %bb.bv ]
  %i.jh = icmp ult i32 %i.je, %i.jg
  br label %bb.cr

bb.by:                                            ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.u) #32
  store i64 0, ptr %i.u, align 8, !tbaa !93
  %i.ji = icmp ne ptr %0, null                    ; 2 uses
  %i.jj = icmp ne ptr %1, null                    ; 2 uses
  %or.cond19 = and i1 %i.ji, %i.jj
  br i1 %or.cond19, label %.thread, label %bb.bz

bb.bz:                                            ; preds = %bb.by
  %i.jk = call noundef zeroext i1 @_ZN11flatbuffers19StringToIntegerImplIlEEbPT_PKcib(ptr noundef nonnull %i.u, ptr noundef %.232.val, i32 noundef 0, i1 noundef zeroext true) ; 0 uses
  %spec.select = select i1 %i.ji, ptr %0, ptr %i.u
  br label %.thread

.thread:                                          ; preds = %bb.bz, %bb.by
  %.in70 = phi ptr [ %spec.select, %bb.bz ], [ %0, %bb.by ]
  %i.jl = load i64, ptr %.in70, align 8, !tbaa !93
  %. = select i1 %i.jj, ptr %1, ptr %i.u
  %i.jm = load i64, ptr %., align 8, !tbaa !93
  %i.jn = icmp slt i64 %i.jl, %i.jm
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u) #32
  br label %bb.cr

bb.ca:                                            ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.v) #32
  store i64 0, ptr %i.v, align 8, !tbaa !93
  %i.jo = icmp ne ptr %0, null                    ; 2 uses
  %i.jp = icmp ne ptr %1, null                    ; 2 uses
  %or.cond21 = and i1 %i.jo, %i.jp
  br i1 %or.cond21, label %_ZN11flatbuffers14StringToNumberImEEbPKcPT_.exit.thread, label %bb.cb

bb.cb:                                            ; preds = %bb.ca
  %i.jq = call noundef zeroext i1 @_ZN11flatbuffers19StringToIntegerImplImEEbPT_PKcib(ptr noundef nonnull %i.v, ptr noundef %.232.val, i32 noundef 0, i1 noundef zeroext true)
  %i.jr = load i64, ptr %i.v, align 8
  %.not.i = icmp ne i64 %i.jr, 0
  %or.cond68.not = select i1 %i.jq, i1 %.not.i, i1 false
  br i1 %or.cond68.not, label %.preheader.i, label %_ZN11flatbuffers14StringToNumberImEEbPKcPT_.exit

.preheader.i:                                     ; preds = %bb.cb, %.preheader.i
  %.014.i = phi ptr [ %i.ju, %.preheader.i ], [ %.232.val, %bb.cb ] ; 4 uses
  %i.js = load i8, ptr %.014.i, align 1, !tbaa !81 ; 2 uses
  %.not17.i = icmp eq i8 %i.js, 0
  %11 = add i8 %i.js, -48
  %i.jt = icmp ult i8 %11, 10
  %or.cond.i294 = or i1 %.not17.i, %i.jt
  %i.ju = getelementptr inbounds nuw i8, ptr %.014.i, i64 1
  br i1 %or.cond.i294, label %.critedge.i, label %.preheader.i, !llvm.loop !8

.critedge.i:                                      ; preds = %.preheader.i
  %i.jv = icmp ugt ptr %.014.i, %.232.val
  %.idx.i = sext i1 %i.jv to i64
  %i.jw = getelementptr inbounds i8, ptr %.014.i, i64 %.idx.i
  %i.jx = load i8, ptr %i.jw, align 1, !tbaa !81
  %i.jy = icmp eq i8 %i.jx, 45
  br i1 %i.jy, label %bb.cc, label %_ZN11flatbuffers14StringToNumberImEEbPKcPT_.exit

bb.cc:                                            ; preds = %.critedge.i
  store i64 -1, ptr %i.v, align 8, !tbaa !93
  br label %_ZN11flatbuffers14StringToNumberImEEbPKcPT_.exit

_ZN11flatbuffers14StringToNumberImEEbPKcPT_.exit: ; preds = %bb.cc, %.critedge.i, %bb.cb
  %spec.select73 = select i1 %i.jo, ptr %0, ptr %i.v
  br label %_ZN11flatbuffers14StringToNumberImEEbPKcPT_.exit.thread

_ZN11flatbuffers14StringToNumberImEEbPKcPT_.exit.thread: ; preds = %_ZN11flatbuffers14StringToNumberImEEbPKcPT_.exit, %bb.ca
  %.in = phi ptr [ %spec.select73, %_ZN11flatbuffers14StringToNumberImEEbPKcPT_.exit ], [ %0, %bb.ca ]
  %i.jz = load i64, ptr %.in, align 8, !tbaa !93
  %.72 = select i1 %i.jp, ptr %1, ptr %i.v
  %i.ka = load i64, ptr %.72, align 8, !tbaa !93
  %i.kb = icmp ult i64 %i.jz, %i.ka
  call void @llvm.lifetime.end.p0(ptr nonnull %i.v) #32
  br label %bb.cr

bb.cd:                                            ; preds = %bb.a
  %i.kc = icmp ne ptr %0, null                    ; 2 uses
  %i.kd = icmp ne ptr %1, null                    ; 2 uses
  %or.cond23 = and i1 %i.kc, %i.kd
  br i1 %or.cond23, label %.thread60, label %bb.ce

bb.ce:                                            ; preds = %bb.cd
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #32
  store ptr %.232.val, ptr %i.b, align 8, !tbaa !219
  %i.ke = load ptr, ptr @_ZN11flatbuffers13ClassicLocale9instance_E, align 8, !tbaa !224
  %i.kf = call float @strtof_l(ptr noundef %.232.val, ptr noundef nonnull %i.b, ptr noundef %i.ke) #32 ; 2 uses
  %i.kg = load ptr, ptr %i.b, align 8, !tbaa !219 ; 2 uses
  %.not.i.i = icmp eq ptr %i.kg, %.232.val
  br i1 %.not.i.i, label %bb.cg, label %bb.cf

bb.cf:                                            ; preds = %bb.ce
  %i.kh = load i8, ptr %i.kg, align 1, !tbaa !81
  %i.ki = icmp eq i8 %i.kh, 0
  br i1 %i.ki, label %.critedge.i.i295, label %bb.cg

.critedge.i.i295:                                 ; preds = %bb.cf
  %i.kj = fcmp uno float %i.kf, 0.000000e+00
  br i1 %i.kj, label %.sink.split.i.i, label %bb.cg

.sink.split.i.i:                                  ; preds = %.critedge.i.i295
  br label %bb.cg

bb.cg:                                            ; preds = %.sink.split.i.i, %.critedge.i.i295, %bb.cf, %bb.ce
  %.022 = phi float [ %i.kf, %.critedge.i.i295 ], [ 0.000000e+00, %bb.cf ], [ 0.000000e+00, %bb.ce ], [ +qnan, %.sink.split.i.i ] ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #32
  br i1 %i.kc, label %.thread60, label %bb.ch

.thread60:                                        ; preds = %bb.cd, %bb.cg
  %.12363 = phi float [ %.022, %bb.cg ], [ 0.000000e+00, %bb.cd ]
  %i.kk = load float, ptr %0, align 4, !tbaa !337
  br label %bb.ch

bb.ch:                                            ; preds = %bb.cg, %.thread60
  %.12362 = phi float [ %.12363, %.thread60 ], [ %.022, %bb.cg ]
  %i.kl = phi float [ %i.kk, %.thread60 ], [ %.022, %bb.cg ]
  br i1 %i.kd, label %bb.ci, label %bb.cj

bb.ci:                                            ; preds = %bb.ch
  %i.km = load float, ptr %1, align 4, !tbaa !337
  br label %bb.cj

bb.cj:                                            ; preds = %bb.ch, %bb.ci
  %i.kn = phi float [ %i.km, %bb.ci ], [ %.12362, %bb.ch ]
  %i.ko = fcmp olt float %i.kl, %i.kn
  br label %bb.cr

bb.ck:                                            ; preds = %bb.a
  %i.kp = icmp ne ptr %0, null                    ; 2 uses
  %i.kq = icmp ne ptr %1, null                    ; 2 uses
  %or.cond25 = and i1 %i.kp, %i.kq
  br i1 %or.cond25, label %.thread64, label %bb.cl

bb.cl:                                            ; preds = %bb.ck
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #32
  store ptr %.232.val, ptr %i.a, align 8, !tbaa !219
  %i.kr = load ptr, ptr @_ZN11flatbuffers13ClassicLocale9instance_E, align 8, !tbaa !224
  %i.ks = call double @strtod_l(ptr noundef %.232.val, ptr noundef nonnull %i.a, ptr noundef %i.kr) #32 ; 2 uses
  %i.kt = load ptr, ptr %i.a, align 8, !tbaa !219 ; 2 uses
  %.not.i.i296 = icmp eq ptr %i.kt, %.232.val
  br i1 %.not.i.i296, label %bb.cn, label %bb.cm

bb.cm:                                            ; preds = %bb.cl
  %i.ku = load i8, ptr %i.kt, align 1, !tbaa !81
  %i.kv = icmp eq i8 %i.ku, 0
  br i1 %i.kv, label %.critedge.i.i300, label %bb.cn

.critedge.i.i300:                                 ; preds = %bb.cm
  %i.kw = fcmp uno double %i.ks, 0.000000e+00
  br i1 %i.kw, label %.sink.split.i.i297, label %bb.cn

.sink.split.i.i297:                               ; preds = %.critedge.i.i300
  br label %bb.cn

bb.cn:                                            ; preds = %.sink.split.i.i297, %.critedge.i.i300, %bb.cm, %bb.cl
  %.021 = phi double [ %i.ks, %.critedge.i.i300 ], [ 0.000000e+00, %bb.cm ], [ 0.000000e+00, %bb.cl ], [ +qnan, %.sink.split.i.i297 ] ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #32
  br i1 %i.kp, label %.thread64, label %bb.co

.thread64:                                        ; preds = %bb.ck, %bb.cn
  %.167 = phi double [ %.021, %bb.cn ], [ 0.000000e+00, %bb.ck ]
  %i.kx = load double, ptr %0, align 8, !tbaa !339
  br label %bb.co

bb.co:                                            ; preds = %bb.cn, %.thread64
  %.166 = phi double [ %.167, %.thread64 ], [ %.021, %bb.cn ]
  %i.ky = phi double [ %i.kx, %.thread64 ], [ %.021, %bb.cn ]
  br i1 %i.kq, label %bb.cp, label %bb.cq

bb.cp:                                            ; preds = %bb.co
  %i.kz = load double, ptr %1, align 8, !tbaa !339
  br label %bb.cq

bb.cq:                                            ; preds = %bb.co, %bb.cp
  %i.la = phi double [ %i.kz, %bb.cp ], [ %.166, %bb.co ]
  %i.lb = fcmp olt double %i.ky, %i.la
  br label %bb.cr

bb.cr:                                            ; preds = %bb.a, %bb.cq, %bb.cj, %_ZN11flatbuffers14StringToNumberImEEbPKcPT_.exit.thread, %.thread, %bb.bx, %bb.bp, %bb.bg, %bb.ay, %bb.ap, %bb.ah, %bb.y, %bb.q, %bb.i
  %.0 = phi i1 [ %i.lb, %bb.cq ], [ %i.aw, %bb.i ], [ %i.bx, %bb.q ], [ %i.cy, %bb.y ], [ %i.ea, %bb.ah ], [ %i.fb, %bb.ap ], [ %i.gd, %bb.ay ], [ %i.he, %bb.bg ], [ %i.ig, %bb.bp ], [ %i.jh, %bb.bx ], [ %i.jn, %.thread ], [ %i.kb, %_ZN11flatbuffers14StringToNumberImEEbPKcPT_.exit.thread ], [ %i.ko, %bb.cj ], [ false, %bb.a ]
  ret i1 %.0
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZNSt6vectorIN11flatbuffers5ValueESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %1, ptr noundef nonnull align 8 dereferenceable(66) %2) local_unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !394  ; 3 uses
  %i.c = load ptr, ptr %0, align 8, !tbaa !397    ; 5 uses
  %i.d = ptrtoint ptr %i.b to i64
  %i.e = ptrtoint ptr %i.c to i64                 ; 3 uses
  %i.f = sub i64 %i.d, %i.e                       ; 2 uses
  %i.g = icmp eq i64 %i.f, 9223372036854775800
  br i1 %i.g, label %bb.b, label %_ZNKSt6vectorIN11flatbuffers5ValueESaIS1_EE12_M_check_lenEmPKc.exit

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.324) #31
  unreachable

_ZNKSt6vectorIN11flatbuffers5ValueESaIS1_EE12_M_check_lenEmPKc.exit: ; preds = %bb.a
  %i.h = sdiv exact i64 %i.f, 72                  ; 3 uses
  %.sroa.speculated.i = tail call i64 @llvm.umax.i64(i64 %i.h, i64 1)
  %i.i = add nsw i64 %.sroa.speculated.i, %i.h    ; 2 uses
  %i.j = icmp ult i64 %i.i, %i.h
  %i.k = tail call i64 @llvm.umin.i64(i64 %i.i, i64 128102389400760775)
  %i.l = select i1 %i.j, i64 128102389400760775, i64 %i.k ; 3 uses
  %i.m = ptrtoint ptr %1 to i64
  %i.n = sub i64 %i.m, %i.e
  %.not.i = icmp ne i64 %i.l, 0
  tail call void @llvm.assume(i1 %.not.i)
  %i.o = mul nuw nsw i64 %i.l, 72
  %i.p = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.o) #36 ; 5 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 %i.n ; 5 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(66) %i.q, ptr noundef nonnull align 8 dereferenceable(66) %2, i64 32, i1 false), !tbaa.struct !255
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 32 ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %2, i64 32 ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.q, i64 48 ; 3 uses
  store ptr %i.t, ptr %i.r, align 8, !tbaa !80
  %i.u = load ptr, ptr %i.s, align 8, !tbaa !82   ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %2, i64 48 ; 5 uses
  %i.w = icmp eq ptr %i.u, %i.v
  br i1 %i.w, label %bb.c, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

bb.c:                                             ; preds = %_ZNKSt6vectorIN11flatbuffers5ValueESaIS1_EE12_M_check_lenEmPKc.exit
  %i.x = getelementptr inbounds nuw i8, ptr %2, i64 40
  %i.y = load i64, ptr %i.x, align 8, !tbaa !79   ; 3 uses
  %i.z = icmp ult i64 %i.y, 16
  tail call void @llvm.assume(i1 %i.z)
  %i.aa = add nuw nsw i64 %i.y, 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.t, ptr noundef nonnull align 8 dereferenceable(1) %i.v, i64 %i.aa, i1 false)
  br label %_ZN11flatbuffers5ValueC2EOS0_.exit

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZNKSt6vectorIN11flatbuffers5ValueESaIS1_EE12_M_check_lenEmPKc.exit
  store ptr %i.u, ptr %i.r, align 8, !tbaa !82
  %i.ab = load i64, ptr %i.v, align 8, !tbaa !81
  store i64 %i.ab, ptr %i.t, align 8, !tbaa !81
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %2, i64 40
  %.pre = load i64, ptr %.phi.trans.insert, align 8, !tbaa !79
  br label %_ZN11flatbuffers5ValueC2EOS0_.exit

_ZN11flatbuffers5ValueC2EOS0_.exit:               ; preds = %bb.c, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  %i.ac = phi i64 [ %i.y, %bb.c ], [ %.pre, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ]
  %i.ad = getelementptr inbounds nuw i8, ptr %2, i64 40
  %i.ae = getelementptr inbounds nuw i8, ptr %i.q, i64 40
  store i64 %i.ac, ptr %i.ae, align 8, !tbaa !79
  store ptr %i.v, ptr %i.s, align 8, !tbaa !82
  store i64 0, ptr %i.ad, align 8, !tbaa !79
  store i8 0, ptr %i.v, align 8, !tbaa !81
end_hunk_22
