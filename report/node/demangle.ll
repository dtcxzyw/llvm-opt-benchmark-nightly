Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/node/original/demangle?download=true
inline.NumInlined: 653
inline.NumDeleted: 85
loop-unroll.NumCompletelyUnrolled: 16
loop-unroll.NumUnrolled: 17
begin_hunk_0_@_ZN4absl18debugging_internalL22ParseTemplateParamDeclEPNS0_5StateE:bb.a
  %i.w = icmp sgt i32 %i.e, 131069
  %or.cond.i21 = select i1 %i.l, i1 true, i1 %i.w
  br i1 %or.cond.i21, label %_ZN4absl18debugging_internalL17ParseTwoCharTokenEPNS0_5StateEPKc.exit25.thread, label %bb.f

bb.f:                                             ; preds = %bb.e
  %.val10.i22 = load ptr, ptr %0, align 8
  %.val11.i23 = load i32, ptr %i.i, align 4       ; 2 uses
  %i.x = sext i32 %.val11.i23 to i64
  %i.y = getelementptr inbounds i8, ptr %.val10.i22, i64 %i.x ; 2 uses
  %i.z = load i8, ptr %i.y, align 1
  %i.aa = icmp eq i8 %i.z, 84
  br i1 %i.aa, label %bb.g, label %_ZN4absl18debugging_internalL17ParseTwoCharTokenEPNS0_5StateEPKc.exit25.thread

bb.g:                                             ; preds = %bb.f
  %i.ab = getelementptr inbounds nuw i8, ptr %i.y, i64 1
  %i.ac = load i8, ptr %i.ab, align 1
  %i.ad = icmp eq i8 %i.ac, 107
  br i1 %i.ad, label %bb.h, label %_ZN4absl18debugging_internalL17ParseTwoCharTokenEPNS0_5StateEPKc.exit25.thread

bb.h:                                             ; preds = %bb.g
  %i.ae = add nsw i32 %.val11.i23, 2
  store i32 %i.ae, ptr %i.i, align 4
  store i32 %i.c, ptr %i.a, align 4
  %i.af = tail call fastcc noundef zeroext i1 @_ZN4absl18debugging_internalL9ParseNameEPNS0_5StateE(ptr noundef nonnull %0)
  br i1 %i.af, label %bb.i, label %._crit_edge

._crit_edge:                                      ; preds = %bb.h
  %.pre = load i32, ptr %i.a, align 4
  %.pre50 = load i32, ptr %i.d, align 8
  br label %_ZN4absl18debugging_internalL17ParseTwoCharTokenEPNS0_5StateEPKc.exit25.thread

bb.i:                                             ; preds = %bb.h
  %i.ag = tail call fastcc noundef zeroext i1 @_ZN4absl18debugging_internalL17ParseTemplateArgsEPNS0_5StateE(ptr noundef nonnull %0) ; 0 uses
  br label %bb.v

_ZN4absl18debugging_internalL17ParseTwoCharTokenEPNS0_5StateEPKc.exit25.thread: ; preds = %bb.f, %bb.g, %bb.e, %._crit_edge
  %i.ah = phi i32 [ %.pre50, %._crit_edge ], [ %i.v, %bb.e ], [ %i.v, %bb.g ], [ %i.v, %bb.f ] ; 2 uses
  %i.ai = phi i32 [ %.pre, %._crit_edge ], [ %i.c, %bb.e ], [ %i.c, %bb.g ], [ %i.c, %bb.f ] ; 6 uses
  store <4 x i32> %.sroa.0.0.copyload, ptr %i.i, align 4
  %i.aj = add nsw i32 %i.ai, 1                    ; 4 uses
  store i32 %i.aj, ptr %i.a, align 4
  %i.ak = add nsw i32 %i.ah, 1                    ; 4 uses
  store i32 %i.ak, ptr %i.d, align 8
  %i.al = icmp sgt i32 %i.ai, 255
  %i.am = icmp sgt i32 %i.ah, 131071
  %or.cond.i26 = select i1 %i.al, i1 true, i1 %i.am
  br i1 %or.cond.i26, label %_ZN4absl18debugging_internalL17ParseTwoCharTokenEPNS0_5StateEPKc.exit30.thread, label %bb.j

bb.j:                                             ; preds = %_ZN4absl18debugging_internalL17ParseTwoCharTokenEPNS0_5StateEPKc.exit25.thread
  %.val10.i27 = load ptr, ptr %0, align 8
  %.val11.i28 = load i32, ptr %i.i, align 4       ; 2 uses
  %i.an = sext i32 %.val11.i28 to i64
  %i.ao = getelementptr inbounds i8, ptr %.val10.i27, i64 %i.an ; 2 uses
  %i.ap = load i8, ptr %i.ao, align 1
  %i.aq = icmp eq i8 %i.ap, 84
  br i1 %i.aq, label %bb.k, label %_ZN4absl18debugging_internalL17ParseTwoCharTokenEPNS0_5StateEPKc.exit30.thread

bb.k:                                             ; preds = %bb.j
  %i.ar = getelementptr inbounds nuw i8, ptr %i.ao, i64 1
  %i.as = load i8, ptr %i.ar, align 1
  %i.at = icmp eq i8 %i.as, 110
  br i1 %i.at, label %bb.l, label %_ZN4absl18debugging_internalL17ParseTwoCharTokenEPNS0_5StateEPKc.exit30.thread

bb.l:                                             ; preds = %bb.k
  %i.au = add nsw i32 %.val11.i28, 2
  store i32 %i.au, ptr %i.i, align 4
  store i32 %i.ai, ptr %i.a, align 4
  %i.av = tail call fastcc noundef zeroext i1 @_ZN4absl18debugging_internalL9ParseTypeEPNS0_5StateE(ptr noundef nonnull %0)
  br i1 %i.av, label %bb.v, label %._crit_edge51

