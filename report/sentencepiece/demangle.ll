Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/sentencepiece/original/demangle?download=true
inline.NumInlined: 660
inline.NumDeleted: 80
loop-unroll.NumCompletelyUnrolled: 16
loop-unroll.NumUnrolled: 17
begin_hunk_0_@_ZN4absl12lts_2026052618debugging_internalL20ParseLocalNameSuffixEPNS1_5StateE:bb.a
  br i1 %i.cz, label %bb.t, label %_ZN4absl12lts_2026052618debugging_internalL17ParseOneCharTokenEPNS1_5StateEc.exit57.thread

_ZN4absl12lts_2026052618debugging_internalL17ParseOneCharTokenEPNS1_5StateEc.exit57.thread: ; preds = %_ZN4absl12lts_2026052618debugging_internalL11MaybeAppendEPNS1_5StateEPKc.exit52, %bb.r
  store i32 %i.cq, ptr %i.b, align 4, !tbaa !31
  br label %bb.v

bb.s:                                             ; preds = %_ZN4absl12lts_2026052618debugging_internalL11MaybeAppendEPNS1_5StateEPKc.exit60, %bb.t
  %i.da = landingpad { ptr, i32 }
          cleanup
  %i.db = load i32, ptr %i.b, align 4, !tbaa !31
  %i.dc = add nsw i32 %i.db, -1
  store i32 %i.dc, ptr %i.b, align 4, !tbaa !31
  resume { ptr, i32 } %i.da

bb.t:                                             ; preds = %bb.r
  %i.dd = add nsw i32 %.val7.i55, 1
  store i32 %i.dd, ptr %i.j, align 4, !tbaa !30
  store i32 %i.cq, ptr %i.b, align 4, !tbaa !31
  %i.de = invoke fastcc noundef zeroext i1 @_ZN4absl12lts_2026052618debugging_internalL9ParseNameEPNS1_5StateE(ptr noundef nonnull %0)
          to label %bb.u unwind label %bb.s

bb.u:                                             ; preds = %bb.t
  br i1 %i.de, label %bb.ai, label %bb.v

bb.v:                                             ; preds = %_ZN4absl12lts_2026052618debugging_internalL17ParseOneCharTokenEPNS1_5StateEc.exit57.thread, %bb.u
  store <4 x i32> %.sroa.0.0.copyload, ptr %i.j, align 4
  %i.df = load i32, ptr %i.be, align 8
  %.not37 = icmp sgt i32 %i.df, -1
  br i1 %.not37, label %bb.ai, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.dg = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.dh = load i32, ptr %i.dg, align 8, !tbaa !32 ; 2 uses
  %i.di = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.dj = load i32, ptr %i.di, align 8, !tbaa !28
  %i.dk = icmp slt i32 %i.dh, %i.dj
  br i1 %i.dk, label %bb.x, label %bb.ai

bb.x:                                             ; preds = %bb.w
  %i.dl = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.dm = load ptr, ptr %i.dl, align 8, !tbaa !27
  %i.dn = sext i32 %i.dh to i64
  %i.do = getelementptr inbounds i8, ptr %i.dm, i64 %i.dn
  store i8 0, ptr %i.do, align 1, !tbaa !21
  br label %bb.ai

bb.y:                                             ; preds = %_ZN4absl12lts_2026052618debugging_internalL17ParseOneCharTokenEPNS1_5StateEc.exit.thread, %bb.d
  store <4 x i32> %.sroa.0.0.copyload, ptr %i.j, align 4
  %i.dp = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.dq = load i32, ptr %i.dp, align 8
  %.not.i58 = icmp sgt i32 %i.dq, -1
  br i1 %.not.i58, label %_ZN4absl12lts_2026052618debugging_internalL11MaybeAppendEPNS1_5StateEPKc.exit60, label %bb.z

bb.z:                                             ; preds = %bb.y
  tail call fastcc void @_ZN4absl12lts_2026052618debugging_internalL21MaybeAppendWithLengthEPNS1_5StateEPKcm(ptr noundef nonnull %0, ptr noundef nonnull @.str.4, i64 noundef 2)
  br label %_ZN4absl12lts_2026052618debugging_internalL11MaybeAppendEPNS1_5StateEPKc.exit60

_ZN4absl12lts_2026052618debugging_internalL11MaybeAppendEPNS1_5StateEPKc.exit60: ; preds = %bb.y, %bb.z
  %i.dr = invoke fastcc noundef zeroext i1 @_ZN4absl12lts_2026052618debugging_internalL9ParseNameEPNS1_5StateE(ptr noundef nonnull %0)
          to label %bb.aa unwind label %bb.s

bb.aa:                                            ; preds = %_ZN4absl12lts_2026052618debugging_internalL11MaybeAppendEPNS1_5StateEPKc.exit60
  br i1 %i.dr, label %bb.ab, label %bb.ac

bb.ab:                                            ; preds = %bb.aa
  tail call fastcc void @_ZN4absl12lts_2026052618debugging_internalL18ParseDiscriminatorEPNS1_5StateE(ptr noundef nonnull %0)
  br label %bb.ai

bb.ac:                                            ; preds = %bb.aa
  store <4 x i32> %.sroa.0.0.copyload, ptr %i.j, align 4
  %i.ds = load i32, ptr %i.dp, align 8
  %.not = icmp sgt i32 %i.ds, -1
  br i1 %.not, label %bb.af, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.dt = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.du = load i32, ptr %i.dt, align 8, !tbaa !32 ; 2 uses
  %i.dv = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.dw = load i32, ptr %i.dv, align 8, !tbaa !28
  %i.dx = icmp slt i32 %i.du, %i.dw
  br i1 %i.dx, label %bb.ae, label %bb.af

bb.ae:                                            ; preds = %bb.ad
  %i.dy = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.dz = load ptr, ptr %i.dy, align 8, !tbaa !27
  %i.ea = sext i32 %i.du to i64
  %i.eb = getelementptr inbounds i8, ptr %i.dz, i64 %i.ea
  store i8 0, ptr %i.eb, align 1, !tbaa !21
  br label %bb.af

