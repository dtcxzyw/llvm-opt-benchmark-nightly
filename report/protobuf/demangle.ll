Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/protobuf/original/demangle?download=true
inline.NumInlined: 660
inline.NumDeleted: 80
loop-unroll.NumCompletelyUnrolled: 16
loop-unroll.NumUnrolled: 17
begin_hunk_0_@_ZN4absl12lts_2025051218debugging_internalL22ParseTemplateParamDeclEPNS1_5StateE:bb.a
  store i32 %i.c, ptr %i.a, align 4, !tbaa !17
  br label %bb.l

bb.i:                                             ; preds = %bb.h
  %i.ag = add nsw i32 %.val12.i25, 2
  store i32 %i.ag, ptr %i.i, align 4, !tbaa !16
  store i32 %i.c, ptr %i.a, align 4, !tbaa !17
  %i.ah = invoke fastcc noundef zeroext i1 @_ZN4absl12lts_2025051218debugging_internalL9ParseNameEPNS1_5StateE(ptr noundef nonnull %0)
          to label %bb.j unwind label %.loopexit.split-lp

bb.j:                                             ; preds = %bb.i
  br i1 %i.ah, label %bb.k, label %._crit_edge

._crit_edge:                                      ; preds = %bb.j
  %.pre = load i32, ptr %i.a, align 4, !tbaa !17
  %.pre52 = load i32, ptr %i.d, align 8, !tbaa !15
  br label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.ai = invoke fastcc noundef zeroext i1 @_ZN4absl12lts_2025051218debugging_internalL17ParseTemplateArgsEPNS1_5StateE(ptr noundef nonnull %0)
          to label %bb.ab unwind label %.loopexit.split-lp ; 0 uses

bb.l:                                             ; preds = %._crit_edge, %_ZN4absl12lts_2025051218debugging_internalL17ParseTwoCharTokenEPNS1_5StateEPKc.exit27.thread
  %i.aj = phi i32 [ %.pre52, %._crit_edge ], [ %i.x, %_ZN4absl12lts_2025051218debugging_internalL17ParseTwoCharTokenEPNS1_5StateEPKc.exit27.thread ] ; 2 uses
  %i.ak = phi i32 [ %.pre, %._crit_edge ], [ %i.c, %_ZN4absl12lts_2025051218debugging_internalL17ParseTwoCharTokenEPNS1_5StateEPKc.exit27.thread ] ; 5 uses
  store <4 x i32> %.sroa.0.0.copyload, ptr %i.i, align 4
  %i.al = add nsw i32 %i.ak, 1                    ; 2 uses
  store i32 %i.al, ptr %i.a, align 4, !tbaa !17
  %i.am = add nsw i32 %i.aj, 1                    ; 2 uses
  store i32 %i.am, ptr %i.d, align 8, !tbaa !15
  %i.an = icmp sgt i32 %i.ak, 255
  %i.ao = icmp sgt i32 %i.aj, 131071
  %or.cond.i28 = select i1 %i.an, i1 true, i1 %i.ao
  br i1 %or.cond.i28, label %_ZN4absl12lts_2025051218debugging_internalL17ParseTwoCharTokenEPNS1_5StateEPKc.exit32.thread, label %bb.m

bb.m:                                             ; preds = %bb.l
  %.val11.i29 = load ptr, ptr %0, align 8, !tbaa !8
  %.val12.i30 = load i32, ptr %i.i, align 4, !tbaa !16 ; 2 uses
  %i.ap = sext i32 %.val12.i30 to i64
  %i.aq = getelementptr inbounds i8, ptr %.val11.i29, i64 %i.ap ; 2 uses
  %i.ar = load i8, ptr %i.aq, align 1, !tbaa !7
  %i.as = icmp eq i8 %i.ar, 84
  br i1 %i.as, label %bb.n, label %_ZN4absl12lts_2025051218debugging_internalL17ParseTwoCharTokenEPNS1_5StateEPKc.exit32.thread

bb.n:                                             ; preds = %bb.m
  %i.at = getelementptr inbounds nuw i8, ptr %i.aq, i64 1
  %i.au = load i8, ptr %i.at, align 1, !tbaa !7
  %i.av = icmp eq i8 %i.au, 110
  br i1 %i.av, label %bb.o, label %_ZN4absl12lts_2025051218debugging_internalL17ParseTwoCharTokenEPNS1_5StateEPKc.exit32.thread

_ZN4absl12lts_2025051218debugging_internalL17ParseTwoCharTokenEPNS1_5StateEPKc.exit32.thread: ; preds = %bb.l, %bb.n, %bb.m
  store i32 %i.ak, ptr %i.a, align 4, !tbaa !17
  br label %bb.q

bb.o:                                             ; preds = %bb.n
  %i.aw = add nsw i32 %.val12.i30, 2
  store i32 %i.aw, ptr %i.i, align 4, !tbaa !16
  store i32 %i.ak, ptr %i.a, align 4, !tbaa !17
  %i.ax = invoke fastcc noundef zeroext i1 @_ZN4absl12lts_2025051218debugging_internalL9ParseTypeEPNS1_5StateE(ptr noundef nonnull %0)
          to label %bb.p unwind label %.loopexit.split-lp

bb.p:                                             ; preds = %bb.o
  br i1 %i.ax, label %bb.ab, label %._crit_edge53

._crit_edge53:                                    ; preds = %bb.p
  %.pre54 = load i32, ptr %i.a, align 4, !tbaa !17 ; 2 uses
  %.pre55 = load i32, ptr %i.d, align 8, !tbaa !15
  %.pre57 = add nsw i32 %.pre54, 1
  br label %bb.q