._crit_edge51:                                    ; preds = %bb.l
  %.pre52 = load i32, ptr %i.a, align 4           ; 2 uses
  %.pre53 = load i32, ptr %i.d, align 8
  %.pre55 = add nsw i32 %.pre52, 1
  br label %_ZN4absl18debugging_internalL17ParseTwoCharTokenEPNS0_5StateEPKc.exit30.thread

_ZN4absl18debugging_internalL17ParseTwoCharTokenEPNS0_5StateEPKc.exit30.thread: ; preds = %bb.j, %bb.k, %_ZN4absl18debugging_internalL17ParseTwoCharTokenEPNS0_5StateEPKc.exit25.thread, %._crit_edge51
  %.pre-phi = phi i32 [ %.pre55, %._crit_edge51 ], [ %i.aj, %_ZN4absl18debugging_internalL17ParseTwoCharTokenEPNS0_5StateEPKc.exit25.thread ], [ %i.aj, %bb.k ], [ %i.aj, %bb.j ] ; 4 uses
  %i.aw = phi i32 [ %.pre53, %._crit_edge51 ], [ %i.ak, %_ZN4absl18debugging_internalL17ParseTwoCharTokenEPNS0_5StateEPKc.exit25.thread ], [ %i.ak, %bb.k ], [ %i.ak, %bb.j ] ; 2 uses
  %i.ax = phi i32 [ %.pre52, %._crit_edge51 ], [ %i.ai, %_ZN4absl18debugging_internalL17ParseTwoCharTokenEPNS0_5StateEPKc.exit25.thread ], [ %i.ai, %bb.k ], [ %i.ai, %bb.j ] ; 5 uses
  store <4 x i32> %.sroa.0.0.copyload, ptr %i.i, align 4
  store i32 %.pre-phi, ptr %i.a, align 4
  %i.ay = add nsw i32 %i.aw, 1                    ; 4 uses
  store i32 %i.ay, ptr %i.d, align 8
  %i.az = icmp sgt i32 %i.ax, 255
  %i.ba = icmp sgt i32 %i.aw, 131071
  %or.cond.i31 = select i1 %i.az, i1 true, i1 %i.ba
  br i1 %or.cond.i31, label %_ZN4absl18debugging_internalL17ParseTwoCharTokenEPNS0_5StateEPKc.exit35.thread, label %bb.m

bb.m:                                             ; preds = %_ZN4absl18debugging_internalL17ParseTwoCharTokenEPNS0_5StateEPKc.exit30.thread
  %.val10.i32 = load ptr, ptr %0, align 8
  %.val11.i33 = load i32, ptr %i.i, align 4       ; 2 uses
  %i.bb = sext i32 %.val11.i33 to i64
  %i.bc = getelementptr inbounds i8, ptr %.val10.i32, i64 %i.bb ; 2 uses
  %i.bd = load i8, ptr %i.bc, align 1
  %i.be = icmp eq i8 %i.bd, 84
  br i1 %i.be, label %bb.n, label %_ZN4absl18debugging_internalL17ParseTwoCharTokenEPNS0_5StateEPKc.exit35.thread

bb.n:                                             ; preds = %bb.m
  %i.bf = getelementptr inbounds nuw i8, ptr %i.bc, i64 1
  %i.bg = load i8, ptr %i.bf, align 1
  %i.bh = icmp eq i8 %i.bg, 116
  br i1 %i.bh, label %bb.o, label %_ZN4absl18debugging_internalL17ParseTwoCharTokenEPNS0_5StateEPKc.exit35.thread

bb.o:                                             ; preds = %bb.n
  %i.bi = add nsw i32 %.val11.i33, 2
  store i32 %i.bi, ptr %i.i, align 4
  store i32 %i.ax, ptr %i.a, align 4
  br label %bb.p

bb.p:                                             ; preds = %bb.p, %bb.o
  %i.bj = tail call fastcc noundef zeroext i1 @_ZN4absl18debugging_internalL22ParseTemplateParamDeclEPNS0_5StateE(ptr noundef nonnull %0) #16, !inline_history !27
  br i1 %i.bj, label %bb.p, label %_ZN4absl18debugging_internalL10ZeroOrMoreEPFbPNS0_5StateEES2_.exit, !llvm.loop !11

_ZN4absl18debugging_internalL10ZeroOrMoreEPFbPNS0_5StateEES2_.exit: ; preds = %bb.p
  %i.bk = load i32, ptr %i.a, align 4             ; 5 uses
  %i.bl = add nsw i32 %i.bk, 1                    ; 3 uses
  store i32 %i.bl, ptr %i.a, align 4
  %i.bm = load i32, ptr %i.d, align 8             ; 2 uses
  %i.bn = add nsw i32 %i.bm, 1                    ; 3 uses
  store i32 %i.bn, ptr %i.d, align 8
  %i.bo = icmp sgt i32 %i.bk, 255
  %i.bp = icmp sgt i32 %i.bm, 131071
  %or.cond.i36 = select i1 %i.bo, i1 true, i1 %i.bp
  br i1 %or.cond.i36, label %_ZN4absl18debugging_internalL17ParseTwoCharTokenEPNS0_5StateEPKc.exit35.thread, label %bb.q

bb.q:                                             ; preds = %_ZN4absl18debugging_internalL10ZeroOrMoreEPFbPNS0_5StateEES2_.exit
  %.val5.i = load ptr, ptr %0, align 8
  %.val6.i = load i32, ptr %i.i, align 4          ; 2 uses
  %i.bq = sext i32 %.val6.i to i64
  %i.br = getelementptr inbounds i8, ptr %.val5.i, i64 %i.bq
  %i.bs = load i8, ptr %i.br, align 1
  %i.bt = icmp eq i8 %i.bs, 69
  br i1 %i.bt, label %_ZN4absl18debugging_internalL17ParseOneCharTokenEPNS0_5StateEc.exit, label %_ZN4absl18debugging_internalL17ParseTwoCharTokenEPNS0_5StateEPKc.exit35.thread

