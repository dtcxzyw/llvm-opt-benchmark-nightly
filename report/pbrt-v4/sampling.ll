Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/pbrt-v4/original/sampling?download=true
inline.NumInlined: 1815
inline.NumDeleted: 435
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 3
loop-unroll.NumUnrolled: 4
begin_hunk_0_@_ZN4pbrt19PiecewiseConstant2D24TestCompareDistributionsERKS0_S2_f:bb.a

bb.t:                                             ; preds = %bb.q
  %i.ak = landingpad { ptr, i32 }
          catch ptr null
  %i.al = extractvalue { ptr, i32 } %i.ak, 0
  call void @__clang_call_terminate(ptr %i.al) #32
  unreachable

_ZN7testing15AssertionResultD2Ev.exit:            ; preds = %bb.p, %.noexc.i.i33, %bb.r, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #29
  br i1 %i.j, label %bb.u, label %.loopexit

bb.u:                                             ; preds = %_ZN7testing15AssertionResultD2Ev.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #29
  call void @_ZN7testing8internal11CmpHelperEQIN4pbrt7Bounds2IfEES4_EENS_15AssertionResultEPKcS7_RKT_RKT0_(ptr dead_on_unwind nonnull writable sret(%"class.testing::AssertionResult") align 8 %6, ptr noundef nonnull @.str.26, ptr noundef nonnull @.str.27, ptr noundef nonnull align 4 dereferenceable(16) %0, ptr noundef nonnull align 4 dereferenceable(16) %1)
  %i.am = load i8, ptr %6, align 8, !tbaa !57, !range !58, !noundef !45
  %i.an = trunc nuw i8 %i.am to i1                ; 2 uses
  br i1 %i.an, label %bb.aj, label %bb.v

bb.v:                                             ; preds = %bb.u
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #29
  invoke void @_ZN7testing7MessageC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %7)
          to label %bb.w unwind label %bb.ae

bb.w:                                             ; preds = %bb.v
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #29
  %i.ao = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !59 ; 2 uses
  %.not.i.i34 = icmp eq ptr %i.ap, null
  br i1 %.not.i.i34, label %_ZNK7testing15AssertionResult15failure_messageEv.exit35, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !31
  br label %_ZNK7testing15AssertionResult15failure_messageEv.exit35

_ZNK7testing15AssertionResult15failure_messageEv.exit35: ; preds = %bb.x, %bb.w
  %i.ar = phi ptr [ %i.aq, %bb.x ], [ @.str.37, %bb.w ]
  invoke void @_ZN7testing8internal12AssertHelperC1ENS_14TestPartResult4TypeEPKciS5_(ptr noundef nonnull align 8 dereferenceable(8) %8, i32 noundef 2, ptr noundef nonnull @.str, i32 noundef 556, ptr noundef %i.ar)
          to label %bb.y unwind label %bb.af

bb.y:                                             ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit35
  invoke void @_ZNK7testing8internal12AssertHelperaSERKNS_7MessageE(ptr noundef nonnull align 8 dereferenceable(8) %8, ptr noundef nonnull align 8 dereferenceable(8) %7)
          to label %bb.z unwind label %bb.ag

bb.z:                                             ; preds = %bb.y
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %8) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #29
  %i.as = load ptr, ptr %7, align 8, !tbaa !62
  %.not.i.i.i36 = icmp eq ptr %i.as, null
  br i1 %.not.i.i.i36, label %_ZN7testing7MessageD2Ev.exit38, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.at = invoke noundef zeroext i1 @_ZN7testing8internal6IsTrueEb(i1 noundef zeroext true)
          to label %.noexc.i.i37 unwind label %bb.ad

.noexc.i.i37:                                     ; preds = %bb.aa
  br i1 %i.at, label %bb.ab, label %_ZN7testing7MessageD2Ev.exit38

bb.ab:                                            ; preds = %.noexc.i.i37
  %i.au = load ptr, ptr %7, align 8, !tbaa !62    ; 3 uses
  %i.av = icmp eq ptr %i.au, null
  br i1 %i.av, label %_ZN7testing7MessageD2Ev.exit38, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.aw = load ptr, ptr %i.au, align 8, !tbaa !40
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aw, i64 8
  %i.ay = load ptr, ptr %i.ax, align 8
  call void %i.ay(ptr noundef nonnull align 8 dereferenceable(128) %i.au) #29, !inline_history !0
  br label %_ZN7testing7MessageD2Ev.exit38

bb.ad:                                            ; preds = %bb.aa
  %i.az = landingpad { ptr, i32 }
          catch ptr null
  %i.ba = extractvalue { ptr, i32 } %i.az, 0
  call void @__clang_call_terminate(ptr %i.ba) #32
  unreachable

_ZN7testing7MessageD2Ev.exit38:                   ; preds = %bb.z, %.noexc.i.i37, %bb.ab, %bb.ac
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #29
  br label %bb.aj

bb.ae:                                            ; preds = %bb.v
  %i.bb = landingpad { ptr, i32 }
          cleanup
  br label %bb.ai

bb.af:                                            ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit35
  %i.bc = landingpad { ptr, i32 }
          cleanup
  br label %bb.ah