bb.q:                                             ; preds = %._crit_edge53, %_ZN4absl12lts_2025051218debugging_internalL17ParseTwoCharTokenEPNS1_5StateEPKc.exit32.thread
  %.pre-phi = phi i32 [ %.pre57, %._crit_edge53 ], [ %i.al, %_ZN4absl12lts_2025051218debugging_internalL17ParseTwoCharTokenEPNS1_5StateEPKc.exit32.thread ] ; 4 uses
  %i.ay = phi i32 [ %.pre55, %._crit_edge53 ], [ %i.am, %_ZN4absl12lts_2025051218debugging_internalL17ParseTwoCharTokenEPNS1_5StateEPKc.exit32.thread ] ; 2 uses
  %i.az = phi i32 [ %.pre54, %._crit_edge53 ], [ %i.ak, %_ZN4absl12lts_2025051218debugging_internalL17ParseTwoCharTokenEPNS1_5StateEPKc.exit32.thread ] ; 5 uses
  store <4 x i32> %.sroa.0.0.copyload, ptr %i.i, align 4
  store i32 %.pre-phi, ptr %i.a, align 4, !tbaa !17
  %i.ba = add nsw i32 %i.ay, 1                    ; 4 uses
  store i32 %i.ba, ptr %i.d, align 8, !tbaa !15
  %i.bb = icmp sgt i32 %i.az, 255
  %i.bc = icmp sgt i32 %i.ay, 131071
  %or.cond.i33 = select i1 %i.bb, i1 true, i1 %i.bc
  br i1 %or.cond.i33, label %_ZN4absl12lts_2025051218debugging_internalL17ParseTwoCharTokenEPNS1_5StateEPKc.exit37.thread, label %bb.r

bb.r:                                             ; preds = %bb.q
  %.val11.i34 = load ptr, ptr %0, align 8, !tbaa !8
  %.val12.i35 = load i32, ptr %i.i, align 4, !tbaa !16 ; 2 uses
  %i.bd = sext i32 %.val12.i35 to i64
  %i.be = getelementptr inbounds i8, ptr %.val11.i34, i64 %i.bd ; 2 uses
  %i.bf = load i8, ptr %i.be, align 1, !tbaa !7
  %i.bg = icmp eq i8 %i.bf, 84
  br i1 %i.bg, label %bb.s, label %_ZN4absl12lts_2025051218debugging_internalL17ParseTwoCharTokenEPNS1_5StateEPKc.exit37.thread

bb.s:                                             ; preds = %bb.r
  %i.bh = getelementptr inbounds nuw i8, ptr %i.be, i64 1
  %i.bi = load i8, ptr %i.bh, align 1, !tbaa !7
  %i.bj = icmp eq i8 %i.bi, 116
  br i1 %i.bj, label %bb.t, label %_ZN4absl12lts_2025051218debugging_internalL17ParseTwoCharTokenEPNS1_5StateEPKc.exit37.thread

bb.t:                                             ; preds = %bb.s
  %i.bk = add nsw i32 %.val12.i35, 2
  store i32 %i.bk, ptr %i.i, align 4, !tbaa !16
  store i32 %i.az, ptr %i.a, align 4, !tbaa !17
  br label %bb.u

bb.u:                                             ; preds = %.noexc, %bb.t
  %i.bl = invoke fastcc noundef zeroext i1 @_ZN4absl12lts_2025051218debugging_internalL22ParseTemplateParamDeclEPNS1_5StateE(ptr noundef nonnull %0)
          to label %.noexc unwind label %.loopexit, !inline_history !49

.noexc:                                           ; preds = %bb.u
  br i1 %i.bl, label %bb.u, label %_ZN4absl12lts_2025051218debugging_internalL10ZeroOrMoreEPFbPNS1_5StateEES3_.exit, !llvm.loop !30

_ZN4absl12lts_2025051218debugging_internalL10ZeroOrMoreEPFbPNS1_5StateEES3_.exit: ; preds = %.noexc
  %i.bm = load i32, ptr %i.a, align 4, !tbaa !17  ; 5 uses
  %i.bn = add nsw i32 %i.bm, 1                    ; 3 uses
  store i32 %i.bn, ptr %i.a, align 4, !tbaa !17
  %i.bo = load i32, ptr %i.d, align 8, !tbaa !15  ; 2 uses
  %i.bp = add nsw i32 %i.bo, 1                    ; 3 uses
  store i32 %i.bp, ptr %i.d, align 8, !tbaa !15
  %i.bq = icmp sgt i32 %i.bm, 255
  %i.br = icmp sgt i32 %i.bo, 131071
  %or.cond.i38 = select i1 %i.bq, i1 true, i1 %i.br
  br i1 %or.cond.i38, label %_ZN4absl12lts_2025051218debugging_internalL17ParseTwoCharTokenEPNS1_5StateEPKc.exit37.thread, label %bb.v

bb.v:                                             ; preds = %_ZN4absl12lts_2025051218debugging_internalL10ZeroOrMoreEPFbPNS1_5StateEES3_.exit
  %.val6.i = load ptr, ptr %0, align 8, !tbaa !8
  %.val7.i = load i32, ptr %i.i, align 4, !tbaa !16 ; 2 uses
  %i.bs = sext i32 %.val7.i to i64
  %i.bt = getelementptr inbounds i8, ptr %.val6.i, i64 %i.bs
  %i.bu = load i8, ptr %i.bt, align 1, !tbaa !7
  %i.bv = icmp eq i8 %i.bu, 69
  br i1 %i.bv, label %_ZN4absl12lts_2025051218debugging_internalL17ParseOneCharTokenEPNS1_5StateEc.exit, label %_ZN4absl12lts_2025051218debugging_internalL17ParseTwoCharTokenEPNS1_5StateEPKc.exit37.thread

