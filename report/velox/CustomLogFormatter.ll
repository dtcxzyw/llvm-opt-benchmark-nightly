inline.NumInlined: 978
inline.NumDeleted: 414
begin_hunk_0_@_ZN5folly18CustomLogFormatter13formatMessageB5cxx11ERKNS_10LogMessageEPKNS_11LogCategoryE:bb.a

bb.bu:                                            ; preds = %bb.bt
  %i.kf = load i8, ptr %i.jt, align 1, !tbaa !19
  store i8 %i.kf, ptr %i.ke, align 1, !tbaa !19
  br label %bb.bx

bb.bv:                                            ; preds = %bb.bt
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.ke, ptr align 1 %i.jt, i64 %i.ju, i1 false)
  br label %bb.bx

bb.bw:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i128
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %i.jv, i64 noundef 0, ptr noundef %i.jt, i64 noundef %i.ju)
          to label %bb.bx unwind label %bb.bz

bb.bx:                                            ; preds = %bb.bv, %bb.bu, %bb.bs, %bb.bw
  store i64 %i.jy, ptr %i.fe, align 8, !tbaa !34
  %i.kg = load ptr, ptr %0, align 8, !tbaa !13
  %i.kh = getelementptr inbounds nuw i8, ptr %i.kg, i64 %i.jy
  store i8 0, ptr %i.kh, align 1, !tbaa !19
  %i.ki = load ptr, ptr %12, align 8, !tbaa !13   ; 2 uses
  %i.kj = icmp eq ptr %i.ki, %i.jj
  br i1 %i.kj, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit137, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i135

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i135: ; preds = %bb.bx
  %i.kk = load i64, ptr %i.jj, align 8, !tbaa !19
  %i.kl = add i64 %i.kk, 1
  call void @_ZdlPvm(ptr noundef %i.ki, i64 noundef %i.kl) #22
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit137

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit137: ; preds = %bb.bx, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i135
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #23
  br label %bb.ca

bb.by:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i.i.i118, %.noexc9.i.i.i119, %.noexc.i.i.i120
  %i.km = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit140

bb.bz:                                            ; preds = %bb.bw, %bb.bq
  %i.kn = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ko = load ptr, ptr %12, align 8, !tbaa !13   ; 2 uses
  %i.kp = icmp eq ptr %i.ko, %i.jj
  br i1 %i.kp, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit140, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i138

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i138: ; preds = %bb.bz
  %i.kq = load i64, ptr %i.jj, align 8, !tbaa !19
  %i.kr = add i64 %i.kq, 1
  call void @_ZdlPvm(ptr noundef %i.ko, i64 noundef %i.kr) #22
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit140

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit140: ; preds = %bb.bz, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i138, %bb.by
  %.pn49 = phi { ptr, i32 } [ %i.km, %bb.by ], [ %i.kn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i138 ], [ %i.kn, %bb.bz ]
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #23
  br label %bb.cb

bb.ca:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit137, %bb.bj
  %i.ks = load ptr, ptr %10, align 8, !tbaa !13   ; 2 uses
  %i.kt = icmp eq ptr %i.ks, %i.dg
  br i1 %i.kt, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit143, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i141

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i141: ; preds = %bb.ca
  %i.ku = load i64, ptr %i.dg, align 8, !tbaa !19
  %i.kv = add i64 %i.ku, 1
  call void @_ZdlPvm(ptr noundef %i.ks, i64 noundef %i.kv) #22
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit143

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit143: ; preds = %bb.ca, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i141
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #23
  br label %bb.cc

bb.cb:                                            ; preds = %.loopexit, %.loopexit.split-lp, %bb.ao, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit140, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit98
  %.pn49.pn.pn.pn = phi { ptr, i32 } [ %.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit98 ], [ %i.hh, %bb.ao ], [ %.pn49, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit140 ], [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  %i.kw = load ptr, ptr %0, align 8, !tbaa !13    ; 2 uses
  %i.kx = icmp eq ptr %i.kw, %i.fd
  br i1 %i.kx, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit146, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i144

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i144: ; preds = %bb.cb
  %i.ky = load i64, ptr %i.fd, align 8, !tbaa !19
  %i.kz = add i64 %i.ky, 1
  call void @_ZdlPvm(ptr noundef %i.kw, i64 noundef %i.kz) #22
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit146

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit146: ; preds = %bb.cb, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i144
  %i.la = load ptr, ptr %10, align 8, !tbaa !13   ; 2 uses
  %i.lb = icmp eq ptr %i.la, %i.dg
  br i1 %i.lb, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit149, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i147

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i147: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit146
  %i.lc = load i64, ptr %i.dg, align 8, !tbaa !19
  %i.ld = add i64 %i.lc, 1
  call void @_ZdlPvm(ptr noundef %i.la, i64 noundef %i.ld) #22
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit149

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit149: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit146, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i147
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #23
  br label %common.resume

bb.cc:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit143, %_ZN12_GLOBAL__N_116getColorSequenceEN5folly8LogLevelE.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #23
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN5folly18CustomLogFormatterC2ENS_5RangeIPKcEEb(ptr noundef nonnull align 8 dereferenceable(105) initializes((0, 8)) %0, ptr %1, ptr %2, i1 noundef zeroext %3) unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = zext i1 %3 to i8
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN5folly18CustomLogFormatterE, i64 16), ptr %0, align 8, !tbaa !11
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 4 uses
  store ptr %i.c, ptr %i.b, align 8, !tbaa !63
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 0, ptr %i.d, align 8, !tbaa !34
  store i8 0, ptr %i.c, align 8, !tbaa !19
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 4 uses
  store ptr %i.f, ptr %i.e, align 8, !tbaa !63
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 48
  store i64 0, ptr %i.g, align 8, !tbaa !34
  store i8 0, ptr %i.f, align 8, !tbaa !19
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 104
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.h, i8 0, i64 32, i1 false)
  store i8 %i.a, ptr %i.i, align 8, !tbaa !69
  invoke void @_ZN5folly18CustomLogFormatter17parseFormatStringENS_5RangeIPKcEE(ptr noundef nonnull align 8 dereferenceable(105) %0, ptr %1, ptr %2)
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %bb.a
  ret void

bb.c:                                             ; preds = %bb.a
  %i.j = landingpad { ptr, i32 }
          cleanup
  %i.k = load ptr, ptr %i.e, align 8, !tbaa !13   ; 2 uses
  %i.l = icmp eq ptr %i.k, %i.f
  br i1 %i.l, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.c
  %i.m = load i64, ptr %i.f, align 8, !tbaa !19
  %i.n = add i64 %i.m, 1
  tail call void @_ZdlPvm(ptr noundef %i.k, i64 noundef %i.n) #22
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.c, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  %i.o = load ptr, ptr %i.b, align 8, !tbaa !13   ; 2 uses
  %i.p = icmp eq ptr %i.o, %i.c
  br i1 %i.p, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit7, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i5

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i5: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.q = load i64, ptr %i.c, align 8, !tbaa !19
  %i.r = add i64 %i.q, 1
  tail call void @_ZdlPvm(ptr noundef %i.o, i64 noundef %i.r) #22
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit7

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit7: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i5
  resume { ptr, i32 } %i.j
}

; Function Attrs: mustprogress uwtable
define void @_ZN5folly18CustomLogFormatter17parseFormatStringENS_5RangeIPKcEE(ptr noundef nonnull align 8 dereferenceable(105) initializes((80, 104)) %0, ptr %1, ptr %2) local_unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 {
_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i:
  %i.a = alloca ptr, align 8                      ; 5 uses
  %i.b = alloca ptr, align 8                      ; 5 uses
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 28 uses
  %4 = alloca %"class.folly::Range", align 8      ; 6 uses
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %6 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %7 = alloca %"class.std::__cxx11::basic_string", align 8 ; 15 uses
  %i.c = alloca i64, align 8                      ; 5 uses
  %i.d = alloca i64, align 8                      ; 5 uses
  %8 = alloca %"class.std::__cxx11::basic_string", align 8 ; 15 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.f, i8 0, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #23
  %i.h = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 19 uses
  store ptr %i.h, ptr %3, align 8, !tbaa !63
  %i.i = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 13 uses
  store i64 0, ptr %i.i, align 8, !tbaa !34
  store i8 0, ptr %i.h, align 8, !tbaa !19
  %i.j = ptrtoint ptr %2 to i64
  %i.k = ptrtoint ptr %1 to i64
  %i.l = sub i64 %i.j, %i.k                       ; 3 uses
  %.not.i = icmp ugt i64 %i.l, 15
  br i1 %.not.i, label %bb.a, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7reserveEm.exit

bb.a:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i
  %i.m = icmp slt i64 %i.l, 0
  br i1 %i.m, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.13) #24
          to label %.noexc unwind label %bb.e

.noexc:                                           ; preds = %bb.b
  unreachable

bb.c:                                             ; preds = %bb.a
  %.0.i = call i64 @llvm.umax.i64(i64 %i.l, i64 30) ; 2 uses
  %i.n = add nuw i64 %.0.i, 1                     ; 2 uses
  %i.o = icmp slt i64 %i.n, 0
  br i1 %i.o, label %bb.d, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i, !prof !77

bb.d:                                             ; preds = %bb.c
  invoke void @_ZSt17__throw_bad_allocv() #24
          to label %.noexc66 unwind label %bb.e

.noexc66:                                         ; preds = %bb.d
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i: ; preds = %bb.c
  %i.p = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.n) #25
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_disposeEv.exit.i unwind label %bb.e ; 2 uses

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_disposeEv.exit.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i
  store i8 0, ptr %i.p, align 1, !tbaa !19
  store ptr %i.p, ptr %3, align 8, !tbaa !13
  store i64 %.0.i, ptr %i.h, align 8, !tbaa !19
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7reserveEm.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7reserveEm.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_disposeEv.exit.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i
  %i.q = icmp ult ptr %1, %2
  br i1 %i.q, label %.lr.ph, label %._crit_edge.thread

.lr.ph:                                           ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7reserveEm.exit
  %i.r = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.s = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 7 uses
  %i.t = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 2 uses
  br label %bb.f

._crit_edge:                                      ; preds = %bb.az
  %9 = icmp eq i32 %.241, 0
  br i1 %9, label %._crit_edge.thread, label %bb.ba

bb.e:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i, %bb.d, %bb.b
  %i.u = landingpad { ptr, i32 }
          cleanup
  br label %bb.ch

.loopexit.a:                                      ; preds = %bb.i, %bb.p, %bb.ax
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %bb.ch

.loopexit.split-lp:                               ; preds = %.invoke
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.ch

bb.f:                                             ; preds = %.lr.ph, %bb.az
  %.035232 = phi i64 [ 0, %.lr.ph ], [ %.136, %bb.az ] ; 6 uses
  %.037231 = phi ptr [ %1, %.lr.ph ], [ %i.fz, %bb.az ] ; 20 uses
  %.039230 = phi i32 [ 0, %.lr.ph ], [ %.241, %bb.az ]
  %.042229 = phi ptr [ null, %.lr.ph ], [ %.143, %bb.az ] ; 9 uses
  switch i32 %.039230, label %default.unreachable288 [
    i32 0, label %10
    i32 1, label %bb.t
    i32 2, label %bb.au
  ]

10:                                               ; preds = %bb.f
  %11 = load i64, ptr %i.i, align 8, !tbaa !34    ; 5 uses
  %12 = icmp eq i64 %11, 9223372036854775807
  br i1 %12, label %.invoke, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i

.invoke:                                          ; preds = %bb.au, %bb.m, %10
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.14) #24
          to label %.cont unwind label %.loopexit.split-lp

.cont:                                            ; preds = %.invoke
  unreachable

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i: ; preds = %10
  %i.v = add nsw i64 %11, 1                       ; 3 uses
  %i.w = load ptr, ptr %3, align 8, !tbaa !13     ; 2 uses
  %i.x = icmp eq ptr %i.w, %i.h                   ; 2 uses
  br i1 %i.x, label %bb.g, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i

bb.g:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i
  %i.y = icmp ult i64 %11, 16
  call void @llvm.assume(i1 %i.y)
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i: ; preds = %bb.g, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i
  %i.z = load i64, ptr %i.h, align 8
  %i.aa = select i1 %i.x, i64 15, i64 %i.z
  %.not.i.i = icmp ugt i64 %i.v, %i.aa
  br i1 %.not.i.i, label %bb.i, label %bb.h

bb.h:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i
  %i.ab = getelementptr inbounds nuw i8, ptr %i.w, i64 %11
  %i.ac = load i8, ptr %.037231, align 1, !tbaa !19
  store i8 %i.ac, ptr %i.ab, align 1, !tbaa !19
  br label %bb.j

bb.i:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %3, i64 noundef %11, i64 noundef 0, ptr noundef %.037231, i64 noundef 1)
          to label %bb.j unwind label %.loopexit.a

bb.j:                                             ; preds = %bb.h, %bb.i
  store i64 %i.v, ptr %i.i, align 8, !tbaa !34
  %i.ad = load ptr, ptr %3, align 8, !tbaa !13
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 %i.v
  store i8 0, ptr %i.ae, align 1, !tbaa !19
  %i.af = getelementptr inbounds nuw i8, ptr %.037231, i64 1 ; 5 uses
  %.not60 = icmp eq ptr %i.af, %2
  br i1 %.not60, label %bb.r, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ag = load i16, ptr %.037231, align 1
  %i.ah = icmp ne i16 %i.ag, 32125
  %i.ai = zext i1 %i.ah to i32
  %i.aj = icmp eq i32 %i.ai, 0
  br i1 %i.aj, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.ak = load i16, ptr %.037231, align 1
  %i.al = icmp ne i16 %i.ak, 31611
  %i.am = zext i1 %i.al to i32
  %i.an = icmp eq i32 %i.am, 0
  br i1 %i.an, label %bb.m, label %bb.r

bb.m:                                             ; preds = %bb.l, %bb.k
  %i.ao = load i64, ptr %i.i, align 8, !tbaa !34  ; 5 uses
  %i.ap = icmp eq i64 %i.ao, 9223372036854775807
  br i1 %i.ap, label %.invoke, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i70

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i70: ; preds = %bb.m
  %i.aq = add nsw i64 %i.ao, 1                    ; 3 uses
  %i.ar = load ptr, ptr %3, align 8, !tbaa !13    ; 2 uses
  %i.as = icmp eq ptr %i.ar, %i.h                 ; 2 uses
  br i1 %i.as, label %bb.n, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i71

bb.n:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i70
  %i.at = icmp ult i64 %i.ao, 16
  call void @llvm.assume(i1 %i.at)
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i71

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i71: ; preds = %bb.n, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i70
  %i.au = load i64, ptr %i.h, align 8
  %i.av = select i1 %i.as, i64 15, i64 %i.au
  %.not.i.i72 = icmp ugt i64 %i.aq, %i.av
  br i1 %.not.i.i72, label %bb.p, label %bb.o

bb.o:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i71
  %i.aw = getelementptr inbounds nuw i8, ptr %i.ar, i64 %i.ao
  %i.ax = load i8, ptr %i.af, align 1, !tbaa !19
  store i8 %i.ax, ptr %i.aw, align 1, !tbaa !19
  br label %bb.q

bb.p:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i71
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %3, i64 noundef %i.ao, i64 noundef 0, ptr noundef nonnull %i.af, i64 noundef 1)
          to label %bb.q unwind label %.loopexit.a

bb.q:                                             ; preds = %bb.o, %bb.p
  store i64 %i.aq, ptr %i.i, align 8, !tbaa !34
  %i.ay = load ptr, ptr %3, align 8, !tbaa !13
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 %i.aq
  store i8 0, ptr %i.az, align 1, !tbaa !19
  %i.ba = add i64 %.035232, 1
  br label %bb.az

bb.r:                                             ; preds = %bb.l, %bb.j
  %i.bb = load i8, ptr %.037231, align 1, !tbaa !19
  %i.bc = icmp eq i8 %i.bb, 123
  br i1 %i.bc, label %bb.az, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.bd = add i64 %.035232, 1
  br label %bb.az

bb.t:                                             ; preds = %bb.f
  %i.be = load i8, ptr %.037231, align 1, !tbaa !19
  switch i8 %i.be, label %bb.az [
    i8 58, label %bb.u
    i8 125, label %bb.u
  ]

bb.u:                                             ; preds = %bb.t, %bb.t
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #23
  store ptr %.042229, ptr %4, align 8, !tbaa !67
  store ptr %.037231, ptr %i.r, align 8, !tbaa !66
  %i.bf = ptrtoint ptr %.037231 to i64
  %i.bg = ptrtoint ptr %.042229 to i64
  %i.bh = sub i64 %i.bf, %i.bg                    ; 6 uses
  br label %bb.v

bb.v:                                             ; preds = %"_ZN9__gnu_cxx5__ops14_Iter_comp_valIZN5folly18CustomLogFormatter17parseFormatStringENS2_5RangeIPKcEEE3$_0EclIPKN12_GLOBAL__N_110FormatKeysEKS7_EEbT_RT0_.exit.i.i", %bb.u
  %.04.i.i = phi ptr [ @_ZN12_GLOBAL__N_110formatKeysE, %bb.u ], [ %.1.i.i, %"_ZN9__gnu_cxx5__ops14_Iter_comp_valIZN5folly18CustomLogFormatter17parseFormatStringENS2_5RangeIPKcEEE3$_0EclIPKN12_GLOBAL__N_110FormatKeysEKS7_EEbT_RT0_.exit.i.i" ] ; 2 uses
  %.0113.i.i = phi i64 [ 13, %bb.u ], [ %.112.i.i, %"_ZN9__gnu_cxx5__ops14_Iter_comp_valIZN5folly18CustomLogFormatter17parseFormatStringENS2_5RangeIPKcEEE3$_0EclIPKN12_GLOBAL__N_110FormatKeysEKS7_EEbT_RT0_.exit.i.i" ] ; 2 uses
  %i.bi = lshr i64 %.0113.i.i, 1                  ; 3 uses
  %i.bj = getelementptr inbounds nuw [32 x i8], ptr %.04.i.i, i64 %i.bi ; 3 uses
  %.val.i.i = load ptr, ptr %i.bj, align 8, !tbaa !67 ; 2 uses
  %i.bk = getelementptr i8, ptr %i.bj, i64 8
  %.val13.i.i = load ptr, ptr %i.bk, align 8, !tbaa !66
  %i.bl = ptrtoint ptr %.val13.i.i to i64
  %i.bm = ptrtoint ptr %.val.i.i to i64
  %i.bn = sub i64 %i.bl, %i.bm                    ; 3 uses
  %.sroa.speculated.i.i.i.i.i.i = call i64 @llvm.umin.i64(i64 %i.bh, i64 %i.bn) ; 2 uses
  %i.bo = icmp eq i64 %.sroa.speculated.i.i.i.i.i.i, 0
  br i1 %i.bo, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i: ; preds = %bb.v
  %i.bp = call i32 @memcmp(ptr noundef %.val.i.i, ptr noundef %.042229, i64 noundef %.sroa.speculated.i.i.i.i.i.i) #23 ; 2 uses
  %i.bq = icmp eq i32 %i.bp, 0
  br i1 %i.bq, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i, label %"_ZN9__gnu_cxx5__ops14_Iter_comp_valIZN5folly18CustomLogFormatter17parseFormatStringENS2_5RangeIPKcEEE3$_0EclIPKN12_GLOBAL__N_110FormatKeysEKS7_EEbT_RT0_.exit.i.i"

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i, %bb.v
  %.not.i.i.i.i.i.i = icmp eq i64 %i.bn, %i.bh
  br i1 %.not.i.i.i.i.i.i, label %"_ZN9__gnu_cxx5__ops14_Iter_comp_valIZN5folly18CustomLogFormatter17parseFormatStringENS2_5RangeIPKcEEE3$_0EclIPKN12_GLOBAL__N_110FormatKeysEKS7_EEbT_RT0_.exit.i.i", label %bb.w

bb.w:                                             ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i
  %i.br = sub i64 %i.bh, %i.bn
  %sh.diff.i.i.i.i.i.i = lshr i64 %i.br, 62
  %tr.sh.diff.i.i.i.i.i.i = trunc nuw nsw i64 %sh.diff.i.i.i.i.i.i to i32
  %i.bs = and i32 %tr.sh.diff.i.i.i.i.i.i, 2
  %i.bt = add nsw i32 %i.bs, -1
  br label %"_ZN9__gnu_cxx5__ops14_Iter_comp_valIZN5folly18CustomLogFormatter17parseFormatStringENS2_5RangeIPKcEEE3$_0EclIPKN12_GLOBAL__N_110FormatKeysEKS7_EEbT_RT0_.exit.i.i"

"_ZN9__gnu_cxx5__ops14_Iter_comp_valIZN5folly18CustomLogFormatter17parseFormatStringENS2_5RangeIPKcEEE3$_0EclIPKN12_GLOBAL__N_110FormatKeysEKS7_EEbT_RT0_.exit.i.i": ; preds = %bb.w, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i
  %.0.i.i.i.i.i.i = phi i32 [ %i.bt, %bb.w ], [ 0, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i ], [ %i.bp, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i ]
  %i.bu = icmp slt i32 %.0.i.i.i.i.i.i, 0         ; 2 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bj, i64 32
  %i.bw = xor i64 %i.bi, -1
  %i.bx = add nsw i64 %.0113.i.i, %i.bw
  %.112.i.i = select i1 %i.bu, i64 %i.bx, i64 %i.bi ; 2 uses
  %.1.i.i = select i1 %i.bu, ptr %i.bv, ptr %.04.i.i ; 6 uses
  %i.by = icmp sgt i64 %.112.i.i, 0
  br i1 %i.by, label %bb.v, label %"_ZSt11lower_boundIPKN12_GLOBAL__N_110FormatKeysEN5folly5RangeIPKcEEZNS4_18CustomLogFormatter17parseFormatStringES8_E3$_0ET_SB_SB_RKT0_T1_.exit", !llvm.loop !83

"_ZSt11lower_boundIPKN12_GLOBAL__N_110FormatKeysEN5folly5RangeIPKcEEZNS4_18CustomLogFormatter17parseFormatStringES8_E3$_0ET_SB_SB_RKT0_T1_.exit": ; preds = %"_ZN9__gnu_cxx5__ops14_Iter_comp_valIZN5folly18CustomLogFormatter17parseFormatStringENS2_5RangeIPKcEEE3$_0EclIPKN12_GLOBAL__N_110FormatKeysEKS7_EEbT_RT0_.exit.i.i"
  %i.bz = icmp eq ptr %.1.i.i, getelementptr inbounds nuw (i8, ptr @_ZN12_GLOBAL__N_110formatKeysE, i64 416)
  br i1 %i.bz, label %.critedge, label %bb.x, !prof !77

