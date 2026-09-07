Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/z3/original/polynomial?download=true
inline.NumInlined: 6687
inline.NumDeleted: 1176
loop-unroll.NumCompletelyUnrolled: 125
loop-unroll.NumRuntimeUnrolled: 81
loop-unroll.NumUnrolled: 206
begin_hunk_0_@_ZN10polynomial7manager3imp15quasi_resultantEPKNS_10polynomialES4_jR7obj_refIS2_S0_E:bb.a
  %i.hw = icmp eq i32 %i.hv, 0
  br i1 %i.hw, label %bb.ap, label %_ZN7obj_refIN10polynomial10polynomialENS0_7managerEED2Ev.exit

bb.ap:                                            ; preds = %bb.ao
  invoke void @_ZN10polynomial7manager3imp3delEPNS_10polynomialE(ptr noundef nonnull align 8 dereferenceable(824) %i.ht, ptr noundef nonnull %i.hr)
          to label %_ZN7obj_refIN10polynomial10polynomialENS0_7managerEED2Ev.exit unwind label %bb.aq

bb.aq:                                            ; preds = %bb.ap
  %i.hx = landingpad { ptr, i32 }
          catch ptr null
  %i.hy = extractvalue { ptr, i32 } %i.hx, 0
  call void @__clang_call_terminate(ptr %i.hy) #28
  unreachable

_ZN7obj_refIN10polynomial10polynomialENS0_7managerEED2Ev.exit: ; preds = %_ZN7obj_refIN10polynomial10polynomialENS0_7managerEEaSERKS3_.exit.thread, %_ZN7obj_refIN10polynomial10polynomialENS0_7managerEEaSERKS3_.exit, %bb.ao, %bb.ap
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #29
  %i.hz = load ptr, ptr %7, align 8, !tbaa !110   ; 4 uses
  %.not.i.i77 = icmp eq ptr %i.hz, null
  br i1 %.not.i.i77, label %_ZN7obj_refIN10polynomial10polynomialENS0_7managerEED2Ev.exit79, label %bb.ar

bb.ar:                                            ; preds = %_ZN7obj_refIN10polynomial10polynomialENS0_7managerEED2Ev.exit
  %i.ia = load ptr, ptr %i.e, align 8, !tbaa !111, !nonnull !99, !align !100
  %i.ib = load ptr, ptr %i.ia, align 8, !tbaa !94
  %i.ic = load i32, ptr %i.hz, align 8, !tbaa !108
  %i.id = add i32 %i.ic, -1                       ; 2 uses
  store i32 %i.id, ptr %i.hz, align 8, !tbaa !108
  %i.ie = icmp eq i32 %i.id, 0
  br i1 %i.ie, label %bb.as, label %_ZN7obj_refIN10polynomial10polynomialENS0_7managerEED2Ev.exit79

bb.as:                                            ; preds = %bb.ar
  invoke void @_ZN10polynomial7manager3imp3delEPNS_10polynomialE(ptr noundef nonnull align 8 dereferenceable(824) %i.ib, ptr noundef nonnull %i.hz)
          to label %_ZN7obj_refIN10polynomial10polynomialENS0_7managerEED2Ev.exit79 unwind label %bb.at

bb.at:                                            ; preds = %bb.as
  %i.if = landingpad { ptr, i32 }
          catch ptr null
  %i.ig = extractvalue { ptr, i32 } %i.if, 0
  call void @__clang_call_terminate(ptr %i.ig) #28
  unreachable

_ZN7obj_refIN10polynomial10polynomialENS0_7managerEED2Ev.exit79: ; preds = %_ZN7obj_refIN10polynomial10polynomialENS0_7managerEED2Ev.exit, %bb.ar, %bb.as
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #29
  %i.ih = load ptr, ptr %6, align 8, !tbaa !110   ; 4 uses
  %.not.i.i80 = icmp eq ptr %i.ih, null
  br i1 %.not.i.i80, label %_ZN7obj_refIN10polynomial10polynomialENS0_7managerEED2Ev.exit82, label %bb.au

bb.au:                                            ; preds = %_ZN7obj_refIN10polynomial10polynomialENS0_7managerEED2Ev.exit79
  %i.ii = load ptr, ptr %i.d, align 8, !tbaa !111, !nonnull !99, !align !100
  %i.ij = load ptr, ptr %i.ii, align 8, !tbaa !94
  %i.ik = load i32, ptr %i.ih, align 8, !tbaa !108
  %i.il = add i32 %i.ik, -1                       ; 2 uses
  store i32 %i.il, ptr %i.ih, align 8, !tbaa !108
  %i.im = icmp eq i32 %i.il, 0
  br i1 %i.im, label %bb.av, label %_ZN7obj_refIN10polynomial10polynomialENS0_7managerEED2Ev.exit82

bb.av:                                            ; preds = %bb.au
  invoke void @_ZN10polynomial7manager3imp3delEPNS_10polynomialE(ptr noundef nonnull align 8 dereferenceable(824) %i.ij, ptr noundef nonnull %i.ih)
          to label %_ZN7obj_refIN10polynomial10polynomialENS0_7managerEED2Ev.exit82 unwind label %bb.aw

bb.aw:                                            ; preds = %bb.av
  %i.in = landingpad { ptr, i32 }
          catch ptr null
  %i.io = extractvalue { ptr, i32 } %i.in, 0
  call void @__clang_call_terminate(ptr %i.io) #28
  unreachable

_ZN7obj_refIN10polynomial10polynomialENS0_7managerEED2Ev.exit82: ; preds = %_ZN7obj_refIN10polynomial10polynomialENS0_7managerEED2Ev.exit79, %bb.au, %bb.av
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #29
  ret void

.loopexit:                                        ; preds = %bb.ba, %bb.bd
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %bb.be

.loopexit.split-lp:                               ; preds = %bb.an
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.be

bb.ax:                                            ; preds = %_ZN10polynomial7manager6degreeEPKNS_10polynomialEj.exit72
  %i.ip = load ptr, ptr %6, align 8, !tbaa !110   ; 6 uses
  %i.iq = load ptr, ptr %7, align 8, !tbaa !110   ; 12 uses
  %.not.i83 = icmp eq ptr %i.ip, %i.iq
  br i1 %.not.i83, label %_ZN7obj_refIN10polynomial10polynomialENS0_7managerEEaSERKS3_.exit90, label %bb.ay

bb.ay:                                            ; preds = %bb.ax
  %.not.i.i84 = icmp eq ptr %i.ip, null
  br i1 %.not.i.i84, label %_ZN7obj_refIN10polynomial10polynomialENS0_7managerEE7dec_refEv.exit.i85, label %bb.az

bb.az:                                            ; preds = %bb.ay
  %i.ir = load ptr, ptr %i.d, align 8, !tbaa !111, !nonnull !99, !align !100
  %i.is = load ptr, ptr %i.ir, align 8, !tbaa !94
  %i.it = load i32, ptr %i.ip, align 8, !tbaa !108
  %i.iu = add i32 %i.it, -1                       ; 2 uses
  store i32 %i.iu, ptr %i.ip, align 8, !tbaa !108
  %i.iv = icmp eq i32 %i.iu, 0
  br i1 %i.iv, label %bb.ba, label %_ZN7obj_refIN10polynomial10polynomialENS0_7managerEE7dec_refEv.exit.i85

bb.ba:                                            ; preds = %bb.az
  invoke void @_ZN10polynomial7manager3imp3delEPNS_10polynomialE(ptr noundef nonnull align 8 dereferenceable(824) %i.is, ptr noundef nonnull %i.ip)
          to label %_ZN7obj_refIN10polynomial10polynomialENS0_7managerEE7dec_refEv.exit.i85 unwind label %.loopexit

_ZN7obj_refIN10polynomial10polynomialENS0_7managerEE7dec_refEv.exit.i85: ; preds = %bb.ba, %bb.az, %bb.ay
  store ptr %i.iq, ptr %6, align 8, !tbaa !110
  %.not.i3.i86 = icmp eq ptr %i.iq, null
  br i1 %.not.i3.i86, label %_ZN7obj_refIN10polynomial10polynomialENS0_7managerEEaSERKS3_.exit90thread-pre-split, label %_ZN10polynomial7manager7inc_refEPNS_10polynomialE.exit.i.i87

_ZN10polynomial7manager7inc_refEPNS_10polynomialE.exit.i.i87: ; preds = %_ZN7obj_refIN10polynomial10polynomialENS0_7managerEE7dec_refEv.exit.i85
  %i.iw = load i32, ptr %i.iq, align 8, !tbaa !108
  %i.ix = add i32 %i.iw, 1
  store i32 %i.ix, ptr %i.iq, align 8, !tbaa !108
  br label %_ZN7obj_refIN10polynomial10polynomialENS0_7managerEEaSERKS3_.exit90thread-pre-split

_ZN7obj_refIN10polynomial10polynomialENS0_7managerEEaSERKS3_.exit90thread-pre-split: ; preds = %_ZN7obj_refIN10polynomial10polynomialENS0_7managerEE7dec_refEv.exit.i85, %_ZN10polynomial7manager7inc_refEPNS_10polynomialE.exit.i.i87
  %.pre128 = load ptr, ptr %8, align 8, !tbaa !110
  br label %_ZN7obj_refIN10polynomial10polynomialENS0_7managerEEaSERKS3_.exit90

_ZN7obj_refIN10polynomial10polynomialENS0_7managerEEaSERKS3_.exit90: ; preds = %_ZN7obj_refIN10polynomial10polynomialENS0_7managerEEaSERKS3_.exit90thread-pre-split, %bb.ax
  %i.iy = phi ptr [ %.pre128, %_ZN7obj_refIN10polynomial10polynomialENS0_7managerEEaSERKS3_.exit90thread-pre-split ], [ %i.eu, %bb.ax ] ; 3 uses
  %i.iz = phi ptr [ %i.iq, %_ZN7obj_refIN10polynomial10polynomialENS0_7managerEEaSERKS3_.exit90thread-pre-split ], [ %i.ip, %bb.ax ]
  %.not.i91 = icmp eq ptr %i.iq, %i.iy
  br i1 %.not.i91, label %_ZN7obj_refIN10polynomial10polynomialENS0_7managerEEaSERKS3_.exit98, label %bb.bb

bb.bb:                                            ; preds = %_ZN7obj_refIN10polynomial10polynomialENS0_7managerEEaSERKS3_.exit90
  %.not.i.i92 = icmp eq ptr %i.iq, null
  br i1 %.not.i.i92, label %_ZN7obj_refIN10polynomial10polynomialENS0_7managerEE7dec_refEv.exit.i93, label %bb.bc

bb.bc:                                            ; preds = %bb.bb
  %i.ja = load ptr, ptr %i.e, align 8, !tbaa !111, !nonnull !99, !align !100
  %i.jb = load ptr, ptr %i.ja, align 8, !tbaa !94
  %i.jc = load i32, ptr %i.iq, align 8, !tbaa !108
  %i.jd = add i32 %i.jc, -1                       ; 2 uses
  store i32 %i.jd, ptr %i.iq, align 8, !tbaa !108
  %i.je = icmp eq i32 %i.jd, 0
  br i1 %i.je, label %bb.bd, label %_ZN7obj_refIN10polynomial10polynomialENS0_7managerEE7dec_refEv.exit.i93

bb.bd:                                            ; preds = %bb.bc
  invoke void @_ZN10polynomial7manager3imp3delEPNS_10polynomialE(ptr noundef nonnull align 8 dereferenceable(824) %i.jb, ptr noundef nonnull %i.iq)
          to label %.noexc97 unwind label %.loopexit

.noexc97:                                         ; preds = %bb.bd
  %.pr.pre.i96 = load ptr, ptr %8, align 8, !tbaa !110
  br label %_ZN7obj_refIN10polynomial10polynomialENS0_7managerEE7dec_refEv.exit.i93

_ZN7obj_refIN10polynomial10polynomialENS0_7managerEE7dec_refEv.exit.i93: ; preds = %.noexc97, %bb.bc, %bb.bb
  %i.jf = phi ptr [ %i.iy, %bb.bb ], [ %.pr.pre.i96, %.noexc97 ], [ %i.iy, %bb.bc ] ; 5 uses
  store ptr %i.jf, ptr %7, align 8, !tbaa !110
  %.not.i3.i94 = icmp eq ptr %i.jf, null
  br i1 %.not.i3.i94, label %_ZN7obj_refIN10polynomial10polynomialENS0_7managerEEaSERKS3_.exit98, label %_ZN10polynomial7manager7inc_refEPNS_10polynomialE.exit.i.i95

_ZN10polynomial7manager7inc_refEPNS_10polynomialE.exit.i.i95: ; preds = %_ZN7obj_refIN10polynomial10polynomialENS0_7managerEE7dec_refEv.exit.i93
  %i.jg = load i32, ptr %i.jf, align 8, !tbaa !108
  %i.jh = add i32 %i.jg, 1
  store i32 %i.jh, ptr %i.jf, align 8, !tbaa !108
  br label %_ZN7obj_refIN10polynomial10polynomialENS0_7managerEEaSERKS3_.exit98

_ZN7obj_refIN10polynomial10polynomialENS0_7managerEEaSERKS3_.exit98: ; preds = %_ZN7obj_refIN10polynomial10polynomialENS0_7managerEEaSERKS3_.exit90, %_ZN7obj_refIN10polynomial10polynomialENS0_7managerEE7dec_refEv.exit.i93, %_ZN10polynomial7manager7inc_refEPNS_10polynomialE.exit.i.i95
  %i.ji = phi ptr [ %i.iq, %_ZN7obj_refIN10polynomial10polynomialENS0_7managerEEaSERKS3_.exit90 ], [ null, %_ZN7obj_refIN10polynomial10polynomialENS0_7managerEE7dec_refEv.exit.i93 ], [ %i.jf, %_ZN10polynomial7manager7inc_refEPNS_10polynomialE.exit.i.i95 ]
  %.pre = load ptr, ptr %i.b, align 8, !tbaa !207
  br label %bb.v

bb.be:                                            ; preds = %bb.aa, %.loopexit.split-lp, %.loopexit
  %eh.lpad-body = phi { ptr, i32 } [ %i.et, %bb.aa ], [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #29
  call void @_ZN7obj_refIN10polynomial10polynomialENS0_7managerEED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %8) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #29
  call void @_ZN7obj_refIN10polynomial10polynomialENS0_7managerEED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %7) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #29
  call void @_ZN7obj_refIN10polynomial10polynomialENS0_7managerEED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %6) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #29
  resume { ptr, i32 } %eh.lpad-body
}

; Function Attrs: mustprogress uwtable
define hidden void @_ZN10polynomial7manager9resultantEPKNS_10polynomialES3_jR7obj_refIS1_S0_E(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %0, ptr noundef %1, ptr noundef %2, i32 noundef %3, ptr noundef nonnull align 8 dereferenceable(16) %4) local_unnamed_addr #1 align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !94
  tail call void @_ZN10polynomial7manager3imp9resultantEPKNS_10polynomialES4_jR7obj_refIS2_S0_E(ptr noundef nonnull align 8 dereferenceable(824) %i.a, ptr noundef %1, ptr noundef %2, i32 noundef %3, ptr noundef nonnull align 8 dereferenceable(16) %4)
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN10polynomial7manager3imp9resultantEPKNS_10polynomialES4_jR7obj_refIS2_S0_E(ptr noundef nonnull align 8 dereferenceable(824) %0, ptr noundef %1, ptr noundef %2, i32 noundef %3, ptr noundef nonnull align 8 dereferenceable(16) %4) local_unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %5 = alloca %class.mpz, align 8                 ; 6 uses
  %i.a = alloca i32, align 4                      ; 4 uses
  %6 = alloca %class.obj_ref, align 8             ; 8 uses
  %7 = alloca %class.mpz, align 8                 ; 6 uses
  %8 = alloca %class.obj_ref, align 8             ; 12 uses
  %9 = alloca %class.obj_ref, align 8             ; 13 uses
  %10 = alloca %class._scoped_numeral.43, align 8 ; 9 uses
  %11 = alloca %class._scoped_numeral.43, align 8 ; 9 uses
  %12 = alloca %class.obj_ref, align 8            ; 14 uses
  %13 = alloca %class.obj_ref, align 8            ; 14 uses
  %14 = alloca %class.obj_ref, align 8            ; 10 uses
  %15 = alloca %class.obj_ref, align 8            ; 10 uses
  %16 = alloca %class.obj_ref, align 8            ; 9 uses
  %17 = alloca %class.obj_ref, align 8            ; 9 uses
  %18 = alloca %class.obj_ref, align 8            ; 10 uses
  %19 = alloca %class.obj_ref, align 8            ; 11 uses
  %20 = alloca %class.obj_ref, align 8            ; 21 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #29
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !207, !nonnull !99, !align !100 ; 8 uses
  %i.d = getelementptr inbounds nuw i8, ptr %8, i64 8 ; 3 uses
  store ptr %i.c, ptr %i.d, align 8, !tbaa !81
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #29
  %i.e = getelementptr inbounds nuw i8, ptr %9, i64 8 ; 4 uses
  store ptr %i.c, ptr %i.e, align 8, !tbaa !81
  %.not.i = icmp eq ptr %1, null
  br i1 %.not.i, label %bb.b, label %_ZN10polynomial7manager7inc_refEPNS_10polynomialE.exit.i

_ZN10polynomial7manager7inc_refEPNS_10polynomialE.exit.i: ; preds = %bb.a
  %i.f = load i32, ptr %1, align 8, !tbaa !108
  %i.g = add i32 %i.f, 1
  store i32 %i.g, ptr %1, align 8, !tbaa !108
  br label %bb.b

bb.b:                                             ; preds = %_ZN10polynomial7manager7inc_refEPNS_10polynomialE.exit.i, %bb.a
  store ptr %1, ptr %8, align 8, !tbaa !110
  %.not.i84 = icmp eq ptr %2, null                ; 2 uses
  br i1 %.not.i84, label %bb.c, label %_ZN10polynomial7manager7inc_refEPNS_10polynomialE.exit.i85

