Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/sentencepiece/original/demangle?download=true
inline.NumInlined: 660
inline.NumDeleted: 80
loop-unroll.NumCompletelyUnrolled: 16
loop-unroll.NumUnrolled: 17
begin_hunk_0_@_ZN4absl12lts_2026052618debugging_internalL11ParsePrefixEPNS1_5StateE:bb.a
  br label %.loopexit.split-lp.loopexit.split-lp.body

bb.t:                                             ; preds = %._crit_edge, %_ZN4absl12lts_2026052618debugging_internalL17ParseOneCharTokenEPNS1_5StateEc.exit.thread.i
  %.pre.i = phi i32 [ %i.cl, %._crit_edge ], [ %i.bv, %_ZN4absl12lts_2026052618debugging_internalL17ParseOneCharTokenEPNS1_5StateEc.exit.thread.i ]
  store <4 x i32> %.sroa.0181.0.copyload, ptr %i.m, align 4
  br label %.thread92

.thread92:                                        ; preds = %bb.n, %bb.t
  %storemerge = phi i32 [ %.pre.i, %bb.t ], [ %i.bv, %bb.n ]
  store i32 %storemerge, ptr %i.a, align 4, !tbaa !31
  %i.cq = invoke fastcc noundef zeroext i1 @_ZN4absl12lts_2026052618debugging_internalL17ParseUnscopedNameEPNS1_5StateE(ptr noundef nonnull %0)
          to label %bb.u unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.u:                                             ; preds = %.thread92
  br i1 %i.cq, label %bb.z, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.cr = load i32, ptr %i.a, align 4, !tbaa !31  ; 4 uses
  %i.cs = add nsw i32 %i.cr, 1
  store i32 %i.cs, ptr %i.a, align 4, !tbaa !31
  %i.ct = load i32, ptr %i.d, align 8, !tbaa !29  ; 2 uses
  %i.cu = add nsw i32 %i.ct, 1
  store i32 %i.cu, ptr %i.d, align 8, !tbaa !29
  %i.cv = icmp sgt i32 %i.cr, 255
  %i.cw = icmp sgt i32 %i.ct, 131071
  %or.cond.i24 = select i1 %i.cv, i1 true, i1 %i.cw
  br i1 %or.cond.i24, label %_ZN4absl12lts_2026052618debugging_internalL17ParseOneCharTokenEPNS1_5StateEc.exit.thread, label %bb.w

bb.w:                                             ; preds = %bb.v
  %.val6.i = load ptr, ptr %0, align 8, !tbaa !26
  %.val7.i = load i32, ptr %i.m, align 4, !tbaa !30 ; 2 uses
  %i.cx = sext i32 %.val7.i to i64
  %i.cy = getelementptr inbounds i8, ptr %.val6.i, i64 %i.cx
  %i.cz = load i8, ptr %i.cy, align 1, !tbaa !21
  %i.da = icmp eq i8 %i.cz, 77
  br i1 %i.da, label %bb.x, label %_ZN4absl12lts_2026052618debugging_internalL17ParseOneCharTokenEPNS1_5StateEc.exit.thread

_ZN4absl12lts_2026052618debugging_internalL17ParseOneCharTokenEPNS1_5StateEc.exit.thread: ; preds = %bb.v, %bb.w
  store i32 %i.cr, ptr %i.a, align 4, !tbaa !31
  br label %.loopexit

bb.x:                                             ; preds = %bb.w
  %i.db = add nsw i32 %.val7.i, 1
  store i32 %i.db, ptr %i.m, align 4, !tbaa !30
  store i32 %i.cr, ptr %i.a, align 4, !tbaa !31
  %i.dc = invoke fastcc noundef zeroext i1 @_ZN4absl12lts_2026052618debugging_internalL20ParseUnnamedTypeNameEPNS1_5StateE(ptr noundef nonnull %0)
          to label %bb.y unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.y:                                             ; preds = %bb.x
  br i1 %i.dc, label %bb.z, label %.loopexit