bb.x:                                             ; preds = %"_ZSt11lower_boundIPKN12_GLOBAL__N_110FormatKeysEN5folly5RangeIPKcEEZNS4_18CustomLogFormatter17parseFormatStringES8_E3$_0ET_SB_SB_RKT0_T1_.exit"
  %i.ca = getelementptr inbounds nuw i8, ptr %.1.i.i, i64 8
  %i.cb = load ptr, ptr %i.ca, align 8, !tbaa !66 ; 2 uses
  %i.cc = load ptr, ptr %.1.i.i, align 8, !tbaa !67 ; 8 uses
  %i.cd = ptrtoint ptr %i.cb to i64
  %i.ce = ptrtoint ptr %i.cc to i64
  %i.cf = sub i64 %i.cd, %i.ce
  %.not.i.i76 = icmp eq i64 %i.cf, %i.bh
  br i1 %.not.i.i76, label %bb.y, label %.critedge, !prof !85

bb.y:                                             ; preds = %bb.x
  %i.cg = icmp eq ptr %i.cb, %i.cc
  br i1 %i.cg, label %_ZN5follyneIPKcEEbRKNS_5RangeIT_EES7_.exit.thread172, label %_ZN5follyneIPKcEEbRKNS_5RangeIT_EES7_.exit

_ZN5follyneIPKcEEbRKNS_5RangeIT_EES7_.exit:       ; preds = %bb.y
  %bcmp.i.i = call i32 @bcmp(ptr %i.cc, ptr %.042229, i64 %i.bh)
  %.not186 = icmp eq i32 %bcmp.i.i, 0
  br i1 %.not186, label %_ZN5follyneIPKcEEbRKNS_5RangeIT_EES7_.exit.thread172, label %.critedge, !prof !86

.critedge:                                        ; preds = %bb.x, %"_ZSt11lower_boundIPKN12_GLOBAL__N_110FormatKeysEN5folly5RangeIPKcEEZNS4_18CustomLogFormatter17parseFormatStringES8_E3$_0ET_SB_SB_RKT0_T1_.exit", %_ZN5follyneIPKcEEbRKNS_5RangeIT_EES7_.exit
  %i.ch = call ptr @__cxa_allocate_exception(i64 16) #23 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #23
  invoke void @_ZN5folly2toINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEJA26_cNS_5RangeIPKcEEA2_cETnNSt9enable_ifIXaasr12IsSomeStringIT_EE5valueoonesZT0_Li1Entsr3std7is_sameISE_19__type_pack_elementIXmisPvDpT0_ELi1EEJvSH_EEEE5valueEiE4typeELi0EEESE_DpRKSG_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %5, ptr noundef nonnull align 1 dereferenceable(26) @.str.2, ptr noundef nonnull align 8 dereferenceable(16) %4, ptr noundef nonnull align 1 dereferenceable(2) @.str.3)
          to label %bb.z unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread

bb.z:                                             ; preds = %.critedge
  invoke void @_ZNSt13runtime_errorC1ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(16) %i.ch, ptr noundef nonnull align 8 dereferenceable(32) %5)
          to label %bb.aa unwind label %bb.ab

bb.aa:                                            ; preds = %bb.z
  invoke void @__cxa_throw(ptr nonnull %i.ch, ptr nonnull @_ZTISt13runtime_error, ptr nonnull @_ZNSt13runtime_errorD1Ev) #24
          to label %bb.ci unwind label %bb.ab

.loopexit193:                                     ; preds = %bb.aq
  %lpad.loopexit195 = landingpad { ptr, i32 }
          cleanup
  br label %bb.at

.loopexit.split-lp194:                            ; preds = %bb.an
  %lpad.loopexit.split-lp196 = landingpad { ptr, i32 }
          cleanup
  br label %bb.at

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread: ; preds = %.critedge
  %i.ci = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #23
  br label %bb.ac

bb.ab:                                            ; preds = %bb.aa, %bb.z
  %.0 = phi i1 [ false, %bb.aa ], [ true, %bb.z ] ; 2 uses
  %i.cj = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  %i.ck = load ptr, ptr %5, align 8, !tbaa !13    ; 2 uses
  %i.cl = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  %i.cm = icmp eq ptr %i.ck, %i.cl
  br i1 %i.cm, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i77

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i77: ; preds = %bb.ab
  %i.cn = load i64, ptr %i.cl, align 8, !tbaa !19
  %i.co = add i64 %i.cn, 1
  call void @_ZdlPvm(ptr noundef %i.ck, i64 noundef %i.co) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #23
  br i1 %.0, label %bb.ac, label %bb.at

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.ab
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #23
  br i1 %.0, label %bb.ac, label %bb.at

bb.ac:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i77, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %.pn57176 = phi { ptr, i32 } [ %i.ci, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread ], [ %i.cj, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %i.cj, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i77 ]
  call void @__cxa_free_exception(ptr %i.ch) #23
  br label %bb.at

_ZN5follyneIPKcEEbRKNS_5RangeIT_EES7_.exit.thread172: ; preds = %bb.y, %_ZN5follyneIPKcEEbRKNS_5RangeIT_EES7_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #23
  %i.cp = getelementptr inbounds nuw i8, ptr %.1.i.i, i64 16
  call void @llvm.experimental.noalias.scope.decl(metadata !87)
  store ptr %i.s, ptr %6, align 8, !tbaa !63, !alias.scope !87
  store i64 0, ptr %i.t, align 8, !tbaa !34, !alias.scope !87
  store i8 0, ptr %i.s, align 8, !tbaa !19, !alias.scope !87
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #23, !noalias !87
  store ptr %6, ptr %i.b, align 8, !tbaa !55, !noalias !87
  invoke void @_ZN5folly11toAppendFitIJmPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEETnNSt9enable_ifIXsr12IsSomeStringINSt14remove_pointerI19__type_pack_elementIXmisPDpT_ELi1EEJSC_EEE4typeEEE5valueEiE4typeELi0EEEvDpRKSB_(ptr noundef nonnull align 8 dereferenceable(8) %i.cp, ptr noundef nonnull align 8 dereferenceable(8) %i.b)
          to label %bb.ae unwind label %bb.ad

bb.ad:                                            ; preds = %_ZN5follyneIPKcEEbRKNS_5RangeIT_EES7_.exit.thread172
  %i.cq = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #23, !noalias !87
  %i.cr = load ptr, ptr %6, align 8, !tbaa !13, !alias.scope !87 ; 2 uses
  %i.cs = icmp eq ptr %i.cr, %i.s
  br i1 %i.cs, label %.body, label %.body.sink.split

bb.ae:                                            ; preds = %_ZN5follyneIPKcEEbRKNS_5RangeIT_EES7_.exit.thread172
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #23, !noalias !87
  %i.ct = load ptr, ptr %6, align 8, !tbaa !13    ; 3 uses
  %i.cu = load i64, ptr %i.t, align 8, !tbaa !34  ; 6 uses
  %i.cv = load i64, ptr %i.i, align 8, !tbaa !34  ; 5 uses
  %i.cw = sub i64 9223372036854775807, %i.cv
  %i.cx = icmp ult i64 %i.cw, %i.cu
  br i1 %i.cx, label %bb.af, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i

bb.af:                                            ; preds = %bb.ae
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.14) #24
          to label %.noexc80 unwind label %.loopexit.split-lp189

.noexc80:                                         ; preds = %bb.af
  unreachable

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i: ; preds = %bb.ae
  %i.cy = add i64 %i.cv, %i.cu                    ; 3 uses
  %i.cz = load ptr, ptr %3, align 8, !tbaa !13    ; 2 uses
  %i.da = icmp eq ptr %i.cz, %i.h                 ; 2 uses
  br i1 %i.da, label %bb.ag, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i

bb.ag:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i
  %i.db = icmp ult i64 %i.cv, 16
  call void @llvm.assume(i1 %i.db)
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i: ; preds = %bb.ag, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i
  %i.dc = load i64, ptr %i.h, align 8
  %i.dd = select i1 %i.da, i64 15, i64 %i.dc
  %.not.i.i.i = icmp ugt i64 %i.cy, %i.dd
  br i1 %.not.i.i.i, label %bb.al, label %bb.ah

bb.ah:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i
  %.not8.i.i.i = icmp eq i64 %i.cu, 0
  br i1 %.not8.i.i.i, label %bb.am, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  %i.de = getelementptr inbounds nuw i8, ptr %i.cz, i64 %i.cv ; 2 uses
  %cond.i.i.i = icmp eq i64 %i.cu, 1
  br i1 %cond.i.i.i, label %bb.aj, label %bb.ak

bb.aj:                                            ; preds = %bb.ai
  %i.df = load i8, ptr %i.ct, align 1, !tbaa !19
  store i8 %i.df, ptr %i.de, align 1, !tbaa !19
  br label %bb.am

bb.ak:                                            ; preds = %bb.ai
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.de, ptr align 1 %i.ct, i64 %i.cu, i1 false)
  br label %bb.am

bb.al:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %3, i64 noundef %i.cv, i64 noundef 0, ptr noundef %i.ct, i64 noundef %i.cu)
          to label %bb.am unwind label %.loopexit188

bb.am:                                            ; preds = %bb.ak, %bb.aj, %bb.ah, %bb.al
  store i64 %i.cy, ptr %i.i, align 8, !tbaa !34
  %i.dg = load ptr, ptr %3, align 8, !tbaa !13
  %i.dh = getelementptr inbounds nuw i8, ptr %i.dg, i64 %i.cy
  store i8 0, ptr %i.dh, align 1, !tbaa !19
  %i.di = load ptr, ptr %6, align 8, !tbaa !13    ; 2 uses
  %i.dj = icmp eq ptr %i.di, %i.s
  br i1 %i.dj, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit85, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i82

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i82: ; preds = %bb.am
  %i.dk = load i64, ptr %i.s, align 8, !tbaa !19
  %i.dl = add i64 %i.dk, 1
  call void @_ZdlPvm(ptr noundef %i.di, i64 noundef %i.dl) #22
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit85

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit85: ; preds = %bb.am, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i82
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #23
  %i.dm = load i64, ptr %i.i, align 8, !tbaa !34  ; 5 uses
  %i.dn = icmp eq i64 %i.dm, 9223372036854775807
  br i1 %i.dn, label %bb.an, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i86

bb.an:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit85
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.14) #24
          to label %.noexc89 unwind label %.loopexit.split-lp194

.noexc89:                                         ; preds = %bb.an
  unreachable

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i86: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit85
  %i.do = add nsw i64 %i.dm, 1                    ; 3 uses
  %i.dp = load ptr, ptr %3, align 8, !tbaa !13    ; 2 uses
  %i.dq = icmp eq ptr %i.dp, %i.h                 ; 2 uses
  br i1 %i.dq, label %bb.ao, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i87

bb.ao:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i86
  %i.dr = icmp ult i64 %i.dm, 16
  call void @llvm.assume(i1 %i.dr)
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i87

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i87: ; preds = %bb.ao, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i86
  %i.ds = load i64, ptr %i.h, align 8
  %i.dt = select i1 %i.dq, i64 15, i64 %i.ds
  %.not.i.i88 = icmp ugt i64 %i.do, %i.dt
  br i1 %.not.i.i88, label %bb.aq, label %bb.ap

bb.ap:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i87
  %i.du = getelementptr inbounds nuw i8, ptr %i.dp, i64 %i.dm
  %i.dv = load i8, ptr %.037231, align 1, !tbaa !19
  store i8 %i.dv, ptr %i.du, align 1, !tbaa !19
  br label %bb.ar

bb.aq:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i87
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %3, i64 noundef %i.dm, i64 noundef 0, ptr noundef nonnull %.037231, i64 noundef 1)
          to label %bb.ar unwind label %.loopexit193

bb.ar:                                            ; preds = %bb.ap, %bb.aq
  store i64 %i.do, ptr %i.i, align 8, !tbaa !34
  %i.dw = load ptr, ptr %3, align 8, !tbaa !13
  %i.dx = getelementptr inbounds nuw i8, ptr %i.dw, i64 %i.do
  store i8 0, ptr %i.dx, align 1, !tbaa !19
  %i.dy = getelementptr inbounds nuw i8, ptr %.1.i.i, i64 24
  %i.dz = load i64, ptr %i.dy, align 8, !tbaa !90
  %i.ea = add i64 %i.dz, %.035232
  switch i64 %i.bh, label %_ZN5follyeqINS_5RangeIPKcEEA4_cEENSt9enable_ifIXsr6detail23ComparableAsStringPieceIT_T0_EE5valueEbE4typeERKS7_RKS8_.exit111.thread184 [
    i64 4, label %_ZN5follyeqINS_5RangeIPKcEEA5_cEENSt9enable_ifIXsr6detail23ComparableAsStringPieceIT_T0_EE5valueEbE4typeERKS7_RKS8_.exit
    i64 3, label %_ZN5follyeqINS_5RangeIPKcEEA4_cEENSt9enable_ifIXsr6detail23ComparableAsStringPieceIT_T0_EE5valueEbE4typeERKS7_RKS8_.exit
  ]

_ZN5follyeqINS_5RangeIPKcEEA5_cEENSt9enable_ifIXsr6detail23ComparableAsStringPieceIT_T0_EE5valueEbE4typeERKS7_RKS8_.exit: ; preds = %bb.ar
  %i.eb = load i32, ptr %i.cc, align 1
  %i.ec = icmp ne i32 %i.eb, 1162627398
  %i.ed = zext i1 %i.ec to i32
  %i.ee = icmp eq i32 %i.ed, 0
  br i1 %i.ee, label %_ZN5follyeqINS_5RangeIPKcEEA5_cEENSt9enable_ifIXsr6detail23ComparableAsStringPieceIT_T0_EE5valueEbE4typeERKS7_RKS8_.exit.thread, label %_ZN5follyeqINS_5RangeIPKcEEA4_cEENSt9enable_ifIXsr6detail23ComparableAsStringPieceIT_T0_EE5valueEbE4typeERKS7_RKS8_.exit111.thread184

_ZN5follyeqINS_5RangeIPKcEEA5_cEENSt9enable_ifIXsr6detail23ComparableAsStringPieceIT_T0_EE5valueEbE4typeERKS7_RKS8_.exit.thread: ; preds = %_ZN5follyeqINS_5RangeIPKcEEA5_cEENSt9enable_ifIXsr6detail23ComparableAsStringPieceIT_T0_EE5valueEbE4typeERKS7_RKS8_.exit
  %i.ef = load i64, ptr %i.f, align 8, !tbaa !65
  %i.eg = add i64 %i.ef, 1
  store i64 %i.eg, ptr %i.f, align 8, !tbaa !65
  br label %_ZN5follyeqINS_5RangeIPKcEEA4_cEENSt9enable_ifIXsr6detail23ComparableAsStringPieceIT_T0_EE5valueEbE4typeERKS7_RKS8_.exit111.thread184

.loopexit188:                                     ; preds = %bb.al
  %lpad.loopexit190 = landingpad { ptr, i32 }
          cleanup
  br label %bb.as

.loopexit.split-lp189:                            ; preds = %bb.af
  %lpad.loopexit.split-lp191 = landingpad { ptr, i32 }
          cleanup
  br label %bb.as

bb.as:                                            ; preds = %.loopexit.split-lp189, %.loopexit188
  %lpad.phi192 = phi { ptr, i32 } [ %lpad.loopexit190, %.loopexit188 ], [ %lpad.loopexit.split-lp191, %.loopexit.split-lp189 ] ; 2 uses
  %i.eh = load ptr, ptr %6, align 8, !tbaa !13    ; 2 uses
  %i.ei = icmp eq ptr %i.eh, %i.s
  br i1 %i.ei, label %.body, label %.body.sink.split

.body.sink.split:                                 ; preds = %bb.as, %bb.ad
  %.sink = phi ptr [ %i.cr, %bb.ad ], [ %i.eh, %bb.as ]
  %.pn.ph = phi { ptr, i32 } [ %i.cq, %bb.ad ], [ %lpad.phi192, %bb.as ]
  %i.ej = load i64, ptr %i.s, align 8, !tbaa !19
  %i.ek = add i64 %i.ej, 1
  call void @_ZdlPvm(ptr noundef %.sink, i64 noundef %i.ek) #22
  br label %.body

.body:                                            ; preds = %.body.sink.split, %bb.as, %bb.ad
  %.pn = phi { ptr, i32 } [ %i.cq, %bb.ad ], [ %lpad.phi192, %bb.as ], [ %.pn.ph, %.body.sink.split ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #23
  br label %bb.at

_ZN5follyeqINS_5RangeIPKcEEA4_cEENSt9enable_ifIXsr6detail23ComparableAsStringPieceIT_T0_EE5valueEbE4typeERKS7_RKS8_.exit: ; preds = %bb.ar
  %i.el = load i16, ptr %i.cc, align 1
  %i.em = xor i16 %i.el, 21830
  %i.en = getelementptr i8, ptr %i.cc, i64 2
  %i.eo = load i8, ptr %i.en, align 1
  %i.ep = zext i8 %i.eo to i16
  %i.eq = xor i16 %i.ep, 78
  %i.er = or i16 %i.em, %i.eq
  %i.es = icmp ne i16 %i.er, 0
  %i.et = zext i1 %i.es to i32
  %i.eu = icmp eq i32 %i.et, 0
  br i1 %i.eu, label %_ZN5follyeqINS_5RangeIPKcEEA4_cEENSt9enable_ifIXsr6detail23ComparableAsStringPieceIT_T0_EE5valueEbE4typeERKS7_RKS8_.exit.thread, label %_ZN5follyeqINS_5RangeIPKcEEA4_cEENSt9enable_ifIXsr6detail23ComparableAsStringPieceIT_T0_EE5valueEbE4typeERKS7_RKS8_.exit111

_ZN5follyeqINS_5RangeIPKcEEA4_cEENSt9enable_ifIXsr6detail23ComparableAsStringPieceIT_T0_EE5valueEbE4typeERKS7_RKS8_.exit.thread: ; preds = %_ZN5follyeqINS_5RangeIPKcEEA4_cEENSt9enable_ifIXsr6detail23ComparableAsStringPieceIT_T0_EE5valueEbE4typeERKS7_RKS8_.exit
  %i.ev = load i64, ptr %i.e, align 8, !tbaa !68
  %i.ew = add i64 %i.ev, 1
  store i64 %i.ew, ptr %i.e, align 8, !tbaa !68
  br label %_ZN5follyeqINS_5RangeIPKcEEA4_cEENSt9enable_ifIXsr6detail23ComparableAsStringPieceIT_T0_EE5valueEbE4typeERKS7_RKS8_.exit111.thread184

_ZN5follyeqINS_5RangeIPKcEEA4_cEENSt9enable_ifIXsr6detail23ComparableAsStringPieceIT_T0_EE5valueEbE4typeERKS7_RKS8_.exit111: ; preds = %_ZN5follyeqINS_5RangeIPKcEEA4_cEENSt9enable_ifIXsr6detail23ComparableAsStringPieceIT_T0_EE5valueEbE4typeERKS7_RKS8_.exit
  %i.ex = load i16, ptr %i.cc, align 1
  %i.ey = xor i16 %i.ex, 18758
  %i.ez = getelementptr i8, ptr %i.cc, i64 2
  %i.fa = load i8, ptr %i.ez, align 1
  %i.fb = zext i8 %i.fa to i16
  %i.fc = xor i16 %i.fb, 76
  %i.fd = or i16 %i.ey, %i.fc
  %i.fe = icmp ne i16 %i.fd, 0
  %i.ff = zext i1 %i.fe to i32
  %i.fg = icmp eq i32 %i.ff, 0
  br i1 %i.fg, label %_ZN5follyeqINS_5RangeIPKcEEA4_cEENSt9enable_ifIXsr6detail23ComparableAsStringPieceIT_T0_EE5valueEbE4typeERKS7_RKS8_.exit111.thread, label %_ZN5follyeqINS_5RangeIPKcEEA4_cEENSt9enable_ifIXsr6detail23ComparableAsStringPieceIT_T0_EE5valueEbE4typeERKS7_RKS8_.exit111.thread184

_ZN5follyeqINS_5RangeIPKcEEA4_cEENSt9enable_ifIXsr6detail23ComparableAsStringPieceIT_T0_EE5valueEbE4typeERKS7_RKS8_.exit111.thread: ; preds = %_ZN5follyeqINS_5RangeIPKcEEA4_cEENSt9enable_ifIXsr6detail23ComparableAsStringPieceIT_T0_EE5valueEbE4typeERKS7_RKS8_.exit111
  %i.fh = load i64, ptr %i.g, align 8, !tbaa !22
  %i.fi = add i64 %i.fh, 1
  store i64 %i.fi, ptr %i.g, align 8, !tbaa !22
  br label %_ZN5follyeqINS_5RangeIPKcEEA4_cEENSt9enable_ifIXsr6detail23ComparableAsStringPieceIT_T0_EE5valueEbE4typeERKS7_RKS8_.exit111.thread184

_ZN5follyeqINS_5RangeIPKcEEA4_cEENSt9enable_ifIXsr6detail23ComparableAsStringPieceIT_T0_EE5valueEbE4typeERKS7_RKS8_.exit111.thread184: ; preds = %_ZN5follyeqINS_5RangeIPKcEEA5_cEENSt9enable_ifIXsr6detail23ComparableAsStringPieceIT_T0_EE5valueEbE4typeERKS7_RKS8_.exit, %bb.ar, %_ZN5follyeqINS_5RangeIPKcEEA4_cEENSt9enable_ifIXsr6detail23ComparableAsStringPieceIT_T0_EE5valueEbE4typeERKS7_RKS8_.exit.thread, %_ZN5follyeqINS_5RangeIPKcEEA4_cEENSt9enable_ifIXsr6detail23ComparableAsStringPieceIT_T0_EE5valueEbE4typeERKS7_RKS8_.exit111.thread, %_ZN5follyeqINS_5RangeIPKcEEA4_cEENSt9enable_ifIXsr6detail23ComparableAsStringPieceIT_T0_EE5valueEbE4typeERKS7_RKS8_.exit111, %_ZN5follyeqINS_5RangeIPKcEEA5_cEENSt9enable_ifIXsr6detail23ComparableAsStringPieceIT_T0_EE5valueEbE4typeERKS7_RKS8_.exit.thread
  %i.fj = load i8, ptr %.037231, align 1, !tbaa !19
  %i.fk = icmp eq i8 %i.fj, 58
  %. = select i1 %i.fk, i32 2, i32 0
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #23
  br label %bb.az

bb.at:                                            ; preds = %.loopexit193, %.loopexit.split-lp194, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i77, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %bb.ac, %.body
  %.pn57.pn = phi { ptr, i32 } [ %.pn57176, %bb.ac ], [ %i.cj, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %i.cj, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i77 ], [ %.pn, %.body ], [ %lpad.loopexit195, %.loopexit193 ], [ %lpad.loopexit.split-lp196, %.loopexit.split-lp194 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #23
  br label %bb.ch

bb.au:                                            ; preds = %bb.f
  %i.fl = load i64, ptr %i.i, align 8, !tbaa !34  ; 5 uses
  %i.fm = icmp eq i64 %i.fl, 9223372036854775807
  br i1 %i.fm, label %.invoke, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i112

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i112: ; preds = %bb.au
  %i.fn = add nsw i64 %i.fl, 1                    ; 3 uses
  %i.fo = load ptr, ptr %3, align 8, !tbaa !13    ; 2 uses
  %i.fp = icmp eq ptr %i.fo, %i.h                 ; 2 uses
  br i1 %i.fp, label %bb.av, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i113

bb.av:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i112
  %i.fq = icmp ult i64 %i.fl, 16
  call void @llvm.assume(i1 %i.fq)
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i113

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i113: ; preds = %bb.av, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i112
  %i.fr = load i64, ptr %i.h, align 8
  %i.fs = select i1 %i.fp, i64 15, i64 %i.fr
  %.not.i.i114 = icmp ugt i64 %i.fn, %i.fs
  br i1 %.not.i.i114, label %bb.ax, label %bb.aw

bb.aw:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i113
  %i.ft = getelementptr inbounds nuw i8, ptr %i.fo, i64 %i.fl
  %i.fu = load i8, ptr %.037231, align 1, !tbaa !19
  store i8 %i.fu, ptr %i.ft, align 1, !tbaa !19
  br label %bb.ay

bb.ax:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i113
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %3, i64 noundef %i.fl, i64 noundef 0, ptr noundef %.037231, i64 noundef 1)
          to label %bb.ay unwind label %.loopexit.a

bb.ay:                                            ; preds = %bb.aw, %bb.ax
  store i64 %i.fn, ptr %i.i, align 8, !tbaa !34
  %i.fv = load ptr, ptr %3, align 8, !tbaa !13
  %i.fw = getelementptr inbounds nuw i8, ptr %i.fv, i64 %i.fn
  store i8 0, ptr %i.fw, align 1, !tbaa !19
  %i.fx = load i8, ptr %.037231, align 1, !tbaa !19
  %i.fy = icmp eq i8 %i.fx, 125
  %spec.select = select i1 %i.fy, i32 0, i32 2
  br label %bb.az

default.unreachable288:                           ; preds = %bb.f
  unreachable

bb.az:                                            ; preds = %bb.ay, %bb.t, %bb.r, %bb.s, %bb.q, %_ZN5follyeqINS_5RangeIPKcEEA4_cEENSt9enable_ifIXsr6detail23ComparableAsStringPieceIT_T0_EE5valueEbE4typeERKS7_RKS8_.exit111.thread184
  %.143 = phi ptr [ %.042229, %bb.ay ], [ %.042229, %bb.q ], [ %i.af, %bb.r ], [ %.042229, %bb.s ], [ %.042229, %_ZN5follyeqINS_5RangeIPKcEEA4_cEENSt9enable_ifIXsr6detail23ComparableAsStringPieceIT_T0_EE5valueEbE4typeERKS7_RKS8_.exit111.thread184 ], [ %.042229, %bb.t ]
  %.241 = phi i32 [ %spec.select, %bb.ay ], [ 0, %bb.q ], [ 1, %bb.r ], [ 0, %bb.s ], [ %., %_ZN5follyeqINS_5RangeIPKcEEA4_cEENSt9enable_ifIXsr6detail23ComparableAsStringPieceIT_T0_EE5valueEbE4typeERKS7_RKS8_.exit111.thread184 ], [ 1, %bb.t ] ; 2 uses
  %.138 = phi ptr [ %.037231, %bb.ay ], [ %i.af, %bb.q ], [ %.037231, %bb.r ], [ %.037231, %bb.s ], [ %.037231, %_ZN5follyeqINS_5RangeIPKcEEA4_cEENSt9enable_ifIXsr6detail23ComparableAsStringPieceIT_T0_EE5valueEbE4typeERKS7_RKS8_.exit111.thread184 ], [ %.037231, %bb.t ]
  %.136 = phi i64 [ %.035232, %bb.ay ], [ %i.ba, %bb.q ], [ %.035232, %bb.r ], [ %i.bd, %bb.s ], [ %i.ea, %_ZN5follyeqINS_5RangeIPKcEEA4_cEENSt9enable_ifIXsr6detail23ComparableAsStringPieceIT_T0_EE5valueEbE4typeERKS7_RKS8_.exit111.thread184 ], [ %.035232, %bb.t ] ; 2 uses
  %i.fz = getelementptr inbounds nuw i8, ptr %.138, i64 1 ; 2 uses
  %i.ga = icmp ult ptr %i.fz, %2
  br i1 %i.ga, label %bb.f, label %._crit_edge, !llvm.loop !92

bb.ba:                                            ; preds = %._crit_edge
  %i.gb = call ptr @__cxa_allocate_exception(i64 16) #23 ; 3 uses
  invoke void @_ZNSt13runtime_errorC1EPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.gb, ptr noundef nonnull @.str.7)
          to label %bb.bb unwind label %bb.bc

