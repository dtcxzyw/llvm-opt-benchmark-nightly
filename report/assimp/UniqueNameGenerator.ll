Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/assimp/original/UniqueNameGenerator?download=true
inline.NumInlined: 535
inline.NumDeleted: 238
begin_hunk_0_@_ZN6Assimp3MDL8HalfLife19UniqueNameGeneratorC2EPKcS4_:bb.a

.noexc.i8:                                        ; preds = %bb.g
  %i.t = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %i.o, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0)
          to label %.noexc10 unwind label %bb.k   ; 2 uses

.noexc10:                                         ; preds = %.noexc.i8
  store ptr %i.t, ptr %i.o, align 8
  %i.u = load i64, ptr %i.a, align 8
  store i64 %i.u, ptr %i.p, align 8
  br label %._crit_edge.i.i7

._crit_edge.i.i7:                                 ; preds = %.noexc10, %bb.g
  %i.v = phi ptr [ %i.t, %.noexc10 ], [ %i.p, %bb.g ] ; 2 uses
  switch i64 %i.r, label %bb.i [
    i64 1, label %bb.h
    i64 0, label %bb.j
  ]

bb.h:                                             ; preds = %._crit_edge.i.i7
  %i.w = load i8, ptr %2, align 1
  store i8 %i.w, ptr %i.v, align 1
  br label %bb.j

bb.i:                                             ; preds = %._crit_edge.i.i7
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.v, ptr nonnull align 1 %2, i64 %i.r, i1 false)
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h, %._crit_edge.i.i7
  %i.x = load i64, ptr %i.a, align 8              ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i64 %i.x, ptr %i.y, align 8
  %i.z = load ptr, ptr %i.o, align 8
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 %i.x
  store i8 0, ptr %i.aa, align 1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #22
  ret void

bb.k:                                             ; preds = %.noexc.i8, %bb.f
  %i.ab = landingpad { ptr, i32 }
          cleanup
  %i.ac = load ptr, ptr %0, align 8               ; 2 uses
  %i.ad = icmp eq ptr %i.ac, %i.c
  br i1 %i.ad, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.k
  %i.ae = load i64, ptr %i.c, align 8
  %i.af = add i64 %i.ae, 1
  call void @_ZdlPvm(ptr noundef %i.ac, i64 noundef %i.af) #23
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.k, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  resume { ptr, i32 } %i.ab
}

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN6Assimp3MDL8HalfLife19UniqueNameGeneratorD2Ev(ptr nofree noundef nonnull readonly align 8 captures(address) dead_on_return(64) dereferenceable(64) %0) unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = load ptr, ptr %i.a, align 8              ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.d = icmp eq ptr %i.b, %i.c
  br i1 %i.d, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.a
  %i.e = load i64, ptr %i.c, align 8
  %i.f = add i64 %i.e, 1
  tail call void @_ZdlPvm(ptr noundef %i.b, i64 noundef %i.f) #23
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.a, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  %i.g = load ptr, ptr %0, align 8                ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.i = icmp eq ptr %i.g, %i.h
  br i1 %i.i, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.j = load i64, ptr %i.h, align 8
  %i.k = add i64 %i.j, 1
  tail call void @_ZdlPvm(ptr noundef %i.g, i64 noundef %i.k) #23
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1
  ret void
}

; Function Attrs: mustprogress uwtable
define hidden void @_ZN6Assimp3MDL8HalfLife19UniqueNameGenerator11make_uniqueERSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS9_EE(ptr noundef nonnull align 8 dereferenceable(64) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) local_unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %i.b = alloca i64, align 8                      ; 6 uses
  %i.c = alloca i64, align 8                      ; 6 uses
  %2 = alloca %"class.std::map", align 8          ; 12 uses
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 14 uses
  %4 = alloca %class.anon, align 8                ; 6 uses
  %5 = alloca %class.anon.6, align 8              ; 8 uses
  %6 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %7 = alloca %"struct.std::pair.12", align 8     ; 17 uses
  %8 = alloca %struct.DuplicateInfo, align 8      ; 20 uses
  %9 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  %10 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  %11 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #22
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 9 uses
  store i32 0, ptr %i.d, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 5 uses
  store ptr null, ptr %i.e, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 24 ; 2 uses
  store ptr %i.d, ptr %i.f, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 32
  store ptr %i.d, ptr %i.g, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %2, i64 40 ; 3 uses
  store i64 0, ptr %i.h, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #22
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 32
  call void @llvm.experimental.noalias.scope.decl(metadata !3)
  %i.j = load ptr, ptr %0, align 8, !noalias !3
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.l = load i64, ptr %i.k, align 8, !noalias !3 ; 3 uses
  %i.m = load ptr, ptr %i.i, align 8, !noalias !3
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.o = load i64, ptr %i.n, align 8, !noalias !3 ; 3 uses
  %i.p = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 8 uses
  store ptr %i.p, ptr %3, align 8, !alias.scope !6
  %i.q = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 5 uses
  store i64 0, ptr %i.q, align 8, !alias.scope !6
  store i8 0, ptr %i.p, align 8, !alias.scope !6
  %i.r = add i64 %i.o, %i.l
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7reserveEm(ptr noundef nonnull align 8 dereferenceable(32) %3, i64 noundef %i.r)
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.s = load i64, ptr %i.q, align 8, !alias.scope !6
  %i.t = sub i64 4611686018427387903, %i.s
  %i.u = icmp ult i64 %i.t, %i.l
  br i1 %i.u, label %.invoke.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i: ; preds = %bb.b
  %i.v = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef %i.j, i64 noundef %i.l)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.i.i unwind label %bb.c ; 0 uses

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i
  %i.w = load i64, ptr %i.q, align 8, !alias.scope !6
  %i.x = sub i64 4611686018427387903, %i.w
  %i.y = icmp ult i64 %i.x, %i.o
  br i1 %i.y, label %.invoke.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i10.i.i

.invoke.i.i:                                      ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.i.i, %bb.b
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.4) #21
          to label %.cont.i.i unwind label %bb.c

.cont.i.i:                                        ; preds = %.invoke.i.i
  unreachable

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i10.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.i.i
  %i.z = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef %i.m, i64 noundef %i.o)
          to label %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EERKS8_SA_.exit unwind label %bb.c ; 0 uses

bb.c:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i10.i.i, %.invoke.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i, %bb.a
  %i.aa = landingpad { ptr, i32 }
          cleanup
  %i.ab = load ptr, ptr %3, align 8, !alias.scope !6 ; 2 uses
  %i.ac = icmp eq ptr %i.ab, %i.p
  br i1 %i.ac, label %_ZNSt6vectorImSaImEED2Ev.exit120.thread, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %bb.c
  %i.ad = load i64, ptr %i.p, align 8, !alias.scope !6
  %i.ae = add i64 %i.ad, 1
  call void @_ZdlPvm(ptr noundef %i.ab, i64 noundef %i.ae) #23
  br label %_ZNSt6vectorImSaImEED2Ev.exit120.thread

_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EERKS8_SA_.exit: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i10.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #22
  store ptr %0, ptr %4, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #22
  store ptr %2, ptr %5, align 8
  %i.af = getelementptr inbounds nuw i8, ptr %5, i64 8
  store ptr %4, ptr %i.af, align 8
  %i.ag = getelementptr inbounds nuw i8, ptr %5, i64 16
  store ptr %1, ptr %i.ag, align 8
  %i.ah = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.ai = load ptr, ptr %i.ah, align 8
  %i.aj = load ptr, ptr %1, align 8               ; 2 uses
  %.not291 = icmp eq ptr %i.ai, %i.aj
  br i1 %.not291, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EERKS8_SA_.exit
  %i.ak = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 5 uses
  %i.al = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %8, i64 8 ; 3 uses
  %i.an = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 3 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 5 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 3 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %7, i64 32 ; 15 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %7, i64 40 ; 4 uses
  %i.as = getelementptr inbounds nuw i8, ptr %7, i64 48 ; 3 uses
  %i.at = getelementptr inbounds nuw i8, ptr %7, i64 56 ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %8, i64 24
  br label %bb.d

._crit_edge.loopexit:                             ; preds = %_ZNSt6vectorImSaImEE9push_backERKm.exit
  %i.av = icmp eq ptr %.sroa.9.2, %.sroa.0150.3
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EERKS8_SA_.exit
  %.sroa.14.0.lcssa = phi ptr [ null, %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EERKS8_SA_.exit ], [ %.sroa.14.3.a, %._crit_edge.loopexit ] ; 4 uses
  %.sroa.9.0.lcssa = phi i1 [ true, %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EERKS8_SA_.exit ], [ %i.av, %._crit_edge.loopexit ]
  %.sroa.0150.0.lcssa = phi ptr [ null, %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EERKS8_SA_.exit ], [ %.sroa.0150.3, %._crit_edge.loopexit ] ; 6 uses
  %.sroa.16.0.lcssa = phi ptr [ null, %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EERKS8_SA_.exit ], [ %.sroa.16.1, %._crit_edge.loopexit ] ; 4 uses
  %.sroa.10.0.lcssa = phi ptr [ null, %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EERKS8_SA_.exit ], [ %.sroa.10.1, %._crit_edge.loopexit ] ; 3 uses
  %.sroa.0159.0.lcssa = phi ptr [ null, %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EERKS8_SA_.exit ], [ %.sroa.0159.1, %._crit_edge.loopexit ] ; 9 uses
  %.val = load ptr, ptr %i.f, align 8             ; 2 uses
  %.not187279 = icmp eq ptr %.val, %i.d
  br i1 %.not187279, label %._crit_edge283, label %.lr.ph282

.lr.ph282:                                        ; preds = %._crit_edge
  %i.aw = getelementptr inbounds nuw i8, ptr %9, i64 16 ; 8 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %9, i64 8 ; 5 uses
  br label %bb.av

bb.d:                                             ; preds = %.lr.ph, %_ZNSt6vectorImSaImEE9push_backERKm.exit
  %i.ay = phi ptr [ %i.aj, %.lr.ph ], [ %i.hm, %_ZNSt6vectorImSaImEE9push_backERKm.exit ]
  %storemerge267 = phi i64 [ 0, %.lr.ph ], [ %i.hk, %_ZNSt6vectorImSaImEE9push_backERKm.exit ] ; 9 uses
  %.sroa.0159.0265 = phi ptr [ null, %.lr.ph ], [ %.sroa.0159.1, %_ZNSt6vectorImSaImEE9push_backERKm.exit ] ; 11 uses
  %.sroa.10.0264 = phi ptr [ null, %.lr.ph ], [ %.sroa.10.1, %_ZNSt6vectorImSaImEE9push_backERKm.exit ] ; 8 uses
  %.sroa.16.0262 = phi ptr [ null, %.lr.ph ], [ %.sroa.16.1, %_ZNSt6vectorImSaImEE9push_backERKm.exit ] ; 10 uses
  %.sroa.0150.0261 = phi ptr [ null, %.lr.ph ], [ %.sroa.0150.3, %_ZNSt6vectorImSaImEE9push_backERKm.exit ] ; 12 uses
  %.sroa.9.0260 = phi ptr [ null, %.lr.ph ], [ %.sroa.9.2, %_ZNSt6vectorImSaImEE9push_backERKm.exit ] ; 9 uses
  %.sroa.14.0259 = phi ptr [ null, %.lr.ph ], [ %.sroa.14.3.a, %_ZNSt6vectorImSaImEE9push_backERKm.exit ] ; 8 uses
  %i.az = getelementptr inbounds nuw [32 x i8], ptr %i.ay, i64 %storemerge267
  %i.ba = call noundef i64 @_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE17find_first_not_ofEcm(ptr noundef nonnull align 8 dereferenceable(32) %i.az, i8 noundef signext 32, i64 noundef 0) #22
  %i.bb = icmp eq i64 %i.ba, -1
  br i1 %i.bb, label %bb.e, label %bb.k