_ZN4absl12lts_2025051218debugging_internalL17ParseOneCharTokenEPNS1_5StateEc.exit: ; preds = %bb.v
  %i.bw = add nsw i32 %.val7.i, 1
  store i32 %i.bw, ptr %i.i, align 4, !tbaa !16
  store i32 %i.bm, ptr %i.a, align 4, !tbaa !17
  br label %bb.ab

_ZN4absl12lts_2025051218debugging_internalL17ParseTwoCharTokenEPNS1_5StateEPKc.exit37.thread: ; preds = %bb.v, %_ZN4absl12lts_2025051218debugging_internalL10ZeroOrMoreEPFbPNS1_5StateEES3_.exit, %bb.r, %bb.s, %bb.q
  %.pre-phi58 = phi i32 [ %i.bn, %bb.v ], [ %i.bn, %_ZN4absl12lts_2025051218debugging_internalL10ZeroOrMoreEPFbPNS1_5StateEES3_.exit ], [ %.pre-phi, %bb.r ], [ %.pre-phi, %bb.s ], [ %.pre-phi, %bb.q ]
  %i.bx = phi i32 [ %i.bp, %bb.v ], [ %i.bp, %_ZN4absl12lts_2025051218debugging_internalL10ZeroOrMoreEPFbPNS1_5StateEES3_.exit ], [ %i.ba, %bb.r ], [ %i.ba, %bb.s ], [ %i.ba, %bb.q ] ; 2 uses
  %storemerge = phi i32 [ %i.bm, %bb.v ], [ %i.bm, %_ZN4absl12lts_2025051218debugging_internalL10ZeroOrMoreEPFbPNS1_5StateEES3_.exit ], [ %i.az, %bb.r ], [ %i.az, %bb.s ], [ %i.az, %bb.q ] ; 3 uses
  store <4 x i32> %.sroa.0.0.copyload, ptr %i.i, align 4
  store i32 %.pre-phi58, ptr %i.a, align 4, !tbaa !17
  %i.by = add nsw i32 %i.bx, 1
  store i32 %i.by, ptr %i.d, align 8, !tbaa !15
  %i.bz = icmp sgt i32 %storemerge, 255
  %i.ca = icmp sgt i32 %i.bx, 131071
  %or.cond.i40 = select i1 %i.bz, i1 true, i1 %i.ca
  br i1 %or.cond.i40, label %_ZN4absl12lts_2025051218debugging_internalL17ParseTwoCharTokenEPNS1_5StateEPKc.exit44.thread, label %bb.w

bb.w:                                             ; preds = %_ZN4absl12lts_2025051218debugging_internalL17ParseTwoCharTokenEPNS1_5StateEPKc.exit37.thread
  %.val11.i41 = load ptr, ptr %0, align 8, !tbaa !8
  %.val12.i42 = load i32, ptr %i.i, align 4, !tbaa !16 ; 2 uses
  %i.cb = sext i32 %.val12.i42 to i64
  %i.cc = getelementptr inbounds i8, ptr %.val11.i41, i64 %i.cb ; 2 uses
  %i.cd = load i8, ptr %i.cc, align 1, !tbaa !7
  %i.ce = icmp eq i8 %i.cd, 84
  br i1 %i.ce, label %bb.x, label %_ZN4absl12lts_2025051218debugging_internalL17ParseTwoCharTokenEPNS1_5StateEPKc.exit44.thread

bb.x:                                             ; preds = %bb.w
  %i.cf = getelementptr inbounds nuw i8, ptr %i.cc, i64 1
  %i.cg = load i8, ptr %i.cf, align 1, !tbaa !7
  %i.ch = icmp eq i8 %i.cg, 112
  br i1 %i.ch, label %bb.y, label %_ZN4absl12lts_2025051218debugging_internalL17ParseTwoCharTokenEPNS1_5StateEPKc.exit44.thread

_ZN4absl12lts_2025051218debugging_internalL17ParseTwoCharTokenEPNS1_5StateEPKc.exit44.thread: ; preds = %_ZN4absl12lts_2025051218debugging_internalL17ParseTwoCharTokenEPNS1_5StateEPKc.exit37.thread, %bb.x, %bb.w
  store i32 %storemerge, ptr %i.a, align 4, !tbaa !17
  br label %bb.aa

bb.y:                                             ; preds = %bb.x
  %i.ci = add nsw i32 %.val12.i42, 2
  store i32 %i.ci, ptr %i.i, align 4, !tbaa !16
  store i32 %storemerge, ptr %i.a, align 4, !tbaa !17
  %i.cj = invoke fastcc noundef zeroext i1 @_ZN4absl12lts_2025051218debugging_internalL22ParseTemplateParamDeclEPNS1_5StateE(ptr noundef nonnull %0)
          to label %bb.z unwind label %.loopexit.split-lp

bb.z:                                             ; preds = %bb.y
  br i1 %i.cj, label %bb.ab, label %bb.aa

bb.aa:                                            ; preds = %_ZN4absl12lts_2025051218debugging_internalL17ParseTwoCharTokenEPNS1_5StateEPKc.exit44.thread, %bb.z
  store <4 x i32> %.sroa.0.0.copyload, ptr %i.i, align 4
  br label %bb.ab