bb.ag:                                            ; preds = %bb.y
  %i.bd = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %8) #29
  br label %bb.ah

bb.ah:                                            ; preds = %bb.ag, %bb.af
  %.pn28 = phi { ptr, i32 } [ %i.bd, %bb.ag ], [ %i.bc, %bb.af ]
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #29
  call void @_ZN7testing7MessageD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %7) #29
  br label %bb.ai

bb.ai:                                            ; preds = %bb.ah, %bb.ae
  %.pn28.pn = phi { ptr, i32 } [ %.pn28, %bb.ah ], [ %i.bb, %bb.ae ]
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #29
  call void @_ZN7testing15AssertionResultD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %6) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #29
  br label %bb.ap

bb.aj:                                            ; preds = %bb.u, %_ZN7testing7MessageD2Ev.exit38
  %i.be = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 2 uses
  %i.bf = load ptr, ptr %i.be, align 8, !tbaa !59
  %.not.i.i.i39 = icmp eq ptr %i.bf, null
  br i1 %.not.i.i.i39, label %_ZN7testing15AssertionResultD2Ev.exit44, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  %i.bg = invoke noundef zeroext i1 @_ZN7testing8internal6IsTrueEb(i1 noundef zeroext true)
          to label %.noexc.i.i40 unwind label %bb.an

.noexc.i.i40:                                     ; preds = %bb.ak
  br i1 %i.bg, label %bb.al, label %_ZN7testing15AssertionResultD2Ev.exit44

bb.al:                                            ; preds = %.noexc.i.i40
  %i.bh = load ptr, ptr %i.be, align 8, !tbaa !59 ; 4 uses
  %i.bi = icmp eq ptr %i.bh, null
  br i1 %i.bi, label %_ZN7testing15AssertionResultD2Ev.exit44, label %bb.am

bb.am:                                            ; preds = %bb.al
  %i.bj = load ptr, ptr %i.bh, align 8, !tbaa !31 ; 2 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bh, i64 16 ; 2 uses
  %i.bl = icmp eq ptr %i.bj, %i.bk
  br i1 %i.bl, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i42, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i41

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i41: ; preds = %bb.am
  %i.bm = load i64, ptr %i.bk, align 8, !tbaa !30
  %i.bn = add i64 %i.bm, 1
  call void @_ZdlPvm(ptr noundef %i.bj, i64 noundef %i.bn) #31
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i42

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i42: ; preds = %bb.am, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i41
  call void @_ZdlPvm(ptr noundef nonnull %i.bh, i64 noundef 32) #31
  br label %_ZN7testing15AssertionResultD2Ev.exit44

bb.an:                                            ; preds = %bb.ak
  %i.bo = landingpad { ptr, i32 }
          catch ptr null
  %i.bp = extractvalue { ptr, i32 } %i.bo, 0
  call void @__clang_call_terminate(ptr %i.bp) #32
  unreachable

_ZN7testing15AssertionResultD2Ev.exit44:          ; preds = %bb.aj, %.noexc.i.i40, %bb.al, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i42
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #29
  br i1 %i.an, label %.preheader, label %.loopexit

.preheader:                                       ; preds = %_ZN7testing15AssertionResultD2Ev.exit44
  %i.bq = load i64, ptr %i.e, align 8, !tbaa !174
  %.not = icmp eq i64 %i.bq, 0
  br i1 %.not, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader
  %i.br = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.bs = getelementptr inbounds nuw i8, ptr %1, i64 24
  br label %bb.ao

bb.ao:                                            ; preds = %.lr.ph, %bb.ao
  %.045 = phi i64 [ 0, %.lr.ph ], [ %i.bx, %bb.ao ] ; 3 uses
  %i.bt = load ptr, ptr %i.br, align 8, !tbaa !175
  %i.bu = getelementptr inbounds nuw [80 x i8], ptr %i.bt, i64 %.045
  %i.bv = load ptr, ptr %i.bs, align 8, !tbaa !175
  %i.bw = getelementptr inbounds nuw [80 x i8], ptr %i.bv, i64 %.045
  call void @_ZN4pbrt19PiecewiseConstant1D24TestCompareDistributionsERKS0_S2_f(ptr noundef nonnull align 8 dereferenceable(76) %i.bu, ptr noundef nonnull align 8 dereferenceable(76) %i.bw, float noundef %2)
  %i.bx = add nuw i64 %.045, 1                    ; 2 uses
  %i.by = load i64, ptr %i.e, align 8, !tbaa !174
  %i.bz = icmp ult i64 %i.bx, %i.by
  br i1 %i.bz, label %bb.ao, label %.loopexit, !llvm.loop !170

.loopexit:                                        ; preds = %bb.ao, %.preheader, %_ZN7testing15AssertionResultD2Ev.exit44, %_ZN7testing15AssertionResultD2Ev.exit
  ret void