bb.e:                                             ; preds = %bb.d
  %.not.i = icmp eq ptr %.sroa.10.0264, %.sroa.16.0262
  br i1 %.not.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  store i64 %storemerge267, ptr %.sroa.10.0264, align 8
  %i.bc = getelementptr inbounds nuw i8, ptr %.sroa.10.0264, i64 8
  br label %_ZNSt6vectorImSaImEE9push_backERKm.exit

bb.g:                                             ; preds = %bb.e
  %i.bd = ptrtoint ptr %.sroa.10.0264 to i64
  %i.be = ptrtoint ptr %.sroa.0159.0265 to i64
  %i.bf = sub i64 %i.bd, %i.be                    ; 6 uses
  %i.bg = icmp eq i64 %i.bf, 9223372036854775800
  br i1 %i.bg, label %bb.h, label %_ZNKSt6vectorImSaImEE12_M_check_lenEmPKc.exit.i.i

bb.h:                                             ; preds = %bb.g
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.6) #21
          to label %.noexc unwind label %.loopexit.split-lp

.noexc:                                           ; preds = %bb.h
  unreachable

_ZNKSt6vectorImSaImEE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.g
  %i.bh = ashr exact i64 %i.bf, 3                 ; 3 uses
  %.sroa.speculated.i.i.i = call i64 @llvm.umax.i64(i64 %i.bh, i64 1)
  %i.bi = add nsw i64 %.sroa.speculated.i.i.i, %i.bh ; 2 uses
  %i.bj = icmp ult i64 %i.bi, %i.bh
  %i.bk = call i64 @llvm.umin.i64(i64 %i.bi, i64 1152921504606846975)
  %i.bl = select i1 %i.bj, i64 1152921504606846975, i64 %i.bk ; 3 uses
  %.not.i.i.i = icmp ne i64 %i.bl, 0
  call void @llvm.assume(i1 %.not.i.i.i)
  %i.bm = shl nuw nsw i64 %i.bl, 3
  %i.bn = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.bm) #24
          to label %.noexc43 unwind label %.loopexit193 ; 4 uses

.noexc43:                                         ; preds = %_ZNKSt6vectorImSaImEE12_M_check_lenEmPKc.exit.i.i
  %i.bo = getelementptr inbounds i8, ptr %i.bn, i64 %i.bf ; 2 uses
  store i64 %storemerge267, ptr %i.bo, align 8
  %i.bp = icmp sgt i64 %i.bf, 0
  br i1 %i.bp, label %bb.i, label %_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit16.i.i

bb.i:                                             ; preds = %.noexc43
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.bn, ptr align 8 %.sroa.0159.0265, i64 %i.bf, i1 false)
  br label %_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit16.i.i

_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit16.i.i: ; preds = %bb.i, %.noexc43
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bo, i64 8
  %.not.i17.i.i = icmp eq ptr %.sroa.0159.0265, null
  br i1 %.not.i17.i.i, label %_ZNSt6vectorImSaImEE17_M_realloc_insertIJRKmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i, label %bb.j

bb.j:                                             ; preds = %_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit16.i.i
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0159.0265, i64 noundef %i.bf) #23
  br label %_ZNSt6vectorImSaImEE17_M_realloc_insertIJRKmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i

_ZNSt6vectorImSaImEE17_M_realloc_insertIJRKmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i: ; preds = %bb.j, %_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit16.i.i
  %i.br = getelementptr inbounds nuw [8 x i8], ptr %i.bn, i64 %i.bl
  br label %_ZNSt6vectorImSaImEE9push_backERKm.exit

.loopexit193:                                     ; preds = %bb.at, %_ZNKSt6vectorImSaImEE12_M_check_lenEmPKc.exit.i.i, %_ZNKSt6vectorImSaImEE12_M_check_lenEmPKc.exit.i.i48, %bb.au
  %.sroa.16.0262.lcssa319 = phi ptr [ %.sroa.16.0262, %bb.at ], [ %.sroa.10.0264, %_ZNKSt6vectorImSaImEE12_M_check_lenEmPKc.exit.i.i ], [ %.sroa.16.0262, %_ZNKSt6vectorImSaImEE12_M_check_lenEmPKc.exit.i.i48 ], [ %.sroa.16.0262, %bb.au ]
  %.sroa.14.1.ph = phi ptr [ %.sroa.14.2.a, %bb.at ], [ %.sroa.14.0259, %_ZNKSt6vectorImSaImEE12_M_check_lenEmPKc.exit.i.i ], [ %.sroa.9.0260, %_ZNKSt6vectorImSaImEE12_M_check_lenEmPKc.exit.i.i48 ], [ %.sroa.14.2.a, %bb.au ]
  %.sroa.0150.1.ph = phi ptr [ %.sroa.0150.2, %bb.at ], [ %.sroa.0150.0261, %_ZNKSt6vectorImSaImEE12_M_check_lenEmPKc.exit.i.i ], [ %.sroa.0150.0261, %_ZNKSt6vectorImSaImEE12_M_check_lenEmPKc.exit.i.i48 ], [ %.sroa.0150.2, %bb.au ]
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %bb.by

.loopexit.split-lp:                               ; preds = %bb.h, %bb.u
  %.sroa.16.0262325 = phi ptr [ %.sroa.10.0264, %bb.h ], [ %.sroa.16.0262, %bb.u ]
  %.sroa.14.0259309 = phi ptr [ %.sroa.14.0259, %bb.h ], [ %.sroa.9.0260, %bb.u ]
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.by

bb.k:                                             ; preds = %bb.d
  %i.bs = load ptr, ptr %1, align 8
  %i.bt = getelementptr inbounds nuw [32 x i8], ptr %i.bs, i64 %storemerge267 ; 3 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bt, i64 8 ; 2 uses
  %i.bv = load i64, ptr %i.bu, align 8            ; 3 uses
  %i.bw = load i64, ptr %i.k, align 8
  %i.bx = icmp eq i64 %i.bv, %i.bw
  br i1 %i.bx, label %bb.l, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread170

bb.l:                                             ; preds = %bb.k
  %i.by = icmp eq i64 %i.bv, 0
  br i1 %i.by, label %.critedge.thread, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit: ; preds = %bb.l
  %i.bz = load ptr, ptr %0, align 8
  %i.ca = load ptr, ptr %i.bt, align 8
  %bcmp.i = call i32 @bcmp(ptr %i.ca, ptr %i.bz, i64 %i.bv)
  %i.cb = icmp eq i32 %bcmp.i, 0
  br i1 %i.cb, label %.critedge.thread, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread170

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread170: ; preds = %bb.k, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #22
  %i.cc = load i64, ptr %i.q, align 8
  call void @llvm.experimental.noalias.scope.decl(metadata !9)
  %i.cd = load i64, ptr %i.bu, align 8, !noalias !9
  store ptr %i.ak, ptr %6, align 8, !alias.scope !9
  %i.ce = load ptr, ptr %i.bt, align 8, !noalias !9 ; 2 uses
  %spec.select.i.i.i = call noundef i64 @llvm.umin.i64(i64 %i.cc, i64 %i.cd) ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #22, !noalias !9
  store i64 %spec.select.i.i.i, ptr %i.c, align 8, !noalias !9
  %i.cf = icmp ugt i64 %spec.select.i.i.i, 15
  br i1 %i.cf, label %.noexc10.i.i, label %._crit_edge.i.i.i

.noexc10.i.i:                                     ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread170
  %i.cg = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef nonnull align 8 dereferenceable(8) %i.c, i64 noundef 0)
          to label %.noexc44 unwind label %bb.x   ; 2 uses

.noexc44:                                         ; preds = %.noexc10.i.i
  store ptr %i.cg, ptr %6, align 8, !alias.scope !9
  %i.ch = load i64, ptr %i.c, align 8, !noalias !9
  store i64 %i.ch, ptr %i.ak, align 8, !alias.scope !9
  br label %._crit_edge.i.i.i

._crit_edge.i.i.i:                                ; preds = %.noexc44, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread170
  %i.ci = phi ptr [ %i.cg, %.noexc44 ], [ %i.ak, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread170 ] ; 2 uses
  switch i64 %spec.select.i.i.i, label %bb.n [
    i64 1, label %bb.m
    i64 0, label %bb.o
  ]

bb.m:                                             ; preds = %._crit_edge.i.i.i
  %i.cj = load i8, ptr %i.ce, align 1
  store i8 %i.cj, ptr %i.ci, align 1
  br label %bb.o

bb.n:                                             ; preds = %._crit_edge.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.ci, ptr align 1 %i.ce, i64 %spec.select.i.i.i, i1 false)
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m, %._crit_edge.i.i.i
  %i.ck = load i64, ptr %i.c, align 8, !noalias !9 ; 2 uses
  store i64 %i.ck, ptr %i.al, align 8, !alias.scope !9
  %i.cl = load ptr, ptr %6, align 8, !alias.scope !9
  %i.cm = getelementptr inbounds nuw i8, ptr %i.cl, i64 %i.ck
  store i8 0, ptr %i.cm, align 1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #22, !noalias !9
  %i.cn = load i64, ptr %i.al, align 8            ; 4 uses
  %i.co = load i64, ptr %i.q, align 8
  %i.cp = icmp eq i64 %i.cn, %i.co
  br i1 %i.cp, label %bb.p, label %._crit_edge340

._crit_edge340:                                   ; preds = %bb.o
  %.pre = load ptr, ptr %6, align 8
  br label %bb.r

bb.p:                                             ; preds = %bb.o
  %i.cq = icmp eq i64 %i.cn, 0
  %.pre341 = load ptr, ptr %6, align 8            ; 3 uses
  br i1 %i.cq, label %bb.r, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.cr = load ptr, ptr %3, align 8
  %bcmp.i45 = call i32 @bcmp(ptr %.pre341, ptr %i.cr, i64 %i.cn)
  %i.cs = icmp eq i32 %bcmp.i45, 0
  br label %bb.r

bb.r:                                             ; preds = %._crit_edge340, %bb.p, %bb.q
  %i.ct = phi ptr [ %.pre341, %bb.p ], [ %.pre341, %bb.q ], [ %.pre, %._crit_edge340 ] ; 2 uses
  %.ph = phi i1 [ true, %bb.p ], [ %i.cs, %bb.q ], [ false, %._crit_edge340 ]
  %i.cu = icmp eq ptr %i.ct, %i.ak
  br i1 %i.cu, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i: ; preds = %bb.r
  %i.cv = icmp ult i64 %i.cn, 16
  call void @llvm.assume(i1 %i.cv)
  br label %.critedge

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.r
  %i.cw = load i64, ptr %i.ak, align 8
  %i.cx = add i64 %i.cw, 1
  call void @_ZdlPvm(ptr noundef %i.ct, i64 noundef %i.cx) #23
  br label %.critedge

.critedge:                                        ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #22
  br i1 %.ph, label %.critedge.thread, label %_ZNSt6vectorImSaImEE9push_backERKm.exit56

.critedge.thread:                                 ; preds = %bb.l, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit, %.critedge
  %.not.i47 = icmp eq ptr %.sroa.9.0260, %.sroa.14.0259
  br i1 %.not.i47, label %bb.t, label %bb.s

bb.s:                                             ; preds = %.critedge.thread
  store i64 %storemerge267, ptr %.sroa.9.0260, align 8
  %i.cy = getelementptr inbounds nuw i8, ptr %.sroa.9.0260, i64 8
  br label %_ZNSt6vectorImSaImEE9push_backERKm.exit56

bb.t:                                             ; preds = %.critedge.thread
  %i.cz = ptrtoint ptr %.sroa.9.0260 to i64
  %i.da = ptrtoint ptr %.sroa.0150.0261 to i64
  %i.db = sub i64 %i.cz, %i.da                    ; 6 uses
  %i.dc = icmp eq i64 %i.db, 9223372036854775800
  br i1 %i.dc, label %bb.u, label %_ZNKSt6vectorImSaImEE12_M_check_lenEmPKc.exit.i.i48