bb.ab:                                            ; preds = %_ZN4absl12lts_2025051218debugging_internalL17ParseOneCharTokenEPNS1_5StateEc.exit, %_ZN4absl12lts_2025051218debugging_internalL17ParseTwoCharTokenEPNS1_5StateEPKc.exit, %bb.k, %bb.z, %bb.p, %bb.aa
  %.0 = phi i1 [ false, %bb.aa ], [ true, %bb.z ], [ true, %_ZN4absl12lts_2025051218debugging_internalL17ParseTwoCharTokenEPNS1_5StateEPKc.exit ], [ true, %bb.p ], [ true, %_ZN4absl12lts_2025051218debugging_internalL17ParseOneCharTokenEPNS1_5StateEc.exit ], [ true, %bb.k ]
  %.pre56 = load i32, ptr %i.a, align 4, !tbaa !17
  %i.ck = add nsw i32 %.pre56, -1
  br label %_ZNK4absl12lts_2025051218debugging_internal12_GLOBAL__N_115ComplexityGuard12IsTooComplexEv.exit.thread

_ZNK4absl12lts_2025051218debugging_internal12_GLOBAL__N_115ComplexityGuard12IsTooComplexEv.exit.thread: ; preds = %bb.a, %bb.ab
  %i.cl = phi i32 [ %i.ck, %bb.ab ], [ %i.b, %bb.a ]
  %.1 = phi i1 [ %.0, %bb.ab ], [ false, %bb.a ]
  store i32 %i.cl, ptr %i.a, align 4, !tbaa !17
  ret i1 %.1
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc void @_ZN4absl12lts_2025051218debugging_internalL18ParseDiscriminatorEPNS1_5StateE(ptr nofree noundef captures(none) %0) unnamed_addr #7 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 20 ; 7 uses
  %i.b = load i32, ptr %i.a, align 4, !tbaa !17   ; 6 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 9 uses
  %i.d = load i32, ptr %i.c, align 8, !tbaa !15   ; 15 uses
  %i.e = add nsw i32 %i.d, 1
  store i32 %i.e, ptr %i.c, align 8, !tbaa !15
  %i.f = icmp sgt i32 %i.b, 255
  %i.g = icmp sgt i32 %i.d, 131071
  %or.cond = select i1 %i.f, i1 true, i1 %i.g
  br i1 %or.cond, label %_ZNK4absl12lts_2025051218debugging_internal12_GLOBAL__N_115ComplexityGuard12IsTooComplexEv.exit.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 28 ; 9 uses
  %.sroa.0.0.copyload = load <4 x i32>, ptr %i.h, align 4
  %i.i = add nsw i32 %i.b, 2                      ; 4 uses
  store i32 %i.i, ptr %i.a, align 4, !tbaa !17
  %i.j = add nsw i32 %i.d, 2
  store i32 %i.j, ptr %i.c, align 8, !tbaa !15
  %i.k = icmp sgt i32 %i.b, 254
  %i.l = icmp sgt i32 %i.d, 131070
  %or.cond.i = select i1 %i.k, i1 true, i1 %i.l
  br i1 %or.cond.i, label %_ZNK4absl12lts_2025051218debugging_internal12_GLOBAL__N_115ComplexityGuard12IsTooComplexEv.exit.thread, label %bb.c

bb.c:                                             ; preds = %bb.b
  %.val6.i = load ptr, ptr %0, align 8, !tbaa !8  ; 6 uses
  %.val7.i = load i32, ptr %i.h, align 4, !tbaa !16 ; 5 uses
  %i.m = sext i32 %.val7.i to i64
  %i.n = getelementptr inbounds i8, ptr %.val6.i, i64 %i.m
  %i.o = load i8, ptr %i.n, align 1, !tbaa !7
  %i.p = icmp eq i8 %i.o, 95
  br i1 %i.p, label %bb.d, label %_ZNK4absl12lts_2025051218debugging_internal12_GLOBAL__N_115ComplexityGuard12IsTooComplexEv.exit.thread

bb.d:                                             ; preds = %bb.c
  %i.q = add nsw i32 %.val7.i, 1                  ; 3 uses
  store i32 %i.q, ptr %i.h, align 4, !tbaa !16
  store i32 %i.i, ptr %i.a, align 4, !tbaa !17
  %i.r = add nsw i32 %i.d, 3
  store i32 %i.r, ptr %i.c, align 8, !tbaa !15
  %i.s = icmp sgt i32 %i.d, 131069
  br i1 %i.s, label %.thread40, label %bb.e

.thread40:                                        ; preds = %bb.d
  %i.t = add nuw nsw i32 %i.d, 4
  store i32 %i.t, ptr %i.c, align 8, !tbaa !15
  br label %.thread33

bb.e:                                             ; preds = %bb.d
  %i.u = sext i32 %i.q to i64
  %i.v = getelementptr inbounds i8, ptr %.val6.i, i64 %i.u
  %i.w = load i8, ptr %i.v, align 1, !tbaa !7
  %.off.i = add i8 %i.w, -48
  %switch.i = icmp ult i8 %.off.i, 10
  br i1 %switch.i, label %_ZN4absl12lts_2025051218debugging_internalL10ParseDigitEPNS1_5StateEPi.exit.thread, label %bb.f

_ZN4absl12lts_2025051218debugging_internalL10ParseDigitEPNS1_5StateEPi.exit.thread: ; preds = %bb.e
  %i.x = add nsw i32 %.val7.i, 2
  store i32 %i.x, ptr %i.h, align 4, !tbaa !16
  br label %_ZNK4absl12lts_2025051218debugging_internal12_GLOBAL__N_115ComplexityGuard12IsTooComplexEv.exit.thread