bb.ap:                                            ; preds = %bb.ai, %bb.o
  %.pn28.pn.pn = phi { ptr, i32 } [ %.pn28.pn, %bb.ai ], [ %.pn.pn, %bb.o ]
  resume { ptr, i32 } %.pn28.pn.pn
}

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN4pbrt10AliasTableC2EN4pstd4spanIKfEENS1_3pmr21polymorphic_allocatorISt4byteEE(ptr noundef nonnull align 8 dereferenceable(32) initializes((0, 32)) %0, ptr nofree readonly captures(address) %1, i64 %2, ptr %3) unnamed_addr #10 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca float, align 4                    ; 7 uses
  %i.b = alloca i32, align 4                      ; 7 uses
  %i.c = ptrtoint ptr %3 to i64
  store i64 %i.c, ptr %0, align 8, !tbaa !35
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 9 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 5 uses
  %.not.i.not.i.i = icmp eq i64 %2, 0
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.d, i8 0, i64 24, i1 false)
  br i1 %.not.i.not.i.i, label %_ZSt10accumulateIPKfdET0_T_S3_S2_.exit.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = mul i64 %2, 12                           ; 4 uses
  %i.h = icmp eq i64 %i.g, 0
  br i1 %i.h, label %.lr.ph.i.preheader, label %_ZN4pstd3pmr21polymorphic_allocatorIN4pbrt10AliasTable3BinEE15allocate_objectIS4_EEPT_m.exit.i.i.i

_ZN4pstd3pmr21polymorphic_allocatorIN4pbrt10AliasTable3BinEE15allocate_objectIS4_EEPT_m.exit.i.i.i: ; preds = %bb.b
  %i.i = load ptr, ptr %3, align 8, !tbaa !40
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  %i.k = load ptr, ptr %i.j, align 8
  %i.l = tail call noundef ptr %i.k(ptr noundef nonnull align 8 dereferenceable(8) %3, i64 noundef %i.g, i64 noundef 4), !inline_history !176 ; 3 uses
  %.pr.i.i = load i64, ptr %i.f, align 8, !tbaa !67
  %.not13.i.i.i = icmp eq i64 %.pr.i.i, 0
  br i1 %.not13.i.i.i, label %._crit_edge.i.i.i, label %.lr.ph.i.i.i

._crit_edge.i.i.i:                                ; preds = %.lr.ph.i.i.i, %_ZN4pstd3pmr21polymorphic_allocatorIN4pbrt10AliasTable3BinEE15allocate_objectIS4_EEPT_m.exit.i.i.i
  %.pr.i = load ptr, ptr %i.d, align 8, !tbaa !68 ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %.pr.i, null
  br i1 %.not.i.i.i.i.i.i, label %.lr.ph.i.preheader, label %bb.c

bb.c:                                             ; preds = %._crit_edge.i.i.i
  %i.m = load i64, ptr %i.e, align 8, !tbaa !69
  %i.n = mul i64 %i.m, 12
  %i.o = load ptr, ptr %0, align 8, !tbaa !70     ; 2 uses
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !40
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 24
  %i.r = load ptr, ptr %i.q, align 8
  tail call void %i.r(ptr noundef nonnull align 8 dereferenceable(8) %i.o, ptr noundef nonnull %.pr.i, i64 noundef %i.n, i64 noundef 4), !inline_history !177
  br label %.lr.ph.i.preheader

.lr.ph.i.i.i:                                     ; preds = %_ZN4pstd3pmr21polymorphic_allocatorIN4pbrt10AliasTable3BinEE15allocate_objectIS4_EEPT_m.exit.i.i.i, %.lr.ph.i.i.i
  %indvars.iv.i.i.i = phi i64 [ %indvars.iv.next.i.i.i, %.lr.ph.i.i.i ], [ 0, %_ZN4pstd3pmr21polymorphic_allocatorIN4pbrt10AliasTable3BinEE15allocate_objectIS4_EEPT_m.exit.i.i.i ] ; 3 uses
  %i.s = getelementptr inbounds nuw [12 x i8], ptr %i.l, i64 %indvars.iv.i.i.i
  %i.t = load ptr, ptr %i.d, align 8, !tbaa !68
  %i.u = getelementptr inbounds nuw [12 x i8], ptr %i.t, i64 %indvars.iv.i.i.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.s, ptr noundef nonnull align 4 dereferenceable(12) %i.u, i64 12, i1 false), !tbaa.struct !191
  %indvars.iv.next.i.i.i = add nuw nsw i64 %indvars.iv.i.i.i, 1 ; 2 uses
  %i.v = load i64, ptr %i.f, align 8, !tbaa !67
  %i.w = icmp ugt i64 %i.v, %indvars.iv.next.i.i.i
  br i1 %i.w, label %.lr.ph.i.i.i, label %._crit_edge.i.i.i, !llvm.loop !178

.lr.ph.i.preheader:                               ; preds = %bb.c, %._crit_edge.i.i.i, %bb.b
  %.0.i.i.i.i11.i6.i = phi ptr [ %i.l, %._crit_edge.i.i.i ], [ %i.l, %bb.c ], [ null, %bb.b ] ; 2 uses
  store i64 %2, ptr %i.e, align 8, !tbaa !69
  store ptr %.0.i.i.i.i11.i6.i, ptr %i.d, align 8, !tbaa !68
  tail call void @llvm.memset.p0.i64(ptr align 4 %.0.i.i.i.i11.i6.i, i8 0, i64 %i.g, i1 false), !tbaa !30
  store i64 %2, ptr %i.f, align 8, !tbaa !67
  %.idx = shl nuw nsw i64 %2, 2                   ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 %.idx ; 2 uses
  %i.y = add nsw i64 %.idx, -4                    ; 2 uses
  %i.z = lshr exact i64 %i.y, 2
  %i.aa = add nuw nsw i64 %i.z, 1
  %xtraiter = and i64 %i.aa, 7                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.prol.loopexit, label %.lr.ph.i.prol