bb.af:                                            ; preds = %bb.ae, %bb.ad, %bb.ac
  %i.ec = load i32, ptr %i.b, align 4, !tbaa !31  ; 4 uses
  %i.ed = add nsw i32 %i.ec, 1
  store i32 %i.ed, ptr %i.b, align 4, !tbaa !31
  %i.ee = load i32, ptr %i.e, align 8, !tbaa !29  ; 2 uses
  %i.ef = add nsw i32 %i.ee, 1
  store i32 %i.ef, ptr %i.e, align 8, !tbaa !29
  %i.eg = icmp sgt i32 %i.ec, 255
  %i.eh = icmp sgt i32 %i.ee, 131071
  %or.cond.i61 = select i1 %i.eg, i1 true, i1 %i.eh
  br i1 %or.cond.i61, label %_ZN4absl12lts_2026052618debugging_internalL17ParseOneCharTokenEPNS1_5StateEc.exit65.thread, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %.val6.i62 = load ptr, ptr %0, align 8, !tbaa !26
  %.val7.i63 = load i32, ptr %i.j, align 4, !tbaa !30 ; 2 uses
  %i.ei = sext i32 %.val7.i63 to i64
  %i.ej = getelementptr inbounds i8, ptr %.val6.i62, i64 %i.ei
  %i.ek = load i8, ptr %i.ej, align 1, !tbaa !21
  %i.el = icmp eq i8 %i.ek, 115
  br i1 %i.el, label %bb.ah, label %_ZN4absl12lts_2026052618debugging_internalL17ParseOneCharTokenEPNS1_5StateEc.exit65.thread

_ZN4absl12lts_2026052618debugging_internalL17ParseOneCharTokenEPNS1_5StateEc.exit65.thread: ; preds = %bb.af, %bb.ag
  store i32 %i.ec, ptr %i.b, align 4, !tbaa !31
  br label %bb.ai

bb.ah:                                            ; preds = %bb.ag
  %i.em = add nsw i32 %.val7.i63, 1
  store i32 %i.em, ptr %i.j, align 4, !tbaa !30
  store i32 %i.ec, ptr %i.b, align 4, !tbaa !31
  tail call fastcc void @_ZN4absl12lts_2026052618debugging_internalL18ParseDiscriminatorEPNS1_5StateE(ptr noundef nonnull %0)
  br label %bb.ai

bb.ai:                                            ; preds = %_ZN4absl12lts_2026052618debugging_internalL17ParseOneCharTokenEPNS1_5StateEc.exit65.thread, %bb.u, %bb.x, %bb.w, %bb.v, %bb.ab, %bb.ah
  %.1 = phi i1 [ true, %bb.ah ], [ false, %_ZN4absl12lts_2026052618debugging_internalL17ParseOneCharTokenEPNS1_5StateEc.exit65.thread ], [ true, %bb.ab ], [ true, %bb.u ], [ false, %bb.x ], [ false, %bb.w ], [ false, %bb.v ]
  %.pre = load i32, ptr %i.b, align 4, !tbaa !31
  %i.en = add nsw i32 %.pre, -1
  br label %_ZNK4absl12lts_2026052618debugging_internal12_GLOBAL__N_115ComplexityGuard12IsTooComplexEv.exit.thread

_ZNK4absl12lts_2026052618debugging_internal12_GLOBAL__N_115ComplexityGuard12IsTooComplexEv.exit.thread: ; preds = %bb.a, %bb.ai
  %i.eo = phi i32 [ %i.en, %bb.ai ], [ %i.c, %bb.a ]
  %.2 = phi i1 [ %.1, %bb.ai ], [ false, %bb.a ]
  store i32 %i.eo, ptr %i.b, align 4, !tbaa !31
  ret i1 %.2
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc noundef zeroext i1 @_ZN4absl12lts_2026052618debugging_internalL10ParseSeqIdEPNS1_5StateE(ptr nofree noundef captures(none) %0) unnamed_addr #7 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 20 ; 3 uses
  %i.b = load i32, ptr %i.a, align 4, !tbaa !31   ; 3 uses
  %i.c = add nsw i32 %i.b, 1
  store i32 %i.c, ptr %i.a, align 4, !tbaa !31
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.e = load i32, ptr %i.d, align 8, !tbaa !29   ; 2 uses
  %i.f = add nsw i32 %i.e, 1
  store i32 %i.f, ptr %i.d, align 8, !tbaa !29
  %i.g = icmp sgt i32 %i.b, 255
  %i.h = icmp sgt i32 %i.e, 131071
  %or.cond25 = select i1 %i.g, i1 true, i1 %i.h
  br i1 %or.cond25, label %_ZNK4absl12lts_2026052618debugging_internal12_GLOBAL__N_115ComplexityGuard12IsTooComplexEv.exit.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %.val22 = load ptr, ptr %0, align 8, !tbaa !26
  %i.i = getelementptr i8, ptr %0, i64 28         ; 2 uses
  %.val23 = load i32, ptr %i.i, align 4, !tbaa !30 ; 2 uses
  %i.j = sext i32 %.val23 to i64
  %i.k = getelementptr inbounds i8, ptr %.val22, i64 %i.j ; 4 uses
  %i.l = load i8, ptr %i.k, align 1, !tbaa !21    ; 2 uses
  %.not27 = icmp eq i8 %i.l, 0
  br i1 %.not27, label %_ZNK4absl12lts_2026052618debugging_internal12_GLOBAL__N_115ComplexityGuard12IsTooComplexEv.exit.thread, label %.lr.ph

.lr.ph:                                           ; preds = %bb.b, %bb.c
  %i.m = phi i8 [ %i.r, %bb.c ], [ %i.l, %bb.b ]  ; 2 uses
  %.028 = phi ptr [ %i.q, %bb.c ], [ %i.k, %bb.b ] ; 3 uses
  %i.n = add i8 %i.m, -48
  %i.o = icmp ult i8 %i.n, 10
  %i.p = add i8 %i.m, -65
  %or.cond = icmp ult i8 %i.p, 26
  %or.cond26 = or i1 %i.o, %or.cond
  br i1 %or.cond26, label %bb.c, label %._crit_edge