bb.f:                                             ; preds = %bb.e
  %i.y = add nsw i32 %i.d, 4
  store i32 %i.y, ptr %i.c, align 8, !tbaa !15
  %i.z = icmp eq i32 %i.d, 131069
  br i1 %i.z, label %.thread33, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.aa = sext i32 %i.q to i64
  %i.ab = getelementptr inbounds i8, ptr %.val6.i, i64 %i.aa
  %i.ac = load i8, ptr %i.ab, align 1, !tbaa !7
  %i.ad = icmp eq i8 %i.ac, 95
  br i1 %i.ad, label %bb.h, label %.thread33

bb.h:                                             ; preds = %bb.g
  %i.ae = add nsw i32 %.val7.i, 2                 ; 4 uses
  store i32 %i.ae, ptr %i.h, align 4, !tbaa !16
  %i.af = add nsw i32 %i.d, 5
  store i32 %i.af, ptr %i.c, align 8, !tbaa !15
  %i.ag = icmp eq i32 %i.d, 131068
  br i1 %i.ag, label %.thread33, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ah = add nsw i32 %i.b, 3
  store i32 %i.ah, ptr %i.a, align 4, !tbaa !17
  %i.ai = add nsw i32 %i.d, 6
  store i32 %i.ai, ptr %i.c, align 8, !tbaa !15
  %i.aj = icmp sgt i32 %i.b, 253
  %i.ak = icmp eq i32 %i.d, 131067
  %or.cond.i.i20 = select i1 %i.aj, i1 true, i1 %i.ak
  br i1 %or.cond.i.i20, label %._crit_edge44.i, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.al = sext i32 %i.ae to i64
  %i.am = getelementptr inbounds i8, ptr %.val6.i, i64 %i.al
  %i.an = load i8, ptr %i.am, align 1, !tbaa !7
  %i.ao = icmp eq i8 %i.an, 110
  br i1 %i.ao, label %bb.k, label %._crit_edge44.i

bb.k:                                             ; preds = %bb.j
  %i.ap = add nsw i32 %.val7.i, 3                 ; 2 uses
  store i32 %i.ap, ptr %i.h, align 4, !tbaa !16
  br label %._crit_edge44.i

._crit_edge44.i:                                  ; preds = %bb.k, %bb.j, %bb.i
  %.val35.i = phi i32 [ %i.ae, %bb.j ], [ %i.ap, %bb.k ], [ %i.ae, %bb.i ] ; 2 uses
  store i32 %i.i, ptr %i.a, align 4, !tbaa !17
  %i.aq = sext i32 %.val35.i to i64
  %i.ar = getelementptr inbounds i8, ptr %.val6.i, i64 %i.aq ; 3 uses
  %i.as = load i8, ptr %i.ar, align 1, !tbaa !7
  %i.at = add i8 %i.as, -48
  %i.au = icmp ult i8 %i.at, 10
  br i1 %i.au, label %.lr.ph.i, label %.thread33

.lr.ph.i:                                         ; preds = %._crit_edge44.i, %.lr.ph.i
  %.02140.i = phi ptr [ %i.av, %.lr.ph.i ], [ %i.ar, %._crit_edge44.i ]
  %i.av = getelementptr inbounds nuw i8, ptr %.02140.i, i64 1 ; 3 uses
  %i.aw = load i8, ptr %i.av, align 1, !tbaa !7
  %i.ax = add i8 %i.aw, -48
  %i.ay = icmp ult i8 %i.ax, 10
  br i1 %i.ay, label %.lr.ph.i, label %bb.l, !llvm.loop !42

bb.l:                                             ; preds = %.lr.ph.i
  %i.az = ptrtoint ptr %i.av to i64
  %i.ba = ptrtoint ptr %i.ar to i64
  %i.bb = sub i64 %i.az, %i.ba
  %i.bc = trunc i64 %i.bb to i32
  %i.bd = add nsw i32 %.val35.i, %i.bc            ; 3 uses
  store i32 %i.bd, ptr %i.h, align 4, !tbaa !16
  store i32 %i.i, ptr %i.a, align 4, !tbaa !17
  %i.be = add nsw i32 %i.d, 7
  store i32 %i.be, ptr %i.c, align 8, !tbaa !15
  %i.bf = icmp sgt i32 %i.d, 131065
  br i1 %i.bf, label %.thread33, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.bg = sext i32 %i.bd to i64
  %i.bh = getelementptr inbounds i8, ptr %.val6.i, i64 %i.bg
  %i.bi = load i8, ptr %i.bh, align 1, !tbaa !7
  %i.bj = icmp eq i8 %i.bi, 95
  br i1 %i.bj, label %bb.n, label %.thread33

bb.n:                                             ; preds = %bb.m
  %i.bk = add nsw i32 %i.bd, 1
  store i32 %i.bk, ptr %i.h, align 4, !tbaa !16
  br label %_ZNK4absl12lts_2025051218debugging_internal12_GLOBAL__N_115ComplexityGuard12IsTooComplexEv.exit.thread

.thread33:                                        ; preds = %bb.m, %bb.l, %._crit_edge44.i, %bb.h, %bb.g, %bb.f, %.thread40
  store <4 x i32> %.sroa.0.0.copyload, ptr %i.h, align 4
  br label %_ZNK4absl12lts_2025051218debugging_internal12_GLOBAL__N_115ComplexityGuard12IsTooComplexEv.exit.thread