.sink.split131:                                   ; preds = %.thread49, %.thread94
  %.pre.i96.sink = phi i32 [ %.pre.i96, %.thread94 ], [ %storemerge.in.pre.pre, %.thread49 ]
  %i.dd = add nsw i32 %.pre.i96.sink, -1
  store i32 %i.dd, ptr %i.a, align 4, !tbaa !31
  br label %bb.z

bb.z:                                             ; preds = %.sink.split131, %bb.y, %bb.u, %.thread, %_ZN4absl12lts_2026052618debugging_internalL20MaybeAppendSeparatorEPNS1_5StateE.exit
  %i.de = load i32, ptr %i.i, align 8             ; 3 uses
  %i.df = shl i32 %i.de, 1
  %i.dg = ashr i32 %i.df, 17                      ; 2 uses
  %i.dh = icmp sgt i32 %i.dg, -1
  br i1 %i.dh, label %bb.aa, label %.preheader.backedge

.preheader.backedge:                              ; preds = %bb.z, %bb.aa
  %.be = phi i32 [ %i.de, %bb.z ], [ %i.dl, %bb.aa ]
  br label %.preheader, !llvm.loop !52

bb.aa:                                            ; preds = %bb.z
  %i.di = shl nuw nsw i32 %i.dg, 16
  %i.dj = add nuw nsw i32 %i.di, 65536
  %i.dk = and i32 %i.de, -2147418113
  %i.dl = or disjoint i32 %i.dj, %i.dk            ; 2 uses
  store i32 %i.dl, ptr %i.i, align 8
  br label %.preheader.backedge

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %bb.x, %.thread92, %bb.af, %bb.ad
  %lpad.loopexit.split-lp172 = landingpad { ptr, i32 }
          cleanup
  %.pre73.pre = load i32, ptr %i.a, align 4, !tbaa !31
  br label %.loopexit.split-lp.loopexit.split-lp.body

.loopexit.split-lp.loopexit.split-lp.body:        ; preds = %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %bb.s, %bb.l
  %i.dm = phi i32 [ %i.bs, %bb.l ], [ %.pre73.pre, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ], [ %i.cp, %bb.s ]
  %eh.lpad-body = phi { ptr, i32 } [ %i.bq, %bb.l ], [ %lpad.loopexit.split-lp172, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ], [ %i.cn, %bb.s ]
  %i.dn = add nsw i32 %i.dm, -1
  store i32 %i.dn, ptr %i.a, align 4, !tbaa !31
  resume { ptr, i32 } %eh.lpad-body

.loopexit:                                        ; preds = %bb.y, %_ZN4absl12lts_2026052618debugging_internalL17ParseOneCharTokenEPNS1_5StateEc.exit.thread
  %i.do = load i32, ptr %i.i, align 8             ; 2 uses
  %i.dp = shl i32 %i.do, 1
  %i.dq = icmp slt i32 %i.dp, 131072
  %.not.i = icmp sgt i32 %i.do, -1
  %or.cond.i26 = or i1 %.not.i, %i.dq
  br i1 %or.cond.i26, label %_ZN4absl12lts_2026052618debugging_internalL24MaybeCancelLastSeparatorEPNS1_5StateE.exit, label %bb.ab

bb.ab:                                            ; preds = %.loopexit
  %i.dr = load i32, ptr %i.j, align 8, !tbaa !32  ; 2 uses
  %i.ds = icmp sgt i32 %i.dr, 1
  br i1 %i.ds, label %bb.ac, label %_ZN4absl12lts_2026052618debugging_internalL24MaybeCancelLastSeparatorEPNS1_5StateE.exit

bb.ac:                                            ; preds = %bb.ab
  %i.dt = add nsw i32 %i.dr, -2                   ; 2 uses
  store i32 %i.dt, ptr %i.j, align 8, !tbaa !32
  %i.du = load ptr, ptr %i.l, align 8, !tbaa !27
  %i.dv = zext nneg i32 %i.dt to i64
  %i.dw = getelementptr inbounds nuw i8, ptr %i.du, i64 %i.dv
  store i8 0, ptr %i.dw, align 1, !tbaa !21
  br label %_ZN4absl12lts_2026052618debugging_internalL24MaybeCancelLastSeparatorEPNS1_5StateE.exit

