Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/verilator/original/V3String?download=true
inline.NumInlined: 1592
inline.NumDeleted: 384
loop-unroll.NumCompletelyUnrolled: 7
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 9
begin_hunk_0_@_ZN7VString19escapeStringForPathERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE:bb.a
  %.not14 = icmp eq i64 %i.q, -1
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 10 uses
  store ptr %i.r, ptr %0, align 8, !tbaa !33
  br i1 %.not14, label %bb.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.s = load ptr, ptr %1, align 8, !tbaa !31     ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.u = load i64, ptr %i.t, align 8, !tbaa !32   ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #33
  store i64 %i.u, ptr %i.a, align 8, !tbaa !34
  %i.v = icmp ugt i64 %i.u, 15
  br i1 %i.v, label %.noexc.i16, label %._crit_edge.i.i15

.noexc.i16:                                       ; preds = %bb.f
  %i.w = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0) ; 2 uses
  store ptr %i.w, ptr %0, align 8, !tbaa !31
  %i.x = load i64, ptr %i.a, align 8, !tbaa !34
  store i64 %i.x, ptr %i.r, align 8, !tbaa !26
  br label %._crit_edge.i.i15

._crit_edge.i.i15:                                ; preds = %.noexc.i16, %bb.f
  %i.y = phi ptr [ %i.w, %.noexc.i16 ], [ %i.r, %bb.f ] ; 2 uses
  switch i64 %i.u, label %bb.h [
    i64 1, label %bb.g
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit17
  ]

bb.g:                                             ; preds = %._crit_edge.i.i15
  %i.z = load i8, ptr %i.s, align 1, !tbaa !26
  store i8 %i.z, ptr %i.y, align 1, !tbaa !26
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit17

bb.h:                                             ; preds = %._crit_edge.i.i15
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.y, ptr align 1 %i.s, i64 %i.u, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit17

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit17: ; preds = %._crit_edge.i.i15, %bb.g, %bb.h
  %i.aa = load i64, ptr %i.a, align 8, !tbaa !34  ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.aa, ptr %i.ab, align 8, !tbaa !32
  %i.ac = load ptr, ptr %0, align 8, !tbaa !31
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 %i.aa
  store i8 0, ptr %i.ad, align 1, !tbaa !26
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #33
  br label %.loopexit

bb.i:                                             ; preds = %bb.e
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 5 uses
  store i64 0, ptr %i.ae, align 8, !tbaa !32
  store i8 0, ptr %i.r, align 8, !tbaa !26
  %i.af = load ptr, ptr %1, align 8, !tbaa !31    ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.ah = load i64, ptr %i.ag, align 8, !tbaa !32 ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %i.af, i64 %i.ah
  %.not2930 = icmp samesign eq i64 %i.ah, 0
  br i1 %.not2930, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.i, %bb.o
  %.sroa.026.031 = phi ptr [ %i.bn, %bb.o ], [ %i.af, %bb.i ] ; 2 uses
  %i.aj = load i8, ptr %.sroa.026.031, align 1, !tbaa !26 ; 2 uses
  switch i8 %i.aj, label %bb.m [
    i8 92, label %bb.j
    i8 32, label %bb.j
  ]

bb.j:                                             ; preds = %.lr.ph, %.lr.ph
  %i.ak = load i64, ptr %i.ae, align 8, !tbaa !32 ; 4 uses
  %i.al = add i64 %i.ak, 1                        ; 3 uses
  %i.am = load ptr, ptr %0, align 8, !tbaa !31    ; 2 uses
  %i.an = icmp eq ptr %i.am, %i.r
  br i1 %i.an, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i: ; preds = %bb.j
  %i.ao = icmp ult i64 %i.ak, 16
  tail call void @llvm.assume(i1 %i.ao)
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.j
  %i.ap = load i64, ptr %i.r, align 8, !tbaa !26
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i
  %i.aq = phi i64 [ %i.ap, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ], [ 15, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i ]
  %i.ar = icmp ugt i64 %i.al, %i.aq
  br i1 %i.ar, label %bb.k, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9push_backEc.exit

bb.k:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %i.ak, i64 noundef 0, ptr noundef null, i64 noundef 1)
          to label %.noexc unwind label %bb.l

.noexc:                                           ; preds = %bb.k
  %.pre.i = load ptr, ptr %0, align 8, !tbaa !31
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9push_backEc.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9push_backEc.exit: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i, %.noexc
  %i.as = phi ptr [ %.pre.i, %.noexc ], [ %i.am, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i ]
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 %i.ak
  store i8 92, ptr %i.at, align 1, !tbaa !26
  store i64 %i.al, ptr %i.ae, align 8, !tbaa !32
  %i.au = load ptr, ptr %0, align 8, !tbaa !31
  %i.av = getelementptr inbounds nuw i8, ptr %i.au, i64 %i.al
  store i8 0, ptr %i.av, align 1, !tbaa !26
  br label %bb.m