bb.bb:                                            ; preds = %bb.ba
  invoke void @__cxa_throw(ptr nonnull %i.gb, ptr nonnull @_ZTISt13runtime_error, ptr nonnull @_ZNSt13runtime_errorD1Ev) #24
          to label %bb.ci unwind label %bb.bd

bb.bc:                                            ; preds = %bb.ba
  %i.gc = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_free_exception(ptr nonnull %i.gb) #23
  br label %bb.ch

bb.bd:                                            ; preds = %bb.bj, %bb.bh, %bb.be, %bb.bb
  %i.gd = landingpad { ptr, i32 }
          cleanup
  br label %bb.ch

._crit_edge.thread:                               ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7reserveEm.exit, %._crit_edge
  %.035.lcssa291 = phi i64 [ %.136, %._crit_edge ], [ 0, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7reserveEm.exit ] ; 2 uses
  %i.ge = load i64, ptr %i.i, align 8, !tbaa !34  ; 5 uses
  switch i64 %i.ge, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i118 [
    i64 0, label %bb.bj
    i64 9223372036854775807, label %bb.be
  ]

bb.be:                                            ; preds = %._crit_edge.thread
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.14) #24
          to label %.noexc121 unwind label %bb.bd

.noexc121:                                        ; preds = %bb.be
  unreachable

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i118: ; preds = %._crit_edge.thread
  %i.gf = add nsw i64 %i.ge, 1                    ; 3 uses
  %i.gg = load ptr, ptr %3, align 8, !tbaa !13    ; 2 uses
  %i.gh = icmp eq ptr %i.gg, %i.h                 ; 2 uses
  br i1 %i.gh, label %bb.bf, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i119

bb.bf:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i118
  %i.gi = icmp ult i64 %i.ge, 16
  call void @llvm.assume(i1 %i.gi)
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i119

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i119: ; preds = %bb.bf, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i118
  %i.gj = load i64, ptr %i.h, align 8
  %i.gk = select i1 %i.gh, i64 15, i64 %i.gj
  %.not.i.i120 = icmp ugt i64 %i.gf, %i.gk
  br i1 %.not.i.i120, label %bb.bh, label %bb.bg

bb.bg:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i119
  %i.gl = getelementptr inbounds nuw i8, ptr %i.gg, i64 %i.ge
  store i8 32, ptr %i.gl, align 1, !tbaa !19
  br label %bb.bi

bb.bh:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i119
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %3, i64 noundef %i.ge, i64 noundef 0, ptr noundef nonnull @.str.8, i64 noundef 1)
          to label %bb.bi unwind label %bb.bd

bb.bi:                                            ; preds = %bb.bg, %bb.bh
  store i64 %i.gf, ptr %i.i, align 8, !tbaa !34
  %i.gm = load ptr, ptr %3, align 8, !tbaa !13
  %i.gn = getelementptr inbounds nuw i8, ptr %i.gm, i64 %i.gf
  store i8 0, ptr %i.gn, align 1, !tbaa !19
  %i.go = add i64 %.035.lcssa291, 1
  br label %bb.bj

bb.bj:                                            ; preds = %._crit_edge.thread, %bb.bi
  %.2 = phi i64 [ %.035.lcssa291, %._crit_edge.thread ], [ %i.go, %bb.bi ]
  %i.gp = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %i.gp, ptr noundef nonnull align 8 dereferenceable(32) %3)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit unwind label %bb.bd

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit: ; preds = %bb.bj
  %i.gq = getelementptr inbounds nuw i8, ptr %0, i64 72
  store i64 %.2, ptr %i.gq, align 8, !tbaa !64
  %i.gr = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.gs = load i8, ptr %i.gr, align 8, !tbaa !69, !range !70, !noundef !71
  %i.gt = trunc nuw i8 %i.gs to i1
  br i1 %i.gt, label %bb.bk, label %bb.bs

bb.bk:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #23
  store i64 14, ptr %i.c, align 8, !tbaa !21
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #23
  store i64 15, ptr %i.d, align 8, !tbaa !21
  invoke void @_ZN5folly2toINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEJA2_cmS7_S6_S7_mA3_cmS8_ETnNSt9enable_ifIXaasr12IsSomeStringIT_EE5valueoonesZT0_Li1Entsr3std7is_sameISA_19__type_pack_elementIXmisPvDpT0_ELi1EEJvSD_EEEE5valueEiE4typeELi0EEESA_DpRKSC_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %7, ptr noundef nonnull align 1 dereferenceable(2) @.str.9, ptr noundef nonnull align 8 dereferenceable(8) %i.c, ptr noundef nonnull align 1 dereferenceable(2) @.str.10, ptr noundef nonnull align 8 dereferenceable(32) %i.gp, ptr noundef nonnull align 1 dereferenceable(2) @.str.9, ptr noundef nonnull align 8 dereferenceable(8) @_ZN12_GLOBAL__N_112messageIndexE, ptr noundef nonnull align 1 dereferenceable(3) @.str.11, ptr noundef nonnull align 8 dereferenceable(8) %i.d, ptr noundef nonnull align 1 dereferenceable(3) @.str.12)
          to label %bb.bl unwind label %bb.br

bb.bl:                                            ; preds = %bb.bk
  %i.gu = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 4 uses
  %i.gv = load ptr, ptr %i.gu, align 8, !tbaa !13 ; 6 uses
  %i.gw = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.gx = icmp eq ptr %i.gv, %i.gw
  %i.gy = load ptr, ptr %7, align 8, !tbaa !13    ; 5 uses
  %i.gz = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 4 uses
  %i.ha = icmp eq ptr %i.gy, %i.gz                ; 2 uses
  br i1 %i.gx, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i: ; preds = %bb.bl
  br i1 %i.ha, label %bb.bm, label %.thread.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i: ; preds = %bb.bl
  br i1 %i.ha, label %bb.bm, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i

bb.bm:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i
  %i.hb = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 2 uses
  %i.hc = load i64, ptr %i.hb, align 8, !tbaa !34 ; 3 uses
  %i.hd = icmp ult i64 %i.hc, 16
  call void @llvm.assume(i1 %i.hd)
  switch i64 %i.hc, label %bb.bo [
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i125
    i64 1, label %bb.bn
  ]

bb.bn:                                            ; preds = %bb.bm
  %i.he = load i8, ptr %i.gy, align 1, !tbaa !19
  store i8 %i.he, ptr %i.gv, align 1, !tbaa !19
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i125

bb.bo:                                            ; preds = %bb.bm
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.gv, ptr align 1 %i.gy, i64 %i.hc, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i125

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i125: ; preds = %bb.bo, %bb.bn, %bb.bm
  %i.hf = load i64, ptr %i.hb, align 8, !tbaa !34 ; 2 uses
  %i.hg = getelementptr inbounds nuw i8, ptr %0, i64 48
  store i64 %i.hf, ptr %i.hg, align 8, !tbaa !34
  %i.hh = load ptr, ptr %i.gu, align 8, !tbaa !13
  %i.hi = getelementptr inbounds nuw i8, ptr %i.hh, i64 %i.hf
  store i8 0, ptr %i.hi, align 1, !tbaa !19
  %.pre.i = load ptr, ptr %7, align 8, !tbaa !13
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit

.thread.i:                                        ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i
  %i.hj = getelementptr inbounds nuw i8, ptr %0, i64 48
  store ptr %i.gy, ptr %i.gu, align 8, !tbaa !13
  %i.hk = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.hl = load <2 x i64>, ptr %i.hk, align 8, !tbaa !19
  store <2 x i64> %i.hl, ptr %i.hj, align 8, !tbaa !19
  br label %bb.bq

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i
  %i.hm = load i64, ptr %i.gw, align 8, !tbaa !19
  store ptr %i.gy, ptr %i.gu, align 8, !tbaa !13
  %i.hn = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.ho = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.hp = load <2 x i64>, ptr %i.hn, align 8, !tbaa !19
  store <2 x i64> %i.hp, ptr %i.ho, align 8, !tbaa !19
  %.not.i124 = icmp eq ptr %i.gv, null
  br i1 %.not.i124, label %bb.bq, label %bb.bp

bb.bp:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i
  store ptr %i.gv, ptr %7, align 8, !tbaa !13
  store i64 %i.hm, ptr %i.gz, align 8, !tbaa !19
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit

bb.bq:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i, %.thread.i
  store ptr %i.gz, ptr %7, align 8, !tbaa !13
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i125, %bb.bp, %bb.bq
  %i.hq = phi ptr [ %.pre.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i125 ], [ %i.gv, %bb.bp ], [ %i.gz, %bb.bq ]
  %i.hr = getelementptr inbounds nuw i8, ptr %7, i64 8
  store i64 0, ptr %i.hr, align 8, !tbaa !34
  store i8 0, ptr %i.hq, align 1, !tbaa !19
  %i.hs = load ptr, ptr %7, align 8, !tbaa !13    ; 2 uses
  %i.ht = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 2 uses
  %i.hu = icmp eq ptr %i.hs, %i.ht
  br i1 %i.hu, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit129, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i126

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i126: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit
  %i.hv = load i64, ptr %i.ht, align 8, !tbaa !19
  %i.hw = add i64 %i.hv, 1
  call void @_ZdlPvm(ptr noundef %i.hs, i64 noundef %i.hw) #22
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit129

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit129: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i126
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #23
  br label %bb.cg

bb.br:                                            ; preds = %bb.bk
  %i.hx = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #23
  br label %bb.ch

bb.bs:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #23
  call void @llvm.experimental.noalias.scope.decl(metadata !93)
  %i.hy = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 13 uses
  store ptr %i.hy, ptr %8, align 8, !tbaa !63, !alias.scope !93
  %i.hz = getelementptr inbounds nuw i8, ptr %8, i64 8 ; 7 uses
  store i64 0, ptr %i.hz, align 8, !tbaa !34, !alias.scope !93
  store i8 0, ptr %i.hy, align 8, !tbaa !19, !alias.scope !93
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #23, !noalias !93
  store ptr %8, ptr %i.a, align 8, !tbaa !55, !noalias !93
  %i.ia = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ib = load i64, ptr %i.ia, align 8, !tbaa !34, !noalias !93
  %i.ic = invoke noundef i64 @_ZN5folly13to_ascii_sizeILm10EEEmm(i64 noundef 13)
          to label %.noexc.i unwind label %bb.bz

.noexc.i:                                         ; preds = %bb.bs
  %i.id = add i64 %i.ib, 5
  %i.ie = add i64 %i.id, %i.ic                    ; 4 uses
  %i.if = load ptr, ptr %8, align 8, !tbaa !13    ; 4 uses
  %i.ig = icmp eq ptr %i.if, %i.hy                ; 2 uses
  %i.ih = load i64, ptr %i.hy, align 8            ; 2 uses
  %i.ii = select i1 %i.ig, i64 15, i64 %i.ih      ; 2 uses
  %.not.i156 = icmp ugt i64 %i.ie, %i.ii
  br i1 %.not.i156, label %bb.bt, label %.noexc6.i

bb.bt:                                            ; preds = %.noexc.i
  %i.ij = icmp slt i64 %i.ie, 0
  br i1 %i.ij, label %bb.bu, label %bb.bv

bb.bu:                                            ; preds = %bb.bt
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.13) #24
          to label %.noexc164 unwind label %bb.bz

.noexc164:                                        ; preds = %bb.bu
  unreachable

bb.bv:                                            ; preds = %bb.bt
  %i.ik = shl nuw i64 %i.ii, 1                    ; 2 uses
  %i.il = icmp ult i64 %i.ie, %i.ik
  %spec.store.select.i.i157 = call i64 @llvm.umin.i64(i64 %i.ik, i64 9223372036854775807)
  %.0.i158 = select i1 %i.il, i64 %spec.store.select.i.i157, i64 %i.ie ; 2 uses
  %i.im = add nuw i64 %.0.i158, 1                 ; 2 uses
  %i.in = icmp slt i64 %i.im, 0
  br i1 %i.in, label %bb.bw, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i159, !prof !77

bb.bw:                                            ; preds = %bb.bv
  invoke void @_ZSt17__throw_bad_allocv() #24
          to label %.noexc165 unwind label %bb.bz

.noexc165:                                        ; preds = %bb.bw
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i159: ; preds = %bb.bv
  %i.io = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.im) #25
          to label %.noexc166 unwind label %bb.bz ; 3 uses

.noexc166:                                        ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i159
  %i.ip = load i64, ptr %i.hz, align 8, !tbaa !34 ; 2 uses
  %i.iq = add i64 %i.ip, 1                        ; 2 uses
  switch i64 %i.iq, label %bb.by [
    i64 1, label %bb.bx
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i160
  ]

bb.bx:                                            ; preds = %.noexc166
  %i.ir = load i8, ptr %i.if, align 1, !tbaa !19
  store i8 %i.ir, ptr %i.io, align 1, !tbaa !19
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i160

bb.by:                                            ; preds = %.noexc166
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.io, ptr align 1 %i.if, i64 %i.iq, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i160

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i160: ; preds = %bb.by, %bb.bx, %.noexc166
  br i1 %i.ig, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i163, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i161

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i163: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i160
  %i.is = icmp ult i64 %i.ip, 16
  call void @llvm.assume(i1 %i.is)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_disposeEv.exit.i162

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i161: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i160
  %i.it = add i64 %i.ih, 1
  call void @_ZdlPvm(ptr noundef %i.if, i64 noundef %i.it) #22
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_disposeEv.exit.i162

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_disposeEv.exit.i162: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i161, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i163
  store ptr %i.io, ptr %8, align 8, !tbaa !13
  store i64 %.0.i158, ptr %i.hy, align 8, !tbaa !19
  br label %.noexc6.i

.noexc6.i:                                        ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_disposeEv.exit.i162, %.noexc.i
  invoke void @_ZN5folly6detail18ToAppendStrImplAllISt16integer_sequenceImJLm0ELm1ELm2ELm3ELm4EEEE4callIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEA2_cmA3_cPSB_EEEvDpRKT_(ptr noundef nonnull align 8 dereferenceable(32) %i.gp, ptr noundef nonnull align 1 dereferenceable(2) @.str.9, ptr noundef nonnull align 8 dereferenceable(8) @_ZN12_GLOBAL__N_112messageIndexE, ptr noundef nonnull align 1 dereferenceable(3) @.str.12, ptr noundef nonnull align 8 dereferenceable(8) %i.a)
          to label %bb.ca unwind label %bb.bz

bb.bz:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i159, %bb.bw, %bb.bu, %.noexc6.i, %bb.bs
  %i.iu = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #23, !noalias !93
  %i.iv = load ptr, ptr %8, align 8, !tbaa !13, !alias.scope !93 ; 2 uses
  %i.iw = icmp eq ptr %i.iv, %i.hy
  br i1 %i.iw, label %.body133, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i130

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i130: ; preds = %bb.bz
  %i.ix = load i64, ptr %i.hy, align 8, !tbaa !19, !alias.scope !93
  %i.iy = add i64 %i.ix, 1
  call void @_ZdlPvm(ptr noundef %i.iv, i64 noundef %i.iy) #22
  br label %.body133

bb.ca:                                            ; preds = %.noexc6.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #23, !noalias !93
  %i.iz = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 4 uses
  %i.ja = load ptr, ptr %i.iz, align 8, !tbaa !13 ; 6 uses
  %i.jb = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.jc = icmp eq ptr %i.ja, %i.jb
  %i.jd = load ptr, ptr %8, align 8, !tbaa !13    ; 5 uses
  %i.je = icmp eq ptr %i.jd, %i.hy                ; 2 uses
  br i1 %i.jc, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i140, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i135

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i140: ; preds = %bb.ca
  br i1 %i.je, label %bb.cb, label %.thread.i141

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i135: ; preds = %bb.ca
  br i1 %i.je, label %bb.cb, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i136

bb.cb:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i135, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i140
  %i.jf = load i64, ptr %i.hz, align 8, !tbaa !34 ; 3 uses
  %i.jg = icmp ult i64 %i.jf, 16
  call void @llvm.assume(i1 %i.jg)
  switch i64 %i.jf, label %bb.cd [
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i138
    i64 1, label %bb.cc
  ]

bb.cc:                                            ; preds = %bb.cb
  %i.jh = load i8, ptr %i.jd, align 1, !tbaa !19
  store i8 %i.jh, ptr %i.ja, align 1, !tbaa !19
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i138

bb.cd:                                            ; preds = %bb.cb
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.ja, ptr align 1 %i.jd, i64 %i.jf, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i138

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i138: ; preds = %bb.cd, %bb.cc, %bb.cb
  %i.ji = load i64, ptr %i.hz, align 8, !tbaa !34 ; 2 uses
  %i.jj = getelementptr inbounds nuw i8, ptr %0, i64 48
  store i64 %i.ji, ptr %i.jj, align 8, !tbaa !34
  %i.jk = load ptr, ptr %i.iz, align 8, !tbaa !13
  %i.jl = getelementptr inbounds nuw i8, ptr %i.jk, i64 %i.ji
  store i8 0, ptr %i.jl, align 1, !tbaa !19
  %.pre.i139 = load ptr, ptr %8, align 8, !tbaa !13
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit142

.thread.i141:                                     ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i140
  %i.jm = getelementptr inbounds nuw i8, ptr %0, i64 48
  store ptr %i.jd, ptr %i.iz, align 8, !tbaa !13
  %i.jn = load <2 x i64>, ptr %i.hz, align 8, !tbaa !19
  store <2 x i64> %i.jn, ptr %i.jm, align 8, !tbaa !19
  br label %bb.cf

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i136: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i135
  %i.jo = load i64, ptr %i.jb, align 8, !tbaa !19
  store ptr %i.jd, ptr %i.iz, align 8, !tbaa !13
  %i.jp = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.jq = load <2 x i64>, ptr %i.hz, align 8, !tbaa !19
  store <2 x i64> %i.jq, ptr %i.jp, align 8, !tbaa !19
  %.not.i137 = icmp eq ptr %i.ja, null
  br i1 %.not.i137, label %bb.cf, label %bb.ce

bb.ce:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i136
  store ptr %i.ja, ptr %8, align 8, !tbaa !13
  store i64 %i.jo, ptr %i.hy, align 8, !tbaa !19
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit142

bb.cf:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i136, %.thread.i141
  store ptr %i.hy, ptr %8, align 8, !tbaa !13
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit142

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit142: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i138, %bb.ce, %bb.cf
  %i.jr = phi ptr [ %.pre.i139, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i138 ], [ %i.ja, %bb.ce ], [ %i.hy, %bb.cf ]
  store i64 0, ptr %i.hz, align 8, !tbaa !34
  store i8 0, ptr %i.jr, align 1, !tbaa !19
  %i.js = load ptr, ptr %8, align 8, !tbaa !13    ; 2 uses
  %i.jt = icmp eq ptr %i.js, %i.hy
  br i1 %i.jt, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit146, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i143

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i143: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit142
  %i.ju = load i64, ptr %i.hy, align 8, !tbaa !19
  %i.jv = add i64 %i.ju, 1
  call void @_ZdlPvm(ptr noundef %i.js, i64 noundef %i.jv) #22
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit146

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit146: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit142, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i143
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #23
  br label %bb.cg