_ZN4absl18debugging_internalL17ParseOneCharTokenEPNS0_5StateEc.exit: ; preds = %bb.q
  %i.bu = add nsw i32 %.val6.i, 1
  store i32 %i.bu, ptr %i.i, align 4
  store i32 %i.bk, ptr %i.a, align 4
  br label %bb.v

_ZN4absl18debugging_internalL17ParseTwoCharTokenEPNS0_5StateEPKc.exit35.thread: ; preds = %bb.q, %_ZN4absl18debugging_internalL10ZeroOrMoreEPFbPNS0_5StateEES2_.exit, %bb.m, %bb.n, %_ZN4absl18debugging_internalL17ParseTwoCharTokenEPNS0_5StateEPKc.exit30.thread
  %.pre-phi56 = phi i32 [ %i.bl, %bb.q ], [ %i.bl, %_ZN4absl18debugging_internalL10ZeroOrMoreEPFbPNS0_5StateEES2_.exit ], [ %.pre-phi, %bb.m ], [ %.pre-phi, %bb.n ], [ %.pre-phi, %_ZN4absl18debugging_internalL17ParseTwoCharTokenEPNS0_5StateEPKc.exit30.thread ]
  %i.bv = phi i32 [ %i.bn, %bb.q ], [ %i.bn, %_ZN4absl18debugging_internalL10ZeroOrMoreEPFbPNS0_5StateEES2_.exit ], [ %i.ay, %bb.m ], [ %i.ay, %bb.n ], [ %i.ay, %_ZN4absl18debugging_internalL17ParseTwoCharTokenEPNS0_5StateEPKc.exit30.thread ] ; 2 uses
  %storemerge = phi i32 [ %i.bk, %bb.q ], [ %i.bk, %_ZN4absl18debugging_internalL10ZeroOrMoreEPFbPNS0_5StateEES2_.exit ], [ %i.ax, %bb.m ], [ %i.ax, %bb.n ], [ %i.ax, %_ZN4absl18debugging_internalL17ParseTwoCharTokenEPNS0_5StateEPKc.exit30.thread ] ; 3 uses
  store <4 x i32> %.sroa.0.0.copyload, ptr %i.i, align 4
  store i32 %.pre-phi56, ptr %i.a, align 4
  %i.bw = add nsw i32 %i.bv, 1
  store i32 %i.bw, ptr %i.d, align 8
  %i.bx = icmp sgt i32 %storemerge, 255
  %i.by = icmp sgt i32 %i.bv, 131071
  %or.cond.i38 = select i1 %i.bx, i1 true, i1 %i.by
  br i1 %or.cond.i38, label %_ZN4absl18debugging_internalL17ParseTwoCharTokenEPNS0_5StateEPKc.exit42.thread, label %bb.r

bb.r:                                             ; preds = %_ZN4absl18debugging_internalL17ParseTwoCharTokenEPNS0_5StateEPKc.exit35.thread
  %.val10.i39 = load ptr, ptr %0, align 8
  %.val11.i40 = load i32, ptr %i.i, align 4       ; 2 uses
  %i.bz = sext i32 %.val11.i40 to i64
  %i.ca = getelementptr inbounds i8, ptr %.val10.i39, i64 %i.bz ; 2 uses
  %i.cb = load i8, ptr %i.ca, align 1
  %i.cc = icmp eq i8 %i.cb, 84
  br i1 %i.cc, label %bb.s, label %_ZN4absl18debugging_internalL17ParseTwoCharTokenEPNS0_5StateEPKc.exit42.thread

bb.s:                                             ; preds = %bb.r
  %i.cd = getelementptr inbounds nuw i8, ptr %i.ca, i64 1
  %i.ce = load i8, ptr %i.cd, align 1
  %i.cf = icmp eq i8 %i.ce, 112
  br i1 %i.cf, label %bb.t, label %_ZN4absl18debugging_internalL17ParseTwoCharTokenEPNS0_5StateEPKc.exit42.thread

_ZN4absl18debugging_internalL17ParseTwoCharTokenEPNS0_5StateEPKc.exit42.thread: ; preds = %_ZN4absl18debugging_internalL17ParseTwoCharTokenEPNS0_5StateEPKc.exit35.thread, %bb.s, %bb.r
  store i32 %storemerge, ptr %i.a, align 4
  br label %bb.u

bb.t:                                             ; preds = %bb.s
  %i.cg = add nsw i32 %.val11.i40, 2
  store i32 %i.cg, ptr %i.i, align 4
  store i32 %storemerge, ptr %i.a, align 4
  %i.ch = tail call fastcc noundef zeroext i1 @_ZN4absl18debugging_internalL22ParseTemplateParamDeclEPNS0_5StateE(ptr noundef nonnull %0)
  br i1 %i.ch, label %bb.v, label %bb.u

bb.u:                                             ; preds = %_ZN4absl18debugging_internalL17ParseTwoCharTokenEPNS0_5StateEPKc.exit42.thread, %bb.t
  store <4 x i32> %.sroa.0.0.copyload, ptr %i.i, align 4
  br label %bb.v

bb.v:                                             ; preds = %_ZN4absl18debugging_internalL17ParseOneCharTokenEPNS0_5StateEc.exit, %_ZN4absl18debugging_internalL17ParseTwoCharTokenEPNS0_5StateEPKc.exit, %bb.t, %bb.l, %bb.u, %bb.i
  %.0 = phi i1 [ false, %bb.u ], [ true, %bb.i ], [ true, %_ZN4absl18debugging_internalL17ParseTwoCharTokenEPNS0_5StateEPKc.exit ], [ true, %bb.l ], [ true, %_ZN4absl18debugging_internalL17ParseOneCharTokenEPNS0_5StateEc.exit ], [ true, %bb.t ]
  %.pre54 = load i32, ptr %i.a, align 4
  %i.ci = add nsw i32 %.pre54, -1
  br label %_ZNK4absl18debugging_internal12_GLOBAL__N_115ComplexityGuard12IsTooComplexEv.exit.thread