bb.l:                                             ; preds = %bb.n, %bb.k
  %i.aw = landingpad { ptr, i32 }
          cleanup
  %i.ax = load ptr, ptr %0, align 8, !tbaa !31    ; 2 uses
  %i.ay = icmp eq ptr %i.ax, %i.r
  br i1 %i.ay, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i18

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i18: ; preds = %bb.l
  %i.az = load i64, ptr %i.r, align 8, !tbaa !26
  %i.ba = add i64 %i.az, 1
  tail call void @_ZdlPvm(ptr noundef %i.ax, i64 noundef %i.ba) #35
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.l, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i18
  resume { ptr, i32 } %i.aw

bb.m:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9push_backEc.exit, %.lr.ph
  %i.bb = load i64, ptr %i.ae, align 8, !tbaa !32 ; 4 uses
  %i.bc = add i64 %i.bb, 1                        ; 3 uses
  %i.bd = load ptr, ptr %0, align 8, !tbaa !31    ; 2 uses
  %i.be = icmp eq ptr %i.bd, %i.r
  br i1 %i.be, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i23, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i20

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i23: ; preds = %bb.m
  %i.bf = icmp ult i64 %i.bb, 16
  tail call void @llvm.assume(i1 %i.bf)
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i21

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i20: ; preds = %bb.m
  %i.bg = load i64, ptr %i.r, align 8, !tbaa !26
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i21

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i21: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i20, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i23
  %i.bh = phi i64 [ %i.bg, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i20 ], [ 15, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i23 ]
  %i.bi = icmp ugt i64 %i.bc, %i.bh
  br i1 %i.bi, label %bb.n, label %bb.o

bb.n:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i21
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %i.bb, i64 noundef 0, ptr noundef null, i64 noundef 1)
          to label %.noexc24 unwind label %bb.l

.noexc24:                                         ; preds = %bb.n
  %.pre.i22 = load ptr, ptr %0, align 8, !tbaa !31
  br label %bb.o

bb.o:                                             ; preds = %.noexc24, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i21
  %i.bj = phi ptr [ %.pre.i22, %.noexc24 ], [ %i.bd, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i21 ]
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bj, i64 %i.bb
  store i8 %i.aj, ptr %i.bk, align 1, !tbaa !26
  store i64 %i.bc, ptr %i.ae, align 8, !tbaa !32
  %i.bl = load ptr, ptr %0, align 8, !tbaa !31
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bl, i64 %i.bc
  store i8 0, ptr %i.bm, align 1, !tbaa !26
  %i.bn = getelementptr inbounds nuw i8, ptr %.sroa.026.031, i64 1 ; 2 uses
  %.not29 = icmp eq ptr %i.bn, %i.ai
  br i1 %.not29, label %.loopexit, label %.lr.ph

.loopexit:                                        ; preds = %bb.o, %bb.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit17, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit
  ret void
}

; Function Attrs: nounwind
declare noundef i64 @_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4findEcm(ptr noundef nonnull align 8 dereferenceable(32), i8 noundef signext, i64 noundef) local_unnamed_addr #8

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN7VString15unquoteSVStringERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERS5_(ptr dead_on_unwind noalias nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(32) %2) local_unnamed_addr #4 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 26 uses
  store ptr %i.a, ptr %0, align 8, !tbaa !33
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 23 uses
  store i64 0, ptr %i.b, align 8, !tbaa !32
  store i8 0, ptr %i.a, align 8, !tbaa !26
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 3 uses
  %i.d = load i64, ptr %i.c, align 8, !tbaa !32
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7reserveEm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %i.d)
          to label %bb.b unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.b:                                             ; preds = %bb.a
  %i.e = load i64, ptr %i.c, align 8, !tbaa !32
  %.not112116 = icmp samesign eq i64 %i.e, 0
  br i1 %.not112116, label %.loopexit, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.b
  %i.f = load ptr, ptr %1, align 8, !tbaa !31
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.an
  %.0120 = phi i32 [ %.1, %bb.an ], [ 0, %.lr.ph.preheader ] ; 4 uses
  %.015119 = phi i8 [ %.2, %bb.an ], [ 0, %.lr.ph.preheader ] ; 13 uses
  %.019118 = phi i1 [ %.120, %bb.an ], [ false, %.lr.ph.preheader ]
  %.sroa.090.0117 = phi ptr [ %i.fn, %bb.an ], [ %i.f, %.lr.ph.preheader ] ; 17 uses
  %i.g = load i8, ptr %.sroa.090.0117, align 1, !tbaa !26 ; 6 uses
  br i1 %.019118, label %bb.c, label %bb.ah

bb.c:                                             ; preds = %.lr.ph
  %3 = add i8 %i.g, -48                           ; 2 uses
  %isdigit = icmp ult i8 %3, 10
  br i1 %isdigit, label %bb.d, label %bb.g

bb.d:                                             ; preds = %bb.c
  %i.h = shl i8 %.015119, 3
  %i.i = add i8 %3, %i.h                          ; 2 uses
  %i.j = add nsw i32 %.0120, 1                    ; 2 uses
  %i.k = icmp eq i32 %i.j, 3
  br i1 %i.k, label %bb.e, label %bb.an