_ZN4absl12lts_2026052618debugging_internalL24MaybeCancelLastSeparatorEPNS1_5StateE.exit: ; preds = %.loopexit, %bb.ab, %bb.ac
  br i1 %.016, label %bb.ad, label %_ZNK4absl12lts_2026052618debugging_internal12_GLOBAL__N_115ComplexityGuard12IsTooComplexEv.exit.thread

bb.ad:                                            ; preds = %_ZN4absl12lts_2026052618debugging_internalL24MaybeCancelLastSeparatorEPNS1_5StateE.exit
  %i.dx = invoke fastcc noundef zeroext i1 @_ZN4absl12lts_2026052618debugging_internalL17ParseTemplateArgsEPNS1_5StateE(ptr noundef nonnull %0)
          to label %bb.ae unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.ae:                                            ; preds = %bb.ad
  br i1 %i.dx, label %bb.af, label %_ZNK4absl12lts_2026052618debugging_internal12_GLOBAL__N_115ComplexityGuard12IsTooComplexEv.exit.thread

bb.af:                                            ; preds = %bb.ae
  %i.dy = invoke fastcc noundef zeroext i1 @_ZN4absl12lts_2026052618debugging_internalL11ParsePrefixEPNS1_5StateE(ptr noundef nonnull %0)
          to label %_ZNK4absl12lts_2026052618debugging_internal12_GLOBAL__N_115ComplexityGuard12IsTooComplexEv.exit.thread unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

_ZNK4absl12lts_2026052618debugging_internal12_GLOBAL__N_115ComplexityGuard12IsTooComplexEv.exit.thread: ; preds = %bb.a, %bb.af, %_ZN4absl12lts_2026052618debugging_internalL24MaybeCancelLastSeparatorEPNS1_5StateE.exit, %bb.ae
  %.1 = phi i1 [ false, %bb.a ], [ %i.dy, %bb.af ], [ true, %_ZN4absl12lts_2026052618debugging_internalL24MaybeCancelLastSeparatorEPNS1_5StateE.exit ], [ true, %bb.ae ]
  %i.dz = load i32, ptr %i.a, align 4, !tbaa !31
  %i.ea = add nsw i32 %i.dz, -1
  store i32 %i.ea, ptr %i.a, align 4, !tbaa !31
  ret i1 %.1
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc noundef zeroext i1 @_ZN4absl12lts_2026052618debugging_internalL15ParseSourceNameEPNS1_5StateE(ptr nofree noundef captures(none) %0) unnamed_addr #4 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 20 ; 6 uses
  %i.b = load i32, ptr %i.a, align 4, !tbaa !31   ; 7 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 5 uses
  %i.d = load i32, ptr %i.c, align 8, !tbaa !29   ; 8 uses
  %i.e = add nsw i32 %i.d, 1
  store i32 %i.e, ptr %i.c, align 8, !tbaa !29
  %i.f = icmp sgt i32 %i.b, 255
  %i.g = icmp sgt i32 %i.d, 131071
  %or.cond = select i1 %i.f, i1 true, i1 %i.g
  br i1 %or.cond, label %_ZNK4absl12lts_2026052618debugging_internal12_GLOBAL__N_115ComplexityGuard12IsTooComplexEv.exit.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 28 ; 7 uses
  %.sroa.0.0.copyload = load <4 x i32>, ptr %i.h, align 4
  %i.i = add nsw i32 %i.b, 2                      ; 2 uses
  %i.j = add nsw i32 %i.d, 2
  store i32 %i.j, ptr %i.c, align 8, !tbaa !29
  %i.k = icmp sgt i32 %i.b, 254
  %i.l = icmp sgt i32 %i.d, 131070
  %or.cond.i = select i1 %i.k, i1 true, i1 %i.l
  br i1 %or.cond.i, label %.thread, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.m = add nsw i32 %i.b, 3
  store i32 %i.m, ptr %i.a, align 4, !tbaa !31
  %i.n = add nsw i32 %i.d, 3
  store i32 %i.n, ptr %i.c, align 8, !tbaa !29
  %i.o = icmp sgt i32 %i.b, 253
  %i.p = icmp sgt i32 %i.d, 131069
  %or.cond.i.i = select i1 %i.o, i1 true, i1 %i.p
  %.val34.pre.i = load ptr, ptr %0, align 8, !tbaa !26 ; 3 uses
  %.val35.pre.i = load i32, ptr %i.h, align 4, !tbaa !30 ; 4 uses
  br i1 %or.cond.i.i, label %._crit_edge44.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.q = sext i32 %.val35.pre.i to i64
  %i.r = getelementptr inbounds i8, ptr %.val34.pre.i, i64 %i.q
  %i.s = load i8, ptr %i.r, align 1, !tbaa !21
  %i.t = icmp eq i8 %i.s, 110
  br i1 %i.t, label %bb.e, label %._crit_edge44.i

