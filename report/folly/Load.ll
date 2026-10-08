Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/folly/original/Load?download=true
inline.NumInlined: 479
inline.NumDeleted: 248
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumUnrolled: 3
begin_hunk_0_@_ZN5folly4bserL9parseBserERNS_2io6CursorEm:bb.a
  br i1 %i.ex, label %bb.bo, label %bb.bu

bb.bo:                                            ; preds = %_ZN5folly5RangeIPKhE2atEm.exit
  %i.ey = invoke noundef nonnull align 8 dereferenceable(40) ptr @_ZNR5folly7dynamicixENS_5RangeIPKcEE(ptr noundef nonnull align 8 dereferenceable(40) %4, ptr %i.en, ptr %i.eq)
          to label %bb.bp unwind label %.loopexit82, !inline_history !70

bb.bp:                                            ; preds = %bb.bo
  %i.ez = invoke noundef nonnull align 8 dereferenceable(40) ptr @_ZN5folly7dynamicaSEDn(ptr noundef nonnull align 8 dereferenceable(40) %i.ey, ptr null)
          to label %bb.bq unwind label %.loopexit82, !inline_history !70 ; 0 uses

bb.bq:                                            ; preds = %bb.bp
  %i.fa = load ptr, ptr %i.e, align 8, !tbaa !25  ; 2 uses
  %i.fb = ptrtoint ptr %i.fa to i64
  %i.fc = add i64 %i.fb, 1
  %i.fd = load ptr, ptr %i.i, align 8, !tbaa !27
  %i.fe = ptrtoint ptr %i.fd to i64
  %i.ff = icmp ult i64 %i.fc, %i.fe
  br i1 %i.ff, label %bb.br, label %bb.bs, !prof !30

bb.br:                                            ; preds = %bb.bq
  %i.fg = getelementptr inbounds nuw i8, ptr %i.fa, i64 1
  store ptr %i.fg, ptr %i.e, align 8, !tbaa !25
  br label %_ZN5folly2io10CursorBaseINS0_6CursorEKNS_5IOBufEE10skipAtMostEm.exit

bb.bs:                                            ; preds = %bb.bq
  %i.fh = invoke noundef i64 @_ZN5folly2io10CursorBaseINS0_6CursorEKNS_5IOBufEE14skipAtMostSlowEm(ptr noundef nonnull align 8 dereferenceable(56) %1, i64 noundef 1)
          to label %_ZN5folly2io10CursorBaseINS0_6CursorEKNS_5IOBufEE10skipAtMostEm.exit unwind label %.loopexit82 ; 0 uses

bb.bt:                                            ; preds = %bb.bj
  %i.fi = landingpad { ptr, i32 }
          cleanup
  br label %bb.ca

.loopexit82:                                      ; preds = %bb.bo, %bb.bp, %bb.bs, %bb.bl
  %lpad.loopexit84 = landingpad { ptr, i32 }
          cleanup
  br label %bb.ca

.loopexit.split-lp83:                             ; preds = %bb.bn
  %lpad.loopexit.split-lp85 = landingpad { ptr, i32 }
          cleanup
  br label %bb.ca

bb.bu:                                            ; preds = %_ZN5folly5RangeIPKhE2atEm.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #20, !noalias !85
  invoke fastcc void @_ZN5folly4bserL9parseBserERNS_2io6CursorEm(ptr dead_on_unwind noalias nonnull writable align 8 %5, ptr noundef nonnull align 8 dereferenceable(56) %1, i64 noundef range(i64 0, -1) %i.db)
          to label %bb.bv unwind label %bb.bx, !inline_history !70

bb.bv:                                            ; preds = %bb.bu
  %i.fj = invoke noundef nonnull align 8 dereferenceable(40) ptr @_ZNR5folly7dynamicixENS_5RangeIPKcEE(ptr noundef nonnull align 8 dereferenceable(40) %4, ptr %i.en, ptr %i.eq)
          to label %bb.bw unwind label %bb.by, !inline_history !70