_ZNK4absl18debugging_internal12_GLOBAL__N_115ComplexityGuard12IsTooComplexEv.exit.thread: ; preds = %bb.a, %bb.v
  %i.cj = phi i32 [ %i.ci, %bb.v ], [ %i.b, %bb.a ]
  %.1 = phi i1 [ %.0, %bb.v ], [ false, %bb.a ]
  store i32 %i.cj, ptr %i.a, align 4
  ret i1 %.1
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc void @_ZN4absl18debugging_internalL18ParseDiscriminatorEPNS0_5StateE(ptr nofree noundef captures(none) %0) unnamed_addr #7 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 20 ; 8 uses
  %i.b = load i32, ptr %i.a, align 4              ; 7 uses
  %1 = add nsw i32 %i.b, 1
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 9 uses
  %i.d = load i32, ptr %i.c, align 8              ; 15 uses
  %i.e = add nsw i32 %i.d, 1
  store i32 %i.e, ptr %i.c, align 8
  %i.f = icmp sgt i32 %i.b, 255
  %i.g = icmp sgt i32 %i.d, 131071
  %or.cond = select i1 %i.f, i1 true, i1 %i.g
  br i1 %or.cond, label %_ZNK4absl18debugging_internal12_GLOBAL__N_115ComplexityGuard12IsTooComplexEv.exit.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 28 ; 9 uses
  %.sroa.0.0.copyload = load <4 x i32>, ptr %i.h, align 4
  %i.i = add nsw i32 %i.b, 2                      ; 4 uses
  store i32 %i.i, ptr %i.a, align 4
  %i.j = add nsw i32 %i.d, 2
  store i32 %i.j, ptr %i.c, align 8
  %i.k = icmp sgt i32 %i.b, 254
  %i.l = icmp sgt i32 %i.d, 131070
  %or.cond.i = select i1 %i.k, i1 true, i1 %i.l
  br i1 %or.cond.i, label %_ZNK4absl18debugging_internal12_GLOBAL__N_115ComplexityGuard12IsTooComplexEv.exit.thread, label %bb.c

bb.c:                                             ; preds = %bb.b
  %.val5.i = load ptr, ptr %0, align 8            ; 6 uses
  %.val6.i = load i32, ptr %i.h, align 4          ; 5 uses
  %i.m = sext i32 %.val6.i to i64
  %i.n = getelementptr inbounds i8, ptr %.val5.i, i64 %i.m
  %i.o = load i8, ptr %i.n, align 1
  %i.p = icmp eq i8 %i.o, 95
  br i1 %i.p, label %bb.d, label %_ZNK4absl18debugging_internal12_GLOBAL__N_115ComplexityGuard12IsTooComplexEv.exit.thread

bb.d:                                             ; preds = %bb.c
  %i.q = add nsw i32 %.val6.i, 1                  ; 3 uses
  store i32 %i.q, ptr %i.h, align 4
  store i32 %i.i, ptr %i.a, align 4
  %i.r = add nsw i32 %i.d, 3
  store i32 %i.r, ptr %i.c, align 8
  %i.s = icmp sgt i32 %i.d, 131069
  br i1 %i.s, label %.thread, label %bb.e

.thread:                                          ; preds = %bb.d
  %i.t = add nuw nsw i32 %i.d, 4
  store i32 %i.t, ptr %i.c, align 8
  br label %_ZN4absl18debugging_internalL17ParseOneCharTokenEPNS0_5StateEc.exit15.thread

bb.e:                                             ; preds = %bb.d
  %i.u = sext i32 %i.q to i64
  %i.v = getelementptr inbounds i8, ptr %.val5.i, i64 %i.u
  %i.w = load i8, ptr %i.v, align 1
  %.off.i = add i8 %i.w, -48
  %switch.i = icmp ult i8 %.off.i, 10
  br i1 %switch.i, label %_ZN4absl18debugging_internalL10ParseDigitEPNS0_5StateEPi.exit.thread, label %bb.f

_ZN4absl18debugging_internalL10ParseDigitEPNS0_5StateEPi.exit.thread: ; preds = %bb.e
  %i.x = add nsw i32 %.val6.i, 2
  store i32 %i.x, ptr %i.h, align 4
  br label %_ZNK4absl18debugging_internal12_GLOBAL__N_115ComplexityGuard12IsTooComplexEv.exit.thread

bb.f:                                             ; preds = %bb.e
  %i.y = add nsw i32 %i.d, 4
  store i32 %i.y, ptr %i.c, align 8
  %i.z = icmp eq i32 %i.d, 131069
  br i1 %i.z, label %_ZN4absl18debugging_internalL17ParseOneCharTokenEPNS0_5StateEc.exit15.thread, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.aa = sext i32 %i.q to i64
  %i.ab = getelementptr inbounds i8, ptr %.val5.i, i64 %i.aa
  %i.ac = load i8, ptr %i.ab, align 1
  %i.ad = icmp eq i8 %i.ac, 95
  br i1 %i.ad, label %bb.h, label %_ZN4absl18debugging_internalL17ParseOneCharTokenEPNS0_5StateEc.exit15.thread

_ZN4absl18debugging_internalL17ParseOneCharTokenEPNS0_5StateEc.exit15.thread: ; preds = %.thread, %bb.f, %bb.g
  store i32 %1, ptr %i.a, align 4
  br label %_ZN4absl18debugging_internalL11ParseNumberEPNS0_5StateEPi.exit.thread

