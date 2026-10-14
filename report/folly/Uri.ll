Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/folly/original/Uri?download=true
inline.NumInlined: 4612
inline.NumDeleted: 1653
loop-unroll.NumCompletelyUnrolled: 14
loop-unroll.NumRuntimeUnrolled: 11
loop-unroll.NumUnrolled: 27
begin_hunk_0_@_ZNK5folly3Uri9authorityB5cxx11Ev:bb.a
bb.n:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i7
  %.not8.i.i.i9 = icmp eq i64 %i.av, 0
  br i1 %.not8.i.i.i9, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit14, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.bf = getelementptr inbounds nuw i8, ptr %i.ba, i64 %i.aw ; 2 uses
  %cond.i.i.i10 = icmp eq i64 %i.av, 1
  br i1 %cond.i.i.i10, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  %i.bg = load i8, ptr %i.au, align 1, !tbaa !95
  store i8 %i.bg, ptr %i.bf, align 1, !tbaa !95
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit14

bb.q:                                             ; preds = %bb.o
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.bf, ptr align 1 %i.au, i64 %i.av, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit14

bb.r:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i7
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %i.aw, i64 noundef 0, ptr noundef %i.au, i64 noundef %i.av)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit14 unwind label %bb.s

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit14: ; preds = %bb.r, %bb.n, %bb.p, %bb.q
  store i64 %i.az, ptr %i.b, align 8, !tbaa !94
  %i.bh = load ptr, ptr %0, align 8, !tbaa !109
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bh, i64 %i.az
  store i8 0, ptr %i.bi, align 1, !tbaa !95
  br label %bb.t

bb.s:                                             ; preds = %.invoke, %bb.ae, %bb.ad, %bb.aa, %bb.u, %bb.r, %bb.l, %bb.i, %bb.a
  %i.bj = landingpad { ptr, i32 }
          cleanup
  %i.bk = load ptr, ptr %0, align 8, !tbaa !109   ; 2 uses
  %i.bl = icmp eq ptr %i.bk, %i.a
  br i1 %i.bl, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i15

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i15: ; preds = %bb.s
  %i.bm = load i64, ptr %i.a, align 8, !tbaa !95
  %i.bn = add i64 %i.bm, 1
  tail call void @_ZdlPvm(ptr noundef %i.bk, i64 noundef %i.bn) #33
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.s, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i15
  resume { ptr, i32 } %i.bj

bb.t:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit14, %bb.j
  %i.bo = load i64, ptr %i.b, align 8, !tbaa !94  ; 4 uses
  %i.bp = add i64 %i.bo, 1                        ; 3 uses
  %i.bq = load ptr, ptr %0, align 8, !tbaa !109   ; 2 uses
  %i.br = icmp eq ptr %i.bq, %i.a
  br i1 %i.br, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i20, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i17

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i20: ; preds = %bb.t
  %i.bs = icmp ult i64 %i.bo, 16
  tail call void @llvm.assume(i1 %i.bs)
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i18

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i17: ; preds = %bb.t
  %i.bt = load i64, ptr %i.a, align 8, !tbaa !95
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i18

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i18: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i17, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i20
  %i.bu = phi i64 [ %i.bt, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i17 ], [ 15, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i20 ]
  %i.bv = icmp ugt i64 %i.bp, %i.bu
  br i1 %i.bv, label %bb.u, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9push_backEc.exit22

bb.u:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i18
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %i.bo, i64 noundef 0, ptr noundef null, i64 noundef 1)
          to label %.noexc21 unwind label %bb.s

.noexc21:                                         ; preds = %bb.u
  %.pre.i19 = load ptr, ptr %0, align 8, !tbaa !109
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9push_backEc.exit22

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9push_backEc.exit22: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i18, %.noexc21
  %i.bw = phi ptr [ %.pre.i19, %.noexc21 ], [ %i.bq, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i18 ]
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bw, i64 %i.bo
  store i8 64, ptr %i.bx, align 1, !tbaa !95
  store i64 %i.bp, ptr %i.b, align 8, !tbaa !94
  %i.by = load ptr, ptr %0, align 8, !tbaa !109
  %i.bz = getelementptr inbounds nuw i8, ptr %i.by, i64 %i.bp
  store i8 0, ptr %i.bz, align 1, !tbaa !95
  br label %bb.v