bb.u:                                             ; preds = %bb.t
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.6) #21
          to label %.noexc54 unwind label %.loopexit.split-lp

.noexc54:                                         ; preds = %bb.u
  unreachable

_ZNKSt6vectorImSaImEE12_M_check_lenEmPKc.exit.i.i48: ; preds = %bb.t
  %i.dd = ashr exact i64 %i.db, 3                 ; 3 uses
  %.sroa.speculated.i.i.i49 = call i64 @llvm.umax.i64(i64 %i.dd, i64 1)
  %i.de = add nsw i64 %.sroa.speculated.i.i.i49, %i.dd ; 2 uses
  %i.df = icmp ult i64 %i.de, %i.dd
  %i.dg = call i64 @llvm.umin.i64(i64 %i.de, i64 1152921504606846975)
  %i.dh = select i1 %i.df, i64 1152921504606846975, i64 %i.dg ; 3 uses
  %.not.i.i.i50 = icmp ne i64 %i.dh, 0
  call void @llvm.assume(i1 %.not.i.i.i50)
  %i.di = shl nuw nsw i64 %i.dh, 3
  %i.dj = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.di) #24
          to label %.noexc55 unwind label %.loopexit193 ; 4 uses

.noexc55:                                         ; preds = %_ZNKSt6vectorImSaImEE12_M_check_lenEmPKc.exit.i.i48
  %i.dk = getelementptr inbounds i8, ptr %i.dj, i64 %i.db ; 2 uses
  store i64 %storemerge267, ptr %i.dk, align 8
  %i.dl = icmp sgt i64 %i.db, 0
  br i1 %i.dl, label %bb.v, label %_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit16.i.i51

bb.v:                                             ; preds = %.noexc55
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.dj, ptr align 8 %.sroa.0150.0261, i64 %i.db, i1 false)
  br label %_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit16.i.i51

_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit16.i.i51: ; preds = %bb.v, %.noexc55
  %i.dm = getelementptr inbounds nuw i8, ptr %i.dk, i64 8
  %.not.i17.i.i52 = icmp eq ptr %.sroa.0150.0261, null
  br i1 %.not.i17.i.i52, label %_ZNSt6vectorImSaImEE17_M_realloc_insertIJRKmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i53, label %bb.w

bb.w:                                             ; preds = %_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit16.i.i51
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0150.0261, i64 noundef %i.db) #23
  br label %_ZNSt6vectorImSaImEE17_M_realloc_insertIJRKmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i53

_ZNSt6vectorImSaImEE17_M_realloc_insertIJRKmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i53: ; preds = %bb.w, %_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit16.i.i51
  %i.dn = getelementptr inbounds nuw [8 x i8], ptr %i.dj, i64 %i.dh
  br label %_ZNSt6vectorImSaImEE9push_backERKm.exit56

bb.x:                                             ; preds = %.noexc10.i.i
  %i.do = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #22
  br label %bb.by

_ZNSt6vectorImSaImEE9push_backERKm.exit56:        ; preds = %_ZNSt6vectorImSaImEE17_M_realloc_insertIJRKmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i53, %bb.s, %.critedge
  %.sroa.14.2.a = phi ptr [ %.sroa.14.0259, %.critedge ], [ %i.dn, %_ZNSt6vectorImSaImEE17_M_realloc_insertIJRKmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i53 ], [ %.sroa.14.0259, %bb.s ] ; 5 uses
  %.sroa.9.1 = phi ptr [ %.sroa.9.0260, %.critedge ], [ %i.dm, %_ZNSt6vectorImSaImEE17_M_realloc_insertIJRKmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i53 ], [ %i.cy, %bb.s ] ; 2 uses
  %.sroa.0150.2 = phi ptr [ %.sroa.0150.0261, %.critedge ], [ %i.dj, %_ZNSt6vectorImSaImEE17_M_realloc_insertIJRKmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i53 ], [ %.sroa.0150.0261, %bb.s ] ; 5 uses
  %i.dp = load ptr, ptr %1, align 8
  %i.dq = getelementptr inbounds nuw [32 x i8], ptr %i.dp, i64 %storemerge267 ; 4 uses
  %.val30 = load ptr, ptr %i.dq, align 8          ; 2 uses
  %i.dr = getelementptr i8, ptr %i.dq, i64 8      ; 2 uses
  %.val31 = load i64, ptr %i.dr, align 8          ; 4 uses
  %.val.i.i = load ptr, ptr %i.e, align 8         ; 2 uses
  %.not2.i.i.i = icmp eq ptr %.val.i.i, null
  br i1 %.not2.i.i.i, label %_ZNKSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEZN6Assimp3MDL8HalfLife19UniqueNameGenerator11make_uniqueERSt6vectorIS5_SaIS5_EEE13DuplicateInfoSt4lessIS5_ESaISt4pairIKS5_SE_EEE5countERSI_.exit.thread, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %_ZNSt6vectorImSaImEE9push_backERKm.exit56, %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i
  %.04.i.i.i = phi ptr [ %.1.i.i.i, %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i ], [ %.val.i.i, %_ZNSt6vectorImSaImEE9push_backERKm.exit56 ] ; 6 uses
  %.083.i.i.i = phi ptr [ %.19.i.i.i, %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i ], [ %i.d, %_ZNSt6vectorImSaImEE9push_backERKm.exit56 ] ; 3 uses
  %i.ds = getelementptr inbounds nuw i8, ptr %.04.i.i.i, i64 40
  %i.dt = load i64, ptr %i.ds, align 8            ; 2 uses
  %.sroa.speculated.i.i.i.i.i.i = call i64 @llvm.umin.i64(i64 %.val31, i64 %i.dt) ; 2 uses
  %i.du = icmp eq i64 %.sroa.speculated.i.i.i.i.i.i, 0
  br i1 %i.du, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i
  %i.dv = getelementptr inbounds nuw i8, ptr %.04.i.i.i, i64 32
  %i.dw = load ptr, ptr %i.dv, align 8
  %i.dx = call i32 @memcmp(ptr noundef %i.dw, ptr noundef readonly %.val30, i64 noundef %.sroa.speculated.i.i.i.i.i.i) #22 ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq i32 %i.dx, 0
  br i1 %.not.i.i.i.i.i.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i, label %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i, %.lr.ph.i.i.i
  %i.dy = sub i64 %i.dt, %.val31
  %spec.select7.i.i.i.i.i.i.i = call i64 @llvm.smax.i64(i64 %i.dy, i64 -2147483648)
  %.08.i.i.i.i.i.i.i = call i64 @llvm.smin.i64(i64 %spec.select7.i.i.i.i.i.i.i, i64 2147483647)
  %.0.i6.i.i.i.i.i.i = trunc nsw i64 %.08.i.i.i.i.i.i.i to i32
  br label %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i

_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i
  %.0.i.i.i.i.i.i = phi i32 [ %i.dx, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i ], [ %.0.i6.i.i.i.i.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i ]
  %i.dz = icmp slt i32 %.0.i.i.i.i.i.i, 0         ; 4 uses
  %.19.i.i.i = select i1 %i.dz, ptr %.083.i.i.i, ptr %.04.i.i.i ; 2 uses
  %.1.in.v.i.i.i = select i1 %i.dz, i64 24, i64 16
  %.1.in.i.i.i = getelementptr i8, ptr %.04.i.i.i, i64 %.1.in.v.i.i.i
  %.1.i.i.i = load ptr, ptr %.1.in.i.i.i, align 8 ; 2 uses
  %.not.i.i.i57 = icmp eq ptr %.1.i.i.i, null
  br i1 %.not.i.i.i57, label %_ZNKSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_ZN6Assimp3MDL8HalfLife19UniqueNameGenerator11make_uniqueERSt6vectorIS5_SaIS5_EEE13DuplicateInfoESt10_Select1stISH_ESt4lessIS5_ESaISH_EE14_M_lower_boundEPKSt13_Rb_tree_nodeISH_EPKSt18_Rb_tree_node_baseRS7_.exit.i.i, label %.lr.ph.i.i.i, !llvm.loop !12

_ZNKSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_ZN6Assimp3MDL8HalfLife19UniqueNameGenerator11make_uniqueERSt6vectorIS5_SaIS5_EEE13DuplicateInfoESt10_Select1stISH_ESt4lessIS5_ESaISH_EE14_M_lower_boundEPKSt13_Rb_tree_nodeISH_EPKSt18_Rb_tree_node_baseRS7_.exit.i.i: ; preds = %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i
  %i.ea = icmp eq ptr %.19.i.i.i, %i.d
  br i1 %i.ea, label %_ZNKSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEZN6Assimp3MDL8HalfLife19UniqueNameGenerator11make_uniqueERSt6vectorIS5_SaIS5_EEE13DuplicateInfoSt4lessIS5_ESaISt4pairIKS5_SE_EEE5countERSI_.exit.thread, label %bb.y

bb.y:                                             ; preds = %_ZNKSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_ZN6Assimp3MDL8HalfLife19UniqueNameGenerator11make_uniqueERSt6vectorIS5_SaIS5_EEE13DuplicateInfoESt10_Select1stISH_ESt4lessIS5_ESaISH_EE14_M_lower_boundEPKSt13_Rb_tree_nodeISH_EPKSt18_Rb_tree_node_baseRS7_.exit.i.i
  %.19.i.i.i.sroa.sel.v.sroa.sel.v.sroa.sel.v = select i1 %i.dz, ptr %.083.i.i.i, ptr %.04.i.i.i
  %.19.i.i.i.sroa.sel.v.sroa.sel.v.sroa.sel = getelementptr inbounds nuw i8, ptr %.19.i.i.i.sroa.sel.v.sroa.sel.v.sroa.sel.v, i64 40
  %i.eb = load i64, ptr %.19.i.i.i.sroa.sel.v.sroa.sel.v.sroa.sel, align 8 ; 2 uses
  %.sroa.speculated.i.i.i.i.i = call i64 @llvm.umin.i64(i64 %i.eb, i64 %.val31) ; 2 uses
  %i.ec = icmp eq i64 %.sroa.speculated.i.i.i.i.i, 0
  br i1 %i.ec, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i: ; preds = %bb.y
  %.19.i.i.i.sroa.sel149.v.sroa.sel.v.sroa.sel.v = select i1 %i.dz, ptr %.083.i.i.i, ptr %.04.i.i.i
  %.19.i.i.i.sroa.sel149.v.sroa.sel.v.sroa.sel = getelementptr inbounds nuw i8, ptr %.19.i.i.i.sroa.sel149.v.sroa.sel.v.sroa.sel.v, i64 32
  %i.ed = load ptr, ptr %.19.i.i.i.sroa.sel149.v.sroa.sel.v.sroa.sel, align 8
  %i.ee = call i32 @memcmp(ptr noundef readonly %.val30, ptr noundef %i.ed, i64 noundef %.sroa.speculated.i.i.i.i.i) #22 ; 2 uses
  %.not.i.i.i.i.i = icmp eq i32 %i.ee, 0
  br i1 %.not.i.i.i.i.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i, label %_ZNKSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEZN6Assimp3MDL8HalfLife19UniqueNameGenerator11make_uniqueERSt6vectorIS5_SaIS5_EEE13DuplicateInfoSt4lessIS5_ESaISt4pairIKS5_SE_EEE5countERSI_.exit

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i, %bb.y
  %i.ef = sub i64 %.val31, %i.eb
  %spec.select7.i.i.i.i.i.i = call i64 @llvm.smax.i64(i64 %i.ef, i64 -2147483648)
  %.08.i.i.i.i.i.i = call i64 @llvm.smin.i64(i64 %spec.select7.i.i.i.i.i.i, i64 2147483647)
  %.0.i6.i.i.i.i.i = trunc nsw i64 %.08.i.i.i.i.i.i to i32
  br label %_ZNKSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEZN6Assimp3MDL8HalfLife19UniqueNameGenerator11make_uniqueERSt6vectorIS5_SaIS5_EEE13DuplicateInfoSt4lessIS5_ESaISt4pairIKS5_SE_EEE5countERSI_.exit

_ZNKSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEZN6Assimp3MDL8HalfLife19UniqueNameGenerator11make_uniqueERSt6vectorIS5_SaIS5_EEE13DuplicateInfoSt4lessIS5_ESaISt4pairIKS5_SE_EEE5countERSI_.exit: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i
  %.0.i.i.i.i.i = phi i32 [ %i.ee, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i ], [ %.0.i6.i.i.i.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i ]
  %i.eg = icmp slt i32 %.0.i.i.i.i.i, 0
  br i1 %i.eg, label %_ZNKSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEZN6Assimp3MDL8HalfLife19UniqueNameGenerator11make_uniqueERSt6vectorIS5_SaIS5_EEE13DuplicateInfoSt4lessIS5_ESaISt4pairIKS5_SE_EEE5countERSI_.exit.thread, label %bb.at

_ZNKSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEZN6Assimp3MDL8HalfLife19UniqueNameGenerator11make_uniqueERSt6vectorIS5_SaIS5_EEE13DuplicateInfoSt4lessIS5_ESaISt4pairIKS5_SE_EEE5countERSI_.exit.thread: ; preds = %_ZNKSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_ZN6Assimp3MDL8HalfLife19UniqueNameGenerator11make_uniqueERSt6vectorIS5_SaIS5_EEE13DuplicateInfoESt10_Select1stISH_ESt4lessIS5_ESaISH_EE14_M_lower_boundEPKSt13_Rb_tree_nodeISH_EPKSt18_Rb_tree_node_baseRS7_.exit.i.i, %_ZNSt6vectorImSaImEE9push_backERKm.exit56, %_ZNKSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEZN6Assimp3MDL8HalfLife19UniqueNameGenerator11make_uniqueERSt6vectorIS5_SaIS5_EEE13DuplicateInfoSt4lessIS5_ESaISt4pairIKS5_SE_EEE5countERSI_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #22
  store ptr %8, ptr %i.am, align 8
  store ptr %8, ptr %8, align 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.an, i8 0, i64 16, i1 false)
  store ptr %i.ao, ptr %7, align 8
  %i.eh = load ptr, ptr %i.dq, align 8            ; 2 uses
  %i.ei = load i64, ptr %i.dr, align 8            ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #22
  store i64 %i.ei, ptr %i.b, align 8
  %i.ej = icmp ugt i64 %i.ei, 15
  br i1 %i.ej, label %.noexc.i.i, label %._crit_edge.i.i.i58

.noexc.i.i:                                       ; preds = %_ZNKSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEZN6Assimp3MDL8HalfLife19UniqueNameGenerator11make_uniqueERSt6vectorIS5_SaIS5_EEE13DuplicateInfoSt4lessIS5_ESaISt4pairIKS5_SE_EEE5countERSI_.exit.thread
  %i.ek = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(64) %7, ptr noundef nonnull align 8 dereferenceable(8) %i.b, i64 noundef 0)
          to label %.noexc59 unwind label %bb.aq  ; 2 uses

.noexc59:                                         ; preds = %.noexc.i.i
  store ptr %i.ek, ptr %7, align 8
  %i.el = load i64, ptr %i.b, align 8
  store i64 %i.el, ptr %i.ao, align 8
  br label %._crit_edge.i.i.i58

._crit_edge.i.i.i58:                              ; preds = %.noexc59, %_ZNKSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEZN6Assimp3MDL8HalfLife19UniqueNameGenerator11make_uniqueERSt6vectorIS5_SaIS5_EEE13DuplicateInfoSt4lessIS5_ESaISt4pairIKS5_SE_EEE5countERSI_.exit.thread
  %i.em = phi ptr [ %i.ek, %.noexc59 ], [ %i.ao, %_ZNKSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEZN6Assimp3MDL8HalfLife19UniqueNameGenerator11make_uniqueERSt6vectorIS5_SaIS5_EEE13DuplicateInfoSt4lessIS5_ESaISt4pairIKS5_SE_EEE5countERSI_.exit.thread ] ; 2 uses
  switch i64 %i.ei, label %bb.aa [
    i64 1, label %bb.z
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i
  ]

bb.z:                                             ; preds = %._crit_edge.i.i.i58
  %i.en = load i8, ptr %i.eh, align 1
  store i8 %i.en, ptr %i.em, align 1
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i

bb.aa:                                            ; preds = %._crit_edge.i.i.i58
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.em, ptr align 1 %i.eh, i64 %i.ei, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i: ; preds = %bb.aa, %bb.z, %._crit_edge.i.i.i58
  %i.eo = load i64, ptr %i.b, align 8             ; 2 uses
  store i64 %i.eo, ptr %i.ap, align 8
  %i.ep = load ptr, ptr %7, align 8
  %i.eq = getelementptr inbounds nuw i8, ptr %i.ep, i64 %i.eo
  store i8 0, ptr %i.eq, align 1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #22
  %i.er = load ptr, ptr %8, align 8               ; 2 uses
  store ptr %i.er, ptr %i.aq, align 8
  %i.es = load ptr, ptr %i.am, align 8            ; 2 uses
  store ptr %i.es, ptr %i.ar, align 8
  %i.et = load i64, ptr %i.an, align 8
  store i64 %i.et, ptr %i.as, align 8
  %i.eu = icmp eq ptr %i.er, %8
  br i1 %i.eu, label %bb.ab, label %bb.ac

bb.ab:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i
  store ptr %i.aq, ptr %i.ar, align 8
  store ptr %i.aq, ptr %i.aq, align 8
  br label %bb.ad

bb.ac:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i
  store ptr %i.aq, ptr %i.es, align 8
  %i.ev = load ptr, ptr %i.aq, align 8
  %i.ew = getelementptr inbounds nuw i8, ptr %i.ev, i64 8
  store ptr %i.aq, ptr %i.ew, align 8
  store ptr %8, ptr %i.am, align 8
  store ptr %8, ptr %8, align 8
  store i64 0, ptr %i.an, align 8
  br label %bb.ad

bb.ad:                                            ; preds = %bb.ac, %bb.ab
  %i.ex = load i64, ptr %i.au, align 8
  store i64 %i.ex, ptr %i.at, align 8
  %.val.i.i60 = load ptr, ptr %7, align 8         ; 2 uses
  %.val5.i.i = load i64, ptr %i.ap, align 8       ; 3 uses
  %i.ey = call fastcc { ptr, ptr } @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_ZN6Assimp3MDL8HalfLife19UniqueNameGenerator11make_uniqueERSt6vectorIS5_SaIS5_EEE13DuplicateInfoESt10_Select1stISH_ESt4lessIS5_ESaISH_EE24_M_get_insert_unique_posERS7_(ptr noundef nonnull align 8 dereferenceable(48) %2, ptr %.val.i.i60, i64 %.val5.i.i) ; 2 uses
  %i.ez = extractvalue { ptr, ptr } %i.ey, 1      ; 5 uses
  %.not.i.i = icmp eq ptr %i.ez, null
  br i1 %.not.i.i, label %bb.ap, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.fa = extractvalue { ptr, ptr } %i.ey, 0
  %.not.i.i.i61 = icmp ne ptr %i.fa, null
  %i.fb = icmp eq ptr %i.ez, %i.d
  %or.cond.i.i.i = or i1 %.not.i.i.i61, %i.fb
  br i1 %or.cond.i.i.i, label %bb.ag, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.fc = getelementptr inbounds nuw i8, ptr %i.ez, i64 40
  %i.fd = load i64, ptr %i.fc, align 8            ; 2 uses
  %.sroa.speculated.i.i.i.i.i.i62 = call i64 @llvm.umin.i64(i64 %i.fd, i64 %.val5.i.i) ; 2 uses
  %i.fe = icmp eq i64 %.sroa.speculated.i.i.i.i.i.i62, 0
  br i1 %i.fe, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i67, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i63

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i63: ; preds = %bb.af
  %i.ff = getelementptr inbounds nuw i8, ptr %i.ez, i64 32
  %i.fg = load ptr, ptr %i.ff, align 8
  %i.fh = call i32 @memcmp(ptr noundef %.val.i.i60, ptr noundef %i.fg, i64 noundef %.sroa.speculated.i.i.i.i.i.i62) #22 ; 2 uses
  %.not.i.i.i.i.i.i64 = icmp eq i32 %i.fh, 0
  br i1 %.not.i.i.i.i.i.i64, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i67, label %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i65

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i67: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i63, %bb.af
  %i.fi = sub i64 %.val5.i.i, %i.fd
  %spec.select7.i.i.i.i.i.i.i68 = call i64 @llvm.smax.i64(i64 %i.fi, i64 -2147483648)
  %.08.i.i.i.i.i.i.i69 = call i64 @llvm.smin.i64(i64 %spec.select7.i.i.i.i.i.i.i68, i64 2147483647)
  %.0.i6.i.i.i.i.i.i70 = trunc nsw i64 %.08.i.i.i.i.i.i.i69 to i32
  br label %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i65

_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i65: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i67, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i63
  %.0.i.i.i.i.i.i66 = phi i32 [ %i.fh, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i63 ], [ %.0.i6.i.i.i.i.i.i70, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i67 ]
  %i.fj = icmp slt i32 %.0.i.i.i.i.i.i66, 0
  br label %bb.ag

bb.ag:                                            ; preds = %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i65, %bb.ae
  %i.fk = phi i1 [ %i.fj, %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i65 ], [ true, %bb.ae ]
  %i.fl = invoke noalias noundef nonnull dereferenceable(96) ptr @_Znwm(i64 noundef 96) #24
          to label %.noexc71 unwind label %bb.ar  ; 9 uses

.noexc71:                                         ; preds = %bb.ag
  %i.fm = getelementptr inbounds nuw i8, ptr %i.fl, i64 32 ; 4 uses
  %i.fn = getelementptr inbounds nuw i8, ptr %i.fl, i64 48 ; 3 uses
  store ptr %i.fn, ptr %i.fm, align 8
  %i.fo = load ptr, ptr %7, align 8               ; 2 uses
  %i.fp = load i64, ptr %i.ap, align 8            ; 4 uses
end_hunk_0
begin_hunk_1_@_ZN6Assimp3MDL8HalfLife19UniqueNameGenerator11make_uniqueERSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS9_EE:bb.a
  br i1 %.not.i88, label %bb.bl, label %bb.bk

bb.bk:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i87
  store ptr %i.jg, ptr %10, align 8
  store i64 %i.jv, ptr %i.ht, align 8
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit94

bb.bl:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i87, %.thread.i93
  store ptr %i.ht, ptr %10, align 8
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit94

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit94: ; preds = %bb.bg, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i90, %bb.bk, %bb.bl
  %i.jz = phi ptr [ %.pre.i91, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i90 ], [ %i.jg, %bb.bk ], [ %i.ht, %bb.bl ], [ %i.jj, %bb.bg ]
  store i64 0, ptr %i.hu, align 8
  store i8 0, ptr %i.jz, align 1
  %i.ka = load ptr, ptr %10, align 8              ; 2 uses
  %i.kb = icmp eq ptr %i.ka, %i.ht
  br i1 %i.kb, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit97, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i95

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i95: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit94
  %i.kc = load i64, ptr %i.ht, align 8
  %i.kd = add i64 %i.kc, 1
  call void @_ZdlPvm(ptr noundef %i.ka, i64 noundef %i.kd) #23
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit97

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit97: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit94, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i95
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #22
  %i.ke = getelementptr inbounds nuw i8, ptr %.sroa.0127.0285, i64 8 ; 2 uses
  %.not188 = icmp eq ptr %i.ke, %.sroa.10.0.lcssa
  br i1 %.not188, label %.loopexit, label %bb.be, !llvm.loop !19