_ZN10polynomial7manager7inc_refEPNS_10polynomialE.exit.i85: ; preds = %bb.b
  %i.h = load i32, ptr %2, align 8, !tbaa !108
  %i.i = add i32 %i.h, 1
  store i32 %i.i, ptr %2, align 8, !tbaa !108
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %_ZN10polynomial7manager7inc_refEPNS_10polynomialE.exit.i85
  store ptr %2, ptr %9, align 8, !tbaa !110
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.k = load i32, ptr %i.j, align 8, !tbaa !175  ; 3 uses
  %i.l = icmp eq i32 %i.k, 0
  br i1 %i.l, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.m = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.n = load i32, ptr %i.m, align 8, !tbaa !175  ; 4 uses
  %i.o = icmp eq i32 %i.n, 0
  br i1 %i.o, label %bb.e, label %bb.j

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 504
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !160  ; 4 uses
  %.not.i89 = icmp eq ptr %i.q, null
  br i1 %.not.i89, label %bb.f, label %_ZN10polynomial7manager7inc_refEPNS_10polynomialE.exit.i90

_ZN10polynomial7manager7inc_refEPNS_10polynomialE.exit.i90: ; preds = %bb.e
  %i.r = load i32, ptr %i.q, align 8, !tbaa !108
  %i.s = add i32 %i.r, 1
  store i32 %i.s, ptr %i.q, align 8, !tbaa !108
  br label %bb.f

bb.f:                                             ; preds = %_ZN10polynomial7manager7inc_refEPNS_10polynomialE.exit.i90, %bb.e
  %i.t = load ptr, ptr %4, align 8, !tbaa !110    ; 4 uses
  %.not.i4.i91 = icmp eq ptr %i.t, null
  br i1 %.not.i4.i91, label %_ZN7obj_refIN10polynomial10polynomialENS0_7managerEEaSEPS1_.exit93, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.u = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !111, !nonnull !99, !align !100
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !94
  %i.x = load i32, ptr %i.t, align 8, !tbaa !108
  %i.y = add i32 %i.x, -1                         ; 2 uses
  store i32 %i.y, ptr %i.t, align 8, !tbaa !108
  %i.z = icmp eq i32 %i.y, 0
  br i1 %i.z, label %bb.h, label %_ZN7obj_refIN10polynomial10polynomialENS0_7managerEEaSEPS1_.exit93

bb.h:                                             ; preds = %bb.g
  invoke void @_ZN10polynomial7manager3imp3delEPNS_10polynomialE(ptr noundef nonnull align 8 dereferenceable(824) %i.w, ptr noundef nonnull %i.t)
          to label %_ZN7obj_refIN10polynomial10polynomialENS0_7managerEEaSEPS1_.exit93 unwind label %bb.i

_ZN7obj_refIN10polynomial10polynomialENS0_7managerEEaSEPS1_.exit93: ; preds = %bb.h, %bb.f, %bb.g
  store ptr %i.q, ptr %4, align 8, !tbaa !110
  br label %bb.ir

bb.i:                                             ; preds = %_ZN10polynomial7manager6degreeEPKNS_10polynomialEj.exit131.invoke, %bb.m, %bb.h
  %i.aa = landingpad { ptr, i32 }
          cleanup
  br label %bb.iy

bb.j:                                             ; preds = %bb.d
  %cond = icmp eq i32 %i.k, 1
  br i1 %cond, label %_ZN10polynomial7manager8is_constEPKNS_10polynomialE.exit, label %_ZN10polynomial7manager8is_constEPKNS_10polynomialE.exit.thread567

_ZN10polynomial7manager8is_constEPKNS_10polynomialE.exit: ; preds = %bb.j
  %i.ab = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !176
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !177
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 12
  %i.af = load i32, ptr %i.ae, align 4, !tbaa !78
  %i.ag = icmp eq i32 %i.af, 0
  br i1 %i.ag, label %_ZN10polynomial7manager8is_constEPKNS_10polynomialE.exit.thread, label %_ZN10polynomial7manager8is_constEPKNS_10polynomialE.exit.thread567

_ZN10polynomial7manager8is_constEPKNS_10polynomialE.exit.thread: ; preds = %_ZN10polynomial7manager8is_constEPKNS_10polynomialE.exit
  %cond573 = icmp eq i32 %i.n, 1
  %i.ah = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !176 ; 2 uses
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !177 ; 3 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 12
  %i.al = load i32, ptr %i.ak, align 4, !tbaa !78 ; 2 uses
  %i.am = icmp eq i32 %i.al, 0                    ; 2 uses
  br i1 %cond573, label %_ZN10polynomial7manager8is_constEPKNS_10polynomialE.exit95, label %_ZN10polynomial7manager8is_constEPKNS_10polynomialE.exit95.thread568

_ZN10polynomial7manager8is_constEPKNS_10polynomialE.exit95: ; preds = %_ZN10polynomial7manager8is_constEPKNS_10polynomialE.exit.thread
  br i1 %i.am, label %_ZN10polynomial7manager8is_constEPKNS_10polynomialE.exit95.thread, label %_ZN10polynomial7manager8is_constEPKNS_10polynomialE.exit95.thread568.thread

_ZN10polynomial7manager8is_constEPKNS_10polynomialE.exit95.thread: ; preds = %_ZN10polynomial7manager8is_constEPKNS_10polynomialE.exit95
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 528
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !204 ; 4 uses
  %.not.i96 = icmp eq ptr %i.ao, null
  br i1 %.not.i96, label %bb.k, label %_ZN10polynomial7manager7inc_refEPNS_10polynomialE.exit.i97

_ZN10polynomial7manager7inc_refEPNS_10polynomialE.exit.i97: ; preds = %_ZN10polynomial7manager8is_constEPKNS_10polynomialE.exit95.thread
  %i.ap = load i32, ptr %i.ao, align 8, !tbaa !108
  %i.aq = add i32 %i.ap, 1
  store i32 %i.aq, ptr %i.ao, align 8, !tbaa !108
  br label %bb.k

bb.k:                                             ; preds = %_ZN10polynomial7manager7inc_refEPNS_10polynomialE.exit.i97, %_ZN10polynomial7manager8is_constEPKNS_10polynomialE.exit95.thread
  %i.ar = load ptr, ptr %4, align 8, !tbaa !110   ; 4 uses
  %.not.i4.i98 = icmp eq ptr %i.ar, null
  br i1 %.not.i4.i98, label %.thread813, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.as = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !111, !nonnull !99, !align !100
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !94
  %i.av = load i32, ptr %i.ar, align 8, !tbaa !108
  %i.aw = add i32 %i.av, -1                       ; 2 uses
  store i32 %i.aw, ptr %i.ar, align 8, !tbaa !108
  %i.ax = icmp eq i32 %i.aw, 0
  br i1 %i.ax, label %bb.m, label %.thread813

bb.m:                                             ; preds = %bb.l
  invoke void @_ZN10polynomial7manager3imp3delEPNS_10polynomialE(ptr noundef nonnull align 8 dereferenceable(824) %i.au, ptr noundef nonnull %i.ar)
          to label %.thread813 unwind label %bb.i

.thread813:                                       ; preds = %bb.l, %bb.k, %bb.m
  store ptr %i.ao, ptr %4, align 8, !tbaa !110
  br label %bb.is

_ZN10polynomial7manager8is_constEPKNS_10polynomialE.exit95.thread568: ; preds = %_ZN10polynomial7manager8is_constEPKNS_10polynomialE.exit.thread
  br i1 %i.am, label %_ZN10polynomial7manager6degreeEPKNS_10polynomialEj.exit131.invoke, label %_ZN10polynomial7manager8is_constEPKNS_10polynomialE.exit95.thread568.thread

_ZN10polynomial7manager8is_constEPKNS_10polynomialE.exit95.thread568.thread: ; preds = %_ZN10polynomial7manager8is_constEPKNS_10polynomialE.exit95, %_ZN10polynomial7manager8is_constEPKNS_10polynomialE.exit95.thread568
  %i.ay = add i32 %i.al, -1
  %i.az = getelementptr inbounds nuw i8, ptr %i.aj, i64 20
  %i.ba = zext i32 %i.ay to i64                   ; 2 uses
  %i.bb = getelementptr inbounds nuw [8 x i8], ptr %i.az, i64 %i.ba
  %i.bc = load i32, ptr %i.bb, align 4, !tbaa !73
  %i.bd = icmp eq i32 %i.bc, %3
  br i1 %i.bd, label %bb.n, label %.preheader.preheader.i

.preheader.preheader.i:                           ; preds = %_ZN10polynomial7manager8is_constEPKNS_10polynomialE.exit95.thread568.thread
  %wide.trip.count.i = zext i32 %i.n to i64
  br label %.preheader.i

bb.n:                                             ; preds = %_ZN10polynomial7manager8is_constEPKNS_10polynomialE.exit95.thread568.thread
  %i.be = getelementptr inbounds nuw [8 x i8], ptr %i.aj, i64 %i.ba
  br label %_ZN10polynomial7manager6degreeEPKNS_10polynomialEj.exit131.invoke.sink.split

.preheader.i:                                     ; preds = %_ZNK10polynomial8monomial9degree_ofEj.exit.i, %.preheader.preheader.i
  %indvars.iv.i = phi i64 [ 0, %.preheader.preheader.i ], [ %indvars.iv.next.i, %_ZNK10polynomial8monomial9degree_ofEj.exit.i ] ; 2 uses
  %.02029.i = phi i32 [ 0, %.preheader.preheader.i ], [ %.0.i.i, %_ZNK10polynomial8monomial9degree_ofEj.exit.i ] ; 11 uses
  %i.bf = getelementptr inbounds nuw [8 x i8], ptr %i.ai, i64 %indvars.iv.i
  %i.bg = load ptr, ptr %i.bf, align 8, !tbaa !177 ; 3 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bg, i64 12
  %i.bi = load i32, ptr %i.bh, align 4, !tbaa !78 ; 3 uses
  %i.bj = icmp eq i32 %i.bi, 0
  br i1 %i.bj, label %_ZNK10polynomial8monomial9degree_ofEj.exit.i, label %bb.o

bb.o:                                             ; preds = %.preheader.i
  %i.bk = add i32 %i.bi, -1                       ; 3 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bg, i64 20 ; 8 uses
  %i.bm = zext i32 %i.bk to i64                   ; 8 uses
  %i.bn = getelementptr inbounds nuw [8 x i8], ptr %i.bl, i64 %i.bm
  %i.bo = load i32, ptr %i.bn, align 4, !tbaa !73
  %i.bp = icmp eq i32 %i.bo, %3
  br i1 %i.bp, label %_ZNK10polynomial8monomial8index_ofEj.exit.thread6.i.i, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.bq = icmp ult i32 %i.bi, 8
  br i1 %i.bq, label %.preheader.i.i.i.preheader, label %.preheader43.i.i.i

.preheader.i.i.i.preheader:                       ; preds = %bb.p
  %.not.i.i.i954 = icmp eq i32 %i.bk, 0
  br i1 %.not.i.i.i954, label %_ZNK10polynomial8monomial9degree_ofEj.exit.i, label %.lr.ph956

.preheader.i.i.i:                                 ; preds = %.lr.ph956
  %.not.i.i.i = icmp eq i64 %indvars.iv.next.i.i.i, 0
  br i1 %.not.i.i.i, label %_ZNK10polynomial8monomial9degree_ofEj.exit.i, label %.lr.ph956.1

.lr.ph956.1:                                      ; preds = %.preheader.i.i.i
  %indvars.iv.next.i.i.i.1 = add nsw i64 %i.bm, -2 ; 3 uses
  %i.br = getelementptr inbounds nuw [8 x i8], ptr %i.bl, i64 %indvars.iv.next.i.i.i.1
  %i.bs = load i32, ptr %i.br, align 4, !tbaa !73
  %i.bt = icmp eq i32 %i.bs, %3
  br i1 %i.bt, label %.thread.loopexit.split.loop.exit.i.i.i, label %.preheader.i.i.i.1, !llvm.loop !5

end_hunk_0
begin_hunk_1_@_ZN10polynomial7manager3imp9resultantEPKNS_10polynomialES4_jR7obj_refIS2_S0_E:bb.a
  %i.acd = getelementptr inbounds nuw [8 x i8], ptr %i.abo, i64 %indvars.iv.next.i.i.i.i.4
  %i.ace = load i32, ptr %i.acd, align 4, !tbaa !73
  %i.acf = icmp eq i32 %i.ace, %3
  br i1 %i.acf, label %.thread.loopexit.split.loop.exit.i.i.i.i, label %.preheader.i.i.i.i.4, !llvm.loop !5

.preheader.i.i.i.i.4:                             ; preds = %.lr.ph941.4
  %.not.i.i.i.i377.4 = icmp eq i64 %indvars.iv.next.i.i.i.i.4, 0
  br i1 %.not.i.i.i.i377.4, label %_ZNK10polynomial8monomial9degree_ofEj.exit.i.i, label %.lr.ph941.5

.lr.ph941.5:                                      ; preds = %.preheader.i.i.i.i.4
  %indvars.iv.next.i.i.i.i.5 = add nsw i64 %i.abp, -6 ; 2 uses
  %i.acg = getelementptr inbounds nuw [8 x i8], ptr %i.abo, i64 %indvars.iv.next.i.i.i.i.5
  %i.ach = load i32, ptr %i.acg, align 4, !tbaa !73
  %i.aci = icmp eq i32 %i.ach, %3
  br i1 %i.aci, label %.thread.loopexit.split.loop.exit.i.i.i.i, label %_ZNK10polynomial8monomial9degree_ofEj.exit.i.i, !llvm.loop !5

.lr.ph941:                                        ; preds = %.preheader.i.i.i.i.preheader
  %indvars.iv.next.i.i.i.i = add nsw i64 %i.abp, -1 ; 3 uses
  %i.acj = getelementptr inbounds nuw [8 x i8], ptr %i.abo, i64 %indvars.iv.next.i.i.i.i
  %i.ack = load i32, ptr %i.acj, align 4, !tbaa !73
  %i.acl = icmp eq i32 %i.ack, %3
  br i1 %i.acl, label %.thread.loopexit.split.loop.exit.i.i.i.i, label %.preheader.i.i.i.i, !llvm.loop !5

.preheader43.i.i.i.i:                             ; preds = %bb.eh, %bb.el
  %.026.i.i.i.i = phi i32 [ %.127.i.i.i.i, %bb.el ], [ 0, %bb.eh ] ; 3 uses
  %.0.i.i.i.i375 = phi i32 [ %.1.i.i.i.i, %bb.el ], [ %i.abn, %bb.eh ] ; 2 uses
  %i.acm = sub nsw i32 %.0.i.i.i.i375, %.026.i.i.i.i
  %i.acn = sdiv i32 %i.acm, 2
  %i.aco = add nsw i32 %i.acn, %.026.i.i.i.i      ; 4 uses
  %i.acp = zext i32 %i.aco to i64
  %i.acq = getelementptr inbounds nuw [8 x i8], ptr %i.abo, i64 %i.acp
  %i.acr = load i32, ptr %i.acq, align 4, !tbaa !73 ; 2 uses
  %i.acs = icmp ugt i32 %3, %i.acr
  br i1 %i.acs, label %bb.ei, label %bb.ej

bb.ei:                                            ; preds = %.preheader43.i.i.i.i
  %i.act = add nsw i32 %i.aco, 1
  br label %bb.el

bb.ej:                                            ; preds = %.preheader43.i.i.i.i
  %i.acu = icmp ult i32 %3, %i.acr
  br i1 %i.acu, label %bb.ek, label %_ZNK10polynomial8monomial8index_ofEj.exit.i.i.i

bb.ek:                                            ; preds = %bb.ej
  %i.acv = add nsw i32 %i.aco, -1
  br label %bb.el

bb.el:                                            ; preds = %bb.ek, %bb.ei
  %.127.i.i.i.i = phi i32 [ %i.act, %bb.ei ], [ %.026.i.i.i.i, %bb.ek ] ; 2 uses
  %.1.i.i.i.i = phi i32 [ %.0.i.i.i.i375, %bb.ei ], [ %i.acv, %bb.ek ] ; 2 uses
  %.not42.i.i.i.i = icmp sgt i32 %.127.i.i.i.i, %.1.i.i.i.i
  br i1 %.not42.i.i.i.i, label %_ZNK10polynomial8monomial9degree_ofEj.exit.i.i, label %.preheader43.i.i.i.i, !llvm.loop !6

.thread.loopexit.split.loop.exit.i.i.i.i:         ; preds = %.lr.ph941.5, %.lr.ph941.4, %.lr.ph941.3, %.lr.ph941.2, %.lr.ph941.1, %.lr.ph941
  %indvars.iv.next.i.i.i.i.lcssa = phi i64 [ %indvars.iv.next.i.i.i.i, %.lr.ph941 ], [ %indvars.iv.next.i.i.i.i.1, %.lr.ph941.1 ], [ %indvars.iv.next.i.i.i.i.2, %.lr.ph941.2 ], [ %indvars.iv.next.i.i.i.i.3, %.lr.ph941.3 ], [ %indvars.iv.next.i.i.i.i.4, %.lr.ph941.4 ], [ %indvars.iv.next.i.i.i.i.5, %.lr.ph941.5 ]
  %indvars.le.i.i.i.i = trunc nuw i64 %indvars.iv.next.i.i.i.i.lcssa to i32
  br label %_ZNK10polynomial8monomial8index_ofEj.exit.i.i.i

_ZNK10polynomial8monomial8index_ofEj.exit.i.i.i:  ; preds = %bb.ej, %.thread.loopexit.split.loop.exit.i.i.i.i
  %.4.i.i.i.i = phi i32 [ %indvars.le.i.i.i.i, %.thread.loopexit.split.loop.exit.i.i.i.i ], [ %i.aco, %bb.ej ] ; 2 uses
  %i.acw = icmp eq i32 %.4.i.i.i.i, -1
  br i1 %i.acw, label %_ZNK10polynomial8monomial9degree_ofEj.exit.i.i, label %_ZNK10polynomial8monomial8index_ofEj.exit._ZNK10polynomial8monomial8index_ofEj.exit.thread6_crit_edge.i.i.i

_ZNK10polynomial8monomial8index_ofEj.exit._ZNK10polynomial8monomial8index_ofEj.exit.thread6_crit_edge.i.i.i: ; preds = %_ZNK10polynomial8monomial8index_ofEj.exit.i.i.i
  %.pre.i.i.i = zext i32 %.4.i.i.i.i to i64
  br label %_ZNK10polynomial8monomial8index_ofEj.exit.thread6.i.i.i