bb.v:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9push_backEc.exit22, %bb.c
  %i.ca = load ptr, ptr %i.c, align 8, !tbaa !109 ; 3 uses
  %i.cb = load i64, ptr %i.d, align 8, !tbaa !94  ; 6 uses
  %i.cc = load i64, ptr %i.b, align 8, !tbaa !94  ; 5 uses
  %i.cd = sub i64 9223372036854775807, %i.cc
  %i.ce = icmp ult i64 %i.cd, %i.cb
  br i1 %i.ce, label %.invoke, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i23

.invoke:                                          ; preds = %bb.d, %bb.m, %bb.v
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.5) #32
          to label %.cont unwind label %bb.s

.cont:                                            ; preds = %.invoke
  unreachable

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i23: ; preds = %bb.v
  %i.cf = add i64 %i.cc, %i.cb                    ; 3 uses
  %i.cg = load ptr, ptr %0, align 8, !tbaa !109   ; 2 uses
  %i.ch = icmp eq ptr %i.cg, %i.a
  br i1 %i.ch, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i29, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i24

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i29: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i23
  %i.ci = icmp ult i64 %i.cc, 16
  tail call void @llvm.assume(i1 %i.ci)
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i25

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i24: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i23
  %i.cj = load i64, ptr %i.a, align 8, !tbaa !95
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i25

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i25: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i24, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i29
  %i.ck = phi i64 [ %i.cj, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i24 ], [ 15, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i29 ]
  %.not.i.i.i26 = icmp ugt i64 %i.cf, %i.ck
  br i1 %.not.i.i.i26, label %bb.aa, label %bb.w

bb.w:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i25
  %.not8.i.i.i27 = icmp eq i64 %i.cb, 0
  br i1 %.not8.i.i.i27, label %bb.ab, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.cl = getelementptr inbounds nuw i8, ptr %i.cg, i64 %i.cc ; 2 uses
  %cond.i.i.i28 = icmp eq i64 %i.cb, 1
  br i1 %cond.i.i.i28, label %bb.y, label %bb.z

bb.y:                                             ; preds = %bb.x
  %i.cm = load i8, ptr %i.ca, align 1, !tbaa !95
  store i8 %i.cm, ptr %i.cl, align 1, !tbaa !95
  br label %bb.ab

bb.z:                                             ; preds = %bb.x
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.cl, ptr align 1 %i.ca, i64 %i.cb, i1 false)
  br label %bb.ab

bb.aa:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i25
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %i.cc, i64 noundef 0, ptr noundef %i.ca, i64 noundef %i.cb)
          to label %bb.ab unwind label %bb.s

bb.ab:                                            ; preds = %bb.z, %bb.y, %bb.w, %bb.aa
  store i64 %i.cf, ptr %i.b, align 8, !tbaa !94
  %i.cn = load ptr, ptr %0, align 8, !tbaa !109
  %i.co = getelementptr inbounds nuw i8, ptr %i.cn, i64 %i.cf
  store i8 0, ptr %i.co, align 1, !tbaa !95
  %i.cp = getelementptr inbounds nuw i8, ptr %1, i64 130 ; 2 uses
  %i.cq = load i16, ptr %i.cp, align 2, !tbaa !105
  %.not = icmp eq i16 %i.cq, 0
  br i1 %.not, label %_ZN5folly8toAppendINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEtEENSt9enable_ifIXaaaa13is_integral_vIT0_Esr12IsSomeStringIT_EE5valueltstS8_Li4EEvE4typeES8_PS9_.exit, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.cr = load i64, ptr %i.b, align 8, !tbaa !94  ; 4 uses
  %i.cs = add i64 %i.cr, 1                        ; 3 uses
  %i.ct = load ptr, ptr %0, align 8, !tbaa !109   ; 2 uses
  %i.cu = icmp eq ptr %i.ct, %i.a
  br i1 %i.cu, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i36, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i33

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i36: ; preds = %bb.ac
  %i.cv = icmp ult i64 %i.cr, 16
  tail call void @llvm.assume(i1 %i.cv)
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i34

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i33: ; preds = %bb.ac
  %i.cw = load i64, ptr %i.a, align 8, !tbaa !95
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i34

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i34: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i33, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i36
  %i.cx = phi i64 [ %i.cw, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i33 ], [ 15, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i36 ]
  %i.cy = icmp ugt i64 %i.cs, %i.cx
  br i1 %i.cy, label %bb.ad, label %bb.ae