.body133:                                         ; preds = %bb.bz, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i130
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #23
  br label %bb.ch

bb.cg:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit146, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit129
  %i.jw = load ptr, ptr %3, align 8, !tbaa !13    ; 2 uses
  %i.jx = icmp eq ptr %i.jw, %i.h
  br i1 %i.jx, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit150, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i147

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i147: ; preds = %bb.cg
  %i.jy = load i64, ptr %i.h, align 8, !tbaa !19
  %i.jz = add i64 %i.jy, 1
  call void @_ZdlPvm(ptr noundef %i.jw, i64 noundef %i.jz) #22
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit150

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit150: ; preds = %bb.cg, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i147
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #23
  ret void

bb.ch:                                            ; preds = %.loopexit.a, %.loopexit.split-lp, %bb.bc, %bb.bd, %bb.br, %.body133, %bb.at, %bb.e
  %.pn61.pn.pn = phi { ptr, i32 } [ %i.u, %bb.e ], [ %i.iu, %.body133 ], [ %i.gd, %bb.bd ], [ %i.gc, %bb.bc ], [ %i.hx, %bb.br ], [ %.pn57.pn, %bb.at ], [ %lpad.loopexit, %.loopexit.a ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  %i.ka = load ptr, ptr %3, align 8, !tbaa !13    ; 2 uses
  %i.kb = icmp eq ptr %i.ka, %i.h
  br i1 %i.kb, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit154, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i151

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i151: ; preds = %bb.ch
  %i.kc = load i64, ptr %i.h, align 8, !tbaa !19
  %i.kd = add i64 %i.kc, 1
  call void @_ZdlPvm(ptr noundef %i.ka, i64 noundef %i.kd) #22
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit154

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit154: ; preds = %bb.ch, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i151
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #23
  resume { ptr, i32 } %.pn61.pn.pn

bb.ci:                                            ; preds = %bb.bb, %bb.aa
  unreachable
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #2

declare i32 @__gxx_personality_v0(...)

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #2

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPvm(ptr noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7reserveEm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %1) local_unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit:
  %i.a = load ptr, ptr %0, align 8, !tbaa !13     ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.c = icmp eq ptr %i.a, %i.b                   ; 2 uses
  %i.d = load i64, ptr %i.b, align 8              ; 2 uses
  %i.e = select i1 %i.c, i64 15, i64 %i.d         ; 2 uses
  %.not = icmp ugt i64 %1, %i.e
  br i1 %.not, label %bb.a, label %bb.g

bb.a:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit
  %i.f = icmp slt i64 %1, 0
  br i1 %i.f, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.13) #24
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.g = shl nuw i64 %i.e, 1                      ; 2 uses
  %i.h = icmp ult i64 %1, %i.g
  %spec.store.select.i = tail call i64 @llvm.umin.i64(i64 %i.g, i64 9223372036854775807)
  %.0 = select i1 %i.h, i64 %spec.store.select.i, i64 %1 ; 2 uses
  %i.i = add nuw i64 %.0, 1                       ; 2 uses
  %i.j = icmp slt i64 %i.i, 0
  br i1 %i.j, label %bb.d, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit, !prof !77

bb.d:                                             ; preds = %bb.c
  tail call void @_ZSt17__throw_bad_allocv() #24
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit: ; preds = %bb.c
  %i.k = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.i) #25 ; 3 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.m = load i64, ptr %i.l, align 8, !tbaa !34   ; 2 uses
  %i.n = add i64 %i.m, 1                          ; 2 uses
  switch i64 %i.n, label %bb.f [
    i64 1, label %bb.e
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit
  ]

bb.e:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit
  %i.o = load i8, ptr %i.a, align 1, !tbaa !19
  store i8 %i.o, ptr %i.k, align 1, !tbaa !19
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit

bb.f:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.k, ptr align 1 %i.a, i64 %i.n, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit, %bb.e, %bb.f
  br i1 %i.c, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit
  %i.p = icmp ult i64 %i.m, 16
  tail call void @llvm.assume(i1 %i.p)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_disposeEv.exit

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit
  %i.q = add i64 %i.d, 1
  tail call void @_ZdlPvm(ptr noundef %i.a, i64 noundef %i.q) #22
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_disposeEv.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_disposeEv.exit: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i
  store ptr %i.k, ptr %0, align 8, !tbaa !13
  store i64 %.0, ptr %i.b, align 8, !tbaa !19
  br label %bb.g

bb.g:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_disposeEv.exit
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i32 @memcmp(ptr noundef captures(none), ptr noundef captures(none), i64 noundef) local_unnamed_addr #4

declare ptr @__cxa_allocate_exception(i64) local_unnamed_addr

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN5folly2toINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEJA26_cNS_5RangeIPKcEEA2_cETnNSt9enable_ifIXaasr12IsSomeStringIT_EE5valueoonesZT0_Li1Entsr3std7is_sameISE_19__type_pack_elementIXmisPvDpT0_ELi1EEJvSH_EEEE5valueEiE4typeELi0EEESE_DpRKSG_(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef nonnull align 1 dereferenceable(26) %1, ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef nonnull align 1 dereferenceable(2) %3) local_unnamed_addr #1 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 5 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 4 uses
  store ptr %i.b, ptr %0, align 8, !tbaa !63
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 0, ptr %i.c, align 8, !tbaa !34
  store i8 0, ptr %i.b, align 8, !tbaa !19
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #23
  store ptr %0, ptr %i.a, align 8, !tbaa !55
  %.sroa.0.0.copyload.i.i.i.i = load ptr, ptr %2, align 8, !tbaa !26
  %.sroa.2.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %2, i64 8
  %.sroa.2.0.copyload.i.i.i.i = load ptr, ptr %.sroa.2.0..sroa_idx.i.i.i.i, align 8, !tbaa !26
  %i.d = ptrtoint ptr %.sroa.2.0.copyload.i.i.i.i to i64
  %i.e = ptrtoint ptr %.sroa.0.0.copyload.i.i.i.i to i64
  %reass.sub = sub i64 %i.d, %i.e
  %i.f = add i64 %reass.sub, 28
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7reserveEm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %i.f)
          to label %.noexc unwind label %bb.b

.noexc:                                           ; preds = %bb.a
  invoke void @_ZN5folly6detail18ToAppendStrImplAllISt16integer_sequenceImJLm0ELm1ELm2ELm3EEEE4callIJA26_cNS_5RangeIPKcEEA2_cPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEvDpRKT_(ptr noundef nonnull align 1 dereferenceable(26) %1, ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef nonnull align 1 dereferenceable(2) %3, ptr noundef nonnull align 8 dereferenceable(8) %i.a)
          to label %_ZN5folly11toAppendFitIJA26_cNS_5RangeIPKcEEA2_cPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEETnNSt9enable_ifIXsr12IsSomeStringINSt14remove_pointerI19__type_pack_elementIXmisPDpT_ELi1EEJSI_EEE4typeEEE5valueEiE4typeELi0EEEvDpRKSH_.exit unwind label %bb.b

_ZN5folly11toAppendFitIJA26_cNS_5RangeIPKcEEA2_cPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEETnNSt9enable_ifIXsr12IsSomeStringINSt14remove_pointerI19__type_pack_elementIXmisPDpT_ELi1EEJSI_EEE4typeEEE5valueEiE4typeELi0EEEvDpRKSH_.exit: ; preds = %.noexc
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #23
  ret void

bb.b:                                             ; preds = %.noexc, %bb.a
  %i.g = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #23
  %i.h = load ptr, ptr %0, align 8, !tbaa !13     ; 2 uses
  %i.i = icmp eq ptr %i.h, %i.b
  br i1 %i.i, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.b
  %i.j = load i64, ptr %i.b, align 8, !tbaa !19
  %i.k = add i64 %i.j, 1
  call void @_ZdlPvm(ptr noundef %i.h, i64 noundef %i.k) #22
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.b, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  resume { ptr, i32 } %i.g
}

declare void @_ZNSt13runtime_errorC1ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef nonnull align 8 dereferenceable(32)) unnamed_addr #5

; Function Attrs: nounwind
declare void @_ZNSt13runtime_errorD1Ev(ptr noundef nonnull align 8 dereferenceable(16)) unnamed_addr #6

; Function Attrs: cold noreturn
declare void @__cxa_throw(ptr, ptr, ptr) local_unnamed_addr #7

declare void @__cxa_free_exception(ptr) local_unnamed_addr

declare void @_ZNSt13runtime_errorC1EPKc(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef) unnamed_addr #5

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN5folly2toINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEJA2_cmS7_S6_S7_mA3_cmS8_ETnNSt9enable_ifIXaasr12IsSomeStringIT_EE5valueoonesZT0_Li1Entsr3std7is_sameISA_19__type_pack_elementIXmisPvDpT0_ELi1EEJvSD_EEEE5valueEiE4typeELi0EEESA_DpRKSC_(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef nonnull align 1 dereferenceable(2) %1, ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull align 1 dereferenceable(2) %3, ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull align 1 dereferenceable(2) %5, ptr noundef nonnull align 8 dereferenceable(8) %6, ptr noundef nonnull align 1 dereferenceable(3) %7, ptr noundef nonnull align 8 dereferenceable(8) %8, ptr noundef nonnull align 1 dereferenceable(3) %9) local_unnamed_addr #1 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 5 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 4 uses
  store ptr %i.b, ptr %0, align 8, !tbaa !63
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 0, ptr %i.c, align 8, !tbaa !34
  store i8 0, ptr %i.b, align 8, !tbaa !19
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #23
  store ptr %0, ptr %i.a, align 8, !tbaa !55
  %i.d = load i64, ptr %2, align 8, !tbaa !21
  %i.e = invoke noundef i64 @_ZN5folly13to_ascii_sizeILm10EEEmm(i64 noundef %i.d)
          to label %.noexc unwind label %bb.b

.noexc:                                           ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.g = load i64, ptr %i.f, align 8, !tbaa !34
  %i.h = load i64, ptr %6, align 8, !tbaa !21
  %i.i = invoke noundef i64 @_ZN5folly13to_ascii_sizeILm10EEEmm(i64 noundef %i.h)
          to label %.noexc11 unwind label %bb.b

.noexc11:                                         ; preds = %.noexc
  %i.j = load i64, ptr %8, align 8, !tbaa !21
  %i.k = invoke noundef i64 @_ZN5folly13to_ascii_sizeILm10EEEmm(i64 noundef %i.j)
          to label %.noexc12 unwind label %bb.b

.noexc12:                                         ; preds = %.noexc11
  %i.l = add i64 %i.e, 12
  %i.m = add i64 %i.l, %i.g
  %i.n = add i64 %i.m, %i.i
end_hunk_0
begin_hunk_1_@_ZN5folly6detail21baseFormatterCallImplILb0ELb0ENS0_27BaseFormatterAppendToStringINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEEvRT1_mPKiPFSt17integral_constantIbXT0_EERKNS0_17BaseFormatterBaseEmEPKPFvSI_RNS_9FormatArgESB_ESI_:bb.a
  br label %bb.p

_ZN5folly9FormatArgC2ENS_5RangeIPKcEE.exit:       ; preds = %bb.m
  call void @_ZN5folly9FormatArg8initSlowEv(ptr noundef nonnull align 8 dereferenceable(84) %8)
  %.pre = load i32, ptr %i.l, align 8, !tbaa !133
  %i.aq = getelementptr inbounds nuw i8, ptr %i.am, i64 1 ; 2 uses
  switch i32 %.pre, label %bb.p [
    i32 1, label %bb.n
    i32 2, label %bb.o
  ], !prof !134

bb.n:                                             ; preds = %_ZN5folly9FormatArgC2ENS_5RangeIPKcEE.exit
  call void @_ZNK5folly9FormatArg5errorIJRA21_KcEEEvDpOT_(ptr noundef nonnull align 8 dereferenceable(84) %8, ptr noundef nonnull align 1 dereferenceable(21) @.str.50) #24
  unreachable

bb.o:                                             ; preds = %_ZN5folly9FormatArgC2ENS_5RangeIPKcEE.exit
  store i32 0, ptr %i.l, align 8, !tbaa !133
  %.sroa.0.0.copyload.i.i = load ptr, ptr %i.k, align 8, !tbaa !26
  %.sroa.4.0.copyload.i.i = load ptr, ptr %.sroa.4.0..sroa_idx.i.i, align 8, !tbaa !26
  br label %_ZN5folly9FormatArg8splitKeyILb1EEENS_5RangeIPKcEEv.exit

bb.p:                                             ; preds = %_ZN5folly9FormatArgC2ENS_5RangeIPKcEE.exit.thread, %_ZN5folly9FormatArgC2ENS_5RangeIPKcEE.exit
  %i.ar = phi ptr [ %i.ap, %_ZN5folly9FormatArgC2ENS_5RangeIPKcEE.exit.thread ], [ %i.aq, %_ZN5folly9FormatArgC2ENS_5RangeIPKcEE.exit ] ; 3 uses
  %i.as = load ptr, ptr %i.j, align 8, !tbaa !67  ; 6 uses
  %i.at = load ptr, ptr %i.m, align 8, !tbaa !66  ; 5 uses
  %i.au = icmp eq ptr %i.as, %i.at
  br i1 %i.au, label %._ZN5folly9FormatArg8splitKeyILb1EEENS_5RangeIPKcEEv.exit.thread_crit_edge, label %bb.q

._ZN5folly9FormatArg8splitKeyILb1EEENS_5RangeIPKcEEv.exit.thread_crit_edge: ; preds = %bb.p
  %.pre132 = load i32, ptr %i.f, align 8, !tbaa !125
  br label %_ZN5folly9FormatArg8splitKeyILb1EEENS_5RangeIPKcEEv.exit.thread

bb.q:                                             ; preds = %bb.p
  %i.av = getelementptr inbounds i8, ptr %i.at, i64 -1 ; 3 uses
  %i.aw = load i8, ptr %i.av, align 1, !tbaa !19
  %i.ax = icmp eq i8 %i.aw, 93
  %i.ay = ptrtoint ptr %i.as to i64               ; 2 uses
  br i1 %i.ax, label %bb.r, label %_ZNK5folly9FormatArg7enforceIbJRA14_KcEEEvRKT_DpOT0_.exit.i.i

bb.r:                                             ; preds = %bb.q
  %i.az = ptrtoint ptr %i.av to i64
  %i.ba = sub i64 %i.az, %i.ay
  %i.bb = call noundef ptr @memchr(ptr noundef %i.as, i32 noundef 91, i64 noundef %i.ba) #26 ; 2 uses
  %.not22.i.i = icmp eq ptr %i.bb, null
  br i1 %.not22.i.i, label %bb.s, label %_ZNK5folly9FormatArg7enforceIbJRA14_KcEEEvRKT_DpOT0_.exit.thread.i.i, !prof !77

bb.s:                                             ; preds = %bb.r
  call void @_ZNK5folly9FormatArg5errorIJRA14_KcEEEvDpOT_(ptr noundef nonnull align 8 dereferenceable(84) %8, ptr noundef nonnull align 1 dereferenceable(14) @.str.40) #24
  unreachable

_ZNK5folly9FormatArg7enforceIbJRA14_KcEEEvRKT_DpOT0_.exit.i.i: ; preds = %bb.q
  %i.bc = ptrtoint ptr %i.at to i64
  %i.bd = sub i64 %i.bc, %i.ay
  %i.be = call noundef ptr @memchr(ptr noundef %i.as, i32 noundef 46, i64 noundef %i.bd) #26 ; 2 uses
  %.not.i.i = icmp eq ptr %i.be, null
  br i1 %.not.i.i, label %bb.t, label %_ZNK5folly9FormatArg7enforceIbJRA14_KcEEEvRKT_DpOT0_.exit.thread.i.i

_ZNK5folly9FormatArg7enforceIbJRA14_KcEEEvRKT_DpOT0_.exit.thread.i.i: ; preds = %_ZNK5folly9FormatArg7enforceIbJRA14_KcEEEvRKT_DpOT0_.exit.i.i, %bb.r
  %.021.i.i = phi ptr [ %i.be, %_ZNK5folly9FormatArg7enforceIbJRA14_KcEEEvRKT_DpOT0_.exit.i.i ], [ %i.bb, %bb.r ] ; 2 uses
  %.01620.i.i = phi ptr [ %i.at, %_ZNK5folly9FormatArg7enforceIbJRA14_KcEEEvRKT_DpOT0_.exit.i.i ], [ %i.av, %bb.r ]
  %i.bf = getelementptr inbounds nuw i8, ptr %.021.i.i, i64 1
  store ptr %i.bf, ptr %i.j, align 8, !tbaa !67
  store ptr %.01620.i.i, ptr %i.m, align 8, !tbaa !66
  br label %_ZN5folly9FormatArg8splitKeyILb1EEENS_5RangeIPKcEEv.exit

bb.t:                                             ; preds = %_ZNK5folly9FormatArg7enforceIbJRA14_KcEEEvRKT_DpOT0_.exit.i.i
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.j, i8 0, i64 16, i1 false)
  br label %_ZN5folly9FormatArg8splitKeyILb1EEENS_5RangeIPKcEEv.exit

_ZN5folly9FormatArg8splitKeyILb1EEENS_5RangeIPKcEEv.exit: ; preds = %bb.o, %_ZNK5folly9FormatArg7enforceIbJRA14_KcEEEvRKT_DpOT0_.exit.thread.i.i, %bb.t
  %i.bg = phi ptr [ %i.aq, %bb.o ], [ %i.ar, %bb.t ], [ %i.ar, %_ZNK5folly9FormatArg7enforceIbJRA14_KcEEEvRKT_DpOT0_.exit.thread.i.i ] ; 2 uses
  %.sroa.4.0.i.i = phi ptr [ %.sroa.4.0.copyload.i.i, %bb.o ], [ %i.at, %bb.t ], [ %.021.i.i, %_ZNK5folly9FormatArg7enforceIbJRA14_KcEEEvRKT_DpOT0_.exit.thread.i.i ] ; 2 uses
  %.sroa.0.0.i.i = phi ptr [ %.sroa.0.0.copyload.i.i, %bb.o ], [ %i.as, %bb.t ], [ %i.as, %_ZNK5folly9FormatArg7enforceIbJRA14_KcEEEvRKT_DpOT0_.exit.thread.i.i ] ; 2 uses
  %i.bh = icmp eq ptr %.sroa.0.0.i.i, %.sroa.4.0.i.i
  %.pre133 = load i32, ptr %i.f, align 8, !tbaa !125 ; 2 uses
  br i1 %i.bh, label %_ZN5folly9FormatArg8splitKeyILb1EEENS_5RangeIPKcEEv.exit.thread, label %bb.z

_ZN5folly9FormatArg8splitKeyILb1EEENS_5RangeIPKcEEv.exit.thread: ; preds = %._ZN5folly9FormatArg8splitKeyILb1EEENS_5RangeIPKcEEv.exit.thread_crit_edge, %_ZN5folly9FormatArg8splitKeyILb1EEENS_5RangeIPKcEEv.exit
  %i.bi = phi ptr [ %i.ar, %._ZN5folly9FormatArg8splitKeyILb1EEENS_5RangeIPKcEEv.exit.thread_crit_edge ], [ %i.bg, %_ZN5folly9FormatArg8splitKeyILb1EEENS_5RangeIPKcEEv.exit ]
  %i.bj = phi i32 [ %.pre132, %._ZN5folly9FormatArg8splitKeyILb1EEENS_5RangeIPKcEEv.exit.thread_crit_edge ], [ %.pre133, %_ZN5folly9FormatArg8splitKeyILb1EEENS_5RangeIPKcEEv.exit ]
  %i.bk = icmp eq i32 %i.bj, -2
  br i1 %i.bk, label %bb.u, label %bb.y

bb.u:                                             ; preds = %_ZN5folly9FormatArg8splitKeyILb1EEENS_5RangeIPKcEEv.exit.thread
  %i.bl = load i32, ptr %i.g, align 4, !tbaa !130
  %i.bm = icmp eq i32 %i.bl, -1
  br i1 %i.bm, label %_ZNK5folly9FormatArg7enforceIbJRA55_KcEEEvRKT_DpOT0_.exit, label %bb.v, !prof !135

bb.v:                                             ; preds = %bb.u
  call void @_ZNK5folly9FormatArg5errorIJRA55_KcEEEvDpOT_(ptr noundef nonnull align 8 dereferenceable(84) %8, ptr noundef nonnull align 1 dereferenceable(55) @.str.43) #24
  unreachable

_ZNK5folly9FormatArg7enforceIbJRA55_KcEEEvRKT_DpOT0_.exit: ; preds = %bb.u
  %i.bn = add nsw i32 %.050114, 1
  %i.bo = sext i32 %.050114 to i64                ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store i64 %1, ptr %i.c, align 8, !tbaa !21
  %i.bp = icmp ugt i64 %1, %i.bo
  br i1 %i.bp, label %_ZN5folly6detail16formatCheckIndexEmRKNS_9FormatArgEm.exit, label %bb.w, !prof !135

bb.w:                                             ; preds = %_ZNK5folly9FormatArg7enforceIbJRA55_KcEEEvRKT_DpOT0_.exit
  call void @_ZNK5folly9FormatArg5errorIJRA34_KcRmEEEvDpOT_(ptr noundef nonnull align 8 dereferenceable(84) %8, ptr noundef nonnull align 1 dereferenceable(34) @.str.51, ptr noundef nonnull align 8 dereferenceable(8) %i.c) #24
  unreachable

_ZN5folly6detail16formatCheckIndexEmRKNS_9FormatArgEm.exit: ; preds = %_ZNK5folly9FormatArg7enforceIbJRA55_KcEEEvRKT_DpOT0_.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  %i.bq = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %i.bo
  %i.br = load i32, ptr %i.bq, align 4, !tbaa !7  ; 2 uses
  %i.bs = icmp sgt i32 %i.br, -1
  br i1 %i.bs, label %_ZNK5folly9FormatArg7enforceIbJRA46_KcEEEvRKT_DpOT0_.exit, label %bb.x, !prof !135

bb.x:                                             ; preds = %_ZN5folly6detail16formatCheckIndexEmRKNS_9FormatArgEm.exit
  call void @_ZNK5folly9FormatArg5errorIJRA46_KcEEEvDpOT_(ptr noundef nonnull align 8 dereferenceable(84) %8, ptr noundef nonnull align 1 dereferenceable(46) @.str.44) #24
  unreachable

_ZNK5folly9FormatArg7enforceIbJRA46_KcEEEvRKT_DpOT0_.exit: ; preds = %_ZN5folly6detail16formatCheckIndexEmRKNS_9FormatArgEm.exit
  store i32 %i.br, ptr %i.f, align 8, !tbaa !125
  br label %bb.y