_ZNK10polynomial8monomial8index_ofEj.exit.thread6.i.i.i: ; preds = %_ZNK10polynomial8monomial8index_ofEj.exit._ZNK10polynomial8monomial8index_ofEj.exit.thread6_crit_edge.i.i.i, %bb.eg
  %.pre-phi.i.i.i = phi i64 [ %.pre.i.i.i, %_ZNK10polynomial8monomial8index_ofEj.exit._ZNK10polynomial8monomial8index_ofEj.exit.thread6_crit_edge.i.i.i ], [ %i.abp, %bb.eg ]
  %i.acx = getelementptr inbounds nuw [8 x i8], ptr %i.abj, i64 %.pre-phi.i.i.i
  %i.acy = getelementptr inbounds nuw i8, ptr %i.acx, i64 24
  %i.acz = load i32, ptr %i.acy, align 4, !tbaa !74
  %i.ada = call i32 @llvm.umax.i32(i32 %i.acz, i32 %.02029.i.i)
  br label %_ZNK10polynomial8monomial9degree_ofEj.exit.i.i

_ZNK10polynomial8monomial9degree_ofEj.exit.i.i:   ; preds = %bb.el, %.preheader.i.i.i.i, %.preheader.i.i.i.i.1, %.preheader.i.i.i.i.2, %.preheader.i.i.i.i.3, %.preheader.i.i.i.i.4, %.lr.ph941.5, %.preheader.i.i.i.i.preheader, %_ZNK10polynomial8monomial8index_ofEj.exit.thread6.i.i.i, %_ZNK10polynomial8monomial8index_ofEj.exit.i.i.i, %.preheader.i.i
  %.0.i.i.i376 = phi i32 [ %i.ada, %_ZNK10polynomial8monomial8index_ofEj.exit.thread6.i.i.i ], [ %.02029.i.i, %_ZNK10polynomial8monomial8index_ofEj.exit.i.i.i ], [ %.02029.i.i, %.preheader.i.i ], [ %.02029.i.i, %.preheader.i.i.i.i.preheader ], [ %.02029.i.i, %.preheader.i.i.i.i ], [ %.02029.i.i, %.lr.ph941.5 ], [ %.02029.i.i, %.preheader.i.i.i.i.4 ], [ %.02029.i.i, %.preheader.i.i.i.i.3 ], [ %.02029.i.i, %.preheader.i.i.i.i.2 ], [ %.02029.i.i, %.preheader.i.i.i.i.1 ], [ %.02029.i.i, %bb.el ] ; 2 uses
  %indvars.iv.next.i.i = add nuw nsw i64 %indvars.iv.i.i, 1 ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %indvars.iv.next.i.i, %wide.trip.count.i.i
  br i1 %exitcond.not.i.i, label %_ZN10polynomial7manager6degreeEPKNS_10polynomialEj.exit.i, label %.preheader.i.i, !llvm.loop !7

_ZN10polynomial7manager6degreeEPKNS_10polynomialEj.exit.i: ; preds = %_ZNK10polynomial8monomial9degree_ofEj.exit.i.i, %bb.ef, %bb.ed, %._crit_edge
  %.122.i.i = phi i32 [ 0, %._crit_edge ], [ 0, %bb.ed ], [ %i.abh, %bb.ef ], [ %.0.i.i.i376, %_ZNK10polynomial8monomial9degree_ofEj.exit.i.i ]
  %i.adb = invoke noundef ptr @_ZN10polynomial7manager3imp5coeffEPKNS_10polynomialEjj(ptr noundef nonnull align 8 dereferenceable(824) %0, ptr noundef %i.aap, i32 noundef %3, i32 noundef %.122.i.i)
          to label %_ZN10polynomial7manager3imp2lcEPKNS_10polynomialEj.exit unwind label %bb.em ; 6 uses

bb.em:                                            ; preds = %bb.fk, %bb.ez, %bb.ev, %_ZN10polynomial7manager6degreeEPKNS_10polynomialEj.exit.i, %bb.ec, %bb.dy, %bb.fa, %_ZN7obj_refIN10polynomial10polynomialENS0_7managerEEaSERKS3_.exit368
  %i.adc = landingpad { ptr, i32 }
          cleanup
  br label %.body

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.er
  %i.add = phi ptr [ %i.ade, %bb.er ], [ %i.aaf, %.lr.ph.preheader ] ; 5 uses
  %.051621 = phi i32 [ %i.adm, %bb.er ], [ 0, %.lr.ph.preheader ]
  %i.ade = invoke noundef ptr @_ZN10polynomial7manager3imp9exact_divEPKNS_10polynomialES4_(ptr noundef nonnull align 8 dereferenceable(824) %0, ptr noundef %i.add, ptr noundef %.pre)
          to label %bb.en unwind label %bb.es     ; 6 uses

bb.en:                                            ; preds = %.lr.ph
  %.not.i379 = icmp eq ptr %i.ade, null
  br i1 %.not.i379, label %bb.eo, label %_ZN10polynomial7manager7inc_refEPNS_10polynomialE.exit.i380

_ZN10polynomial7manager7inc_refEPNS_10polynomialE.exit.i380: ; preds = %bb.en
  %i.adf = load i32, ptr %i.ade, align 8, !tbaa !108
  %i.adg = add i32 %i.adf, 1
  store i32 %i.adg, ptr %i.ade, align 8, !tbaa !108
  br label %bb.eo

bb.eo:                                            ; preds = %_ZN10polynomial7manager7inc_refEPNS_10polynomialE.exit.i380, %bb.en
  %.not.i4.i381 = icmp eq ptr %i.add, null
  br i1 %.not.i4.i381, label %bb.er, label %bb.ep

bb.ep:                                            ; preds = %bb.eo
  %i.adh = load ptr, ptr %i.e, align 8, !tbaa !111, !nonnull !99, !align !100
  %i.adi = load ptr, ptr %i.adh, align 8, !tbaa !94
  %i.adj = load i32, ptr %i.add, align 8, !tbaa !108
  %i.adk = add i32 %i.adj, -1                     ; 2 uses
  store i32 %i.adk, ptr %i.add, align 8, !tbaa !108
  %i.adl = icmp eq i32 %i.adk, 0
  br i1 %i.adl, label %bb.eq, label %bb.er

bb.eq:                                            ; preds = %bb.ep
  invoke void @_ZN10polynomial7manager3imp3delEPNS_10polynomialE(ptr noundef nonnull align 8 dereferenceable(824) %i.adi, ptr noundef nonnull %i.add)
          to label %bb.er unwind label %bb.es

bb.er:                                            ; preds = %bb.ep, %bb.eo, %bb.eq
  store ptr %i.ade, ptr %9, align 8, !tbaa !110
  %i.adm = add nuw i32 %.051621, 1                ; 2 uses
  %exitcond.not = icmp eq i32 %i.adm, %i.zj
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !428

bb.es:                                            ; preds = %bb.eq, %.lr.ph
  %i.adn = landingpad { ptr, i32 }
          cleanup
  br label %.body

_ZN10polynomial7manager3imp2lcEPKNS_10polynomialEj.exit: ; preds = %_ZN10polynomial7manager6degreeEPKNS_10polynomialEj.exit.i
  %.not.i385 = icmp eq ptr %i.adb, null
  br i1 %.not.i385, label %bb.et, label %_ZN10polynomial7manager7inc_refEPNS_10polynomialE.exit.i386

_ZN10polynomial7manager7inc_refEPNS_10polynomialE.exit.i386: ; preds = %_ZN10polynomial7manager3imp2lcEPKNS_10polynomialEj.exit
  %i.ado = load i32, ptr %i.adb, align 8, !tbaa !108
  %i.adp = add i32 %i.ado, 1
  store i32 %i.adp, ptr %i.adb, align 8, !tbaa !108
  br label %bb.et

bb.et:                                            ; preds = %_ZN10polynomial7manager7inc_refEPNS_10polynomialE.exit.i386, %_ZN10polynomial7manager3imp2lcEPKNS_10polynomialEj.exit
  %i.adq = load ptr, ptr %18, align 8, !tbaa !110 ; 4 uses
  %.not.i4.i387 = icmp eq ptr %i.adq, null
  br i1 %.not.i4.i387, label %bb.ew, label %bb.eu

bb.eu:                                            ; preds = %bb.et
  %i.adr = load ptr, ptr %i.ty, align 8, !tbaa !111, !nonnull !99, !align !100
  %i.ads = load ptr, ptr %i.adr, align 8, !tbaa !94
  %i.adt = load i32, ptr %i.adq, align 8, !tbaa !108
  %i.adu = add i32 %i.adt, -1                     ; 2 uses
  store i32 %i.adu, ptr %i.adq, align 8, !tbaa !108
  %i.adv = icmp eq i32 %i.adu, 0
  br i1 %i.adv, label %bb.ev, label %bb.ew

bb.ev:                                            ; preds = %bb.eu
  invoke void @_ZN10polynomial7manager3imp3delEPNS_10polynomialE(ptr noundef nonnull align 8 dereferenceable(824) %i.ads, ptr noundef nonnull %i.adq)
          to label %bb.ew unwind label %bb.em

bb.ew:                                            ; preds = %bb.eu, %bb.et, %bb.ev
  store ptr %i.adb, ptr %18, align 8, !tbaa !110
  %i.adw = load ptr, ptr %i.ub, align 8, !tbaa !204 ; 4 uses
  %.not.i391 = icmp eq ptr %i.adw, null
  br i1 %.not.i391, label %bb.ex, label %_ZN10polynomial7manager7inc_refEPNS_10polynomialE.exit.i392

_ZN10polynomial7manager7inc_refEPNS_10polynomialE.exit.i392: ; preds = %bb.ew
  %i.adx = load i32, ptr %i.adw, align 8, !tbaa !108
  %i.ady = add i32 %i.adx, 1
  store i32 %i.ady, ptr %i.adw, align 8, !tbaa !108
  br label %bb.ex

bb.ex:                                            ; preds = %_ZN10polynomial7manager7inc_refEPNS_10polynomialE.exit.i392, %bb.ew
  %i.adz = load ptr, ptr %20, align 8, !tbaa !110 ; 4 uses
  %.not.i4.i393 = icmp eq ptr %i.adz, null
  br i1 %.not.i4.i393, label %bb.fa, label %bb.ey

bb.ey:                                            ; preds = %bb.ex
  %i.aea = load ptr, ptr %i.ua, align 8, !tbaa !111, !nonnull !99, !align !100
  %i.aeb = load ptr, ptr %i.aea, align 8, !tbaa !94
  %i.aec = load i32, ptr %i.adz, align 8, !tbaa !108
  %i.aed = add i32 %i.aec, -1                     ; 2 uses
  store i32 %i.aed, ptr %i.adz, align 8, !tbaa !108
  %i.aee = icmp eq i32 %i.aed, 0
  br i1 %i.aee, label %bb.ez, label %bb.fa

bb.ez:                                            ; preds = %bb.ey
  invoke void @_ZN10polynomial7manager3imp3delEPNS_10polynomialE(ptr noundef nonnull align 8 dereferenceable(824) %i.aeb, ptr noundef nonnull %i.adz)
          to label %bb.fa unwind label %bb.em

bb.fa:                                            ; preds = %bb.ey, %bb.ex, %bb.ez
  store ptr %i.adw, ptr %20, align 8, !tbaa !110
  invoke void @_ZN10polynomial7manager3imp2pwEPKNS_10polynomialEjR7obj_refIS2_S0_E(ptr noundef nonnull align 8 dereferenceable(824) %0, ptr noundef %i.adb, i32 noundef %i.zj, ptr noundef nonnull align 8 dereferenceable(16) %20)
          to label %bb.fb unwind label %bb.em

bb.fb:                                            ; preds = %bb.fa
  %i.aef = icmp ugt i32 %i.zj, 1
  %.pre682 = load ptr, ptr %19, align 8, !tbaa !110 ; 7 uses
  %.pre684 = load ptr, ptr %20, align 8, !tbaa !110 ; 2 uses
  br i1 %i.aef, label %.lr.ph623.preheader, label %.loopexit584

.lr.ph623.preheader:                              ; preds = %bb.fb
  %i.aeg = add i32 %i.zj, -2
  br label %.lr.ph623

.lr.ph623:                                        ; preds = %.lr.ph623.preheader, %bb.fg
  %i.aeh = phi ptr [ %i.aei, %bb.fg ], [ %.pre684, %.lr.ph623.preheader ]
  %.050622 = phi i32 [ %i.aer, %bb.fg ], [ 0, %.lr.ph623.preheader ] ; 2 uses
  %i.aei = invoke noundef ptr @_ZN10polynomial7manager3imp9exact_divEPKNS_10polynomialES4_(ptr noundef nonnull align 8 dereferenceable(824) %0, ptr noundef %i.aeh, ptr noundef %.pre682)
          to label %bb.fc unwind label %bb.fh     ; 6 uses

bb.fc:                                            ; preds = %.lr.ph623
  %.not.i397 = icmp eq ptr %i.aei, null
  br i1 %.not.i397, label %bb.fd, label %_ZN10polynomial7manager7inc_refEPNS_10polynomialE.exit.i398

_ZN10polynomial7manager7inc_refEPNS_10polynomialE.exit.i398: ; preds = %bb.fc
  %i.aej = load i32, ptr %i.aei, align 8, !tbaa !108
  %i.aek = add i32 %i.aej, 1
  store i32 %i.aek, ptr %i.aei, align 8, !tbaa !108
  br label %bb.fd

bb.fd:                                            ; preds = %_ZN10polynomial7manager7inc_refEPNS_10polynomialE.exit.i398, %bb.fc
  %i.ael = load ptr, ptr %20, align 8, !tbaa !110 ; 4 uses
  %.not.i4.i399 = icmp eq ptr %i.ael, null
  br i1 %.not.i4.i399, label %bb.fg, label %bb.fe

bb.fe:                                            ; preds = %bb.fd
  %i.aem = load ptr, ptr %i.ua, align 8, !tbaa !111, !nonnull !99, !align !100
  %i.aen = load ptr, ptr %i.aem, align 8, !tbaa !94
  %i.aeo = load i32, ptr %i.ael, align 8, !tbaa !108
  %i.aep = add i32 %i.aeo, -1                     ; 2 uses
  store i32 %i.aep, ptr %i.ael, align 8, !tbaa !108
  %i.aeq = icmp eq i32 %i.aep, 0
  br i1 %i.aeq, label %bb.ff, label %bb.fg

bb.ff:                                            ; preds = %bb.fe
  invoke void @_ZN10polynomial7manager3imp3delEPNS_10polynomialE(ptr noundef nonnull align 8 dereferenceable(824) %i.aen, ptr noundef nonnull %i.ael)
          to label %bb.fg unwind label %bb.fh

bb.fg:                                            ; preds = %bb.fe, %bb.fd, %bb.ff
  store ptr %i.aei, ptr %20, align 8, !tbaa !110
  %i.aer = add nuw i32 %.050622, 1
  %exitcond671.not = icmp eq i32 %.050622, %i.aeg
  br i1 %exitcond671.not, label %.loopexit584, label %.lr.ph623, !llvm.loop !429

bb.fh:                                            ; preds = %bb.ff, %.lr.ph623
  %i.aes = landingpad { ptr, i32 }
          cleanup
  br label %.body

.loopexit584:                                     ; preds = %bb.fg, %bb.fb
  %21 = phi ptr [ %.pre684, %bb.fb ], [ %i.aei, %bb.fg ] ; 3 uses
  %.not.i403 = icmp eq ptr %.pre682, %21
  br i1 %.not.i403, label %_ZN7obj_refIN10polynomial10polynomialENS0_7managerEEaSERKS3_.exit410, label %bb.fi

bb.fi:                                            ; preds = %.loopexit584
  %.not.i.i404 = icmp eq ptr %.pre682, null
  br i1 %.not.i.i404, label %_ZN7obj_refIN10polynomial10polynomialENS0_7managerEE7dec_refEv.exit.i405, label %bb.fj

bb.fj:                                            ; preds = %bb.fi
  %i.aet = load ptr, ptr %i.tz, align 8, !tbaa !111, !nonnull !99, !align !100
  %i.aeu = load ptr, ptr %i.aet, align 8, !tbaa !94
  %i.aev = load i32, ptr %.pre682, align 8, !tbaa !108
  %i.aew = add i32 %i.aev, -1                     ; 2 uses
  store i32 %i.aew, ptr %.pre682, align 8, !tbaa !108
  %i.aex = icmp eq i32 %i.aew, 0
  br i1 %i.aex, label %bb.fk, label %_ZN7obj_refIN10polynomial10polynomialENS0_7managerEE7dec_refEv.exit.i405

bb.fk:                                            ; preds = %bb.fj
  invoke void @_ZN10polynomial7manager3imp3delEPNS_10polynomialE(ptr noundef nonnull align 8 dereferenceable(824) %i.aeu, ptr noundef nonnull %.pre682)
          to label %.noexc409 unwind label %bb.em

.noexc409:                                        ; preds = %bb.fk
  %.pr.pre.i408 = load ptr, ptr %20, align 8, !tbaa !110
  br label %_ZN7obj_refIN10polynomial10polynomialENS0_7managerEE7dec_refEv.exit.i405

_ZN7obj_refIN10polynomial10polynomialENS0_7managerEE7dec_refEv.exit.i405: ; preds = %.noexc409, %bb.fj, %bb.fi
  %i.aey = phi ptr [ %21, %bb.fi ], [ %.pr.pre.i408, %.noexc409 ], [ %21, %bb.fj ] ; 5 uses
  store ptr %i.aey, ptr %19, align 8, !tbaa !110
  %.not.i3.i406 = icmp eq ptr %i.aey, null
  br i1 %.not.i3.i406, label %_ZN7obj_refIN10polynomial10polynomialENS0_7managerEEaSERKS3_.exit410, label %_ZN10polynomial7manager7inc_refEPNS_10polynomialE.exit.i.i407

_ZN10polynomial7manager7inc_refEPNS_10polynomialE.exit.i.i407: ; preds = %_ZN7obj_refIN10polynomial10polynomialENS0_7managerEE7dec_refEv.exit.i405
  %i.aez = load i32, ptr %i.aey, align 8, !tbaa !108
  %i.afa = add i32 %i.aez, 1
  store i32 %i.afa, ptr %i.aey, align 8, !tbaa !108
  br label %_ZN7obj_refIN10polynomial10polynomialENS0_7managerEEaSERKS3_.exit410