bb.e:                                             ; preds = %bb.d
  %i.l = load i64, ptr %i.b, align 8, !tbaa !32   ; 4 uses
  %i.m = add i64 %i.l, 1                          ; 3 uses
  %i.n = load ptr, ptr %0, align 8, !tbaa !31     ; 2 uses
  %i.o = icmp eq ptr %i.n, %i.a
  br i1 %i.o, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i: ; preds = %bb.e
  %i.p = icmp ult i64 %i.l, 16
  tail call void @llvm.assume(i1 %i.p)
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.e
  %i.q = load i64, ptr %i.a, align 8, !tbaa !26
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i
  %i.r = phi i64 [ %i.q, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i ], [ 15, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i ]
  %i.s = icmp ugt i64 %i.m, %i.r
  br i1 %i.s, label %bb.f, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEc.exit

bb.f:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %i.l, i64 noundef 0, ptr noundef null, i64 noundef 1)
          to label %.noexc unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc:                                           ; preds = %bb.f
  %.pre.i.i = load ptr, ptr %0, align 8, !tbaa !31
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEc.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEc.exit: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i, %.noexc
  %i.t = phi ptr [ %.pre.i.i, %.noexc ], [ %i.n, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i ]
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 %i.l
  store i8 %i.i, ptr %i.u, align 1, !tbaa !26
  store i64 %i.m, ptr %i.b, align 8, !tbaa !32
  %i.v = load ptr, ptr %0, align 8, !tbaa !31
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 %i.m
  store i8 0, ptr %i.w, align 1, !tbaa !26
  br label %bb.an

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %bb.am, %bb.ak, %bb.ag, %bb.w, %bb.u, %bb.s, %bb.q, %bb.o, %bb.m, %bb.i, %bb.f, %_ZL15vl_decodexdigitc.exit71, %bb.a, %bb.ae, %bb.ad
  %lpad.loopexit.split-lp134 = landingpad { ptr, i32 }
          cleanup
  %i.x = load ptr, ptr %0, align 8, !tbaa !31     ; 2 uses
  %i.y = icmp eq ptr %i.x, %i.a
  br i1 %i.y, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

bb.g:                                             ; preds = %bb.c
  %.not22 = icmp eq i32 %.0120, 0
  br i1 %.not22, label %bb.k, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.z = load i64, ptr %i.b, align 8, !tbaa !32   ; 4 uses
  %i.aa = add i64 %i.z, 1                         ; 3 uses
  %i.ab = load ptr, ptr %0, align 8, !tbaa !31    ; 2 uses
  %i.ac = icmp eq ptr %i.ab, %i.a
  br i1 %i.ac, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i30, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i27

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i30: ; preds = %bb.h
  %i.ad = icmp ult i64 %i.z, 16
  tail call void @llvm.assume(i1 %i.ad)
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i28

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i27: ; preds = %bb.h
  %i.ae = load i64, ptr %i.a, align 8, !tbaa !26
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i28

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i28: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i27, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i30
  %i.af = phi i64 [ %i.ae, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i27 ], [ 15, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i30 ]
  %i.ag = icmp ugt i64 %i.aa, %i.af
  br i1 %i.ag, label %bb.i, label %bb.j

bb.i:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i28
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %i.z, i64 noundef 0, ptr noundef null, i64 noundef 1)
          to label %.noexc31 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc31:                                         ; preds = %bb.i
  %.pre.i.i29 = load ptr, ptr %0, align 8, !tbaa !31
  br label %bb.j

bb.j:                                             ; preds = %.noexc31, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i28
  %i.ah = phi ptr [ %.pre.i.i29, %.noexc31 ], [ %i.ab, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i28 ]
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 %i.z
  store i8 %.015119, ptr %i.ai, align 1, !tbaa !26
  store i64 %i.aa, ptr %i.b, align 8, !tbaa !32
  %i.aj = load ptr, ptr %0, align 8, !tbaa !31
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 %i.aa
  store i8 0, ptr %i.ak, align 1, !tbaa !26
  %i.al = getelementptr inbounds i8, ptr %.sroa.090.0117, i64 -1
  br label %bb.an

bb.k:                                             ; preds = %bb.g
  switch i8 %i.g, label %bb.ac [
    i8 110, label %bb.l
    i8 97, label %bb.n
    i8 102, label %bb.p
    i8 114, label %bb.r
    i8 116, label %bb.t
    i8 118, label %bb.v
    i8 120, label %bb.x
  ]

bb.l:                                             ; preds = %bb.k
  %i.am = load i64, ptr %i.b, align 8, !tbaa !32  ; 4 uses
  %i.an = add i64 %i.am, 1                        ; 3 uses
  %i.ao = load ptr, ptr %0, align 8, !tbaa !31    ; 2 uses
  %i.ap = icmp eq ptr %i.ao, %i.a
  br i1 %i.ap, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i36, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i33

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i36: ; preds = %bb.l
  %i.aq = icmp ult i64 %i.am, 16
  tail call void @llvm.assume(i1 %i.aq)
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i34

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i33: ; preds = %bb.l
  %i.ar = load i64, ptr %i.a, align 8, !tbaa !26
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i34

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i34: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i33, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i36
  %i.as = phi i64 [ %i.ar, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i33 ], [ 15, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i36 ]
  %i.at = icmp ugt i64 %i.an, %i.as
  br i1 %i.at, label %bb.m, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEc.exit38

