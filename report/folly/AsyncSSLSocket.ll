Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/folly/original/AsyncSSLSocket?download=true
inline.NumInlined: 2912
inline.NumDeleted: 1314
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0_@_ZN5folly14AsyncSSLSocket16parseClientAlpnsEPS0_RNS_2io6CursorERt:bb.a
  %i.bb = icmp eq ptr %i.ba, %i.n
  br i1 %i.bb, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit16, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i14

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i14: ; preds = %bb.m
  %i.bc = load i64, ptr %i.n, align 8, !tbaa !11251
  %i.bd = add i64 %i.bc, 1
  call void @_ZdlPvm(ptr noundef %i.ba, i64 noundef %i.bd) #38
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit16

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit16: ; preds = %bb.m, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i14
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #37
  resume { ptr, i32 } %lpad.phi

._crit_edge:                                      ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZN5folly2io10CursorBaseINS0_6CursorEKNS_5IOBufEE4skipEm.exit
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN5folly2io10CursorBaseINS0_6CursorEKNS_5IOBufEE15readFixedStringB5cxx11Em(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef nonnull align 8 dereferenceable(56) %1, i64 noundef %2) local_unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 6 uses
  store ptr %i.a, ptr %0, align 8, !tbaa !11252
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  store i64 0, ptr %i.b, align 8, !tbaa !11250
  store i8 0, ptr %i.a, align 8, !tbaa !11251
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7reserveEm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %2)
          to label %bb.b unwind label %bb.k

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !11708
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 3 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !11707 ; 4 uses
  %i.g = ptrtoint ptr %i.d to i64
  %i.h = ptrtoint ptr %i.f to i64
  %i.i = sub i64 %i.g, %i.h
  %.not = icmp ult i64 %i.i, %2
  br i1 %.not, label %bb.l, label %bb.c, !prof !11309

bb.c:                                             ; preds = %bb.b
  %i.j = load i64, ptr %i.b, align 8, !tbaa !11250 ; 5 uses
  %i.k = sub i64 9223372036854775807, %i.j
  %i.l = icmp ult i64 %i.k, %2
  br i1 %i.l, label %bb.d, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i

bb.d:                                             ; preds = %bb.c
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.141) #41
          to label %.noexc unwind label %bb.k

.noexc:                                           ; preds = %bb.d
  unreachable

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i: ; preds = %bb.c
  %i.m = add i64 %i.j, %2                         ; 3 uses
  %i.n = load ptr, ptr %0, align 8, !tbaa !11246  ; 2 uses
  %i.o = icmp eq ptr %i.n, %i.a
  br i1 %i.o, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i
  %i.p = icmp ult i64 %i.j, 16
  tail call void @llvm.assume(i1 %i.p)
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i
  %i.q = load i64, ptr %i.a, align 8, !tbaa !11251
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i
  %i.r = phi i64 [ %i.q, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i ], [ 15, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i ]
  %.not.i.i = icmp ugt i64 %i.m, %i.r
  br i1 %.not.i.i, label %bb.i, label %bb.e

bb.e:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i
  %.not8.i.i = icmp eq i64 %2, 0
  br i1 %.not8.i.i, label %bb.j, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.s = getelementptr inbounds nuw i8, ptr %i.n, i64 %i.j ; 2 uses
  %cond.i.i = icmp eq i64 %2, 1
  br i1 %cond.i.i, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.t = load i8, ptr %i.f, align 1, !tbaa !11251
  store i8 %i.t, ptr %i.s, align 1, !tbaa !11251
  br label %bb.j

bb.h:                                             ; preds = %bb.f
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.s, ptr align 1 %i.f, i64 %2, i1 false)
  br label %bb.j

bb.i:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %i.j, i64 noundef 0, ptr noundef %i.f, i64 noundef %2)
          to label %bb.j unwind label %bb.k