bb.ad:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i34
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %i.cr, i64 noundef 0, ptr noundef null, i64 noundef 1)
          to label %.noexc37 unwind label %bb.s

.noexc37:                                         ; preds = %bb.ad
  %.pre.i35 = load ptr, ptr %0, align 8, !tbaa !109
  br label %bb.ae

bb.ae:                                            ; preds = %.noexc37, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i34
  %i.cz = phi ptr [ %.pre.i35, %.noexc37 ], [ %i.ct, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i34 ]
  %i.da = getelementptr inbounds nuw i8, ptr %i.cz, i64 %i.cr
  store i8 58, ptr %i.da, align 1, !tbaa !95
  store i64 %i.cs, ptr %i.b, align 8, !tbaa !94
  %i.db = load ptr, ptr %0, align 8, !tbaa !109
  %i.dc = getelementptr inbounds nuw i8, ptr %i.db, i64 %i.cs
  store i8 0, ptr %i.dc, align 1, !tbaa !95
  %i.dd = load i16, ptr %i.cp, align 2, !tbaa !105
  %i.de = zext i16 %i.dd to i64
  invoke void @_ZN5folly8toAppendINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEmEENSt9enable_ifIXaaaaaa13is_integral_vIT0_Ent11is_signed_vIS8_Esr12IsSomeStringIT_EE5valuegestS8_Li4EEvE4typeES8_PS9_(i64 noundef %i.de, ptr noundef nonnull %0)
          to label %_ZN5folly8toAppendINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEtEENSt9enable_ifIXaaaa13is_integral_vIT0_Esr12IsSomeStringIT_EE5valueltstS8_Li4EEvE4typeES8_PS9_.exit unwind label %bb.s

_ZN5folly8toAppendINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEtEENSt9enable_ifIXaaaa13is_integral_vIT0_Esr12IsSomeStringIT_EE5valueltstS8_Li4EEvE4typeES8_PS9_.exit: ; preds = %bb.ae, %bb.ab
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN5folly8toAppendINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEmEENSt9enable_ifIXaaaaaa13is_integral_vIT0_Ent11is_signed_vIS8_Esr12IsSomeStringIT_EE5valuegestS8_Li4EEvE4typeES8_PS9_(i64 noundef %0, ptr noundef %1) local_unnamed_addr #4 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca [20 x i8], align 16               ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #30
  %.not.i.i.i.i = icmp eq i64 %0, 0
  br i1 %.not.i.i.i.i, label %._crit_edge.thread.i.i.i, label %_ZN5folly6detail19to_ascii_size_clzllILm10EEEmm.exit.i.i.i, !prof !134

._crit_edge.thread.i.i.i:                         ; preds = %bb.a
  %i.b = load i16, ptr @_ZN5folly6detail14to_ascii_tableILm10ENS_17to_ascii_alphabetILb0EEEE4dataE, align 2, !tbaa !344
  br label %bb.c