bb.y:                                             ; preds = %_ZNK5folly9FormatArg7enforceIbJRA46_KcEEEvRKT_DpOT0_.exit, %_ZN5folly9FormatArg8splitKeyILb1EEENS_5RangeIPKcEEv.exit.thread
  %.151 = phi i32 [ %i.bn, %_ZNK5folly9FormatArg7enforceIbJRA46_KcEEEvRKT_DpOT0_.exit ], [ %.050114, %_ZN5folly9FormatArg8splitKeyILb1EEENS_5RangeIPKcEEv.exit.thread ] ; 2 uses
  %i.bt = add nsw i32 %.151, 1
  br label %_ZNK5folly9FormatArg7enforceIbJRA36_KcEEEvRKT_DpOT0_.exit

bb.z:                                             ; preds = %_ZN5folly9FormatArg8splitKeyILb1EEENS_5RangeIPKcEEv.exit
  %i.bu = icmp eq i32 %.pre133, -2
  br i1 %i.bu, label %bb.aa, label %bb.ae

bb.aa:                                            ; preds = %bb.z
  %i.bv = load i32, ptr %i.g, align 4, !tbaa !130 ; 2 uses
  %.not94 = icmp eq i32 %i.bv, -1
  br i1 %.not94, label %bb.ab, label %_ZNK5folly9FormatArg7enforceIbJRA55_KcEEEvRKT_DpOT0_.exit65, !prof !77

bb.ab:                                            ; preds = %bb.aa
  call void @_ZNK5folly9FormatArg5errorIJRA55_KcEEEvDpOT_(ptr noundef nonnull align 8 dereferenceable(84) %8, ptr noundef nonnull align 1 dereferenceable(55) @.str.45) #24
  unreachable

_ZNK5folly9FormatArg7enforceIbJRA55_KcEEEvRKT_DpOT0_.exit65: ; preds = %bb.aa
  %i.bw = sext i32 %i.bv to i64                   ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store i64 %1, ptr %i.b, align 8, !tbaa !21
  %i.bx = icmp ugt i64 %1, %i.bw
  br i1 %i.bx, label %_ZN5folly6detail16formatCheckIndexEmRKNS_9FormatArgEm.exit66, label %bb.ac, !prof !135

bb.ac:                                            ; preds = %_ZNK5folly9FormatArg7enforceIbJRA55_KcEEEvRKT_DpOT0_.exit65
  call void @_ZNK5folly9FormatArg5errorIJRA34_KcRmEEEvDpOT_(ptr noundef nonnull align 8 dereferenceable(84) %8, ptr noundef nonnull align 1 dereferenceable(34) @.str.51, ptr noundef nonnull align 8 dereferenceable(8) %i.b) #24
  unreachable

_ZN5folly6detail16formatCheckIndexEmRKNS_9FormatArgEm.exit66: ; preds = %_ZNK5folly9FormatArg7enforceIbJRA55_KcEEEvRKT_DpOT0_.exit65
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %i.by = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %i.bw
  %i.bz = load i32, ptr %i.by, align 4, !tbaa !7  ; 2 uses
  %i.ca = icmp sgt i32 %i.bz, -1
  br i1 %i.ca, label %_ZNK5folly9FormatArg7enforceIbJRA46_KcEEEvRKT_DpOT0_.exit67, label %bb.ad, !prof !135

bb.ad:                                            ; preds = %_ZN5folly6detail16formatCheckIndexEmRKNS_9FormatArgEm.exit66
  call void @_ZNK5folly9FormatArg5errorIJRA46_KcEEEvDpOT_(ptr noundef nonnull align 8 dereferenceable(84) %8, ptr noundef nonnull align 1 dereferenceable(46) @.str.44) #24
  unreachable

_ZNK5folly9FormatArg7enforceIbJRA46_KcEEEvRKT_DpOT0_.exit67: ; preds = %_ZN5folly6detail16formatCheckIndexEmRKNS_9FormatArgEm.exit66
  store i32 %i.bz, ptr %i.f, align 8, !tbaa !125
  br label %bb.ae

bb.ae:                                            ; preds = %_ZNK5folly9FormatArg7enforceIbJRA46_KcEEEvRKT_DpOT0_.exit67, %bb.z
  call void @llvm.lifetime.start.p0(ptr nonnull %6)
  store ptr %.sroa.0.0.i.i, ptr %6, align 8, !noalias !136
  store ptr %.sroa.4.0.i.i, ptr %i.n, align 8, !noalias !136
  %i.cb = call i64 @_ZN5folly6detail15str_to_integralIiEENS_8ExpectedIT_NS_14ConversionCodeEEEPNS_5RangeIPKcEE(ptr noundef nonnull %6) #23, !noalias !136 ; 2 uses
  %i.cc = and i64 %i.cb, 255
  %i.cd = icmp eq i64 %i.cc, 1
  br i1 %i.cd, label %bb.af, label %_ZN5folly5tryToIiEENSt9enable_ifIXntsr3std7is_sameINS_5RangeIPKcEET_EE5valueENS_8ExpectedIS6_NSt16remove_referenceIDTclsr6detailE11parseToWraptlS5_Eclsr3stdE7declvalIRS6_EEEEE4type10error_typeEEEE4typeES5_.exit.thread, !prof !135

bb.af:                                            ; preds = %bb.ae
  %.sroa.53.0.extract.shift.i.i = and i64 %i.cb, -4294967296 ; 2 uses
  %.sroa.0.0.copyload.i.i.i.i.i = load ptr, ptr %6, align 8, !tbaa !26, !noalias !139 ; 2 uses
  %.sroa.2.0.copyload.i.i.i.i.i = load ptr, ptr %i.n, align 8, !tbaa !26, !noalias !139 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %6)
  %.not14.i.i.i.i.i = icmp eq ptr %.sroa.0.0.copyload.i.i.i.i.i, %.sroa.2.0.copyload.i.i.i.i.i
  br i1 %.not14.i.i.i.i.i, label %_ZN5folly5tryToIiEENSt9enable_ifIXntsr3std7is_sameINS_5RangeIPKcEET_EE5valueENS_8ExpectedIS6_NSt16remove_referenceIDTclsr6detailE11parseToWraptlS5_Eclsr3stdE7declvalIRS6_EEEEE4type10error_typeEEEE4typeES5_.exit, label %.lr.ph.i.i.i.i.i

bb.ag:                                            ; preds = %.lr.ph.i.i.i.i.i
  %i.ce = getelementptr inbounds nuw i8, ptr %.01115.i.i.i.i.i, i64 1 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.ce, %.sroa.2.0.copyload.i.i.i.i.i
  br i1 %.not.i.i.i.i.i, label %_ZN5folly5tryToIiEENSt9enable_ifIXntsr3std7is_sameINS_5RangeIPKcEET_EE5valueENS_8ExpectedIS6_NSt16remove_referenceIDTclsr6detailE11parseToWraptlS5_Eclsr3stdE7declvalIRS6_EEEEE4type10error_typeEEEE4typeES5_.exit, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %bb.af, %bb.ag
  %.01115.i.i.i.i.i = phi ptr [ %i.ce, %bb.ag ], [ %.sroa.0.0.copyload.i.i.i.i.i, %bb.af ] ; 2 uses
  %i.cf = load i8, ptr %.01115.i.i.i.i.i, align 1, !tbaa !19
  %i.cg = sext i8 %i.cf to i32
  %i.ch = call i32 @isspace(i32 noundef %i.cg) #26
  %.not12.not.i.i.not.i.i.i.not = icmp ne i32 %i.ch, 0 ; 3 uses
  br i1 %.not12.not.i.i.not.i.i.i.not, label %bb.ag, label %_ZN5folly5tryToIiEENSt9enable_ifIXntsr3std7is_sameINS_5RangeIPKcEET_EE5valueENS_8ExpectedIS6_NSt16remove_referenceIDTclsr6detailE11parseToWraptlS5_Eclsr3stdE7declvalIRS6_EEEEE4type10error_typeEEEE4typeES5_.exit

_ZN5folly5tryToIiEENSt9enable_ifIXntsr3std7is_sameINS_5RangeIPKcEET_EE5valueENS_8ExpectedIS6_NSt16remove_referenceIDTclsr6detailE11parseToWraptlS5_Eclsr3stdE7declvalIRS6_EEEEE4type10error_typeEEEE4typeES5_.exit.thread: ; preds = %bb.ae
  call void @llvm.lifetime.end.p0(ptr nonnull %6)
  br label %.loopexit150

_ZN5folly5tryToIiEENSt9enable_ifIXntsr3std7is_sameINS_5RangeIPKcEET_EE5valueENS_8ExpectedIS6_NSt16remove_referenceIDTclsr6detailE11parseToWraptlS5_Eclsr3stdE7declvalIRS6_EEEEE4type10error_typeEEEE4typeES5_.exit: ; preds = %bb.ag, %.lr.ph.i.i.i.i.i, %bb.af
  %i.ci = phi i1 [ true, %bb.af ], [ %.not12.not.i.i.not.i.i.i.not, %.lr.ph.i.i.i.i.i ], [ %.not12.not.i.i.not.i.i.i.not, %bb.ag ]
  %.sroa.3.0.insert.insert.i.i.i.i = phi i64 [ %.sroa.53.0.extract.shift.i.i, %bb.af ], [ %.sroa.53.0.extract.shift.i.i, %bb.ag ], [ 2560, %.lr.ph.i.i.i.i.i ] ; 2 uses
  br i1 %i.ci, label %_ZNR5folly8ExpectedIiNS_14ConversionCodeEEdeEv.exit, label %.loopexit150, !prof !86

.loopexit150:                                     ; preds = %_ZN5folly5tryToIiEENSt9enable_ifIXntsr3std7is_sameINS_5RangeIPKcEET_EE5valueENS_8ExpectedIS6_NSt16remove_referenceIDTclsr6detailE11parseToWraptlS5_Eclsr3stdE7declvalIRS6_EEEEE4type10error_typeEEEE4typeES5_.exit, %_ZN5folly5tryToIiEENSt9enable_ifIXntsr3std7is_sameINS_5RangeIPKcEET_EE5valueENS_8ExpectedIS6_NSt16remove_referenceIDTclsr6detailE11parseToWraptlS5_Eclsr3stdE7declvalIRS6_EEEEE4type10error_typeEEEE4typeES5_.exit.thread
  call void @_ZNK5folly9FormatArg5errorIJRA31_KcEEEvDpOT_(ptr noundef nonnull align 8 dereferenceable(84) %8, ptr noundef nonnull align 1 dereferenceable(31) @.str.46) #24
  unreachable

_ZNR5folly8ExpectedIiNS_14ConversionCodeEEdeEv.exit: ; preds = %_ZN5folly5tryToIiEENSt9enable_ifIXntsr3std7is_sameINS_5RangeIPKcEET_EE5valueENS_8ExpectedIS6_NSt16remove_referenceIDTclsr6detailE11parseToWraptlS5_Eclsr3stdE7declvalIRS6_EEEEE4type10error_typeEEEE4typeES5_.exit
  %.sroa.670.0.extract.shift = lshr i64 %.sroa.3.0.insert.insert.i.i.i.i, 32
  %.sroa.670.0.extract.trunc = trunc nuw i64 %.sroa.670.0.extract.shift to i32
  %i.cj = icmp sgt i64 %.sroa.3.0.insert.insert.i.i.i.i, -1
  br i1 %i.cj, label %_ZNK5folly9FormatArg7enforceIbJRA36_KcEEEvRKT_DpOT0_.exit, label %bb.ah, !prof !135

bb.ah:                                            ; preds = %_ZNR5folly8ExpectedIiNS_14ConversionCodeEEdeEv.exit
  call void @_ZNK5folly9FormatArg5errorIJRA36_KcEEEvDpOT_(ptr noundef nonnull align 8 dereferenceable(84) %8, ptr noundef nonnull align 1 dereferenceable(36) @.str.47) #24
  unreachable

_ZNK5folly9FormatArg7enforceIbJRA36_KcEEEvRKT_DpOT0_.exit: ; preds = %_ZNR5folly8ExpectedIiNS_14ConversionCodeEEdeEv.exit, %bb.y
  %i.ck = phi ptr [ %i.bi, %bb.y ], [ %i.bg, %_ZNR5folly8ExpectedIiNS_14ConversionCodeEEdeEv.exit ]
  %.059 = phi i32 [ %.151, %bb.y ], [ %.sroa.670.0.extract.trunc, %_ZNR5folly8ExpectedIiNS_14ConversionCodeEEdeEv.exit ]
  %.156 = phi i1 [ %.055112, %bb.y ], [ true, %_ZNR5folly8ExpectedIiNS_14ConversionCodeEEdeEv.exit ] ; 2 uses
  %.153 = phi i1 [ true, %bb.y ], [ %.052113, %_ZNR5folly8ExpectedIiNS_14ConversionCodeEEdeEv.exit ] ; 2 uses
  %.2 = phi i32 [ %i.bt, %bb.y ], [ %.050114, %_ZNR5folly8ExpectedIiNS_14ConversionCodeEEdeEv.exit ]
  %or.cond = select i1 %.153, i1 %.156, i1 false
  br i1 %or.cond, label %bb.ai, label %bb.aj

bb.ai:                                            ; preds = %_ZNK5folly9FormatArg7enforceIbJRA36_KcEEEvRKT_DpOT0_.exit
  call void @_ZN5folly6detail16throw_exception_INS_12BadFormatArgEJPKcEEEvDpT0_(ptr noundef nonnull @.str.48) #7
  unreachable

bb.aj:                                            ; preds = %_ZNK5folly9FormatArg7enforceIbJRA36_KcEEEvRKT_DpOT0_.exit
  %i.cl = sext i32 %.059 to i64                   ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i64 %1, ptr %i.a, align 8, !tbaa !21
  %i.cm = icmp ugt i64 %1, %i.cl
  br i1 %i.cm, label %_ZN5folly6detail16formatCheckIndexEmRKNS_9FormatArgEm.exit68, label %bb.ak, !prof !135

bb.ak:                                            ; preds = %bb.aj
  call void @_ZNK5folly9FormatArg5errorIJRA34_KcRmEEEvDpOT_(ptr noundef nonnull align 8 dereferenceable(84) %8, ptr noundef nonnull align 1 dereferenceable(34) @.str.51, ptr noundef nonnull align 8 dereferenceable(8) %i.a) #24
  unreachable

_ZN5folly6detail16formatCheckIndexEmRKNS_9FormatArgEm.exit68: ; preds = %bb.aj
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.cn = getelementptr inbounds [8 x i8], ptr %4, i64 %i.cl
  %i.co = load ptr, ptr %i.cn, align 8, !tbaa !144
  call void %i.co(ptr noundef nonnull align 8 dereferenceable(16) %5, ptr noundef nonnull align 8 dereferenceable(84) %8, ptr noundef nonnull align 8 dereferenceable(8) %0)
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #23
  br label %bb.al

bb.al:                                            ; preds = %_ZN5folly6detail16formatCheckIndexEmRKNS_9FormatArgEm.exit68, %_ZNK5folly6detail27BaseFormatterAppendToStringINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclENS_5RangeIPKcEE.exit
  %.257 = phi i1 [ %.055112, %_ZNK5folly6detail27BaseFormatterAppendToStringINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclENS_5RangeIPKcEE.exit ], [ %.156, %_ZN5folly6detail16formatCheckIndexEmRKNS_9FormatArgEm.exit68 ]
  %.254 = phi i1 [ %.052113, %_ZNK5folly6detail27BaseFormatterAppendToStringINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclENS_5RangeIPKcEE.exit ], [ %.153, %_ZN5folly6detail16formatCheckIndexEmRKNS_9FormatArgEm.exit68 ]
  %.3 = phi i32 [ %.050114, %_ZNK5folly6detail27BaseFormatterAppendToStringINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclENS_5RangeIPKcEE.exit ], [ %.2, %_ZN5folly6detail16formatCheckIndexEmRKNS_9FormatArgEm.exit68 ]
  %.1 = phi ptr [ %i.aj, %_ZNK5folly6detail27BaseFormatterAppendToStringINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclENS_5RangeIPKcEE.exit ], [ %i.ck, %_ZN5folly6detail16formatCheckIndexEmRKNS_9FormatArgEm.exit68 ] ; 2 uses
  %.not = icmp eq ptr %.1, %.sroa.4.0.copyload
  br i1 %.not, label %.loopexit, label %bb.b

.loopexit:                                        ; preds = %bb.al, %bb.a, %.thread
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #23
  ret void
}

declare void @_ZNK5folly9FormatArg8validateENS0_4TypeE(ptr noundef nonnull align 8 dereferenceable(84), i32 noundef) local_unnamed_addr #5

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNK5folly11FormatValueIcvE8doFormatINS_6detail27BaseFormatterAppendToStringINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEEvRNS_9FormatArgERT_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 8 dereferenceable(84) %1, ptr noundef nonnull align 8 dereferenceable(8) %2) local_unnamed_addr #1 comdat align 2 {
bb.a:
  %i.a = alloca i8, align 1                       ; 13 uses
  %i.b = alloca [67 x i8], align 16               ; 17 uses
  %i.c = alloca ptr, align 8                      ; 11 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #23
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 36
  %i.e = load i8, ptr %i.d, align 4, !tbaa !132   ; 2 uses
  %i.f = icmp eq i8 %i.e, 0
  %spec.store.select = select i1 %i.f, i8 99, i8 %i.e ; 3 uses
  store i8 %spec.store.select, ptr %i.a, align 1
  %i.g = load i8, ptr %0, align 1, !tbaa !145     ; 5 uses
  %i.h = icmp slt i8 %i.g, 0
  %.1.i.i66.sroa.gep = getelementptr inbounds nuw i8, ptr %i.b, i64 65 ; 6 uses
  %.1.i.i66.sroa.gep76 = getelementptr inbounds nuw i8, ptr %i.b, i64 66 ; 7 uses
  %.2.i.sroa.gep = getelementptr inbounds nuw i8, ptr %i.b, i64 64 ; 2 uses
  br i1 %i.h, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.i = sub i8 0, %i.g
  br label %bb.f

bb.c:                                             ; preds = %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 18
  %i.k = load i8, ptr %i.j, align 2, !tbaa !147
  switch i8 %i.k, label %bb.e [
    i8 1, label %bb.f
    i8 3, label %bb.d
  ]

bb.d:                                             ; preds = %bb.c
  br label %bb.f

bb.e:                                             ; preds = %bb.c
  br label %bb.f

bb.f:                                             ; preds = %bb.c, %bb.d, %bb.e, %bb.b
  %.not = phi i1 [ false, %bb.b ], [ true, %bb.e ], [ false, %bb.d ], [ false, %bb.c ]
  %.060 = phi i8 [ 45, %bb.b ], [ 0, %bb.e ], [ 32, %bb.d ], [ 43, %bb.c ]
  %.0 = phi i8 [ %i.i, %bb.b ], [ %i.g, %bb.e ], [ %i.g, %bb.d ], [ %i.g, %bb.c ] ; 12 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #23
  switch i8 %spec.store.select, label %bb.ah [
    i8 110, label %bb.g
    i8 100, label %bb.j
    i8 99, label %bb.m
    i8 111, label %bb.p
    i8 79, label %bb.p
    i8 120, label %bb.u
    i8 88, label %bb.y
    i8 98, label %bb.ac
    i8 66, label %bb.ac
  ]

bb.g:                                             ; preds = %bb.f
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 19
  %i.m = load i8, ptr %i.l, align 1, !tbaa !148, !range !70, !noundef !71
  %i.n = trunc nuw i8 %i.m to i1
  br i1 %i.n, label %bb.h, label %_ZNK5folly9FormatArg7enforceIbJRA31_KcRcRA12_S2_EEEvRKT_DpOT0_.exit, !prof !77

bb.h:                                             ; preds = %bb.g
  call void @_ZNK5folly9FormatArg5errorIJRA31_KcRcRA12_S2_EEEvDpOT_(ptr noundef nonnull align 8 dereferenceable(84) %1, ptr noundef nonnull align 1 dereferenceable(31) @.str.25, ptr noundef nonnull align 1 dereferenceable(1) %i.a, ptr noundef nonnull align 1 dereferenceable(12) @.str.26) #24
  unreachable

_ZNK5folly9FormatArg7enforceIbJRA31_KcRcRA12_S2_EEEvRKT_DpOT0_.exit: ; preds = %bb.g
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 20
  %i.p = load i8, ptr %i.o, align 4, !tbaa !149, !range !70, !noundef !71
  %i.q = trunc nuw i8 %i.p to i1
  br i1 %i.q, label %bb.i, label %_ZNK5folly9FormatArg7enforceIbJRA26_KcRcRA12_S2_EEEvRKT_DpOT0_.exit, !prof !77

bb.i:                                             ; preds = %_ZNK5folly9FormatArg7enforceIbJRA31_KcRcRA12_S2_EEEvRKT_DpOT0_.exit
  call void @_ZNK5folly9FormatArg5errorIJRA26_KcRcRA12_S2_EEEvDpOT_(ptr noundef nonnull align 8 dereferenceable(84) %1, ptr noundef nonnull align 1 dereferenceable(26) @.str.27, ptr noundef nonnull align 1 dereferenceable(1) %i.a, ptr noundef nonnull align 1 dereferenceable(12) @.str.26) #24
  unreachable

_ZNK5folly9FormatArg7enforceIbJRA26_KcRcRA12_S2_EEEvRKT_DpOT0_.exit: ; preds = %_ZNK5folly9FormatArg7enforceIbJRA31_KcRcRA12_S2_EEEvRKT_DpOT0_.exit
  %i.r = getelementptr inbounds nuw i8, ptr %i.b, i64 1 ; 3 uses
  %i.s = zext i8 %.0 to i64
  %i.t = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %i.r, i64 noundef 66, ptr noundef nonnull @.str.28, i64 noundef %i.s) #23
  %i.u = sext i32 %i.t to i64
  %i.v = getelementptr inbounds i8, ptr %i.r, i64 %i.u
  store ptr %i.v, ptr %i.c, align 8, !tbaa !26
  br label %bb.ai

bb.j:                                             ; preds = %bb.f
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 19
  %i.x = load i8, ptr %i.w, align 1, !tbaa !148, !range !70, !noundef !71
  %i.y = trunc nuw i8 %i.x to i1
  br i1 %i.y, label %bb.k, label %_ZNK5folly9FormatArg7enforceIbJRA31_KcRcRA12_S2_EEEvRKT_DpOT0_.exit61, !prof !77

bb.k:                                             ; preds = %bb.j
  call void @_ZNK5folly9FormatArg5errorIJRA31_KcRcRA12_S2_EEEvDpOT_(ptr noundef nonnull align 8 dereferenceable(84) %1, ptr noundef nonnull align 1 dereferenceable(31) @.str.25, ptr noundef nonnull align 1 dereferenceable(1) %i.a, ptr noundef nonnull align 1 dereferenceable(12) @.str.26) #24
  unreachable