bb.m:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i34
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %i.am, i64 noundef 0, ptr noundef null, i64 noundef 1)
          to label %.noexc37 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc37:                                         ; preds = %bb.m
  %.pre.i.i35 = load ptr, ptr %0, align 8, !tbaa !31
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEc.exit38

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEc.exit38: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i34, %.noexc37
  %i.au = phi ptr [ %.pre.i.i35, %.noexc37 ], [ %i.ao, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i34 ]
  %i.av = getelementptr inbounds nuw i8, ptr %i.au, i64 %i.am
  store i8 10, ptr %i.av, align 1, !tbaa !26
  store i64 %i.an, ptr %i.b, align 8, !tbaa !32
  %i.aw = load ptr, ptr %0, align 8, !tbaa !31
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aw, i64 %i.an
  store i8 0, ptr %i.ax, align 1, !tbaa !26
  br label %bb.an

bb.n:                                             ; preds = %bb.k
  %i.ay = load i64, ptr %i.b, align 8, !tbaa !32  ; 4 uses
  %i.az = add i64 %i.ay, 1                        ; 3 uses
  %i.ba = load ptr, ptr %0, align 8, !tbaa !31    ; 2 uses
  %i.bb = icmp eq ptr %i.ba, %i.a
  br i1 %i.bb, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i42, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i39

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i42: ; preds = %bb.n
  %i.bc = icmp ult i64 %i.ay, 16
  tail call void @llvm.assume(i1 %i.bc)
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i40

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i39: ; preds = %bb.n
  %i.bd = load i64, ptr %i.a, align 8, !tbaa !26
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i40

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i40: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i39, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i42
  %i.be = phi i64 [ %i.bd, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i39 ], [ 15, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i42 ]
  %i.bf = icmp ugt i64 %i.az, %i.be
  br i1 %i.bf, label %bb.o, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEc.exit44

bb.o:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i40
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %i.ay, i64 noundef 0, ptr noundef null, i64 noundef 1)
          to label %.noexc43 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc43:                                         ; preds = %bb.o
  %.pre.i.i41 = load ptr, ptr %0, align 8, !tbaa !31
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEc.exit44

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEc.exit44: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i40, %.noexc43
  %i.bg = phi ptr [ %.pre.i.i41, %.noexc43 ], [ %i.ba, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i40 ]
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bg, i64 %i.ay
  store i8 7, ptr %i.bh, align 1, !tbaa !26
  store i64 %i.az, ptr %i.b, align 8, !tbaa !32
  %i.bi = load ptr, ptr %0, align 8, !tbaa !31
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bi, i64 %i.az
  store i8 0, ptr %i.bj, align 1, !tbaa !26
  br label %bb.an

bb.p:                                             ; preds = %bb.k
  %i.bk = load i64, ptr %i.b, align 8, !tbaa !32  ; 4 uses
  %i.bl = add i64 %i.bk, 1                        ; 3 uses
  %i.bm = load ptr, ptr %0, align 8, !tbaa !31    ; 2 uses
  %i.bn = icmp eq ptr %i.bm, %i.a
  br i1 %i.bn, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i48, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i45

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i48: ; preds = %bb.p
  %i.bo = icmp ult i64 %i.bk, 16
  tail call void @llvm.assume(i1 %i.bo)
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i46

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i45: ; preds = %bb.p
  %i.bp = load i64, ptr %i.a, align 8, !tbaa !26
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i46

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i46: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i45, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i48
  %i.bq = phi i64 [ %i.bp, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i45 ], [ 15, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i48 ]
  %i.br = icmp ugt i64 %i.bl, %i.bq
  br i1 %i.br, label %bb.q, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEc.exit50

bb.q:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i46
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %i.bk, i64 noundef 0, ptr noundef null, i64 noundef 1)
          to label %.noexc49 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc49:                                         ; preds = %bb.q
  %.pre.i.i47 = load ptr, ptr %0, align 8, !tbaa !31
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEc.exit50

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEc.exit50: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i46, %.noexc49
  %i.bs = phi ptr [ %.pre.i.i47, %.noexc49 ], [ %i.bm, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i46 ]
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bs, i64 %i.bk
  store i8 12, ptr %i.bt, align 1, !tbaa !26
  store i64 %i.bl, ptr %i.b, align 8, !tbaa !32
  %i.bu = load ptr, ptr %0, align 8, !tbaa !31
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bu, i64 %i.bl
  store i8 0, ptr %i.bv, align 1, !tbaa !26
  br label %bb.an

bb.r:                                             ; preds = %bb.k
  %i.bw = load i64, ptr %i.b, align 8, !tbaa !32  ; 4 uses
  %i.bx = add i64 %i.bw, 1                        ; 3 uses
  %i.by = load ptr, ptr %0, align 8, !tbaa !31    ; 2 uses
  %i.bz = icmp eq ptr %i.by, %i.a
  br i1 %i.bz, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i54, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i51

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i54: ; preds = %bb.r
  %i.ca = icmp ult i64 %i.bw, 16
  tail call void @llvm.assume(i1 %i.ca)
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i52

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i51: ; preds = %bb.r
  %i.cb = load i64, ptr %i.a, align 8, !tbaa !26
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i52

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i52: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i51, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i54
  %i.cc = phi i64 [ %i.cb, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i51 ], [ 15, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i54 ]
  %i.cd = icmp ugt i64 %i.bx, %i.cc
  br i1 %i.cd, label %bb.s, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEc.exit56