bb.h:                                             ; preds = %bb.g
  %i.ae = add nsw i32 %.val6.i, 2                 ; 4 uses
  store i32 %i.ae, ptr %i.h, align 4
  %i.af = add nsw i32 %i.d, 5
  store i32 %i.af, ptr %i.c, align 8
  %i.ag = icmp eq i32 %i.d, 131068
  br i1 %i.ag, label %_ZN4absl18debugging_internalL11ParseNumberEPNS0_5StateEPi.exit.thread, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ah = add nsw i32 %i.b, 3
  store i32 %i.ah, ptr %i.a, align 4
  %i.ai = add nsw i32 %i.d, 6
  store i32 %i.ai, ptr %i.c, align 8
  %i.aj = icmp sgt i32 %i.b, 253
  %i.ak = icmp eq i32 %i.d, 131067
  %or.cond.i.i17 = select i1 %i.aj, i1 true, i1 %i.ak
  br i1 %or.cond.i.i17, label %_ZN4absl18debugging_internalL17ParseOneCharTokenEPNS0_5StateEc.exit.i, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.al = sext i32 %i.ae to i64
  %i.am = getelementptr inbounds i8, ptr %.val5.i, i64 %i.al
  %i.an = load i8, ptr %i.am, align 1
  %i.ao = icmp eq i8 %i.an, 110
  br i1 %i.ao, label %bb.k, label %_ZN4absl18debugging_internalL17ParseOneCharTokenEPNS0_5StateEc.exit.i

bb.k:                                             ; preds = %bb.j
  %i.ap = add nsw i32 %.val6.i, 3                 ; 2 uses
  store i32 %i.ap, ptr %i.h, align 4
  br label %_ZN4absl18debugging_internalL17ParseOneCharTokenEPNS0_5StateEc.exit.i

_ZN4absl18debugging_internalL17ParseOneCharTokenEPNS0_5StateEc.exit.i: ; preds = %bb.k, %bb.j, %bb.i
  %.val31.i = phi i32 [ %i.ae, %bb.j ], [ %i.ap, %bb.k ], [ %i.ae, %bb.i ] ; 2 uses
  store i32 %i.i, ptr %i.a, align 4
  %i.aq = sext i32 %.val31.i to i64
  %i.ar = getelementptr inbounds i8, ptr %.val5.i, i64 %i.aq ; 3 uses
  %i.as = load i8, ptr %i.ar, align 1
  %i.at = add i8 %i.as, -48
  %i.au = icmp ult i8 %i.at, 10
  br i1 %i.au, label %.lr.ph.i, label %_ZN4absl18debugging_internalL11ParseNumberEPNS0_5StateEPi.exit.thread

.lr.ph.i:                                         ; preds = %_ZN4absl18debugging_internalL17ParseOneCharTokenEPNS0_5StateEc.exit.i, %.lr.ph.i
  %.01937.i = phi ptr [ %i.av, %.lr.ph.i ], [ %i.ar, %_ZN4absl18debugging_internalL17ParseOneCharTokenEPNS0_5StateEc.exit.i ]
  %i.av = getelementptr inbounds nuw i8, ptr %.01937.i, i64 1 ; 3 uses
  %i.aw = load i8, ptr %i.av, align 1
  %i.ax = add i8 %i.aw, -48
  %i.ay = icmp ult i8 %i.ax, 10
  br i1 %i.ay, label %.lr.ph.i, label %bb.l, !llvm.loop !21

bb.l:                                             ; preds = %.lr.ph.i
  %i.az = ptrtoint ptr %i.av to i64
  %i.ba = ptrtoint ptr %i.ar to i64
  %i.bb = sub i64 %i.az, %i.ba
  %i.bc = trunc i64 %i.bb to i32
  %i.bd = add nsw i32 %.val31.i, %i.bc            ; 3 uses
  store i32 %i.bd, ptr %i.h, align 4
  store i32 %i.i, ptr %i.a, align 4
  %i.be = add nsw i32 %i.d, 7
  store i32 %i.be, ptr %i.c, align 8
  %i.bf = icmp sgt i32 %i.d, 131065
  br i1 %i.bf, label %_ZN4absl18debugging_internalL11ParseNumberEPNS0_5StateEPi.exit.thread, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.bg = sext i32 %i.bd to i64
  %i.bh = getelementptr inbounds i8, ptr %.val5.i, i64 %i.bg
  %i.bi = load i8, ptr %i.bh, align 1
  %i.bj = icmp eq i8 %i.bi, 95
  br i1 %i.bj, label %_ZN4absl18debugging_internalL17ParseOneCharTokenEPNS0_5StateEc.exit22, label %_ZN4absl18debugging_internalL11ParseNumberEPNS0_5StateEPi.exit.thread

_ZN4absl18debugging_internalL17ParseOneCharTokenEPNS0_5StateEc.exit22: ; preds = %bb.m
  %i.bk = add nsw i32 %i.bd, 1
  store i32 %i.bk, ptr %i.h, align 4
  br label %_ZNK4absl18debugging_internal12_GLOBAL__N_115ComplexityGuard12IsTooComplexEv.exit.thread

_ZN4absl18debugging_internalL11ParseNumberEPNS0_5StateEPi.exit.thread: ; preds = %bb.m, %bb.l, %_ZN4absl18debugging_internalL17ParseOneCharTokenEPNS0_5StateEc.exit.i, %bb.h, %_ZN4absl18debugging_internalL17ParseOneCharTokenEPNS0_5StateEc.exit15.thread
  store <4 x i32> %.sroa.0.0.copyload, ptr %i.h, align 4
  br label %_ZNK4absl18debugging_internal12_GLOBAL__N_115ComplexityGuard12IsTooComplexEv.exit.thread