bb.e:                                             ; preds = %bb.d
  %i.u = add nsw i32 %.val35.pre.i, 1             ; 2 uses
  store i32 %i.u, ptr %i.h, align 4, !tbaa !30
  br label %._crit_edge44.i

._crit_edge44.i:                                  ; preds = %bb.e, %bb.d, %bb.c
  %.val35.i = phi i32 [ %.val35.pre.i, %bb.d ], [ %i.u, %bb.e ], [ %.val35.pre.i, %bb.c ] ; 2 uses
  %.0.i36.i = phi i1 [ false, %bb.d ], [ true, %bb.e ], [ false, %bb.c ]
  store i32 %i.i, ptr %i.a, align 4, !tbaa !31
  %i.v = sext i32 %.val35.i to i64
  %i.w = getelementptr inbounds i8, ptr %.val34.pre.i, i64 %i.v ; 3 uses
  %i.x = load i8, ptr %i.w, align 1, !tbaa !21    ; 2 uses
  %i.y = add i8 %i.x, -48
  %i.z = icmp ult i8 %i.y, 10
  br i1 %i.z, label %.lr.ph.i, label %.thread

.lr.ph.i:                                         ; preds = %._crit_edge44.i, %.lr.ph.i
  %i.aa = phi i8 [ %i.ag, %.lr.ph.i ], [ %i.x, %._crit_edge44.i ]
  %.041.i = phi i32 [ %i.ae, %.lr.ph.i ], [ 0, %._crit_edge44.i ]
  %.02140.i = phi ptr [ %i.af, %.lr.ph.i ], [ %i.w, %._crit_edge44.i ]
  %i.ab = mul i32 %.041.i, 10
  %i.ac = zext nneg i8 %i.aa to i32
  %i.ad = add nsw i32 %i.ac, -48
  %i.ae = add i32 %i.ad, %i.ab                    ; 4 uses
  %i.af = getelementptr inbounds nuw i8, ptr %.02140.i, i64 1 ; 3 uses
  %i.ag = load i8, ptr %i.af, align 1, !tbaa !21  ; 2 uses
  %i.ah = add i8 %i.ag, -48
  %i.ai = icmp ult i8 %i.ah, 10
  br i1 %i.ai, label %.lr.ph.i, label %bb.f, !llvm.loop !5