bb.s:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i52
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %i.bw, i64 noundef 0, ptr noundef null, i64 noundef 1)
          to label %.noexc55 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc55:                                         ; preds = %bb.s
  %.pre.i.i53 = load ptr, ptr %0, align 8, !tbaa !31
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEc.exit56

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEc.exit56: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i52, %.noexc55
  %i.ce = phi ptr [ %.pre.i.i53, %.noexc55 ], [ %i.by, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i52 ]
  %i.cf = getelementptr inbounds nuw i8, ptr %i.ce, i64 %i.bw
  store i8 13, ptr %i.cf, align 1, !tbaa !26
  store i64 %i.bx, ptr %i.b, align 8, !tbaa !32
  %i.cg = load ptr, ptr %0, align 8, !tbaa !31
  %i.ch = getelementptr inbounds nuw i8, ptr %i.cg, i64 %i.bx
  store i8 0, ptr %i.ch, align 1, !tbaa !26
  br label %bb.an

bb.t:                                             ; preds = %bb.k
  %i.ci = load i64, ptr %i.b, align 8, !tbaa !32  ; 4 uses
  %i.cj = add i64 %i.ci, 1                        ; 3 uses
  %i.ck = load ptr, ptr %0, align 8, !tbaa !31    ; 2 uses
  %i.cl = icmp eq ptr %i.ck, %i.a
  br i1 %i.cl, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i60, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i57

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i60: ; preds = %bb.t
  %i.cm = icmp ult i64 %i.ci, 16
  tail call void @llvm.assume(i1 %i.cm)
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i58

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i57: ; preds = %bb.t
  %i.cn = load i64, ptr %i.a, align 8, !tbaa !26
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i58

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i58: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i57, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i60
  %i.co = phi i64 [ %i.cn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i57 ], [ 15, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i60 ]
  %i.cp = icmp ugt i64 %i.cj, %i.co
  br i1 %i.cp, label %bb.u, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEc.exit62

bb.u:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i58
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %i.ci, i64 noundef 0, ptr noundef null, i64 noundef 1)
          to label %.noexc61 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc61:                                         ; preds = %bb.u
  %.pre.i.i59 = load ptr, ptr %0, align 8, !tbaa !31
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEc.exit62

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEc.exit62: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i58, %.noexc61
  %i.cq = phi ptr [ %.pre.i.i59, %.noexc61 ], [ %i.ck, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i58 ]
  %i.cr = getelementptr inbounds nuw i8, ptr %i.cq, i64 %i.ci
  store i8 9, ptr %i.cr, align 1, !tbaa !26
  store i64 %i.cj, ptr %i.b, align 8, !tbaa !32
  %i.cs = load ptr, ptr %0, align 8, !tbaa !31
  %i.ct = getelementptr inbounds nuw i8, ptr %i.cs, i64 %i.cj
  store i8 0, ptr %i.ct, align 1, !tbaa !26
  br label %bb.an

bb.v:                                             ; preds = %bb.k
  %i.cu = load i64, ptr %i.b, align 8, !tbaa !32  ; 4 uses
  %i.cv = add i64 %i.cu, 1                        ; 3 uses
  %i.cw = load ptr, ptr %0, align 8, !tbaa !31    ; 2 uses
  %i.cx = icmp eq ptr %i.cw, %i.a
  br i1 %i.cx, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i66, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i63

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i66: ; preds = %bb.v
  %i.cy = icmp ult i64 %i.cu, 16
  tail call void @llvm.assume(i1 %i.cy)
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i64

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i63: ; preds = %bb.v
  %i.cz = load i64, ptr %i.a, align 8, !tbaa !26
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i64

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i64: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i63, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i66
  %i.da = phi i64 [ %i.cz, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i63 ], [ 15, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i66 ]
  %i.db = icmp ugt i64 %i.cv, %i.da
  br i1 %i.db, label %bb.w, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEc.exit68

bb.w:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i64
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %i.cu, i64 noundef 0, ptr noundef null, i64 noundef 1)
          to label %.noexc67 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc67:                                         ; preds = %bb.w
  %.pre.i.i65 = load ptr, ptr %0, align 8, !tbaa !31
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEc.exit68

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEc.exit68: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i64, %.noexc67
  %i.dc = phi ptr [ %.pre.i.i65, %.noexc67 ], [ %i.cw, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i64 ]
  %i.dd = getelementptr inbounds nuw i8, ptr %i.dc, i64 %i.cu
  store i8 11, ptr %i.dd, align 1, !tbaa !26
  store i64 %i.cv, ptr %i.b, align 8, !tbaa !32
  %i.de = load ptr, ptr %0, align 8, !tbaa !31
  %i.df = getelementptr inbounds nuw i8, ptr %i.de, i64 %i.cv
  store i8 0, ptr %i.df, align 1, !tbaa !26
  br label %bb.an