bb.c:                                             ; preds = %.lr.ph
  %i.q = getelementptr inbounds nuw i8, ptr %.028, i64 1 ; 3 uses
  %i.r = load i8, ptr %i.q, align 1, !tbaa !21    ; 2 uses
  %.not = icmp eq i8 %i.r, 0
  br i1 %.not, label %._crit_edge.thread35, label %.lr.ph, !llvm.loop !4

._crit_edge:                                      ; preds = %.lr.ph
  %.not16.not = icmp eq ptr %.028, %i.k
  br i1 %.not16.not, label %_ZNK4absl12lts_2026052618debugging_internal12_GLOBAL__N_115ComplexityGuard12IsTooComplexEv.exit.thread, label %._crit_edge.thread35

._crit_edge.thread35:                             ; preds = %bb.c, %._crit_edge
  %.0.lcssa38 = phi ptr [ %.028, %._crit_edge ], [ %i.q, %bb.c ]
  %i.s = ptrtoint ptr %.0.lcssa38 to i64
  %i.t = ptrtoint ptr %i.k to i64
  %i.u = sub i64 %i.s, %i.t
  %i.v = trunc i64 %i.u to i32
  %i.w = add nsw i32 %.val23, %i.v
  store i32 %i.w, ptr %i.i, align 4, !tbaa !30
  br label %_ZNK4absl12lts_2026052618debugging_internal12_GLOBAL__N_115ComplexityGuard12IsTooComplexEv.exit.thread

_ZNK4absl12lts_2026052618debugging_internal12_GLOBAL__N_115ComplexityGuard12IsTooComplexEv.exit.thread: ; preds = %bb.b, %bb.a, %._crit_edge.thread35, %._crit_edge
  %.1 = phi i1 [ false, %bb.a ], [ false, %._crit_edge ], [ true, %._crit_edge.thread35 ], [ false, %bb.b ]
  store i32 %i.b, ptr %i.a, align 4, !tbaa !31
  ret i1 %.1
}

; Function Attrs: mustprogress nofree nosync memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc noundef zeroext i1 @_ZN4absl12lts_2026052618debugging_internalL20ParseUnqualifiedNameEPNS1_5StateE(ptr noundef %0) unnamed_addr #6 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 20 ; 48 uses
  %i.b = load i32, ptr %i.a, align 4, !tbaa !31   ; 2 uses
  %i.c = add nsw i32 %i.b, 1                      ; 2 uses
  store i32 %i.c, ptr %i.a, align 4, !tbaa !31
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 21 uses
  %i.e = load i32, ptr %i.d, align 8, !tbaa !29   ; 2 uses
  %i.f = add nsw i32 %i.e, 1
  store i32 %i.f, ptr %i.d, align 8, !tbaa !29
  %i.g = icmp sgt i32 %i.b, 255
  %i.h = icmp sgt i32 %i.e, 131071
  %or.cond = select i1 %i.g, i1 true, i1 %i.h
  br i1 %or.cond, label %_ZNK4absl12lts_2026052618debugging_internal12_GLOBAL__N_115ComplexityGuard12IsTooComplexEv.exit.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.i = invoke fastcc noundef zeroext i1 @_ZN4absl12lts_2026052618debugging_internalL17ParseOperatorNameEPNS1_5StateEPi(ptr noundef nonnull %0, ptr noundef null)
          to label %bb.c unwind label %bb.ak

bb.c:                                             ; preds = %bb.b
  %.pre80 = load i32, ptr %i.a, align 4, !tbaa !31 ; 6 uses
  br i1 %i.i, label %bb.z, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.j = add nsw i32 %.pre80, 1                   ; 4 uses
  store i32 %i.j, ptr %i.a, align 4, !tbaa !31
  %i.k = load i32, ptr %i.d, align 8, !tbaa !29   ; 8 uses
  %i.l = add nsw i32 %i.k, 1
  store i32 %i.l, ptr %i.d, align 8, !tbaa !29
  %i.m = icmp sgt i32 %.pre80, 255
  %i.n = icmp sgt i32 %i.k, 131071
  %or.cond75 = select i1 %i.m, i1 true, i1 %i.n
  br i1 %or.cond75, label %.thread, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 28 ; 10 uses
  %.sroa.0124.0.copyload = load <4 x i32>, ptr %i.o, align 4 ; 2 uses
  %i.p = add nsw i32 %.pre80, 2                   ; 4 uses
  store i32 %i.p, ptr %i.a, align 4, !tbaa !31
  %i.q = add nsw i32 %i.k, 2
  store i32 %i.q, ptr %i.d, align 8, !tbaa !29
  %i.r = icmp sgt i32 %.pre80, 254
  %i.s = icmp sgt i32 %i.k, 131070
  %or.cond.i52 = select i1 %i.r, i1 true, i1 %i.s
  br i1 %or.cond.i52, label %.sink.split, label %bb.f

bb.f:                                             ; preds = %bb.e
  %.val6.i53 = load ptr, ptr %0, align 8, !tbaa !26 ; 2 uses
  %.val7.i54 = load i32, ptr %i.o, align 4, !tbaa !30 ; 4 uses
  %i.t = sext i32 %.val7.i54 to i64
  %i.u = getelementptr inbounds i8, ptr %.val6.i53, i64 %i.t
  %i.v = load i8, ptr %i.u, align 1, !tbaa !21
  %i.w = icmp eq i8 %i.v, 67
  br i1 %i.w, label %bb.g, label %.sink.split

bb.g:                                             ; preds = %bb.f
  %i.x = add nsw i32 %.val7.i54, 1                ; 2 uses
  store i32 %i.x, ptr %i.o, align 4, !tbaa !30
  store i32 %i.p, ptr %i.a, align 4, !tbaa !31
  %i.y = add nsw i32 %i.k, 3
  store i32 %i.y, ptr %i.d, align 8, !tbaa !29
  %i.z = icmp sgt i32 %i.k, 131069
  br i1 %i.z, label %.loopexit.thread, label %bb.h

.loopexit.thread:                                 ; preds = %bb.g
  store i32 %i.p, ptr %i.a, align 4, !tbaa !31
  store i32 131074, ptr %i.d, align 8, !tbaa !29
  br label %.sink.split