bb.bw:                                            ; preds = %bb.bv
  %i.fk = call noundef nonnull align 8 dereferenceable(40) ptr @_ZN5folly7dynamicaSEOS0_(ptr noundef nonnull align 8 dereferenceable(40) %i.fj, ptr noundef nonnull align 8 dereferenceable(40) %5) #20, !inline_history !70 ; 0 uses
  call void @_ZN5folly7dynamic7destroyEv(ptr noundef nonnull align 8 dereferenceable(40) %5) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #20, !noalias !85
  br label %_ZN5folly2io10CursorBaseINS0_6CursorEKNS_5IOBufEE10skipAtMostEm.exit

_ZN5folly2io10CursorBaseINS0_6CursorEKNS_5IOBufEE10skipAtMostEm.exit: ; preds = %bb.br, %bb.bs, %bb.bw
  %i.fl = getelementptr inbounds nuw i8, ptr %.sroa.079.0109, i64 40 ; 2 uses
  %i.fm = icmp eq ptr %i.fl, %i.dz
  br i1 %i.fm, label %._crit_edge, label %.lr.ph

bb.bx:                                            ; preds = %bb.bu
  %i.fn = landingpad { ptr, i32 }
          cleanup
  br label %bb.bz

bb.by:                                            ; preds = %bb.bv
  %i.fo = landingpad { ptr, i32 }
          cleanup
  call void @_ZN5folly7dynamic7destroyEv(ptr noundef nonnull align 8 dereferenceable(40) %5) #20
  br label %bb.bz

bb.bz:                                            ; preds = %bb.by, %bb.bx
  %.pn.i39 = phi { ptr, i32 } [ %i.fo, %bb.by ], [ %i.fn, %bb.bx ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #20, !noalias !85
  br label %bb.ca

_ZN5folly7dynamic9push_backEOS0_.exit:            ; preds = %bb.be, %bb.bf
  call void @_ZN5folly7dynamic7destroyEv(ptr noundef nonnull align 8 dereferenceable(40) %4) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #20, !noalias !85
  %i.fp = icmp sgt i64 %.in, 1
  br i1 %i.fp, label %bb.ba, label %_ZN5folly4bserL14decodeTemplateERNS_2io6CursorEm.exit, !llvm.loop !73

.loopexit88:                                      ; preds = %bb.bf
  %lpad.loopexit90 = landingpad { ptr, i32 }
          cleanup
  br label %bb.ca

.loopexit.split-lp89:                             ; preds = %bb.bd
  %lpad.loopexit.split-lp91 = landingpad { ptr, i32 }
          cleanup
  br label %bb.ca

bb.ca:                                            ; preds = %.loopexit88, %.loopexit.split-lp89, %.loopexit82, %.loopexit.split-lp83, %bb.bi, %bb.bt, %bb.bz
  %.pn30.pn.pn.pn.pn.i = phi { ptr, i32 } [ %lpad.loopexit.split-lp85, %.loopexit.split-lp83 ], [ %i.ej, %bb.bi ], [ %i.fi, %bb.bt ], [ %.pn.i39, %bb.bz ], [ %lpad.loopexit84, %.loopexit82 ], [ %lpad.loopexit90, %.loopexit88 ], [ %lpad.loopexit.split-lp91, %.loopexit.split-lp89 ]
  call void @_ZN5folly7dynamic7destroyEv(ptr noundef nonnull align 8 dereferenceable(40) %4) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #20, !noalias !85
  br label %bb.cb

bb.cb:                                            ; preds = %bb.ca, %bb.bh
  %.pn30.pn.pn.pn.pn.pn.pn.i = phi { ptr, i32 } [ %.pn30.pn.pn.pn.pn.i, %bb.ca ], [ %i.ei, %bb.bh ]
  call void @_ZN5folly7dynamic7destroyEv(ptr noundef nonnull align 8 dereferenceable(40) %3) #20
  br label %bb.cc

bb.cc:                                            ; preds = %bb.cb, %bb.bg
  %.pn30.pn.pn.pn.pn.pn.pn.pn.i = phi { ptr, i32 } [ %.pn30.pn.pn.pn.pn.pn.pn.i, %bb.cb ], [ %i.eh, %bb.bg ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #20, !noalias !85
  br label %bb.cd

bb.cd:                                            ; preds = %bb.cc, %bb.ax, %bb.aw
  %.pn39.i = phi { ptr, i32 } [ %i.dl, %bb.aw ], [ %i.dm, %bb.ax ], [ %.pn30.pn.pn.pn.pn.pn.pn.pn.i, %bb.cc ]
  call void @_ZN5folly7dynamic7destroyEv(ptr noundef nonnull align 8 dereferenceable(40) %0) #20
  br label %common.resume

bb.ce:                                            ; preds = %bb.av
  unreachable

_ZN5folly4bserL14decodeTemplateERNS_2io6CursorEm.exit: ; preds = %_ZN5folly7dynamic9push_backEOS0_.exit, %.preheader87
  call void @_ZN5folly7dynamic7destroyEv(ptr noundef nonnull align 8 dereferenceable(40) %3) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #20, !noalias !85
  br label %_ZN5folly4bserL12decodeObjectERNS_2io6CursorEm.exit

bb.cf:                                            ; preds = %_ZN5folly2io10CursorBaseINS0_6CursorEKNS_5IOBufEE4readIaEET_v.exit
  %i.fq = tail call ptr @__cxa_allocate_exception(i64 16) #20 ; 3 uses
  invoke void @_ZNSt13runtime_errorC1EPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.fq, ptr noundef nonnull @.str.14)
          to label %bb.cg unwind label %bb.ch

bb.cg:                                            ; preds = %bb.cf
  tail call void @__cxa_throw(ptr nonnull %i.fq, ptr nonnull @_ZTISt13runtime_error, ptr nonnull @_ZNSt13runtime_errorD1Ev) #21
  unreachable

bb.ch:                                            ; preds = %bb.cf
  %i.fr = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr nonnull %i.fq) #20
  br label %common.resume