_ZNK4absl18debugging_internal12_GLOBAL__N_115ComplexityGuard12IsTooComplexEv.exit.thread: ; preds = %_ZN4absl18debugging_internalL11ParseNumberEPNS0_5StateEPi.exit.thread, %_ZN4absl18debugging_internalL10ParseDigitEPNS0_5StateEPi.exit.thread, %_ZN4absl18debugging_internalL17ParseOneCharTokenEPNS0_5StateEc.exit22, %bb.b, %bb.c, %bb.a
  store i32 %i.b, ptr %i.a, align 4
  ret void
}

; Function Attrs: mustprogress nofree nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc noundef zeroext i1 @_ZN4absl18debugging_internalL23ParseBaseUnresolvedNameEPNS0_5StateE(ptr noundef %0) unnamed_addr #4 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 20 ; 11 uses
  %i.b = load i32, ptr %i.a, align 4              ; 2 uses
  %i.c = add nsw i32 %i.b, 1
  store i32 %i.c, ptr %i.a, align 4
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 6 uses
  %i.e = load i32, ptr %i.d, align 8              ; 2 uses
  %i.f = add nsw i32 %i.e, 1
  store i32 %i.f, ptr %i.d, align 8
  %i.g = icmp sgt i32 %i.b, 255
  %i.h = icmp sgt i32 %i.e, 131071
  %or.cond = select i1 %i.g, i1 true, i1 %i.h
  br i1 %or.cond, label %_ZNK4absl18debugging_internal12_GLOBAL__N_115ComplexityGuard12IsTooComplexEv.exit.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.i = tail call fastcc noundef zeroext i1 @_ZN4absl18debugging_internalL15ParseSourceNameEPNS0_5StateE(ptr noundef nonnull %0), !inline_history !28
  br i1 %i.i, label %_ZN4absl18debugging_internalL13ParseSimpleIdEPNS0_5StateE.exit.thread, label %_ZN4absl18debugging_internalL13ParseSimpleIdEPNS0_5StateE.exit

_ZN4absl18debugging_internalL13ParseSimpleIdEPNS0_5StateE.exit.thread: ; preds = %bb.b
  %i.j = tail call fastcc noundef zeroext i1 @_ZN4absl18debugging_internalL17ParseTemplateArgsEPNS0_5StateE(ptr noundef nonnull %0), !inline_history !28 ; 0 uses
  br label %_ZNK4absl18debugging_internal12_GLOBAL__N_115ComplexityGuard12IsTooComplexEv.exit.thread

_ZN4absl18debugging_internalL13ParseSimpleIdEPNS0_5StateE.exit: ; preds = %bb.b
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 28 ; 7 uses
  %.sroa.0.0.copyload = load <4 x i32>, ptr %i.k, align 4 ; 2 uses
  %i.l = load i32, ptr %i.a, align 4              ; 6 uses
  %i.m = add nsw i32 %i.l, 1                      ; 4 uses
  store i32 %i.m, ptr %i.a, align 4
  %i.n = load i32, ptr %i.d, align 8              ; 2 uses
  %i.o = add nsw i32 %i.n, 1                      ; 4 uses
  store i32 %i.o, ptr %i.d, align 8
  %i.p = icmp sgt i32 %i.l, 255
  %i.q = icmp sgt i32 %i.n, 131071
  %or.cond.i = select i1 %i.p, i1 true, i1 %i.q
  br i1 %or.cond.i, label %_ZN4absl18debugging_internalL17ParseTwoCharTokenEPNS0_5StateEPKc.exit.thread, label %bb.c

bb.c:                                             ; preds = %_ZN4absl18debugging_internalL13ParseSimpleIdEPNS0_5StateE.exit
  %.val10.i = load ptr, ptr %0, align 8
  %.val11.i = load i32, ptr %i.k, align 4         ; 2 uses
  %i.r = sext i32 %.val11.i to i64
  %i.s = getelementptr inbounds i8, ptr %.val10.i, i64 %i.r ; 2 uses
  %i.t = load i8, ptr %i.s, align 1
  %i.u = icmp eq i8 %i.t, 111
  br i1 %i.u, label %bb.d, label %_ZN4absl18debugging_internalL17ParseTwoCharTokenEPNS0_5StateEPKc.exit.thread

bb.d:                                             ; preds = %bb.c
  %i.v = getelementptr inbounds nuw i8, ptr %i.s, i64 1
  %i.w = load i8, ptr %i.v, align 1
  %i.x = icmp eq i8 %i.w, 110
  br i1 %i.x, label %bb.e, label %_ZN4absl18debugging_internalL17ParseTwoCharTokenEPNS0_5StateEPKc.exit.thread

bb.e:                                             ; preds = %bb.d
  %i.y = add nsw i32 %.val11.i, 2
  store i32 %i.y, ptr %i.k, align 4
  store i32 %i.l, ptr %i.a, align 4
  %i.z = tail call fastcc noundef zeroext i1 @_ZN4absl18debugging_internalL17ParseOperatorNameEPNS0_5StateEPi(ptr noundef nonnull %0, ptr noundef null)
  br i1 %i.z, label %bb.f, label %._crit_edge

._crit_edge:                                      ; preds = %bb.e
  %.pre = load i32, ptr %i.a, align 4             ; 2 uses
  %.pre23 = load i32, ptr %i.d, align 8
  %.pre24 = add nsw i32 %.pre, 1
  br label %_ZN4absl18debugging_internalL17ParseTwoCharTokenEPNS0_5StateEPKc.exit.thread

bb.f:                                             ; preds = %bb.e
  %i.aa = tail call fastcc noundef zeroext i1 @_ZN4absl18debugging_internalL17ParseTemplateArgsEPNS0_5StateE(ptr noundef nonnull %0) ; 0 uses
  br label %_ZNK4absl18debugging_internal12_GLOBAL__N_115ComplexityGuard12IsTooComplexEv.exit.thread