bb.f:                                             ; preds = %.lr.ph.i
  %i.aj = ptrtoint ptr %i.af to i64
  %i.ak = ptrtoint ptr %i.w to i64
  %i.al = sub i64 %i.aj, %i.ak
  %i.am = trunc i64 %i.al to i32
  %i.an = add nsw i32 %.val35.i, %i.am            ; 2 uses
  store i32 %i.an, ptr %i.h, align 4, !tbaa !30
  %i.ao = sub i32 0, %i.ae
  %spec.select.i = select i1 %.0.i36.i, i32 %i.ao, i32 %i.ae ; 3 uses
  %i.ap = sext i32 %spec.select.i to i64          ; 2 uses
  store i32 %i.i, ptr %i.a, align 4, !tbaa !31
  %i.aq = add nsw i32 %i.d, 4
  store i32 %i.aq, ptr %i.c, align 8, !tbaa !29
  %i.ar = icmp sgt i32 %i.d, 131068
  br i1 %i.ar, label %.thread, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.as = sext i32 %i.an to i64
  %i.at = getelementptr inbounds i8, ptr %.val34.pre.i, i64 %i.as ; 4 uses
  %i.au = icmp eq i32 %i.ae, 0
  br i1 %i.au, label %_ZN4absl12lts_2026052618debugging_internalL30IdentifierIsAnonymousNamespaceEPNS1_5StateEm.exit.thread.i, label %.lr.ph.i.i

bb.h:                                             ; preds = %.lr.ph.i.i
  %i.av = add nuw i64 %.068.i.i, 1                ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %i.av, %i.ap
  br i1 %exitcond.not.i.i, label %bb.i, label %.lr.ph.i.i, !llvm.loop !54

.lr.ph.i.i:                                       ; preds = %bb.g, %bb.h
  %.068.i.i = phi i64 [ %i.av, %bb.h ], [ 0, %bb.g ] ; 2 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %i.at, i64 %.068.i.i
  %i.ax = load i8, ptr %i.aw, align 1, !tbaa !21
  %.not.i.i = icmp eq i8 %i.ax, 0
  br i1 %.not.i.i, label %.thread, label %bb.h

bb.i:                                             ; preds = %bb.h
  %i.ay = icmp ugt i32 %spec.select.i, 11
  br i1 %i.ay, label %bb.j, label %_ZN4absl12lts_2026052618debugging_internalL30IdentifierIsAnonymousNamespaceEPNS1_5StateEm.exit.thread.i

bb.j:                                             ; preds = %bb.i
  %i.az = load i8, ptr %i.at, align 1, !tbaa !21  ; 2 uses
  %.not1.i.i.i = icmp eq i8 %i.az, 0
  br i1 %.not1.i.i.i, label %_ZN4absl12lts_2026052618debugging_internalL30IdentifierIsAnonymousNamespaceEPNS1_5StateEm.exit.thread.i, label %.lr.ph.i.i.i

bb.k:                                             ; preds = %.lr.ph.i.i.i
  %i.ba = add nuw nsw i64 %.02.i.i.i, 1           ; 3 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %i.at, i64 %i.ba
  %i.bc = load i8, ptr %i.bb, align 1, !tbaa !21  ; 2 uses
  %.not.i.i.i = icmp eq i8 %i.bc, 0
  %.not12.i.i.i = icmp eq i64 %i.ba, 11           ; 2 uses
  %or.cond.i.i.i = or i1 %.not12.i.i.i, %.not.i.i.i
  br i1 %or.cond.i.i.i, label %_ZN4absl12lts_2026052618debugging_internalL30IdentifierIsAnonymousNamespaceEPNS1_5StateEm.exit.i, label %.lr.ph.i.i.i, !llvm.loop !55

.lr.ph.i.i.i:                                     ; preds = %bb.j, %bb.k
  %i.bd = phi i8 [ %i.bc, %bb.k ], [ %i.az, %bb.j ]
  %.02.i.i.i = phi i64 [ %i.ba, %bb.k ], [ 0, %bb.j ] ; 2 uses
  %i.be = getelementptr inbounds nuw i8, ptr @_ZZN4absl12lts_2026052618debugging_internalL30IdentifierIsAnonymousNamespaceEPNS1_5StateEmE11anon_prefix, i64 %.02.i.i.i
  %i.bf = load i8, ptr %i.be, align 1, !tbaa !21
  %i.bg = icmp eq i8 %i.bd, %i.bf
  br i1 %i.bg, label %bb.k, label %_ZN4absl12lts_2026052618debugging_internalL30IdentifierIsAnonymousNamespaceEPNS1_5StateEm.exit.thread.i