.lr.ph.i.prol:                                    ; preds = %.lr.ph.i.preheader, %.lr.ph.i.prol
  %.09.i.prol = phi double [ %i.ad, %.lr.ph.i.prol ], [ 0.000000e+00, %.lr.ph.i.preheader ]
  %.068.i.prol = phi ptr [ %i.ae, %.lr.ph.i.prol ], [ %1, %.lr.ph.i.preheader ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.prol ], [ 0, %.lr.ph.i.preheader ]
  %i.ab = load float, ptr %.068.i.prol, align 4, !tbaa !15
  %i.ac = fpext float %i.ab to double
  %i.ad = fadd double %.09.i.prol, %i.ac          ; 3 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %.068.i.prol, i64 4 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.prol.loopexit, label %.lr.ph.i.prol, !llvm.loop !179

.lr.ph.i.prol.loopexit:                           ; preds = %.lr.ph.i.prol, %.lr.ph.i.preheader
  %.lcssa.unr = phi double [ poison, %.lr.ph.i.preheader ], [ %i.ad, %.lr.ph.i.prol ]
  %.09.i.unr = phi double [ 0.000000e+00, %.lr.ph.i.preheader ], [ %i.ad, %.lr.ph.i.prol ]
  %.068.i.unr = phi ptr [ %1, %.lr.ph.i.preheader ], [ %i.ae, %.lr.ph.i.prol ]
  %i.af = icmp ult i64 %i.y, 28
  br i1 %i.af, label %_ZSt10accumulateIPKfdET0_T_S3_S2_.exit, label %.lr.ph.i

_ZSt10accumulateIPKfdET0_T_S3_S2_.exit.thread:    ; preds = %bb.a
  store i64 %2, ptr %i.f, align 8, !tbaa !67
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #29
  store float 0.000000e+00, ptr %i.a, align 4, !tbaa !15
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #29
  store i32 0, ptr %i.b, align 4, !tbaa !18
  br label %bb.d

.lr.ph.i:                                         ; preds = %.lr.ph.i.prol.loopexit, %.lr.ph.i
  %.09.i = phi double [ %i.bk, %.lr.ph.i ], [ %.09.i.unr, %.lr.ph.i.prol.loopexit ]
  %.068.i = phi ptr [ %i.bl, %.lr.ph.i ], [ %.068.i.unr, %.lr.ph.i.prol.loopexit ] ; 9 uses
  %i.ag = load float, ptr %.068.i, align 4, !tbaa !15
  %i.ah = fpext float %i.ag to double
  %i.ai = fadd double %.09.i, %i.ah
  %i.aj = getelementptr inbounds nuw i8, ptr %.068.i, i64 4
  %i.ak = load float, ptr %i.aj, align 4, !tbaa !15
  %i.al = fpext float %i.ak to double
  %i.am = fadd double %i.ai, %i.al
  %i.an = getelementptr inbounds nuw i8, ptr %.068.i, i64 8
  %i.ao = load float, ptr %i.an, align 4, !tbaa !15
  %i.ap = fpext float %i.ao to double
  %i.aq = fadd double %i.am, %i.ap
  %i.ar = getelementptr inbounds nuw i8, ptr %.068.i, i64 12
  %i.as = load float, ptr %i.ar, align 4, !tbaa !15
  %i.at = fpext float %i.as to double
  %i.au = fadd double %i.aq, %i.at
  %i.av = getelementptr inbounds nuw i8, ptr %.068.i, i64 16
  %i.aw = load float, ptr %i.av, align 4, !tbaa !15
  %i.ax = fpext float %i.aw to double
  %i.ay = fadd double %i.au, %i.ax
  %i.az = getelementptr inbounds nuw i8, ptr %.068.i, i64 20
  %i.ba = load float, ptr %i.az, align 4, !tbaa !15
  %i.bb = fpext float %i.ba to double
  %i.bc = fadd double %i.ay, %i.bb
  %i.bd = getelementptr inbounds nuw i8, ptr %.068.i, i64 24
  %i.be = load float, ptr %i.bd, align 4, !tbaa !15
  %i.bf = fpext float %i.be to double
  %i.bg = fadd double %i.bc, %i.bf
  %i.bh = getelementptr inbounds nuw i8, ptr %.068.i, i64 28
  %i.bi = load float, ptr %i.bh, align 4, !tbaa !15
  %i.bj = fpext float %i.bi to double
  %i.bk = fadd double %i.bg, %i.bj                ; 2 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %.068.i, i64 32 ; 2 uses
  %.not.i.7 = icmp eq ptr %i.bl, %i.x
  br i1 %.not.i.7, label %_ZSt10accumulateIPKfdET0_T_S3_S2_.exit, label %.lr.ph.i, !llvm.loop !180