bb.x:                                             ; preds = %bb.k
  %i.dg = getelementptr inbounds nuw i8, ptr %.sroa.090.0117, i64 1
  %i.dh = load i8, ptr %i.dg, align 1, !tbaa !26
  %i.di = sext i8 %i.dh to i32                    ; 3 uses
  %i.dj = tail call i32 @isxdigit(i32 noundef %i.di) #36
  %.not23 = icmp eq i32 %i.dj, 0
  br i1 %.not23, label %bb.ac, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.dk = getelementptr inbounds nuw i8, ptr %.sroa.090.0117, i64 2 ; 2 uses
  %i.dl = load i8, ptr %i.dk, align 1, !tbaa !26
  %i.dm = sext i8 %i.dl to i32                    ; 3 uses
  %i.dn = tail call i32 @isxdigit(i32 noundef %i.dm) #36
  %.not24 = icmp eq i32 %i.dn, 0
  br i1 %.not24, label %bb.ac, label %bb.z

bb.z:                                             ; preds = %bb.y
  %isdigittmp.i = add nsw i32 %i.di, -48          ; 2 uses
  %isdigit.i = icmp ult i32 %isdigittmp.i, 10
  br i1 %isdigit.i, label %_ZL15vl_decodexdigitc.exit, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.do = tail call i32 @tolower(i32 noundef %i.di) #36
  %i.dp = add nsw i32 %i.do, -87
  br label %_ZL15vl_decodexdigitc.exit

_ZL15vl_decodexdigitc.exit:                       ; preds = %bb.z, %bb.aa
  %i.dq = phi i32 [ %i.dp, %bb.aa ], [ %isdigittmp.i, %bb.z ]
  %i.dr = shl nsw i32 %i.dq, 4
  %isdigittmp.i69 = add nsw i32 %i.dm, -48        ; 2 uses
  %isdigit.i70 = icmp ult i32 %isdigittmp.i69, 10
  br i1 %isdigit.i70, label %_ZL15vl_decodexdigitc.exit71, label %bb.ab

bb.ab:                                            ; preds = %_ZL15vl_decodexdigitc.exit
  %i.ds = tail call i32 @tolower(i32 noundef %i.dm) #36
  %i.dt = add nsw i32 %i.ds, -87
  br label %_ZL15vl_decodexdigitc.exit71

_ZL15vl_decodexdigitc.exit71:                     ; preds = %_ZL15vl_decodexdigitc.exit, %bb.ab
  %i.du = phi i32 [ %i.dt, %bb.ab ], [ %isdigittmp.i69, %_ZL15vl_decodexdigitc.exit ]
  %i.dv = add nsw i32 %i.du, %i.dr
  %i.dw = trunc i32 %i.dv to i8
  %i.dx = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEc(ptr noundef nonnull align 8 dereferenceable(32) %0, i8 noundef signext %i.dw)
          to label %bb.an unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 0 uses

bb.ac:                                            ; preds = %bb.k, %bb.y, %bb.x
  %4 = sext i8 %i.g to i32
  %i.dy = tail call i32 @isalnum(i32 noundef %4) #36
  %.not25 = icmp eq i32 %i.dy, 0
  br i1 %.not25, label %bb.af, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.dz = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc(ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull @.str.2)
          to label %bb.ae unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 0 uses

bb.ae:                                            ; preds = %bb.ad
  %i.ea = load i8, ptr %.sroa.090.0117, align 1, !tbaa !26
  %i.eb = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEc(ptr noundef nonnull align 8 dereferenceable(32) %2, i8 noundef signext %i.ea)
          to label %.loopexit unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 0 uses

bb.af:                                            ; preds = %bb.ac
  %i.ec = load i64, ptr %i.b, align 8, !tbaa !32  ; 4 uses
  %i.ed = add i64 %i.ec, 1                        ; 3 uses
  %i.ee = load ptr, ptr %0, align 8, !tbaa !31    ; 2 uses
  %i.ef = icmp eq ptr %i.ee, %i.a
  br i1 %i.ef, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i75, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i72

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i75: ; preds = %bb.af
  %i.eg = icmp ult i64 %i.ec, 16
  tail call void @llvm.assume(i1 %i.eg)
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i73

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i72: ; preds = %bb.af
  %i.eh = load i64, ptr %i.a, align 8, !tbaa !26
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i73

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i73: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i72, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i75
  %i.ei = phi i64 [ %i.eh, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i72 ], [ 15, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i75 ]
  %i.ej = icmp ugt i64 %i.ed, %i.ei
  br i1 %i.ej, label %bb.ag, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEc.exit77

bb.ag:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i73
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %i.ec, i64 noundef 0, ptr noundef null, i64 noundef 1)
          to label %.noexc76 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc76:                                         ; preds = %bb.ag
  %.pre.i.i74 = load ptr, ptr %0, align 8, !tbaa !31
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEc.exit77

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEc.exit77: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i73, %.noexc76
  %i.ek = phi ptr [ %.pre.i.i74, %.noexc76 ], [ %i.ee, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i73 ]
  %i.el = getelementptr inbounds nuw i8, ptr %i.ek, i64 %i.ec
  store i8 %i.g, ptr %i.el, align 1, !tbaa !26
  store i64 %i.ed, ptr %i.b, align 8, !tbaa !32
  %i.em = load ptr, ptr %0, align 8, !tbaa !31
  %i.en = getelementptr inbounds nuw i8, ptr %i.em, i64 %i.ed
  store i8 0, ptr %i.en, align 1, !tbaa !26
  br label %bb.an