bb.ci:                                            ; preds = %_ZN5folly2io10CursorBaseINS0_6CursorEKNS_5IOBufEE4readIaEET_v.exit
  %i.fs = tail call ptr @__cxa_allocate_exception(i64 16) #20 ; 3 uses
  invoke void @_ZNSt13runtime_errorC1EPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.fs, ptr noundef nonnull @.str.15)
          to label %bb.cj unwind label %bb.ck

bb.cj:                                            ; preds = %bb.ci
  tail call void @__cxa_throw(ptr nonnull %i.fs, ptr nonnull @_ZTISt13runtime_error, ptr nonnull @_ZNSt13runtime_errorD1Ev) #21
  unreachable

bb.ck:                                            ; preds = %bb.ci
  %i.ft = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr nonnull %i.fs) #20
  br label %common.resume

_ZN5folly4bserL12decodeObjectERNS_2io6CursorEm.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit48, %.preheader, %_ZN5folly4bserL14decodeTemplateERNS_2io6CursorEm.exit, %bb.ab, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %bb.y, %bb.x, %bb.w, %_ZN5folly2io10CursorBaseINS0_6CursorEKNS_5IOBufEE4pullEPvm.exit, %_ZN5folly2io10CursorBaseINS0_6CursorEKNS_5IOBufEE4readIlEET_v.exit, %_ZN5folly2io10CursorBaseINS0_6CursorEKNS_5IOBufEE4readIiEET_v.exit, %_ZN5folly2io10CursorBaseINS0_6CursorEKNS_5IOBufEE4readIsEET_v.exit, %_ZN5folly2io10CursorBaseINS0_6CursorEKNS_5IOBufEE4readIaEET_v.exit21
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr void @_ZN5folly4bser15BserDecodeErrorCI2St13runtime_errorEPKc(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %1) unnamed_addr #15 comdat align 2 {
bb.a:
  tail call void @_ZNSt13runtime_errorC2EPKc(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %1)
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN5folly4bser15BserDecodeErrorE, i64 16), ptr %0, align 8, !tbaa !35
  ret void
}