_ZNK5folly9FormatArg7enforceIbJRA31_KcRcRA12_S2_EEEvRKT_DpOT0_.exit61: ; preds = %bb.j
  %i.z = getelementptr inbounds nuw i8, ptr %i.b, i64 1 ; 5 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %i.b, i64 67
  %i.ab = zext i8 %.0 to i64
  %i.ac = call noundef i64 @_ZN5folly13to_ascii_withILm10ENS_17to_ascii_alphabetILb0EEEEEmPcPKcm(ptr noundef nonnull %i.z, ptr noundef nonnull %i.aa, i64 noundef %i.ab)
  %i.ad = getelementptr inbounds nuw i8, ptr %i.z, i64 %i.ac
  store ptr %i.ad, ptr %i.c, align 8, !tbaa !26
  %i.ae = getelementptr inbounds nuw i8, ptr %1, i64 20
  %i.af = load i8, ptr %i.ae, align 4, !tbaa !149, !range !70, !noundef !71
  %i.ag = trunc nuw i8 %i.af to i1
  br i1 %i.ag, label %bb.l, label %bb.ai

bb.l:                                             ; preds = %_ZNK5folly9FormatArg7enforceIbJRA31_KcRcRA12_S2_EEEvRKT_DpOT0_.exit61
  call void @_ZN5folly6detail29insertThousandsGroupingUnsafeEPcPS1_(ptr noundef nonnull %i.z, ptr noundef nonnull %i.c)
  br label %bb.ai

bb.m:                                             ; preds = %bb.f
  %i.ah = getelementptr inbounds nuw i8, ptr %1, i64 19
  %i.ai = load i8, ptr %i.ah, align 1, !tbaa !148, !range !70, !noundef !71
  %i.aj = trunc nuw i8 %i.ai to i1
  br i1 %i.aj, label %bb.n, label %_ZNK5folly9FormatArg7enforceIbJRA31_KcRcRA12_S2_EEEvRKT_DpOT0_.exit62, !prof !77

bb.n:                                             ; preds = %bb.m
  call void @_ZNK5folly9FormatArg5errorIJRA31_KcRcRA12_S2_EEEvDpOT_(ptr noundef nonnull align 8 dereferenceable(84) %1, ptr noundef nonnull align 1 dereferenceable(31) @.str.25, ptr noundef nonnull align 1 dereferenceable(1) %i.a, ptr noundef nonnull align 1 dereferenceable(12) @.str.26) #24
  unreachable

_ZNK5folly9FormatArg7enforceIbJRA31_KcRcRA12_S2_EEEvRKT_DpOT0_.exit62: ; preds = %bb.m
  %i.ak = getelementptr inbounds nuw i8, ptr %1, i64 20
  %i.al = load i8, ptr %i.ak, align 4, !tbaa !149, !range !70, !noundef !71
  %i.am = trunc nuw i8 %i.al to i1
  br i1 %i.am, label %bb.o, label %_ZNK5folly9FormatArg7enforceIbJRA45_KcRcRA12_S2_EEEvRKT_DpOT0_.exit, !prof !77

bb.o:                                             ; preds = %_ZNK5folly9FormatArg7enforceIbJRA31_KcRcRA12_S2_EEEvRKT_DpOT0_.exit62
  call void @_ZNK5folly9FormatArg5errorIJRA45_KcRcRA12_S2_EEEvDpOT_(ptr noundef nonnull align 8 dereferenceable(84) %1, ptr noundef nonnull align 1 dereferenceable(45) @.str.29, ptr noundef nonnull align 1 dereferenceable(1) %i.a, ptr noundef nonnull align 1 dereferenceable(12) @.str.26) #24
  unreachable

_ZNK5folly9FormatArg7enforceIbJRA45_KcRcRA12_S2_EEEvRKT_DpOT0_.exit: ; preds = %_ZNK5folly9FormatArg7enforceIbJRA31_KcRcRA12_S2_EEEvRKT_DpOT0_.exit62
  %i.an = getelementptr inbounds nuw i8, ptr %i.b, i64 1 ; 2 uses
  store i8 %.0, ptr %i.an, align 1, !tbaa !19
  %i.ao = getelementptr inbounds nuw i8, ptr %i.b, i64 2
  store ptr %i.ao, ptr %i.c, align 8, !tbaa !26
  br label %bb.ai

bb.p:                                             ; preds = %bb.f, %bb.f
end_hunk_1
begin_hunk_2_@_ZN5folly6detail18ToAppendStrImplAllISt16integer_sequenceImJLm0ELm1ELm2ELm3ELm4EEEE4callIJNS_5RangeIPKcEES9_S9_S8_PNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEvDpRKT_:bb.a
  %i.bl = load i8, ptr %i.az, align 1, !tbaa !19
  store i8 %i.bl, ptr %i.bk, align 1, !tbaa !19
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i

bb.ac:                                            ; preds = %bb.aa
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.bk, ptr nonnull align 1 %i.az, i64 %i.ba, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i

bb.ad:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i34
  tail call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %i.a, i64 noundef %i.bb, i64 noundef 0, ptr noundef nonnull %i.az, i64 noundef %i.ba)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i: ; preds = %bb.ad, %bb.ac, %bb.ab, %bb.z
  store i64 %i.be, ptr %i.e, align 8, !tbaa !34
  %i.bm = load ptr, ptr %i.a, align 8, !tbaa !13
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bm, i64 %i.be
  store i8 0, ptr %i.bn, align 1, !tbaa !19
  br label %_ZN5folly8toAppendINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcEENSt9enable_ifIXaasr3std14is_convertibleIT0_S8_EE5valuesr12IsSomeStringIT_EE5valueEvE4typeESA_PSB_.exit

_ZN5folly8toAppendINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcEENSt9enable_ifIXaasr3std14is_convertibleIT0_S8_EE5valuesr12IsSomeStringIT_EE5valueEvE4typeESA_PSB_.exit: ; preds = %_ZN5folly8toAppendINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEENSt9enable_ifIXsr12IsSomeStringIT_EE5valueEvE4typeENS_5RangeIPKcEEPS8_.exit32, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNK5folly11FormatValueINS_5RangeIPKcEEvE6formatINS_6detail27BaseFormatterAppendToStringINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEEvRNS_9FormatArgERT_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(84) %1, ptr noundef nonnull align 8 dereferenceable(8) %2) local_unnamed_addr #1 comdat align 2 {
bb.a:
  %3 = alloca %"class.folly::FormatValue", align 1 ; 4 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 80
  %i.b = load i32, ptr %i.a, align 8, !tbaa !133
  %i.c = icmp eq i32 %i.b, 0
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.e = load ptr, ptr %i.d, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.g = load ptr, ptr %i.f, align 8
  %i.h = icmp eq ptr %i.e, %i.g
  %i.i = select i1 %i.c, i1 %i.h, i1 false
  br i1 %i.i, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  tail call void @_ZNK5folly9FormatArg8validateENS0_4TypeE(ptr noundef nonnull align 8 dereferenceable(84) %1, i32 noundef 2)
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 36 ; 2 uses
  %i.k = load i8, ptr %i.j, align 4, !tbaa !132
  switch i8 %i.k, label %bb.c [
    i8 115, label %_ZNK5folly9FormatArg7enforceIbJRA20_KcRcRA2_S2_EEEvRKT_DpOT0_.exit
    i8 0, label %_ZNK5folly9FormatArg7enforceIbJRA20_KcRcRA2_S2_EEEvRKT_DpOT0_.exit
  ], !prof !174

bb.c:                                             ; preds = %bb.b
  tail call void @_ZNK5folly9FormatArg5errorIJRA20_KcRcRA2_S2_EEEvDpOT_(ptr noundef nonnull align 8 dereferenceable(84) %1, ptr noundef nonnull align 1 dereferenceable(20) @.str.30, ptr noundef nonnull align 1 dereferenceable(1) %i.j, ptr noundef nonnull align 1 dereferenceable(2) @.str.31) #24
  unreachable

_ZNK5folly9FormatArg7enforceIbJRA20_KcRcRA2_S2_EEEvRKT_DpOT0_.exit: ; preds = %bb.b, %bb.b
  %.sroa.0.0.copyload = load ptr, ptr %0, align 8, !tbaa !26
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.sroa.2.0.copyload = load ptr, ptr %.sroa.2.0..sroa_idx, align 8, !tbaa !26
  tail call void @_ZN5folly12format_value12formatStringINS_6detail27BaseFormatterAppendToStringINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEEvNS_5RangeIPKcEERNS_9FormatArgERT_(ptr %.sroa.0.0.copyload, ptr %.sroa.2.0.copyload, ptr noundef nonnull align 8 dereferenceable(84) %1, ptr noundef nonnull align 8 dereferenceable(8) %2)
  br label %bb.f

bb.d:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #23
  %i.l = tail call noundef i32 @_ZN5folly9FormatArg11splitIntKeyEv(ptr noundef nonnull align 8 dereferenceable(84) %1)
  %i.m = sext i32 %i.l to i64                     ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !66
  %i.p = load ptr, ptr %0, align 8, !tbaa !67     ; 2 uses
  %i.q = ptrtoint ptr %i.o to i64
  %i.r = ptrtoint ptr %i.p to i64
  %i.s = sub i64 %i.q, %i.r
  %.not.i = icmp ugt i64 %i.s, %i.m
  br i1 %.not.i, label %_ZNK5folly5RangeIPKcE2atEm.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  tail call void @_ZN5folly6detail16throw_exception_ISt12out_of_rangeJPKcEEEvDpT0_(ptr noundef nonnull @.str.34) #7
  unreachable

_ZNK5folly5RangeIPKcE2atEm.exit:                  ; preds = %bb.d
  %i.t = getelementptr inbounds nuw i8, ptr %i.p, i64 %i.m
  %i.u = load i8, ptr %i.t, align 1, !tbaa !19
  store i8 %i.u, ptr %3, align 1, !tbaa !145
  tail call void @_ZNK5folly9FormatArg8validateENS0_4TypeE(ptr noundef nonnull align 8 dereferenceable(84) %1, i32 noundef 0)
  call void @_ZNK5folly11FormatValueIcvE8doFormatINS_6detail27BaseFormatterAppendToStringINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEEvRNS_9FormatArgERT_(ptr noundef nonnull align 1 dereferenceable(1) %3, ptr noundef nonnull align 8 dereferenceable(84) %1, ptr noundef nonnull align 8 dereferenceable(8) %2)
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #23
  br label %bb.f

bb.f:                                             ; preds = %_ZNK5folly5RangeIPKcE2atEm.exit, %_ZNK5folly9FormatArg7enforceIbJRA20_KcRcRA2_S2_EEEvRKT_DpOT0_.exit
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr noundef i32 @_ZN5folly9FormatArg11splitIntKeyEv(ptr noundef nonnull align 8 dereferenceable(84) %0) local_unnamed_addr #16 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"class.folly::Range", align 8      ; 7 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 3 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !133
  switch i32 %i.b, label %bb.d [
    i32 1, label %bb.b
    i32 2, label %bb.c
  ]

bb.b:                                             ; preds = %bb.a
  store i32 0, ptr %i.a, align 8, !tbaa !133
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.d = load i32, ptr %i.c, align 8, !tbaa !175
  br label %_ZNR5folly8ExpectedIiNS_14ConversionCodeEEdeEv.exit

bb.c:                                             ; preds = %bb.a
  store i32 0, ptr %i.a, align 8, !tbaa !133
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 64
  %.sroa.0.0.copyload.i = load ptr, ptr %i.e, align 8, !tbaa !26
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 72
  %.sroa.4.0.copyload.i = load ptr, ptr %.sroa.4.0..sroa_idx.i, align 8, !tbaa !26
  br label %_ZN5folly9FormatArg10doSplitKeyILb1EEENS_5RangeIPKcEEv.exit

bb.d:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 3 uses
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !67   ; 6 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !66   ; 5 uses
  %i.j = icmp eq ptr %i.g, %i.i
  br i1 %i.j, label %_ZN5folly9FormatArg10doSplitKeyILb1EEENS_5RangeIPKcEEv.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.k = getelementptr inbounds i8, ptr %i.i, i64 -1 ; 3 uses
  %i.l = load i8, ptr %i.k, align 1, !tbaa !19
  %i.m = icmp eq i8 %i.l, 93
  %i.n = ptrtoint ptr %i.g to i64                 ; 2 uses
  br i1 %i.m, label %bb.f, label %_ZNK5folly9FormatArg7enforceIbJRA14_KcEEEvRKT_DpOT0_.exit.i

bb.f:                                             ; preds = %bb.e
  %i.o = ptrtoint ptr %i.k to i64
  %i.p = sub i64 %i.o, %i.n
  %i.q = tail call noundef ptr @memchr(ptr noundef %i.g, i32 noundef 91, i64 noundef %i.p) #26 ; 2 uses
  %.not22.i = icmp eq ptr %i.q, null
  br i1 %.not22.i, label %bb.g, label %_ZNK5folly9FormatArg7enforceIbJRA14_KcEEEvRKT_DpOT0_.exit.thread.i, !prof !77

bb.g:                                             ; preds = %bb.f
  tail call void @_ZNK5folly9FormatArg5errorIJRA14_KcEEEvDpOT_(ptr noundef nonnull align 8 dereferenceable(84) %0, ptr noundef nonnull align 1 dereferenceable(14) @.str.40) #24
  unreachable

_ZNK5folly9FormatArg7enforceIbJRA14_KcEEEvRKT_DpOT0_.exit.i: ; preds = %bb.e
  %i.r = ptrtoint ptr %i.i to i64
  %i.s = sub i64 %i.r, %i.n
  %i.t = tail call noundef ptr @memchr(ptr noundef %i.g, i32 noundef 46, i64 noundef %i.s) #26 ; 2 uses
  %.not.i = icmp eq ptr %i.t, null
  br i1 %.not.i, label %bb.h, label %_ZNK5folly9FormatArg7enforceIbJRA14_KcEEEvRKT_DpOT0_.exit.thread.i

_ZNK5folly9FormatArg7enforceIbJRA14_KcEEEvRKT_DpOT0_.exit.thread.i: ; preds = %_ZNK5folly9FormatArg7enforceIbJRA14_KcEEEvRKT_DpOT0_.exit.i, %bb.f
  %.021.i = phi ptr [ %i.t, %_ZNK5folly9FormatArg7enforceIbJRA14_KcEEEvRKT_DpOT0_.exit.i ], [ %i.q, %bb.f ] ; 2 uses
  %.01620.i = phi ptr [ %i.i, %_ZNK5folly9FormatArg7enforceIbJRA14_KcEEEvRKT_DpOT0_.exit.i ], [ %i.k, %bb.f ]
  %i.u = getelementptr inbounds nuw i8, ptr %.021.i, i64 1
  store ptr %i.u, ptr %i.f, align 8, !tbaa !67
  store ptr %.01620.i, ptr %i.h, align 8, !tbaa !66
  br label %_ZN5folly9FormatArg10doSplitKeyILb1EEENS_5RangeIPKcEEv.exit

bb.h:                                             ; preds = %_ZNK5folly9FormatArg7enforceIbJRA14_KcEEEvRKT_DpOT0_.exit.i
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.f, i8 0, i64 16, i1 false)
  br label %_ZN5folly9FormatArg10doSplitKeyILb1EEENS_5RangeIPKcEEv.exit

_ZN5folly9FormatArg10doSplitKeyILb1EEENS_5RangeIPKcEEv.exit: ; preds = %bb.c, %bb.d, %_ZNK5folly9FormatArg7enforceIbJRA14_KcEEEvRKT_DpOT0_.exit.thread.i, %bb.h
  %.sroa.4.0.i = phi ptr [ %.sroa.4.0.copyload.i, %bb.c ], [ null, %bb.d ], [ %.021.i, %_ZNK5folly9FormatArg7enforceIbJRA14_KcEEEvRKT_DpOT0_.exit.thread.i ], [ %i.i, %bb.h ]
  %.sroa.0.0.i = phi ptr [ %.sroa.0.0.copyload.i, %bb.c ], [ null, %bb.d ], [ %i.g, %_ZNK5folly9FormatArg7enforceIbJRA14_KcEEEvRKT_DpOT0_.exit.thread.i ], [ %i.g, %bb.h ]
  call void @llvm.lifetime.start.p0(ptr nonnull %1)
  store ptr %.sroa.0.0.i, ptr %1, align 8, !noalias !176
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  store ptr %.sroa.4.0.i, ptr %i.v, align 8, !noalias !176
  %i.w = call i64 @_ZN5folly6detail15str_to_integralIiEENS_8ExpectedIT_NS_14ConversionCodeEEEPNS_5RangeIPKcEE(ptr noundef nonnull %1) #23, !noalias !176 ; 2 uses
  %i.x = and i64 %i.w, 255
  %i.y = icmp eq i64 %i.x, 1
  br i1 %i.y, label %bb.i, label %_ZN5folly5tryToIiEENSt9enable_ifIXntsr3std7is_sameINS_5RangeIPKcEET_EE5valueENS_8ExpectedIS6_NSt16remove_referenceIDTclsr6detailE11parseToWraptlS5_Eclsr3stdE7declvalIRS6_EEEEE4type10error_typeEEEE4typeES5_.exit.thread, !prof !135

bb.i:                                             ; preds = %_ZN5folly9FormatArg10doSplitKeyILb1EEENS_5RangeIPKcEEv.exit
  %.sroa.53.0.extract.shift.i.i = and i64 %i.w, -4294967296 ; 2 uses
  %.sroa.0.0.copyload.i.i.i.i.i = load ptr, ptr %1, align 8, !tbaa !26, !noalias !179 ; 2 uses
  %.sroa.2.0.copyload.i.i.i.i.i = load ptr, ptr %i.v, align 8, !tbaa !26, !noalias !179 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %1)
  %.not14.i.i.i.i.i = icmp eq ptr %.sroa.0.0.copyload.i.i.i.i.i, %.sroa.2.0.copyload.i.i.i.i.i
  br i1 %.not14.i.i.i.i.i, label %_ZN5folly5tryToIiEENSt9enable_ifIXntsr3std7is_sameINS_5RangeIPKcEET_EE5valueENS_8ExpectedIS6_NSt16remove_referenceIDTclsr6detailE11parseToWraptlS5_Eclsr3stdE7declvalIRS6_EEEEE4type10error_typeEEEE4typeES5_.exit, label %.lr.ph.i.i.i.i.i

bb.j:                                             ; preds = %.lr.ph.i.i.i.i.i
  %i.z = getelementptr inbounds nuw i8, ptr %.01115.i.i.i.i.i, i64 1 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.z, %.sroa.2.0.copyload.i.i.i.i.i
  br i1 %.not.i.i.i.i.i, label %_ZN5folly5tryToIiEENSt9enable_ifIXntsr3std7is_sameINS_5RangeIPKcEET_EE5valueENS_8ExpectedIS6_NSt16remove_referenceIDTclsr6detailE11parseToWraptlS5_Eclsr3stdE7declvalIRS6_EEEEE4type10error_typeEEEE4typeES5_.exit, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %bb.i, %bb.j
  %.01115.i.i.i.i.i = phi ptr [ %i.z, %bb.j ], [ %.sroa.0.0.copyload.i.i.i.i.i, %bb.i ] ; 2 uses
  %i.aa = load i8, ptr %.01115.i.i.i.i.i, align 1, !tbaa !19
  %i.ab = sext i8 %i.aa to i32
  %i.ac = call i32 @isspace(i32 noundef %i.ab) #26
  %.not12.not.i.i.not.i.i.i.not = icmp ne i32 %i.ac, 0 ; 3 uses
  br i1 %.not12.not.i.i.not.i.i.i.not, label %bb.j, label %_ZN5folly5tryToIiEENSt9enable_ifIXntsr3std7is_sameINS_5RangeIPKcEET_EE5valueENS_8ExpectedIS6_NSt16remove_referenceIDTclsr6detailE11parseToWraptlS5_Eclsr3stdE7declvalIRS6_EEEEE4type10error_typeEEEE4typeES5_.exit

_ZN5folly5tryToIiEENSt9enable_ifIXntsr3std7is_sameINS_5RangeIPKcEET_EE5valueENS_8ExpectedIS6_NSt16remove_referenceIDTclsr6detailE11parseToWraptlS5_Eclsr3stdE7declvalIRS6_EEEEE4type10error_typeEEEE4typeES5_.exit.thread: ; preds = %_ZN5folly9FormatArg10doSplitKeyILb1EEENS_5RangeIPKcEEv.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %1)
  br label %bb.k

_ZN5folly5tryToIiEENSt9enable_ifIXntsr3std7is_sameINS_5RangeIPKcEET_EE5valueENS_8ExpectedIS6_NSt16remove_referenceIDTclsr6detailE11parseToWraptlS5_Eclsr3stdE7declvalIRS6_EEEEE4type10error_typeEEEE4typeES5_.exit: ; preds = %bb.j, %.lr.ph.i.i.i.i.i, %bb.i
  %i.ad = phi i1 [ true, %bb.i ], [ %.not12.not.i.i.not.i.i.i.not, %.lr.ph.i.i.i.i.i ], [ %.not12.not.i.i.not.i.i.i.not, %bb.j ]
  %.sroa.3.0.insert.insert.i.i.i.i = phi i64 [ %.sroa.53.0.extract.shift.i.i, %bb.i ], [ %.sroa.53.0.extract.shift.i.i, %bb.j ], [ 0, %.lr.ph.i.i.i.i.i ]
  %.sroa.62.0.extract.shift = lshr exact i64 %.sroa.3.0.insert.insert.i.i.i.i, 32
  %.sroa.62.0.extract.trunc = trunc nuw i64 %.sroa.62.0.extract.shift to i32
  br i1 %i.ad, label %_ZNR5folly8ExpectedIiNS_14ConversionCodeEEdeEv.exit, label %bb.k, !prof !86

bb.k:                                             ; preds = %_ZN5folly5tryToIiEENSt9enable_ifIXntsr3std7is_sameINS_5RangeIPKcEET_EE5valueENS_8ExpectedIS6_NSt16remove_referenceIDTclsr6detailE11parseToWraptlS5_Eclsr3stdE7declvalIRS6_EEEEE4type10error_typeEEEE4typeES5_.exit.thread, %_ZN5folly5tryToIiEENSt9enable_ifIXntsr3std7is_sameINS_5RangeIPKcEET_EE5valueENS_8ExpectedIS6_NSt16remove_referenceIDTclsr6detailE11parseToWraptlS5_Eclsr3stdE7declvalIRS6_EEEEE4type10error_typeEEEE4typeES5_.exit
  call void @_ZNK5folly9FormatArg5errorIJRA21_KcEEEvDpOT_(ptr noundef nonnull align 8 dereferenceable(84) %0, ptr noundef nonnull align 1 dereferenceable(21) @.str.38) #24
  unreachable

_ZNR5folly8ExpectedIiNS_14ConversionCodeEEdeEv.exit: ; preds = %_ZN5folly5tryToIiEENSt9enable_ifIXntsr3std7is_sameINS_5RangeIPKcEET_EE5valueENS_8ExpectedIS6_NSt16remove_referenceIDTclsr6detailE11parseToWraptlS5_Eclsr3stdE7declvalIRS6_EEEEE4type10error_typeEEEE4typeES5_.exit, %bb.b
  %.0 = phi i32 [ %i.d, %bb.b ], [ %.sroa.62.0.extract.trunc, %_ZN5folly5tryToIiEENSt9enable_ifIXntsr3std7is_sameINS_5RangeIPKcEET_EE5valueENS_8ExpectedIS6_NSt16remove_referenceIDTclsr6detailE11parseToWraptlS5_Eclsr3stdE7declvalIRS6_EEEEE4type10error_typeEEEE4typeES5_.exit ]
  ret i32 %.0
}