bb.ah:                                            ; preds = %.lr.ph
  %i.eo = icmp eq i8 %i.g, 92
  br i1 %i.eo, label %bb.ai, label %bb.al

bb.ai:                                            ; preds = %bb.ah
  %.not = icmp eq i32 %.0120, 0
  br i1 %.not, label %bb.an, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  %i.ep = load i64, ptr %i.b, align 8, !tbaa !32  ; 4 uses
  %i.eq = add i64 %i.ep, 1                        ; 3 uses
  %i.er = load ptr, ptr %0, align 8, !tbaa !31    ; 2 uses
  %i.es = icmp eq ptr %i.er, %i.a
  br i1 %i.es, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i81, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i78

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i81: ; preds = %bb.aj
  %i.et = icmp ult i64 %i.ep, 16
  tail call void @llvm.assume(i1 %i.et)
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i79

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i78: ; preds = %bb.aj
  %i.eu = load i64, ptr %i.a, align 8, !tbaa !26
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i79

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i79: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i78, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i81
  %i.ev = phi i64 [ %i.eu, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i78 ], [ 15, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i81 ]
  %i.ew = icmp ugt i64 %i.eq, %i.ev
  br i1 %i.ew, label %bb.ak, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEc.exit83

bb.ak:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i79
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %i.ep, i64 noundef 0, ptr noundef null, i64 noundef 1)
          to label %.noexc82 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc82:                                         ; preds = %bb.ak
  %.pre.i.i80 = load ptr, ptr %0, align 8, !tbaa !31
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEc.exit83

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEc.exit83: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i79, %.noexc82
  %i.ex = phi ptr [ %.pre.i.i80, %.noexc82 ], [ %i.er, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i79 ]
  %i.ey = getelementptr inbounds nuw i8, ptr %i.ex, i64 %i.ep
  store i8 %.015119, ptr %i.ey, align 1, !tbaa !26
  store i64 %i.eq, ptr %i.b, align 8, !tbaa !32
  %i.ez = load ptr, ptr %0, align 8, !tbaa !31
  %i.fa = getelementptr inbounds nuw i8, ptr %i.ez, i64 %i.eq
  store i8 0, ptr %i.fa, align 1, !tbaa !26
  br label %bb.an

bb.al:                                            ; preds = %bb.ah
  %i.fb = load i64, ptr %i.b, align 8, !tbaa !32  ; 4 uses
  %i.fc = add i64 %i.fb, 1                        ; 3 uses
  %i.fd = load ptr, ptr %0, align 8, !tbaa !31    ; 2 uses
  %i.fe = icmp eq ptr %i.fd, %i.a
  br i1 %i.fe, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i87, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i84

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i87: ; preds = %bb.al
  %i.ff = icmp ult i64 %i.fb, 16
  tail call void @llvm.assume(i1 %i.ff)
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i85

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i84: ; preds = %bb.al
  %i.fg = load i64, ptr %i.a, align 8, !tbaa !26
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i85

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i85: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i84, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i87
  %i.fh = phi i64 [ %i.fg, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i84 ], [ 15, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i87 ]
  %i.fi = icmp ugt i64 %i.fc, %i.fh
  br i1 %i.fi, label %bb.am, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEc.exit89

bb.am:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i85
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %i.fb, i64 noundef 0, ptr noundef null, i64 noundef 1)
          to label %.noexc88 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc88:                                         ; preds = %bb.am
  %.pre.i.i86 = load ptr, ptr %0, align 8, !tbaa !31
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEc.exit89

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEc.exit89: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i85, %.noexc88
  %i.fj = phi ptr [ %.pre.i.i86, %.noexc88 ], [ %i.fd, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i85 ]
  %i.fk = getelementptr inbounds nuw i8, ptr %i.fj, i64 %i.fb
  store i8 %i.g, ptr %i.fk, align 1, !tbaa !26
  store i64 %i.fc, ptr %i.b, align 8, !tbaa !32
  %i.fl = load ptr, ptr %0, align 8, !tbaa !31
  %i.fm = getelementptr inbounds nuw i8, ptr %i.fl, i64 %i.fc
  store i8 0, ptr %i.fm, align 1, !tbaa !26
  br label %bb.an