_ZN7obj_refIN10polynomial10polynomialENS0_7managerEEaSERKS3_.exit410: ; preds = %_ZN10polynomial7manager7inc_refEPNS_10polynomialE.exit.i.i407, %_ZN7obj_refIN10polynomial10polynomialENS0_7managerEE7dec_refEv.exit.i405, %.loopexit584
  %i.afb = phi ptr [ %i.aey, %_ZN10polynomial7manager7inc_refEPNS_10polynomialE.exit.i.i407 ], [ null, %_ZN7obj_refIN10polynomial10polynomialENS0_7managerEE7dec_refEv.exit.i405 ], [ %.pre682, %.loopexit584 ] ; 7 uses
  %i.afc = getelementptr inbounds nuw i8, ptr %i.aao, i64 8
  %i.afd = load i32, ptr %i.afc, align 8, !tbaa !175 ; 3 uses
  %i.afe = icmp eq i32 %i.afd, 0                  ; 2 uses
  br i1 %i.afe, label %_ZN10polynomial7manager6degreeEPKNS_10polynomialEj.exit439.thread, label %bb.fl

bb.fl:                                            ; preds = %_ZN7obj_refIN10polynomial10polynomialENS0_7managerEEaSERKS3_.exit410
  %i.aff = getelementptr inbounds nuw i8, ptr %i.aao, i64 24
  %i.afg = load ptr, ptr %i.aff, align 8, !tbaa !176 ; 2 uses
  %i.afh = load ptr, ptr %i.afg, align 8, !tbaa !177 ; 3 uses
  %i.afi = getelementptr inbounds nuw i8, ptr %i.afh, i64 12
  %i.afj = load i32, ptr %i.afi, align 4, !tbaa !78 ; 2 uses
  %i.afk = icmp eq i32 %i.afj, 0
  br i1 %i.afk, label %_ZN10polynomial7manager6degreeEPKNS_10polynomialEj.exit439.thread, label %bb.fm

bb.fm:                                            ; preds = %bb.fl
  %i.afl = add i32 %i.afj, -1
  %i.afm = getelementptr inbounds nuw i8, ptr %i.afh, i64 20
  %i.afn = zext i32 %i.afl to i64                 ; 2 uses
  %i.afo = getelementptr inbounds nuw [8 x i8], ptr %i.afm, i64 %i.afn
  %i.afp = load i32, ptr %i.afo, align 4, !tbaa !73
  %i.afq = icmp eq i32 %i.afp, %3
  br i1 %i.afq, label %bb.fn, label %.preheader.preheader.i411

.preheader.preheader.i411:                        ; preds = %bb.fm
  %wide.trip.count.i412 = zext i32 %i.afd to i64
  br label %.preheader.i413

bb.fn:                                            ; preds = %bb.fm
  %i.afr = getelementptr inbounds nuw [8 x i8], ptr %i.afh, i64 %i.afn
  %i.afs = getelementptr inbounds nuw i8, ptr %i.afr, i64 24
  %i.aft = load i32, ptr %i.afs, align 4, !tbaa !74
  br label %_ZN10polynomial7manager6degreeEPKNS_10polynomialEj.exit439

.preheader.i413:                                  ; preds = %_ZNK10polynomial8monomial9degree_ofEj.exit.i425, %.preheader.preheader.i411
  %indvars.iv.i414 = phi i64 [ 0, %.preheader.preheader.i411 ], [ %indvars.iv.next.i427, %_ZNK10polynomial8monomial9degree_ofEj.exit.i425 ] ; 2 uses
  %.02029.i415 = phi i32 [ 0, %.preheader.preheader.i411 ], [ %.0.i.i426, %_ZNK10polynomial8monomial9degree_ofEj.exit.i425 ] ; 11 uses
  %i.afu = getelementptr inbounds nuw [8 x i8], ptr %i.afg, i64 %indvars.iv.i414
  %i.afv = load ptr, ptr %i.afu, align 8, !tbaa !177 ; 3 uses
  %i.afw = getelementptr inbounds nuw i8, ptr %i.afv, i64 12
  %i.afx = load i32, ptr %i.afw, align 4, !tbaa !78 ; 3 uses
  %i.afy = icmp eq i32 %i.afx, 0
  br i1 %i.afy, label %_ZNK10polynomial8monomial9degree_ofEj.exit.i425, label %bb.fo

bb.fo:                                            ; preds = %.preheader.i413
  %i.afz = add i32 %i.afx, -1                     ; 3 uses
  %i.aga = getelementptr inbounds nuw i8, ptr %i.afv, i64 20 ; 8 uses
  %i.agb = zext i32 %i.afz to i64                 ; 8 uses
  %i.agc = getelementptr inbounds nuw [8 x i8], ptr %i.aga, i64 %i.agb
  %i.agd = load i32, ptr %i.agc, align 4, !tbaa !73
  %i.age = icmp eq i32 %i.agd, %3
  br i1 %i.age, label %_ZNK10polynomial8monomial8index_ofEj.exit.thread6.i.i423, label %bb.fp

bb.fp:                                            ; preds = %bb.fo
  %i.agf = icmp ult i32 %i.afx, 8
  br i1 %i.agf, label %.preheader.i.i.i433.preheader, label %.preheader43.i.i.i416

.preheader.i.i.i433.preheader:                    ; preds = %bb.fp
  %.not.i.i.i435942 = icmp eq i32 %i.afz, 0
  br i1 %.not.i.i.i435942, label %_ZNK10polynomial8monomial9degree_ofEj.exit.i425, label %.lr.ph944

.preheader.i.i.i433:                              ; preds = %.lr.ph944
  %.not.i.i.i435 = icmp eq i64 %indvars.iv.next.i.i.i436, 0
  br i1 %.not.i.i.i435, label %_ZNK10polynomial8monomial9degree_ofEj.exit.i425, label %.lr.ph944.1

.lr.ph944.1:                                      ; preds = %.preheader.i.i.i433
  %indvars.iv.next.i.i.i436.1 = add nsw i64 %i.agb, -2 ; 3 uses
  %i.agg = getelementptr inbounds nuw [8 x i8], ptr %i.aga, i64 %indvars.iv.next.i.i.i436.1
  %i.agh = load i32, ptr %i.agg, align 4, !tbaa !73
  %i.agi = icmp eq i32 %i.agh, %3
  br i1 %i.agi, label %.thread.loopexit.split.loop.exit.i.i.i437, label %.preheader.i.i.i433.1, !llvm.loop !5

.preheader.i.i.i433.1:                            ; preds = %.lr.ph944.1
  %.not.i.i.i435.1 = icmp eq i64 %indvars.iv.next.i.i.i436.1, 0
  br i1 %.not.i.i.i435.1, label %_ZNK10polynomial8monomial9degree_ofEj.exit.i425, label %.lr.ph944.2

.lr.ph944.2:                                      ; preds = %.preheader.i.i.i433.1
  %indvars.iv.next.i.i.i436.2 = add nsw i64 %i.agb, -3 ; 3 uses
  %i.agj = getelementptr inbounds nuw [8 x i8], ptr %i.aga, i64 %indvars.iv.next.i.i.i436.2
  %i.agk = load i32, ptr %i.agj, align 4, !tbaa !73
  %i.agl = icmp eq i32 %i.agk, %3
  br i1 %i.agl, label %.thread.loopexit.split.loop.exit.i.i.i437, label %.preheader.i.i.i433.2, !llvm.loop !5

.preheader.i.i.i433.2:                            ; preds = %.lr.ph944.2
  %.not.i.i.i435.2 = icmp eq i64 %indvars.iv.next.i.i.i436.2, 0
  br i1 %.not.i.i.i435.2, label %_ZNK10polynomial8monomial9degree_ofEj.exit.i425, label %.lr.ph944.3

.lr.ph944.3:                                      ; preds = %.preheader.i.i.i433.2
  %indvars.iv.next.i.i.i436.3 = add nsw i64 %i.agb, -4 ; 3 uses
  %i.agm = getelementptr inbounds nuw [8 x i8], ptr %i.aga, i64 %indvars.iv.next.i.i.i436.3
  %i.agn = load i32, ptr %i.agm, align 4, !tbaa !73
  %i.ago = icmp eq i32 %i.agn, %3
  br i1 %i.ago, label %.thread.loopexit.split.loop.exit.i.i.i437, label %.preheader.i.i.i433.3, !llvm.loop !5

.preheader.i.i.i433.3:                            ; preds = %.lr.ph944.3
  %.not.i.i.i435.3 = icmp eq i64 %indvars.iv.next.i.i.i436.3, 0
  br i1 %.not.i.i.i435.3, label %_ZNK10polynomial8monomial9degree_ofEj.exit.i425, label %.lr.ph944.4

.lr.ph944.4:                                      ; preds = %.preheader.i.i.i433.3
  %indvars.iv.next.i.i.i436.4 = add nsw i64 %i.agb, -5 ; 3 uses
  %i.agp = getelementptr inbounds nuw [8 x i8], ptr %i.aga, i64 %indvars.iv.next.i.i.i436.4
  %i.agq = load i32, ptr %i.agp, align 4, !tbaa !73
  %i.agr = icmp eq i32 %i.agq, %3
  br i1 %i.agr, label %.thread.loopexit.split.loop.exit.i.i.i437, label %.preheader.i.i.i433.4, !llvm.loop !5

.preheader.i.i.i433.4:                            ; preds = %.lr.ph944.4
  %.not.i.i.i435.4 = icmp eq i64 %indvars.iv.next.i.i.i436.4, 0
  br i1 %.not.i.i.i435.4, label %_ZNK10polynomial8monomial9degree_ofEj.exit.i425, label %.lr.ph944.5

.lr.ph944.5:                                      ; preds = %.preheader.i.i.i433.4
  %indvars.iv.next.i.i.i436.5 = add nsw i64 %i.agb, -6 ; 2 uses
  %i.ags = getelementptr inbounds nuw [8 x i8], ptr %i.aga, i64 %indvars.iv.next.i.i.i436.5
  %i.agt = load i32, ptr %i.ags, align 4, !tbaa !73
  %i.agu = icmp eq i32 %i.agt, %3
  br i1 %i.agu, label %.thread.loopexit.split.loop.exit.i.i.i437, label %_ZNK10polynomial8monomial9degree_ofEj.exit.i425, !llvm.loop !5

.lr.ph944:                                        ; preds = %.preheader.i.i.i433.preheader
  %indvars.iv.next.i.i.i436 = add nsw i64 %i.agb, -1 ; 3 uses
  %i.agv = getelementptr inbounds nuw [8 x i8], ptr %i.aga, i64 %indvars.iv.next.i.i.i436
  %i.agw = load i32, ptr %i.agv, align 4, !tbaa !73
  %i.agx = icmp eq i32 %i.agw, %3
  br i1 %i.agx, label %.thread.loopexit.split.loop.exit.i.i.i437, label %.preheader.i.i.i433, !llvm.loop !5

.preheader43.i.i.i416:                            ; preds = %bb.fp, %bb.ft
  %.026.i.i.i417 = phi i32 [ %.127.i.i.i430, %bb.ft ], [ 0, %bb.fp ] ; 3 uses
  %.0.i.i.i418 = phi i32 [ %.1.i.i.i431, %bb.ft ], [ %i.afz, %bb.fp ] ; 2 uses
  %i.agy = sub nsw i32 %.0.i.i.i418, %.026.i.i.i417
  %i.agz = sdiv i32 %i.agy, 2
  %i.aha = add nsw i32 %i.agz, %.026.i.i.i417     ; 4 uses
  %i.ahb = zext i32 %i.aha to i64
  %i.ahc = getelementptr inbounds nuw [8 x i8], ptr %i.aga, i64 %i.ahb
  %i.ahd = load i32, ptr %i.ahc, align 4, !tbaa !73 ; 2 uses
  %i.ahe = icmp ugt i32 %3, %i.ahd
  br i1 %i.ahe, label %bb.fq, label %bb.fr

bb.fq:                                            ; preds = %.preheader43.i.i.i416
  %i.ahf = add nsw i32 %i.aha, 1
  br label %bb.ft

bb.fr:                                            ; preds = %.preheader43.i.i.i416
  %i.ahg = icmp ult i32 %3, %i.ahd
  br i1 %i.ahg, label %bb.fs, label %_ZNK10polynomial8monomial8index_ofEj.exit.i.i419

bb.fs:                                            ; preds = %bb.fr
  %i.ahh = add nsw i32 %i.aha, -1
  br label %bb.ft

bb.ft:                                            ; preds = %bb.fs, %bb.fq
  %.127.i.i.i430 = phi i32 [ %i.ahf, %bb.fq ], [ %.026.i.i.i417, %bb.fs ] ; 2 uses
  %.1.i.i.i431 = phi i32 [ %.0.i.i.i418, %bb.fq ], [ %i.ahh, %bb.fs ] ; 2 uses
  %.not42.i.i.i432 = icmp sgt i32 %.127.i.i.i430, %.1.i.i.i431
  br i1 %.not42.i.i.i432, label %_ZNK10polynomial8monomial9degree_ofEj.exit.i425, label %.preheader43.i.i.i416, !llvm.loop !6

.thread.loopexit.split.loop.exit.i.i.i437:        ; preds = %.lr.ph944.5, %.lr.ph944.4, %.lr.ph944.3, %.lr.ph944.2, %.lr.ph944.1, %.lr.ph944
  %indvars.iv.next.i.i.i436.lcssa = phi i64 [ %indvars.iv.next.i.i.i436, %.lr.ph944 ], [ %indvars.iv.next.i.i.i436.1, %.lr.ph944.1 ], [ %indvars.iv.next.i.i.i436.2, %.lr.ph944.2 ], [ %indvars.iv.next.i.i.i436.3, %.lr.ph944.3 ], [ %indvars.iv.next.i.i.i436.4, %.lr.ph944.4 ], [ %indvars.iv.next.i.i.i436.5, %.lr.ph944.5 ]
  %indvars.le.i.i.i438 = trunc nuw i64 %indvars.iv.next.i.i.i436.lcssa to i32
  br label %_ZNK10polynomial8monomial8index_ofEj.exit.i.i419

_ZNK10polynomial8monomial8index_ofEj.exit.i.i419: ; preds = %bb.fr, %.thread.loopexit.split.loop.exit.i.i.i437
  %.4.i.i.i420 = phi i32 [ %indvars.le.i.i.i438, %.thread.loopexit.split.loop.exit.i.i.i437 ], [ %i.aha, %bb.fr ] ; 2 uses
  %i.ahi = icmp eq i32 %.4.i.i.i420, -1
  br i1 %i.ahi, label %_ZNK10polynomial8monomial9degree_ofEj.exit.i425, label %_ZNK10polynomial8monomial8index_ofEj.exit._ZNK10polynomial8monomial8index_ofEj.exit.thread6_crit_edge.i.i421

_ZNK10polynomial8monomial8index_ofEj.exit._ZNK10polynomial8monomial8index_ofEj.exit.thread6_crit_edge.i.i421: ; preds = %_ZNK10polynomial8monomial8index_ofEj.exit.i.i419
  %.pre.i.i422 = zext i32 %.4.i.i.i420 to i64
  br label %_ZNK10polynomial8monomial8index_ofEj.exit.thread6.i.i423

_ZNK10polynomial8monomial8index_ofEj.exit.thread6.i.i423: ; preds = %_ZNK10polynomial8monomial8index_ofEj.exit._ZNK10polynomial8monomial8index_ofEj.exit.thread6_crit_edge.i.i421, %bb.fo
  %.pre-phi.i.i424 = phi i64 [ %.pre.i.i422, %_ZNK10polynomial8monomial8index_ofEj.exit._ZNK10polynomial8monomial8index_ofEj.exit.thread6_crit_edge.i.i421 ], [ %i.agb, %bb.fo ]
  %i.ahj = getelementptr inbounds nuw [8 x i8], ptr %i.afv, i64 %.pre-phi.i.i424
  %i.ahk = getelementptr inbounds nuw i8, ptr %i.ahj, i64 24
  %i.ahl = load i32, ptr %i.ahk, align 4, !tbaa !74
  %i.ahm = call i32 @llvm.umax.i32(i32 %i.ahl, i32 %.02029.i415)
  br label %_ZNK10polynomial8monomial9degree_ofEj.exit.i425

_ZNK10polynomial8monomial9degree_ofEj.exit.i425:  ; preds = %bb.ft, %.preheader.i.i.i433, %.preheader.i.i.i433.1, %.preheader.i.i.i433.2, %.preheader.i.i.i433.3, %.preheader.i.i.i433.4, %.lr.ph944.5, %.preheader.i.i.i433.preheader, %_ZNK10polynomial8monomial8index_ofEj.exit.thread6.i.i423, %_ZNK10polynomial8monomial8index_ofEj.exit.i.i419, %.preheader.i413
  %.0.i.i426 = phi i32 [ %i.ahm, %_ZNK10polynomial8monomial8index_ofEj.exit.thread6.i.i423 ], [ %.02029.i415, %_ZNK10polynomial8monomial8index_ofEj.exit.i.i419 ], [ %.02029.i415, %.preheader.i413 ], [ %.02029.i415, %.preheader.i.i.i433.preheader ], [ %.02029.i415, %.preheader.i.i.i433 ], [ %.02029.i415, %.lr.ph944.5 ], [ %.02029.i415, %.preheader.i.i.i433.4 ], [ %.02029.i415, %.preheader.i.i.i433.3 ], [ %.02029.i415, %.preheader.i.i.i433.2 ], [ %.02029.i415, %.preheader.i.i.i433.1 ], [ %.02029.i415, %bb.ft ] ; 2 uses
  %indvars.iv.next.i427 = add nuw nsw i64 %indvars.iv.i414, 1 ; 2 uses
  %exitcond.not.i428 = icmp eq i64 %indvars.iv.next.i427, %wide.trip.count.i412
  br i1 %exitcond.not.i428, label %_ZN10polynomial7manager6degreeEPKNS_10polynomialEj.exit439, label %.preheader.i413, !llvm.loop !7