_ZN4absl12lts_2026052618debugging_internalL30IdentifierIsAnonymousNamespaceEPNS1_5StateEm.exit.i: ; preds = %bb.k
  br i1 %.not12.i.i.i, label %bb.l, label %_ZN4absl12lts_2026052618debugging_internalL30IdentifierIsAnonymousNamespaceEPNS1_5StateEm.exit.thread.i

bb.l:                                             ; preds = %_ZN4absl12lts_2026052618debugging_internalL30IdentifierIsAnonymousNamespaceEPNS1_5StateEm.exit.i
  %i.bh = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.bi = load i32, ptr %i.bh, align 8
  %.not.i20.i = icmp sgt i32 %i.bi, -1
  br i1 %.not.i20.i, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  tail call fastcc void @_ZN4absl12lts_2026052618debugging_internalL21MaybeAppendWithLengthEPNS1_5StateEPKcm(ptr noundef nonnull %0, ptr noundef nonnull @.str.1, i64 noundef 21)
  br label %bb.n

_ZN4absl12lts_2026052618debugging_internalL30IdentifierIsAnonymousNamespaceEPNS1_5StateEm.exit.thread.i: ; preds = %.lr.ph.i.i.i, %_ZN4absl12lts_2026052618debugging_internalL30IdentifierIsAnonymousNamespaceEPNS1_5StateEm.exit.i, %bb.j, %bb.i, %bb.g
  tail call fastcc void @_ZN4absl12lts_2026052618debugging_internalL21MaybeAppendWithLengthEPNS1_5StateEPKcm(ptr noundef nonnull %0, ptr noundef %i.at, i64 noundef range(i64 -2147483648, 2147483648) %i.ap)
  br label %bb.n

bb.n:                                             ; preds = %bb.l, %bb.m, %_ZN4absl12lts_2026052618debugging_internalL30IdentifierIsAnonymousNamespaceEPNS1_5StateEm.exit.thread.i
  %i.bj = load i32, ptr %i.h, align 4, !tbaa !30
  %i.bk = add nsw i32 %i.bj, %spec.select.i
  store i32 %i.bk, ptr %i.h, align 4, !tbaa !30
  %.pre.i10 = load i32, ptr %i.a, align 4, !tbaa !31
  %i.bl = add nsw i32 %.pre.i10, -2
  br label %_ZNK4absl12lts_2026052618debugging_internal12_GLOBAL__N_115ComplexityGuard12IsTooComplexEv.exit.thread

.thread:                                          ; preds = %.lr.ph.i.i, %bb.f, %._crit_edge44.i, %bb.b
  store <4 x i32> %.sroa.0.0.copyload, ptr %i.h, align 4
  br label %_ZNK4absl12lts_2026052618debugging_internal12_GLOBAL__N_115ComplexityGuard12IsTooComplexEv.exit.thread