bb.j:                                             ; preds = %bb.h, %bb.g, %bb.e, %bb.i
  store i64 %i.m, ptr %i.b, align 8, !tbaa !11250
  %i.u = load ptr, ptr %0, align 8, !tbaa !11246
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 %i.m
  store i8 0, ptr %i.v, align 1, !tbaa !11251
  %i.w = load ptr, ptr %i.e, align 8, !tbaa !11707
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 %2
  store ptr %i.x, ptr %i.e, align 8, !tbaa !11707
  br label %bb.m

bb.k:                                             ; preds = %bb.i, %bb.d, %bb.l, %bb.a
  %i.y = landingpad { ptr, i32 }
          cleanup
  %i.z = load ptr, ptr %0, align 8, !tbaa !11246  ; 2 uses
  %i.aa = icmp eq ptr %i.z, %i.a
  br i1 %i.aa, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.k
  %i.ab = load i64, ptr %i.a, align 8, !tbaa !11251
  %i.ac = add i64 %i.ab, 1
  tail call void @_ZdlPvm(ptr noundef %i.z, i64 noundef %i.ac) #38
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.k, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  resume { ptr, i32 } %i.y

bb.l:                                             ; preds = %bb.b
  invoke void @_ZN5folly2io10CursorBaseINS0_6CursorEKNS_5IOBufEE19readFixedStringSlowEPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEm(ptr noundef nonnull align 8 dereferenceable(56) %1, ptr noundef nonnull %0, i64 noundef %2)
          to label %bb.m unwind label %bb.k

bb.m:                                             ; preds = %bb.j, %bb.l
  ret void
}

; Function Attrs: mustprogress noinline uwtable
define linkonce_odr void @_ZN5folly2io10CursorBaseINS0_6CursorEKNS_5IOBufEE8skipSlowEm(ptr noundef nonnull align 8 dereferenceable(56) %0, i64 noundef %1) local_unnamed_addr #24 comdat align 2 {
bb.a:
  %i.a = tail call noundef i64 @_ZN5folly2io10CursorBaseINS0_6CursorEKNS_5IOBufEE14skipAtMostSlowEm(ptr noundef nonnull align 8 dereferenceable(56) %0, i64 noundef %1)
  %.not = icmp eq i64 %i.a, %1
  br i1 %.not, label %bb.c, label %bb.b, !prof !11740

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN5folly6detail16throw_exception_ISt12out_of_rangeJPKcEEEvDpT0_(ptr noundef nonnull @.str.140) #23
  unreachable

bb.c:                                             ; preds = %bb.a
  ret void
}

; Function Attrs: mustprogress noinline uwtable
define linkonce_odr noundef i64 @_ZN5folly2io10CursorBaseINS0_6CursorEKNS_5IOBufEE14skipAtMostSlowEm(ptr noundef nonnull align 8 dereferenceable(56) %0, i64 noundef %1) local_unnamed_addr #24 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 5 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 5 uses
  %.promoted = load ptr, ptr %i.a, align 8, !tbaa !11708 ; 3 uses
  %.promoted28 = load ptr, ptr %i.b, align 8, !tbaa !11707 ; 2 uses
  %i.c = ptrtoint ptr %.promoted to i64           ; 2 uses
  %i.d = ptrtoint ptr %.promoted28 to i64
  %i.e = sub i64 %i.c, %i.d                       ; 4 uses
  %.not30 = icmp ult i64 %i.e, %1
  br i1 %.not30, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %.promoted29 = load ptr, ptr %0, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !11704 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 3 uses
  %.promoted36 = load i64, ptr %i.h, align 8      ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %.promoted29, i64 32
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !11262 ; 2 uses
  %i.m = icmp eq ptr %i.l, %i.g
  %i.n = icmp eq i64 %.promoted36, 0
  %or.cond67 = select i1 %i.m, i1 true, i1 %i.n, !prof !12850
  br i1 %or.cond67, label %.thread, label %.lr.ph69, !prof !12851