bb.bm:                                            ; preds = %bb.be
  %i.kf = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #22
  br label %bb.by

bb.bn:                                            ; preds = %.lr.ph290, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit109
  %.0289 = phi i64 [ 0, %.lr.ph290 ], [ %i.lk, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit109 ] ; 2 uses
  %.sroa.0123.0288 = phi ptr [ %.sroa.0159.0.lcssa, %.lr.ph290 ], [ %i.lj, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit109 ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #22
  %.val37 = load ptr, ptr %4, align 8             ; 2 uses
  %.val38 = load ptr, ptr %0, align 8, !noalias !20
  %.val39 = load i64, ptr %i.k, align 8, !noalias !20
  %i.kg = getelementptr i8, ptr %.val37, i64 32
  %.val37.val = load ptr, ptr %i.kg, align 8, !noalias !20
  %i.kh = getelementptr i8, ptr %.val37, i64 40
  %.val37.val40 = load i64, ptr %i.kh, align 8, !noalias !20
  invoke fastcc void @"_ZZN6Assimp3MDL8HalfLife19UniqueNameGenerator11make_uniqueERSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS9_EEENK3$_1clB5cxx11ERKS9_m"(ptr dead_on_unwind noalias writable align 8 %11, ptr %.val37.val, i64 %.val37.val40, ptr %.val38, i64 %.val39, i64 noundef %.0289)
          to label %bb.bo unwind label %bb.bv

bb.bo:                                            ; preds = %bb.bn
  %i.ki = load i64, ptr %.sroa.0123.0288, align 8
  %i.kj = load ptr, ptr %1, align 8
  %i.kk = getelementptr inbounds nuw [32 x i8], ptr %i.kj, i64 %i.ki ; 9 uses
  %i.kl = load ptr, ptr %i.kk, align 8            ; 6 uses
  %i.km = getelementptr inbounds nuw i8, ptr %i.kk, i64 16 ; 4 uses
  %i.kn = icmp eq ptr %i.kl, %i.km
  %i.ko = load ptr, ptr %11, align 8              ; 6 uses
  %i.kp = icmp eq ptr %i.ko, %i.hv                ; 2 uses
  br i1 %i.kn, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i104, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i98

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i104: ; preds = %bb.bo
  br i1 %i.kp, label %bb.bp, label %.thread.i105

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i98: ; preds = %bb.bo
  br i1 %i.kp, label %bb.bp, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i99

bb.bp:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i98, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i104
  %i.kq = load i64, ptr %i.hw, align 8            ; 3 uses
  %i.kr = icmp ult i64 %i.kq, 16
  call void @llvm.assume(i1 %i.kr)
  %.not21.i101 = icmp eq ptr %11, %i.kk
  br i1 %.not21.i101, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit106, label %bb.bq, !prof !17

bb.bq:                                            ; preds = %bb.bp
  switch i64 %i.kq, label %bb.bs [
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i102
    i64 1, label %bb.br
  ]

bb.br:                                            ; preds = %bb.bq
  %i.ks = load i8, ptr %i.ko, align 1
  store i8 %i.ks, ptr %i.kl, align 1
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i102

bb.bs:                                            ; preds = %bb.bq
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.kl, ptr align 1 %i.ko, i64 %i.kq, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i102

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i102: ; preds = %bb.bs, %bb.br, %bb.bq
  %i.kt = load i64, ptr %i.hw, align 8            ; 2 uses
  %i.ku = getelementptr inbounds nuw i8, ptr %i.kk, i64 8
  store i64 %i.kt, ptr %i.ku, align 8
  %i.kv = load ptr, ptr %i.kk, align 8
  %i.kw = getelementptr inbounds nuw i8, ptr %i.kv, i64 %i.kt
  store i8 0, ptr %i.kw, align 1
  %.pre.i103 = load ptr, ptr %11, align 8
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit106

.thread.i105:                                     ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i104
  %i.kx = getelementptr inbounds nuw i8, ptr %i.kk, i64 8
  store ptr %i.ko, ptr %i.kk, align 8
  %i.ky = load i64, ptr %i.hw, align 8
  store i64 %i.ky, ptr %i.kx, align 8
  %i.kz = load i64, ptr %i.hv, align 8
  store i64 %i.kz, ptr %i.km, align 8
  br label %bb.bu

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i99: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i98
  %i.la = load i64, ptr %i.km, align 8
  store ptr %i.ko, ptr %i.kk, align 8
  %i.lb = load i64, ptr %i.hw, align 8
  %i.lc = getelementptr inbounds nuw i8, ptr %i.kk, i64 8
  store i64 %i.lb, ptr %i.lc, align 8
  %i.ld = load i64, ptr %i.hv, align 8
  store i64 %i.ld, ptr %i.km, align 8
  %.not.i100 = icmp eq ptr %i.kl, null
  br i1 %.not.i100, label %bb.bu, label %bb.bt

bb.bt:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i99
  store ptr %i.kl, ptr %11, align 8
  store i64 %i.la, ptr %i.hv, align 8
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit106

bb.bu:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i99, %.thread.i105
  store ptr %i.hv, ptr %11, align 8
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit106

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit106: ; preds = %bb.bp, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i102, %bb.bt, %bb.bu
  %i.le = phi ptr [ %.pre.i103, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i102 ], [ %i.kl, %bb.bt ], [ %i.hv, %bb.bu ], [ %i.ko, %bb.bp ]
  store i64 0, ptr %i.hw, align 8
  store i8 0, ptr %i.le, align 1
  %i.lf = load ptr, ptr %11, align 8              ; 2 uses
  %i.lg = icmp eq ptr %i.lf, %i.hv
  br i1 %i.lg, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit109, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i107

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i107: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit106
  %i.lh = load i64, ptr %i.hv, align 8
  %i.li = add i64 %i.lh, 1
  call void @_ZdlPvm(ptr noundef %i.lf, i64 noundef %i.li) #23
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit109

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit109: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit106, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i107
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #22
  %i.lj = getelementptr inbounds nuw i8, ptr %.sroa.0123.0288, i64 8 ; 2 uses
  %i.lk = add i64 %.0289, 1
  %.not189 = icmp eq ptr %i.lj, %.sroa.10.0.lcssa
  br i1 %.not189, label %.loopexit, label %bb.bn, !llvm.loop !23

bb.bv:                                            ; preds = %bb.bn
  %i.ll = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #22
  br label %bb.by

.loopexit:                                        ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit97, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit109, %.preheader191, %.preheader
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #22
  %i.lm = load ptr, ptr %3, align 8               ; 2 uses
  %i.ln = icmp eq ptr %i.lm, %i.p
  br i1 %i.ln, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit112, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i110

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i110: ; preds = %.loopexit
  %i.lo = load i64, ptr %i.p, align 8
  %i.lp = add i64 %i.lo, 1
  call void @_ZdlPvm(ptr noundef %i.lm, i64 noundef %i.lp) #23
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit112

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit112: ; preds = %.loopexit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i110
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #22
  %.val42 = load ptr, ptr %i.e, align 8
  call fastcc void @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_ZN6Assimp3MDL8HalfLife19UniqueNameGenerator11make_uniqueERSt6vectorIS5_SaIS5_EEE13DuplicateInfoESt10_Select1stISH_ESt4lessIS5_ESaISH_EE8_M_eraseEPSt13_Rb_tree_nodeISH_E(ptr noundef %.val42)
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #22
  %.not.i.i.i113 = icmp eq ptr %.sroa.0150.0.lcssa, null
  br i1 %.not.i.i.i113, label %_ZNSt6vectorImSaImEED2Ev.exit, label %bb.bw

bb.bw:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit112
  %i.lq = ptrtoint ptr %.sroa.14.0.lcssa to i64
  %i.lr = sub i64 %i.lq, %i.hs
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0150.0.lcssa, i64 noundef %i.lr) #23
  br label %_ZNSt6vectorImSaImEED2Ev.exit

_ZNSt6vectorImSaImEED2Ev.exit:                    ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit112, %bb.bw
  %.not.i.i.i114 = icmp eq ptr %.sroa.0159.0.lcssa, null
  br i1 %.not.i.i.i114, label %_ZNSt6vectorImSaImEED2Ev.exit115, label %bb.bx

bb.bx:                                            ; preds = %_ZNSt6vectorImSaImEED2Ev.exit
  %i.ls = ptrtoint ptr %.sroa.16.0.lcssa to i64
  %i.lt = ptrtoint ptr %.sroa.0159.0.lcssa to i64
  %i.lu = sub i64 %i.ls, %i.lt
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0159.0.lcssa, i64 noundef %i.lu) #23
  br label %_ZNSt6vectorImSaImEED2Ev.exit115

_ZNSt6vectorImSaImEED2Ev.exit115:                 ; preds = %_ZNSt6vectorImSaImEED2Ev.exit, %bb.bx
  ret void

bb.by:                                            ; preds = %.loopexit193, %.loopexit.split-lp, %_ZZN6Assimp3MDL8HalfLife19UniqueNameGenerator11make_uniqueERSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS9_EEEN13DuplicateInfoD2Ev.exit80, %bb.x, %bb.bv, %bb.bm, %bb.bd
  %.sroa.16.0230 = phi ptr [ %.sroa.16.0.lcssa, %bb.bm ], [ %.sroa.16.0.lcssa, %bb.bd ], [ %.sroa.16.0.lcssa, %bb.bv ], [ %.sroa.16.0262, %bb.x ], [ %.sroa.16.0262, %_ZZN6Assimp3MDL8HalfLife19UniqueNameGenerator11make_uniqueERSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS9_EEEN13DuplicateInfoD2Ev.exit80 ], [ %.sroa.16.0262.lcssa319, %.loopexit193 ], [ %.sroa.16.0262325, %.loopexit.split-lp ]
  %.sroa.0159.0211 = phi ptr [ %.sroa.0159.0.lcssa, %bb.bm ], [ %.sroa.0159.0.lcssa, %bb.bd ], [ %.sroa.0159.0.lcssa, %bb.bv ], [ %.sroa.0159.0265, %bb.x ], [ %.sroa.0159.0265, %_ZZN6Assimp3MDL8HalfLife19UniqueNameGenerator11make_uniqueERSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS9_EEEN13DuplicateInfoD2Ev.exit80 ], [ %.sroa.0159.0265, %.loopexit193 ], [ %.sroa.0159.0265, %.loopexit.split-lp ] ; 3 uses
  %.sroa.14.5 = phi ptr [ %.sroa.14.0.lcssa, %bb.bm ], [ %.sroa.14.0.lcssa, %bb.bd ], [ %.sroa.14.0.lcssa, %bb.bv ], [ %.sroa.14.0259, %bb.x ], [ %.sroa.14.2.a, %_ZZN6Assimp3MDL8HalfLife19UniqueNameGenerator11make_uniqueERSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS9_EEEN13DuplicateInfoD2Ev.exit80 ], [ %.sroa.14.1.ph, %.loopexit193 ], [ %.sroa.14.0259309, %.loopexit.split-lp ]
  %.sroa.0150.5 = phi ptr [ %.sroa.0150.0.lcssa, %bb.bm ], [ %.sroa.0150.0.lcssa, %bb.bd ], [ %.sroa.0150.0.lcssa, %bb.bv ], [ %.sroa.0150.0261, %bb.x ], [ %.sroa.0150.2, %_ZZN6Assimp3MDL8HalfLife19UniqueNameGenerator11make_uniqueERSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS9_EEEN13DuplicateInfoD2Ev.exit80 ], [ %.sroa.0150.1.ph, %.loopexit193 ], [ %.sroa.0150.0261, %.loopexit.split-lp ] ; 3 uses
  %.pn26.pn = phi { ptr, i32 } [ %i.kf, %bb.bm ], [ %i.jc, %bb.bd ], [ %i.ll, %bb.bv ], [ %i.do, %bb.x ], [ %.pn, %_ZZN6Assimp3MDL8HalfLife19UniqueNameGenerator11make_uniqueERSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS9_EEEN13DuplicateInfoD2Ev.exit80 ], [ %lpad.loopexit, %.loopexit193 ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #22
  %i.lv = load ptr, ptr %3, align 8               ; 2 uses
  %i.lw = icmp eq ptr %i.lv, %i.p
  br i1 %i.lw, label %.body, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i116

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i116: ; preds = %bb.by
  %i.lx = load i64, ptr %i.p, align 8
  %i.ly = add i64 %i.lx, 1
  call void @_ZdlPvm(ptr noundef %i.lv, i64 noundef %i.ly) #23
  br label %.body

_ZNSt6vectorImSaImEED2Ev.exit120.thread:          ; preds = %bb.c, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #22
  %.val41177 = load ptr, ptr %i.e, align 8
  call fastcc void @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_ZN6Assimp3MDL8HalfLife19UniqueNameGenerator11make_uniqueERSt6vectorIS5_SaIS5_EEE13DuplicateInfoESt10_Select1stISH_ESt4lessIS5_ESaISH_EE8_M_eraseEPSt13_Rb_tree_nodeISH_E(ptr noundef %.val41177)
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #22
  br label %_ZNSt6vectorImSaImEED2Ev.exit122

.body:                                            ; preds = %bb.by, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i116
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #22
  %.val41 = load ptr, ptr %i.e, align 8
  call fastcc void @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_ZN6Assimp3MDL8HalfLife19UniqueNameGenerator11make_uniqueERSt6vectorIS5_SaIS5_EEE13DuplicateInfoESt10_Select1stISH_ESt4lessIS5_ESaISH_EE8_M_eraseEPSt13_Rb_tree_nodeISH_E(ptr noundef %.val41)
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #22
  %.not.i.i.i119 = icmp eq ptr %.sroa.0150.5, null
  br i1 %.not.i.i.i119, label %_ZNSt6vectorImSaImEED2Ev.exit120, label %bb.bz

bb.bz:                                            ; preds = %.body
  %i.lz = ptrtoint ptr %.sroa.14.5 to i64
  %i.ma = ptrtoint ptr %.sroa.0150.5 to i64
  %i.mb = sub i64 %i.lz, %i.ma
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0150.5, i64 noundef %i.mb) #23
  br label %_ZNSt6vectorImSaImEED2Ev.exit120