bb.h:                                             ; preds = %bb.g
  %i.aa = sext i32 %i.x to i64
  %i.ab = getelementptr inbounds i8, ptr %.val6.i53, i64 %i.aa ; 2 uses
  %i.ac = load i8, ptr %i.ab, align 1, !tbaa !21
  %.off = add i8 %i.ac, -49
  %switch = icmp ult i8 %.off, 4
  br i1 %switch, label %bb.i, label %.loopexit

bb.i:                                             ; preds = %bb.h
  %i.ad = add nsw i32 %.val7.i54, 2
  store i32 %i.ad, ptr %i.o, align 4, !tbaa !30
  store i32 %i.j, ptr %i.a, align 4, !tbaa !31
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !27
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 36
  %i.ah = load i32, ptr %i.ag, align 4, !tbaa !37
  %i.ai = sext i32 %i.ah to i64
  %i.aj = getelementptr inbounds i8, ptr %i.af, i64 %i.ai
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.al = load i32, ptr %i.ak, align 8
  br label %.thread69.sink.split

.loopexit:                                        ; preds = %bb.h
  store i32 %i.p, ptr %i.a, align 4, !tbaa !31
  %i.am = add nsw i32 %i.k, 4
  store i32 %i.am, ptr %i.d, align 8, !tbaa !29
  %i.an = icmp eq i32 %i.k, 131069
  br i1 %i.an, label %.sink.split, label %bb.j

bb.j:                                             ; preds = %.loopexit
  %i.ao = load i8, ptr %i.ab, align 1, !tbaa !21
  %i.ap = icmp eq i8 %i.ao, 73
  br i1 %i.ap, label %bb.k, label %.sink.split

bb.k:                                             ; preds = %bb.j
  %i.aq = add nsw i32 %.val7.i54, 2
  store i32 %i.aq, ptr %i.o, align 4, !tbaa !30
  store i32 %i.j, ptr %i.a, align 4, !tbaa !31
  %i.ar = tail call fastcc noundef zeroext i1 @_ZN4absl12lts_2026052618debugging_internalL14ParseCharClassEPNS1_5StateEPKc(ptr noundef nonnull %0, ptr noundef nonnull @.str.273), !inline_history !74
  br i1 %i.ar, label %bb.l, label %bb.n

bb.l:                                             ; preds = %bb.k
  %i.as = invoke fastcc noundef zeroext i1 @_ZN4absl12lts_2026052618debugging_internalL18ParseClassEnumTypeEPNS1_5StateE(ptr noundef nonnull %0)
          to label %bb.m unwind label %bb.t, !inline_history !74

bb.m:                                             ; preds = %bb.l
  br i1 %i.as, label %.thread69, label %bb.n

.sink.split:                                      ; preds = %bb.j, %.loopexit, %.loopexit.thread, %bb.f, %bb.e
  store i32 %i.j, ptr %i.a, align 4, !tbaa !31
  br label %bb.n

bb.n:                                             ; preds = %.sink.split, %bb.m, %bb.k
  store <4 x i32> %.sroa.0124.0.copyload, ptr %i.o, align 4
  %i.at = load i32, ptr %i.a, align 4, !tbaa !31  ; 5 uses
  %i.au = add nsw i32 %i.at, 1                    ; 2 uses
  store i32 %i.au, ptr %i.a, align 4, !tbaa !31
  %i.av = load i32, ptr %i.d, align 8, !tbaa !29  ; 4 uses
  %i.aw = add nsw i32 %i.av, 1
  store i32 %i.aw, ptr %i.d, align 8, !tbaa !29
  %i.ax = icmp sgt i32 %i.at, 255
  %i.ay = icmp sgt i32 %i.av, 131071
  %or.cond.i36 = select i1 %i.ax, i1 true, i1 %i.ay
  br i1 %or.cond.i36, label %_ZN4absl12lts_2026052618debugging_internalL17ParseOneCharTokenEPNS1_5StateEc.exit.thread, label %bb.o

bb.o:                                             ; preds = %bb.n
  %.val6.i = load ptr, ptr %0, align 8, !tbaa !26 ; 2 uses
  %.val7.i = load i32, ptr %i.o, align 4, !tbaa !30 ; 3 uses
  %i.az = sext i32 %.val7.i to i64
  %i.ba = getelementptr inbounds i8, ptr %.val6.i, i64 %i.az
  %i.bb = load i8, ptr %i.ba, align 1, !tbaa !21
  %i.bc = icmp eq i8 %i.bb, 68
  br i1 %i.bc, label %bb.p, label %_ZN4absl12lts_2026052618debugging_internalL17ParseOneCharTokenEPNS1_5StateEc.exit.thread

bb.p:                                             ; preds = %bb.o
  %i.bd = add nsw i32 %.val7.i, 1                 ; 2 uses
  store i32 %i.bd, ptr %i.o, align 4, !tbaa !30
  store i32 %i.au, ptr %i.a, align 4, !tbaa !31
  %i.be = add nsw i32 %i.av, 2
  store i32 %i.be, ptr %i.d, align 8, !tbaa !29
  %i.bf = icmp sgt i32 %i.av, 131070
  br i1 %i.bf, label %_ZN4absl12lts_2026052618debugging_internalL17ParseOneCharTokenEPNS1_5StateEc.exit.thread, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.bg = sext i32 %i.bd to i64
  %i.bh = getelementptr inbounds i8, ptr %.val6.i, i64 %i.bg
  %i.bi = load i8, ptr %i.bh, align 1, !tbaa !21
  switch i8 %i.bi, label %_ZN4absl12lts_2026052618debugging_internalL17ParseOneCharTokenEPNS1_5StateEc.exit.thread [
    i8 52, label %bb.r
    i8 48, label %bb.r
    i8 49, label %bb.r
    i8 50, label %bb.r
  ]