.lr.ph69:                                         ; preds = %.lr.ph
  %.promoted38 = load i64, ptr %i.j, align 8
  %.promoted37 = load ptr, ptr %i.i, align 8
  br label %bb.c

bb.b:                                             ; preds = %._crit_edge43
  %i.o = add i64 %i.am, %i.u                      ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.t, i64 32
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !11262 ; 2 uses
  %i.r = icmp eq ptr %i.q, %i.g
  %i.s = icmp eq i64 %i.ai, 0
  %or.cond = select i1 %i.r, i1 true, i1 %i.s, !prof !12850
  br i1 %or.cond, label %.thread.loopexit, label %bb.c, !prof !12852, !llvm.loop !12853

bb.c:                                             ; preds = %.lr.ph69, %bb.b
  %i.t = phi ptr [ %i.l, %.lr.ph69 ], [ %i.q, %bb.b ] ; 5 uses
  %i.u = phi i64 [ %i.e, %.lr.ph69 ], [ %i.o, %bb.b ] ; 2 uses
  %.0123168 = phi i64 [ %1, %.lr.ph69 ], [ %i.ak, %bb.b ]
  %i.v = phi i64 [ %i.c, %.lr.ph69 ], [ %i.al, %bb.b ]
  %i.w = phi i64 [ %i.e, %.lr.ph69 ], [ %i.am, %bb.b ]
  %i.x = phi i64 [ %.promoted36, %.lr.ph69 ], [ %i.ai, %bb.b ] ; 3 uses
  %i.y = phi ptr [ %.promoted37, %.lr.ph69 ], [ %i.ae, %bb.b ]
  %i.z = phi i64 [ %.promoted38, %.lr.ph69 ], [ %i.ac, %bb.b ]
  %i.aa = ptrtoint ptr %i.y to i64
  %i.ab = sub i64 %i.v, %i.aa
  %i.ac = add i64 %i.ab, %i.z                     ; 3 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %i.t, i64 8
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !11265 ; 7 uses
  %i.af = load i64, ptr %i.t, align 8, !tbaa !11269
  %i.ag = getelementptr inbounds nuw i8, ptr %i.ae, i64 %i.af ; 4 uses
  store ptr %i.ag, ptr %i.a, align 8, !tbaa !11708
  %.not.i = icmp eq i64 %i.x, -1
  %.pre = ptrtoint ptr %i.ae to i64               ; 2 uses
  br i1 %.not.i, label %._crit_edge43, label %2

2:                                                ; preds = %bb.c
  %3 = add i64 %i.x, %.pre                        ; 2 uses
  %4 = ptrtoint ptr %i.ag to i64                  ; 2 uses
  %5 = icmp ult i64 %3, %4
  br i1 %5, label %6, label %bb.d

6:                                                ; preds = %2
  %7 = getelementptr inbounds nuw i8, ptr %i.ae, i64 %i.x ; 3 uses
  store ptr %7, ptr %i.a, align 8, !tbaa !11708
  %.pre.i = ptrtoint ptr %7 to i64
  br label %bb.d

bb.d:                                             ; preds = %6, %2
  %8 = phi ptr [ %7, %6 ], [ %i.ag, %2 ]
  %.pre-phi.i = phi i64 [ %.pre.i, %6 ], [ %4, %2 ]
  %i.ah = sub i64 %3, %.pre-phi.i                 ; 2 uses
  store i64 %i.ah, ptr %i.h, align 8, !tbaa !11705
  br label %._crit_edge43

.thread.loopexit:                                 ; preds = %bb.b
  store i64 %i.ac, ptr %i.j, align 8, !tbaa !12813
  store ptr %i.t, ptr %0, align 8, !tbaa !11702
  store ptr %i.ae, ptr %i.i, align 8, !tbaa !11706
  br label %.thread