; Function Attrs: mustprogress uwtable
define internal fastcc void @_ZN5folly4bserL12decodeStringB5cxx11ERNS_2io6CursorE(ptr dead_on_unwind noalias nonnull writable align 8 %0, ptr noundef nonnull align 8 dereferenceable(56) %1) unnamed_addr #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = tail call fastcc noundef i64 @_ZN5folly4bserL9decodeIntERNS_2io6CursorE(ptr noundef nonnull align 8 dereferenceable(56) %1) ; 13 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 6 uses
  store ptr %i.b, ptr %0, align 8, !tbaa !43
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  store i64 0, ptr %i.c, align 8, !tbaa !44
  store i8 0, ptr %i.b, align 8, !tbaa !29
  %i.d = icmp slt i64 %i.a, 0
  br i1 %i.d, label %bb.b, label %bb.f

bb.b:                                             ; preds = %bb.a
  %i.e = tail call ptr @__cxa_allocate_exception(i64 16) #20 ; 3 uses
  invoke void @_ZNSt11range_errorC1EPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.e, ptr noundef nonnull @.str.16)
          to label %bb.c unwind label %bb.d

bb.c:                                             ; preds = %bb.b
  invoke void @__cxa_throw(ptr nonnull %i.e, ptr nonnull @_ZTISt11range_error, ptr nonnull @_ZNSt11range_errorD1Ev) #21
          to label %bb.p unwind label %bb.e

bb.d:                                             ; preds = %bb.b
  %i.f = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr nonnull %i.e) #20
  br label %bb.o

bb.e:                                             ; preds = %bb.g, %bb.c
  %i.g = landingpad { ptr, i32 }
          cleanup
  br label %bb.o

bb.f:                                             ; preds = %bb.a
  %.not19 = icmp eq i64 %i.a, 0
  br i1 %.not19, label %_ZN5folly2io10CursorBaseINS0_6CursorEKNS_5IOBufEE10pullAtMostEPvm.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i.i: ; preds = %bb.f
  %.not.i.i.i.i = icmp samesign ugt i64 %i.a, 15
  br i1 %.not.i.i.i.i, label %bb.g, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_moveEPcPKcm.exit.i.i.i.i

bb.g:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i.i
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef 0, i64 noundef 0, ptr noundef null, i64 noundef %i.a)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_moveEPcPKcm.exit.i.i.i.i.thread unwind label %bb.e

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_moveEPcPKcm.exit.i.i.i.i.thread: ; preds = %bb.g
  %.pre.i.i = load ptr, ptr %0, align 8, !tbaa !40
  br label %bb.h

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_moveEPcPKcm.exit.i.i.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i.i
  %cond.i.i.i.i = icmp eq i64 %i.a, 1
  br i1 %cond.i.i.i.i, label %bb.i, label %bb.h

bb.h:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_moveEPcPKcm.exit.i.i.i.i.thread, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_moveEPcPKcm.exit.i.i.i.i
  %i.h = phi ptr [ %.pre.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_moveEPcPKcm.exit.i.i.i.i.thread ], [ %i.b, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_moveEPcPKcm.exit.i.i.i.i ]
  tail call void @llvm.memset.p0.i64(ptr align 1 %i.h, i8 0, i64 %i.a, i1 false)
  %.pre = load ptr, ptr %0, align 8, !tbaa !40
  br label %bb.i

bb.i:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_moveEPcPKcm.exit.i.i.i.i, %bb.h
  %i.i = phi ptr [ %.pre, %bb.h ], [ %i.b, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_moveEPcPKcm.exit.i.i.i.i ]
  store i64 %i.a, ptr %i.c, align 8, !tbaa !44
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 %i.a
  store i8 0, ptr %i.j, align 1, !tbaa !29
  %i.k = load ptr, ptr %0, align 8, !tbaa !40     ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 3 uses
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !25   ; 2 uses
  %i.n = ptrtoint ptr %i.m to i64
  %i.o = add i64 %i.a, %i.n
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !27
  %i.r = ptrtoint ptr %i.q to i64
  %.not.i = icmp ugt i64 %i.o, %i.r
  br i1 %.not.i, label %bb.j, label %_ZN5folly2io10CursorBaseINS0_6CursorEKNS_5IOBufEE10pullAtMostEPvm.exit.thread, !prof !28