_ZNK4absl12lts_2026052618debugging_internal12_GLOBAL__N_115ComplexityGuard12IsTooComplexEv.exit.thread: ; preds = %.thread, %bb.n, %bb.a
  %i.bm = phi i32 [ %i.b, %bb.a ], [ %i.b, %.thread ], [ %i.bl, %bb.n ]
  %.1 = phi i1 [ false, %bb.a ], [ false, %.thread ], [ true, %bb.n ]
  store i32 %i.bm, ptr %i.a, align 4, !tbaa !31
  ret i1 %.1
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc noundef zeroext i1 @_ZN4absl12lts_2026052618debugging_internalL11ParseNumberEPNS1_5StateEPi(ptr nofree noundef captures(none) %0, ptr nofree noundef writeonly captures(address_is_null) %1) unnamed_addr #7 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 20 ; 5 uses
  %i.b = load i32, ptr %i.a, align 4, !tbaa !31   ; 7 uses
  %i.c = add nsw i32 %i.b, 1
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  %i.e = load i32, ptr %i.d, align 8, !tbaa !29   ; 4 uses
  %i.f = add nsw i32 %i.e, 1
  store i32 %i.f, ptr %i.d, align 8, !tbaa !29
  %i.g = icmp sgt i32 %i.b, 255
  %i.h = icmp sgt i32 %i.e, 131071
  %or.cond = select i1 %i.g, i1 true, i1 %i.h
  br i1 %or.cond, label %_ZNK4absl12lts_2026052618debugging_internal12_GLOBAL__N_115ComplexityGuard12IsTooComplexEv.exit.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.i = add nsw i32 %i.b, 2
  store i32 %i.i, ptr %i.a, align 4, !tbaa !31
  %i.j = add nsw i32 %i.e, 2
  store i32 %i.j, ptr %i.d, align 8, !tbaa !29
  %i.k = icmp sgt i32 %i.b, 254
  %i.l = icmp sgt i32 %i.e, 131070
  %or.cond.i = select i1 %i.k, i1 true, i1 %i.l
  %.val34.pre = load ptr, ptr %0, align 8, !tbaa !26 ; 2 uses
  %.phi.trans.insert = getelementptr i8, ptr %0, i64 28 ; 2 uses
  %.val35.pre = load i32, ptr %.phi.trans.insert, align 4, !tbaa !30 ; 4 uses
  br i1 %or.cond.i, label %._crit_edge44, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.m = sext i32 %.val35.pre to i64
  %i.n = getelementptr inbounds i8, ptr %.val34.pre, i64 %i.m
  %i.o = load i8, ptr %i.n, align 1, !tbaa !21
  %i.p = icmp eq i8 %i.o, 110
  br i1 %i.p, label %bb.d, label %._crit_edge44

bb.d:                                             ; preds = %bb.c
  %i.q = add nsw i32 %.val35.pre, 1               ; 2 uses
  store i32 %i.q, ptr %.phi.trans.insert, align 4, !tbaa !30
  br label %._crit_edge44

._crit_edge44:                                    ; preds = %bb.b, %bb.d, %bb.c
  %.val35 = phi i32 [ %.val35.pre, %bb.c ], [ %i.q, %bb.d ], [ %.val35.pre, %bb.b ] ; 2 uses
  %.0.i36 = phi i1 [ false, %bb.c ], [ true, %bb.d ], [ false, %bb.b ]
  store i32 %i.c, ptr %i.a, align 4, !tbaa !31
  %i.r = getelementptr i8, ptr %0, i64 28
  %i.s = sext i32 %.val35 to i64
  %i.t = getelementptr inbounds i8, ptr %.val34.pre, i64 %i.s ; 3 uses
  %i.u = load i8, ptr %i.t, align 1, !tbaa !21    ; 2 uses
  %i.v = add i8 %i.u, -48
  %i.w = icmp ult i8 %i.v, 10
  br i1 %i.w, label %.lr.ph, label %_ZNK4absl12lts_2026052618debugging_internal12_GLOBAL__N_115ComplexityGuard12IsTooComplexEv.exit.thread

.lr.ph:                                           ; preds = %._crit_edge44, %.lr.ph
  %i.x = phi i8 [ %i.ad, %.lr.ph ], [ %i.u, %._crit_edge44 ]
  %.041 = phi i32 [ %i.ab, %.lr.ph ], [ 0, %._crit_edge44 ]
  %.02140 = phi ptr [ %i.ac, %.lr.ph ], [ %i.t, %._crit_edge44 ]
  %i.y = mul i32 %.041, 10
  %i.z = zext nneg i8 %i.x to i32
  %i.aa = add i32 %i.y, -48
  %i.ab = add i32 %i.aa, %i.z                     ; 3 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %.02140, i64 1 ; 3 uses
  %i.ad = load i8, ptr %i.ac, align 1, !tbaa !21  ; 2 uses
  %i.ae = add i8 %i.ad, -48
  %i.af = icmp ult i8 %i.ae, 10
  br i1 %i.af, label %.lr.ph, label %bb.e, !llvm.loop !5