_ZSt10accumulateIPKfdET0_T_S3_S2_.exit:           ; preds = %.lr.ph.i, %.lr.ph.i.prol.loopexit
  %.lcssa = phi double [ %.lcssa.unr, %.lr.ph.i.prol.loopexit ], [ %i.bk, %.lr.ph.i ] ; 2 uses
  %i.bm = fptrunc double %.lcssa to float         ; 11 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #29
  store float %i.bm, ptr %i.a, align 4, !tbaa !15
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #29
  store i32 0, ptr %i.b, align 4, !tbaa !18
  %i.bn = fcmp ogt double %.lcssa, f0x3690000000000000
  br i1 %i.bn, label %bb.g, label %bb.d

bb.d:                                             ; preds = %_ZSt10accumulateIPKfdET0_T_S3_S2_.exit.thread, %_ZSt10accumulateIPKfdET0_T_S3_S2_.exit
  invoke void @_ZN4pbrt8LogFatalIJRA4_KcRA2_S1_S3_RfS5_RiEEEvNS_8LogLevelEPS1_iS9_DpOT_(i32 noundef 2, ptr noundef nonnull @.str, i32 noundef 567, ptr noundef nonnull @.str.2, ptr noundef nonnull align 1 dereferenceable(4) @.str.28, ptr noundef nonnull align 1 dereferenceable(2) @.str.4, ptr noundef nonnull align 1 dereferenceable(4) @.str.28, ptr noundef nonnull align 4 dereferenceable(4) %i.a, ptr noundef nonnull align 1 dereferenceable(2) @.str.4, ptr noundef nonnull align 4 dereferenceable(4) %i.b) #30
          to label %bb.e unwind label %bb.f

bb.e:                                             ; preds = %bb.d
  unreachable

bb.f:                                             ; preds = %bb.d
  %i.bo = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #29
  br label %_ZNSt6vectorIZN4pbrt10AliasTableC1EN4pstd4spanIKfEENS2_3pmr21polymorphic_allocatorISt4byteEEE7OutcomeSaISA_EED2Ev.exit104

bb.g:                                             ; preds = %_ZSt10accumulateIPKfdET0_T_S3_S2_.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #29
  %i.bp = load ptr, ptr %i.d, align 8, !tbaa !68  ; 12 uses
  %min.iters.check = icmp ult i64 %2, 8
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %bb.g
  %scevgep = getelementptr nuw i8, ptr %i.bp, i64 4
  %i.bq = getelementptr i8, ptr %i.bp, i64 %i.g
  %scevgep384 = getelementptr i8, ptr %i.bq, i64 -4
  %bound0 = icmp ult ptr %scevgep, %i.x
  %bound1 = icmp ult ptr %1, %scevgep384
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %2, -8                         ; 3 uses
  %broadcast.splatinsert = insertelement <8 x float> poison, float %i.bm, i64 0
  %broadcast.splat = shufflevector <8 x float> %broadcast.splatinsert, <8 x float> poison, <8 x i32> zeroinitializer
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.ind = phi <8 x i64> [ <i64 0, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6, i64 7>, %vector.ph ], [ %vec.ind.next, %vector.body ] ; 2 uses
  %i.br = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %index
  %wide.load = load <8 x float>, ptr %i.br, align 4, !tbaa !15, !alias.scope !192
  %i.bs = fdiv <8 x float> %wide.load, %broadcast.splat
  %wide.gep = getelementptr inbounds nuw [12 x i8], ptr %i.bp, <8 x i64> %vec.ind
  %wide.gep385 = getelementptr inbounds nuw i8, <8 x ptr> %wide.gep, i64 4
  tail call void @llvm.masked.scatter.v8f32.v8p0(<8 x float> %i.bs, <8 x ptr> align 4 %wide.gep385, <8 x i1> splat (i1 true)), !tbaa !72, !alias.scope !193, !noalias !192
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %vec.ind.next = add nuw <8 x i64> %vec.ind, splat (i64 8)
  %i.bt = icmp eq i64 %index.next, %n.vec
  br i1 %i.bt, label %middle.block, label %vector.body, !llvm.loop !184

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %2, %n.vec
  br i1 %cmp.n, label %.lr.ph.preheader, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.memcheck, %bb.g, %middle.block
  %.035244.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %bb.g ], [ %n.vec, %middle.block ] ; 3 uses
  %xtraiter418 = and i64 %2, 7                    ; 2 uses
  %lcmp.mod419.not = icmp eq i64 %xtraiter418, 0
  br i1 %lcmp.mod419.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader, %scalar.ph.prol
  %.035244.prol = phi i64 [ %i.bz, %scalar.ph.prol ], [ %.035244.ph, %scalar.ph.preheader ] ; 3 uses
  %prol.iter420 = phi i64 [ %prol.iter420.next, %scalar.ph.prol ], [ 0, %scalar.ph.preheader ]
  %i.bu = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %.035244.prol
  %i.bv = load float, ptr %i.bu, align 4, !tbaa !15
  %i.bw = fdiv float %i.bv, %i.bm
  %i.bx = getelementptr inbounds nuw [12 x i8], ptr %i.bp, i64 %.035244.prol
  %i.by = getelementptr inbounds nuw i8, ptr %i.bx, i64 4
  store float %i.bw, ptr %i.by, align 4, !tbaa !72
  %i.bz = add nuw i64 %.035244.prol, 1            ; 2 uses
  %prol.iter420.next = add i64 %prol.iter420, 1   ; 2 uses
  %prol.iter420.cmp.not = icmp eq i64 %prol.iter420.next, %xtraiter418
  br i1 %prol.iter420.cmp.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol, !llvm.loop !185

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %.035244.unr = phi i64 [ %.035244.ph, %scalar.ph.preheader ], [ %i.bz, %scalar.ph.prol ]
  %i.ca = sub i64 %.035244.ph, %2
  %i.cb = icmp ugt i64 %i.ca, -8
  br i1 %i.cb, label %.lr.ph.preheader, label %scalar.ph