_ZNK4absl12lts_2025051218debugging_internal12_GLOBAL__N_115ComplexityGuard12IsTooComplexEv.exit.thread: ; preds = %.thread33, %_ZN4absl12lts_2025051218debugging_internalL10ParseDigitEPNS1_5StateEPi.exit.thread, %bb.n, %bb.b, %bb.c, %bb.a
  store i32 %i.b, ptr %i.a, align 4, !tbaa !17
  ret void
}

; Function Attrs: mustprogress nofree nosync memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc noundef zeroext i1 @_ZN4absl12lts_2025051218debugging_internalL23ParseBaseUnresolvedNameEPNS1_5StateE(ptr noundef %0) unnamed_addr #6 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 20 ; 14 uses
  %i.b = load i32, ptr %i.a, align 4, !tbaa !17   ; 2 uses
  %i.c = add nsw i32 %i.b, 1
  store i32 %i.c, ptr %i.a, align 4, !tbaa !17
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 6 uses
  %i.e = load i32, ptr %i.d, align 8, !tbaa !15   ; 2 uses
  %i.f = add nsw i32 %i.e, 1
  store i32 %i.f, ptr %i.d, align 8, !tbaa !15
  %i.g = icmp sgt i32 %i.b, 255
  %i.h = icmp sgt i32 %i.e, 131071
  %or.cond = select i1 %i.g, i1 true, i1 %i.h
  br i1 %or.cond, label %_ZNK4absl12lts_2025051218debugging_internal12_GLOBAL__N_115ComplexityGuard12IsTooComplexEv.exit.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.i = tail call fastcc noundef zeroext i1 @_ZN4absl12lts_2025051218debugging_internalL15ParseSourceNameEPNS1_5StateE(ptr noundef nonnull %0), !inline_history !50
  br i1 %i.i, label %bb.c, label %_ZN4absl12lts_2025051218debugging_internalL13ParseSimpleIdEPNS1_5StateE.exit

bb.c:                                             ; preds = %bb.b
  %i.j = invoke fastcc noundef zeroext i1 @_ZN4absl12lts_2025051218debugging_internalL17ParseTemplateArgsEPNS1_5StateE(ptr noundef nonnull %0)
          to label %_ZNK4absl12lts_2025051218debugging_internal12_GLOBAL__N_115ComplexityGuard12IsTooComplexEv.exit.thread unwind label %bb.d, !inline_history !50 ; 0 uses

bb.d:                                             ; preds = %bb.c
  %i.k = landingpad { ptr, i32 }
          cleanup
  br label %bb.p

_ZN4absl12lts_2025051218debugging_internalL13ParseSimpleIdEPNS1_5StateE.exit: ; preds = %bb.b
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 28 ; 7 uses
  %.sroa.0.0.copyload = load <4 x i32>, ptr %i.l, align 4 ; 2 uses
  %i.m = load i32, ptr %i.a, align 4, !tbaa !17   ; 5 uses
  %i.n = add nsw i32 %i.m, 1                      ; 2 uses
  store i32 %i.n, ptr %i.a, align 4, !tbaa !17
  %i.o = load i32, ptr %i.d, align 8, !tbaa !15   ; 2 uses
  %i.p = add nsw i32 %i.o, 1                      ; 2 uses
  store i32 %i.p, ptr %i.d, align 8, !tbaa !15
  %i.q = icmp sgt i32 %i.m, 255
  %i.r = icmp sgt i32 %i.o, 131071
  %or.cond.i = select i1 %i.q, i1 true, i1 %i.r
  br i1 %or.cond.i, label %_ZN4absl12lts_2025051218debugging_internalL17ParseTwoCharTokenEPNS1_5StateEPKc.exit.thread, label %bb.e

bb.e:                                             ; preds = %_ZN4absl12lts_2025051218debugging_internalL13ParseSimpleIdEPNS1_5StateE.exit
  %.val11.i = load ptr, ptr %0, align 8, !tbaa !8
  %.val12.i = load i32, ptr %i.l, align 4, !tbaa !16 ; 2 uses
  %i.s = sext i32 %.val12.i to i64
  %i.t = getelementptr inbounds i8, ptr %.val11.i, i64 %i.s ; 2 uses
  %i.u = load i8, ptr %i.t, align 1, !tbaa !7
  %i.v = icmp eq i8 %i.u, 111
  br i1 %i.v, label %bb.f, label %_ZN4absl12lts_2025051218debugging_internalL17ParseTwoCharTokenEPNS1_5StateEPKc.exit.thread

bb.f:                                             ; preds = %bb.e
  %i.w = getelementptr inbounds nuw i8, ptr %i.t, i64 1
  %i.x = load i8, ptr %i.w, align 1, !tbaa !7
  %i.y = icmp eq i8 %i.x, 110
  br i1 %i.y, label %bb.g, label %_ZN4absl12lts_2025051218debugging_internalL17ParseTwoCharTokenEPNS1_5StateEPKc.exit.thread

_ZN4absl12lts_2025051218debugging_internalL17ParseTwoCharTokenEPNS1_5StateEPKc.exit.thread: ; preds = %_ZN4absl12lts_2025051218debugging_internalL13ParseSimpleIdEPNS1_5StateE.exit, %bb.f, %bb.e
  store i32 %i.m, ptr %i.a, align 4, !tbaa !17
  br label %bb.j

bb.g:                                             ; preds = %bb.f
  %i.z = add nsw i32 %.val12.i, 2
  store i32 %i.z, ptr %i.l, align 4, !tbaa !16
  store i32 %i.m, ptr %i.a, align 4, !tbaa !17
  %i.aa = invoke fastcc noundef zeroext i1 @_ZN4absl12lts_2025051218debugging_internalL17ParseOperatorNameEPNS1_5StateEPi(ptr noundef nonnull %0, ptr noundef null)
          to label %bb.h unwind label %bb.i