bb.an:                                            ; preds = %_ZL15vl_decodexdigitc.exit71, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEc.exit89, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEc.exit83, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEc.exit77, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEc.exit68, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEc.exit62, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEc.exit56, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEc.exit50, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEc.exit44, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEc.exit38, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEc.exit, %bb.ai, %bb.d, %bb.j
  %.sroa.090.1 = phi ptr [ %.sroa.090.0117, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEc.exit89 ], [ %.sroa.090.0117, %bb.d ], [ %i.al, %bb.j ], [ %.sroa.090.0117, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEc.exit38 ], [ %.sroa.090.0117, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEc.exit44 ], [ %.sroa.090.0117, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEc.exit50 ], [ %.sroa.090.0117, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEc.exit56 ], [ %.sroa.090.0117, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEc.exit62 ], [ %.sroa.090.0117, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEc.exit68 ], [ %.sroa.090.0117, %bb.ai ], [ %.sroa.090.0117, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEc.exit77 ], [ %.sroa.090.0117, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEc.exit ], [ %.sroa.090.0117, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEc.exit83 ], [ %i.dk, %_ZL15vl_decodexdigitc.exit71 ]
  %.120 = phi i1 [ false, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEc.exit89 ], [ true, %bb.d ], [ false, %bb.j ], [ false, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEc.exit38 ], [ false, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEc.exit44 ], [ false, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEc.exit50 ], [ false, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEc.exit56 ], [ false, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEc.exit62 ], [ false, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEc.exit68 ], [ true, %bb.ai ], [ false, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEc.exit77 ], [ false, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEc.exit ], [ true, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEc.exit83 ], [ false, %_ZL15vl_decodexdigitc.exit71 ]
  %.2 = phi i8 [ %.015119, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEc.exit89 ], [ %i.i, %bb.d ], [ 0, %bb.j ], [ %.015119, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEc.exit38 ], [ %.015119, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEc.exit44 ], [ %.015119, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEc.exit50 ], [ %.015119, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEc.exit56 ], [ %.015119, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEc.exit62 ], [ %.015119, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEc.exit68 ], [ %.015119, %bb.ai ], [ %.015119, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEc.exit77 ], [ 0, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEc.exit ], [ 0, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEc.exit83 ], [ %.015119, %_ZL15vl_decodexdigitc.exit71 ]
  %.1 = phi i32 [ %.0120, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEc.exit89 ], [ %i.j, %bb.d ], [ 0, %bb.j ], [ 0, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEc.exit38 ], [ 0, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEc.exit44 ], [ 0, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEc.exit50 ], [ 0, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEc.exit56 ], [ 0, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEc.exit62 ], [ 0, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEc.exit68 ], [ 0, %bb.ai ], [ 0, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEc.exit77 ], [ 0, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEc.exit ], [ 0, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEc.exit83 ], [ 0, %_ZL15vl_decodexdigitc.exit71 ]
  %i.fn = getelementptr inbounds nuw i8, ptr %.sroa.090.1, i64 1 ; 2 uses
  %i.fo = load ptr, ptr %1, align 8, !tbaa !31
  %i.fp = load i64, ptr %i.c, align 8, !tbaa !32
  %i.fq = getelementptr inbounds nuw i8, ptr %i.fo, i64 %i.fp
  %.not112 = icmp eq ptr %i.fn, %i.fq
  br i1 %.not112, label %.loopexit, label %.lr.ph, !llvm.loop !160

.loopexit:                                        ; preds = %bb.an, %bb.b, %bb.ae
  ret void

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp
  %i.fr = load i64, ptr %i.a, align 8, !tbaa !26
  %i.fs = add i64 %i.fr, 1
  tail call void @_ZdlPvm(ptr noundef %i.x, i64 noundef %i.fs) #35
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  resume { ptr, i32 } %lpad.loopexit.split-lp134
}

declare void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7reserveEm(ptr noundef nonnull align 8 dereferenceable(32), i64 noundef) local_unnamed_addr #9

; Function Attrs: mustprogress nofree nounwind willreturn memory(read)
declare i32 @isxdigit(i32 noundef) local_unnamed_addr #7

; Function Attrs: mustprogress nofree nounwind willreturn memory(read)
declare i32 @isalnum(i32 noundef) local_unnamed_addr #7

; Function Attrs: mustprogress uwtable
declare noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef) local_unnamed_addr #4 align 2

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN7VString16spaceUnprintableERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %1) #4 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 7 uses
  store ptr %i.a, ptr %0, align 8, !tbaa !33
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  store i64 0, ptr %i.b, align 8, !tbaa !32
  store i8 0, ptr %i.a, align 8, !tbaa !26
  %i.c = load ptr, ptr %1, align 8, !tbaa !31     ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.e = load i64, ptr %i.d, align 8, !tbaa !32   ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.c, i64 %i.e
  %.not1617 = icmp samesign eq i64 %i.e, 0
  br i1 %.not1617, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEc.exit, %bb.a
  ret void

.lr.ph:                                           ; preds = %bb.a, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEc.exit
  %.sroa.013.018 = phi ptr [ %i.ad, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEc.exit ], [ %i.c, %bb.a ] ; 2 uses
  %i.g = load i8, ptr %.sroa.013.018, align 1, !tbaa !26 ; 3 uses
  %i.h = sext i8 %i.g to i32
  %i.i = tail call i32 @isprint(i32 noundef %i.h) #36
  %.not = icmp eq i32 %i.i, 0
  %i.j = load i64, ptr %i.b, align 8, !tbaa !32   ; 6 uses
  %i.k = add i64 %i.j, 1                          ; 4 uses
  %i.l = load ptr, ptr %0, align 8, !tbaa !31     ; 3 uses
end_hunk_0