.lr.ph.preheader:                                 ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %middle.block
  br label %.lr.ph

scalar.ph:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph
  %.035244 = phi i64 [ %i.dx, %scalar.ph ], [ %.035244.unr, %scalar.ph.prol.loopexit ] ; 10 uses
  %i.cc = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %.035244
  %i.cd = load float, ptr %i.cc, align 4, !tbaa !15
  %i.ce = fdiv float %i.cd, %i.bm
  %i.cf = getelementptr inbounds nuw [12 x i8], ptr %i.bp, i64 %.035244
  %i.cg = getelementptr inbounds nuw i8, ptr %i.cf, i64 4
  store float %i.ce, ptr %i.cg, align 4, !tbaa !72
  %i.ch = add nuw i64 %.035244, 1                 ; 2 uses
  %i.ci = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.ch
  %i.cj = load float, ptr %i.ci, align 4, !tbaa !15
  %i.ck = fdiv float %i.cj, %i.bm
  %i.cl = getelementptr inbounds nuw [12 x i8], ptr %i.bp, i64 %i.ch
  %i.cm = getelementptr inbounds nuw i8, ptr %i.cl, i64 4
  store float %i.ck, ptr %i.cm, align 4, !tbaa !72
  %i.cn = add nuw i64 %.035244, 2                 ; 2 uses
  %i.co = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.cn
  %i.cp = load float, ptr %i.co, align 4, !tbaa !15
  %i.cq = fdiv float %i.cp, %i.bm
  %i.cr = getelementptr inbounds nuw [12 x i8], ptr %i.bp, i64 %i.cn
  %i.cs = getelementptr inbounds nuw i8, ptr %i.cr, i64 4
  store float %i.cq, ptr %i.cs, align 4, !tbaa !72
  %i.ct = add nuw i64 %.035244, 3                 ; 2 uses
  %i.cu = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.ct
  %i.cv = load float, ptr %i.cu, align 4, !tbaa !15
  %i.cw = fdiv float %i.cv, %i.bm
  %i.cx = getelementptr inbounds nuw [12 x i8], ptr %i.bp, i64 %i.ct
  %i.cy = getelementptr inbounds nuw i8, ptr %i.cx, i64 4
  store float %i.cw, ptr %i.cy, align 4, !tbaa !72
  %i.cz = add nuw i64 %.035244, 4                 ; 2 uses
  %i.da = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.cz
  %i.db = load float, ptr %i.da, align 4, !tbaa !15
  %i.dc = fdiv float %i.db, %i.bm
  %i.dd = getelementptr inbounds nuw [12 x i8], ptr %i.bp, i64 %i.cz
  %i.de = getelementptr inbounds nuw i8, ptr %i.dd, i64 4
  store float %i.dc, ptr %i.de, align 4, !tbaa !72
  %i.df = add nuw i64 %.035244, 5                 ; 2 uses
  %i.dg = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.df
  %i.dh = load float, ptr %i.dg, align 4, !tbaa !15
  %i.di = fdiv float %i.dh, %i.bm
  %i.dj = getelementptr inbounds nuw [12 x i8], ptr %i.bp, i64 %i.df
  %i.dk = getelementptr inbounds nuw i8, ptr %i.dj, i64 4
  store float %i.di, ptr %i.dk, align 4, !tbaa !72
  %i.dl = add nuw i64 %.035244, 6                 ; 2 uses
  %i.dm = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.dl
  %i.dn = load float, ptr %i.dm, align 4, !tbaa !15
  %i.do = fdiv float %i.dn, %i.bm
  %i.dp = getelementptr inbounds nuw [12 x i8], ptr %i.bp, i64 %i.dl
  %i.dq = getelementptr inbounds nuw i8, ptr %i.dp, i64 4
  store float %i.do, ptr %i.dq, align 4, !tbaa !72
  %i.dr = add nuw i64 %.035244, 7                 ; 2 uses
  %i.ds = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.dr
  %i.dt = load float, ptr %i.ds, align 4, !tbaa !15
  %i.du = fdiv float %i.dt, %i.bm
  %i.dv = getelementptr inbounds nuw [12 x i8], ptr %i.bp, i64 %i.dr
  %i.dw = getelementptr inbounds nuw i8, ptr %i.dv, i64 4
  store float %i.du, ptr %i.dw, align 4, !tbaa !72
  %i.dx = add nuw i64 %.035244, 8                 ; 2 uses
  %exitcond.not.7 = icmp eq i64 %i.dx, %2
  br i1 %exitcond.not.7, label %.lr.ph.preheader, label %scalar.ph, !llvm.loop !186