_ZN4absl18debugging_internalL17ParseTwoCharTokenEPNS0_5StateEPKc.exit.thread: ; preds = %bb.c, %bb.d, %_ZN4absl18debugging_internalL13ParseSimpleIdEPNS0_5StateE.exit, %._crit_edge
  %.pre-phi = phi i32 [ %.pre24, %._crit_edge ], [ %i.m, %_ZN4absl18debugging_internalL13ParseSimpleIdEPNS0_5StateE.exit ], [ %i.m, %bb.d ], [ %i.m, %bb.c ]
  %i.ab = phi i32 [ %.pre23, %._crit_edge ], [ %i.o, %_ZN4absl18debugging_internalL13ParseSimpleIdEPNS0_5StateE.exit ], [ %i.o, %bb.d ], [ %i.o, %bb.c ] ; 2 uses
  %i.ac = phi i32 [ %.pre, %._crit_edge ], [ %i.l, %_ZN4absl18debugging_internalL13ParseSimpleIdEPNS0_5StateE.exit ], [ %i.l, %bb.d ], [ %i.l, %bb.c ] ; 3 uses
  store <4 x i32> %.sroa.0.0.copyload, ptr %i.k, align 4
  store i32 %.pre-phi, ptr %i.a, align 4
  %i.ad = add nsw i32 %i.ab, 1
  store i32 %i.ad, ptr %i.d, align 8
  %i.ae = icmp sgt i32 %i.ac, 255
  %i.af = icmp sgt i32 %i.ab, 131071
  %or.cond.i14 = select i1 %i.ae, i1 true, i1 %i.af
  br i1 %or.cond.i14, label %_ZN4absl18debugging_internalL17ParseTwoCharTokenEPNS0_5StateEPKc.exit18.thread, label %bb.g

bb.g:                                             ; preds = %_ZN4absl18debugging_internalL17ParseTwoCharTokenEPNS0_5StateEPKc.exit.thread
  %.val10.i15 = load ptr, ptr %0, align 8
  %.val11.i16 = load i32, ptr %i.k, align 4       ; 2 uses
  %i.ag = sext i32 %.val11.i16 to i64
  %i.ah = getelementptr inbounds i8, ptr %.val10.i15, i64 %i.ag ; 2 uses
  %i.ai = load i8, ptr %i.ah, align 1
  %i.aj = icmp eq i8 %i.ai, 100
  br i1 %i.aj, label %bb.h, label %_ZN4absl18debugging_internalL17ParseTwoCharTokenEPNS0_5StateEPKc.exit18.thread

bb.h:                                             ; preds = %bb.g
  %i.ak = getelementptr inbounds nuw i8, ptr %i.ah, i64 1
  %i.al = load i8, ptr %i.ak, align 1
  %i.am = icmp eq i8 %i.al, 110
  br i1 %i.am, label %bb.i, label %_ZN4absl18debugging_internalL17ParseTwoCharTokenEPNS0_5StateEPKc.exit18.thread

_ZN4absl18debugging_internalL17ParseTwoCharTokenEPNS0_5StateEPKc.exit18.thread: ; preds = %_ZN4absl18debugging_internalL17ParseTwoCharTokenEPNS0_5StateEPKc.exit.thread, %bb.h, %bb.g
  store i32 %i.ac, ptr %i.a, align 4
  br label %_ZN4absl18debugging_internalL13ParseSimpleIdEPNS0_5StateE.exit19

bb.i:                                             ; preds = %bb.h
  %i.an = add nsw i32 %.val11.i16, 2
  store i32 %i.an, ptr %i.k, align 4
  store i32 %i.ac, ptr %i.a, align 4
  %i.ao = tail call fastcc noundef zeroext i1 @_ZN4absl18debugging_internalL18ParseTemplateParamEPNS0_5StateE(ptr noundef nonnull %0), !inline_history !42
  br i1 %i.ao, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.ap = tail call fastcc noundef zeroext i1 @_ZN4absl18debugging_internalL17ParseTemplateArgsEPNS0_5StateE(ptr noundef nonnull %0), !inline_history !42 ; 0 uses
  br label %_ZNK4absl18debugging_internal12_GLOBAL__N_115ComplexityGuard12IsTooComplexEv.exit.thread

bb.k:                                             ; preds = %bb.i
  %i.aq = tail call fastcc noundef zeroext i1 @_ZN4absl18debugging_internalL13ParseDecltypeEPNS0_5StateE(ptr noundef nonnull %0), !inline_history !42
  br i1 %i.aq, label %_ZNK4absl18debugging_internal12_GLOBAL__N_115ComplexityGuard12IsTooComplexEv.exit.thread, label %_ZN4absl18debugging_internalL19ParseUnresolvedTypeEPNS0_5StateE.exit

_ZN4absl18debugging_internalL19ParseUnresolvedTypeEPNS0_5StateE.exit: ; preds = %bb.k
  %i.ar = tail call fastcc noundef zeroext i1 @_ZN4absl18debugging_internalL17ParseSubstitutionEPNS0_5StateEb(ptr noundef nonnull %0, i1 noundef zeroext false), !inline_history !42
  br i1 %i.ar, label %_ZNK4absl18debugging_internal12_GLOBAL__N_115ComplexityGuard12IsTooComplexEv.exit.thread, label %bb.l

bb.l:                                             ; preds = %_ZN4absl18debugging_internalL19ParseUnresolvedTypeEPNS0_5StateE.exit
  %i.as = tail call fastcc noundef zeroext i1 @_ZN4absl18debugging_internalL15ParseSourceNameEPNS0_5StateE(ptr noundef nonnull %0), !inline_history !28
  br i1 %i.as, label %_ZN4absl18debugging_internalL13ParseSimpleIdEPNS0_5StateE.exit19.thread, label %_ZN4absl18debugging_internalL13ParseSimpleIdEPNS0_5StateE.exit19