.thread:                                          ; preds = %.thread.loopexit, %.lr.ph
  %.lcssa62 = phi ptr [ %.promoted, %.lr.ph ], [ %i.aj, %.thread.loopexit ]
  %.lcssa = phi i64 [ %i.e, %.lr.ph ], [ %i.o, %.thread.loopexit ]
  store ptr %.lcssa62, ptr %i.b, align 8, !tbaa !11707
  br label %bb.l

._crit_edge43:                                    ; preds = %bb.c, %bb.d
  %i.ai = phi i64 [ %i.ah, %bb.d ], [ -1, %bb.c ] ; 2 uses
  %i.aj = phi ptr [ %8, %bb.d ], [ %i.ag, %bb.c ] ; 3 uses
  %i.ak = sub i64 %.0123168, %i.w                 ; 3 uses
  %i.al = ptrtoint ptr %i.aj to i64               ; 2 uses
  %i.am = sub i64 %i.al, %.pre                    ; 3 uses
  %.not = icmp ult i64 %i.am, %i.ak
  br i1 %.not, label %bb.b, label %._crit_edge.loopexit, !llvm.loop !12853

._crit_edge.loopexit:                             ; preds = %._crit_edge43
  store i64 %i.ac, ptr %i.j, align 8, !tbaa !12813
  store ptr %i.t, ptr %0, align 8, !tbaa !11702
  store ptr %i.ae, ptr %i.i, align 8, !tbaa !11706
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %bb.a
  %i.an = phi ptr [ %.promoted, %bb.a ], [ %i.aj, %._crit_edge.loopexit ] ; 3 uses
  %i.ao = phi ptr [ %.promoted28, %bb.a ], [ %i.ae, %._crit_edge.loopexit ]
  %.012.lcssa = phi i64 [ %1, %bb.a ], [ %i.ak, %._crit_edge.loopexit ] ; 2 uses
  %.011.lcssa = phi i64 [ 0, %bb.a ], [ %i.u, %._crit_edge.loopexit ]
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 %.012.lcssa ; 2 uses
  store ptr %i.ap, ptr %i.b, align 8, !tbaa !11707
  %i.aq = icmp eq ptr %i.ap, %i.an
  br i1 %i.aq, label %bb.e, label %_ZN5folly2io10CursorBaseINS0_6CursorEKNS_5IOBufEE20advanceBufferIfEmptyEv.exit

bb.e:                                             ; preds = %._crit_edge
  %i.ar = load ptr, ptr %0, align 8, !tbaa !11702
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 32
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !11262 ; 4 uses
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.av = load ptr, ptr %i.au, align 8, !tbaa !11704
  %i.aw = icmp eq ptr %i.at, %i.av
  br i1 %i.aw, label %bb.g, label %bb.f, !prof !11309

bb.f:                                             ; preds = %bb.e
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.ay = load i64, ptr %i.ax, align 8, !tbaa !11705 ; 4 uses
  %i.az = icmp eq i64 %i.ay, 0
  br i1 %i.az, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f, %bb.e
  store ptr %i.an, ptr %i.b, align 8, !tbaa !11707
  br label %_ZN5folly2io10CursorBaseINS0_6CursorEKNS_5IOBufEE20advanceBufferIfEmptyEv.exit