.preheader163:                                    ; preds = %_ZNSt6vectorIZN4pbrt10AliasTableC1EN4pstd4spanIKfEENS2_3pmr21polymorphic_allocatorISt4byteEEE7OutcomeSaISA_EE9push_backEOSA_.exit
  %i.dy = icmp eq ptr %.sroa.0144.1, %.sroa.12145.1
  %i.dz = icmp eq ptr %.sroa.0135.1, %.sroa.12.1
  %or.cond257 = select i1 %i.dy, i1 true, i1 %i.dz
  br i1 %or.cond257, label %.critedge.preheader, label %.lr.ph264

.lr.ph:                                           ; preds = %.lr.ph.preheader, %_ZNSt6vectorIZN4pbrt10AliasTableC1EN4pstd4spanIKfEENS2_3pmr21polymorphic_allocatorISt4byteEEE7OutcomeSaISA_EE9push_backEOSA_.exit
  %i.ea = phi i64 [ %i.fr, %_ZNSt6vectorIZN4pbrt10AliasTableC1EN4pstd4spanIKfEENS2_3pmr21polymorphic_allocatorISt4byteEEE7OutcomeSaISA_EE9push_backEOSA_.exit ], [ %2, %.lr.ph.preheader ]
  %.036251 = phi i64 [ %i.fq, %_ZNSt6vectorIZN4pbrt10AliasTableC1EN4pstd4spanIKfEENS2_3pmr21polymorphic_allocatorISt4byteEEE7OutcomeSaISA_EE9push_backEOSA_.exit ], [ 0, %.lr.ph.preheader ] ; 6 uses
  %.sroa.28.0250 = phi ptr [ %.sroa.28.1, %_ZNSt6vectorIZN4pbrt10AliasTableC1EN4pstd4spanIKfEENS2_3pmr21polymorphic_allocatorISt4byteEEE7OutcomeSaISA_EE9push_backEOSA_.exit ], [ null, %.lr.ph.preheader ] ; 10 uses
  %.sroa.12.0249 = phi ptr [ %.sroa.12.1, %_ZNSt6vectorIZN4pbrt10AliasTableC1EN4pstd4spanIKfEENS2_3pmr21polymorphic_allocatorISt4byteEEE7OutcomeSaISA_EE9push_backEOSA_.exit ], [ null, %.lr.ph.preheader ] ; 6 uses
  %.sroa.0135.0248 = phi ptr [ %.sroa.0135.1, %_ZNSt6vectorIZN4pbrt10AliasTableC1EN4pstd4spanIKfEENS2_3pmr21polymorphic_allocatorISt4byteEEE7OutcomeSaISA_EE9push_backEOSA_.exit ], [ null, %.lr.ph.preheader ] ; 12 uses
  %.sroa.28151.0247 = phi ptr [ %.sroa.28151.1, %_ZNSt6vectorIZN4pbrt10AliasTableC1EN4pstd4spanIKfEENS2_3pmr21polymorphic_allocatorISt4byteEEE7OutcomeSaISA_EE9push_backEOSA_.exit ], [ null, %.lr.ph.preheader ] ; 10 uses
  %.sroa.12145.0246 = phi ptr [ %.sroa.12145.1, %_ZNSt6vectorIZN4pbrt10AliasTableC1EN4pstd4spanIKfEENS2_3pmr21polymorphic_allocatorISt4byteEEE7OutcomeSaISA_EE9push_backEOSA_.exit ], [ null, %.lr.ph.preheader ] ; 6 uses
  %.sroa.0144.0245 = phi ptr [ %.sroa.0144.1, %_ZNSt6vectorIZN4pbrt10AliasTableC1EN4pstd4spanIKfEENS2_3pmr21polymorphic_allocatorISt4byteEEE7OutcomeSaISA_EE9push_backEOSA_.exit ], [ null, %.lr.ph.preheader ] ; 12 uses
  %i.eb = load ptr, ptr %i.d, align 8, !tbaa !68
  %i.ec = getelementptr inbounds nuw [12 x i8], ptr %i.eb, i64 %.036251
  %i.ed = getelementptr inbounds nuw i8, ptr %i.ec, i64 4
  %i.ee = load float, ptr %i.ed, align 4, !tbaa !72
  %i.ef = uitofp i64 %i.ea to float
  %i.eg = fmul float %i.ee, %i.ef                 ; 5 uses
  %i.eh = fcmp olt float %i.eg, 1.000000e+00
  br i1 %i.eh, label %bb.h, label %bb.n