_ZN5folly6detail19to_ascii_size_clzllILm10EEEmm.exit.i.i.i: ; preds = %bb.a
  %i.c = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %0, i1 true)
  %i.d = sub nuw nsw i64 64, %i.c
  %i.e = mul nuw nsw i64 %i.d, 39
  %i.f = lshr i64 %i.e, 7                         ; 3 uses
  %i.g = getelementptr inbounds nuw [8 x i8], ptr @_ZN5folly6detail15to_ascii_powersILm10EmE4dataE, i64 %i.f
  %i.h = load i64, ptr %i.g, align 8, !tbaa !1547
  %i.i = icmp uge i64 %0, %i.h
  %i.j = zext i1 %i.i to i64                      ; 2 uses
  %i.k = add nuw nsw i64 %i.f, %i.j               ; 6 uses
  %i.l = icmp samesign ugt i64 %i.k, 2
  br i1 %i.l, label %.lr.ph.i.i.i.preheader, label %._crit_edge.i.i.i

.lr.ph.i.i.i.preheader:                           ; preds = %_ZN5folly6detail19to_ascii_size_clzllILm10EEEmm.exit.i.i.i
  %2 = add nuw nsw i64 %i.f, %i.j
  %3 = add nsw i64 %2, -3                         ; 2 uses
  %4 = and i64 %3, 2
  %lcmp.mod.not.not = icmp eq i64 %4, 0
  br i1 %lcmp.mod.not.not, label %.lr.ph.i.i.i.prol, label %.lr.ph.i.i.i.prol.loopexit

.lr.ph.i.i.i.prol:                                ; preds = %.lr.ph.i.i.i.preheader
  %5 = add nsw i64 %i.k, -2                       ; 3 uses
  %6 = udiv i64 %0, 100                           ; 2 uses
  %7 = urem i64 %0, 100
  %8 = getelementptr inbounds nuw [2 x i8], ptr @_ZN5folly6detail14to_ascii_tableILm10ENS_17to_ascii_alphabetILb0EEEE4dataE, i64 %7
  %9 = load i16, ptr %8, align 2, !tbaa !344
  %10 = getelementptr inbounds nuw i8, ptr %i.a, i64 %5
  store i16 %9, ptr %10, align 1
  br label %.lr.ph.i.i.i.prol.loopexit

.lr.ph.i.i.i.prol.loopexit:                       ; preds = %.lr.ph.i.i.i.prol, %.lr.ph.i.i.i.preheader
  %.0.i3.i.i.i.unr = phi i64 [ %0, %.lr.ph.i.i.i.preheader ], [ %6, %.lr.ph.i.i.i.prol ]
  %.014.i2.i.i.i.unr = phi i64 [ %i.k, %.lr.ph.i.i.i.preheader ], [ %5, %.lr.ph.i.i.i.prol ]
  %.lcssa8.unr = phi i64 [ poison, %.lr.ph.i.i.i.preheader ], [ %5, %.lr.ph.i.i.i.prol ]
  %.lcssa.unr = phi i64 [ poison, %.lr.ph.i.i.i.preheader ], [ %6, %.lr.ph.i.i.i.prol ]
  %11 = icmp ult i64 %3, 2
  br i1 %11, label %._crit_edge.i.i.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.lr.ph.i.i.i.prol.loopexit, %.lr.ph.i.i.i
  %.0.i3.i.i.i = phi i64 [ %i.n, %.lr.ph.i.i.i ], [ %.0.i3.i.i.i.unr, %.lr.ph.i.i.i.prol.loopexit ] ; 3 uses
  %.014.i2.i.i.i = phi i64 [ %i.m, %.lr.ph.i.i.i ], [ %.014.i2.i.i.i.unr, %.lr.ph.i.i.i.prol.loopexit ] ; 2 uses
  %12 = udiv i64 %.0.i3.i.i.i, 100
  %13 = urem i64 %.0.i3.i.i.i, 100
  %14 = getelementptr inbounds nuw [2 x i8], ptr @_ZN5folly6detail14to_ascii_tableILm10ENS_17to_ascii_alphabetILb0EEEE4dataE, i64 %13
  %15 = load i16, ptr %14, align 2, !tbaa !344
  %16 = getelementptr i8, ptr %i.a, i64 %.014.i2.i.i.i
  %17 = getelementptr i8, ptr %16, i64 -2
  store i16 %15, ptr %17, align 1
  %i.m = add i64 %.014.i2.i.i.i, -4               ; 4 uses
  %i.n = udiv i64 %.0.i3.i.i.i, 10000             ; 2 uses
  %i.o = urem i64 %12, 100
  %i.p = getelementptr inbounds nuw [2 x i8], ptr @_ZN5folly6detail14to_ascii_tableILm10ENS_17to_ascii_alphabetILb0EEEE4dataE, i64 %i.o
  %i.q = load i16, ptr %i.p, align 2, !tbaa !344
  %i.r = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.m
  store i16 %i.q, ptr %i.r, align 1
  %i.s = icmp ugt i64 %i.m, 2
  br i1 %i.s, label %.lr.ph.i.i.i, label %._crit_edge.i.i.i, !llvm.loop !2519