_ZN10polynomial7manager6degreeEPKNS_10polynomialEj.exit439: ; preds = %_ZNK10polynomial8monomial9degree_ofEj.exit.i425, %bb.fn
  %.122.i429 = phi i32 [ %i.aft, %bb.fn ], [ %.0.i.i426, %_ZNK10polynomial8monomial9degree_ofEj.exit.i425 ]
  %.not72 = icmp eq i32 %.122.i429, 0
  br i1 %.not72, label %_ZN10polynomial7manager6degreeEPKNS_10polynomialEj.exit439.thread, label %.critedge

_ZN10polynomial7manager6degreeEPKNS_10polynomialEj.exit439.thread: ; preds = %bb.fl, %_ZN7obj_refIN10polynomial10polynomialENS0_7managerEEaSERKS3_.exit410, %_ZN10polynomial7manager6degreeEPKNS_10polynomialEj.exit439
  %i.ahn = getelementptr inbounds nuw i8, ptr %i.aap, i64 8
  %i.aho = load i32, ptr %i.ahn, align 8, !tbaa !175 ; 2 uses
  %i.ahp = icmp eq i32 %i.aho, 0
  br i1 %i.ahp, label %_ZN10polynomial7manager6degreeEPKNS_10polynomialEj.exit468, label %bb.fu

bb.fu:                                            ; preds = %_ZN10polynomial7manager6degreeEPKNS_10polynomialEj.exit439.thread
  %i.ahq = getelementptr inbounds nuw i8, ptr %i.aap, i64 24
  %i.ahr = load ptr, ptr %i.ahq, align 8, !tbaa !176 ; 2 uses
  %i.ahs = load ptr, ptr %i.ahr, align 8, !tbaa !177 ; 3 uses
  %i.aht = getelementptr inbounds nuw i8, ptr %i.ahs, i64 12
  %i.ahu = load i32, ptr %i.aht, align 4, !tbaa !78 ; 2 uses
  %i.ahv = icmp eq i32 %i.ahu, 0
  br i1 %i.ahv, label %_ZN10polynomial7manager6degreeEPKNS_10polynomialEj.exit468, label %bb.fv

end_hunk_1
begin_hunk_2_@_ZN10polynomial7manager3imp9resultantEPKNS_10polynomialES4_jR7obj_refIS2_S0_E:bb.a
  %i.akj = icmp eq i32 %i.aki, %3
  br i1 %i.akj, label %bb.gf, label %.preheader.preheader.i.i469

.preheader.preheader.i.i469:                      ; preds = %bb.ge
  %wide.trip.count.i.i470 = zext i32 %i.afd to i64
  br label %.preheader.i.i471

bb.gf:                                            ; preds = %bb.ge
  %i.akk = getelementptr inbounds nuw [8 x i8], ptr %i.aka, i64 %i.akg
  %i.akl = getelementptr inbounds nuw i8, ptr %i.akk, i64 24
  %i.akm = load i32, ptr %i.akl, align 4, !tbaa !74
  br label %_ZN10polynomial7manager6degreeEPKNS_10polynomialEj.exit.i487

.preheader.i.i471:                                ; preds = %_ZNK10polynomial8monomial9degree_ofEj.exit.i.i483, %.preheader.preheader.i.i469
  %indvars.iv.i.i472 = phi i64 [ 0, %.preheader.preheader.i.i469 ], [ %indvars.iv.next.i.i485, %_ZNK10polynomial8monomial9degree_ofEj.exit.i.i483 ] ; 2 uses
  %.02029.i.i473 = phi i32 [ 0, %.preheader.preheader.i.i469 ], [ %.0.i.i.i484, %_ZNK10polynomial8monomial9degree_ofEj.exit.i.i483 ] ; 11 uses
  %i.akn = getelementptr inbounds nuw [8 x i8], ptr %i.ajz, i64 %indvars.iv.i.i472
  %i.ako = load ptr, ptr %i.akn, align 8, !tbaa !177 ; 3 uses
  %i.akp = getelementptr inbounds nuw i8, ptr %i.ako, i64 12
  %i.akq = load i32, ptr %i.akp, align 4, !tbaa !78 ; 3 uses
  %i.akr = icmp eq i32 %i.akq, 0
  br i1 %i.akr, label %_ZNK10polynomial8monomial9degree_ofEj.exit.i.i483, label %bb.gg

bb.gg:                                            ; preds = %.preheader.i.i471
  %i.aks = add i32 %i.akq, -1                     ; 3 uses
  %i.akt = getelementptr inbounds nuw i8, ptr %i.ako, i64 20 ; 8 uses
  %i.aku = zext i32 %i.aks to i64                 ; 8 uses
  %i.akv = getelementptr inbounds nuw [8 x i8], ptr %i.akt, i64 %i.aku
  %i.akw = load i32, ptr %i.akv, align 4, !tbaa !73
  %i.akx = icmp eq i32 %i.akw, %3
  br i1 %i.akx, label %_ZNK10polynomial8monomial8index_ofEj.exit.thread6.i.i.i481, label %bb.gh

bb.gh:                                            ; preds = %bb.gg
  %i.aky = icmp ult i32 %i.akq, 8
  br i1 %i.aky, label %.preheader.i.i.i.i492.preheader, label %.preheader43.i.i.i.i474

.preheader.i.i.i.i492.preheader:                  ; preds = %bb.gh
  %.not.i.i.i.i494948 = icmp eq i32 %i.aks, 0
  br i1 %.not.i.i.i.i494948, label %_ZNK10polynomial8monomial9degree_ofEj.exit.i.i483, label %.lr.ph950

.preheader.i.i.i.i492:                            ; preds = %.lr.ph950
  %.not.i.i.i.i494 = icmp eq i64 %indvars.iv.next.i.i.i.i495, 0
  br i1 %.not.i.i.i.i494, label %_ZNK10polynomial8monomial9degree_ofEj.exit.i.i483, label %.lr.ph950.1

.lr.ph950.1:                                      ; preds = %.preheader.i.i.i.i492
  %indvars.iv.next.i.i.i.i495.1 = add nsw i64 %i.aku, -2 ; 3 uses
  %i.akz = getelementptr inbounds nuw [8 x i8], ptr %i.akt, i64 %indvars.iv.next.i.i.i.i495.1
  %i.ala = load i32, ptr %i.akz, align 4, !tbaa !73
  %i.alb = icmp eq i32 %i.ala, %3
  br i1 %i.alb, label %.thread.loopexit.split.loop.exit.i.i.i.i496, label %.preheader.i.i.i.i492.1, !llvm.loop !5

.preheader.i.i.i.i492.1:                          ; preds = %.lr.ph950.1
  %.not.i.i.i.i494.1 = icmp eq i64 %indvars.iv.next.i.i.i.i495.1, 0
  br i1 %.not.i.i.i.i494.1, label %_ZNK10polynomial8monomial9degree_ofEj.exit.i.i483, label %.lr.ph950.2

.lr.ph950.2:                                      ; preds = %.preheader.i.i.i.i492.1
  %indvars.iv.next.i.i.i.i495.2 = add nsw i64 %i.aku, -3 ; 3 uses
  %i.alc = getelementptr inbounds nuw [8 x i8], ptr %i.akt, i64 %indvars.iv.next.i.i.i.i495.2
  %i.ald = load i32, ptr %i.alc, align 4, !tbaa !73
  %i.ale = icmp eq i32 %i.ald, %3
  br i1 %i.ale, label %.thread.loopexit.split.loop.exit.i.i.i.i496, label %.preheader.i.i.i.i492.2, !llvm.loop !5

.preheader.i.i.i.i492.2:                          ; preds = %.lr.ph950.2
  %.not.i.i.i.i494.2 = icmp eq i64 %indvars.iv.next.i.i.i.i495.2, 0
  br i1 %.not.i.i.i.i494.2, label %_ZNK10polynomial8monomial9degree_ofEj.exit.i.i483, label %.lr.ph950.3

.lr.ph950.3:                                      ; preds = %.preheader.i.i.i.i492.2
  %indvars.iv.next.i.i.i.i495.3 = add nsw i64 %i.aku, -4 ; 3 uses
  %i.alf = getelementptr inbounds nuw [8 x i8], ptr %i.akt, i64 %indvars.iv.next.i.i.i.i495.3
  %i.alg = load i32, ptr %i.alf, align 4, !tbaa !73
  %i.alh = icmp eq i32 %i.alg, %3
  br i1 %i.alh, label %.thread.loopexit.split.loop.exit.i.i.i.i496, label %.preheader.i.i.i.i492.3, !llvm.loop !5

.preheader.i.i.i.i492.3:                          ; preds = %.lr.ph950.3
  %.not.i.i.i.i494.3 = icmp eq i64 %indvars.iv.next.i.i.i.i495.3, 0
  br i1 %.not.i.i.i.i494.3, label %_ZNK10polynomial8monomial9degree_ofEj.exit.i.i483, label %.lr.ph950.4

.lr.ph950.4:                                      ; preds = %.preheader.i.i.i.i492.3
  %indvars.iv.next.i.i.i.i495.4 = add nsw i64 %i.aku, -5 ; 3 uses
  %i.ali = getelementptr inbounds nuw [8 x i8], ptr %i.akt, i64 %indvars.iv.next.i.i.i.i495.4
  %i.alj = load i32, ptr %i.ali, align 4, !tbaa !73
  %i.alk = icmp eq i32 %i.alj, %3
  br i1 %i.alk, label %.thread.loopexit.split.loop.exit.i.i.i.i496, label %.preheader.i.i.i.i492.4, !llvm.loop !5

.preheader.i.i.i.i492.4:                          ; preds = %.lr.ph950.4
  %.not.i.i.i.i494.4 = icmp eq i64 %indvars.iv.next.i.i.i.i495.4, 0
  br i1 %.not.i.i.i.i494.4, label %_ZNK10polynomial8monomial9degree_ofEj.exit.i.i483, label %.lr.ph950.5

.lr.ph950.5:                                      ; preds = %.preheader.i.i.i.i492.4
  %indvars.iv.next.i.i.i.i495.5 = add nsw i64 %i.aku, -6 ; 2 uses
  %i.all = getelementptr inbounds nuw [8 x i8], ptr %i.akt, i64 %indvars.iv.next.i.i.i.i495.5
  %i.alm = load i32, ptr %i.all, align 4, !tbaa !73
  %i.aln = icmp eq i32 %i.alm, %3
  br i1 %i.aln, label %.thread.loopexit.split.loop.exit.i.i.i.i496, label %_ZNK10polynomial8monomial9degree_ofEj.exit.i.i483, !llvm.loop !5

.lr.ph950:                                        ; preds = %.preheader.i.i.i.i492.preheader
  %indvars.iv.next.i.i.i.i495 = add nsw i64 %i.aku, -1 ; 3 uses
  %i.alo = getelementptr inbounds nuw [8 x i8], ptr %i.akt, i64 %indvars.iv.next.i.i.i.i495
  %i.alp = load i32, ptr %i.alo, align 4, !tbaa !73
  %i.alq = icmp eq i32 %i.alp, %3
  br i1 %i.alq, label %.thread.loopexit.split.loop.exit.i.i.i.i496, label %.preheader.i.i.i.i492, !llvm.loop !5

.preheader43.i.i.i.i474:                          ; preds = %bb.gh, %bb.gl
  %.026.i.i.i.i475 = phi i32 [ %.127.i.i.i.i489, %bb.gl ], [ 0, %bb.gh ] ; 3 uses
  %.0.i.i.i.i476 = phi i32 [ %.1.i.i.i.i490, %bb.gl ], [ %i.aks, %bb.gh ] ; 2 uses
  %i.alr = sub nsw i32 %.0.i.i.i.i476, %.026.i.i.i.i475
  %i.als = sdiv i32 %i.alr, 2
  %i.alt = add nsw i32 %i.als, %.026.i.i.i.i475   ; 4 uses
  %i.alu = zext i32 %i.alt to i64
  %i.alv = getelementptr inbounds nuw [8 x i8], ptr %i.akt, i64 %i.alu
  %i.alw = load i32, ptr %i.alv, align 4, !tbaa !73 ; 2 uses
  %i.alx = icmp ugt i32 %3, %i.alw
  br i1 %i.alx, label %bb.gi, label %bb.gj

bb.gi:                                            ; preds = %.preheader43.i.i.i.i474
  %i.aly = add nsw i32 %i.alt, 1
  br label %bb.gl

bb.gj:                                            ; preds = %.preheader43.i.i.i.i474
  %i.alz = icmp ult i32 %3, %i.alw
  br i1 %i.alz, label %bb.gk, label %_ZNK10polynomial8monomial8index_ofEj.exit.i.i.i477

bb.gk:                                            ; preds = %bb.gj
  %i.ama = add nsw i32 %i.alt, -1
  br label %bb.gl

bb.gl:                                            ; preds = %bb.gk, %bb.gi
  %.127.i.i.i.i489 = phi i32 [ %i.aly, %bb.gi ], [ %.026.i.i.i.i475, %bb.gk ] ; 2 uses
  %.1.i.i.i.i490 = phi i32 [ %.0.i.i.i.i476, %bb.gi ], [ %i.ama, %bb.gk ] ; 2 uses
  %.not42.i.i.i.i491 = icmp sgt i32 %.127.i.i.i.i489, %.1.i.i.i.i490
  br i1 %.not42.i.i.i.i491, label %_ZNK10polynomial8monomial9degree_ofEj.exit.i.i483, label %.preheader43.i.i.i.i474, !llvm.loop !6

.thread.loopexit.split.loop.exit.i.i.i.i496:      ; preds = %.lr.ph950.5, %.lr.ph950.4, %.lr.ph950.3, %.lr.ph950.2, %.lr.ph950.1, %.lr.ph950
  %indvars.iv.next.i.i.i.i495.lcssa = phi i64 [ %indvars.iv.next.i.i.i.i495, %.lr.ph950 ], [ %indvars.iv.next.i.i.i.i495.1, %.lr.ph950.1 ], [ %indvars.iv.next.i.i.i.i495.2, %.lr.ph950.2 ], [ %indvars.iv.next.i.i.i.i495.3, %.lr.ph950.3 ], [ %indvars.iv.next.i.i.i.i495.4, %.lr.ph950.4 ], [ %indvars.iv.next.i.i.i.i495.5, %.lr.ph950.5 ]
  %indvars.le.i.i.i.i497 = trunc nuw i64 %indvars.iv.next.i.i.i.i495.lcssa to i32
  br label %_ZNK10polynomial8monomial8index_ofEj.exit.i.i.i477

_ZNK10polynomial8monomial8index_ofEj.exit.i.i.i477: ; preds = %bb.gj, %.thread.loopexit.split.loop.exit.i.i.i.i496
  %.4.i.i.i.i478 = phi i32 [ %indvars.le.i.i.i.i497, %.thread.loopexit.split.loop.exit.i.i.i.i496 ], [ %i.alt, %bb.gj ] ; 2 uses
  %i.amb = icmp eq i32 %.4.i.i.i.i478, -1
  br i1 %i.amb, label %_ZNK10polynomial8monomial9degree_ofEj.exit.i.i483, label %_ZNK10polynomial8monomial8index_ofEj.exit._ZNK10polynomial8monomial8index_ofEj.exit.thread6_crit_edge.i.i.i479

_ZNK10polynomial8monomial8index_ofEj.exit._ZNK10polynomial8monomial8index_ofEj.exit.thread6_crit_edge.i.i.i479: ; preds = %_ZNK10polynomial8monomial8index_ofEj.exit.i.i.i477
  %.pre.i.i.i480 = zext i32 %.4.i.i.i.i478 to i64
  br label %_ZNK10polynomial8monomial8index_ofEj.exit.thread6.i.i.i481

_ZNK10polynomial8monomial8index_ofEj.exit.thread6.i.i.i481: ; preds = %_ZNK10polynomial8monomial8index_ofEj.exit._ZNK10polynomial8monomial8index_ofEj.exit.thread6_crit_edge.i.i.i479, %bb.gg
  %.pre-phi.i.i.i482 = phi i64 [ %.pre.i.i.i480, %_ZNK10polynomial8monomial8index_ofEj.exit._ZNK10polynomial8monomial8index_ofEj.exit.thread6_crit_edge.i.i.i479 ], [ %i.aku, %bb.gg ]
  %i.amc = getelementptr inbounds nuw [8 x i8], ptr %i.ako, i64 %.pre-phi.i.i.i482
  %i.amd = getelementptr inbounds nuw i8, ptr %i.amc, i64 24
  %i.ame = load i32, ptr %i.amd, align 4, !tbaa !74
  %i.amf = call i32 @llvm.umax.i32(i32 %i.ame, i32 %.02029.i.i473)
  br label %_ZNK10polynomial8monomial9degree_ofEj.exit.i.i483

_ZNK10polynomial8monomial9degree_ofEj.exit.i.i483: ; preds = %bb.gl, %.preheader.i.i.i.i492, %.preheader.i.i.i.i492.1, %.preheader.i.i.i.i492.2, %.preheader.i.i.i.i492.3, %.preheader.i.i.i.i492.4, %.lr.ph950.5, %.preheader.i.i.i.i492.preheader, %_ZNK10polynomial8monomial8index_ofEj.exit.thread6.i.i.i481, %_ZNK10polynomial8monomial8index_ofEj.exit.i.i.i477, %.preheader.i.i471
  %.0.i.i.i484 = phi i32 [ %i.amf, %_ZNK10polynomial8monomial8index_ofEj.exit.thread6.i.i.i481 ], [ %.02029.i.i473, %_ZNK10polynomial8monomial8index_ofEj.exit.i.i.i477 ], [ %.02029.i.i473, %.preheader.i.i471 ], [ %.02029.i.i473, %.preheader.i.i.i.i492.preheader ], [ %.02029.i.i473, %.preheader.i.i.i.i492 ], [ %.02029.i.i473, %.lr.ph950.5 ], [ %.02029.i.i473, %.preheader.i.i.i.i492.4 ], [ %.02029.i.i473, %.preheader.i.i.i.i492.3 ], [ %.02029.i.i473, %.preheader.i.i.i.i492.2 ], [ %.02029.i.i473, %.preheader.i.i.i.i492.1 ], [ %.02029.i.i473, %bb.gl ] ; 2 uses
  %indvars.iv.next.i.i485 = add nuw nsw i64 %indvars.iv.i.i472, 1 ; 2 uses
  %exitcond.not.i.i486 = icmp eq i64 %indvars.iv.next.i.i485, %wide.trip.count.i.i470
  br i1 %exitcond.not.i.i486, label %_ZN10polynomial7manager6degreeEPKNS_10polynomialEj.exit.i487, label %.preheader.i.i471, !llvm.loop !7