; Function Attrs: nounwind
declare i64 @_ZN5folly6detail15str_to_integralIiEENS_8ExpectedIT_NS_14ConversionCodeEEEPNS_5RangeIPKcEE(ptr noundef) local_unnamed_addr #6

; Function Attrs: mustprogress nofree nounwind willreturn memory(read)
declare i32 @isspace(i32 noundef) local_unnamed_addr #17

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare noundef ptr @memchr(ptr noundef, i32 noundef, i64 noundef) local_unnamed_addr #4

; Function Attrs: inlinehint mustprogress noreturn uwtable
define linkonce_odr void @_ZNK5folly9FormatArg5errorIJRA14_KcEEEvDpOT_(ptr noundef nonnull align 8 dereferenceable(84) %0, ptr noundef nonnull align 1 dereferenceable(14) %1) local_unnamed_addr #13 comdat align 2 {
bb.a:
  %.sroa.0.0.copyload.i = load ptr, ptr %0, align 8, !tbaa !26
  %.sroa.2.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.sroa.2.0.copyload.i = load ptr, ptr %.sroa.2.0..sroa_idx.i, align 8, !tbaa !26
  tail call void @_ZN5folly6detail16throw_exception_INS_12BadFormatArgEJNS2_11ErrorStrTagENS_5RangeIPKcEES6_EEEvDpT0_(ptr %.sroa.0.0.copyload.i, ptr %.sroa.2.0.copyload.i, ptr noundef nonnull align 1 dereferenceable(14) %1) #7
  unreachable
}

; Function Attrs: inlinehint mustprogress noreturn uwtable
define linkonce_odr void @_ZNK5folly9FormatArg5errorIJRA21_KcEEEvDpOT_(ptr noundef nonnull align 8 dereferenceable(84) %0, ptr noundef nonnull align 1 dereferenceable(21) %1) local_unnamed_addr #13 comdat align 2 {
bb.a:
  %.sroa.0.0.copyload.i = load ptr, ptr %0, align 8, !tbaa !26
  %.sroa.2.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.sroa.2.0.copyload.i = load ptr, ptr %.sroa.2.0..sroa_idx.i, align 8, !tbaa !26
  tail call void @_ZN5folly6detail16throw_exception_INS_12BadFormatArgEJNS2_11ErrorStrTagENS_5RangeIPKcEES6_EEEvDpT0_(ptr %.sroa.0.0.copyload.i, ptr %.sroa.2.0.copyload.i, ptr noundef nonnull align 1 dereferenceable(21) %1) #7
  unreachable
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNK5folly11FormatValueIjvE8doFormatINS_6detail27BaseFormatterAppendToStringINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEEvRNS_9FormatArgERT_(ptr noundef nonnull align 4 dereferenceable(4) %0, ptr noundef nonnull align 8 dereferenceable(84) %1, ptr noundef nonnull align 8 dereferenceable(8) %2) local_unnamed_addr #1 comdat align 2 {
bb.a:
  %i.a = alloca i8, align 1                       ; 13 uses
  %i.b = alloca [67 x i8], align 16               ; 31 uses
  %i.c = alloca ptr, align 8                      ; 11 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #23
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 36
  %i.e = load i8, ptr %i.d, align 4, !tbaa !132   ; 2 uses
  %i.f = icmp eq i8 %i.e, 0
  %spec.store.select = select i1 %i.f, i8 100, i8 %i.e ; 3 uses
  store i8 %spec.store.select, ptr %i.a, align 1
  %i.g = load i32, ptr %0, align 4, !tbaa !184    ; 14 uses
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 18
  %i.i = load i8, ptr %i.h, align 2, !tbaa !147
  %i.j = icmp eq i8 %i.i, 0
  br i1 %i.j, label %_ZNK5folly9FormatArg7enforceIbJRA52_KcEEEvRKT_DpOT0_.exit, label %bb.b, !prof !135

bb.b:                                             ; preds = %bb.a
  tail call void @_ZNK5folly9FormatArg5errorIJRA52_KcEEEvDpOT_(ptr noundef nonnull align 8 dereferenceable(84) %1, ptr noundef nonnull align 1 dereferenceable(52) @.str.37) #24
  unreachable

_ZNK5folly9FormatArg7enforceIbJRA52_KcEEEvRKT_DpOT0_.exit: ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #23
  switch i8 %spec.store.select, label %bb.ac [
    i8 110, label %bb.c
    i8 100, label %bb.f
    i8 99, label %bb.i
    i8 111, label %bb.l
    i8 79, label %bb.l
    i8 120, label %bb.q
    i8 88, label %bb.u
    i8 98, label %bb.y
    i8 66, label %bb.y
  ]

bb.c:                                             ; preds = %_ZNK5folly9FormatArg7enforceIbJRA52_KcEEEvRKT_DpOT0_.exit
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 19
  %i.l = load i8, ptr %i.k, align 1, !tbaa !148, !range !70, !noundef !71
  %i.m = trunc nuw i8 %i.l to i1
  br i1 %i.m, label %bb.d, label %_ZNK5folly9FormatArg7enforceIbJRA31_KcRcRA12_S2_EEEvRKT_DpOT0_.exit, !prof !77

bb.d:                                             ; preds = %bb.c
  call void @_ZNK5folly9FormatArg5errorIJRA31_KcRcRA12_S2_EEEvDpOT_(ptr noundef nonnull align 8 dereferenceable(84) %1, ptr noundef nonnull align 1 dereferenceable(31) @.str.25, ptr noundef nonnull align 1 dereferenceable(1) %i.a, ptr noundef nonnull align 1 dereferenceable(12) @.str.26) #24
  unreachable

_ZNK5folly9FormatArg7enforceIbJRA31_KcRcRA12_S2_EEEvRKT_DpOT0_.exit: ; preds = %bb.c
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 20
  %i.o = load i8, ptr %i.n, align 4, !tbaa !149, !range !70, !noundef !71
  %i.p = trunc nuw i8 %i.o to i1
  br i1 %i.p, label %bb.e, label %_ZNK5folly9FormatArg7enforceIbJRA26_KcRcRA12_S2_EEEvRKT_DpOT0_.exit, !prof !77

bb.e:                                             ; preds = %_ZNK5folly9FormatArg7enforceIbJRA31_KcRcRA12_S2_EEEvRKT_DpOT0_.exit
  call void @_ZNK5folly9FormatArg5errorIJRA26_KcRcRA12_S2_EEEvDpOT_(ptr noundef nonnull align 8 dereferenceable(84) %1, ptr noundef nonnull align 1 dereferenceable(26) @.str.27, ptr noundef nonnull align 1 dereferenceable(1) %i.a, ptr noundef nonnull align 1 dereferenceable(12) @.str.26) #24
  unreachable

_ZNK5folly9FormatArg7enforceIbJRA26_KcRcRA12_S2_EEEvRKT_DpOT0_.exit: ; preds = %_ZNK5folly9FormatArg7enforceIbJRA31_KcRcRA12_S2_EEEvRKT_DpOT0_.exit
  %i.q = getelementptr inbounds nuw i8, ptr %i.b, i64 1 ; 3 uses
  %i.r = zext i32 %i.g to i64
  %i.s = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %i.q, i64 noundef 66, ptr noundef nonnull @.str.28, i64 noundef %i.r) #23
  %i.t = sext i32 %i.s to i64
  %i.u = getelementptr inbounds i8, ptr %i.q, i64 %i.t ; 2 uses
  store ptr %i.u, ptr %i.c, align 8, !tbaa !26
  br label %bb.ad

bb.f:                                             ; preds = %_ZNK5folly9FormatArg7enforceIbJRA52_KcEEEvRKT_DpOT0_.exit
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 19
  %i.w = load i8, ptr %i.v, align 1, !tbaa !148, !range !70, !noundef !71
  %i.x = trunc nuw i8 %i.w to i1
  br i1 %i.x, label %bb.g, label %_ZNK5folly9FormatArg7enforceIbJRA31_KcRcRA12_S2_EEEvRKT_DpOT0_.exit60, !prof !77

bb.g:                                             ; preds = %bb.f
  call void @_ZNK5folly9FormatArg5errorIJRA31_KcRcRA12_S2_EEEvDpOT_(ptr noundef nonnull align 8 dereferenceable(84) %1, ptr noundef nonnull align 1 dereferenceable(31) @.str.25, ptr noundef nonnull align 1 dereferenceable(1) %i.a, ptr noundef nonnull align 1 dereferenceable(12) @.str.26) #24
  unreachable

_ZNK5folly9FormatArg7enforceIbJRA31_KcRcRA12_S2_EEEvRKT_DpOT0_.exit60: ; preds = %bb.f
  %i.y = getelementptr inbounds nuw i8, ptr %i.b, i64 1 ; 5 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.b, i64 67
  %i.aa = zext i32 %i.g to i64
  %i.ab = call noundef i64 @_ZN5folly13to_ascii_withILm10ENS_17to_ascii_alphabetILb0EEEEEmPcPKcm(ptr noundef nonnull %i.y, ptr noundef nonnull %i.z, i64 noundef %i.aa)
  %i.ac = getelementptr inbounds nuw i8, ptr %i.y, i64 %i.ab ; 2 uses
  store ptr %i.ac, ptr %i.c, align 8, !tbaa !26
  %i.ad = getelementptr inbounds nuw i8, ptr %1, i64 20
  %i.ae = load i8, ptr %i.ad, align 4, !tbaa !149, !range !70, !noundef !71
  %i.af = trunc nuw i8 %i.ae to i1
  br i1 %i.af, label %bb.h, label %bb.ad

bb.h:                                             ; preds = %_ZNK5folly9FormatArg7enforceIbJRA31_KcRcRA12_S2_EEEvRKT_DpOT0_.exit60
  call void @_ZN5folly6detail29insertThousandsGroupingUnsafeEPcPS1_(ptr noundef nonnull %i.y, ptr noundef nonnull %i.c)
  %.pre = load ptr, ptr %i.c, align 8, !tbaa !26
  br label %bb.ad

bb.i:                                             ; preds = %_ZNK5folly9FormatArg7enforceIbJRA52_KcEEEvRKT_DpOT0_.exit
  %i.ag = getelementptr inbounds nuw i8, ptr %1, i64 19
  %i.ah = load i8, ptr %i.ag, align 1, !tbaa !148, !range !70, !noundef !71
  %i.ai = trunc nuw i8 %i.ah to i1
  br i1 %i.ai, label %bb.j, label %_ZNK5folly9FormatArg7enforceIbJRA31_KcRcRA12_S2_EEEvRKT_DpOT0_.exit61, !prof !77

bb.j:                                             ; preds = %bb.i
  call void @_ZNK5folly9FormatArg5errorIJRA31_KcRcRA12_S2_EEEvDpOT_(ptr noundef nonnull align 8 dereferenceable(84) %1, ptr noundef nonnull align 1 dereferenceable(31) @.str.25, ptr noundef nonnull align 1 dereferenceable(1) %i.a, ptr noundef nonnull align 1 dereferenceable(12) @.str.26) #24
  unreachable

_ZNK5folly9FormatArg7enforceIbJRA31_KcRcRA12_S2_EEEvRKT_DpOT0_.exit61: ; preds = %bb.i
  %i.aj = getelementptr inbounds nuw i8, ptr %1, i64 20
  %i.ak = load i8, ptr %i.aj, align 4, !tbaa !149, !range !70, !noundef !71
  %i.al = trunc nuw i8 %i.ak to i1
  br i1 %i.al, label %bb.k, label %_ZNK5folly9FormatArg7enforceIbJRA45_KcRcRA12_S2_EEEvRKT_DpOT0_.exit, !prof !77

bb.k:                                             ; preds = %_ZNK5folly9FormatArg7enforceIbJRA31_KcRcRA12_S2_EEEvRKT_DpOT0_.exit61
  call void @_ZNK5folly9FormatArg5errorIJRA45_KcRcRA12_S2_EEEvDpOT_(ptr noundef nonnull align 8 dereferenceable(84) %1, ptr noundef nonnull align 1 dereferenceable(45) @.str.29, ptr noundef nonnull align 1 dereferenceable(1) %i.a, ptr noundef nonnull align 1 dereferenceable(12) @.str.26) #24
  unreachable

_ZNK5folly9FormatArg7enforceIbJRA45_KcRcRA12_S2_EEEvRKT_DpOT0_.exit: ; preds = %_ZNK5folly9FormatArg7enforceIbJRA31_KcRcRA12_S2_EEEvRKT_DpOT0_.exit61
  %i.am = getelementptr inbounds nuw i8, ptr %i.b, i64 1 ; 2 uses
  %i.an = trunc i32 %i.g to i8
  store i8 %i.an, ptr %i.am, align 1, !tbaa !19
  %i.ao = getelementptr inbounds nuw i8, ptr %i.b, i64 2 ; 2 uses
  store ptr %i.ao, ptr %i.c, align 8, !tbaa !26
  br label %bb.ad

bb.l:                                             ; preds = %_ZNK5folly9FormatArg7enforceIbJRA52_KcEEEvRKT_DpOT0_.exit, %_ZNK5folly9FormatArg7enforceIbJRA52_KcEEEvRKT_DpOT0_.exit
  %i.ap = getelementptr inbounds nuw i8, ptr %1, i64 20
  %i.aq = load i8, ptr %i.ap, align 4, !tbaa !149, !range !70, !noundef !71
  %i.ar = trunc nuw i8 %i.aq to i1
  br i1 %i.ar, label %bb.m, label %_ZNK5folly9FormatArg7enforceIbJRA45_KcRcRA12_S2_EEEvRKT_DpOT0_.exit62, !prof !77

bb.m:                                             ; preds = %bb.l
  call void @_ZNK5folly9FormatArg5errorIJRA45_KcRcRA12_S2_EEEvDpOT_(ptr noundef nonnull align 8 dereferenceable(84) %1, ptr noundef nonnull align 1 dereferenceable(45) @.str.29, ptr noundef nonnull align 1 dereferenceable(1) %i.a, ptr noundef nonnull align 1 dereferenceable(12) @.str.26) #24
  unreachable

_ZNK5folly9FormatArg7enforceIbJRA45_KcRcRA12_S2_EEEvRKT_DpOT0_.exit62: ; preds = %bb.l
  %i.as = getelementptr inbounds nuw i8, ptr %i.b, i64 67 ; 3 uses
  store ptr %i.as, ptr %i.c, align 8, !tbaa !26
  %i.at = icmp ult i32 %i.g, 512
  br i1 %i.at, label %._crit_edge.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %_ZNK5folly9FormatArg7enforceIbJRA45_KcRcRA12_S2_EEEvRKT_DpOT0_.exit62, %.lr.ph.i
  %.028.i = phi i64 [ %i.av, %.lr.ph.i ], [ 67, %_ZNK5folly9FormatArg7enforceIbJRA45_KcRcRA12_S2_EEEvRKT_DpOT0_.exit62 ] ; 2 uses
  %.02527.i = phi i32 [ %i.bh, %.lr.ph.i ], [ %i.g, %_ZNK5folly9FormatArg7enforceIbJRA45_KcRcRA12_S2_EEEvRKT_DpOT0_.exit62 ] ; 3 uses
  %i.au = and i32 %.02527.i, 511
  %i.av = add nsw i64 %.028.i, -3                 ; 3 uses
  %i.aw = zext nneg i32 %i.au to i64
  %i.ax = getelementptr inbounds nuw [3 x i8], ptr @_ZN5folly6detail11formatOctalE, i64 %i.aw ; 3 uses
  %i.ay = load i8, ptr %i.ax, align 1, !tbaa !19
  %i.az = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.av
  store i8 %i.ay, ptr %i.az, align 1, !tbaa !19
  %i.ba = getelementptr inbounds nuw i8, ptr %i.ax, i64 1
  %i.bb = load i8, ptr %i.ba, align 1, !tbaa !19
  %i.bc = getelementptr i8, ptr %i.b, i64 %.028.i ; 2 uses
  %i.bd = getelementptr i8, ptr %i.bc, i64 -2
  store i8 %i.bb, ptr %i.bd, align 1, !tbaa !19
  %i.be = getelementptr inbounds nuw i8, ptr %i.ax, i64 2
  %i.bf = load i8, ptr %i.be, align 1, !tbaa !19
  %i.bg = getelementptr i8, ptr %i.bc, i64 -1
  store i8 %i.bf, ptr %i.bg, align 1, !tbaa !19
  %i.bh = lshr i32 %.02527.i, 9                   ; 2 uses
  %i.bi = icmp ult i32 %.02527.i, 262144
  br i1 %i.bi, label %._crit_edge.i, label %.lr.ph.i, !llvm.loop !159

._crit_edge.i:                                    ; preds = %.lr.ph.i, %_ZNK5folly9FormatArg7enforceIbJRA45_KcRcRA12_S2_EEEvRKT_DpOT0_.exit62
end_hunk_2
begin_hunk_3_@_ZN5folly9FormatterILb0EJRKciRiS3_S3_S3_lmRNS_5RangeIPS1_EES6_jRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES7_EE11doFormatArgILm8ENS_6detail27BaseFormatterAppendToStringISD_EEEEvRKNSI_17BaseFormatterBaseERNS_9FormatArgERT0_:bb.a

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN5folly9FormatterILb0EJRKciRiS3_S3_S3_lmRNS_5RangeIPS1_EES6_jRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES7_EE11doFormatArgILm9ENS_6detail27BaseFormatterAppendToStringISD_EEEEvRKNSI_17BaseFormatterBaseERNS_9FormatArgERT0_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(84) %1, ptr noundef nonnull align 8 dereferenceable(8) %2) #1 comdat align 2 {
bb.a:
  %3 = alloca %"class.folly::FormatValue.31", align 16 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #23
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.b = load <2 x ptr>, ptr %i.a, align 8, !tbaa !26
  store <2 x ptr> %i.b, ptr %3, align 16
  call void @_ZNK5folly11FormatValueINS_5RangeIPKcEEvE6formatINS_6detail27BaseFormatterAppendToStringINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEEvRNS_9FormatArgERT_(ptr noundef nonnull align 8 dereferenceable(16) %3, ptr noundef nonnull align 8 dereferenceable(84) %1, ptr noundef nonnull align 8 dereferenceable(8) %2)
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #23
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN5folly9FormatterILb0EJRKciRiS3_S3_S3_lmRNS_5RangeIPS1_EES6_jRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES7_EE11doFormatArgILm10ENS_6detail27BaseFormatterAppendToStringISD_EEEEvRKNSI_17BaseFormatterBaseERNS_9FormatArgERT0_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(84) %1, ptr noundef nonnull align 8 dereferenceable(8) %2) #1 comdat align 2 {
bb.a:
  %3 = alloca %"class.folly::FormatValue.40", align 4 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #23
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.b = load i32, ptr %i.a, align 8, !tbaa !53
  store i32 %i.b, ptr %3, align 4
  tail call void @_ZNK5folly9FormatArg8validateENS0_4TypeE(ptr noundef nonnull align 8 dereferenceable(84) %1, i32 noundef 0)
  call void @_ZNK5folly11FormatValueIjvE8doFormatINS_6detail27BaseFormatterAppendToStringINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEEvRNS_9FormatArgERT_(ptr noundef nonnull align 4 dereferenceable(4) %3, ptr noundef nonnull align 8 dereferenceable(84) %1, ptr noundef nonnull align 8 dereferenceable(8) %2)
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #23
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN5folly9FormatterILb0EJRKciRiS3_S3_S3_lmRNS_5RangeIPS1_EES6_jRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES7_EE11doFormatArgILm11ENS_6detail27BaseFormatterAppendToStringISD_EEEEvRKNSI_17BaseFormatterBaseERNS_9FormatArgERT0_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(84) %1, ptr noundef nonnull align 8 dereferenceable(8) %2) #1 comdat align 2 {
bb.a:
  %3 = alloca %"class.folly::FormatValue.41", align 8 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #23
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !114, !nonnull !71, !align !113 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !13   ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.e = load i64, ptr %i.d, align 8, !tbaa !34
  %i.f = getelementptr inbounds nuw i8, ptr %i.c, i64 %i.e
  store ptr %i.c, ptr %3, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %3, i64 8
  store ptr %i.f, ptr %i.g, align 8
  call void @_ZNK5folly11FormatValueINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEvE6formatINS_6detail27BaseFormatterAppendToStringIS6_EEEEvRNS_9FormatArgERT_(ptr noundef nonnull align 8 dereferenceable(16) %3, ptr noundef nonnull align 8 dereferenceable(84) %1, ptr noundef nonnull align 8 dereferenceable(8) %2)
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #23
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN5folly9FormatterILb0EJRKciRiS3_S3_S3_lmRNS_5RangeIPS1_EES6_jRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES7_EE11doFormatArgILm12ENS_6detail27BaseFormatterAppendToStringISD_EEEEvRKNSI_17BaseFormatterBaseERNS_9FormatArgERT0_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(84) %1, ptr noundef nonnull align 8 dereferenceable(8) %2) #1 comdat align 2 {
bb.a:
  %3 = alloca %"class.folly::FormatValue.31", align 16 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #23
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !116, !nonnull !71, !align !113
  %i.c = load <2 x ptr>, ptr %i.b, align 8, !tbaa !26
  store <2 x ptr> %i.c, ptr %3, align 16
  call void @_ZNK5folly11FormatValueINS_5RangeIPKcEEvE6formatINS_6detail27BaseFormatterAppendToStringINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEEvRNS_9FormatArgERT_(ptr noundef nonnull align 8 dereferenceable(16) %3, ptr noundef nonnull align 8 dereferenceable(84) %1, ptr noundef nonnull align 8 dereferenceable(8) %2)
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #23
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #18

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #19

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #19

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #20

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #19

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #19

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i32 @bcmp(ptr captures(none), ptr captures(none), i64) local_unnamed_addr #21

attributes #0 = { inlinehint mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #1 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #4 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #5 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #6 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #7 = { cold noreturn }
attributes #8 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #9 = { nobuiltin allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #10 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #11 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #12 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #13 = { inlinehint mustprogress noreturn uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #14 = { cold mustprogress noinline noreturn optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #15 = { cold nofree noreturn nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #16 = { inlinehint mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #17 = { mustprogress nofree nounwind willreturn memory(read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #18 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #19 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #20 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #21 = { nocallback nofree nosync nounwind willreturn memory(argmem: read) }
attributes #22 = { builtin nounwind }
attributes #23 = { nounwind }
attributes #24 = { noreturn }
attributes #25 = { builtin allocsize(0) }
attributes #26 = { nounwind willreturn memory(read) }
attributes #27 = { noreturn nounwind }

!llvm.module.flags = !{!0, !1, !2, !3, !4, !5}
!llvm.ident = !{!6}
!llvm.errno.tbaa = !{!7}