._crit_edge.i.i.i:                                ; preds = %.lr.ph.i.i.i.prol.loopexit, %.lr.ph.i.i.i, %_ZN5folly6detail19to_ascii_size_clzllILm10EEEmm.exit.i.i.i
  %.014.i.lcssa.i.i.i = phi i64 [ %i.k, %_ZN5folly6detail19to_ascii_size_clzllILm10EEEmm.exit.i.i.i ], [ %.lcssa8.unr, %.lr.ph.i.i.i.prol.loopexit ], [ %i.m, %.lr.ph.i.i.i ]
  %.0.i.lcssa.i.i.i = phi i64 [ %0, %_ZN5folly6detail19to_ascii_size_clzllILm10EEEmm.exit.i.i.i ], [ %.lcssa.unr, %.lr.ph.i.i.i.prol.loopexit ], [ %i.n, %.lr.ph.i.i.i ]
  %i.t = getelementptr inbounds nuw [2 x i8], ptr @_ZN5folly6detail14to_ascii_tableILm10ENS_17to_ascii_alphabetILb0EEEE4dataE, i64 %.0.i.lcssa.i.i.i
  %i.u = load i16, ptr %i.t, align 2, !tbaa !344  ; 3 uses
  %i.v = icmp eq i64 %.014.i.lcssa.i.i.i, 2
  br i1 %i.v, label %bb.b, label %bb.c

bb.b:                                             ; preds = %._crit_edge.i.i.i
  store i16 %i.u, ptr %i.a, align 16
  %i.w = trunc i16 %i.u to i8
  br label %_ZN5folly16to_ascii_decimalILm20EEEmRAT__cm.exit

bb.c:                                             ; preds = %._crit_edge.i.i.i, %._crit_edge.thread.i.i.i
  %i.x = phi i16 [ %i.b, %._crit_edge.thread.i.i.i ], [ %i.u, %._crit_edge.i.i.i ]
  %.0.i1813.i.i.i = phi i64 [ 1, %._crit_edge.thread.i.i.i ], [ %i.k, %._crit_edge.i.i.i ]
  %i.y = lshr i16 %i.x, 8
  %i.z = trunc nuw i16 %i.y to i8                 ; 2 uses
  store i8 %i.z, ptr %i.a, align 16, !tbaa !95
  br label %_ZN5folly16to_ascii_decimalILm20EEEmRAT__cm.exit

_ZN5folly16to_ascii_decimalILm20EEEmRAT__cm.exit: ; preds = %bb.b, %bb.c
  %i.aa = phi i8 [ %i.w, %bb.b ], [ %i.z, %bb.c ]
  %.0.i1812.i.i.i = phi i64 [ %i.k, %bb.b ], [ %.0.i1813.i.i.i, %bb.c ] ; 6 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.ac = load i64, ptr %i.ab, align 8, !tbaa !94 ; 5 uses
  %i.ad = sub i64 9223372036854775807, %i.ac
  %i.ae = icmp ult i64 %i.ad, %.0.i1812.i.i.i
  br i1 %i.ae, label %bb.d, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i