bb.h:                                             ; preds = %bb.g
  br i1 %i.aa, label %.invoke, label %._crit_edge

._crit_edge:                                      ; preds = %bb.h
  %.pre = load i32, ptr %i.a, align 4, !tbaa !17  ; 2 uses
  %.pre31 = load i32, ptr %i.d, align 8, !tbaa !15
  %.pre32 = add nsw i32 %.pre, 1
  br label %bb.j

bb.i:                                             ; preds = %.invoke, %bb.n, %bb.g
  %i.ab = landingpad { ptr, i32 }
          cleanup
  br label %bb.p

bb.j:                                             ; preds = %._crit_edge, %_ZN4absl12lts_2025051218debugging_internalL17ParseTwoCharTokenEPNS1_5StateEPKc.exit.thread
  %.pre-phi = phi i32 [ %.pre32, %._crit_edge ], [ %i.n, %_ZN4absl12lts_2025051218debugging_internalL17ParseTwoCharTokenEPNS1_5StateEPKc.exit.thread ]
  %i.ac = phi i32 [ %.pre31, %._crit_edge ], [ %i.p, %_ZN4absl12lts_2025051218debugging_internalL17ParseTwoCharTokenEPNS1_5StateEPKc.exit.thread ] ; 2 uses
  %i.ad = phi i32 [ %.pre, %._crit_edge ], [ %i.m, %_ZN4absl12lts_2025051218debugging_internalL17ParseTwoCharTokenEPNS1_5StateEPKc.exit.thread ] ; 3 uses
  store <4 x i32> %.sroa.0.0.copyload, ptr %i.l, align 4
  store i32 %.pre-phi, ptr %i.a, align 4, !tbaa !17
  %i.ae = add nsw i32 %i.ac, 1
  store i32 %i.ae, ptr %i.d, align 8, !tbaa !15
  %i.af = icmp sgt i32 %i.ad, 255
  %i.ag = icmp sgt i32 %i.ac, 131071
  %or.cond.i19 = select i1 %i.af, i1 true, i1 %i.ag
  br i1 %or.cond.i19, label %_ZN4absl12lts_2025051218debugging_internalL17ParseTwoCharTokenEPNS1_5StateEPKc.exit23.thread, label %bb.k

bb.k:                                             ; preds = %bb.j
  %.val11.i20 = load ptr, ptr %0, align 8, !tbaa !8
  %.val12.i21 = load i32, ptr %i.l, align 4, !tbaa !16 ; 2 uses
  %i.ah = sext i32 %.val12.i21 to i64
  %i.ai = getelementptr inbounds i8, ptr %.val11.i20, i64 %i.ah ; 2 uses
  %i.aj = load i8, ptr %i.ai, align 1, !tbaa !7
  %i.ak = icmp eq i8 %i.aj, 100
  br i1 %i.ak, label %bb.l, label %_ZN4absl12lts_2025051218debugging_internalL17ParseTwoCharTokenEPNS1_5StateEPKc.exit23.thread

bb.l:                                             ; preds = %bb.k
  %i.al = getelementptr inbounds nuw i8, ptr %i.ai, i64 1
  %i.am = load i8, ptr %i.al, align 1, !tbaa !7
  %i.an = icmp eq i8 %i.am, 110
  br i1 %i.an, label %bb.m, label %_ZN4absl12lts_2025051218debugging_internalL17ParseTwoCharTokenEPNS1_5StateEPKc.exit23.thread

_ZN4absl12lts_2025051218debugging_internalL17ParseTwoCharTokenEPNS1_5StateEPKc.exit23.thread: ; preds = %bb.j, %bb.l, %bb.k
  store i32 %i.ad, ptr %i.a, align 4, !tbaa !17
  br label %_ZN4absl12lts_2025051218debugging_internalL13ParseSimpleIdEPNS1_5StateE.exit27

bb.m:                                             ; preds = %bb.l
  %i.ao = add nsw i32 %.val12.i21, 2
  store i32 %i.ao, ptr %i.l, align 4, !tbaa !16
  store i32 %i.ad, ptr %i.a, align 4, !tbaa !17
  %i.ap = tail call fastcc noundef zeroext i1 @_ZN4absl12lts_2025051218debugging_internalL18ParseTemplateParamEPNS1_5StateE(ptr noundef nonnull %0), !inline_history !67
  br i1 %i.ap, label %.invoke, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.aq = invoke fastcc noundef zeroext i1 @_ZN4absl12lts_2025051218debugging_internalL13ParseDecltypeEPNS1_5StateE(ptr noundef nonnull %0)
          to label %.noexc25 unwind label %bb.i, !inline_history !67

.noexc25:                                         ; preds = %bb.n
  br i1 %i.aq, label %_ZNK4absl12lts_2025051218debugging_internal12_GLOBAL__N_115ComplexityGuard12IsTooComplexEv.exit.thread, label %_ZN4absl12lts_2025051218debugging_internalL19ParseUnresolvedTypeEPNS1_5StateE.exit

_ZN4absl12lts_2025051218debugging_internalL19ParseUnresolvedTypeEPNS1_5StateE.exit: ; preds = %.noexc25
  %i.ar = tail call fastcc noundef zeroext i1 @_ZN4absl12lts_2025051218debugging_internalL17ParseSubstitutionEPNS1_5StateEb(ptr noundef nonnull %0, i1 noundef zeroext false), !inline_history !67
  br i1 %i.ar, label %_ZNK4absl12lts_2025051218debugging_internal12_GLOBAL__N_115ComplexityGuard12IsTooComplexEv.exit.thread, label %bb.o