_ZN10polynomial7manager6degreeEPKNS_10polynomialEj.exit.i487: ; preds = %_ZNK10polynomial8monomial9degree_ofEj.exit.i.i483, %bb.gf, %bb.gd, %_ZN10polynomial7manager6degreeEPKNS_10polynomialEj.exit468
  %.122.i.i488 = phi i32 [ 0, %_ZN10polynomial7manager6degreeEPKNS_10polynomialEj.exit468 ], [ 0, %bb.gd ], [ %i.akm, %bb.gf ], [ %.0.i.i.i484, %_ZNK10polynomial8monomial9degree_ofEj.exit.i.i483 ]
  %i.amg = invoke noundef ptr @_ZN10polynomial7manager3imp5coeffEPKNS_10polynomialEjj(ptr noundef nonnull align 8 dereferenceable(824) %0, ptr noundef %i.aao, i32 noundef %3, i32 noundef %.122.i.i488)
          to label %_ZN10polynomial7manager3imp2lcEPKNS_10polynomialEj.exit499 unwind label %bb.gr ; 5 uses

_ZN10polynomial7manager3imp2lcEPKNS_10polynomialEj.exit499: ; preds = %_ZN10polynomial7manager6degreeEPKNS_10polynomialEj.exit.i487
  %.not.i500 = icmp eq ptr %i.amg, null
  br i1 %.not.i500, label %bb.gm, label %_ZN10polynomial7manager7inc_refEPNS_10polynomialE.exit.i501

_ZN10polynomial7manager7inc_refEPNS_10polynomialE.exit.i501: ; preds = %_ZN10polynomial7manager3imp2lcEPKNS_10polynomialEj.exit499
  %i.amh = load i32, ptr %i.amg, align 8, !tbaa !108
  %i.ami = add i32 %i.amh, 1
  store i32 %i.ami, ptr %i.amg, align 8, !tbaa !108
  br label %bb.gm

bb.gm:                                            ; preds = %_ZN10polynomial7manager7inc_refEPNS_10polynomialE.exit.i501, %_ZN10polynomial7manager3imp2lcEPKNS_10polynomialEj.exit499
  %i.amj = load ptr, ptr %20, align 8, !tbaa !110 ; 4 uses
  %.not.i4.i502 = icmp eq ptr %i.amj, null
  br i1 %.not.i4.i502, label %bb.gp, label %bb.gn

bb.gn:                                            ; preds = %bb.gm
  %i.amk = load ptr, ptr %i.ua, align 8, !tbaa !111, !nonnull !99, !align !100
  %i.aml = load ptr, ptr %i.amk, align 8, !tbaa !94
  %i.amm = load i32, ptr %i.amj, align 8, !tbaa !108
  %i.amn = add i32 %i.amm, -1                     ; 2 uses
  store i32 %i.amn, ptr %i.amj, align 8, !tbaa !108
  %i.amo = icmp eq i32 %i.amn, 0
  br i1 %i.amo, label %bb.go, label %bb.gp

bb.go:                                            ; preds = %bb.gn
  invoke void @_ZN10polynomial7manager3imp3delEPNS_10polynomialE(ptr noundef nonnull align 8 dereferenceable(824) %i.aml, ptr noundef nonnull %i.amj)
          to label %bb.gp unwind label %bb.gr

bb.gp:                                            ; preds = %bb.gn, %bb.gm, %bb.go
  store ptr %i.amg, ptr %20, align 8, !tbaa !110
  invoke void @_ZN10polynomial7manager3imp2pwEPKNS_10polynomialEjR7obj_refIS2_S0_E(ptr noundef nonnull align 8 dereferenceable(824) %0, ptr noundef %i.amg, i32 noundef %.122.i458, ptr noundef nonnull align 8 dereferenceable(16) %20)
          to label %bb.gq unwind label %bb.gr

bb.gq:                                            ; preds = %bb.gp
  %i.amp = icmp ugt i32 %.122.i458, 1
  %.pre687 = load ptr, ptr %20, align 8, !tbaa !110 ; 2 uses
  br i1 %i.amp, label %.lr.ph625.preheader, label %.loopexit

.lr.ph625.preheader:                              ; preds = %bb.gq
  %i.amq = add i32 %.122.i458, -2
  br label %.lr.ph625

bb.gr:                                            ; preds = %bb.hk, %bb.he, %_ZN7obj_refIN10polynomial10polynomialENS0_7managerEEaSERKS3_.exit519, %bb.ha, %bb.go, %_ZN10polynomial7manager6degreeEPKNS_10polynomialEj.exit.i487, %bb.hg, %bb.gp
  %i.amr = landingpad { ptr, i32 }
          cleanup
  br label %.body

.lr.ph625:                                        ; preds = %.lr.ph625.preheader, %bb.gw
  %i.ams = phi ptr [ %i.amt, %bb.gw ], [ %.pre687, %.lr.ph625.preheader ]
  %.0624 = phi i32 [ %i.anc, %bb.gw ], [ 0, %.lr.ph625.preheader ] ; 2 uses
  %i.amt = invoke noundef ptr @_ZN10polynomial7manager3imp9exact_divEPKNS_10polynomialES4_(ptr noundef nonnull align 8 dereferenceable(824) %0, ptr noundef %i.ams, ptr noundef %i.afb)
          to label %bb.gs unwind label %bb.gx     ; 6 uses

bb.gs:                                            ; preds = %.lr.ph625
  %.not.i506 = icmp eq ptr %i.amt, null
  br i1 %.not.i506, label %bb.gt, label %_ZN10polynomial7manager7inc_refEPNS_10polynomialE.exit.i507

_ZN10polynomial7manager7inc_refEPNS_10polynomialE.exit.i507: ; preds = %bb.gs
  %i.amu = load i32, ptr %i.amt, align 8, !tbaa !108
  %i.amv = add i32 %i.amu, 1
  store i32 %i.amv, ptr %i.amt, align 8, !tbaa !108
  br label %bb.gt

bb.gt:                                            ; preds = %_ZN10polynomial7manager7inc_refEPNS_10polynomialE.exit.i507, %bb.gs
  %i.amw = load ptr, ptr %20, align 8, !tbaa !110 ; 4 uses
  %.not.i4.i508 = icmp eq ptr %i.amw, null
  br i1 %.not.i4.i508, label %bb.gw, label %bb.gu

bb.gu:                                            ; preds = %bb.gt
  %i.amx = load ptr, ptr %i.ua, align 8, !tbaa !111, !nonnull !99, !align !100
  %i.amy = load ptr, ptr %i.amx, align 8, !tbaa !94
  %i.amz = load i32, ptr %i.amw, align 8, !tbaa !108
  %i.ana = add i32 %i.amz, -1                     ; 2 uses
  store i32 %i.ana, ptr %i.amw, align 8, !tbaa !108
  %i.anb = icmp eq i32 %i.ana, 0
  br i1 %i.anb, label %bb.gv, label %bb.gw

bb.gv:                                            ; preds = %bb.gu
  invoke void @_ZN10polynomial7manager3imp3delEPNS_10polynomialE(ptr noundef nonnull align 8 dereferenceable(824) %i.amy, ptr noundef nonnull %i.amw)
          to label %bb.gw unwind label %bb.gx

bb.gw:                                            ; preds = %bb.gu, %bb.gt, %bb.gv
  store ptr %i.amt, ptr %20, align 8, !tbaa !110
  %i.anc = add nuw i32 %.0624, 1
  %exitcond672.not = icmp eq i32 %.0624, %i.amq
  br i1 %exitcond672.not, label %.loopexit, label %.lr.ph625, !llvm.loop !430

bb.gx:                                            ; preds = %bb.gv, %.lr.ph625
  %i.and = landingpad { ptr, i32 }
          cleanup
  br label %.body

.loopexit:                                        ; preds = %bb.gw, %bb.gq
  %22 = phi ptr [ %.pre687, %bb.gq ], [ %i.amt, %bb.gw ] ; 3 uses
  %.not.i512 = icmp eq ptr %i.afb, %22
  br i1 %.not.i512, label %_ZN7obj_refIN10polynomial10polynomialENS0_7managerEEaSERKS3_.exit519, label %bb.gy

bb.gy:                                            ; preds = %.loopexit
  %.not.i.i513 = icmp eq ptr %i.afb, null
  br i1 %.not.i.i513, label %_ZN7obj_refIN10polynomial10polynomialENS0_7managerEE7dec_refEv.exit.i514, label %bb.gz

bb.gz:                                            ; preds = %bb.gy
  %i.ane = load ptr, ptr %i.tz, align 8, !tbaa !111, !nonnull !99, !align !100
  %i.anf = load ptr, ptr %i.ane, align 8, !tbaa !94
  %i.ang = load i32, ptr %i.afb, align 8, !tbaa !108
  %i.anh = add i32 %i.ang, -1                     ; 2 uses
  store i32 %i.anh, ptr %i.afb, align 8, !tbaa !108
  %i.ani = icmp eq i32 %i.anh, 0
  br i1 %i.ani, label %bb.ha, label %_ZN7obj_refIN10polynomial10polynomialENS0_7managerEE7dec_refEv.exit.i514

bb.ha:                                            ; preds = %bb.gz
  invoke void @_ZN10polynomial7manager3imp3delEPNS_10polynomialE(ptr noundef nonnull align 8 dereferenceable(824) %i.anf, ptr noundef nonnull %i.afb)
          to label %.noexc518 unwind label %bb.gr

.noexc518:                                        ; preds = %bb.ha
  %.pr.pre.i517 = load ptr, ptr %20, align 8, !tbaa !110
  br label %_ZN7obj_refIN10polynomial10polynomialENS0_7managerEE7dec_refEv.exit.i514

_ZN7obj_refIN10polynomial10polynomialENS0_7managerEE7dec_refEv.exit.i514: ; preds = %.noexc518, %bb.gz, %bb.gy
  %i.anj = phi ptr [ %22, %bb.gy ], [ %.pr.pre.i517, %.noexc518 ], [ %22, %bb.gz ] ; 5 uses
  store ptr %i.anj, ptr %19, align 8, !tbaa !110
  %.not.i3.i515 = icmp eq ptr %i.anj, null
  br i1 %.not.i3.i515, label %_ZN7obj_refIN10polynomial10polynomialENS0_7managerEEaSERKS3_.exit519, label %_ZN10polynomial7manager7inc_refEPNS_10polynomialE.exit.i.i516

_ZN10polynomial7manager7inc_refEPNS_10polynomialE.exit.i.i516: ; preds = %_ZN7obj_refIN10polynomial10polynomialENS0_7managerEE7dec_refEv.exit.i514
  %i.ank = load i32, ptr %i.anj, align 8, !tbaa !108
  %i.anl = add i32 %i.ank, 1
  store i32 %i.anl, ptr %i.anj, align 8, !tbaa !108
  br label %_ZN7obj_refIN10polynomial10polynomialENS0_7managerEEaSERKS3_.exit519

_ZN7obj_refIN10polynomial10polynomialENS0_7managerEEaSERKS3_.exit519: ; preds = %_ZN10polynomial7manager7inc_refEPNS_10polynomialE.exit.i.i516, %_ZN7obj_refIN10polynomial10polynomialENS0_7managerEE7dec_refEv.exit.i514, %.loopexit
  %i.anm = phi ptr [ %i.anj, %_ZN10polynomial7manager7inc_refEPNS_10polynomialE.exit.i.i516 ], [ null, %_ZN7obj_refIN10polynomial10polynomialENS0_7managerEE7dec_refEv.exit.i514 ], [ %i.afb, %.loopexit ]
  %i.ann = load ptr, ptr %16, align 8, !tbaa !110
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #29
  store i32 0, ptr %5, align 8, !tbaa !91
  %i.ano = getelementptr inbounds nuw i8, ptr %5, i64 4 ; 2 uses
  %i.anp = load i8, ptr %i.ano, align 4
  %i.anq = and i8 %i.anp, -4
  store i8 %i.anq, ptr %i.ano, align 4
  %i.anr = getelementptr inbounds nuw i8, ptr %5, i64 8
  store ptr null, ptr %i.anr, align 8, !tbaa !84
  %i.ans = invoke noundef ptr @_ZN10polynomial7manager3imp6muladdEPKNS_10polynomialES4_RK3mpz(ptr noundef nonnull align 8 dereferenceable(824) %0, ptr noundef %i.ann, ptr noundef %i.anm, ptr noundef nonnull align 8 dereferenceable(16) %5)
          to label %bb.hb unwind label %bb.gr     ; 5 uses

bb.hb:                                            ; preds = %_ZN7obj_refIN10polynomial10polynomialENS0_7managerEEaSERKS3_.exit519
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #29
  %.not.i522 = icmp eq ptr %i.ans, null
  br i1 %.not.i522, label %bb.hc, label %_ZN10polynomial7manager7inc_refEPNS_10polynomialE.exit.i523

_ZN10polynomial7manager7inc_refEPNS_10polynomialE.exit.i523: ; preds = %bb.hb
  %i.ant = load i32, ptr %i.ans, align 8, !tbaa !108
  %i.anu = add i32 %i.ant, 1
  store i32 %i.anu, ptr %i.ans, align 8, !tbaa !108
  br label %bb.hc

bb.hc:                                            ; preds = %_ZN10polynomial7manager7inc_refEPNS_10polynomialE.exit.i523, %bb.hb
  %i.anv = load ptr, ptr %4, align 8, !tbaa !110  ; 4 uses
  %.not.i4.i524 = icmp eq ptr %i.anv, null
  br i1 %.not.i4.i524, label %bb.hf, label %bb.hd

bb.hd:                                            ; preds = %bb.hc
  %i.anw = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.anx = load ptr, ptr %i.anw, align 8, !tbaa !111, !nonnull !99, !align !100
  %i.any = load ptr, ptr %i.anx, align 8, !tbaa !94
  %i.anz = load i32, ptr %i.anv, align 8, !tbaa !108
  %i.aoa = add i32 %i.anz, -1                     ; 2 uses
  store i32 %i.aoa, ptr %i.anv, align 8, !tbaa !108
  %i.aob = icmp eq i32 %i.aoa, 0
  br i1 %i.aob, label %bb.he, label %bb.hf

bb.he:                                            ; preds = %bb.hd
  invoke void @_ZN10polynomial7manager3imp3delEPNS_10polynomialE(ptr noundef nonnull align 8 dereferenceable(824) %i.any, ptr noundef nonnull %i.anv)
          to label %bb.hf unwind label %bb.gr

bb.hf:                                            ; preds = %bb.hd, %bb.hc, %bb.he
  store ptr %i.ans, ptr %4, align 8, !tbaa !110
  %i.aoc = icmp slt i32 %.2, 0
  br i1 %i.aoc, label %bb.hg, label %bb.hl

bb.hg:                                            ; preds = %bb.hf
  %i.aod = invoke noundef ptr @_ZN10polynomial7manager3imp3negEPKNS_10polynomialE(ptr noundef nonnull align 8 dereferenceable(824) %0, ptr noundef %i.ans)
          to label %bb.hh unwind label %bb.gr     ; 4 uses

bb.hh:                                            ; preds = %bb.hg
  %.not.i528 = icmp eq ptr %i.aod, null
  br i1 %.not.i528, label %bb.hi, label %_ZN10polynomial7manager7inc_refEPNS_10polynomialE.exit.i529

_ZN10polynomial7manager7inc_refEPNS_10polynomialE.exit.i529: ; preds = %bb.hh
  %i.aoe = load i32, ptr %i.aod, align 8, !tbaa !108
  %i.aof = add i32 %i.aoe, 1
  store i32 %i.aof, ptr %i.aod, align 8, !tbaa !108
  br label %bb.hi

bb.hi:                                            ; preds = %_ZN10polynomial7manager7inc_refEPNS_10polynomialE.exit.i529, %bb.hh
  %i.aog = load ptr, ptr %4, align 8, !tbaa !110  ; 4 uses
  %.not.i4.i530 = icmp eq ptr %i.aog, null
  br i1 %.not.i4.i530, label %_ZN7obj_refIN10polynomial10polynomialENS0_7managerEEaSEPS1_.exit533, label %bb.hj

bb.hj:                                            ; preds = %bb.hi
  %i.aoh = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.aoi = load ptr, ptr %i.aoh, align 8, !tbaa !111, !nonnull !99, !align !100
  %i.aoj = load ptr, ptr %i.aoi, align 8, !tbaa !94
  %i.aok = load i32, ptr %i.aog, align 8, !tbaa !108
  %i.aol = add i32 %i.aok, -1                     ; 2 uses
  store i32 %i.aol, ptr %i.aog, align 8, !tbaa !108
  %i.aom = icmp eq i32 %i.aol, 0
  br i1 %i.aom, label %bb.hk, label %_ZN7obj_refIN10polynomial10polynomialENS0_7managerEEaSEPS1_.exit533

bb.hk:                                            ; preds = %bb.hj
  invoke void @_ZN10polynomial7manager3imp3delEPNS_10polynomialE(ptr noundef nonnull align 8 dereferenceable(824) %i.aoj, ptr noundef nonnull %i.aog)
          to label %_ZN7obj_refIN10polynomial10polynomialENS0_7managerEEaSEPS1_.exit533 unwind label %bb.gr

_ZN7obj_refIN10polynomial10polynomialENS0_7managerEEaSEPS1_.exit533: ; preds = %bb.hk, %bb.hi, %bb.hj
  store ptr %i.aod, ptr %4, align 8, !tbaa !110
  br label %bb.hl

bb.hl:                                            ; preds = %bb.hf, %_ZN7obj_refIN10polynomial10polynomialENS0_7managerEEaSEPS1_.exit533
  %i.aon = load ptr, ptr %20, align 8, !tbaa !110 ; 4 uses
  %.not.i.i534 = icmp eq ptr %i.aon, null
  br i1 %.not.i.i534, label %_ZN7obj_refIN10polynomial10polynomialENS0_7managerEED2Ev.exit, label %bb.hm