bb.e:                                             ; preds = %.lr.ph
  %i.ag = ptrtoint ptr %i.ac to i64
  %i.ah = ptrtoint ptr %i.t to i64
  %i.ai = sub i64 %i.ag, %i.ah
  %i.aj = trunc i64 %i.ai to i32
  %i.ak = add nsw i32 %.val35, %i.aj
  store i32 %i.ak, ptr %i.r, align 4, !tbaa !30
  %.not27 = icmp eq ptr %1, null
  br i1 %.not27, label %_ZNK4absl12lts_2026052618debugging_internal12_GLOBAL__N_115ComplexityGuard12IsTooComplexEv.exit.thread, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.al = sub i32 0, %i.ab
  %spec.select = select i1 %.0.i36, i32 %i.al, i32 %i.ab
  store i32 %spec.select, ptr %1, align 4, !tbaa !33
  %.pre = load i32, ptr %i.a, align 4, !tbaa !31
  %i.am = add nsw i32 %.pre, -1
  br label %_ZNK4absl12lts_2026052618debugging_internal12_GLOBAL__N_115ComplexityGuard12IsTooComplexEv.exit.thread

_ZNK4absl12lts_2026052618debugging_internal12_GLOBAL__N_115ComplexityGuard12IsTooComplexEv.exit.thread: ; preds = %._crit_edge44, %bb.a, %bb.f, %bb.e
  %i.an = phi i32 [ %i.b, %bb.a ], [ %i.am, %bb.f ], [ %i.b, %bb.e ], [ %i.b, %._crit_edge44 ]
  %.123 = phi i1 [ false, %bb.a ], [ true, %bb.f ], [ true, %bb.e ], [ false, %._crit_edge44 ]
  store i32 %i.an, ptr %i.a, align 4, !tbaa !31
  ret i1 %.123
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc void @_ZN4absl12lts_2026052618debugging_internalL21MaybeAppendWithLengthEPNS1_5StateEPKcm(ptr nofree noundef captures(none) %0, ptr nofree noundef readonly captures(none) %1, i64 noundef %2) unnamed_addr #4 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 3 uses
  %i.b = load i32, ptr %i.a, align 4
  %i.c = icmp slt i32 %i.b, 0
  %i.d = icmp ne i64 %2, 0
  %or.cond = and i1 %i.d, %i.c
  br i1 %or.cond, label %bb.b, label %_ZN4absl12lts_2026052618debugging_internalL6AppendEPNS1_5StateEPKcm.exit19

bb.b:                                             ; preds = %bb.a
  %i.e = load i8, ptr %1, align 1, !tbaa !21
  %i.f = icmp eq i8 %i.e, 60
  br i1 %i.f, label %bb.c, label %_ZN4absl12lts_2026052618debugging_internalL6AppendEPNS1_5StateEPKcm.exit

bb.c:                                             ; preds = %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 4 uses
  %i.h = load i32, ptr %i.g, align 4, !tbaa !32   ; 5 uses
  %i.i = icmp sgt i32 %i.h, 0
  br i1 %i.i, label %bb.d, label %_ZN4absl12lts_2026052618debugging_internalL6AppendEPNS1_5StateEPKcm.exit

bb.d:                                             ; preds = %bb.c
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.k = load i32, ptr %i.j, align 8, !tbaa !28   ; 3 uses
  %i.l = icmp slt i32 %i.h, %i.k
  br i1 %i.l, label %_ZN4absl12lts_2026052618debugging_internalL8EndsWithEPNS1_5StateEc.exit, label %_ZN4absl12lts_2026052618debugging_internalL6AppendEPNS1_5StateEPKcm.exit

_ZN4absl12lts_2026052618debugging_internalL8EndsWithEPNS1_5StateEc.exit: ; preds = %bb.d
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !27   ; 2 uses
  %i.o = zext nneg i32 %i.h to i64
  %i.p = getelementptr i8, ptr %i.n, i64 %i.o
  %i.q = getelementptr i8, ptr %i.p, i64 -1
end_hunk_0