bb.h:                                             ; preds = %bb.f
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.bb = load ptr, ptr %i.ba, align 8, !tbaa !11706
  %i.bc = ptrtoint ptr %i.an to i64
  %i.bd = ptrtoint ptr %i.bb to i64
  %i.be = sub i64 %i.bc, %i.bd
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.bg = load i64, ptr %i.bf, align 8, !tbaa !12813
  %i.bh = add i64 %i.be, %i.bg
  store i64 %i.bh, ptr %i.bf, align 8, !tbaa !12813
  store ptr %i.at, ptr %0, align 8, !tbaa !11702
  %i.bi = getelementptr inbounds nuw i8, ptr %i.at, i64 8
  %i.bj = load ptr, ptr %i.bi, align 8, !tbaa !11265 ; 5 uses
  store ptr %i.bj, ptr %i.ba, align 8, !tbaa !11706
  store ptr %i.bj, ptr %i.b, align 8, !tbaa !11707
  %i.bk = load i64, ptr %i.at, align 8, !tbaa !11269
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bj, i64 %i.bk ; 2 uses
  store ptr %i.bl, ptr %i.a, align 8, !tbaa !11708
  %.not.i.i = icmp eq i64 %i.ay, -1
  br i1 %.not.i.i, label %_ZN5folly2io10CursorBaseINS0_6CursorEKNS_5IOBufEE20advanceBufferIfEmptyEv.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.bm = ptrtoint ptr %i.bj to i64
  %i.bn = add i64 %i.ay, %i.bm                    ; 2 uses
  %i.bo = ptrtoint ptr %i.bl to i64               ; 2 uses
  %i.bp = icmp ult i64 %i.bn, %i.bo
  br i1 %i.bp, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bj, i64 %i.ay ; 2 uses
  store ptr %i.bq, ptr %i.a, align 8, !tbaa !11708
  %.pre.i.i = ptrtoint ptr %i.bq to i64
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  %.pre-phi.i.i = phi i64 [ %.pre.i.i, %bb.j ], [ %i.bo, %bb.i ]
  %i.br = sub i64 %i.bn, %.pre-phi.i.i
  store i64 %i.br, ptr %i.ax, align 8, !tbaa !11705
  br label %_ZN5folly2io10CursorBaseINS0_6CursorEKNS_5IOBufEE20advanceBufferIfEmptyEv.exit

_ZN5folly2io10CursorBaseINS0_6CursorEKNS_5IOBufEE20advanceBufferIfEmptyEv.exit: ; preds = %._crit_edge, %bb.g, %bb.h, %bb.k
  %i.bs = add i64 %.011.lcssa, %.012.lcssa
  br label %bb.l

bb.l:                                             ; preds = %.thread, %_ZN5folly2io10CursorBaseINS0_6CursorEKNS_5IOBufEE20advanceBufferIfEmptyEv.exit
  %.114 = phi i64 [ %i.bs, %_ZN5folly2io10CursorBaseINS0_6CursorEKNS_5IOBufEE20advanceBufferIfEmptyEv.exit ], [ %.lcssa, %.thread ]
  ret i64 %.114
}

; Function Attrs: cold mustprogress noinline noreturn optsize uwtable
define linkonce_odr void @_ZN5folly6detail16throw_exception_ISt12out_of_rangeJPKcEEEvDpT0_(ptr noundef %0) local_unnamed_addr #27 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"class.std::out_of_range", align 8 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #37
  call void @_ZNSt12out_of_rangeC1EPKc(ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef %0)
  invoke void @_ZN5folly15throw_exceptionISt12out_of_rangeEEvOT_(ptr noundef nonnull align 8 dereferenceable(16) %1) #23
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %bb.a
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.a = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt12out_of_rangeD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %1) #37
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #37
  resume { ptr, i32 } %i.a
}

; Function Attrs: cold mustprogress noinline noreturn optsize uwtable
define linkonce_odr void @_ZN5folly15throw_exceptionISt12out_of_rangeEEvOT_(ptr noundef nonnull align 8 dereferenceable(16) %0) local_unnamed_addr #27 comdat {
bb.a:
  %i.a = tail call ptr @__cxa_allocate_exception(i64 16) #37 ; 2 uses
  tail call void @_ZNSt12out_of_rangeC2EOS_(ptr noundef nonnull align 8 dereferenceable(16) %i.a, ptr noundef nonnull align 8 dereferenceable(16) %0) #37
  tail call void @__cxa_throw(ptr nonnull %i.a, ptr nonnull @_ZTISt12out_of_range, ptr nonnull @_ZNSt12out_of_rangeD1Ev) #41
  unreachable
}

declare void @_ZNSt12out_of_rangeC1EPKc(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef) unnamed_addr #0