_ZNSt6vectorImSaImEED2Ev.exit120:                 ; preds = %.body, %bb.bz
  %.not.i.i.i121 = icmp eq ptr %.sroa.0159.0211, null
  br i1 %.not.i.i.i121, label %_ZNSt6vectorImSaImEED2Ev.exit122, label %bb.ca

bb.ca:                                            ; preds = %_ZNSt6vectorImSaImEED2Ev.exit120
  %i.mc = ptrtoint ptr %.sroa.16.0230 to i64
  %i.md = ptrtoint ptr %.sroa.0159.0211 to i64
  %i.me = sub i64 %i.mc, %i.md
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0159.0211, i64 noundef %i.me) #23
  br label %_ZNSt6vectorImSaImEED2Ev.exit122

_ZNSt6vectorImSaImEED2Ev.exit122:                 ; preds = %_ZNSt6vectorImSaImEED2Ev.exit120.thread, %_ZNSt6vectorImSaImEED2Ev.exit120, %bb.ca
  %.pn26.pn.pn181186 = phi { ptr, i32 } [ %i.aa, %_ZNSt6vectorImSaImEED2Ev.exit120.thread ], [ %.pn26.pn, %_ZNSt6vectorImSaImEED2Ev.exit120 ], [ %.pn26.pn, %bb.ca ]
  resume { ptr, i32 } %.pn26.pn.pn181186
}

; Function Attrs: nounwind
declare noundef i64 @_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE17find_first_not_ofEcm(ptr noundef nonnull align 8 dereferenceable(32), i8 noundef signext, i64 noundef) local_unnamed_addr #4

; Function Attrs: inlinehint mustprogress nounwind uwtable
define internal fastcc void @_ZNSt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEZN6Assimp3MDL8HalfLife19UniqueNameGenerator11make_uniqueERSt6vectorIS5_SaIS5_EEE13DuplicateInfoED2Ev(ptr nofree noundef nonnull readonly align 8 captures(address) dereferenceable(64) %0) unnamed_addr #5 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8              ; 2 uses
  %.not8.i.i.i = icmp eq ptr %i.b, %i.a
  br i1 %.not8.i.i.i, label %_ZZN6Assimp3MDL8HalfLife19UniqueNameGenerator11make_uniqueERSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS9_EEEN13DuplicateInfoD2Ev.exit, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.a, %.lr.ph.i.i.i
  %.09.i.i.i = phi ptr [ %i.c, %.lr.ph.i.i.i ], [ %i.b, %bb.a ] ; 2 uses
  %i.c = load ptr, ptr %.09.i.i.i, align 8        ; 2 uses
  tail call void @_ZdlPvm(ptr noundef nonnull %.09.i.i.i, i64 noundef 24) #23
  %.not.i.i.i = icmp eq ptr %i.c, %i.a
  br i1 %.not.i.i.i, label %_ZZN6Assimp3MDL8HalfLife19UniqueNameGenerator11make_uniqueERSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS9_EEEN13DuplicateInfoD2Ev.exit, label %.lr.ph.i.i.i, !llvm.loop !14

_ZZN6Assimp3MDL8HalfLife19UniqueNameGenerator11make_uniqueERSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS9_EEEN13DuplicateInfoD2Ev.exit: ; preds = %.lr.ph.i.i.i, %bb.a
  %i.d = load ptr, ptr %0, align 8                ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.f = icmp eq ptr %i.d, %i.e
  br i1 %i.f, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZZN6Assimp3MDL8HalfLife19UniqueNameGenerator11make_uniqueERSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS9_EEEN13DuplicateInfoD2Ev.exit
  %i.g = load i64, ptr %i.e, align 8
  %i.h = add i64 %i.g, 1
  tail call void @_ZdlPvm(ptr noundef %i.d, i64 noundef %i.h) #23
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZZN6Assimp3MDL8HalfLife19UniqueNameGenerator11make_uniqueERSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS9_EEEN13DuplicateInfoD2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  ret void
}

; Function Attrs: mustprogress uwtable
define internal fastcc noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEZN6Assimp3MDL8HalfLife19UniqueNameGenerator11make_uniqueERSt6vectorIS5_SaIS5_EEE13DuplicateInfoSt4lessIS5_ESaISt4pairIKS5_SE_EEEixERSI_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %1) unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %.val5 = load ptr, ptr %1, align 8              ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %.val6 = load i64, ptr %i.b, align 8            ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.val.i.i = load ptr, ptr %i.c, align 8         ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 5 uses
  %.not2.i.i.i = icmp eq ptr %.val.i.i, null
  br i1 %.not2.i.i.i, label %.critedge, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.a, %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i
  %.04.i.i.i = phi ptr [ %.1.i.i.i, %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i ], [ %.val.i.i, %bb.a ] ; 4 uses
  %.083.i.i.i = phi ptr [ %.19.i.i.i, %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i ], [ %i.d, %bb.a ]
  %i.e = getelementptr inbounds nuw i8, ptr %.04.i.i.i, i64 40
  %i.f = load i64, ptr %i.e, align 8              ; 2 uses
  %.sroa.speculated.i.i.i.i.i.i = tail call i64 @llvm.umin.i64(i64 %.val6, i64 %i.f) ; 2 uses
  %i.g = icmp eq i64 %.sroa.speculated.i.i.i.i.i.i, 0
  br i1 %i.g, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i
  %i.h = getelementptr inbounds nuw i8, ptr %.04.i.i.i, i64 32
  %i.i = load ptr, ptr %i.h, align 8
  %i.j = tail call i32 @memcmp(ptr noundef %i.i, ptr noundef readonly %.val5, i64 noundef %.sroa.speculated.i.i.i.i.i.i) #22 ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq i32 %i.j, 0
  br i1 %.not.i.i.i.i.i.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i, label %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i, %.lr.ph.i.i.i
  %i.k = sub i64 %i.f, %.val6
  %spec.select7.i.i.i.i.i.i.i = tail call i64 @llvm.smax.i64(i64 %i.k, i64 -2147483648)
  %.08.i.i.i.i.i.i.i = tail call i64 @llvm.smin.i64(i64 %spec.select7.i.i.i.i.i.i.i, i64 2147483647)
  %.0.i6.i.i.i.i.i.i = trunc nsw i64 %.08.i.i.i.i.i.i.i to i32
  br label %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i

_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i
  %.0.i.i.i.i.i.i = phi i32 [ %i.j, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i ], [ %.0.i6.i.i.i.i.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i ]
  %i.l = icmp slt i32 %.0.i.i.i.i.i.i, 0          ; 2 uses
  %.19.i.i.i = select i1 %i.l, ptr %.083.i.i.i, ptr %.04.i.i.i ; 7 uses
  %.1.in.v.i.i.i = select i1 %i.l, i64 24, i64 16
  %.1.in.i.i.i = getelementptr i8, ptr %.04.i.i.i, i64 %.1.in.v.i.i.i
  %.1.i.i.i = load ptr, ptr %.1.in.i.i.i, align 8 ; 2 uses
  %.not.i.i.i = icmp eq ptr %.1.i.i.i, null
  br i1 %.not.i.i.i, label %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEZN6Assimp3MDL8HalfLife19UniqueNameGenerator11make_uniqueERSt6vectorIS5_SaIS5_EEE13DuplicateInfoSt4lessIS5_ESaISt4pairIKS5_SE_EEE11lower_boundERSI_.exit, label %.lr.ph.i.i.i, !llvm.loop !24

_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEZN6Assimp3MDL8HalfLife19UniqueNameGenerator11make_uniqueERSt6vectorIS5_SaIS5_EEE13DuplicateInfoSt4lessIS5_ESaISt4pairIKS5_SE_EEE11lower_boundERSI_.exit: ; preds = %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i
  %i.m = icmp eq ptr %.19.i.i.i, %i.d
  br i1 %i.m, label %.critedge, label %bb.b

bb.b:                                             ; preds = %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEZN6Assimp3MDL8HalfLife19UniqueNameGenerator11make_uniqueERSt6vectorIS5_SaIS5_EEE13DuplicateInfoSt4lessIS5_ESaISt4pairIKS5_SE_EEE11lower_boundERSI_.exit
  %i.n = getelementptr inbounds nuw i8, ptr %.19.i.i.i, i64 40
  %i.o = load i64, ptr %i.n, align 8              ; 2 uses
  %.sroa.speculated.i.i.i = tail call i64 @llvm.umin.i64(i64 %i.o, i64 %.val6) ; 2 uses
  %i.p = icmp eq i64 %.sroa.speculated.i.i.i, 0
  br i1 %i.p, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i: ; preds = %bb.b
  %i.q = getelementptr inbounds nuw i8, ptr %.19.i.i.i, i64 32
  %i.r = load ptr, ptr %i.q, align 8
  %i.s = tail call i32 @memcmp(ptr noundef %.val5, ptr noundef %i.r, i64 noundef %.sroa.speculated.i.i.i) #22 ; 2 uses
  %.not.i.i.i10 = icmp eq i32 %i.s, 0
  br i1 %.not.i.i.i10, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i, label %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i, %bb.b
  %i.t = sub i64 %.val6, %i.o
  %spec.select7.i.i.i.i = tail call i64 @llvm.smax.i64(i64 %i.t, i64 -2147483648)
  %.08.i.i.i.i = tail call i64 @llvm.smin.i64(i64 %spec.select7.i.i.i.i, i64 2147483647)
  %.0.i6.i.i.i = trunc nsw i64 %.08.i.i.i.i to i32
  br label %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit

_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i
  %.0.i.i.i = phi i32 [ %i.s, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i ], [ %.0.i6.i.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i ]
  %i.u = icmp slt i32 %.0.i.i.i, 0
  br i1 %i.u, label %.critedge, label %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_ZN6Assimp3MDL8HalfLife19UniqueNameGenerator11make_uniqueERSt6vectorIS5_SaIS5_EEE13DuplicateInfoESt10_Select1stISH_ESt4lessIS5_ESaISH_EE22_M_emplace_hint_uniqueIJRKSt21piecewise_construct_tSt5tupleIJRS7_EESS_IJEEEEESt17_Rb_tree_iteratorISH_ESt23_Rb_tree_const_iteratorISH_EDpOT_.exit

.critedge:                                        ; preds = %bb.a, %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEZN6Assimp3MDL8HalfLife19UniqueNameGenerator11make_uniqueERSt6vectorIS5_SaIS5_EEE13DuplicateInfoSt4lessIS5_ESaISt4pairIKS5_SE_EEE11lower_boundERSI_.exit, %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit
  %i.v = phi i1 [ false, %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit ], [ true, %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEZN6Assimp3MDL8HalfLife19UniqueNameGenerator11make_uniqueERSt6vectorIS5_SaIS5_EEE13DuplicateInfoSt4lessIS5_ESaISt4pairIKS5_SE_EEE11lower_boundERSI_.exit ], [ true, %bb.a ]
  %.08.lcssa.i.i.i28 = phi ptr [ %.19.i.i.i, %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit ], [ %.19.i.i.i, %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEZN6Assimp3MDL8HalfLife19UniqueNameGenerator11make_uniqueERSt6vectorIS5_SaIS5_EEE13DuplicateInfoSt4lessIS5_ESaISt4pairIKS5_SE_EEE11lower_boundERSI_.exit ], [ %i.d, %bb.a ] ; 11 uses
  %i.w = tail call noalias noundef nonnull dereferenceable(96) ptr @_Znwm(i64 noundef 96) #24 ; 10 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 32 ; 5 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.w, i64 48 ; 5 uses
  store ptr %i.y, ptr %i.x, align 8
  %i.z = load ptr, ptr %1, align 8                ; 2 uses
  %i.aa = load i64, ptr %i.b, align 8             ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #22
  store i64 %i.aa, ptr %i.a, align 8
  %i.ab = icmp ugt i64 %i.aa, 15
  br i1 %i.ab, label %.noexc.i.i.i.i.i.i.i, label %._crit_edge.i.i.i.i.i.i.i.i

.noexc.i.i.i.i.i.i.i:                             ; preds = %.critedge
  %i.ac = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(64) %i.x, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0)
          to label %.noexc.i.i.i.i unwind label %bb.e ; 2 uses

.noexc.i.i.i.i:                                   ; preds = %.noexc.i.i.i.i.i.i.i
  store ptr %i.ac, ptr %i.x, align 8
  %i.ad = load i64, ptr %i.a, align 8
  store i64 %i.ad, ptr %i.y, align 8
  br label %._crit_edge.i.i.i.i.i.i.i.i

._crit_edge.i.i.i.i.i.i.i.i:                      ; preds = %.noexc.i.i.i.i, %.critedge
  %i.ae = phi ptr [ %i.ac, %.noexc.i.i.i.i ], [ %i.y, %.critedge ] ; 2 uses
  switch i64 %i.aa, label %bb.d [
    i64 1, label %bb.c
    i64 0, label %bb.j
  ]

bb.c:                                             ; preds = %._crit_edge.i.i.i.i.i.i.i.i
  %i.af = load i8, ptr %i.z, align 1
  store i8 %i.af, ptr %i.ae, align 1
  br label %bb.j

bb.d:                                             ; preds = %._crit_edge.i.i.i.i.i.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.ae, ptr align 1 %i.z, i64 %i.aa, i1 false)
end_hunk_1
begin_hunk_2_@"_ZZN6Assimp3MDL8HalfLife19UniqueNameGenerator11make_uniqueERSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS9_EEENK3$_0clB5cxx11ERKS9_":bb.a
  %.pre.i = load ptr, ptr %3, align 8
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit

.thread.i:                                        ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i
  store ptr %i.r, ptr %0, align 8
  %i.z = load <2 x i64>, ptr %i.i, align 8
  store <2 x i64> %i.z, ptr %i.d, align 8
  br label %bb.l

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i
  %i.aa = load i64, ptr %i.c, align 8
  store ptr %i.r, ptr %0, align 8
  %i.ab = load <2 x i64>, ptr %i.i, align 8
  store <2 x i64> %i.ab, ptr %i.d, align 8
  %.not.i = icmp eq ptr %i.p, null
  br i1 %.not.i, label %bb.l, label %bb.k

bb.k:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i
  store ptr %i.p, ptr %3, align 8
  store i64 %i.aa, ptr %i.h, align 8
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit

bb.l:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i, %.thread.i
  store ptr %i.h, ptr %3, align 8
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit: ; preds = %bb.g, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i, %bb.k, %bb.l
  %i.ac = phi ptr [ %.pre.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i ], [ %i.p, %bb.k ], [ %i.h, %bb.l ], [ %i.r, %bb.g ]
  store i64 0, ptr %i.i, align 8
  store i8 0, ptr %i.ac, align 1
  %i.ad = load ptr, ptr %3, align 8               ; 2 uses
  %i.ae = icmp eq ptr %i.ad, %i.h
  br i1 %i.ae, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit
  %i.af = load i64, ptr %i.h, align 8
  %i.ag = add i64 %i.af, 1
  call void @_ZdlPvm(ptr noundef %i.ad, i64 noundef %i.ag) #23
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #22
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit

bb.m:                                             ; preds = %bb.e
  %i.ah = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #22
  br label %bb.p

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit: ; preds = %bb.c, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.ai = load ptr, ptr %i.j, align 8, !nonnull !25, !align !26 ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 8
  %i.ak = load ptr, ptr %i.aj, align 8            ; 2 uses
  %i.al = load ptr, ptr %i.ai, align 8            ; 4 uses
  %i.am = ptrtoint ptr %i.ak to i64
  %i.an = ptrtoint ptr %i.al to i64
  %i.ao = sub i64 %i.am, %i.an
  %i.ap = ashr exact i64 %i.ao, 5                 ; 2 uses
  %i.aq = icmp eq ptr %i.ak, %i.al
  br i1 %i.aq, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit
  %i.ar = load i64, ptr %i.d, align 8
  %.fr32 = freeze i64 %i.ar                       ; 3 uses
  %i.as = icmp eq i64 %.fr32, 0
  br i1 %i.as, label %.lr.ph.split.us, label %.lr.ph.split

.lr.ph.split.us:                                  ; preds = %.lr.ph, %.lr.ph.split.us
  %.030.us = phi i64 [ %i.ax, %.lr.ph.split.us ], [ 0, %.lr.ph ] ; 2 uses
  %i.at = getelementptr inbounds nuw [32 x i8], ptr %i.al, i64 %.030.us
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 8
  %i.av = load i64, ptr %i.au, align 8
  %i.aw = icmp eq i64 %i.av, 0                    ; 2 uses
  %i.ax = add nuw i64 %.030.us, 1                 ; 2 uses
  %i.ay = icmp uge i64 %i.ax, %i.ap
  %.not20.us = or i1 %i.aw, %i.ay
  br i1 %.not20.us, label %._crit_edge, label %.lr.ph.split.us, !llvm.loop !27

._crit_edge:                                      ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread28, %.lr.ph.split.us, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit
  %.018.lcssa = phi i1 [ false, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit ], [ %i.aw, %.lr.ph.split.us ], [ %i.bg, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread28 ]
  br i1 %.017, label %bb.n, label %bb.o

.lr.ph.split:                                     ; preds = %.lr.ph, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread28
  %.030 = phi i64 [ %i.bh, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread28 ], [ 0, %.lr.ph ] ; 2 uses
  %i.az = getelementptr inbounds nuw [32 x i8], ptr %i.al, i64 %.030 ; 2 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %i.az, i64 8
  %i.bb = load i64, ptr %i.ba, align 8
  %i.bc = icmp eq i64 %.fr32, %i.bb
  br i1 %i.bc, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread28

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit: ; preds = %.lr.ph.split
  %i.bd = load ptr, ptr %i.az, align 8
  %i.be = load ptr, ptr %0, align 8
  %bcmp.i = call i32 @bcmp(ptr %i.be, ptr %i.bd, i64 %.fr32)
  %bcmp.i.fr = freeze i32 %bcmp.i
  %i.bf = icmp eq i32 %bcmp.i.fr, 0
  br label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread28

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread28: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit, %.lr.ph.split
  %i.bg = phi i1 [ false, %.lr.ph.split ], [ %i.bf, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit ] ; 2 uses
  %i.bh = add nuw i64 %.030, 1                    ; 2 uses
  %i.bi = icmp uge i64 %i.bh, %i.ap
  %.not20 = or i1 %i.bg, %i.bi
  br i1 %.not20, label %._crit_edge, label %.lr.ph.split, !llvm.loop !27

bb.n:                                             ; preds = %._crit_edge
  %i.bj = load i64, ptr %i.f, align 8
  %i.bk = add i64 %i.bj, 1
  store i64 %i.bk, ptr %i.f, align 8
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %._crit_edge
  br i1 %.018.lcssa, label %bb.b, label %bb.q, !llvm.loop !28

bb.p:                                             ; preds = %bb.m, %bb.d
  %.pn = phi { ptr, i32 } [ %i.ah, %bb.m ], [ %i.k, %bb.d ]
  %i.bl = load ptr, ptr %0, align 8               ; 2 uses
  %i.bm = icmp eq ptr %i.bl, %i.c
  br i1 %i.bm, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit26, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i24

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i24: ; preds = %bb.p
  %i.bn = load i64, ptr %i.c, align 8
  %i.bo = add i64 %i.bn, 1
  call void @_ZdlPvm(ptr noundef %i.bl, i64 noundef %i.bo) #23
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit26

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit26: ; preds = %bb.p, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i24
  resume { ptr, i32 } %.pn

bb.q:                                             ; preds = %bb.o
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define internal fastcc void @"_ZZN6Assimp3MDL8HalfLife19UniqueNameGenerator11make_uniqueERSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS9_EEENK3$_1clB5cxx11ERKS9_m"(ptr dead_on_unwind noalias nonnull writable align 8 %0, ptr %.0.val.32.val, i64 %.0.val.40.val, ptr %.0.val1, i64 %.8.val, i64 noundef %1) unnamed_addr #6 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 13 uses
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #22
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 8 uses
  store ptr %i.a, ptr %2, align 8, !alias.scope !29
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 3 uses
  store i64 0, ptr %i.b, align 8, !alias.scope !29
  store i8 0, ptr %i.a, align 8, !alias.scope !29
  %i.c = add i64 %.8.val, %.0.val.40.val
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7reserveEm(ptr noundef nonnull align 8 dereferenceable(32) %2, i64 noundef %i.c)
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = load i64, ptr %i.b, align 8, !alias.scope !29
  %i.e = sub i64 4611686018427387903, %i.d
  %i.f = icmp ult i64 %i.e, %.8.val
  br i1 %i.f, label %.invoke.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i: ; preds = %bb.b
  %i.g = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef %.0.val1, i64 noundef %.8.val)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.i.i unwind label %bb.c ; 0 uses

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i
  %i.h = load i64, ptr %i.b, align 8, !alias.scope !29
  %i.i = sub i64 4611686018427387903, %i.h
  %i.j = icmp ult i64 %i.i, %.0.val.40.val
  br i1 %i.j, label %.invoke.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i10.i.i

.invoke.i.i:                                      ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.i.i, %bb.b
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.4) #21
          to label %.cont.i.i unwind label %bb.c