bb.h:                                             ; preds = %.lr.ph
  %.not.i.i = icmp eq ptr %.sroa.12145.0246, %.sroa.28151.0247
  br i1 %.not.i.i, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  store float %i.eg, ptr %.sroa.12145.0246, align 8, !tbaa !15
  %.sroa.6132.0..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.12145.0246, i64 8
  store i64 %.036251, ptr %.sroa.6132.0..sroa_idx, align 8, !tbaa !23
  %i.ei = getelementptr inbounds nuw i8, ptr %.sroa.12145.0246, i64 16
  br label %_ZNSt6vectorIZN4pbrt10AliasTableC1EN4pstd4spanIKfEENS2_3pmr21polymorphic_allocatorISt4byteEEE7OutcomeSaISA_EE9push_backEOSA_.exit

bb.j:                                             ; preds = %bb.h
  %i.ej = ptrtoint ptr %.sroa.28151.0247 to i64
  %i.ek = ptrtoint ptr %.sroa.0144.0245 to i64
  %i.el = sub i64 %i.ej, %i.ek                    ; 6 uses
  %i.em = icmp eq i64 %i.el, 9223372036854775792
  br i1 %i.em, label %bb.k, label %_ZNKSt6vectorIZN4pbrt10AliasTableC1EN4pstd4spanIKfEENS2_3pmr21polymorphic_allocatorISt4byteEEE7OutcomeSaISA_EE12_M_check_lenEmPKc.exit.i.i.i

bb.k:                                             ; preds = %bb.j
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.52) #30
          to label %.noexc unwind label %.loopexit.split-lp176

.noexc:                                           ; preds = %bb.k
  unreachable

_ZNKSt6vectorIZN4pbrt10AliasTableC1EN4pstd4spanIKfEENS2_3pmr21polymorphic_allocatorISt4byteEEE7OutcomeSaISA_EE12_M_check_lenEmPKc.exit.i.i.i: ; preds = %bb.j
  %i.en = ashr exact i64 %i.el, 4                 ; 3 uses
  %i.eo = icmp eq ptr %.sroa.28151.0247, %.sroa.0144.0245
  %.sroa.speculated.i.i.i.i = select i1 %i.eo, i64 1, i64 %i.en
  %i.ep = add nsw i64 %.sroa.speculated.i.i.i.i, %i.en ; 2 uses
  %i.eq = icmp ult i64 %i.ep, %i.en
  %i.er = tail call i64 @llvm.umin.i64(i64 %i.ep, i64 576460752303423487)
  %i.es = select i1 %i.eq, i64 576460752303423487, i64 %i.er ; 3 uses
  %.not.i.i.i.i = icmp ne i64 %i.es, 0
  tail call void @llvm.assume(i1 %.not.i.i.i.i)
  %i.et = shl nuw nsw i64 %i.es, 4
  %i.eu = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.et) #33
          to label %.noexc65 unwind label %.loopexit175 ; 4 uses

.noexc65:                                         ; preds = %_ZNKSt6vectorIZN4pbrt10AliasTableC1EN4pstd4spanIKfEENS2_3pmr21polymorphic_allocatorISt4byteEEE7OutcomeSaISA_EE12_M_check_lenEmPKc.exit.i.i.i
  %i.ev = getelementptr inbounds i8, ptr %i.eu, i64 %i.el ; 3 uses
  store float %i.eg, ptr %i.ev, align 8, !tbaa !15
  %.sroa.6132.0..sroa_idx133 = getelementptr inbounds nuw i8, ptr %i.ev, i64 8
  store i64 %.036251, ptr %.sroa.6132.0..sroa_idx133, align 8, !tbaa !23
  %i.ew = icmp sgt i64 %i.el, 0
  br i1 %i.ew, label %bb.l, label %_ZNSt6vectorIZN4pbrt10AliasTableC1EN4pstd4spanIKfEENS2_3pmr21polymorphic_allocatorISt4byteEEE7OutcomeSaISA_EE11_S_relocateEPSA_SD_SD_RSB_.exit20.i.i.i

bb.l:                                             ; preds = %.noexc65
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.eu, ptr align 8 %.sroa.0144.0245, i64 %i.el, i1 false)
  br label %_ZNSt6vectorIZN4pbrt10AliasTableC1EN4pstd4spanIKfEENS2_3pmr21polymorphic_allocatorISt4byteEEE7OutcomeSaISA_EE11_S_relocateEPSA_SD_SD_RSB_.exit20.i.i.i

_ZNSt6vectorIZN4pbrt10AliasTableC1EN4pstd4spanIKfEENS2_3pmr21polymorphic_allocatorISt4byteEEE7OutcomeSaISA_EE11_S_relocateEPSA_SD_SD_RSB_.exit20.i.i.i: ; preds = %bb.l, %.noexc65
  %i.ex = getelementptr inbounds nuw i8, ptr %i.ev, i64 16
  %.not.i21.i.i.i = icmp eq ptr %.sroa.0144.0245, null
  br i1 %.not.i21.i.i.i, label %_ZNSt6vectorIZN4pbrt10AliasTableC1EN4pstd4spanIKfEENS2_3pmr21polymorphic_allocatorISt4byteEEE7OutcomeSaISA_EE17_M_realloc_insertIJSA_EEEvN9__gnu_cxx17__normal_iteratorIPSA_SC_EEDpOT_.exit.i.i, label %bb.m

end_hunk_0