; Function Attrs: nounwind
declare void @_ZNSt12out_of_rangeD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16)) unnamed_addr #4

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt12out_of_rangeC2EOS_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) %1) unnamed_addr #1 comdat align 2 {
bb.a:
  tail call void @_ZNSt11logic_errorC2EOS_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) %1) #37
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt12out_of_range, i64 16), ptr %0, align 8, !tbaa !17
  ret void
}

; Function Attrs: mustprogress noinline uwtable
define linkonce_odr noundef zeroext i8 @_ZN5folly2io10CursorBaseINS0_6CursorEKNS_5IOBufEE8readSlowIhEET_v(ptr noundef nonnull align 8 dereferenceable(56) %0) local_unnamed_addr #24 comdat align 2 {
bb.a:
  %i.a = alloca i8, align 1                       ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #37
  call void @_ZN5folly2io10CursorBaseINS0_6CursorEKNS_5IOBufEE8pullSlowEPvm(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr noundef nonnull %i.a, i64 noundef 1)
  %i.b = load i8, ptr %i.a, align 1, !tbaa !11251
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #37
  ret i8 %i.b
}

; Function Attrs: mustprogress noinline uwtable
define linkonce_odr void @_ZN5folly2io10CursorBaseINS0_6CursorEKNS_5IOBufEE8pullSlowEPvm(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr noundef %1, i64 noundef %2) local_unnamed_addr #24 comdat align 2 {
bb.a:
  %i.a = tail call noundef i64 @_ZN5folly2io10CursorBaseINS0_6CursorEKNS_5IOBufEE14pullAtMostSlowEPvm(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr noundef %1, i64 noundef %2)
  %.not = icmp eq i64 %i.a, %2
  br i1 %.not, label %bb.c, label %bb.b, !prof !11740

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN5folly6detail16throw_exception_ISt12out_of_rangeJPKcEEEvDpT0_(ptr noundef nonnull @.str.140) #23
  unreachable

bb.c:                                             ; preds = %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7reserveEm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %1) local_unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit:
  %i.a = load ptr, ptr %0, align 8, !tbaa !11246
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 5 uses
  %i.c = icmp eq ptr %i.a, %i.b
  %i.d = load i64, ptr %i.b, align 8
  %i.e = select i1 %i.c, i64 15, i64 %i.d         ; 2 uses
  %.not = icmp ugt i64 %1, %i.e
  br i1 %.not, label %bb.a, label %bb.g

bb.a:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit
  %i.f = icmp slt i64 %1, 0
  br i1 %i.f, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str) #41
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.g = shl nuw i64 %i.e, 1                      ; 2 uses
  %i.h = icmp ult i64 %1, %i.g
  %spec.store.select.i = tail call i64 @llvm.umin.i64(i64 %i.g, i64 9223372036854775807)
  %.0 = select i1 %i.h, i64 %spec.store.select.i, i64 %1 ; 2 uses
  %i.i = add nuw i64 %.0, 1                       ; 2 uses
  %i.j = icmp slt i64 %i.i, 0
  br i1 %i.j, label %bb.d, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit, !prof !11309

bb.d:                                             ; preds = %bb.c
  tail call void @_ZSt17__throw_bad_allocv() #41
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit: ; preds = %bb.c
  %i.k = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.i) #40 ; 3 uses
  %i.l = load ptr, ptr %0, align 8, !tbaa !11246  ; 4 uses
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.n = load i64, ptr %i.m, align 8, !tbaa !11250 ; 2 uses
  %i.o = add i64 %i.n, 1                          ; 2 uses
  switch i64 %i.o, label %bb.f [
    i64 1, label %bb.e
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit
  ]

bb.e:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit
  %i.p = load i8, ptr %i.l, align 1, !tbaa !11251
  store i8 %i.p, ptr %i.k, align 1, !tbaa !11251
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit

bb.f:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.k, ptr align 1 %i.l, i64 %i.o, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit

end_hunk_0