bb.r:                                             ; preds = %bb.q, %bb.q, %bb.q, %bb.q
  %i.bj = add nsw i32 %.val7.i, 2
  store i32 %i.bj, ptr %i.o, align 4, !tbaa !30
  store i32 %i.at, ptr %i.a, align 4, !tbaa !31
  %i.bk = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.bl = load ptr, ptr %i.bk, align 8, !tbaa !27
  %i.bm = getelementptr inbounds nuw i8, ptr %0, i64 36
  %i.bn = load i32, ptr %i.bm, align 4, !tbaa !37
  %i.bo = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.bp = load i32, ptr %i.bo, align 8            ; 2 uses
  %.not.i = icmp sgt i32 %i.bp, -1
  br i1 %.not.i, label %_ZN4absl12lts_2026052618debugging_internalL11MaybeAppendEPNS1_5StateEPKc.exit, label %bb.s

bb.s:                                             ; preds = %bb.r
  tail call fastcc void @_ZN4absl12lts_2026052618debugging_internalL21MaybeAppendWithLengthEPNS1_5StateEPKcm(ptr noundef nonnull %0, ptr noundef nonnull @.str.163, i64 noundef 1)
  %.pre = load i32, ptr %i.bo, align 8
  br label %_ZN4absl12lts_2026052618debugging_internalL11MaybeAppendEPNS1_5StateEPKc.exit

_ZN4absl12lts_2026052618debugging_internalL11MaybeAppendEPNS1_5StateEPKc.exit: ; preds = %bb.r, %bb.s
  %i.bq = phi i32 [ %i.bp, %bb.r ], [ %.pre, %bb.s ]
  %i.br = sext i32 %i.bn to i64
  %i.bs = getelementptr inbounds i8, ptr %i.bl, i64 %i.br
  br label %.thread69.sink.split

bb.t:                                             ; preds = %bb.l
  %i.bt = landingpad { ptr, i32 }
          cleanup
  %i.bu = load i32, ptr %i.a, align 4, !tbaa !31
  %i.bv = add nsw i32 %i.bu, -1
  store i32 %i.bv, ptr %i.a, align 4, !tbaa !31
  br label %.body

.thread69.sink.split:                             ; preds = %_ZN4absl12lts_2026052618debugging_internalL11MaybeAppendEPNS1_5StateEPKc.exit, %bb.i
  %.sink93 = phi i32 [ %i.al, %bb.i ], [ %i.bq, %_ZN4absl12lts_2026052618debugging_internalL11MaybeAppendEPNS1_5StateEPKc.exit ]
  %.sink = phi ptr [ %i.aj, %bb.i ], [ %i.bs, %_ZN4absl12lts_2026052618debugging_internalL11MaybeAppendEPNS1_5StateEPKc.exit ]
  %i.bw = and i32 %.sink93, 65535
  %i.bx = zext nneg i32 %i.bw to i64
  tail call fastcc void @_ZN4absl12lts_2026052618debugging_internalL21MaybeAppendWithLengthEPNS1_5StateEPKcm(ptr noundef nonnull %0, ptr noundef %.sink, i64 noundef %i.bx)
  br label %.thread69

.thread69:                                        ; preds = %.thread69.sink.split, %bb.m
  %i.by = load i32, ptr %i.a, align 4, !tbaa !31
  %i.bz = add nsw i32 %i.by, -1                   ; 2 uses
  store i32 %i.bz, ptr %i.a, align 4, !tbaa !31
  br label %bb.z

_ZN4absl12lts_2026052618debugging_internalL17ParseOneCharTokenEPNS1_5StateEc.exit.thread: ; preds = %bb.q, %bb.p, %bb.o, %bb.n
  store i32 %i.at, ptr %i.a, align 4, !tbaa !31
  store <4 x i32> %.sroa.0124.0.copyload, ptr %i.o, align 4
  %i.ca = add nsw i32 %i.at, -1
  br label %.thread

.thread:                                          ; preds = %bb.d, %_ZN4absl12lts_2026052618debugging_internalL17ParseOneCharTokenEPNS1_5StateEc.exit.thread
  %storemerge.in = phi i32 [ %i.ca, %_ZN4absl12lts_2026052618debugging_internalL17ParseOneCharTokenEPNS1_5StateEc.exit.thread ], [ %.pre80, %bb.d ]
  store i32 %storemerge.in, ptr %i.a, align 4, !tbaa !31
  %i.cb = tail call fastcc noundef zeroext i1 @_ZN4absl12lts_2026052618debugging_internalL15ParseSourceNameEPNS1_5StateE(ptr noundef nonnull %0)
  %.pre79 = load i32, ptr %i.a, align 4, !tbaa !31 ; 7 uses
  br i1 %i.cb, label %bb.z, label %bb.u

bb.u:                                             ; preds = %.thread
  %i.cc = add nsw i32 %.pre79, 1                  ; 2 uses
  %i.cd = load i32, ptr %i.d, align 8, !tbaa !29  ; 4 uses
  %i.ce = add nsw i32 %i.cd, 1
  store i32 %i.ce, ptr %i.d, align 8, !tbaa !29
  %i.cf = icmp sgt i32 %.pre79, 255
  %i.cg = icmp sgt i32 %i.cd, 131071
  %or.cond.i = select i1 %i.cf, i1 true, i1 %i.cg
  br i1 %or.cond.i, label %_ZN4absl12lts_2026052618debugging_internalL20ParseLocalSourceNameEPNS1_5StateE.exit.thread, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.ch = getelementptr inbounds nuw i8, ptr %0, i64 28 ; 4 uses
  %.sroa.0127.0.copyload = load <4 x i32>, ptr %i.ch, align 4
  %1 = add nsw i32 %.pre79, 2
  store i32 %1, ptr %i.a, align 4, !tbaa !31
  %2 = add nsw i32 %i.cd, 2
  store i32 %2, ptr %i.d, align 8, !tbaa !29
  %i.ci = icmp sgt i32 %.pre79, 254
  %i.cj = icmp sgt i32 %i.cd, 131070
  %or.cond.i.i = select i1 %i.ci, i1 true, i1 %i.cj
  br i1 %or.cond.i.i, label %.thread.i, label %bb.w

bb.w:                                             ; preds = %bb.v
  %.val6.i.i = load ptr, ptr %0, align 8, !tbaa !26
  %.val7.i.i = load i32, ptr %i.ch, align 4, !tbaa !30 ; 2 uses
  %i.ck = sext i32 %.val7.i.i to i64
  %i.cl = getelementptr inbounds i8, ptr %.val6.i.i, i64 %i.ck
  %i.cm = load i8, ptr %i.cl, align 1, !tbaa !21
  %i.cn = icmp eq i8 %i.cm, 76
  br i1 %i.cn, label %bb.x, label %.thread.i