_ZN4absl18debugging_internalL13ParseSimpleIdEPNS0_5StateE.exit19.thread: ; preds = %bb.l
  %i.at = tail call fastcc noundef zeroext i1 @_ZN4absl18debugging_internalL17ParseTemplateArgsEPNS0_5StateE(ptr noundef nonnull %0), !inline_history !28 ; 0 uses
  br label %_ZNK4absl18debugging_internal12_GLOBAL__N_115ComplexityGuard12IsTooComplexEv.exit.thread

_ZN4absl18debugging_internalL13ParseSimpleIdEPNS0_5StateE.exit19: ; preds = %bb.l, %_ZN4absl18debugging_internalL17ParseTwoCharTokenEPNS0_5StateEPKc.exit18.thread
  store <4 x i32> %.sroa.0.0.copyload, ptr %i.k, align 4
  br label %_ZNK4absl18debugging_internal12_GLOBAL__N_115ComplexityGuard12IsTooComplexEv.exit.thread

_ZNK4absl18debugging_internal12_GLOBAL__N_115ComplexityGuard12IsTooComplexEv.exit.thread: ; preds = %bb.f, %_ZN4absl18debugging_internalL13ParseSimpleIdEPNS0_5StateE.exit19, %_ZN4absl18debugging_internalL19ParseUnresolvedTypeEPNS0_5StateE.exit, %_ZN4absl18debugging_internalL13ParseSimpleIdEPNS0_5StateE.exit19.thread, %bb.k, %bb.j, %bb.a, %_ZN4absl18debugging_internalL13ParseSimpleIdEPNS0_5StateE.exit.thread
  %.1 = phi i1 [ true, %_ZN4absl18debugging_internalL13ParseSimpleIdEPNS0_5StateE.exit.thread ], [ false, %bb.a ], [ true, %bb.f ], [ false, %_ZN4absl18debugging_internalL13ParseSimpleIdEPNS0_5StateE.exit19 ], [ true, %_ZN4absl18debugging_internalL13ParseSimpleIdEPNS0_5StateE.exit19.thread ], [ true, %_ZN4absl18debugging_internalL19ParseUnresolvedTypeEPNS0_5StateE.exit ], [ true, %bb.k ], [ true, %bb.j ]
  %i.au = load i32, ptr %i.a, align 4
  %i.av = add nsw i32 %i.au, -1
  store i32 %i.av, ptr %i.a, align 4
  ret i1 %.1
}

; Function Attrs: mustprogress nofree nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc noundef zeroext i1 @_ZN4absl18debugging_internalL20ParseLocalNameSuffixEPNS0_5StateE(ptr noundef %0) unnamed_addr #4 {
bb.a:
  %i.a = alloca [20 x i8], align 16               ; 7 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 20 ; 17 uses
  %i.c = load i32, ptr %i.b, align 4              ; 7 uses
  %i.d = add nsw i32 %i.c, 1                      ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 9 uses
  %i.f = load i32, ptr %i.e, align 8              ; 8 uses
  %i.g = add nsw i32 %i.f, 1
  store i32 %i.g, ptr %i.e, align 8
  %i.h = icmp sgt i32 %i.c, 255
  %i.i = icmp sgt i32 %i.f, 131071
  %or.cond70 = select i1 %i.h, i1 true, i1 %i.i
  br i1 %or.cond70, label %_ZNK4absl18debugging_internal12_GLOBAL__N_115ComplexityGuard12IsTooComplexEv.exit.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 28 ; 12 uses
  %.sroa.0.0.copyload = load <4 x i32>, ptr %i.j, align 4 ; 3 uses
  %i.k = add nsw i32 %i.c, 2                      ; 2 uses
  store i32 %i.k, ptr %i.b, align 4
  %i.l = add nsw i32 %i.f, 2
  store i32 %i.l, ptr %i.e, align 8
  %i.m = icmp sgt i32 %i.c, 254
  %i.n = icmp sgt i32 %i.f, 131070
  %or.cond.i = select i1 %i.m, i1 true, i1 %i.n
  br i1 %or.cond.i, label %_ZN4absl18debugging_internalL17ParseOneCharTokenEPNS0_5StateEc.exit.thread, label %bb.c

bb.c:                                             ; preds = %bb.b
  %.val5.i = load ptr, ptr %0, align 8            ; 3 uses
  %.val6.i = load i32, ptr %i.j, align 4          ; 3 uses
  %i.o = sext i32 %.val6.i to i64
  %i.p = getelementptr inbounds i8, ptr %.val5.i, i64 %i.o
  %i.q = load i8, ptr %i.p, align 1
  %i.r = icmp eq i8 %i.q, 100
  br i1 %i.r, label %bb.d, label %_ZN4absl18debugging_internalL17ParseOneCharTokenEPNS0_5StateEc.exit.thread

_ZN4absl18debugging_internalL17ParseOneCharTokenEPNS0_5StateEc.exit.thread: ; preds = %bb.b, %bb.c
  store i32 %i.d, ptr %i.b, align 4
  br label %bb.w

bb.d:                                             ; preds = %bb.c
  %i.s = add nsw i32 %.val6.i, 1                  ; 4 uses
  store i32 %i.s, ptr %i.j, align 4
  store i32 %i.d, ptr %i.b, align 4
  %i.t = sext i32 %i.s to i64                     ; 3 uses
  %i.u = getelementptr inbounds i8, ptr %.val5.i, i64 %i.t ; 2 uses
  %i.v = load i8, ptr %i.u, align 1               ; 2 uses
  %i.w = add i8 %i.v, -48
  %i.x = icmp ult i8 %i.w, 10
  %i.y = icmp eq i8 %i.v, 95
end_hunk_0