bb.d:                                             ; preds = %_ZN5folly16to_ascii_decimalILm20EEEmRAT__cm.exit
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.5) #32
  unreachable

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i: ; preds = %_ZN5folly16to_ascii_decimalILm20EEEmRAT__cm.exit
  %i.af = add i64 %i.ac, %.0.i1812.i.i.i          ; 3 uses
  %i.ag = load ptr, ptr %1, align 8, !tbaa !109   ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.ai = icmp eq ptr %i.ag, %i.ah
  br i1 %i.ai, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i
  %i.aj = icmp ult i64 %i.ac, 16
  tail call void @llvm.assume(i1 %i.aj)
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i
  %i.ak = load i64, ptr %i.ah, align 8, !tbaa !95
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i
  %i.al = phi i64 [ %i.ak, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i ], [ 15, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i ]
  %.not.i.i = icmp ugt i64 %i.af, %i.al
  br i1 %.not.i.i, label %bb.i, label %bb.e

bb.e:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i
  %.not8.i.i = icmp eq i64 %.0.i1812.i.i.i, 0
  br i1 %.not8.i.i, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.am = getelementptr inbounds nuw i8, ptr %i.ag, i64 %i.ac ; 2 uses
  %cond.i.i = icmp eq i64 %.0.i1812.i.i.i, 1
  br i1 %cond.i.i, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  store i8 %i.aa, ptr %i.am, align 1, !tbaa !95
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit

bb.h:                                             ; preds = %bb.f
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.am, ptr nonnull align 16 %i.a, i64 %.0.i1812.i.i.i, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit

bb.i:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %1, i64 noundef %i.ac, i64 noundef 0, ptr noundef nonnull %i.a, i64 noundef %.0.i1812.i.i.i)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit: ; preds = %bb.e, %bb.g, %bb.h, %bb.i
  store i64 %i.af, ptr %i.ab, align 8, !tbaa !94
  %i.an = load ptr, ptr %1, align 8, !tbaa !109
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 %i.af
  store i8 0, ptr %i.ao, align 1, !tbaa !95
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #30
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.ctlz.i64(i64, i1 immarg) #24

; Function Attrs: mustprogress uwtable
define void @_ZNK5folly3Uri8hostnameB5cxx11Ev(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(256) %1) local_unnamed_addr #4 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 104
  %i.b = load i64, ptr %i.a, align 8, !tbaa !94   ; 11 uses
  %i.c = icmp eq i64 %i.b, 0
  br i1 %i.c, label %._crit_edge.i.i.thread, label %bb.b

._crit_edge.i.i.thread:                           ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  store ptr %i.d, ptr %0, align 8, !tbaa !91
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 96
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !109  ; 4 uses
  %i.g = load i8, ptr %i.f, align 1, !tbaa !95
  %i.h = icmp eq i8 %i.g, 91
  br i1 %i.h, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8_M_checkEmPKc.exit.i.i, label %bb.g

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8_M_checkEmPKc.exit.i.i: ; preds = %bb.b
  %i.i = add i64 %i.b, -2
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  store ptr %i.j, ptr %0, align 8, !tbaa !91, !alias.scope !2522
  %i.k = getelementptr inbounds nuw i8, ptr %i.f, i64 1 ; 2 uses
  %i.l = add i64 %i.b, -1
  %spec.select.i.i.i = tail call noundef i64 @llvm.umin.i64(i64 %i.i, i64 %i.l) ; 8 uses
  %i.m = icmp ugt i64 %spec.select.i.i.i, 15
  br i1 %i.m, label %bb.c, label %._crit_edge.i.i.i

bb.c:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8_M_checkEmPKc.exit.i.i
  %i.n = icmp slt i64 %spec.select.i.i.i, 0
  br i1 %i.n, label %.noexc10.i.i, label %bb.d