.thread.i:                                        ; preds = %bb.w, %bb.v
  store i32 %i.cc, ptr %i.a, align 4, !tbaa !31
  br label %_ZN4absl12lts_2026052618debugging_internalL20ParseLocalSourceNameEPNS1_5StateE.exit

bb.x:                                             ; preds = %bb.w
  %i.co = add nsw i32 %.val7.i.i, 1
  store i32 %i.co, ptr %i.ch, align 4, !tbaa !30
  store i32 %i.cc, ptr %i.a, align 4, !tbaa !31
  %i.cp = tail call fastcc noundef zeroext i1 @_ZN4absl12lts_2026052618debugging_internalL15ParseSourceNameEPNS1_5StateE(ptr noundef nonnull %0)
  br i1 %i.cp, label %_ZN4absl12lts_2026052618debugging_internalL20ParseLocalSourceNameEPNS1_5StateE.exit.thread72, label %._ZN4absl12lts_2026052618debugging_internalL20ParseLocalSourceNameEPNS1_5StateE.exit_crit_edge

._ZN4absl12lts_2026052618debugging_internalL20ParseLocalSourceNameEPNS1_5StateE.exit_crit_edge: ; preds = %bb.x
  %.pre.i.pre = load i32, ptr %i.a, align 4, !tbaa !31
  %i.cq = add nsw i32 %.pre.i.pre, -1
  br label %_ZN4absl12lts_2026052618debugging_internalL20ParseLocalSourceNameEPNS1_5StateE.exit

_ZN4absl12lts_2026052618debugging_internalL20ParseLocalSourceNameEPNS1_5StateE.exit.thread72: ; preds = %bb.x
  tail call fastcc void @_ZN4absl12lts_2026052618debugging_internalL18ParseDiscriminatorEPNS1_5StateE(ptr noundef nonnull %0)
  %.pre.i74 = load i32, ptr %i.a, align 4, !tbaa !31
  %i.cr = add nsw i32 %.pre.i74, -1               ; 2 uses
  store i32 %i.cr, ptr %i.a, align 4, !tbaa !31
  br label %bb.z

_ZN4absl12lts_2026052618debugging_internalL20ParseLocalSourceNameEPNS1_5StateE.exit: ; preds = %._ZN4absl12lts_2026052618debugging_internalL20ParseLocalSourceNameEPNS1_5StateE.exit_crit_edge, %.thread.i
  %.pre.i = phi i32 [ %i.cq, %._ZN4absl12lts_2026052618debugging_internalL20ParseLocalSourceNameEPNS1_5StateE.exit_crit_edge ], [ %.pre79, %.thread.i ]
  store <4 x i32> %.sroa.0127.0.copyload, ptr %i.ch, align 4
  br label %_ZN4absl12lts_2026052618debugging_internalL20ParseLocalSourceNameEPNS1_5StateE.exit.thread

_ZN4absl12lts_2026052618debugging_internalL20ParseLocalSourceNameEPNS1_5StateE.exit.thread: ; preds = %bb.u, %_ZN4absl12lts_2026052618debugging_internalL20ParseLocalSourceNameEPNS1_5StateE.exit
  %storemerge76 = phi i32 [ %.pre.i, %_ZN4absl12lts_2026052618debugging_internalL20ParseLocalSourceNameEPNS1_5StateE.exit ], [ %.pre79, %bb.u ]
  store i32 %storemerge76, ptr %i.a, align 4, !tbaa !31
  %i.cs = invoke fastcc noundef zeroext i1 @_ZN4absl12lts_2026052618debugging_internalL20ParseUnnamedTypeNameEPNS1_5StateE(ptr noundef nonnull %0)
          to label %bb.y unwind label %bb.ak

bb.y:                                             ; preds = %_ZN4absl12lts_2026052618debugging_internalL20ParseLocalSourceNameEPNS1_5StateE.exit.thread
  br i1 %i.cs, label %._crit_edge, label %bb.af

._crit_edge:                                      ; preds = %bb.y
  %.pre78 = load i32, ptr %i.a, align 4, !tbaa !31
  br label %bb.z

bb.z:                                             ; preds = %._crit_edge, %_ZN4absl12lts_2026052618debugging_internalL20ParseLocalSourceNameEPNS1_5StateE.exit.thread72, %.thread69, %.thread, %bb.c
  %i.ct = phi i32 [ %.pre78, %._crit_edge ], [ %i.cr, %_ZN4absl12lts_2026052618debugging_internalL20ParseLocalSourceNameEPNS1_5StateE.exit.thread72 ], [ %i.bz, %.thread69 ], [ %.pre79, %.thread ], [ %.pre80, %bb.c ] ; 4 uses
  %i.cu = add nsw i32 %i.ct, 1                    ; 3 uses
  %i.cv = load i32, ptr %i.d, align 8, !tbaa !29  ; 4 uses
  %i.cw = add nsw i32 %i.cv, 1
  store i32 %i.cw, ptr %i.d, align 8, !tbaa !29
  %i.cx = icmp sgt i32 %i.ct, 255
  %i.cy = icmp sgt i32 %i.cv, 131071
  %or.cond.i26 = select i1 %i.cx, i1 true, i1 %i.cy
  br i1 %or.cond.i26, label %_ZN4absl12lts_2026052618debugging_internalL12ParseAbiTagsEPNS1_5StateE.exit, label %.preheader.i

.preheader.i:                                     ; preds = %bb.z
  %i.cz = add nsw i32 %i.ct, 2
  store i32 %i.cz, ptr %i.a, align 4, !tbaa !31
  %i.da = add nsw i32 %i.cv, 2
  store i32 %i.da, ptr %i.d, align 8, !tbaa !29
  %i.db = icmp sgt i32 %i.ct, 254
  %i.dc = icmp sgt i32 %i.cv, 131070
  %or.cond.i24.i = select i1 %i.db, i1 true, i1 %i.dc
  br i1 %or.cond.i24.i, label %_ZN4absl12lts_2026052618debugging_internalL12ParseAbiTagsEPNS1_5StateE.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.preheader.i
  %i.dd = getelementptr i8, ptr %0, i64 28        ; 4 uses
  %i.de = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  br label %bb.aa