bb.hm:                                            ; preds = %bb.hl
  %i.aoo = load ptr, ptr %i.ua, align 8, !tbaa !111, !nonnull !99, !align !100
  %i.aop = load ptr, ptr %i.aoo, align 8, !tbaa !94
  %i.aoq = load i32, ptr %i.aon, align 8, !tbaa !108
  %i.aor = add i32 %i.aoq, -1                     ; 2 uses
  store i32 %i.aor, ptr %i.aon, align 8, !tbaa !108
  %i.aos = icmp eq i32 %i.aor, 0
  br i1 %i.aos, label %bb.hn, label %_ZN7obj_refIN10polynomial10polynomialENS0_7managerEED2Ev.exit

bb.hn:                                            ; preds = %bb.hm
  invoke void @_ZN10polynomial7manager3imp3delEPNS_10polynomialE(ptr noundef nonnull align 8 dereferenceable(824) %i.aop, ptr noundef nonnull %i.aon)
          to label %_ZN7obj_refIN10polynomial10polynomialENS0_7managerEED2Ev.exit unwind label %bb.ho

bb.ho:                                            ; preds = %bb.hn
  %i.aot = landingpad { ptr, i32 }
          catch ptr null
  %i.aou = extractvalue { ptr, i32 } %i.aot, 0
  call void @__clang_call_terminate(ptr %i.aou) #28
  unreachable

_ZN7obj_refIN10polynomial10polynomialENS0_7managerEED2Ev.exit: ; preds = %bb.hl, %bb.hm, %bb.hn
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #29
  %i.aov = load ptr, ptr %19, align 8, !tbaa !110 ; 4 uses
  %.not.i.i536 = icmp eq ptr %i.aov, null
  br i1 %.not.i.i536, label %_ZN7obj_refIN10polynomial10polynomialENS0_7managerEED2Ev.exit538, label %bb.hp

bb.hp:                                            ; preds = %_ZN7obj_refIN10polynomial10polynomialENS0_7managerEED2Ev.exit
  %i.aow = load ptr, ptr %i.tz, align 8, !tbaa !111, !nonnull !99, !align !100
  %i.aox = load ptr, ptr %i.aow, align 8, !tbaa !94
  %i.aoy = load i32, ptr %i.aov, align 8, !tbaa !108
  %i.aoz = add i32 %i.aoy, -1                     ; 2 uses
  store i32 %i.aoz, ptr %i.aov, align 8, !tbaa !108
  %i.apa = icmp eq i32 %i.aoz, 0
  br i1 %i.apa, label %bb.hq, label %_ZN7obj_refIN10polynomial10polynomialENS0_7managerEED2Ev.exit538

bb.hq:                                            ; preds = %bb.hp
  invoke void @_ZN10polynomial7manager3imp3delEPNS_10polynomialE(ptr noundef nonnull align 8 dereferenceable(824) %i.aox, ptr noundef nonnull %i.aov)
          to label %_ZN7obj_refIN10polynomial10polynomialENS0_7managerEED2Ev.exit538 unwind label %bb.hr

bb.hr:                                            ; preds = %bb.hq
  %i.apb = landingpad { ptr, i32 }
          catch ptr null
  %i.apc = extractvalue { ptr, i32 } %i.apb, 0
  call void @__clang_call_terminate(ptr %i.apc) #28
  unreachable

_ZN7obj_refIN10polynomial10polynomialENS0_7managerEED2Ev.exit538: ; preds = %_ZN7obj_refIN10polynomial10polynomialENS0_7managerEED2Ev.exit, %bb.hp, %bb.hq
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #29
  %i.apd = load ptr, ptr %18, align 8, !tbaa !110 ; 4 uses
  %.not.i.i539 = icmp eq ptr %i.apd, null
  br i1 %.not.i.i539, label %_ZN7obj_refIN10polynomial10polynomialENS0_7managerEED2Ev.exit541, label %bb.hs

bb.hs:                                            ; preds = %_ZN7obj_refIN10polynomial10polynomialENS0_7managerEED2Ev.exit538
  %i.ape = load ptr, ptr %i.ty, align 8, !tbaa !111, !nonnull !99, !align !100
  %i.apf = load ptr, ptr %i.ape, align 8, !tbaa !94
  %i.apg = load i32, ptr %i.apd, align 8, !tbaa !108
  %i.aph = add i32 %i.apg, -1                     ; 2 uses
  store i32 %i.aph, ptr %i.apd, align 8, !tbaa !108
  %i.api = icmp eq i32 %i.aph, 0
  br i1 %i.api, label %bb.ht, label %_ZN7obj_refIN10polynomial10polynomialENS0_7managerEED2Ev.exit541

bb.ht:                                            ; preds = %bb.hs
  invoke void @_ZN10polynomial7manager3imp3delEPNS_10polynomialE(ptr noundef nonnull align 8 dereferenceable(824) %i.apf, ptr noundef nonnull %i.apd)
          to label %_ZN7obj_refIN10polynomial10polynomialENS0_7managerEED2Ev.exit541 unwind label %bb.hu

bb.hu:                                            ; preds = %bb.ht
  %i.apj = landingpad { ptr, i32 }
          catch ptr null
  %i.apk = extractvalue { ptr, i32 } %i.apj, 0
  call void @__clang_call_terminate(ptr %i.apk) #28
  unreachable

_ZN7obj_refIN10polynomial10polynomialENS0_7managerEED2Ev.exit541: ; preds = %_ZN7obj_refIN10polynomial10polynomialENS0_7managerEED2Ev.exit538, %bb.hs, %bb.ht
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #29
  %i.apl = load ptr, ptr %17, align 8, !tbaa !110 ; 4 uses
  %.not.i.i542 = icmp eq ptr %i.apl, null
  br i1 %.not.i.i542, label %_ZN7obj_refIN10polynomial10polynomialENS0_7managerEED2Ev.exit544, label %bb.hv

bb.hv:                                            ; preds = %_ZN7obj_refIN10polynomial10polynomialENS0_7managerEED2Ev.exit541
  %i.apm = load ptr, ptr %i.tx, align 8, !tbaa !111, !nonnull !99, !align !100
  %i.apn = load ptr, ptr %i.apm, align 8, !tbaa !94
  %i.apo = load i32, ptr %i.apl, align 8, !tbaa !108
  %i.app = add i32 %i.apo, -1                     ; 2 uses
  store i32 %i.app, ptr %i.apl, align 8, !tbaa !108
  %i.apq = icmp eq i32 %i.app, 0
  br i1 %i.apq, label %bb.hw, label %_ZN7obj_refIN10polynomial10polynomialENS0_7managerEED2Ev.exit544

bb.hw:                                            ; preds = %bb.hv
  invoke void @_ZN10polynomial7manager3imp3delEPNS_10polynomialE(ptr noundef nonnull align 8 dereferenceable(824) %i.apn, ptr noundef nonnull %i.apl)
          to label %_ZN7obj_refIN10polynomial10polynomialENS0_7managerEED2Ev.exit544 unwind label %bb.hx

bb.hx:                                            ; preds = %bb.hw
  %i.apr = landingpad { ptr, i32 }
          catch ptr null
  %i.aps = extractvalue { ptr, i32 } %i.apr, 0
  call void @__clang_call_terminate(ptr %i.aps) #28
  unreachable

_ZN7obj_refIN10polynomial10polynomialENS0_7managerEED2Ev.exit544: ; preds = %_ZN7obj_refIN10polynomial10polynomialENS0_7managerEED2Ev.exit541, %bb.hv, %bb.hw
end_hunk_2
begin_hunk_3_@_ZN10polynomial7manager3imp7gcd_prsEPKNS_10polynomialES4_jR7obj_refIS2_S0_E:bb.a

bb.en:                                            ; preds = %bb.el
  %i.adu = mul i32 %i.adn, 3
  %i.adv = add i32 %i.adu, 1
  %i.adw = lshr i32 %i.adv, 1                     ; 3 uses
  %i.adx = shl i32 %i.adw, 2
  %i.ady = add i32 %i.adx, 8                      ; 2 uses
  %.not.i325 = icmp ugt i32 %i.adw, %i.adn
  br i1 %.not.i325, label %bb.eo, label %bb.ep

bb.eo:                                            ; preds = %bb.en
  %i.adz = shl i32 %i.adn, 2
  %i.aea = add i32 %i.adz, 8
  %.not27.i334 = icmp ugt i32 %i.ady, %i.aea
  br i1 %.not27.i334, label %bb.eu, label %bb.ep

bb.ep:                                            ; preds = %bb.eo, %bb.en
  %i.aeb = call ptr @__cxa_allocate_exception(i64 40) #29 ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #29
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #29
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull @.str.18, ptr noundef nonnull align 1 dereferenceable(1) %6)
          to label %bb.eq unwind label %bb.et

bb.eq:                                            ; preds = %bb.ep
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTV17default_exception, i64 16), ptr %i.aeb, align 8, !tbaa !173
  %i.aec = getelementptr inbounds nuw i8, ptr %i.aeb, i64 8 ; 2 uses
  %i.aed = getelementptr inbounds nuw i8, ptr %i.aeb, i64 24 ; 3 uses
  store ptr %i.aed, ptr %i.aec, align 8, !tbaa !226
  %i.aee = load ptr, ptr %5, align 8, !tbaa !169  ; 2 uses
  %i.aef = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 7 uses
  %i.aeg = icmp eq ptr %i.aee, %i.aef
  br i1 %i.aeg, label %bb.er, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i327

bb.er:                                            ; preds = %bb.eq
  %i.aeh = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.aei = load i64, ptr %i.aeh, align 8, !tbaa !170 ; 3 uses
  %i.aej = icmp ult i64 %i.aei, 16
  call void @llvm.assume(i1 %i.aej)
  %i.aek = add nuw nsw i64 %i.aei, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.aed, ptr noundef nonnull align 8 dereferenceable(1) %i.aef, i64 %i.aek, i1 false)
  br label %_ZN17default_exceptionC2EONSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.i330

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i327: ; preds = %bb.eq
  store ptr %i.aee, ptr %i.aec, align 8, !tbaa !169
  %i.ael = load i64, ptr %i.aef, align 8, !tbaa !171
  store i64 %i.ael, ptr %i.aed, align 8, !tbaa !171
  %.phi.trans.insert.i328 = getelementptr inbounds nuw i8, ptr %5, i64 8
  %.pre.i329 = load i64, ptr %.phi.trans.insert.i328, align 8, !tbaa !170
  br label %_ZN17default_exceptionC2EONSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.i330

_ZN17default_exceptionC2EONSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.i330: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i327, %bb.er
  %i.aem = phi i64 [ %i.aei, %bb.er ], [ %.pre.i329, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i327 ]
  %i.aen = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.aeo = getelementptr inbounds nuw i8, ptr %i.aeb, i64 16
  store i64 %i.aem, ptr %i.aeo, align 8, !tbaa !170
  store ptr %i.aef, ptr %5, align 8, !tbaa !169
  store i64 0, ptr %i.aen, align 8, !tbaa !170
  store i8 0, ptr %i.aef, align 8, !tbaa !171
  invoke void @__cxa_throw(ptr nonnull %i.aeb, ptr nonnull @_ZTI17default_exception, ptr nonnull @_ZN17default_exceptionD2Ev) #31
          to label %bb.ev unwind label %bb.es

bb.es:                                            ; preds = %_ZN17default_exceptionC2EONSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.i330
  %i.aep = landingpad { ptr, i32 }
          cleanup
  %i.aeq = load ptr, ptr %5, align 8, !tbaa !169  ; 2 uses
  %i.aer = icmp eq ptr %i.aeq, %i.aef
  br i1 %i.aer, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i332, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i29.i331

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i29.i331: ; preds = %bb.es
  %i.aes = load i64, ptr %i.aef, align 8, !tbaa !171
  %i.aet = add i64 %i.aes, 1
  call void @_ZdlPvm(ptr noundef %i.aeq, i64 noundef %i.aet) #30
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i332

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i332: ; preds = %bb.es, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i29.i331
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #29
  br label %.body

bb.et:                                            ; preds = %bb.ep
  %i.aeu = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #29
  call void @__cxa_free_exception(ptr %i.aeb) #29
  br label %.body

bb.eu:                                            ; preds = %bb.eo
  %i.aev = zext i32 %i.ady to i64
  %i.aew = invoke noalias noundef ptr @_ZN6memory10reallocateEPvm(ptr noundef nonnull %i.ado, i64 noundef %i.aev)
          to label %.noexc338 unwind label %.loopexit ; 2 uses

.noexc338:                                        ; preds = %bb.eu
  %i.aex = getelementptr inbounds nuw i8, ptr %i.aew, i64 8 ; 2 uses
  store ptr %i.aex, ptr %i.adj, align 8, !tbaa !69
  store i32 %i.adw, ptr %i.aew, align 4, !tbaa !70
  br label %.noexc317

bb.ev:                                            ; preds = %_ZN17default_exceptionC2EONSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.i330
  unreachable

.noexc317:                                        ; preds = %.noexc338, %.noexc335
  %.pre.i.i.i298 = phi ptr [ %i.aex, %.noexc338 ], [ %i.adt, %.noexc335 ] ; 2 uses
  %.phi.trans.insert.i.i.i299 = getelementptr inbounds i8, ptr %.pre.i.i.i298, i64 -4
  %.pre2.i.i.i300 = load i32, ptr %.phi.trans.insert.i.i.i299, align 4, !tbaa !70
  br label %_ZN6vectorIjLb0EjE9push_backERKj.exit.i.i296

_ZN6vectorIjLb0EjE9push_backERKj.exit.i.i296:     ; preds = %.noexc317, %bb.el
  %i.aey = phi i32 [ %.pre2.i.i.i300, %.noexc317 ], [ %i.adn, %bb.el ] ; 2 uses
  %i.aez = phi ptr [ %.pre.i.i.i298, %.noexc317 ], [ %i.adk, %bb.el ] ; 2 uses
  %i.afa = getelementptr inbounds i8, ptr %i.aez, i64 -4
  %i.afb = zext i32 %i.aey to i64
  %i.afc = getelementptr inbounds nuw [4 x i8], ptr %i.aez, i64 %i.afb
  store i32 %i.adh, ptr %i.afc, align 4, !tbaa !70
  %i.afd = add i32 %i.aey, 1
  store i32 %i.afd, ptr %i.afa, align 4, !tbaa !70
  br label %_ZN6id_gen7recycleEj.exit.i297

_ZN6id_gen7recycleEj.exit.i297:                   ; preds = %_ZN6vectorIjLb0EjE9push_backERKj.exit.i.i296, %.noexc316
  %i.afe = shl i32 %.fr13.i285, 3
  %i.aff = add i32 %i.afe, 20
  %i.afg = getelementptr inbounds nuw i8, ptr %i.aav, i64 8
  %i.afh = load ptr, ptr %i.afg, align 8, !tbaa !194
  %i.afi = zext i32 %i.aff to i64
  invoke void @_ZN22small_object_allocator10deallocateEmPv(ptr noundef nonnull align 8 dereferenceable(520) %i.afh, i64 noundef %i.afi, ptr noundef nonnull %i.aau)
          to label %_ZN10polynomial7manager3imp7dec_refEPNS_8monomialE.exit.i254 unwind label %.loopexit

_ZN10polynomial7manager3imp7dec_refEPNS_8monomialE.exit.i254: ; preds = %_ZN6id_gen7recycleEj.exit.i297, %.noexc267
  %indvars.iv.next.i255 = add nuw nsw i64 %indvars.iv.i253, 1 ; 2 uses
  %exitcond.not.i256 = icmp eq i64 %indvars.iv.next.i255, %wide.trip.count.i252
  br i1 %exitcond.not.i256, label %._crit_edge.i257, label %bb.ea, !llvm.loop !36

bb.ew:                                            ; preds = %bb.dv, %bb.du, %_ZN6id_gen7recycleEj.exit.i259
  store ptr %i.yr, ptr %22, align 8, !tbaa !110
  %i.afj = add nuw i32 %.027396, 1                ; 2 uses
  %exitcond429.not = icmp eq i32 %i.afj, %i.kn
  br i1 %exitcond429.not, label %._crit_edge398, label %.lr.ph397, !llvm.loop !583

.loopexit:                                        ; preds = %bb.ea, %_ZN10chashtableIPN10polynomial8monomialENS1_9hash_procENS1_7eq_procEE5eraseERKS2_.exit.i295, %_ZN6id_gen7recycleEj.exit.i297, %bb.em, %bb.eu
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %.body

.loopexit.split-lp.loopexit:                      ; preds = %.preheader.i246
  %lpad.loopexit353 = landingpad { ptr, i32 }
          cleanup
  br label %.body

.loopexit.split-lp.loopexit.split-lp:             ; preds = %_ZN6id_gen7recycleEj.exit.i259, %bb.dz, %._crit_edge.i257, %.lr.ph397
  %lpad.loopexit.split-lp354 = landingpad { ptr, i32 }
          cleanup
  br label %.body

.lr.ph400:                                        ; preds = %.lr.ph400.preheader, %bb.fb
  %i.afk = phi ptr [ %i.afm, %bb.fb ], [ %i.yr, %.lr.ph400.preheader ]
  %.0399 = phi i32 [ %i.afv, %bb.fb ], [ 0, %.lr.ph400.preheader ] ; 2 uses
  %i.afl = load ptr, ptr %20, align 8, !tbaa !110
  %i.afm = invoke noundef ptr @_ZN10polynomial7manager3imp9exact_divEPKNS_10polynomialES4_(ptr noundef nonnull align 8 dereferenceable(824) %0, ptr noundef %i.afk, ptr noundef %i.afl)
          to label %bb.ex unwind label %bb.fc     ; 6 uses

bb.ex:                                            ; preds = %.lr.ph400
  %.not.i189 = icmp eq ptr %i.afm, null
  br i1 %.not.i189, label %bb.ey, label %_ZN10polynomial7manager7inc_refEPNS_10polynomialE.exit.i190

_ZN10polynomial7manager7inc_refEPNS_10polynomialE.exit.i190: ; preds = %bb.ex
  %i.afn = load i32, ptr %i.afm, align 8, !tbaa !108
  %i.afo = add i32 %i.afn, 1
  store i32 %i.afo, ptr %i.afm, align 8, !tbaa !108
  br label %bb.ey

bb.ey:                                            ; preds = %_ZN10polynomial7manager7inc_refEPNS_10polynomialE.exit.i190, %bb.ex
  %i.afp = load ptr, ptr %22, align 8, !tbaa !110 ; 4 uses
  %.not.i4.i191 = icmp eq ptr %i.afp, null
  br i1 %.not.i4.i191, label %bb.fb, label %bb.ez