.noexc10.i.i:                                     ; preds = %bb.c
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.4) #32
  unreachable

bb.d:                                             ; preds = %bb.c
  %i.o = add nuw i64 %spec.select.i.i.i, 1        ; 2 uses
  %i.p = icmp slt i64 %i.o, 0
  br i1 %i.p, label %.noexc11.i.i, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i.i, !prof !134

.noexc11.i.i:                                     ; preds = %bb.d
  tail call void @_ZSt17__throw_bad_allocv() #32
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i.i: ; preds = %bb.d
  %i.q = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.o) #34 ; 2 uses
  store ptr %i.q, ptr %0, align 8, !tbaa !109, !alias.scope !2522
  store i64 %spec.select.i.i.i, ptr %i.j, align 8, !tbaa !95, !alias.scope !2522
  br label %._crit_edge.i.i.i

._crit_edge.i.i.i:                                ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8_M_checkEmPKc.exit.i.i
  %i.r = phi ptr [ %i.q, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i.i ], [ %i.j, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8_M_checkEmPKc.exit.i.i ] ; 3 uses
  switch i64 %spec.select.i.i.i, label %bb.f [
    i64 1, label %bb.e
    i64 0, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6substrEmm.exit
  ]

bb.e:                                             ; preds = %._crit_edge.i.i.i
  %i.s = load i8, ptr %i.k, align 1, !tbaa !95
  store i8 %i.s, ptr %i.r, align 1, !tbaa !95
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6substrEmm.exit

bb.f:                                             ; preds = %._crit_edge.i.i.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.r, ptr nonnull align 1 %i.k, i64 %spec.select.i.i.i, i1 false)
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6substrEmm.exit

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6substrEmm.exit: ; preds = %._crit_edge.i.i.i, %bb.e, %bb.f
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %spec.select.i.i.i, ptr %i.t, align 8, !tbaa !94, !alias.scope !2522
  %i.u = getelementptr inbounds nuw i8, ptr %i.r, i64 %spec.select.i.i.i
  store i8 0, ptr %i.u, align 1, !tbaa !95
  br label %bb.l

bb.g:                                             ; preds = %bb.b
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 5 uses
  store ptr %i.v, ptr %0, align 8, !tbaa !91
  %i.w = icmp ugt i64 %i.b, 15
  br i1 %i.w, label %bb.h, label %._crit_edge.i.i

bb.h:                                             ; preds = %bb.g
  %i.x = icmp slt i64 %i.b, 0
  br i1 %i.x, label %.noexc.i, label %bb.i

.noexc.i:                                         ; preds = %bb.h
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.4) #32
  unreachable

bb.i:                                             ; preds = %bb.h
  %i.y = add nuw i64 %i.b, 1                      ; 2 uses
  %i.z = icmp slt i64 %i.y, 0
  br i1 %i.z, label %.noexc6.i, label %._crit_edge.i.i.thread3, !prof !134

.noexc6.i:                                        ; preds = %bb.i
  tail call void @_ZSt17__throw_bad_allocv() #32
  unreachable

._crit_edge.i.i.thread3:                          ; preds = %bb.i
  %i.aa = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.y) #34 ; 2 uses
  store ptr %i.aa, ptr %0, align 8, !tbaa !109
  store i64 %i.b, ptr %i.v, align 8, !tbaa !95
  br label %bb.k

._crit_edge.i.i:                                  ; preds = %bb.g
  %cond = icmp eq i64 %i.b, 1
  br i1 %cond, label %bb.j, label %bb.k

bb.j:                                             ; preds = %._crit_edge.i.i
  %i.ab = load i8, ptr %i.f, align 1, !tbaa !95
  store i8 %i.ab, ptr %i.v, align 8, !tbaa !95
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit

bb.k:                                             ; preds = %._crit_edge.i.i.thread3, %._crit_edge.i.i
end_hunk_0