.cont.i.i:                                        ; preds = %.invoke.i.i
  unreachable

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i10.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.i.i
  %i.k = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef %.0.val.32.val, i64 noundef %.0.val.40.val)
          to label %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EERKS8_SA_.exit unwind label %bb.c ; 0 uses

bb.c:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i10.i.i, %.invoke.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i, %bb.a
  %i.l = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.m = load ptr, ptr %2, align 8, !alias.scope !29 ; 2 uses
  %i.n = icmp eq ptr %i.m, %i.a
  br i1 %i.n, label %common.resume, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %bb.c
  %i.o = load i64, ptr %i.a, align 8, !alias.scope !29
  %i.p = add i64 %i.o, 1
  call void @_ZdlPvm(ptr noundef %i.m, i64 noundef %i.p) #23
  br label %common.resume

common.resume:                                    ; preds = %bb.c, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit14
  %common.resume.op = phi { ptr, i32 } [ %.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit14 ], [ %i.l, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i ], [ %i.l, %bb.c ]
  resume { ptr, i32 } %common.resume.op

_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EERKS8_SA_.exit: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i10.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #22
  call void @llvm.experimental.noalias.scope.decl(metadata !32)
  %i.q = icmp ult i64 %1, 10
  br i1 %i.q, label %_ZNSt8__detail14__to_chars_lenImEEjT_i.exit.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EERKS8_SA_.exit, %bb.i
  %.02229.i.i = phi i64 [ %i.x, %bb.i ], [ %1, %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EERKS8_SA_.exit ] ; 5 uses
  %.02328.i.i = phi i32 [ %i.y, %bb.i ], [ 1, %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EERKS8_SA_.exit ] ; 4 uses
  %i.r = icmp ult i64 %.02229.i.i, 100
  br i1 %i.r, label %bb.d, label %bb.e

bb.d:                                             ; preds = %.lr.ph.i.i
  %i.s = add i32 %.02328.i.i, 1
  br label %_ZNSt8__detail14__to_chars_lenImEEjT_i.exit.i

bb.e:                                             ; preds = %.lr.ph.i.i
  %i.t = icmp ult i64 %.02229.i.i, 1000
  br i1 %i.t, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.u = add i32 %.02328.i.i, 2
  br label %_ZNSt8__detail14__to_chars_lenImEEjT_i.exit.i

bb.g:                                             ; preds = %bb.e
  %i.v = icmp ult i64 %.02229.i.i, 10000
  br i1 %i.v, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.w = add i32 %.02328.i.i, 3
  br label %_ZNSt8__detail14__to_chars_lenImEEjT_i.exit.i

bb.i:                                             ; preds = %bb.g
  %i.x = udiv i64 %.02229.i.i, 10000
  %i.y = add i32 %.02328.i.i, 4                   ; 2 uses
  %i.z = icmp ult i64 %.02229.i.i, 100000
  br i1 %i.z, label %_ZNSt8__detail14__to_chars_lenImEEjT_i.exit.i, label %.lr.ph.i.i, !llvm.loop !35

_ZNSt8__detail14__to_chars_lenImEEjT_i.exit.i:    ; preds = %bb.i, %bb.h, %bb.f, %bb.d, %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EERKS8_SA_.exit
  %.0.i.i = phi i32 [ %i.w, %bb.h ], [ %i.s, %bb.d ], [ %i.u, %bb.f ], [ 1, %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EERKS8_SA_.exit ], [ %i.y, %bb.i ]
  %i.aa = zext i32 %.0.i.i to i64
  %i.ab = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 5 uses
  store ptr %i.ab, ptr %3, align 8, !alias.scope !32
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructEmc(ptr noundef nonnull align 8 dereferenceable(32) %3, i64 noundef %i.aa, i8 noundef signext 0)
          to label %.noexc unwind label %bb.n

.noexc:                                           ; preds = %_ZNSt8__detail14__to_chars_lenImEEjT_i.exit.i
  %i.ac = load ptr, ptr %3, align 8, !alias.scope !32 ; 4 uses
  %i.ad = icmp ugt i64 %1, 99
  br i1 %i.ad, label %.lr.ph.preheader.i.i, label %._crit_edge.i.i

.lr.ph.preheader.i.i:                             ; preds = %.noexc
  %i.ae = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.af = load i64, ptr %i.ae, align 8, !alias.scope !32
  %i.ag = trunc i64 %i.af to i32
  %i.ah = add i32 %i.ag, -1
  br label %.lr.ph.i4.i

.lr.ph.i4.i:                                      ; preds = %.lr.ph.i4.i, %.lr.ph.preheader.i.i
  %.020.i.i = phi i64 [ %i.ak, %.lr.ph.i4.i ], [ %1, %.lr.ph.preheader.i.i ] ; 3 uses
  %.01819.i.i = phi i32 [ %i.au, %.lr.ph.i4.i ], [ %i.ah, %.lr.ph.preheader.i.i ] ; 3 uses
  %i.ai = urem i64 %.020.i.i, 100
  %i.aj = shl nuw nsw i64 %i.ai, 1
  %i.ak = udiv i64 %.020.i.i, 100                 ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr @__const._ZNSt8__detail18__to_chars_10_implImEEvPcjT_.__digits, i64 %i.aj ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 1
  %i.an = load i8, ptr %i.am, align 1, !noalias !32
  %i.ao = zext i32 %.01819.i.i to i64
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ac, i64 %i.ao
  store i8 %i.an, ptr %i.ap, align 1
  %i.aq = load i8, ptr %i.al, align 2, !noalias !32
  %i.ar = add i32 %.01819.i.i, -1
  %i.as = zext i32 %i.ar to i64
  %i.at = getelementptr inbounds nuw i8, ptr %i.ac, i64 %i.as
  store i8 %i.aq, ptr %i.at, align 1
  %i.au = add i32 %.01819.i.i, -2
  %i.av = icmp ugt i64 %.020.i.i, 9999
  br i1 %i.av, label %.lr.ph.i4.i, label %._crit_edge.i.i, !llvm.loop !36

._crit_edge.i.i:                                  ; preds = %.lr.ph.i4.i, %.noexc
  %.0.lcssa.i.i = phi i64 [ %1, %.noexc ], [ %i.ak, %.lr.ph.i4.i ] ; 3 uses
  %i.aw = icmp samesign ugt i64 %.0.lcssa.i.i, 9
  br i1 %i.aw, label %bb.j, label %bb.k

bb.j:                                             ; preds = %._crit_edge.i.i
  %i.ax = shl nuw nsw i64 %.0.lcssa.i.i, 1
  %i.ay = getelementptr inbounds nuw i8, ptr @__const._ZNSt8__detail18__to_chars_10_implImEEvPcjT_.__digits, i64 %i.ax ; 2 uses
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 1
  %i.ba = load i8, ptr %i.az, align 1, !noalias !32
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ac, i64 1
  store i8 %i.ba, ptr %i.bb, align 1
  %i.bc = load i8, ptr %i.ay, align 2, !noalias !32
  br label %bb.l

bb.k:                                             ; preds = %._crit_edge.i.i
  %i.bd = trunc nuw nsw i64 %.0.lcssa.i.i to i8
  %i.be = or disjoint i8 %i.bd, 48
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  %storemerge.i.i = phi i8 [ %i.be, %bb.k ], [ %i.bc, %bb.j ]
  store i8 %storemerge.i.i, ptr %i.ac, align 1
  invoke void @_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_S9_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(32) %3)
          to label %bb.m unwind label %bb.o

bb.m:                                             ; preds = %bb.l
  %i.bf = load ptr, ptr %3, align 8               ; 2 uses
  %i.bg = icmp eq ptr %i.bf, %i.ab
  br i1 %i.bg, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.m
  %i.bh = load i64, ptr %i.ab, align 8
  %i.bi = add i64 %i.bh, 1
  call void @_ZdlPvm(ptr noundef %i.bf, i64 noundef %i.bi) #23
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.m, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #22
  %i.bj = load ptr, ptr %2, align 8               ; 2 uses
  %i.bk = icmp eq ptr %i.bj, %i.a
  br i1 %i.bk, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit8, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i6

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i6: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.bl = load i64, ptr %i.a, align 8
  %i.bm = add i64 %i.bl, 1
  call void @_ZdlPvm(ptr noundef %i.bj, i64 noundef %i.bm) #23
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit8

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit8: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i6
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #22
  ret void

bb.n:                                             ; preds = %_ZNSt8__detail14__to_chars_lenImEEjT_i.exit.i
  %i.bn = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit11

bb.o:                                             ; preds = %bb.l
  %i.bo = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.bp = load ptr, ptr %3, align 8               ; 2 uses
  %i.bq = icmp eq ptr %i.bp, %i.ab
  br i1 %i.bq, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit11, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i9

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i9: ; preds = %bb.o
  %i.br = load i64, ptr %i.ab, align 8
  %i.bs = add i64 %i.br, 1
  call void @_ZdlPvm(ptr noundef %i.bp, i64 noundef %i.bs) #23
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit11

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit11: ; preds = %bb.o, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i9, %bb.n
  %.pn = phi { ptr, i32 } [ %i.bn, %bb.n ], [ %i.bo, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i9 ], [ %i.bo, %bb.o ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #22
  %i.bt = load ptr, ptr %2, align 8               ; 2 uses
  %i.bu = icmp eq ptr %i.bt, %i.a
  br i1 %i.bu, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit14, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i12

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i12: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit11
  %i.bv = load i64, ptr %i.a, align 8
  %i.bw = add i64 %i.bv, 1
  call void @_ZdlPvm(ptr noundef %i.bt, i64 noundef %i.bw) #23
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit14

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit14: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit11, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i12
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #22
  br label %common.resume
}

; Function Attrs: noinline noreturn nounwind uwtable
define linkonce_odr hidden void @__clang_call_terminate(ptr noundef %0) local_unnamed_addr #7 comdat {
bb.a:
  %i.a = tail call ptr @__cxa_begin_catch(ptr %0) #22 ; 0 uses
  tail call void @_ZSt9terminatev() #25
  unreachable
}

declare ptr @__cxa_begin_catch(ptr) local_unnamed_addr

; Function Attrs: cold nofree noreturn
declare void @_ZSt9terminatev() local_unnamed_addr #8

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #9

declare noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef nonnull align 8 dereferenceable(8), i64 noundef) local_unnamed_addr #10

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPvm(ptr noundef, i64 noundef) local_unnamed_addr #11

declare void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef nonnull align 8 dereferenceable(32)) local_unnamed_addr #10

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr void @_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_S9_(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(32) %2) local_unnamed_addr #6 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.b = load i64, ptr %i.a, align 8              ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.d = load i64, ptr %i.c, align 8              ; 4 uses
  %i.e = add i64 %i.d, %i.b                       ; 2 uses
  %i.f = load ptr, ptr %1, align 8                ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.h = icmp eq ptr %i.f, %i.g
  br i1 %i.h, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i: ; preds = %bb.a
  %i.i = icmp ult i64 %i.b, 16
  tail call void @llvm.assume(i1 %i.i)
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i: ; preds = %bb.a
  %i.j = load i64, ptr %i.g, align 8
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i
  %i.k = phi i64 [ %i.j, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i ], [ 15, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i ]
  %i.l = icmp ugt i64 %i.e, %i.k
  br i1 %i.l, label %bb.b, label %bb.d

bb.b:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit
  %i.m = load ptr, ptr %2, align 8
  %i.n = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.o = icmp eq ptr %i.m, %i.n
  br i1 %i.o, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i13, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i12

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i13: ; preds = %bb.b
  %i.p = icmp ult i64 %i.d, 16
  tail call void @llvm.assume(i1 %i.p)
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit14

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i12: ; preds = %bb.b
  %i.q = load i64, ptr %i.n, align 8
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit14

end_hunk_2