_ZN5folly2io10CursorBaseINS0_6CursorEKNS_5IOBufEE10pullAtMostEPvm.exit.thread: ; preds = %bb.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.k, ptr align 1 %i.m, i64 %i.a, i1 false)
  %i.s = load ptr, ptr %i.l, align 8, !tbaa !25
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 %i.a
  store ptr %i.t, ptr %i.l, align 8, !tbaa !25
  br label %bb.n

bb.j:                                             ; preds = %bb.i
  %i.u = invoke noundef i64 @_ZN5folly2io10CursorBaseINS0_6CursorEKNS_5IOBufEE14pullAtMostSlowEPvm(ptr noundef nonnull align 8 dereferenceable(56) %1, ptr noundef nonnull %i.k, i64 noundef %i.a)
          to label %_ZN5folly2io10CursorBaseINS0_6CursorEKNS_5IOBufEE10pullAtMostEPvm.exit unwind label %bb.m

_ZN5folly2io10CursorBaseINS0_6CursorEKNS_5IOBufEE10pullAtMostEPvm.exit: ; preds = %bb.f, %bb.j
  %.0.i = phi i64 [ %i.u, %bb.j ], [ 0, %bb.f ]
  %.not = icmp eq i64 %.0.i, %i.a
  br i1 %.not, label %bb.n, label %bb.k

bb.k:                                             ; preds = %_ZN5folly2io10CursorBaseINS0_6CursorEKNS_5IOBufEE10pullAtMostEPvm.exit
  invoke fastcc void @_ZN5folly4bserL16throwDecodeErrorIJRA75_KcEEEvRNS_2io6CursorEDpOT_(ptr noundef nonnull align 8 dereferenceable(56) %1) #21
          to label %bb.l unwind label %bb.m

bb.l:                                             ; preds = %bb.k
  unreachable

bb.m:                                             ; preds = %bb.j, %bb.k
  %i.v = landingpad { ptr, i32 }
          cleanup
  br label %bb.o

bb.n:                                             ; preds = %_ZN5folly2io10CursorBaseINS0_6CursorEKNS_5IOBufEE10pullAtMostEPvm.exit.thread, %_ZN5folly2io10CursorBaseINS0_6CursorEKNS_5IOBufEE10pullAtMostEPvm.exit
  ret void

bb.o:                                             ; preds = %bb.m, %bb.e, %bb.d
  %.pn = phi { ptr, i32 } [ %i.g, %bb.e ], [ %i.f, %bb.d ], [ %i.v, %bb.m ]
  %i.w = load ptr, ptr %0, align 8, !tbaa !40     ; 2 uses
  %i.x = icmp eq ptr %i.w, %i.b
  br i1 %i.x, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.o
  %i.y = load i64, ptr %i.b, align 8, !tbaa !29
  %i.z = add i64 %i.y, 1
  tail call void @_ZdlPvm(ptr noundef %i.w, i64 noundef %i.z) #22
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.o, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  resume { ptr, i32 } %.pn

bb.p:                                             ; preds = %bb.c
  unreachable
}

; Function Attrs: mustprogress uwtable
define internal fastcc void @_ZN5folly4bserL11decodeArrayERNS_2io6CursorEm(ptr dead_on_unwind noalias writable align 8 initializes((0, 4), (8, 32)) %0, ptr noundef nonnull align 8 dereferenceable(56) %1, i64 noundef range(i64 0, -1) %2) unnamed_addr #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"struct.folly::dynamic", align 8   ; 8 uses
  store i32 1, ptr %0, align 8, !tbaa !50, !alias.scope !90
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.a, i8 0, i64 24, i1 false), !alias.scope !90
  %i.b = invoke fastcc noundef i64 @_ZN5folly4bserL9decodeIntERNS_2io6CursorE(ptr noundef nonnull align 8 dereferenceable(56) %1)
          to label %.preheader unwind label %bb.g ; 2 uses