bb.ez:                                            ; preds = %bb.ey
  %i.afq = load ptr, ptr %i.ey, align 8, !tbaa !111, !nonnull !99, !align !100
  %i.afr = load ptr, ptr %i.afq, align 8, !tbaa !94
  %i.afs = load i32, ptr %i.afp, align 8, !tbaa !108
  %i.aft = add i32 %i.afs, -1                     ; 2 uses
  store i32 %i.aft, ptr %i.afp, align 8, !tbaa !108
  %i.afu = icmp eq i32 %i.aft, 0
  br i1 %i.afu, label %bb.fa, label %bb.fb

bb.fa:                                            ; preds = %bb.ez
  invoke void @_ZN10polynomial7manager3imp3delEPNS_10polynomialE(ptr noundef nonnull align 8 dereferenceable(824) %i.afr, ptr noundef nonnull %i.afp)
          to label %bb.fb unwind label %bb.fc

bb.fb:                                            ; preds = %bb.ez, %bb.ey, %bb.fa
  store ptr %i.afm, ptr %22, align 8, !tbaa !110
  %i.afv = add nuw i32 %.0399, 1
  %exitcond430.not = icmp eq i32 %.0399, %i.ym
  br i1 %exitcond430.not, label %.loopexit366, label %.lr.ph400, !llvm.loop !584

bb.fc:                                            ; preds = %bb.fa, %.lr.ph400
  %i.afw = landingpad { ptr, i32 }
          cleanup
  br label %.body

.loopexit366:                                     ; preds = %bb.fb, %_ZN7obj_refIN10polynomial10polynomialENS0_7managerEEaSEPS1_.exit181, %._crit_edge398
  %.pr.pre.i200 = phi ptr [ %i.yc, %_ZN7obj_refIN10polynomial10polynomialENS0_7managerEEaSEPS1_.exit181 ], [ %i.yr, %._crit_edge398 ], [ %i.afm, %bb.fb ] ; 6 uses
  %i.afx = load ptr, ptr %20, align 8, !tbaa !110 ; 5 uses
  %.not.i195 = icmp eq ptr %i.afx, %.pr.pre.i200
  br i1 %.not.i195, label %_ZN7obj_refIN10polynomial10polynomialENS0_7managerEEaSERKS3_.exit202.backedge, label %bb.fd

_ZN7obj_refIN10polynomial10polynomialENS0_7managerEEaSERKS3_.exit202.backedge: ; preds = %.loopexit366, %_ZN7obj_refIN10polynomial10polynomialENS0_7managerEE7dec_refEv.exit.i197, %_ZN10polynomial7manager7inc_refEPNS_10polynomialE.exit.i.i199
  br label %_ZN7obj_refIN10polynomial10polynomialENS0_7managerEEaSERKS3_.exit202

bb.fd:                                            ; preds = %.loopexit366
  %.not.i.i196 = icmp eq ptr %i.afx, null
  br i1 %.not.i.i196, label %_ZN7obj_refIN10polynomial10polynomialENS0_7managerEE7dec_refEv.exit.i197, label %bb.fe

bb.fe:                                            ; preds = %bb.fd
  %i.afy = load ptr, ptr %i.ew, align 8, !tbaa !111, !nonnull !99, !align !100
  %i.afz = load ptr, ptr %i.afy, align 8, !tbaa !94
  %i.aga = load i32, ptr %i.afx, align 8, !tbaa !108
  %i.agb = add i32 %i.aga, -1                     ; 2 uses
  store i32 %i.agb, ptr %i.afx, align 8, !tbaa !108
  %i.agc = icmp eq i32 %i.agb, 0
  br i1 %i.agc, label %bb.ff, label %_ZN7obj_refIN10polynomial10polynomialENS0_7managerEE7dec_refEv.exit.i197

bb.ff:                                            ; preds = %bb.fe
  invoke void @_ZN10polynomial7manager3imp3delEPNS_10polynomialE(ptr noundef nonnull align 8 dereferenceable(824) %i.afz, ptr noundef nonnull %i.afx)
          to label %_ZN7obj_refIN10polynomial10polynomialENS0_7managerEE7dec_refEv.exit.i197 unwind label %.loopexit371

_ZN7obj_refIN10polynomial10polynomialENS0_7managerEE7dec_refEv.exit.i197: ; preds = %bb.ff, %bb.fe, %bb.fd
  store ptr %.pr.pre.i200, ptr %20, align 8, !tbaa !110
  %.not.i3.i198 = icmp eq ptr %.pr.pre.i200, null
  br i1 %.not.i3.i198, label %_ZN7obj_refIN10polynomial10polynomialENS0_7managerEEaSERKS3_.exit202.backedge, label %_ZN10polynomial7manager7inc_refEPNS_10polynomialE.exit.i.i199

_ZN10polynomial7manager7inc_refEPNS_10polynomialE.exit.i.i199: ; preds = %_ZN7obj_refIN10polynomial10polynomialENS0_7managerEE7dec_refEv.exit.i197
  %i.agd = load i32, ptr %.pr.pre.i200, align 8, !tbaa !108
  %i.age = add i32 %i.agd, 1
  store i32 %i.age, ptr %.pr.pre.i200, align 8, !tbaa !108
  br label %_ZN7obj_refIN10polynomial10polynomialENS0_7managerEEaSERKS3_.exit202.backedge

.critedge:                                        ; preds = %bb.bq, %bb.bp, %bb.br, %bb.bf, %bb.be, %bb.bg
  %storemerge = phi ptr [ %i.ln, %bb.bf ], [ %i.ln, %bb.bg ], [ %i.ln, %bb.be ], [ %.0.i.i143, %bb.br ], [ %.0.i.i143, %bb.bp ], [ %.0.i.i143, %bb.bq ]
  store ptr %storemerge, ptr %4, align 8, !tbaa !110
  %.not.i.i203 = icmp eq ptr %i.fk, null
  br i1 %.not.i.i203, label %_ZN7obj_refIN10polynomial10polynomialENS0_7managerEED2Ev.exit205, label %bb.fg

bb.fg:                                            ; preds = %.critedge
  %i.agf = load ptr, ptr %i.ey, align 8, !tbaa !111, !nonnull !99, !align !100
  %i.agg = load ptr, ptr %i.agf, align 8, !tbaa !94
  %i.agh = load i32, ptr %i.fk, align 8, !tbaa !108
  %i.agi = add i32 %i.agh, -1                     ; 2 uses
  store i32 %i.agi, ptr %i.fk, align 8, !tbaa !108
  %i.agj = icmp eq i32 %i.agi, 0
  br i1 %i.agj, label %bb.fh, label %_ZN7obj_refIN10polynomial10polynomialENS0_7managerEED2Ev.exit205

bb.fh:                                            ; preds = %bb.fg
  invoke void @_ZN10polynomial7manager3imp3delEPNS_10polynomialE(ptr noundef nonnull align 8 dereferenceable(824) %i.agg, ptr noundef nonnull %i.fk)
          to label %_ZN7obj_refIN10polynomial10polynomialENS0_7managerEED2Ev.exit205 unwind label %bb.fi

bb.fi:                                            ; preds = %bb.fh
  %i.agk = landingpad { ptr, i32 }
          catch ptr null
  %i.agl = extractvalue { ptr, i32 } %i.agk, 0
  call void @__clang_call_terminate(ptr %i.agl) #28
  unreachable

_ZN7obj_refIN10polynomial10polynomialENS0_7managerEED2Ev.exit205: ; preds = %.critedge, %bb.fg, %bb.fh
  call void @llvm.lifetime.end.p0(ptr nonnull %22) #29
  %i.agm = load ptr, ptr %21, align 8, !tbaa !110 ; 4 uses
  %.not.i.i206 = icmp eq ptr %i.agm, null
  br i1 %.not.i.i206, label %_ZN7obj_refIN10polynomial10polynomialENS0_7managerEED2Ev.exit208, label %bb.fj

bb.fj:                                            ; preds = %_ZN7obj_refIN10polynomial10polynomialENS0_7managerEED2Ev.exit205
  %i.agn = load ptr, ptr %i.ex, align 8, !tbaa !111, !nonnull !99, !align !100
  %i.ago = load ptr, ptr %i.agn, align 8, !tbaa !94
  %i.agp = load i32, ptr %i.agm, align 8, !tbaa !108
  %i.agq = add i32 %i.agp, -1                     ; 2 uses
  store i32 %i.agq, ptr %i.agm, align 8, !tbaa !108
  %i.agr = icmp eq i32 %i.agq, 0
  br i1 %i.agr, label %bb.fk, label %_ZN7obj_refIN10polynomial10polynomialENS0_7managerEED2Ev.exit208

bb.fk:                                            ; preds = %bb.fj
  invoke void @_ZN10polynomial7manager3imp3delEPNS_10polynomialE(ptr noundef nonnull align 8 dereferenceable(824) %i.ago, ptr noundef nonnull %i.agm)
          to label %_ZN7obj_refIN10polynomial10polynomialENS0_7managerEED2Ev.exit208 unwind label %bb.fl

bb.fl:                                            ; preds = %bb.fk
  %i.ags = landingpad { ptr, i32 }
          catch ptr null
  %i.agt = extractvalue { ptr, i32 } %i.ags, 0
  call void @__clang_call_terminate(ptr %i.agt) #28
  unreachable

_ZN7obj_refIN10polynomial10polynomialENS0_7managerEED2Ev.exit208: ; preds = %_ZN7obj_refIN10polynomial10polynomialENS0_7managerEED2Ev.exit205, %bb.fj, %bb.fk
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #29
  %i.agu = load ptr, ptr %20, align 8, !tbaa !110 ; 4 uses
  %.not.i.i209 = icmp eq ptr %i.agu, null
  br i1 %.not.i.i209, label %_ZN7obj_refIN10polynomial10polynomialENS0_7managerEED2Ev.exit211, label %bb.fm

bb.fm:                                            ; preds = %_ZN7obj_refIN10polynomial10polynomialENS0_7managerEED2Ev.exit208
  %i.agv = load ptr, ptr %i.ew, align 8, !tbaa !111, !nonnull !99, !align !100
  %i.agw = load ptr, ptr %i.agv, align 8, !tbaa !94
  %i.agx = load i32, ptr %i.agu, align 8, !tbaa !108
  %i.agy = add i32 %i.agx, -1                     ; 2 uses
  store i32 %i.agy, ptr %i.agu, align 8, !tbaa !108
  %i.agz = icmp eq i32 %i.agy, 0
  br i1 %i.agz, label %bb.fn, label %_ZN7obj_refIN10polynomial10polynomialENS0_7managerEED2Ev.exit211

bb.fn:                                            ; preds = %bb.fm
  invoke void @_ZN10polynomial7manager3imp3delEPNS_10polynomialE(ptr noundef nonnull align 8 dereferenceable(824) %i.agw, ptr noundef nonnull %i.agu)
          to label %_ZN7obj_refIN10polynomial10polynomialENS0_7managerEED2Ev.exit211 unwind label %bb.fo

bb.fo:                                            ; preds = %bb.fn
  %i.aha = landingpad { ptr, i32 }
          catch ptr null
  %i.ahb = extractvalue { ptr, i32 } %i.aha, 0
  call void @__clang_call_terminate(ptr %i.ahb) #28
  unreachable

_ZN7obj_refIN10polynomial10polynomialENS0_7managerEED2Ev.exit211: ; preds = %_ZN7obj_refIN10polynomial10polynomialENS0_7managerEED2Ev.exit208, %bb.fm, %bb.fn
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #29
  %i.ahc = load ptr, ptr %19, align 8, !tbaa !110 ; 4 uses
  %.not.i.i212 = icmp eq ptr %i.ahc, null
  br i1 %.not.i.i212, label %_ZN7obj_refIN10polynomial10polynomialENS0_7managerEED2Ev.exit214, label %bb.fp

bb.fp:                                            ; preds = %_ZN7obj_refIN10polynomial10polynomialENS0_7managerEED2Ev.exit211
  %i.ahd = load ptr, ptr %i.ev, align 8, !tbaa !111, !nonnull !99, !align !100
  %i.ahe = load ptr, ptr %i.ahd, align 8, !tbaa !94
  %i.ahf = load i32, ptr %i.ahc, align 8, !tbaa !108
  %i.ahg = add i32 %i.ahf, -1                     ; 2 uses
  store i32 %i.ahg, ptr %i.ahc, align 8, !tbaa !108
  %i.ahh = icmp eq i32 %i.ahg, 0
  br i1 %i.ahh, label %bb.fq, label %_ZN7obj_refIN10polynomial10polynomialENS0_7managerEED2Ev.exit214

bb.fq:                                            ; preds = %bb.fp
  invoke void @_ZN10polynomial7manager3imp3delEPNS_10polynomialE(ptr noundef nonnull align 8 dereferenceable(824) %i.ahe, ptr noundef nonnull %i.ahc)
          to label %_ZN7obj_refIN10polynomial10polynomialENS0_7managerEED2Ev.exit214 unwind label %bb.fr

bb.fr:                                            ; preds = %bb.fq
  %i.ahi = landingpad { ptr, i32 }
          catch ptr null
  %i.ahj = extractvalue { ptr, i32 } %i.ahi, 0
  call void @__clang_call_terminate(ptr %i.ahj) #28
  unreachable

_ZN7obj_refIN10polynomial10polynomialENS0_7managerEED2Ev.exit214: ; preds = %_ZN7obj_refIN10polynomial10polynomialENS0_7managerEED2Ev.exit211, %bb.fp, %bb.fq
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #29
  %i.ahk = load ptr, ptr %18, align 8, !tbaa !110 ; 4 uses
  %.not.i.i215 = icmp eq ptr %i.ahk, null
  br i1 %.not.i.i215, label %_ZN7obj_refIN10polynomial10polynomialENS0_7managerEED2Ev.exit217, label %bb.fs

bb.fs:                                            ; preds = %_ZN7obj_refIN10polynomial10polynomialENS0_7managerEED2Ev.exit214
  %i.ahl = load ptr, ptr %i.eu, align 8, !tbaa !111, !nonnull !99, !align !100
  %i.ahm = load ptr, ptr %i.ahl, align 8, !tbaa !94
  %i.ahn = load i32, ptr %i.ahk, align 8, !tbaa !108
  %i.aho = add i32 %i.ahn, -1                     ; 2 uses
  store i32 %i.aho, ptr %i.ahk, align 8, !tbaa !108
  %i.ahp = icmp eq i32 %i.aho, 0
  br i1 %i.ahp, label %bb.ft, label %_ZN7obj_refIN10polynomial10polynomialENS0_7managerEED2Ev.exit217

bb.ft:                                            ; preds = %bb.fs
  invoke void @_ZN10polynomial7manager3imp3delEPNS_10polynomialE(ptr noundef nonnull align 8 dereferenceable(824) %i.ahm, ptr noundef nonnull %i.ahk)
          to label %_ZN7obj_refIN10polynomial10polynomialENS0_7managerEED2Ev.exit217 unwind label %bb.fu

bb.fu:                                            ; preds = %bb.ft
  %i.ahq = landingpad { ptr, i32 }
          catch ptr null
  %i.ahr = extractvalue { ptr, i32 } %i.ahq, 0
  call void @__clang_call_terminate(ptr %i.ahr) #28
  unreachable

_ZN7obj_refIN10polynomial10polynomialENS0_7managerEED2Ev.exit217: ; preds = %_ZN7obj_refIN10polynomial10polynomialENS0_7managerEED2Ev.exit214, %bb.fs, %bb.ft
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #29
  %i.ahs = load ptr, ptr %17, align 8, !tbaa !203, !nonnull !99, !align !100
  %i.aht = load ptr, ptr %i.ahs, align 8, !tbaa !98, !nonnull !99, !align !100
  invoke void @_ZN11mpz_managerILb0EE3delEPS0_R3mpz(ptr noundef nonnull align 8 dereferenceable(600) %i.aht, ptr noundef nonnull align 8 dereferenceable(16) %i.ep)
          to label %_ZN15_scoped_numeralI13mpzzp_managerED2Ev.exit unwind label %bb.fv

bb.fv:                                            ; preds = %_ZN7obj_refIN10polynomial10polynomialENS0_7managerEED2Ev.exit217
  %i.ahu = landingpad { ptr, i32 }
          catch ptr null
  %i.ahv = extractvalue { ptr, i32 } %i.ahu, 0
  call void @__clang_call_terminate(ptr %i.ahv) #28
  unreachable

_ZN15_scoped_numeralI13mpzzp_managerED2Ev.exit:   ; preds = %_ZN7obj_refIN10polynomial10polynomialENS0_7managerEED2Ev.exit217
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #29
  %i.ahw = load ptr, ptr %16, align 8, !tbaa !110 ; 4 uses
  %.not.i.i218 = icmp eq ptr %i.ahw, null
  br i1 %.not.i.i218, label %_ZN7obj_refIN10polynomial10polynomialENS0_7managerEED2Ev.exit220, label %bb.fw

bb.fw:                                            ; preds = %_ZN15_scoped_numeralI13mpzzp_managerED2Ev.exit
  %i.ahx = load ptr, ptr %i.eo, align 8, !tbaa !111, !nonnull !99, !align !100
  %i.ahy = load ptr, ptr %i.ahx, align 8, !tbaa !94
  %i.ahz = load i32, ptr %i.ahw, align 8, !tbaa !108
  %i.aia = add i32 %i.ahz, -1                     ; 2 uses
  store i32 %i.aia, ptr %i.ahw, align 8, !tbaa !108
  %i.aib = icmp eq i32 %i.aia, 0
  br i1 %i.aib, label %bb.fx, label %_ZN7obj_refIN10polynomial10polynomialENS0_7managerEED2Ev.exit220

bb.fx:                                            ; preds = %bb.fw
  invoke void @_ZN10polynomial7manager3imp3delEPNS_10polynomialE(ptr noundef nonnull align 8 dereferenceable(824) %i.ahy, ptr noundef nonnull %i.ahw)
          to label %_ZN7obj_refIN10polynomial10polynomialENS0_7managerEED2Ev.exit220 unwind label %bb.fy

bb.fy:                                            ; preds = %bb.fx
  %i.aic = landingpad { ptr, i32 }
end_hunk_3