!0 = !{i32 7, !"Dwarf Version", i32 5}
!1 = !{i32 2, !"Debug Info Version", i32 3}
!2 = !{i32 7, !"openmp", i32 51}
!3 = !{i32 8, !"PIC Level", i32 2}
!4 = !{i32 7, !"uwtable", i32 2}
!5 = !{i32 7, !"debug-info-assignment-tracking", i1 true}
!6 = !{!"Ubuntu clang version 23.0.0 (++20260326081736+e69c7312f31b-1~exp1~20260326081905.1542)"}
!7 = !{!8, !8, i64 0}
!8 = !{!"int", !9, i64 0}
!9 = !{!"omnipotent char", !10, i64 0}
!10 = !{!"Simple C++ TBAA"}
!11 = !{!12, !12, i64 0}
!12 = !{!"vtable pointer", !10, i64 0}
!13 = !{!14, !16, i64 0}
!14 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE", !15, i64 0, !18, i64 8, !9, i64 16}
!15 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderE", !16, i64 0}
!16 = !{!"p1 omnipotent char", !17, i64 0}
!17 = !{!"any pointer", !9, i64 0}
!18 = !{!"long", !9, i64 0}
!19 = !{!9, !9, i64 0}
!20 = !{ptr @_ZN5folly18CustomLogFormatterD2Ev}
!21 = !{!18, !18, i64 0}
!22 = !{!23, !18, i64 88}
!23 = !{!"_ZTSN5folly18CustomLogFormatterE", !24, i64 0, !14, i64 8, !14, i64 40, !18, i64 72, !18, i64 80, !18, i64 88, !18, i64 96, !25, i64 104}
!24 = !{!"_ZTSN5folly12LogFormatterE"}
!25 = !{!"bool", !9, i64 0}
!26 = !{!16, !16, i64 0}
!27 = !{!28, !18, i64 72}
!28 = !{!"_ZTSN5folly10LogMessageE", !29, i64 0, !30, i64 8, !18, i64 16, !31, i64 24, !33, i64 32, !8, i64 48, !33, i64 56, !18, i64 72, !14, i64 80, !14, i64 112, !14, i64 144}
!29 = !{!"p1 _ZTSN5folly11LogCategoryE", !17, i64 0}
!30 = !{!"_ZTSN5folly8LogLevelE", !9, i64 0}
!31 = !{!"_ZTSNSt6chrono10time_pointINS_3_V212system_clockENS_8durationIlSt5ratioILl1ELl1000000000EEEEEE", !32, i64 0}
!32 = !{!"_ZTSNSt6chrono8durationIlSt5ratioILl1ELl1000000000EEEE", !18, i64 0}
!33 = !{!"_ZTSN5folly5RangeIPKcEE", !16, i64 0, !16, i64 8}
!34 = !{!14, !18, i64 8}
!35 = !{!28, !30, i64 8}
!36 = !{!37, !8, i64 16}
!37 = !{!"_ZTS2tm", !8, i64 0, !8, i64 4, !8, i64 8, !8, i64 12, !8, i64 16, !8, i64 20, !8, i64 24, !8, i64 28, !8, i64 32, !18, i64 40, !16, i64 48}
!38 = !{!28, !18, i64 16}
!39 = !{!28, !8, i64 48}
!40 = !{!41}
!41 = distinct !{!41, !42, !"_ZN5folly7sformatIJRKciRiS3_S3_S3_lmRNS_5RangeIPS1_EES6_jRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES7_SF_S6_S6_EEESD_S6_DpOT_: argument 0"}
!42 = distinct !{!42, !"_ZN5folly7sformatIJRKciRiS3_S3_S3_lmRNS_5RangeIPS1_EES6_jRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES7_SF_S6_S6_EEESD_S6_DpOT_"}
!43 = !{!44, !8, i64 0}
!44 = !{!"_ZTSN5folly6detail30BaseFormatterTupleIndexedValueILm1EiEE", !8, i64 0}
!45 = !{!46, !46, i64 0}
!46 = !{!"p1 int", !17, i64 0}
!47 = !{!48, !18, i64 0}
!48 = !{!"_ZTSN5folly6detail30BaseFormatterTupleIndexedValueILm6ElEE", !18, i64 0}
!49 = !{!50, !18, i64 0}
!50 = !{!"_ZTSN5folly6detail30BaseFormatterTupleIndexedValueILm7EmEE", !18, i64 0}
!51 = !{!52, !52, i64 0}
!52 = !{!"p1 _ZTSN5folly5RangeIPKcEE", !17, i64 0}
!53 = !{!54, !8, i64 0}
!54 = !{!"_ZTSN5folly6detail30BaseFormatterTupleIndexedValueILm10EjEE", !8, i64 0}
!55 = !{!56, !56, i64 0}
!56 = !{!"p1 _ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE", !17, i64 0}
!57 = !{!58}
!58 = distinct !{!58, !59, !"_ZN5folly7sformatIJRKciRiS3_S3_S3_lmRNS_5RangeIPS1_EES6_jRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES7_EEESD_S6_DpOT_: argument 0"}
!59 = distinct !{!59, !"_ZN5folly7sformatIJRKciRiS3_S3_S3_lmRNS_5RangeIPS1_EES6_jRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES7_EEESD_S6_DpOT_"}
!60 = !{!61}
!61 = distinct !{!61, !62, !"_ZNK5folly17BaseFormatterImplINS_9FormatterILb0EJRKciRiS4_S4_S4_lmRNS_5RangeIPS2_EES7_jRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_EEELb0ESt16integer_sequenceImJLm0ELm1ELm2ELm3ELm4ELm5ELm6ELm7ELm8ELm9ELm10ELm11ELm12EEEJS3_iS4_S4_S4_S4_lmS8_S7_jSG_S8_EE3strEv: argument 0"}
!62 = distinct !{!62, !"_ZNK5folly17BaseFormatterImplINS_9FormatterILb0EJRKciRiS4_S4_S4_lmRNS_5RangeIPS2_EES7_jRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_EEELb0ESt16integer_sequenceImJLm0ELm1ELm2ELm3ELm4ELm5ELm6ELm7ELm8ELm9ELm10ELm11ELm12EEEJS3_iS4_S4_S4_S4_lmS8_S7_jSG_S8_EE3strEv"}
!63 = !{!15, !16, i64 0}
!64 = !{!23, !18, i64 72}
!65 = !{!23, !18, i64 80}
!66 = !{!33, !16, i64 8}
!67 = !{!33, !16, i64 0}
!68 = !{!23, !18, i64 96}
!69 = !{!23, !25, i64 104}
!70 = !{i8 0, i8 2}
!71 = !{}
!72 = !{!73, !75}
!73 = distinct !{!73, !74, !"_ZNK5folly5RangeIPKcE2toINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEJEEENSt9enable_ifIXsr3std16is_constructibleIT_RKS2_mEE5valueESC_E4typeEDpOT0_: argument 0"}
!74 = distinct !{!74, !"_ZNK5folly5RangeIPKcE2toINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEJEEENSt9enable_ifIXsr3std16is_constructibleIT_RKS2_mEE5valueESC_E4typeEDpOT0_"}
!75 = distinct !{!75, !76, !"_ZNK5folly5RangeIPKcE8toStringB5cxx11Ev: argument 0"}
!76 = distinct !{!76, !"_ZNK5folly5RangeIPKcE8toStringB5cxx11Ev"}
!77 = !{!"branch_weights", !"expected", i32 1, i32 2000}
!78 = !{!79, !81}
!79 = distinct !{!79, !80, !"_ZNK5folly5RangeIPKcE2toINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEJEEENSt9enable_ifIXsr3std16is_constructibleIT_RKS2_mEE5valueESC_E4typeEDpOT0_: argument 0"}
!80 = distinct !{!80, !"_ZNK5folly5RangeIPKcE2toINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEJEEENSt9enable_ifIXsr3std16is_constructibleIT_RKS2_mEE5valueESC_E4typeEDpOT0_"}
!81 = distinct !{!81, !82, !"_ZNK5folly5RangeIPKcE8toStringB5cxx11Ev: argument 0"}
!82 = distinct !{!82, !"_ZNK5folly5RangeIPKcE8toStringB5cxx11Ev"}
!83 = distinct !{!83, !84}
!84 = !{!"llvm.loop.mustprogress"}
!85 = !{!"branch_weights", i32 2146410443, i32 1073205}
!86 = !{!"branch_weights", !"expected", i32 -2147483648, i32 0}
!87 = !{!88}
!88 = distinct !{!88, !89, !"_ZN5folly2toINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEJmETnNSt9enable_ifIXaasr12IsSomeStringIT_EE5valueoonesZT0_Li1Entsr3std7is_sameIS8_19__type_pack_elementIXmisPvDpT0_ELi1EEJvSB_EEEE5valueEiE4typeELi0EEES8_DpRKSA_: argument 0"}
!89 = distinct !{!89, !"_ZN5folly2toINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEJmETnNSt9enable_ifIXaasr12IsSomeStringIT_EE5valueoonesZT0_Li1Entsr3std7is_sameIS8_19__type_pack_elementIXmisPvDpT0_ELi1EEJvSB_EEEE5valueEiE4typeELi0EEES8_DpRKSA_"}
!90 = !{!91, !18, i64 24}
!91 = !{!"_ZTSN12_GLOBAL__N_110FormatKeysE", !33, i64 0, !18, i64 16, !18, i64 24}
!92 = distinct !{!92, !84}
!93 = !{!94}
!94 = distinct !{!94, !95, !"_ZN5folly2toINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEJS6_A2_cmA3_cETnNSt9enable_ifIXaasr12IsSomeStringIT_EE5valueoonesZT0_Li1Entsr3std7is_sameISA_19__type_pack_elementIXmisPvDpT0_ELi1EEJvSD_EEEE5valueEiE4typeELi0EEESA_DpRKSC_: argument 0"}
!95 = distinct !{!95, !"_ZN5folly2toINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEJS6_A2_cmA3_cETnNSt9enable_ifIXaasr12IsSomeStringIT_EE5valueoonesZT0_Li1Entsr3std7is_sameISA_19__type_pack_elementIXmisPvDpT0_ELi1EEJvSD_EEEE5valueEiE4typeELi0EEESA_DpRKSC_"}
!96 = !{!"branch_weights", i32 4001, i32 4000000}
!97 = !{!98, !98, i64 0}
!98 = !{!"short", !9, i64 0}
!99 = distinct !{!99, !84}
!100 = !{!101, !16, i64 0}
!101 = !{!"_ZTSN5folly6detail30BaseFormatterTupleIndexedValueILm0ERKcEE", !16, i64 0}
!102 = !{!103, !46, i64 0}
!103 = !{!"_ZTSN5folly6detail30BaseFormatterTupleIndexedValueILm2ERiEE", !46, i64 0}
!104 = !{i64 4}
!105 = !{!106, !46, i64 0}
!106 = !{!"_ZTSN5folly6detail30BaseFormatterTupleIndexedValueILm3ERiEE", !46, i64 0}
!107 = !{!108, !46, i64 0}
!108 = !{!"_ZTSN5folly6detail30BaseFormatterTupleIndexedValueILm4ERiEE", !46, i64 0}
!109 = !{!110, !46, i64 0}
!110 = !{!"_ZTSN5folly6detail30BaseFormatterTupleIndexedValueILm5ERiEE", !46, i64 0}
!111 = !{!112, !52, i64 0}
!112 = !{!"_ZTSN5folly6detail30BaseFormatterTupleIndexedValueILm8ERNS_5RangeIPKcEEEE", !52, i64 0}
!113 = !{i64 8}
!114 = !{!115, !56, i64 0}
!115 = !{!"_ZTSN5folly6detail30BaseFormatterTupleIndexedValueILm11ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEE", !56, i64 0}
!116 = !{!117, !52, i64 0}
!117 = !{!"_ZTSN5folly6detail30BaseFormatterTupleIndexedValueILm12ERNS_5RangeIPKcEEEE", !52, i64 0}
!118 = !{!119, !56, i64 0}
!119 = !{!"_ZTSN5folly6detail30BaseFormatterTupleIndexedValueILm13ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEE", !56, i64 0}
!120 = !{!121, !121, i64 0}
!121 = !{!"p1 _ZTSN5folly6detail27BaseFormatterAppendToStringINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEE", !17, i64 0}
!122 = !{!123, !56, i64 0}
!123 = !{!"_ZTSN5folly6detail27BaseFormatterAppendToStringINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEE", !56, i64 0}
!124 = distinct !{!124, !84}
!125 = !{!126, !8, i64 24}
!126 = !{!"_ZTSN5folly9FormatArgE", !33, i64 0, !9, i64 16, !127, i64 17, !128, i64 18, !25, i64 19, !25, i64 20, !25, i64 21, !8, i64 24, !8, i64 28, !8, i64 32, !9, i64 36, !33, i64 40, !8, i64 56, !33, i64 64, !129, i64 80}
!127 = !{!"_ZTSN5folly9FormatArg5AlignE", !9, i64 0}
!128 = !{!"_ZTSN5folly9FormatArg4SignE", !9, i64 0}
!129 = !{!"_ZTSN5folly9FormatArg11NextKeyModeE", !9, i64 0}
!130 = !{!126, !8, i64 28}
!131 = !{!126, !8, i64 32}
!132 = !{!126, !9, i64 36}
!133 = !{!126, !129, i64 80}
!134 = !{!"branch_weights", i32 428638165, i32 1717128, i32 1717128355}
!135 = !{!"branch_weights", !"expected", i32 2000, i32 1}
!136 = !{!137}
!137 = distinct !{!137, !138, !"_ZN5folly7parseToIiEENSt9enable_ifIX15is_arithmetic_vIT_EENS_8ExpectedINS_5RangeIPKcEENS_14ConversionCodeEEEE4typeES7_RS2_: argument 0"}
!138 = distinct !{!138, !"_ZN5folly7parseToIiEENSt9enable_ifIX15is_arithmetic_vIT_EENS_8ExpectedINS_5RangeIPKcEENS_14ConversionCodeEEEE4typeES7_RS2_"}
!139 = !{!140, !142, !137}
!140 = distinct !{!140, !141, !"_ZN5folly15expected_detail30expected_detail_ExpectedHelper14ExpectedHelper5then_INS0_15ExpectedStorageIiNS_14ConversionCodeELNS0_11StorageTypeE0EEEZNS_7parseToIiEENSt9enable_ifIX15is_arithmetic_vIT_EENS_8ExpectedINS_5RangeIPKcEES5_EEE4typeESF_RSA_EUliE_JES5_S2_EEDTclsrT3_5then_clsrSL_7return_IT2_Ecmclclsr3stdE7declvalIT0_EEcldtclsr3stdE7declvalISA_EE5valueEEL_ZNS_L4unitEEEspclsr3stdE7declvalIT1_EEEEOSA_OSN_DpOSO_: argument 0"}
!141 = distinct !{!141, !"_ZN5folly15expected_detail30expected_detail_ExpectedHelper14ExpectedHelper5then_INS0_15ExpectedStorageIiNS_14ConversionCodeELNS0_11StorageTypeE0EEEZNS_7parseToIiEENSt9enable_ifIX15is_arithmetic_vIT_EENS_8ExpectedINS_5RangeIPKcEES5_EEE4typeESF_RSA_EUliE_JES5_S2_EEDTclsrT3_5then_clsrSL_7return_IT2_Ecmclclsr3stdE7declvalIT0_EEcldtclsr3stdE7declvalISA_EE5valueEEL_ZNS_L4unitEEEspclsr3stdE7declvalIT1_EEEEOSA_OSN_DpOSO_"}
!142 = distinct !{!142, !143, !"_ZNO5folly8ExpectedIiNS_14ConversionCodeEE4thenIJZNS_7parseToIiEENSt9enable_ifIX15is_arithmetic_vIT_EENS0_INS_5RangeIPKcEES1_EEE4typeESA_RS6_EUliE_ELb0ETnNS5_IXooT0_scbgesZT_Li1EEiE4typeELi0EEEDTclsr15expected_detail14ExpectedHelperE5then_clL_ZSt7declvalIONS_15expected_detail15ExpectedStorageIiS1_LNSJ_11StorageTypeE0EEEEDTcl9__declvalIS6_ELi0EEEvEEspclsr3stdE7declvalIT_EEEEDpOSP_: argument 0"}
!143 = distinct !{!143, !"_ZNO5folly8ExpectedIiNS_14ConversionCodeEE4thenIJZNS_7parseToIiEENSt9enable_ifIX15is_arithmetic_vIT_EENS0_INS_5RangeIPKcEES1_EEE4typeESA_RS6_EUliE_ELb0ETnNS5_IXooT0_scbgesZT_Li1EEiE4typeELi0EEEDTclsr15expected_detail14ExpectedHelperE5then_clL_ZSt7declvalIONS_15expected_detail15ExpectedStorageIiS1_LNSJ_11StorageTypeE0EEEEDTcl9__declvalIS6_ELi0EEEvEEspclsr3stdE7declvalIT_EEEEDpOSP_"}
!144 = !{!17, !17, i64 0}
!145 = !{!146, !9, i64 0}
!146 = !{!"_ZTSN5folly11FormatValueIcvEE", !9, i64 0}
!147 = !{!126, !128, i64 18}
!148 = !{!126, !25, i64 19}
!149 = !{!126, !25, i64 20}
!150 = distinct !{!150, !84}
!151 = !{!126, !127, i64 17}
!152 = !{!153}
!153 = distinct !{!153, !154, !"_ZN5folly12BadFormatArg3strIJPKccS3_EEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_5RangeIS3_EEDpRKT_: argument 0"}
!154 = distinct !{!154, !"_ZN5folly12BadFormatArg3strIJPKccS3_EEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_5RangeIS3_EEDpRKT_"}
!155 = !{!126, !9, i64 16}
!156 = distinct !{!156, !84}
!157 = !{!158, !8, i64 0}
!158 = !{!"_ZTSN5folly11FormatValueIivEE", !8, i64 0}
!159 = distinct !{!159, !84}
!160 = distinct !{!160, !84}
!161 = distinct !{!161, !84}
!162 = distinct !{!162, !84}
!163 = !{!164, !18, i64 0}
!164 = !{!"_ZTSN5folly11FormatValueIlvEE", !18, i64 0}
!165 = distinct !{!165, !84}
!166 = distinct !{!166, !84}
!167 = distinct !{!167, !84}
!168 = distinct !{!168, !84}
!169 = !{!170, !18, i64 0}
!170 = !{!"_ZTSN5folly11FormatValueImvEE", !18, i64 0}
!171 = !{!172}
!172 = distinct !{!172, !173, !"_ZN5folly12BadFormatArg3strIJPKcEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_5RangeIS3_EEDpRKT_: argument 0"}
!173 = distinct !{!173, !"_ZN5folly12BadFormatArg3strIJPKcEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_5RangeIS3_EEDpRKT_"}
!174 = !{!"branch_weights", i32 1, i32 1000, i32 1000}
!175 = !{!126, !8, i64 56}
!176 = !{!177}
!177 = distinct !{!177, !178, !"_ZN5folly7parseToIiEENSt9enable_ifIX15is_arithmetic_vIT_EENS_8ExpectedINS_5RangeIPKcEENS_14ConversionCodeEEEE4typeES7_RS2_: argument 0"}
!178 = distinct !{!178, !"_ZN5folly7parseToIiEENSt9enable_ifIX15is_arithmetic_vIT_EENS_8ExpectedINS_5RangeIPKcEENS_14ConversionCodeEEEE4typeES7_RS2_"}
!179 = !{!180, !182, !177}
!180 = distinct !{!180, !181, !"_ZN5folly15expected_detail30expected_detail_ExpectedHelper14ExpectedHelper5then_INS0_15ExpectedStorageIiNS_14ConversionCodeELNS0_11StorageTypeE0EEEZNS_7parseToIiEENSt9enable_ifIX15is_arithmetic_vIT_EENS_8ExpectedINS_5RangeIPKcEES5_EEE4typeESF_RSA_EUliE_JES5_S2_EEDTclsrT3_5then_clsrSL_7return_IT2_Ecmclclsr3stdE7declvalIT0_EEcldtclsr3stdE7declvalISA_EE5valueEEL_ZNS_L4unitEEEspclsr3stdE7declvalIT1_EEEEOSA_OSN_DpOSO_: argument 0"}
!181 = distinct !{!181, !"_ZN5folly15expected_detail30expected_detail_ExpectedHelper14ExpectedHelper5then_INS0_15ExpectedStorageIiNS_14ConversionCodeELNS0_11StorageTypeE0EEEZNS_7parseToIiEENSt9enable_ifIX15is_arithmetic_vIT_EENS_8ExpectedINS_5RangeIPKcEES5_EEE4typeESF_RSA_EUliE_JES5_S2_EEDTclsrT3_5then_clsrSL_7return_IT2_Ecmclclsr3stdE7declvalIT0_EEcldtclsr3stdE7declvalISA_EE5valueEEL_ZNS_L4unitEEEspclsr3stdE7declvalIT1_EEEEOSA_OSN_DpOSO_"}
!182 = distinct !{!182, !183, !"_ZNO5folly8ExpectedIiNS_14ConversionCodeEE4thenIJZNS_7parseToIiEENSt9enable_ifIX15is_arithmetic_vIT_EENS0_INS_5RangeIPKcEES1_EEE4typeESA_RS6_EUliE_ELb0ETnNS5_IXooT0_scbgesZT_Li1EEiE4typeELi0EEEDTclsr15expected_detail14ExpectedHelperE5then_clL_ZSt7declvalIONS_15expected_detail15ExpectedStorageIiS1_LNSJ_11StorageTypeE0EEEEDTcl9__declvalIS6_ELi0EEEvEEspclsr3stdE7declvalIT_EEEEDpOSP_: argument 0"}
!183 = distinct !{!183, !"_ZNO5folly8ExpectedIiNS_14ConversionCodeEE4thenIJZNS_7parseToIiEENSt9enable_ifIX15is_arithmetic_vIT_EENS0_INS_5RangeIPKcEES1_EEE4typeESA_RS6_EUliE_ELb0ETnNS5_IXooT0_scbgesZT_Li1EEiE4typeELi0EEEDTclsr15expected_detail14ExpectedHelperE5then_clL_ZSt7declvalIONS_15expected_detail15ExpectedStorageIiS1_LNSJ_11StorageTypeE0EEEEDTcl9__declvalIS6_ELi0EEEvEEspclsr3stdE7declvalIT_EEEEDpOSP_"}
!184 = !{!185, !8, i64 0}
!185 = !{!"_ZTSN5folly11FormatValueIjvEE", !8, i64 0}
!186 = !{!187, !121, i64 0}
!187 = !{!"_ZTSZN5folly6detail21baseFormatterCallImplILb0ELb0ENS0_27BaseFormatterAppendToStringINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEEvRT1_mPKiPFSt17integral_constantIbXT0_EERKNS0_17BaseFormatterBaseEmEPKPFvSI_RNS_9FormatArgESB_ESI_EUlNS_5RangeIPKcEEE_", !121, i64 0}
!188 = !{!189}
!189 = distinct !{!189, !190, !"_ZN5folly12BadFormatArg3strIJPKcmEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_5RangeIS3_EEDpRKT_: argument 0"}
!190 = distinct !{!190, !"_ZN5folly12BadFormatArg3strIJPKcmEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_5RangeIS3_EEDpRKT_"}
end_hunk_3