.preheader:                                       ; preds = %bb.a
  %i.c = icmp sgt i64 %i.b, 0
  br i1 %i.c, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %.preheader
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 24
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %_ZN5folly7dynamic9push_backEOS0_.exit
  %.in = phi i64 [ %i.b, %.lr.ph ], [ %i.f, %_ZN5folly7dynamic9push_backEOS0_.exit ] ; 2 uses
  %i.f = add nsw i64 %.in, -1
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #20
  invoke fastcc void @_ZN5folly4bserL9parseBserERNS_2io6CursorEm(ptr dead_on_unwind noalias nonnull writable align 8 %3, ptr noundef nonnull align 8 dereferenceable(56) %1, i64 noundef %2)
          to label %bb.c unwind label %bb.h

bb.c:                                             ; preds = %bb.b
  %i.g = load i32, ptr %0, align 8, !tbaa !50     ; 2 uses
  %.not.i.not.i.i = icmp eq i32 %i.g, 1
  br i1 %.not.i.not.i.i, label %_ZN5folly7dynamic3getISt6vectorIS0_SaIS0_EEEERT_v.exit.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.h = load ptr, ptr @_ZN5folly7dynamic8TypeInfoISt6vectorIS0_SaIS0_EEE4nameE, align 8, !tbaa !51
  invoke void @_ZN5folly6detail16throw_exception_INS_9TypeErrorEJPKcNS_7dynamic4TypeEEEEvDpT0_(ptr noundef %i.h, i32 noundef %i.g) #4
          to label %.noexc unwind label %.loopexit.split-lp

.noexc:                                           ; preds = %bb.d
  unreachable

_ZN5folly7dynamic3getISt6vectorIS0_SaIS0_EEEERT_v.exit.i: ; preds = %bb.c
  %i.i = load ptr, ptr %i.d, align 8, !tbaa !54   ; 3 uses
  %i.j = load ptr, ptr %i.e, align 8, !tbaa !55
  %.not.i.i.i = icmp eq ptr %i.i, %i.j
  br i1 %.not.i.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %_ZN5folly7dynamic3getISt6vectorIS0_SaIS0_EEEERT_v.exit.i
  call void @_ZN5folly7dynamicC1EOS0_(ptr noundef nonnull align 8 dereferenceable(40) %i.i, ptr noundef nonnull align 8 dereferenceable(40) %3) #20
  %i.k = load ptr, ptr %i.d, align 8, !tbaa !54
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 40
  store ptr %i.l, ptr %i.d, align 8, !tbaa !54
  br label %_ZN5folly7dynamic9push_backEOS0_.exit

bb.f:                                             ; preds = %_ZN5folly7dynamic3getISt6vectorIS0_SaIS0_EEEERT_v.exit.i
  invoke void @_ZNSt6vectorIN5folly7dynamicESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %i.a, ptr %i.i, ptr noundef nonnull align 8 dereferenceable(40) %3)
          to label %_ZN5folly7dynamic9push_backEOS0_.exit unwind label %.loopexit

_ZN5folly7dynamic9push_backEOS0_.exit:            ; preds = %bb.e, %bb.f
  call void @_ZN5folly7dynamic7destroyEv(ptr noundef nonnull align 8 dereferenceable(40) %3) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #20
  %i.m = icmp samesign ugt i64 %.in, 1
  br i1 %i.m, label %bb.b, label %._crit_edge, !llvm.loop !89

bb.g:                                             ; preds = %bb.a
  %i.n = landingpad { ptr, i32 }
          cleanup
  br label %bb.k

bb.h:                                             ; preds = %bb.b
  %i.o = landingpad { ptr, i32 }
          cleanup
  br label %bb.j

.loopexit:                                        ; preds = %bb.f
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %bb.i

.loopexit.split-lp:                               ; preds = %bb.d
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.i

bb.i:                                             ; preds = %.loopexit.split-lp, %.loopexit
  %lpad.phi = phi { ptr, i32 } [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  call void @_ZN5folly7dynamic7destroyEv(ptr noundef nonnull align 8 dereferenceable(40) %3) #20
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %.pn = phi { ptr, i32 } [ %lpad.phi, %bb.i ], [ %i.o, %bb.h ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #20
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.g
  %.pn.pn = phi { ptr, i32 } [ %.pn, %bb.j ], [ %i.n, %bb.g ]
  call void @_ZN5folly7dynamic7destroyEv(ptr noundef nonnull align 8 dereferenceable(40) %0) #20
  resume { ptr, i32 } %.pn.pn

._crit_edge:                                      ; preds = %_ZN5folly7dynamic9push_backEOS0_.exit, %.preheader
  ret void
}

declare void @_ZNSt13runtime_errorC2EPKc(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef) unnamed_addr #2

declare void @_ZNSt11range_errorC1EPKc(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef) unnamed_addr #2

; Function Attrs: nounwind
declare void @_ZNSt11range_errorD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16)) unnamed_addr #3