bb.o:                                             ; preds = %_ZN4absl12lts_2025051218debugging_internalL19ParseUnresolvedTypeEPNS1_5StateE.exit
  %i.as = tail call fastcc noundef zeroext i1 @_ZN4absl12lts_2025051218debugging_internalL15ParseSourceNameEPNS1_5StateE(ptr noundef nonnull %0), !inline_history !50
  br i1 %i.as, label %.invoke, label %_ZN4absl12lts_2025051218debugging_internalL13ParseSimpleIdEPNS1_5StateE.exit27

.invoke:                                          ; preds = %bb.h, %bb.o, %bb.m
  %i.at = invoke fastcc noundef zeroext i1 @_ZN4absl12lts_2025051218debugging_internalL17ParseTemplateArgsEPNS1_5StateE(ptr noundef nonnull %0)
          to label %_ZNK4absl12lts_2025051218debugging_internal12_GLOBAL__N_115ComplexityGuard12IsTooComplexEv.exit.thread unwind label %bb.i, !inline_history !50 ; 0 uses

_ZN4absl12lts_2025051218debugging_internalL13ParseSimpleIdEPNS1_5StateE.exit27: ; preds = %bb.o, %_ZN4absl12lts_2025051218debugging_internalL17ParseTwoCharTokenEPNS1_5StateEPKc.exit23.thread
  store <4 x i32> %.sroa.0.0.copyload, ptr %i.l, align 4
  br label %_ZNK4absl12lts_2025051218debugging_internal12_GLOBAL__N_115ComplexityGuard12IsTooComplexEv.exit.thread

_ZNK4absl12lts_2025051218debugging_internal12_GLOBAL__N_115ComplexityGuard12IsTooComplexEv.exit.thread: ; preds = %_ZN4absl12lts_2025051218debugging_internalL13ParseSimpleIdEPNS1_5StateE.exit27, %_ZN4absl12lts_2025051218debugging_internalL19ParseUnresolvedTypeEPNS1_5StateE.exit, %.noexc25, %.invoke, %bb.c, %bb.a
  %.1 = phi i1 [ false, %bb.a ], [ true, %bb.c ], [ true, %_ZN4absl12lts_2025051218debugging_internalL19ParseUnresolvedTypeEPNS1_5StateE.exit ], [ false, %_ZN4absl12lts_2025051218debugging_internalL13ParseSimpleIdEPNS1_5StateE.exit27 ], [ true, %.invoke ], [ true, %.noexc25 ]
  %i.au = load i32, ptr %i.a, align 4, !tbaa !17
  %i.av = add nsw i32 %i.au, -1
  store i32 %i.av, ptr %i.a, align 4, !tbaa !17
  ret i1 %.1

bb.p:                                             ; preds = %bb.i, %bb.d
  %.pn = phi { ptr, i32 } [ %i.ab, %bb.i ], [ %i.k, %bb.d ]
  %i.aw = load i32, ptr %i.a, align 4, !tbaa !17
  %i.ax = add nsw i32 %i.aw, -1
  store i32 %i.ax, ptr %i.a, align 4, !tbaa !17
  resume { ptr, i32 } %.pn
}

; Function Attrs: mustprogress nofree nosync memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc noundef zeroext i1 @_ZN4absl12lts_2025051218debugging_internalL29ParseUnresolvedQualifierLevelEPNS1_5StateE(ptr nofree noundef captures(none) %0) unnamed_addr #6 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 20 ; 6 uses
  %i.b = load i32, ptr %i.a, align 4, !tbaa !17   ; 2 uses
  %i.c = add nsw i32 %i.b, 1
  store i32 %i.c, ptr %i.a, align 4, !tbaa !17
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.e = load i32, ptr %i.d, align 8, !tbaa !15   ; 2 uses
  %i.f = add nsw i32 %i.e, 1
  store i32 %i.f, ptr %i.d, align 8, !tbaa !15
  %i.g = icmp sgt i32 %i.b, 255
  %i.h = icmp sgt i32 %i.e, 131071
  %or.cond = select i1 %i.g, i1 true, i1 %i.h
  br i1 %or.cond, label %_ZNK4absl12lts_2025051218debugging_internal12_GLOBAL__N_115ComplexityGuard12IsTooComplexEv.exit.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.i = tail call fastcc noundef zeroext i1 @_ZN4absl12lts_2025051218debugging_internalL15ParseSourceNameEPNS1_5StateE(ptr noundef nonnull %0), !inline_history !50
  br i1 %i.i, label %bb.c, label %_ZN4absl12lts_2025051218debugging_internalL13ParseSimpleIdEPNS1_5StateE.exit

bb.c:                                             ; preds = %bb.b
  %i.j = invoke fastcc noundef zeroext i1 @_ZN4absl12lts_2025051218debugging_internalL17ParseTemplateArgsEPNS1_5StateE(ptr noundef nonnull %0)
          to label %_ZNK4absl12lts_2025051218debugging_internal12_GLOBAL__N_115ComplexityGuard12IsTooComplexEv.exit.thread unwind label %bb.d, !inline_history !50 ; 0 uses

bb.d:                                             ; preds = %bb.c
  %i.k = landingpad { ptr, i32 }
          cleanup
  br label %bb.i

_ZN4absl12lts_2025051218debugging_internalL13ParseSimpleIdEPNS1_5StateE.exit: ; preds = %bb.b
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 28 ; 2 uses
  %.sroa.0.0.copyload = load <4 x i32>, ptr %i.l, align 4
end_hunk_0