bb.aa:                                            ; preds = %_ZN4absl12lts_2026052618debugging_internalL11MaybeAppendEPNS1_5StateEPKc.exit19.i, %.lr.ph.i
  %i.df = phi i32 [ %i.cu, %.lr.ph.i ], [ %i.dq, %_ZN4absl12lts_2026052618debugging_internalL11MaybeAppendEPNS1_5StateEPKc.exit19.i ] ; 2 uses
  %.val6.i.i27 = load ptr, ptr %0, align 8, !tbaa !26
  %.val7.i.i28 = load i32, ptr %i.dd, align 4, !tbaa !30 ; 2 uses
  %i.dg = sext i32 %.val7.i.i28 to i64
  %i.dh = getelementptr inbounds i8, ptr %.val6.i.i27, i64 %i.dg
  %i.di = load i8, ptr %i.dh, align 1, !tbaa !21
  %i.dj = icmp eq i8 %i.di, 66
  br i1 %i.dj, label %bb.ab, label %_ZN4absl12lts_2026052618debugging_internalL12ParseAbiTagsEPNS1_5StateE.exit

bb.ab:                                            ; preds = %bb.aa
  %i.dk = add nsw i32 %.val7.i.i28, 1
  store i32 %i.dk, ptr %i.dd, align 4, !tbaa !30
  store i32 %i.df, ptr %i.a, align 4, !tbaa !31
  %.sroa.0129.0.copyload = load <4 x i32>, ptr %i.dd, align 4
  %i.dl = load i32, ptr %i.de, align 8
  %.not.i.i = icmp sgt i32 %i.dl, -1
  br i1 %.not.i.i, label %_ZN4absl12lts_2026052618debugging_internalL11MaybeAppendEPNS1_5StateEPKc.exit.i, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  tail call fastcc void @_ZN4absl12lts_2026052618debugging_internalL21MaybeAppendWithLengthEPNS1_5StateEPKcm(ptr noundef nonnull %0, ptr noundef nonnull @.str.275, i64 noundef 5)
  br label %_ZN4absl12lts_2026052618debugging_internalL11MaybeAppendEPNS1_5StateEPKc.exit.i

_ZN4absl12lts_2026052618debugging_internalL11MaybeAppendEPNS1_5StateEPKc.exit.i: ; preds = %bb.ac, %bb.ab
  %i.dm = tail call fastcc noundef zeroext i1 @_ZN4absl12lts_2026052618debugging_internalL15ParseSourceNameEPNS1_5StateE(ptr noundef nonnull %0)
  br i1 %i.dm, label %bb.ad, label %_ZN4absl12lts_2026052618debugging_internalL11MaybeAppendEPNS1_5StateEPKc.exit19.thread.i

_ZN4absl12lts_2026052618debugging_internalL11MaybeAppendEPNS1_5StateEPKc.exit19.thread.i: ; preds = %_ZN4absl12lts_2026052618debugging_internalL11MaybeAppendEPNS1_5StateEPKc.exit.i
  store <4 x i32> %.sroa.0129.0.copyload, ptr %i.dd, align 4
  %.pre.i29 = load i32, ptr %i.a, align 4, !tbaa !31
  br label %_ZN4absl12lts_2026052618debugging_internalL12ParseAbiTagsEPNS1_5StateE.exit

bb.ad:                                            ; preds = %_ZN4absl12lts_2026052618debugging_internalL11MaybeAppendEPNS1_5StateEPKc.exit.i
  %i.dn = load i32, ptr %i.de, align 8
  %.not.i17.i = icmp sgt i32 %i.dn, -1
  br i1 %.not.i17.i, label %_ZN4absl12lts_2026052618debugging_internalL11MaybeAppendEPNS1_5StateEPKc.exit19.i, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  tail call fastcc void @_ZN4absl12lts_2026052618debugging_internalL21MaybeAppendWithLengthEPNS1_5StateEPKcm(ptr noundef nonnull %0, ptr noundef nonnull @.str.276, i64 noundef 1)
  br label %_ZN4absl12lts_2026052618debugging_internalL11MaybeAppendEPNS1_5StateEPKc.exit19.i

_ZN4absl12lts_2026052618debugging_internalL11MaybeAppendEPNS1_5StateEPKc.exit19.i: ; preds = %bb.ae, %bb.ad
  %i.do = load <2 x i32>, ptr %i.a, align 4, !tbaa !33 ; 3 uses
  %i.dp = add nsw <2 x i32> %i.do, splat (i32 1)
  store <2 x i32> %i.dp, ptr %i.a, align 4, !tbaa !33
  %i.dq = extractelement <2 x i32> %i.do, i64 0   ; 2 uses
  %i.dr = icmp sgt <2 x i32> %i.do, <i32 255, i32 131071> ; 2 uses
  %i.ds = extractelement <2 x i1> %i.dr, i64 0
  %i.dt = extractelement <2 x i1> %i.dr, i64 1
  %or.cond.i.i30 = select i1 %i.ds, i1 true, i1 %i.dt
  br i1 %or.cond.i.i30, label %_ZN4absl12lts_2026052618debugging_internalL12ParseAbiTagsEPNS1_5StateE.exit, label %bb.aa