; Function Attrs: mustprogress noreturn uwtable
define internal fastcc void @_ZN5folly4bserL16throwDecodeErrorIJRA75_KcEEEvRNS_2io6CursorEDpOT_(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(56) %0) unnamed_addr #9 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 5 uses
  %1 = alloca %"class.std::__cxx11::basic_string", align 8 ; 13 uses
  %i.b = alloca i64, align 8                      ; 6 uses
  %i.c = tail call ptr @__cxa_allocate_exception(i64 16) #20 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #20
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !27   ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !25   ; 2 uses
  %i.h = ptrtoint ptr %i.e to i64
  %i.i = ptrtoint ptr %i.g to i64
  %i.j = sub i64 %i.h, %i.i                       ; 3 uses
  store i64 %i.j, ptr %i.b, align 8, !tbaa !37
  tail call void @llvm.experimental.noalias.scope.decl(metadata !93)
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 9 uses
  store ptr %i.k, ptr %1, align 8, !tbaa !43, !alias.scope !93
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  store i64 0, ptr %i.l, align 8, !tbaa !44, !alias.scope !93
  store i8 0, ptr %i.k, align 8, !tbaa !29, !alias.scope !93
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #20, !noalias !93
  store ptr %1, ptr %i.a, align 8, !tbaa !46, !noalias !93
  %.not.i.i.i.i.i.i.i.i = icmp eq ptr %i.e, %i.g
  br i1 %.not.i.i.i.i.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i, label %bb.b, !prof !28

bb.b:                                             ; preds = %bb.a
  %i.m = call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.j, i1 true)
  %i.n = sub nuw nsw i64 64, %i.m
  %i.o = mul nuw nsw i64 %i.n, 39
  %i.p = lshr i64 %i.o, 7                         ; 2 uses
  %i.q = getelementptr inbounds nuw [8 x i8], ptr @_ZN5folly6detail15to_ascii_powersILm10EmE4dataE, i64 %i.p
  %i.r = load i64, ptr %i.q, align 8, !tbaa !37, !noalias !93
  %i.s = icmp uge i64 %i.j, %i.r
  %i.t = zext i1 %i.s to i64
  %i.u = add nuw nsw i64 %i.p, 109
  %i.v = add nuw nsw i64 %i.u, %i.t
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i: ; preds = %bb.a, %bb.b
  %.0.i.i.i.i.i.i.i.i = phi i64 [ %i.v, %bb.b ], [ 110, %bb.a ] ; 2 uses
  %i.w = add nuw nsw i64 %.0.i.i.i.i.i.i.i.i, 1
  %i.x = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.w) #23
          to label %.noexc9 unwind label %bb.e    ; 3 uses

.noexc9:                                          ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i
  %i.y = load ptr, ptr %1, align 8, !tbaa !40     ; 4 uses
  %i.z = load i64, ptr %i.l, align 8, !tbaa !44   ; 2 uses
  %i.aa = add i64 %i.z, 1                         ; 2 uses
  switch i64 %i.aa, label %bb.d [
    i64 1, label %bb.c
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i
  ]

bb.c:                                             ; preds = %.noexc9
  %i.ab = load i8, ptr %i.y, align 1, !tbaa !29
  store i8 %i.ab, ptr %i.x, align 1, !tbaa !29
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i

bb.d:                                             ; preds = %.noexc9
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.x, ptr align 1 %i.y, i64 %i.aa, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i: ; preds = %bb.d, %bb.c, %.noexc9
  %i.ac = icmp eq ptr %i.y, %i.k
  br i1 %i.ac, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i5.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i4.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i5.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i
  %i.ad = icmp ult i64 %i.z, 16
end_hunk_0