_ZN4absl12lts_2026052618debugging_internalL12ParseAbiTagsEPNS1_5StateE.exit: ; preds = %bb.aa, %_ZN4absl12lts_2026052618debugging_internalL11MaybeAppendEPNS1_5StateEPKc.exit19.i, %bb.z, %.preheader.i, %_ZN4absl12lts_2026052618debugging_internalL11MaybeAppendEPNS1_5StateEPKc.exit19.thread.i
  %i.du = phi i32 [ %i.cu, %bb.z ], [ %.pre.i29, %_ZN4absl12lts_2026052618debugging_internalL11MaybeAppendEPNS1_5StateEPKc.exit19.thread.i ], [ %i.cu, %.preheader.i ], [ %i.df, %bb.aa ], [ %i.dq, %_ZN4absl12lts_2026052618debugging_internalL11MaybeAppendEPNS1_5StateEPKc.exit19.i ]
  %.2.i = phi i1 [ false, %bb.z ], [ false, %_ZN4absl12lts_2026052618debugging_internalL11MaybeAppendEPNS1_5StateEPKc.exit19.thread.i ], [ true, %.preheader.i ], [ true, %_ZN4absl12lts_2026052618debugging_internalL11MaybeAppendEPNS1_5StateEPKc.exit19.i ], [ true, %bb.aa ]
  %i.dv = add nsw i32 %i.du, -1                   ; 2 uses
  store i32 %i.dv, ptr %i.a, align 4, !tbaa !31
  br label %_ZNK4absl12lts_2026052618debugging_internal12_GLOBAL__N_115ComplexityGuard12IsTooComplexEv.exit.thread

bb.af:                                            ; preds = %bb.y
  %i.dw = getelementptr inbounds nuw i8, ptr %0, i64 28 ; 7 uses
  %.sroa.0.0.copyload = load <4 x i32>, ptr %i.dw, align 4 ; 2 uses
  %i.dx = load i32, ptr %i.a, align 4, !tbaa !31  ; 4 uses
  %i.dy = add nsw i32 %i.dx, 1
  store i32 %i.dy, ptr %i.a, align 4, !tbaa !31
  %i.dz = load i32, ptr %i.d, align 8, !tbaa !29  ; 2 uses
  %i.ea = add nsw i32 %i.dz, 1
  store i32 %i.ea, ptr %i.d, align 8, !tbaa !29
  %i.eb = icmp sgt i32 %i.dx, 255
  %i.ec = icmp sgt i32 %i.dz, 131071
  %or.cond.i94 = select i1 %i.eb, i1 true, i1 %i.ec
  br i1 %or.cond.i94, label %_ZN4absl12lts_2026052618debugging_internalL17ParseTwoCharTokenEPNS1_5StateEPKc.exit.thread, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %.val11.i = load ptr, ptr %0, align 8, !tbaa !26
  %.val12.i = load i32, ptr %i.dw, align 4, !tbaa !30 ; 2 uses
  %i.ed = sext i32 %.val12.i to i64
  %i.ee = getelementptr inbounds i8, ptr %.val11.i, i64 %i.ed ; 2 uses
  %i.ef = load i8, ptr %i.ee, align 1, !tbaa !21
  %i.eg = icmp eq i8 %i.ef, 68
  br i1 %i.eg, label %bb.ah, label %_ZN4absl12lts_2026052618debugging_internalL17ParseTwoCharTokenEPNS1_5StateEPKc.exit.thread

bb.ah:                                            ; preds = %bb.ag
  %i.eh = getelementptr inbounds nuw i8, ptr %i.ee, i64 1
  %i.ei = load i8, ptr %i.eh, align 1, !tbaa !21
  %i.ej = icmp eq i8 %i.ei, 67
  br i1 %i.ej, label %bb.ai, label %_ZN4absl12lts_2026052618debugging_internalL17ParseTwoCharTokenEPNS1_5StateEPKc.exit.thread

_ZN4absl12lts_2026052618debugging_internalL17ParseTwoCharTokenEPNS1_5StateEPKc.exit.thread: ; preds = %bb.af, %bb.ah, %bb.ag
  store i32 %i.dx, ptr %i.a, align 4, !tbaa !31
  br label %_ZN4absl12lts_2026052618debugging_internalL9OneOrMoreEPFbPNS1_5StateEES3_.exit

bb.ai:                                            ; preds = %bb.ah
  %i.ek = add nsw i32 %.val12.i, 2
  store i32 %i.ek, ptr %i.dw, align 4, !tbaa !30
  store i32 %i.dx, ptr %i.a, align 4, !tbaa !31
  %i.el = tail call fastcc noundef zeroext i1 @_ZN4absl12lts_2026052618debugging_internalL15ParseSourceNameEPNS1_5StateE(ptr noundef nonnull %0), !inline_history !2
  br i1 %i.el, label %.preheader.i31, label %_ZN4absl12lts_2026052618debugging_internalL9OneOrMoreEPFbPNS1_5StateEES3_.exit

.preheader.i31:                                   ; preds = %bb.ai, %.preheader.i31
  %i.em = tail call fastcc noundef zeroext i1 @_ZN4absl12lts_2026052618debugging_internalL15ParseSourceNameEPNS1_5StateE(ptr noundef nonnull %0), !inline_history !2
  br i1 %i.em, label %.preheader.i31, label %bb.aj, !llvm.loop !3

bb.aj:                                            ; preds = %.preheader.i31
  %i.en = tail call fastcc noundef zeroext i1 @_ZN4absl12lts_2026052618debugging_internalL17ParseOneCharTokenEPNS1_5StateEc(ptr noundef nonnull %0, i8 noundef signext 69)
  br i1 %i.en, label %bb.ar, label %_ZN4absl12lts_2026052618debugging_internalL9OneOrMoreEPFbPNS1_5StateEES3_.exit

bb.ak:                                            ; preds = %bb.b, %_ZN4absl12lts_2026052618debugging_internalL20ParseLocalSourceNameEPNS1_5StateE.exit.thread, %bb.ao
  %i.eo = landingpad { ptr, i32 }
          cleanup
  br label %.body

_ZN4absl12lts_2026052618debugging_internalL9OneOrMoreEPFbPNS1_5StateEES3_.exit: ; preds = %_ZN4absl12lts_2026052618debugging_internalL17ParseTwoCharTokenEPNS1_5StateEPKc.exit.thread, %bb.ai, %bb.aj
  store <4 x i32> %.sroa.0.0.copyload, ptr %i.dw, align 4
  %i.ep = load i32, ptr %i.a, align 4, !tbaa !31  ; 4 uses
  %i.eq = add nsw i32 %i.ep, 1
  store i32 %i.eq, ptr %i.a, align 4, !tbaa !31
  %i.er = load i32, ptr %i.d, align 8, !tbaa !29  ; 2 uses
  %i.es = add nsw i32 %i.er, 1
end_hunk_0
